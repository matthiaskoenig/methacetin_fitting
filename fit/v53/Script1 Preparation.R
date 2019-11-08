# ---------------------------------------------------------- #
# Header ----
# ---------------------------------------------------------- #
rm(list = ls())
library(conveniencefunctions)
# to fix RJAVA problems
# export LD_LIBRARY_PATH=/usr/lib/jvm/java-8-oracle/jre/lib/amd64/server/

# working directory must be the folder containing this script

# -------------------------------------------------------------------------#
# 1 Data ----
# -------------------------------------------------------------------------#
# .. 1. Preprocessing -----

# Die Daten lassen sich aus Fehlersicht in drei Teile aufteilen:
#   1. Eine Studie hat die Fehler zu allen Datenpunkten
# 2. Manche Fehler fehlen
# 3. alle Fehler fehlen.
# 
# Für Punkt 2 gibt es die Möglichkeit, die Parameter für das Fehlermodell aus den anderen gegebenen Fehlern zu schätzen. Ein übliches Fehlermodell ist, dass der Fehler aus absoluten und relativen Fehlern besteht:
#   $sigma^2 = s0^2 + srel^2*value, $
#   wobei s0 und srel die Parameter des Fehlermodells sind.
# Bei Fall 3, kann man eigentlich die Fehlerparameter nur gemeinsam mit den Parametern des Modells mitschätzen. Da das ja nicht so gut geklappt hat, hab ich dann entshcieden, die Parameter von Hand festzulegen, was bestimmt nicht besonders klug war, hat im ersten Moment aber ganz gute Ergebnisse geliefert.


# Read data
data_full <-
  read_tsv("../../data/v53/limax_53_data.tsv") %>%
  select(-model) %>% 
  rename(name = observer) %>% 
  rename(n = subjects)

# 1. For those studies where some data points have no sigma, infer it from the other sigmas of the same study
fitErrorModel_factors <- c("study", "group", "name", "BW", "PODOSE_apap", "IVDOSE_apap", 
                           "PODOSE_co2c13", "IVDOSE_co2c13", "Ri_co2c13", "ti_co2c13", "PODOSE_metc13", 
                           "IVDOSE_metc13", "ti_metc13")
some_na <- data_full %>% 
  group_by(study, group, name) %>% 
  mutate(nna = n(), sna = sum(is.na(sigma))) %>% 
  filter(sna>0 & sna != nna) %>% 
  select(-sna, -nna) %>% 
  as.data.frame() %>% 
  fitErrorModel(factors = fitErrorModel_factors, plotting = F, blather = F) 
# leave other data unchanged
none_or_all_na <- data_full %>% 
  group_by(study, group, name) %>% 
  mutate(nna = n(), sna = sum(is.na(sigma))) %>% 
  filter(sna==0 | sna == nna) %>% 
  select(-sna, -nna) %>% 
  as.data.frame()
# recombine data sets
data_full <- rbind(some_na, none_or_all_na) %>% 
  select(-n) 


# .. 2. Select data for fitting -----
# 1. Remove duplicated data points
data_full <- data_full %>% unique() # TODO: Lalazar has duplicated entries

# 2. Roecker - filter time points 
data_full <- data_full %>% # TODO: Don't unterstand anymore what I did here
  filter(time > 0)

# Remove other studies from the data which goes into fitting
# [] Discuss with Matthias
# data_for_fitting <- data_full %>% 
#   filter(!str_detect(simulation, "limax")) %>% 
#   filter(!str_detect(study, "Mohr2018")) %>% 
#   filter(!(str_detect(study, "Albert")&str_detect(group, "capsule")))




# ---------------------------------------------------------- #
# 2 Model ----
# ---------------------------------------------------------- #
# .. 1 Read ODE-Model -----
source("../../model/v53/limax_53.R")

# .. 2 Observables and error-models ----
observables <- c(
  Mve_apap       = "Mve_apap"                                                , # [mg/dl] paracetamol concentration plasma
  Mve_metc13     = "Mve_metc13"                                              , # [mg/dl] methacetin concentration plasma
  DOB            = "DOB"                                                     , # [‰] Delta over baseline
  P_CO2F         = "P_CO2Fc13 - init_P_CO2Fc13"                              , # co2c13 fraction corrected for baseline
  mom_rec_co2c13 = "Exhalation_co2c13/60*Mr_co2c13/Ri_co2c13*100.0"          , # [%] recovery after continuous IV injection
  mom_rec_metc13 = "Exhalation_co2c13/(init(PODOSE_metc13)/Mr_metc13) * 100" , # [% dose/h] momentary recovery
  cum_rec_metc13 = "Abreath_co2c13/(init(PODOSE_metc13)/Mr_metc13) * 100"      # [% dose] cumulative recovery
)

# Error models
nm     <- names(observables)
errormodel <- paste0("sqrt(s0_", nm, "^2 + srel_", nm, "^2 * ", nm, "^2 )") %>% set_names(nm)

# .. 3 Parameters ----
# .... 1 Table containing all parameter names + meta-information ------
pars_raw       <- c(x0, p) 
pars_estimate0 <- c("Kp_apap", "Vp_apap", "Ka_apap", "APAPD_CL", "APAPD_Km_apap", 
                    "Kp_co2c13", "Vp_co2c13", "Ka_co2c13", "EXHCO2_CL", "EXHCO2_Km_co2", 
                    "Kp_metc13", "Vp_metc13", "Ka_metc13", "CYP1A2MET_CL", "CYP1A2MET_Km_met")
pars_data      <- c("BW", "PODOSE_apap", "IVDOSE_apap", "PODOSE_co2c13", "IVDOSE_co2c13", 
                    "Ri_co2c13", "ti_co2c13", "PODOSE_metc13", "IVDOSE_metc13", "ti_metc13")

parameters_df <- cf_build_parameters_df(odes = dxdt_dmod, observables = observables, errormodel = errormodel)
parameters_df <- cf_parameters_df_merge_values(parameters_df, pars_raw)

pars_estimate <- c(pars_estimate0, parameters_df$name[parameters_df$FLAGerrpar])


# .... 2 Table containing all information about different conditions ------
condition.grid <- data_full %>% 
  as.datalist() %>% 
  as.data.frame() %>% 
  cf_as.datalist(split.by = "condition") %>% 
  covariates() %>% 
  mutate(ID = as.numeric(as_factor(condition)))

# .... 3  ------
supplied_pars <- names(pars_raw)[(names(pars_raw) %in% names(data_full))]
fixed.grid <- parameters_df %>% 
  filter(!name0 %in% c(pars_estimate, supplied_pars)) %>% 
  reshape2::dcast(. ~ name, value.var = "value") %>% 
  select(-1) %>% 
  cbind(condition.grid[c("ID", "condition", supplied_pars)], .)


est.grid <- parameters_df %>% 
  filter(name0 %in% pars_estimate) %>% 
  reshape2::dcast(. ~ name0, value.var = "name") %>% 
  select(-1) %>%
  cbind(condition.grid[c("ID", "condition")], .)
  

# Get all parameters that in some way replace pars_raw (parameters supplied by the SBML file) or 
#   are additional parameters that we need to fit
# This could be e.g. Study specific pars such as IVDOSE* or pars that are fitted
outer_pars    <- sort(unique(c(pars_estimate, supplied_pars)))

pars_errors <- c(errormodel) %>% 
  getSymbols %>% 
  str_subset("^s") %>% 
  are_names_of(1)
outer_pars_sig <- sort(unique(c(outer_pars, names(pars_errors))))

# ----------------------------------------------- #
# .. 2. Build parameter transformations----
# ----------------------------------------------- #
# Die Trafos werden, wie alle anderen Funktionen auch erstmal symbolisch definiert.
# Hilfreich sind hier die Funktionen branch und insert, mit denen man solche Trafos schön bauen kann.
# Zur Log-Trafo: in der vorletzten Zeile steht "  insert("x~exp(x)", x = .currentSymbols) %>% ". Das bedeutet, dass man die logarithmierten parameter wieder exponenzieren muss, damit lineare Parameter rauskommen. Die Art, eine Logtrafo zu definieren, ist also, die Umkehrfunktion zu definieren.
# Die Zeile darunter arbeitet also schon auf den Logarithmierten parametern und drückt aus, dass die KLI-Parameter vielfache von den KBO-Parametern sind. Die neuen äußeren Parameter sind aber jetzt die r_* Parameter, für die man einfacher den constraint angeben kann, dass r>0 sein soll, als wenn man dem optmierer sagen muss dass KLI>KBO ist.

# Define the parameter trafos which in turn define the different conditions
trafo <-
  c(pars_raw) %>% 
  sort_by_name() %>% 
  replace(names(.) %in% outer_pars, outer_pars) %>% 
  
  branch(data %>% as.datalist() %>% covariates()) %>% # The table of covariates includes dosepar and dose, which are used in the next line
  
  insert("name ~ value", value = unlist(mget(supplied_pars)), name = supplied_pars) %>% # insert parameters supplied by the data
  
  define("init_PODOSE_metc13~podose", podose = mytrafo[[i]]["PODOSE_metc13"]) %>% # For the observables, I need the initial dose as a fixed parameter which doesn't change. Because the PODOSE_metc13 is also a state, I need to duplicate this parameters
  
  insert("x~exp(x)", x = .currentSymbols) %>% 
  insert("x~y+r_x", y = c("KBO_FIX_CO2", "KBO_REL_CO2"), x = c("KLI_FIX_CO2", "KLI_REL_CO2")) %>% 
  
  {.}


# ----------------------------------------------- #
# .. 3. To do: Do better error-parameter estimation ----
# ----------------------------------------------- #
trafo_sig <-
  c(pars_raw, pars_errors) %>% 
  sort_by_name() %>% 
  replace(names(.) %in% outer_pars_sig, outer_pars_sig) %>%
  
  branch(data_sig %>% as.datalist() %>% covariates()) %>% # The table of covariates includes dosepar and dose, which are used in the next line
  insert("name ~ value", value = unlist(mget(supplied_pars)), name = supplied_pars) %>%
  
  define("init_PODOSE_metc13~podose", podose = mytrafo[[i]]["PODOSE_metc13"]) %>% # For the observables, I need the initial dose as a fixed parameter which doesn't change. Because the PODOSE_metc13 is also a state, I need to duplicate this parameters
  
  insert("x~exp(x)", x = .currentSymbols) %>% 
  insert("x~y+r_x", y = c("KBO_FIX_CO2", "KBO_REL_CO2"), x = c("KLI_FIX_CO2", "KLI_REL_CO2")) %>% 
  
  # Fix some parameters, error bars were estimated by eye 
  insert("x~-11", x = str_subset(.currentSymbols, "^s0"), conditionMatch = "Meineke1993") %>% # Fix the error parameters to a value
  insert("x~0", x = str_subset(.currentSymbols, "^s0"), conditionMatch = "(Barstow)") %>% 
  insert("x~-5", x = str_subset(.currentSymbols, "^srel"), conditionMatch = "Barstow") %>% 
  insert("x~-3", x = str_subset(.currentSymbols, "^srel"), conditionMatch = "(Meineke)") %>% 
  
  insert("x~2.3", x = str_subset(.currentSymbols, "s0_DOB"), conditionMatch = "Roecker") %>% 
  insert("x~-5", x = str_subset(.currentSymbols, "srel_DOB"), conditionMatch = "Roecker") %>% 
  insert("x~0", x = str_subset(.currentSymbols, "s(0|rel)"), conditionMatch = "Roecker") %>% 
  
  
  insert("x~0", x = str_subset(.currentSymbols, "s((0)|(rel))_((DOB)|(P_CO2F))")) %>% 
  insert("x~-4", x = str_subset(.currentSymbols, "s((0)|(rel))"), conditionMatch = "Krumbiegel") %>% 
  
  {.}

# ----------------------------------------------- #
# .. 4. Compile  ----
# ----------------------------------------------- #

# .. 2 Compile with sensitivities ----
# Hier wird das Modell nach den Parametern abgeleitet und dann in C compiliert. Ableitungen sind für die Optimierung wichtig und die bekommen man am besten durch sensitivitätsgleichungen, da finite Differenzen zu numerischen Problemen führen können.

# 1. Define which parameters are to be fitted and need sensitivities


myodemodel <- odemodel(dxdt_dmod, estimate = pars_estimate, modelname = "x", compile = F) # Aar_apap is not there to be optimized, but a variable which is a state is needed because of a bug in odemodel.
x <- Xs(myodemodel) # possible to improve the tolerances on the integrator
g <- Y(c(observables), x, attach.input = F, modelname = "g", compile = F)
e <- Y(errormodel, g)



compile(g,x,e, cores = 3, output = "gx")


# Wieder kompilieren etc.
# Für das Fehlermodell gebe ich nun dezidiert die conditions an, für die diese gilt, damit die Objective function später weiß, dass sie bei diesen conditions die Fehler aus dem Fehlermodell e_sig ziehen soll.
p <- P(trafo, modelname = "p", compile = F)
pars <- getParameters(p) %>% are_names_of(0)

p_sig <- P(trafo_sig, modelname = "p_sig", compile = F)
pars_sig <- getParameters(p_sig) %>% are_names_of(0)

compile(p, p_sig, cores = 3, output = "p")
remove_c_and_o()

e_sig <- map(getConditions(p_sig), function(cn) {Y(c(errors_bic_sig, errors_met_sig), g, condition = cn)}) %>% Reduce("+", .)



# ---------------------------------------------------------- #
# 5. Construct objective function ----
# ---------------------------------------------------------- #

# Das Aufsetzen des Modells haben wir im Wesentlichen hinter uns gebracht, ab jetzt geht es los mit Standardrechnungen: Objective function aus Modell und Daten erstellen, Fitten, etc.
# Dafür gibt es den dmod.frame, im wesentlichen eine Tabelle, angelehnt and das Konzept des data.frames, wo jede Zeile eine Observierung der Variablen (Spalten) ist. Im dMod.frame ist jede Zeile eine Hypothese, die da wären, z.B. mit/ohne manche Datensätze, andere Paramter zu schätzen, anderes zugrundeliegendes dynamisches Modell, andere priorstärken, etc.
# Das dMod.frame hier hat eine Hypothese, als ich verschiende Priorstärken oder Gewichtungen getestet habe, hatten die dMod.frames mehrere Zeilen.
# 
# Jede Zeile stellt ein komplettes Modell dar, inklusive Daten und Fehlern. Um die jeweiligen Parametertrafos zu bauen, mit und ohne Fehlermodell, habe ich den Datensatz aufgeteilt. Den führe ich nun wieder zusammen, mit dem "+"-Operator, der für datalists die Daten wieder zusammenführt. Gleiches gilt für die Paramtertrafos, die die jeweligen conditions beinhalten. x und g sind generisch, wesewegen man hier nichts zusammenführen muss.
# 
# Außerdem schreibe ich noch den besten Fit und einen leichten prior auf die Paramter rein. der leichte Prior hatte das Ziel, diese Nichtidentifizierbarkeiten aufzulösen, aber letztendlich war er zu schwach.
# 
# Mit der Funktion appenObj konstruiere ich dann die objective function und ein paar andere Objekte, wie z.B. die prediction function "prd(times, pars)", mit denen man letztendlich die Modellvorhersagen macht. prd ist eine Hintereinanderausführung von g(x(p(times, pars))), die gleichzeitig noch die Ableitungen richtig mit der Kettenregel forpflanzt. Wie obj und pars wird prd dem dMod.frame als neue Spalte hinzugefügt.
# 
# Außerdem füge ich noch die Spalten cond_bic und cond_met hinzu, damit ich leichter die objective function nur für diese conditions auswerten kann
old_pars <- c(
  Ka_co2c13    	=	2.02772644041906	, # 1
  KBO_FIX_CO2  	=	2.78428236981411	, # 2
  KBO_MAX_CO2  	=	9.63498751140779	, # 3
  KBO_REL_CO2  	=	-0.267459702339339	, # 4
  r_KLI_FIX_CO2	=	9.61971900119817	, # 5
  KLI_MAX_CO2  	=	0.353328736323793	, # 6
  r_KLI_REL_CO2	=	9.39431519150866	, # 7
  KLU_EX_CO2   	=	2.12620395625639	, # 8
  KLU_EXKM_CO2 	=	1.34462945313086	, # 9
  Kp_co2c13    	=	0.502949047843344	, # 10
  Ka_metc13    	=	6.0966305	  # 11 
)

obj_L2 <- constraintL2(mu = 0 * old_pars, sigma = 10) #Prior

model <- dMod.frame("1", g, x, (p+p_sig), (as.datalist(data) + as.datalist(data_sig)), e_sig, obj_L2 = list(obj_L2)) %>% 
  appendObj(obj = list(obj_data + obj_L2),
            times = list(c(seq(0,1,length.out = 200), seq(1,12,length.out = 200))),
            pars = list(old_pars))



# ---------------------------------------------------------- #
# 6. Fit ----
# ---------------------------------------------------------- #

# Iterative fitting: select only bic and apap first
studies_bic <-  data_full %>% filter(simulation %in% c("bicarbonate"))  %>% .[["study"]] %>% unique
studies_met <-  data_full %>% filter(simulation %in% c("methacetin"))  %>% .[["study"]] %>% unique
all_cond <- getConditions(model)
cond_bic <- map(all_cond, . %>% str_subset(studies_bic)) %>% do.call(c,.)
cond_met <- map(all_cond, . %>% str_subset(studies_met)) %>% do.call(c,.)

model <- model %>% 
  mutate(cond_bic = list(cond_bic),
         cond_met = list(cond_met))


save.image("workspaceScript1.rda")


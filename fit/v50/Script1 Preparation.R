# ---------------------------------------------------------- #
# "Perpare to fit model 50" ----
# ---------------------------------------------------------- #  
  
# ---------------------------------------------------------- #
# Header ----
# ---------------------------------------------------------- #
rm(list = ls())
library(conveniencefunctions)
# to fix RJAVA problems
# export LD_LIBRARY_PATH=/usr/lib/jvm/java-8-oracle/jre/lib/amd64/server/

setwd("~/git/methacetin_fitting/fit/Fit_model_50/")
# setwd("fit/Fit_model_50")

# ---------------------------------------------------------- #
# 1. Read model ----
# ---------------------------------------------------------- #
# Since the model performed well for apap, I decided to take the apap parameters from a previous fit.
source("../../model/limax_pkpd_v50.R")
pars_raw <- c(x0, p) 
pars_in_dxdtdmod <- c(getSymbols(dxdt_dmod), names(dxdt_dmod))

pars_raw["APAPD_HLM_CL"] <- 2.20866840885261
pars_raw["Ka_apap"] <- 2.47235563004252
pars_raw["APAPD_Km_apap"] <- 0.347655392999114

# ---------------------------------------------------------- #
# 3. Model setup ----
# ---------------------------------------------------------- #
# ----------------------------------------------- #
# .. 1. Prepare observables and error-models ----
# ----------------------------------------------- #
# Modell lesen und kompilieren. die dmod-Sicht eines Modells ist, dass das Modell im wesentlichen aus drei teilen besteht,
# 1. das dynamische modell x(p)
# 2. die Beobachtungsfunktion g(x, p)
# 3. Parametertransformationen
# Parametertransformationen nehmen in dMod eine besonders wichtige Stellung ein, da diese oft die conditions festlegen.
# 1.) Im Endeffekt haben wir ja den Fall, dass viele Parameter für uns schon festgelegt sind, wie z.B. Dosen, und andere Parameter wiederum wollen wir schätzen.
# Daher ist die Parametertrafo p eine Funktion der Parameter, die wir schätzen wollen: p=p(free_pars), ihr Ergebnis ist aber eine Liste aller Parameter, die das dynamische Modell und die Observationsfunktion benötigt.
# 2.) Es hat sich gezeigt, dass es z.B. vorteilhaft ist, Parameter, die immer positiv sind, zu logtransformieren. Deswegen ist die zweite Rolle der Parametertrafo, neben der, conditions festzulegen, die Parameter, mit denen man am besten optimiert, umzurechenen in Parameter, die sinnvoll für das Modell sind.
# Oft schreiben andere dMod-User: pinner = p(pouter), hier also klar die unterscheidung zwischen "inneren parametern", die das Modell sieht und äußeren Parametern, die der optimierer sieht.
# ----------------------------------------------- #
# Observables
recovery_bic <- paste(y_dmod["Exhalation_co2c13"], "/ 60 * Mr_co2c13 / Ri_co2c13 * 100")
P_CO2F <- paste0(y_dmod["P_CO2Fc13"], "-", str_replace(y_dmod["P_CO2Fc13"], "Alu_co2c13", "0")) # Alu_co2c13 is the only dynamic variable which goes into the equation and it's initial value is fixed to zero.
observables_bic <- c(cum_rec_co2c13 = recovery_bic, y_dmod[c("DOB")], P_CO2F = P_CO2F)

recovery_met <- paste(y_dmod["Exhalation_co2c13"], "/ init_PODOSE_metc13 * Mr_metc13 * 100" )
cum_met <- paste( "Abreath_co2c13/ init_PODOSE_metc13 * Mr_metc13 * 100")
observables_met <- c(recovery_met, cum_met) %>% set_names(c("mom_rec_metc13", "cum_rec_metc13"))

# Error models
errors_bic_sig <- paste0("sqrt(s0_", names(observables_bic), "^2 + srel_", names(observables_bic), "^2 * ", names(observables_bic), "^2 )") %>% set_names(names(observables_bic))
errors_bic_sig["cum_rec_co2c13"] <- 1 #hierfür gibts eh keine daten und ich weiß nicht, ob ich es einfach weglassen kann

errors_met_sig <- paste0("sqrt(s0_", names(observables_met), "^2 + srel_", names(observables_met), "^2 * ", names(observables_met), "^2)") %>% set_names(names(observables_met))
errors_met_sig["mom_rec_metc13"] <- 1 #hierfür gibts eh keine daten mit sigma=NA

# ----------------------------------------------- #
# .. 2 Compile with sensitivities ----
# ----------------------------------------------- #
# Hier wird das Modell nach den Parametern abgeleitet und dann in C compiliert. Ableitungen sind für die Optimierung wichtig und die bekommen man am besten durch sensitivitätsgleichungen, da finite Differenzen zu numerischen Problemen führen können.

# 1. Define which parameters are to be fitted and need sensitivities
free_pars <- c("Kp_co2c13", "KBO_MAX_CO2", "KBO_REL_CO2", "KBO_FIX_CO2", "KLI_MAX_CO2", "KLI_REL_CO2", "KLI_FIX_CO2", "KLU_EX_CO2", "KLU_EXKM_CO2", "Ka_co2c13", "Ka_metc13")

myodemodel <- odemodel(dxdt_dmod, estimate = free_pars, modelname = "x", compile = F) # Aar_apap is not there to be optimized, but a variable which is a state is needed because of a bug in odemodel.
x <- Xs(myodemodel)  # possible to improve the tolerances on the integrator
g <- Y(c(observables_bic, observables_met), x, attach.input = F, modelname = "g", compile = F)
compile(g,x, cores = 3, output = "gx")

# ---------------------------------------------------------- #
# 3. Data ----
# ---------------------------------------------------------- #
# ----------------------------------------------- #
# .. 1. Preprocessing ----
# ----------------------------------------------- #
# Die Daten lassen sich aus Fehlersicht in drei Teile aufteilen:
#   1. Eine Studie hat die Fehler zu allen Datenpunkten
# 2. Manche Fehler fehlen
# 3. alle Fehler fehlen.
# 
# Für Punkt 2 gibt es die Möglichkeit, die Parameter für das Fehlermodell aus den anderen gegebenen Fehlern zu schätzen. Ein übliches Fehlermodell ist, dass der Fehler aus absoluten und relativen Fehlern besteht:
#   $sigma^2 = s0^2 + srel^2*value, $
#   wobei s0 und srel die Parameter des Fehlermodells sind.
# Bei Fall 3, kann man eigentlich die Fehlerparameter nur gemeinsam mit den Parametern des Modells mitschätzen. Da das ja nicht so gut geklappt hat, hab ich dann entshcieden, die Parameter von Hand festzulegen, was bestimmt nicht besonders klug war, hat im ersten Moment aber ganz gute Ergebnisse geliefert.
# ----------------------------------------------- #
# Read data
data_full <-
  read_tsv("../../data/limax_pkpd_v50_data.csv") %>%
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


# ----------------------------------------------- #
# .. 2. Select data for fitting ----
# ----------------------------------------------- #
# 1. Remove duplicated data points
data_full <- data_full %>% unique() # TODO: Lalazar has duplicated entries

# 2. Roecker - filter time points 
data_full <- data_full %>% # TODO: Don't unterstand anymore what I did here
  filter(time > 0)

# 3. Don't fit APAP - filter out
data_full <- data_full %>% 
  filter(simulation != "apap")

# Remove other studies from the data which goes into fitting
data_for_fitting <- data_full %>% 
  filter(!str_detect(simulation, "limax")) %>% 
  filter(!str_detect(study, "Mohr2018")) %>% 
  filter(!(str_detect(study, "Albert")&str_detect(group, "capsule")))

# Split the data in datasets with and without sigma
data     <- data_for_fitting  %>% filter(!is.na(sigma)) %>% select(-simulation)
data_sig <- data_for_fitting  %>% filter(is.na(sigma)) %>% select(-simulation)

# ---------------------------------------------------------- #
# 4. Parameters, trafos ----
# ---------------------------------------------------------- #
# ----------------------------------------------- #
# .. 1. Sort parameters ----
# ----------------------------------------------- #

# Get all parameters that in some way replace pars_raw (parameters supplied by the SBML file) or 
#   are additional parameters that we need to fit
# This could be e.g. Study specific pars such as IVDOSE* or pars that are fitted
supplied_pars <- names(pars_raw)[(names(pars_raw) %in% names(data))]
outer_pars    <- sort(unique(c(free_pars, supplied_pars)))

pars_errors <- c(errors_bic_sig, errors_met_sig) %>% 
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


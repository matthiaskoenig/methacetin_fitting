# ---------------------------------------------------------- #
# Description ----
# ---------------------------------------------------------- #
# Date    15.1.2019
# Author  Daniel
# Purpose 
#     The fits of fit_bic.rds show some interesting features: 
#       The best 157 fits show perfect correlations for two parameter pairs.
#       Some other correlations can also be seen. The question is, why these connected landscapes didn't end up in the same optimum.
#       Christian said two things: Use more precise tolerances for the integrator and remove the perfect correlations.


# ---------------------------------------------------------- #
# Header ----
# ---------------------------------------------------------- #
rm(list = ls())
library(conveniencefunctions)
currentwd <- '/home/denial/Promotion/Projects/methacetin_fitting/fit/Fit_model_50'
projwd <- '/home/denial/Promotion/Projects/methacetin_fitting'
scriptwd <- '/home/denial/Promotion/Projects/methacetin_fitting/fit/Fit_model_50'
setwd(scriptwd)
load('workspaceScript3.rda')
# model <- readDMod.frame("Script2fit_bic.rds")


# ---------------------------------------------------------- #
# Iteration 1 Explore Fits  ----
# ---------------------------------------------------------- #
myparframe <- model$parframes[[1]]

# Shows steps at 1,157,167
myparframe %>% 
  .[1:224] %>%
  plotValues(tol = 100)

# Correlation plot of fitted parameters
myparframe %>% 
  .[1:224] %>% 
  as.data.frame %>% 
  mutate(val = cut(value, breaks = quantile(value, c(0,157,167,224)/224))) %>% 
  GGally::ggpairs(
    mapping = aes(color = val),
    columns = 5:ncol(myparframe))
# Correlation plot of fitted parameters
myparframe %>% 
  .[1:156] %>% 
  as.data.frame %>% 
  # mutate(val = cut(value, breaks = quantile(value, c(0,157,167,224)/224))) %>% 
  GGally::ggpairs(
    # mapping = aes(color = val),
    columns = 5:ncol(myparframe))

# ---------------------------------------------------------- #
# Implement both suggestions from Christian ----
# ---------------------------------------------------------- #
cor_r <- myparframe %>% 
  .[1:156] %>% 
  as.data.frame() %>% 
  lm(as.formula("r_KLI_FIX_CO2~r_KLI_REL_CO2"), data = .)
cor__kluex <- myparframe %>% 
  .[1:156] %>% 
  as.data.frame() %>% 
  lm(as.formula("KLU_EX_CO2~KLU_EXKM_CO2"), data = .)

trafo <- trafo %>% 
  insert(paste0("r_KLI_FIX_CO2 ~", cor_r$coefficients[1], " + ", cor_r$coefficients[2], " * r_KLI_REL_CO2")) %>% 
  insert(paste0("KLU_EX_CO2 ~", cor__kluex$coefficients[1], " + ", cor__kluex$coefficients[2], " * KLU_EXKM_CO2"))

trafo_sig <- trafo_sig %>% 
  insert(paste0("r_KLI_FIX_CO2 ~", cor_r$coefficients[1], " + ", cor_r$coefficients[2], " * r_KLI_REL_CO2")) %>% 
  insert(paste0("KLU_EX_CO2 ~", cor__kluex$coefficients[1], " + ", cor__kluex$coefficients[2], " * KLU_EXKM_CO2"))

# ----------------------------------------------- #
# .. 4. Compile  ----
# ----------------------------------------------- #
# Wieder kompilieren etc.
# Für das Fehlermodell gebe ich nun dezidiert die conditions an, für die diese gilt, damit die Objective function später weiß, dass sie bei diesen conditions die Fehler aus dem Fehlermodell e_sig ziehen soll.
p <- P(trafo, modelname = "p", compile = F)
pars <- getParameters(p) %>% are_names_of(0)

p_sig <- P(trafo_sig, modelname = "p_sig", compile = F)
pars_sig <- getParameters(p_sig) %>% are_names_of(0)

compile(p, p_sig, cores = 3, output = "p2")
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
old_pars <- c(model$fixed[[1]], unclass(as.parvec(model$parframes[[1]])))

model <- dMod.frame("1", g, x, (p+p_sig), (as.datalist(data) + as.datalist(data_sig)), e_sig) %>% 
  appendObj(obj = list(obj_data),
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


save.image("workspaceScript4.rda")

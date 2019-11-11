# -------------------------------------------------------------------------#
# 0 Header ----
# -------------------------------------------------------------------------#
#
# Working directory must be the folder containing this script!!!
#
#
# Script1 Preparation.R
#
# [PURPOSE]
# 
#
# [AUTHOR]
# Daniel Lill
#
# [Date]
# `Sys.time()`
#
# .. Libraries -----  
library(conveniencefunctions)
# devtools::load_all("~/Promotion/Promotion/Projects/conveniencefunctions")
# library(tidyverse)
# .. Default Values -----
rm(list = ls(all.names = TRUE))
.outputFolder <- "../04-Output/Script1 Preparation/"
# to fix RJAVA problems
# export LD_LIBRARY_PATH=/usr/lib/jvm/java-8-oracle/jre/lib/amd64/server/

# -------------------------------------------------------------------------#
# 1 Data ----
# -------------------------------------------------------------------------#
# .. 1. Preprocessing -----
# Die Daten lassen sich aus Fehlersicht in drei Teile aufteilen:
#   1. Eine Studie hat die Fehler zu allen Datenpunkten
# 2. Manche Fehler fehlen
# 3. alle Fehler fehlen.

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
  fitErrorModel(factors = fitErrorModel_factors, plotting = FALSE, blather = FALSE) 
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

# Add condition and ID identifier and lloq
data_full <- data_full %>% 
  cf_as.datalist(split.by = c("study", "group")) %>% 
  as.data.frame() %>% 
  mutate(ID = as.numeric(as_factor(condition)))
dl <- data_full %>% 
  cf_as.datalist(split.by = c("study", "group"))

# [] log transform data?
#   [] If yes, turn rel error model into absolute error model!

# .. 2 Table containing all information about different conditions -----
condition.grid <- data_full %>% 
  cf_as.datalist() %>% 
  covariates()


# .. 3 Select data for fitting -----
data_full <- data_full %>% unique() 
# data_full <- data_full 
#   filter(time > 0)

# [] Discuss with Matthias, which studies to remove from fitting
# data_for_fitting <- data_full %>% 
#   filter(!str_detect(simulation, "limax")) %>% 
#   filter(!str_detect(study, "Mohr2018")) %>% 
#   filter(!(str_detect(study, "Albert")&str_detect(group, "capsule")))

# .. 4 Data Exploration -----
# data_full %>%
#   filter(is.na(sigma)) %>%
#   ggplot(aes(time, value)) +
#   facet_wrap(~condition, scales = "free") +
#   geom_point() +
#   scale_y_log10() +
#   geom_smooth(spna = 0.2)
# .... Loess residuas ------
# loe <- data_full %>%
#   filter(is.na(sigma)) %>% 
#   mutate(value = log(value)) %>% 
#   filter(is.finite(value)) %>% 
#   mutate(wup = as.numeric(interaction(name, condition))) %>% 
#   {loess(value ~ wup, data = ., span = 0.2)}

# [] Make a proper data exploration
#   The data looks very much like 2 compartmental pk except for the Krumbiegel data.

# Is there any long observation of metc13, because obviously in Krumbiegel?


# ---------------------------------------------------------- #
# 2 Model ----
# ---------------------------------------------------------- #
# .. 1 Read ODE-Model -----
source("../../model/v53/limax_53.R")

# .. 2 Observables and errormodel ----
observables <- c(
  Mve_apap       = "Mve_apap"                                                , # [mg/dl] paracetamol concentration plasma
  Mve_metc13     = "Mve_metc13"                                              , # [mg/dl] methacetin concentration plasma
  DOB            = "DOB"                                                     , # [‰] Delta over baseline
  P_CO2F         = "P_CO2Fc13 - init_P_CO2Fc13"                              , # co2c13 fraction corrected for baseline
  mom_rec_co2c13 = "Exhalation_co2c13/60*Mr_co2c13/Ri_co2c13*100.0"          , # [%] recovery after continuous IV injection
  mom_rec_metc13 = "Exhalation_co2c13/(init_PODOSE_metc13/Mr_metc13) * 100" ,  # [% dose/h] momentary recovery
  cum_rec_metc13 = "Abreath_co2c13/(init_PODOSE_metc13/Mr_metc13) * 100",      # [% dose] cumulative recovery
  cum_rec_co2c13 = "Abreath_co2c13/(init_PODOSE_co2c13/Mr_co2c13) * 100"       # [% dose] cumulative recovery
)

observables <- c(y_dmod[intersect(names(y_dmod), getSymbols(observables))], observables) %>% 
  dMod::resolveRecurrence() %>% 
  .[names(observables)]


# Error models
# * From the data exploration it appears that we can already omit the absolute error 
#   (data exploration is still work in progress, but relative error model is still a reasonable assumption)
# [] Maybe it's also best to log transform the data, kick out the time==0 and just go with a relative error model
nm     <- names(observables)
errormodel <- paste0("sqrt((1e-6)^2 + srel_", nm, "^2 * ", nm, "^2 )") %>% set_names(nm) 

# .. 3 Parameters ----
# .... 1 Table containing all parameter names + meta-information ------
pars_raw       <- c(x0, p) 
parameters_estimate0 <- c("Kp_apap", "Vp_apap", "Ka_apap", "APAPD_CL", "APAPD_Km_apap", 
                    "Kp_co2c13", "Vp_co2c13", "Ka_co2c13", "EXHCO2_CL", "EXHCO2_Km_co2", 
                    "Kp_metc13", "Vp_metc13", "Ka_metc13", "CYP1A2MET_CL", "CYP1A2MET_Km_met")
pars_data      <- c("BW", "PODOSE_apap", "IVDOSE_apap", "PODOSE_co2c13", "IVDOSE_co2c13", 
                    "Ri_co2c13", "ti_co2c13", "PODOSE_metc13", "IVDOSE_metc13", "ti_metc13")

parameters_df <- cf_build_parameters_df(odes = dxdt_dmod, observables = observables, errormodel = errormodel)
parameters_df <- cf_parameters_df_merge_values(parameters_df, pars_raw) %>% 
  filter(str_detect(name0, "^init_", negate = TRUE)) # I think removing init_m parameters can be a general rule or better: remove them and reintroduce them already in the cf_build_parameters_df. name0 would be the original parameter. think a biut about that.

parameters_estimate <- c(parameters_estimate0, parameters_df$name[parameters_df$FLAGerrpar])

parameters_df <- parameters_df %>% 
  mutate(
    # set boundaries
    upper = case_when(str_detect(name, "^Kp_(apap|co2|met)") ~ 10  , TRUE ~ upper),
    lower = case_when(str_detect(name, "^Kp_(apap|co2|met)") ~  0.1, TRUE ~ lower),
    # set better initial values for errors
    value = case_when(str_detect(name, "^s(0|rel)_")         ~  0.1, TRUE ~ value)
         )


# .... 3 Table for all fixed parameters ------
fixed.grid <- parameters_df %>% 
  filter(!name0 %in% c(parameters_estimate, pars_data)) %>% 
  reshape2::dcast(. ~ name, value.var = "value") %>% 
  select(-1) %>% 
  cbind(condition.grid[c("ID", "condition", pars_data)], .)

# .... 4 Lookup - Table for all estimated parameters ------
# [] Find a better way to better handle est.grid, trafo_df and est.vec simultaneously instead of different subsubsections
est.grid <- parameters_df %>% 
  filter(name0 %in% parameters_estimate) %>% 
  reshape2::dcast(. ~ name0, value.var = "name") %>% 
  select(-1) %>%
  cbind(condition.grid[c("ID", "condition")], .)

# .... 5 Symbolic parameter transformation ------
trafo_df <-
  parameters_df %>% 
  mutate(estscale = case_when(name %in% names(fixed.grid) ~ "N", TRUE ~ estscale)) %>% 
  mutate(trafo = case_when(estscale == "L" ~ paste0("exp(", name, ")"),estscale == "N" ~ name)) %>% 
  {.}

trafo <- setNames(trafo_df$trafo, trafo_df$name)
# duplicate inits
trafo_inits <- trafo[parameters_df$name[parameters_df$FLAGinitpar]] %>% setNames(.,paste0("init_", names(.)))
trafo       <- c(trafo, trafo_inits)

# .... 6 Parameter vector ------
pars_est_df <- parameters_df %>% 
  filter(name %in% parameters_estimate) %>% 
  mutate(value = case_when(estscale == "L" ~ log(value), estscale == "N" ~ value),
         upper = case_when(estscale == "L" ~ log(upper), estscale == "N" ~ upper),
         lower = case_when(estscale == "L" ~ log(lower), estscale == "N" ~ lower))

# .. 5 Compile  -----
myodemodel <- odemodel(dxdt_dmod, estimate = intersect(getSymbols(dxdt_dmod, names(dxdt_dmod)), parameters_estimate), modelname = "x", compile = FALSE) 
x <- Xs(myodemodel)
g <- Y(c(observables), x, attach.input = TRUE, modelname = "g", compile = FALSE)
e <- Y(errormodel, g, modelname = "e")
p <- P(trafo, modelname = "p", compile = FALSE)
compile(g,x,e,p, cores = 11, output = "model")
# remove intermediate files
unlink(list.files(pattern = "\\.(c|o)$"))

# .. 6 Construct objective function -----
prd0 <- (g*x*p)
prd <- cf_PRD_indiv(prd0, est.grid, fixed.grid)
obj_data <- cf_normL2_indiv(dl, prd0, e, est.grid, fixed.grid)

# .. 7 Test dMod functions-----
times <- seq(0,5, length.out = 10)
pars <- setNames(pars_est_df$value, pars_est_df$name)

prs <-  cf_make_pars(pars, est.grid, fixed.grid, 1)
fxd <- prs$fixed
prs <- prs$pars
p(prs, fixed = fxd)
compare(getParameters(p), names(c(prs, fxd)))

prd0(times, prs, fixed = fxd, deriv= TRUE) 
# .... Check out why there is no dynamics in observables ------
prd0(times, prs, fixed = fxd, deriv= FALSE) %>% as.prdlist() %>% plot(data = NULL, str_detect(name, "apap"))
# .... Test prd ------
# debugonce(prd)
wupwup <- prd(times, pars, deriv = TRUE)

# .... Test obj ------
# debugonce(obj_data); 
obj_data <- cf_normL2_indiv(dl, prd0, e, est.grid, fixed.grid)
wup <- obj_data(pars, FLAGverbose = TRUE, FLAGbrowser = FALSE)
wup <- obj_data(pars, conditions = c("Leijssen1996_NaN"), FLAGverbose = TRUE, FLAGbrowser = TRUE)
is.na(wup$value)
wup %>% attr("con")
# -------------------------------------------------------------------------#
# 3 Test fit ----
# -------------------------------------------------------------------------#
# .. Fit -----
lower <- setNames(pars_est_df$lower, pars_est_df$name)
upper <- setNames(pars_est_df$upper, pars_est_df$name)
fit <- trust(obj_data, pars, 0.1,10, iterlim = 100, parupper = upper, parlower = lower, simcores = 11, printIter = TRUE)

# .. Look at predictions -----
times <- datatimes(data_full, 150)
pred0 <- prd(times, pars) %>% as.prdlist()
pred1 <- prd(times, fit$argument) %>% as.prdlist()

# original unfitted one
plotCombined(pred0, dl, name %in% names(observables), aesthetics = c(group = "name", color = "name")) + 
  facet_wrap(~condition, scales = "free")

# fitted one
plotCombined(pred1, dl, name %in% names(observables), aesthetics = c(group = "name", color = "name")) + 
  facet_wrap(~condition, scales = "free")

plotCombined(pred1, dl, name %in% "cum_rec_co2c13", aesthetics = c(group = "name", color = "name")) + 
  facet_wrap(~condition, scales = "free") + 
  geom_line(size = 2)




# -------------------------------------------------------------------------#
# Todolist ----
# -------------------------------------------------------------------------#
# [] Proper data exploration
# [] Run multistart
# [] Set up docker such that it works




# Exit ----
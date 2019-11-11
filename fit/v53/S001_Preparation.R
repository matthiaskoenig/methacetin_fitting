# -------------------------------------------------------------------------#
# 0 Header ----
# -------------------------------------------------------------------------#
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
# .. Default Values -----
rm(list = ls(all.names = TRUE))
.outputFolder     <-"../04-Output/S001_Preparation/"
.modelFolder      <-file.path(.outputFolder, "01-Model")
.estimationFolder <-file.path(.outputFolder, "02-Estimation")
.plotFolder       <-file.path(.outputFolder, "03-Plot")
.tableFolder      <-file.path(.outputFolder, "04-Table")
.tempdir          <-tempdir()
for (x in c(.outputFolder,.modelFolder,.estimationFolder,.plotFolder,.tableFolder,.tempdir))
  if (!dir.exists(x)) dir.create(x)


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
# >>>> von Hand <<<<<<<<<<<
data_full <-
  read_tsv("../../data/v53/limax_53_data.tsv") %>%
  select(-model) %>% 
  rename(name = observer) %>% 
  rename(n = subjects)

# 1. For those studies where some data points have no sigma, infer it from the other sigmas of the same study
# >>>> von Hand <<<<<<<<<<<
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
# >>>> von Hand <<<<<<<<<<<
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
  mom_rec_metc13 = "Exhalation_co2c13/((init_PODOSE_metc13)/Mr_metc13) * 100",  # [% dose/h] momentary recovery
  cum_rec_metc13 = "Abreath_co2c13/(init_PODOSE_metc13/Mr_metc13) * 100",      # [% dose] cumulative recovery
  cum_rec_co2c13 = "Abreath_co2c13/(init_PODOSE_co2c13/Mr_co2c13) * 100"       # [% dose] cumulative recovery
)
# observables <- unlist(rjson::fromJSON(rjson::toJSON(observables)))

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
# >>>> von Hand <<<<<<<<<<<
parameters_estimate0 <- c("Kp_apap", "Vp_apap", "Ka_apap", "APAPD_CL", "APAPD_Km_apap", 
                    "Kp_co2c13", "Vp_co2c13", "Ka_co2c13", "EXHCO2_CL", "EXHCO2_Km_co2", 
                    "Kp_metc13", "Vp_metc13", "Ka_metc13", "CYP1A2MET_CL", "CYP1A2MET_Km_met")
pars_data      <- c("BW", "PODOSE_apap", "IVDOSE_apap", "PODOSE_co2c13", "IVDOSE_co2c13", 
                    "Ri_co2c13", "ti_co2c13", "PODOSE_metc13", "IVDOSE_metc13", "ti_metc13")

parameters_df <- cf_build_parameters_df(odes = dxdt_dmod, observables = observables, errormodel = errormodel)
parameters_df <- cf_parameters_df_merge_values(parameters_df, pars_raw)
parameters_estimate <- c(parameters_estimate0, parameters_df$name[parameters_df$FLAGerrpar])


# >>>> von Hand <<<<<<<<<<< 
parameters_df <- parameters_df %>% 
  mutate(
    # set boundaries
    upper = case_when(str_detect(name, "^Kp_(apap|co2|met)") ~ 10  , TRUE ~ upper),
    lower = case_when(str_detect(name, "^Kp_(apap|co2|met)") ~  0.1, TRUE ~ lower),
    # set better initial values for errors
    value = case_when(str_detect(name, "^(s0|srel)_")        ~  0.1, TRUE ~ value)
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
cat("compiling\n")
myodemodel <- odemodel(dxdt_dmod, estimate = intersect(getSymbols(dxdt_dmod, names(dxdt_dmod)), parameters_estimate), modelname = "x", compile = FALSE) 
x <- Xs(myodemodel)
g <- Y(c(observables), x, attach.input = TRUE, modelname = "g", compile = FALSE)
e <- Y(errormodel, g, modelname = "e")
p <- P(trafo, modelname = "p", compile = FALSE)
compile(g,x,e,p, cores = 11, output = "model")
# remove intermediate files
unlink(list.files(pattern = "\\.(c|o)$"))
cat("testing\n")
# .. 6 Construct objective function -----
prd0 <- (g*x*p)
prd <- cf_PRD_indiv(prd0, est.grid, fixed.grid)
obj_data <- cf_normL2_indiv(dl, prd0, e, est.grid, fixed.grid)

# .. 7 Test dMod functions-----

# .... 1 Test low-level prediction function ------
times <- seq(0,5, length.out = 10)
pars <- setNames(pars_est_df$value, pars_est_df$name)

prs <-  cf_make_pars(pars, NULL, est.grid, fixed.grid, 1)
fxd <- prs$fixed
prs <- prs$pars

p(prs, fixed = fxd)
compare(getParameters(p), names(c(prs, fxd)))

prd0(times, prs, fixed = fxd, deriv= TRUE) 
# .... 2 Test prediction function for all conditions ------
# debugonce(prd)
wupwup <- prd(times, pars, deriv = TRUE)
# .... 3 Test objective function ------
# debugonce(obj_data); 
obj_data <- cf_normL2_indiv(dl, prd0, e, est.grid, fixed.grid)
# wup <- obj_data(pars, FLAGverbose = TRUE, FLAGbrowser = FALSE)

conditions <- est.grid$condition
condition_subset <- setdiff(conditions, c("Leijssen1996_NaN", "Fuller2000_C13", "Fuller2000_C14"))
test_obj <- obj_data(pars, conditions = condition_subset, FLAGverbose = FALSE, FLAGbrowser = FALSE)
test_obj %>% attr("con")
test_obj$gradient
# -------------------------------------------------------------------------#
# 3 Test fit ----
# -------------------------------------------------------------------------#
# .. Fit -----
# fixed_pars <- pars[names(test_obj$gradient[test_obj$gradient == 0])]
# free_pars  <- pars[names(test_obj$gradient[test_obj$gradient != 0])]
# 
# obj_data <- cf_normL2_indiv(dl, prd0, e, est.grid, fixed.grid)
# conditions       <- est.grid$condition
# condition_subset <- setdiff(conditions, c("Leijssen1996_NaN", "Fuller2000_C13", "Fuller2000_C14"))
# lower            <- setNames(pars_est_df$lower, pars_est_df$name)[names(free_pars)]
# upper            <- setNames(pars_est_df$upper, pars_est_df$name)[names(free_pars)]
# 
# wup <- obj_data(free_pars, fixed = fixed_pars, conditions = condition_subset, 
#                 FLAGverbose = FALSE, FLAGbrowser = FALSE)



# R-objekte rausschreiben und aufhören ...
# fit <- trust(obj_data, free_pars, 0.1,10, iterlim = 100, 
#              parupper = upper, parlower = lower, printIter = TRUE,
#              simcores = 11, conditions = condition_subset, fixed = fixed_pars)
# 
# # .. Look at predictions -----
# times <- datatimes(data_full, 150)
# pred0 <- prd(times, pars) %>% as.prdlist()
# pred1 <- prd(times, fit$argument, fixed = fixed_pars) %>% as.prdlist()
# 
# # original unfitted one
# pl <- plotCombined(pred0, dl, name %in% names(observables), aesthetics = c(group = "name", color = "name")) + 
#   facet_wrap(~condition, scales = "free")
# ggsave(file.path(.plotFolder, "001-Unfitted.png"), pl)
# # fitted one
# pl <- plotCombined(pred1, dl, name %in% names(observables), aesthetics = c(group = "name", color = "name")) + 
#   facet_wrap(~condition, scales = "free")
# ggsave(file.path(.plotFolder, "002-Fitted.png"),pl)




# -------------------------------------------------------------------------#
# 4 Multi-start fit ----
# -------------------------------------------------------------------------#
fixed_pars <- pars[names(test_obj$gradient[test_obj$gradient == 0])]
free_pars  <- pars[names(test_obj$gradient[test_obj$gradient != 0])]

obj_data <- cf_normL2_indiv(dl, prd0, e, est.grid, fixed.grid)
conditions       <- est.grid$condition
condition_subset <- setdiff(conditions, c("Leijssen1996_NaN", "Fuller2000_C13", "Fuller2000_C14"))
lower            <- setNames(pars_est_df$lower, pars_est_df$name)[names(free_pars)]
upper            <- setNames(pars_est_df$upper, pars_est_df$name)[names(free_pars)]


startpars <- msParframe(free_pars*0, n = 200, sd = 2)
fits <- mstrust(obj_data, startpars, cores = dMod::detectFreeCores(), 
                parupper = upper, parlower = lower, printIter = TRUE, 
                conditions = condition_subset, fixed = fixed_pars)
saveRDS(fits, file.path(.estimationFolder, "fits.rds"))

# -------------------------------------------------------------------------#
# Todolist ----
# -------------------------------------------------------------------------#
# [] Proper data exploration
# [] Run multistart
# [] Set up docker such that it works

# -------------------------------------------------------------------------#
# Test validation profiles ----
# -------------------------------------------------------------------------#
# cn <- est.grid$condition
# lower <- setNames(pars_est_df$lower, pars_est_df$name)
# upper <- setNames(pars_est_df$upper, pars_est_df$name)
# fit <- trust(obj_data, pars, 0.1,10, iterlim = 100, parupper = upper, parlower = lower, 
#              simcores = 11, printIter = TRUE, conditions = cn[1:10])
# 
# bestfit <- fit$argument
# 
# # ..  -----
# bla <- prd(times, bestfit, conditions = "Chiew2010_NaN", deriv = TRUE)
# pars_vali <- c(testvali = unname(bla[["Chiew2010_NaN"]][10, "Aar_apap", drop = TRUE]))
# vali <- cf_datapointL2(name = "Aar_apap", time =  5,value =  "testvali", sigma = 1e-6, "vali", condition = "Chiew2010_NaN", prd)
# vali(c(bestfit, pars_vali), FLAGbrowser = FALSE)
# 
# obj2 <- (obj_data + vali)
# 
# debugonce(vali)
# obj2(pars = c(bestfit, pars_vali), conditions = cn[1:10])
# 
# rp___ <- tempfile()
# Rprof(rp___)
# prf <- profile(obj2, c(bestfit, pars_vali), names(pars_vali), conditions = cn[1:10], method = "integrate",
#                limits = c(lower = 0.0000001, upper = 10), stepControl = list(limit = 10), cores = 1, verbose = TRUE)
# Rprof(NULL)
# pv___ <- profvis::profvis(prof_input = rp___)
# htmlwidgets::saveWidget(pv___, paste0(rp___, ".html"))
# browseURL(paste0(rp___, ".html"))
# 
# plotProfile(prf)

# Exit ----
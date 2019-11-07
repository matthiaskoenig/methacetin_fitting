# ---------------------------------------------------------- #
# "Fitting model 50" ----
# ---------------------------------------------------------- #  
  
# ---------------------------------------------------------- #
# Header ----
# ---------------------------------------------------------- #
rm(list = ls())
library(conveniencefunctions)
setwd("~/git/methacetin_fitting/fit/Fit_model_50/")
# setwd("~/Promotion/Projects/methacetin_fitting/fit/Fit_model_50/")
# setwd("fit/Fit_model_50")

load("workspaceScript2.rda")
loadDLL(x,p)


# fit_bic2_job$purge()
fit_bic_job$check()
fit_bic <- fit_bic_job$get()

# # fit_bic %>% str1
fit_bic <- fit_bic %>% uniteFits() %>% appendParframes
saveRDS(fit_bic, file = "results_mk2018-01-24_fit_bic.rds")
model <- readDMod.frame("results_mk2018-01-24_fit_bic.rds")
# fit_bic_job$purge()

# GGally::ggpairs(model$parframes[[1]] %>% as.data.frame() %>% .[-c(1:4)])

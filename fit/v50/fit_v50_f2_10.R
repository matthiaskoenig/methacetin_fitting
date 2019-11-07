try(library(bindrcpp))
try(library(conveniencefunctions))
try(library(forcats))
try(library(stringr))
try(library(dplyr))
try(library(purrr))
try(library(readr))
try(library(tidyr))
try(library(tibble))
try(library(ggplot2))
try(library(tidyverse))
try(library(dMod))
try(library(cOde))
try(library(stats))
try(library(graphics))
try(library(grDevices))
try(library(utils))
try(library(datasets))
try(library(methods))
try(library(base))
setwd('~/fit_v50_f2_10_folder')
rm(list = ls())

load('fit_v50_f2.RData')
files <- list.files(pattern = '.so')
for (f in files) dyn.load(f)
.node <- 10
.runbgOutput <- try({
    ncores <- detectFreeCores()
    assign("ncores", ncores, pos = .GlobalEnv)
    out <- model %>% ungroup %>% mutate(fixed = list(c(Ka_metc13 = 6.0966305))) %>% mutate(fits = map(seq_along(x), function(i) {
        assign("fit_obj", obj[[i]], pos = .GlobalEnv)
        fit_fixed <- fixed[[i]]
        assign("fit_fixed", fit_fixed, pos = .GlobalEnv)
        fit_pars <- pars[[i]]
        fit_pars <- fit_pars[!names(fit_pars) %in% names(fit_fixed)]
        fit_pars <- msParframe(fit_pars, 20 * ncores, seed = sample(1:10000, 1), sd = 2)
        assign("fit_pars", fit_pars, pos = .GlobalEnv)
        fit_conditions = c(cond_bic[[i]])
        assign("fit_conditions", fit_conditions, pos = .GlobalEnv)
        assign("fit_studyname", paste0("fits", hypothesis[[i]]), pos = .GlobalEnv)
        mstrust(objfun = fit_obj, center = fit_pars, fixed = fit_fixed, conditions = fit_conditions, studyname = fit_studyname, blather = F, cores = ncores, iterlim = 200, parlower = c(Ka_co2c13 = -20, KBO_FIX_CO2 = -20, KBO_MAX_CO2 = -20, KBO_REL_CO2 = -20, KLI_MAX_CO2 = -20, KLU_EX_CO2 = -20, KLU_EXKM_CO2 = -20, Kp_co2c13 = -20, r_KLI_FIX_CO2 = 0, r_KLI_REL_CO2 = 0), parupper = c(Ka_co2c13 = 20, KBO_FIX_CO2 = 20, KBO_MAX_CO2 = 20, KBO_REL_CO2 = 20, KLI_MAX_CO2 = 20, KLU_EX_CO2 = 20, KLU_EXKM_CO2 = 20, 
            Kp_co2c13 = 20, r_KLI_FIX_CO2 = 30, r_KLI_REL_CO2 = 30))
    })) %>% rowwise
    out
})
save(.runbgOutput, file = 'fit_v50_f2_10_result.RData')
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


load("workspaceScript1.rda")
loadDLL(x,p)

# ---------------------------------------------------------- #
# 6. Fit ----
# ---------------------------------------------------------- #

fit_bic_job <- runbg({
  ncores <- detectFreeCores()
  assign("ncores", ncores, pos = .GlobalEnv)
  
  out <- model %>%
    ungroup %>%
    mutate(fixed = list(c(
      Ka_metc13  = 6.0966305 # wo kam das nochmal her?
    ))) %>% 
    mutate(fits = map(seq_along(x), function(i) {
      assign("fit_obj", obj[[i]], pos = .GlobalEnv)
      
      fit_fixed <- fixed[[i]]
      assign("fit_fixed", fit_fixed, pos = .GlobalEnv)
      
      fit_pars <- pars[[i]] 
      fit_pars <- fit_pars[!names(fit_pars)%in%names(fit_fixed)]
      # fit_pars <- msParframe(fit_pars, 5*ncores, sd = 2)
      # FIXME: calculate reproducible seed
      fit_pars <- msParframe(fit_pars, 10*ncores, seed=sample(1:10000,1), sd = 2)
      assign("fit_pars", fit_pars, pos = .GlobalEnv)
      
      fit_conditions = c(cond_bic[[i]])
      assign("fit_conditions", fit_conditions, pos = .GlobalEnv)
      assign("fit_studyname", paste0("fits", hypothesis[[i]]), pos = .GlobalEnv)
      
      mstrust(objfun = fit_obj, 
              
              center = fit_pars, 
              fixed = fit_fixed, 
              conditions = fit_conditions,
              
              studyname = fit_studyname, 
              blather = F, 
              cores = ncores, 
              iterlim = 200,
              
              parlower = c(
                Ka_co2c13    	=	-20	, # 1
                KBO_FIX_CO2  	=	-20	, # 2
                KBO_MAX_CO2  	=	-20	, # 3
                KBO_REL_CO2  	=	-20	, # 4
                KLI_MAX_CO2  	=	-20	, # 5
                KLU_EX_CO2   	=	-20	, # 6
                KLU_EXKM_CO2 	=	-20	, # 7
                Kp_co2c13    	=	-20	, # 8
                r_KLI_FIX_CO2	=	0	, # 9
                r_KLI_REL_CO2	=	0	  # 10 
              ), 
              parupper = c(
                Ka_co2c13    	=	20	, # 1
                KBO_FIX_CO2  	=	20	, # 2
                KBO_MAX_CO2  	=	20	, # 3
                KBO_REL_CO2  	=	20	, # 4
                KLI_MAX_CO2  	=	20	, # 5
                KLU_EX_CO2   	=	20	, # 6
                KLU_EXKM_CO2 	=	20	, # 7
                Kp_co2c13    	=	20	, # 8
                r_KLI_FIX_CO2	=	30	, # 9
                r_KLI_REL_CO2	=	30	  # 10 
              )
      ) 
    })
    ) %>%
    rowwise
  
  out
  
}, 
# machine = c(paste0("knecht", c(1,2))), input = "model", filename = "fit_bic"
machine = c('dmod-node1', 'dmod-trip1', 'dmod-trip2'), input = "model", filename = "fit_bic"
# , recover = T
)

save.image("workspaceScript2.rda")
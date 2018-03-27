# LiMAx fitting
Information for fitting parameter values in the LiMAx model

## SBML Model
The latest model version is available in the `model` subfolder as SBML file 
```
./model/limax_pkpd_*.xml
```
A HTML model report is provided in the model directory as
```
./model/limax_pkpd_*.html
```

## Python notebook
Example simulations are available in the ipython notebook.
For installation setup a python virtual environment with the requirements listed
in requirements.txt
```
mkvirtualenv methacetin_fitting -p python3
pip install -r requirements.txt

```

# Documentation
Required packages devtools & dMod 

```
sudo -E add-apt-repository -y ppa:marutter/rrutter
sudo -E apt-get update
sudo -E apt-get -y install r-base-core r-base r-base-dev r-recommended libssl-dev libcurl4-openssl-dev libxml2-dev liblzma-dev lzma lzma-dev
install.packages("devtools)
devtools::install_github("dlill/conveniencefunctions")
devtools::install_github("dkaschek/cOde")
devtools::install_github("dkaschek/dMod")
```


## [A] paracetamol

### Observer Functions
```
Mve_apap = Mve_apap     # [mg/dl] paracetamol concentration plasma
```

### Free Parameters
```
Ka_apap         # [1/hr] absorption apap gut
APAPD_HLM_CL    # Vmax value hepatic clearance
APAPD_Km_apap   # [mM] Km value for apap
```

### study, group
* `Albert1974, capsule`
* `Albert1974, tablet`
* `Baraka1990, NaN`
* `Chiew2010, NaN`
* `Critchley2005, NaN`
* `Rawlins1977, IV_D1000`
* `Rawlins1977, ORAL_D500`
* `Rawlins1977, ORAL_D1000`
* `Rawlins1977, ORAL_D2000`


## [B] bicarbonate

### Observer Functions
```
DOB = DOB              # [‰] Delta over baseline
P_CO2Fc13 = P_CO2Fc13  
mom_rec_co2c13 = Exhalation_co2c13/60*Mr_co2c13/Ri_co2c13*100.0  # [%] revovery after continous IV injection
```

### Free Parameters
```
Ka_co2c13       # [1/hr] absorption bicarbonate gut
KLU_EXCO2       # CO2 rate of disposal in air [1/min]
CO2FIX_HLM_CL   # CO2 fixation liver?
KBO_FIXCO2      # CO2 storage slow pool [1/min],
KBO_RELCO2      # CO2 release slow pool [1/min]"),
KBO_MAXCO2      # CO2 pool size [mg]"),

# the tissue distribution coefficients could be important (but must be changed together)
```

### study, group

* `Mohr2018, NaN`


*** Irving1983 ***
```
time, n, dob ± dob_sd
IVDOSE_co2c13 = 46.5  # [mg]
```

*** Barstow1990 ***
```
time, n, dob
IVDOSE_co2c13 = 73  # [mg]
```

*** Meinecke1993_12.5 ***
```
time, n, co2_ratio
PODOSE_co2c13 = 12.5  # [mg]
```

*** Meinecke1993_25A ***
```
time, n, co2_ratio
PODOSE_co2c13 = 25  # [mg]
```

*** Meinecke1993_25B ***
```
time, n, co2_ratio
PODOSE_co2c13 = 25  # [mg]
```

*** Meinecke1993_50 ***
```
time, n, co2_ratio
PODOSE_co2c13 = 50  # [mg]
```

*** Meinecke1993_100 ***
```
time, n, co2_ratio
PODOSE_co2c13 = 100  # [mg]
```


*** Leijssen1996 ***
```
time, n, recovery ± recovery_sd
Ri_co2c13 = 1.0  # [mg/min]
```

*** Fuller2000_C13 ***
```
time, n, recovery ± recovery_sd
Ri_co2c13 = 0.79  # [mg/min]
```

*** Fuller2000_C14 ***
```
time, n, recovery ± recovery_sd
Ri_co2c13 = 0.79  # [mg/min]
```


## [C] methacetin

### Observer Functions
Recovery and cummulative recovery calculate how much of the initial given dose is recovered over
time.
```
mom_rec_metc13 = Exhalation_co2c13/(init(PODOSE_metc13)/Mr_metc13) * 100 # [% dose/h] momentary recovery
cum_rec_metc13 = Abreath_co2c13/(init(PODOSE_metc13)/Mr_metc13) * 100  # [% dose] cummulative recovery
```

### Free Parameters
```
Ka_metc13       # [1/hr] absorption methacetin gut
CYP1A2MET_CL    # Vmax value hepatic clearance
CYP1A2MET_Km_met  # [mM] Km value for methacetin

# the tissue distribution coefficients could be important (but must be changed together)
```

### Studies

*** Kasicka-Jonderko2008_young ***
```
time, subjects, recovery ± recovery_sd, cum ± cum_sd 
PODOSE_metc13 = 75.0  # [mg]
```

*** Kasicka-Jonderko2008_middle-aged ***
```
time, subjects, recovery ± recovery_sd, cum ± cum_sd 
PODOSE_metc13 = 75.0  # [mg]
```

*** Kasicka-Jonderko2011_2d ***
```
time, subjects, recovery ± recovery_sd 
PODOSE_metc13 = 75.0  # [mg]
```

*** Kasicka-Jonderko2011_18d ***
```
time, subjects, recovery ± recovery_sd 
PODOSE_metc13 = 75.0  # [mg]
```

*** Kasicka-Jonderko2011_baseline1 ***
```
time, subjects, recovery ± recovery_sd 
PODOSE_metc13 = 75.0  # [mg]
```

*** Kasicka-Jonderko2011_baseline2 ***
```
time, subjects, recovery ± recovery_sd 
PODOSE_metc13 = 75.0  # [mg]
```

*** Kasicka-Jonderko2013a_HBMI_BMAD ***
```
time, subjects, recovery ± recovery_sd, cum ± cum_sd 
PODOSE_metc13 = 75.0  # [mg]
```

*** Kasicka-Jonderko2013a_HBMI_FX75 ***
```
time, subjects, recovery ± recovery_sd, cum ± cum_sd 
PODOSE_metc13 = 75.0  # [mg]
```

*** Kasicka-Jonderko2013a_LBMI_BMAD ***
```
time, subjects, recovery ± recovery_sd, cum ± cum_sd 
PODOSE_metc13 = 75.0  # [mg]
```

*** Kasicka-Jonderko2013a_LBMI_FX75 ***
```
time, subjects, recovery ± recovery_sd, cum ± cum_sd 
PODOSE_metc13 = 75.0  # [mg]
```

*** Ciccocioppo2003_adult ***
```
time, subjects, recovery ± recovery_sd, cum ± cum_sd 
PODOSE_metc13 = 75.0  # [mg] (1 [mg/kg])
BW = 75  # [kg]
```

*** Ciccocioppo2003_elderly ***
```
time, subjects, recovery ± recovery_sd, cum ± cum_sd 
PODOSE_metc13 = 75.0  # [mg] (1 [mg/kg])
```

*** Krumbiegel1985_AC01 ***
```
time, subjects, cum 
PODOSE_metc13 = 375.0  # [mg] (5 [mg/kg])
```

*** Krumbiegel1985_AC03 ***
```
time, subjects, cum 
PODOSE_metc13 = 375.0  # [mg] (5 [mg/kg])
```

*** Holtmeier2006 ***
```
time, subjects, cum ± cum_sd 
PODOSE_metc13 = 150.0  # [mg] (1 [mg/kg])
```

*** Lalazar2008 ***
```
time, subjects, recovery ± recovery_sd, cum ± cum_sd 
PODOSE_metc13 = 75.0  # [mg]
```

## [C] LiMAx

### Observer Functions
```
Mve_apap = Mve_apap     # [mg/dl] paracetamol concentration plasma
Mve_metc13 = Mve_metc13  # [mg/dl] paracetamol concentration plasma
DOB = DOB
```

### Free Parameters
```
CYP1A2MET_CL    # Vmax value hepatic clearance
CYP1A2MET_Km_met  # [mM] Km value for methacetin
```

### Studies

*** Taheri2013_2mg ***
```
time, subjects, apap ± apap_sd, metc13 ± metc13_sd, dob ± dob_sd  
IVDOSE_metc13 = 150.0  # [mg] (2 [mg/kg])
```

*** Taheri2013_4mg ***
```
time, subjects, apap ± apap_sd, metc13 ± metc13_sd, dob ± dob_sd  
IVDOSE_metc13 = 150.0  # [mg] (2 [mg/kg])
```
# LiMAx fitting
Information for fitting parameter values in the LiMAx model

## SBML Model
The latest model version is available in the `model` folder as SBML file 
```
./model/limax_pkpd_*.xml
```
A HTML model report is provided in the model directory as
```
./model/limax_pkpd_*.html
```

## Data sets for fitting
The latest datasets are in the `data` folder, named in line with the model.

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
DOB = DOB  # [‰] Delta over baseline
P_CO2F = P_CO2Fc13 - init_P_CO2Fc13  # co2c13 fraction corrected for baseline  
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
* `Irving1983, NaN`
* `Barstow1990, NaN`
* `Meineke1993, D12.5_T1`
* `Meineke1993, D25.0_T1`
* `Meineke1993, D25.0_T2`
* `Meineke1993, D50.0_T1`
* `Meineke1993, D100.0_T1`
* `Leijssen1996, NaN`
* `Fuller2000, C13`
* `Fuller2000, C14`


## [C] Methacetin Breath Test (methacetin)

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
```

### study, group
* `Kasicka-Jonderko2008, young`
* `Kasicka-Jonderko2008, middle-aged`
* `Kasicka-Jonderko2008, 2d`
* `Kasicka-Jonderko2008, 18d`
* `Kasicka-Jonderko2008, baseline1`
* `Kasicka-Jonderko2008, baseline2`
* `Kasicka-Jonderko2013a, F_LBMI_FX75`
* `Kasicka-Jonderko2013a, F_LBMI_BMAD`
* `Kasicka-Jonderko2013a, M_HBMI_FX75`
* `Kasicka-Jonderko2013a, M_HBMI_BMAD`
* `Ciccocioppo2003, elderly`
* `Ciccocioppo2003, adult`
* `Krumbiegel1985, AC-01`
* `Krumbiegel1985, AC-03`
* `Holtmeier2006, NaN`
* `Lalazar2008, NaN`


## [D] LiMAx (limax)

### Observer Functions
```
Mve_apap = Mve_apap     # [mg/dl] paracetamol concentration plasma
Mve_metc13 = Mve_metc13  # [mg/dl] methacetin concentration plasma
DOB = DOB
```

### Free Parameters
```
CYP1A2MET_CL    # Vmax value hepatic clearance
CYP1A2MET_Km_met  # [mM] Km value for methacetin
```

### study, group
* `Taheri2013, NaN`
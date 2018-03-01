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
devtools::install_github("dlill/conveniencefunctions")
devtools::install_github("dkaschek/dMod")
devtools::install_github("dkaschek/cOde")
```




## Datasets
All datasets contain column n with number of subjects, columns with standard deviation are named with "_sd" suffix.
Datasets are separated in paracetamol, bicarbonate and limax data sets.


## [A] paracetamol

## Observer Functions
On the left of the equation are the names in the data files, on the right are the calculated values
based on model variables
```
apap = Mve_apap     # [mg/dl] paracetamol concentration plasma
dob = DOB           # [‰] Delta over baseline  
```

## Free Parameters
Parameters to optimize in the model
```
# paracetamol (apap)
Ka_apap         # [1/hr] absorption apap gut
APAPD_HLM_CL    # Vmax value hepatic clearance
APAPD_Km_apap   # [mM] Km value for apap
```

### Parameters changed in studies
default values:

**Albert1974_Fig1_capsule.csv**
Data columns
```
time, n, apap ± apap_sd
PODOSE_apap = 650  # [mg]
BW = 68  # [kg]
```

**Albert1974_Fig1_tablet.csv**
```
time, n, apap ± apap_sd
PODOSE_apap = 650  # [mg]
BW = 68  # [kg] 
```

**Baraka1990_Fig1.csv**
Data columns
```
time, n, apap ± apap_sd
PODOSE_apap = 1500  # [mg]
BW = 68  # [kg]
```

**Chiew2010_Fig.csv**
Data columns
```
time, n, apap ± apap_sd
PODOSE_apap = 5600  # 80[mg/kg]*70[kg] = 5600 [mg]
BW = 73  # [kg]
```

**Critchley2005_Fig1.csv**
Data columns
```
time, n, apap ± apap_sd
PODOSE_apap = 1400  # 20[mg/kg]*70[kg] = 1400 [mg]
BW = 68  # [kg] (Caucasian)
```

**Rawlins1977_Fig1.csv**
Data columns
```
time, n, apap ± apap_sd
IVDOSE_apap = 1000  # [mg]
BW = 75  # [kg] (10 males) 
```

**Rawlins1977_Fig2_D500.csv**
Data columns
```
time, n, apap ± apap_sd
PDOSE_apap = 500  # [mg]
BW = 75  # [kg] (10 males)
```

***Rawlins1977_Fig2_D1000.csv***
Data columns
```
time, n, apap ± apap_sd
PDOSE_apap = 500  # [mg]
BW = 75  # [kg] (10 males)
```

***Rawlins1977_Fig2_D2000.csv***
Data columns
```
time, n, apap ± apap_sd
PDOSE_apap = 500  # [mg]
BW = 75  # [kg] (10 males)
```

## [B] bicarbonate

## Observer Functions
```
dob = DOB           # [‰] Delta over baseline

```

## Free Parameters
```
Ka_apap         # [1/hr] absorption apap gut
APAPD_HLM_CL    # Vmax value hepatic clearance
APAPD_Km_apap   # [mM] Km value for apap
```

***Meineke


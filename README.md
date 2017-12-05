# methacetin_fitting
Information for fitting parameter values.

## Model
Fitting the SBML model
```
./model/met13_pkpd_7.xml
```
A model report is provided in the model directory.

## Free Parameters
Parameters to optimize in the model
```
APAPGLU_HLM_CL  # Vmax value
APAPGLU_Km  # Km value
APAPSUL_HLM_CL  # Vmax value
APAPGLU_Km  # Km value
APAPCYS_HLM_CL  # Vmax value
APAPCYS_Km  # Km value
```
Conditions
```
APAPSUL_HLM_CL < APAPGLU_HLM_CL
APAPCYS_HLM_CL < APAPGLU_HLM_CL
APAPCYS_HLM_CL < APAPSUL_HLM_CL
```

Observer Functions
```
apap = Cve_apap  # = Ave_apap/Vve
apap_glu = Cve_apap_glu  # = Ave_apap_glu/Vve
apap_sul = Cve_apap_sul  # = Ave_apap_sul/Vve
apap_cys = Cve_apap_cys  # = Ave_apap_cys/Vve
```

## Datasets
All datasets contain column n with number of subjects.

### Chiew2010_Fig.csv
Data columns
```
time, n, apap +- apap_sd, apap_glu +- apap_glu_sd, apap_sul +- apap_sul_sd
```
Parameters 
```
PODOSE_apap = 5600  # 80[mg/kg]*70[kg] = 5600 [mg]
```

### Chan1997_Fig1.csv
Data columns
```
time, n, apap +- apap_sd, apap_glu +- apap_glu_sd, apap_sul +- apap_sul_sd, apap_cys +- apap_cys_sd
```
Parameters 
```
PODOSE_apap = 1400  # 20[mg/kg]*70[kg] = 1400 [mg]
```

### Critchley2005_Fig1.csv
Data columns
```
time, n, apap +- apap_sd, apap_glu +- apap_glu_sd, apap_sul +- apap_sul_sd, apap_cys +- apap_cys_sd
```
Parameters 
```
PODOSE_apap = 1400  # 20[mg/kg]*70[kg] = 1400 [mg]
```

### Rawlins1977_Fig1.csv
Data columns
```
time, n, apap +- apap_sd
```
Parameters 
```
IVDOSE_apap = 1000  # [mg]
```

### Rawlins1977_Fig2_D500.csv
Data columns
```
time, n, apap +- apap_sd
```
Parameters 
```
PDOSE_apap = 500  # [mg]
```

### Rawlins1977_Fig2_D1000.csv
Data columns
```
time, n, apap +- apap_sd
```
Parameters 
```
PDOSE_apap = 500  # [mg]
```

### Rawlins1977_Fig2_D2000.csv
Data columns
```
time, n, apap +- apap_sd
```
Parameters 
```
PDOSE_apap = 500  # [mg]
```
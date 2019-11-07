# LiMAx fitting
Information, data, models and fitting results for the LiMAx model.

## Model
All models are SBML models stored in the `model` folder. 
```
./model/<version>/limax_<version>.xml
```
A HTML model report is provided next to the models as
```
./model/<version>/limax_<version>.html
```
For every model reference simulations have been performed in `R` and `python` 
available in the
```
./model/<version>/results
```
folder.

## Datasets
The corresponding datasets are in the `data` folder, named in line with the model as tab separated files (`tsv`)
```
./data/<version>/limax_52_data.tsv
```

## Fitting
Fitting is performed with `dMod`

### Setup
A dockerized version of dmod is available from 
https://github.com/matthiaskoenig/dmod-docker
Which allows simple setup of the environment to run the parameter fitting.

Alternatively the required dependencies can be installed via
```
# bash
sudo -E add-apt-repository -y ppa:marutter/rrutter
sudo -E apt-get update
sudo -E apt-get -y install openjdk-11-jdk
sudo -E apt-get -y install r-base-core r-base r-base-dev r-recommended libssl-dev libcurl4-openssl-dev libxml2-dev liblzma-dev lzma lzma-dev

# R
sudo RUN R CMD javareconf
sudo R
sudo R -e 'install.packages("devtools")'
sudo R -e 'devtools::install_github("dkaschek/cOde")'
sudo R -e 'devtools::install_github("dkaschek/dMod")'
sudo R -e 'devtools::install_github("dlill/conveniencefunctions")'
```


# Optimization problem
**Parameters to set**
For the simulation a subset of parameters must be set. These are provided as
separate columns in the `data` spreadsheet.

```python
BW             # [kg] body weight
PODOSE_apap    # [mg] oral dose apap
IVDOSE_apap    # [mg] intravenous dose apap
PODOSE_co2c13  # [mg] oral bicarbonate dose
IVDOSE_co2c13  # [mg] iv bicarbonate dose
Ri_co2c13      # [?] injection rate bicarbonate
ti_co2c13      # [?] injection duration bicarbonate
PODOSE_metc13  # [mg] oral dose methacetin
IVDOSE_metc13  # [mg] iv dose methacetin
ti_metc13      # [?] injection duration methacetin
```

**Observer Function**
The following observer functions are used in the model
```python
Mve_apap = Mve_apap      # [mg/dl] paracetamol concentration plasma
Mve_metc13 = Mve_metc13  # [mg/dl] methacetin concentration plasma
DOB = DOB                # [‰] Delta over baseline
P_CO2F = P_CO2Fc13 - init_P_CO2Fc13  # co2c13 fraction corrected for baseline
mom_rec_co2c13 = Exhalation_co2c13/60*Mr_co2c13/Ri_co2c13*100.0  # [%] recovery after continuous IV injection
mom_rec_metc13 = Exhalation_co2c13/(init(PODOSE_metc13)/Mr_metc13) * 100  # [% dose/h] momentary recovery
cum_rec_metc13 = Abreath_co2c13/(init(PODOSE_metc13)/Mr_metc13) * 100  # [% dose] cumulative recovery
```

### Free Parameters
```python
# apap
Kp_apap           # [-] partition coefficient tissue/plasma apap
Vp_apap           # [1/hr] partition velocity apap
Ka_apap           # [1/hr] absorption rate apap from gut (appearance after oral dose)
APAPD_CL          # [?] Vmax hepatic clearance (
APAPD_Km_apap     # [mM] Km value for apap

# bicarbonate and co2
Kp_co2c13         # [-] partition coefficient tissue/plasma bicarbonate
Vp_co2c13         # [1/hr] partition velocity bicarbonate
Ka_co2c13         # [1/hr] absorption rate bicarbonate gut (appearance after oral dose)
EXHCO2_CL         # [mmole_per_min] Vmax CO2 rate of disposal in air
EXHCO2_Km_co2     # [mM] Km CO2 rate of disposal in air

# methacetin
Kp_metc13         # [-] partition coefficient tissue/plasma 13C-methacetin
Vp_metc13         # [1/hr] partition velocity 13C-methacetin
Ka_metc13         # [1/hr] absorption rate methacetin gut (appearance after oral dose)
CYP1A2MET_CL      # [] Vmax hepatic clearance methacetin
CYP1A2MET_Km_met  # [mM] Km value clearance for methacetin
```

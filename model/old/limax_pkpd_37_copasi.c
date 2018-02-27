#ifdef SIZE_DEFINITIONS
#define N_METABS 35
#define N_ODE_METABS 0
#define N_INDEP_METABS 35
#define N_COMPARTMENTS 15
#define N_GLOBAL_PARAMS 238
#define N_KIN_PARAMS 0
#define N_REACTIONS 66

#define N_ARRAY_SIZE_P  97	// number of parameters
#define N_ARRAY_SIZE_X  44	// number of initials
#define N_ARRAY_SIZE_Y  147	// number of assigned elements
#define N_ARRAY_SIZE_XC 35	// number of x concentration
#define N_ARRAY_SIZE_PC 0	// number of p concentration
#define N_ARRAY_SIZE_YC 0	// number of y concentration
#define N_ARRAY_SIZE_DX 44	// number of ODEs 
#define N_ARRAY_SIZE_CT 0	// number of conserved totals

#endif // SIZE_DEFINITIONS

#ifdef TIME
#define T  <set here a user name for the time variable> 
#endif // TIME

#ifdef NAME_ARRAYS
const char* p_names[] = {"Vbreath", "Vurine", "BW", "HEIGHT", "HR", "HRrest", "COBW", "COHRI", "FVbo", "FVhe", "FVgu", "FVki", "FVli", "FVlu", "FVsp", "FVve", "FVar", "FVpl", "FQbo", "FQhe", "FQgu", "FQki", "FQh", "FQlu", "FQsp", "F_PAR", "MPPGL", "KLU_EXCO2", "KBO_FIXCO2", "KBO_RELCO2", "KBO_MAXCO2", "P_CO2BSA", "R_PDB", "Mr_co2c13", "IVDOSE_co2c13", "PODOSE_co2c13", "Ka_co2c13", "F_co2c13", "ti_co2c13", "Ri_co2c13", "fup_co2c13", "BP_co2c13", "fumic_co2c13", "CLrenal_co2c13", "Kphe_co2c13", "Kpgu_co2c13", "Kpre_co2c13", "Kpki_co2c13", "Kpsp_co2c13", "Kpli_co2c13", "Kpbo_co2c13", "Kplu_co2c13", "Mr_metc13", "IVDOSE_metc13", "PODOSE_metc13", "Ka_metc13", "F_metc13", "ti_metc13", "Ri_metc13", "fup_metc13", "BP_metc13", "fumic_metc13", "CLrenal_metc13", "Kphe_metc13", "Kpgu_metc13", "Kpre_metc13", "Kpki_metc13", "Kpsp_metc13", "Kpli_metc13", "Kpbo_metc13", "Kplu_metc13", "Mr_apap", "IVDOSE_apap", "PODOSE_apap", "Ka_apap", "F_apap", "ti_apap", "Ri_apap", "fup_apap", "BP_apap", "fumic_apap", "CLrenal_apap", "Kphe_apap", "Kpgu_apap", "Kpre_apap", "Kpki_apap", "Kpsp_apap", "Kpli_apap", "Kpbo_apap", "Kplu_apap", "CYP1A2MET_CL", "CYP1A2MET_Km_met", "CO2FIX_HLM_CL", "CO2FIX_Km_co2", "APAPD_HLM_CL", "APAPD_Km_apap", "amount to particle factor",  "" };
const char* x_names[] = {"Ave_co2c13", "Ave_metc13", "Ave_apap", "Aar_co2c13", "Aar_metc13", "Aar_apap", "Ali_co2c13", "Ali_apap", "Ali_metc13", "Aki_co2c13", "Alu_co2c13", "Aki_apap", "Aki_metc13", "Agu_apap", "Agu_co2c13", "Agu_metc13", "Ahe_co2c13", "Ahe_apap", "Ahe_metc13", "Are_co2c13", "Alu_apap", "Alu_metc13", "Abo_co2c13", "Are_apap", "Are_metc13", "Abo_apap", "Abo_metc13", "Asp_co2c13", "Abo_co2c13_fix", "Asp_apap", "Asp_metc13", "Aurine_co2c13", "Aurine_apap", "Abreath_co2c13", "Aurine_metc13", "D_co2c13", "DIV_co2c13", "cum_dose_co2c13", "D_metc13", "DIV_metc13", "cum_dose_metc13", "D_apap", "DIV_apap", "cum_dose_apap",  "" };
const char* y_names[] = {"Vre", "Vbo", "Vhe", "Vgu", "Vki", "Vli", "Vlu", "Vsp", "Vve", "Var", "Vpl", "Vplas_ven", "Vplas_art", "BSA", "CO", "QC", "FVre", "FQre", "Ki_co2c13", "Ki_metc13", "Ki_apap", "P_CO2", "P_CO2c13", "P_CO2c12", "P_CO2R", "P_CO2Fc13", "DOB", "Qbo", "Qhe", "Qgu", "Qki", "Qh", "Qha", "Qlu", "Qsp", "Qre", "Xbody_co2c13", "Cpl_ve_co2c13", "Cli_free_co2c13", "Cki_free_co2c13", "Che_co2c13", "Xhe_co2c13", "Mhe_co2c13", "Cgu_co2c13", "Xgu_co2c13", "Mgu_co2c13", "Cre_co2c13", "Xre_co2c13", "Mre_co2c13", "Cki_co2c13", "Xki_co2c13", "Mki_co2c13", "Csp_co2c13", "Xsp_co2c13", "Msp_co2c13", "Cli_co2c13", "Xli_co2c13", "Mli_co2c13", "Cve_co2c13", "Xve_co2c13", "Mve_co2c13", "Car_co2c13", "Xar_co2c13", "Mar_co2c13", "Cbo_co2c13", "Xbo_co2c13", "Mbo_co2c13", "Clu_co2c13", "Xlu_co2c13", "Mlu_co2c13", "Xurine_co2c13", "Xbody_metc13", "Cpl_ve_metc13", "Cli_free_metc13", "Cki_free_metc13", "Che_metc13", "Xhe_metc13", "Mhe_metc13", "Cgu_metc13", "Xgu_metc13", "Mgu_metc13", "Cre_metc13", "Xre_metc13", "Mre_metc13", "Cki_metc13", "Xki_metc13", "Mki_metc13", "Csp_metc13", "Xsp_metc13", "Msp_metc13", "Cli_metc13", "Xli_metc13", "Mli_metc13", "Cve_metc13", "Xve_metc13", "Mve_metc13", "Car_metc13", "Xar_metc13", "Mar_metc13", "Cbo_metc13", "Xbo_metc13", "Mbo_metc13", "Clu_metc13", "Xlu_metc13", "Mlu_metc13", "Xurine_metc13", "Xbody_apap", "Cpl_ve_apap", "Cli_free_apap", "Cki_free_apap", "Che_apap", "Xhe_apap", "Mhe_apap", "Cgu_apap", "Xgu_apap", "Mgu_apap", "Cre_apap", "Xre_apap", "Mre_apap", "Cki_apap", "Xki_apap", "Mki_apap", "Csp_apap", "Xsp_apap", "Msp_apap", "Cli_apap", "Xli_apap", "Mli_apap", "Cve_apap", "Xve_apap", "Mve_apap", "Car_apap", "Xar_apap", "Mar_apap", "Cbo_apap", "Xbo_apap", "Mbo_apap", "Clu_apap", "Xlu_apap", "Mlu_apap", "Xurine_apap", "Xbreath_co2c13", "Cbo_co2c13_fix", "Xbo_co2c13_fix", "CYP1A2MET_CLliv", "CO2FIX_CLliv", "APAPD_CLliv",  "" };
const char* xc_names[] = {"Ave_co2c13", "Ave_metc13", "Ave_apap", "Aar_co2c13", "Aar_metc13", "Aar_apap", "Ali_co2c13", "Ali_apap", "Ali_metc13", "Aki_co2c13", "Alu_co2c13", "Aki_apap", "Aki_metc13", "Agu_apap", "Agu_co2c13", "Agu_metc13", "Ahe_co2c13", "Ahe_apap", "Ahe_metc13", "Are_co2c13", "Alu_apap", "Alu_metc13", "Abo_co2c13", "Are_apap", "Are_metc13", "Abo_apap", "Abo_metc13", "Asp_co2c13", "Abo_co2c13_fix", "Asp_apap", "Asp_metc13", "Aurine_co2c13", "Aurine_apap", "Abreath_co2c13", "Aurine_metc13",  "" };
const char* pc_names[] = { "" };
const char* yc_names[] = { "" };
const char* dx_names[] = {"ODE Ave_co2c13", "ODE Ave_metc13", "ODE Ave_apap", "ODE Aar_co2c13", "ODE Aar_metc13", "ODE Aar_apap", "ODE Ali_co2c13", "ODE Ali_apap", "ODE Ali_metc13", "ODE Aki_co2c13", "ODE Alu_co2c13", "ODE Aki_apap", "ODE Aki_metc13", "ODE Agu_apap", "ODE Agu_co2c13", "ODE Agu_metc13", "ODE Ahe_co2c13", "ODE Ahe_apap", "ODE Ahe_metc13", "ODE Are_co2c13", "ODE Alu_apap", "ODE Alu_metc13", "ODE Abo_co2c13", "ODE Are_apap", "ODE Are_metc13", "ODE Abo_apap", "ODE Abo_metc13", "ODE Asp_co2c13", "ODE Abo_co2c13_fix", "ODE Asp_apap", "ODE Asp_metc13", "ODE Aurine_co2c13", "ODE Aurine_apap", "ODE Abreath_co2c13", "ODE Aurine_metc13", "ODE D_co2c13", "ODE DIV_co2c13", "ODE cum_dose_co2c13", "ODE D_metc13", "ODE DIV_metc13", "ODE cum_dose_metc13", "ODE D_apap", "ODE DIV_apap", "ODE cum_dose_apap",  "" };
const char* ct_names[] = { "" };
#endif // NAME_ARRAYS

#ifdef INITIAL
x[0] = 0;	//metabolite 'Ave_co2c13': reactions
x[1] = 0;	//metabolite 'Ave_metc13': reactions
x[2] = 0;	//metabolite 'Ave_apap': reactions
x[3] = 0;	//metabolite 'Aar_co2c13': reactions
x[4] = 0;	//metabolite 'Aar_metc13': reactions
x[5] = 0;	//metabolite 'Aar_apap': reactions
x[6] = 0;	//metabolite 'Ali_co2c13': reactions
x[7] = 0;	//metabolite 'Ali_apap': reactions
x[8] = 0;	//metabolite 'Ali_metc13': reactions
x[9] = 0;	//metabolite 'Aki_co2c13': reactions
x[10] = 0;	//metabolite 'Alu_co2c13': reactions
x[11] = 0;	//metabolite 'Aki_apap': reactions
x[12] = 0;	//metabolite 'Aki_metc13': reactions
x[13] = 0;	//metabolite 'Agu_apap': reactions
x[14] = 0;	//metabolite 'Agu_co2c13': reactions
x[15] = 0;	//metabolite 'Agu_metc13': reactions
x[16] = 0;	//metabolite 'Ahe_co2c13': reactions
x[17] = 0;	//metabolite 'Ahe_apap': reactions
x[18] = 0;	//metabolite 'Ahe_metc13': reactions
x[19] = 0;	//metabolite 'Are_co2c13': reactions
x[20] = 0;	//metabolite 'Alu_apap': reactions
x[21] = 0;	//metabolite 'Alu_metc13': reactions
x[22] = 0;	//metabolite 'Abo_co2c13': reactions
x[23] = 0;	//metabolite 'Are_apap': reactions
x[24] = 0;	//metabolite 'Are_metc13': reactions
x[25] = 0;	//metabolite 'Abo_apap': reactions
x[26] = 0;	//metabolite 'Abo_metc13': reactions
x[27] = 0;	//metabolite 'Asp_co2c13': reactions
x[28] = 0;	//metabolite 'Abo_co2c13_fix': reactions
x[29] = 0;	//metabolite 'Asp_apap': reactions
x[30] = 0;	//metabolite 'Asp_metc13': reactions
x[31] = 0;	//metabolite 'Aurine_co2c13': reactions
x[32] = 0;	//metabolite 'Aurine_apap': reactions
x[33] = 0;	//metabolite 'Abreath_co2c13': reactions
x[34] = 0;	//metabolite 'Aurine_metc13': reactions
x[35] = 0;	//global quantity 'D_co2c13':ode
x[36] = 0;	//global quantity 'DIV_co2c13':ode
x[37] = 0;	//global quantity 'cum_dose_co2c13':ode
x[38] = 0;	//global quantity 'D_metc13':ode
x[39] = 0;	//global quantity 'DIV_metc13':ode
x[40] = 0;	//global quantity 'cum_dose_metc13':ode
x[41] = 0;	//global quantity 'D_apap':ode
x[42] = 0;	//global quantity 'DIV_apap':ode
x[43] = 0;	//global quantity 'cum_dose_apap':ode
#endif /* INITIAL */

#ifdef FIXED
p[0] = 1;	//compartment 'Vbreath':fixed
p[1] = 1;	//compartment 'Vurine':fixed
p[2] = 75;	//global quantity 'BW':fixed
p[3] = 170;	//global quantity 'HEIGHT':fixed
p[4] = 70;	//global quantity 'HR':fixed
p[5] = 70;	//global quantity 'HRrest':fixed
p[6] = 1.548;	//global quantity 'COBW':fixed
p[7] = 150;	//global quantity 'COHRI':fixed
p[8] = 0.0856;	//global quantity 'FVbo':fixed
p[9] = 0.0047;	//global quantity 'FVhe':fixed
p[10] = 0.0171;	//global quantity 'FVgu':fixed
p[11] = 0.0044;	//global quantity 'FVki':fixed
p[12] = 0.021;	//global quantity 'FVli':fixed
p[13] = 0.0076;	//global quantity 'FVlu':fixed
p[14] = 0.0026;	//global quantity 'FVsp':fixed
p[15] = 0.0514;	//global quantity 'FVve':fixed
p[16] = 0.0257;	//global quantity 'FVar':fixed
p[17] = 0.0424;	//global quantity 'FVpl':fixed
p[18] = 0.05;	//global quantity 'FQbo':fixed
p[19] = 0.04;	//global quantity 'FQhe':fixed
p[20] = 0.146;	//global quantity 'FQgu':fixed
p[21] = 0.19;	//global quantity 'FQki':fixed
p[22] = 0.215;	//global quantity 'FQh':fixed
p[23] = 1;	//global quantity 'FQlu':fixed
p[24] = 0.017;	//global quantity 'FQsp':fixed
p[25] = 0.85;	//global quantity 'F_PAR':fixed
p[26] = 45;	//global quantity 'MPPGL':fixed
p[27] = 1.2;	//global quantity 'KLU_EXCO2':fixed
p[28] = 0.1;	//global quantity 'KBO_FIXCO2':fixed
p[29] = 0.0001;	//global quantity 'KBO_RELCO2':fixed
p[30] = 0.2;	//global quantity 'KBO_MAXCO2':fixed
p[31] = 300;	//global quantity 'P_CO2BSA':fixed
p[32] = 0.01123;	//global quantity 'R_PDB':fixed
p[33] = 62.02;	//global quantity 'Mr_co2c13':fixed
p[34] = 0;	//global quantity 'IVDOSE_co2c13':fixed
p[35] = 0;	//global quantity 'PODOSE_co2c13':fixed
p[36] = 8;	//global quantity 'Ka_co2c13':fixed
p[37] = 1;	//global quantity 'F_co2c13':fixed
p[38] = 10;	//global quantity 'ti_co2c13':fixed
p[39] = 0;	//global quantity 'Ri_co2c13':fixed
p[40] = 1;	//global quantity 'fup_co2c13':fixed
p[41] = 1;	//global quantity 'BP_co2c13':fixed
p[42] = 1;	//global quantity 'fumic_co2c13':fixed
p[43] = 0;	//global quantity 'CLrenal_co2c13':fixed
p[44] = 1;	//global quantity 'Kphe_co2c13':fixed
p[45] = 1;	//global quantity 'Kpgu_co2c13':fixed
p[46] = 1;	//global quantity 'Kpre_co2c13':fixed
p[47] = 1;	//global quantity 'Kpki_co2c13':fixed
p[48] = 1;	//global quantity 'Kpsp_co2c13':fixed
p[49] = 1;	//global quantity 'Kpli_co2c13':fixed
p[50] = 1;	//global quantity 'Kpbo_co2c13':fixed
p[51] = 1;	//global quantity 'Kplu_co2c13':fixed
p[52] = 165.19;	//global quantity 'Mr_metc13':fixed
p[53] = 0;	//global quantity 'IVDOSE_metc13':fixed
p[54] = 0;	//global quantity 'PODOSE_metc13':fixed
p[55] = 4;	//global quantity 'Ka_metc13':fixed
p[56] = 1;	//global quantity 'F_metc13':fixed
p[57] = 10;	//global quantity 'ti_metc13':fixed
p[58] = 0;	//global quantity 'Ri_metc13':fixed
p[59] = 1;	//global quantity 'fup_metc13':fixed
p[60] = 1;	//global quantity 'BP_metc13':fixed
p[61] = 1;	//global quantity 'fumic_metc13':fixed
p[62] = 10;	//global quantity 'CLrenal_metc13':fixed
p[63] = 1;	//global quantity 'Kphe_metc13':fixed
p[64] = 1;	//global quantity 'Kpgu_metc13':fixed
p[65] = 0.2;	//global quantity 'Kpre_metc13':fixed
p[66] = 1;	//global quantity 'Kpki_metc13':fixed
p[67] = 1;	//global quantity 'Kpsp_metc13':fixed
p[68] = 1;	//global quantity 'Kpli_metc13':fixed
p[69] = 1;	//global quantity 'Kpbo_metc13':fixed
p[70] = 1;	//global quantity 'Kplu_metc13':fixed
p[71] = 151.16;	//global quantity 'Mr_apap':fixed
p[72] = 0;	//global quantity 'IVDOSE_apap':fixed
p[73] = 0;	//global quantity 'PODOSE_apap':fixed
p[74] = 2.5;	//global quantity 'Ka_apap':fixed
p[75] = 0.87;	//global quantity 'F_apap':fixed
p[76] = 10;	//global quantity 'ti_apap':fixed
p[77] = 0;	//global quantity 'Ri_apap':fixed
p[78] = 1;	//global quantity 'fup_apap':fixed
p[79] = 1;	//global quantity 'BP_apap':fixed
p[80] = 1;	//global quantity 'fumic_apap':fixed
p[81] = 0.714;	//global quantity 'CLrenal_apap':fixed
p[82] = 1;	//global quantity 'Kphe_apap':fixed
p[83] = 1;	//global quantity 'Kpgu_apap':fixed
p[84] = 0.8;	//global quantity 'Kpre_apap':fixed
p[85] = 1;	//global quantity 'Kpki_apap':fixed
p[86] = 1;	//global quantity 'Kpsp_apap':fixed
p[87] = 1;	//global quantity 'Kpli_apap':fixed
p[88] = 1;	//global quantity 'Kpbo_apap':fixed
p[89] = 1;	//global quantity 'Kplu_apap':fixed
p[90] = 1.5;	//global quantity 'CYP1A2MET_CL':fixed
p[91] = 0.02;	//global quantity 'CYP1A2MET_Km_met':fixed
p[92] = 1.5;	//global quantity 'CO2FIX_HLM_CL':fixed
p[93] = 0.2;	//global quantity 'CO2FIX_Km_co2':fixed
p[94] = 2.5;	//global quantity 'APAPD_HLM_CL':fixed
p[95] = 0.5;	//global quantity 'APAPD_Km_apap':fixed
p[96] = 6.02214e+20;	//global quantity 'amount to particle factor':fixed
#endif /* FIXED */

#ifdef ASSIGNMENT
y[13] = 0.02426500000000000*pow((p[2]/1.00000000000000000),0.53779999999999994)*pow((p[3]/1.00000000000000000),0.39639999999999997);	//model entity 'BSA':assignment
y[14] = p[2]*p[6]+(p[4]-p[5])*p[7]/60.00000000000000000;	//model entity 'CO':assignment
y[15] = y[14]/1000.00000000000000000*3600.00000000000000000;	//model entity 'QC':assignment
y[16] = 1.00000000000000000-(p[8]+p[9]+p[10]+p[11]+p[12]+p[13]+p[14]+p[15]+p[16]+p[17]);	//model entity 'FVre':assignment
y[17] = 1.00000000000000000-(p[18]+p[19]+p[20]+p[21]+p[22]+p[24]);	//model entity 'FQre':assignment
y[18] = 1.38599999999999990/p[38]*3600.00000000000000000;	//model entity 'Ki_co2c13':assignment
y[19] = 1.38599999999999990/p[57]*3600.00000000000000000;	//model entity 'Ki_metc13':assignment
y[20] = 1.38599999999999990/p[76]*3600.00000000000000000;	//model entity 'Ki_apap':assignment
y[21] = y[13]*p[31]/60.00000000000000000;	//model entity 'P_CO2':assignment
y[22] = p[32]/(1.00000000000000000+p[32])*y[21]+-FunctionForExhalation_co2c13(y[67], p[27], y[6])+FunctionForVe_lu_co2c13(y[58], y[33])-FunctionForLu_ar_co2c13(p[41], y[67], p[51], y[33])FunctionForExhalation_co2c13(y[67], p[27], y[6])/60.00000000000000000;	//model entity 'P_CO2c13':assignment
y[23] = 1.00000000000000000/(1.00000000000000000+p[32])*y[21];	//model entity 'P_CO2c12':assignment
y[24] = y[22]/y[23];	//model entity 'P_CO2R':assignment
y[25] = y[22]/(y[23]+y[22]);	//model entity 'P_CO2Fc13':assignment
y[26] = (y[22]/y[23]-p[32])/p[32]*1000.00000000000000000;	//model entity 'DOB':assignment
y[27] = y[15]*p[18];	//model entity 'Qbo':assignment
y[28] = y[15]*p[19];	//model entity 'Qhe':assignment
y[29] = y[15]*p[20];	//model entity 'Qgu':assignment
y[30] = y[15]*p[21];	//model entity 'Qki':assignment
y[31] = y[15]*p[22];	//model entity 'Qh':assignment
y[32] = y[31]-y[29]-y[34];	//model entity 'Qha':assignment
y[33] = y[15]*p[23];	//model entity 'Qlu':assignment
y[34] = y[15]*p[24];	//model entity 'Qsp':assignment
y[35] = y[15]*y[17];	//model entity 'Qre':assignment
y[36] = y[62]+y[65]+y[41]+y[44]+y[50]+y[56]+y[68]+y[53]+y[47]+y[59];	//model entity 'Xbody_co2c13':assignment
y[37] = y[58]/p[41];	//model entity 'Cpl_ve_co2c13':assignment
y[38] = y[55]*p[40];	//model entity 'Cli_free_co2c13':assignment
y[39] = y[49]*p[40];	//model entity 'Cki_free_co2c13':assignment
y[40] = x[16] * p[96] /p[96]/y[2];	//model entity 'Che_co2c13':assignment
y[41] = x[16] * p[96] /p[96]*p[33];	//model entity 'Xhe_co2c13':assignment
y[42] = x[16] * p[96] /p[96]/y[2]*p[33];	//model entity 'Mhe_co2c13':assignment
y[43] = x[14] * p[96] /p[96]/y[3];	//model entity 'Cgu_co2c13':assignment
y[44] = x[14] * p[96] /p[96]*p[33];	//model entity 'Xgu_co2c13':assignment
y[45] = x[14] * p[96] /p[96]/y[3]*p[33];	//model entity 'Mgu_co2c13':assignment
y[46] = x[19] * p[96] /p[96]/y[0];	//model entity 'Cre_co2c13':assignment
y[47] = x[19] * p[96] /p[96]*p[33];	//model entity 'Xre_co2c13':assignment
y[48] = x[19] * p[96] /p[96]/y[0]*p[33];	//model entity 'Mre_co2c13':assignment
y[49] = x[9] * p[96] /p[96]/y[4];	//model entity 'Cki_co2c13':assignment
y[50] = x[9] * p[96] /p[96]*p[33];	//model entity 'Xki_co2c13':assignment
y[51] = x[9] * p[96] /p[96]/y[4]*p[33];	//model entity 'Mki_co2c13':assignment
y[52] = x[27] * p[96] /p[96]/y[7];	//model entity 'Csp_co2c13':assignment
y[53] = x[27] * p[96] /p[96]*p[33];	//model entity 'Xsp_co2c13':assignment
y[54] = x[27] * p[96] /p[96]/y[7]*p[33];	//model entity 'Msp_co2c13':assignment
y[55] = x[6] * p[96] /p[96]/y[5];	//model entity 'Cli_co2c13':assignment
y[56] = x[6] * p[96] /p[96]*p[33];	//model entity 'Xli_co2c13':assignment
y[57] = x[6] * p[96] /p[96]/y[5]*p[33];	//model entity 'Mli_co2c13':assignment
y[58] = x[0] * p[96] /p[96]/y[8];	//model entity 'Cve_co2c13':assignment
y[59] = x[0] * p[96] /p[96]*p[33];	//model entity 'Xve_co2c13':assignment
y[60] = x[0] * p[96] /p[96]/y[8]*p[33];	//model entity 'Mve_co2c13':assignment
y[61] = x[3] * p[96] /p[96]/y[9];	//model entity 'Car_co2c13':assignment
y[62] = x[3] * p[96] /p[96]*p[33];	//model entity 'Xar_co2c13':assignment
y[63] = x[3] * p[96] /p[96]/y[9]*p[33];	//model entity 'Mar_co2c13':assignment
y[64] = x[22] * p[96] /p[96]/y[1];	//model entity 'Cbo_co2c13':assignment
y[65] = x[22] * p[96] /p[96]*p[33];	//model entity 'Xbo_co2c13':assignment
y[66] = x[22] * p[96] /p[96]/y[1]*p[33];	//model entity 'Mbo_co2c13':assignment
y[67] = x[10] * p[96] /p[96]/y[6];	//model entity 'Clu_co2c13':assignment
y[68] = x[10] * p[96] /p[96]*p[33];	//model entity 'Xlu_co2c13':assignment
y[69] = x[10] * p[96] /p[96]/y[6]*p[33];	//model entity 'Mlu_co2c13':assignment
y[70] = x[31] * p[96] /p[96]*p[33];	//model entity 'Xurine_co2c13':assignment
y[71] = y[97]+y[100]+y[76]+y[79]+y[85]+y[91]+y[103]+y[88]+y[82]+y[94];	//model entity 'Xbody_metc13':assignment
y[72] = y[93]/p[60];	//model entity 'Cpl_ve_metc13':assignment
y[73] = y[90]*p[59];	//model entity 'Cli_free_metc13':assignment
y[74] = y[84]*p[59];	//model entity 'Cki_free_metc13':assignment
y[75] = x[18] * p[96] /p[96]/y[2];	//model entity 'Che_metc13':assignment
y[76] = x[18] * p[96] /p[96]*p[52];	//model entity 'Xhe_metc13':assignment
y[77] = x[18] * p[96] /p[96]/y[2]*p[52];	//model entity 'Mhe_metc13':assignment
y[78] = x[15] * p[96] /p[96]/y[3];	//model entity 'Cgu_metc13':assignment
y[79] = x[15] * p[96] /p[96]*p[52];	//model entity 'Xgu_metc13':assignment
y[80] = x[15] * p[96] /p[96]/y[3]*p[52];	//model entity 'Mgu_metc13':assignment
y[81] = x[24] * p[96] /p[96]/y[0];	//model entity 'Cre_metc13':assignment
y[82] = x[24] * p[96] /p[96]*p[52];	//model entity 'Xre_metc13':assignment
y[83] = x[24] * p[96] /p[96]/y[0]*p[52];	//model entity 'Mre_metc13':assignment
y[84] = x[12] * p[96] /p[96]/y[4];	//model entity 'Cki_metc13':assignment
y[85] = x[12] * p[96] /p[96]*p[52];	//model entity 'Xki_metc13':assignment
y[86] = x[12] * p[96] /p[96]/y[4]*p[52];	//model entity 'Mki_metc13':assignment
y[87] = x[30] * p[96] /p[96]/y[7];	//model entity 'Csp_metc13':assignment
y[88] = x[30] * p[96] /p[96]*p[52];	//model entity 'Xsp_metc13':assignment
y[89] = x[30] * p[96] /p[96]/y[7]*p[52];	//model entity 'Msp_metc13':assignment
y[90] = x[8] * p[96] /p[96]/y[5];	//model entity 'Cli_metc13':assignment
y[91] = x[8] * p[96] /p[96]*p[52];	//model entity 'Xli_metc13':assignment
y[92] = x[8] * p[96] /p[96]/y[5]*p[52];	//model entity 'Mli_metc13':assignment
y[93] = x[1] * p[96] /p[96]/y[8];	//model entity 'Cve_metc13':assignment
y[94] = x[1] * p[96] /p[96]*p[52];	//model entity 'Xve_metc13':assignment
y[95] = x[1] * p[96] /p[96]/y[8]*p[52];	//model entity 'Mve_metc13':assignment
y[96] = x[4] * p[96] /p[96]/y[9];	//model entity 'Car_metc13':assignment
y[97] = x[4] * p[96] /p[96]*p[52];	//model entity 'Xar_metc13':assignment
y[98] = x[4] * p[96] /p[96]/y[9]*p[52];	//model entity 'Mar_metc13':assignment
y[99] = x[26] * p[96] /p[96]/y[1];	//model entity 'Cbo_metc13':assignment
y[100] = x[26] * p[96] /p[96]*p[52];	//model entity 'Xbo_metc13':assignment
y[101] = x[26] * p[96] /p[96]/y[1]*p[52];	//model entity 'Mbo_metc13':assignment
y[102] = x[21] * p[96] /p[96]/y[6];	//model entity 'Clu_metc13':assignment
y[103] = x[21] * p[96] /p[96]*p[52];	//model entity 'Xlu_metc13':assignment
y[104] = x[21] * p[96] /p[96]/y[6]*p[52];	//model entity 'Mlu_metc13':assignment
y[105] = x[34] * p[96] /p[96]*p[52];	//model entity 'Xurine_metc13':assignment
y[106] = y[132]+y[135]+y[111]+y[114]+y[120]+y[126]+y[138]+y[123]+y[117]+y[129];	//model entity 'Xbody_apap':assignment
y[107] = y[128]/p[79];	//model entity 'Cpl_ve_apap':assignment
y[108] = y[125]*p[78];	//model entity 'Cli_free_apap':assignment
y[109] = y[119]*p[78];	//model entity 'Cki_free_apap':assignment
y[110] = x[17] * p[96] /p[96]/y[2];	//model entity 'Che_apap':assignment
y[111] = x[17] * p[96] /p[96]*p[71];	//model entity 'Xhe_apap':assignment
y[112] = x[17] * p[96] /p[96]/y[2]*p[71];	//model entity 'Mhe_apap':assignment
y[113] = x[13] * p[96] /p[96]/y[3];	//model entity 'Cgu_apap':assignment
y[114] = x[13] * p[96] /p[96]*p[71];	//model entity 'Xgu_apap':assignment
y[115] = x[13] * p[96] /p[96]/y[3]*p[71];	//model entity 'Mgu_apap':assignment
y[116] = x[23] * p[96] /p[96]/y[0];	//model entity 'Cre_apap':assignment
y[117] = x[23] * p[96] /p[96]*p[71];	//model entity 'Xre_apap':assignment
y[118] = x[23] * p[96] /p[96]/y[0]*p[71];	//model entity 'Mre_apap':assignment
y[119] = x[11] * p[96] /p[96]/y[4];	//model entity 'Cki_apap':assignment
y[120] = x[11] * p[96] /p[96]*p[71];	//model entity 'Xki_apap':assignment
y[121] = x[11] * p[96] /p[96]/y[4]*p[71];	//model entity 'Mki_apap':assignment
y[122] = x[29] * p[96] /p[96]/y[7];	//model entity 'Csp_apap':assignment
y[123] = x[29] * p[96] /p[96]*p[71];	//model entity 'Xsp_apap':assignment
y[124] = x[29] * p[96] /p[96]/y[7]*p[71];	//model entity 'Msp_apap':assignment
y[125] = x[7] * p[96] /p[96]/y[5];	//model entity 'Cli_apap':assignment
y[126] = x[7] * p[96] /p[96]*p[71];	//model entity 'Xli_apap':assignment
y[127] = x[7] * p[96] /p[96]/y[5]*p[71];	//model entity 'Mli_apap':assignment
y[128] = x[2] * p[96] /p[96]/y[8];	//model entity 'Cve_apap':assignment
y[129] = x[2] * p[96] /p[96]*p[71];	//model entity 'Xve_apap':assignment
y[130] = x[2] * p[96] /p[96]/y[8]*p[71];	//model entity 'Mve_apap':assignment
y[131] = x[5] * p[96] /p[96]/y[9];	//model entity 'Car_apap':assignment
y[132] = x[5] * p[96] /p[96]*p[71];	//model entity 'Xar_apap':assignment
y[133] = x[5] * p[96] /p[96]/y[9]*p[71];	//model entity 'Mar_apap':assignment
y[134] = x[25] * p[96] /p[96]/y[1];	//model entity 'Cbo_apap':assignment
y[135] = x[25] * p[96] /p[96]*p[71];	//model entity 'Xbo_apap':assignment
y[136] = x[25] * p[96] /p[96]/y[1]*p[71];	//model entity 'Mbo_apap':assignment
y[137] = x[20] * p[96] /p[96]/y[6];	//model entity 'Clu_apap':assignment
y[138] = x[20] * p[96] /p[96]*p[71];	//model entity 'Xlu_apap':assignment
y[139] = x[20] * p[96] /p[96]/y[6]*p[71];	//model entity 'Mlu_apap':assignment
y[140] = x[32] * p[96] /p[96]*p[71];	//model entity 'Xurine_apap':assignment
y[141] = x[33] * p[96] /p[96]*p[33];	//model entity 'Xbreath_co2c13':assignment
y[142] = x[28] * p[96] /p[96]/y[1];	//model entity 'Cbo_co2c13_fix':assignment
y[143] = x[28] * p[96] /p[96]*p[33];	//model entity 'Xbo_co2c13_fix':assignment
y[144] = p[90]/p[61]*p[26]*y[5]*p[25]*60.00000000000000000/1000.00000000000000000;	//model entity 'CYP1A2MET_CLliv':assignment
y[145] = p[92]*p[26]*y[5]*p[25]*60.00000000000000000/1000.00000000000000000;	//model entity 'CO2FIX_CLliv':assignment
y[146] = p[94]/p[80]*p[26]*y[5]*p[25]*60.00000000000000000/1000.00000000000000000;	//model entity 'APAPD_CLliv':assignment
y[0] = p[2]*y[16];	//model entity 'Vre':assignment
y[1] = p[2]*p[8];	//model entity 'Vbo':assignment
y[2] = p[2]*p[9];	//model entity 'Vhe':assignment
y[3] = p[2]*p[10];	//model entity 'Vgu':assignment
y[4] = p[2]*p[11];	//model entity 'Vki':assignment
y[5] = p[2]*p[12];	//model entity 'Vli':assignment
y[6] = p[2]*p[13];	//model entity 'Vlu':assignment
y[7] = p[2]*p[14];	//model entity 'Vsp':assignment
y[8] = p[2]*p[15];	//model entity 'Vve':assignment
y[9] = p[2]*p[16];	//model entity 'Var':assignment
y[10] = p[2]*p[17];	//model entity 'Vpl':assignment
y[11] = y[10]*y[8]/(y[8]+y[9]);	//model entity 'Vplas_ven':assignment
y[12] = y[10]*y[9]/(y[8]+y[9]);	//model entity 'Vplas_art':assignment
x_c[0] = x[0]/y[8];	//concentration of metabolite 'Ave_co2c13': reactions
x_c[1] = x[1]/y[8];	//concentration of metabolite 'Ave_metc13': reactions
x_c[2] = x[2]/y[8];	//concentration of metabolite 'Ave_apap': reactions
x_c[3] = x[3]/y[9];	//concentration of metabolite 'Aar_co2c13': reactions
x_c[4] = x[4]/y[9];	//concentration of metabolite 'Aar_metc13': reactions
x_c[5] = x[5]/y[9];	//concentration of metabolite 'Aar_apap': reactions
x_c[6] = x[6]/y[5];	//concentration of metabolite 'Ali_co2c13': reactions
x_c[7] = x[7]/y[5];	//concentration of metabolite 'Ali_apap': reactions
x_c[8] = x[8]/y[5];	//concentration of metabolite 'Ali_metc13': reactions
x_c[9] = x[9]/y[4];	//concentration of metabolite 'Aki_co2c13': reactions
x_c[10] = x[10]/y[6];	//concentration of metabolite 'Alu_co2c13': reactions
x_c[11] = x[11]/y[4];	//concentration of metabolite 'Aki_apap': reactions
x_c[12] = x[12]/y[4];	//concentration of metabolite 'Aki_metc13': reactions
x_c[13] = x[13]/y[3];	//concentration of metabolite 'Agu_apap': reactions
x_c[14] = x[14]/y[3];	//concentration of metabolite 'Agu_co2c13': reactions
x_c[15] = x[15]/y[3];	//concentration of metabolite 'Agu_metc13': reactions
x_c[16] = x[16]/y[2];	//concentration of metabolite 'Ahe_co2c13': reactions
x_c[17] = x[17]/y[2];	//concentration of metabolite 'Ahe_apap': reactions
x_c[18] = x[18]/y[2];	//concentration of metabolite 'Ahe_metc13': reactions
x_c[19] = x[19]/y[0];	//concentration of metabolite 'Are_co2c13': reactions
x_c[20] = x[20]/y[6];	//concentration of metabolite 'Alu_apap': reactions
x_c[21] = x[21]/y[6];	//concentration of metabolite 'Alu_metc13': reactions
x_c[22] = x[22]/y[1];	//concentration of metabolite 'Abo_co2c13': reactions
x_c[23] = x[23]/y[0];	//concentration of metabolite 'Are_apap': reactions
x_c[24] = x[24]/y[0];	//concentration of metabolite 'Are_metc13': reactions
x_c[25] = x[25]/y[1];	//concentration of metabolite 'Abo_apap': reactions
x_c[26] = x[26]/y[1];	//concentration of metabolite 'Abo_metc13': reactions
x_c[27] = x[27]/y[7];	//concentration of metabolite 'Asp_co2c13': reactions
x_c[28] = x[28]/y[1];	//concentration of metabolite 'Abo_co2c13_fix': reactions
x_c[29] = x[29]/y[7];	//concentration of metabolite 'Asp_apap': reactions
x_c[30] = x[30]/y[7];	//concentration of metabolite 'Asp_metc13': reactions
x_c[31] = x[31]/p[1];	//concentration of metabolite 'Aurine_co2c13': reactions
x_c[32] = x[32]/p[1];	//concentration of metabolite 'Aurine_apap': reactions
x_c[33] = x[33]/p[0];	//concentration of metabolite 'Abreath_co2c13': reactions
x_c[34] = x[34]/p[1];	//concentration of metabolite 'Aurine_metc13': reactions
#endif /* ASSIGNMENT */

#ifdef FUNCTIONS_HEADERS
double FunctionForCYP1A2MET(double param_0, double param_1, double param_2, double volume_0); 
double FunctionForCO2FIX(double param_0, double param_1, double param_2, double volume_0); 
double FunctionForAPAPD(double param_0, double param_1, double param_2, double volume_0); 
double FunctionForExhalation_co2c13(double param_0, double param_1, double volume_0); 
double FunctionForFixation_co2c13(double param_0, double param_1, double param_2, double param_3, double volume_0); 
double FunctionForRelease_co2c13(double param_0, double param_1, double volume_0); 
double FunctionForInjection_co2c13(double param_0, double param_1, double param_2, double volume_0); 
double FunctionForInfusion_co2c13(double param_0, double param_1, double volume_0); 
double FunctionForAbsorption_co2c13(double param_0, double param_1, double param_2, double param_3, double volume_0); 
double FunctionForVre_co2c13(double param_0, double param_1); 
double FunctionForVe_lu_co2c13(double param_0, double param_1); 
double FunctionForLu_ar_co2c13(double param_0, double param_1, double param_2, double param_3); 
double FunctionForAr_re_co2c13(double param_0, double param_1); 
double FunctionForRe_ve_co2c13(double param_0, double param_1, double param_2, double param_3); 
double FunctionForAr_bo_co2c13(double param_0, double param_1); 
double FunctionForBo_ve_co2c13(double param_0, double param_1, double param_2, double param_3); 
double FunctionForAr_gu_co2c13(double param_0, double param_1); 
double FunctionForGu_li_co2c13(double param_0, double param_1, double param_2, double param_3); 
double FunctionForAr_he_co2c13(double param_0, double param_1); 
double FunctionForHe_ve_co2c13(double param_0, double param_1, double param_2, double param_3); 
double FunctionForAr_ki_co2c13(double param_0, double param_1); 
double FunctionForKi_ve_co2c13(double param_0, double param_1, double param_2, double param_3); 
double FunctionForAr_sp_co2c13(double param_0, double param_1); 
double FunctionForSp_li_co2c13(double param_0, double param_1, double param_2, double param_3); 
double FunctionForAr_li_co2c13(double param_0, double param_1); 
double FunctionForLi_ve_co2c13(double param_0, double param_1, double param_2, double param_3); 
double FunctionForInjection_metc13(double param_0, double param_1, double param_2, double volume_0); 
double FunctionForInfusion_metc13(double param_0, double param_1, double volume_0); 
double FunctionForAbsorption_metc13(double param_0, double param_1, double param_2, double param_3, double volume_0); 
double FunctionForVre_metc13(double param_0, double param_1); 
double FunctionForVe_lu_metc13(double param_0, double param_1); 
double FunctionForLu_ar_metc13(double param_0, double param_1, double param_2, double param_3); 
double FunctionForAr_re_metc13(double param_0, double param_1); 
double FunctionForRe_ve_metc13(double param_0, double param_1, double param_2, double param_3); 
double FunctionForAr_bo_metc13(double param_0, double param_1); 
double FunctionForBo_ve_metc13(double param_0, double param_1, double param_2, double param_3); 
double FunctionForAr_gu_metc13(double param_0, double param_1); 
double FunctionForGu_li_metc13(double param_0, double param_1, double param_2, double param_3); 
double FunctionForAr_he_metc13(double param_0, double param_1); 
double FunctionForHe_ve_metc13(double param_0, double param_1, double param_2, double param_3); 
double FunctionForAr_ki_metc13(double param_0, double param_1); 
double FunctionForKi_ve_metc13(double param_0, double param_1, double param_2, double param_3); 
double FunctionForAr_sp_metc13(double param_0, double param_1); 
double FunctionForSp_li_metc13(double param_0, double param_1, double param_2, double param_3); 
double FunctionForAr_li_metc13(double param_0, double param_1); 
double FunctionForLi_ve_metc13(double param_0, double param_1, double param_2, double param_3); 
double FunctionForInjection_apap(double param_0, double param_1, double param_2, double volume_0); 
double FunctionForInfusion_apap(double param_0, double param_1, double volume_0); 
double FunctionForAbsorption_apap(double param_0, double param_1, double param_2, double param_3, double volume_0); 
double FunctionForVre_apap(double param_0, double param_1); 
double FunctionForVe_lu_apap(double param_0, double param_1); 
double FunctionForLu_ar_apap(double param_0, double param_1, double param_2, double param_3); 
double FunctionForAr_re_apap(double param_0, double param_1); 
double FunctionForRe_ve_apap(double param_0, double param_1, double param_2, double param_3); 
double FunctionForAr_bo_apap(double param_0, double param_1); 
double FunctionForBo_ve_apap(double param_0, double param_1, double param_2, double param_3); 
double FunctionForAr_gu_apap(double param_0, double param_1); 
double FunctionForGu_li_apap(double param_0, double param_1, double param_2, double param_3); 
double FunctionForAr_he_apap(double param_0, double param_1); 
double FunctionForHe_ve_apap(double param_0, double param_1, double param_2, double param_3); 
double FunctionForAr_ki_apap(double param_0, double param_1); 
double FunctionForKi_ve_apap(double param_0, double param_1, double param_2, double param_3); 
double FunctionForAr_sp_apap(double param_0, double param_1); 
double FunctionForSp_li_apap(double param_0, double param_1, double param_2, double param_3); 
double FunctionForAr_li_apap(double param_0, double param_1); 
double FunctionForLi_ve_apap(double param_0, double param_1, double param_2, double param_3); 
#endif /* FUNCTIONS_HEADERS */

#ifdef FUNCTIONS
double FunctionForCYP1A2MET(double param_0, double param_1, double param_2, double volume_0) 	//Function for CYP1A2MET
{return  param_0*1.00000000000000000*(param_2/(param_2+param_1))/volume_0;} 
double FunctionForCO2FIX(double param_0, double param_1, double param_2, double volume_0) 	//Function for CO2FIX
{return  param_0*1.00000000000000000*(param_2/(param_2+param_1))/volume_0;} 
double FunctionForAPAPD(double param_0, double param_1, double param_2, double volume_0) 	//Function for APAPD
{return  param_0*1.00000000000000000*(param_2/(param_2+param_1))/volume_0;} 
double FunctionForExhalation_co2c13(double param_0, double param_1, double volume_0) 	//Function for Exhalation_co2c13
{return  param_1*60.00000000000000000*param_0*volume_0;} 
double FunctionForFixation_co2c13(double param_0, double param_1, double param_2, double param_3, double volume_0) 	//Function for Fixation_co2c13
{return  param_2*60.00000000000000000*param_1*volume_0*(1.00000000000000000-param_0/param_3);} 
double FunctionForRelease_co2c13(double param_0, double param_1, double volume_0) 	//Function for Release_co2c13
{return  param_1*60.00000000000000000*param_0*volume_0;} 
double FunctionForInjection_co2c13(double param_0, double param_1, double param_2, double volume_0) 	//Function for Injection_co2c13
{return  param_1*param_0/param_2/volume_0;} 
double FunctionForInfusion_co2c13(double param_0, double param_1, double volume_0) 	//Function for Infusion_co2c13
{return  param_1/param_0*60.00000000000000000/volume_0;} 
double FunctionForAbsorption_co2c13(double param_0, double param_1, double param_2, double param_3, double volume_0) 	//Function for Absorption_co2c13
{return  param_2*param_0/param_3*param_1/volume_0;} 
double FunctionForVre_co2c13(double param_0, double param_1) 	//Function for vre_co2c13
{return  param_0*param_1;} 
double FunctionForVe_lu_co2c13(double param_0, double param_1) 	//Function for ve_lu_co2c13
{return  param_1*param_0;} 
double FunctionForLu_ar_co2c13(double param_0, double param_1, double param_2, double param_3) 	//Function for lu_ar_co2c13
{return  param_3*(param_1/param_2)*param_0;} 
double FunctionForAr_re_co2c13(double param_0, double param_1) 	//Function for ar_re_co2c13
{return  param_1*param_0;} 
double FunctionForRe_ve_co2c13(double param_0, double param_1, double param_2, double param_3) 	//Function for re_ve_co2c13
{return  param_3*(param_1/param_2)*param_0;} 
double FunctionForAr_bo_co2c13(double param_0, double param_1) 	//Function for ar_bo_co2c13
{return  param_1*param_0;} 
double FunctionForBo_ve_co2c13(double param_0, double param_1, double param_2, double param_3) 	//Function for bo_ve_co2c13
{return  param_3*(param_1/param_2)*param_0;} 
double FunctionForAr_gu_co2c13(double param_0, double param_1) 	//Function for ar_gu_co2c13
{return  param_1*param_0;} 
double FunctionForGu_li_co2c13(double param_0, double param_1, double param_2, double param_3) 	//Function for gu_li_co2c13
{return  param_3*(param_1/param_2)*param_0;} 
double FunctionForAr_he_co2c13(double param_0, double param_1) 	//Function for ar_he_co2c13
{return  param_1*param_0;} 
double FunctionForHe_ve_co2c13(double param_0, double param_1, double param_2, double param_3) 	//Function for he_ve_co2c13
{return  param_3*(param_1/param_2)*param_0;} 
double FunctionForAr_ki_co2c13(double param_0, double param_1) 	//Function for ar_ki_co2c13
{return  param_1*param_0;} 
double FunctionForKi_ve_co2c13(double param_0, double param_1, double param_2, double param_3) 	//Function for ki_ve_co2c13
{return  param_3*(param_1/param_2)*param_0;} 
double FunctionForAr_sp_co2c13(double param_0, double param_1) 	//Function for ar_sp_co2c13
{return  param_1*param_0;} 
double FunctionForSp_li_co2c13(double param_0, double param_1, double param_2, double param_3) 	//Function for sp_li_co2c13
{return  param_3*(param_1/param_2)*param_0;} 
double FunctionForAr_li_co2c13(double param_0, double param_1) 	//Function for ar_li_co2c13
{return  param_1*param_0;} 
double FunctionForLi_ve_co2c13(double param_0, double param_1, double param_2, double param_3) 	//Function for li_ve_co2c13
{return  param_3*(param_1/param_2)*param_0;} 
double FunctionForInjection_metc13(double param_0, double param_1, double param_2, double volume_0) 	//Function for Injection_metc13
{return  param_1*param_0/param_2/volume_0;} 
double FunctionForInfusion_metc13(double param_0, double param_1, double volume_0) 	//Function for Infusion_metc13
{return  param_1/param_0*60.00000000000000000/volume_0;} 
double FunctionForAbsorption_metc13(double param_0, double param_1, double param_2, double param_3, double volume_0) 	//Function for Absorption_metc13
{return  param_2*param_0/param_3*param_1/volume_0;} 
double FunctionForVre_metc13(double param_0, double param_1) 	//Function for vre_metc13
{return  param_0*param_1;} 
double FunctionForVe_lu_metc13(double param_0, double param_1) 	//Function for ve_lu_metc13
{return  param_1*param_0;} 
double FunctionForLu_ar_metc13(double param_0, double param_1, double param_2, double param_3) 	//Function for lu_ar_metc13
{return  param_3*(param_1/param_2)*param_0;} 
double FunctionForAr_re_metc13(double param_0, double param_1) 	//Function for ar_re_metc13
{return  param_1*param_0;} 
double FunctionForRe_ve_metc13(double param_0, double param_1, double param_2, double param_3) 	//Function for re_ve_metc13
{return  param_3*(param_1/param_2)*param_0;} 
double FunctionForAr_bo_metc13(double param_0, double param_1) 	//Function for ar_bo_metc13
{return  param_1*param_0;} 
double FunctionForBo_ve_metc13(double param_0, double param_1, double param_2, double param_3) 	//Function for bo_ve_metc13
{return  param_3*(param_1/param_2)*param_0;} 
double FunctionForAr_gu_metc13(double param_0, double param_1) 	//Function for ar_gu_metc13
{return  param_1*param_0;} 
double FunctionForGu_li_metc13(double param_0, double param_1, double param_2, double param_3) 	//Function for gu_li_metc13
{return  param_3*(param_1/param_2)*param_0;} 
double FunctionForAr_he_metc13(double param_0, double param_1) 	//Function for ar_he_metc13
{return  param_1*param_0;} 
double FunctionForHe_ve_metc13(double param_0, double param_1, double param_2, double param_3) 	//Function for he_ve_metc13
{return  param_3*(param_1/param_2)*param_0;} 
double FunctionForAr_ki_metc13(double param_0, double param_1) 	//Function for ar_ki_metc13
{return  param_1*param_0;} 
double FunctionForKi_ve_metc13(double param_0, double param_1, double param_2, double param_3) 	//Function for ki_ve_metc13
{return  param_3*(param_1/param_2)*param_0;} 
double FunctionForAr_sp_metc13(double param_0, double param_1) 	//Function for ar_sp_metc13
{return  param_1*param_0;} 
double FunctionForSp_li_metc13(double param_0, double param_1, double param_2, double param_3) 	//Function for sp_li_metc13
{return  param_3*(param_1/param_2)*param_0;} 
double FunctionForAr_li_metc13(double param_0, double param_1) 	//Function for ar_li_metc13
{return  param_1*param_0;} 
double FunctionForLi_ve_metc13(double param_0, double param_1, double param_2, double param_3) 	//Function for li_ve_metc13
{return  param_3*(param_1/param_2)*param_0;} 
double FunctionForInjection_apap(double param_0, double param_1, double param_2, double volume_0) 	//Function for Injection_apap
{return  param_1*param_0/param_2/volume_0;} 
double FunctionForInfusion_apap(double param_0, double param_1, double volume_0) 	//Function for Infusion_apap
{return  param_1/param_0*60.00000000000000000/volume_0;} 
double FunctionForAbsorption_apap(double param_0, double param_1, double param_2, double param_3, double volume_0) 	//Function for Absorption_apap
{return  param_2*param_0/param_3*param_1/volume_0;} 
double FunctionForVre_apap(double param_0, double param_1) 	//Function for vre_apap
{return  param_0*param_1;} 
double FunctionForVe_lu_apap(double param_0, double param_1) 	//Function for ve_lu_apap
{return  param_1*param_0;} 
double FunctionForLu_ar_apap(double param_0, double param_1, double param_2, double param_3) 	//Function for lu_ar_apap
{return  param_3*(param_1/param_2)*param_0;} 
double FunctionForAr_re_apap(double param_0, double param_1) 	//Function for ar_re_apap
{return  param_1*param_0;} 
double FunctionForRe_ve_apap(double param_0, double param_1, double param_2, double param_3) 	//Function for re_ve_apap
{return  param_3*(param_1/param_2)*param_0;} 
double FunctionForAr_bo_apap(double param_0, double param_1) 	//Function for ar_bo_apap
{return  param_1*param_0;} 
double FunctionForBo_ve_apap(double param_0, double param_1, double param_2, double param_3) 	//Function for bo_ve_apap
{return  param_3*(param_1/param_2)*param_0;} 
double FunctionForAr_gu_apap(double param_0, double param_1) 	//Function for ar_gu_apap
{return  param_1*param_0;} 
double FunctionForGu_li_apap(double param_0, double param_1, double param_2, double param_3) 	//Function for gu_li_apap
{return  param_3*(param_1/param_2)*param_0;} 
double FunctionForAr_he_apap(double param_0, double param_1) 	//Function for ar_he_apap
{return  param_1*param_0;} 
double FunctionForHe_ve_apap(double param_0, double param_1, double param_2, double param_3) 	//Function for he_ve_apap
{return  param_3*(param_1/param_2)*param_0;} 
double FunctionForAr_ki_apap(double param_0, double param_1) 	//Function for ar_ki_apap
{return  param_1*param_0;} 
double FunctionForKi_ve_apap(double param_0, double param_1, double param_2, double param_3) 	//Function for ki_ve_apap
{return  param_3*(param_1/param_2)*param_0;} 
double FunctionForAr_sp_apap(double param_0, double param_1) 	//Function for ar_sp_apap
{return  param_1*param_0;} 
double FunctionForSp_li_apap(double param_0, double param_1, double param_2, double param_3) 	//Function for sp_li_apap
{return  param_3*(param_1/param_2)*param_0;} 
double FunctionForAr_li_apap(double param_0, double param_1) 	//Function for ar_li_apap
{return  param_1*param_0;} 
double FunctionForLi_ve_apap(double param_0, double param_1, double param_2, double param_3) 	//Function for li_ve_apap
{return  param_3*(param_1/param_2)*param_0;} 
#endif /* FUNCTIONS */

#ifdef ODEs
dx[0] = -FunctionForFixation_co2c13(y[142], y[58], p[28], p[30], y[8])+FunctionForRelease_co2c13(y[142], p[29], y[8])+FunctionForInjection_co2c13(x[36], y[18], p[33], y[8])*y[8]+FunctionForInfusion_co2c13(p[33], p[39], y[8])*y[8]-FunctionForVe_lu_co2c13(y[58], y[33])+FunctionForRe_ve_co2c13(p[41], y[46], p[46], y[35])+FunctionForBo_ve_co2c13(p[41], y[64], p[50], y[27])+FunctionForHe_ve_co2c13(p[41], y[40], p[44], y[28])+FunctionForKi_ve_co2c13(p[41], y[49], p[47], y[30])+FunctionForLi_ve_co2c13(p[41], y[55], p[49], y[31]);	// 
dx[1] = FunctionForInjection_metc13(x[39], y[19], p[52], y[8])*y[8]+FunctionForInfusion_metc13(p[52], p[58], y[8])*y[8]-FunctionForVe_lu_metc13(y[93], y[33])+FunctionForRe_ve_metc13(p[60], y[81], p[65], y[35])+FunctionForBo_ve_metc13(p[60], y[99], p[69], y[27])+FunctionForHe_ve_metc13(p[60], y[75], p[63], y[28])+FunctionForKi_ve_metc13(p[60], y[84], p[66], y[30])+FunctionForLi_ve_metc13(p[60], y[90], p[68], y[31]);	// 
dx[2] = FunctionForInjection_apap(x[42], y[20], p[71], y[8])*y[8]+FunctionForInfusion_apap(p[71], p[77], y[8])*y[8]-FunctionForVe_lu_apap(y[128], y[33])+FunctionForRe_ve_apap(p[79], y[116], p[84], y[35])+FunctionForBo_ve_apap(p[79], y[134], p[88], y[27])+FunctionForHe_ve_apap(p[79], y[110], p[82], y[28])+FunctionForKi_ve_apap(p[79], y[119], p[85], y[30])+FunctionForLi_ve_apap(p[79], y[125], p[87], y[31]);	// 
dx[3] = FunctionForLu_ar_co2c13(p[41], y[67], p[51], y[33])-FunctionForAr_re_co2c13(y[61], y[35])-FunctionForAr_bo_co2c13(y[61], y[27])-FunctionForAr_gu_co2c13(y[61], y[29])-FunctionForAr_he_co2c13(y[61], y[28])-FunctionForAr_ki_co2c13(y[61], y[30])-FunctionForAr_sp_co2c13(y[61], y[34])-FunctionForAr_li_co2c13(y[61], y[32]);	// 
dx[4] = FunctionForLu_ar_metc13(p[60], y[102], p[70], y[33])-FunctionForAr_re_metc13(y[96], y[35])-FunctionForAr_bo_metc13(y[96], y[27])-FunctionForAr_gu_metc13(y[96], y[29])-FunctionForAr_he_metc13(y[96], y[28])-FunctionForAr_ki_metc13(y[96], y[30])-FunctionForAr_sp_metc13(y[96], y[34])-FunctionForAr_li_metc13(y[96], y[32]);	// 
dx[5] = FunctionForLu_ar_apap(p[79], y[137], p[89], y[33])-FunctionForAr_re_apap(y[131], y[35])-FunctionForAr_bo_apap(y[131], y[27])-FunctionForAr_gu_apap(y[131], y[29])-FunctionForAr_he_apap(y[131], y[28])-FunctionForAr_ki_apap(y[131], y[30])-FunctionForAr_sp_apap(y[131], y[34])-FunctionForAr_li_apap(y[131], y[32]);	// 
dx[6] = FunctionForCYP1A2MET(y[144], p[91], y[73], y[5])*y[5]-FunctionForCO2FIX(y[145], p[93], y[55], y[5])*y[5]+FunctionForGu_li_co2c13(p[41], y[43], p[45], y[29])+FunctionForSp_li_co2c13(p[41], y[52], p[48], y[34])+FunctionForAr_li_co2c13(y[61], y[32])-FunctionForLi_ve_co2c13(p[41], y[55], p[49], y[31]);	// 
dx[7] = FunctionForCYP1A2MET(y[144], p[91], y[73], y[5])*y[5]-FunctionForAPAPD(y[146], p[95], y[108], y[5])*y[5]+FunctionForGu_li_apap(p[79], y[113], p[83], y[29])+FunctionForSp_li_apap(p[79], y[122], p[86], y[34])+FunctionForAr_li_apap(y[131], y[32])-FunctionForLi_ve_apap(p[79], y[125], p[87], y[31]);	// 
dx[8] = -FunctionForCYP1A2MET(y[144], p[91], y[73], y[5])*y[5]+FunctionForGu_li_metc13(p[60], y[78], p[64], y[29])+FunctionForSp_li_metc13(p[60], y[87], p[67], y[34])+FunctionForAr_li_metc13(y[96], y[32])-FunctionForLi_ve_metc13(p[60], y[90], p[68], y[31]);	// 
dx[9] = -FunctionForVre_co2c13(p[43], y[39])+FunctionForAr_ki_co2c13(y[61], y[30])-FunctionForKi_ve_co2c13(p[41], y[49], p[47], y[30]);	// 
dx[10] = -FunctionForExhalation_co2c13(y[67], p[27], y[6])+FunctionForVe_lu_co2c13(y[58], y[33])-FunctionForLu_ar_co2c13(p[41], y[67], p[51], y[33]);	// 
dx[11] = -FunctionForVre_apap(p[81], y[109])+FunctionForAr_ki_apap(y[131], y[30])-FunctionForKi_ve_apap(p[79], y[119], p[85], y[30]);	// 
dx[12] = -FunctionForVre_metc13(p[62], y[74])+FunctionForAr_ki_metc13(y[96], y[30])-FunctionForKi_ve_metc13(p[60], y[84], p[66], y[30]);	// 
dx[13] = FunctionForAbsorption_apap(x[41], p[75], p[74], p[71], y[3])*y[3]+FunctionForAr_gu_apap(y[131], y[29])-FunctionForGu_li_apap(p[79], y[113], p[83], y[29]);	// 
dx[14] = FunctionForAbsorption_co2c13(x[35], p[37], p[36], p[33], y[3])*y[3]+FunctionForAr_gu_co2c13(y[61], y[29])-FunctionForGu_li_co2c13(p[41], y[43], p[45], y[29]);	// 
dx[15] = FunctionForAbsorption_metc13(x[38], p[56], p[55], p[52], y[3])*y[3]+FunctionForAr_gu_metc13(y[96], y[29])-FunctionForGu_li_metc13(p[60], y[78], p[64], y[29]);	// 
dx[16] = FunctionForAr_he_co2c13(y[61], y[28])-FunctionForHe_ve_co2c13(p[41], y[40], p[44], y[28]);	// 
dx[17] = FunctionForAr_he_apap(y[131], y[28])-FunctionForHe_ve_apap(p[79], y[110], p[82], y[28]);	// 
dx[18] = FunctionForAr_he_metc13(y[96], y[28])-FunctionForHe_ve_metc13(p[60], y[75], p[63], y[28]);	// 
dx[19] = FunctionForAr_re_co2c13(y[61], y[35])-FunctionForRe_ve_co2c13(p[41], y[46], p[46], y[35]);	// 
dx[20] = FunctionForVe_lu_apap(y[128], y[33])-FunctionForLu_ar_apap(p[79], y[137], p[89], y[33]);	// 
dx[21] = FunctionForVe_lu_metc13(y[93], y[33])-FunctionForLu_ar_metc13(p[60], y[102], p[70], y[33]);	// 
dx[22] = FunctionForAr_bo_co2c13(y[61], y[27])-FunctionForBo_ve_co2c13(p[41], y[64], p[50], y[27]);	// 
dx[23] = FunctionForAr_re_apap(y[131], y[35])-FunctionForRe_ve_apap(p[79], y[116], p[84], y[35]);	// 
dx[24] = FunctionForAr_re_metc13(y[96], y[35])-FunctionForRe_ve_metc13(p[60], y[81], p[65], y[35]);	// 
dx[25] = FunctionForAr_bo_apap(y[131], y[27])-FunctionForBo_ve_apap(p[79], y[134], p[88], y[27]);	// 
dx[26] = FunctionForAr_bo_metc13(y[96], y[27])-FunctionForBo_ve_metc13(p[60], y[99], p[69], y[27]);	// 
dx[27] = FunctionForAr_sp_co2c13(y[61], y[34])-FunctionForSp_li_co2c13(p[41], y[52], p[48], y[34]);	// 
dx[28] = FunctionForFixation_co2c13(y[142], y[58], p[28], p[30], y[8])-FunctionForRelease_co2c13(y[142], p[29], y[8]);	// 
dx[29] = FunctionForAr_sp_apap(y[131], y[34])-FunctionForSp_li_apap(p[79], y[122], p[86], y[34]);	// 
dx[30] = FunctionForAr_sp_metc13(y[96], y[34])-FunctionForSp_li_metc13(p[60], y[87], p[67], y[34]);	// 
dx[31] = FunctionForVre_co2c13(p[43], y[39]);	// 
dx[32] = FunctionForVre_apap(p[81], y[109]);	// 
dx[33] = FunctionForExhalation_co2c13(y[67], p[27], y[6]);	// 
dx[34] = FunctionForVre_metc13(p[62], y[74]);	// 
dx[35] = (-FunctionForAbsorption_co2c13(x[35], p[37], p[36], p[33], y[3])*y[3]+FunctionForAr_gu_co2c13(y[61], y[29])-FunctionForGu_li_co2c13(p[41], y[43], p[45], y[29]))*p[33];	//model entity 'D_co2c13':ode
dx[36] = (--FunctionForFixation_co2c13(y[142], y[58], p[28], p[30], y[8])+FunctionForRelease_co2c13(y[142], p[29], y[8])+FunctionForInjection_co2c13(x[36], y[18], p[33], y[8])*y[8]+FunctionForInfusion_co2c13(p[33], p[39], y[8])*y[8]-FunctionForVe_lu_co2c13(y[58], y[33])+FunctionForRe_ve_co2c13(p[41], y[46], p[46], y[35])+FunctionForBo_ve_co2c13(p[41], y[64], p[50], y[27])+FunctionForHe_ve_co2c13(p[41], y[40], p[44], y[28])+FunctionForKi_ve_co2c13(p[41], y[49], p[47], y[30])+FunctionForLi_ve_co2c13(p[41], y[55], p[49], y[31]))*p[33];	//model entity 'DIV_co2c13':ode
dx[38] = (-FunctionForAbsorption_metc13(x[38], p[56], p[55], p[52], y[3])*y[3]+FunctionForAr_gu_metc13(y[96], y[29])-FunctionForGu_li_metc13(p[60], y[78], p[64], y[29]))*p[52];	//model entity 'D_metc13':ode
dx[39] = (-FunctionForInjection_metc13(x[39], y[19], p[52], y[8])*y[8]+FunctionForInfusion_metc13(p[52], p[58], y[8])*y[8]-FunctionForVe_lu_metc13(y[93], y[33])+FunctionForRe_ve_metc13(p[60], y[81], p[65], y[35])+FunctionForBo_ve_metc13(p[60], y[99], p[69], y[27])+FunctionForHe_ve_metc13(p[60], y[75], p[63], y[28])+FunctionForKi_ve_metc13(p[60], y[84], p[66], y[30])+FunctionForLi_ve_metc13(p[60], y[90], p[68], y[31]))*p[52];	//model entity 'DIV_metc13':ode
dx[41] = (-FunctionForAbsorption_apap(x[41], p[75], p[74], p[71], y[3])*y[3]+FunctionForAr_gu_apap(y[131], y[29])-FunctionForGu_li_apap(p[79], y[113], p[83], y[29]))*p[71];	//model entity 'D_apap':ode
dx[42] = (-FunctionForInjection_apap(x[42], y[20], p[71], y[8])*y[8]+FunctionForInfusion_apap(p[71], p[77], y[8])*y[8]-FunctionForVe_lu_apap(y[128], y[33])+FunctionForRe_ve_apap(p[79], y[116], p[84], y[35])+FunctionForBo_ve_apap(p[79], y[134], p[88], y[27])+FunctionForHe_ve_apap(p[79], y[110], p[82], y[28])+FunctionForKi_ve_apap(p[79], y[119], p[85], y[30])+FunctionForLi_ve_apap(p[79], y[125], p[87], y[31]))*p[71];	//model entity 'DIV_apap':ode
#endif /* ODEs */

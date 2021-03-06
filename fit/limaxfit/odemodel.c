/** Code auto-generated by cOde 0.4 **/
#include <R.h> 
 #include <math.h> 

static double parms[128];
static double forc[0];
static double cons[0];
static double range[2];

#define nGridpoints 2 
#define nSplines 0 
#define precision 1e-05 

#define BW parms[0] 
 #define COBW parms[1] 
 #define HR parms[2] 
 #define HRrest parms[3] 
 #define COHRI parms[4] 
 #define FQlu parms[5] 
 #define FVlu parms[6] 
 #define Kplu_apap parms[7] 
 #define BP_apap parms[8] 
 #define FQbo parms[9] 
 #define FQhe parms[10] 
 #define FQgu parms[11] 
 #define FQki parms[12] 
 #define FQh parms[13] 
 #define FQsp parms[14] 
 #define FVar parms[15] 
 #define Kplu_co2c13 parms[16] 
 #define BP_co2c13 parms[17] 
 #define Kplu_metc13 parms[18] 
 #define BP_metc13 parms[19] 
 #define FVbo parms[20] 
 #define Kpbo_apap parms[21] 
 #define Kpbo_co2c13 parms[22] 
 #define KBO_FIXCO2 parms[23] 
 #define FVve parms[24] 
 #define KBO_MAXCO2 parms[25] 
 #define KBO_RELCO2 parms[26] 
 #define Kpbo_metc13 parms[27] 
 #define KLU_EXCO2 parms[28] 
 #define Ka_apap parms[29] 
 #define Mr_apap parms[30] 
 #define F_apap parms[31] 
 #define FVgu parms[32] 
 #define Kpgu_apap parms[33] 
 #define Ka_co2c13 parms[34] 
 #define Mr_co2c13 parms[35] 
 #define F_co2c13 parms[36] 
 #define Kpgu_co2c13 parms[37] 
 #define Ka_metc13 parms[38] 
 #define Mr_metc13 parms[39] 
 #define F_metc13 parms[40] 
 #define Kpgu_metc13 parms[41] 
 #define FVhe parms[42] 
 #define Kphe_apap parms[43] 
 #define Kphe_co2c13 parms[44] 
 #define Kphe_metc13 parms[45] 
 #define CLrenal_apap parms[46] 
 #define FVki parms[47] 
 #define fup_apap parms[48] 
 #define Kpki_apap parms[49] 
 #define CLrenal_co2c13 parms[50] 
 #define fup_co2c13 parms[51] 
 #define Kpki_co2c13 parms[52] 
 #define CLrenal_metc13 parms[53] 
 #define fup_metc13 parms[54] 
 #define Kpki_metc13 parms[55] 
 #define CYP1A2MET_CL parms[56] 
 #define fumic_metc13 parms[57] 
 #define MPPGL parms[58] 
 #define FVli parms[59] 
 #define F_PAR parms[60] 
 #define CYP1A2MET_Km_met parms[61] 
 #define APAPD_HLM_CL parms[62] 
 #define fumic_apap parms[63] 
 #define APAPD_Km_apap parms[64] 
 #define FVsp parms[65] 
 #define Kpsp_apap parms[66] 
 #define Kpli_apap parms[67] 
 #define CO2FIX_HLM_CL parms[68] 
 #define CO2FIX_Km_co2 parms[69] 
 #define Kpsp_co2c13 parms[70] 
 #define Kpli_co2c13 parms[71] 
 #define Kpsp_metc13 parms[72] 
 #define Kpli_metc13 parms[73] 
 #define FVpl parms[74] 
 #define Kpre_apap parms[75] 
 #define Kpre_co2c13 parms[76] 
 #define Kpre_metc13 parms[77] 
 #define ti_apap parms[78] 
 #define Ri_apap parms[79] 
 #define ti_co2c13 parms[80] 
 #define Ri_co2c13 parms[81] 
 #define ti_metc13 parms[82] 
 #define Ri_metc13 parms[83] 
 #define y0_0 parms[84] 
 #define y1_0 parms[85] 
 #define y2_0 parms[86] 
 #define y3_0 parms[87] 
 #define y4_0 parms[88] 
 #define y5_0 parms[89] 
 #define y6_0 parms[90] 
 #define y7_0 parms[91] 
 #define y8_0 parms[92] 
 #define y9_0 parms[93] 
 #define y10_0 parms[94] 
 #define y11_0 parms[95] 
 #define y12_0 parms[96] 
 #define y13_0 parms[97] 
 #define y14_0 parms[98] 
 #define y15_0 parms[99] 
 #define y16_0 parms[100] 
 #define y17_0 parms[101] 
 #define y18_0 parms[102] 
 #define y19_0 parms[103] 
 #define y20_0 parms[104] 
 #define y21_0 parms[105] 
 #define y22_0 parms[106] 
 #define y23_0 parms[107] 
 #define y24_0 parms[108] 
 #define y25_0 parms[109] 
 #define y26_0 parms[110] 
 #define y27_0 parms[111] 
 #define y28_0 parms[112] 
 #define y29_0 parms[113] 
 #define y30_0 parms[114] 
 #define y31_0 parms[115] 
 #define y32_0 parms[116] 
 #define y33_0 parms[117] 
 #define y34_0 parms[118] 
 #define y35_0 parms[119] 
 #define y36_0 parms[120] 
 #define y37_0 parms[121] 
 #define y38_0 parms[122] 
 #define y39_0 parms[123] 
 #define y40_0 parms[124] 
 #define y41_0 parms[125] 
 #define y42_0 parms[126] 
 #define y43_0 parms[127] 
#define tmin range[0]
#define tmax range[1]


void odemodel_initmod(void (* odeparms)(int *, double *)) {
	 int N=128;
	 odeparms(&N, parms);
}

void odemodel_initforc(void (* odeforcs)(int *, double *)) {
	 int N=0;
	 odeforcs(&N, forc);
}

/** Derivatives (ODE system) **/
void odemodel_derivs (int *n, double *t, double *y, double *ydot, double *RPAR, int *IPAR) {

	 double time = *t;

	 ydot[0] = ((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQlu*(y[20]/(BW*FVlu)/Kplu_apap)*BP_apap-((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*(1-(FQbo+FQhe+FQgu+FQki+FQh+FQsp))*(y[0]/(BW*FVar))-((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQbo*(y[0]/(BW*FVar))-((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQgu*(y[0]/(BW*FVar))-((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQhe*(y[0]/(BW*FVar))-((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQki*(y[0]/(BW*FVar))-((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQsp*(y[0]/(BW*FVar))-(((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQh-((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQgu-((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQsp)*(y[0]/(BW*FVar));
 	 ydot[1] = ((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQlu*(y[21]/(BW*FVlu)/Kplu_co2c13)*BP_co2c13-((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*(1-(FQbo+FQhe+FQgu+FQki+FQh+FQsp))*(y[1]/(BW*FVar))-((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQbo*(y[1]/(BW*FVar))-((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQgu*(y[1]/(BW*FVar))-((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQhe*(y[1]/(BW*FVar))-((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQki*(y[1]/(BW*FVar))-((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQsp*(y[1]/(BW*FVar))-(((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQh-((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQgu-((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQsp)*(y[1]/(BW*FVar));
 	 ydot[2] = ((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQlu*(y[22]/(BW*FVlu)/Kplu_metc13)*BP_metc13-((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*(1-(FQbo+FQhe+FQgu+FQki+FQh+FQsp))*(y[2]/(BW*FVar))-((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQbo*(y[2]/(BW*FVar))-((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQgu*(y[2]/(BW*FVar))-((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQhe*(y[2]/(BW*FVar))-((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQki*(y[2]/(BW*FVar))-((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQsp*(y[2]/(BW*FVar))-(((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQh-((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQgu-((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQsp)*(y[2]/(BW*FVar));
 	 ydot[3] = ((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQbo*(y[0]/(BW*FVar))-((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQbo*(y[3]/(BW*FVbo)/Kpbo_apap)*BP_apap;
 	 ydot[4] = ((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQbo*(y[1]/(BW*FVar))-((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQbo*(y[4]/(BW*FVbo)/Kpbo_co2c13)*BP_co2c13;
 	 ydot[5] = KBO_FIXCO2*60*(y[33]/(BW*FVve))*(BW*FVve)*(1-y[5]/(BW*FVbo)/KBO_MAXCO2)-KBO_RELCO2*60*(y[5]/(BW*FVbo))*(BW*FVve);
 	 ydot[6] = ((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQbo*(y[2]/(BW*FVar))-((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQbo*(y[6]/(BW*FVbo)/Kpbo_metc13)*BP_metc13;
 	 ydot[7] = KLU_EXCO2*60*(y[21]/(BW*FVlu))*(BW*FVlu);
 	 ydot[8] = (Ka_apap*y[38]/Mr_apap)*F_apap+((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQgu*(y[0]/(BW*FVar))-((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQgu*(y[8]/(BW*FVgu)/Kpgu_apap)*BP_apap;
 	 ydot[9] = (Ka_co2c13*y[39]/Mr_co2c13)*F_co2c13+((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQgu*(y[1]/(BW*FVar))-((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQgu*(y[9]/(BW*FVgu)/Kpgu_co2c13)*BP_co2c13;
 	 ydot[10] = (Ka_metc13*y[40]/Mr_metc13)*F_metc13+((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQgu*(y[2]/(BW*FVar))-((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQgu*(y[10]/(BW*FVgu)/Kpgu_metc13)*BP_metc13;
 	 ydot[11] = ((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQhe*(y[0]/(BW*FVar))-((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQhe*(y[11]/(BW*FVhe)/Kphe_apap)*BP_apap;
 	 ydot[12] = ((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQhe*(y[1]/(BW*FVar))-((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQhe*(y[12]/(BW*FVhe)/Kphe_co2c13)*BP_co2c13;
 	 ydot[13] = ((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQhe*(y[2]/(BW*FVar))-((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQhe*(y[13]/(BW*FVhe)/Kphe_metc13)*BP_metc13;
 	 ydot[14] = -(CLrenal_apap*((y[14]/(BW*FVki))*fup_apap))+((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQki*(y[0]/(BW*FVar))-((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQki*(y[14]/(BW*FVki)/Kpki_apap)*BP_apap;
 	 ydot[15] = -(CLrenal_co2c13*((y[15]/(BW*FVki))*fup_co2c13))+((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQki*(y[1]/(BW*FVar))-((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQki*(y[15]/(BW*FVki)/Kpki_co2c13)*BP_co2c13;
 	 ydot[16] = -(CLrenal_metc13*((y[16]/(BW*FVki))*fup_metc13))+((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQki*(y[2]/(BW*FVar))-((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQki*(y[16]/(BW*FVki)/Kpki_metc13)*BP_metc13;
 	 ydot[17] = (((CYP1A2MET_CL/fumic_metc13)*MPPGL*(BW*FVli)*F_PAR*60/1000)*1*((y[19]/(BW*FVli))*fup_metc13/((y[19]/(BW*FVli))*fup_metc13+CYP1A2MET_Km_met))-((APAPD_HLM_CL/fumic_apap)*MPPGL*(BW*FVli)*F_PAR*60/1000)*1*((y[17]/(BW*FVli))*fup_apap/((y[17]/(BW*FVli))*fup_apap+APAPD_Km_apap)))+((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQgu*(y[8]/(BW*FVgu)/Kpgu_apap)*BP_apap+((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQsp*(y[26]/(BW*FVsp)/Kpsp_apap)*BP_apap+(((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQh-((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQgu-((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQsp)*(y[0]/(BW*FVar))-((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQh*(y[17]/(BW*FVli)/Kpli_apap)*BP_apap;
 	 ydot[18] = (((CYP1A2MET_CL/fumic_metc13)*MPPGL*(BW*FVli)*F_PAR*60/1000)*1*((y[19]/(BW*FVli))*fup_metc13/((y[19]/(BW*FVli))*fup_metc13+CYP1A2MET_Km_met))-(CO2FIX_HLM_CL*MPPGL*(BW*FVli)*F_PAR*60/1000)*1*(y[18]/(BW*FVli)/(y[18]/(BW*FVli)+CO2FIX_Km_co2)))+((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQgu*(y[9]/(BW*FVgu)/Kpgu_co2c13)*BP_co2c13+((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQsp*(y[27]/(BW*FVsp)/Kpsp_co2c13)*BP_co2c13+(((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQh-((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQgu-((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQsp)*(y[1]/(BW*FVar))-((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQh*(y[18]/(BW*FVli)/Kpli_co2c13)*BP_co2c13;
 	 ydot[19] = -(((CYP1A2MET_CL/fumic_metc13)*MPPGL*(BW*FVli)*F_PAR*60/1000)*1*((y[19]/(BW*FVli))*fup_metc13/((y[19]/(BW*FVli))*fup_metc13+CYP1A2MET_Km_met)))+((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQgu*(y[10]/(BW*FVgu)/Kpgu_metc13)*BP_metc13+((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQsp*(y[28]/(BW*FVsp)/Kpsp_metc13)*BP_metc13+(((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQh-((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQgu-((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQsp)*(y[2]/(BW*FVar))-((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQh*(y[19]/(BW*FVli)/Kpli_metc13)*BP_metc13;
 	 ydot[20] = ((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQlu*(y[32]/(BW*FVve))-((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQlu*(y[20]/(BW*FVlu)/Kplu_apap)*BP_apap;
 	 ydot[21] = -(KLU_EXCO2*60*(y[21]/(BW*FVlu))*(BW*FVlu))+((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQlu*(y[33]/(BW*FVve))-((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQlu*(y[21]/(BW*FVlu)/Kplu_co2c13)*BP_co2c13;
 	 ydot[22] = ((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQlu*(y[34]/(BW*FVve))-((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQlu*(y[22]/(BW*FVlu)/Kplu_metc13)*BP_metc13;
 	 ydot[23] = ((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*(1-(FQbo+FQhe+FQgu+FQki+FQh+FQsp))*(y[0]/(BW*FVar))-((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*(1-(FQbo+FQhe+FQgu+FQki+FQh+FQsp))*(y[23]/(BW*(1-(FVbo+FVhe+FVgu+FVki+FVli+FVlu+FVsp+FVve+FVar+FVpl)))/Kpre_apap)*BP_apap;
 	 ydot[24] = ((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*(1-(FQbo+FQhe+FQgu+FQki+FQh+FQsp))*(y[1]/(BW*FVar))-((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*(1-(FQbo+FQhe+FQgu+FQki+FQh+FQsp))*(y[24]/(BW*(1-(FVbo+FVhe+FVgu+FVki+FVli+FVlu+FVsp+FVve+FVar+FVpl)))/Kpre_co2c13)*BP_co2c13;
 	 ydot[25] = ((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*(1-(FQbo+FQhe+FQgu+FQki+FQh+FQsp))*(y[2]/(BW*FVar))-((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*(1-(FQbo+FQhe+FQgu+FQki+FQh+FQsp))*(y[25]/(BW*(1-(FVbo+FVhe+FVgu+FVki+FVli+FVlu+FVsp+FVve+FVar+FVpl)))/Kpre_metc13)*BP_metc13;
 	 ydot[26] = ((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQsp*(y[0]/(BW*FVar))-((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQsp*(y[26]/(BW*FVsp)/Kpsp_apap)*BP_apap;
 	 ydot[27] = ((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQsp*(y[1]/(BW*FVar))-((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQsp*(y[27]/(BW*FVsp)/Kpsp_co2c13)*BP_co2c13;
 	 ydot[28] = ((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQsp*(y[2]/(BW*FVar))-((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQsp*(y[28]/(BW*FVsp)/Kpsp_metc13)*BP_metc13;
 	 ydot[29] = CLrenal_apap*((y[14]/(BW*FVki))*fup_apap);
 	 ydot[30] = CLrenal_co2c13*((y[15]/(BW*FVki))*fup_co2c13);
 	 ydot[31] = CLrenal_metc13*((y[16]/(BW*FVki))*fup_metc13);
 	 ydot[32] = ((1.386/ti_apap)*3600*y[35]/Mr_apap+(Ri_apap/Mr_apap)*60-((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQlu*(y[32]/(BW*FVve)))+((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*(1-(FQbo+FQhe+FQgu+FQki+FQh+FQsp))*(y[23]/(BW*(1-(FVbo+FVhe+FVgu+FVki+FVli+FVlu+FVsp+FVve+FVar+FVpl)))/Kpre_apap)*BP_apap+((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQbo*(y[3]/(BW*FVbo)/Kpbo_apap)*BP_apap+((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQhe*(y[11]/(BW*FVhe)/Kphe_apap)*BP_apap+((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQki*(y[14]/(BW*FVki)/Kpki_apap)*BP_apap+((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQh*(y[17]/(BW*FVli)/Kpli_apap)*BP_apap;
 	 ydot[33] = (-(KBO_FIXCO2*60*(y[33]/(BW*FVve))*(BW*FVve)*(1-y[5]/(BW*FVbo)/KBO_MAXCO2))+KBO_RELCO2*60*(y[5]/(BW*FVbo))*(BW*FVve)+(1.386/ti_co2c13)*3600*y[36]/Mr_co2c13+(Ri_co2c13/Mr_co2c13)*60-((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQlu*(y[33]/(BW*FVve)))+((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*(1-(FQbo+FQhe+FQgu+FQki+FQh+FQsp))*(y[24]/(BW*(1-(FVbo+FVhe+FVgu+FVki+FVli+FVlu+FVsp+FVve+FVar+FVpl)))/Kpre_co2c13)*BP_co2c13+((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQbo*(y[4]/(BW*FVbo)/Kpbo_co2c13)*BP_co2c13+((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQhe*(y[12]/(BW*FVhe)/Kphe_co2c13)*BP_co2c13+((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQki*(y[15]/(BW*FVki)/Kpki_co2c13)*BP_co2c13+((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQh*(y[18]/(BW*FVli)/Kpli_co2c13)*BP_co2c13;
 	 ydot[34] = ((1.386/ti_metc13)*3600*y[37]/Mr_metc13+(Ri_metc13/Mr_metc13)*60-((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQlu*(y[34]/(BW*FVve)))+((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*(1-(FQbo+FQhe+FQgu+FQki+FQh+FQsp))*(y[25]/(BW*(1-(FVbo+FVhe+FVgu+FVki+FVli+FVlu+FVsp+FVve+FVar+FVpl)))/Kpre_metc13)*BP_metc13+((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQbo*(y[6]/(BW*FVbo)/Kpbo_metc13)*BP_metc13+((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQhe*(y[13]/(BW*FVhe)/Kphe_metc13)*BP_metc13+((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQki*(y[16]/(BW*FVki)/Kpki_metc13)*BP_metc13+((BW*COBW+(HR-HRrest)*COHRI/60)/1000)*3600*FQh*(y[19]/(BW*FVli)/Kpli_metc13)*BP_metc13;
 	 ydot[35] = -((1.386/ti_apap)*3600*y[35]/Mr_apap)*Mr_apap;
 	 ydot[36] = -((1.386/ti_co2c13)*3600*y[36]/Mr_co2c13)*Mr_co2c13;
 	 ydot[37] = -((1.386/ti_metc13)*3600*y[37]/Mr_metc13)*Mr_metc13;
 	 ydot[38] = -((Ka_apap*y[38]/Mr_apap)*F_apap)*Mr_apap;
 	 ydot[39] = -((Ka_co2c13*y[39]/Mr_co2c13)*F_co2c13)*Mr_co2c13;
 	 ydot[40] = -((Ka_metc13*y[40]/Mr_metc13)*F_metc13)*Mr_metc13;
 	 ydot[41] = Ri_apap*60;
 	 ydot[42] = Ri_co2c13*60;
 	 ydot[43] = Ri_metc13*60;

}


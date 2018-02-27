/** Code auto-generated by cOde 0.4 **/
#include <R.h> 
 #include <math.h> 

static double parms[149];
static double forc[0];
static double cons[0];
static double range[2];

#define nGridpoints 2 
#define nSplines 0 
#define precision 1e-05 

#define MET2APAP_HLM_CL parms[0] 
 #define fumic_metc13 parms[1] 
 #define MPPGL parms[2] 
 #define BW parms[3] 
 #define FVli parms[4] 
 #define fup_metc13 parms[5] 
 #define MET2APAP_Km parms[6] 
 #define CO parms[7] 
 #define FQgu parms[8] 
 #define FVgu parms[9] 
 #define Kpgu_metc13 parms[10] 
 #define BP_metc13 parms[11] 
 #define FQsp parms[12] 
 #define FVsp parms[13] 
 #define Kpsp_metc13 parms[14] 
 #define FQh parms[15] 
 #define FVar parms[16] 
 #define Kpli_metc13 parms[17] 
 #define APAPGLU_HLM_CL parms[18] 
 #define fumic_apap_glu parms[19] 
 #define fup_apap parms[20] 
 #define APAPGLU_Km parms[21] 
 #define APAPSUL_HLM_CL parms[22] 
 #define fumic_apap_sul parms[23] 
 #define APAPSUL_Km parms[24] 
 #define APAPCYS_HLM_CL parms[25] 
 #define fumic_apap_cys parms[26] 
 #define APAPCYS_Km parms[27] 
 #define Kpgu_apap parms[28] 
 #define BP_apap parms[29] 
 #define Kpsp_apap parms[30] 
 #define Kpli_apap parms[31] 
 #define Kpgu_co2c13 parms[32] 
 #define BP_co2c13 parms[33] 
 #define Kpsp_co2c13 parms[34] 
 #define Kpli_co2c13 parms[35] 
 #define Kpgu_apap_glu parms[36] 
 #define BP_apap_glu parms[37] 
 #define Kpsp_apap_glu parms[38] 
 #define Kpli_apap_glu parms[39] 
 #define Kpgu_apap_sul parms[40] 
 #define BP_apap_sul parms[41] 
 #define Kpsp_apap_sul parms[42] 
 #define Kpli_apap_sul parms[43] 
 #define Kpgu_apap_cys parms[44] 
 #define BP_apap_cys parms[45] 
 #define Kpsp_apap_cys parms[46] 
 #define Kpli_apap_cys parms[47] 
 #define Ka_apap_sul parms[48] 
 #define F_apap_sul parms[49] 
 #define CLrenal_apap_sul parms[50] 
 #define FVki parms[51] 
 #define fup_apap_sul parms[52] 
 #define FQki parms[53] 
 #define Kpki_apap_sul parms[54] 
 #define FQlu parms[55] 
 #define FVve parms[56] 
 #define FQre parms[57] 
 #define FVre parms[58] 
 #define Kpre_apap_sul parms[59] 
 #define FVlu parms[60] 
 #define Kplu_apap_sul parms[61] 
 #define Ka_apap parms[62] 
 #define F_apap parms[63] 
 #define CLrenal_apap parms[64] 
 #define Kpki_apap parms[65] 
 #define Kpre_apap parms[66] 
 #define Kplu_apap parms[67] 
 #define Ka_metc13 parms[68] 
 #define F_metc13 parms[69] 
 #define CLrenal_metc13 parms[70] 
 #define Kpki_metc13 parms[71] 
 #define Kpre_metc13 parms[72] 
 #define Kplu_metc13 parms[73] 
 #define Ka_apap_cys parms[74] 
 #define F_apap_cys parms[75] 
 #define CLrenal_apap_cys parms[76] 
 #define fup_apap_cys parms[77] 
 #define Kpki_apap_cys parms[78] 
 #define Kpre_apap_cys parms[79] 
 #define Kplu_apap_cys parms[80] 
 #define Ka_apap_glu parms[81] 
 #define F_apap_glu parms[82] 
 #define CLrenal_apap_glu parms[83] 
 #define fup_apap_glu parms[84] 
 #define Kpki_apap_glu parms[85] 
 #define Kpre_apap_glu parms[86] 
 #define Kplu_apap_glu parms[87] 
 #define Ka_co2c13 parms[88] 
 #define F_co2c13 parms[89] 
 #define CLrenal_co2c13 parms[90] 
 #define fup_co2c13 parms[91] 
 #define Kpki_co2c13 parms[92] 
 #define Kpre_co2c13 parms[93] 
 #define Kplu_co2c13 parms[94] 
 #define y0_0 parms[95] 
 #define y1_0 parms[96] 
 #define y2_0 parms[97] 
 #define y3_0 parms[98] 
 #define y4_0 parms[99] 
 #define y5_0 parms[100] 
 #define y6_0 parms[101] 
 #define y7_0 parms[102] 
 #define y8_0 parms[103] 
 #define y9_0 parms[104] 
 #define y10_0 parms[105] 
 #define y11_0 parms[106] 
 #define y12_0 parms[107] 
 #define y13_0 parms[108] 
 #define y14_0 parms[109] 
 #define y15_0 parms[110] 
 #define y16_0 parms[111] 
 #define y17_0 parms[112] 
 #define y18_0 parms[113] 
 #define y19_0 parms[114] 
 #define y20_0 parms[115] 
 #define y21_0 parms[116] 
 #define y22_0 parms[117] 
 #define y23_0 parms[118] 
 #define y24_0 parms[119] 
 #define y25_0 parms[120] 
 #define y26_0 parms[121] 
 #define y27_0 parms[122] 
 #define y28_0 parms[123] 
 #define y29_0 parms[124] 
 #define y30_0 parms[125] 
 #define y31_0 parms[126] 
 #define y32_0 parms[127] 
 #define y33_0 parms[128] 
 #define y34_0 parms[129] 
 #define y35_0 parms[130] 
 #define y36_0 parms[131] 
 #define y37_0 parms[132] 
 #define y38_0 parms[133] 
 #define y39_0 parms[134] 
 #define y40_0 parms[135] 
 #define y41_0 parms[136] 
 #define y42_0 parms[137] 
 #define y43_0 parms[138] 
 #define y44_0 parms[139] 
 #define y45_0 parms[140] 
 #define y46_0 parms[141] 
 #define y47_0 parms[142] 
 #define y48_0 parms[143] 
 #define y49_0 parms[144] 
 #define y50_0 parms[145] 
 #define y51_0 parms[146] 
 #define y52_0 parms[147] 
 #define y53_0 parms[148] 
#define tmin range[0]
#define tmax range[1]


void methacetin_reduced_initmod(void (* odeparms)(int *, double *)) {
	 int N=149;
	 odeparms(&N, parms);
}

void methacetin_reduced_initforc(void (* odeforcs)(int *, double *)) {
	 int N=0;
	 odeforcs(&N, forc);
}

/** Derivatives (ODE system) **/
void methacetin_reduced_derivs (int *n, double *t, double *y, double *ydot, double *RPAR, int *IPAR) {

	 double time = *t;

	 ydot[0] = -1*(((MET2APAP_HLM_CL/fumic_metc13*MPPGL*(BW*FVli)*1/1))*1*((((y[0]/((BW*FVli)))*fup_metc13))/((((y[0]/((BW*FVli)))*fup_metc13))+MET2APAP_Km)))+1*((((CO/1*1)*FQgu))*(((y[22]/(BW*FVgu)))/Kpgu_metc13)*BP_metc13)+1*((((CO/1*1)*FQsp))*(((y[29]/(BW*FVsp)))/Kpsp_metc13)*BP_metc13)+1*((((((CO/1*1))*FQh)-(((CO/1*1))*FQgu)-(((CO/1*1))*FQsp)))*((y[27]/(BW*FVar))))-1*((((CO/1*1)*FQh))*(((y[0]/(BW*FVli)))/Kpli_metc13)*BP_metc13);
 	 ydot[1] = 1*(((MET2APAP_HLM_CL/fumic_metc13*MPPGL*(BW*FVli)*1/1))*1*((((y[0]/((BW*FVli)))*fup_metc13))/((((y[0]/((BW*FVli)))*fup_metc13))+MET2APAP_Km)))-1*(((APAPGLU_HLM_CL/fumic_apap_glu*MPPGL*(BW*FVli)*1/1))*1*((((y[1]/((BW*FVli)))*fup_apap))/((((y[1]/((BW*FVli)))*fup_apap))+APAPGLU_Km)))-1*(((APAPSUL_HLM_CL/fumic_apap_sul*MPPGL*(BW*FVli)*1/1))*1*((((y[1]/((BW*FVli)))*fup_apap))/((((y[1]/((BW*FVli)))*fup_apap))+APAPSUL_Km)))-1*(((APAPCYS_HLM_CL/fumic_apap_cys*MPPGL*(BW*FVli)*1/1))*1*((((y[1]/((BW*FVli)))*fup_apap))/((((y[1]/((BW*FVli)))*fup_apap))+APAPCYS_Km)))+1*((((CO/1*1)*FQgu))*(((y[14]/(BW*FVgu)))/Kpgu_apap)*BP_apap)+1*((((CO/1*1)*FQsp))*(((y[21]/(BW*FVsp)))/Kpsp_apap)*BP_apap)+1*((((((CO/1*1))*FQh)-(((CO/1*1))*FQgu)-(((CO/1*1))*FQsp)))*((y[19]/(BW*FVar))))-1*((((CO/1*1)*FQh))*(((y[1]/(BW*FVli)))/Kpli_apap)*BP_apap);
 	 ydot[2] = 1*(((MET2APAP_HLM_CL/fumic_metc13*MPPGL*(BW*FVli)*1/1))*1*((((y[0]/((BW*FVli)))*fup_metc13))/((((y[0]/((BW*FVli)))*fup_metc13))+MET2APAP_Km)))+1*((((CO/1*1)*FQgu))*(((y[46]/(BW*FVgu)))/Kpgu_co2c13)*BP_co2c13)+1*((((CO/1*1)*FQsp))*(((y[53]/(BW*FVsp)))/Kpsp_co2c13)*BP_co2c13)+1*((((((CO/1*1))*FQh)-(((CO/1*1))*FQgu)-(((CO/1*1))*FQsp)))*((y[51]/(BW*FVar))))-1*((((CO/1*1)*FQh))*(((y[2]/(BW*FVli)))/Kpli_co2c13)*BP_co2c13);
 	 ydot[3] = 1*(((APAPGLU_HLM_CL/fumic_apap_glu*MPPGL*(BW*FVli)*1/1))*1*((((y[1]/((BW*FVli)))*fup_apap))/((((y[1]/((BW*FVli)))*fup_apap))+APAPGLU_Km)))+1*((((CO/1*1)*FQgu))*(((y[38]/(BW*FVgu)))/Kpgu_apap_glu)*BP_apap_glu)+1*((((CO/1*1)*FQsp))*(((y[45]/(BW*FVsp)))/Kpsp_apap_glu)*BP_apap_glu)+1*((((((CO/1*1))*FQh)-(((CO/1*1))*FQgu)-(((CO/1*1))*FQsp)))*((y[43]/(BW*FVar))))-1*((((CO/1*1)*FQh))*(((y[3]/(BW*FVli)))/Kpli_apap_glu)*BP_apap_glu);
 	 ydot[4] = 1*(((APAPSUL_HLM_CL/fumic_apap_sul*MPPGL*(BW*FVli)*1/1))*1*((((y[1]/((BW*FVli)))*fup_apap))/((((y[1]/((BW*FVli)))*fup_apap))+APAPSUL_Km)))+1*((((CO/1*1)*FQgu))*(((y[6]/(BW*FVgu)))/Kpgu_apap_sul)*BP_apap_sul)+1*((((CO/1*1)*FQsp))*(((y[13]/(BW*FVsp)))/Kpsp_apap_sul)*BP_apap_sul)+1*((((((CO/1*1))*FQh)-(((CO/1*1))*FQgu)-(((CO/1*1))*FQsp)))*((y[11]/(BW*FVar))))-1*((((CO/1*1)*FQh))*(((y[4]/(BW*FVli)))/Kpli_apap_sul)*BP_apap_sul);
 	 ydot[5] = 1*(((APAPCYS_HLM_CL/fumic_apap_cys*MPPGL*(BW*FVli)*1/1))*1*((((y[1]/((BW*FVli)))*fup_apap))/((((y[1]/((BW*FVli)))*fup_apap))+APAPCYS_Km)))+1*((((CO/1*1)*FQgu))*(((y[30]/(BW*FVgu)))/Kpgu_apap_cys)*BP_apap_cys)+1*((((CO/1*1)*FQsp))*(((y[37]/(BW*FVsp)))/Kpsp_apap_cys)*BP_apap_cys)+1*((((((CO/1*1))*FQh)-(((CO/1*1))*FQgu)-(((CO/1*1))*FQsp)))*((y[35]/(BW*FVar))))-1*((((CO/1*1)*FQh))*(((y[5]/(BW*FVli)))/Kpli_apap_cys)*BP_apap_cys);
 	 ydot[6] = 1*(Ka_apap_sul*y[7]*F_apap_sul)+1*((((CO/1*1)*FQgu))*((y[11]/(BW*FVar))))-1*((((CO/1*1)*FQgu))*(((y[6]/(BW*FVgu)))/Kpgu_apap_sul)*BP_apap_sul);
 	 ydot[7] = -1*(Ka_apap_sul*y[7]*F_apap_sul);
 	 ydot[8] = -1*(CLrenal_apap_sul*(((y[8]/((BW*FVki)))*fup_apap_sul)))+1*((((CO/1*1)*FQki))*((y[11]/(BW*FVar))))-1*((((CO/1*1)*FQki))*(((y[8]/(BW*FVki)))/Kpki_apap_sul)*BP_apap_sul);
 	 ydot[9] = -1*((((CO/1*1)*FQlu))*((y[9]/(BW*FVve))))+1*((((CO/1*1)*FQre))*(((y[12]/(BW*FVre)))/Kpre_apap_sul)*BP_apap_sul)+1*((((CO/1*1)*FQki))*(((y[8]/(BW*FVki)))/Kpki_apap_sul)*BP_apap_sul)+1*((((CO/1*1)*FQh))*(((y[4]/(BW*FVli)))/Kpli_apap_sul)*BP_apap_sul);
 	 ydot[10] = 1*((((CO/1*1)*FQlu))*((y[9]/(BW*FVve))))-1*((((CO/1*1)*FQlu))*(((y[10]/(BW*FVlu)))/Kplu_apap_sul)*BP_apap_sul);
 	 ydot[11] = 1*((((CO/1*1)*FQlu))*(((y[10]/(BW*FVlu)))/Kplu_apap_sul)*BP_apap_sul)-1*((((CO/1*1)*FQre))*((y[11]/(BW*FVar))))-1*((((CO/1*1)*FQki))*((y[11]/(BW*FVar))))-1*((((CO/1*1)*FQgu))*((y[11]/(BW*FVar))))-1*((((CO/1*1)*FQsp))*((y[11]/(BW*FVar))))-1*((((((CO/1*1))*FQh)-(((CO/1*1))*FQgu)-(((CO/1*1))*FQsp)))*((y[11]/(BW*FVar))));
 	 ydot[12] = 1*((((CO/1*1)*FQre))*((y[11]/(BW*FVar))))-1*((((CO/1*1)*FQre))*(((y[12]/(BW*FVre)))/Kpre_apap_sul)*BP_apap_sul);
 	 ydot[13] = 1*((((CO/1*1)*FQsp))*((y[11]/(BW*FVar))))-1*((((CO/1*1)*FQsp))*(((y[13]/(BW*FVsp)))/Kpsp_apap_sul)*BP_apap_sul);
 	 ydot[14] = 1*(Ka_apap*y[15]*F_apap)+1*((((CO/1*1)*FQgu))*((y[19]/(BW*FVar))))-1*((((CO/1*1)*FQgu))*(((y[14]/(BW*FVgu)))/Kpgu_apap)*BP_apap);
 	 ydot[15] = -1*(Ka_apap*y[15]*F_apap);
 	 ydot[16] = -1*(CLrenal_apap*(((y[16]/((BW*FVki)))*fup_apap)))+1*((((CO/1*1)*FQki))*((y[19]/(BW*FVar))))-1*((((CO/1*1)*FQki))*(((y[16]/(BW*FVki)))/Kpki_apap)*BP_apap);
 	 ydot[17] = -1*((((CO/1*1)*FQlu))*((y[17]/(BW*FVve))))+1*((((CO/1*1)*FQre))*(((y[20]/(BW*FVre)))/Kpre_apap)*BP_apap)+1*((((CO/1*1)*FQki))*(((y[16]/(BW*FVki)))/Kpki_apap)*BP_apap)+1*((((CO/1*1)*FQh))*(((y[1]/(BW*FVli)))/Kpli_apap)*BP_apap);
 	 ydot[18] = 1*((((CO/1*1)*FQlu))*((y[17]/(BW*FVve))))-1*((((CO/1*1)*FQlu))*(((y[18]/(BW*FVlu)))/Kplu_apap)*BP_apap);
 	 ydot[19] = 1*((((CO/1*1)*FQlu))*(((y[18]/(BW*FVlu)))/Kplu_apap)*BP_apap)-1*((((CO/1*1)*FQre))*((y[19]/(BW*FVar))))-1*((((CO/1*1)*FQki))*((y[19]/(BW*FVar))))-1*((((CO/1*1)*FQgu))*((y[19]/(BW*FVar))))-1*((((CO/1*1)*FQsp))*((y[19]/(BW*FVar))))-1*((((((CO/1*1))*FQh)-(((CO/1*1))*FQgu)-(((CO/1*1))*FQsp)))*((y[19]/(BW*FVar))));
 	 ydot[20] = 1*((((CO/1*1)*FQre))*((y[19]/(BW*FVar))))-1*((((CO/1*1)*FQre))*(((y[20]/(BW*FVre)))/Kpre_apap)*BP_apap);
 	 ydot[21] = 1*((((CO/1*1)*FQsp))*((y[19]/(BW*FVar))))-1*((((CO/1*1)*FQsp))*(((y[21]/(BW*FVsp)))/Kpsp_apap)*BP_apap);
 	 ydot[22] = 1*(Ka_metc13*y[23]*F_metc13)+1*((((CO/1*1)*FQgu))*((y[27]/(BW*FVar))))-1*((((CO/1*1)*FQgu))*(((y[22]/(BW*FVgu)))/Kpgu_metc13)*BP_metc13);
 	 ydot[23] = -1*(Ka_metc13*y[23]*F_metc13);
 	 ydot[24] = -1*(CLrenal_metc13*(((y[24]/((BW*FVki)))*fup_metc13)))+1*((((CO/1*1)*FQki))*((y[27]/(BW*FVar))))-1*((((CO/1*1)*FQki))*(((y[24]/(BW*FVki)))/Kpki_metc13)*BP_metc13);
 	 ydot[25] = -1*((((CO/1*1)*FQlu))*((y[25]/(BW*FVve))))+1*((((CO/1*1)*FQre))*(((y[28]/(BW*FVre)))/Kpre_metc13)*BP_metc13)+1*((((CO/1*1)*FQki))*(((y[24]/(BW*FVki)))/Kpki_metc13)*BP_metc13)+1*((((CO/1*1)*FQh))*(((y[0]/(BW*FVli)))/Kpli_metc13)*BP_metc13);
 	 ydot[26] = 1*((((CO/1*1)*FQlu))*((y[25]/(BW*FVve))))-1*((((CO/1*1)*FQlu))*(((y[26]/(BW*FVlu)))/Kplu_metc13)*BP_metc13);
 	 ydot[27] = 1*((((CO/1*1)*FQlu))*(((y[26]/(BW*FVlu)))/Kplu_metc13)*BP_metc13)-1*((((CO/1*1)*FQre))*((y[27]/(BW*FVar))))-1*((((CO/1*1)*FQki))*((y[27]/(BW*FVar))))-1*((((CO/1*1)*FQgu))*((y[27]/(BW*FVar))))-1*((((CO/1*1)*FQsp))*((y[27]/(BW*FVar))))-1*((((((CO/1*1))*FQh)-(((CO/1*1))*FQgu)-(((CO/1*1))*FQsp)))*((y[27]/(BW*FVar))));
 	 ydot[28] = 1*((((CO/1*1)*FQre))*((y[27]/(BW*FVar))))-1*((((CO/1*1)*FQre))*(((y[28]/(BW*FVre)))/Kpre_metc13)*BP_metc13);
 	 ydot[29] = 1*((((CO/1*1)*FQsp))*((y[27]/(BW*FVar))))-1*((((CO/1*1)*FQsp))*(((y[29]/(BW*FVsp)))/Kpsp_metc13)*BP_metc13);
 	 ydot[30] = 1*(Ka_apap_cys*y[31]*F_apap_cys)+1*((((CO/1*1)*FQgu))*((y[35]/(BW*FVar))))-1*((((CO/1*1)*FQgu))*(((y[30]/(BW*FVgu)))/Kpgu_apap_cys)*BP_apap_cys);
 	 ydot[31] = -1*(Ka_apap_cys*y[31]*F_apap_cys);
 	 ydot[32] = -1*(CLrenal_apap_cys*(((y[32]/((BW*FVki)))*fup_apap_cys)))+1*((((CO/1*1)*FQki))*((y[35]/(BW*FVar))))-1*((((CO/1*1)*FQki))*(((y[32]/(BW*FVki)))/Kpki_apap_cys)*BP_apap_cys);
 	 ydot[33] = -1*((((CO/1*1)*FQlu))*((y[33]/(BW*FVve))))+1*((((CO/1*1)*FQre))*(((y[36]/(BW*FVre)))/Kpre_apap_cys)*BP_apap_cys)+1*((((CO/1*1)*FQki))*(((y[32]/(BW*FVki)))/Kpki_apap_cys)*BP_apap_cys)+1*((((CO/1*1)*FQh))*(((y[5]/(BW*FVli)))/Kpli_apap_cys)*BP_apap_cys);
 	 ydot[34] = 1*((((CO/1*1)*FQlu))*((y[33]/(BW*FVve))))-1*((((CO/1*1)*FQlu))*(((y[34]/(BW*FVlu)))/Kplu_apap_cys)*BP_apap_cys);
 	 ydot[35] = 1*((((CO/1*1)*FQlu))*(((y[34]/(BW*FVlu)))/Kplu_apap_cys)*BP_apap_cys)-1*((((CO/1*1)*FQre))*((y[35]/(BW*FVar))))-1*((((CO/1*1)*FQki))*((y[35]/(BW*FVar))))-1*((((CO/1*1)*FQgu))*((y[35]/(BW*FVar))))-1*((((CO/1*1)*FQsp))*((y[35]/(BW*FVar))))-1*((((((CO/1*1))*FQh)-(((CO/1*1))*FQgu)-(((CO/1*1))*FQsp)))*((y[35]/(BW*FVar))));
 	 ydot[36] = 1*((((CO/1*1)*FQre))*((y[35]/(BW*FVar))))-1*((((CO/1*1)*FQre))*(((y[36]/(BW*FVre)))/Kpre_apap_cys)*BP_apap_cys);
 	 ydot[37] = 1*((((CO/1*1)*FQsp))*((y[35]/(BW*FVar))))-1*((((CO/1*1)*FQsp))*(((y[37]/(BW*FVsp)))/Kpsp_apap_cys)*BP_apap_cys);
 	 ydot[38] = 1*(Ka_apap_glu*y[39]*F_apap_glu)+1*((((CO/1*1)*FQgu))*((y[43]/(BW*FVar))))-1*((((CO/1*1)*FQgu))*(((y[38]/(BW*FVgu)))/Kpgu_apap_glu)*BP_apap_glu);
 	 ydot[39] = -1*(Ka_apap_glu*y[39]*F_apap_glu);
 	 ydot[40] = -1*(CLrenal_apap_glu*(((y[40]/((BW*FVki)))*fup_apap_glu)))+1*((((CO/1*1)*FQki))*((y[43]/(BW*FVar))))-1*((((CO/1*1)*FQki))*(((y[40]/(BW*FVki)))/Kpki_apap_glu)*BP_apap_glu);
 	 ydot[41] = -1*((((CO/1*1)*FQlu))*((y[41]/(BW*FVve))))+1*((((CO/1*1)*FQre))*(((y[44]/(BW*FVre)))/Kpre_apap_glu)*BP_apap_glu)+1*((((CO/1*1)*FQki))*(((y[40]/(BW*FVki)))/Kpki_apap_glu)*BP_apap_glu)+1*((((CO/1*1)*FQh))*(((y[3]/(BW*FVli)))/Kpli_apap_glu)*BP_apap_glu);
 	 ydot[42] = 1*((((CO/1*1)*FQlu))*((y[41]/(BW*FVve))))-1*((((CO/1*1)*FQlu))*(((y[42]/(BW*FVlu)))/Kplu_apap_glu)*BP_apap_glu);
 	 ydot[43] = 1*((((CO/1*1)*FQlu))*(((y[42]/(BW*FVlu)))/Kplu_apap_glu)*BP_apap_glu)-1*((((CO/1*1)*FQre))*((y[43]/(BW*FVar))))-1*((((CO/1*1)*FQki))*((y[43]/(BW*FVar))))-1*((((CO/1*1)*FQgu))*((y[43]/(BW*FVar))))-1*((((CO/1*1)*FQsp))*((y[43]/(BW*FVar))))-1*((((((CO/1*1))*FQh)-(((CO/1*1))*FQgu)-(((CO/1*1))*FQsp)))*((y[43]/(BW*FVar))));
 	 ydot[44] = 1*((((CO/1*1)*FQre))*((y[43]/(BW*FVar))))-1*((((CO/1*1)*FQre))*(((y[44]/(BW*FVre)))/Kpre_apap_glu)*BP_apap_glu);
 	 ydot[45] = 1*((((CO/1*1)*FQsp))*((y[43]/(BW*FVar))))-1*((((CO/1*1)*FQsp))*(((y[45]/(BW*FVsp)))/Kpsp_apap_glu)*BP_apap_glu);
 	 ydot[46] = 1*(Ka_co2c13*y[47]*F_co2c13)+1*((((CO/1*1)*FQgu))*((y[51]/(BW*FVar))))-1*((((CO/1*1)*FQgu))*(((y[46]/(BW*FVgu)))/Kpgu_co2c13)*BP_co2c13);
 	 ydot[47] = -1*(Ka_co2c13*y[47]*F_co2c13);
 	 ydot[48] = -1*(CLrenal_co2c13*(((y[48]/((BW*FVki)))*fup_co2c13)))+1*((((CO/1*1)*FQki))*((y[51]/(BW*FVar))))-1*((((CO/1*1)*FQki))*(((y[48]/(BW*FVki)))/Kpki_co2c13)*BP_co2c13);
 	 ydot[49] = -1*((((CO/1*1)*FQlu))*((y[49]/(BW*FVve))))+1*((((CO/1*1)*FQre))*(((y[52]/(BW*FVre)))/Kpre_co2c13)*BP_co2c13)+1*((((CO/1*1)*FQki))*(((y[48]/(BW*FVki)))/Kpki_co2c13)*BP_co2c13)+1*((((CO/1*1)*FQh))*(((y[2]/(BW*FVli)))/Kpli_co2c13)*BP_co2c13);
 	 ydot[50] = 1*((((CO/1*1)*FQlu))*((y[49]/(BW*FVve))))-1*((((CO/1*1)*FQlu))*(((y[50]/(BW*FVlu)))/Kplu_co2c13)*BP_co2c13);
 	 ydot[51] = 1*((((CO/1*1)*FQlu))*(((y[50]/(BW*FVlu)))/Kplu_co2c13)*BP_co2c13)-1*((((CO/1*1)*FQre))*((y[51]/(BW*FVar))))-1*((((CO/1*1)*FQki))*((y[51]/(BW*FVar))))-1*((((CO/1*1)*FQgu))*((y[51]/(BW*FVar))))-1*((((CO/1*1)*FQsp))*((y[51]/(BW*FVar))))-1*((((((CO/1*1))*FQh)-(((CO/1*1))*FQgu)-(((CO/1*1))*FQsp)))*((y[51]/(BW*FVar))));
 	 ydot[52] = 1*((((CO/1*1)*FQre))*((y[51]/(BW*FVar))))-1*((((CO/1*1)*FQre))*(((y[52]/(BW*FVre)))/Kpre_co2c13)*BP_co2c13);
 	 ydot[53] = 1*((((CO/1*1)*FQsp))*((y[51]/(BW*FVar))))-1*((((CO/1*1)*FQsp))*(((y[53]/(BW*FVsp)))/Kpsp_co2c13)*BP_co2c13);

}

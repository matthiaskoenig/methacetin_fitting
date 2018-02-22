<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.22 (Build 170) (http://www.copasi.org) at 2018-02-22 18:21:40 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="22" versionDevel="170" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_306" name="Function for CYP1A2MET" type="UserDefined" reversible="unspecified">
      <Expression>
        CYP1A2MET_CLliv*1*(Cli_free_metc13/(Cli_free_metc13+CYP1A2MET_Km_met))/Vli
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1313" name="CYP1A2MET_CLliv" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1314" name="CYP1A2MET_Km_met" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1315" name="Cli_free_metc13" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1316" name="Vli" order="3" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_307" name="Function for CO2FIX" type="UserDefined" reversible="unspecified">
      <Expression>
        CO2FIX_CLliv*1*(Cli_co2c13/(Cli_co2c13+CO2FIX_Km_co2))/Vli
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1321" name="CO2FIX_CLliv" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1322" name="CO2FIX_Km_co2" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1323" name="Cli_co2c13" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1324" name="Vli" order="3" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_308" name="Function for APAPD" type="UserDefined" reversible="unspecified">
      <Expression>
        APAPD_CLliv*1*(Cli_free_apap/(Cli_free_apap+APAPD_Km_apap))/Vli
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1329" name="APAPD_CLliv" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1330" name="APAPD_Km_apap" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1331" name="Cli_free_apap" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1332" name="Vli" order="3" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_309" name="Function for Exhalation_co2c13" type="UserDefined" reversible="unspecified">
      <Expression>
        KLU_EXCO2*60*Clu_co2c13*Vlu
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1309" name="Clu_co2c13" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1337" name="KLU_EXCO2" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1338" name="Vlu" order="2" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_310" name="Function for Fixation_co2c13" type="UserDefined" reversible="unspecified">
      <Expression>
        KBO_FIXCO2*60*Cve_co2c13*Vve*(1-Cbo_co2c13_fix/KBO_MAXCO2)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1344" name="Cbo_co2c13_fix" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1345" name="Cve_co2c13" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1346" name="KBO_FIXCO2" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1347" name="KBO_MAXCO2" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_1348" name="Vve" order="4" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_311" name="Function for Release_co2c13" type="UserDefined" reversible="unspecified">
      <Expression>
        KBO_RELCO2*60*Cbo_co2c13_fix*Vve
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1312" name="Cbo_co2c13_fix" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1342" name="KBO_RELCO2" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1354" name="Vve" order="2" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_312" name="Function for Injection_co2c13" type="UserDefined" reversible="false">
      <Expression>
        Ki_co2c13*DIV_co2c13/Mr_co2c13/Vve
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1359" name="DIV_co2c13" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1360" name="Ki_co2c13" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1361" name="Mr_co2c13" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1362" name="Vve" order="3" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_313" name="Function for Infusion_co2c13" type="UserDefined" reversible="false">
      <Expression>
        Ri_co2c13/Mr_co2c13*60/Vve
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1310" name="Mr_co2c13" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1367" name="Ri_co2c13" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1368" name="Vve" order="2" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_314" name="Function for Absorption_co2c13" type="UserDefined" reversible="false">
      <Expression>
        Ka_co2c13*D_co2c13/Mr_co2c13*F_co2c13/Vgu
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1374" name="D_co2c13" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1375" name="F_co2c13" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1376" name="Ka_co2c13" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1377" name="Mr_co2c13" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_1378" name="Vgu" order="4" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_315" name="Function for vre_co2c13" type="UserDefined" reversible="unspecified">
      <Expression>
        CLrenal_co2c13*Cki_free_co2c13
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1311" name="CLrenal_co2c13" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1372" name="Cki_free_co2c13" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_316" name="Function for ve_lu_co2c13" type="UserDefined" reversible="unspecified">
      <Expression>
        Qlu*Cve_co2c13
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1385" name="Cve_co2c13" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1386" name="Qlu" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_317" name="Function for lu_ar_co2c13" type="UserDefined" reversible="unspecified">
      <Expression>
        Qlu*(Clu_co2c13/Kplu_co2c13)*BP_co2c13
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1391" name="BP_co2c13" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1392" name="Clu_co2c13" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1393" name="Kplu_co2c13" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1394" name="Qlu" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_318" name="Function for ar_re_co2c13" type="UserDefined" reversible="unspecified">
      <Expression>
        Qre*Car_co2c13
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1373" name="Car_co2c13" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1390" name="Qre" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_319" name="Function for re_ve_co2c13" type="UserDefined" reversible="unspecified">
      <Expression>
        Qre*(Cre_co2c13/Kpre_co2c13)*BP_co2c13
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1403" name="BP_co2c13" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1404" name="Cre_co2c13" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1405" name="Kpre_co2c13" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1406" name="Qre" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_320" name="Function for ar_bo_co2c13" type="UserDefined" reversible="unspecified">
      <Expression>
        Qbo*Car_co2c13
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1389" name="Car_co2c13" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1402" name="Qbo" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_321" name="Function for bo_ve_co2c13" type="UserDefined" reversible="unspecified">
      <Expression>
        Qbo*(Cbo_co2c13/Kpbo_co2c13)*BP_co2c13
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1415" name="BP_co2c13" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1416" name="Cbo_co2c13" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1417" name="Kpbo_co2c13" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1418" name="Qbo" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_322" name="Function for ar_gu_co2c13" type="UserDefined" reversible="unspecified">
      <Expression>
        Qgu*Car_co2c13
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1401" name="Car_co2c13" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1414" name="Qgu" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_323" name="Function for gu_li_co2c13" type="UserDefined" reversible="unspecified">
      <Expression>
        Qgu*(Cgu_co2c13/Kpgu_co2c13)*BP_co2c13
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1427" name="BP_co2c13" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1428" name="Cgu_co2c13" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1429" name="Kpgu_co2c13" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1430" name="Qgu" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_324" name="Function for ar_he_co2c13" type="UserDefined" reversible="unspecified">
      <Expression>
        Qhe*Car_co2c13
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1413" name="Car_co2c13" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1426" name="Qhe" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_325" name="Function for he_ve_co2c13" type="UserDefined" reversible="unspecified">
      <Expression>
        Qhe*(Che_co2c13/Kphe_co2c13)*BP_co2c13
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1439" name="BP_co2c13" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1440" name="Che_co2c13" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1441" name="Kphe_co2c13" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1442" name="Qhe" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_326" name="Function for ar_ki_co2c13" type="UserDefined" reversible="unspecified">
      <Expression>
        Qki*Car_co2c13
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1425" name="Car_co2c13" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1438" name="Qki" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_327" name="Function for ki_ve_co2c13" type="UserDefined" reversible="unspecified">
      <Expression>
        Qki*(Cki_co2c13/Kpki_co2c13)*BP_co2c13
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1451" name="BP_co2c13" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1452" name="Cki_co2c13" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1453" name="Kpki_co2c13" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1454" name="Qki" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_328" name="Function for ar_sp_co2c13" type="UserDefined" reversible="unspecified">
      <Expression>
        Qsp*Car_co2c13
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1437" name="Car_co2c13" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1450" name="Qsp" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_329" name="Function for sp_li_co2c13" type="UserDefined" reversible="unspecified">
      <Expression>
        Qsp*(Csp_co2c13/Kpsp_co2c13)*BP_co2c13
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1463" name="BP_co2c13" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1464" name="Csp_co2c13" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1465" name="Kpsp_co2c13" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1466" name="Qsp" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_330" name="Function for ar_li_co2c13" type="UserDefined" reversible="unspecified">
      <Expression>
        Qha*Car_co2c13
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1449" name="Car_co2c13" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1462" name="Qha" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_331" name="Function for li_ve_co2c13" type="UserDefined" reversible="unspecified">
      <Expression>
        Qh*(Cli_co2c13/Kpli_co2c13)*BP_co2c13
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1475" name="BP_co2c13" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1476" name="Cli_co2c13" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1477" name="Kpli_co2c13" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1478" name="Qh" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_332" name="Function for Injection_metc13" type="UserDefined" reversible="false">
      <Expression>
        Ki_metc13*DIV_metc13/Mr_metc13/Vve
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1483" name="DIV_metc13" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1484" name="Ki_metc13" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1485" name="Mr_metc13" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1486" name="Vve" order="3" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_333" name="Function for Infusion_metc13" type="UserDefined" reversible="false">
      <Expression>
        Ri_metc13/Mr_metc13*60/Vve
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1473" name="Mr_metc13" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1491" name="Ri_metc13" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1492" name="Vve" order="2" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_334" name="Function for Absorption_metc13" type="UserDefined" reversible="false">
      <Expression>
        Ka_metc13*D_metc13/Mr_metc13*F_metc13/Vgu
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1498" name="D_metc13" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1499" name="F_metc13" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1500" name="Ka_metc13" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1501" name="Mr_metc13" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_1502" name="Vgu" order="4" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_335" name="Function for vre_metc13" type="UserDefined" reversible="unspecified">
      <Expression>
        CLrenal_metc13*Cki_free_metc13
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1343" name="CLrenal_metc13" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1496" name="Cki_free_metc13" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_336" name="Function for ve_lu_metc13" type="UserDefined" reversible="unspecified">
      <Expression>
        Qlu*Cve_metc13
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1509" name="Cve_metc13" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1510" name="Qlu" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_337" name="Function for lu_ar_metc13" type="UserDefined" reversible="unspecified">
      <Expression>
        Qlu*(Clu_metc13/Kplu_metc13)*BP_metc13
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1515" name="BP_metc13" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1516" name="Clu_metc13" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1517" name="Kplu_metc13" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1518" name="Qlu" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_338" name="Function for ar_re_metc13" type="UserDefined" reversible="unspecified">
      <Expression>
        Qre*Car_metc13
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1497" name="Car_metc13" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1514" name="Qre" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_339" name="Function for re_ve_metc13" type="UserDefined" reversible="unspecified">
      <Expression>
        Qre*(Cre_metc13/Kpre_metc13)*BP_metc13
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1527" name="BP_metc13" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1528" name="Cre_metc13" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1529" name="Kpre_metc13" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1530" name="Qre" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_340" name="Function for ar_bo_metc13" type="UserDefined" reversible="unspecified">
      <Expression>
        Qbo*Car_metc13
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1513" name="Car_metc13" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1526" name="Qbo" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_341" name="Function for bo_ve_metc13" type="UserDefined" reversible="unspecified">
      <Expression>
        Qbo*(Cbo_metc13/Kpbo_metc13)*BP_metc13
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1539" name="BP_metc13" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1540" name="Cbo_metc13" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1541" name="Kpbo_metc13" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1542" name="Qbo" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_342" name="Function for ar_gu_metc13" type="UserDefined" reversible="unspecified">
      <Expression>
        Qgu*Car_metc13
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1525" name="Car_metc13" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1538" name="Qgu" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_343" name="Function for gu_li_metc13" type="UserDefined" reversible="unspecified">
      <Expression>
        Qgu*(Cgu_metc13/Kpgu_metc13)*BP_metc13
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1551" name="BP_metc13" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1552" name="Cgu_metc13" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1553" name="Kpgu_metc13" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1554" name="Qgu" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_344" name="Function for ar_he_metc13" type="UserDefined" reversible="unspecified">
      <Expression>
        Qhe*Car_metc13
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1537" name="Car_metc13" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1550" name="Qhe" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_345" name="Function for he_ve_metc13" type="UserDefined" reversible="unspecified">
      <Expression>
        Qhe*(Che_metc13/Kphe_metc13)*BP_metc13
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1563" name="BP_metc13" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1564" name="Che_metc13" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1565" name="Kphe_metc13" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1566" name="Qhe" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_346" name="Function for ar_ki_metc13" type="UserDefined" reversible="unspecified">
      <Expression>
        Qki*Car_metc13
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1549" name="Car_metc13" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1562" name="Qki" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_347" name="Function for ki_ve_metc13" type="UserDefined" reversible="unspecified">
      <Expression>
        Qki*(Cki_metc13/Kpki_metc13)*BP_metc13
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1575" name="BP_metc13" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1576" name="Cki_metc13" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1577" name="Kpki_metc13" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1578" name="Qki" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_348" name="Function for ar_sp_metc13" type="UserDefined" reversible="unspecified">
      <Expression>
        Qsp*Car_metc13
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1561" name="Car_metc13" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1574" name="Qsp" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_349" name="Function for sp_li_metc13" type="UserDefined" reversible="unspecified">
      <Expression>
        Qsp*(Csp_metc13/Kpsp_metc13)*BP_metc13
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1587" name="BP_metc13" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1588" name="Csp_metc13" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1589" name="Kpsp_metc13" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1590" name="Qsp" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_350" name="Function for ar_li_metc13" type="UserDefined" reversible="unspecified">
      <Expression>
        Qha*Car_metc13
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1573" name="Car_metc13" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1586" name="Qha" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_351" name="Function for li_ve_metc13" type="UserDefined" reversible="unspecified">
      <Expression>
        Qh*(Cli_metc13/Kpli_metc13)*BP_metc13
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1599" name="BP_metc13" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1600" name="Cli_metc13" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1601" name="Kpli_metc13" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1602" name="Qh" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_352" name="Function for Injection_apap" type="UserDefined" reversible="false">
      <Expression>
        Ki_apap*DIV_apap/Mr_apap/Vve
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1607" name="DIV_apap" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1608" name="Ki_apap" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1609" name="Mr_apap" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1610" name="Vve" order="3" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_353" name="Function for Infusion_apap" type="UserDefined" reversible="false">
      <Expression>
        Ri_apap/Mr_apap*60/Vve
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1597" name="Mr_apap" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1615" name="Ri_apap" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1616" name="Vve" order="2" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_354" name="Function for Absorption_apap" type="UserDefined" reversible="false">
      <Expression>
        Ka_apap*D_apap/Mr_apap*F_apap/Vgu
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1622" name="D_apap" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1623" name="F_apap" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1624" name="Ka_apap" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1625" name="Mr_apap" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_1626" name="Vgu" order="4" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_355" name="Function for vre_apap" type="UserDefined" reversible="unspecified">
      <Expression>
        CLrenal_apap*Cki_free_apap
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1461" name="CLrenal_apap" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1620" name="Cki_free_apap" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_356" name="Function for ve_lu_apap" type="UserDefined" reversible="unspecified">
      <Expression>
        Qlu*Cve_apap
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1633" name="Cve_apap" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1634" name="Qlu" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_357" name="Function for lu_ar_apap" type="UserDefined" reversible="unspecified">
      <Expression>
        Qlu*(Clu_apap/Kplu_apap)*BP_apap
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1639" name="BP_apap" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1640" name="Clu_apap" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1641" name="Kplu_apap" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1642" name="Qlu" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_358" name="Function for ar_re_apap" type="UserDefined" reversible="unspecified">
      <Expression>
        Qre*Car_apap
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1621" name="Car_apap" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1638" name="Qre" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_359" name="Function for re_ve_apap" type="UserDefined" reversible="unspecified">
      <Expression>
        Qre*(Cre_apap/Kpre_apap)*BP_apap
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1651" name="BP_apap" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1652" name="Cre_apap" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1653" name="Kpre_apap" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1654" name="Qre" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_360" name="Function for ar_bo_apap" type="UserDefined" reversible="unspecified">
      <Expression>
        Qbo*Car_apap
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1637" name="Car_apap" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1650" name="Qbo" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_361" name="Function for bo_ve_apap" type="UserDefined" reversible="unspecified">
      <Expression>
        Qbo*(Cbo_apap/Kpbo_apap)*BP_apap
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1663" name="BP_apap" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1664" name="Cbo_apap" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1665" name="Kpbo_apap" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1666" name="Qbo" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_362" name="Function for ar_gu_apap" type="UserDefined" reversible="unspecified">
      <Expression>
        Qgu*Car_apap
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1649" name="Car_apap" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1662" name="Qgu" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_363" name="Function for gu_li_apap" type="UserDefined" reversible="unspecified">
      <Expression>
        Qgu*(Cgu_apap/Kpgu_apap)*BP_apap
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1675" name="BP_apap" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1676" name="Cgu_apap" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1677" name="Kpgu_apap" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1678" name="Qgu" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_364" name="Function for ar_he_apap" type="UserDefined" reversible="unspecified">
      <Expression>
        Qhe*Car_apap
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1661" name="Car_apap" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1674" name="Qhe" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_365" name="Function for he_ve_apap" type="UserDefined" reversible="unspecified">
      <Expression>
        Qhe*(Che_apap/Kphe_apap)*BP_apap
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1687" name="BP_apap" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1688" name="Che_apap" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1689" name="Kphe_apap" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1690" name="Qhe" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_366" name="Function for ar_ki_apap" type="UserDefined" reversible="unspecified">
      <Expression>
        Qki*Car_apap
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1673" name="Car_apap" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1686" name="Qki" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_367" name="Function for ki_ve_apap" type="UserDefined" reversible="unspecified">
      <Expression>
        Qki*(Cki_apap/Kpki_apap)*BP_apap
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1699" name="BP_apap" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1700" name="Cki_apap" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1701" name="Kpki_apap" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1702" name="Qki" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_368" name="Function for ar_sp_apap" type="UserDefined" reversible="unspecified">
      <Expression>
        Qsp*Car_apap
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1685" name="Car_apap" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1698" name="Qsp" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_369" name="Function for sp_li_apap" type="UserDefined" reversible="unspecified">
      <Expression>
        Qsp*(Csp_apap/Kpsp_apap)*BP_apap
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1711" name="BP_apap" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1712" name="Csp_apap" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1713" name="Kpsp_apap" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1714" name="Qsp" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_370" name="Function for ar_li_apap" type="UserDefined" reversible="unspecified">
      <Expression>
        Qha*Car_apap
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1697" name="Car_apap" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1710" name="Qha" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_371" name="Function for li_ve_apap" type="UserDefined" reversible="unspecified">
      <Expression>
        Qh*(Cli_apap/Kpli_apap)*BP_apap
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1723" name="BP_apap" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1724" name="Cli_apap" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1725" name="Kpli_apap" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1726" name="Qh" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_1" name="limax_pkpd_37_1" simulationType="time" timeUnit="h" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="mmol" type="deterministic" avogadroConstant="6.0221417899999999e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-21T16:22:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>konigmatt@googlemail.com</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Koenig</vCard:Family>
                <vCard:Given>Matthias</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>Humboldt-University Berlin, Institute for Theoretical Biology</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:creator>
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-21T16:22:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      
  <body xmlns="http://www.w3.org/1999/xhtml">
    <h1>PKPD model for methacetin based liver function tests.</h1>
    <h2>Description</h2>
    <p>
        This model is a physiological pharmacokinetic/pharmacodynamics model (PKPD) for the
        absorption, distribution, metabolism and elimination of methacetin, bicarbonate and paracetamol 
        encoded in <a href="http://sbml.org">SBML</a> format.<br/></p>
    <div class="dc:provenance">The content of this model has been carefully created in a manual research effort.</div>
    <div class="dc:publisher">This file has been created by
    <a href="https://livermetabolism.com/contact.html" title="Matthias Koenig" target="_blank">Matthias Koenig</a>.</div>
    <h2>Terms of use</h2>
    <div class="dc:rightsHolder">Copyright © 2018 Matthias Koenig.</div>
    <div class="dc:license">
      <p>Redistribution and use of any part of this model, with or without modification, are permitted provided
        that the following conditions are met:
        <ol>
        <li>Redistributions of this SBML file must retain the above copyright notice, this list of conditions and
          the following disclaimer.</li>
        <li>Redistributions in a different form must reproduce the above copyright notice, this list of conditions
          and the following disclaimer in the documentation and/or other materials provided
          with the distribution.</li>
      </ol>
        This model is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the
        implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
        </p>
    </div>
  </body>

    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_15" name="Vre" simulationType="assignment" dimensionality="3">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[BW],Reference=Value>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[FVre],Reference=Value>
        </Expression>
      </Compartment>
      <Compartment key="Compartment_16" name="Vbo" simulationType="assignment" dimensionality="3">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[BW],Reference=Value>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[FVbo],Reference=Value>
        </Expression>
      </Compartment>
      <Compartment key="Compartment_17" name="Vhe" simulationType="assignment" dimensionality="3">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[BW],Reference=Value>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[FVhe],Reference=Value>
        </Expression>
      </Compartment>
      <Compartment key="Compartment_18" name="Vgu" simulationType="assignment" dimensionality="3">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[BW],Reference=Value>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[FVgu],Reference=Value>
        </Expression>
      </Compartment>
      <Compartment key="Compartment_19" name="Vki" simulationType="assignment" dimensionality="3">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[BW],Reference=Value>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[FVki],Reference=Value>
        </Expression>
      </Compartment>
      <Compartment key="Compartment_20" name="Vli" simulationType="assignment" dimensionality="3">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[BW],Reference=Value>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[FVli],Reference=Value>
        </Expression>
      </Compartment>
      <Compartment key="Compartment_21" name="Vlu" simulationType="assignment" dimensionality="3">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[BW],Reference=Value>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[FVlu],Reference=Value>
        </Expression>
      </Compartment>
      <Compartment key="Compartment_22" name="Vsp" simulationType="assignment" dimensionality="3">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[BW],Reference=Value>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[FVsp],Reference=Value>
        </Expression>
      </Compartment>
      <Compartment key="Compartment_23" name="Vve" simulationType="assignment" dimensionality="3">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[BW],Reference=Value>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[FVve],Reference=Value>
        </Expression>
      </Compartment>
      <Compartment key="Compartment_24" name="Var" simulationType="assignment" dimensionality="3">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[BW],Reference=Value>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[FVar],Reference=Value>
        </Expression>
      </Compartment>
      <Compartment key="Compartment_25" name="Vpl" simulationType="assignment" dimensionality="3">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[BW],Reference=Value>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[FVpl],Reference=Value>
        </Expression>
      </Compartment>
      <Compartment key="Compartment_26" name="Vplas_ven" simulationType="assignment" dimensionality="3">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vpl],Reference=Volume>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vve],Reference=Volume>/(&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vve],Reference=Volume>+&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Var],Reference=Volume>)
        </Expression>
      </Compartment>
      <Compartment key="Compartment_27" name="Vplas_art" simulationType="assignment" dimensionality="3">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vpl],Reference=Volume>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Var],Reference=Volume>/(&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vve],Reference=Volume>+&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Var],Reference=Volume>)
        </Expression>
      </Compartment>
      <Compartment key="Compartment_28" name="Vbreath" simulationType="fixed" dimensionality="3">
      </Compartment>
      <Compartment key="Compartment_29" name="Vurine" simulationType="fixed" dimensionality="3">
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_35" name="Ahe_co2c13" simulationType="reactions" compartment="Compartment_17">
      </Metabolite>
      <Metabolite key="Metabolite_36" name="Agu_co2c13" simulationType="reactions" compartment="Compartment_18">
      </Metabolite>
      <Metabolite key="Metabolite_37" name="Are_co2c13" simulationType="reactions" compartment="Compartment_15">
      </Metabolite>
      <Metabolite key="Metabolite_38" name="Aki_co2c13" simulationType="reactions" compartment="Compartment_19">
      </Metabolite>
      <Metabolite key="Metabolite_39" name="Asp_co2c13" simulationType="reactions" compartment="Compartment_22">
      </Metabolite>
      <Metabolite key="Metabolite_40" name="Ali_co2c13" simulationType="reactions" compartment="Compartment_20">
      </Metabolite>
      <Metabolite key="Metabolite_41" name="Ave_co2c13" simulationType="reactions" compartment="Compartment_23">
      </Metabolite>
      <Metabolite key="Metabolite_42" name="Aar_co2c13" simulationType="reactions" compartment="Compartment_24">
      </Metabolite>
      <Metabolite key="Metabolite_43" name="Abo_co2c13" simulationType="reactions" compartment="Compartment_16">
      </Metabolite>
      <Metabolite key="Metabolite_44" name="Alu_co2c13" simulationType="reactions" compartment="Compartment_21">
      </Metabolite>
      <Metabolite key="Metabolite_45" name="Aurine_co2c13" simulationType="reactions" compartment="Compartment_29">
      </Metabolite>
      <Metabolite key="Metabolite_46" name="Ahe_metc13" simulationType="reactions" compartment="Compartment_17">
      </Metabolite>
      <Metabolite key="Metabolite_47" name="Agu_metc13" simulationType="reactions" compartment="Compartment_18">
      </Metabolite>
      <Metabolite key="Metabolite_48" name="Are_metc13" simulationType="reactions" compartment="Compartment_15">
      </Metabolite>
      <Metabolite key="Metabolite_49" name="Aki_metc13" simulationType="reactions" compartment="Compartment_19">
      </Metabolite>
      <Metabolite key="Metabolite_50" name="Asp_metc13" simulationType="reactions" compartment="Compartment_22">
      </Metabolite>
      <Metabolite key="Metabolite_51" name="Ali_metc13" simulationType="reactions" compartment="Compartment_20">
      </Metabolite>
      <Metabolite key="Metabolite_52" name="Ave_metc13" simulationType="reactions" compartment="Compartment_23">
      </Metabolite>
      <Metabolite key="Metabolite_53" name="Aar_metc13" simulationType="reactions" compartment="Compartment_24">
      </Metabolite>
      <Metabolite key="Metabolite_54" name="Abo_metc13" simulationType="reactions" compartment="Compartment_16">
      </Metabolite>
      <Metabolite key="Metabolite_55" name="Alu_metc13" simulationType="reactions" compartment="Compartment_21">
      </Metabolite>
      <Metabolite key="Metabolite_56" name="Aurine_metc13" simulationType="reactions" compartment="Compartment_29">
      </Metabolite>
      <Metabolite key="Metabolite_57" name="Ahe_apap" simulationType="reactions" compartment="Compartment_17">
      </Metabolite>
      <Metabolite key="Metabolite_58" name="Agu_apap" simulationType="reactions" compartment="Compartment_18">
      </Metabolite>
      <Metabolite key="Metabolite_59" name="Are_apap" simulationType="reactions" compartment="Compartment_15">
      </Metabolite>
      <Metabolite key="Metabolite_60" name="Aki_apap" simulationType="reactions" compartment="Compartment_19">
      </Metabolite>
      <Metabolite key="Metabolite_61" name="Asp_apap" simulationType="reactions" compartment="Compartment_22">
      </Metabolite>
      <Metabolite key="Metabolite_62" name="Ali_apap" simulationType="reactions" compartment="Compartment_20">
      </Metabolite>
      <Metabolite key="Metabolite_63" name="Ave_apap" simulationType="reactions" compartment="Compartment_23">
      </Metabolite>
      <Metabolite key="Metabolite_64" name="Aar_apap" simulationType="reactions" compartment="Compartment_24">
      </Metabolite>
      <Metabolite key="Metabolite_65" name="Abo_apap" simulationType="reactions" compartment="Compartment_16">
      </Metabolite>
      <Metabolite key="Metabolite_66" name="Alu_apap" simulationType="reactions" compartment="Compartment_21">
      </Metabolite>
      <Metabolite key="Metabolite_67" name="Aurine_apap" simulationType="reactions" compartment="Compartment_29">
      </Metabolite>
      <Metabolite key="Metabolite_68" name="Abreath_co2c13" simulationType="reactions" compartment="Compartment_28">
      </Metabolite>
      <Metabolite key="Metabolite_69" name="Abo_co2c13_fix" simulationType="reactions" compartment="Compartment_16">
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_238" name="BW" simulationType="fixed">
        <Unit>
          kg
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_239" name="HEIGHT" simulationType="fixed">
        <Unit>
          0.01*m
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_240" name="HR" simulationType="fixed">
        <Unit>
          1/(0.0166667*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_241" name="HRrest" simulationType="fixed">
        <Unit>
          1/(0.0166667*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_242" name="BSA" simulationType="assignment">
        <Expression>
          0.024264999999999998*(&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[BW],Reference=Value>/1)^0.53779999999999994*(&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[HEIGHT],Reference=Value>/1)^0.39639999999999997
        </Expression>
        <Unit>
          m²
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_243" name="COBW" simulationType="fixed">
        <Unit>
          l/(g*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_244" name="CO" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[BW],Reference=Value>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[COBW],Reference=Value>+(&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[HR],Reference=Value>-&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[HRrest],Reference=Value>)*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[COHRI],Reference=Value>/60
        </Expression>
        <Unit>
          ml/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_245" name="QC" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[CO],Reference=Value>/1000*3600
        </Expression>
        <Unit>
          3.6*kl/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_246" name="COHRI" simulationType="fixed">
        <Unit>
          ml
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_247" name="FVre" simulationType="assignment">
        <Expression>
          1-(&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[FVbo],Reference=Value>+&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[FVhe],Reference=Value>+&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[FVgu],Reference=Value>+&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[FVki],Reference=Value>+&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[FVli],Reference=Value>+&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[FVlu],Reference=Value>+&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[FVsp],Reference=Value>+&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[FVve],Reference=Value>+&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[FVar],Reference=Value>+&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[FVpl],Reference=Value>)
        </Expression>
        <Unit>
          kl/g
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_248" name="FVbo" simulationType="fixed">
        <Unit>
          kl/g
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_249" name="FVhe" simulationType="fixed">
        <Unit>
          kl/g
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_250" name="FVgu" simulationType="fixed">
        <Unit>
          kl/g
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_251" name="FVki" simulationType="fixed">
        <Unit>
          kl/g
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_252" name="FVli" simulationType="fixed">
        <Unit>
          kl/g
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_253" name="FVlu" simulationType="fixed">
        <Unit>
          kl/g
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_254" name="FVsp" simulationType="fixed">
        <Unit>
          kl/g
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_255" name="FVve" simulationType="fixed">
        <Unit>
          kl/g
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_256" name="FVar" simulationType="fixed">
        <Unit>
          kl/g
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_257" name="FVpl" simulationType="fixed">
        <Unit>
          kl/g
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_258" name="FQre" simulationType="assignment">
        <Expression>
          1-(&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[FQbo],Reference=Value>+&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[FQhe],Reference=Value>+&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[FQgu],Reference=Value>+&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[FQki],Reference=Value>+&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[FQh],Reference=Value>+&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[FQsp],Reference=Value>)
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_259" name="FQbo" simulationType="fixed">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_260" name="FQhe" simulationType="fixed">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_261" name="FQgu" simulationType="fixed">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_262" name="FQki" simulationType="fixed">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_263" name="FQh" simulationType="fixed">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_264" name="FQlu" simulationType="fixed">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_265" name="FQsp" simulationType="fixed">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_266" name="F_PAR" simulationType="fixed">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_267" name="MPPGL" simulationType="fixed">
        <Unit>
          m1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_268" name="KLU_EXCO2" simulationType="fixed">
        <Unit>
          1/(0.0166667*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_269" name="KBO_FIXCO2" simulationType="fixed">
        <Unit>
          1/(0.0166667*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_270" name="KBO_RELCO2" simulationType="fixed">
        <Unit>
          1/(0.0166667*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_271" name="KBO_MAXCO2" simulationType="fixed">
        <Unit>
          mmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_272" name="P_CO2BSA" simulationType="fixed">
        <Unit>
          3.6*mol/(m²*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_273" name="R_PDB" simulationType="fixed">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_274" name="Mr_co2c13" simulationType="fixed">
        <Unit>
          g/mol
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_275" name="D_co2c13" simulationType="ode">
        <Expression>
          -&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[Absorption_co2c13],Reference=Flux>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_co2c13],Reference=Value>
        </Expression>
        <InitialExpression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[PODOSE_co2c13],Reference=InitialValue>
        </InitialExpression>
        <Unit>
          mg
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_276" name="DIV_co2c13" simulationType="ode">
        <Expression>
          -&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[Injection_co2c13],Reference=Flux>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_co2c13],Reference=Value>
        </Expression>
        <InitialExpression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[IVDOSE_co2c13],Reference=InitialValue>
        </InitialExpression>
        <Unit>
          mg
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_277" name="IVDOSE_co2c13" simulationType="fixed">
        <Unit>
          mg
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_278" name="PODOSE_co2c13" simulationType="fixed">
        <Unit>
          mg
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_279" name="Ka_co2c13" simulationType="fixed">
        <Unit>
          1/(0.277778*ms)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_280" name="F_co2c13" simulationType="fixed">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_281" name="ti_co2c13" simulationType="fixed">
        <Unit>
          s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_282" name="Ki_co2c13" simulationType="assignment">
        <Expression>
          1.3859999999999999/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[ti_co2c13],Reference=Value>*3600
        </Expression>
        <Unit>
          1/(0.277778*ms)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_283" name="Ri_co2c13" simulationType="fixed">
        <Unit>
          0.06*g/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_284" name="cum_dose_co2c13" simulationType="ode">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Ri_co2c13],Reference=Value>*60
        </Expression>
        <Unit>
          mg
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_285" name="fup_co2c13" simulationType="fixed">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_286" name="BP_co2c13" simulationType="fixed">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_287" name="fumic_co2c13" simulationType="fixed">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_288" name="CLrenal_co2c13" simulationType="fixed">
        <Unit>
          3.6*kl/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_289" name="Kphe_co2c13" simulationType="fixed">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_290" name="Kpgu_co2c13" simulationType="fixed">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_291" name="Kpre_co2c13" simulationType="fixed">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_292" name="Kpki_co2c13" simulationType="fixed">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_293" name="Kpsp_co2c13" simulationType="fixed">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_294" name="Kpli_co2c13" simulationType="fixed">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_295" name="Kpbo_co2c13" simulationType="fixed">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_296" name="Kplu_co2c13" simulationType="fixed">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_297" name="Mr_metc13" simulationType="fixed">
        <Unit>
          g/mol
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_298" name="D_metc13" simulationType="ode">
        <Expression>
          -&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[Absorption_metc13],Reference=Flux>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_metc13],Reference=Value>
        </Expression>
        <InitialExpression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[PODOSE_metc13],Reference=InitialValue>
        </InitialExpression>
        <Unit>
          mg
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_299" name="DIV_metc13" simulationType="ode">
        <Expression>
          -&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[Injection_metc13],Reference=Flux>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_metc13],Reference=Value>
        </Expression>
        <InitialExpression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[IVDOSE_metc13],Reference=InitialValue>
        </InitialExpression>
        <Unit>
          mg
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_300" name="IVDOSE_metc13" simulationType="fixed">
        <Unit>
          mg
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_301" name="PODOSE_metc13" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_301">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-22T19:20:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          mg
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_302" name="Ka_metc13" simulationType="fixed">
        <Unit>
          1/(0.277778*ms)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_303" name="F_metc13" simulationType="fixed">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_304" name="ti_metc13" simulationType="fixed">
        <Unit>
          s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_305" name="Ki_metc13" simulationType="assignment">
        <Expression>
          1.3859999999999999/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[ti_metc13],Reference=Value>*3600
        </Expression>
        <Unit>
          1/(0.277778*ms)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_306" name="Ri_metc13" simulationType="fixed">
        <Unit>
          0.06*g/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_307" name="cum_dose_metc13" simulationType="ode">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Ri_metc13],Reference=Value>*60
        </Expression>
        <Unit>
          mg
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_308" name="fup_metc13" simulationType="fixed">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_309" name="BP_metc13" simulationType="fixed">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_310" name="fumic_metc13" simulationType="fixed">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_311" name="CLrenal_metc13" simulationType="fixed">
        <Unit>
          3.6*kl/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_312" name="Kphe_metc13" simulationType="fixed">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_313" name="Kpgu_metc13" simulationType="fixed">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_314" name="Kpre_metc13" simulationType="fixed">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_315" name="Kpki_metc13" simulationType="fixed">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_316" name="Kpsp_metc13" simulationType="fixed">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_317" name="Kpli_metc13" simulationType="fixed">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_318" name="Kpbo_metc13" simulationType="fixed">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_319" name="Kplu_metc13" simulationType="fixed">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_320" name="Mr_apap" simulationType="fixed">
        <Unit>
          g/mol
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_321" name="D_apap" simulationType="ode">
        <Expression>
          -&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[Absorption_apap],Reference=Flux>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_apap],Reference=Value>
        </Expression>
        <InitialExpression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[PODOSE_apap],Reference=InitialValue>
        </InitialExpression>
        <Unit>
          mg
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_322" name="DIV_apap" simulationType="ode">
        <Expression>
          -&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[Injection_apap],Reference=Flux>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_apap],Reference=Value>
        </Expression>
        <InitialExpression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[IVDOSE_apap],Reference=InitialValue>
        </InitialExpression>
        <Unit>
          mg
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_323" name="IVDOSE_apap" simulationType="fixed">
        <Unit>
          mg
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_324" name="PODOSE_apap" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_324">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-22T19:20:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          mg
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_325" name="Ka_apap" simulationType="fixed">
        <Unit>
          1/(0.277778*ms)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_326" name="F_apap" simulationType="fixed">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_327" name="ti_apap" simulationType="fixed">
        <Unit>
          s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_328" name="Ki_apap" simulationType="assignment">
        <Expression>
          1.3859999999999999/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[ti_apap],Reference=Value>*3600
        </Expression>
        <Unit>
          1/(0.277778*ms)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_329" name="Ri_apap" simulationType="fixed">
        <Unit>
          0.06*g/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_330" name="cum_dose_apap" simulationType="ode">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Ri_apap],Reference=Value>*60
        </Expression>
        <Unit>
          mg
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_331" name="fup_apap" simulationType="fixed">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_332" name="BP_apap" simulationType="fixed">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_333" name="fumic_apap" simulationType="fixed">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_334" name="CLrenal_apap" simulationType="fixed">
        <Unit>
          3.6*kl/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_335" name="Kphe_apap" simulationType="fixed">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_336" name="Kpgu_apap" simulationType="fixed">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_337" name="Kpre_apap" simulationType="fixed">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_338" name="Kpki_apap" simulationType="fixed">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_339" name="Kpsp_apap" simulationType="fixed">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_340" name="Kpli_apap" simulationType="fixed">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_341" name="Kpbo_apap" simulationType="fixed">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_342" name="Kplu_apap" simulationType="fixed">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_343" name="P_CO2" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_343">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-22T19:20:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[BSA],Reference=Value>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[P_CO2BSA],Reference=Value>/60
        </Expression>
        <Unit>
          0.06*mol/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_344" name="P_CO2c13" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[R_PDB],Reference=Value>/(1+&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[R_PDB],Reference=Value>)*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[P_CO2],Reference=Value>+&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[Exhalation_co2c13],Reference=Flux>/60
        </Expression>
        <Unit>
          0.06*mol/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_345" name="P_CO2c12" simulationType="assignment">
        <Expression>
          1/(1+&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[R_PDB],Reference=Value>)*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[P_CO2],Reference=Value>
        </Expression>
        <Unit>
          0.06*mol/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_346" name="P_CO2R" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[P_CO2c13],Reference=Value>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[P_CO2c12],Reference=Value>
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_347" name="P_CO2Fc13" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[P_CO2c13],Reference=Value>/(&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[P_CO2c12],Reference=Value>+&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[P_CO2c13],Reference=Value>)
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_348" name="DOB" simulationType="assignment">
        <Expression>
          (&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[P_CO2c13],Reference=Value>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[P_CO2c12],Reference=Value>-&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[R_PDB],Reference=Value>)/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[R_PDB],Reference=Value>*1000
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_349" name="Qbo" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[QC],Reference=Value>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[FQbo],Reference=Value>
        </Expression>
        <Unit>
          3.6*kl/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_350" name="Qhe" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[QC],Reference=Value>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[FQhe],Reference=Value>
        </Expression>
        <Unit>
          3.6*kl/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_351" name="Qgu" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[QC],Reference=Value>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[FQgu],Reference=Value>
        </Expression>
        <Unit>
          3.6*kl/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_352" name="Qki" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[QC],Reference=Value>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[FQki],Reference=Value>
        </Expression>
        <Unit>
          3.6*kl/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_353" name="Qh" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[QC],Reference=Value>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[FQh],Reference=Value>
        </Expression>
        <Unit>
          3.6*kl/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_354" name="Qha" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Qh],Reference=Value>-&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Qgu],Reference=Value>-&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Qsp],Reference=Value>
        </Expression>
        <Unit>
          3.6*kl/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_355" name="Qlu" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[QC],Reference=Value>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[FQlu],Reference=Value>
        </Expression>
        <Unit>
          3.6*kl/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_356" name="Qsp" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[QC],Reference=Value>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[FQsp],Reference=Value>
        </Expression>
        <Unit>
          3.6*kl/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_357" name="Qre" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[QC],Reference=Value>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[FQre],Reference=Value>
        </Expression>
        <Unit>
          3.6*kl/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_358" name="Xbody_co2c13" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Xar_co2c13],Reference=Value>+&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Xbo_co2c13],Reference=Value>+&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Xhe_co2c13],Reference=Value>+&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Xgu_co2c13],Reference=Value>+&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Xki_co2c13],Reference=Value>+&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Xli_co2c13],Reference=Value>+&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Xlu_co2c13],Reference=Value>+&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Xsp_co2c13],Reference=Value>+&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Xre_co2c13],Reference=Value>+&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Xve_co2c13],Reference=Value>
        </Expression>
        <Unit>
          mg
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_359" name="Cpl_ve_co2c13" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Cve_co2c13],Reference=Value>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[BP_co2c13],Reference=Value>
        </Expression>
        <Unit>
          mmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_360" name="Cli_free_co2c13" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Cli_co2c13],Reference=Value>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[fup_co2c13],Reference=Value>
        </Expression>
        <Unit>
          mmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_361" name="Cki_free_co2c13" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Cki_co2c13],Reference=Value>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[fup_co2c13],Reference=Value>
        </Expression>
        <Unit>
          mmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_362" name="Che_co2c13" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vhe],Vector=Metabolites[Ahe_co2c13],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vhe],Reference=Volume>
        </Expression>
        <Unit>
          mmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_363" name="Xhe_co2c13" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vhe],Vector=Metabolites[Ahe_co2c13],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_co2c13],Reference=Value>
        </Expression>
        <Unit>
          mg
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_364" name="Mhe_co2c13" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vhe],Vector=Metabolites[Ahe_co2c13],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vhe],Reference=Volume>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_co2c13],Reference=Value>
        </Expression>
        <Unit>
          mg/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_365" name="Cgu_co2c13" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vgu],Vector=Metabolites[Agu_co2c13],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vgu],Reference=Volume>
        </Expression>
        <Unit>
          mmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_366" name="Xgu_co2c13" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vgu],Vector=Metabolites[Agu_co2c13],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_co2c13],Reference=Value>
        </Expression>
        <Unit>
          mg
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_367" name="Mgu_co2c13" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vgu],Vector=Metabolites[Agu_co2c13],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vgu],Reference=Volume>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_co2c13],Reference=Value>
        </Expression>
        <Unit>
          mg/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_368" name="Cre_co2c13" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vre],Vector=Metabolites[Are_co2c13],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vre],Reference=Volume>
        </Expression>
        <Unit>
          mmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_369" name="Xre_co2c13" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vre],Vector=Metabolites[Are_co2c13],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_co2c13],Reference=Value>
        </Expression>
        <Unit>
          mg
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_370" name="Mre_co2c13" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vre],Vector=Metabolites[Are_co2c13],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vre],Reference=Volume>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_co2c13],Reference=Value>
        </Expression>
        <Unit>
          mg/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_371" name="Cki_co2c13" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vki],Vector=Metabolites[Aki_co2c13],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vki],Reference=Volume>
        </Expression>
        <Unit>
          mmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_372" name="Xki_co2c13" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vki],Vector=Metabolites[Aki_co2c13],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_co2c13],Reference=Value>
        </Expression>
        <Unit>
          mg
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_373" name="Mki_co2c13" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vki],Vector=Metabolites[Aki_co2c13],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vki],Reference=Volume>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_co2c13],Reference=Value>
        </Expression>
        <Unit>
          mg/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_374" name="Csp_co2c13" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vsp],Vector=Metabolites[Asp_co2c13],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vsp],Reference=Volume>
        </Expression>
        <Unit>
          mmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_375" name="Xsp_co2c13" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vsp],Vector=Metabolites[Asp_co2c13],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_co2c13],Reference=Value>
        </Expression>
        <Unit>
          mg
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_376" name="Msp_co2c13" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vsp],Vector=Metabolites[Asp_co2c13],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vsp],Reference=Volume>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_co2c13],Reference=Value>
        </Expression>
        <Unit>
          mg/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_377" name="Cli_co2c13" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vli],Vector=Metabolites[Ali_co2c13],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vli],Reference=Volume>
        </Expression>
        <Unit>
          mmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_378" name="Xli_co2c13" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vli],Vector=Metabolites[Ali_co2c13],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_co2c13],Reference=Value>
        </Expression>
        <Unit>
          mg
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_379" name="Mli_co2c13" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vli],Vector=Metabolites[Ali_co2c13],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vli],Reference=Volume>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_co2c13],Reference=Value>
        </Expression>
        <Unit>
          mg/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_380" name="Cve_co2c13" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vve],Vector=Metabolites[Ave_co2c13],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vve],Reference=Volume>
        </Expression>
        <Unit>
          mmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_381" name="Xve_co2c13" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vve],Vector=Metabolites[Ave_co2c13],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_co2c13],Reference=Value>
        </Expression>
        <Unit>
          mg
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_382" name="Mve_co2c13" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vve],Vector=Metabolites[Ave_co2c13],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vve],Reference=Volume>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_co2c13],Reference=Value>
        </Expression>
        <Unit>
          mg/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_383" name="Car_co2c13" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Var],Vector=Metabolites[Aar_co2c13],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Var],Reference=Volume>
        </Expression>
        <Unit>
          mmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_384" name="Xar_co2c13" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Var],Vector=Metabolites[Aar_co2c13],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_co2c13],Reference=Value>
        </Expression>
        <Unit>
          mg
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_385" name="Mar_co2c13" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Var],Vector=Metabolites[Aar_co2c13],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Var],Reference=Volume>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_co2c13],Reference=Value>
        </Expression>
        <Unit>
          mg/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_386" name="Cbo_co2c13" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vbo],Vector=Metabolites[Abo_co2c13],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vbo],Reference=Volume>
        </Expression>
        <Unit>
          mmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_387" name="Xbo_co2c13" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vbo],Vector=Metabolites[Abo_co2c13],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_co2c13],Reference=Value>
        </Expression>
        <Unit>
          mg
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_388" name="Mbo_co2c13" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vbo],Vector=Metabolites[Abo_co2c13],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vbo],Reference=Volume>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_co2c13],Reference=Value>
        </Expression>
        <Unit>
          mg/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_389" name="Clu_co2c13" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vlu],Vector=Metabolites[Alu_co2c13],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vlu],Reference=Volume>
        </Expression>
        <Unit>
          mmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_390" name="Xlu_co2c13" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vlu],Vector=Metabolites[Alu_co2c13],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_co2c13],Reference=Value>
        </Expression>
        <Unit>
          mg
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_391" name="Mlu_co2c13" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vlu],Vector=Metabolites[Alu_co2c13],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vlu],Reference=Volume>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_co2c13],Reference=Value>
        </Expression>
        <Unit>
          mg/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_392" name="Xurine_co2c13" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vurine],Vector=Metabolites[Aurine_co2c13],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_co2c13],Reference=Value>
        </Expression>
        <Unit>
          mg
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_393" name="Xbody_metc13" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_393">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-22T19:20:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Xar_metc13],Reference=Value>+&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Xbo_metc13],Reference=Value>+&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Xhe_metc13],Reference=Value>+&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Xgu_metc13],Reference=Value>+&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Xki_metc13],Reference=Value>+&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Xli_metc13],Reference=Value>+&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Xlu_metc13],Reference=Value>+&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Xsp_metc13],Reference=Value>+&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Xre_metc13],Reference=Value>+&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Xve_metc13],Reference=Value>
        </Expression>
        <Unit>
          mg
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_394" name="Cpl_ve_metc13" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Cve_metc13],Reference=Value>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[BP_metc13],Reference=Value>
        </Expression>
        <Unit>
          mmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_395" name="Cli_free_metc13" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Cli_metc13],Reference=Value>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[fup_metc13],Reference=Value>
        </Expression>
        <Unit>
          mmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_396" name="Cki_free_metc13" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Cki_metc13],Reference=Value>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[fup_metc13],Reference=Value>
        </Expression>
        <Unit>
          mmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_397" name="Che_metc13" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vhe],Vector=Metabolites[Ahe_metc13],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vhe],Reference=Volume>
        </Expression>
        <Unit>
          mmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_398" name="Xhe_metc13" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vhe],Vector=Metabolites[Ahe_metc13],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_metc13],Reference=Value>
        </Expression>
        <Unit>
          mg
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_399" name="Mhe_metc13" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vhe],Vector=Metabolites[Ahe_metc13],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vhe],Reference=Volume>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_metc13],Reference=Value>
        </Expression>
        <Unit>
          mg/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_400" name="Cgu_metc13" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vgu],Vector=Metabolites[Agu_metc13],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vgu],Reference=Volume>
        </Expression>
        <Unit>
          mmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_401" name="Xgu_metc13" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vgu],Vector=Metabolites[Agu_metc13],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_metc13],Reference=Value>
        </Expression>
        <Unit>
          mg
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_402" name="Mgu_metc13" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vgu],Vector=Metabolites[Agu_metc13],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vgu],Reference=Volume>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_metc13],Reference=Value>
        </Expression>
        <Unit>
          mg/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_403" name="Cre_metc13" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vre],Vector=Metabolites[Are_metc13],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vre],Reference=Volume>
        </Expression>
        <Unit>
          mmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_404" name="Xre_metc13" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vre],Vector=Metabolites[Are_metc13],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_metc13],Reference=Value>
        </Expression>
        <Unit>
          mg
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_405" name="Mre_metc13" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vre],Vector=Metabolites[Are_metc13],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vre],Reference=Volume>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_metc13],Reference=Value>
        </Expression>
        <Unit>
          mg/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_406" name="Cki_metc13" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vki],Vector=Metabolites[Aki_metc13],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vki],Reference=Volume>
        </Expression>
        <Unit>
          mmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_407" name="Xki_metc13" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vki],Vector=Metabolites[Aki_metc13],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_metc13],Reference=Value>
        </Expression>
        <Unit>
          mg
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_408" name="Mki_metc13" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vki],Vector=Metabolites[Aki_metc13],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vki],Reference=Volume>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_metc13],Reference=Value>
        </Expression>
        <Unit>
          mg/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_409" name="Csp_metc13" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vsp],Vector=Metabolites[Asp_metc13],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vsp],Reference=Volume>
        </Expression>
        <Unit>
          mmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_410" name="Xsp_metc13" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vsp],Vector=Metabolites[Asp_metc13],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_metc13],Reference=Value>
        </Expression>
        <Unit>
          mg
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_411" name="Msp_metc13" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vsp],Vector=Metabolites[Asp_metc13],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vsp],Reference=Volume>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_metc13],Reference=Value>
        </Expression>
        <Unit>
          mg/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_412" name="Cli_metc13" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vli],Vector=Metabolites[Ali_metc13],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vli],Reference=Volume>
        </Expression>
        <Unit>
          mmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_413" name="Xli_metc13" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vli],Vector=Metabolites[Ali_metc13],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_metc13],Reference=Value>
        </Expression>
        <Unit>
          mg
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_414" name="Mli_metc13" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vli],Vector=Metabolites[Ali_metc13],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vli],Reference=Volume>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_metc13],Reference=Value>
        </Expression>
        <Unit>
          mg/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_415" name="Cve_metc13" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vve],Vector=Metabolites[Ave_metc13],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vve],Reference=Volume>
        </Expression>
        <Unit>
          mmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_416" name="Xve_metc13" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vve],Vector=Metabolites[Ave_metc13],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_metc13],Reference=Value>
        </Expression>
        <Unit>
          mg
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_417" name="Mve_metc13" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vve],Vector=Metabolites[Ave_metc13],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vve],Reference=Volume>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_metc13],Reference=Value>
        </Expression>
        <Unit>
          mg/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_418" name="Car_metc13" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Var],Vector=Metabolites[Aar_metc13],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Var],Reference=Volume>
        </Expression>
        <Unit>
          mmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_419" name="Xar_metc13" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Var],Vector=Metabolites[Aar_metc13],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_metc13],Reference=Value>
        </Expression>
        <Unit>
          mg
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_420" name="Mar_metc13" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Var],Vector=Metabolites[Aar_metc13],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Var],Reference=Volume>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_metc13],Reference=Value>
        </Expression>
        <Unit>
          mg/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_421" name="Cbo_metc13" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vbo],Vector=Metabolites[Abo_metc13],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vbo],Reference=Volume>
        </Expression>
        <Unit>
          mmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_422" name="Xbo_metc13" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vbo],Vector=Metabolites[Abo_metc13],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_metc13],Reference=Value>
        </Expression>
        <Unit>
          mg
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_423" name="Mbo_metc13" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vbo],Vector=Metabolites[Abo_metc13],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vbo],Reference=Volume>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_metc13],Reference=Value>
        </Expression>
        <Unit>
          mg/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_424" name="Clu_metc13" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vlu],Vector=Metabolites[Alu_metc13],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vlu],Reference=Volume>
        </Expression>
        <Unit>
          mmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_425" name="Xlu_metc13" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vlu],Vector=Metabolites[Alu_metc13],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_metc13],Reference=Value>
        </Expression>
        <Unit>
          mg
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_426" name="Mlu_metc13" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vlu],Vector=Metabolites[Alu_metc13],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vlu],Reference=Volume>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_metc13],Reference=Value>
        </Expression>
        <Unit>
          mg/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_427" name="Xurine_metc13" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vurine],Vector=Metabolites[Aurine_metc13],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_metc13],Reference=Value>
        </Expression>
        <Unit>
          mg
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_428" name="Xbody_apap" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Xar_apap],Reference=Value>+&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Xbo_apap],Reference=Value>+&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Xhe_apap],Reference=Value>+&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Xgu_apap],Reference=Value>+&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Xki_apap],Reference=Value>+&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Xli_apap],Reference=Value>+&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Xlu_apap],Reference=Value>+&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Xsp_apap],Reference=Value>+&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Xre_apap],Reference=Value>+&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Xve_apap],Reference=Value>
        </Expression>
        <Unit>
          mg
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_429" name="Cpl_ve_apap" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Cve_apap],Reference=Value>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[BP_apap],Reference=Value>
        </Expression>
        <Unit>
          mmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_430" name="Cli_free_apap" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Cli_apap],Reference=Value>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[fup_apap],Reference=Value>
        </Expression>
        <Unit>
          mmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_431" name="Cki_free_apap" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Cki_apap],Reference=Value>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[fup_apap],Reference=Value>
        </Expression>
        <Unit>
          mmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_432" name="Che_apap" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vhe],Vector=Metabolites[Ahe_apap],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vhe],Reference=Volume>
        </Expression>
        <Unit>
          mmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_433" name="Xhe_apap" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vhe],Vector=Metabolites[Ahe_apap],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_apap],Reference=Value>
        </Expression>
        <Unit>
          mg
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_434" name="Mhe_apap" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vhe],Vector=Metabolites[Ahe_apap],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vhe],Reference=Volume>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_apap],Reference=Value>
        </Expression>
        <Unit>
          mg/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_435" name="Cgu_apap" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vgu],Vector=Metabolites[Agu_apap],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vgu],Reference=Volume>
        </Expression>
        <Unit>
          mmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_436" name="Xgu_apap" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vgu],Vector=Metabolites[Agu_apap],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_apap],Reference=Value>
        </Expression>
        <Unit>
          mg
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_437" name="Mgu_apap" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vgu],Vector=Metabolites[Agu_apap],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vgu],Reference=Volume>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_apap],Reference=Value>
        </Expression>
        <Unit>
          mg/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_438" name="Cre_apap" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vre],Vector=Metabolites[Are_apap],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vre],Reference=Volume>
        </Expression>
        <Unit>
          mmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_439" name="Xre_apap" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vre],Vector=Metabolites[Are_apap],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_apap],Reference=Value>
        </Expression>
        <Unit>
          mg
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_440" name="Mre_apap" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vre],Vector=Metabolites[Are_apap],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vre],Reference=Volume>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_apap],Reference=Value>
        </Expression>
        <Unit>
          mg/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_441" name="Cki_apap" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vki],Vector=Metabolites[Aki_apap],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vki],Reference=Volume>
        </Expression>
        <Unit>
          mmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_442" name="Xki_apap" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vki],Vector=Metabolites[Aki_apap],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_apap],Reference=Value>
        </Expression>
        <Unit>
          mg
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_443" name="Mki_apap" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vki],Vector=Metabolites[Aki_apap],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vki],Reference=Volume>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_apap],Reference=Value>
        </Expression>
        <Unit>
          mg/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_444" name="Csp_apap" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vsp],Vector=Metabolites[Asp_apap],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vsp],Reference=Volume>
        </Expression>
        <Unit>
          mmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_445" name="Xsp_apap" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vsp],Vector=Metabolites[Asp_apap],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_apap],Reference=Value>
        </Expression>
        <Unit>
          mg
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_446" name="Msp_apap" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vsp],Vector=Metabolites[Asp_apap],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vsp],Reference=Volume>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_apap],Reference=Value>
        </Expression>
        <Unit>
          mg/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_447" name="Cli_apap" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vli],Vector=Metabolites[Ali_apap],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vli],Reference=Volume>
        </Expression>
        <Unit>
          mmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_448" name="Xli_apap" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vli],Vector=Metabolites[Ali_apap],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_apap],Reference=Value>
        </Expression>
        <Unit>
          mg
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_449" name="Mli_apap" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vli],Vector=Metabolites[Ali_apap],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vli],Reference=Volume>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_apap],Reference=Value>
        </Expression>
        <Unit>
          mg/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_450" name="Cve_apap" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vve],Vector=Metabolites[Ave_apap],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vve],Reference=Volume>
        </Expression>
        <Unit>
          mmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_451" name="Xve_apap" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vve],Vector=Metabolites[Ave_apap],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_apap],Reference=Value>
        </Expression>
        <Unit>
          mg
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_452" name="Mve_apap" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vve],Vector=Metabolites[Ave_apap],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vve],Reference=Volume>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_apap],Reference=Value>
        </Expression>
        <Unit>
          mg/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_453" name="Car_apap" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Var],Vector=Metabolites[Aar_apap],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Var],Reference=Volume>
        </Expression>
        <Unit>
          mmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_454" name="Xar_apap" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Var],Vector=Metabolites[Aar_apap],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_apap],Reference=Value>
        </Expression>
        <Unit>
          mg
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_455" name="Mar_apap" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Var],Vector=Metabolites[Aar_apap],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Var],Reference=Volume>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_apap],Reference=Value>
        </Expression>
        <Unit>
          mg/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_456" name="Cbo_apap" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vbo],Vector=Metabolites[Abo_apap],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vbo],Reference=Volume>
        </Expression>
        <Unit>
          mmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_457" name="Xbo_apap" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vbo],Vector=Metabolites[Abo_apap],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_apap],Reference=Value>
        </Expression>
        <Unit>
          mg
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_458" name="Mbo_apap" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vbo],Vector=Metabolites[Abo_apap],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vbo],Reference=Volume>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_apap],Reference=Value>
        </Expression>
        <Unit>
          mg/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_459" name="Clu_apap" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vlu],Vector=Metabolites[Alu_apap],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vlu],Reference=Volume>
        </Expression>
        <Unit>
          mmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_460" name="Xlu_apap" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vlu],Vector=Metabolites[Alu_apap],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_apap],Reference=Value>
        </Expression>
        <Unit>
          mg
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_461" name="Mlu_apap" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vlu],Vector=Metabolites[Alu_apap],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vlu],Reference=Volume>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_apap],Reference=Value>
        </Expression>
        <Unit>
          mg/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_462" name="Xurine_apap" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vurine],Vector=Metabolites[Aurine_apap],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_apap],Reference=Value>
        </Expression>
        <Unit>
          mg
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_463" name="Xbreath_co2c13" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vbreath],Vector=Metabolites[Abreath_co2c13],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_co2c13],Reference=Value>
        </Expression>
        <Unit>
          mg
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_464" name="Cbo_co2c13_fix" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vbo],Vector=Metabolites[Abo_co2c13_fix],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vbo],Reference=Volume>
        </Expression>
        <Unit>
          mmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_465" name="Xbo_co2c13_fix" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vbo],Vector=Metabolites[Abo_co2c13_fix],Reference=ParticleNumber>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor],Reference=Value>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_co2c13],Reference=Value>
        </Expression>
        <Unit>
          mg
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_466" name="CYP1A2MET_CL" simulationType="fixed">
        <Unit>
          0.06*µl/(g*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_467" name="CYP1A2MET_Km_met" simulationType="fixed">
        <Unit>
          mmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_468" name="CYP1A2MET_CLliv" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[CYP1A2MET_CL],Reference=Value>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[fumic_metc13],Reference=Value>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[MPPGL],Reference=Value>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vli],Reference=Volume>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[F_PAR],Reference=Value>*60/1000
        </Expression>
        <Unit>
          3.6*kl/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_469" name="CO2FIX_HLM_CL" simulationType="fixed">
        <Unit>
          0.06*µl/(g*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_470" name="CO2FIX_Km_co2" simulationType="fixed">
        <Unit>
          mmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_471" name="CO2FIX_CLliv" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[CO2FIX_HLM_CL],Reference=Value>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[MPPGL],Reference=Value>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vli],Reference=Volume>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[F_PAR],Reference=Value>*60/1000
        </Expression>
        <Unit>
          3.6*kl/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_472" name="APAPD_HLM_CL" simulationType="fixed">
        <Unit>
          0.06*µl/(g*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_473" name="APAPD_Km_apap" simulationType="fixed">
        <Unit>
          mmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_474" name="APAPD_CLliv" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[APAPD_HLM_CL],Reference=Value>/&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[fumic_apap],Reference=Value>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[MPPGL],Reference=Value>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vli],Reference=Volume>*&lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[F_PAR],Reference=Value>*60/1000
        </Expression>
        <Unit>
          3.6*kl/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_475" name="amount to particle factor" simulationType="fixed">
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_66" name="CYP1A2MET" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_62" stoichiometry="1"/>
          <Product metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4821" name="CYP1A2MET_CLliv" value="5.42194"/>
          <Constant key="Parameter_4853" name="CYP1A2MET_Km_met" value="0.02"/>
          <Constant key="Parameter_4854" name="Cli_free_metc13" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_306" unitType="Default" scalingCompartment="CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vli]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1313">
              <SourceParameter reference="ModelValue_468"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1314">
              <SourceParameter reference="ModelValue_467"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1315">
              <SourceParameter reference="ModelValue_395"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1316">
              <SourceParameter reference="Compartment_20"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_67" name="CO2FIX" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4855" name="CO2FIX_CLliv" value="5.42194"/>
          <Constant key="Parameter_4856" name="CO2FIX_Km_co2" value="0.2"/>
          <Constant key="Parameter_4857" name="Cli_co2c13" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_307" unitType="Default" scalingCompartment="CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vli]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1321">
              <SourceParameter reference="ModelValue_471"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1322">
              <SourceParameter reference="ModelValue_470"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1323">
              <SourceParameter reference="ModelValue_377"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1324">
              <SourceParameter reference="Compartment_20"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_68" name="APAPD" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_62" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4858" name="APAPD_CLliv" value="9.03656"/>
          <Constant key="Parameter_4859" name="APAPD_Km_apap" value="0.5"/>
          <Constant key="Parameter_4860" name="Cli_free_apap" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_308" unitType="Default" scalingCompartment="CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vli]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1329">
              <SourceParameter reference="ModelValue_474"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1330">
              <SourceParameter reference="ModelValue_473"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1331">
              <SourceParameter reference="ModelValue_430"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1332">
              <SourceParameter reference="Compartment_20"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_69" name="Exhalation_co2c13" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_44" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_68" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4848" name="Clu_co2c13" value="0"/>
          <Constant key="Parameter_4849" name="KLU_EXCO2" value="1.2"/>
        </ListOfConstants>
        <KineticLaw function="Function_309" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1309">
              <SourceParameter reference="ModelValue_389"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1337">
              <SourceParameter reference="ModelValue_268"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1338">
              <SourceParameter reference="Compartment_21"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_70" name="Fixation_co2c13" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_69" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4850" name="Cbo_co2c13_fix" value="0"/>
          <Constant key="Parameter_4851" name="Cve_co2c13" value="0"/>
          <Constant key="Parameter_4852" name="KBO_FIXCO2" value="0.1"/>
          <Constant key="Parameter_4822" name="KBO_MAXCO2" value="0.2"/>
        </ListOfConstants>
        <KineticLaw function="Function_310" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1344">
              <SourceParameter reference="ModelValue_464"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1345">
              <SourceParameter reference="ModelValue_380"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1346">
              <SourceParameter reference="ModelValue_269"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1347">
              <SourceParameter reference="ModelValue_271"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1348">
              <SourceParameter reference="Compartment_23"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_71" name="Release_co2c13" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_69" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4823" name="Cbo_co2c13_fix" value="0"/>
          <Constant key="Parameter_4824" name="KBO_RELCO2" value="0.0001"/>
        </ListOfConstants>
        <KineticLaw function="Function_311" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1312">
              <SourceParameter reference="ModelValue_464"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1342">
              <SourceParameter reference="ModelValue_270"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1354">
              <SourceParameter reference="Compartment_23"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_72" name="Injection_co2c13" reversible="false" fast="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4825" name="DIV_co2c13" value="0"/>
          <Constant key="Parameter_4826" name="Ki_co2c13" value="498.96"/>
          <Constant key="Parameter_4827" name="Mr_co2c13" value="62.02"/>
        </ListOfConstants>
        <KineticLaw function="Function_312" unitType="Default" scalingCompartment="CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vve]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1359">
              <SourceParameter reference="ModelValue_276"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1360">
              <SourceParameter reference="ModelValue_282"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1361">
              <SourceParameter reference="ModelValue_274"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1362">
              <SourceParameter reference="Compartment_23"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_73" name="Infusion_co2c13" reversible="false" fast="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4828" name="Mr_co2c13" value="62.02"/>
          <Constant key="Parameter_4829" name="Ri_co2c13" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_313" unitType="Default" scalingCompartment="CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vve]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1310">
              <SourceParameter reference="ModelValue_274"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1367">
              <SourceParameter reference="ModelValue_283"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1368">
              <SourceParameter reference="Compartment_23"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_74" name="Absorption_co2c13" reversible="false" fast="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4830" name="D_co2c13" value="0"/>
          <Constant key="Parameter_4831" name="F_co2c13" value="1"/>
          <Constant key="Parameter_4832" name="Ka_co2c13" value="8"/>
          <Constant key="Parameter_4833" name="Mr_co2c13" value="62.02"/>
        </ListOfConstants>
        <KineticLaw function="Function_314" unitType="Default" scalingCompartment="CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vgu]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1374">
              <SourceParameter reference="ModelValue_275"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1375">
              <SourceParameter reference="ModelValue_280"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1376">
              <SourceParameter reference="ModelValue_279"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1377">
              <SourceParameter reference="ModelValue_274"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1378">
              <SourceParameter reference="Compartment_18"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_75" name="vre_co2c13" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_38" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_45" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4834" name="CLrenal_co2c13" value="0"/>
          <Constant key="Parameter_4835" name="Cki_free_co2c13" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_315" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1311">
              <SourceParameter reference="ModelValue_288"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1372">
              <SourceParameter reference="ModelValue_361"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_76" name="ve_lu_co2c13" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_44" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4836" name="Cve_co2c13" value="0"/>
          <Constant key="Parameter_4837" name="Qlu" value="417.96"/>
        </ListOfConstants>
        <KineticLaw function="Function_316" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1385">
              <SourceParameter reference="ModelValue_380"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1386">
              <SourceParameter reference="ModelValue_355"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_77" name="lu_ar_co2c13" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_44" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_42" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4838" name="BP_co2c13" value="1"/>
          <Constant key="Parameter_4839" name="Clu_co2c13" value="0"/>
          <Constant key="Parameter_4840" name="Kplu_co2c13" value="1"/>
          <Constant key="Parameter_4841" name="Qlu" value="417.96"/>
        </ListOfConstants>
        <KineticLaw function="Function_317" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1391">
              <SourceParameter reference="ModelValue_286"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1392">
              <SourceParameter reference="ModelValue_389"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1393">
              <SourceParameter reference="ModelValue_296"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1394">
              <SourceParameter reference="ModelValue_355"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_78" name="ar_re_co2c13" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_42" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4842" name="Car_co2c13" value="0"/>
          <Constant key="Parameter_4843" name="Qre" value="142.942"/>
        </ListOfConstants>
        <KineticLaw function="Function_318" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1373">
              <SourceParameter reference="ModelValue_383"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1390">
              <SourceParameter reference="ModelValue_357"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_79" name="re_ve_co2c13" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4844" name="BP_co2c13" value="1"/>
          <Constant key="Parameter_4845" name="Cre_co2c13" value="0"/>
          <Constant key="Parameter_4846" name="Kpre_co2c13" value="1"/>
          <Constant key="Parameter_4847" name="Qre" value="142.942"/>
        </ListOfConstants>
        <KineticLaw function="Function_319" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1403">
              <SourceParameter reference="ModelValue_286"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1404">
              <SourceParameter reference="ModelValue_368"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1405">
              <SourceParameter reference="ModelValue_291"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1406">
              <SourceParameter reference="ModelValue_357"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_80" name="ar_bo_co2c13" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_42" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4861" name="Car_co2c13" value="0"/>
          <Constant key="Parameter_4862" name="Qbo" value="20.898"/>
        </ListOfConstants>
        <KineticLaw function="Function_320" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1389">
              <SourceParameter reference="ModelValue_383"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1402">
              <SourceParameter reference="ModelValue_349"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_81" name="bo_ve_co2c13" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4863" name="BP_co2c13" value="1"/>
          <Constant key="Parameter_4864" name="Cbo_co2c13" value="0"/>
          <Constant key="Parameter_4865" name="Kpbo_co2c13" value="1"/>
          <Constant key="Parameter_4866" name="Qbo" value="20.898"/>
        </ListOfConstants>
        <KineticLaw function="Function_321" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1415">
              <SourceParameter reference="ModelValue_286"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1416">
              <SourceParameter reference="ModelValue_386"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1417">
              <SourceParameter reference="ModelValue_295"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1418">
              <SourceParameter reference="ModelValue_349"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_82" name="ar_gu_co2c13" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_42" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4867" name="Car_co2c13" value="0"/>
          <Constant key="Parameter_4868" name="Qgu" value="61.0222"/>
        </ListOfConstants>
        <KineticLaw function="Function_322" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1401">
              <SourceParameter reference="ModelValue_383"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1414">
              <SourceParameter reference="ModelValue_351"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_83" name="gu_li_co2c13" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4869" name="BP_co2c13" value="1"/>
          <Constant key="Parameter_4870" name="Cgu_co2c13" value="0"/>
          <Constant key="Parameter_4871" name="Kpgu_co2c13" value="1"/>
          <Constant key="Parameter_4872" name="Qgu" value="61.0222"/>
        </ListOfConstants>
        <KineticLaw function="Function_323" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1427">
              <SourceParameter reference="ModelValue_286"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1428">
              <SourceParameter reference="ModelValue_365"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1429">
              <SourceParameter reference="ModelValue_290"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1430">
              <SourceParameter reference="ModelValue_351"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_84" name="ar_he_co2c13" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_42" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4873" name="Car_co2c13" value="0"/>
          <Constant key="Parameter_4874" name="Qhe" value="16.7184"/>
        </ListOfConstants>
        <KineticLaw function="Function_324" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1413">
              <SourceParameter reference="ModelValue_383"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1426">
              <SourceParameter reference="ModelValue_350"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_85" name="he_ve_co2c13" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4875" name="BP_co2c13" value="1"/>
          <Constant key="Parameter_4876" name="Che_co2c13" value="0"/>
          <Constant key="Parameter_4877" name="Kphe_co2c13" value="1"/>
          <Constant key="Parameter_4878" name="Qhe" value="16.7184"/>
        </ListOfConstants>
        <KineticLaw function="Function_325" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1439">
              <SourceParameter reference="ModelValue_286"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1440">
              <SourceParameter reference="ModelValue_362"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1441">
              <SourceParameter reference="ModelValue_289"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1442">
              <SourceParameter reference="ModelValue_350"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_86" name="ar_ki_co2c13" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_42" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_38" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4879" name="Car_co2c13" value="0"/>
          <Constant key="Parameter_4880" name="Qki" value="79.4124"/>
        </ListOfConstants>
        <KineticLaw function="Function_326" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1425">
              <SourceParameter reference="ModelValue_383"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1438">
              <SourceParameter reference="ModelValue_352"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_87" name="ki_ve_co2c13" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_38" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4881" name="BP_co2c13" value="1"/>
          <Constant key="Parameter_4882" name="Cki_co2c13" value="0"/>
          <Constant key="Parameter_4883" name="Kpki_co2c13" value="1"/>
          <Constant key="Parameter_4884" name="Qki" value="79.4124"/>
        </ListOfConstants>
        <KineticLaw function="Function_327" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1451">
              <SourceParameter reference="ModelValue_286"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1452">
              <SourceParameter reference="ModelValue_371"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1453">
              <SourceParameter reference="ModelValue_292"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1454">
              <SourceParameter reference="ModelValue_352"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_88" name="ar_sp_co2c13" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_42" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4885" name="Car_co2c13" value="0"/>
          <Constant key="Parameter_4886" name="Qsp" value="7.10532"/>
        </ListOfConstants>
        <KineticLaw function="Function_328" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1437">
              <SourceParameter reference="ModelValue_383"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1450">
              <SourceParameter reference="ModelValue_356"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_89" name="sp_li_co2c13" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4887" name="BP_co2c13" value="1"/>
          <Constant key="Parameter_4888" name="Csp_co2c13" value="0"/>
          <Constant key="Parameter_4889" name="Kpsp_co2c13" value="1"/>
          <Constant key="Parameter_4890" name="Qsp" value="7.10532"/>
        </ListOfConstants>
        <KineticLaw function="Function_329" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1463">
              <SourceParameter reference="ModelValue_286"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1464">
              <SourceParameter reference="ModelValue_374"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1465">
              <SourceParameter reference="ModelValue_293"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1466">
              <SourceParameter reference="ModelValue_356"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_90" name="ar_li_co2c13" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_42" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4891" name="Car_co2c13" value="0"/>
          <Constant key="Parameter_4892" name="Qha" value="21.7339"/>
        </ListOfConstants>
        <KineticLaw function="Function_330" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1449">
              <SourceParameter reference="ModelValue_383"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1462">
              <SourceParameter reference="ModelValue_354"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_91" name="li_ve_co2c13" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4893" name="BP_co2c13" value="1"/>
          <Constant key="Parameter_4899" name="Cli_co2c13" value="0"/>
          <Constant key="Parameter_4898" name="Kpli_co2c13" value="1"/>
          <Constant key="Parameter_4897" name="Qh" value="89.8614"/>
        </ListOfConstants>
        <KineticLaw function="Function_331" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1475">
              <SourceParameter reference="ModelValue_286"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1476">
              <SourceParameter reference="ModelValue_377"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1477">
              <SourceParameter reference="ModelValue_294"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1478">
              <SourceParameter reference="ModelValue_353"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_92" name="Injection_metc13" reversible="false" fast="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_52" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4894" name="DIV_metc13" value="0"/>
          <Constant key="Parameter_4895" name="Ki_metc13" value="498.96"/>
          <Constant key="Parameter_4896" name="Mr_metc13" value="165.19"/>
        </ListOfConstants>
        <KineticLaw function="Function_332" unitType="Default" scalingCompartment="CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vve]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1483">
              <SourceParameter reference="ModelValue_299"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1484">
              <SourceParameter reference="ModelValue_305"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1485">
              <SourceParameter reference="ModelValue_297"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1486">
              <SourceParameter reference="Compartment_23"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_93" name="Infusion_metc13" reversible="false" fast="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_52" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4900" name="Mr_metc13" value="165.19"/>
          <Constant key="Parameter_4901" name="Ri_metc13" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_333" unitType="Default" scalingCompartment="CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vve]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1473">
              <SourceParameter reference="ModelValue_297"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1491">
              <SourceParameter reference="ModelValue_306"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1492">
              <SourceParameter reference="Compartment_23"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_94" name="Absorption_metc13" reversible="false" fast="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_47" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4904" name="D_metc13" value="0"/>
          <Constant key="Parameter_4903" name="F_metc13" value="1"/>
          <Constant key="Parameter_4902" name="Ka_metc13" value="4"/>
          <Constant key="Parameter_4905" name="Mr_metc13" value="165.19"/>
        </ListOfConstants>
        <KineticLaw function="Function_334" unitType="Default" scalingCompartment="CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vgu]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1498">
              <SourceParameter reference="ModelValue_298"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1499">
              <SourceParameter reference="ModelValue_303"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1500">
              <SourceParameter reference="ModelValue_302"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1501">
              <SourceParameter reference="ModelValue_297"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1502">
              <SourceParameter reference="Compartment_18"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_95" name="vre_metc13" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_56" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4906" name="CLrenal_metc13" value="10"/>
          <Constant key="Parameter_4907" name="Cki_free_metc13" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_335" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1343">
              <SourceParameter reference="ModelValue_311"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1496">
              <SourceParameter reference="ModelValue_396"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_96" name="ve_lu_metc13" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_52" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_55" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4908" name="Cve_metc13" value="0"/>
          <Constant key="Parameter_4909" name="Qlu" value="417.96"/>
        </ListOfConstants>
        <KineticLaw function="Function_336" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1509">
              <SourceParameter reference="ModelValue_415"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1510">
              <SourceParameter reference="ModelValue_355"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_97" name="lu_ar_metc13" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_55" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_53" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4910" name="BP_metc13" value="1"/>
          <Constant key="Parameter_4911" name="Clu_metc13" value="0"/>
          <Constant key="Parameter_4912" name="Kplu_metc13" value="1"/>
          <Constant key="Parameter_4913" name="Qlu" value="417.96"/>
        </ListOfConstants>
        <KineticLaw function="Function_337" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1515">
              <SourceParameter reference="ModelValue_309"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1516">
              <SourceParameter reference="ModelValue_424"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1517">
              <SourceParameter reference="ModelValue_319"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1518">
              <SourceParameter reference="ModelValue_355"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_98" name="ar_re_metc13" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_53" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_48" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4914" name="Car_metc13" value="0"/>
          <Constant key="Parameter_4915" name="Qre" value="142.942"/>
        </ListOfConstants>
        <KineticLaw function="Function_338" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1497">
              <SourceParameter reference="ModelValue_418"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1514">
              <SourceParameter reference="ModelValue_357"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_99" name="re_ve_metc13" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_48" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_52" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4916" name="BP_metc13" value="1"/>
          <Constant key="Parameter_4917" name="Cre_metc13" value="0"/>
          <Constant key="Parameter_4918" name="Kpre_metc13" value="0.2"/>
          <Constant key="Parameter_4919" name="Qre" value="142.942"/>
        </ListOfConstants>
        <KineticLaw function="Function_339" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1527">
              <SourceParameter reference="ModelValue_309"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1528">
              <SourceParameter reference="ModelValue_403"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1529">
              <SourceParameter reference="ModelValue_314"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1530">
              <SourceParameter reference="ModelValue_357"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_100" name="ar_bo_metc13" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_53" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_54" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4920" name="Car_metc13" value="0"/>
          <Constant key="Parameter_4921" name="Qbo" value="20.898"/>
        </ListOfConstants>
        <KineticLaw function="Function_340" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1513">
              <SourceParameter reference="ModelValue_418"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1526">
              <SourceParameter reference="ModelValue_349"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_101" name="bo_ve_metc13" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_54" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_52" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4922" name="BP_metc13" value="1"/>
          <Constant key="Parameter_4923" name="Cbo_metc13" value="0"/>
          <Constant key="Parameter_4924" name="Kpbo_metc13" value="1"/>
          <Constant key="Parameter_4925" name="Qbo" value="20.898"/>
        </ListOfConstants>
        <KineticLaw function="Function_341" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1539">
              <SourceParameter reference="ModelValue_309"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1540">
              <SourceParameter reference="ModelValue_421"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1541">
              <SourceParameter reference="ModelValue_318"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1542">
              <SourceParameter reference="ModelValue_349"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_102" name="ar_gu_metc13" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_53" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_47" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4926" name="Car_metc13" value="0"/>
          <Constant key="Parameter_4927" name="Qgu" value="61.0222"/>
        </ListOfConstants>
        <KineticLaw function="Function_342" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1525">
              <SourceParameter reference="ModelValue_418"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1538">
              <SourceParameter reference="ModelValue_351"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_103" name="gu_li_metc13" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_47" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4928" name="BP_metc13" value="1"/>
          <Constant key="Parameter_4929" name="Cgu_metc13" value="0"/>
          <Constant key="Parameter_4930" name="Kpgu_metc13" value="1"/>
          <Constant key="Parameter_4931" name="Qgu" value="61.0222"/>
        </ListOfConstants>
        <KineticLaw function="Function_343" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1551">
              <SourceParameter reference="ModelValue_309"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1552">
              <SourceParameter reference="ModelValue_400"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1553">
              <SourceParameter reference="ModelValue_313"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1554">
              <SourceParameter reference="ModelValue_351"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_104" name="ar_he_metc13" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_53" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_46" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4932" name="Car_metc13" value="0"/>
          <Constant key="Parameter_4933" name="Qhe" value="16.7184"/>
        </ListOfConstants>
        <KineticLaw function="Function_344" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1537">
              <SourceParameter reference="ModelValue_418"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1550">
              <SourceParameter reference="ModelValue_350"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_105" name="he_ve_metc13" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_46" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_52" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4934" name="BP_metc13" value="1"/>
          <Constant key="Parameter_4935" name="Che_metc13" value="0"/>
          <Constant key="Parameter_4936" name="Kphe_metc13" value="1"/>
          <Constant key="Parameter_4937" name="Qhe" value="16.7184"/>
        </ListOfConstants>
        <KineticLaw function="Function_345" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1563">
              <SourceParameter reference="ModelValue_309"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1564">
              <SourceParameter reference="ModelValue_397"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1565">
              <SourceParameter reference="ModelValue_312"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1566">
              <SourceParameter reference="ModelValue_350"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_106" name="ar_ki_metc13" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_53" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4808" name="Car_metc13" value="0"/>
          <Constant key="Parameter_4809" name="Qki" value="79.4124"/>
        </ListOfConstants>
        <KineticLaw function="Function_346" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1549">
              <SourceParameter reference="ModelValue_418"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1562">
              <SourceParameter reference="ModelValue_352"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_107" name="ki_ve_metc13" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_52" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4810" name="BP_metc13" value="1"/>
          <Constant key="Parameter_4811" name="Cki_metc13" value="0"/>
          <Constant key="Parameter_4812" name="Kpki_metc13" value="1"/>
          <Constant key="Parameter_4813" name="Qki" value="79.4124"/>
        </ListOfConstants>
        <KineticLaw function="Function_347" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1575">
              <SourceParameter reference="ModelValue_309"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1576">
              <SourceParameter reference="ModelValue_406"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1577">
              <SourceParameter reference="ModelValue_315"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1578">
              <SourceParameter reference="ModelValue_352"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_108" name="ar_sp_metc13" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_53" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_50" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4814" name="Car_metc13" value="0"/>
          <Constant key="Parameter_4815" name="Qsp" value="7.10532"/>
        </ListOfConstants>
        <KineticLaw function="Function_348" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1561">
              <SourceParameter reference="ModelValue_418"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1574">
              <SourceParameter reference="ModelValue_356"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_109" name="sp_li_metc13" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_50" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4816" name="BP_metc13" value="1"/>
          <Constant key="Parameter_4817" name="Csp_metc13" value="0"/>
          <Constant key="Parameter_4818" name="Kpsp_metc13" value="1"/>
          <Constant key="Parameter_4819" name="Qsp" value="7.10532"/>
        </ListOfConstants>
        <KineticLaw function="Function_349" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1587">
              <SourceParameter reference="ModelValue_309"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1588">
              <SourceParameter reference="ModelValue_409"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1589">
              <SourceParameter reference="ModelValue_316"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1590">
              <SourceParameter reference="ModelValue_356"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_110" name="ar_li_metc13" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_53" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4820" name="Car_metc13" value="0"/>
          <Constant key="Parameter_4938" name="Qha" value="21.7339"/>
        </ListOfConstants>
        <KineticLaw function="Function_350" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1573">
              <SourceParameter reference="ModelValue_418"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1586">
              <SourceParameter reference="ModelValue_354"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_111" name="li_ve_metc13" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_52" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4939" name="BP_metc13" value="1"/>
          <Constant key="Parameter_7104" name="Cli_metc13" value="0"/>
          <Constant key="Parameter_7103" name="Kpli_metc13" value="1"/>
          <Constant key="Parameter_7102" name="Qh" value="89.8614"/>
        </ListOfConstants>
        <KineticLaw function="Function_351" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1599">
              <SourceParameter reference="ModelValue_309"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1600">
              <SourceParameter reference="ModelValue_412"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1601">
              <SourceParameter reference="ModelValue_317"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1602">
              <SourceParameter reference="ModelValue_353"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_112" name="Injection_apap" reversible="false" fast="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_63" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7101" name="DIV_apap" value="0"/>
          <Constant key="Parameter_7108" name="Ki_apap" value="498.96"/>
          <Constant key="Parameter_7107" name="Mr_apap" value="151.16"/>
        </ListOfConstants>
        <KineticLaw function="Function_352" unitType="Default" scalingCompartment="CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vve]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1607">
              <SourceParameter reference="ModelValue_322"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1608">
              <SourceParameter reference="ModelValue_328"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1609">
              <SourceParameter reference="ModelValue_320"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1610">
              <SourceParameter reference="Compartment_23"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_113" name="Infusion_apap" reversible="false" fast="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_63" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7106" name="Mr_apap" value="151.16"/>
          <Constant key="Parameter_7105" name="Ri_apap" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_353" unitType="Default" scalingCompartment="CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vve]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1597">
              <SourceParameter reference="ModelValue_320"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1615">
              <SourceParameter reference="ModelValue_329"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1616">
              <SourceParameter reference="Compartment_23"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_114" name="Absorption_apap" reversible="false" fast="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_58" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7112" name="D_apap" value="5600"/>
          <Constant key="Parameter_7111" name="F_apap" value="0.87"/>
          <Constant key="Parameter_7110" name="Ka_apap" value="2.5"/>
          <Constant key="Parameter_7109" name="Mr_apap" value="151.16"/>
        </ListOfConstants>
        <KineticLaw function="Function_354" unitType="Default" scalingCompartment="CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vgu]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1622">
              <SourceParameter reference="ModelValue_321"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1623">
              <SourceParameter reference="ModelValue_326"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1624">
              <SourceParameter reference="ModelValue_325"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1625">
              <SourceParameter reference="ModelValue_320"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1626">
              <SourceParameter reference="Compartment_18"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_115" name="vre_apap" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_60" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_67" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7116" name="CLrenal_apap" value="0.714"/>
          <Constant key="Parameter_7115" name="Cki_free_apap" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_355" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1461">
              <SourceParameter reference="ModelValue_334"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1620">
              <SourceParameter reference="ModelValue_431"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_116" name="ve_lu_apap" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_63" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_66" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7114" name="Cve_apap" value="0"/>
          <Constant key="Parameter_7113" name="Qlu" value="417.96"/>
        </ListOfConstants>
        <KineticLaw function="Function_356" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1633">
              <SourceParameter reference="ModelValue_450"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1634">
              <SourceParameter reference="ModelValue_355"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_117" name="lu_ar_apap" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_66" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_64" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7128" name="BP_apap" value="1"/>
          <Constant key="Parameter_7127" name="Clu_apap" value="0"/>
          <Constant key="Parameter_7126" name="Kplu_apap" value="1"/>
          <Constant key="Parameter_7125" name="Qlu" value="417.96"/>
        </ListOfConstants>
        <KineticLaw function="Function_357" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1639">
              <SourceParameter reference="ModelValue_332"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1640">
              <SourceParameter reference="ModelValue_459"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1641">
              <SourceParameter reference="ModelValue_342"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1642">
              <SourceParameter reference="ModelValue_355"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_118" name="ar_re_apap" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_64" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_59" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7132" name="Car_apap" value="0"/>
          <Constant key="Parameter_7131" name="Qre" value="142.942"/>
        </ListOfConstants>
        <KineticLaw function="Function_358" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1621">
              <SourceParameter reference="ModelValue_453"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1638">
              <SourceParameter reference="ModelValue_357"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_119" name="re_ve_apap" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_59" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_63" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7130" name="BP_apap" value="1"/>
          <Constant key="Parameter_7129" name="Cre_apap" value="0"/>
          <Constant key="Parameter_7136" name="Kpre_apap" value="0.8"/>
          <Constant key="Parameter_7135" name="Qre" value="142.942"/>
        </ListOfConstants>
        <KineticLaw function="Function_359" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1651">
              <SourceParameter reference="ModelValue_332"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1652">
              <SourceParameter reference="ModelValue_438"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1653">
              <SourceParameter reference="ModelValue_337"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1654">
              <SourceParameter reference="ModelValue_357"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_120" name="ar_bo_apap" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_64" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_65" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7134" name="Car_apap" value="0"/>
          <Constant key="Parameter_7133" name="Qbo" value="20.898"/>
        </ListOfConstants>
        <KineticLaw function="Function_360" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1637">
              <SourceParameter reference="ModelValue_453"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1650">
              <SourceParameter reference="ModelValue_349"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_121" name="bo_ve_apap" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_65" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_63" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7140" name="BP_apap" value="1"/>
          <Constant key="Parameter_7139" name="Cbo_apap" value="0"/>
          <Constant key="Parameter_7138" name="Kpbo_apap" value="1"/>
          <Constant key="Parameter_7137" name="Qbo" value="20.898"/>
        </ListOfConstants>
        <KineticLaw function="Function_361" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1663">
              <SourceParameter reference="ModelValue_332"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1664">
              <SourceParameter reference="ModelValue_456"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1665">
              <SourceParameter reference="ModelValue_341"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1666">
              <SourceParameter reference="ModelValue_349"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_122" name="ar_gu_apap" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_64" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_58" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7144" name="Car_apap" value="0"/>
          <Constant key="Parameter_7143" name="Qgu" value="61.0222"/>
        </ListOfConstants>
        <KineticLaw function="Function_362" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1649">
              <SourceParameter reference="ModelValue_453"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1662">
              <SourceParameter reference="ModelValue_351"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_123" name="gu_li_apap" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_58" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_62" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7142" name="BP_apap" value="1"/>
          <Constant key="Parameter_7141" name="Cgu_apap" value="0"/>
          <Constant key="Parameter_7148" name="Kpgu_apap" value="1"/>
          <Constant key="Parameter_7147" name="Qgu" value="61.0222"/>
        </ListOfConstants>
        <KineticLaw function="Function_363" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1675">
              <SourceParameter reference="ModelValue_332"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1676">
              <SourceParameter reference="ModelValue_435"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1677">
              <SourceParameter reference="ModelValue_336"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1678">
              <SourceParameter reference="ModelValue_351"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_124" name="ar_he_apap" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_64" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_57" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7146" name="Car_apap" value="0"/>
          <Constant key="Parameter_7145" name="Qhe" value="16.7184"/>
        </ListOfConstants>
        <KineticLaw function="Function_364" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1661">
              <SourceParameter reference="ModelValue_453"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1674">
              <SourceParameter reference="ModelValue_350"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_125" name="he_ve_apap" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_57" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_63" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7152" name="BP_apap" value="1"/>
          <Constant key="Parameter_7151" name="Che_apap" value="0"/>
          <Constant key="Parameter_7150" name="Kphe_apap" value="1"/>
          <Constant key="Parameter_7149" name="Qhe" value="16.7184"/>
        </ListOfConstants>
        <KineticLaw function="Function_365" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1687">
              <SourceParameter reference="ModelValue_332"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1688">
              <SourceParameter reference="ModelValue_432"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1689">
              <SourceParameter reference="ModelValue_335"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1690">
              <SourceParameter reference="ModelValue_350"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_126" name="ar_ki_apap" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_64" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_60" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7080" name="Car_apap" value="0"/>
          <Constant key="Parameter_7079" name="Qki" value="79.4124"/>
        </ListOfConstants>
        <KineticLaw function="Function_366" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1673">
              <SourceParameter reference="ModelValue_453"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1686">
              <SourceParameter reference="ModelValue_352"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_127" name="ki_ve_apap" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_60" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_63" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7158" name="BP_apap" value="1"/>
          <Constant key="Parameter_7157" name="Cki_apap" value="0"/>
          <Constant key="Parameter_7156" name="Kpki_apap" value="1"/>
          <Constant key="Parameter_7155" name="Qki" value="79.4124"/>
        </ListOfConstants>
        <KineticLaw function="Function_367" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1699">
              <SourceParameter reference="ModelValue_332"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1700">
              <SourceParameter reference="ModelValue_441"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1701">
              <SourceParameter reference="ModelValue_338"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1702">
              <SourceParameter reference="ModelValue_352"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_128" name="ar_sp_apap" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_64" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_61" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7162" name="Car_apap" value="0"/>
          <Constant key="Parameter_7161" name="Qsp" value="7.10532"/>
        </ListOfConstants>
        <KineticLaw function="Function_368" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1685">
              <SourceParameter reference="ModelValue_453"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1698">
              <SourceParameter reference="ModelValue_356"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_129" name="sp_li_apap" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_61" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_62" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7160" name="BP_apap" value="1"/>
          <Constant key="Parameter_7159" name="Csp_apap" value="0"/>
          <Constant key="Parameter_7166" name="Kpsp_apap" value="1"/>
          <Constant key="Parameter_7165" name="Qsp" value="7.10532"/>
        </ListOfConstants>
        <KineticLaw function="Function_369" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1711">
              <SourceParameter reference="ModelValue_332"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1712">
              <SourceParameter reference="ModelValue_444"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1713">
              <SourceParameter reference="ModelValue_339"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1714">
              <SourceParameter reference="ModelValue_356"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_130" name="ar_li_apap" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_64" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_62" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7164" name="Car_apap" value="0"/>
          <Constant key="Parameter_7163" name="Qha" value="21.7339"/>
        </ListOfConstants>
        <KineticLaw function="Function_370" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1697">
              <SourceParameter reference="ModelValue_453"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1710">
              <SourceParameter reference="ModelValue_354"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_131" name="li_ve_apap" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_62" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_63" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7170" name="BP_apap" value="1"/>
          <Constant key="Parameter_7169" name="Cli_apap" value="0"/>
          <Constant key="Parameter_7168" name="Kpli_apap" value="1"/>
          <Constant key="Parameter_7167" name="Qh" value="89.8614"/>
        </ListOfConstants>
        <KineticLaw function="Function_371" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1723">
              <SourceParameter reference="ModelValue_332"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1724">
              <SourceParameter reference="ModelValue_447"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1725">
              <SourceParameter reference="ModelValue_340"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1726">
              <SourceParameter reference="ModelValue_353"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_1">
      <ModelParameterSet key="ModelParameterSet_1" name="Initial State">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vre]" value="55.3125" type="Compartment" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vbo]" value="6.4199999999999999" type="Compartment" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vhe]" value="0.35250000000000004" type="Compartment" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vgu]" value="1.2825" type="Compartment" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vki]" value="0.33000000000000002" type="Compartment" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vli]" value="1.5750000000000002" type="Compartment" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vlu]" value="0.56999999999999995" type="Compartment" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vsp]" value="0.19499999999999998" type="Compartment" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vve]" value="3.855" type="Compartment" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Var]" value="1.9275" type="Compartment" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vpl]" value="3.1800000000000002" type="Compartment" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vplas_ven]" value="2.1200000000000001" type="Compartment" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vplas_art]" value="1.0600000000000001" type="Compartment" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vbreath]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vurine]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vhe],Vector=Metabolites[Ahe_co2c13]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vgu],Vector=Metabolites[Agu_co2c13]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vre],Vector=Metabolites[Are_co2c13]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vki],Vector=Metabolites[Aki_co2c13]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vsp],Vector=Metabolites[Asp_co2c13]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vli],Vector=Metabolites[Ali_co2c13]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vve],Vector=Metabolites[Ave_co2c13]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Var],Vector=Metabolites[Aar_co2c13]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vbo],Vector=Metabolites[Abo_co2c13]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vlu],Vector=Metabolites[Alu_co2c13]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vurine],Vector=Metabolites[Aurine_co2c13]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vhe],Vector=Metabolites[Ahe_metc13]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vgu],Vector=Metabolites[Agu_metc13]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vre],Vector=Metabolites[Are_metc13]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vki],Vector=Metabolites[Aki_metc13]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vsp],Vector=Metabolites[Asp_metc13]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vli],Vector=Metabolites[Ali_metc13]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vve],Vector=Metabolites[Ave_metc13]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Var],Vector=Metabolites[Aar_metc13]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vbo],Vector=Metabolites[Abo_metc13]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vlu],Vector=Metabolites[Alu_metc13]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vurine],Vector=Metabolites[Aurine_metc13]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vhe],Vector=Metabolites[Ahe_apap]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vgu],Vector=Metabolites[Agu_apap]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vre],Vector=Metabolites[Are_apap]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vki],Vector=Metabolites[Aki_apap]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vsp],Vector=Metabolites[Asp_apap]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vli],Vector=Metabolites[Ali_apap]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vve],Vector=Metabolites[Ave_apap]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Var],Vector=Metabolites[Aar_apap]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vbo],Vector=Metabolites[Abo_apap]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vlu],Vector=Metabolites[Alu_apap]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vurine],Vector=Metabolites[Aurine_apap]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vbreath],Vector=Metabolites[Abreath_co2c13]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Compartments[Vbo],Vector=Metabolites[Abo_co2c13_fix]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[BW]" value="75" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[HEIGHT]" value="170" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[HR]" value="70" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[HRrest]" value="70" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[BSA]" value="1.8946901421391666" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[COBW]" value="1.548" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[CO]" value="116.10000000000001" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[QC]" value="417.96000000000004" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[COHRI]" value="150" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[FVre]" value="0.73750000000000004" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[FVbo]" value="0.085599999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[FVhe]" value="0.0047000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[FVgu]" value="0.017100000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[FVki]" value="0.0044000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[FVli]" value="0.021000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[FVlu]" value="0.0076" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[FVsp]" value="0.0025999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[FVve]" value="0.051400000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[FVar]" value="0.025700000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[FVpl]" value="0.0424" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[FQre]" value="0.34199999999999997" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[FQbo]" value="0.050000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[FQhe]" value="0.040000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[FQgu]" value="0.14599999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[FQki]" value="0.19" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[FQh]" value="0.215" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[FQlu]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[FQsp]" value="0.017000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[F_PAR]" value="0.84999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[MPPGL]" value="45" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[KLU_EXCO2]" value="1.2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[KBO_FIXCO2]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[KBO_RELCO2]" value="0.0001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[KBO_MAXCO2]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[P_CO2BSA]" value="300" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[R_PDB]" value="0.01123" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_co2c13]" value="62.020000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[D_co2c13]" value="0" type="ModelValue" simulationType="ode">
            <InitialExpression>
              &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[PODOSE_co2c13],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[DIV_co2c13]" value="0" type="ModelValue" simulationType="ode">
            <InitialExpression>
              &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[IVDOSE_co2c13],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[IVDOSE_co2c13]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[PODOSE_co2c13]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Ka_co2c13]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[F_co2c13]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[ti_co2c13]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Ki_co2c13]" value="498.95999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Ri_co2c13]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[cum_dose_co2c13]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[fup_co2c13]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[BP_co2c13]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[fumic_co2c13]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[CLrenal_co2c13]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Kphe_co2c13]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Kpgu_co2c13]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Kpre_co2c13]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Kpki_co2c13]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Kpsp_co2c13]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Kpli_co2c13]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Kpbo_co2c13]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Kplu_co2c13]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_metc13]" value="165.19" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[D_metc13]" value="0" type="ModelValue" simulationType="ode">
            <InitialExpression>
              &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[PODOSE_metc13],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[DIV_metc13]" value="0" type="ModelValue" simulationType="ode">
            <InitialExpression>
              &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[IVDOSE_metc13],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[IVDOSE_metc13]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[PODOSE_metc13]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Ka_metc13]" value="4" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[F_metc13]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[ti_metc13]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Ki_metc13]" value="498.95999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Ri_metc13]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[cum_dose_metc13]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[fup_metc13]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[BP_metc13]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[fumic_metc13]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[CLrenal_metc13]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Kphe_metc13]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Kpgu_metc13]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Kpre_metc13]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Kpki_metc13]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Kpsp_metc13]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Kpli_metc13]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Kpbo_metc13]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Kplu_metc13]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_apap]" value="151.16" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[D_apap]" value="5600" type="ModelValue" simulationType="ode">
            <InitialExpression>
              &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[PODOSE_apap],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[DIV_apap]" value="0" type="ModelValue" simulationType="ode">
            <InitialExpression>
              &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[IVDOSE_apap],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[IVDOSE_apap]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[PODOSE_apap]" value="5600" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Ka_apap]" value="2.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[F_apap]" value="0.87" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[ti_apap]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Ki_apap]" value="498.95999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Ri_apap]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[cum_dose_apap]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[fup_apap]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[BP_apap]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[fumic_apap]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[CLrenal_apap]" value="0.71399999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Kphe_apap]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Kpgu_apap]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Kpre_apap]" value="0.80000000000000004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Kpki_apap]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Kpsp_apap]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Kpli_apap]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Kpbo_apap]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Kplu_apap]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[P_CO2]" value="9.4734507106958326" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[P_CO2c13]" value="0.10520539489642732" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[P_CO2c12]" value="9.3682453157994043" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[P_CO2R]" value="0.01123" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[P_CO2Fc13]" value="0.011105287620027098" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[DOB]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Qbo]" value="20.898000000000003" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Qhe]" value="16.718400000000003" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Qgu]" value="61.02216" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Qki]" value="79.412400000000005" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Qh]" value="89.861400000000003" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Qha]" value="21.733920000000005" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Qlu]" value="417.96000000000004" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Qsp]" value="7.1053200000000007" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Qre]" value="142.94232" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Xbody_co2c13]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Cpl_ve_co2c13]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Cli_free_co2c13]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Cki_free_co2c13]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Che_co2c13]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Xhe_co2c13]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mhe_co2c13]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Cgu_co2c13]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Xgu_co2c13]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mgu_co2c13]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Cre_co2c13]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Xre_co2c13]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mre_co2c13]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Cki_co2c13]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Xki_co2c13]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mki_co2c13]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Csp_co2c13]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Xsp_co2c13]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Msp_co2c13]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Cli_co2c13]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Xli_co2c13]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mli_co2c13]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Cve_co2c13]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Xve_co2c13]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mve_co2c13]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Car_co2c13]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Xar_co2c13]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mar_co2c13]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Cbo_co2c13]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Xbo_co2c13]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mbo_co2c13]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Clu_co2c13]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Xlu_co2c13]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mlu_co2c13]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Xurine_co2c13]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Xbody_metc13]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Cpl_ve_metc13]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Cli_free_metc13]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Cki_free_metc13]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Che_metc13]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Xhe_metc13]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mhe_metc13]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Cgu_metc13]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Xgu_metc13]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mgu_metc13]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Cre_metc13]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Xre_metc13]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mre_metc13]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Cki_metc13]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Xki_metc13]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mki_metc13]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Csp_metc13]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Xsp_metc13]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Msp_metc13]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Cli_metc13]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Xli_metc13]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mli_metc13]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Cve_metc13]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Xve_metc13]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mve_metc13]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Car_metc13]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Xar_metc13]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mar_metc13]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Cbo_metc13]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Xbo_metc13]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mbo_metc13]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Clu_metc13]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Xlu_metc13]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mlu_metc13]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Xurine_metc13]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Xbody_apap]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Cpl_ve_apap]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Cli_free_apap]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Cki_free_apap]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Che_apap]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Xhe_apap]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mhe_apap]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Cgu_apap]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Xgu_apap]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mgu_apap]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Cre_apap]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Xre_apap]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mre_apap]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Cki_apap]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Xki_apap]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mki_apap]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Csp_apap]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Xsp_apap]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Msp_apap]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Cli_apap]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Xli_apap]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mli_apap]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Cve_apap]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Xve_apap]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mve_apap]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Car_apap]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Xar_apap]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mar_apap]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Cbo_apap]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Xbo_apap]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mbo_apap]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Clu_apap]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Xlu_apap]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mlu_apap]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Xurine_apap]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Xbreath_co2c13]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Cbo_co2c13_fix]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Xbo_co2c13_fix]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[CYP1A2MET_CL]" value="1.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[CYP1A2MET_Km_met]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[CYP1A2MET_CLliv]" value="5.4219375000000012" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[CO2FIX_HLM_CL]" value="1.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[CO2FIX_Km_co2]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[CO2FIX_CLliv]" value="5.4219375000000012" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[APAPD_HLM_CL]" value="2.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[APAPD_Km_apap]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[APAPD_CLliv]" value="9.0365625000000023" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[amount to particle factor]" value="6.0221417900000005e+20" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[CYP1A2MET]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[CYP1A2MET],ParameterGroup=Parameters,Parameter=CYP1A2MET_CLliv" value="5.4219375000000012" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[CYP1A2MET_CLliv],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[CYP1A2MET],ParameterGroup=Parameters,Parameter=CYP1A2MET_Km_met" value="0.02" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[CYP1A2MET_Km_met],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[CYP1A2MET],ParameterGroup=Parameters,Parameter=Cli_free_metc13" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Cli_free_metc13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[CO2FIX]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[CO2FIX],ParameterGroup=Parameters,Parameter=CO2FIX_CLliv" value="5.4219375000000012" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[CO2FIX_CLliv],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[CO2FIX],ParameterGroup=Parameters,Parameter=CO2FIX_Km_co2" value="0.20000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[CO2FIX_Km_co2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[CO2FIX],ParameterGroup=Parameters,Parameter=Cli_co2c13" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Cli_co2c13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[APAPD]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[APAPD],ParameterGroup=Parameters,Parameter=APAPD_CLliv" value="9.0365625000000023" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[APAPD_CLliv],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[APAPD],ParameterGroup=Parameters,Parameter=APAPD_Km_apap" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[APAPD_Km_apap],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[APAPD],ParameterGroup=Parameters,Parameter=Cli_free_apap" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Cli_free_apap],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[Exhalation_co2c13]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[Exhalation_co2c13],ParameterGroup=Parameters,Parameter=Clu_co2c13" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Clu_co2c13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[Exhalation_co2c13],ParameterGroup=Parameters,Parameter=KLU_EXCO2" value="1.2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[KLU_EXCO2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[Fixation_co2c13]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[Fixation_co2c13],ParameterGroup=Parameters,Parameter=Cbo_co2c13_fix" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Cbo_co2c13_fix],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[Fixation_co2c13],ParameterGroup=Parameters,Parameter=Cve_co2c13" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Cve_co2c13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[Fixation_co2c13],ParameterGroup=Parameters,Parameter=KBO_FIXCO2" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[KBO_FIXCO2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[Fixation_co2c13],ParameterGroup=Parameters,Parameter=KBO_MAXCO2" value="0.20000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[KBO_MAXCO2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[Release_co2c13]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[Release_co2c13],ParameterGroup=Parameters,Parameter=Cbo_co2c13_fix" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Cbo_co2c13_fix],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[Release_co2c13],ParameterGroup=Parameters,Parameter=KBO_RELCO2" value="0.0001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[KBO_RELCO2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[Injection_co2c13]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[Injection_co2c13],ParameterGroup=Parameters,Parameter=DIV_co2c13" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[DIV_co2c13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[Injection_co2c13],ParameterGroup=Parameters,Parameter=Ki_co2c13" value="498.95999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Ki_co2c13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[Injection_co2c13],ParameterGroup=Parameters,Parameter=Mr_co2c13" value="62.020000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_co2c13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[Infusion_co2c13]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[Infusion_co2c13],ParameterGroup=Parameters,Parameter=Mr_co2c13" value="62.020000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_co2c13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[Infusion_co2c13],ParameterGroup=Parameters,Parameter=Ri_co2c13" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Ri_co2c13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[Absorption_co2c13]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[Absorption_co2c13],ParameterGroup=Parameters,Parameter=D_co2c13" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[D_co2c13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[Absorption_co2c13],ParameterGroup=Parameters,Parameter=F_co2c13" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[F_co2c13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[Absorption_co2c13],ParameterGroup=Parameters,Parameter=Ka_co2c13" value="8" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Ka_co2c13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[Absorption_co2c13],ParameterGroup=Parameters,Parameter=Mr_co2c13" value="62.020000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_co2c13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[vre_co2c13]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[vre_co2c13],ParameterGroup=Parameters,Parameter=CLrenal_co2c13" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[CLrenal_co2c13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[vre_co2c13],ParameterGroup=Parameters,Parameter=Cki_free_co2c13" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Cki_free_co2c13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ve_lu_co2c13]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ve_lu_co2c13],ParameterGroup=Parameters,Parameter=Cve_co2c13" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Cve_co2c13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ve_lu_co2c13],ParameterGroup=Parameters,Parameter=Qlu" value="417.96000000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Qlu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[lu_ar_co2c13]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[lu_ar_co2c13],ParameterGroup=Parameters,Parameter=BP_co2c13" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[BP_co2c13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[lu_ar_co2c13],ParameterGroup=Parameters,Parameter=Clu_co2c13" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Clu_co2c13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[lu_ar_co2c13],ParameterGroup=Parameters,Parameter=Kplu_co2c13" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Kplu_co2c13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[lu_ar_co2c13],ParameterGroup=Parameters,Parameter=Qlu" value="417.96000000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Qlu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ar_re_co2c13]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ar_re_co2c13],ParameterGroup=Parameters,Parameter=Car_co2c13" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Car_co2c13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ar_re_co2c13],ParameterGroup=Parameters,Parameter=Qre" value="142.94232" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Qre],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[re_ve_co2c13]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[re_ve_co2c13],ParameterGroup=Parameters,Parameter=BP_co2c13" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[BP_co2c13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[re_ve_co2c13],ParameterGroup=Parameters,Parameter=Cre_co2c13" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Cre_co2c13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[re_ve_co2c13],ParameterGroup=Parameters,Parameter=Kpre_co2c13" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Kpre_co2c13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[re_ve_co2c13],ParameterGroup=Parameters,Parameter=Qre" value="142.94232" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Qre],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ar_bo_co2c13]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ar_bo_co2c13],ParameterGroup=Parameters,Parameter=Car_co2c13" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Car_co2c13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ar_bo_co2c13],ParameterGroup=Parameters,Parameter=Qbo" value="20.898000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Qbo],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[bo_ve_co2c13]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[bo_ve_co2c13],ParameterGroup=Parameters,Parameter=BP_co2c13" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[BP_co2c13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[bo_ve_co2c13],ParameterGroup=Parameters,Parameter=Cbo_co2c13" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Cbo_co2c13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[bo_ve_co2c13],ParameterGroup=Parameters,Parameter=Kpbo_co2c13" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Kpbo_co2c13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[bo_ve_co2c13],ParameterGroup=Parameters,Parameter=Qbo" value="20.898000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Qbo],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ar_gu_co2c13]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ar_gu_co2c13],ParameterGroup=Parameters,Parameter=Car_co2c13" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Car_co2c13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ar_gu_co2c13],ParameterGroup=Parameters,Parameter=Qgu" value="61.02216" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Qgu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[gu_li_co2c13]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[gu_li_co2c13],ParameterGroup=Parameters,Parameter=BP_co2c13" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[BP_co2c13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[gu_li_co2c13],ParameterGroup=Parameters,Parameter=Cgu_co2c13" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Cgu_co2c13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[gu_li_co2c13],ParameterGroup=Parameters,Parameter=Kpgu_co2c13" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Kpgu_co2c13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[gu_li_co2c13],ParameterGroup=Parameters,Parameter=Qgu" value="61.02216" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Qgu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ar_he_co2c13]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ar_he_co2c13],ParameterGroup=Parameters,Parameter=Car_co2c13" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Car_co2c13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ar_he_co2c13],ParameterGroup=Parameters,Parameter=Qhe" value="16.718400000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Qhe],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[he_ve_co2c13]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[he_ve_co2c13],ParameterGroup=Parameters,Parameter=BP_co2c13" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[BP_co2c13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[he_ve_co2c13],ParameterGroup=Parameters,Parameter=Che_co2c13" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Che_co2c13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[he_ve_co2c13],ParameterGroup=Parameters,Parameter=Kphe_co2c13" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Kphe_co2c13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[he_ve_co2c13],ParameterGroup=Parameters,Parameter=Qhe" value="16.718400000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Qhe],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ar_ki_co2c13]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ar_ki_co2c13],ParameterGroup=Parameters,Parameter=Car_co2c13" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Car_co2c13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ar_ki_co2c13],ParameterGroup=Parameters,Parameter=Qki" value="79.412400000000005" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Qki],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ki_ve_co2c13]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ki_ve_co2c13],ParameterGroup=Parameters,Parameter=BP_co2c13" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[BP_co2c13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ki_ve_co2c13],ParameterGroup=Parameters,Parameter=Cki_co2c13" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Cki_co2c13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ki_ve_co2c13],ParameterGroup=Parameters,Parameter=Kpki_co2c13" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Kpki_co2c13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ki_ve_co2c13],ParameterGroup=Parameters,Parameter=Qki" value="79.412400000000005" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Qki],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ar_sp_co2c13]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ar_sp_co2c13],ParameterGroup=Parameters,Parameter=Car_co2c13" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Car_co2c13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ar_sp_co2c13],ParameterGroup=Parameters,Parameter=Qsp" value="7.1053200000000007" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Qsp],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[sp_li_co2c13]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[sp_li_co2c13],ParameterGroup=Parameters,Parameter=BP_co2c13" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[BP_co2c13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[sp_li_co2c13],ParameterGroup=Parameters,Parameter=Csp_co2c13" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Csp_co2c13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[sp_li_co2c13],ParameterGroup=Parameters,Parameter=Kpsp_co2c13" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Kpsp_co2c13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[sp_li_co2c13],ParameterGroup=Parameters,Parameter=Qsp" value="7.1053200000000007" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Qsp],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ar_li_co2c13]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ar_li_co2c13],ParameterGroup=Parameters,Parameter=Car_co2c13" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Car_co2c13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ar_li_co2c13],ParameterGroup=Parameters,Parameter=Qha" value="21.733920000000005" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Qha],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[li_ve_co2c13]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[li_ve_co2c13],ParameterGroup=Parameters,Parameter=BP_co2c13" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[BP_co2c13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[li_ve_co2c13],ParameterGroup=Parameters,Parameter=Cli_co2c13" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Cli_co2c13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[li_ve_co2c13],ParameterGroup=Parameters,Parameter=Kpli_co2c13" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Kpli_co2c13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[li_ve_co2c13],ParameterGroup=Parameters,Parameter=Qh" value="89.861400000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Qh],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[Injection_metc13]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[Injection_metc13],ParameterGroup=Parameters,Parameter=DIV_metc13" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[DIV_metc13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[Injection_metc13],ParameterGroup=Parameters,Parameter=Ki_metc13" value="498.95999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Ki_metc13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[Injection_metc13],ParameterGroup=Parameters,Parameter=Mr_metc13" value="165.19" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_metc13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[Infusion_metc13]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[Infusion_metc13],ParameterGroup=Parameters,Parameter=Mr_metc13" value="165.19" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_metc13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[Infusion_metc13],ParameterGroup=Parameters,Parameter=Ri_metc13" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Ri_metc13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[Absorption_metc13]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[Absorption_metc13],ParameterGroup=Parameters,Parameter=D_metc13" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[D_metc13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[Absorption_metc13],ParameterGroup=Parameters,Parameter=F_metc13" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[F_metc13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[Absorption_metc13],ParameterGroup=Parameters,Parameter=Ka_metc13" value="4" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Ka_metc13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[Absorption_metc13],ParameterGroup=Parameters,Parameter=Mr_metc13" value="165.19" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_metc13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[vre_metc13]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[vre_metc13],ParameterGroup=Parameters,Parameter=CLrenal_metc13" value="10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[CLrenal_metc13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[vre_metc13],ParameterGroup=Parameters,Parameter=Cki_free_metc13" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Cki_free_metc13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ve_lu_metc13]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ve_lu_metc13],ParameterGroup=Parameters,Parameter=Cve_metc13" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Cve_metc13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ve_lu_metc13],ParameterGroup=Parameters,Parameter=Qlu" value="417.96000000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Qlu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[lu_ar_metc13]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[lu_ar_metc13],ParameterGroup=Parameters,Parameter=BP_metc13" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[BP_metc13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[lu_ar_metc13],ParameterGroup=Parameters,Parameter=Clu_metc13" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Clu_metc13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[lu_ar_metc13],ParameterGroup=Parameters,Parameter=Kplu_metc13" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Kplu_metc13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[lu_ar_metc13],ParameterGroup=Parameters,Parameter=Qlu" value="417.96000000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Qlu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ar_re_metc13]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ar_re_metc13],ParameterGroup=Parameters,Parameter=Car_metc13" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Car_metc13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ar_re_metc13],ParameterGroup=Parameters,Parameter=Qre" value="142.94232" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Qre],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[re_ve_metc13]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[re_ve_metc13],ParameterGroup=Parameters,Parameter=BP_metc13" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[BP_metc13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[re_ve_metc13],ParameterGroup=Parameters,Parameter=Cre_metc13" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Cre_metc13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[re_ve_metc13],ParameterGroup=Parameters,Parameter=Kpre_metc13" value="0.20000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Kpre_metc13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[re_ve_metc13],ParameterGroup=Parameters,Parameter=Qre" value="142.94232" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Qre],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ar_bo_metc13]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ar_bo_metc13],ParameterGroup=Parameters,Parameter=Car_metc13" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Car_metc13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ar_bo_metc13],ParameterGroup=Parameters,Parameter=Qbo" value="20.898000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Qbo],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[bo_ve_metc13]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[bo_ve_metc13],ParameterGroup=Parameters,Parameter=BP_metc13" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[BP_metc13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[bo_ve_metc13],ParameterGroup=Parameters,Parameter=Cbo_metc13" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Cbo_metc13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[bo_ve_metc13],ParameterGroup=Parameters,Parameter=Kpbo_metc13" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Kpbo_metc13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[bo_ve_metc13],ParameterGroup=Parameters,Parameter=Qbo" value="20.898000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Qbo],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ar_gu_metc13]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ar_gu_metc13],ParameterGroup=Parameters,Parameter=Car_metc13" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Car_metc13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ar_gu_metc13],ParameterGroup=Parameters,Parameter=Qgu" value="61.02216" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Qgu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[gu_li_metc13]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[gu_li_metc13],ParameterGroup=Parameters,Parameter=BP_metc13" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[BP_metc13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[gu_li_metc13],ParameterGroup=Parameters,Parameter=Cgu_metc13" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Cgu_metc13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[gu_li_metc13],ParameterGroup=Parameters,Parameter=Kpgu_metc13" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Kpgu_metc13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[gu_li_metc13],ParameterGroup=Parameters,Parameter=Qgu" value="61.02216" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Qgu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ar_he_metc13]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ar_he_metc13],ParameterGroup=Parameters,Parameter=Car_metc13" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Car_metc13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ar_he_metc13],ParameterGroup=Parameters,Parameter=Qhe" value="16.718400000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Qhe],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[he_ve_metc13]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[he_ve_metc13],ParameterGroup=Parameters,Parameter=BP_metc13" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[BP_metc13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[he_ve_metc13],ParameterGroup=Parameters,Parameter=Che_metc13" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Che_metc13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[he_ve_metc13],ParameterGroup=Parameters,Parameter=Kphe_metc13" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Kphe_metc13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[he_ve_metc13],ParameterGroup=Parameters,Parameter=Qhe" value="16.718400000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Qhe],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ar_ki_metc13]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ar_ki_metc13],ParameterGroup=Parameters,Parameter=Car_metc13" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Car_metc13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ar_ki_metc13],ParameterGroup=Parameters,Parameter=Qki" value="79.412400000000005" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Qki],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ki_ve_metc13]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ki_ve_metc13],ParameterGroup=Parameters,Parameter=BP_metc13" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[BP_metc13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ki_ve_metc13],ParameterGroup=Parameters,Parameter=Cki_metc13" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Cki_metc13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ki_ve_metc13],ParameterGroup=Parameters,Parameter=Kpki_metc13" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Kpki_metc13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ki_ve_metc13],ParameterGroup=Parameters,Parameter=Qki" value="79.412400000000005" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Qki],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ar_sp_metc13]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ar_sp_metc13],ParameterGroup=Parameters,Parameter=Car_metc13" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Car_metc13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ar_sp_metc13],ParameterGroup=Parameters,Parameter=Qsp" value="7.1053200000000007" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Qsp],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[sp_li_metc13]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[sp_li_metc13],ParameterGroup=Parameters,Parameter=BP_metc13" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[BP_metc13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[sp_li_metc13],ParameterGroup=Parameters,Parameter=Csp_metc13" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Csp_metc13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[sp_li_metc13],ParameterGroup=Parameters,Parameter=Kpsp_metc13" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Kpsp_metc13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[sp_li_metc13],ParameterGroup=Parameters,Parameter=Qsp" value="7.1053200000000007" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Qsp],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ar_li_metc13]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ar_li_metc13],ParameterGroup=Parameters,Parameter=Car_metc13" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Car_metc13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ar_li_metc13],ParameterGroup=Parameters,Parameter=Qha" value="21.733920000000005" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Qha],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[li_ve_metc13]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[li_ve_metc13],ParameterGroup=Parameters,Parameter=BP_metc13" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[BP_metc13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[li_ve_metc13],ParameterGroup=Parameters,Parameter=Cli_metc13" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Cli_metc13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[li_ve_metc13],ParameterGroup=Parameters,Parameter=Kpli_metc13" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Kpli_metc13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[li_ve_metc13],ParameterGroup=Parameters,Parameter=Qh" value="89.861400000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Qh],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[Injection_apap]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[Injection_apap],ParameterGroup=Parameters,Parameter=DIV_apap" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[DIV_apap],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[Injection_apap],ParameterGroup=Parameters,Parameter=Ki_apap" value="498.95999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Ki_apap],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[Injection_apap],ParameterGroup=Parameters,Parameter=Mr_apap" value="151.16" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_apap],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[Infusion_apap]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[Infusion_apap],ParameterGroup=Parameters,Parameter=Mr_apap" value="151.16" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_apap],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[Infusion_apap],ParameterGroup=Parameters,Parameter=Ri_apap" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Ri_apap],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[Absorption_apap]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[Absorption_apap],ParameterGroup=Parameters,Parameter=D_apap" value="5600" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[D_apap],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[Absorption_apap],ParameterGroup=Parameters,Parameter=F_apap" value="0.87" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[F_apap],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[Absorption_apap],ParameterGroup=Parameters,Parameter=Ka_apap" value="2.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Ka_apap],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[Absorption_apap],ParameterGroup=Parameters,Parameter=Mr_apap" value="151.16" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mr_apap],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[vre_apap]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[vre_apap],ParameterGroup=Parameters,Parameter=CLrenal_apap" value="0.71399999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[CLrenal_apap],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[vre_apap],ParameterGroup=Parameters,Parameter=Cki_free_apap" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Cki_free_apap],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ve_lu_apap]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ve_lu_apap],ParameterGroup=Parameters,Parameter=Cve_apap" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Cve_apap],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ve_lu_apap],ParameterGroup=Parameters,Parameter=Qlu" value="417.96000000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Qlu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[lu_ar_apap]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[lu_ar_apap],ParameterGroup=Parameters,Parameter=BP_apap" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[BP_apap],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[lu_ar_apap],ParameterGroup=Parameters,Parameter=Clu_apap" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Clu_apap],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[lu_ar_apap],ParameterGroup=Parameters,Parameter=Kplu_apap" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Kplu_apap],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[lu_ar_apap],ParameterGroup=Parameters,Parameter=Qlu" value="417.96000000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Qlu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ar_re_apap]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ar_re_apap],ParameterGroup=Parameters,Parameter=Car_apap" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Car_apap],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ar_re_apap],ParameterGroup=Parameters,Parameter=Qre" value="142.94232" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Qre],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[re_ve_apap]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[re_ve_apap],ParameterGroup=Parameters,Parameter=BP_apap" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[BP_apap],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[re_ve_apap],ParameterGroup=Parameters,Parameter=Cre_apap" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Cre_apap],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[re_ve_apap],ParameterGroup=Parameters,Parameter=Kpre_apap" value="0.80000000000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Kpre_apap],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[re_ve_apap],ParameterGroup=Parameters,Parameter=Qre" value="142.94232" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Qre],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ar_bo_apap]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ar_bo_apap],ParameterGroup=Parameters,Parameter=Car_apap" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Car_apap],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ar_bo_apap],ParameterGroup=Parameters,Parameter=Qbo" value="20.898000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Qbo],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[bo_ve_apap]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[bo_ve_apap],ParameterGroup=Parameters,Parameter=BP_apap" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[BP_apap],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[bo_ve_apap],ParameterGroup=Parameters,Parameter=Cbo_apap" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Cbo_apap],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[bo_ve_apap],ParameterGroup=Parameters,Parameter=Kpbo_apap" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Kpbo_apap],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[bo_ve_apap],ParameterGroup=Parameters,Parameter=Qbo" value="20.898000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Qbo],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ar_gu_apap]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ar_gu_apap],ParameterGroup=Parameters,Parameter=Car_apap" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Car_apap],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ar_gu_apap],ParameterGroup=Parameters,Parameter=Qgu" value="61.02216" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Qgu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[gu_li_apap]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[gu_li_apap],ParameterGroup=Parameters,Parameter=BP_apap" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[BP_apap],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[gu_li_apap],ParameterGroup=Parameters,Parameter=Cgu_apap" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Cgu_apap],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[gu_li_apap],ParameterGroup=Parameters,Parameter=Kpgu_apap" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Kpgu_apap],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[gu_li_apap],ParameterGroup=Parameters,Parameter=Qgu" value="61.02216" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Qgu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ar_he_apap]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ar_he_apap],ParameterGroup=Parameters,Parameter=Car_apap" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Car_apap],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ar_he_apap],ParameterGroup=Parameters,Parameter=Qhe" value="16.718400000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Qhe],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[he_ve_apap]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[he_ve_apap],ParameterGroup=Parameters,Parameter=BP_apap" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[BP_apap],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[he_ve_apap],ParameterGroup=Parameters,Parameter=Che_apap" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Che_apap],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[he_ve_apap],ParameterGroup=Parameters,Parameter=Kphe_apap" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Kphe_apap],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[he_ve_apap],ParameterGroup=Parameters,Parameter=Qhe" value="16.718400000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Qhe],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ar_ki_apap]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ar_ki_apap],ParameterGroup=Parameters,Parameter=Car_apap" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Car_apap],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ar_ki_apap],ParameterGroup=Parameters,Parameter=Qki" value="79.412400000000005" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Qki],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ki_ve_apap]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ki_ve_apap],ParameterGroup=Parameters,Parameter=BP_apap" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[BP_apap],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ki_ve_apap],ParameterGroup=Parameters,Parameter=Cki_apap" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Cki_apap],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ki_ve_apap],ParameterGroup=Parameters,Parameter=Kpki_apap" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Kpki_apap],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ki_ve_apap],ParameterGroup=Parameters,Parameter=Qki" value="79.412400000000005" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Qki],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ar_sp_apap]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ar_sp_apap],ParameterGroup=Parameters,Parameter=Car_apap" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Car_apap],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ar_sp_apap],ParameterGroup=Parameters,Parameter=Qsp" value="7.1053200000000007" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Qsp],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[sp_li_apap]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[sp_li_apap],ParameterGroup=Parameters,Parameter=BP_apap" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[BP_apap],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[sp_li_apap],ParameterGroup=Parameters,Parameter=Csp_apap" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Csp_apap],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[sp_li_apap],ParameterGroup=Parameters,Parameter=Kpsp_apap" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Kpsp_apap],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[sp_li_apap],ParameterGroup=Parameters,Parameter=Qsp" value="7.1053200000000007" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Qsp],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ar_li_apap]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ar_li_apap],ParameterGroup=Parameters,Parameter=Car_apap" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Car_apap],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[ar_li_apap],ParameterGroup=Parameters,Parameter=Qha" value="21.733920000000005" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Qha],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[li_ve_apap]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[li_ve_apap],ParameterGroup=Parameters,Parameter=BP_apap" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[BP_apap],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[li_ve_apap],ParameterGroup=Parameters,Parameter=Cli_apap" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Cli_apap],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[li_ve_apap],ParameterGroup=Parameters,Parameter=Kpli_apap" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Kpli_apap],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=limax_pkpd_37_1,Vector=Reactions[li_ve_apap],ParameterGroup=Parameters,Parameter=Qh" value="89.861400000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=limax_pkpd_37_1,Vector=Values[Qh],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="ModelValue_275"/>
      <StateTemplateVariable objectReference="ModelValue_276"/>
      <StateTemplateVariable objectReference="ModelValue_284"/>
      <StateTemplateVariable objectReference="ModelValue_298"/>
      <StateTemplateVariable objectReference="ModelValue_299"/>
      <StateTemplateVariable objectReference="ModelValue_307"/>
      <StateTemplateVariable objectReference="ModelValue_321"/>
      <StateTemplateVariable objectReference="ModelValue_322"/>
      <StateTemplateVariable objectReference="ModelValue_330"/>
      <StateTemplateVariable objectReference="Metabolite_41"/>
      <StateTemplateVariable objectReference="Metabolite_52"/>
      <StateTemplateVariable objectReference="Metabolite_63"/>
      <StateTemplateVariable objectReference="Metabolite_42"/>
      <StateTemplateVariable objectReference="Metabolite_53"/>
      <StateTemplateVariable objectReference="Metabolite_64"/>
      <StateTemplateVariable objectReference="Metabolite_40"/>
      <StateTemplateVariable objectReference="Metabolite_62"/>
      <StateTemplateVariable objectReference="Metabolite_51"/>
      <StateTemplateVariable objectReference="Metabolite_38"/>
      <StateTemplateVariable objectReference="Metabolite_44"/>
      <StateTemplateVariable objectReference="Metabolite_60"/>
      <StateTemplateVariable objectReference="Metabolite_49"/>
      <StateTemplateVariable objectReference="Metabolite_58"/>
      <StateTemplateVariable objectReference="Metabolite_36"/>
      <StateTemplateVariable objectReference="Metabolite_47"/>
      <StateTemplateVariable objectReference="Metabolite_35"/>
      <StateTemplateVariable objectReference="Metabolite_57"/>
      <StateTemplateVariable objectReference="Metabolite_46"/>
      <StateTemplateVariable objectReference="Metabolite_37"/>
      <StateTemplateVariable objectReference="Metabolite_66"/>
      <StateTemplateVariable objectReference="Metabolite_55"/>
      <StateTemplateVariable objectReference="Metabolite_43"/>
      <StateTemplateVariable objectReference="Metabolite_59"/>
      <StateTemplateVariable objectReference="Metabolite_48"/>
      <StateTemplateVariable objectReference="Metabolite_65"/>
      <StateTemplateVariable objectReference="Metabolite_54"/>
      <StateTemplateVariable objectReference="Metabolite_39"/>
      <StateTemplateVariable objectReference="Metabolite_69"/>
      <StateTemplateVariable objectReference="Metabolite_61"/>
      <StateTemplateVariable objectReference="Metabolite_50"/>
      <StateTemplateVariable objectReference="Metabolite_45"/>
      <StateTemplateVariable objectReference="Metabolite_67"/>
      <StateTemplateVariable objectReference="Metabolite_68"/>
      <StateTemplateVariable objectReference="Metabolite_56"/>
      <StateTemplateVariable objectReference="Compartment_15"/>
      <StateTemplateVariable objectReference="Compartment_16"/>
      <StateTemplateVariable objectReference="Compartment_17"/>
      <StateTemplateVariable objectReference="Compartment_18"/>
      <StateTemplateVariable objectReference="Compartment_19"/>
      <StateTemplateVariable objectReference="Compartment_20"/>
      <StateTemplateVariable objectReference="Compartment_21"/>
      <StateTemplateVariable objectReference="Compartment_22"/>
      <StateTemplateVariable objectReference="Compartment_23"/>
      <StateTemplateVariable objectReference="Compartment_24"/>
      <StateTemplateVariable objectReference="Compartment_25"/>
      <StateTemplateVariable objectReference="Compartment_26"/>
      <StateTemplateVariable objectReference="Compartment_27"/>
      <StateTemplateVariable objectReference="ModelValue_242"/>
      <StateTemplateVariable objectReference="ModelValue_244"/>
      <StateTemplateVariable objectReference="ModelValue_245"/>
      <StateTemplateVariable objectReference="ModelValue_247"/>
      <StateTemplateVariable objectReference="ModelValue_258"/>
      <StateTemplateVariable objectReference="ModelValue_282"/>
      <StateTemplateVariable objectReference="ModelValue_305"/>
      <StateTemplateVariable objectReference="ModelValue_328"/>
      <StateTemplateVariable objectReference="ModelValue_343"/>
      <StateTemplateVariable objectReference="ModelValue_344"/>
      <StateTemplateVariable objectReference="ModelValue_345"/>
      <StateTemplateVariable objectReference="ModelValue_346"/>
      <StateTemplateVariable objectReference="ModelValue_347"/>
      <StateTemplateVariable objectReference="ModelValue_348"/>
      <StateTemplateVariable objectReference="ModelValue_349"/>
      <StateTemplateVariable objectReference="ModelValue_350"/>
      <StateTemplateVariable objectReference="ModelValue_351"/>
      <StateTemplateVariable objectReference="ModelValue_352"/>
      <StateTemplateVariable objectReference="ModelValue_353"/>
      <StateTemplateVariable objectReference="ModelValue_354"/>
      <StateTemplateVariable objectReference="ModelValue_355"/>
      <StateTemplateVariable objectReference="ModelValue_356"/>
      <StateTemplateVariable objectReference="ModelValue_357"/>
      <StateTemplateVariable objectReference="ModelValue_358"/>
      <StateTemplateVariable objectReference="ModelValue_359"/>
      <StateTemplateVariable objectReference="ModelValue_360"/>
      <StateTemplateVariable objectReference="ModelValue_361"/>
      <StateTemplateVariable objectReference="ModelValue_362"/>
      <StateTemplateVariable objectReference="ModelValue_363"/>
      <StateTemplateVariable objectReference="ModelValue_364"/>
      <StateTemplateVariable objectReference="ModelValue_365"/>
      <StateTemplateVariable objectReference="ModelValue_366"/>
      <StateTemplateVariable objectReference="ModelValue_367"/>
      <StateTemplateVariable objectReference="ModelValue_368"/>
      <StateTemplateVariable objectReference="ModelValue_369"/>
      <StateTemplateVariable objectReference="ModelValue_370"/>
      <StateTemplateVariable objectReference="ModelValue_371"/>
      <StateTemplateVariable objectReference="ModelValue_372"/>
      <StateTemplateVariable objectReference="ModelValue_373"/>
      <StateTemplateVariable objectReference="ModelValue_374"/>
      <StateTemplateVariable objectReference="ModelValue_375"/>
      <StateTemplateVariable objectReference="ModelValue_376"/>
      <StateTemplateVariable objectReference="ModelValue_377"/>
      <StateTemplateVariable objectReference="ModelValue_378"/>
      <StateTemplateVariable objectReference="ModelValue_379"/>
      <StateTemplateVariable objectReference="ModelValue_380"/>
      <StateTemplateVariable objectReference="ModelValue_381"/>
      <StateTemplateVariable objectReference="ModelValue_382"/>
      <StateTemplateVariable objectReference="ModelValue_383"/>
      <StateTemplateVariable objectReference="ModelValue_384"/>
      <StateTemplateVariable objectReference="ModelValue_385"/>
      <StateTemplateVariable objectReference="ModelValue_386"/>
      <StateTemplateVariable objectReference="ModelValue_387"/>
      <StateTemplateVariable objectReference="ModelValue_388"/>
      <StateTemplateVariable objectReference="ModelValue_389"/>
      <StateTemplateVariable objectReference="ModelValue_390"/>
      <StateTemplateVariable objectReference="ModelValue_391"/>
      <StateTemplateVariable objectReference="ModelValue_392"/>
      <StateTemplateVariable objectReference="ModelValue_393"/>
      <StateTemplateVariable objectReference="ModelValue_394"/>
      <StateTemplateVariable objectReference="ModelValue_395"/>
      <StateTemplateVariable objectReference="ModelValue_396"/>
      <StateTemplateVariable objectReference="ModelValue_397"/>
      <StateTemplateVariable objectReference="ModelValue_398"/>
      <StateTemplateVariable objectReference="ModelValue_399"/>
      <StateTemplateVariable objectReference="ModelValue_400"/>
      <StateTemplateVariable objectReference="ModelValue_401"/>
      <StateTemplateVariable objectReference="ModelValue_402"/>
      <StateTemplateVariable objectReference="ModelValue_403"/>
      <StateTemplateVariable objectReference="ModelValue_404"/>
      <StateTemplateVariable objectReference="ModelValue_405"/>
      <StateTemplateVariable objectReference="ModelValue_406"/>
      <StateTemplateVariable objectReference="ModelValue_407"/>
      <StateTemplateVariable objectReference="ModelValue_408"/>
      <StateTemplateVariable objectReference="ModelValue_409"/>
      <StateTemplateVariable objectReference="ModelValue_410"/>
      <StateTemplateVariable objectReference="ModelValue_411"/>
      <StateTemplateVariable objectReference="ModelValue_412"/>
      <StateTemplateVariable objectReference="ModelValue_413"/>
      <StateTemplateVariable objectReference="ModelValue_414"/>
      <StateTemplateVariable objectReference="ModelValue_415"/>
      <StateTemplateVariable objectReference="ModelValue_416"/>
      <StateTemplateVariable objectReference="ModelValue_417"/>
      <StateTemplateVariable objectReference="ModelValue_418"/>
      <StateTemplateVariable objectReference="ModelValue_419"/>
      <StateTemplateVariable objectReference="ModelValue_420"/>
      <StateTemplateVariable objectReference="ModelValue_421"/>
      <StateTemplateVariable objectReference="ModelValue_422"/>
      <StateTemplateVariable objectReference="ModelValue_423"/>
      <StateTemplateVariable objectReference="ModelValue_424"/>
      <StateTemplateVariable objectReference="ModelValue_425"/>
      <StateTemplateVariable objectReference="ModelValue_426"/>
      <StateTemplateVariable objectReference="ModelValue_427"/>
      <StateTemplateVariable objectReference="ModelValue_428"/>
      <StateTemplateVariable objectReference="ModelValue_429"/>
      <StateTemplateVariable objectReference="ModelValue_430"/>
      <StateTemplateVariable objectReference="ModelValue_431"/>
      <StateTemplateVariable objectReference="ModelValue_432"/>
      <StateTemplateVariable objectReference="ModelValue_433"/>
      <StateTemplateVariable objectReference="ModelValue_434"/>
      <StateTemplateVariable objectReference="ModelValue_435"/>
      <StateTemplateVariable objectReference="ModelValue_436"/>
      <StateTemplateVariable objectReference="ModelValue_437"/>
      <StateTemplateVariable objectReference="ModelValue_438"/>
      <StateTemplateVariable objectReference="ModelValue_439"/>
      <StateTemplateVariable objectReference="ModelValue_440"/>
      <StateTemplateVariable objectReference="ModelValue_441"/>
      <StateTemplateVariable objectReference="ModelValue_442"/>
      <StateTemplateVariable objectReference="ModelValue_443"/>
      <StateTemplateVariable objectReference="ModelValue_444"/>
      <StateTemplateVariable objectReference="ModelValue_445"/>
      <StateTemplateVariable objectReference="ModelValue_446"/>
      <StateTemplateVariable objectReference="ModelValue_447"/>
      <StateTemplateVariable objectReference="ModelValue_448"/>
      <StateTemplateVariable objectReference="ModelValue_449"/>
      <StateTemplateVariable objectReference="ModelValue_450"/>
      <StateTemplateVariable objectReference="ModelValue_451"/>
      <StateTemplateVariable objectReference="ModelValue_452"/>
      <StateTemplateVariable objectReference="ModelValue_453"/>
      <StateTemplateVariable objectReference="ModelValue_454"/>
      <StateTemplateVariable objectReference="ModelValue_455"/>
      <StateTemplateVariable objectReference="ModelValue_456"/>
      <StateTemplateVariable objectReference="ModelValue_457"/>
      <StateTemplateVariable objectReference="ModelValue_458"/>
      <StateTemplateVariable objectReference="ModelValue_459"/>
      <StateTemplateVariable objectReference="ModelValue_460"/>
      <StateTemplateVariable objectReference="ModelValue_461"/>
      <StateTemplateVariable objectReference="ModelValue_462"/>
      <StateTemplateVariable objectReference="ModelValue_463"/>
      <StateTemplateVariable objectReference="ModelValue_464"/>
      <StateTemplateVariable objectReference="ModelValue_465"/>
      <StateTemplateVariable objectReference="ModelValue_468"/>
      <StateTemplateVariable objectReference="ModelValue_471"/>
      <StateTemplateVariable objectReference="ModelValue_474"/>
      <StateTemplateVariable objectReference="Compartment_28"/>
      <StateTemplateVariable objectReference="Compartment_29"/>
      <StateTemplateVariable objectReference="ModelValue_238"/>
      <StateTemplateVariable objectReference="ModelValue_239"/>
      <StateTemplateVariable objectReference="ModelValue_240"/>
      <StateTemplateVariable objectReference="ModelValue_241"/>
      <StateTemplateVariable objectReference="ModelValue_243"/>
      <StateTemplateVariable objectReference="ModelValue_246"/>
      <StateTemplateVariable objectReference="ModelValue_248"/>
      <StateTemplateVariable objectReference="ModelValue_249"/>
      <StateTemplateVariable objectReference="ModelValue_250"/>
      <StateTemplateVariable objectReference="ModelValue_251"/>
      <StateTemplateVariable objectReference="ModelValue_252"/>
      <StateTemplateVariable objectReference="ModelValue_253"/>
      <StateTemplateVariable objectReference="ModelValue_254"/>
      <StateTemplateVariable objectReference="ModelValue_255"/>
      <StateTemplateVariable objectReference="ModelValue_256"/>
      <StateTemplateVariable objectReference="ModelValue_257"/>
      <StateTemplateVariable objectReference="ModelValue_259"/>
      <StateTemplateVariable objectReference="ModelValue_260"/>
      <StateTemplateVariable objectReference="ModelValue_261"/>
      <StateTemplateVariable objectReference="ModelValue_262"/>
      <StateTemplateVariable objectReference="ModelValue_263"/>
      <StateTemplateVariable objectReference="ModelValue_264"/>
      <StateTemplateVariable objectReference="ModelValue_265"/>
      <StateTemplateVariable objectReference="ModelValue_266"/>
      <StateTemplateVariable objectReference="ModelValue_267"/>
      <StateTemplateVariable objectReference="ModelValue_268"/>
      <StateTemplateVariable objectReference="ModelValue_269"/>
      <StateTemplateVariable objectReference="ModelValue_270"/>
      <StateTemplateVariable objectReference="ModelValue_271"/>
      <StateTemplateVariable objectReference="ModelValue_272"/>
      <StateTemplateVariable objectReference="ModelValue_273"/>
      <StateTemplateVariable objectReference="ModelValue_274"/>
      <StateTemplateVariable objectReference="ModelValue_277"/>
      <StateTemplateVariable objectReference="ModelValue_278"/>
      <StateTemplateVariable objectReference="ModelValue_279"/>
      <StateTemplateVariable objectReference="ModelValue_280"/>
      <StateTemplateVariable objectReference="ModelValue_281"/>
      <StateTemplateVariable objectReference="ModelValue_283"/>
      <StateTemplateVariable objectReference="ModelValue_285"/>
      <StateTemplateVariable objectReference="ModelValue_286"/>
      <StateTemplateVariable objectReference="ModelValue_287"/>
      <StateTemplateVariable objectReference="ModelValue_288"/>
      <StateTemplateVariable objectReference="ModelValue_289"/>
      <StateTemplateVariable objectReference="ModelValue_290"/>
      <StateTemplateVariable objectReference="ModelValue_291"/>
      <StateTemplateVariable objectReference="ModelValue_292"/>
      <StateTemplateVariable objectReference="ModelValue_293"/>
      <StateTemplateVariable objectReference="ModelValue_294"/>
      <StateTemplateVariable objectReference="ModelValue_295"/>
      <StateTemplateVariable objectReference="ModelValue_296"/>
      <StateTemplateVariable objectReference="ModelValue_297"/>
      <StateTemplateVariable objectReference="ModelValue_300"/>
      <StateTemplateVariable objectReference="ModelValue_301"/>
      <StateTemplateVariable objectReference="ModelValue_302"/>
      <StateTemplateVariable objectReference="ModelValue_303"/>
      <StateTemplateVariable objectReference="ModelValue_304"/>
      <StateTemplateVariable objectReference="ModelValue_306"/>
      <StateTemplateVariable objectReference="ModelValue_308"/>
      <StateTemplateVariable objectReference="ModelValue_309"/>
      <StateTemplateVariable objectReference="ModelValue_310"/>
      <StateTemplateVariable objectReference="ModelValue_311"/>
      <StateTemplateVariable objectReference="ModelValue_312"/>
      <StateTemplateVariable objectReference="ModelValue_313"/>
      <StateTemplateVariable objectReference="ModelValue_314"/>
      <StateTemplateVariable objectReference="ModelValue_315"/>
      <StateTemplateVariable objectReference="ModelValue_316"/>
      <StateTemplateVariable objectReference="ModelValue_317"/>
      <StateTemplateVariable objectReference="ModelValue_318"/>
      <StateTemplateVariable objectReference="ModelValue_319"/>
      <StateTemplateVariable objectReference="ModelValue_320"/>
      <StateTemplateVariable objectReference="ModelValue_323"/>
      <StateTemplateVariable objectReference="ModelValue_324"/>
      <StateTemplateVariable objectReference="ModelValue_325"/>
      <StateTemplateVariable objectReference="ModelValue_326"/>
      <StateTemplateVariable objectReference="ModelValue_327"/>
      <StateTemplateVariable objectReference="ModelValue_329"/>
      <StateTemplateVariable objectReference="ModelValue_331"/>
      <StateTemplateVariable objectReference="ModelValue_332"/>
      <StateTemplateVariable objectReference="ModelValue_333"/>
      <StateTemplateVariable objectReference="ModelValue_334"/>
      <StateTemplateVariable objectReference="ModelValue_335"/>
      <StateTemplateVariable objectReference="ModelValue_336"/>
      <StateTemplateVariable objectReference="ModelValue_337"/>
      <StateTemplateVariable objectReference="ModelValue_338"/>
      <StateTemplateVariable objectReference="ModelValue_339"/>
      <StateTemplateVariable objectReference="ModelValue_340"/>
      <StateTemplateVariable objectReference="ModelValue_341"/>
      <StateTemplateVariable objectReference="ModelValue_342"/>
      <StateTemplateVariable objectReference="ModelValue_466"/>
      <StateTemplateVariable objectReference="ModelValue_467"/>
      <StateTemplateVariable objectReference="ModelValue_469"/>
      <StateTemplateVariable objectReference="ModelValue_470"/>
      <StateTemplateVariable objectReference="ModelValue_472"/>
      <StateTemplateVariable objectReference="ModelValue_473"/>
      <StateTemplateVariable objectReference="ModelValue_475"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 0 0 0 0 0 0 5600 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 55.3125 6.4199999999999999 0.35250000000000004 1.2825 0.33000000000000002 1.5750000000000002 0.56999999999999995 0.19499999999999998 3.855 1.9275 3.1800000000000002 2.1200000000000001 1.0600000000000001 1.8946901421391666 116.10000000000001 417.96000000000004 0.73750000000000004 0.34199999999999997 498.95999999999998 498.95999999999998 498.95999999999998 9.4734507106958326 0.10520539489642732 9.3682453157994043 0.01123 0.011105287620027098 0 20.898000000000003 16.718400000000003 61.02216 79.412400000000005 89.861400000000003 21.733920000000005 417.96000000000004 7.1053200000000007 142.94232 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 5.4219375000000012 5.4219375000000012 9.0365625000000023 1 1 75 170 70 70 1.548 150 0.085599999999999996 0.0047000000000000002 0.017100000000000001 0.0044000000000000003 0.021000000000000001 0.0076 0.0025999999999999999 0.051400000000000001 0.025700000000000001 0.0424 0.050000000000000003 0.040000000000000001 0.14599999999999999 0.19 0.215 1 0.017000000000000001 0.84999999999999998 45 1.2 0.10000000000000001 0.0001 0.20000000000000001 300 0.01123 62.020000000000003 0 0 8 1 10 0 1 1 1 0 1 1 1 1 1 1 1 1 165.19 0 0 4 1 10 0 1 1 1 10 1 1 0.20000000000000001 1 1 1 1 1 151.16 0 5600 2.5 0.87 10 0 1 1 1 0.71399999999999997 1 1 0.80000000000000004 1 1 1 1 1 1.5 0.02 1.5 0.20000000000000001 2.5 0.5 6.0221417900000005e+20 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_26" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_17" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="JacobianRequested" type="bool" value="1"/>
        <Parameter name="StabilityAnalysisRequested" type="bool" value="1"/>
      </Problem>
      <Method name="Enhanced Newton" type="EnhancedNewton">
        <Parameter name="Resolution" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Derivation Factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Use Newton" type="bool" value="1"/>
        <Parameter name="Use Integration" type="bool" value="1"/>
        <Parameter name="Use Back Integration" type="bool" value="0"/>
        <Parameter name="Accept Negative Concentrations" type="bool" value="0"/>
        <Parameter name="Iteration Limit" type="unsignedInteger" value="50"/>
        <Parameter name="Maximum duration for forward integration" type="unsignedFloat" value="1000000000"/>
        <Parameter name="Maximum duration for backward integration" type="unsignedFloat" value="1000000"/>
      </Method>
    </Task>
    <Task key="Task_25" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="300"/>
        <Parameter name="StepSize" type="float" value="0.080000000000000002"/>
        <Parameter name="Duration" type="float" value="24"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_24" name="Scan" type="scan" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="1"/>
        <ParameterGroup name="ScanItems">
        </ParameterGroup>
        <Parameter name="Output in subtask" type="bool" value="1"/>
        <Parameter name="Adjust initial conditions" type="bool" value="0"/>
      </Problem>
      <Method name="Scan Framework" type="ScanFramework">
      </Method>
    </Task>
    <Task key="Task_23" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_16" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_22" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_15" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Subtask" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <ParameterText name="ObjectiveExpression" type="expression">
          
        </ParameterText>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
      </Problem>
      <Method name="Random Search" type="RandomSearch">
        <Parameter name="Number of Iterations" type="unsignedInteger" value="100000"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_21" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_14" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
        <Parameter name="Steady-State" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <Parameter name="Time-Course" type="cn" value="CN=Root,Vector=TaskList[Time-Course]"/>
        <Parameter name="Create Parameter Sets" type="bool" value="0"/>
        <ParameterGroup name="Experiment Set">
        </ParameterGroup>
        <ParameterGroup name="Validation Set">
          <Parameter name="Weight" type="unsignedFloat" value="1"/>
          <Parameter name="Threshold" type="unsignedInteger" value="5"/>
        </ParameterGroup>
      </Problem>
      <Method name="Evolutionary Programming" type="EvolutionaryProgram">
        <Parameter name="Number of Generations" type="unsignedInteger" value="200"/>
        <Parameter name="Population Size" type="unsignedInteger" value="20"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_20" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_13" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_26"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Use Reder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_19" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_12" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="ExponentNumber" type="unsignedInteger" value="3"/>
        <Parameter name="DivergenceRequested" type="bool" value="1"/>
        <Parameter name="TransientTime" type="float" value="0"/>
      </Problem>
      <Method name="Wolf Method" type="WolfMethod">
        <Parameter name="Orthonormalization Interval" type="unsignedFloat" value="1"/>
        <Parameter name="Overall time" type="unsignedFloat" value="1000"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_18" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_11" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
      </Problem>
      <Method name="ILDM (LSODA,Deuflhard)" type="TimeScaleSeparation(ILDM,Deuflhard)">
        <Parameter name="Deuflhard Tolerance" type="unsignedFloat" value="0.0001"/>
      </Method>
    </Task>
    <Task key="Task_17" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_10" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="SubtaskType" type="unsignedInteger" value="1"/>
        <ParameterGroup name="TargetFunctions">
          <Parameter name="SingleObject" type="cn" value=""/>
          <Parameter name="ObjectListType" type="unsignedInteger" value="7"/>
        </ParameterGroup>
        <ParameterGroup name="ListOfVariables">
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="41"/>
          </ParameterGroup>
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="0"/>
          </ParameterGroup>
        </ParameterGroup>
      </Problem>
      <Method name="Sensitivities Method" type="SensitivitiesMethod">
        <Parameter name="Delta factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Delta minimum" type="unsignedFloat" value="9.9999999999999998e-13"/>
      </Method>
    </Task>
    <Task key="Task_16" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_15" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="LimitCrossings" type="bool" value="0"/>
        <Parameter name="NumCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitOutTime" type="bool" value="0"/>
        <Parameter name="LimitOutCrossings" type="bool" value="0"/>
        <Parameter name="PositiveDirection" type="bool" value="1"/>
        <Parameter name="NumOutCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitUntilConvergence" type="bool" value="0"/>
        <Parameter name="ConvergenceTolerance" type="float" value="9.9999999999999995e-07"/>
        <Parameter name="Threshold" type="float" value="0"/>
        <Parameter name="DelayOutputUntilConvergence" type="bool" value="0"/>
        <Parameter name="OutputConvergenceTolerance" type="float" value="9.9999999999999995e-07"/>
        <ParameterText name="TriggerExpression" type="expression">
          
        </ParameterText>
        <Parameter name="SingleVariable" type="cn" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_27" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_9" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_26"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
  </ListOfTasks>
  <ListOfReports>
    <Report key="Report_17" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_16" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_15" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_14" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_13" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_12" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_11" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_10" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_9" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Result"/>
      </Footer>
    </Report>
  </ListOfReports>
  <ListOfPlots>
    <PlotSpecification name="plot" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Values[Mve_apap]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=limax_pkpd_37_1,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=limax_pkpd_37_1,Vector=Values[Mve_apap],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="limax_pkpd_37_copasi.xml">
    <SBMLMap SBMLid="APAPD" COPASIkey="Reaction_68"/>
    <SBMLMap SBMLid="APAPD_CLliv" COPASIkey="ModelValue_474"/>
    <SBMLMap SBMLid="APAPD_HLM_CL" COPASIkey="ModelValue_472"/>
    <SBMLMap SBMLid="APAPD_Km_apap" COPASIkey="ModelValue_473"/>
    <SBMLMap SBMLid="Aar_apap" COPASIkey="Metabolite_64"/>
    <SBMLMap SBMLid="Aar_co2c13" COPASIkey="Metabolite_42"/>
    <SBMLMap SBMLid="Aar_metc13" COPASIkey="Metabolite_53"/>
    <SBMLMap SBMLid="Abo_apap" COPASIkey="Metabolite_65"/>
    <SBMLMap SBMLid="Abo_co2c13" COPASIkey="Metabolite_43"/>
    <SBMLMap SBMLid="Abo_co2c13_fix" COPASIkey="Metabolite_69"/>
    <SBMLMap SBMLid="Abo_metc13" COPASIkey="Metabolite_54"/>
    <SBMLMap SBMLid="Abreath_co2c13" COPASIkey="Metabolite_68"/>
    <SBMLMap SBMLid="Absorption_apap" COPASIkey="Reaction_114"/>
    <SBMLMap SBMLid="Absorption_co2c13" COPASIkey="Reaction_74"/>
    <SBMLMap SBMLid="Absorption_metc13" COPASIkey="Reaction_94"/>
    <SBMLMap SBMLid="Agu_apap" COPASIkey="Metabolite_58"/>
    <SBMLMap SBMLid="Agu_co2c13" COPASIkey="Metabolite_36"/>
    <SBMLMap SBMLid="Agu_metc13" COPASIkey="Metabolite_47"/>
    <SBMLMap SBMLid="Ahe_apap" COPASIkey="Metabolite_57"/>
    <SBMLMap SBMLid="Ahe_co2c13" COPASIkey="Metabolite_35"/>
    <SBMLMap SBMLid="Ahe_metc13" COPASIkey="Metabolite_46"/>
    <SBMLMap SBMLid="Aki_apap" COPASIkey="Metabolite_60"/>
    <SBMLMap SBMLid="Aki_co2c13" COPASIkey="Metabolite_38"/>
    <SBMLMap SBMLid="Aki_metc13" COPASIkey="Metabolite_49"/>
    <SBMLMap SBMLid="Ali_apap" COPASIkey="Metabolite_62"/>
    <SBMLMap SBMLid="Ali_co2c13" COPASIkey="Metabolite_40"/>
    <SBMLMap SBMLid="Ali_metc13" COPASIkey="Metabolite_51"/>
    <SBMLMap SBMLid="Alu_apap" COPASIkey="Metabolite_66"/>
    <SBMLMap SBMLid="Alu_co2c13" COPASIkey="Metabolite_44"/>
    <SBMLMap SBMLid="Alu_metc13" COPASIkey="Metabolite_55"/>
    <SBMLMap SBMLid="Are_apap" COPASIkey="Metabolite_59"/>
    <SBMLMap SBMLid="Are_co2c13" COPASIkey="Metabolite_37"/>
    <SBMLMap SBMLid="Are_metc13" COPASIkey="Metabolite_48"/>
    <SBMLMap SBMLid="Asp_apap" COPASIkey="Metabolite_61"/>
    <SBMLMap SBMLid="Asp_co2c13" COPASIkey="Metabolite_39"/>
    <SBMLMap SBMLid="Asp_metc13" COPASIkey="Metabolite_50"/>
    <SBMLMap SBMLid="Aurine_apap" COPASIkey="Metabolite_67"/>
    <SBMLMap SBMLid="Aurine_co2c13" COPASIkey="Metabolite_45"/>
    <SBMLMap SBMLid="Aurine_metc13" COPASIkey="Metabolite_56"/>
    <SBMLMap SBMLid="Ave_apap" COPASIkey="Metabolite_63"/>
    <SBMLMap SBMLid="Ave_co2c13" COPASIkey="Metabolite_41"/>
    <SBMLMap SBMLid="Ave_metc13" COPASIkey="Metabolite_52"/>
    <SBMLMap SBMLid="BP_apap" COPASIkey="ModelValue_332"/>
    <SBMLMap SBMLid="BP_co2c13" COPASIkey="ModelValue_286"/>
    <SBMLMap SBMLid="BP_metc13" COPASIkey="ModelValue_309"/>
    <SBMLMap SBMLid="BSA" COPASIkey="ModelValue_242"/>
    <SBMLMap SBMLid="BW" COPASIkey="ModelValue_238"/>
    <SBMLMap SBMLid="CLrenal_apap" COPASIkey="ModelValue_334"/>
    <SBMLMap SBMLid="CLrenal_co2c13" COPASIkey="ModelValue_288"/>
    <SBMLMap SBMLid="CLrenal_metc13" COPASIkey="ModelValue_311"/>
    <SBMLMap SBMLid="CO" COPASIkey="ModelValue_244"/>
    <SBMLMap SBMLid="CO2FIX" COPASIkey="Reaction_67"/>
    <SBMLMap SBMLid="CO2FIX_CLliv" COPASIkey="ModelValue_471"/>
    <SBMLMap SBMLid="CO2FIX_HLM_CL" COPASIkey="ModelValue_469"/>
    <SBMLMap SBMLid="CO2FIX_Km_co2" COPASIkey="ModelValue_470"/>
    <SBMLMap SBMLid="COBW" COPASIkey="ModelValue_243"/>
    <SBMLMap SBMLid="COHRI" COPASIkey="ModelValue_246"/>
    <SBMLMap SBMLid="CYP1A2MET" COPASIkey="Reaction_66"/>
    <SBMLMap SBMLid="CYP1A2MET_CL" COPASIkey="ModelValue_466"/>
    <SBMLMap SBMLid="CYP1A2MET_CLliv" COPASIkey="ModelValue_468"/>
    <SBMLMap SBMLid="CYP1A2MET_Km_met" COPASIkey="ModelValue_467"/>
    <SBMLMap SBMLid="Car_apap" COPASIkey="ModelValue_453"/>
    <SBMLMap SBMLid="Car_co2c13" COPASIkey="ModelValue_383"/>
    <SBMLMap SBMLid="Car_metc13" COPASIkey="ModelValue_418"/>
    <SBMLMap SBMLid="Cbo_apap" COPASIkey="ModelValue_456"/>
    <SBMLMap SBMLid="Cbo_co2c13" COPASIkey="ModelValue_386"/>
    <SBMLMap SBMLid="Cbo_co2c13_fix" COPASIkey="ModelValue_464"/>
    <SBMLMap SBMLid="Cbo_metc13" COPASIkey="ModelValue_421"/>
    <SBMLMap SBMLid="Cgu_apap" COPASIkey="ModelValue_435"/>
    <SBMLMap SBMLid="Cgu_co2c13" COPASIkey="ModelValue_365"/>
    <SBMLMap SBMLid="Cgu_metc13" COPASIkey="ModelValue_400"/>
    <SBMLMap SBMLid="Che_apap" COPASIkey="ModelValue_432"/>
    <SBMLMap SBMLid="Che_co2c13" COPASIkey="ModelValue_362"/>
    <SBMLMap SBMLid="Che_metc13" COPASIkey="ModelValue_397"/>
    <SBMLMap SBMLid="Cki_apap" COPASIkey="ModelValue_441"/>
    <SBMLMap SBMLid="Cki_co2c13" COPASIkey="ModelValue_371"/>
    <SBMLMap SBMLid="Cki_free_apap" COPASIkey="ModelValue_431"/>
    <SBMLMap SBMLid="Cki_free_co2c13" COPASIkey="ModelValue_361"/>
    <SBMLMap SBMLid="Cki_free_metc13" COPASIkey="ModelValue_396"/>
    <SBMLMap SBMLid="Cki_metc13" COPASIkey="ModelValue_406"/>
    <SBMLMap SBMLid="Cli_apap" COPASIkey="ModelValue_447"/>
    <SBMLMap SBMLid="Cli_co2c13" COPASIkey="ModelValue_377"/>
    <SBMLMap SBMLid="Cli_free_apap" COPASIkey="ModelValue_430"/>
    <SBMLMap SBMLid="Cli_free_co2c13" COPASIkey="ModelValue_360"/>
    <SBMLMap SBMLid="Cli_free_metc13" COPASIkey="ModelValue_395"/>
    <SBMLMap SBMLid="Cli_metc13" COPASIkey="ModelValue_412"/>
    <SBMLMap SBMLid="Clu_apap" COPASIkey="ModelValue_459"/>
    <SBMLMap SBMLid="Clu_co2c13" COPASIkey="ModelValue_389"/>
    <SBMLMap SBMLid="Clu_metc13" COPASIkey="ModelValue_424"/>
    <SBMLMap SBMLid="Cpl_ve_apap" COPASIkey="ModelValue_429"/>
    <SBMLMap SBMLid="Cpl_ve_co2c13" COPASIkey="ModelValue_359"/>
    <SBMLMap SBMLid="Cpl_ve_metc13" COPASIkey="ModelValue_394"/>
    <SBMLMap SBMLid="Cre_apap" COPASIkey="ModelValue_438"/>
    <SBMLMap SBMLid="Cre_co2c13" COPASIkey="ModelValue_368"/>
    <SBMLMap SBMLid="Cre_metc13" COPASIkey="ModelValue_403"/>
    <SBMLMap SBMLid="Csp_apap" COPASIkey="ModelValue_444"/>
    <SBMLMap SBMLid="Csp_co2c13" COPASIkey="ModelValue_374"/>
    <SBMLMap SBMLid="Csp_metc13" COPASIkey="ModelValue_409"/>
    <SBMLMap SBMLid="Cve_apap" COPASIkey="ModelValue_450"/>
    <SBMLMap SBMLid="Cve_co2c13" COPASIkey="ModelValue_380"/>
    <SBMLMap SBMLid="Cve_metc13" COPASIkey="ModelValue_415"/>
    <SBMLMap SBMLid="DIV_apap" COPASIkey="ModelValue_322"/>
    <SBMLMap SBMLid="DIV_co2c13" COPASIkey="ModelValue_276"/>
    <SBMLMap SBMLid="DIV_metc13" COPASIkey="ModelValue_299"/>
    <SBMLMap SBMLid="DOB" COPASIkey="ModelValue_348"/>
    <SBMLMap SBMLid="D_apap" COPASIkey="ModelValue_321"/>
    <SBMLMap SBMLid="D_co2c13" COPASIkey="ModelValue_275"/>
    <SBMLMap SBMLid="D_metc13" COPASIkey="ModelValue_298"/>
    <SBMLMap SBMLid="Exhalation_co2c13" COPASIkey="Reaction_69"/>
    <SBMLMap SBMLid="FQbo" COPASIkey="ModelValue_259"/>
    <SBMLMap SBMLid="FQgu" COPASIkey="ModelValue_261"/>
    <SBMLMap SBMLid="FQh" COPASIkey="ModelValue_263"/>
    <SBMLMap SBMLid="FQhe" COPASIkey="ModelValue_260"/>
    <SBMLMap SBMLid="FQki" COPASIkey="ModelValue_262"/>
    <SBMLMap SBMLid="FQlu" COPASIkey="ModelValue_264"/>
    <SBMLMap SBMLid="FQre" COPASIkey="ModelValue_258"/>
    <SBMLMap SBMLid="FQsp" COPASIkey="ModelValue_265"/>
    <SBMLMap SBMLid="FVar" COPASIkey="ModelValue_256"/>
    <SBMLMap SBMLid="FVbo" COPASIkey="ModelValue_248"/>
    <SBMLMap SBMLid="FVgu" COPASIkey="ModelValue_250"/>
    <SBMLMap SBMLid="FVhe" COPASIkey="ModelValue_249"/>
    <SBMLMap SBMLid="FVki" COPASIkey="ModelValue_251"/>
    <SBMLMap SBMLid="FVli" COPASIkey="ModelValue_252"/>
    <SBMLMap SBMLid="FVlu" COPASIkey="ModelValue_253"/>
    <SBMLMap SBMLid="FVpl" COPASIkey="ModelValue_257"/>
    <SBMLMap SBMLid="FVre" COPASIkey="ModelValue_247"/>
    <SBMLMap SBMLid="FVsp" COPASIkey="ModelValue_254"/>
    <SBMLMap SBMLid="FVve" COPASIkey="ModelValue_255"/>
    <SBMLMap SBMLid="F_PAR" COPASIkey="ModelValue_266"/>
    <SBMLMap SBMLid="F_apap" COPASIkey="ModelValue_326"/>
    <SBMLMap SBMLid="F_co2c13" COPASIkey="ModelValue_280"/>
    <SBMLMap SBMLid="F_metc13" COPASIkey="ModelValue_303"/>
    <SBMLMap SBMLid="Fixation_co2c13" COPASIkey="Reaction_70"/>
    <SBMLMap SBMLid="HEIGHT" COPASIkey="ModelValue_239"/>
    <SBMLMap SBMLid="HR" COPASIkey="ModelValue_240"/>
    <SBMLMap SBMLid="HRrest" COPASIkey="ModelValue_241"/>
    <SBMLMap SBMLid="IVDOSE_apap" COPASIkey="ModelValue_323"/>
    <SBMLMap SBMLid="IVDOSE_co2c13" COPASIkey="ModelValue_277"/>
    <SBMLMap SBMLid="IVDOSE_metc13" COPASIkey="ModelValue_300"/>
    <SBMLMap SBMLid="Infusion_apap" COPASIkey="Reaction_113"/>
    <SBMLMap SBMLid="Infusion_co2c13" COPASIkey="Reaction_73"/>
    <SBMLMap SBMLid="Infusion_metc13" COPASIkey="Reaction_93"/>
    <SBMLMap SBMLid="Injection_apap" COPASIkey="Reaction_112"/>
    <SBMLMap SBMLid="Injection_co2c13" COPASIkey="Reaction_72"/>
    <SBMLMap SBMLid="Injection_metc13" COPASIkey="Reaction_92"/>
    <SBMLMap SBMLid="KBO_FIXCO2" COPASIkey="ModelValue_269"/>
    <SBMLMap SBMLid="KBO_MAXCO2" COPASIkey="ModelValue_271"/>
    <SBMLMap SBMLid="KBO_RELCO2" COPASIkey="ModelValue_270"/>
    <SBMLMap SBMLid="KLU_EXCO2" COPASIkey="ModelValue_268"/>
    <SBMLMap SBMLid="Ka_apap" COPASIkey="ModelValue_325"/>
    <SBMLMap SBMLid="Ka_co2c13" COPASIkey="ModelValue_279"/>
    <SBMLMap SBMLid="Ka_metc13" COPASIkey="ModelValue_302"/>
    <SBMLMap SBMLid="Ki_apap" COPASIkey="ModelValue_328"/>
    <SBMLMap SBMLid="Ki_co2c13" COPASIkey="ModelValue_282"/>
    <SBMLMap SBMLid="Ki_metc13" COPASIkey="ModelValue_305"/>
    <SBMLMap SBMLid="Kpbo_apap" COPASIkey="ModelValue_341"/>
    <SBMLMap SBMLid="Kpbo_co2c13" COPASIkey="ModelValue_295"/>
    <SBMLMap SBMLid="Kpbo_metc13" COPASIkey="ModelValue_318"/>
    <SBMLMap SBMLid="Kpgu_apap" COPASIkey="ModelValue_336"/>
    <SBMLMap SBMLid="Kpgu_co2c13" COPASIkey="ModelValue_290"/>
    <SBMLMap SBMLid="Kpgu_metc13" COPASIkey="ModelValue_313"/>
    <SBMLMap SBMLid="Kphe_apap" COPASIkey="ModelValue_335"/>
    <SBMLMap SBMLid="Kphe_co2c13" COPASIkey="ModelValue_289"/>
    <SBMLMap SBMLid="Kphe_metc13" COPASIkey="ModelValue_312"/>
    <SBMLMap SBMLid="Kpki_apap" COPASIkey="ModelValue_338"/>
    <SBMLMap SBMLid="Kpki_co2c13" COPASIkey="ModelValue_292"/>
    <SBMLMap SBMLid="Kpki_metc13" COPASIkey="ModelValue_315"/>
    <SBMLMap SBMLid="Kpli_apap" COPASIkey="ModelValue_340"/>
    <SBMLMap SBMLid="Kpli_co2c13" COPASIkey="ModelValue_294"/>
    <SBMLMap SBMLid="Kpli_metc13" COPASIkey="ModelValue_317"/>
    <SBMLMap SBMLid="Kplu_apap" COPASIkey="ModelValue_342"/>
    <SBMLMap SBMLid="Kplu_co2c13" COPASIkey="ModelValue_296"/>
    <SBMLMap SBMLid="Kplu_metc13" COPASIkey="ModelValue_319"/>
    <SBMLMap SBMLid="Kpre_apap" COPASIkey="ModelValue_337"/>
    <SBMLMap SBMLid="Kpre_co2c13" COPASIkey="ModelValue_291"/>
    <SBMLMap SBMLid="Kpre_metc13" COPASIkey="ModelValue_314"/>
    <SBMLMap SBMLid="Kpsp_apap" COPASIkey="ModelValue_339"/>
    <SBMLMap SBMLid="Kpsp_co2c13" COPASIkey="ModelValue_293"/>
    <SBMLMap SBMLid="Kpsp_metc13" COPASIkey="ModelValue_316"/>
    <SBMLMap SBMLid="MPPGL" COPASIkey="ModelValue_267"/>
    <SBMLMap SBMLid="Mar_apap" COPASIkey="ModelValue_455"/>
    <SBMLMap SBMLid="Mar_co2c13" COPASIkey="ModelValue_385"/>
    <SBMLMap SBMLid="Mar_metc13" COPASIkey="ModelValue_420"/>
    <SBMLMap SBMLid="Mbo_apap" COPASIkey="ModelValue_458"/>
    <SBMLMap SBMLid="Mbo_co2c13" COPASIkey="ModelValue_388"/>
    <SBMLMap SBMLid="Mbo_metc13" COPASIkey="ModelValue_423"/>
    <SBMLMap SBMLid="Mgu_apap" COPASIkey="ModelValue_437"/>
    <SBMLMap SBMLid="Mgu_co2c13" COPASIkey="ModelValue_367"/>
    <SBMLMap SBMLid="Mgu_metc13" COPASIkey="ModelValue_402"/>
    <SBMLMap SBMLid="Mhe_apap" COPASIkey="ModelValue_434"/>
    <SBMLMap SBMLid="Mhe_co2c13" COPASIkey="ModelValue_364"/>
    <SBMLMap SBMLid="Mhe_metc13" COPASIkey="ModelValue_399"/>
    <SBMLMap SBMLid="Mki_apap" COPASIkey="ModelValue_443"/>
    <SBMLMap SBMLid="Mki_co2c13" COPASIkey="ModelValue_373"/>
    <SBMLMap SBMLid="Mki_metc13" COPASIkey="ModelValue_408"/>
    <SBMLMap SBMLid="Mli_apap" COPASIkey="ModelValue_449"/>
    <SBMLMap SBMLid="Mli_co2c13" COPASIkey="ModelValue_379"/>
    <SBMLMap SBMLid="Mli_metc13" COPASIkey="ModelValue_414"/>
    <SBMLMap SBMLid="Mlu_apap" COPASIkey="ModelValue_461"/>
    <SBMLMap SBMLid="Mlu_co2c13" COPASIkey="ModelValue_391"/>
    <SBMLMap SBMLid="Mlu_metc13" COPASIkey="ModelValue_426"/>
    <SBMLMap SBMLid="Mr_apap" COPASIkey="ModelValue_320"/>
    <SBMLMap SBMLid="Mr_co2c13" COPASIkey="ModelValue_274"/>
    <SBMLMap SBMLid="Mr_metc13" COPASIkey="ModelValue_297"/>
    <SBMLMap SBMLid="Mre_apap" COPASIkey="ModelValue_440"/>
    <SBMLMap SBMLid="Mre_co2c13" COPASIkey="ModelValue_370"/>
    <SBMLMap SBMLid="Mre_metc13" COPASIkey="ModelValue_405"/>
    <SBMLMap SBMLid="Msp_apap" COPASIkey="ModelValue_446"/>
    <SBMLMap SBMLid="Msp_co2c13" COPASIkey="ModelValue_376"/>
    <SBMLMap SBMLid="Msp_metc13" COPASIkey="ModelValue_411"/>
    <SBMLMap SBMLid="Mve_apap" COPASIkey="ModelValue_452"/>
    <SBMLMap SBMLid="Mve_co2c13" COPASIkey="ModelValue_382"/>
    <SBMLMap SBMLid="Mve_metc13" COPASIkey="ModelValue_417"/>
    <SBMLMap SBMLid="PODOSE_apap" COPASIkey="ModelValue_324"/>
    <SBMLMap SBMLid="PODOSE_co2c13" COPASIkey="ModelValue_278"/>
    <SBMLMap SBMLid="PODOSE_metc13" COPASIkey="ModelValue_301"/>
    <SBMLMap SBMLid="P_CO2" COPASIkey="ModelValue_343"/>
    <SBMLMap SBMLid="P_CO2BSA" COPASIkey="ModelValue_272"/>
    <SBMLMap SBMLid="P_CO2Fc13" COPASIkey="ModelValue_347"/>
    <SBMLMap SBMLid="P_CO2R" COPASIkey="ModelValue_346"/>
    <SBMLMap SBMLid="P_CO2c12" COPASIkey="ModelValue_345"/>
    <SBMLMap SBMLid="P_CO2c13" COPASIkey="ModelValue_344"/>
    <SBMLMap SBMLid="QC" COPASIkey="ModelValue_245"/>
    <SBMLMap SBMLid="Qbo" COPASIkey="ModelValue_349"/>
    <SBMLMap SBMLid="Qgu" COPASIkey="ModelValue_351"/>
    <SBMLMap SBMLid="Qh" COPASIkey="ModelValue_353"/>
    <SBMLMap SBMLid="Qha" COPASIkey="ModelValue_354"/>
    <SBMLMap SBMLid="Qhe" COPASIkey="ModelValue_350"/>
    <SBMLMap SBMLid="Qki" COPASIkey="ModelValue_352"/>
    <SBMLMap SBMLid="Qlu" COPASIkey="ModelValue_355"/>
    <SBMLMap SBMLid="Qre" COPASIkey="ModelValue_357"/>
    <SBMLMap SBMLid="Qsp" COPASIkey="ModelValue_356"/>
    <SBMLMap SBMLid="R_PDB" COPASIkey="ModelValue_273"/>
    <SBMLMap SBMLid="Release_co2c13" COPASIkey="Reaction_71"/>
    <SBMLMap SBMLid="Ri_apap" COPASIkey="ModelValue_329"/>
    <SBMLMap SBMLid="Ri_co2c13" COPASIkey="ModelValue_283"/>
    <SBMLMap SBMLid="Ri_metc13" COPASIkey="ModelValue_306"/>
    <SBMLMap SBMLid="Var" COPASIkey="Compartment_24"/>
    <SBMLMap SBMLid="Vbo" COPASIkey="Compartment_16"/>
    <SBMLMap SBMLid="Vbreath" COPASIkey="Compartment_28"/>
    <SBMLMap SBMLid="Vgu" COPASIkey="Compartment_18"/>
    <SBMLMap SBMLid="Vhe" COPASIkey="Compartment_17"/>
    <SBMLMap SBMLid="Vki" COPASIkey="Compartment_19"/>
    <SBMLMap SBMLid="Vli" COPASIkey="Compartment_20"/>
    <SBMLMap SBMLid="Vlu" COPASIkey="Compartment_21"/>
    <SBMLMap SBMLid="Vpl" COPASIkey="Compartment_25"/>
    <SBMLMap SBMLid="Vplas_art" COPASIkey="Compartment_27"/>
    <SBMLMap SBMLid="Vplas_ven" COPASIkey="Compartment_26"/>
    <SBMLMap SBMLid="Vre" COPASIkey="Compartment_15"/>
    <SBMLMap SBMLid="Vsp" COPASIkey="Compartment_22"/>
    <SBMLMap SBMLid="Vurine" COPASIkey="Compartment_29"/>
    <SBMLMap SBMLid="Vve" COPASIkey="Compartment_23"/>
    <SBMLMap SBMLid="Xar_apap" COPASIkey="ModelValue_454"/>
    <SBMLMap SBMLid="Xar_co2c13" COPASIkey="ModelValue_384"/>
    <SBMLMap SBMLid="Xar_metc13" COPASIkey="ModelValue_419"/>
    <SBMLMap SBMLid="Xbo_apap" COPASIkey="ModelValue_457"/>
    <SBMLMap SBMLid="Xbo_co2c13" COPASIkey="ModelValue_387"/>
    <SBMLMap SBMLid="Xbo_co2c13_fix" COPASIkey="ModelValue_465"/>
    <SBMLMap SBMLid="Xbo_metc13" COPASIkey="ModelValue_422"/>
    <SBMLMap SBMLid="Xbody_apap" COPASIkey="ModelValue_428"/>
    <SBMLMap SBMLid="Xbody_co2c13" COPASIkey="ModelValue_358"/>
    <SBMLMap SBMLid="Xbody_metc13" COPASIkey="ModelValue_393"/>
    <SBMLMap SBMLid="Xbreath_co2c13" COPASIkey="ModelValue_463"/>
    <SBMLMap SBMLid="Xgu_apap" COPASIkey="ModelValue_436"/>
    <SBMLMap SBMLid="Xgu_co2c13" COPASIkey="ModelValue_366"/>
    <SBMLMap SBMLid="Xgu_metc13" COPASIkey="ModelValue_401"/>
    <SBMLMap SBMLid="Xhe_apap" COPASIkey="ModelValue_433"/>
    <SBMLMap SBMLid="Xhe_co2c13" COPASIkey="ModelValue_363"/>
    <SBMLMap SBMLid="Xhe_metc13" COPASIkey="ModelValue_398"/>
    <SBMLMap SBMLid="Xki_apap" COPASIkey="ModelValue_442"/>
    <SBMLMap SBMLid="Xki_co2c13" COPASIkey="ModelValue_372"/>
    <SBMLMap SBMLid="Xki_metc13" COPASIkey="ModelValue_407"/>
    <SBMLMap SBMLid="Xli_apap" COPASIkey="ModelValue_448"/>
    <SBMLMap SBMLid="Xli_co2c13" COPASIkey="ModelValue_378"/>
    <SBMLMap SBMLid="Xli_metc13" COPASIkey="ModelValue_413"/>
    <SBMLMap SBMLid="Xlu_apap" COPASIkey="ModelValue_460"/>
    <SBMLMap SBMLid="Xlu_co2c13" COPASIkey="ModelValue_390"/>
    <SBMLMap SBMLid="Xlu_metc13" COPASIkey="ModelValue_425"/>
    <SBMLMap SBMLid="Xre_apap" COPASIkey="ModelValue_439"/>
    <SBMLMap SBMLid="Xre_co2c13" COPASIkey="ModelValue_369"/>
    <SBMLMap SBMLid="Xre_metc13" COPASIkey="ModelValue_404"/>
    <SBMLMap SBMLid="Xsp_apap" COPASIkey="ModelValue_445"/>
    <SBMLMap SBMLid="Xsp_co2c13" COPASIkey="ModelValue_375"/>
    <SBMLMap SBMLid="Xsp_metc13" COPASIkey="ModelValue_410"/>
    <SBMLMap SBMLid="Xurine_apap" COPASIkey="ModelValue_462"/>
    <SBMLMap SBMLid="Xurine_co2c13" COPASIkey="ModelValue_392"/>
    <SBMLMap SBMLid="Xurine_metc13" COPASIkey="ModelValue_427"/>
    <SBMLMap SBMLid="Xve_apap" COPASIkey="ModelValue_451"/>
    <SBMLMap SBMLid="Xve_co2c13" COPASIkey="ModelValue_381"/>
    <SBMLMap SBMLid="Xve_metc13" COPASIkey="ModelValue_416"/>
    <SBMLMap SBMLid="ar_bo_apap" COPASIkey="Reaction_120"/>
    <SBMLMap SBMLid="ar_bo_co2c13" COPASIkey="Reaction_80"/>
    <SBMLMap SBMLid="ar_bo_metc13" COPASIkey="Reaction_100"/>
    <SBMLMap SBMLid="ar_gu_apap" COPASIkey="Reaction_122"/>
    <SBMLMap SBMLid="ar_gu_co2c13" COPASIkey="Reaction_82"/>
    <SBMLMap SBMLid="ar_gu_metc13" COPASIkey="Reaction_102"/>
    <SBMLMap SBMLid="ar_he_apap" COPASIkey="Reaction_124"/>
    <SBMLMap SBMLid="ar_he_co2c13" COPASIkey="Reaction_84"/>
    <SBMLMap SBMLid="ar_he_metc13" COPASIkey="Reaction_104"/>
    <SBMLMap SBMLid="ar_ki_apap" COPASIkey="Reaction_126"/>
    <SBMLMap SBMLid="ar_ki_co2c13" COPASIkey="Reaction_86"/>
    <SBMLMap SBMLid="ar_ki_metc13" COPASIkey="Reaction_106"/>
    <SBMLMap SBMLid="ar_li_apap" COPASIkey="Reaction_130"/>
    <SBMLMap SBMLid="ar_li_co2c13" COPASIkey="Reaction_90"/>
    <SBMLMap SBMLid="ar_li_metc13" COPASIkey="Reaction_110"/>
    <SBMLMap SBMLid="ar_re_apap" COPASIkey="Reaction_118"/>
    <SBMLMap SBMLid="ar_re_co2c13" COPASIkey="Reaction_78"/>
    <SBMLMap SBMLid="ar_re_metc13" COPASIkey="Reaction_98"/>
    <SBMLMap SBMLid="ar_sp_apap" COPASIkey="Reaction_128"/>
    <SBMLMap SBMLid="ar_sp_co2c13" COPASIkey="Reaction_88"/>
    <SBMLMap SBMLid="ar_sp_metc13" COPASIkey="Reaction_108"/>
    <SBMLMap SBMLid="bo_ve_apap" COPASIkey="Reaction_121"/>
    <SBMLMap SBMLid="bo_ve_co2c13" COPASIkey="Reaction_81"/>
    <SBMLMap SBMLid="bo_ve_metc13" COPASIkey="Reaction_101"/>
    <SBMLMap SBMLid="cum_dose_apap" COPASIkey="ModelValue_330"/>
    <SBMLMap SBMLid="cum_dose_co2c13" COPASIkey="ModelValue_284"/>
    <SBMLMap SBMLid="cum_dose_metc13" COPASIkey="ModelValue_307"/>
    <SBMLMap SBMLid="fumic_apap" COPASIkey="ModelValue_333"/>
    <SBMLMap SBMLid="fumic_co2c13" COPASIkey="ModelValue_287"/>
    <SBMLMap SBMLid="fumic_metc13" COPASIkey="ModelValue_310"/>
    <SBMLMap SBMLid="fup_apap" COPASIkey="ModelValue_331"/>
    <SBMLMap SBMLid="fup_co2c13" COPASIkey="ModelValue_285"/>
    <SBMLMap SBMLid="fup_metc13" COPASIkey="ModelValue_308"/>
    <SBMLMap SBMLid="gu_li_apap" COPASIkey="Reaction_123"/>
    <SBMLMap SBMLid="gu_li_co2c13" COPASIkey="Reaction_83"/>
    <SBMLMap SBMLid="gu_li_metc13" COPASIkey="Reaction_103"/>
    <SBMLMap SBMLid="he_ve_apap" COPASIkey="Reaction_125"/>
    <SBMLMap SBMLid="he_ve_co2c13" COPASIkey="Reaction_85"/>
    <SBMLMap SBMLid="he_ve_metc13" COPASIkey="Reaction_105"/>
    <SBMLMap SBMLid="ki_ve_apap" COPASIkey="Reaction_127"/>
    <SBMLMap SBMLid="ki_ve_co2c13" COPASIkey="Reaction_87"/>
    <SBMLMap SBMLid="ki_ve_metc13" COPASIkey="Reaction_107"/>
    <SBMLMap SBMLid="li_ve_apap" COPASIkey="Reaction_131"/>
    <SBMLMap SBMLid="li_ve_co2c13" COPASIkey="Reaction_91"/>
    <SBMLMap SBMLid="li_ve_metc13" COPASIkey="Reaction_111"/>
    <SBMLMap SBMLid="lu_ar_apap" COPASIkey="Reaction_117"/>
    <SBMLMap SBMLid="lu_ar_co2c13" COPASIkey="Reaction_77"/>
    <SBMLMap SBMLid="lu_ar_metc13" COPASIkey="Reaction_97"/>
    <SBMLMap SBMLid="parameter_1" COPASIkey="ModelValue_475"/>
    <SBMLMap SBMLid="re_ve_apap" COPASIkey="Reaction_119"/>
    <SBMLMap SBMLid="re_ve_co2c13" COPASIkey="Reaction_79"/>
    <SBMLMap SBMLid="re_ve_metc13" COPASIkey="Reaction_99"/>
    <SBMLMap SBMLid="sp_li_apap" COPASIkey="Reaction_129"/>
    <SBMLMap SBMLid="sp_li_co2c13" COPASIkey="Reaction_89"/>
    <SBMLMap SBMLid="sp_li_metc13" COPASIkey="Reaction_109"/>
    <SBMLMap SBMLid="ti_apap" COPASIkey="ModelValue_327"/>
    <SBMLMap SBMLid="ti_co2c13" COPASIkey="ModelValue_281"/>
    <SBMLMap SBMLid="ti_metc13" COPASIkey="ModelValue_304"/>
    <SBMLMap SBMLid="ve_lu_apap" COPASIkey="Reaction_116"/>
    <SBMLMap SBMLid="ve_lu_co2c13" COPASIkey="Reaction_76"/>
    <SBMLMap SBMLid="ve_lu_metc13" COPASIkey="Reaction_96"/>
    <SBMLMap SBMLid="vre_apap" COPASIkey="Reaction_115"/>
    <SBMLMap SBMLid="vre_co2c13" COPASIkey="Reaction_75"/>
    <SBMLMap SBMLid="vre_metc13" COPASIkey="Reaction_95"/>
  </SBMLReference>
  <ListOfUnitDefinitions>
    <UnitDefinition key="Unit_0" name="meter" symbol="m">
      <Expression>
        m
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_1" name="gram" symbol="g">
      <Expression>
        g
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_2" name="second" symbol="s">
      <Expression>
        s
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_6" name="Avogadro" symbol="Avogadro">
      <Expression>
        Avogadro
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_7" name="dimensionless" symbol="1">
      <Expression>
        1
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_8" name="item" symbol="#">
      <Expression>
        #
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_17" name="liter" symbol="l">
      <Expression>
        0.001*m^3
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_20" name="mole" symbol="mol">
      <Expression>
        Avogadro*#
      </Expression>
    </UnitDefinition>
  </ListOfUnitDefinitions>
</COPASI>

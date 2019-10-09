;Brian Dube, 2014-2017
;Repair Super Task Menu
;------------------------------------ENVIRONMENT DEFINITIONS
#SingleInstance Force
#installKeybdHook
#Persistent
#NoTrayIcon
SetTitleMatchMode, 2
DetectHiddenWindows, ON
;------------------------------------VARIABLE DEFINITIONS & INITIALIZATIONS
menutitle = NOC REPAIR MENU 7.11.17 ;07/11/2017
shelf := 1 ;always 1 shelf
slot := 0
port := 0
ont := 0
atmgrp := 0
choice := 0
pon := 0
ipaddr = 0.0.0.0
tn := 0
un := 0
pw := 0
total := 0
day := 0
days := 0
hour := 0
hr := 0
min :=0
pon :=0
t1 := 0
interface := 0
ppp := 0
tdm := 0
newppp := 0
mac := 0
down := 0
up := 0
email := 0
cpanel := 0
domain := 0
avail := 0
tty = 0
equip = 0
line := 0
nhorme = 0
gwvar := 0
dslmodechoice := 0
adtran := 0
a2820 := 0
1124 := 0
1124Choice := 0
1124List := 0
5kList := 0
appw := 0
each := 0
5kChoice := 0
infi := 0
unique := 0
session := 0
index := 1
foundit := 0 ;for MAC and IP searching
quit := 0
found := 0
found1 := 0
healthchecked := 0 ;SBC check
height := 0
width := 0
VarX := 0
VarY := 0
VarX2 := 0
VarY2 := 0
x := 0
y := 0
xpos := 0
ypos := 0
iad := 0
InfiChoice := 0
InfiList := 0
item := 0
mode := 0
name := 0
nbr := 0
oldppp := 0
RDPChoice := 0
state := 0
TechChoice := 0
TechChoice1 := 0
repeat = false
cntr := 0
type := 10
Ch = 1 ;default choice for GUIs
old = yes
waiting := true ;pause GUI and wait for response
ActiveSBC = "SBC2" ;set default SBC
SBC1ip = = 192.168.76.28
SBC2ip = = 192.168.76.29
Autoprov = 192.168.201.61
fileloc = \\files\Central\shared\NOC-Tier 1\SOUTH NOC  specific Repair Info
fileloc1 = \\files\Central\shared\NOC-Tier 1\SOUTH NOC  specific Repair Info\tech software tools
fileloc2 = \\files\Central\shared\NOC-Tier 1\
hummer3 = 192.168.200.195
macusr = readonly
macpwd = m@cDaddy
infiun = intel ;inteliflex
infipw = onfiber1`% ;inteliflex
sbcpw = SIPoxBR&0
apun = repair
appw = Jx13UU99
defaultun = ADMIN
defaultpw = OV^Rh33p
cpanelun = repair
cpanelpw = 38KDhs934Ew
logun = brrepair
logpw = G3nuse54x
eprismun = teamrepair@oxfordnetworks.com
eprismpw = SSu4the$esS0n
oldeshdslun = ADMIN
oldeshdslpw = OV^Rh33p
neweshdslun = Oxfordadmin
neweshdslpw = 2L84me@
oldontun = adtran
oldontpw = adtran
oldontenpw = adtran
oldontenpw1 = bayring1
newontpw = 0
newontenpw = 0
oldiadun = admin
oldiadpw = bayring1
oldiadenpw = bayring1
newiadenpw = mS8urDog4#
newiadpw = calix100`%
dms10pw = onfiber1
albanyun = psnoc
albanypw = portnoc1
;------------------------------------Portsmouth Adtran 5000s paired with arr1
arr := Object()
arr[2] := "192.168.120.81" ;199 Constitution
arr[3] := "192.168.120.82" ;Acquarius
arr[4] := "192.168.120.83" ;Cocheco Mill
arr[5] := "192.168.120.41" ;Concord1
arr[6] := "192.168.120.42" ;Concord2
arr[7] := "192.168.120.12" ;Danvers
arr[8] := "192.168.120.43" ;Dover1
arr[9] := "192.168.120.110" ;Dover2
arr[10] := "192.168.120.112" ;Durham
arr[11] := "192.168.120.113" ;Exeter1
arr[12] := "192.168.120.114" ;Exeter2
arr[13] := "192.168.120.84" ;Hampton
arr[14] := "192.168.120.47" ;Laconia1
arr[15] := "192.168.120.48" ;Laconia2
arr[16] := "192.168.120.50" ;Lawrence1
arr[17] := "192.168.120.13" ;Lawrence2
arr[18] := "192.168.120.85" ;Lowell
arr[19] := "192.168.120.19" ;Malden
arr[20] := "192.168.120.51" ;Manchester1
arr[21] := "192.168.120.52" ;Manchester2
arr[22] := "192.168.120.49" ;Manchester3
arr[23] := "192.168.120.86" ;Milford
arr[24] := "192.168.120.111" ;Music Hall
arr[25] := "192.168.120.54" ;Nashua1
arr[26] := "192.168.120.55" ;Nashua2
arr[27] := "192.168.120.87" ;Newburyport1
arr[28] := "192.168.120.14" ;Newburyport2
arr[29] := "192.168.120.88" ;Newmarket
arr[30] := "192.168.120.11" ;Peabody
arr[31] := "192.168.120.89" ;Pease
arr[32] := "192.168.120.90" ;Portland1
arr[33] := "192.168.120.91" ;Portland2
arr[34] := "192.168.120.56" ;Portsmouth1
arr[35] := "192.168.120.57" ;Portsmouth2
arr[36] := "192.168.120.58" ;Rochester1
arr[37] := "192.168.120.59" ;Rochester2
arr[38] := "192.168.120.60" ;Rochester3
arr[39] := "192.168.120.92" ;Rye Beach
arr[40] := "192.168.120.61" ;Salem
arr[41] := "192.168.120.62" ;Seabrook
arr[42] := "192.168.120.93" ;Somersworth
arr[43] := "192.168.120.94" ;Wolfeboro
;------------------------------------Oxford Networks Adtran 5000s
arr[45] := "10.3.100.21" ;Andover
arr[46] := "10.3.100.22" ;East Andover
arr[47] := "10.3.100.45" ;Albany
arr[48] := "10.3.5.36" ;Bethel COT
arr[49] := "10.3.5.20" ;Bethel2
arr[50] := "10.3.100.73" ;Intervale Rd
arr[51] := "10.3.100.74" ;Vernon St
arr[52] := "10.3.100.112" ;Buckfield
arr[53] := "10.3.100.34" ;Spring Rd
arr[54] := "10.3.100.94" ;Bryant Pond
arr[55] := "10.3.23.2" ;Biddeford
arr[56] := "10.3.100.109" ;Canton
arr[57] := "10.3.100.46" ;Stetson Rd
arr[58] := "10.3.100.43" ;Brighton Hill
arr[59] := "10.3.100.42" ;E Hebron
arr[60] := "10.3.100.52" ;Hebron
arr[61] := "10.3.100.68" ;Sodom Rd
arr[62] := "10.3.100.116" ;Hanover
arr[63] := "10.3.100.114" ;Locke Mills
arr[64] := "10.3.100.84" ;Greenwood Rd
arr[65] := "10.3.100.28" ;N Norway
arr[66] := "10.3.8.9" ;Norway
arr[67] := "10.3.100.41" ;Pleasant Pond
arr[68] := "10.3.100.91" ;N Turner
arr[69] := "10.3.100.89" ;Bear Pond Rd
arr[70] := "10.3.100.44" ;Sunday River
arr[71] := "10.3.100.13" ;N Newry
arr[72] := "10.3.100.4" ;Roxbury Pond
arr[73] := "10.3.11.21" ;Sumner COT
arr[74] := "10.3.100.108" ;W Sumner
arr[75] := "10.3.100.88" ;Lower Sumner Hill
arr[76] := "10.3.100.55" ;Shagg Pond
arr[77] := "10.3.100.29" ;S Paris
arr[78] := "10.3.3.32" ;Turner COT
arr[79] := "10.3.3.5" ;Turner2
arr[80] := "10.3.100.113" ;Upper St
arr[81] := "10.3.100.54" ;Blue Rock
arr[82] := "10.3.100.5" ;Upton
arr[83] := "10.3.100.50" ; Tuell Town
arr[84] := "10.3.100.93" ;W Paris1
arr[85] := "10.3.100.115" ;W Paris2
;------------------------------------Portsmouth Adtran 5000s paired with arr
arr1 := Object()
arr1[0] := "Adtran 5000s|"
arr1[1] := "------------- SOUTH 5ks---------------"
arr1[2] := "PTMONH19AT1-199 Constitution 5k"
arr1[3] := "SMRSNHAQAT1-Acquarius 5k"
arr1[4] := "DOVRNHCMAT1-Cocheco Mill 5k"
arr1[5] := "CNCRNHSOAT1-Concord1 5k"
arr1[6] := "CNCRNHSOAT2-Concord2 5k"
arr1[7] := "DNVSMAHIAT1-Danvers 5k"
arr1[8] := "DOVRNHTHAT1-Dover1 5k"
arr1[9] := "DOVRNHTHAT2-Dover2 5k"
arr1[10] := "DRHMNMCHAT1-Durham 5k"
arr1[11] := "EXTRNHCEAT1-Exeter1 5k"
arr1[12] := "EXTRNHCEAT2-Exeter2 5k"
arr1[13] := "HMPNNHW1AT1-Hampton 5k"
arr1[14] := "LACNNHNMAT1-Laconia1 5k"
arr1[15] := "LACNNHNMAT2-Laconia2 5k"
arr1[16] := "LWRNMACAAT1-Lawrence1 5k"
arr1[17] := "LWRNMACAAT2-Lawrence2 5k"
arr1[18] := "LWLLMAAPAT1-Lowell 5k"
arr1[19] := "MLDNMAELAT1-Malden 5k"
arr1[20] := "MNCHNHCOAT1-Manchester1 5k"
arr1[21] := "MNCHNHCOAT2-Manchester2 5k"
arr1[22] := "MNCHNHCOAT3-Manchester3 5k"
arr1[23] := "MLFRNHSOAT1-Milford 5k"
arr1[24] := "PTMONHMHAT1-Music Hall 5k"
arr1[25] := "NASHNHWPAT1-Nashua1 5k"
arr1[26] := "NASHNHWPAT2-Nashua2 5k"
arr1[27] := "NBPTMAGRAT1-Newburyport1 5k"
arr1[28] := "NBPTMAGRAT2-Newburyport2 5k"
arr1[29] := "NWMRNHGEAT1-Newmarket 5k"
arr1[30] := "PBDYMACEAT1-Peabody 5k"
arr1[31] := "PTMONH07AT1-Pease 5k"
arr1[32] := "PTLDMEFOAT1-Portland1 5k"
arr1[33] := "PTLDMEFOAT2-Portland2 5k"
arr1[34] := "PTMONHISAT1-Portsmouth1 5k"
arr1[35] := "PTMONHISAT2-Portsmouth2 5k"
arr1[36] := "ROCHNHWEAT1-Rochester1 5k"
arr1[37] := "ROCHNHWEAT2-Rochester2 5k"
arr1[38] := "ROCHNHWEAT3-Rochester3 5k"
arr1[39] := "RYBHNHCEAT1-Rye Beach 5k"
arr1[40] := "SALMNHNBAT1-Salem 5k"
arr1[41] := "SBRKNHNRAT1-Seabrook 5k"
arr1[42] := "SBRKNHNRAT1-Somersworth 5k"
arr1[43] := "WLBONHGSAT1-Wolfeboro 5k"
;------------------------------------Oxford Networks Adtran 5000s
arr1[44] := "---------------NORTH 5ks---------------"
arr1[45] := "ALBYMEHUAT1-Andover 5k"
arr1[46] := "ANDVMEMAAT1-E Andover 5k"
arr1[47] := "ALBYMEHUAT1-Albany 5k"
arr1[48] := "BETHMEXAAT1-Bethel COT 5k"
arr1[49] := "BETHMEXAAT2-Bethel2 5k"
arr1[50] := "BCFDMEXAAT1-Intervale Rd 5k"
arr1[51] := "BETHMEVEAT1-Vernon St 5k"
arr1[52] := "BCFDMEXAAT1-Buckfield 5k"
arr1[53] := "BCFDMESRAT1-Spring Rd 5k"
arr1[54] := "BRPNMEXAAT1-Bryant Pond 5k"
arr1[55] := "BDFRMEJEAT2-Biddeford 5k"
arr1[56] := "CNTNMEXAAT1-Canton 5k"
arr1[57] := "CNTNMESTAT1-Stetson Rd 5k"
arr1[58] := "HBRNMEBRAT1-BrightonHill 5k"
arr1[59] := "HBRNMEBUAT1-E Hebron 5k"
arr1[60] := "HBRNMEXAAT1-Hebron 5k"
arr1[61] := "HBRNMESOAT1-Sodom Rd 5k"
arr1[62] := "HNVRMEMAAT1-Hanover 5k"
arr1[63] := "LCMLMEXAAT1-Locke Mills 5k"
arr1[64] := "NNWYMEGRAT1-Greenwood Rd 5k"
arr1[65] := "NNWYMEXAAT1-N Norway 5k"
arr1[66] := "NRWYME04AT1-Norway 5k"
arr1[67] := "NTRNMEPLAT1-Pleasant Pond 5k"
arr1[68] := "NTRNMEXAAT1-N Turner 5k"
arr1[69] := "NTRNMEBPAT1-Bear Pond Rd 5k"
arr1[70] := "NWRYMESKAT1-Sunday River 5k"
arr1[71] := "NWRYMEBRAT1-N Newry 5k"
arr1[72] := "RXPDMEXAAT1-Roxbury Pond 5k"
arr1[73] := "SMNRMEXAAT1-Sumner COT 5k"
arr1[74] := "SMNRMEMAAT1-W Sumner 5k"
arr1[75] := "SMNRMELSAT1-Lower Sumner Hill 5k"
arr1[76] := "SMNRMESPAT1-Shagg Pond 5k"
arr1[77] := "STPRMEWEAT1-S Paris 5k"
arr1[78] := "TRNRMEXAAT1-Turner COT 5k"
arr1[79] := "TRNRMEXAAT2-Turner2 5k"
arr1[80] := "TRNRMECEAT1-Upper St 5k"
arr1[81] := "TRNRMEWOAT1-Blue Rock 5k"
arr1[82] := "UPTNMEXAAT1-Upton 5k"
arr1[83] := "WPRSMETUAT1-Tuell Town 5k"
arr1[84] := "WPRSMEXAAT1-West Paris1 5k"
arr1[85] := "WPRSMEXAAT2-West Paris2 5k"
;------------------------------------Oxford Networks Adtrran 1124 paired with arr3
arr5 := Object()
arr5[1] := "10.3.100.83" ;Sawin Hill Rd
arr5[2] := "10.3.100.76" ;Grover Hill
arr5[3] := "10.3.100.51" ;Rosenberg Rd
arr5[4] := "10.3.100.118" ;Streaked Mtn
arr5[5] := "10.3.100.101" ;Cushman Rd
arr5[6] := "10.3.100.102" ;Rowe Hill Rd1
arr5[7] := "10.3.100.103" ;Rowe Hill Rd2
arr5[8] := "10.3.100.104" ;Route 232
arr5[9] := "10.3.100.105" ;S Main St1
arr5[10] := "10.3.100.117" ;S Main St2
arr5[11] := "10.3.100.47" ;Church St1
arr5[12] := "10.3.100.48" ;Church St2
arr5[13] := "10.3.100.81" ;Watson Rd
arr5[14] := "10.3.100.82" ;Dunn Rd
arr5[15] := "10.3.100.90" ;Pratt Hill Rd1
arr5[16] := "10.3.100.110" ;Pratt Hill Rd2
arr5[17] := "10.3.100.56" ;Sunday River Golf Course
arr5[18] := "10.3.100.100" ;Dakin Ln
arr5[19] := "10.3.100.98" ;Main St1
arr5[20] := "10.3.100.99" ;Main St2
arr5[21] := "10.3.100.85" ;Bradeen Rd
arr5[22] := "10.3.100.86" ;Upper Sumner Hill
arr5[23] := "10.3.100.87" ;Gammon Rd
arr5[24] := "10.3.100.71" ;E Hebron Rd1
arr5[25] := "10.3.100.72" ;E Hebron Rd2
arr5[26] := "10.3.100.75" ;Little Wilson Pond
arr5[27] := "10.3.100.77" ;Flat Rd
arr5[28] := "10.3.100.78" ;Meadowbrook Bridge Rd1
arr5[29] := "10.3.100.70" ;Meadowbrook Bridge Rd2
arr5[30] := "10.3.100.79" ;North Rd
arr5[31] := "10.3.100.80" ;Gilead Rd
arr5[32] := "10.3.100.96" ;Koskella Rd1
arr5[33] := "10.3.100.97" ;Koskella Rd2
arr5[34] := "10.3.100.95" ;Porter Rd1
arr5[35] := "10.3.100.49" ;Porter Rd2
;------------------------------------Oxford Networks Adtran 1124 paired with arr5
arr3 := Object() 
arr3[0] := "Adtran 1124s|"
arr3[1] := "ALBYMESAAT1-Sawin Rd 1124"
arr3[2] := "BETHMEGRAT1-Grover Hill 1124"
arr3[3] := "BKFDMEROAT1-Rosenberg Rd 1124"
arr3[4] := "BCFDMESMAT1-Streaked Mtn 1124"
arr3[5] := "BRPNMECUAT1-Cushman Rd 1124"
arr3[6] := "BRPNMEROAT1-Rowe Hill1 1124"
arr3[7] := "BRPNMEROAT2-Rowe Hill2 1124"
arr3[8] := "BRPNMERTAT1-Rte 232 1124"
arr3[9] := "BRPNMESMAT1-S Main St1 1124"
arr3[10] := "BRPNMESMAT2-S Main St2 1124"
arr3[11] := "CNTNMECHAT1-Church St1 1124"
arr3[12] := "CNTNMECHAT2-Church St2 1124"
arr3[13] := "NNWYMEWAAT1-Watson Rd 1124"
arr3[14] := "NNWYMEDUAT1-Dunn Rd 1124"
arr3[15] := "NTRNMEPHAT1-Pratt Hill1 1124"
arr3[16] := "NTRNMEPHAT2-Pratt Hill2 1124"
arr3[17] := "NWRYMEMOAT1-Sun River Golf 1124"
arr3[18] := "SMNRMEDAAT1-Dakin Ln 1124"
arr3[19] := "SMNRMEMSAT1-Main St1 1124"
arr3[20] := "SMNRMEMSAT2-Main St2 1124"
arr3[21] := "SMNRMEBRAT1-Bradeen Rd 1124"
arr3[22] := "SMNRMEUSAT1-Upper Sumner Hill 1124"
arr3[23] := "SMNRMEGAAT1-Gammon Rd 1124"
arr3[24] := "TRNRMEEHAT1-E Hebron1 1124"
arr3[25] := "TRNRMEEHAT2-E Hebron2 1124"
arr3[26] := "TRNRMELWAT1-Little Wilson 1124"
arr3[27] := "WBTHMEFLAT1-Flat Rd 1124"
arr3[28] := "WBTHMEMBAT1-Meadowbrook Bridge Rd1 1124"
arr3[29] := "WBTHMEMBAT2-Meadowbrook Bridge Rd2 1124"
arr3[30] := "WBTHMENOAT1-North Rd 1124"
arr3[31] := "WBTHMEGIAT1-Gilead Rt 2 1124"
arr3[32] := "WPRSMEKOAT1-Koskela Rd1 1124"
arr3[33] := "WPRSMEKOAT2-Koskela Rd2 1124"
arr3[34] := "WPRSMEPOAT1-Porter Rd1 1124"
arr3[35] := "WPRSMEPOAT2-Porter Rd2 1124"
;------------------------------------Portsmouth 2820s paired with arr9
arr2 := Object()
arr2[0] := "Remote Muxes|"
arr2[1] := "359corp mux1 telco"
arr2[2] := "359corp mux2 telco"
arr2[3] := "77 Aviation 2820"
arr2[4] := "Charleston mux1 2800"
arr2[5] := "CCS Salem 2820"
arr2[6] := "Concord1 2820"
arr2[7] := "Danvers 2820"
arr2[8] := "Dover 2820"
arr2[9] := "Durham 2820"
arr2[10] := "Exeter 2820"
arr2[11] := "Hampton 2820"
arr2[12] := "Laconia 2820"
arr2[13] := "Lawrence 2820"
arr2[14] := "Lowell 2820"
arr2[15] := "Malden 2820"
arr2[16] := "Manchester1 2820"
arr2[17] := "Manchester2 2820"
arr2[18] := "Milford 2820"
arr2[19] := "Mojo 2820"
arr2[20] := "Nashua 2820"
arr2[21] := "Newburyport 2820"
arr2[22] := "Newmarket mux1 2800"
arr2[23] := "Newmarket mux2 2800"
arr2[24] := "Peabody 2820"
arr2[25] := "Portland 2820"
arr2[26] := "Portsmouth 2820"
arr2[27] := "Rye MUX1 2800"
arr2[28] := "Rye MUX2 2800"
arr2[29] := "Rochester 2820"
arr2[30] := "Salem 2820"
arr2[31] := "Somersworth 2820"
arr2[32] := "Seabrook mux1 2800"
arr2[33] := "Wolfeboro 2820"
arr2[34] := "RAD IPMUX216 BRCO-Portland"
arr2[35] := "RAD IPMUX216 BRCO RAD1"
arr2[36] := "RAD IPMUX216 Gerber-BRCO"
arr2[37] := "RAD IPMUX216 Portland-BRCO"
;------------------------------------Portsmouth 2820s paired with arr2
arr9 := Object()
arr9[1] := "192.168.78.209" ;359corp mux1 telco
arr9[2] := "192.168.78.210" ;359corp mux 2 telco
arr9[3] := "192.168.2.92" ;77 Aviation
arr9[4]	:= "192.168.63.2" ;Charleston mux1
arr9[5] := "192.168.129.3" ;CCS Salem
arr9[6] := "192.168.61.11" ;Concord1
arr9[7] := "192.168.95.2" ;Danvers
arr9[8] := "192.168.65.2" ;Dover
arr9[9] := "192.168.75.2" ;Durham
arr9[10] := "192.168.83.10" ;Exeter
arr9[11] := "192.168.69.2" ;Hampton
arr9[12] := "192.168.88.2" ;Laconia
arr9[13] := "192.168.105.7" ;Lawrence
arr9[14] := "192.168.68.2" ;Lowell
arr9[15] := "192.168.128.4" ;Malden
arr9[16] := "192.168.87.8" ;Manchester1
arr9[17] := "192.168.87.7" ;Manchester2
arr9[18] := "192.168.91.4" ;Milford
arr9[19] := "192.168.78.20" ;MOJO
arr9[20] := "192.168.64.2" ;Nashua
arr9[21] := "192.168.66.2" ;Newburyport
arr9[22] := "192.168.70.3" ;Newmarket mux1
arr9[23] := "192.168.70.4" ;Newmarket mux2
arr9[24] := "192.168.104.4" ;Peabody
arr9[25] := "192.168.67.2" ;Portland
arr9[26] := "192.168.73.2" ;Portsmouth
arr9[27] := "192.168.81.3" ;Rye mux1
arr9[28] := "192.168.81.4" ;Rye mux2
arr9[29] := "192.168.89.7" ;Rochester
arr9[30] := "192.168.62.2" ;Salem
arr9[31] := "192.168.80.11" ;Somersworth
arr9[32] := "192.168.72.2" ;Seabrook mux1
arr9[33] := "192.168.79.11" ;Wolfeboro
arr9[34] := "192.168.76.122" ;RAD IPMUX216 brco-portland
arr9[35] := "192.168.76.148" ;RAD IPMUX216 broc rad1
arr9[36] := "192.168.76.149" ;RAD IPMUX216 gerber-brco
arr9[37] := "192.168.67.6" ;RAD IPMUX216 portland-brco

;------------------------------------MENU CHOICE DEFINITIONS
list1 = Adtran 5000 Tasks||Check DSL Stats|Clear DSL Stats|Check DSL MAC|Clear DSL MAC|Unbond DSL|Rebond DSL|Change DSL speeds|Change DSL Service-Mode|Show DSL Bonded Groups|--------------------|Check ONT Stats|Clear ONT Stats|Check ONT MAC|Management IP|Tx & Rx Levels on PON|Rx OLT Levels on PON|Schedule ONT Reboot|--------------------|Check FXS Port Status|Reset FXS Port|Run FXS MLT|--------------------|ESHDSL Port Stats|Management ESHDSL IP|ESHDSL Ports Assigned|--------------------|Find MAC or IP
list2 = Login to Management IPs||Login ONT w/Management IP|Login ESHDSL w/Management IP
list3 = IAD Tasks||Unbond T1|Rebond T1|Check T1 performance|Check IAD DSP|Reset IAD FXS port|Add T38 & 9600bps to FXS Port|Schedule Reboot|Cancel Reboot|Run Debug|Stop Debug
list4 = VoIP Tasks||Check SBC|Check AutoProv|Autoprov GUI|VoIP Tracking 1.0|VoIP Tracking 2.0|Sniffer PCAP
list5 = Remote Muxes||Check T1
list6 = Other Tasks||Network Pinger Tools|Password Generator|Timer|MAC Lookup|Neustar Lookup|Job Tracking|Kaseya Network Monitor KNM|Fairpoint GUI|Verizon GUI|Techinline|GoToAssist|BayRing Facilities DIGSAFE|Oxford Facilities DIGSAFE|Connect RDP Sites|ONDA|Speedtest|MultiFusion|Firstlight Webmail
list7 = Technicians||Frank Logler|Bob McKenna|Nick Dyce|David Ayers
list8 = Other||Enter MAC|Enter IP Address
list9 = RDP Sites||Ominia BRCTerm2|INM Viewer|AFC Viewer|Ping Plotter
list11 = Service-Mode||ADSL2+|ADSL2+m|ADSL2-multimode|g-dmt|readsl
list12 = Security Tasks||Oncall Passwords|AlarmAccount.com|Check Cameras|Check Win-Pak

list16 = Adtran 1124 Tasks||Check DSL Stats|Clear DSL Stats|Check DSL MAC|Clear DSL MAC|Change DSL speeds|Change DSL Service-Mode|--------------------|Check FXS Port Status|Reset FXS Port|Run FXS MLT
list17 = Intelliflex Devices||Bethel|Gore Rd|Turner
list20 = Calix Tasks||Calix
list18 = DMS Switches||Check Port Status|Restore Port|--------------------|Bangor CS15|Bethel DMS10|Lewiston CS15|Norway DMS10|Turner DMS10|Portsmouth DMS100|Albany DMS500|Albany CS15
list19 = Files & Folders||International Test Calls|Site Info Folder|Orders Folder|Loop Qual Folder|South NOC Repair Folder|NOC Tier 1 Folder|Circuit ID Training Sheet|Alternate Carrier & PEAK Info|Alternate Carrier Info|DMS how to|META how to|IP List|MUX List|Passwords|KeePass|Tech Software Tools|Switch Folder|Maine CO|Maine Network Diagrams|O360 Guide|VoIP Info
list21 = Voice Mail||EAS|APmax|Octel
list22 = Meta Switch Tasks||Portsmouth|Metaview Web|SAS Portsmouth|SAS Lewiston
list23 = DMS10 Switches||Bangor|Lewiston|Bethel|Turner|Norway
;------------------------------------
IfNotExist, %USERPROFILE%\desktop\Logs\
	FileCreateDir, %USERPROFILE%\desktop\Logs\ ;create log directory on desktop

GoTo, RepairMenu ;begin program
GoTo, Exit ;end program
;------------------------------------
RepairMenu:
{
Gui,1: Destroy
Menu,tray, UseErrorLevel
Menu, tray, Icon, %fileloc1%\Putty\toolbox.ico, 1, 1
Gui,1: Default
Gui,1: font,s12,arial
Gui,1: Color, NAVY
Gui,1: -AlwaysOnTop +SysMenu -MaximizeBox +Border -Resize
Gui,1: Add,DropDownList, w275 vanswer1 gchoice1, %list1%
Gui,1: Add,DropDownList, w275 vanswer2 gchoice2, %list2%
Gui,1: Add,DropDownList, w275 vanswer3 gchoice3, %list3%
Gui,1: Add,DropDownList, w275 vanswer4 gchoice4, %list4%
Gui,1: Add,DropDownList, w275 vanswer5 gchoice5, %list5%
Gui,1: Add,DropDownList, w275 vanswer20 gchoice20, %list20%
Gui,1: Add,DropDownList, w275 vanswer16 gchoice16, %list16%
Gui,1: Add,DropDownList, w275 vanswer17 gchoice17, %list17%
Gui,1: Add,DropDownList, w275 vanswer18 gchoice18, %list18%
Gui,1: Add,DropDownList, w275 vanswer22 gchoice22, %list22%
Gui,1: Add,DropDownList, w275 vanswer21 gchoice21, %list21%
;Gui,1: Add,DropDownList, w275 vanswer7 gchoice7, %list15%
Gui,1: Add,DropDownList, w275 vanswer12 gchoice12, %list12%
Gui,1: Add,DropDownList, w275 vanswer19 gchoice19, %list19%
Gui,1: Add,DropDownList, w275 vanswer6 gchoice6, %list6%
Gui,1: show, xcenter ycenter,%menutitle%
Return
}
;------------------------------------
choice1:
{
Gui,1: submit, nohide
if answer1 = Adtran 5000 Tasks
	Return
else
	GuiControl,, answer1, |%list1%
if answer1 = Check DSL Stats
{
	choice = 1
	GoSub, Get5k
}	
else
if answer1 = Clear DSL Stats
{
	choice = 3
	GoSub, Get5k
}
else
if answer1 = Check DSL MAC
{
	choice = 5
	GoSub, Get5k
}
else
if answer1 = Clear DSL MAC
{
	choice = 6
	GoSub, Get5k
}
else
if answer1 = Unbond DSL
{
	choice = 10
	GoSub, Get5k
}
else
if answer1 = Rebond DSL
{
	choice = 11
	GoSub, Get5k
}
else
if answer1 = Change DSL speeds
{
	choice = 12
	GoSub, Get5k
}
else
if answer1 = Change DSL Service-Mode
{
	choice = 13
	GoSub, Get5k
}
else
if answer1 = Show DSL Bonded Groups
{
	choice = 21
	GoSub, Get5k
}
else
if answer1 = Check ONT Stats
{
	choice = 2
	GoSub, Get5k
}
else
if answer1 = Check ONT MAC
{
	choice = 5
	GoSub, Get5k
}
if answer1 = Clear ONT MAC
{
	choice = 6
	GoSub, Get5k
}
else
if answer1 = Management IP
{
	choice = 16
	GoSub, Get5k
}
else
if answer1 = Tx & Rx Levels on PON
{
	choice = 19
	GoSub, Get5k
}
else
if answer1 = Rx OLT Levels on PON
{
	choice = 20
	GoSub, Get5k
}
else
if answer1 = Schedule ONT Reboot
{
	choice = 22
	GoSub, ONTReboot
}
else
if answer1 = Check FXS Port Status
{
	choice = 7
	GoSub, Get5k
}
else
if answer1 = Reset FXS Port
{
	choice = 8
	GoSub, Get5k
}
else
if answer1 = Run FXS MLT
{
	choice = 9
	GoSub, Get5k
}
else
if answer1 = ESHDSL Port Stats
{
	choice = 14
	GoSub, Get5k
}
else
if answer1 = Management ESHDSL IP
{
	choice = 17
	GoSub, Get5k
}
else
if answer1 = ESHDSL Ports Assigned
{
	choice = 18
	GoSub, Get5k
}
else
if answer1 = Find MAC or IP
	{
		choice = 23
		GoSub, ChooseTech 
	}
Return
}
;------------------------------------
choice2:
{
Gui,1: submit, nohide
if answer2 = Login to Management IPs
	Return
else
	GuiControl,, answer2, |%list2%
if answer2 = Login ONT w/Management IP
{
	choice = 24
	GoSub, ChooseIAD
}
else
if answer2 = Login ESHDSL w/Management IP
{
	choice = 25
	GoSub, ChooseIAD
}
Return
}
;------------------------------------
choice3:
{
Gui,1: submit, nohide
if answer3 = IAD Tasks
	Return
else
	GuiControl,, answer3, |%list3%
if answer3 = Unbond T1
	GoSub, UnbondT1
else
if answer3 = Rebond T1
	GoSub, RebondT1
else
if answer3 = Check T1 performance
	GoSub, IADstats
else
if answer3 = Check IAD DSP
	GoSub, CheckDSP
else
if answer3 = Reset IAD FXS port
	GoSub, IADFXS
else
if answer3 = Add T38 & 9600bps to FXS Port
	GoSub, Addt38
else
if answer3 = Schedule Reboot
	GoSub, RebootIAD
else
if answer3 = Cancel Reboot
	GoSub, CancelReboot
else
if answer3 = Run Debug
	GoSub, RunDebug
else
if answer3 = Stop Debug
	GoSub, StopDebug
Return
}
;------------------------------------
choice4:
{
Gui,1: submit, nohide
if answer4 = VoIP Tasks
	Return
else
	GuiControl,, answer4, |%list4%
if answer4 = Check SBC
	GoSub, CheckSBC
else
if answer4 = Check AutoProv
	GoSub, CheckAutoprov
else
if answer4 = Autoprov GUI
	GoSub, autoprovGUI
else
if answer4 = VoIP Tracking 1.0
	GoSub, voip1
else
if answer4 = VoIP Tracking 2.0
	GoSub, voip2
else
if answer4 = Sniffer PCAP
	GoSub, GetPCAP
Return
}
;------------------------------------
choice5:
{
Gui,1: submit, nohide
if answer5 = Remote Muxes
	Return
else
	GuiControl,, answer5, |%list5%
if answer5 = Check T1
	GoSub, Get2820
Return
}
;------------------------------------
choice6:
{
Gui,1: submit, nohide
if answer6 = Other Tasks
	Return
else
	GuiControl,, answer6, |%list6%
if answer6 = Network Pinger Tools
	GoSub, RunPing
else
if answer6 = Password Generator
	GoSub, RunPassGen
else
if answer6 = Timer
	GoSub, Timer
else
if answer6 = MAC Lookup
	GoSub, MACfind
else
if answer6 = Neustar Lookup
	GoSub, Neustar
else
if answer6 = Job Tracking
	GoSub, JobTracking
else
if answer6 = Kaseya Network Monitor KNM
	GoSub, KNM
else
if answer6 = Fairpoint GUI
	GoSub, Fairpoint
else
if answer6 = Verizon GUI
	GoSub, Verizon
else
if answer6 = Techinline
	GoSub, Techinline
else
if answer6 = GoToAssist
	GoSub, GoToAssist
else
if answer6 = Site Info Folder
	GoSub, Siteinfo
else
if answer6 = Orders Folder
	GoSub, Orders
else
if answer6 = Loop Qual Folder
	GoSub, Loopqual
else
if answer6 = BayRing Facilities DIGSAFE
	GoSub, Digsafe
else
if answer6 = Oxford Facilities DIGSAFE
	GoSub, DigsafeON
else
if answer6 = Connect RDP Sites
	GoSub, RDPMenu
else
if answer6 = International Test Calls
	GoSub, INTtestcalls
else
if answer6 = ONDA
	GoSub, OpenONDA
else
if answer6 = Speedtest
	GoSub, Speedtest
else
if answer6 = MultiFusion
	GoSub, Multitel
else
if answer6 = Firstlight Webmail
	GoSub, Webmail
Return
}
;------------------------------------
choice12:
{
Gui,1: submit, nohide
if answer12 = Security Tasks
	Return
else
	GuiControl,, answer12, |%list12%
if answer12 = Oncall Passwords
	GoSub, Oncall
else
if answer12 = AlarmAccount.com
	GoSub, GetAlarmAccount
else
if answer12 = Check Cameras
	GoSub, GetCameras
else
if answer12 = Check Win-Pak
	GoSub, GetWinPak
Return
}
;------------------------------------
choice16:
{
;list16 = Adtran 1124 Tasks||Check DSL Stats|Clear DSL Stats|Check DSL MAC|Clear DSL MAC|Unbond DSL|Rebond DSL|Change DSL speeds|Change DSL Service-Mode|--------------------|Check FXS Port Status|Reset FXS Port|Run FXS MLT
Gui,1: submit, nohide
if answer16 = Adtran 1124 Tasks
	Return
else
	GuiControl,, answer16, |%list16%
if answer16 = Check DSL Stats
{
	choice = 1
	GoSub, Get1124
}	
else
if answer16 = Clear DSL Stats
{
	choice = 2
	GoSub, Get1124
}
else
if answer16 = Check DSL MAC
{
	choice = 3
	GoSub, Get1124
}
else
if answer16 = Clear DSL MAC
{
	choice = 4
	GoSub, Get1124
}
else
if answer16 = Change DSL speeds
{
	choice = 5
	GoSub, Get1124
}
else
if answer16 = Change DSL Service-Mode
{
	choice = 6
	GoSub, Get1124
}
else
if answer16 = Check FXS Port Status
{
	choice = 7
	GoSub, Get1124
}
else
if answer16 = Reset FXS Port
{
	choice = 8
	GoSub, Get1124
}
else
if answer16 = Run FXS MLT
{
	choice = 9
	GoSub, Get1124
}
Return
}
;------------------------------------
choice17:
{
Gui,1: submit, nohide
if answer17 = Intelliflex Tasks
	Return
else
	GuiControl,, answer17, |%list17%
if answer17 = Bethel
	GoSub, OpenBethelINF
else
if answer17 = Gore Rd
	GoSub, OpenGoreRdINF
else
if answer17 = Turner
	GoSub, OpenTurnerINF
Return
}
;------------------------------------
choice18:
{
Gui,1: submit, nohide
if answer18 = DMS Switches
	Return
else
	GuiControl,, answer18, |%list18%
if answer18 = Check Port Status
	GoSub, GetSwitch
else
if answer18 = Restore Port
	GoSub, RestoreFXS
else
if answer18 = Bangor CS15
{
	ipaddr := "10.3.1.40"
	switch = "Bangor Switch"
	GoSub, OpenBangor
}
else
if answer18 = Bethel DMS10
{
	ipaddr := "10.3.5.10"
	switch = "Bethel Switch"
	GoSub, OpenBethel
}
else
if answer18 = Lewiston CS15
{
	ipaddr := "10.3.12.40"
	switch = "Lewiston Switch"
	GoSub, OpenLewiston
}
else
if answer18 = Norway DMS10
{
	ipaddr := "10.3.8.10"
	switch = "Norway Switch"
	GoSub, OpenNorway
}
else
if answer18 = Turner DMS10
{
	ipaddr := "10.3.3.10"
	switch = "Turner Switch"
	GoSub, OpenTurner
}
else
if answer18 = Portsmouth DMS100
{
	ipaddr := "192.168.0.130"
	switch = "DMS100 Switch"
	GoSub, OpenDMS100
}
else
if answer18 = Albany DMS500
{
	ipaddr := "10.0.2.49"
	switch = "Albany DMS500 Switch"
	GoSub, OpenAlbany
}
else
if answer18 = Albany CS15
{
	ipaddr := "10.0.2.50"
	switch = "Albany CS15 Switch"
	GoSub, OpenCS15
}
Return
}
;------------------------------------
choice19:
{
Gui,1: submit, nohide
if answer19 = Files & Folders
	Return
else
	GuiControl,, answer19, |%list19%
if answer19 = Site Info Folder
	GoSub, Siteinfo
else
if answer19 = Orders Folder
	GoSub, Orders
else
if answer19 = Loop Qual Folder
	GoSub, Loopqual
else
if answer19 = International Test Calls
	GoSub, INTtestcalls
else
if answer19 = South NOC Repair Folder
	GoSub, NOCfolder
else
if answer19 = NOC Tier 1 Folder
	GoSub, NOC1folder
else
if answer19 = Circuit ID Training Sheet
	GoSub, CIDsheet
else
if answer19 = Alternate Carrier & PEAK Info
	GoSub, Altcarrier
else
if answer19 = DMS how to
	GoSub, DMShowto
else
if answer19 = META how to
	GoSub, Metahowto
else
if answer19 = Alternate Carrier Info
	GoSub, Altcarrier1
else
if answer19 = IP List
	GoSub, IPlist
else
if answer19 = Passwords
	GoSub, Passwords
else
if answer19 = KeePass
	GoSub, KeePass
else
if answer19 = Tech Software Tools
	GoSub, TechTools
else
if answer19 = Switch Folder
	GoSub, Switch
else
if answer19 = Maine CO
	GoSub, MaineCO
else
if answer19 = Maine Network Diagrams
	GoSub, MaineNetwork
else
if answer19 = O360 Guide
	GoSub, O360
else
if answer19 = VoIP Info
	GoSub, VOIP
else
if answer19 = MUX List
	GoSub, MUXlist
Return
}
;------------------------------------
choice20:
{
Gui,1: submit, nohide
if answer20 = Other Tasks
	Return
else
	GuiControl,, answer20, |%list20%
if answer20 = Calix
	GoSub, OpenCalix
Return
}
;------------------------------------
choice21:
{
Gui,1: submit, nohide
if answer21 = Voice Mail
	Return
else
	GuiControl,, answer21, |%list21%
if answer21 = EAS
	GoSub, OpenEAS
else
if answer21 = APmax
	GoSub, OpenAPmax
if answer21 = Octel
	Return
Return
}
;------------------------------------
choice22:
{
;list22 = Meta Switch Tasks||Portsmouth|Metaview Web|SAS Portsmouth|SAS Lewiston
Gui,1: submit, nohide
if answer22 = Meta Switch Tasks
	Return
else
	GuiControl,, answer22, |%list22%
if answer22 = Portsmouth
	GoSub, OpenMeta
else
if answer22 = SAS Portsmouth
	GoSub, SAS
else
if answer22 = Metaview Web
	GoSub, OpenWeb
else
if answer22 = SAS Lewiston
	GoSub, SAS1
Return
}
;------------------------------------
choice23:
{
waiting := false
Gui,37: submit, nohide
if choice23 = DMS Switches
	Return
else
	GuiControl,, answer23, |%list23%
Gui,37: destroy
if answer23 = Bangor
{
	ipaddr := "10.3.1.40"
	switch = "Bangor Switch"
	GoSub, OpenBangor
}
else
if answer23 = Bethel
{
	ipaddr := "10.3.5.10"
	switch = "Bethel Switch"
	GoSub, OpenBethel
}
else
if answer23 = Lewiston
{
	ipaddr := "10.3.12.40"
	switch = "Lewiston Switch"
	GoSub, OpenLewiston
}
else
if answer23 = Norway
{
	ipaddr := "10.3.8.10"
	switch = "Norway Switch"
	GoSub, OpenNorway
}
else
if answer23 = Turner
{
	ipaddr := "10.3.3.10"
	switch = "Turner Switch"
	GoSub, OpenTurner
}
else
if answer23 = Portsmouth
{
	ipaddr := "192.168.0.130"
	switch = "DMS100 Switch"
	GoSub, OpenDMS100
}
Return
}
;------------------------------------
;------------------------------------
Get5k:
{
WinGetPos,x,y,,,%menutitle%
xpos := (x -50)
ypos := (y +40)
5kList =
Gui,2: Destroy
Gui,2: font, s12,arial
Gui,2: +AlwaysOnTop +SysMenu -MinimizeBox +Border -Resize
Gui,2: Color, YELLOW
5kList .=	(!5kList ? "" : "|") item%A_Index%
For each, item in arr1
	5kList .=	(!5kList ? "" : "|") item
Gui,2: Add, DropDownList, r35 w355 v5kChoice Choose1 g5kChosen, %5kList%
Gui,2: show, x%xpos% y%ypos%,REPAIR
Return
}
;------------------------------------
5kChosen:
{
Gui,2: submit, nohide
if 5kChoice = Adtran 5000s
	Return
	if 5kChoice = ---------------SOUTH 5ks---------------
	Return
if 5kChoice = ---------------NORTH 5ks---------------
	Return
Gui,2: destroy
listcntr = 0
Loop, % arr1.MaxIndex()
{
	if arr1[A_Index] = 5kChoice
	{
		ipaddr := arr[A_Index]
		listcntr = %A_Index%
	}
}
Adtran = %5kChoice%
GoSub, GUIornot
Return
}
;------------------------------------
GUIornot:
{
Gui,8: Destroy
Gui,8: Default
Gui,8: font, s12 bold, arial
Gui,8: Color, YELLOW
Gui,8: -AlwaysOnTop +SysMenu -MaximizeBox +Border -Resize
Gui,8: Add,Text,cNAVY,You have chosen to open %Adtran% %ipaddr%
Gui,8: font, s12 italic, arial
Gui,8: Add,Text,cNAVY,`n*Use TACACS login for South Devices`n*Use Radius login for North Devices`n`n*Cannot run scripts on GUI`n
Gui,8: font, s12 bold normal, arial
Gui,8: Add,Radio, cNAVY vCh, GUI
Gui,8: Add,Radio, cNAVY, CLI (default)
Gui,8: Add,Text,,`n`n
Gui,8: Add,Button,Default x25 y225 gopen,CONTINUE
Gui,8: Add,Button,x146 y225 gcancel,CANCEL
WinGetPos,x,y,,,%menutitle%
xpos := (x -50)
ypos := (y +40)
Gui,8: Show,x%xpos% y%ypos%,OPEN ADTRAN
Return
}
;------------------------------------
open:
{
Gui,8: Submit, NoHide
Gui,8: Destroy
If Ch = 1
	GoSub, OpenAdtranGUI
else
	GoSub, OpenAdtranCLI
Return
}
;------------------------------------
cancel:
{
Gui,8: Destroy
GoSub, Get5k
Return
}
;------------------------------------
OpenAdtranCLI:
{
IfNotExist, %USERPROFILE%\desktop\Logs\Backup
	FileCreateDir, %USERPROFILE%\desktop\Logs\Backup
IfExist, %USERPROFILE%\desktop\Logs\%ipaddr%.txt
	FileMove, %USERPROFILE%\desktop\Logs\%ipaddr%.txt, %USERPROFILE%\desktop\Logs\Backup\%ipaddr%.txt

WinGet,state,MinMax,%ipaddr% - PuTTY
if state = -1 ;Window is minimized
	{
		WinActivate, %ipaddr% - PuTTY
		WinSetTitle, %ipaddr% - PuTTY,,%adtran% %ipaddr%
		Sleep, 500
	}
else ;Window is not minimized but on screen
	{
		WinActivate, %ipaddr% - PuTTY
		WinSetTitle, %ipaddr% - PuTTY,,%adtran% %ipaddr%
		WinActivate, %Adtran% %ipaddr%
		Sleep, 500
	}
IfWinNotExist %Adtran% %ipaddr%
	{
		GoSub, GetInfo
		While(waiting)
		Sleep, 500
		Run "C:\Program Files (x86)\PuTTY\putty.exe" -telnet %ipaddr%
		WinActivate, %ipaddr% - PuTTY
		Sleep, 500
		WinSetTitle, %ipaddr% - PuTTY,, %adtran% %ipaddr%
		WinActivate, %adtran% %ipaddr%
		Sleep, 500
		WinMove,%Adtran% %ipaddr%,,242,177
		Sleep, 500
		WinActivate, %Adtran% %ipaddr%
		Send, %un%{ENTER}
		Sleep, 500
		SendRaw, %pw%
		Send,{ENTER}
		Sleep, 500
		Send, enable{ENTER}
		Sleep, 500
	}
if choice = 1
	GoSub, CheckDSL ;dsl
else
if choice = 2
	GoSub, CheckONT ;ont
else
if choice = 3
	GoSub, ClearDSL ;dsl
else
if choice = 4
	GoSub, ClearONT ;ont
else
if choice = 5
	GoSub, CheckMAC ;eshdsl
else
if choice = 6
	GoSub, ClearMAC ;eshdsl
else
if choice = 7
	GoSub, CheckFXS ;dsl
else
if choice = 8
	GoSub, ResetFXS ;dsl
else
if choice = 9
	GoSub, RunMLT ;dsl
else
if choice = 10
	GoSub, UnbondDSL ;atmgrp
else
if choice = 11
	GoSub, RebondDSL ;atmgrp
else
if choice = 12
	GoSub, DSLspeed ;dsl
else
if choice = 13
	GoSub, DSLModeMenu ;dsl
else
if choice = 14
	GoSub, CheckESHDSL ;dsl
else
if choice = 16
	GoSub, ONTIP ;ont
else
if choice = 17
	GoSub, ESHDSLIP ;eshdsl
else
if choice = 18
	GoSub, ESHDSLPorts ;eshdsl
else
if choice = 19
	GoSub, ONTLevels ;ont
else
if choice = 20
	GoSub, OLTLevels ;ont
else
if choice = 21
	GoSub, Bonded ;dsl
Return
}
;------------------------------------
OpenAdtranGUI:
{
Run, chrome.exe "%ipaddr%"
WinActivate, chrome.exe
Sleep, 500
Return
}
;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------
GetInfo: ;username & password
{
WinGetPos,x,y,,,%menutitle%
xpos := (x -50)
ypos := (y +40)
Gui,9: Destroy
Gui,9: Default
Gui,9: Color, YELLOW
Gui,9: +AlwaysOnTop +SysMenu -MaximizeBox +Border -Resize
Gui,9: Font, s12 bold italic, arial cYELLOW
Gui,9: Add,Text, cNAVY,Use TAB or MOUSE to click on fields below`n`nUSE TACACS Login for South 5ks and RADIUS Login for North 5ks`n
Gui,9: Font, s12 normal, arial
Gui,9: Add,Text, cNAVY x5 y80,USERNAME:
Gui,9: Add,Edit,LIMIT15 cNAVY gValueCheck vun w180 x113 y79
Gui,9: Add,Text, cNAVY x5 y105,PASSWORD:
Gui,9: Add,Edit,LIMIT15 cNAVY gValueCheck +password vpw w180 x113 y104
Gui,9: Add,Button,Default x25 y150 disabled gOpenit,CONTINUE
Gui,9: Add,Button,x146 y150 gCancelit,CANCEL
waiting := true
Gui,9: Show,x%xpos% y%ypos%,USER INFO
Return
}
;------------------------------------
Openit: ;continue positive
{
Ch = 1
Gui, Submit, NoHide
Gui, Destroy
waiting := false
Return
}
;------------------------------------
Openit1: ;yes negative
{
Ch = 2
Gui, Submit, NoHide
Gui, Destroy
waiting := false
Return
}
;------------------------------------
Cancelit: ;cancel
{
Ch = 2
Gui, Destroy
SetTimer,,Off
IfWinExist,%session%
WinActivate,%session%
Send, !{f4}{ENTER} ;close
Reload ;clear variables
GoSub, RepairMenu
Return
}
;------------------------------------
Cancelit1: ;cancel
{
Ch = 2
Gui, Destroy
Reload ;clear variables
GoSub, RepairMenu
Return
}
;------------------------------------
Cancelit2: ;cancel
{
Ch = 2
Gui, Destroy
GoSub, Get2820
Return
}
;------------------------------------
Cancelit3: ;cancel
{
Ch = 2
Gui, Destroy
GoSub, GetIntelliflex
Return
}
;------------------------------------
Cancelit4: ;cancel
{
Ch = 2
Gui, Destroy
GoSub, Get1124
Return
}
;------------------------------------
GetInfo1: ;dsl
{
WinGetPos,x,y,,,%menutitle%
xpos := (x -50)
ypos := (y +40)
Gui,10: Destroy
Gui,10: Default
Gui,10: font, s12 bold, arial
Gui,10: Color, YELLOW
Gui,10: +AlwaysOnTop +SysMenu -MaximizeBox +Border -Resize
Gui,10: Font, s12 bold italic, arial cYELLOW
Gui,10: Add,Text, CNAVY,Use TAB or MOUSE to click on fields below`n`nSlots(1-22), Ports(1-24)`n
Gui,10: Font, s12 bold normal, arial
Gui,10: Add,Text, CNAVY x5 y80,SLOT:
Gui,10: Add,Edit,LIMIT2 NUMBER cNAVY gValueCheck1 vslot w24 x65 y79
Gui,10: Add,Text, CNAVY x5 y105,PORT:
Gui,10: Add,Edit,LIMIT2 NUMBER cNAVY gValueCheck1 vport w24 x65 y104
Gui,10: Add,Button,Default x25 y150 disabled gOpenit,CONTINUE
Gui,10: Add,Button,x146 y150 gCancelit1,CANCEL
waiting := true
Gui,10: Show,x%xpos% y%ypos%,REPAIR
Return
}
;------------------------------------
GetInfo2: ;ont
{
WinGetPos,x,y,,,%menutitle%
xpos := (x -50)
ypos := (y +40)
Gui,11: Destroy
Gui,11: Default
Gui,11: font, s12 bold, arial
Gui,11: Color, YELLOW
Gui,11: +AlwaysOnTop +SysMenu -MaximizeBox +Border -Resize
Gui,11: Font, s12 bold italic, arial cYELLOW
Gui,11: Add,Text, CNAVY,Use TAB or MOUSE to click on fields below`n`nSlots(1-22), ONTs(1-32), PONs(1-4)`n
Gui,11: Font, s12 bold normal, arial
Gui,11: Add,Text, CNAVY x5 y80,SLOT:
Gui,11: Add,Edit,LIMIT2 NUMBER cNAVY gValueCheck1 vslot w24 x65 y79
Gui,11: Add,Text, CNAVY x5 y105,ONT:
Gui,11: Add,Edit,LIMIT2 NUMBER cNAVY gValueCheck2 vont w24 x53 y104
Gui,11: Add,Text, CNAVY x5 y130,PON:
Gui,11: Add,Edit,LIMIT2 NUMBER cNAVY gValueCheck2 vpon w24 x53 y129
Gui,11:Add,Button,Default x25 y175 disabled gOpenit,CONTINUE
Gui,11:Add,Button,x146 y175 gCancelit1,CANCEL
waiting := true
Gui,11: Show,x%xpos% y%ypos%,REPAIR
Return
}
;------------------------------------
GetInfo3: ;tn
{
WinGetPos,x,y,,,%menutitle%
xpos := (x -50)
ypos := (y +40)
Gui,12: Destroy
Gui,12: Default
Gui,12: font, s12 bold, arial
Gui,12: Color, YELLOW
Gui,12: +AlwaysOnTop +SysMenu -MaximizeBox +Border -Resize
Gui,12: Font, s12 bold italic, arial cYELLOW
Gui,12: Add,Text, cNAVY,Use TAB or MOUSE to click on fields below`n
Gui,12: Font, s12 normal, arial
Gui,12: Add,Text, cNAVY x5 y80,TELEPHONE#:
Gui,12: Add,Edit,LIMIT10 NUMBER cNAVY gValueCheck3 vtn w120 x137 y79
Gui,12: Add,Button,Default x25 y125 disabled gOpenit,CONTINUE
Gui,12: Add,Button,x146 y125 gCancelit1,CANCEL
waiting := true
Gui,12: Show,x%xpos% y%ypos%,REPAIR
Return
}
;------------------------------------
GetInfo4: ;t1
{
WinGetPos,x,y,,,%menutitle%
xpos := (x -50)
ypos := (y +40)
Gui,13: Destroy
Gui,13: Default
Gui,13: font, s12 bold, arial
Gui,13: Color, YELLOW
Gui,13: +AlwaysOnTop +SysMenu -MaximizeBox +Border -Resize
Gui,13: Font, s12 bold italic, arial cYELLOW
Gui,13: Add,Text, cNAVY,Use TAB or MOUSE to click on fields below`n`nT1s(1-4), Interfaces(0/1-0/4), TDMs(1-4), PPPs(1-4)`n
Gui,13: Font, s12 normal, arial
Gui,13: Add,Text, cNAVY x5 y80,T1:
Gui,13: Add,Edit,LIMIT1 NUMBER cNAVY gValueCheck4 vt1 w12 x41 y79
Gui,13: Add,Text, cNAVY x5 y105,INTERFACE:
Gui,13: Add,Edit,LIMIT3 cNAVY gValueCheck4 vinterface w36 x125 y104
Gui,13: Add,Text, cNAVY x5 y130,EXISTING PPP:
Gui,13: Add,Edit,LIMIT1 NUMBER cNAVY gValueCheck4 vppp w12 x161 y129
Gui,13: Add,Text, cNAVY x5 y155,TDM GROUP:
Gui,13: Add,Edit,LIMIT1 NUMBER cNAVY gValueCheck4 vtdm w12 x125 y154
Gui,13: Add,Text, cNAVY x5 y180,NEW PPP:
Gui,13: Add,Edit,LIMIT1 NUMBER cNAVY gValueCheck4 vnewppp w12 x101 y179
Gui,13:Add,Button,Default x25 y225 disabled gOpenit,CONTINUE
Gui,13:Add,Button,x146 y225 gCancelit1,CANCEL
waiting := true
Gui,13: Show,x%xpos% y%ypos%,REPAIR
Return
}
;------------------------------------
GetInfo5: ;mac
{
WinGetPos,x,y,,,%menutitle%
xpos := (x -50)
ypos := (y +40)
Gui,14: Destroy
Gui,14: Default
Gui,14: font, s12 bold, arial
Gui,14: Color, YELLOW
Gui,14: +AlwaysOnTop +SysMenu -MaximizeBox +Border -Resize
Gui,14: Font, s12 bold italic, arial cYELLOW
Gui,14: Add,Text, cNAVY,Use TAB or MOUSE to click on fields below`n`nColon(:) between on MAC`n
Gui,14: Font, s12 normal, arial
Gui,14: Add,Text, cNAVY x5 y80,MAC:
Gui,14: Add,Edit,LIMIT17 cNAVY gValueCheck5 vmac w150 x53 y79
Gui,14: Add,Button,Default x25 y125 disabled gOpenit1,CONTINUE
Gui,14: Add,Button,x146 y125 gCancelit1,CANCEL
waiting := true
Gui,14: Show,x%xpos% y%ypos%,REPAIR
Return
}
;------------------------------------
GetInfo6: ;mac or tn
{
WinGetPos,x,y,,,%menutitle%
xpos := (x -50)
ypos := (y +40)
Gui,15: Destroy
Gui,15: Default
Gui,15: font, s12 bold, arial
Gui,15: Color, YELLOW
Gui,15: +AlwaysOnTop +SysMenu -MaximizeBox +Border -Resize
Gui,15: Font, s12 bold italic, arial cYELLOW
Gui,15: Add,Text, cNAVY,Use TAB or MOUSE to click on fields below`n`nColon(:) between on MAC`n
Gui,15: Font, s12 normal, arial
Gui,15: Add,Text, cNAVY x5 y80,TELEPHONE#:
Gui,15: Add,Edit,LIMIT10 NUMBER cNAVY gValueCheck6 vtn w120 x137 y79
Gui,15: Add,Text, cNAVY x5 y105,MAC:
Gui,15: Add,Edit,LIMIT17 cNAVY gValueCheck6 vmac w150 x53 y104
Gui,15: Add,Button,Default x25 y150 disabled gOpenit,CONTINUE
Gui,15: Add,Button,x146 y150 gCancelit1,CANCEL
waiting := true
Gui,15: Show,x%xpos% y%ypos%,REPAIR
Return
}
;------------------------------------
GetInfo7: ;ip
{
WinGetPos,x,y,,,%menutitle%
xpos := (x -50)
ypos := (y +40)
Gui,16: Destroy
Gui,16: Default
Gui,16: font, s12 bold, arial
Gui,16: Color, YELLOW
Gui,16: +AlwaysOnTop +SysMenu -MaximizeBox +Border -Resize
Gui,16: Font, s12 bold italic, arial cYELLOW
Gui,16: Add,Text, cNAVY,Use TAB or MOUSE to click on fields below`n
Gui,16: Font, s12 normal, arial
Gui,16: Add,Text, cNAVY x5 y80,IP ADDRESS:
Gui,16: Add,Edit,LIMIT15 cNAVY gValueCheck7 vipaddr w150 x137 y79
Gui,16: Add,Button,Default x25 y125 disabled gOpenit,CONTINUE
Gui,16: Add,Button,x146 y125 gCancelit1,CANCEL
waiting := true
Gui,16: Show,x%xpos% y%ypos%,REPAIR
Return
}
;------------------------------------
GetInfo8: ;atmgrp
{
WinGetPos,x,y,,,%menutitle%
xpos := (x -50)
ypos := (y +40)
Gui,17: Destroy
Gui,17: Default
Gui,17: font, s12 bold, arial
Gui,17: Color, YELLOW
Gui,17: +AlwaysOnTop +SysMenu -MaximizeBox +Border -Resize
Gui,17: Font, s12 bold italic, arial cYELLOW
Gui,17: Add,Text, cNAVY,Use TAB or MOUSE to click on fields below`n`nShelf(1), Slots(1-22), Ports(1-24), ATM Groups(1-12)`n
Gui,17: Font, s12 normal, arial
Gui,17: Add,Text, cNAVY x5 y80,SHELF:
Gui,17: Add,Edit,LIMIT1 NUMBER cNAVY gValueCheck8 vshelf w12 x77 y79
Gui,17: Add,Text, cNAVY x5 y105,SLOT:
Gui,17: Add,Edit,LIMIT2 NUMBER cNAVY gValueCheck8 vslot w24 x65 y104
Gui,17: Add,Text, cNAVY x5 y130,PORT:
Gui,17: Add,Edit,LIMIT2 NUMBER cNAVY gValueCheck8 vport w24 x65 y129
Gui,17: Add,Text, cNAVY x5 y155,ATM GROUP:
Gui,17: Add,Edit,LIMIT2 cNAVY gValueCheck8 vatmgrp w24 x125 y154
Gui,17: Add,Button,Default x25 y200 disabled gOpenit,CONTINUE
Gui,17: Add,Button,x146 y200 gCancelit1,CANCEL
waiting := true
Gui,17: Show,x%xpos% y%ypos%,REPAIR
Return
}
;------------------------------------
GetInfo9: ;time
{
WinGetPos,x,y,,,%menutitle%
xpos := (x -50)
ypos := (y +40)
Gui,18: Destroy
Gui,18: Default
Gui,18: font, s12 bold, arial
Gui,18: Color, YELLOW
Gui,18: +AlwaysOnTop +SysMenu -MaximizeBox +Border -Resize
Gui,18: Font, s12 bold italic, arial cYELLOW
Gui,18: Add,Text, cNAVY,Use TAB or MOUSE to click on fields below`n`nDays(0-31), Hours(0-24), Mins(0-60)`n
Gui,18: Font, s12 normal, arial
Gui,18: Add,Text, cNAVY x5 y80,DAY:
Gui,18: Add,Edit,LIMIT2 NUMBER cNAVY gValueCheck9 vday w24 x53 y79
Gui,18: Add,Text, cNAVY x5 y105,HR:
Gui,18: Add,Edit,LIMIT2 NUMBER cNAVY gValueCheck9 vhr w24 x41 y104
Gui,18: Add,Text, cNAVY x5 y130,MIN:
Gui,18: Add,Edit,LIMIT2 NUMBER cNAVY gValueCheck9 vmin w24 x53 y129
Gui,18: Add,Button,Default x25 y175 disabled gOpenit,CONTINUE
Gui,18: Add,Button,x146 y175 gCancelit1,CANCEL
waiting := true
Gui,18: Show,x%xpos% y%ypos%,REPAIR
Return
}
;------------------------------------
GetInfo10: ;download & upload speeds
{
WinGetPos,x,y,,,%menutitle%
xpos := (x -50)
ypos := (y +40)
Gui,19: Destroy
Gui,19: Default
Gui,19: font, s12 bold, arial
Gui,19: Color, YELLOW
Gui,19: +AlwaysOnTop +SysMenu -MaximizeBox +Border -Resize
Gui,19: Font, s12 bold italic, arial cYELLOW
Gui,19: Add,Text, cNAVY,Use TAB or MOUSE to click on fields below`n
Gui,19: Font, s12 normal, arial
Gui,19: Add,Text, cNAVY x5 y80,DOWNLOAD SPEED:
Gui,19: Add,Edit,LIMIT5 NUMBER cNAVY gValueCheck10 vdown w84 x185 y79
Gui,19: Add,Text, cNAVY x5 y105,UPLOAD SPEED:
Gui,19: Add,Edit,LIMIT5 NUMBER cNAVY gValueCheck10 vup w84 x161 y104
Gui,19: Add,Button,Default x25 y150 disabled gOpenit,CONTINUE
Gui,19: Add,Button,x146 y150 gCancelit1,CANCEL
waiting := true
Gui,19: Show,x%xpos% y%ypos%,REPAIR
Return
}
;------------------------------------
GetInfo11: ;email
{
WinGetPos,x,y,,,%menutitle%
xpos := (x -50)
ypos := (y +40)
Gui,20: Destroy
Gui,20: Default
Gui,20: font, s12 bold, arial
Gui,20: Color, YELLOW
Gui,20: +AlwaysOnTop +SysMenu -MaximizeBox +Border -Resize
Gui,20: Font, s12 bold italic, arial cYELLOW
Gui,20: Add,Text, CNAVY,Use TAB or MOUSE to click on fields below`n
Gui,20: Font, s12 normal, arial
Gui,20: Add,Text, CNAVY x5 y80,EMAIL ADDRESS:
Gui,20: Add,Edit,LIMIT12 cNAVY gValueCheck11 vemail w150 x173 y79
Gui,20: Add,Text, CNAVY x5 y105,CPANEL:
Gui,20: Add,Edit,LIMIT12 cNAVY gValueCheck11 vcpanel w150 x89 y104
Gui,20: Add,Text, CNAVY x5 y130,DOMAIN:
Gui,20: Add,Edit,LIMIT12 cNAVY gValueCheck11 vdomain w150 x89 y129
Gui,20: Add,Button,Default x25 y175 disabled gOpenit,CONTINUE
Gui,20: Add,Button,x146 y175 gCancelit1,CANCEL
waiting := true
Gui,20: Show,x%xpos% y%ypos%,REPAIR
Return
}
;------------------------------------
GetInfo12: ;eshdsl
{
WinGetPos,x,y,,,%menutitle%
xpos := (x -50)
ypos := (y +40)
Gui,22: Destroy
Gui,22: Default
Gui,22: font, s12 bold, arial
Gui,22: Color, YELLOW
Gui,22: +AlwaysOnTop +SysMenu -MaximizeBox +Border -Resize
Gui,22: Font, s12 bold italic, arial cYELLOW
Gui,22: Add,Text, cNAVY,Use TAB or MOUSE to click on fields below`n`nShelf(1),Slots(1-22)`n
Gui,22: Font, s12 normal, arial
Gui,22: Add,Text, cNAVY x5 y80,SHELF:
Gui,22: Add,Edit,LIMIT1 NUMBER cNAVY gValueCheck12 vshelf w12 x77 y79
Gui,22: Add,Text, cNAVY x5 y105,SLOT:
Gui,22: Add,Edit,LIMIT2 NUMBER cNAVY gValueCheck12 vslot w24 x70 y104
Gui,22: Add,Button,Default x25 y150 disabled gOpenit,CONTINUE
Gui,22: Add,Button,x146 y150 gCancelit1,CANCEL
waiting := true
Gui,22: Show,x%xpos% y%ypos%,REPAIR
Return
}
;------------------------------------
GetInfo13: ;interface
{
WinGetPos,x,y,,,%menutitle%
xpos := (x -50)
ypos := (y +40)
Gui,28: Destroy
Gui,28: Default
Gui,28: font, s12 bold, arial
Gui,28: Color, YELLOW
Gui,28: +AlwaysOnTop +SysMenu -MaximizeBox +Border -Resize
Gui,28: Font, s12 bold italic, arial cYELLOW
Gui,28: Add,Text, cNAVY,Use TAB or MOUSE to click on fields below`n`nT1s(1-4),Interfaces(0/1-0/4)`n
Gui,28: Font, s12 normal, arial
Gui,28: Add,Text, cNAVY x5 y80,T1:
Gui,28: Add,Edit,LIMIT1 NUMBER cNAVY gValueCheck13 vt1 w13 x41 y79
Gui,28: Add,Text, cNAVY x5 y105,INTERFACE:
Gui,28: Add,Edit,LIMIT3 cNAVY gValueCheck13 vinterface w36 x125 y104
Gui,28:Add,Button,Default x25 y150 disabled gOpenit,CONTINUE
Gui,28:Add,Button,x146 y150 gCancelit1,CANCEL
waiting := true
Gui,28: Show,x%xpos% y%ypos%,REPAIR
Return
}
;------------------------------------
GetInfo14: ;port
{
WinGetPos,x,y,,,%menutitle%
xpos := (x -50)
ypos := (y +40)
Gui,10: Destroy
Gui,10: Default
Gui,10: font, s12 bold, arial
Gui,10: Color, YELLOW
Gui,10: +AlwaysOnTop +SysMenu -MaximizeBox +Border -Resize
Gui,10: Font, s12 bold italic, arial cYELLOW
Gui,10: Add,Text, cNAVY,Use TAB or MOUSE to click on fields below`n`nPorts(1-24)`n
Gui,10: Font, s12 bold normal, arial
Gui,10: Add,Text, cNAVY x5 y80,PORT: 0/
Gui,10: Add,Edit,LIMIT2 NUMBER cNAVY gValueCheck14 vport w24 x101 y79
Gui,10: Add,Button,Default x25 y125 disabled gOpenit,CONTINUE
Gui,10: Add,Button,x146 y125 gCancelit1,CANCEL
waiting := true
Gui,10: Show,x%xpos% y%ypos%,REPAIR
Return
}
;------------------------------------
GetInfo15: ;tn for dms10
{
WinGetPos,x,y,,,%menutitle%
xpos := (x -50)
ypos := (y +40)
Gui,36: Destroy
Gui,36: Default
Gui,36: font, s12 bold, arial
Gui,36: Color, YELLOW
Gui,36: +AlwaysOnTop +SysMenu -MaximizeBox +Border -Resize
Gui,36: Font, s12 bold italic, arial cYELLOW
Gui,36: Add,Text, cNAVY,Use TAB or MOUSE to click on fields below
Gui,36: Add,Text, cNAVY,No area code and no dash. (xxx xxxx)
Gui,36: Font, s12 normal, arial
Gui,36: Add,Text, cNAVY x5 y80,TELEPHONE#:
Gui,36: Add,Edit,LIMIT8 cNAVY gValueCheck15 vtn w96 x137 y79
Gui,36: Add,Button,Default x25 y125 disabled gOpenit,CONTINUE
Gui,36: Add,Button,x146 y125 gCancelit1,CANCEL
waiting := true
Gui,36: Show,x%xpos% y%ypos%,DMS10 TN
Return
}
;------------------------------------
GetInfo16: ;switch
{
WinGetPos,x,y,,,%menutitle%
xpos := (x -50)
ypos := (y +40)
Gui,37: Destroy
Gui,37: Default
Gui,37: font, s12 bold, arial
Gui,37: Color, YELLOW
Gui,37: +AlwaysOnTop +SysMenu -MaximizeBox +Border -Resize
Gui,37: Font, s12 normal, arial cYELLOW
Gui,37: Add,DropDownList, w275 vanswer23 gchoice23, %list23%
waiting := true
Gui,37: Show,x%xpos% y%ypos%,DMS SWITCH
Return
}
;------------------------------------
Messageit: ;message
{
WinGetPos,x,y,,,%menutitle%
xpos := (x -50)
ypos := (y +40)
Gui,23: Destroy
Gui,23: Default
Gui,23: font, s12 bold, arial
Gui,23: Color, YELLOW
Gui,23: +AlwaysOnTop +SysMenu -MaximizeBox +Border -Resize
Gui,23: Font, s12 bold normal, arial
Gui,23: Add,Text, cNAVY,Look for port number under subtended-host & find management IP address
Gui,23: Add,Button,Default x25 y125 gOpenit,CONTINUE
waiting := true
Gui,23: Show,x%xpos% y%ypos%,REPAIR
Return
}
;------------------------------------
Messageit1: ;message
{
WinGetPos,x,y,,,%menutitle%
xpos := (x -50)
ypos := (y +40)
Gui,24: Destroy
Gui,24: Default
Gui,24: font, s12 bold, arial
Gui,24: Color, YELLOW
Gui,24: +AlwaysOnTop +SysMenu -MaximizeBox +Border -Resize
Gui,24: Font, s12 bold normal, arial
Gui,24: Add,Text, cNAVY,COMPLETE!`n`nFound on %name%`n`n%found%`n`nContinue checking further?
Gui,24: Add,Button, x25 y125 gOpenit,YES
Gui,24: Add,Button, Default x86 y125 gCancelit1,NO
waiting := true
Gui,24: Show,x%xpos% y%ypos%,REPAIR
Return
}
;------------------------------------
Messageit2: ;message
{
WinGetPos,x,y,,,%menutitle%
xpos := (x -50)
ypos := (y +40)
Gui,25: Destroy
Gui,25: Default
Gui,25: Color, YELLOW
Gui,25: +AlwaysOnTop +SysMenu -MaximizeBox +Border -Resize
Gui,25: Font, s12 bold, arial
Gui,25: Add,Text, cNAVY,COMPLETE!`nNOT FOUND on ADTRANs`n
waiting := true
Gui,25: Show,x%xpos% y%ypos%,REPAIR
SetTimer,Cancelit,3500
Return
}
;------------------------------------
Messageit3: ;unbond t1 message
{
WinGetPos,x,y,,,%menutitle%
xpos := (x -50)
ypos := (y +40)
Gui,26: Destroy
Gui,26: Default
Gui,26: font, s12 bold, arial
Gui,26: Color,YELLOW
Gui,26: +AlwaysOnTop +SysMenu -MaximizeBox +Border -Resize
Gui,26: Font, s12 bold, arial
Gui,26: Add,Text,cNAVY, UNBOND T1 %t1% on %interface% on PPP %ppp% on TDM Group %tdm%`nwill be unbonded to PPP %newppp%?
Gui,26: Add,Button,Default x25 y125 gOpenit,YES
Gui,26: Add,Button,x86 y125 gCancelit1,NO
waiting := true
Gui,26: Show,x%xpos% y%ypos%,UNBOND T1
Return
}
;------------------------------------
Messageit4: ;message
{
WinGetPos,x,y,,,%menutitle%
xpos := (x -50)
ypos := (y +40)
Gui,27: Destroy
Gui,27: Default
Gui,27: font, s12 bold, arial
Gui,27: Color, YELLOW
Gui,27: +AlwaysOnTop +SysMenu -MaximizeBox +Border -Resize
Gui,27: Font, s12 bold, arial
Gui,27: Add,Text, cNAVY,*NOTE: Scripts cannot run on 6xx series IADs`n
Gui,27: Font, s12 normal, arial
Gui,27: Add,Text, cNAVY,Is this a 6xx series IAD?`n
Gui,27: Add,Button, x25 y125 gCancelit,YES
Gui,27: Add,Button, Default x86 y125 gOpenit1,NO
waiting := true
Gui,27: Show,x%xpos% y%ypos%,REPAIR
Return
}
;------------------------------------
Messageit5: ;rebond t1 message
{
WinGetPos,x,y,,,%menutitle%
xpos := (x -50)
ypos := (y +40)
Gui,29: Destroy
Gui,29: Default
Gui,29: font, s12 bold, arial
Gui,29: Color,YELLOW
Gui,29: +AlwaysOnTop +SysMenu -MaximizeBox +Border -Resize
Gui,29: Font, s12 bold, arial
Gui,29: Add,Text,cNAVY, REBOND T1 %t1% on %interface% on PPP %newppp% on TDM Group %tdm%`nwill be rebonded to PPP %ppp%?
Gui,29: Add,Button,Default x25 y125 gOpenit,YES
Gui,29: Add,Button,x86 y125 gCancelit1,NO
waiting := true
Gui,29: Show,x%xpos% y%ypos%,REBOND T1
Return
}
;------------------------------------
Messageit6: ;message
{
WinGetPos,x,y,,,%menutitle%
xpos := (x -50)
ypos := (y +40)
Gui,30: Destroy
Gui,30: Default
Gui,30: font, s12 bold, arial
Gui,30: Color, YELLOW
Gui,30: +AlwaysOnTop +SysMenu -MaximizeBox +Border -Resize
Gui,30: Font, s14 bold, arial
Gui,30: Add,Text, cNAVY,`nPerform task on another?        `n
Gui,30: Font, s12 normal, arial
Gui,30: Add,Button, x25 y80 gOpenit,YES
Gui,30: Add,Button, Default x86 y80 gCancelit1,NO
waiting := true
Gui,30: Show,x%xpos% y%ypos%,REPAIR
Return
}
;------------------------------------
Messageit7: ;message
{
WinGetPos,x,y,,,%menutitle%
xpos := (x -50)
ypos := (y +40)
Gui,21: Destroy
Gui,21: Default
Gui,21: font, s12 bold, arial
Gui,21: Color, YELLOW
Gui,21: +AlwaysOnTop +SysMenu -MaximizeBox +Border -Resize
Gui,21: Font, s14 bold, arial
Gui,21: Add,Text, cNAVY,`nCheck Unique?        `n
Gui,21: Font, s12 normal, arial
Gui,21: Add,Button, x25 y80 gOpenit,YES
Gui,21: Add,Button, Default x86 y80 gCancelit1,NO
waiting := true
Gui,21: Show,x%xpos% y%ypos%,REPAIR
Return
}
;------------------------------------
Messageit8: ;2820 message
{
WinGetPos,x,y,,,%menutitle%
xpos := (x -50)
ypos := (y +40)
Gui,31: Destroy
Gui,31: Default
Gui,31: font, s12 bold, arial
Gui,31: Color, YELLOW
Gui,31: -AlwaysOnTop +SysMenu -MaximizeBox +Border -Resize
Gui,31: Add,Text,cNAVY,You have chosen to open %a2820% %ipaddr%
Gui,31: font, s12 italic, arial
Gui,31: Add,Text,cNAVY,`n*Username: ADMIN, Password: OV^Rh33p`n
Gui,31: font, s12 bold normal, arial
Gui,31: Add,Button,Default x25 y125 gopenit,CONTINUE
Gui,31: Add,Button,x146 y125 gcancelit2,CANCEL
waiting := true
Gui,31: Show,x%xpos% y%ypos%,OPEN 2820
Return
}
;------------------------------------
Messageit9: ;Intelliflex message
{
WinGetPos,x,y,,,%menutitle%
xpos := (x -50)
ypos := (y +40)
Gui,32: Destroy
Gui,32: Default
Gui,32: font, s12 bold, arial
Gui,32: Color, YELLOW
Gui,32: -AlwaysOnTop +SysMenu -MaximizeBox +Border -Resize
Gui,32: Add,Text,cNAVY,You have chosen to open %infi% %ipaddr%
Gui,32: font, s12 italic, arial
Gui,32: font, s12 bold normal, arial
Gui,32: Add,Button,Default x25 y80 gopenit,CONTINUE
Gui,32: Add,Button,x146 y80 gcancelit3,CANCEL
waiting := true
Gui,32: Show,x%xpos% y%ypos%,OPEN INTELLIFLEX
Return
}
;------------------------------------
Messageit10: ;1124 message
{
WinGetPos,x,y,,,%menutitle%
xpos := (x -50)
ypos := (y +40)
Gui,33: Destroy
Gui,33: Default
Gui,33: font, s12 bold, arial
Gui,33: Color, YELLOW
Gui,33: -AlwaysOnTop +SysMenu -MaximizeBox +Border -Resize
Gui,33: Add,Text,cNAVY,You have chosen to open %1124% %ipaddr%
Gui,33: font, s12 italic, arial
Gui,33: font, s12 bold normal, arial
Gui,33: Add,Button,Default x25 y80 gopenit,CONTINUE
Gui,33: Add,Button,x146 y80 gcancelit4,CANCEL
waiting := true
Gui,33: Show,x%xpos% y%ypos%,OPEN 1124
Return
}
;------------------------------------
Messageit11: ;error message
{
WinGetPos,x,y,,,%menutitle%
xpos := (x -50)
ypos := (y +40)
Gui,34: Destroy
Gui,34: Default
Gui,34: font, s12 bold, arial
Gui,34: Color, YELLOW
Gui,34: -AlwaysOnTop +SysMenu -MaximizeBox +Border -Resize
Gui,34: Add,Text,cNAVY,*Cannot locate file. Confirm location and file exists.
Gui,34: Add,Text,cNAVY,Confirm program is installed. i.e., GoogleEarth...etc.
SetTimer,Cancelit,5500
Gui,34: Show,x%xpos% y%ypos%,REPAIR
Return
}
;------------------------------------
Messageit12: ;password message
{
WinGetPos,x,y,,,%menutitle%
xpos := (x -50)
ypos := (y +40)
Gui,35: Destroy
Gui,35: Default
Gui,35: font, s12 normal, arial
Gui,35: Color, YELLOW
Gui,35: -AlwaysOnTop +SysMenu -MaximizeBox +Border -Resize
Gui,35: font, s12 bold italic, arial
Gui,35: Add,Text,cNAVY,*You can reference Password list also
Gui,35: font, s12 normal, arial
Gui,35: Add,Text,cNAVY,Neustar: User Name: teamrepair@bayring.com Password: Repair1!
Gui,35: Add,Text,cNAVY,Techinline: User Name: techinline@bayring.com Password: subscription
Gui,35: Add,Text,cNAVY,GotoAssist: User Name: noc@oxfordnetworks.com Password: ONFiber1`%
Gui,35: Add,Text,cNAVY,INM: User Name: vpnuser Password: NPVu2r7878
Gui,35: Add,Text,cNAVY,AFC: User Name: vpnuser Password: NPVu2r7878
Gui,35: Add,Text,cNAVY,PingPlotter: User Name: vpnuser Password: NPVu2r7878
Gui,35: Add,Text,cNAVY,PCAP: User Name: SnifferBox Password: Sn5fferB2x
Gui,35: Add,Text,cNAVY,OSSview: User Name: bayring\repaircontrol Password: Kv04k!@n22 *as of 2/15/17
Gui,35: Add,Text,cNAVY,Alarm Account: OSS1087(359 Corporate) OSS1088(77 Aviation) OSS1089(11 Manchester) EL4170(359 Corp Elev) Password: nYV98101 *as of 2/15/17
Gui,35: Add,Text,cNAVY,Winpak: User Name: bayring\repaircontrol Password: Kv04k!@n22 *as of 2/15/17
Gui,35: Add,Text,cNAVY,ONDA: User Name: rtechfive Password: rT3ch1054u! *as of 3/02/17
Gui,35: Show,x%xpos% y%ypos%,REPAIR
Return
}
;------------------------------------
ValueCheck: ;username & password
{
GuiControlGet, un
GuiControlGet, pw

If ((un = "" or StrLen(un) = 0) OR (pw = "" or StrLen(pw) = 0))
	GuiControl,disabled, CONTINUE
else
	GuiControl,enabled, CONTINUE
Return
}
;------------------------------------
ValueCheck1: ;dsl & fxs
{
GuiControlGet, slot
GuiControlGet, port

If ((slot = "" or slot = 0 or slot > 22) OR (port = "" or port = 0 or port > 48))
	GuiControl,disabled, CONTINUE
else
	GuiControl,enabled, CONTINUE
Return
}
;------------------------------------
ValueCheck2: ;ont
{
GuiControlGet, ont
GuiControlGet, pon

If ((ont = "" or ont = 0 or ont > 32) OR (pon = "" or pon = 0 or pon > 4))
	GuiControl,disabled, CONTINUE
else
	GuiControl,enabled, CONTINUE
Return
}
;------------------------------------
ValueCheck3: ;tn
{
GuiControlGet, tn

If (tn = "" or StrLen(tn) < 10)
	GuiControl,disabled, CONTINUE
else
	GuiControl,enabled, CONTINUE
Return
}
;------------------------------------
ValueCheck4: ;t1
{
GuiControlGet, t1
GuiControlGet, interface
GuiControlGet, ppp
GuiControlGet, tdm
GuiControlGet, newppp

If ((t1 = "" or t1 = 0 or t1 > 9) OR ((interface = "" or interface = 0 or StrLen(interface) > 4)) OR ((ppp = "" or ppp = 0 or ppp > 9) OR (tdm = "" or tdm = 0 or tdm > 9) OR (newppp = "" or newppp = 0 or newppp > 9 or newppp = ppp)))
	GuiControl,disabled, CONTINUE
else
	GuiControl,enabled, CONTINUE
Return
}
;------------------------------------
ValueCheck5: ;mac
{
GuiControlGet, mac

If (mac = "" or StrLen(mac) != 17)
	GuiControl,disabled, CONTINUE
else
	GuiControl,enabled, CONTINUE
Return
}
;------------------------------------
ValueCheck6: ;mac or tn
{
GuiControlGet, mac
GuiControlGet, tn

If (mac = "" or StrLen(mac) != 17) OR (tn = "" or StrLen(tn) < 10)
	GuiControl,disabled, CONTINUE
else
	GuiControl,enabled, CONTINUE
Return
}
;------------------------------------
ValueCheck7: ;ip
{
GuiControlGet, ipaddr

If (MyFunc(ipaddr) = 0)
	GuiControl,disabled, CONTINUE
else
	{
		GuiControl,enabled, CONTINUE
		session := ipaddr
	}
Return
}
;------------------------------------
ValueCheck8: ;atmgrp
{
GuiControlGet, atmgrp
GuiControlGet, slot
GuiControlGet, port
GuiControlGet, shelf

If ((atmgrp = "") or (atmgrp >12) OR (slot = "" or slot = 0 or slot > 22) OR (shelf = "" or shelf = 0 or shelf > 1) OR (port = "" or port = 0 or port > 24))
	GuiControl,disabled, CONTINUE
else
	GuiControl,enabled, CONTINUE
Return
}
;------------------------------------
ValueCheck9: ;time day(1-31) hour(1-24) minutes(0-60)
{
GuiControlGet, day
GuiControlGet, hour
GuiControlGet, min

days := day * 1440
hour := hr * 60
total := days + hour + min	

If (((hr = "") or (hr > 24)) or ((min = "") or (min > 60)) or ((day = "") or (day > 31)))
	GuiControl,disabled, CONTINUE
else
	GuiControl,enabled, CONTINUE
Return
}
;------------------------------------
ValueCheck10: ;download & upload speeds
{
GuiControlGet, down
GuiControlGet, up
GuiControlGet, min

If (((down = "") or (down = 0)) OR ((up = "") or (up = 0)))
	GuiControl,disabled, CONTINUE
else
	GuiControl,enabled, CONTINUE
Return
}
;------------------------------------
ValueCheck11: ;email
{
GuiControlGet, email
GuiControlGet, cpanel
GuiControlGet, domain

If (((email = "") or (email !CONTAINS `@))OR ((cpanel = 0) or (cpanel = "")) OR ((domain = "")))
	GuiControl,disabled, CONTINUE
else
	GuiControl,enabled, CONTINUE
Return
}
;------------------------------------
ValueCheck12: ;eshdsl & dsl
{
GuiControlGet, slot
GuiControlGet, shelf

If ((slot = "" or slot = 0 or slot > 22) OR (shelf = "" or shelf = 0 or shelf > 1))
	GuiControl,disabled, CONTINUE
else
	GuiControl,enabled, CONTINUE
Return
}
;------------------------------------
ValueCheck13: ;interface
{
GuiControlGet, t1
GuiControlGet, interface

If ((t1 = "" or t1 = 0 or t1 > 9) OR (interface = "" or interface = 0 or StrLen(interface) > 4))
	GuiControl,disabled, CONTINUE
else
	GuiControl,enabled, CONTINUE
Return
}
;------------------------------------
ValueCheck14: ;fxs
{
GuiControlGet, port

If ((port = "" or port = 0 or port > 24))
	GuiControl,disabled, CONTINUE
else
	GuiControl,enabled, CONTINUE
Return
}
;------------------------------------
ValueCheck15: ;tn for dms10
{
GuiControlGet, tn

If (tn = "" or StrLen(tn) < 8)
	GuiControl,disabled, CONTINUE
else
	GuiControl,enabled, CONTINUE
Return
}
;------------------------------------
;------------------------------------
;------------------------------------
MyFunc(GWVar) ;from http://www.autohotkey.com/board/topic/19778-verify-an-ip-address/
{
If (GWVar == "")
	return 0
Else
{
	
	Loop, Parse, GWVar, . ;check for valid ip
	{
		If A_LoopField is digit
			If A_LoopField between 0 and 255
				e++
		c++
	}
	Return, e = 4 AND c = 4
}
return
}
;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------
CheckDSL:
{
IfNotExist, %USERPROFILE%\desktop\Logs\Backup
	FileCreateDir, %USERPROFILE%\desktop\Logs\Backup
IfExist, %USERPROFILE%\desktop\Logs\%ipaddr%.txt
	FileMove, %USERPROFILE%\desktop\Logs\%ipaddr%.txt, %USERPROFILE%\desktop\Logs\Backup\%ipaddr%.txt,1

;if north some cards are vdsl and not adsl and need to determine which ones
	
GoSub, GetInfo1
While(waiting)
	Sleep, 500
WinActivate, %Adtran% %ipaddr%
Sleep, 500
If (%repeat% = false)
{
	Send, term{SPACE}len{SPACE}0{ENTER}
	Send, show{SPACE}system{ENTER}
	Sleep, 3000
}
Loop, read, %USERPROFILE%\desktop\Logs\%ipaddr%.txt
		{
			IfInString, A_LoopReadLine, %shelf%/%slot%  Combo A2+... [No Alarms]
				nhorme = 0
			else
			IfInString, A_LoopReadLine, %shelf%/%slot%   VDSL48PCOMBO [No Alarms]
				nhorme = 1
		}
If (nhorme = 0)
{
	Send, show{SPACE}interface{SPACE}adsl{SPACE}%shelf%/%slot%/%port%{ENTER}
	Sleep, 500
	Send, show{SPACE}run{SPACE}interface{SPACE}adsl{SPACE}%shelf%/%slot%/%port%{ENTER}
	Sleep, 500
	Send, show{SPACE}interface{SPACE}adsl{SPACE}%shelf%/%slot%/%port%{SPACE}performance-statistics{SPACE}15{ENTER}
	Sleep, 500
	Send, show{SPACE}interface{SPACE}adsl{SPACE}%shelf%/%slot%/%port%{SPACE}performance-statistics{SPACE}24{ENTER}
	Sleep, 500
}
else
{
	Send, show{SPACE}interface{SPACE}vdsl{SPACE}%shelf%/%slot%/%port%{ENTER}
	Sleep, 500
	Send, show{SPACE}run{SPACE}interface{SPACE}vdsl{SPACE}%shelf%/%slot%/%port%{ENTER}
	Sleep, 500
	Send, show{SPACE}interface{SPACE}vdsl{SPACE}%shelf%/%slot%/%port%{SPACE}performance-statistics{SPACE}15{ENTER}
	Sleep, 500
	Send, show{SPACE}interface{SPACE}vdsl{SPACE}%shelf%/%slot%/%port%{SPACE}performance-statistics{SPACE}24{ENTER}
	Sleep, 500
}
WinActivate, %Adtran% %ipaddr%
GoSub, Messageit6
While(waiting)
	Sleep, 500
if ch = 1
	{
		repeat = true
		GoSub, CheckDSL
	}
Return
}
;------------------------------------
CheckDSL1: ;check dsl on 1124
{
IfNotExist, %USERPROFILE%\desktop\Logs\Backup
	FileCreateDir, %USERPROFILE%\desktop\Logs\Backup
IfExist, %USERPROFILE%\desktop\Logs\%ipaddr%.txt
	FileMove, %USERPROFILE%\desktop\Logs\%ipaddr%.txt, %USERPROFILE%\desktop\Logs\Backup\%ipaddr%.txt,1

GoSub, GetInfo1
While(waiting)
	Sleep, 500
WinActivate, %Adtran% %ipaddr%
Sleep, 500
Send, show{SPACE}interface{SPACE}adsl{SPACE}%shelf%/%slot%/%port%{ENTER}
Sleep, 500
;Send, show{SPACE}run{SPACE}|{SPACE}beg{SPACE}interface{SPACE}adsl{SPACE}%shelf%/%slot%/%port%{ENTER}
;Sleep, 2500
Send, show{SPACE}interface{SPACE}adsl{SPACE}%shelf%/%slot%/%port%{SPACE}performance-statistics{SPACE}15{ENTER}
Sleep, 500
Send, show{SPACE}interface{SPACE}adsl{SPACE}%shelf%/%slot%/%port%{SPACE}performance-statistics{SPACE}24{ENTER}
Sleep, 500
WinActivate, %Adtran% %ipaddr%
GoSub, Messageit6
While(waiting)
	Sleep, 500
if ch = 1
{
	repeat = true
	GoSub, CheckDSL1
}
Return
}
Bonded: ;check dsl bonded groups
{
GoSub, GetInfo2
While(waiting)
	Sleep, 500
WinActivate, %Adtran% %ipaddr%
Sleep, 500
Send, term{SPACE}len{SPACE}0{ENTER}
Sleep, 500
Send, show{SPACE}interface{SPACE}atm-group{SPACE}legacy-atm{ENTER}
Sleep, 500
WinActivate, %Adtran% %ipaddr%
GoSub, Messageit6
While(waiting)
	Sleep, 500
if ch = 1
	GoSub, Bonded
Return
}
;------------------------------------
DSLModeMenu:
{
GoSub, GetInfo1
While(waiting)
	Sleep, 500
WinActivate, %Adtran% %ipaddr%
Sleep, 500
Send, term{SPACE}len{SPACE}0{ENTER}
Sleep, 500
Send, show{SPACE}interface{SPACE}adsl{SPACE}%shelf%/%slot%/%port%{ENTER}
Sleep, 500
Send, show{SPACE}run{SPACE}interface{SPACE}adsl{SPACE}%shelf%/%slot%/%port%{ENTER}
Sleep, 500
WinGetPos,x,y,,,%menutitle%
xpos := (x -50)
ypos := (y +40)
Gui,7: Destroy
Gui,7: font, s12 normal, arial
Gui,7: +AlwaysOnTop +SysMenu -MinimizeBox +Border -Resize
Gui,7: Color, YELLOW
Gui,7: Add, DropDownList, r6 w170 vDSLModeChoice gDSLModeChosen, %list11%
Gui,7: show, x%xpos% y%ypos%,DSL
Return
}
;------------------------------------
DSLModeChosen:
{
Gui,7: Submit, NoHide
if DSLModeChoice = Service-Mode
	Return
Gui,7: Destroy
if DSLModeChoice = ADSL2+
{
	StringReplace, DSLModeChoice, DSLModeChoice, +,{+}, All
	mode := DSLModeChoice
	GoSub, ChangeMode
}
else
if DSLModeChoice = ADSL2+m
{
	StringReplace, DSLModeChoice, DSLModeChoice, +,{+}, All
	mode := DSLModeChoice
	GoSub, ChangeMode
}
else
if DSLModeChoice = ADSL2-multimode
{
	StringReplace, DSLModeChoice, DSLModeChoice, -,{-}, All
	mode := DSLModeChoice
	GoSub, ChangeMode
}
else
if DSLModeChoice = g-dmt
{
	StringReplace, DSLModeChoice, DSLModeChoice, -,{-}, All
	mode := DSLModeChoice
	GoSub, ChangeMode
}
else
if DSLModeChoice = readsl
{
	mode := DSLModeChoice
	GoSub, ChangeMode
}
Return
}
;------------------------------------
ChangeMode:
{
WinActivate, %Adtran% %ipaddr%
Sleep, 500
GoSub, LockMouse
Send, config{SPACE}t{ENTER}
Sleep, 500
Send, int{SPACE}adsl{SPACE}%shelf%/%slot%/%port%{ENTER}
Sleep, 500
Send, service-mode{SPACE}%mode%{ENTER}
Sleep, 500
Send, exit{ENTER}
Send, exit{ENTER}
Sleep, 500
Send, show{SPACE}interface{SPACE}adsl{SPACE}%shelf%/%slot%/%port%{ENTER}
Sleep, 500
Send, show{SPACE}run{SPACE}interface{SPACE}adsl{SPACE}%shelf%/%slot%/%port%{ENTER}
Sleep, 500
ClipCursor(FALSE,0,0,0,0)
WinActivate, %Adtran% %ipaddr%
GoSub, Messageit6
While(waiting)
	Sleep, 500
if ch = 1
	GoSub, DSLModeMenu
Return
}
;------------------------------------
CheckONT:
{
GoSub, GetInfo2
While(waiting)
	Sleep, 500
WinActivate, %Adtran% %ipaddr%
Sleep, 500
If pon = 0
{
If ont <= 32
	pon := 1
else
	If (ont > 32) and (ont <= 64)
		{
			pon := 2
			ont := (ont-32)
		}
	else
		If (ont > 64) and (ont <= 96)
			{
				pon := 3
				ont := (ont-64)
			}
		else
			if (ont > 96) and (ont <= 128)
				{
					pon := 4
					ont := (ont-96)
				}
			else
				GoTo CheckONT
}
Send, term{SPACE}len{SPACE}0{ENTER}
Send, show{SPACE}remote-devices{SPACE}ont{SPACE}%ont%@%shelf%/%slot%/%pon%{ENTER}
Sleep, 500
GoSub, Messageit6
While(waiting)
	Sleep, 500
if ch = 1
	GoSub, CheckONT
Return
}
;------------------------------------
ONTLevels:
{
GoSub, GetInfo2
While(waiting)
	Sleep, 500
WinActivate, %Adtran% %ipaddr%
Sleep, 500
Send, show{SPACE}table{SPACE}remote-devices{SPACE}@%shelf%/%slot%/%pon%{ENTER}
Sleep, 500
WinActivate, %Adtran% %ipaddr%
Return
}
;------------------------------------
OLTLevels:
{
GoSub, GetInfo2
While(waiting)
	Sleep, 500
WinActivate, %Adtran% %ipaddr%
Sleep, 500
Send, show{SPACE}table{SPACE}interface{SPACE}gpon{SPACE}@%shelf%/%slot%/%pon%{ENTER}
Sleep, 500
WinActivate, %Adtran% %ipaddr%
Return
}
;------------------------------------
ClearDSL:
{
GoSub, GetInfo1
While(waiting)
	Sleep, 500
WinActivate, %Adtran% %ipaddr%
Sleep, 500
Send, show{SPACE}interface{SPACE}adsl{SPACE}%shelf%/%slot%/%port%{SPACE}performance-statistics{SPACE}24{ENTER}
Sleep, 500
Send, clear{SPACE}performance-statistics{SPACE}adsl{SPACE}%shelf%/%slot%/%port%{ENTER}
Sleep, 500
Send, show{SPACE}interface{SPACE}adsl{SPACE}%shelf%/%slot%/%port%{SPACE}performance-statistics{SPACE}24{ENTER}
Sleep, 500
WinActivate, %Adtran% %ipaddr%
GoSub, Messageit6
While(waiting)
	Sleep, 500
if ch = 1
	GoSub, ClearDSL
Return
}
;------------------------------------
ClearONT:
{
GoSub, GetInfo2
While(waiting)
	Sleep, 500
WinActivate, %Adtran% %ipaddr%
Sleep, 500
Send, clear{SPACE}counters gpon %ont%@%shelf%/%slot%/%pon%.gpon{ENTER}
Sleep, 500
Send, show{SPACE}remote-devices{SPACE}ont{SPACE}%ont%@%shelf%/%slot%/%pon%{ENTER}
WinActivate, %Adtran% %ipaddr%
Return
}
;------------------------------------
ONTreboot:
{
GoSub, ChooseIAD
Sleep, 500
WinActivate, %session%
Sleep, 500
GoSub, GetInfo9
While(waiting)
	Sleep, 500
Send, reload{SPACE}in{SPACE}%total%{ENTER}
Sleep, 500
Send, y{ENTER}
Sleep, 1500
Send, y{ENTER}
Sleep, 500
WinActivate, %session%
Return
}
;------------------------------------
CheckMAC:
{
GoSub, GetInfo12
While(waiting)
	Sleep, 500
WinActivate, %Adtran% %ipaddr%
Sleep, 500
Send, term{SPACE}len{SPACE}0{ENTER}
Sleep, 500
Send, show{SPACE}MAC{SPACE}address-table{SPACE}%shelf%/%slot%{ENTER}
Sleep, 500
WinActivate, %Adtran% %ipaddr%
Return
}
;------------------------------------
ClearMAC:
{
GoSub, GetInfo12
While(waiting)
	Sleep, 500
WinActivate, %Adtran% %ipaddr%
Sleep, 500
Send, term{SPACE}len{SPACE}0{ENTER}
Sleep, 500
Send, show{SPACE}MAC{SPACE}address-table{SPACE}%shelf%/%slot%{ENTER}
Sleep, 500
GoSub, GetInfo5
Gui,14: Submit,NoHide
While(waiting)
Sleep, 500
Gui,14: Destroy
WinActivate, %Adtran% %ipaddr%
GoSub, LockMouse
Send, clear{SPACE}MAC{SPACE}address-table{SPACE}%shelf%/%slot%{SPACE}address{SPACE}%mac%{ENTER}
Sleep, 500
Send, show{SPACE}MAC{SPACE}address-table{SPACE}%shelf%/%slot%{ENTER}
ClipCursor(FALSE,0,0,0,0)
WinActivate, %Adtran% %ipaddr%
Return
}
;------------------------------------
CheckFXS:
{
GoSub, GetInfo1
While(waiting)
	Sleep, 500
WinActivate, %Adtran% %ipaddr%
Sleep, 500
Send, show{SPACE}interface{SPACE}fxs{SPACE}%shelf%/%slot%/%port%{ENTER}
Sleep, 500
Send, show{SPACE}run{SPACE}interface{SPACE}fxs{SPACE}%shelf%/%slot%/%port%{ENTER}
Sleep, 500
WinActivate, %Adtran% %ipaddr%
GoSub, Messageit6
While(waiting)
	Sleep, 500
if ch = 1
	GoSub, CheckFXS
Return
}
;------------------------------------
StatFXS:
{
IfNotExist, %USERPROFILE%\desktop\Logs\Backup
	FileCreateDir, %USERPROFILE%\desktop\Logs\Backup
IfExist, %USERPROFILE%\desktop\Logs\%ipaddr%.txt
	FileMove, %USERPROFILE%\desktop\Logs\%ipaddr%.txt, %USERPROFILE%\desktop\Logs\Backup\%ipaddr%.txt,1

GoSub, GetInfo15
While(waiting)
	Sleep, 500
WinActivate, %switch% %ipaddr%
Send, ****{ENTER}
Sleep, 500
Send, ovly{SPACE}dn{ENTER}
Sleep, 500
Send, que{SPACE}stn{SPACE}%tn%{ENTER}
Sleep, 500
Send, ****{ENTER}
Sleep, 3000
cntr = 0
Loop, read, %USERPROFILE%\desktop\Logs\%ipaddr%.txt
{
	IfInString, A_LoopReadLine, DN  %tn%
		continue
	IfInString, A_LoopReadLine, LOC
		{
			Loop, parse, A_LoopReadLine, %A_Space%
				cntr = cntr + 1
			equip = %A_LoopReadLine%
			line := SubStr(equip,6,24)
			break
		}
}
WinActivate, %switch% %ipaddr%
Send, ovly{SPACE}ped{ENTER}
Sleep, 2500
If (cntr > 5)
	Send, stat{SPACE}lpk{SPACE}%line%{ENTER}
else
	Send, stat{SPACE}idtl{SPACE}%line%{ENTER}
Sleep, 8000
Send, ****{ENTER}
Sleep, 500
Return
}
;------------------------------------
RestoreFXS:
{
IfWinExist, %switch% %ipaddr%
	WinActivate, %switch% %ipaddr%
else
GoSub, GetInfo16
While(waiting)
	Sleep, 500
GoSub, StatFXS
WinActivate, %switch% %ipaddr%
Sleep, 500
Send, ****{ENTER}
Send, ovly{SPACE}ped{ENTER}
Sleep, 2500
if (type = 10)
{
Send, busy{SPACE}lpk{SPACE}%line%{ENTER}
Sleep, 7500
Send, rts{SPACE}lpk{SPACE}%line%{ENTER}
Sleep, 7500
Send, stat{SPACE}lpk{SPACE}%line%{ENTER}
Sleep, 7500
Send, ****{ENTER}
Sleep, 500
}
else
{
Send, busy{SPACE}idtl{SPACE}%line%{ENTER}
Sleep, 500
Send, rts{SPACE}idtl{SPACE}%line%{ENTER}
Sleep, 500
Send, stat{SPACE}idtl{SPACE}%line%{ENTER}
Sleep, 500
}
Send, ****{ENTER}
Sleep, 500
Return
}
;------------------------------------
ResetFXS:
{
GoSub, GetInfo1
While(waiting)
	Sleep, 500
WinActivate, %Adtran% %ipaddr%
Sleep, 500
Send, show{SPACE}interface{SPACE}fxs{SPACE}%shelf%/%slot%/%port%{ENTER}
Sleep, 500
Send, config{SPACE}t{ENTER}
Sleep, 500
Send, interface{SPACE}fxs{SPACE}%shelf%/%slot%/%port%{ENTER}
Sleep, 500
Send, shut{ENTER}
Sleep, 500
Send, no{SPACE}shut{ENTER}
Sleep, 500
Send, exit{ENTER}
Sleep, 500
Send, exit{ENTER}
Sleep, 500
Send, show{SPACE}interface{SPACE}fxs{SPACE}%shelf%/%slot%/%port%{ENTER}
Sleep, 500
WinActivate, %Adtran% %ipaddr%
GoSub, Messageit6
While(waiting)
	Sleep, 500
if ch = 1
	GoSub, ResetFXS
Return
}
;------------------------------------
RunMLT:
{
GoSub, GetInfo1
While(waiting)
	Sleep, 500
WinActivate, %Adtran% %ipaddr%
Sleep, 500
Send, show{SPACE}interface{SPACE}fxs{SPACE}%shelf%/%slot%/%port%{ENTER}
Sleep, 500
;Send, config{SPACE}t{ENTER}
Send, app{ENTER}
Sleep, 500
Send, test{SPACE}interface{SPACE}fxs{SPACE}%shelf%/%slot%/%port%{SPACE}line{ENTER}
Sleep, 7500
Send, exit{ENTER}
Sleep, 500
Send, show{SPACE}interface{SPACE}fxs{SPACE}%shelf%/%slot%/%port%{ENTER}
Sleep, 500
WinActivate, %Adtran% %ipaddr%
GoSub, Messageit6
While(waiting)
	Sleep, 500
if ch = 1
	GoSub, RunMLT
Return
}
;------------------------------------
UnbondDSL:
{
GoSub, GetInfo8
While(waiting)
	Sleep, 500
WinActivate, %Adtran% %ipaddr%
Sleep, 500
GoSub, LockMouse
Send, term{SPACE}len{SPACE}0{ENTER}
Sleep, 500
If atmgrp = 0
	Send, show{SPACE}run{SPACE}interface{SPACE}atm-group{SPACE}legacy-atm{ENTER}
else
	Send, show{SPACE}interface{SPACE}atm-group{SPACE}%shelf%/%slot%/%atmgrp%{SPACE}legacy-atm{ENTER}
Sleep, 500
Send, show{SPACE}interface{SPACE}adsl{SPACE}%shelf%/%slot%/%port%{ENTER}
Sleep, 500
Send, config{SPACE}t{ENTER}
Sleep, 500
Send, interface{SPACE}adsl{SPACE}%shelf%/%slot%/%port%{ENTER}
Sleep, 500
Send, shut{ENTER}
Sleep, 500
Send, exit{ENTER}
Sleep, 500
Send, exit{ENTER}
Sleep, 500
Send, show{SPACE}interface{SPACE}adsl{SPACE}%shelf%/%slot%/%port%{ENTER}
ClipCursor(FALSE,0,0,0,0)
WinActivate, %Adtran% %ipaddr%
Return
}
;------------------------------------
RebondDSL:
{
GoSub, GetInfo8
While(waiting)
	Sleep, 500
WinActivate, %Adtran% %ipaddr%
Sleep, 500
GoSub, LockMouse
Send, term{SPACE}len{SPACE}0{ENTER}
Sleep, 500
If atmgrp = 0
	Send, show{SPACE}run{SPACE}interface{SPACE}atm-group{SPACE}legacy-atm{ENTER}
else
	Send, show{SPACE}interface{SPACE}atm-group{SPACE}%shelf%/%slot%/%atmgrp%{SPACE}legacy-atm{ENTER}
Sleep, 500
Send, show{SPACE}interface{SPACE}adsl{SPACE}%shelf%/%slot%/%port%{ENTER}
Sleep, 500
Send, config{SPACE}t{ENTER}
Sleep, 500
Send, interface{SPACE}adsl{SPACE}%shelf%/%slot%/%port%{ENTER}
Sleep, 500
Send, no{SPACE}shut{ENTER}
Sleep, 500
Send, exit{ENTER}
Sleep, 500
Send, exit{ENTER}
Sleep, 500
Send, show{SPACE}interface{SPACE}adsl{SPACE}%shelf%/%slot%/%port%{ENTER}
ClipCursor(FALSE,0,0,0,0)
WinActivate, %Adtran% %ipaddr%
Return
}
;------------------------------------
DSLspeed:
{
GoSub, GetInfo1
While(waiting)
	Sleep, 500
Gui,19: Submit,NoHide
Gui,19: Destroy
WinActivate, %Adtran% %ipaddr%
Sleep, 500
Send, show{SPACE}interface{SPACE}adsl{SPACE}%shelf%/%slot%/%port%{ENTER}
Sleep, 500
Send, show{SPACE}run{SPACE}interface{SPACE}adsl{SPACE}%shelf%/%slot%/%port%{ENTER}
Sleep, 500
GoSub, GetInfo10
While(waiting)
	Sleep, 500
WinActivate, %Adtran% %ipaddr%
GoSub, LockMouse
Send, config{SPACE}t{ENTER}
Sleep, 500
Send, int{SPACE}adsl{SPACE}%shelf%/%slot%/%port%{ENTER}
Sleep, 500
Send, latency-path{SPACE}payload-rate{SPACE}downstream{SPACE}0{SPACE}minimum{SPACE}32{SPACE}maximum{SPACE}%down%{ENTER}
Sleep, 500
Send, latency-path{SPACE}payload-rate{SPACE}upstream{SPACE}0{SPACE}minimum{SPACE}32{SPACE}maximum{SPACE}%up%{ENTER}
Sleep, 500
Send, exit{ENTER}
Send, exit{ENTER}
Sleep, 500
Send, show{SPACE}interface{SPACE}adsl{SPACE}%shelf%/%slot%/%port%{ENTER}
Sleep, 500
Send, show{SPACE}run{SPACE}interface{SPACE}adsl{SPACE}%shelf%/%slot%/%port%{ENTER}
Sleep, 500
ClipCursor(FALSE,0,0,0,0)
WinActivate, %Adtran% %ipaddr%
GoSub, Messageit6
While(waiting)
	Sleep, 500
if ch = 1
	GoSub, DSLspeed
Return
}
;------------------------------------
CheckESHDSL:
{
GoSub, GetInfo1
While(waiting)
	Sleep, 500
WinActivate, %Adtran% %ipaddr%
Sleep, 500
Send, term{SPACE}len{SPACE}0{ENTER}
Sleep, 500
Send, show{SPACE}interface{SPACE}shdsl{SPACE}%shelf%/%slot%/%port%{ENTER}
Sleep, 500
WinActivate, %Adtran% %ipaddr%
GoSub, Messageit6
While(waiting)
	Sleep, 500
if ch =1
	GoSub, CheckESHDSL
Return
}
;------------------------------------
ONTIP:
{
GoSub, GetInfo2
While(waiting)
	Sleep, 500
WinActivate, %Adtran% %ipaddr%
Sleep, 500
Send, term{SPACE}len{SPACE}0{ENTER}
Sleep, 500
Send,show{SPACE}run{SPACE}interface{SPACE}gpon{SPACE}%shelf%/%slot%/%pon%{ENTER}
Sleep, 500
GoSub, Messageit
Sleep, 500
WinActivate, %Adtran% %ipaddr%
Return
}
;------------------------------------
ESHDSLIP:
{
GoSub, GetInfo12
While(waiting)
	Sleep, 500
WinActivate, %Adtran% %ipaddr%
Sleep, 500
Send, term{SPACE}len{SPACE}0{ENTER}
Sleep, 500
Send,show{SPACE}run{SPACE}interface{SPACE}efm-group{SPACE}%shelf%/%slot%{ENTER}
Sleep, 500
WinActivate, %Adtran% %ipaddr%
Return
}
;------------------------------------
ESHDSLPorts:
{
GoSub, GetInfo12
While(waiting)
	Sleep, 500
WinActivate, %Adtran% %ipaddr%
Sleep, 500
Send, term{SPACE}len{SPACE}0{ENTER}
Sleep, 500
Send, show{SPACE}run{SPACE}interface{SPACE}shdsl{SPACE}%shelf%/%slot%{ENTER}
Sleep, 500
WinActivate, %Adtran% %ipaddr%
Return
}
;------------------------------------
ChooseTech:
{
WinGetPos,x,y,,,%menutitle%
xpos := (x -50)
ypos := (y +40)
Gui,4: Destroy
Gui,4: font, s12, arial
Gui,4: +AlwaysOnTop +SysMenu -MinimizeBox +Border -Resize
Gui,4: Color, YELLOW
Gui,4: Add, DropDownList, r10 w170 vTechChoice gTechChosen, %list7%
Gui,4: Add, DropDownList, r3 w170 vTechChoice1 gTechChosen1, %list8%
Gui,4: show, x%xpos% y%ypos%,REPAIR
Return
}
;------------------------------------
TechChosen:
{
Gui,4: submit, nohide
if TechChoice = Technicians
	Return
;else
;	GuiControl,, TechChoice, |%list7%
if TechChoice = Frank Logler
	{
		mac = 10:1f:74:ee:21:ee
		GoSub, FindMAC
	}
else
if TechChoice = Bob McKenna
	{
		mac = 2C:41:38:13:73:65
		GoSub, FindMAC
	}
else
if TechChoice = Nick Dyce
	{
		mac = 10:1F:74:E3:3C:75
		GoSub, FindMAC
	}
else
if TechChoice = Darwin Hughes
	{
		mac = D4:C9:EF:53:53:7D
		GoSub, FindMAC
	}
else
if TechChoice = David Ayers
	{
		mac = 28:f1:0e:0f:de:ee
		GoSub, FindMAC
	}
else
	GoTo ChooseTech
Return
}
;----------------------------------
TechChosen1:
{
Gui,4: submit, nohide
Gui,4: Destroy

if TechChoice1 = Other
	Return
;else
;	GuiControl,, TechChoice1, |%list8%
if TechChoice1 = Enter MAC
	{
		GoSub, GetInfo5
		While(waiting)
		Sleep, 500
		GoSub, FindMAC
	}
else
if TechChoice1 = Enter IP Address
	{
		GoSub, GetInfo7
		While(waiting)
		Sleep, 500
		GoSub, FindIP
	}
else
	GoTo ChooseTech
Return
}
;----------------------------------
FindMAC:
{
WinGetPos,x,y,,,%menutitle%
xpos := (x -50)
ypos := (y +40)
Gui,4: Destroy
Gui,14: Submit, NoHide
Gui,14: Destroy
found1 =
Loop, 41 ;% arr.MaxIndex() ;Bayring 5ks 1-40
{
	;adtran := arr1[A_Index]
	name := arr1[A_Index]
	ipaddr := arr[A_Index]
	SplashTextOn,200,85,REPAIR,Checking %name%`n   %ipaddr%`n`nHit ESC to QUIT
	
	IfNotExist, %USERPROFILE%\desktop\Logs\Backup
		FileCreateDir, %USERPROFILE%\desktop\Logs\Backup
	IfExist, %USERPROFILE%\desktop\Logs\%ipaddr%.txt 
		FileMove, %USERPROFILE%\desktop\Logs\%ipaddr%.txt, %USERPROFILE%\desktop\Logs\Backup\%ipaddr%.txt,1
		
	WinMove, REPAIR,,242,177
	Sleep, 1500
	SplashTextOff
	Run "C:\Program Files (x86)\PuTTY\putty.exe" -telnet "%ipaddr%"
	WinActivate, %ipaddr% - PuTTY
	Sleep 500
	WinMove,%ipaddr% - PuTTY,,242,177,%xpos%,%ypos% ;242,177
	WinSetTitle,%ipaddr% - PuTTY,, %name% %ipaddr%
	GoSub, LockMouse
	Sleep, 500
	Send, %macusr%{ENTER}
	Sleep, 500
	Send, %macpwd%{ENTER}
	Sleep, 500
	Send, show{SPACE}MAC{SPACE}address-table{SPACE}|{SPACE}inc{SPACE}%mac%{ENTER} 
	Sleep, 500
	Send, exit{ENTER}
	ClipCursor(FALSE,0,0,0,0)
	Sleep, 3000
	Loop, read, %USERPROFILE%\desktop\Logs\%ipaddr%.txt
	{
		IfInString, A_LoopReadLine, %mac%
			IfNotInString, A_LoopReadLine,inc
				{
					found = %A_LoopReadLine%
					foundit := 1
					Break
				}
	}
	Sleep 500
	If foundit = 1
		{
			found = %name% %ipaddr%
			GoSub, Messageit1
			If ch = 1 
				{
					foundit = 0
					Continue
				}
			else
				Break
		}
	else
		{
		foundit = 0
		index := index++
		Continue
		}
} ;end loop	
If foundit = 0
	GoSub, Messageit2
Sleep, 500
Return
}
;----------------------------------
FindIP:
{
WinGetPos,x,y,,,%menutitle%
xpos := (x -50)
ypos := (y +40)
Gui,4: Destroy
Gui,16: Submit, NoHide
Gui,16: Destroy
Loop, 40 ;% arr.MaxIndex() ;Bayring 5ks 1-40
{
	IfNotExist, %USERPROFILE%\desktop\Logs\Backup
		FileCreateDir, %USERPROFILE%\desktop\Logs\Backup
	IfExist, %USERPROFILE%\desktop\Logs\%adtran% %ipaddr%.txt 
		FileMove, %USERPROFILE%\desktop\Logs\%ipaddr%.txt, %USERPROFILE%\desktop\Logs\Backup\%ipaddr%.txt,1
		
	;adtran := arr1[A_Index]
	name := arr1[A_Index]
	ipaddr := arr[A_Index]
	SplashTextOn,200,80,REPAIR,Checking %name%`n   %ipaddr%`n`nESC to QUIT
	WinMove, REPAIR,,242,177
	Sleep, 1500
	SplashTextOff
	Run "C:\Program Files (x86)\PuTTY\putty.exe" -telnet "%ipaddr%"
	WinActivate, %ipaddr% - PuTTY
	Sleep, 500
	WinMove,%ipaddr% - PuTTY,,242,177,%xpos%,%ypos% ;600,100
	WinSetTitle,%ipaddr% - PuTTY,, %name% %ipaddr%
	GoSub, LockMouse
	Sleep, 1500
	Send, %macusr%{ENTER}
	Sleep, 1500
	Send, %macpwd%{ENTER}
	Sleep, 1500
	Send, show{SPACE}MAC{SPACE}address-table{SPACE}|{SPACE}inc{SPACE}%ipaddr%{ENTER} 
	Sleep, 500
	Send, exit{ENTER}
	ClipCursor(FALSE,0,0,0,0)
	Sleep, 3000
	Loop, read, %USERPROFILE%\desktop\Logs\%ipaddr%.txt
	{
		IfInString, A_LoopReadLine, %ipaddr%
			IfNotInString, A_LoopReadLine,inc
				{
					found = %A_LoopReadLine%
					foundit := 1
					Break
				}
	}
	Sleep 500
	If foundit = 1
		{
			found = %adtran% %ipaddr%
			GoSub, Messageit1
			If ch = 1 
				{
					foundit = 0
					Continue
				}
			else
				Break
		}
	else
		{
		foundit = 0
		index := index++
		Continue
		}
} ;end loop	
If foundit = 0
	GoSub, Messageit2
Sleep, 500
Return
}
;----------------------------------
ChooseIAD:
{
GoSub, GetInfo7
While(waiting)
	Sleep, 500
if Ch = 1
	GoSub, GetIAD
else
	GoSub, RepairMenu
Return
}
;------------------------------------
GetIAD:
{
WinGet,state,MinMax,%session% - PuTTY
if state = -1 ;Window is minimized
	{
		WinActivate, %session% - PuTTY
		WinSetTitle, %session% - PuTTY,,%session%
		Sleep, 500
	}
else ;Window is not minimized but on screen
	{
		WinActivate, %session% - PuTTY
		WinSetTitle, %session% - PuTTY,,%session%
		WinActivate, %session%
		Sleep, 500
	}

IfWinNotExist %session%
	{
		IfNotExist, %USERPROFILE%\desktop\Logs\Backup
			FileCreateDir, %USERPROFILE%\desktop\Logs\Backup
		IfExist, %USERPROFILE%\desktop\Logs\%session%.txt 
			FileMove, %USERPROFILE%\desktop\Logs\%session%.txt, %USERPROFILE%\desktop\Logs\Backup\%session%.txt,1

		Run "C:\Program Files (x86)\PuTTY\putty.exe" -telnet %session%
		Sleep, 500
		WinActivate, "%session% - PuTTY"
		Sleep, 500
		WinSetTitle, %ipaddr% - PuTTY,,%session%
		Sleep, 500
		WinActivate, %session%
		Sleep, 500
		WinMove,%session%,,242,177
		Sleep, 500
		WinActivate, %session%
		Sleep, 500
		if ((choice = 22) or (choice = 24)) ;ONT login
		{
			Send, %oldontun%{ENTER}
			Sleep, 800
			Send, %oldontpw%{ENTER}
			Sleep, 800
			Send, enable{ENTER}
			Sleep, 800
			Send, %oldontenpw%{ENTER} ;adtran
			Sleep, 3500
			Loop, read, %USERPROFILE%\desktop\Logs\%session%.txt
			{
				IfInString, A_LoopReadLine,`% Incorrect password.
					{
						Send, enable{ENTER}
						Sleep, 800
						Send, %oldontenpw1%{ENTER} ;bayring1
						Sleep, 800
						Break
					}
			}
			Send, term{SPACE}len{SPACE}0{ENTER}
			Sleep, 500
			Send, {ENTER}{ENTER}
			Return
		}
		else
		{
			if (choice = 25) ;ESHDSL login
			{
				Send, %oldeshdslun%{ENTER} ;ADMIN or Oxfordadmin
				Sleep, 800
				SendRaw, %oldeshdslpw% ;OV^Rh33p
				Send, {ENTER}
				Sleep, 800
				Send, enable{ENTER}
				Sleep, 3000
				Loop, read, %USERPROFILE%\desktop\Logs\%session%.txt
				{
					IfInString, A_LoopReadLine,`% Incorrect password.
					{		
						Send, enable{ENTER}
						Sleep, 800
						Send, %neweshdslpw%{ENTER} ;2L84me@
						Sleep, 800
						Break
					}
				}
				Send, term{SPACE}len{SPACE}0{ENTER}
				Sleep, 500
				Send, {ENTER}{ENTER}
			} ;end ESHDSL
			else ;IAD
			{
				Send, %oldiadun%{ENTER} ;admin
				Sleep, 500
				Send, %oldiadpw%{ENTER} ;bayring1
				Sleep, 3000
				Loop, read, %USERPROFILE%\desktop\Logs\%session%.txt
				{
					IfInString, A_LoopReadLine,`% Login Failure.
					{
						Send, %oldiadun%{ENTER}
						Sleep, 500
						SendRaw, %newiadpw% ;calix100%
						Send, {ENTER}
						Sleep, 500
						Send, enable{ENTER}
						Sleep, 800
						SendRaw, %newiadenpw% ;mS8urDog4#
						Send, {ENTER}
						Sleep, 800
						old = no
						Break
					}
					else
						old = yes
				}
				if old = yes
				{
					GoSub, Messageit4
					While(waiting)
						Sleep, 500
					Send, enable{ENTER}
					Sleep, 800
					Send, %oldiadenpw%{ENTER} ;bayring1
					Sleep, 500
				}
			} ;end IAD
		}
	}
Return
}
;------------------------------------
UnbondT1:
{
GoSub, ChooseIAD
Sleep, 500
Send, term{SPACE}len{SPACE}0{ENTER}
SLeep, 500
Send, show{SPACE}run{ENTER}
Sleep, 500
GoSub, GetInfo4
While(waiting)
	Sleep, 500
GoSub, Messageit3
While(waiting)
	Sleep, 500
WinActivate, %session%
Sleep, 500
GoSub, LockMouse
Send, config{SPACE}t{ENTER}
Sleep, 1500
Send, int{SPACE}t1{SPACE}%interface%{ENTER}
Sleep, 1500
Send, shut{ENTER}
Sleep, 1500
Send, exit{ENTER}
Sleep, 1500
Send, int{SPACE}ppp{SPACE}%ppp%{ENTER}
Sleep, 1500
Send, no{SPACE}cross-connect{SPACE}%t1%{SPACE}t1{SPACE}%interface%{SPACE}%tdm%{SPACE}ppp{SPACE}%ppp%{ENTER}
Sleep, 1500
Send, exit{ENTER}
Sleep, 1500
Send, int{SPACE}ppp{SPACE}%newppp%{ENTER}
Sleep, 1500
Send, ip{SPACE}address{SPACE}10.255.255.1{SPACE}255.255.255.252{ENTER}
Sleep, 1500
Send, cross-connect{SPACE}%t1%{SPACE}t1{SPACE}%interface%{SPACE}%tdm%{SPACE}ppp{SPACE}%newppp%{ENTER}
Sleep, 1500
Send, no{SPACE}shut{ENTER}
Sleep, 1500
Send, exit{ENTER}
Sleep, 1500
Send, int{SPACE}t1{SPACE}%interface%{ENTER}
Sleep, 1500
Send, no{SPACE}shut{ENTER}
Sleep, 1500
Send, exit{ENTER}
Sleep, 1500
Send, exit{ENTER}
Sleep, 1500
Send, write{ENTER}
Sleep, 1500
Send, show{SPACE}run{ENTER}
Sleep, 1500
ClipCursor(FALSE,0,0,0,0)
WinActivate, %session%
Return
}
;------------------------------------
RebondT1:
{
Send, term{SPACE}len{SPACE}0{ENTER}
Sleep, 500
Send, show{SPACE}run{ENTER}
Sleep, 500
GoSub, ChooseIAD
Sleep, 500
GoSub, GetInfo4
While(waiting)
	Sleep, 500
GoSub, Messageit5
While(waiting)
	Sleep, 500
WinActivate, %session%
Sleep, 500
GoSub, LockMouse
Send, config{SPACE}t{ENTER}
Sleep, 1500
Send, int{SPACE}t1{SPACE}%interface%{ENTER}
Sleep, 1500
Send, shut{ENTER}
Sleep, 1500
Send, no{SPACE}cross-connect{SPACE}%t1%{SPACE}t1{SPACE}%interface%{SPACE}%tdm%{SPACE}ppp{SPACE}%ppp%{ENTER}
Sleep, 1500
Send, exit{ENTER}
Sleep, 1500
Send, no{SPACE}int{SPACE}ppp{SPACE}%ppp%{ENTER}
Sleep, 1500
Send, int{SPACE}ppp{SPACE}%oldppp%{ENTER}
Sleep, 1500
Send, cross-connect{SPACE}%t1%{SPACE}t1{SPACE}%interface%{SPACE}%tdm%{SPACE}ppp{SPACE}%oldppp%{ENTER}
Sleep, 1500
Send, exit{ENTER}
Sleep, 1500
Send, int{SPACE}t1{SPACE}%interface%{ENTER}
Sleep, 1500
Send, no{SPACE}shut{ENTER}
Sleep, 1500
Send, exit{ENTER}
Sleep, 1500
Send, exit{ENTER}
Sleep, 1500
Send, write{ENTER}
Sleep, 1500
Send, show{SPACE}run{ENTER}
Sleep, 1500
ClipCursor(FALSE,0,0,0,0)
WinActivate, %session%
Return
}
;------------------------------------
IADstats:
{
GoSub, ChooseIAD
Sleep, 500
GoSub, GetInfo13
While(waiting)
	Sleep, 500
WinActivate, %session%
Sleep, 500
Send, show{SPACE}interface{SPACE}t1{SPACE}%interface%{SPACE}performance{SPACE}total-24-hour{ENTER}
Sleep, 500
WinActivate, %session%
Return
}
;------------------------------------
LoginManagement:
{
GoSub, ChooseIAD
WinActivate, %session%
Return
}
;------------------------------------
CheckDSP:
{
GoSub, ChooseIAD
Sleep, 500
WinActivate, %session%
Sleep, 500
Send, show{SPACE}ver{ENTER}
Sleep, 500
WinActivate, %session%
Return
}
;------------------------------------
IADFXS:
{
GoSub, ChooseIAD
Sleep, 500
WinActivate, %session%
Sleep, 500
WinActivate, %session%
Sleep, 500
Send, show{SPACE}voice{SPACE}user{ENTER}
Sleep, 500
GoSub, GetInfo14
While(waiting)
	Sleep,500
WinActivate, %session%
Send, show{SPACE}int{SPACE}fxs{SPACE}0/%port%{ENTER}
Sleep, 500
Send, show{SPACE}run{SPACE}interface{SPACE}fxs{SPACE}0/%port%{ENTER}
Sleep, 500
LV_GetText(iad, A_EventInfo)
WinActivate, %session%
GoSub, LockMouse
Send, config{SPACE}t{ENTER}
Sleep, 500
Send, int{SPACE}fxs{SPACE}0/%port%{ENTER}
Sleep, 500
Send, shut{ENTER}
Sleep, 500
Send, no{SPACE}shut{ENTER}
Sleep, 500
Send, exit{ENTER}
Sleep, 500
Send, exit{ENTER}
Sleep, 500
Send, write{ENTER}
Sleep, 1500
Send, show{SPACE}int{SPACE}fxs{SPACE}0/%port%{ENTER}
ClipCursor(FALSE,0,0,0,0)
WinActivate, %session%
Return
}
;------------------------------------
Addt38:
{
GoSub, ChooseIAD
Sleep, 500
WinActivate, %session%
Sleep, 500
Send, show{SPACE}voice{SPACE}user{ENTER}
Sleep, 500
Send, show{SPACE}run{SPACE}voice{SPACE}user{ENTER}
GoSub, GetInfo3
While(waiting)
	Sleep, 500
Send, config{SPACE}t{ENTER}
Sleep, 500
Send, voice{SPACE}user{SPACE}%tn%{ENTER}
Sleep, 500
Send, t38{ENTER}
Sleep, 500
Send, t38{SPACE}max-rate{SPACE}9600{ENTER}
Sleep, 500
Send, exit{ENTER}
Sleep, 500
Send, exit{ENTER}
Sleep, 500
Send, write{ENTER}
Sleep, 500
Send, show{SPACE}run{ENTER}
WinActivate, %session%
Return
}
;------------------------------------
RebootIAD:
{
GoSub, ChooseIAD
Sleep, 500
GoSub, GetInfo9
While(waiting)
	Sleep, 500
Sleep, 500
WinActivate, %session%
Sleep, 500
Send, reload{SPACE}in{SPACE}%total%{ENTER}
Sleep, 500
Send, y{ENTER}
Sleep, 1500
Send, y{ENTER}
Sleep, 500
WinActivate, "%session% - PuTTY"
Return
}
;------------------------------------
CancelReboot:
{
GoSub, ChooseIAD
Sleep, 500
WinActivate, "%session% - PuTTY"
Sleep, 500
WinActivate, %session%
Send, reload{SPACE}cancel{ENTER}
Sleep, 500
WinActivate, "%session% - PuTTY"
Return
}
;------------------------------------
RunDebug:
{
GoSub, ChooseIAD
Sleep, 500
WinActivate, "%session% - PuTTY"
Sleep, 500
WinActivate, %session%
Sleep, 500
Send, debug{SPACE}voice{SPACE}verbose{ENTER}
Sleep, 500
WinActivate, "%session% - PuTTY"
Return
}
;------------------------------------
StopDebug:
{
GoSub, ChooseIAD
Sleep, 500
WinActivate, "%session% - PuTTY"
Sleep, 500
WinActivate, %session%
Send, no{SPACE}debug{SPACE}voice{SPACE}verbose{ENTER}
Sleep, 500
WinActivate, "%session% - PuTTY"
Return
}
;------------------------------------
CheckSBC:
{
nbr := 0
If (healthchecked = 0)
	GoSub, CheckHealth
;GoSub, OpenSBC
GoSub, GetInfo3
While(waiting)
	Sleep, 500
GoSub, GetResults
GoSub, Messageit6
While(waiting)
	Sleep, 500
if ch = 1
	If (healthchecked = 1)
		{
			GoSub, GetInfo3
			While(waiting)
				Sleep, 500
			GoSub, GetResults
		}
	else
		GoSub, CheckSBC
Return
}	
;------------------------------------
OpenSBC:
{	
WinGet,state,MinMax,%ipaddr% - PuTTY
if state = -1 ;Window is minimized
	{
		WinActivate, %ipaddr% - PuTTY
		WinSetTitle, %ipaddr% - PuTTY,, %ActiveSBC% %ipaddr%
		Sleep, 500
		WinActivate, %ActiveSBC% %ipaddr%
		Sleep, 500
	}
else ;Window is not minimized but on screen
	{
		WinActivate, %ipaddr% - PuTTY
		WinSetTitle, %ipaddr% - PuTTY,, %ActiveSBC% %ipaddr%
		WinActivate, %ActiveSBC% %ipaddr%
		Sleep, 500
	}
IfWinNotExist %ActiveSBC% %ipaddr%
	{
		Run "C:\Program Files (x86)\PuTTY\putty.exe" -load "ActiveSBC"
		WinActivate, %ipaddr% - PuTTY
		Sleep, 500
		WinSetTitle, %ipaddr% - PuTTY,, %ActiveSBC% %ipaddr%
		WinActivate, %ActiveSBC% %ipaddr%
		Sleep, 500
		WinMove,%ActiveSBC% %ipaddr%,,242,177
		Sleep, 500
		WinActivate, %ActiveSBC% %ipaddr%
	}
Return
}	
;------------------------------------

GetResults:
{
WinActivate,%ActiveSBC% %ipaddr%
Send, show{SPACE}registration{SPACE}sipd{SPACE}by-user{SPACE}%tn%{SPACE}d{ENTER}
sleep 500
Return
}
;------------------------------------
CheckHealth:
{
IfNotExist, %USERPROFILE%\desktop\Logs\Backup
	FileCreateDir, %USERPROFILE%\desktop\Logs\Backup
IfExist, %USERPROFILE%\desktop\Logs\192.168.76.29.txt
	FileMove, %USERPROFILE%\desktop\Logs\192.168.76.29.txt, %USERPROFILE%\desktop\Logs\Backup\192.168.76.29.txt,1
	
WinGet,state,MinMax, 192.168.76.29 - PuTTY
if state = -1 ;window minimized
	{
		WinRestore,192.168.76.29 - PuTTY
		WinSetTitle,192.168.76.29 - PuTTY,,SBC2 192.168.76.29
		Sleep, 500
	}
else
	{
		WinActivate,SBC2 192.168.76.29
		Sleep, 500
	}
IfWinNotExist SBC2 192.168.76.29
{
	Run, "C:\Program Files (x86)\PuTTY\putty.exe" -load "SBC2"
	Sleep 800
	WinActivate,192.168.76.29 - PuTTY
	WinSetTitle,192.168.76.29 - PuTTY,,SBC2 192.168.76.29
	WinMove,SBC2 192.168.76.29,,242,177
	SendRaw, %sbcpw%
	Send, {ENTER}
	Sleep 800
}
Send, show{SPACE}health{ENTER}
Sleep 3000
Loop, Read, %USERPROFILE%\desktop\Logs\192.168.76.29.txt
	{
		IfInString, A_LoopReadLine,	State				Standby
		{
			Send, exit{ENTER}
			Run, "C:\Program Files (x86)\PuTTY\putty.exe" -load "SBC1"
			Sleep 800
			WinActivate,192.168.76.28 - PuTTY
			WinSetTitle,192.168.76.28 - PuTTY,,SBC1 192.168.76.28
			WinMove,SBC1 192.168.76.28,,242,177
			SendRaw, %sbcpw%
			Send, {ENTER}
			Sleep 800
			ActiveSBC = SBC1
			ipaddr = 192.168.76.28
			Break
		}
	}
healthchecked := 1
Return
}
;------------------------------------
CheckAutoprov:
{
IfNotExist, %USERPROFILE%\desktop\Logs\Backup
	FileCreateDir, %USERPROFILE%\desktop\Logs\Backup
IfExist, %USERPROFILE%\desktop\Logs\%Autoprov%.txt
	FileMove, %USERPROFILE%\desktop\Logs\%Autoprov%.txt, %USERPROFILE%\desktop\Logs\Backup\%AutoProv%.txt,1
	
GoSub, OpenAutoprov
GoSub, GetInfo3
While(waiting)
	Sleep, 500
GoSub, CheckLog
Sleep, 500
GoSub, CheckUnique
Sleep, 500
GoSub, Messageit6
While(waiting)
	Sleep, 500
if ch = 1
	GoSub, CheckAutoprov
Return
}
;------------------------------------
OpenAutoprov:
{
WinGet, state,MinMax, repair@
if state = -1
	{
		WinRestore, repair@
		Sleep, 500
	}
else
	{
		WinActivate, repair@
		Sleep, 500
	}
IfWinNotExist repair@
	{
		Run "C:\Program Files (x86)\PuTTY\putty.exe" -load "Autoprov"
		WinActivate, %Autoprov%
		Sleep, 1800
		WinMove,Autoprov 192.168.201.61,,242,177
		Send, %apun%{ENTER}
		Sleep 600 ;21000
		SendRaw, %appw%
		Send, {ENTER}
		Sleep 500
	}
else
	{
		WinActivate, repair@
		Sleep 500
	}
Return
}
;------------------------------------
CheckLog:
{
WinActivate,repair@
Sleep, 500
Send, cd{SPACE}/var/log/httpd{ENTER}
Sleep, 500
Send, grep{SPACE}%tn%{SPACE}access_log{ENTER}
Sleep, 500
WinActivate, repair@
Return
}
;------------------------------------
CheckUnique:
{
GoSub, Messageit7
While(waiting)
	Sleep, 500
If ch = 1
	{
		WinActivate, repair@
		Sleep, 500
		Send, cd{SPACE}/home/legacyap/html/unique{ENTER}
		Sleep, 500
		Send, ls{SPACE}|{SPACE}grep{SPACE}%tn%{ENTER}
		Sleep, 3000
		Loop, read, %USERPROFILE%\desktop\Logs\192.168.201.61.txt
		{
			IfInString, A_LoopReadLine,.xml
				unique = %A_LoopReadLine%
		}
	Sleep, 500
	WinActivate, repair@
	Send, more{SPACE}%unique%{ENTER}
	}
WinActivate, repair@
Return
}
;------------------------------------
Get2820:
{
WinGetPos,x,y,,,%menutitle%
xpos := (x -50)
ypos := (y +40)
2820List =
Gui,3: Destroy
Gui,3: Default
Gui,3: Color, YELLOW
Gui,3: font, s12 arial
Gui,3: +AlwaysOnTop +SysMenu -MinimizeBox
2820List .=	(!2820List ? "" : "|") item%A_Index%
For each, item in arr2
	2820List .=	(!2820List ? "" : "|") item
Gui,3: Add, DropDownList, r38 w255 v2820Choice g2820Chosen, %2820List%
Gui,3: Show,x%xpos% y%ypos%,REPAIR
Return
}
;------------------------------------
2820Chosen:
{
Gui,3: submit, nohide
if 2820Choice = Adtran 2820s
	Return
Gui,3:Destroy
ipaddr =
Loop, % arr2.MaxIndex()
{
	if arr2[A_Index] = 2820Choice
	ipaddr := arr9[A_Index]
}
a2820 = %2820Choice%
GoSub, Messageit8
While(waiting)
	Sleep, 500
If ch = 1
	GoSub, Open2820
else
	GoSub, Get2820
Return
}
;------------------------------------
Open2820:
{
WinGet,state,MinMax,%ipaddr% - PuTTY
if state = -1 ;Window is minimized
	{
		WinActivate, %ipaddr% - PuTTY
		WinSetTitle, %ipaddr% - PuTTY,,%a2820% %ipaddr%
		Sleep, 500
	}
else ;Window is not minimized but on screen
	{
		WinActivate, %ipaddr% - PuTTY
		WinSetTitle, %ipaddr% - PuTTY,,%a2820% %ipaddr%
		WinActivate, %a2820% %ipaddr%
		Sleep, 500
	}
IfWinNotExist %a2820% %ipaddr%
	{
		Run "C:\Program Files (x86)\PuTTY\putty.exe" -load "%a2820%"
		WinActivate, %ipaddr% - PuTTY
		Sleep, 1800
		WinMove,%ipaddr% - PuTTY,,242,177
		WinSetTitle,%ipaddr% - PuTTY,, %a2820% %ipaddr%
		Sleep 500
		Send, %defaultun%{ENTER}
		Sleep 500
		SendRaw, %defaultpw%
		Send,{ENTER}
		Sleep 500
		Send, 2{ENTER}
		Sleep 500
	}
;GoSub, Check2820
Return
}	
;------------------------------------
Check2820:
{
;GoSub, Shelf
;GoSub, Port
WinActivate, %a2820% %ipaddr%
Sleep, 500
;GoSub, LockMouse
;Send, %shelf%{ENTER}
;Sleep, 500
;Send, %port%{ENTER}
;Sleep, 500
;Send, 10{ENTER}
;Sleep, 500
ClipCursor(FALSE,0,0,0,0)
WinActivate, %a2820% %ipaddr%
Return
}
;------------------------------------
GetIntelliflex:
{
WinGetPos,x,y,,,%menutitle%
xpos := (x -50)
ypos := (y +40)
InfiList =
Gui,5: Destroy
Gui,5: Default
Gui,5: font, s12
Gui,5: +AlwaysOnTop +SysMenu -MinimizeBox
InfiList .=	(!InfiList ? "" : "|") item%A_Index%
For each, item in arr4
	InfiList .=	(!InfiList ? "" : "|") item
Gui,5: Add, DropDownList, r38 vInfiChoice gIntelliflexChosen, %InfiList%
Gui,5: Show,x%xpos% y%ypos%,REPAIR
Gui,5: Color, YELLOW
Return
}
;------------------------------------
IntelliflexChosen:
{
Gui,5: submit, nohide
if InfiChoice = Intelliflexs
	Return
Gui,5:Destroy
Loop, % arr4.MaxIndex()
{
	if arr4[A_Index] = InfiChoice
	ipaddr := arr6[A_Index]
}
Infi = %InfiChoice%
GoSub, Messageit9
While(waiting)
	Sleep, 500
If ch = 1
	GoSub, OpenIntelliflex
else
	GoSub, GetIntelliflex
Return
}
;------------------------------------
OpenIntelliflex:
{
WinGet,state,MinMax,%ipaddr% - PuTTY

if state = -1 ;Window is minimized
	{
		WinActivate, %ipaddr% - PuTTY
		WinSetTitle, %ipaddr% - PuTTY,,%Infi% %ipaddr%
		Sleep, 500
	}
else ;Window is not minimized but on screen
	{
		WinActivate, %Infi% - PuTTY
		WinSetTitle, %Infi% - PuTTY,,%Infi% %ipaddr%
		WinActivate, %Infi% %ipaddr%
		Sleep, 500
	}
IfWinNotExist %Infi% %ipaddr%
	{
		Run "C:\Program Files (x86)\PuTTY\putty.exe" -load "%Infi%"
		WinActivate, %Infi%
		Sleep, 1800
		WinMove,%Infi%,,242,177
		WinSetTitle,- PuTTY,, %Infi% %ipaddr%
		Sleep 500
		GoSub, GetInfo
		While(waiting)
			Sleep, 500
		WinActivate, %Infi% %ipaddr%
		Send, %un%{ENTER}
		SendRaw, %pw%
		Send,{ENTER}
		Sleep, 500
	}
Return
}	
;------------------------------------
Get1124:
{
WinGetPos,x,y,,,%menutitle%
xpos := (x -50)
ypos := (y +40)
1124List =
Gui,6: Destroy
Gui,6: Default
Gui,6: font, s12
Gui,6: +AlwaysOnTop +SysMenu -MinimizeBox
1124List .=	(!1124List ? "" : "|") item%A_Index%
For each, item in arr3
	1124List .=	(!1124List ? "" : "|") item
Gui,6: Add, DropDownList, w320 r34 v1124Choice g1124Chosen, %1124List%
Gui,6: Show,x%xpos% y%ypos%,REPAIR
Gui,6: Color, YELLOW
Return
}
;------------------------------------
1124Chosen:
{
Gui,6: submit, nohide
if 1124Choice = Adtran 1124s
	Return
Gui,6:Destroy

Loop, % arr3.MaxIndex()
{
	if arr3[A_Index] = 1124Choice
	ipaddr := arr5[A_Index]
}
1124 = %1124Choice%
GoSub, Messageit10
While(waiting)
	Sleep, 500
If ch = 1
	GoSub, Open1124
else
	GoSub, Get1124
Return
}
;------------------------------------
Open1124:
{
WinGet,state,MinMax,%ipaddr% - PuTTY

if state = -1 ;Window is minimized
	{
		WinActivate, %ipaddr% - PuTTY
		WinSetTitle, %ipaddr% - PuTTY,,%1124% %ipaddr%
		Sleep, 500
	}
else ;Window is not minimized but on screen
	{
		WinActivate, %1124% - PuTTY
		WinSetTitle, %1124% - PuTTY,,%1124% %ipaddr%
		WinActivate, %1124% %ipaddr%
		Sleep, 500
	}
IfWinNotExist %1124% %ipaddr%
	{
		Run "C:\Program Files (x86)\PuTTY\putty.exe" -load "%1124%"
		WinActivate, %1124%
		Sleep, 1800
		WinMove,%1124%,,242,177
		WinSetTitle,- PuTTY,, %1124% %ipaddr%
		Sleep 500
		GoSub, GetInfo
		While(waiting)
			Sleep, 500
		WinActivate, %1124% %ipaddr%
		Send, %un%{ENTER}
		SendRaw, %pw%
		Send,{ENTER}
		Sleep, 500
		Send, en{ENTER}
		Sleep, 500
	}
if choice = 1
	GoSub, CheckDSL1 ;dsl
else
if choice = 2
	GoSub, ClearDSL ;dsl
else
if choice = 3
	GoSub, CheckMAC ;eshdsl
else
if choice = 4
	GoSub, ClearMAC ;eshdsl
else
if choice = 5
	GoSub, DSLspeed ;dsl
else
if choice = 6
	GoSub, DSLModeMenu ;dsl
if choice = 7
	GoSub, CheckFXS ;dsl
else
if choice = 8
	GoSub, ResetFXS ;dsl
else
if choice = 9
	GoSub, RunMLT ;dsl
Return
}	
;------------------------------------
;------------------------------------
RunPing:
{
WinGet, state,MinMax, Network Pinger
if state = -1
	{
		WinRestore, Network Pinger
		Sleep, 500
	}
else
	{
		WinActivate, Network Pinger
		Sleep, 500
	}
IfWinNotExist Network Pinger
	{

		Run, "%fileloc%\Tech software tools\software tools\Network Pinger\Network Pinger.exe",,UseErrorlevel
		If ErrorLevel = ERROR
			GoSub, Messageit11
		WinActivate, Network Pinger
		Sleep, 1800
	}
Return
}
;------------------------------------
RunPassGen:
{
WinGet, state,MinMax, Free Password Generator
if state = -1
	{
		WinRestore, Free Password Generator
		Sleep, 500
	}
else
	{
		WinActivate, Free Password Generator
		Sleep, 500
	}
IfWinNotExist Free Password Generator
	{
		Run, "%fileloc%\Tech software tools\software tools\PasGen.exe",, UseErrorlevel
		If ErrorLevel = ERROR
			GoSub, Messageit11
		WinActivate, Free Password Generator
		Sleep, 1800
	}
Return
}
;------------------------------------
Timer:
{
WinGet, state,MinMax, XNote Timer
if state = -1
	{
		WinRestore, XNote Timer
		Sleep, 500
	}
else
	{
		WinActivate, XNote Timer
		Sleep, 500
	}
IfWinNotExist XNote Timer
	{
		Run, "%fileloc%\Tech software tools\software tools\xntimer.exe",,UseErrorLevel
		If ErrorLevel = ERROR
			GoSub, Messageit11
		WinActivate, XNote Timer
		Sleep, 1800
	}
Return
}
;------------------------------------
MXToolbox:
{
Run, http://mxtoolbox.com/,,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
Sleep, 500
Return
}
;------------------------------------
MACfind:
{
Run, http://www.coffer.com/mac_find/,,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
Sleep, 1800
Return
}
;------------------------------------
Neustar:
{
Run, http://numbering.neustar.biz/,,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
Sleep, 1800
Return
}
;------------------------------------
autoprovGUI:
{
Run, http://192.168.201.61,,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
Sleep, 1800
Return
}
;------------------------------------
IPlist:
{
;"X:\Ops\NERD\IP Documentation\Network Group Equipment IP Addresses.xls"
Run, "X:\Ops\NERD\IP Documentation\Network Group Equipment IP Addresses.xls",,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
Sleep, 1800
Return
}
;------------------------------------
MUXlist:
{
;"X:\Ops\Network Engineering\Documentation\Adtran\28XX\BRCO MUX Hub Slots.xlsx"
Run, "X:\Ops\Network Engineering\Documentation\Adtran\28XX\BRCO MUX Hub Slots.xlsx",,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
Sleep, 1800
Return
}
;------------------------------------
Passwords:
{
;R:\shared\NOC-Tier 1\Legacy Bayring REPAIR DEPT INFO-PROCEDURES\Password lists-OXF South Branch
Run, "%fileloc2%\Legacy Bayring REPAIR DEPT INFO-PROCEDURES\Password lists-OXF South Branch",,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
Sleep, 1800
Return
}
;------------------------------------
KeePass:
{
;R:\shared\NOC-Tier 1\SOUTH NOC  specific Repair Info\REPAIR DEPT INFO-PROCEDURES\Password lists-OXF South Branch
;j$u2O^8sW
Run, "%fileloc2%\Legacy Bayring REPAIR DEPT INFO-PROCEDURES\Password lists-OXF South Branch\Repairkeepass.kdbx",,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
Sleep, 1800
Return
}
;------------------------------------
JobTracking:
{
Run, http://tracking.worldpath.net/,,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
Sleep, 1800
Return
}
;------------------------------------
voip1:
{
Run, http://trackvoip.bayring.com/,,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
Sleep, 1800
Return
}
;------------------------------------
voip2:
{
Run, http://trackvoip.bayring.net/,,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
Sleep, 1800
Return
}
;------------------------------------
KNM:
{
Run, http://192.168.200.15/object.list.xsi,,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
Sleep, 1800
Return
}
;------------------------------------
SAS:
{
Run, https://192.168.220.186/serviceassurance/search,,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
Sleep, 1800
Return
}
;------------------------------------
SAS1:
{
Run, https://192.168.114.65/serviceassurance/search,,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
Sleep, 1800
Return
}
;------------------------------------
MaineCO:
{
;R:\shared\CO Department
Run, "\\files\central\shared\CO Department\Connect Maine",,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
Sleep, 1800
Return
}
;------------------------------------
MaineNetwork:
{
;R:\Network Diagrams
Run, "\\files\central\Network Diagrams",,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
Sleep, 1800
Return
}
;------------------------------------
Fairpoint:
{
Run, https://vfoprod-fairpoint.activationnow.com/,,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
Sleep, 1800
Return
}
;------------------------------------
Verizon:
{
Run, https://www22.verizon.com/wholesale/homepage.jsp,,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
Return
}
;------------------------------------
Techinline:
{
WinGet, state,MinMax, Techinline Remote Desktop
if state = -1
	{
		WinRestore, Techinline Remote Desktop
		Sleep, 500
	}
else
	{
		WinActivate, Techinline Remote Desktop
		Sleep, 500
	}
IfWinNotExist Techinline Remote Desktop
	{
		Run, "%userprofile%\AppData\Local\Techinline\Expert\TiExpertStandalone.exe",,UseErrorlevel
		If ErrorLevel = ERROR
			GoSub, Messageit11
		WinActivate, Techinline Remote Desktop
		Sleep, 1800
	}
Return
}
;------------------------------------
GoToAssist:
{
IfWinNotExist GoToAssist Corporate
	{
		Run, "%fileloc%\Tech software tools\software tools\GoToAssist_Corporate_HelpAlert.exe",,UseErrorlevel
		If ErrorLevel = ERROR
			GoSub, Messageit11
		WinActivate, GoToAssist Corporate - noc@oxfordnetworks.com connected to egw.gotoassist.com
		Sleep, 1800
	}
WinShow, GoToAssist Corporate - noc@oxfordnetworks.com connected to egw.gotoassist.com
Return
}
;------------------------------------
Siteinfo:
{
Run, "x:/ops/nerd/siteinfo",,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
WinActivate, SITEINFO
Sleep, 1800
Return
}
;------------------------------------
Orders:
{
Run, "x:/shared/orders",,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
WinActivate, Orders
Sleep, 1800
Return
}
;------------------------------------
Loopqual:
{
Run, "x:/shared/provisioning/!loop qual",,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
WinActivate,!Loop Qual
Sleep, 1800
Return
}
;------------------------------------
Oncall:
{
Run, https://files.bayring.com,,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
Sleep, 1800
Return
}
;------------------------------------
Digsafe:
{
;\\files\Central\shared\NOC-Tier 1\OSP info-ALL NOCS
Run, "%fileloc2%\OSP info-ALL NOCS\repair digsafe.kmz",,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
Sleep, 1800
Return
}
;------------------------------------
DigsafeON:
{
Run, "%fileloc2%\OSP info-ALL NOCS\oxford.kmz",, UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
Sleep, 1800
Return
}
;------------------------------------
O360:
{
;R:\shared\NOC-Tier 1\SOUTH NOC  specific Repair Info\OMNIA 360 documents-guides
Run, "%fileloc2%\OMNIA 360 documents-guides",,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
Sleep, 1800
Return
}
;------------------------------------
INTtestcalls:
{
;X:\Shared\Test Calls
Run, "X:\Shared\Test Calls\Test Call Numbers & Spreadsheet-.xlsx",,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
WinActivate, 
Sleep, 1800
Return
}
;------------------------------------
NOCfolder:
{
Run, "%fileloc%",,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
WinActivate, 
Sleep, 1800
Return
}
;------------------------------------
NOC1folder:
{
Run, %fileloc2%,,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
WinActivate, 
Sleep, 1800
Return
}
;------------------------------------
CIDsheet:
{
Run, "%fileloc2%\Circuit ID naming standard\Circuit ID training cheat sheet 12-16-16.xls",,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
WinActivate, 
Sleep, 1800
Return
}
;------------------------------------
Altcarrier:
{
Run, "%fileloc2%\Alternate carrier--underlying carrier info\Alternate Carrier & Peak info",,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
WinActivate, 
Sleep, 1800
Return
}
;------------------------------------
DMShowto:
{
Run, "%fileloc2%\SWITCH INFO & TESTING--Meta-DMS-Trunking-Voicemail\DMS how to",,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
WinActivate, 
Sleep, 1800
Return
}
;------------------------------------
Metahowto:
{
Run, "%fileloc2%\SWITCH INFO & TESTING--Meta-DMS-Trunking-Voicemail\META how to",,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
WinActivate, 
Sleep, 1800
Return
}
;------------------------------------
Speedtest:
{
Run, "http://speedtest.firstlight.net/",,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
WinActivate, 
Sleep, 1800
Return
}
;------------------------------------
Webmail:
{
Run, "https://login.microsoftonline.com/login.srf",,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
WinActivate, 
Sleep, 1800
Return
}
;------------------------------------
Altcarrier1:
{
Run, "%fileloc2%\Alternate carrier--underlying carrier info",,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
WinActivate, 
Sleep, 1800
Return
}
;------------------------------------
VOIP:
{
;\\files\Central\shared\NOC-Tier 1\VoIP info
Run, "%fileloc2%\VoIP info",,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
WinActivate, 
Sleep, 1800
Return
}
;------------------------------------
Multitel:
{
Run, http:\\192.168.76.197,,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
Sleep, 1800
Return
}
;------------------------------------
RDPMenu:
{
WinGetPos,x,y,,,%menutitle%
xpos := (x -50)
ypos := (y +40)
Gui,5: Destroy
Gui,5: font, s12, arial
Gui,5: +AlwaysOnTop +SysMenu -MinimizeBox +Border -Resize
Gui,5: Color, YELLOW
Gui,5: Add, DropDownList, r8 w170 vRDPChoice gRDPChosen, %list9%
Gui,5: Show,x%xpos% y%ypos%,REPAIR
Return
}
;------------------------------------
RDPChosen:
{
Gui,5: submit, nohide
if RDPChoice = RDP Sites
	Return
else
if RDPChoice = Ominia BRCTerm2
	GoSub, brcterm2
else
if RDPChoice = INM Viewer
	GoSub, inmviewer
else
if RDPChoice = AFC Viewer
	GoSub, afcviewer
else
if RDPChoice = Ping Plotter
	GoSub, pingplotter
Return
}
;------------------------------------
brcterm2:
{
Gui,5:Destroy
WinGet, state,MinMax, brcterm2
if state = -1
	WinRestore, brcterm2
else
	WinActivate, brcterm2
IfWinNotExist brcterm2
	{
		Run, "%fileloc%\Tech software tools\RDP Sites\OMNIA - Term2.RDP",,UseErrorlevel
		If ErrorLevel = ERROR
			GoSub, Messageit11
		WinActivate, brcterm2
		Sleep, 1800
	}
Return
}
;------------------------------------
inmviewer:
{
Gui,5:Destroy
WinGet, state,MinMax, inm-viewer
if state = -1
	WinRestore, inm-viewer
else
	WinActivate, inm-viewer
IfWinNotExist inm-viewer
	{
		Run, "%fileloc%\Tech software tools\RDP Sites\inm-viewer.RDP",,UseErrorlevel
		If ErrorLevel = ERROR
			GoSub, Messageit11
		WinActivate, inm-viewer
		Sleep, 1800
	}
Return
}
;------------------------------------
afcviewer:
{
Gui,5:Destroy
WinGet, state,MinMax, afc-viewer
if state = -1
	WinRestore, afc-viewer
else
	WinActivate, afc-viewer
IfWinNotExist afc-viewer
	{
		Run, "%fileloc%\Tech software tools\RDP Sites\afc-viewer.RDP",,UseErrorlevel
		If ErrorLevel = ERROR
			GoSub, Messageit11
		WinActivate, afc-viewer
		Sleep, 1800
	}
Return
}
;------------------------------------
pingplotter:
{
Gui,5:Destroy
WinGet, state,MinMax, stw
if state = -1
	WinRestore, stw
else
	WinActivate, stw
IfWinNotExist stw
	{
		Run, "%fileloc%\Tech software tools\RDP Sites\pingplotter.RDP",,UseErrorlevel
		If ErrorLevel = ERROR
			GoSub, Messageit11
		WinActivate, stw
		Sleep, 1800
	}
Return
}
;------------------------------------
GetPCAP:
{
Gui,5:Destroy
WinGet, state,MinMax, 192.168.114.250
if state = -1
	WinRestore, 192.168.114.250
else
	WinActivate, 192.168.114.250
IfWinNotExist 192.168.114.250
	{
		Run, "%fileloc%\Tech software tools\RDP Sites\pcap.RDP",,UseErrorlevel
		If ErrorLevel = ERROR
			GoSub, Messageit11
		WinActivate, 192.168.114.250
		Sleep, 1800
	}
Return
}
;------------------------------------
ossview:
{
Gui,5:Destroy
WinGet, state,MinMax, ossview
if state = -1
	WinRestore, ossview
else
	WinActivate, ossview
IfWinNotExist ossview
	{
		Run, "%fileloc%\Tech software tools\RDP Sites\ossview.RDP",,UseErrorlevel
		If ErrorLevel = ERROR
			GoSub, Messageit11
		WinActivate, ossview
		Sleep, 1800
	}
Return
}
;------------------------------------
GetAlarmAccount:
{
Run, https://www.alarmaccount.com/,,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
Sleep, 5500
Return
}
;------------------------------------
GetWinPak:
{
Gui,1:Destroy
WinGet, state,MinMax, ossview
if state = -1
	WinRestore, ossview
else
	WinActivate, ossview

IfWinNotExist ossview
	{
		Run, "%fileloc%\Tech software tools\RDP Sites\ossview.RDP",,UseErrorlevel
		If ErrorLevel = ERROR
			GoSub, Messageit11
		WinActivate, ossview
		Sleep, 1800
	}
Return
}
;------------------------------------
GetCameras:
{
Run, "C:\Program Files\exacqVision\Client\edvrclient.exe",,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
Sleep, 1500
Return
}
;------------------------------------
TechTools:
{
Run, %fileloc%\Tech software tools,,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
Sleep, 1500
Return
}
;------------------------------------
Switch:
{
Run, \\bdy\Ops\Switch,,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
Sleep, 1500
Return
}
;------------------------------------
OpenEAS:
{
Run, http://login.bayring.com:8081,,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
Sleep, 1500
Return
}
;------------------------------------
OpenAPmax:
{
Run, "C:\Program Files (x86)\Innovative Systems\APmax\APmax.exe",,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
Sleep, 1500
Return
}
;------------------------------------
GetSwitch:
{
GoSub, GetInfo16
While(waiting)
	Sleep, 500
GoSub, StatFXS
Sleep, 500
Return
}
;------------------------------------
OpenAlbany: ;DMS500
{
IfNotExist, %USERPROFILE%\desktop\Logs\Backup
	FileCreateDir, %USERPROFILE%\desktop\Logs\Backup
IfExist, %USERPROFILE%\desktop\Logs\%ipaddr%.txt
	FileMove, %USERPROFILE%\desktop\Logs\%ipaddr%.txt, %USERPROFILE%\desktop\Logs\Backup\%ipaddr%.txt,1
type = 500
WinGet,state,MinMax,10.1.1.49 - PuTTY
if state = -1 ;Window is minimized
	{
		WinActivate,10.1.1.49 - PuTTY
		WinSetTitle,10.1.1.49 - PuTTY,,Albany DMS500 Switch 10.1.1.49
		WinActivate,Albany DMS500 Switch 10.1.1.49
		Sleep, 500
	}
else ;Window is not minimized but on screen
	{
		WinActivate,10.1.1.49 - PuTTY
		WinSetTitle,10.1.1.49 - PuTTY,,Albany DMS500 Switch 10.1.1.49
		WinActivate,Albany DMS500 Switch 10.1.1.49
		Sleep, 500
	}
IfWinNotExist Albany Switch 10.1.1.49
	{
		GoSub, GetInfo
		While(waiting)
		Sleep, 500
		Run "C:\Program Files (x86)\PuTTY\putty.exe" -load "Albany DMS500 Switch",,UseErrorlevel
		If ErrorLevel = ERROR
			GoSub, Messageit11
		WinActivate,10.1.1.49 - PuTTY
		Sleep, 500
		WinSetTitle,10.1.1.49 - PuTTY,,Albany DMS500 Switch 10.1.1.49
		WinActivate,Albany DMS500 Switch 10.1.1.49
		Sleep, 500
		WinMove,Albany DMS500 Switch 10.1.1.49,,242,177
		Sleep, 500
		WinActivate,Albany DMS500 Switch 10.1.1.49
		Send, %albanyun%{ENTER}
		Sleep, 500
		SendRaw, %albanypw%
		Send,{ENTER}
		Sleep, 500
	}
Return
}
;------------------------------------
OpenCS15: ;Albany CS15
{
IfNotExist, %USERPROFILE%\desktop\Logs\Backup
	FileCreateDir, %USERPROFILE%\desktop\Logs\Backup
IfExist, %USERPROFILE%\desktop\Logs\%ipaddr%.txt
	FileMove, %USERPROFILE%\desktop\Logs\%ipaddr%.txt, %USERPROFILE%\desktop\Logs\Backup\%ipaddr%.txt,1
type = cs15
WinGet,state,MinMax,10.1.2.50 - PuTTY
if state = -1 ;Window is minimized
	{
		WinActivate,10.1.2.50 - PuTTY
		WinSetTitle,10.1.2.50 - PuTTY,,Albany CS15 Switch 10.1.2.50
		WinActivate,Albany CS15 Switch 10.1.2.50
		Sleep, 500
	}
else ;Window is not minimized but on screen
	{
		WinActivate,110.1.2.50 - PuTTY
		WinSetTitle,110.1.2.50 - PuTTY,,Albany CS15 Switch 10.1.2.50
		WinActivate,Albany CS15 Switch 10.1.2.50
		Sleep, 500
	}
IfWinNotExist Albany CS15 Switch 10.1.2.50
	{
		GoSub, GetInfo
		While(waiting)
		Sleep, 500
		Run "C:\Program Files (x86)\PuTTY\putty.exe" -load "Albany CS15 Switch",,UseErrorlevel
		If ErrorLevel = ERROR
			GoSub, Messageit11
		WinActivate,10.1.2.50 - PuTTY
		Sleep, 500
		WinSetTitle,10.1.2.50 - PuTTY,,Albany CS15 Switch 10.1.2.50
		WinActivate,Albany CS15 Switch 10.1.2.50
		Sleep, 500
		WinMove Albany CS15 Switch 10.1.2.50,,242,177
		Sleep, 500
		WinActivate,Albany CS15 Switch 10.1.2.50
		Send, %albanyun%{ENTER}
		Sleep, 500
		SendRaw, %albanypw%
		Send,{ENTER}
		Sleep, 500
	}
Return
}
;------------------------------------
OpenBangor:
{
IfNotExist, %USERPROFILE%\desktop\Logs\Backup
	FileCreateDir, %USERPROFILE%\desktop\Logs\Backup
IfExist, %USERPROFILE%\desktop\Logs\%ipaddr%.txt
	FileMove, %USERPROFILE%\desktop\Logs\%ipaddr%.txt, %USERPROFILE%\desktop\Logs\Backup\%ipaddr%.txt,1
type = c15
WinGet,state,MinMax,10.3.1.40 - PuTTY
if state = -1 ;Window is minimized
	{
		WinActivate,10.3.1.40 - PuTTY
		WinSetTitle,10.3.1.40 - PuTTY,,Bangor Switch 10.3.1.40
		WinActivate,Bangor Switch 10.3.1.40
		Sleep, 500
	}
else ;Window is not minimized but on screen
	{
		WinActivate,10.3.1.40 - PuTTY
		WinSetTitle,10.3.1.40 - PuTTY,,Bangor Switch 10.3.1.40
		WinActivate,Bangor Switch 10.3.1.40
		Sleep, 500
	}
IfWinNotExist Bangor Switch 10.3.1.40
	{
		GoSub, GetInfo
		While(waiting)
		Sleep, 500
		Run "C:\Program Files (x86)\PuTTY\putty.exe" -load "Bangor Switch",,UseErrorlevel
		If ErrorLevel = ERROR
			GoSub, Messageit11
		WinActivate,10.3.1.40 - PuTTY
		Sleep, 500
		WinSetTitle,10.3.1.40 - PuTTY,,Bangor Switch 10.3.1.40
		WinActivate,Bangor Switch 10.3.1.40
		Sleep, 500
		WinMove,Bangor Switch 10.3.1.40,,242,177
		Sleep, 500
		WinActivate,Bangor Switch 10.3.1.40
		Send, %un%{ENTER}
		Sleep, 500
		SendRaw, %pw%
		Send,{ENTER}
		Sleep, 500
		Send, dmstty{SPACE}?{ENTER}
		Sleep, 500
		Loop, read, %USERPROFILE%\desktop\Logs\10.3.1.40.txt
		{
						IfInString, A_LoopReadLine, TTY 7  TELNET NOT CONNECTED
				{
					avail = %A_LoopReadLine%
					tty := SubStr(avail,5,2)
					break
				}
			else
				IfInString, A_LoopReadLine, TTY 14 TELNET NOT CONNECTED
					{
						avail = %A_LoopReadLine%
						tty := SubStr(avail,5,2)
						break
					}
				else
					IfInString, A_LoopReadLine, TTY 15 TELNET NOT CONNECTED
						{
							avail = %A_LoopReadLine%
							tty := SubStr(avail,5,2)
							break
						}
					else
						IfInString, A_LoopReadLine, TTY 16 TELNET NOT CONNECTED
							{
								avail = %A_LoopReadLine%
								tty := SubStr(avail,5,2)
								break
							}
						else
							IfInString, A_LoopReadLine, TTY 25 TELNET NOT CONNECTED
								{
									avail = %A_LoopReadLine%
									tty := SubStr(avail,5,2)
									break
								}
		}
		Sleep, 1500
		Send, dmstty{SPACE}%tty%{ENTER}
		Sleep, 1500
		Send, ****{ENTER}
		Sleep, 500
		Send, LOGI{ENTER}
		Sleep, 500
		Send, %dms10pw%{ENTER} ;onfiber1
		Sleep, 500
	}
Return
}
;------------------------------------
OpenBethel:
{
IfNotExist, %USERPROFILE%\desktop\Logs\Backup
	FileCreateDir, %USERPROFILE%\desktop\Logs\Backup
IfExist, %USERPROFILE%\desktop\Logs\%ipaddr%.txt
	FileMove, %USERPROFILE%\desktop\Logs\%ipaddr%.txt, %USERPROFILE%\desktop\Logs\Backup\%ipaddr%.txt,1
	
WinGet,state,MinMax,10.3.5.10 - PuTTY
if state = -1 ;Window is minimized
	{
		WinActivate, 10.3.5.10 - PuTTY
		WinSetTitle, 10.3.5.10 - PuTTY,,Bethel Switch 10.3.5.10
		WinActivate, Bethel Switch 10.3.5.10
		Sleep, 500
	}
else ;Window is not minimized but on screen
	{
		WinActivate, 10.3.5.10 - PuTTY
		WinSetTitle, 10.3.5.10 - PuTTY,,Bethel Switch 10.3.5.10
		WinActivate, Bethel Switch 10.3.5.10
		Sleep, 500
	}
IfWinNotExist Bethel Switch 10.3.5.10
	{
		GoSub, GetInfo
		While(waiting)
		Sleep, 500
		Run "C:\Program Files (x86)\PuTTY\putty.exe" -load "Bethel Switch",,UseErrorlevel
		If ErrorLevel = ERROR
			GoSub, Messageit11
		WinActivate, 10.3.5.10 - PuTTY
		Sleep, 500
		WinSetTitle, 10.3.5.10 - PuTTY,, Bethel Switch 10.3.5.10
		WinActivate, Bethel Switch 10.3.5.10
		Sleep, 500
		WinMove, Bethel Switch 10.3.5.10,,242,177
		Sleep, 500
		WinActivate, Bethel Switch 10.3.5.10
		Send, %un%{ENTER}
		Sleep, 500
		SendRaw, %pw%
		Send,{ENTER}
		Sleep, 500
		Send, dmstty{SPACE}?{ENTER}
		Sleep, 500
		Loop, read, %USERPROFILE%\desktop\Logs\10.3.5.10.txt
		{
			IfInString, A_LoopReadLine, TTY 16 TELNET NOT CONNECTED
			{
				avail = %A_LoopReadLine%
				tty := SubStr(avail,5,2)
				break
			}
			else
				IfInString, A_LoopReadLine, TTY 24 TELNET NOT CONNECTED
					{
						avail = %A_LoopReadLine%
						tty := SubStr(avail,5,2)
						break
					}
				else
					IfInString, A_LoopReadLine, TTY 25 TELNET NOT CONNECTED
						{
							avail = %A_LoopReadLine%
							tty := SubStr(avail,5,2)
							break
						}
					else
						IfInString, A_LoopReadLine, TTY 28 TELNET NOT CONNECTED
							{
								avail = %A_LoopReadLine%
								tty := SubStr(avail,5,2)
								break
							}
						else
							IfInString, A_LoopReadLine, TTY 29 TELNET NOT CONNECTED
								{
									avail = %A_LoopReadLine%
									tty := SubStr(avail,5,2)
									break
								}
		}
		Sleep, 1500
		Send, dmstty{SPACE}%tty%{ENTER}
		Sleep, 1500
		Send, ****{ENTER}
		Sleep, 500
		Send, LOGI{ENTER}
		Sleep, 500
		Send, %dms10pw%{ENTER} ;onfiber1
		Sleep, 500
	}
Return
}
;------------------------------------
OpenLewiston:
{
IfNotExist, %USERPROFILE%\desktop\Logs\Backup
	FileCreateDir, %USERPROFILE%\desktop\Logs\Backup
IfExist, %USERPROFILE%\desktop\Logs\%ipaddr%.txt
	FileMove, %USERPROFILE%\desktop\Logs\%ipaddr%.txt, %USERPROFILE%\desktop\Logs\Backup\%ipaddr%.txt,1
type = c15
WinGet,state,MinMax, %ipaddr% - PuTTY
if state = -1 ;Window is minimized
	{
		WinActivate, %ipaddr% - PuTTY
		WinSetTitle, %ipaddr% - PuTTY,,Lewiston Switch 10.3.12.40
		WinActivate, Lewiston Switch 10.3.12.40
		Sleep, 500
	}
else ;Window is not minimized but on screen
	{
		WinActivate, %ipaddr% - PuTTY
		WinSetTitle, %ipaddr% - PuTTY,,Lewiston Switch 10.3.12.40
		WinActivate, Lewiston Switch 10.3.12.40
		Sleep, 500
	}
IfWinNotExist Lewiston Switch 10.3.12.40
	{
		GoSub, GetInfo
		While(waiting)
		Sleep, 500
		Run "C:\Program Files (x86)\PuTTY\putty.exe" -load "Lewiston Switch",,UseErrorlevel
		If ErrorLevel = ERROR
			GoSub, Messageit11
		WinActivate, %ipaddr% - PuTTY
		Sleep, 500
		WinSetTitle, %ipaddr% - PuTTY,,Lewiston Switch 10.3.12.40
		WinActivate,Lewiston Switch 10.3.12.40
		Sleep, 500
		WinMove,Lewiston Switch 10.3.12.40,,242,177
		Sleep, 500
		WinActivate,Lewiston Switch 10.3.12.40
		Send, %un%{ENTER}
		Sleep, 500
		SendRaw, %pw%
		Send,{ENTER}
		Sleep, 500
		Send, dmstty{SPACE}?{ENTER}
		Sleep, 500
		Loop, read, %USERPROFILE%\desktop\Logs\%ipaddr%.txt
		{
			IfInString, A_LoopReadLine, TTY 14 TELNET NOT CONNECTED
				{
					avail = %A_LoopReadLine%
					tty := SubStr(avail,5,2)
					break
				}
			else
				IfInString, A_LoopReadLine, TTY 15 TELNET NOT CONNECTED
					{
						avail = %A_LoopReadLine%
						tty := SubStr(avail,5,2)
						break
					}
				else
					IfInString, A_LoopReadLine, TTY 16 TELNET NOT CONNECTED
						{
							avail = %A_LoopReadLine%
							tty := SubStr(avail,5,2)
							break
						}
					else
						IfInString, A_LoopReadLine, TTY 24 TELNET NOT CONNECTED
							{
								avail = %A_LoopReadLine%
								tty := SubStr(avail,5,2)
								break
							}
						else
							IfInString, A_LoopReadLine, TTY 25 TELNET NOT CONNECTED
								{
									avail = %A_LoopReadLine%
									tty := SubStr(avail,5,2)
									break
								}
							else
								IfInString, A_LoopReadLine, TTY 26 TELNET NOT CONNECTED
								{
									avail = %A_LoopReadLine%
									tty := SubStr(avail,5,2)
									break
								}
		}
		Sleep, 1500
		Send, dmstty{SPACE}%tty%{ENTER}
		Sleep, 1500
		Send, ****{ENTER}
		Sleep, 500
		Send, LOGI{ENTER}
		Sleep, 500
		Send, %dms10pw%{ENTER} ;onfiber1
		Sleep, 500
	}
Return
}
;------------------------------------
OpenNorway:
{
IfNotExist, %USERPROFILE%\desktop\Logs\Backup
	FileCreateDir, %USERPROFILE%\desktop\Logs\Backup
IfExist, %USERPROFILE%\desktop\Logs\%ipaddr%.txt
	FileMove, %USERPROFILE%\desktop\Logs\%ipaddr%.txt, %USERPROFILE%\desktop\Logs\Backup\%ipaddr%.txt,1
	
WinGet,state,MinMax,10.3.8.10 - PuTTY
if state = -1 ;Window is minimized
	{
		WinActivate,10.3.8.10 - PuTTY
		WinSetTitle,10.3.8.10 - PuTTY,,Norway Switch 10.3.8.10
		WinActivate,Norway Switch 10.3.8.10
		Sleep, 500
	}
else ;Window is not minimized but on screen
	{
		WinActivate,10.3.8.10 - PuTTY
		WinSetTitle,10.3.8.10 - PuTTY,,Norway Switch 10.3.8.10
		WinActivate,Norway Switch 10.3.8.10
		Sleep, 500
	}
IfWinNotExist Norway Switch 10.3.8.10
	{
		GoSub, GetInfo
		While(waiting)
		Sleep, 500
		Run "C:\Program Files (x86)\PuTTY\putty.exe" -load "Norway Switch",,UseErrorlevel
		If ErrorLevel = ERROR
			GoSub, Messageit11
		WinActivate,10.3.8.10 - PuTTY
		Sleep, 500
		WinSetTitle,10.3.8.10 - PuTTY,,Norway Switch 10.3.8.10
		WinActivate,Norway Switch 10.3.8.10
		Sleep, 500
		WinMove,Norway Switch 10.3.8.10,,242,177
		Sleep, 500
		WinActivate,Norway Switch 10.3.8.10
		Send, %un%{ENTER}
		Sleep, 500
		SendRaw, %pw%
		Send,{ENTER}
		Sleep, 500
		Send, dmstty{SPACE}?{ENTER}
		Sleep, 500
		Loop, read, %USERPROFILE%\desktop\Logs\10.3.8.10.txt
		{
			IfInString, A_LoopReadLine, TTY 16 TELNET NOT CONNECTED
				{
					avail = %A_LoopReadLine%
					tty := SubStr(avail,5,2)
					break
				}
			else
				IfInString, A_LoopReadLine, TTY 23 TELNET NOT CONNECTED
					{
						avail = %A_LoopReadLine%
						tty := SubStr(avail,5,2)
						break
					}
				else
					IfInString, A_LoopReadLine, TTY 24 TELNET NOT CONNECTED
						{
							avail = %A_LoopReadLine%
							tty := SubStr(avail,5,2)
							break
						}
					else
						IfInString, A_LoopReadLine, TTY 25 TELNET NOT CONNECTED
							{
								avail = %A_LoopReadLine%
								tty := SubStr(avail,5,2)
								break
							}
						else
							IfInString, A_LoopReadLine, TTY 28 TELNET NOT CONNECTED
								{
									avail = %A_LoopReadLine%
									tty := SubStr(avail,5,2)
									break
								}
							else
								IfInString, A_LoopReadLine, TTY 29 TELNET NOT CONNECTED
								{
									avail = %A_LoopReadLine%
									tty := SubStr(avail,5,2)
									break
								}
		}
		Sleep, 1500
		Send, dmstty{SPACE}%tty%{ENTER}
		Sleep, 1500
		Send, ****{ENTER}
		Sleep, 500
		Send, LOGI{ENTER}
		Sleep, 500
		Send, %dms10pw%{ENTER} ;onfiber1
		Sleep, 500
	}
Return
}
;------------------------------------
OpenTurner:
{
IfNotExist, %USERPROFILE%\desktop\Logs\Backup
	FileCreateDir, %USERPROFILE%\desktop\Logs\Backup
IfExist, %USERPROFILE%\desktop\Logs\%ipaddr%.txt
	FileMove, %USERPROFILE%\desktop\Logs\%ipaddr%.txt, %USERPROFILE%\desktop\Logs\Backup\%ipaddr%.txt,1
	
WinGet,state,MinMax,10.3.3.10 - PuTTY
if state = -1 ;Window is minimized
	{
		WinActivate,10.3.3.10 - PuTTY
		WinSetTitle,10.3.3.10 - PuTTY,,Turner Switch 10.3.3.10
		WinActivate,Turner Switch 10.3.3.10
		Sleep, 500
	}
else ;Window is not minimized but on screen
	{
		WinActivate,10.3.3.10 - PuTTY
		WinSetTitle,10.3.3.10 - PuTTY,,Turner Switch 10.3.3.10
		WinActivate,Turner Switch 10.3.3.10
		Sleep, 500
	}
IfWinNotExist Turner Switch 10.3.3.10
	{
		GoSub, GetInfo
		While(waiting)
		Sleep, 500
		Run "C:\Program Files (x86)\PuTTY\putty.exe" -load "Turner Switch",,UseErrorlevel
		If ErrorLevel = ERROR
			GoSub, Messageit11
		WinActivate,10.3.3.10 - PuTTY
		Sleep, 500
		WinSetTitle,10.3.3.10 - PuTTY,,Turner Switch 10.3.3.10
		WinActivate,Turner Switch 10.3.3.10
		Sleep, 500
		WinMove,Turner Switch 10.3.3.10,,242,177
		Sleep, 500
		WinActivate,Turner Switch 10.3.3.10
		Send, %un%{ENTER}
		Sleep, 500
		SendRaw, %pw%
		Send,{ENTER}
		Sleep, 500
		Send, dmstty{SPACE}?{ENTER}
		Sleep, 500
		Loop, read, %USERPROFILE%\desktop\Logs\10.3.3.10.txt
		{
			IfInString, A_LoopReadLine, TTY 4  TELNET NOT CONNECTED
				{
					avail = %A_LoopReadLine%
					tty := SubStr(avail,5,2)
					break
				}
			else
				IfInString, A_LoopReadLine, TTY 8  TELNET NOT CONNECTED
					{
						avail = %A_LoopReadLine%
						tty := SubStr(avail,5,2)
						break
					}
				else
					IfInString, A_LoopReadLine, TTY 9  TELNET NOT CONNECTED
						{
							avail = %A_LoopReadLine%
							tty := SubStr(avail,5,2)
							break
						}
					else
						IfInString, A_LoopReadLine, TTY 12 TELNET NOT CONNECTED
							{
								avail = %A_LoopReadLine%
								tty := SubStr(avail,5,2)
								break
							}
						else
							IfInString, A_LoopReadLine, TTY 15 TELNET NOT CONNECTED
								{
									avail = %A_LoopReadLine%
									tty := SubStr(avail,5,2)
									break
								}
							else
								IfInString, A_LoopReadLine, TTY 22 TELNET NOT CONNECTED
									{
										avail = %A_LoopReadLine%
										tty := SubStr(avail,5,2)
										break
									}
								else
									IfInString, A_LoopReadLine, TTY 23 TELNET NOT CONNECTED
										{
											avail = %A_LoopReadLine%
											tty := SubStr(avail,5,2)
											break
										}
									else
										IfInString, A_LoopReadLine, TTY 24 TELNET NOT CONNECTED
											{
												avail = %A_LoopReadLine%
												tty := SubStr(avail,5,2)
												break
											}
										else
											IfInString, A_LoopReadLine, TTY 25 TELNET NOT CONNECTED
												{
													avail = %A_LoopReadLine%
													tty := SubStr(avail,5,2)
													break
												}
											else
												IfInString, A_LoopReadLine, TTY 26 TELNET NOT CONNECTED
													{
														avail = %A_LoopReadLine%
														tty := SubStr(avail,5,2)
														break
													}
												else
													IfInString, A_LoopReadLine, TTY 27 TELNET NOT CONNECTED
														{
															avail = %A_LoopReadLine%
															tty := SubStr(avail,5,2)
															break
														}
													else
														IfInString, A_LoopReadLine, TTY 28 TELNET NOT CONNECTED
															{
																avail = %A_LoopReadLine%
																tty := SubStr(avail,5,2)
																break
															}
														else
															IfInString, A_LoopReadLine, TTY 29 TELNET NOT CONNECTED
																{
																	avail = %A_LoopReadLine%
																	tty := SubStr(avail,5,2)
																	break
																}
															else
																IfInString, A_LoopReadLine, TTY 30 TELNET NOT CONNECTED
																	{
																		avail = %A_LoopReadLine%
																		tty := SubStr(avail,5,2)
																		break
																	}
		}
		Sleep, 1500
		Send, dmstty{SPACE}%tty%{ENTER}
		Sleep, 1500
		Send, ****{ENTER}
		Sleep, 500
		Send, LOGI{ENTER}
		Sleep, 500
		Send, %dms10pw%{ENTER} ;onfiber1
		Sleep, 500
	}
Return
}
;------------------------------------
OpenDMS100:
{
IfNotExist, %USERPROFILE%\desktop\Logs\Backup
	FileCreateDir, %USERPROFILE%\desktop\Logs\Backup
IfExist, %USERPROFILE%\desktop\Logs\192.168.0.130.txt
	FileMove, %USERPROFILE%\desktop\Logs\192.168.0.130.txt, %USERPROFILE%\desktop\Logs\Backup\192.168.0.130.txt,1
	
WinGet,state,MinMax,192.168.0.130 - PuTTY
if state = -1 ;Window is minimized
	{
		WinActivate,192.168.0.130 - PuTTY
		WinSetTitle,192.168.0.130 - PuTTY,,DMS100 Switch 192.168.0.130
		WinActivate,DMS100 Switch 192.168.0.130
		Sleep, 500
	}
else ;Window is not minimized but on screen
	{
		WinActivate,192.168.0.130 - PuTTY
		WinSetTitle,192.168.0.130 - PuTTY,,DMS100 Switch 192.168.0.130
		WinActivate,DMS100 Switch 192.168.0.130
		Sleep, 500
	}
IfWinNotExist DMS100 Switch 192.168.0.130
	{
		GoSub, GetInfo
		While(waiting)
		Sleep, 500
		Run "C:\Program Files (x86)\PuTTY\putty.exe" -load "DMS100",,UseErrorlevel
		If ErrorLevel = ERROR
			GoSub, Messageit11
		WinActivate,192.168.0.130 - PuTTY
		Sleep, 500
		WinSetTitle,192.168.0.130 - PuTTY,,DMS100 Switch 192.168.0.130
		WinActivate,DMS100 Switch 192.168.0.130
		Sleep, 500
		WinMove,DMS100 Switch 192.168.0.130,,242,177
		Sleep, 500
		WinActivate,DMS100 Switch 192.168.0.130
		Send, %un%{ENTER}
		Sleep, 500
		SendRaw, %pw%
		Send,{ENTER}
		Sleep, 500
	}
Return
}
;------------------------------------
OpenCalix:
{
WinGet,state,MinMax,192.168.3.25 - PuTTY
if state = -1 ;Window is minimized
	{
		WinActivate,192.168.3.25 - PuTTY
		WinSetTitle,192.168.3.25 - PuTTY,,CMS 192.168.3.25
		WinActivate,DMS100 Switch 192.168.0.130
		Sleep, 500
	}
else ;Window is not minimized but on screen
	{
		WinActivate,192.168.3.25 - PuTTY
		WinSetTitle,192.168.3.25 - PuTTY,,CMS 192.168.3.25
		WinActivate,CMS 192.168.3.25
		Sleep, 500
	}
IfWinNotExist CMS 192.168.3.25
	{
		Run "C:\Program Files (x86)\Calix\EMSGui.exe",,UseErrorlevel
		If ErrorLevel = ERROR
			GoSub, Messageit11
		WinActivate, CMS 192.168.3.25
	}
Return
}
;------------------------------------
OpenMeta:
{
WinGet,state,MinMax,MetaView Explorer - 192.168.114.30
if state = -1 ;Window is minimized
	{
		WinActivate,MetaView Explorer - 192.168.114.30
		Sleep, 500
	}
else ;Window is not minimized but on screen
	{
		WinActivate,MetaView Explorer - 192.168.114.30
		Sleep, 500
	}
IfWinNotExist MetaView Explorer - 192.168.114.30
	{
		Run "C:\Program Files (x86)\Metaswitch\MetaView Explorer\metaviewexplorerla.exe",,UseErrorlevel
		If ErrorLevel = ERROR
			GoSub, Messageit11
		WinActivate, MetaView Explorer - 192.168.114.30
		Sleep, 500
	}
Return
}
;------------------------------------
OpenWeb:
{
IfWinNotExist 192.168.114.40
	{
		Run "http://192.168.114.40:8087",,UseErrorlevel
		If ErrorLevel = ERROR
			GoSub, Messageit11
		WinActivate, 192.168.114.40
		Sleep, 1800
		WinActivate, 192.168.114.40
	}
else
	{
		WinActivate, 192.168.114.40
		Sleep 500
	}
Return
}
;------------------------------------
OpenBethelINF:
{
WinGet,state,MinMax,10.3.5.9 - PuTTY
if state = -1 ;Window is minimized
	{
		WinActivate,10.3.5.9 - PuTTY
		WinSetTitle,10.3.5.9 - PuTTY,,Bethel Inteliflex 10.3.5.9
		WinActivate,Bethel Inteliflex 10.3.5.9
		Sleep, 500
	}
else ;Window is not minimized but on screen
	{
		WinActivate,10.3.5.9 - PuTTY
		WinSetTitle,10.3.5.9 - PuTTY,,Bethel Inteliflex 10.3.5.9
		WinActivate,Bethel Inteliflex 10.3.5.9
		Sleep, 500
	}
IfWinNotExist Bethel Inteliflex 10.3.5.9
	{
		Run "C:\Program Files (x86)\PuTTY\putty.exe" -load "Bethel-Inteliflex INFI",,UseErrorlevel
		If ErrorLevel = ERROR
			GoSub, Messageit11
		WinActivate,10.3.5.9 - PuTTY
		Sleep, 500
		WinSetTitle,10.3.5.9 - PuTTY,,Bethel Inteliflex 10.3.5.9
		WinActivate,Bethel Inteliflex 10.3.5.9
		Sleep, 500
		WinMove,Bethel Inteliflex 10.3.5.9,,242,177
		Sleep, 500
		WinActivate,Bethel Inteliflex 10.3.5.9
		Send, %infiun%{ENTER}
		Sleep, 500
		SendRaw, %infipw%
		Send,{ENTER}
		Sleep, 500
	}
Return
}
;------------------------------------
OpenGoreRdINF:
{
WinGet,state,MinMax,10.3.5.27 - PuTTY
if state = -1 ;Window is minimized
	{
		WinActivate,10.3.5.27 - PuTTY
		WinSetTitle,10.3.5.27 - PuTTY,,Gore Rd Inteliflex 10.3.5.27
		WinActivate,Gore Rd Inteliflex 10.3.5.27
		Sleep, 500
	}
else ;Window is not minimized but on screen
	{
		WinActivate,10.3.5.27 - PuTTY
		WinSetTitle,10.3.5.27 - PuTTY,,Gore Rd Inteliflex 10.3.5.27
		WinActivate,Gore Rd Inteliflex 10.3.5.27
		Sleep, 500
	}
IfWinNotExist Gore Rd Inteliflex 10.3.5.27
	{
		Run "C:\Program Files (x86)\PuTTY\putty.exe" -load "Gore Rd-Inteliflex INF2",,UseErrorlevel
		If ErrorLevel = ERROR
			GoSub, Messageit11
		WinActivate,10.3.5.27 - PuTTY
		Sleep, 500
		WinSetTitle,10.3.5.27 - PuTTY,,Gore Rd Inteliflex 10.3.5.27
		WinActivate,Gore Rd Inteliflex 10.3.5.27
		Sleep, 500
		WinMove,Gore Rd Inteliflex 10.3.5.27,,242,177
		Sleep, 500
		WinActivate,Gore Rd Inteliflex 10.3.5.27
		Send, %infiun%{ENTER}
		Sleep, 500
		SendRaw, %infipw%
		Send,{ENTER}
		Sleep, 500
	}
Return
}
;------------------------------------
OpenTurnerINF:
{
WinGet,state,MinMax,10.3.3.9 - PuTTY
if state = -1 ;Window is minimized
	{
		WinActivate,10.3.3.9 - PuTTY
		WinSetTitle,10.3.3.9 - PuTTY,,Turner Inteliflex 10.3.3.9
		WinActivate,Turner Inteliflex 10.3.3.9
		Sleep, 500
	}
else ;Window is not minimized but on screen
	{
		WinActivate,10.3.3.9 - PuTTY
		WinSetTitle,10.3.3.9 - PuTTY,,Turner Inteliflex 10.3.3.9
		WinActivate,Turner Inteliflex 10.3.3.9
		Sleep, 500
	}
IfWinNotExist Turner Inteliflex 10.3.3.9
	{
		Run "C:\Program Files (x86)\PuTTY\putty.exe" -load "Turner-Inteliflex INFT",,UseErrorlevel
		If ErrorLevel = ERROR
			GoSub, Messageit11
		WinActivate,10.3.3.9 - PuTTY
		Sleep, 500
		WinSetTitle,10.3.3.9 - PuTTY,,Turner Inteliflex 10.3.3.9
		WinActivate,Turner Inteliflex 10.3.3.9
		Sleep, 500
		WinMove,Turner Inteliflex 10.3.3.9,,242,177
		Sleep, 500
		WinActivate,Turner Inteliflex 10.3.3.9
		Send, %infiun%{ENTER}
		Sleep, 500
		SendRaw, %infipw%
		Send,{ENTER}
		Sleep, 500
	}
Return
}
;------------------------------------
OpenONDA:
{
;R:\shared\NOC-Tier 1\SOUTH NOC  specific Repair Info\PEAK specific info\ONDA logins
;rtechfive	rT3ch1054u!
;https://citrix.oxfordnetworks.com/vpn/index.html
;O:\ONDA
;C:\Program Files\Internet Explorer\iexplore.exe

IfWinNotExist Oxford Networks - ONDA
	{
		Run, \\files\apps\onda\,,UseErrorlevel
		If ErrorLevel = ERROR
			GoSub, Messageit11
		WinActivate, Oxford Networks - ONDA
		Sleep, 800
		WinActivate, Oxford Networks - ONDA
	}
else
	{
		WinActivate, Oxford Networks - ONDA
		Sleep 500
	}
Return
}
;------------------------------------
;------------------------------------
ClipCursor( Confine=True, x1=0 , y1=0, x2=1, y2=1 ) 
{
VarSetCapacity(R,16,0),  NumPut(x1,&R+0),NumPut(y1,&R+4),NumPut(x2,&R+8),NumPut(y2,&R+12)
Return Confine ? DllCall( "ClipCursor", UInt,&R ) : DllCall( "ClipCursor" )
;DllCall("DeregisterShellHookWindow","Uint",WinExist("ahk_pid " . DllCall("GetCurrentProcessId") ) )
}
;------------------------------------
LockMouse:
{
WinGetPos, VarX, VarY, Width, Height, A
VarX2 := VarX + Width
VarY2 := VarY + Height
ClipCursor(TRUE, VarX, VarY, VarX2, VarY2)
Return
}
;------------------------------------
WM_COMMNOTIFY(wParam) 
{
WinGetPos,x,y,,,%menutitle%
xpos := (x -50)
ypos := (y +40)
if (wParam = 1027) 
	{ ; AHK_DIALOG
	Process, Exist
	DetectHiddenWindows, On
	if WinExist("ahk_class #32770 ahk_pid " . ErrorLevel) 
		{
		WinGetPos,,, w
		WinMove,x%xpos% y%ypos%
		}
	}
Return
}
;------------------------------------
;onTop:
; if !WinExist("This Input Box")  ; <-- title of the input or msgbox
;   return
;  WinSet, AlwaysOnTop, "window title"
; SetTimer, onTop, off
;------------------------------------EXIT APP
Exit:
{
Gui, Destroy
ClipCursor(FALSE,0,0,0,0)
ExitApp
}
GuiClose:
GoTo Exit
GuiEscape:
GoTo Exit
Esc::
GoTo Exit
!c:: ;alt-c
GoTo Exit

ExitApp
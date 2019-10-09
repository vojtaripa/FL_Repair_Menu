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
menutitle = PEAK REPAIR MENU 7.11.17 ;07/11/2017
shelf := 1 ;always 1 shelf
slot := 0
port := 0
ont := 0
atmgrp := 0
choice := 0
pon := 0
tn := 0
mac := 0
down := 0
up := 0
avail := 0
tty = 0
equip = 0
line := 0
nhorme := 0
dslmodechoice := 0
adtran := 0
1124 := 0
5kList := 0
appw := 0
each := 0
5kChoice := 0
infi := 0
unique := 0
session := 0
index := 0
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
item := 1
mode := 0
name := 0
nbr := 0
state := 0
repeat = false
cntr := 0
c15 := false
ini := false
Ch = 1 ;default choice for GUIs
old = yes
waiting := true ;pause GUI and wait for response
fileloc = c:\Program Files\peak menu\
fileloc1 = c:\public\desktop\logs
iniun = intel 
inipw = onfiber1`% 
dms10pw = onfiber1
peakradiusun = peak
peakradiuspw = Repair1_4p3ak
peakswitchun = PEAK
peakswitchpw = Repair1_4peak
peaktacacsun = peak
peaktacacspw = Repair1_4p3ak
;------------------------------------ARRAY DEFINITIONS ADTRAN 5000
arr := Object()
arr[1] := "10.3.100.21" ;Andover
arr[2] := "10.3.100.22" ;East Andover
arr[3] := "10.3.100.45" ;Albany
arr[4] := "10.3.5.36" ;Bethel COT
arr[5] := "10.3.5.20" ;Bethel2
arr[6] := "10.3.100.73" ;Intervale Rd
arr[7] := "10.3.100.74" ;Vernon St
arr[8] := "10.3.100.112" ;Buckfield
arr[9] := "10.3.100.34" ;Spring Rd
arr[10] := "10.3.100.94" ;Bryant Pond
arr[11] := "10.3.23.2" ;Biddeford
arr[12] := "10.3.100.109" ;Canton
arr[13] := "10.3.100.46" ;Stetson Rd
arr[14] := "10.3.100.43" ;Brighton Hill
arr[15] := "10.3.100.42" ;E Hebron
arr[16] := "10.3.100.52" ;Hebron
arr[17] := "10.3.100.68" ;Sodom Rd
arr[18] := "10.3.100.116" ;Hanover
arr[19] := "10.3.100.114" ;Locke Mills
arr[20] := "10.3.100.84" ;Greenwood Rd
arr[21] := "10.3.100.28" ;N Norway
arr[22] := "10.3.8.9" ;Norway
arr[23] := "10.3.100.41" ;Pleasant Pond
arr[24] := "10.3.100.91" ;N Turner
arr[25] := "10.3.100.89" ;Bear Pond Rd
arr[26] := "10.3.100.44" ;Sunday River
arr[27] := "10.3.100.13" ;N Newry
arr[28] := "10.3.100.4" ;Roxbury Pond
arr[29] := "10.3.11.21" ;Sumner COT
arr[30] := "10.3.100.108" ;W Sumner
arr[31] := "10.3.100.88" ;Lower Sumner Hill
arr[32] := "10.3.100.55" ;Shagg Pond
arr[33] := "10.3.100.29" ;S Paris
arr[34] := "10.3.3.32" ;Turner COT
arr[35] := "10.3.3.5" ;Turner2
arr[36] := "10.3.100.113" ;Upper St
arr[37] := "10.3.100.54" ;Blue Rock
arr[38] := "10.3.100.5" ;Upton
arr[39] := "10.3.100.50" ; Tuell Town
arr[40] := "10.3.100.93" ;W Paris1
arr[41] := "10.3.100.115" ;W Paris2
arr[42] := "10.3.100.25" ;W Bethel
;------------------------------------ARRAY DEFINITIONS ADTRAN 1124
arr[44] := "10.3.100.83" ;Sawin Hill Rd
arr[45] := "10.3.100.76" ;Grover Hill
arr[46] := "10.3.100.51" ;Rosenberg Rd
arr[47] := "10.3.100.118" ;Streaked Mtn
arr[48] := "10.3.100.101" ;Cushman Rd
arr[49] := "10.3.100.102" ;Rowe Hill Rd1
arr[50] := "10.3.100.103" ;Rowe Hill Rd2
arr[51] := "10.3.100.104" ;Route 232
arr[52] := "10.3.100.105" ;S Main St1
arr[53] := "10.3.100.117" ;S Main St2
arr[54] := "10.3.100.47" ;Church St1
arr[55] := "10.3.100.48" ;Church St2
arr[56] := "10.3.100.81" ;Watson Rd
arr[57] := "10.3.100.82" ;Dunn Rd
arr[58] := "10.3.100.90" ;Pratt Hill Rd1
arr[59] := "10.3.100.110" ;Pratt Hill Rd2
arr[60] := "10.3.100.56" ;Sunday River Golf Course
arr[61] := "10.3.100.100" ;Dakin Ln
arr[62] := "10.3.100.98" ;Main St1
arr[63] := "10.3.100.99" ;Main St2
arr[64] := "10.3.100.85" ;Bradeen Rd
arr[65] := "10.3.100.86" ;Upper Sumner Hill
arr[66] := "10.3.100.87" ;Gammon Rd
arr[67] := "10.3.100.71" ;E Hebron Rd1
arr[68] := "10.3.100.72" ;E Hebron Rd2
arr[69] := "10.3.100.75" ;Little Wilson Pond
arr[70] := "10.3.100.77" ;Flat Rd
arr[71] := "10.3.100.78" ;Meadowbrook Bridge Rd1
arr[72] := "10.3.100.70" ;Meadowbrook Bridge Rd2
arr[73] := "10.3.100.79" ;North Rd
arr[74] := "10.3.100.80" ;Gilead Rd
arr[75] := "10.3.100.96" ;Koskella Rd1
arr[76] := "10.3.100.97" ;Koskella Rd2
arr[77] := "10.3.100.95" ;Porter Rd1
arr[78] := "10.3.100.49" ;Porter Rd2
arr[80] := "10.3.5.27" ;INF2
arr[81] := "10.3.5.9" ;INFI
arr[82] := "10.3.3.9" ;INFT
;------------------------------------paired with arr
arr1 := Object()
arr1[0] := "---------------NORTH ADTRAN 5000s---------------"
arr1[1] := "ANDVMEXAAT1-Andover 5k" ;vdsl cards
arr1[2] := "ANDVMEMAAT1-E Andover 5k" ;vdsl cards
arr1[3] := "ALBYMEHUAT1-Albany 5k"
arr1[4] := "BETHMEXAAT1-Bethel COT 5k"
arr1[5] := "BETHMEXAAT2-Bethel2 5k" ;vdsl cards
arr1[6] := "BETHMEINAT1-Intervale Rd 5k"
arr1[7] := "BETHMEVEAT1-Vernon St 5k"
arr1[8] := "BCFDMEXAAT1-Buckfield 5k" ;vdsl cards
arr1[9] := "BCFDMESRAT1-Spring Rd 5k" ;vdsl cards
arr1[10] := "BRPNMEXAAT1-Bryant Pond 5k"
arr1[11] := "BDFRMEJEAT2-Biddeford 5k"
arr1[12] := "CNTNMEXAAT1-Canton 5k"
arr1[13] := "CNTNMESTAT1-Stetson Rd 5k"
arr1[14] := "HBRNMEBRAT1-Brighton Hill 5k"
arr1[15] := "HBRNMEBUAT1-East Hebron 5k"
arr1[16] := "HBRNMEXAAT1-Hebron 5k" ;vdsl cards
arr1[17] := "HBRNMESOAT1-Sodom Rd 5k"
arr1[18] := "HNVRMEMAAT1-Hanover 5k"
arr1[19] := "LCMLMEXAAT1-Locke Mills 5k" ;vdsl cards
arr1[20] := "NNWYMEGRAT1-Greenwood Rd 5k"
arr1[21] := "NNWYMEXAAT1-N Norway 5k" ;vdsl cards
arr1[22] := "NRWYME04AT1-Norway 5k" ;vdsl cards
arr1[23] := "NTRNMEPLAT1-Pleasant Pond 5k"
arr1[24] := "NTRNMEXAAT1-N Turner 5k"
arr1[25] := "NTRNMEBPAT1-Bear Pond Rd 5k"
arr1[26] := "NWRYMESKAT1-Sunday River 5k"
arr1[27] := "NWRYMEBRAT1-N Newry 5k"
arr1[28] := "RXPDMEXAAT1-Roxbury Pond 5k" ;vdsl cards
arr1[29] := "SMNRMEXAAT1-Sumner COT 5k"
arr1[30] := "SMNRMEMAAT1-W Sumner 5k"
arr1[31] := "SMNRMELSAT1-Lower Sumner Hill 5k"
arr1[32] := "SMNRMESPAT1-Shagg Pond 5k"
arr1[33] := "STPRMEWEAT1-S Paris 5k" ;vdsl cards
arr1[34] := "TRNRMEXAAT1-Turner COT 5k"
arr1[35] := "TRNRMEXAAT2-Turner2 5k" ;vdsl cards
arr1[36] := "TRNRMECEAT1-Upper St 5k" ;vdsl cards
arr1[37] := "TRNRMEWOAT1-Blue Rock 5k"
arr1[38] := "UPTNMEXAAT1-Upton 5k" ;vdsl cards
arr1[39] := "WPRSMETUAT1-Tuell Town 5k"
arr1[40] := "WPRSMEXAAT1-West Paris1 5k" ;vdsl cards
arr1[41] := "WPRSMEXAAT2-West Paris2 5k"
arr1[42] := "WBTHMEXAAT1-West Bethel 5k"
;------------------------------------1124
arr1[43] := "---------------NORTH ADTRAN 1124s---------------"
arr1[44] := "ALBYMESAAT1-Sawin Rd 1124"
arr1[45] := "BETHMEGRAT1-Grover Hill 1124"
arr1[46] := "BKFDMEROAT1-Rosenberg Rd 1124"
arr1[47] := "BCFDMESMAT1-Streaked Mtn 1124"
arr1[48] := "BRPNMECUAT1-Cushman Rd 1124"
arr1[49] := "BRPNMEROAT1-Rowe Hill1 1124"
arr1[50] := "BRPNMEROAT2-Rowe Hill2 1124"
arr1[51] := "BRPNMERTAT1-Rte 232 1124"
arr1[52] := "BRPNMESMAT1-S Main St1 1124"
arr1[53] := "BRPNMESMAT2-S Main St2 1124"
arr1[54] := "CNTNMECHAT1-Church St1 1124"
arr1[55] := "CNTNMECHAT2-Church St2 1124"
arr1[56] := "NNWYMEWAAT1-Watson Rd 1124"
arr1[57] := "NNWYMEDUAT1-Dunn Rd 1124"
arr1[58] := "NTRNMEPHAT1-Pratt Hill1 1124"
arr1[59] := "NTRNMEPHAT2-Pratt Hill2 1124"
arr1[60] := "NWRYMEMOAT1-Sun River Golf 1124"
arr1[61] := "SMNRMEDAAT1-Dakin Ln 1124"
arr1[62] := "SMNRMEMSAT1-Main St1 1124"
arr1[63] := "SMNRMEMSAT2-Main St2 1124"
arr1[64] := "SMNRMEBRAT1-Bradeen Rd 1124"
arr1[65] := "SMNRMEUSAT1-Upper Sumner Hill 1124"
arr1[66] := "SMNRMEGAAT1-Gammon Rd 1124"
arr1[67] := "TRNRMEEHAT1-E Hebron1 1124"
arr1[68] := "TRNRMEEHAT2-E Hebron2 1124"
arr1[69] := "TRNRMELWAT1-Little Wilson 1124"
arr1[70] := "WBTHMEFLAT1-Flat Rd 1124"
arr1[71] := "WBTHMEMBAT1-Meadowbrook Bridge Rd1 1124"
arr1[72] := "WBTHMEMBAT2-Meadowbrook Bridge Rd2 1124"
arr1[73] := "WBTHMENOAT1-North Rd 1124"
arr1[74] := "WBTHMEGIAT1-Gilead Rt 2 1124"
arr1[75] := "WPRSMEKOAT1-Koskela Rd1 1124"
arr1[76] := "WPRSMEKOAT2-Koskela Rd2 1124"
arr1[77] := "WPRSMEPOAT1-Porter Rd1 1124"
arr1[78] := "WPRSMEPOAT2-Porter Rd2 1124"
arr1[79] := "---------------NORTH INTELIFLEXs---------------"
arr1[80] := "Gore Rd-Inteliflex INF2"
arr1[81] := "Bethel-Inteliflex INFI"
arr1[82] := "Turner-Inteliflex INFT"
;------------------------------------MENU CHOICE DEFINITIONS
list1 = Device Tasks||Check DSL Stats|Clear DSL Stats|Check DSL MAC|Clear DSL MAC|Change DSL speeds|Change DSL Service-Mode|--------------------|Check FXS Port Status|Reset FXS Port|Run FXS MLT|--------------------|Check Logs
list6 = Other Tasks||Network Pinger Tools|Password Generator|MAC Lookup|Speedtest|ONDA|O360 Guidelines|Inteliflex Spreadsheet
list11 = Service-Mode||ADSL2+|ADSL2+m|ADSL2-multimode|g-dmt|readsl
list18 = DMS Switch Tasks||Check Port Status|Restore Port
list21 = Voice Mail||APmax
list23 = DMS Switches||Bangor C15 Switch|Lewiston C15 Switch|Bethel DMS10 Switch|Turner DMS10 Switch|Norway DMS10 Switch
;------------------------------------
IfNotExist, %fileloc1%
	FileCreateDir, %fileloc1%;create log directory on desktop

GoTo, RepairMenu ;begin program
GoTo, Exit ;end program
;------------------------------------
RepairMenu:
{
Gui,1: Destroy
Menu,tray, UseErrorLevel
Menu, tray, Icon, %fileloc%\toolbox.ico, 1, 1
Gui,1: Default
Gui,1: font,s12,arial YELLOW
Gui,1: Color, NAVY
Gui,1: -AlwaysOnTop +SysMenu -MaximizeBox +Border -Resize
Gui,1: Add,DropDownList, w275 vanswer1 gchoice1, %list1%
Gui,1: Add,DropDownList, w275 vanswer18 gchoice18, %list18%
Gui,1: Add,DropDownList, w275 vanswer21 gchoice21, %list21%
Gui,1: Add,DropDownList, w275 vanswer6 gchoice6, %list6%
Gui,1: show, xcenter ycenter,%menutitle%
Return
}
;------------------------------------
choice1:
{
Gui,1: submit, nohide
if answer1 = Device Tasks
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
if answer1 = Check Logs
{
	choice = 10
	GoSub, GetLogs
}
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
if answer6 = MAC Lookup
	GoSub, MACfind
else
if answer6 = SpeedTest
	GoSub, Speedtest
else
if answer6 = ONDA
	GoSub, OpenONDA
else
if answer6 = O360 Guidelines
	GoSub, O360
else
if answer6 = Inteliflex Spreadsheet
	GoSub, OpenInifolder
Return
}
;------------------------------------
choice18:
{
Gui,1: submit, nohide
if answer18 = DMS Switch Tasks
	Return
else
	GuiControl,, answer18, |%list18%
if answer18 = Check Port Status
	{
		Choice = 15
		GoSub, GetInfo16
	}
else
if answer18 = Restore Port
	{
		Choice = 16
		GoSub, GetInfo16
	}
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
if answer21 = APmax
	GoSub, OpenAPmax
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
Gui,2: Add, DropDownList, r25 w375 v5kChoice Choose1 g5kChosen, %5kList%
Gui,2: show, x%xpos% y%ypos%,REPAIR
Return
}
;------------------------------------
5kChosen:
{
Gui,2: submit, nohide
if 5kChoice = Adtran 5000s
	Return
if 5kChoice = ---------------NORTH ADTRAN 5000s---------------
	Return
if 5kChoice = ---------------NORTH ADTRAN 1124s---------------
	Return
if 5kChoice = ---------------NORTH INTELIFLEXs---------------
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

if (listcntr > 43 && listcntr <78) ;1124 devices
	{
		1124 := true
		if choice = 9 ;cannot run MLT on 1124
			return
	}
else
	1124:= false

GoSub, Messageit7

Return
}
;------------------------------------
OpenAdtranCLI:
{
if (listcntr > 77) ;inteliflex devices
	ini := true
else
	ini := false

IfNotExist, %fileloc1%\Backup
	FileCreateDir, %fileloc1%\Backup
IfExist, %fileloc1%\%ipaddr%.txt
	FileMove, %fileloc1%\%ipaddr%.txt, %fileloc1%\Backup\%ipaddr%.txt

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
		Run "C:\Program Files\PuTTY\putty.exe" -telnet %ipaddr%
		WinActivate, %ipaddr% - PuTTY
		Sleep, 500
		WinSetTitle, %ipaddr% - PuTTY,, %adtran% %ipaddr%
		WinActivate, %adtran% %ipaddr%
		Sleep, 500
		WinMove,%Adtran% %ipaddr%,,242,177
		Sleep, 500
		WinActivate, %Adtran% %ipaddr%
		if ini ;inteliflex
			{
				Send, %iniun%{ENTER}
				Sleep, 500
				SendRaw, %inipw%
				Send, {ENTER}
				Sleep, 500
			}
		else ;not inteliflex
			{
				Send, %peakradiusun%{ENTER}
				Sleep, 500
				SendRaw, %peakradiuspw%
				Send,{ENTER}
				Sleep, 500
				Send, enable{ENTER}
				Sleep, 500
				Send, term{SPACE}len{SPACE}0{ENTER}
				Sleep, 500
			}
	}
if (choice = 1) && (ini = false)
	GoSub, CheckDSL ;dsl
else
if (choice = 3) && (ini = false)
	GoSub, ClearDSL ;dsl
else
if (choice = 5) && (ini = false)
	GoSub, CheckMAC ;eshdsl
else
if (choice = 6) && (ini = false)
	GoSub, ClearMAC ;eshdsl
else
if (choice = 7) && (ini = false)
	GoSub, CheckFXS ;dsl
else
if (choice = 8) && (ini = false)
	GoSub, ResetFXS ;dsl
else
if ((choice = 9) && (ini = false) && (1124 = false))
	GoSub, RunMLT ;dsl
else
if (choice = 12) && (ini = false)
	GoSub, DSLspeed ;dsl
else
if (choice = 13) && (ini = false)
	GoSub, DSLModeMenu ;dsl
Return
}
;---------------------------------------------------------------------------------------------------------
open:
{
Gui,8: Submit, NoHide
Gui,8: Destroy
GoSub, OpenAdtranCLI
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
Openit2:
{
Gui,31: Submit, NoHide
Gui,31: Destroy
GoSub, OpenSwitch
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
Cancelit2:
{
Gui,31: Destroy
GoSub, GetInfo16
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
GetInfo4: ;dsl inteliflex
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
Gui,13: Add,Text, CNAVY,Use TAB or MOUSE to click on fields below`n`nSlots(1-22), Ports(1-24)`n
Gui,13: Font, s12 bold normal, arial
Gui,13: Add,Text, CNAVY x5 y80,CRV:
Gui,13: Add,Edit,LIMIT4 NUMBER cNAVY gValueCheck4 vcrv w24 x65 y79
Gui,13: Add,Text, CNAVY x5 y105,PORT:
Gui,13: Add,Edit,LIMIT2 NUMBER cNAVY gValueCheck4 vport w24 x65 y104
Gui,13: Add,Button,Default x25 y150 disabled gOpenit,CONTINUE
Gui,13: Add,Button,x146 y150 gCancelit1,CANCEL
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
Gui,37: Add,DropDownList, w275 vanswer23 Choose1 gMessageit8, %list23%
waiting := true
Gui,37: Show,x%xpos% y%ypos%,DMS SWITCH
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
Messageit7:
{
WinGetPos,x,y,,,%menutitle%
xpos := (x -50)
ypos := (y +40)
Gui,8: Destroy
Gui,8: Default
Gui,8: font, s12 bold, arial
Gui,8: Color, YELLOW
Gui,8: -AlwaysOnTop +SysMenu -MaximizeBox +Border -Resize
Gui,8: Add,Text,cNAVY,You have chosen to open`n`n %Adtran% %ipaddr%
Gui,8: font, s12 normal, arial
Gui,8: Add,Button,Default x25 y105 gopen,CONTINUE
Gui,8: Add,Button,x146 y105 gcancel,CANCEL
Gui,8: Show,x%xpos% y%ypos%,OPEN DEVICE
Return
}
;------------------------------------
Messageit8: ;DMS message
{
Gui,37: submit, nohide
if answer23 = DMS Switches
	Return
switch = %answer23%
Gui,37: Destroy
WinGetPos,x,y,,,%menutitle%
xpos := (x -50)
ypos := (y +40)
Gui,31: Destroy
Gui,31: Default
Gui,31: font, s12 bold, arial
Gui,31: Color, YELLOW
Gui,31: -AlwaysOnTop +SysMenu -MaximizeBox +Border -Resize
Gui,31: Add,Text,cNAVY,You have chosen to open`n`n %switch%
Gui,31: font, s12 normal, arial
Gui,31: Add,Button,Default x25 y105 gopenit2,CONTINUE
Gui,31: Add,Button,x146 y105 gcancelit2,CANCEL
waiting := true
Gui,31: Show,x%xpos% y%ypos%,OPEN DMS SWITCH
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
ValueCheck4: ;dsl inteliflex
{
GuiControlGet, crv
GuiControlGet, port

If ((crv = "" or crv = 0 or crv > 9999) OR (port = "" or port = 0 or port > 48))
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
;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------
CheckDSL:
{
IfNotExist, %fileloc1%\desktop\Logs\Backup
	FileCreateDir, %fileloc1%\Backup
IfExist, %fileloc1%\%ipaddr%.txt
	FileMove, %fileloc1%\%ipaddr%.txt, %fileloc1%\Backup\%ipaddr%.txt,1

;if north some cards are vdsl and not adsl and need to determine which ones
	
GoSub, GetInfo1
While(waiting)
	Sleep, 500
if (listcntr = 1)
	{
		if (slot = 3 OR slot = 5)
			vdsl := true
		else
			vdsl := false
	}
else
if (listcntr = 2)
	{
		if (slot = 1)
			vdsl := true
		else
			vdsl := false
	}
else
if (listcntr = 5)
	{
		if (slot = 7 OR slot = 9 OR slot = 15)
			vdsl := true
		else
			vdsl := false
	}
else
if (listcntr = 8)
	{
		if (slot = 5 OR slot = 7 OR slot = 9 OR slot = 15 OR slot = 17 OR slot = 19)
			vdsl := true
		else
			vdsl := false
	}
else
if (listcntr = 9)
	{
		if (slot = 1)
			vdsl := true
		else
			vdsl := false
	}
else
if (listcntr = 16)
	{
		if (slot = 1 OR slot = 3 OR slot = 5 OR slot = 7 OR slot = 9)
			vdsl := true
		else
			vdsl := false
	}
else
if (listcntr = 19)
	{
		if (slot = 3 OR slot = 5 OR slot = 7 OR slot = 9)
			vdsl := true
		else
			vdsl := false
	}
else
if (listcntr = 21)
	{
		if (slot = 1 OR slot = 3 OR slot = 5)
			vdsl := true
		else
			vdsl := false
	}
else
if (listcntr = 22)
	{
		if (slot = 3 OR slot = 5 OR slot = 7 OR slot = 9 OR slot = 13)
			vdsl := true
		else
			vdsl := false
	}
else
if (listcntr = 28)
	{
		if (slot = 1)
			vdsl := true
		else
			vdsl := false
	}
else
if (listcntr = 33)
	{
		if (slot = 1 OR slot = 3 OR slot = 5)
			vdsl := true
		else
			vdsl := false
	}
else
if (listcntr = 35)
	{
		if (slot = 15 OR slot = 17)
			vdsl := true
		else
			vdsl := false
	}
else
if (listcntr = 36)
	{
		if (slot = 1 OR slot = 3 OR slot = 5 OR slot = 7 OR slot = 9)
			vdsl := true
		else
			vdsl := false
	}
else
if (listcntr = 38)
	{
		if (slot = 1 OR slot = 3)
			vdsl := true
		else
			vdsl := false
	}
else
if (listcntr = 40)
	{
		if (slot = 15)
			vdsl := true
		else
			vdsl := false
	}
else
if (listcntr = 42)
	{
		if (slot = 5 OR slot = 3 OR slot = 1 OR slot = 7)
			vdsl := true
		else
			vdsl := false
	}

WinActivate, %Adtran% %ipaddr%
Sleep, 500

If (vdsl = true) ;vdsl cards
{
	Send, show{SPACE}interface{SPACE}vdsl{SPACE}%shelf%/%slot%/%port%{ENTER}
	Sleep, 1500
	Send, show{SPACE}run{SPACE}interface{SPACE}vdsl{SPACE}%shelf%/%slot%/%port%{ENTER}
	Sleep, 1500
	Send, show{SPACE}interface{SPACE}vdsl{SPACE}%shelf%/%slot%/%port%{SPACE}performance-statistics{SPACE}15{ENTER}
	Sleep, 1500
	Send, show{SPACE}interface{SPACE}vdsl{SPACE}%shelf%/%slot%/%port%{SPACE}performance-statistics{SPACE}24{ENTER}
	Sleep, 1500
}
else ;adsl cards
{
	Send, show{SPACE}interface{SPACE}adsl{SPACE}%shelf%/%slot%/%port%{ENTER}
	Sleep, 1500
	Send, show{SPACE}run{SPACE}interface{SPACE}adsl{SPACE}%shelf%/%slot%/%port%{ENTER}
	Sleep, 1500
	Send, show{SPACE}interface{SPACE}adsl{SPACE}%shelf%/%slot%/%port%{SPACE}performance-statistics{SPACE}15{ENTER}
	Sleep, 1500
	Send, show{SPACE}interface{SPACE}adsl{SPACE}%shelf%/%slot%/%port%{SPACE}performance-statistics{SPACE}24{ENTER}
	Sleep, 1500
}

WinActivate, %Adtran% %ipaddr%
GoSub, Messageit6
While(waiting)
	Sleep, 500
if ch = 1
	{
		repeat := true
		GoSub, CheckDSL
	}
Return
}
;------------------------------------
CheckDSL1: ;check dsl on 1124
{
IfNotExist, %fileloc1%\Backup
	FileCreateDir, %fileloc1%\Backup
IfExist, %fileloc1%\%ipaddr%.txt
	FileMove, %fileloc1%\%ipaddr%.txt, %fileloc1%\Backup\%ipaddr%.txt,1

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
;------------------------------------
CheckDSL2: ;check dsl on Inteliflex
{
IfNotExist, %fileloc1%\Backup
	FileCreateDir, %fileloc1%\Backup
IfExist, %fileloc1%\%ipaddr%.txt
	FileMove, %fileloc1%\%ipaddr%.txt, %fileloc1%\Backup\%ipaddr%.txt,1

GoSub, GetInfo4
While(waiting)
	Sleep, 500
WinActivate, %Adtran% %ipaddr%
Sleep, 500
Send, 2{ENTER} ;maintenance
Sleep, 500
Send, 3{ENTER} ;provisioning
Sleep, 500
Send, 2{ENTER} ;cross-connect/line association
Sleep, 500
Send, 1{ENTER} ;retrieve line association
Sleep, 500
Send, IDLC{ENTER}
Sleep, 500
Send, 1{ENTER}
Sleep, 500
Send, %crv%{ENTER}  ;after review spreadsheet
Sleep, 500
Send, 3{ENTER}
Sleep, 500
Send, 8{ENTER}
Sleep, 500
Send, 6{ENTER}
Sleep, 500


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
;------------------------------------
DSLModeMenu:
{
GoSub, GetInfo1
While(waiting)
	Sleep, 500
if (listcntr = 1)
	{
		if (slot = 3 OR slot = 5)
			vdsl := true
		else
			vdsl := false
	}
else
if (listcntr = 2)
	{
		if (slot = 1)
			vdsl := true
		else
			vdsl := false
	}
else
if (listcntr = 5)
	{
		if (slot = 7 OR slot = 9 OR slot = 15)
			vdsl := true
		else
			vdsl := false
	}
else
if (listcntr = 8)
	{
		if (slot = 5 OR slot = 7 OR slot = 9 OR slot = 15 OR slot = 17 OR slot = 19)
			vdsl := true
		else
			vdsl := false
	}
else
if (listcntr = 9)
	{
		if (slot = 1)
			vdsl := true
		else
			vdsl := false
	}
else
if (listcntr = 16)
	{
		if (slot = 1 OR slot = 3 OR slot = 5 OR slot = 7 OR slot = 9)
			vdsl := true
		else
			vdsl := false
	}
else
if (listcntr = 19)
	{
		if (slot = 3 OR slot = 5 OR slot = 7 OR slot = 9)
			vdsl := true
		else
			vdsl := false
	}
else
if (listcntr = 21)
	{
		if (slot = 1 OR slot = 3 OR slot = 5)
			vdsl := true
		else
			vdsl := false
	}
else
if (listcntr = 22)
	{
		if (slot = 3 OR slot = 5 OR slot = 7 OR slot = 9 OR slot = 13)
			vdsl := true
		else
			vdsl := false
	}
else
if (listcntr = 28)
	{
		if (slot = 1)
			vdsl := true
		else
			vdsl := false
	}
else
if (listcntr = 33)
	{
		if (slot = 1 OR slot = 3 OR slot = 5)
			vdsl := true
		else
			vdsl := false
	}
else
if (listcntr = 35)
	{
		if (slot = 15 OR slot = 17)
			vdsl := true
		else
			vdsl := false
	}
else
if (listcntr = 36)
	{
		if (slot = 1 OR slot = 3 OR slot = 5 OR slot = 7 OR slot = 9)
			vdsl := true
		else
			vdsl := false
	}
else
if (listcntr = 38)
	{
		if (slot = 1 OR slot = 3)
			vdsl := true
		else
			vdsl := false
	}
else
if (listcntr = 40)
	{
		if (slot = 15)
			vdsl := true
		else
			vdsl := false
	}
	
WinActivate, %Adtran% %ipaddr%
Sleep, 500
Send, term{SPACE}len{SPACE}0{ENTER}
Sleep, 500
if (vdsl = true)
{
	Send, show{SPACE}interface{SPACE}vdsl{SPACE}%shelf%/%slot%/%port%{ENTER}
	Sleep, 500
	Send, show{SPACE}run{SPACE}interface{SPACE}vdsl{SPACE}%shelf%/%slot%/%port%{ENTER}
	Sleep, 500
}
else
{
	Send, show{SPACE}interface{SPACE}adsl{SPACE}%shelf%/%slot%/%port%{ENTER}
	Sleep, 500
	Send, show{SPACE}run{SPACE}interface{SPACE}adsl{SPACE}%shelf%/%slot%/%port%{ENTER}
	Sleep, 500
}
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
if (vdsl = true)
{
	Send, int{SPACE}vdsl{SPACE}%shelf%/%slot%/%port%{ENTER}
	Sleep, 500
	Send, service-mode{SPACE}%mode%{ENTER}
	Sleep, 500
	Send, exit{ENTER}
	Send, exit{ENTER}
	Sleep, 500
	Send, show{SPACE}interface{SPACE}vdsl{SPACE}%shelf%/%slot%/%port%{ENTER}
	Sleep, 500
	Send, show{SPACE}run{SPACE}interface{SPACE}vdsl{SPACE}%shelf%/%slot%/%port%{ENTER}
	Sleep, 500
}
else
{
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
}
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
IfNotExist, %fileloc1%\Backup
	FileCreateDir, %fileloc1%\Backup
IfExist, %fileloc1%\%ipaddr%.txt
	FileMove, %fileloc1%\%ipaddr%.txt, %fileloc1%\Backup\%ipaddr%.txt,1
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

Loop, read, %fileloc1%\%ipaddr%.txt
{
	IfInString, A_LoopReadLine, DN  %tn%
		continue
	IfInString, A_LoopReadLine, LOC
		{
			Loop, parse, A_LoopReadLine, %A_Space%
			equip = %A_LoopReadLine%
			line := SubStr(equip,6,24)
			break
		}
}

WinActivate, %switch% %ipaddr%
Send, csel{SPACE}none{ENTER}
Sleep, 500
Send, ovly{SPACE}ped{ENTER}
Sleep, 3000
If c15
	Send, stat{SPACE}idtl{SPACE}%line%{ENTER}
else
	Send, stat{SPACE}lpk{SPACE}%line%{ENTER}
Sleep, 8000
Send, ****{ENTER}
Sleep, 500
Send, csel{SPACE}all{ENTER}
Sleep, 500
;Send, logo{ENTER}
Return
}
;------------------------------------
RestoreFXS:
{
GoSub, StatFXS
WinActivate, %switch% %ipaddr%
Sleep, 500
Send, ****{ENTER}
Send, csel{SPACE}none{ENTER}
Sleep, 500
Send, ovly{SPACE}ped{ENTER}
Sleep, 3000
if c15
{
Send, busy{SPACE}idtl{SPACE}%line%{ENTER}
Sleep, 1500
Send, rts{SPACE}idtl{SPACE}%line%{ENTER}
Sleep, 1500
Send, stat{SPACE}idtl{SPACE}%line%{ENTER}
Sleep, 8000
}
else
{
Send, busy{SPACE}lpk{SPACE}%line%{ENTER}
Sleep, 1500
Send, rts{SPACE}lpk{SPACE}%line%{ENTER}
Sleep, 1500
Send, stat{SPACE}lpk{SPACE}%line%{ENTER}
Sleep, 8000
Send, ****{ENTER}
Sleep, 500
}
Send, ****{ENTER}
Sleep, 500
Send, csel{SPACE}all{ENTER}
Sleep, 500
;Send, logo{ENTER}
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
;if 1124 cannot run MLT

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
DSLspeed:
{
GoSub, GetInfo1
While(waiting)
	Sleep, 500
if (listcntr = 1)
	{
		if (slot = 3 OR slot = 5)
			vdsl := true
		else
			vdsl := false
	}
else
if (listcntr = 2)
	{
		if (slot = 1)
			vdsl := true
		else
			vdsl := false
	}
else
if (listcntr = 5)
	{
		if (slot = 7 OR slot = 9 OR slot = 15)
			vdsl := true
		else
			vdsl := false
	}
else
if (listcntr = 8)
	{
		if (slot = 5 OR slot = 7 OR slot = 9 OR slot = 15 OR slot = 17 OR slot = 19)
			vdsl := true
		else
			vdsl := false
	}
else
if (listcntr = 9)
	{
		if (slot = 1)
			vdsl := true
		else
			vdsl := false
	}
else
if (listcntr = 16)
	{
		if (slot = 1 OR slot = 3 OR slot = 5 OR slot = 7 OR slot = 9)
			vdsl := true
		else
			vdsl := false
	}
else
if (listcntr = 19)
	{
		if (slot = 3 OR slot = 5 OR slot = 7 OR slot = 9)
			vdsl := true
		else
			vdsl := false
	}
else
if (listcntr = 21)
	{
		if (slot = 1 OR slot = 3 OR slot = 5)
			vdsl := true
		else
			vdsl := false
	}
else
if (listcntr = 22)
	{
		if (slot = 3 OR slot = 5 OR slot = 7 OR slot = 9 OR slot = 13)
			vdsl := true
		else
			vdsl := false
	}
else
if (listcntr = 28)
	{
		if (slot = 1)
			vdsl := true
		else
			vdsl := false
	}
else
if (listcntr = 33)
	{
		if (slot = 1 OR slot = 3 OR slot = 5)
			vdsl := true
		else
			vdsl := false
	}
else
if (listcntr = 35)
	{
		if (slot = 15 OR slot = 17)
			vdsl := true
		else
			vdsl := false
	}
else
if (listcntr = 36)
	{
		if (slot = 1 OR slot = 3 OR slot = 5 OR slot = 7 OR slot = 9)
			vdsl := true
		else
			vdsl := false
	}
else
if (listcntr = 38)
	{
		if (slot = 1 OR slot = 3)
			vdsl := true
		else
			vdsl := false
	}
else
if (listcntr = 40)
	{
		if (slot = 15)
			vdsl := true
		else
			vdsl := false
	}
	Sleep, 500
if (vdsl = true) {
	Gui,19: Submit,NoHide
	Gui,19: Destroy
	WinActivate, %Adtran% %ipaddr%
	Sleep, 500
	Send, show{SPACE}interface{SPACE}vdsl{SPACE}%shelf%/%slot%/%port%{ENTER}
	Sleep, 500
	Send, show{SPACE}run{SPACE}interface{SPACE}vdsl{SPACE}%shelf%/%slot%/%port%{ENTER}
	Sleep, 500
	GoSub, GetInfo10
	While(waiting)
		Sleep, 500
	WinActivate, %Adtran% %ipaddr%
	GoSub, LockMouse
	Send, config{SPACE}t{ENTER}
	Sleep, 500
	Send, int{SPACE}vdsl{SPACE}%shelf%/%slot%/%port%{ENTER}
	Sleep, 500
	Send, latency-path{SPACE}payload-rate{SPACE}downstream{SPACE}0{SPACE}minimum{SPACE}32{SPACE}maximum{SPACE}%down%{ENTER}
	Sleep, 500
	Send, latency-path{SPACE}payload-rate{SPACE}upstream{SPACE}0{SPACE}minimum{SPACE}32{SPACE}maximum{SPACE}%up%{ENTER}
	Sleep, 500
	Send, exit{ENTER}
	Send, exit{ENTER}
	Sleep, 500
	Send, show{SPACE}interface{SPACE}vdsl{SPACE}%shelf%/%slot%/%port%{ENTER}
	Sleep, 500
	Send, show{SPACE}run{SPACE}interface{SPACE}vdsl{SPACE}%shelf%/%slot%/%port%{ENTER}
}else{
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
}
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
OpenSwitch:
{
if answer23 = Bangor C15 Switch
{
	ipaddr := "10.3.1.40"
	switch = "Bangor Switch"
	GoSub, OpenBangor
}
else
if answer23 = Bethel DMS10 Switch
{
	ipaddr := "10.3.5.10"
	switch = "Bethel Switch"
	GoSub, OpenBethel
}
else
if answer23 = Lewiston C15 Switch
{
	ipaddr := "10.3.12.40"
	switch = "Lewiston Switch"
	GoSub, OpenLewiston
}
else
if answer23 = Norway DMS10 Switch
{
	ipaddr := "10.3.8.10"
	switch = "Norway Switch"
	GoSub, OpenNorway
}
else
if answer23 = Turner DMS10 Switch
{
	ipaddr := "10.3.3.10"
	switch = "Turner Switch"
	GoSub, OpenTurner
}
Return
}
;------------------------------------
OpenBangor:
{
c15 := true

IfNotExist, %fileloc1%\Backup
	FileCreateDir, %fileloc1%\Backup
IfExist, %fileloc1%\%ipaddr%.txt
	FileMove, %fileloc1%\%ipaddr%.txt, %fileloc1%\Backup\%ipaddr%.txt,1

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
		Run "C:\Program Files\PuTTY\putty.exe" -load "Bangor Switch",,UseErrorlevel
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
		Send, %peakswitchun%{ENTER}
		Sleep, 500
		SendRaw, %peakswitchpw%
		Send,{ENTER}
		Sleep, 500
		Send, dmstty{SPACE}?{ENTER}
		Sleep, 500
		Loop, read, %fileloc1%\10.3.1.40.txt
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
if (choice = 15)
	GoSub, StatFXS
else
if (choice = 16)
	GoSub, RestoreFXS
Return
}
;------------------------------------
OpenBethel:
{
c15 := false

IfNotExist, %fileloc1%\Backup
	FileCreateDir, %fileloc1%\Backup
IfExist, %fileloc1%\%ipaddr%.txt
	FileMove, %fileloc1%\%ipaddr%.txt, %fileloc1%\Backup\%ipaddr%.txt,1
	
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
		Run "C:\Program Files\PuTTY\putty.exe" -load "Bethel Switch",,UseErrorlevel
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
		Send, %peakswitchun%{ENTER}
		Sleep, 500
		SendRaw, %peakswitchpw%
		Send,{ENTER}
		Sleep, 500
		Send, dmstty{SPACE}?{ENTER}
		Sleep, 500
		Loop, read, %fileloc1%\10.3.5.10.txt
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
if (choice = 15)
	GoSub, StatFXS
else
if (choice = 16)
	GoSub, RestoreFXS
Return
}
;------------------------------------
OpenLewiston:
{
c15 := true

IfNotExist, %fileloc1%\Backup
	FileCreateDir, %fileloc1%\Backup
IfExist, %fileloc1%\%ipaddr%.txt
	FileMove, %fileloc1%\%ipaddr%.txt, %fileloc1%\Backup\%ipaddr%.txt,1

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
		Run "C:\Program Files\PuTTY\putty.exe" -load "Lewiston Switch",,UseErrorlevel
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
		Send, %peakswitchun%{ENTER}
		Sleep, 500
		SendRaw, %peakswitchpw%
		Send,{ENTER}
		Sleep, 500
		Send, dmstty{SPACE}?{ENTER}
		Sleep, 500
		Loop, read, %fileloc1%\%ipaddr%.txt
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
if (choice = 15)
	GoSub, StatFXS
else
if (choice = 16)
	GoSub, RestoreFXS
Return
}
;------------------------------------
OpenNorway:
{
c15 := false

IfNotExist, %fileloc1%\Backup
	FileCreateDir, %fileloc1%\Backup
IfExist, %fileloc1%\%ipaddr%.txt
	FileMove, %fileloc1%\%ipaddr%.txt, %fileloc1%\Backup\%ipaddr%.txt,1
	
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
		Run "C:\Program Files\PuTTY\putty.exe" -load "Norway Switch",,UseErrorlevel
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
		Send, %peakswitchun%{ENTER}
		Sleep, 500
		SendRaw, %peakswitchpw%
		Send,{ENTER}
		Sleep, 500
		Send, dmstty{SPACE}?{ENTER}
		Sleep, 500
		Loop, read, %fileloc1%\10.3.8.10.txt
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
if (choice = 15)
	GoSub, StatFXS
else
if (choice = 16)
	GoSub, RestoreFXS
Return
}
;------------------------------------
OpenTurner:
{
c15 := false

IfNotExist, %fileloc1%\Backup
	FileCreateDir, %fileloc1%\Backup
IfExist, %fileloc1%\%ipaddr%.txt
	FileMove, %fileloc1%\%ipaddr%.txt, %fileloc1%\Backup\%ipaddr%.txt,1
	
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
		Run "C:\Program Files\PuTTY\putty.exe" -load "Turner Switch",,UseErrorlevel
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
		Send, %peakswitchun%{ENTER}
		Sleep, 500
		SendRaw, %peakswitchpw%
		Send,{ENTER}
		Sleep, 500
		Send, dmstty{SPACE}?{ENTER}
		Sleep, 500
		Loop, read, %fileloc1%\10.3.3.10.txt
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
if (choice = 15)
	GoSub, StatFXS
else
if (choice = 16)
	GoSub, RestoreFXS
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

		Run, "%fileloc%\Network Pinger\Network Pinger.exe",,UseErrorlevel
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
		Run, "%fileloc%\PasGen.exe",, UseErrorlevel
		If ErrorLevel = ERROR
			GoSub, Messageit11
		WinActivate, Free Password Generator
		Sleep, 1800
	}
Return
}
;------------------------------------
MXToolbox:
{
Run, C:\Program Files\Google\Chrome\Application\Chrome.exe http://mxtoolbox.com/,,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
Sleep, 500
Return
}
;------------------------------------
MACfind:
{
Run, C:\Program Files\Google\Chrome\Application\Chrome.exe http://www.coffer.com/mac_find/,,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
Sleep, 1800
Return
}
;------------------------------------
Neustar:
{
Run, C:\Program Files\Google\Chrome\Application\Chrome.exe http://numbering.neustar.biz/,,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
Sleep, 1800
Return
}
;------------------------------------
Fairpoint:
{
Run, C:\Program Files\Google\Chrome\Application\Chrome.exe https://vfoprod-fairpoint.activationnow.com/,,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
Sleep, 1800
Return
}
;------------------------------------
Speedtest:
{
Run, C:\Program Files\Internet Explorer\iexplore.exe http://speedtest.firstlight.net/,,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
WinActivate, 
Sleep, 1800
Return
}
;------------------------------------
OpenAPmax:
{
Run, "C:\Program Files\Innovative Systems\APmax\APmax.exe",,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
Sleep, 1500
Return
}
;------------------------------------
GetLogs:
{
Run, "C:\public\desktop\logs",,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
Sleep, 1500
Return
}
;------------------------------------
O360:
{
loc = "C:\Program Files\peak menu\omnia360 repair 062017.pdf"
Run, C:\Program Files\Google\Chrome\Application\Chrome.exe %loc%,,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
Sleep, 1800
Return
}
;------------------------------------
OpenINIfolder:
{
;\\FILES\Central\shared\NOC-REPAIR\1124 Inteliflex Spreadsheets
Run, \\FILES\Central\shared\NOC-REPAIR\1124 Inteliflex Spreadsheets,,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
Sleep, 1500
Return
}
;------------------------------------
OpenONDA:
{
SetWorkingDir, C:\Program Files (x86)\ONDA
Run, C:\Program Files\ONDA\ONDA.exe,,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
Sleep, 1500
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
------------------------------------EXIT APP
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
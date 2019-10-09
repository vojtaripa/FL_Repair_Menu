;Brian Dube, 2017
;Update IAD ACLs for Sophos VPN
;------------------------------------
#SingleInstance Force
#installKeybdHook
#Persistent
#NoTrayIcon
SetTitleMatchMode, 2
DetectHiddenWindows, ON
;------------------------------------
index := 156
maxrows := 1
un = admin
pw = bayring1
exit = no
adtran = 64.140.251.62
name = Little Bay Lobster

;filepath = \\files\Central\shared\NOC-Tier 1\SOUTH NOC  specific Repair Info\BR  EQUIPMENT INFO & TESTING DOCS-VARIOUS\(IAD) info\2017-02-07 IAD WAN IP List.xlsx
filepath = %userprofile%\desktop\iads.xlsx
;------------------------------------
IfNotExist, %USERPROFILE%\desktop\Logs
	FileCreateDir, %USERPROFILE%\desktop\Logs ;create log directory on desktop

;oWorkbook := ComObjGet(filepath)
GoSub, ChooseIAD
;GoSub, GetIAD
;MsgBox,48,REPAIR,Ended with %adtran%`n%name%`n`n
ExitApp
;------------------------------------
;------------------------------------
GetIAD:
{
Loop, %maxrows%
{
adtran := oWorkbook.Worksheets("fail").Range("A" index).Value
name := oWorkbook.Worksheets("fail").Range("B" index).Value

;MsgBox,307,REPAIR,Updating %adtran%`n%name%`n`n
;IfMsgBox, No
;	{
;		index := index + 1
;		Continue
;	}
;IfMsgBox, Cancel
;	Break
	
GoSub, OpenIAD
;if 6xx series IAD need to break here
if exit = yes
	{
		index := index + 1
		exit = no
		continue
	}
else
	{
		GoSub, NOT6xx
		exit = no
		index := index + 1
	}
} ;end loop
Return
}
OpenIAD:
{
Run "C:\Program Files (x86)\PuTTY\putty.exe" -telnet "%adtran%"
WinWaitActive, %adtran% - PuTTY
Sleep, 500
WinSetTitle,- PuTTY,, %adtran% %name%
WinMove,%adtran% %name%,,242,177
WinActivate, %adtran% %name%
Sleep, 500
Send, %un%{ENTER}
Sleep, 500
Send, %pw%{ENTER}
Sleep, 500
Return
}
NOT6xx:
{
Send, enable{ENTER}
Sleep, 500
Send, %pw%{ENTER}
Sleep, 500
Send, term{SPACE}len{SPACE}0{ENTER}
Sleep, 500
Send, show{SPACE}ip{SPACE}access-list{ENTER}
Sleep, 500
GoSub, AddACL
Sleep, 500
Return
}
;----------------------------------
AddACL:
{
WinActivate, %adtran% %name%
Send, conf{SPACE}t{ENTER}
Sleep, 500
Send, ip{SPACE}access-list{SPACE}standard{SPACE}ADMIN{ENTER}
Sleep, 500
Send, permit{SPACE}66.231.205.128{SPACE}0.0.0.63{ENTER} ; add the new IP to allow here
Sleep, 500
Send, exit{ENTER}
Sleep, 500
Send, auto-link{ENTER}
Sleep, 500
Send, auto-link{SPACE}http{ENTER}
Sleep, 500
Send, auto-link{SPACE}server{SPACE}66.231.205.134{ENTER}
Sleep, 500
Send, auto-link{SPACE}recontact-interval{SPACE}500{ENTER}
Sleep, 500
Send, ip{SPACE}http{SPACE}access-class{SPACE}ADMIN{SPACE}in{ENTER}
Sleep, 500
Send, ip{SPACE}http{SPACE}secure-access-class{SPACE}ADMIN{SPACE}in{ENTER}
Sleep, 500
Send, exit{ENTER}
Sleep, 500
Send, write{ENTER}
Sleep, 500
Send, show{SPACE}run{ENTER}
Sleep, 500
send, exit{ENTER}
Return
}
;------------------------------------
ChooseIAD:
{
GoSub, GetIP
If (ErrorLevel > 0)
	ExitApp
GoSub, OpenIAD
GoSub, NOT6xx
Return
}
;------------------------------------
GetIP:
{
Gui +OwnDialogs +AlwaysOnTop
InputBox, ipaddr,REPAIR, IP ADDRESS ?,,180,120,635,511
If (ErrorLevel > 0)
	Return
else
If MyFunc(ipaddr) = 0
	{
		MsgBox, 48, REPAIR, Must enter VALID IP ADDRESS!,5
		GoTo GetIP
	}
adtran := ipaddr
Return
}
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
;------------------------------------
Esc:: 
{
WinClose, %adtran% %name%
exit = yes
Return
;ExitApp
}
^c:: ExitApp
ExitApp

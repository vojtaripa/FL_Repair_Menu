;Brian Dube, 2014-2017
;Repair Super Task Menu

; Editted and revised by: Vojta Ripa
; DATE: 02-5-2020
; vojtaripa@yahoo.com - email me if needed.
; written in: autohotkey
; FORMS: https://autohotkey.com/board/


; VOJTA NOTES:
; -----------------------------------------
/* 
NOTEs: 
---------------------------
- STYLE SHEET: https://raw.githubusercontent.com/jNizM/ahk_notepad-plus-plus/master/userDefineLang/default/userDefineLang_AHK.xml 
-(URL - https://www.autohotkey.com/boards/viewtopic.php?t=50)

- VERSION: this new version has green background, old had blue / navy
- LOGS: all devices that are logged in and touched will log user input ect on everyones desktops for future use if needed!! ( you can see everything you did and all kinds of history )
- CANT RUN COMMANDS ON GUIs (CLI ONLY)
- QUESTION: what do each of these mean: w275 vanswer1 gchoice1 and why is there a 'v' and 'g' in-front of each choice.

-to add: add to list 563, add choice 670 'else if' statement that

-READING FROM FILE:
 - each putty session is stored in putty and settings for that session are also stored in putty.
 - by default, most of the sessions have associated logging with them in putty that are saved on users desktop in LOGs folder: C:\Users\vripa\Desktop\Logs (by IP ADDRESS)
 - usually after the session gets exited the logs are cleared
 - file read uses the logs to then read from them and get data, looping through the text of current putty session.


 
 
 
CHANGES:
---------------------------
- background.
- added Perimeta search.
- some passwords added to DMS SWs
- Added Web login to Adtran 5ks
- OpenCalix now working
- added a panel/dropdown for Illuminate for ticket searching, ect.
- able to open websites using one function now.

-added commands to CS15 lewiston, bangore
-added commands to DMS100 portsmouth

-calix autologin
-RDP server autologin.

-changed a lot of menues and options around
-added FL options
- TMARK commands added.

added:
- edge gene
- plane operate
- oneControl
- VPN connections
- skype (DONE)
- JUMP BOX (DONE)
- Outlook
- Ditto
- TeamViewer

ADDED 5ks:
Hampton - 192.168.69.6
Riverwoods - Ridge- 192.168.120.115
Riverwoods - Boulders- 192.168.120.116
Riverwoods - Woods- 192.168.120.117

also added one below on 10-9-2019
EXETER_HOSP_TA5K_1 - 192.168.120.118

-ADDED CONFIG CUBE LOGIN - 69.168.14.56 
		admin
		calix100%
		en
		mS8urDog4#

-getting into segtel (CALIX) and G4 network. (3k and turnstone)

(DONE)Segtel customes PORT INFO LINK.


other tools.

-SBC now failing over to Perimeta if number not found!

-added the function  CS15commands to execute numerous commands




REMOVED:
VoIP Tracking 1.0
VoIP Tracking 2.0


TODO:
---------------------------
- ( DONE )organize code 
- ( DONE )organize menu into data voice, ect.. 
- see who uses it and what they need to add.. 
- ( DONE )go back to menu after task is done so script doesnt have to be re-launched.
- ( DONE )add perimeta in list of SBCs - 
  ( DONE )Perimeta (10.3.112.10) -Williston (we dont use much)
  ( DONE )Perimeta (10.2.2.110) -LEWISTON
 (OTHER Perimeta functions)
- make sure everything in MT putty matches with repair menu
- ( DONE )start to translate every website in here
- ( DONE )use remote drives and folders in here
- ( DONE )organize by: OXFORD, FL, or BAYRING and  have links you need for each.
- ( DONE )Open new ticket?
- ( DONE )fix file paths ect.
- ( DONE )add my login to things that prompt for login ex. LEWISTON GEAR.
- ( DONE )run through all options and functions, which do I need? dont need.. 

- ( DONE )DATA VS VOICE

- ( DONE , can make more changes later..)DIVIDE BY CUSTOMER TYPE: 

- ( DONE )add PCAP for DMS SWITCHES


LEARNING:
-------------
LINK: https://www.macrocreator.com/help/

VIDEO 1:
Covered in this tutorial: Run, Window, ImageSearch, Control, Mouse, Pause, Text, MessageBox, Goto and File.

VIDEO 2:
exporting to files.. 
 
 -variables - %var%
 for image make sure to use - window, click in center, 
 
 -reading from file! (or source?)
 Loop - Read - file (loop)
 aloopreadline variable %a_LoopReadLine% (gets each line of file) - same for "check health"?
 then use regex to filter the input you are getting ex. only numbers..
 
 -arrays:
 parse numbers ( output of long string)
 
 create: variable, value is [x,y,z]
 to push/ input into array: functions , check array object, push into it and source
 to show: user for loop of NumArray
 specific: % NumArray[8] - will display the 9th item in array
 
 


Web LINKS:
-------------------
(DONE) Illuminate - new ticket - https://illuminate.firstlight.systems/illuminate/ticketing/new_ticket

(DONE) Oxford old ticket system - https://oxf-p.saas.chrsolutions.com/main.aspx#
(DONE) Bayring/WorldPath Job Tracking - https://bayringtracking.firstlight.net/search.php

SharePoint FL - 
OneNote FirstLight - https://techvalleycom.sharepoint.com/:o:/r/sites/RepairCenter/_layouts/15/WopiFrame.aspx?sourcedoc=%7Bf852ad69-a4a9-493b-a148-ade25df08675%7D&action=edit&wd=target%28Guides.one%7C96725bb9-3393-4a56-b96a-262fa6775fd3%2FEQUIPMENT%7C9c73f17d-4dfd-408f-b647-697df28a81b4%2F%29
(DONE) Solarwinds FL Data ckts - https://solarwinds.corp.techvalleycom.com/Orion/NetPerfMon/Resources/NodeSearchResults.aspx?


(DONE) CS 15 commands and notes - https://techvalleycom.sharepoint.com/sites/RepairCenter/_layouts/15/WopiFrame.aspx?sourcedoc={f852ad69-a4a9-493b-a148-ade25df08675}&action=edit&wd=target%28Guides.one%7C96725bb9-3393-4a56-b96a-262fa6775fd3%2FC15%20-%20CLI%7C89f6d457-1785-4e85-8308-00be6fa94be3%2F%29
(DONE) T-Mark info - https://techvalleycom.sharepoint.com/sites/RepairCenter/_layouts/15/WopiFrame.aspx?sourcedoc={f852ad69-a4a9-493b-a148-ade25df08675}&action=edit&wd=target%28Guides.one%7C96725bb9-3393-4a56-b96a-262fa6775fd3%2FTMARC%28340%2C%203348S%2C%203312SC%5C%29%20-%20CLI%20%7C9b870561-ab24-4d35-9259-9df3042e5ba9%2F%29

MT Putty project VOJTA - https://techvalleycom-my.sharepoint.com/personal/jroyal_firstlight_net/_layouts/15/WopiFrame.aspx?sourcedoc={84b85386-2817-4e6c-9055-43808c5d1078}&action=view&wd=target%28New%20Section%201.one%7C7d287e0f-9932-4e8a-ad48-d59b877f0f9f%2FMT%20Putty%20Network%20%20managed%20equipment%20project%20update%7C0abc2133-2ebf-4691-88fd-5f6b419aedbc%2F%29

(DONE) VoIP - META Web - http://192.168.114.40:8087/

SIP Error Messages - https://en.wikipedia.org/wiki/List_of_SIP_response_codes#4xx%E2%80%94Client_Failure_Responses

VPNs
-------------------




Remote Servers
-------------------
- oxford (DONE)
- bayterm (DONE)
- Sniffer Box (DONE)
- meta explorer? (DONE)


Other programs:
-------------------
Calix (DONE)
Edge Gene (DONE) 
One Control (DONE) 
skype (DONE)
JUMP BOX (DONE) 
accession (DONE)
commportal (DONE)
snip it tool
WIN SCP FOR Lewiston CS 15 logs
Solarwinds real time


-VPNs
--------------------
-SOFOS? (dont believe I have access)
-ANY CONNECT (everyday) (DONE) 
-FL VPN (DONE) 
-SVPN


-(DONE) FIX PATHS... (remote devices) 


- all functions in CS 15 ( DONE SOME)
look at the number various ways ect. (DONE)
then other functions (dropdown list?)(TODO)

- chain a bunch of functions to open stuff I use every day (DONE, TEST?)
- similar button to close.

-tmark login and do all basic commands (DONE)


(DONE) edge gene
(DONE) plane operate
(DONE) oneControl

LOOK FOR TODO or n/a ( DONE )

- tutorial


;WATCH VIDEOS:
;https://www.macrocreator.com/help/

-(DONE) work on and finish list 25 with places to find cust records.


-add both to voip:
-(DONE) commportal assistant
-(DONE) accession comm 


(DONE) ADDED:
Hampton - 192.168.69.6
Riverwoods - Ridge- 192.168.120.115
Riverwoods - Boulders- 192.168.120.116
Riverwoods - Woods- 192.168.120.117




; add loading screen to make sure users know that script is still running...
;

-(DONE)  ADD CONFIG CUBE LOGIN - 69.168.14.56 
		admin
		calix100%
		en
		mS8urDog4#

- (DONE) work on getting into segtel (CALIX) and G4 network. (3k and turnstone)

- Button to start up still not working, appears as it continues to run after putting phone number in and hitting the OK button...




-(DONE)Segtel customes - LINK: https://segnet.wholesaleadmin.segnet.com/dslqual.cgi?command=showquals&status=installed&orderby=foc_date%20desc login - tvccsr / tvc9182r
-SOVERNET!!! - only keen?
-(DONE) intelliquent portal?
-(DONE) solarwinds support
-(DONE) VNC screens
-(DONE) NEW FL customer info (HPBX) - from nicole ;https://techvalleycom.sharepoint.com/:f:/r/cloudcommunications/Shared%20Documents/~Customer%20Folders~?csf=1&e=UOHFFm
-OTHER 


-(DONE)  Get genband / CS 15 GUI working. 
- (NEED MORE TESTING.. might not use GUI..) make it similar to Repair one note.
- (DONE) add remining Sovernet sites...
- (DONE)test oxford 5ks
- (DONE WORKS) test password for each... (password failing)

-(DONE)  FOR SBC, if not found check Perimeta automatically..
		BR-4500-1> show registration sipd by-user 7078891163 d

		Registration Cache (Detailed View)    Mon Jun 24 2019  09:52:04


		No matching entries found!

-READ PERIMETA AND SBC OUTPUT AND SEE IF SIP ALG COULD BE ENABLED?
-LOTS OF OPTIONS FOR CS15 and CLONE FUNCTIONS..
-DELETE THE OLD PERIMETA LOGS.. USING IP NOT "PERIMETA"

-2820 tasks??? for T1s.

------------------------------------------
CS15
------------------------------------------
-make drop down menu for cs15 commands.
-FIRST IDENTIFY THE LINE! POTS, SIP, PRI, RCF, NONE (USE call forward guide to identify)
IN LEWISTON SW -
POTS:
PRI:
list dn 784 2900 all all
    DN 784 2900 ROUT RTE 354
ovly rout
	que rout 354	
SIP:
RCF:
NONE:
Blank / ELSE?

Based on the above we can do different fuctions below...

	-checking line POTs
	
	-checking line DID
	 ovly dn
	  que stn 616 0705
	  qact stn 616 0705
	  ****
	  ovly ped
	  stat idtl  <LOC>
	  
	-bouncing line POTs
		stat idtl  <LOC>
		busy idtl  <LOC>
		rts  idtl  <LOC>
		stat idtl  <LOC>
	-bouncing line DID

	-forwarding line POTs
	  ovly dn
	  que stn 616 0705
	  qact stn 616 0705
	  ado stn 616 0705 cfw
	  (ask for forward to #)
	  act stn 616 0705 cfw <FORWARD TO TN>
	  qact stn 616 0705
	  
	-forwarding line DID
	-checking call history

(DONE?) read in the LOC (pretty easy)	
	
- SIP ALG ENBLED / DISABLED ? 
based on readings of perimeta or SBC
	
-FOR 5k tasks, once hit the radio button CLI, then give list of functions!	

CALIX FOR G4
http://calix1.bristol.g4.net  (IE is best for Calix)
                username: mikeu
                password: bayleafg4 
				
*/


/* 
SIP ALG TURNED ON IN PERIMETA:
------------------------------------------
Lewiston-Perimeta-ISC1#show sbc subscriber filter 2075735005 verbose
Warning, there are currently 5648 subscribers in the system.
  Continue? [y/n]:y
    sip:2075735005@192.168.220.25
      Registrar adjacency:   MetasphereCFS
      Delegate registration: No
 X     Local-ID sip:2075735005@72.55.232.237:55146
        Rewritten Contact:    sip:1d8903b2cfd0c88cb5ac5631b65816e4@192.168.12.230:5060
        Remote IP Address:    72.55.232.237 Service Network ID 2
 X       Access Call-ID:       6b71f708-99b08401-e25883de@72.55.232.237
        Access Transport:     UDP
        User Agent:           PolycomVVX-VVX_400-UA/5.2.2.1522_0004f290b190
        Subscriber adjacency: GenericAccess
        Expires in:           3 mins 27 secs (core)
 X      Fast registration:    Not required
        SIP Outbound:         Inactive
 X       Behind NAT:           No (auto-detect)
        Push notifications:   Not required
		
SIP ALG TURNED ON IN SBC:
------------------------------------------	
	look for matching expire times:
	
 x	EXPIRE: 774
 x	Local expire: 774
	Half: 157

IP of phone: <FOLLOWED BY IP>	
INTERNAL IP: CONTACT sip:<TN>@<internal IP>
GET PUBLIC IP / IP TO ADD TO GK / LOG INTO ONSITE EQUIPMENT	

TRANSPORT:
Transport: <UDP OR TCP>



TRUE SPEEDS:
https://truespeed.firstlight.net:9443



*/

;------------------------------------ENVIRONMENT DEFINITIONS
#SingleInstance Force
#installKeybdHook
#Persistent
#NoTrayIcon
SetTitleMatchMode, 2
DetectHiddenWindows, ON






;------------------------------------VARIABLE DEFINITIONS & INITIALIZATIONS
{
menutitle = v.4 NOC REPAIR MENU 2019 ;07/11/2017 -> 02-13-2019

;NUMBERS CHECKED FOR C15
number_of_numbers_checked :=0
type_of_line := 0
route :=0

;settings for Checking Perimeta for SIP-ALG:
Local_ID:= 0
Local_ID_IP:= 0

Access_Call_ID:= 0
Access_Call_ID_IP:= 0

Fast_registration_str:= 0
Fast_registration:= 0

Behind_NAT_str:= 0
Behind_NAT:= 0
;end

goAgain = NO

cs15guiType := 1 ;FOR LEWISTON OR BANGORE CS15 GUI

shelf := 1 ;always 1 shelf
slot := 0
port := 0
ont := 0
atmgrp := 0
choice := 0
pon := 0
ipaddr = 0.0.0.0
tn := 10000 ;MAKING 10000 so that when perimeta runs it wont pull up results with any sub that has a "0".
mypin :=0
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
5kListSover := 0
3kList := 0
TurnStoneList :=0
appw := 0
each := 0
5kChoice := 0
3kChoice := 0
Sover5kChoice := 0
TurnStoneChoice := 0
;NOW CS15 tasks
CS15TaskChoice :=0
CS15TasksList :=0

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
}


;   SBC and IP INFO and paths:
;--------------------------------
{
ActiveSBC = "SBC2" ;set default SBC
SBC1ip = = 192.168.76.28
SBC2ip = = 192.168.76.29
PerimetaName = "Perimeta - Lewiston"
Perimeta = 10.3.112.10 ;NEW
Autoprov = 192.168.201.61 

;FILE LOCATIONS UPDATED:
Rdrive   = \\firstlight.net\groups\LegacyShares\ON\Central
Rdrive1  = \\firstlight.net\groups\LegacyShares\ON\
nocTier1 = \shared\NOC-Tier 1 
decom = \\firstlight.net\groups\LegacyShares\BR\Shares2\Ops\Switch\DMS100 Decommissioning ; ; \\firstlight.net\groups\legacyshares\on
fileloc  = \SOP procedure info Repair-Noc\SOUTH NOC  specific Repair Info ;\\files\Central\shared\NOC-Tier 1\SOUTH NOC  specific Repair Info      \SOUTH NOC  specific Repair Info
fileloc1 = \tech software tools ;\\files\Central\shared\NOC-Tier 1\SOUTH NOC  specific Repair Info\tech software tools
fileloc2 = nocTier1 ; \\files\Central\shared\NOC-Tier 1\

hummer3 = 192.168.200.195

web_address = "https://www.google.com/"; ;Google default
ticket_number = "000000"; ;illuminate ticket number
}

;address-sharepoint = "https://techvalleycom.sharepoint.com/cloudcommunications/Shared'%20Documents/Forms/AllItems.aspx?RootFolder='%2Fcloudcommunications'%2FShared'%20Documents'%2F~Customer'%20Folders~&FolderCTID=0x012000BD46AB4E35EBD9449250AB5E8B526C7F"


;   USERNAMES AND PASSWORDS:
;--------------------------------
{
macusr = readonly
macpwd = m@cDaddy
infiun = intel ;inteliflex
infipw = onfiber1`% ;inteliflex
sbcpw = SIPoxBR&0

task_counter = 0

;autoprov
apun = repair
appw = Jx13UU99

;perimeta
perimeta_un = vripa
perimeta_pw = dkjaA)UFh3re3j

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

;FIRSTLIGHT:
FLusername = admin
FLpasword  = calix100{shiftdown}5{shiftup}
FLEenable  = mS8urDog4#

FLusername2 = admin
FLpasword2  = mn57qp
FLEenable2  = whzt3v3r
;------------------------------------------

newiadpw = calix100`%
dms10pw = onfiber1
albanyun = psnoc
albanypw = portnoc1

;G4 JumpBox:
unG4 = mikeu
pwG4 = bayleafg4

;G4 OSS
oss_username = noc@g4.net
oss_password = noc

;3k LOGIN:
un3ks = ADMIN
pw3ks = gulucuk2007

unTS  = root
pwTS  = Supportc0W

;SEGTEL:
;USERNAME: mursitti
calix_pw_2=Yopeskee42FL
;IP: 10.200.4.60

;Vojta----------------------------------------

;DMS:
dms_un = vripa
dms_pw = Fir~tLi8~123

port_un = vripa
port_pw = vojta123

jumpbox_un= vripa
jumpbox_pw= FeiGhee3

;Calix (oxford)
calix_pw= {shiftdown}f{shiftup}ir{shiftdown}4{shiftup}t{shiftdown}l{shiftup}i8{shiftdown}8{shiftup}123

;Planet Operate:
planetO_un=vripa
planetO_pw={shiftdown}p{shiftup}ls{shiftdown}c{shiftup}hg{shiftdown}m{shiftup}3{shiftdown}1{shiftup};PlsChgM3!

;Edge Gene
edgeG_un=vripa
edgeG_pw={shiftdown}p{shiftup}ls{shiftdown}c{shiftup}hg{shiftdown}m{shiftup}3{shiftdown}1{shiftup};PlsChgM3!


}

arrOxford := Object()
{
;------------------------------------Oxford Networks Adtran 5000s
arrOxford[49] := "10.3.100.21" ;Andover
arrOxford[50] := "10.3.100.22" ;East Andover
arrOxford[51] := "10.3.100.45" ;Albany
arrOxford[52] := "10.3.6.6" ;Augusta
arrOxford[53] := "10.3.1.13" ;Bangor
arrOxford[54] := "10.3.5.36" ;Bethel COT
arrOxford[55] := "10.3.5.20" ;Bethel2
arrOxford[56] := "10.3.100.73" ;Intervale Rd
arrOxford[57] := "10.3.100.74" ;Vernon St
arrOxford[58] := "10.3.100.112" ;Buckfield
arrOxford[59] := "10.3.100.34" ;Spring Rd
arrOxford[60] := "10.3.100.94" ;Bryant Pond
arrOxford[61] := "10.3.23.2" ;Biddeford
arrOxford[62] := "10.3.100.109" ;Canton
arrOxford[63] := "10.3.100.46" ;Stetson Rd
arrOxford[64] := "10.3.100.43" ;Brighton Hill
arrOxford[65] := "10.3.100.42" ;E Hebron
arrOxford[66] := "10.3.100.52" ;Hebron
arrOxford[67] := "10.3.100.68" ;Sodom Rd
arrOxford[68] := "10.3.100.116" ;Hanover
arrOxford[69] := "10.3.100.114" ;Locke Mills
arrOxford[70] := "10.3.100.84" ;Greenwood Rd
arrOxford[71] := "10.3.9.2" ;LEWISTON NEW 11-5-2019
arrOxford[72] := "10.3.12.76" ;LEWISTON2 NEW 12-30-2019
arrOxford[73] := "10.3.100.28" ;N Norway
arrOxford[74] := "10.3.8.9" ;Norway
arrOxford[75] := "10.3.100.41" ;Pleasant Pond
arrOxford[76] := "10.3.100.91" ;N Turner
arrOxford[77] := "10.3.100.89" ;Bear Pond Rd
arrOxford[78] := "10.3.100.44" ;Sunday River
arrOxford[79] := "10.3.100.13" ;N Newry
arrOxford[80] := "10.3.4.12" ;Portland *NEW
arrOxford[81] := "10.3.100.4" ;Roxbury Pond
arrOxford[82] := "10.3.11.21" ;Sumner COT
arrOxford[83] := "10.3.100.108" ;W Sumner
arrOxford[84] := "10.3.100.88" ;Lower Sumner Hill
arrOxford[85] := "10.3.100.55" ;Shagg Pond
arrOxford[86] := "10.3.100.29" ;S Paris
arrOxford[87] := "10.3.3.32" ;Turner COT
arrOxford[88] := "10.3.3.5" ;Turner2
arrOxford[89] := "10.3.100.113" ;Upper St
arrOxford[90] := "10.3.100.54" ;Blue Rock
arrOxford[91] := "10.3.100.5" ;Upton
arrOxford[92] := "10.3.100.50" ; Tuell Town
arrOxford[93] := "10.50.38.54" ; Waterville
arrOxford[94] := "10.3.100.93" ;W Paris1
arrOxford[95] := "10.3.100.115" ;W Paris2

arrOxfordName := Object()
;------------------------------------Oxford Networks Adtran 5000s NORTH
arrOxfordName[48] := "---------------NORTH 5ks---------------"
arrOxfordName[49] := "ALBYMEHUAT1-Andover 5k"
arrOxfordName[50] := "ANDVMEMAAT1-E Andover 5k"
arrOxfordName[51] := "ALBYMEHUAT1-Albany 5k"
arrOxfordName[52] := "AGSTMESTAT1-Augusta 5k" ;NEW
arrOxfordName[53] := "BNGRMEPAAT1-Bangor 5k" ;NEW
arrOxfordName[54] := "BETHMEXAAT1-Bethel COT 5k"
arrOxfordName[55] := "BETHMEXAAT2-Bethel2 5k"
arrOxfordName[56] := "BCFDMEXAAT1-Intervale Rd 5k"
arrOxfordName[57] := "BETHMEVEAT1-Vernon St 5k"
arrOxfordName[58] := "BCFDMEXAAT1-Buckfield 5k"
arrOxfordName[59] := "BCFDMESRAT1-Spring Rd 5k"
arrOxfordName[60] := "BRPNMEXAAT1-Bryant Pond 5k"
arrOxfordName[61] := "BDFRMEJEAT2-Biddeford 5k"
arrOxfordName[62] := "CNTNMEXAAT1-Canton 5k"
arrOxfordName[63] := "CNTNMESTAT1-Stetson Rd 5k"
arrOxfordName[64] := "HBRNMEBRAT1-BrightonHill 5k"
arrOxfordName[65] := "HBRNMEBUAT1-E Hebron 5k"
arrOxfordName[66] := "HBRNMEXAAT1-Hebron 5k"
arrOxfordName[67] := "HBRNMESOAT1-Sodom Rd 5k"
arrOxfordName[68] := "HNVRMEMAAT1-Hanover 5k"
arrOxfordName[69] := "LCMLMEXAAT1-Locke Mills 5k"
arrOxfordName[70] := "LSTNMEASAT1-LEWISTON NEW 5k"
arrOxfordName[71] := "TA5000-LSTN-LEWISTON2 NEW 5k" ;NEW
arrOxfordName[72] := "NNWYMEGRAT1-Greenwood Rd 5k"
arrOxfordName[73] := "NNWYMEXAAT1-N Norway 5k"
arrOxfordName[74] := "NRWYME04AT1-Norway 5k"
arrOxfordName[75] := "NTRNMEPLAT1-Pleasant Pond 5k"
arrOxfordName[76] := "NTRNMEXAAT1-N Turner 5k"
arrOxfordName[77] := "NTRNMEBPAT1-Bear Pond Rd 5k"
arrOxfordName[78] := "NWRYMESKAT1-Sunday River 5k"
arrOxfordName[79] := "NWRYMEBRAT1-N Newry 5k"
arrOxfordName[80] := "PTLDMEFOAT1-Portland" ; NEW
arrOxfordName[81] := "RXPDMEXAAT1-Roxbury Pond 5k"
arrOxfordName[82] := "SMNRMEXAAT1-Sumner COT 5k"
arrOxfordName[83] := "SMNRMEMAAT1-W Sumner 5k"
arrOxfordName[84] := "SMNRMELSAT1-Lower Sumner Hill 5k"
arrOxfordName[85] := "SMNRMESPAT1-Shagg Pond 5k"
arrOxfordName[86] := "STPRMEWEAT1-S Paris 5k"
arrOxfordName[87] := "TRNRMEXAAT1-Turner COT 5k"
arrOxfordName[88] := "TRNRMEXAAT2-Turner2 5k"
arrOxfordName[89] := "TRNRMECEAT1-Upper St 5k"
arrOxfordName[90] := "TRNRMEWOAT1-Blue Rock 5k"
arrOxfordName[91] := "UPTNMEXAAT1-Upton 5k"
arrOxfordName[92] := "WPRSMETUAT1-Tuell Town 5k"
arrOxfordName[93] := "WTVLMEAPAT1-Waterville 5k"
arrOxfordName[94] := "WPRSMEXAAT1-West Paris1 5k"
arrOxfordName[95] := "WPRSMEXAAT2-West Paris2 5k"
;------------------------------------Oxford Networks Adtrran 1124 paired with arr3 
}

;ARRAYS OF IP INFO ECT..
;------------------------------------Portsmouth Adtran 5000s paired with arr1
arr := Object()
{
/*
ADDED:
Hampton - 192.168.69.6
Riverwoods - Ridge- 192.168.120.115
Riverwoods - Boulders- 192.168.120.116
Riverwoods - Woods- 192.168.120.117
*/

arr[2]  := "192.168.120.81" ;199 Constitution
arr[3]  := "192.168.120.82" ;Acquarius
arr[4]  := "192.168.120.83" ;Cocheco Mill
arr[5]  := "192.168.120.41" ;Concord1
arr[6]  := "192.168.120.42" ;Concord2
arr[7]  := "192.168.120.12" ;Danvers
arr[8]  := "192.168.120.43" ;Dover1
arr[9]  := "192.168.120.110" ;Dover2
arr[10] := "192.168.120.112" ;Durham
arr[11] := "192.168.120.113" ;Exeter1
arr[12] := "192.168.120.114" ;Exeter2
arr[13] := "192.168.120.118" ;EXETER_HOSP_TA5K_1 / NEW 10-9-2019
arr[14] := "192.168.120.84" ;Hampton 
arr[15] := "192.168.69.6" ;HMPNNHW1AT2 / Hampton NEW
arr[16] := "192.168.120.47" ;Laconia1
arr[17] := "192.168.120.48" ;Laconia2
arr[18] := "192.168.120.50" ;Lawrence1
arr[19] := "192.168.120.13" ;Lawrence2
arr[20] := "192.168.120.85" ;Lowell
arr[21] := "192.168.120.19" ;Malden
arr[22] := "192.168.120.51" ;Manchester1
arr[23] := "192.168.120.52" ;Manchester2
arr[24] := "192.168.120.49" ;Manchester3
arr[25] := "192.168.120.86" ;Milford
arr[26] := "192.168.120.111" ;Music Hall
arr[27] := "192.168.120.54" ;Nashua1
arr[28] := "192.168.120.55" ;Nashua2
arr[29] := "192.168.120.87" ;Newburyport1
arr[30] := "192.168.120.14" ;Newburyport2
arr[31] := "192.168.120.88" ;Newmarket
arr[32] := "192.168.120.11" ;Peabody
arr[33] := "192.168.120.89" ;Pease
arr[34] := "192.168.120.90" ;Portland1
arr[35] := "192.168.120.91" ;Portland2
arr[36] := "192.168.120.56" ;Portsmouth1
arr[37] := "192.168.120.57" ;Portsmouth2
arr[38] := "192.168.120.63" ;Portsmouth3
arr[39] := "192.168.120.115" ;Riverwoods - Ridge- 
arr[40] := "192.168.120.116" ;Riverwoods - Boulders- 
arr[41] := "192.168.120.117" ;Riverwoods - Woods- 
arr[42] := "192.168.120.58" ;Rochester1
arr[43] := "192.168.120.59" ;Rochester2
arr[44] := "192.168.120.60" ;Rochester3
arr[45] := "192.168.120.92" ;Rye Beach
arr[46] := "192.168.120.61" ;Salem
arr[47] := "192.168.120.62" ;Seabrook
arr[48] := "192.168.120.93" ;Somersworth
arr[49] := "192.168.120.94" ;Wolfeboro

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
arr1[13] := "EXETER_HOSP_1-Exeter Hosp 5k" ;EXETER_HOSP_TA5K_1 Exeter Hospital
arr1[14] := "HMPNNHW1AT1-Hampton 5k"
arr1[15] := "HMPNNHW1AT2-Hampton NEW" ;HMPNNHW1AT2 / Hampton NEW
arr1[16] := "LACNNHNMAT1-Laconia1 5k"
arr1[17] := "LACNNHNMAT2-Laconia2 5k"
arr1[18] := "LWRNMACAAT1-Lawrence1 5k"
arr1[19] := "LWRNMACAAT2-Lawrence2 5k"
arr1[20] := "LWLLMAAPAT1-Lowell 5k"
arr1[21] := "MLDNMAELAT1-Malden 5k"
arr1[22] := "MNCHNHCOAT1-Manchester1 5k"
arr1[23] := "MNCHNHCOAT2-Manchester2 5k"
arr1[24] := "MNCHNHCOAT3-Manchester3 5k"
arr1[25] := "MLFRNHSOAT1-Milford 5k"
arr1[26] := "PTMONHMHAT1-Music Hall 5k"
arr1[27] := "NASHNHWPAT1-Nashua1 5k"
arr1[28] := "NASHNHWPAT2-Nashua2 5k"
arr1[29] := "NBPTMAGRAT1-Newburyport1 5k"
arr1[30] := "NBPTMAGRAT2-Newburyport2 5k"
arr1[31] := "NWMRNHGEAT1-Newmarket 5k"
arr1[32] := "PBDYMACEAT1-Peabody 5k"
arr1[33] := "PTMONH07AT1-Pease /Tradeport 5k" ;added tradeport
arr1[34] := "PTLDMEFOAT1-Portland1 5k"
arr1[35] := "PTLDMEFOAT2-Portland2 5k"
arr1[36] := "PTMONHISAT1-Portsmouth1 5k"
arr1[37] := "PTMONHISAT2-Portsmouth2 5k"
arr1[38] := "PTMONHISAT3-Portsmouth3 5k"
arr1[39] := "EXTRNHR1WAT1-Riverwoods-Ridge" ;192.168.120.115" ;Riverwoods - Ridge- 
arr1[40] := "EXTRNH5TAT1-Riverwoods-Boulders" ;192.168.120.116" ;Riverwoods - Boulders- 
arr1[41] := "EXTRNH7RAT1-Riverwoods-Woods" ;192.168.120.117" ;Riverwoods - Woods- 
arr1[42] := "ROCHNHWEAT1-Rochester1 5k"
arr1[43] := "ROCHNHWEAT2-Rochester2 5k"
arr1[44] := "ROCHNHWEAT3-Rochester3 5k"
arr1[45] := "RYBHNHCEAT1-Rye Beach 5k"
arr1[46] := "SALMNHNBAT1-Salem 5k"
arr1[47] := "SBRKNHNRAT1-Seabrook 5k"
arr1[48] := "SBRKNHNRAT1-Somersworth 5k"
arr1[49] := "WLBONHGSAT1-Wolfeboro 5k"

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
}

;SORVERNET:
arrSover := Object()
{
;arrSover[2]
;arrSover[2]
arrSover[2]  := "172.20.19.76" ;KEEN
arrSover[4]  := "http://ta5-0.el.barr.vt.sover.net/" ;KEEN
arrSover[5]  := "http://ta5-0.he.blfl.vt.sover.net/" ;KEEN
arrSover[6]  := "http://ta5-0.ma.brbo.vt.sover.net/" ;KEEN
arrSover[7]  := "http://ta5-0.ma.burl.vt.sover.net/" ;KEEN
arrSover[8]   := "http://ta5-1.ma.burl.vt.sover.net/" ;KEEN
arrSover[9]   := "http://ta5-0.pk.muhrwk.vt.sover.net/" ;KEEN
;SKIPPED KEEN
arrSover[10]  := "http://ta5-0.sc.mtpl.vt.sover.net/ " ;KEEN
arrSover[11]  := "http://ta5-0.un.mrvl.vt.sover.net" ;KEEN
arrSover[12]  := "http://ta5-0.we.rtld.vt.sover.net/" ;KEEN
arrSover[13]  := "http://ta5-0.ba.stal.vt.sover.net/" ;KEEN
arrSover[14]  := "http://ta5-0.hi.stow.vt.sover.net/ " ;KEEN
arrSover[15]  := "http://ta5-0.wa.wnsk.vt.sover.net/" ;KEEN
arrSover[16]  := "http://ta5-0.wa.wnsk.vt.sover.net/" ;KEEN

arr12 := Object()
arr12[0] := "Adtran 5000s|"
arr12[1] := "------------- SOVER 5ks---------------"
arr12[2] := "TA5-0-WA-KEEN Keen 5k"
arr12[3]  := "--- OTHERS ---" ;OTHER 5ks
arr12[4]  := "Barre" ;OTHER 5ks
arr12[5]  := "Bellows Falls" ;OTHER 5ks
arr12[6]  := "Brattleboro" ;OTHER 5ks
arr12[7]  := "Burlington 0" ;OTHER 5ks
arr12[8]  := "Burlington 1" ;OTHER 5ks
arr12[9]  := "Hardwick" ;OTHER 5ks
;SKIPPED KEEN
arr12[10]  := "Montpelier" ;OTHER 5ks
arr12[11]  := "Morrisville" ;OTHER 5ks
arr12[12]  := "Rutland" ;OTHER 5ks
arr12[13]  := "Saint Albans" ;OTHER 5ks
arr12[14]  := "Stowe" ;OTHER 5ks
arr12[15]  := "Winooksi" ;OTHER 5ks
arr12[16]  := "White River Junction" ;OTHER 5ks
}


;ARRAY FOR ADTRAN 3k's LOGINS: admin/gulucuk2007
arr3000 := Object()
{

;THESE IPS correlate to NAMES BELOW, ex. name - arr10[2]  is   IP - arr3000[2]       SO       "PTMONH19AT1-199 Constitution 5k" is 192.168.120.81
arr3000[2]  := "172.17.194.170"  ;Conway
arr3000[3]  := "172.17.182.152" ;Derry
arr3000[4]  := "172.17.182.170" ;Derry2
arr3000[5]  := "172.17.191.1" ;"Durham/Dover Area" ??
arr3000[6]  := "172.17.181.1" ;"Epping" ??
arr3000[7]  := "172.17.187.171" ;"Franklin"
arr3000[8]  := "172.17.186.1" ;"Keene" ??
arr3000[9]  := "172.17.189.1" ;"Manchester" ??
arr3000[10] := "172.17.190.1" ;"Manchester Cage" ??
arr3000[11] := "172.17.185.1" ;"Merrimack" ??
arr3000[12] := "172.17.183.172" ;"Milford"
arr3000[13] := "172.17.192.170" ;"Nashua"
arr3000[14] := "172.17.188.1"  ;"Peterborough" ??
arr3000[15] := "172.17.195.1" ;"Suncook" ??
arr3000[16] := "172.17.193.171" ;"Wolfeboro"
;------------------------------------LIST OF ADTRANS BY NAME (user friendly names are used instead of IPs)

;https://techvalleycom.sharepoint.com/sites/RepairCenter/_layouts/15/WopiFrame.aspx?sourcedoc={f852ad69-a4a9-493b-a148-ade25df08675}&action=edit&wd=target%28Guides.one%7C96725bb9-3393-4a56-b96a-262fa6775fd3%2F%5BG4%5D%20Equipment%20List%7C00cd3d52-ed15-48a3-8114-aae23191b230%2F%29
arr10 := Object()
arr10[0] := "Adtran 3000s|"
arr10[1] := "------------- SOUTH 3ks---------------"
arr10[2]  := "Conway" 
arr10[3]  := "Derry"
arr10[4]  := "Derry2"
arr10[5]  := "Durham/Dover Area (N/A)" 
arr10[6]  := "Epping(N/A)"
arr10[7]  := "Franklin"
arr10[8]  := "Keene(N/A)"
arr10[9]  := "Manchester(N/A)"
arr10[10] := "Manchester Cage(N/A)"
arr10[11] := "Merrimack(N/A)"
arr10[12] := "Milford"
arr10[13] := "Nashua"
arr10[14] := "Peterborough(N/A)"
arr10[15] := "Suncook(N/A)"
arr10[16] := "Wolfeboro"

;TESTING: https://techvalleycom.sharepoint.com/sites/RepairCenter/_layouts/15/WopiFrame.aspx?sourcedoc={f852ad69-a4a9-493b-a148-ade25df08675}&action=edit&wd=target%28Guides.one%7C96725bb9-3393-4a56-b96a-262fa6775fd3%2F%5BG4%5D%20TA3000%20Troubleshooting%7C0c13a1e1-c090-4500-a8e0-f4164c6888bf%2F%29
}


;ARRAY FOR TurnStones - login - root/Supportc0W
arrTS := Object()
{

;THESE IPS correlate to NAMES BELOW, ex. name - arr10[2]  is   IP - arr3000[2]       SO       "PTMONH19AT1-199 Constitution 5k" is 192.168.120.81
arrTS[2]  := "172.17.194.30"  ;Conway
arrTS[3]  := "172.17.182.30" ;Derry
arrTS[4]  := "172.17.182.31" ;Derry2
arrTS[5]  := "172.17.191.30" ;"Durham/Dover Area" ??
arrTS[6]  := "172.17.181.30" ;"Epping"
arrTS[7]  := "172.17.187.30" ;"Franklin"
arrTS[8]  := "" ;"Keene" ??
arrTS[9]  := "" ;"Manchester" ??
arrTS[10] := "" ;"Manchester Cage" ??
arrTS[11] := "172.17.185.30" ;"Merrimack"
arrTS[12] := "172.17.183.30" ;"Milford"
arrTS[13] := "" ;"Nashua"
arrTS[14] := "172.17.188.30"  ;"Peterborough" ??
arrTS[15] := "172.17.195.30"  ;"Suncook" ??
arrTS[16] := "172.17.193.30"  ;"Wolfeboro"


;------------------------------------LIST OF ADTRANS BY NAME (user friendly names are used instead of IPs)

;https://techvalleycom.sharepoint.com/sites/RepairCenter/_layouts/15/WopiFrame.aspx?sourcedoc={f852ad69-a4a9-493b-a148-ade25df08675}&action=edit&wd=target%28Guides.one%7C96725bb9-3393-4a56-b96a-262fa6775fd3%2F%5BG4%5D%20Equipment%20List%7C00cd3d52-ed15-48a3-8114-aae23191b230%2F%29
arr11 := Object()
arr11[0] := "Turn Stones|"
arr11[1] := "---------TurnStone Location----------"
arr11[2]  := "Conway" 
arr11[3]  := "Derry"
arr11[4]  := "Derry2"
arr11[5]  := "Durham/Dover Area" 
arr11[6]  := "Epping"
arr11[7]  := "Franklin"
arr11[8]  := "Keene (N/A)"
arr11[9]  := "Manchester(N/A)"
arr11[10] := "Manchester Cage(N/A)"
arr11[11] := "Merrimack"
arr11[12] := "Milford"
arr11[13] := "Nashua (N/A)"
arr11[14] := "Peterborough"
arr11[15] := "Suncook"
arr11[16] := "Wolfeboro"

;TESTING: https://techvalleycom.sharepoint.com/sites/RepairCenter/_layouts/15/WopiFrame.aspx?sourcedoc={f852ad69-a4a9-493b-a148-ade25df08675}&action=edit&wd=target%28Guides.one%7C96725bb9-3393-4a56-b96a-262fa6775fd3%2F%5BG4%5D%20TA3000%20Troubleshooting%7C0c13a1e1-c090-4500-a8e0-f4164c6888bf%2F%29
}




;tasks for array below:
;Check DSL Stats|Clear DSL Stats|Check DSL MAC|Clear DSL MAC|Unbond DSL|Rebond DSL|Change DSL speeds|Change DSL Service-Mode|Show DSL Bonded Groups|--------------------|Check ONT Stats|Clear ONT Stats|Check ONT MAC|Management IP|Tx & Rx Levels on PON|Rx OLT Levels on PON|Schedule ONT Reboot|--------------------|Check FXS Port Status|Reset FXS Port|Run FXS MLT|--------------------|ESHDSL Port Stats|Management ESHDSL IP|ESHDSL Ports Assigned|--------------------|Find MAC or IP

;now adding 5ks tasks
arrTasks := Object()
{

arrTasks[2]  := "172.17.194.30"  ;Conway
arrTasks[3]  := "172.17.182.30" ;Derry
arrTasks[4]  := "172.17.182.31" ;Derry2
arrTasks[5]  := "172.17.191.30" ;"Durham/Dover Area" ??
arrTasks[6]  := "172.17.181.30" ;"Epping"
arrTasks[7]  := "172.17.187.30" ;"Franklin"
arrTasks[8]  := "" ;"Keene" ??
arrTasks[9]  := "" ;"Manchester" ??
arrTasks[10] := "" ;"Manchester Cage" ??
arrTasks[11] := "172.17.185.30" ;"Merrimack"
arrTasks[12] := "172.17.183.30" ;"Milford"
arrTasks[13] := "" ;"Nashua"
arrTasks[14] := "172.17.188.30"  ;"Peterborough" ??
arrTasks[15] := "172.17.195.30"  ;"Suncook" ??
arrTasks[16] := "172.17.193.30"  ;"Wolfeboro"


;------------------------------------LIST OF ADTRANS BY NAME (user friendly names are used instead of IPs)

; NOW THE FUNCTIONS:
;https://techvalleycom.sharepoint.com/sites/RepairCenter/_layouts/15/WopiFrame.aspx?sourcedoc={f852ad69-a4a9-493b-a148-ade25df08675}&action=edit&wd=target%28Guides.one%7C96725bb9-3393-4a56-b96a-262fa6775fd3%2F%5BG4%5D%20Equipment%20List%7C00cd3d52-ed15-48a3-8114-aae23191b230%2F%29
arrName := Object()
arrName[0]  := "5K Tasks|"
arrName[1]  := "---------Pick your tasks----------"
arrName[2]  := "Check DSL Stats" 
arrName[3]  := "Clear DSL Stats"
arrName[4]  := "Check DSL MAC"
arrName[5]  := "Clear DSL MAC" 
arrName[6]  := "Unbond DSL"
arrName[7]  := "Rebond DSL"
arrName[8]  := "Change DSL speeds"
arrName[9]  := "Change DSL Service-Mode"
arrName[10] := "Show DSL Bonded Groups"
arrName[11] := "--------------------"

arrName[12] := "Check ONT Stats"
arrName[13] := "Clear ONT Stats"
arrName[14] := "Check ONT MAC"
arrName[15] := "Management IP"
arrName[16] := "Tx & Rx Levels on PON"
arrName[17]  := "Rx OLT Levels on PON" 
arrName[18]  := "Schedule ONT Reboot"
arrName[19]  := "--------------------"

arrName[20]  := "Check FXS Port Status" 
arrName[21]  := "Reset FXS Port"
arrName[22]  := "Run FXS MLT"
arrName[23]  := "--------------------"

arrName[24]  := "ESHDSL Port Stats"
arrName[25] := "Management ESHDSL IP"
arrName[26] := "ESHDSL Ports Assigned"
arrName[27] := "--------------------"

arrName[28] := "Find MAC or IP"


;TESTING: https://techvalleycom.sharepoint.com/sites/RepairCenter/_layouts/15/WopiFrame.aspx?sourcedoc={f852ad69-a4a9-493b-a148-ade25df08675}&action=edit&wd=target%28Guides.one%7C96725bb9-3393-4a56-b96a-262fa6775fd3%2F%5BG4%5D%20TA3000%20Troubleshooting%7C0c13a1e1-c090-4500-a8e0-f4164c6888bf%2F%29
}





;CS15 Tasks:
arrCS15tasks := Object()
{
	;arrSover[2]
	;arrSover[2]      //PUT COMMANDS IN HERE:

	;USING DIFFERENT MENU BASED ON THE TYPE OF LINE!
	;1. RCF LINE: 2073333917              - "Remote call forward (RCFA)"
	;2. IAD LINE / DID ON PRI: 2077702500 - "DID on a PRI"
	;3. POTS LINE: 2077831475             - "POTs line"
	;4. SIP LINE: 2077771055              - "SIP line"
    MsgBox, 
		(LTrim 
			   Phone number: %tn%
			   
			   Type of line: %type_of_line%  
		)
		
	;1. RCF LINE: 2073333917              - "Remote call forward (RCFA)"
	if(type_of_line == "Remote call forward (RCFA)")
	{
		arrCS15tasks[2]    = 1
		arrCS15tasks[3]    = 2
		arrCS15tasks[4]    = 3
		arrCS15tasks[5]    = 4
		
		arrCS15tasks[7]   := "" ;
		arrCS15tasks[8]   := "check new number" ;
		arrCS15tasks[9]   := "" ;
		
		/*
			-checking line POTs
			-checking line DID
			-bouncing line POTs
			-bouncing line DID
			-forwarding line POTs
			-forwarding line DID
			-checking call history
		*/
		arrCS15title := Object()
		arrCS15title[0]  := "Tasks for: Remote call forward (RCFA)"
		arrCS15title[1]  := "------------- Task list---------------"
		arrCS15title[2]  := "Check RCF" ;OTHER 5ks
		arrCS15title[3]  := "Delete RCF" ;OTHER 5ks
		arrCS15title[4]  := "Build RCF (IN-STATE)" ;OTHER 5ks
		arrCS15title[5]  := "Build RCF (OUT-OF-STATE)" ;OTHER 5ks
		
		arrCS15title[7]  := "" ;OTHER 5ks
		arrCS15title[8]  := "check new number" ;OTHER 5ks
		arrCS15title[9]  := "" ;OTHER 5ks
	}
	
	;2. IAD LINE / DID ON PRI: 2077702500 - "DID on a PRI"
	else if(type_of_line == "DID on a PRI")
	{
		arrCS15tasks[2]    = 5
		arrCS15tasks[3]    = 6
		arrCS15tasks[4]    = 7
		arrCS15tasks[5]   := "" ;
		arrCS15tasks[6]   := "" ;
		arrCS15tasks[7]   := "" ;
		arrCS15tasks[8]   := "check new number" ;
		arrCS15tasks[9]   := "" ;
		
		/*
			-checking line POTs
			-checking line DID
			-bouncing line POTs
			-bouncing line DID
			-forwarding line POTs
			-forwarding line DID
			-checking call history
		*/
		arrCS15title := Object()
		arrCS15title[0]  := "Tasks for: IAD LINE / DID ON PRI"
		arrCS15title[1]  := "------------- Task list---------------"
		arrCS15title[2]  := "Bounce PRI" ;OTHER 5ks
		arrCS15title[3]  := "Remove TN" ;OTHER 5ks
		arrCS15title[4]  := "Check TN" ;OTHER 5ks
		arrCS15title[5]  := "" ;OTHER 5ks
		arrCS15title[6]  := "" ;OTHER 5ks
		arrCS15title[7]  := "" ;OTHER 5ks
		arrCS15title[8]  := "check new number" ;OTHER 5ks
		arrCS15title[9]  := "" ;OTHER 5ks
	}
	
	;3. POTS LINE: 2077831475             - "POTs line"
	else if(type_of_line == "POTs line")
	{
		arrCS15tasks[2]    = 8
		arrCS15tasks[3]    = 9
		arrCS15tasks[4]    = 10
		arrCS15tasks[5]    = 11
		arrCS15tasks[6]    =  ;
		arrCS15tasks[7]   := "" ;
		arrCS15tasks[8]   := "check new number" ;
		arrCS15tasks[9]   := "" ;
		
		/*
			-checking line POTs
			-checking line DID
			-bouncing line POTs
			-bouncing line DID
			-forwarding line POTs
			-forwarding line DID
			-checking call history
		*/
		arrCS15title := Object()
		arrCS15title[0]  := "Tasks for: POTS LINE"
		arrCS15title[1]  := "------------- Task list---------------"
		arrCS15title[2]  := "Check line" ;
		arrCS15title[3]  := "Bounce line" ;
		arrCS15title[4]  := "Forward line" ;
		arrCS15title[5]  := "Un-Forward line" ;
		arrCS15title[6]  := "Check call history" ;
		arrCS15title[7]  := "" ;
		arrCS15title[8]  := "check new number" ;
		arrCS15title[9]  := "" ;
	}
	
	;4. SIP LINE: 2077771055              - "SIP line"
	else if(type_of_line == "SIP line")
	{
		arrCS15tasks[2]   = 12
		arrCS15tasks[3]   := ""
		arrCS15tasks[4]   = 13
		arrCS15tasks[5]   = 14
		arrCS15tasks[6]   = 15
		arrCS15tasks[7]   = "" 
		arrCS15tasks[8]   = "check new number" 
		arrCS15tasks[9]   = "" 
		
		/*
			-checking line POTs
			-checking line DID
			-bouncing line POTs
			-bouncing line DID
			-forwarding line POTs
			-forwarding line DID
			-checking call history
		*/
		arrCS15title := Object()
		arrCS15title[0]  := "Tasks for: SIP LINE"
		arrCS15title[1]  := "------------- Task list---------------"
		arrCS15title[2]  := "Check Line" ;OTHER 5ks
		arrCS15title[3]  := "Bouncing line" ;OTHER 5ks
		arrCS15title[4]  := "Forwarding line" ;OTHER 5ks
		arrCS15title[5]  := "Find IAD" ;OTHER 5ks
		arrCS15title[6]  := "Un-Forward line" ;OTHER 5ks
		arrCS15title[7]  := "" ;OTHER 5ks
		arrCS15title[8]  := "check new number" ;OTHER 5ks
		arrCS15title[9]  := "" ;OTHER 5ks

	}
	;ELSE
	else
	{	
		arrCS15title := Object()
		arrCS15title[0]   = Tasks for- %type_of_line%
		arrCS15title[1]  := "------------- Task list---------------"
		arrCS15title[2]  := "NONE: cant fine line type or number not on sw"
	}
}



;MAIN MENU CHOICE DEFINITIONS (just a list) ------------------------------------------------------------------------------------------------------------------
{
list1 = BayRing - Adtran 5000 Tasks (Copper)||Check DSL Stats|Clear DSL Stats|Check DSL MAC|Clear DSL MAC|Unbond DSL|Rebond DSL|Change DSL speeds|Change DSL Service-Mode|Show DSL Bonded Groups|--------------------|Check ONT Stats|Clear ONT Stats|Check ONT MAC|Management IP|Tx & Rx Levels on PON|Rx OLT Levels on PON|Schedule ONT Reboot|--------------------|Check FXS Port Status|Reset FXS Port|Run FXS MLT|--------------------|ESHDSL Port Stats|Management ESHDSL IP|ESHDSL Ports Assigned|--------------------|Find MAC or IP
;list2 = Login to Management IPs (CPEs)||Login ONT w/Management IP|Login ESHDSL w/Management IP
list3 = IAD Tasks (PRI,POTS)||Unbond T1|Rebond T1|Check T1 performance|Check IAD DSP|Reset IAD FXS port|Add T38 & 9600bps to FXS Port|Schedule Reboot|Cancel Reboot|Run Debug|Stop Debug
;NOT USED ANY MORE, COMBINED list4 = VoIP Tasks||Check SBC|Check Perimeta|Check AutoProv|Autoprov GUI|VoIP Tracking FL|Sniffer PCAP|Call Recorder|CommPortal Assistant|Accession
list5 = Remote Muxes (T1)||Check T1
list6 = Other Tasks / Tools||--- OPEN TICKETS ---|Fairpoint GUI|Verizon GUI|intelliquent(IQNT)|--- OTHER TOOLS ---|solarwinds support|Job Tracking|Connect RDP Sites|Ditto|Skype|Outlook|TeamViewer|VNC screens|Config Cube|--------------------|Speedtest|MAC Lookup|Network Pinger Tools|Password Generator|Timer|Neustar Lookup|Kaseya Network Monitor KNM|Techinline|GoToAssist|BayRing Facilities DIGSAFE|Oxford Facilities DIGSAFE|ONDA|MultiFusion(?)|Firstlight Webmail
list7 = Technicians||Frank Logler|Bob McKenna|Nick Dyce|David Ayers
list8 = Other||Enter MAC|Enter IP Address
list9 = RDP Sites||Oxterm1|Ominia BRCTerm2|INM Viewer|AFC Viewer|Ping Plotter
;list10
list11 = Service-Mode||ADSL2+|ADSL2+m|ADSL2-multimode|g-dmt|readsl
list12 = Security Tasks||Oncall Passwords(N/A)|AlarmAccount.com|Check Cameras|Check Win-Pak(N/A)
;list13
;list14
;list15
list16 = BayRing - Adtran 1124 Tasks||Check DSL Stats|Clear DSL Stats|Check DSL MAC|Clear DSL MAC|Change DSL speeds|Change DSL Service-Mode|--------------------|Check FXS Port Status|Reset FXS Port|Run FXS MLT
;list17 = Intelliflex Devices (NOT USED)||Bethel|Gore Rd|Turner
list18 = DMS Switches (Legacy Voice)||Check Port Status|Restore Port|--------------------|CS15 GUI|Bangor CS15|Bethel DMS10|Lewiston CS15|Norway DMS10|Turner DMS10|Portsmouth DMS100|Albany DMS500|Albany CS15
list19 = Files & Folders||Site Info Folder(Bayring)|Maine Network Diagrams (Oxford)|--------------------|International Test Calls|Orders Folder|Loop Qual Folder|South NOC Repair Folder|NOC Tier 1 Folder|DMS100 Decommissioning|Circuit ID Training Sheet|Alternate Carrier & PEAK Info|Alternate Carrier Info|DMS how to|META how to|IP List|MUX List|Passwords|KeePass|Tech Software Tools|Switch Folder|Maine CO|O360 Guide|VoIP Info
list20 = Oxford (Fiber) - Calix||Calix (oxford)|North 5ks
list21 = Voice Mail (not used)||EAS|APmax|Octel
list22 = Meta Switch / VOIP Tasks||---SWITCHES---|Metaview Explorer Portsmouth|Metaview Web Portsmouth|SAS Portsmouth|SAS Lewiston|---CHECK REGISTRATION---|Check SBCs & Perimeta|Check Perimeta ONLY|---PROVISIONING -(AUTOPROV)---|Check AutoProv|Autoprov GUI|---OTHER VOIP TOOLS---|Sniffer PCAP|Call Recorder|CommPortal Assistant|Accession
list23 = DMS10 Switches||Bangor|Lewiston|Bethel|Turner|Norway

list24 = FL Tickets - Illuminate ||Open Ticket|Find Ticket|Show all tickets|Search Phone Numbers
;Need to get the below to function:
list25 = FirstLight Fiber||JumpBox|CPE T-Mark340|Solarwinds|Edge Gene|Planet Operate|OneControl|AnyConnectVPN|FirstLightVPN|BlueCat(IPs)
list26 = Find Service Info||Oxterm01|illuminate|IP Centrix|-- BAYRING --|Bayring Tracking|VoiP Tracking|Site Info|-- OXFORD --|Customer Diagrams|Omnia360/CHR (web)|Calix

list27 = G4 Network (3ks & Turnstones)||log into 3k|log into turnstone|OSS|Repair Playbook Link
list28 = Sovernet NH (Copper)||Adtran 5000 Tasks|other ;Check DSL Stats|Clear DSL Stats|Check DSL MAC|Clear DSL MAC|Unbond DSL|Rebond DSL|Change DSL speeds|Change DSL Service-Mode|Show DSL Bonded Groups|--------------------|Check ONT Stats|Clear ONT Stats|Check ONT MAC|Management IP|Tx & Rx Levels on PON|Rx OLT Levels on PON|Schedule ONT Reboot|--------------------|Check FXS Port Status|Reset FXS Port|Run FXS MLT|--------------------|ESHDSL Port Stats|Management ESHDSL IP|ESHDSL Ports Assigned|--------------------|Find MAC or IP
list29 = Segtel Network||Segtel port info|Calix (segtel)
list30 = Maine Fiber Company||TODO

list31 = BayRing||---------CO equipment-----------|Adtran 5000 Tasks|Adtran 1124 Tasks|---------CPE equipment-----------|Login ONT w/Management IP|Login ESHDSL w/Management IP

list32 = Phone Number Configuration||Search Phone Number SW / LRN|Bayring / Oxford - Omnia|FL Meta customer info|VoIP Tracking FL|Neustar
}

; LISTING AND LOGGING USER INPUTS: (on desktop)
;------------------------------------
IfNotExist, %USERPROFILE%\desktop\Logs\
	FileCreateDir, %USERPROFILE%\desktop\Logs\ ;create log directory on desktop

GoTo, RepairMenu ;begin program
GoTo, Exit ;end program




;MAIN REPAIR MENU STRUCTURE AND DROP DOWNS ECT.
;------------------------------------
RepairMenu:
{
Gui,1: Destroy
Menu,tray, UseErrorLevel
Menu, tray, Icon, %Rdrive%%nocTier1%%fileloc%%fileloc1%\Putty\toolbox.ico, 1, 1 
Gui,1: Default
Gui,1: font,s12,arial
Gui,1: Color, WHITE ;BACKGROUND COLOR
Gui,1: -AlwaysOnTop +SysMenu -MaximizeBox +Border -Resize

Gui,1: add, Picture,     w275, C:\Users\vripa\Desktop\Ben's Repair Menu -VOJTA COPY\FirstLight.jpg  ;w275 (width) ;h-1
;FINDING INFO
Gui,1: add, Text,cBlue, - FIND INFO -
Gui,1: Add,DropDownList, w275 vanswer24  gchoice24, %list24%  ;TICKETS
Gui,1: Add,DropDownList, w275 vanswer26  gchoice26, %list26%  ;Find Service Info
;DATA ----------------------------------------------------------------------------------------------------------------------------------
Gui,1: add, Text,cBlue, - DATA -
Gui,1: Add,DropDownList, w275 vanswer25  gchoice25, %list25%     ;First light fiber data
Gui,1: Add,DropDownList, w275 vanswer31  gchoice31, %list31%     ;BayRing
Gui,1: Add,DropDownList, w275 vanswer20  gchoice20, %list20%     ;OXFORD - Calix Tasks (DATA) (mostly)
Gui,1: Add,DropDownList, w275 vanswer27  gchoice27, %list27%     ;G4
Gui,1: Add,DropDownList, w275 vanswer28  gchoice28, %list28%     ;Sovernet NH (FIX)
Gui,1: Add,DropDownList, w275 vanswer29  gchoice29, %list29%     ;Segtel
Gui,1: Add,DropDownList, w275 vanswer30  gchoice30, %list30%     ;Maine Fiber Company.. TODO
;Gui,1: Add,DropDownList, w275 vanswer1  gchoice1, %list1%     ;BAYRING - Adtran 5000 Tasks (DONE) DATA / VOICE depending on card in 5k

;Gui,1: Add,DropDownList, w275 vanswer16 gchoice16, %list16%  ;BAYRING - Adtran 1124 Tasks (DATA?)



;MOVING FOLLOWING TO BAYRING MENU:
;Gui,1: Add,DropDownList, w275 vanswer2  gchoice2, %list2%     ;Login to Management IPs (OXFORD)
;Gui,1: Add,DropDownList, w275 vanswer5  gchoice5, %list5%     ;Remote Muxes (DATA)


;Gui,1: Add,DropDownList, w275 vanswer17 gchoice17, %list17%  ;Intelliflex Devices (no idea) not used
;VOICE ----------------------------------------------------------------------------------------------------------------------------------
Gui,1: add, Text,cBlue, - VOICE -
;LRN
Gui,1: Add,DropDownList, w275 vanswer32  gchoice32, %list32%     ;Phone Number Configuration
Gui,1: Add,DropDownList, w275 vanswer22 gchoice22, %list22%  ;Meta Switch Tasks (VOICE)
;Gui,1: Add,DropDownList, w275 vanswer4  gchoice4, %list4%     ;VoIP Tasks (VOICE)
Gui,1: Add,DropDownList, w275 vanswer18 gchoice18, %list18%  ;DMS Switches (VOICE)

Gui,1: Add,DropDownList, w275 vanswer3  gchoice3, %list3%     ;IAD Tasks (LIKELY VOICE: PRI, POTS)
Gui,1: Add,DropDownList, w275 vanswer21 gchoice21, %list21%  ;Voice Mail (VOICE)
;Gui,1: Add,DropDownList, w275 vanswer7 gchoice7, %list15%   ;
;OTHER ----------------------------------------------------------------------------------------------------------------------------------
Gui,1: add, Text,cBlue, - OTHER -
;(REMOVING FOR NOW) Gui,1: Add,DropDownList, w275 vanswer12 gchoice12, %list12%  ;Security Tasks  (OTHER)
Gui,1: Add,DropDownList, w275 vanswer19 gchoice19, %list19%  ;Files & Folders (OTHER)
Gui,1: Add,DropDownList, w275 vanswer6 gchoice6, %list6%     ;Other Tasks     (OTHER)
;NEW EXTRA CHOICES:
;Gui,1: Add,DropDownList, w275 vanswer7 gchoice7,   %list7%     ;Technicians
;Gui,1: Add,DropDownList, w275 vanswer8 gchoice8,   %list8%     ;Other||Enter MAC|Enter IP Address
;Gui,1: Add,DropDownList, w275 vanswer9 gchoice9,   %list9%     ;RDP Sites|
;Gui,1: Add,DropDownList, w275 vanswer11 gchoice11, %list11%     ;Service-Mode
;Gui,1: Add,DropDownList, w275 vanswer23 gchoice23, %list23%     ;DMS10 Switches

;start button:
Gui, Add, Button, Default w275 gStartDay, Start the day

;RELOAD button:
Gui, Add, Button, Default w275 gRELOAD, RELOAD

Gui,1: show, xcenter ycenter,%menutitle%                     ;TITLE
Return
}


;RELOAD BUTTON
RELOAD:
{
    Gui, Destroy
	Reload ;clear variables
	GoSub, RepairMenu
	Return
}

;OPENS A BUNCH OF FUNCTIONS IN RESPECTIVE ORDER (used when first turning on PC)
StartDay:
{
/*
-MASS FUNCTION
-----------------
1-open my AutoHotkey file
 -ditto
2-FL vpn
3-any connect
4-email
5-skype
6-log into phone queue (commportal assistant, then log in)
7-chrome
8-meta- web
9- jump box 
10-verizon mes
11-calix
12-OXF server.
13-all tickets.
14 - Rainmeter
*/

/*
GOSub, Notepad
	Sleep, 2000
GoSub, Messageit14
*/

GoSub, GetInfo19
		While(waiting)
		Sleep, 500

;1. open my AutoHotkey file
GoSub, OpenAutoHotkeyFile
	
		Sleep, 500
	GoSub, Messageit14	

; -ditto
GoSub, Ditto
	
		Sleep, 500
	GoSub, Messageit14
; -Rainmeter	
GoSub, Rainmeter
	
		Sleep, 500
	GoSub, Messageit14	

;2-FL vpn
GoSub, FirstLightVPN
	
		Sleep, 500
	GoSub, Messageit14
;3-any connect
GoSub, AnyConnectVPN
	
		Sleep, 500
	GoSub, Messageit14

;4-email
GoSub, Outlook
	
		Sleep, 500
	GoSub, Messageit14

;5-skype
GoSub, Skype
	
		Sleep, 500
	GoSub, Messageit14

	
;7-Notepad++	
GOSub, Notepad
	
		Sleep, 500
	GoSub, Messageit14


;7-chrome-
GoSub, Chrome
	
		Sleep, 500
	GoSub, Messageit14

;8-META
web_address = "http://192.168.114.40:8087/"; OPENS META
GoSub, OpenWeb
	
		Sleep, 500
	GoSub, Messageit14

;9-JumpBox
GoSub, JumpBox
	
		Sleep, 500
	GoSub, Messageit14
;10. run, (not easy to run VZ msg
;

;11.Open Calix
GoSub, OpenCalix
	
		Sleep, 500
	GoSub, Messageit14
;12. GoSub, Oxterm1
;13. 
web_address = "https://illuminate.firstlight.systems/illuminate/ticketing/listing";
;	GoSub, OpenWeb
GoSub, OpenWeb
	
		Sleep, 500
	GoSub, Messageit14
;GOOD TO HERE
GoSub, Messageit15

sleep, 5000

;6-log into phone queue (commportal assistant, then log in)
GoSub, CommPortalAssistant ;loads app but tough to get logged in.
	
		Sleep, 500
	GoSub, Messageit14

Return
}

CallRecorder:
{
	
	web_address = "https://webaccess.recordingservice.co/CallRecorder/";
	GoSub, OpenWeb
}

;(WORKS) opens personal autohotkey file
OpenAutoHotkeyFile:
{
	Gui,5:Destroy
	WinGet, state,MinMax, AutoHotkeyFile
	if state = -1
		WinRestore, AutoHotkeyFile
	else
		WinActivate, AutoHotkeyFile
	IfWinNotExist AutoHotkeyFile
		{
			Run "C:\Users\vripa\Dropbox\Docs\WORK\FirstLight\AutoHotkey.ahk",,UseErrorlevel ;used to be just "calix" instead of "Calix_ 14"
			If ErrorLevel = ERROR
				GoSub, Messageit11
			WinActivate, AutoHotkeyFile
			Sleep, 1000
			
		}   
	Return
}

;(WORKS) opens DITTO copy/ paste clip-board
Ditto:
{
	Gui,5:Destroy
	WinGet, state,MinMax, Ditto
	if state = -1
		WinRestore, Ditto
	else
		WinActivate, Ditto
	IfWinNotExist Ditto
		{
			Run "C:\Program Files\Ditto\Ditto.exe",,UseErrorlevel ;used to be just "calix" instead of "Calix_ 14"
			If ErrorLevel = ERROR
				GoSub, Messageit11
			WinActivate, Ditto
			
		}   
	Return
}

;(WORKS) opens Rainmeter for system info
Rainmeter:
{
	Gui,5:Destroy
	WinGet, state,MinMax, Rainmeter
	if state = -1
		WinRestore, Rainmeter
	else
		WinActivate, Rainmeter
	IfWinNotExist Rainmeter
		{
			Run "C:\Program Files\Rainmeter\Rainmeter.exe",,UseErrorlevel 
			If ErrorLevel = ERROR
				GoSub, Messageit11
			WinActivate, Rainmeter
			
		}   
	Return
}

;CS15 GUI (WORKS)
CS15GUI:
{
	Gui,5:Destroy
	WinGet, state,MinMax, CS15GUI
	if state = -1
		WinRestore, CS15GUI
	else
		WinActivate, CS15GUI
	IfWinNotExist CS15GUI
		{
			;Run "C:\Program Files (x86)\Notepad++\notepad++.exe",,UseErrorlevel		
			
			Run "C:\Users\vripa\Desktop\cs1500gui (2).jnlp",,UseErrorlevel 
			If ErrorLevel = ERROR
				GoSub, Messageit11
			WinActivate, CS15GUI
			
		}   
		Sleep, 6000
		sendraw, %dms_un%
		Sleep, 500
		send, {tab}
		sendraw, %dms_pw%
		Sleep, 500
		send, {tab}
		send, %dms10pw%
		send, {tab}
		;ASK FOR 1 for bangore and 2 for lewiston
		GoSub, GetInfoCS15
		
		While(waiting)
		Sleep, 500
		
		;determine which gets active:
		if(cs15guiType == 1)
		{
			Send, {Backspace 20}10.3.12.40{tab}{enter} ;THIS IS FOR LEWISTON! 
		}
		else
			Send, {Backspace 20}10.3.1.40{tab}{enter} ;THIS IS FOR BANGORE! 
			
		;GUIDE: http://10.3.12.40/gui/CS1500_UserGuide.htm
	Return
}

;(WORKS) 
Notepad:
{
	Gui,5:Destroy
	WinGet, state,MinMax, Notepad
	if state = -1
		WinRestore, Notepad
	else
		WinActivate, Notepad
	IfWinNotExist Notepad
		{
			Run "C:\Program Files (x86)\Notepad++\notepad++.exe",,UseErrorlevel ;used to be just "calix" instead of "Calix_ 14"
			If ErrorLevel = ERROR
				GoSub, Messageit11
			WinActivate, Notepad
			
		}   
	Return
}


;(WORKS) OUTLOOK
Outlook:
{
	Gui,5:Destroy
	WinGet, state,MinMax, Outlook
	if state = -1
		WinRestore, Outlook
	else
		WinActivate, Outlook
	IfWinNotExist Outlook
		{
			Run "C:\Program Files\Microsoft Office\root\Office16\OUTLOOK.EXE",,UseErrorlevel ;used to be just "calix" instead of "Calix_ 14"
			If ErrorLevel = ERROR
				GoSub, Messageit11
			WinActivate, Outlook
			
		}   
	Return
}

;(WORKS) opens Skype
Skype:
{
	Gui,5:Destroy
	WinGet, state,MinMax, Skype
	if state = -1
		WinRestore, Skype
	else
		WinActivate, Skype
	IfWinNotExist Skype
		{
			Run "C:\Program Files\Microsoft Office\root\Office16\lync.exe",,UseErrorlevel ;used to be just "calix" instead of "Calix_ 14"
			If ErrorLevel = ERROR
				GoSub, Messageit11
			WinActivate, Skype
			
		}   
	Return
}


;VNC screens
VNC:
{
	Gui,5:Destroy
	WinGet, state,MinMax, VNC
	if state = -1
		WinRestore, VNC
	else
		WinActivate, VNC
	IfWinNotExist VNC
		{
			Run "C:\Program Files\RealVNC\VNC Viewer\vncviewer.exe",,UseErrorlevel ;used to be just "calix" instead of "Calix_ 14"
			If ErrorLevel = ERROR
				GoSub, Messageit11
			WinActivate, VNC
			
		}   
	Return
}


;(WORKS) opens TeamViewer
TeamViewer:
{
	Gui,5:Destroy
	WinGet, state,MinMax, TeamViewer
	if state = -1
		WinRestore, TeamViewer
	else
		WinActivate, TeamViewer
	IfWinNotExist TeamViewer
		{
			Run "C:\Program Files (x86)\TeamViewer\TeamViewer.exe",,UseErrorlevel ;used to be just "calix" instead of "Calix_ 14"
			If ErrorLevel = ERROR
				GoSub, Messageit11
			WinActivate, TeamViewer
			
		}   
	Return
}

;(WORKS) opens Chrome
Chrome:
{
	Gui,5:Destroy
	WinGet, state,MinMax, Chrome
	if state = -1
		WinRestore, Chrome
	else
		WinActivate, Chrome
	IfWinNotExist Chrome
		{
			Run "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe",,UseErrorlevel ;used to be just "calix" instead of "Calix_ 14"
			If ErrorLevel = ERROR
				GoSub, Messageit11
			WinActivate, Chrome
			
		}   
	Return
}

;(WORKS) opens puttyG4
PuttyG4:
{
	Gui,5:Destroy
	WinGet, state,MinMax, PuttyG4
	if state = -1
		WinRestore, PuttyG4
	else
		WinActivate, PuttyG4
	IfWinNotExist PuttyG4
		{
			Run "C:\Program Files (x86)\PuTTY\putty.exe" -ssh 66.211.152.102,,UseErrorlevel
			If ErrorLevel = ERROR
				GoSub, Messageit11
			WinActivate, PuttyG4
			
		}
        Sleep, 2000	
        Send, %unG4%{ENTER}
		Sleep, 500
		SendRaw, %pwG4%
		Send,{ENTER}
		Sleep, 500		
		
	Return
}

;OPENS A WEBSITE AND USES CREDS TO LOG IN 
;https://autohotkey.com/board/topic/94432-hotkeys-to-login-to-web-pages/

;SO FAR ADTRAN 5ks ONLY:
;only works with IE since chrome doesnt have the same module..
OpenWebsiteAndLogIn:
{
;USERNAME:
;---------
Loginname = vripa

;HERE I NEED DIFFERENT LOGINS BASED ON IP ADDRESS..
;NH AREA (SOUTH)

;PASSWORD:
;---------
if(RegExMatch(ipaddr, "192")) ;WORKS!
	Password  = Welcome1
;ME AREA (NORTH)	OR SOVER 
else
	Password  = Fir$tLi8*123

;MsgBox, 0, , %Password% - vipaddr - %ipaddr%

URL = %ipaddr% ;now just need to change this IP / URL and incorporate this script. (DONE)

;Run, chrome.exe "%ipaddr%"
;WinActivate, chrome.exe


WB :=  ComObjCreate("InternetExplorer.Application")  ;WB := ComObjCreate("Chrome.exe")  ;WinActivate, chrome.exe %URL% 
WB.Visible := True
WB.Navigate(URL)


While wb.readyState != 4 || wb.document.readyState != "complete" || wb.busy ; wait for the page to load
   Sleep, 10

;now use javascript to complete username password and hit submit:   
wb.document.getElementById("l_usrnm").value := Loginname
wb.document.getElementById("l_pswrd").value := Password
wb.document.getElementById("loginbutton").click() 

While wb.readyState != 4 || wb.document.readyState != "complete" || wb.busy ; wait for the page to load
   Sleep, 10
;Msgbox, Now logged in and loaded! (DONT NEED THIS MESSAGE BOX)
return
}



;*********************************************************************************
;FUNCTIONALITY FOR EACH DROP DOWN:
;*********************************************************************************


;ADTRAN 5k TASKS:
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
;LOGIN TO MANAGEMENT IPS
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

;IAD TASKS
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

;Remote Muxes
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
;Other Tasks:
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
if answer6 = solarwinds support
{
    web_address = "https://truepath.zendesk.com/hc/en-us/signin" ; indv logins...
	GoSub, OpenWeb
}
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
if answer6 = intelliquent(IQNT)
{
    web_address = "https://portal.inteliquent.com/CustomerPortal/userRequest.htm"
	GoSub, OpenWeb
}
else
if answer6 = Techinline
	GoSub, Techinline
else
if answer6 = GoToAssist
	GoSub, GoToAssist
else
if answer6 = Site Info Folder(Bayring)
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
if answer6 = MultiFusion(?)
	GoSub, Multitel
else
if answer6 = Firstlight Webmail
	GoSub, Webmail
else
;Ditto|Skype|Outlook
if answer6 = Ditto
	GoSub, Ditto2
else
if answer6 = Skype
	GoSub, Skype
else
if answer6 = VNC screens
	GoSub, VNC
else
if answer6 = Outlook
	GoSub, Outlook
else
if answer6 = TeamViewer
	GoSub, TeamViewer
else
if answer6 = Config Cube
	GoSub, ConfigCube
	
Return

}
;Security Tasks:
;------------------------------------
choice12:
{
Gui,1: submit, nohide
if answer12 = Security Tasks
	Return
else
	GuiControl,, answer12, |%list12%
if answer12 = Oncall Passwords(N/A)
	GoSub, Oncall
else
if answer12 = AlarmAccount.com
	GoSub, GetAlarmAccount
else
if answer12 = Check Cameras
	GoSub, GetCameras
else
if answer12 = Check Win-Pak(N/A)
	GoSub, GetWinPak
Return
}
;Adtran 1124 Tasks
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
;Intelliflex Tasks:
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
;DMS Switches
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
if answer18 = CS15 GUI
{
	ipaddr := "10.3.12.40"
	switch = "Lewiston Switch"
	GoSub, CS15GUI
}
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
;Files & Folders
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
if answer19 = DMS100 Decommissioning
	GoSub, DMS100Decomm
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
if answer19 = Maine Network Diagrams (Oxford)
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
;CALIX TASKS
;------------------------------------
choice20:
{
Gui,1: submit, nohide
if answer20 = Other Tasks
	Return
else
	GuiControl,, answer20, |%list20%
if answer20 = Calix (oxford)
	GoSub, OpenCalix
else
if answer20 = North 5ks
    GoSub, OpenNorth5ks


Return
}
;VoiceMail 
;------------------------------------
choice21:
{
Gui,1: submit, nohide
if answer21 = Voice Mail (not used)
	Return
else
	GuiControl,, answer21, |%list21%
if answer21 = EAS
	GoSub, OpenEAS
else
if answer21 = APmax
	GoSub, OpenAPmax
if answer21 = Octel ;DO NOTHING? 
	Return
Return
}
;Meta Switch Tasks / VOIP
;------------------------------------
choice22:
{
;list22 = Meta Switch Tasks||Portsmouth|Metaview Web|SAS Portsmouth|SAS Lewiston
Gui,1: submit, nohide
if answer22 = Meta Switch / VOIP Tasks
	Return
else
	GuiControl,, answer22, |%list22%
if answer22 = Metaview Explorer Portsmouth
	GoSub, OpenMeta
else
if answer22 = SAS Portsmouth
	GoSub, SAS
else
if answer22 = Metaview Web Portsmouth
{
	web_address = "http://192.168.114.40:8087/";
	GoSub, OpenWeb
}	

else
if answer22 = SAS Lewiston
	GoSub, SAS1
;NEW 06-3-2019	
else
if answer22 = Check SBCs & Perimeta
	GoSub, CheckSBC
else
if answer22 = Check Perimeta ONLY
	GoSub, CheckPerimeta
else
if answer22 = Check AutoProv
	GoSub, CheckAutoprov
else
if answer22 = Autoprov GUI
	GoSub, autoprovGUI
else
if answer22 = VoIP Tracking FL
	GoSub, voip3
else
if answer22 = Sniffer PCAP
	GoSub, GetPCAP
else
if answer22 = Call Recorder
	GoSub, CallRecorder	
else
if answer22 = CommPortal Assistant
	GoSub, CommPortalAssistant
else
if answer22 = Accession
	GoSub, Accession
Return
}
;DMS Switches (2)
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

; NEW TICKETS: (ALL WORKS!)
;------------------------------------
;- FL Tickets - Illuminate || Open Ticket | Find Ticket | Show all tickets | Search Phone Number
choice24:
{
Gui,1: submit, nohide

if choice24 = FL Tickets - Illuminate
	Return
else
	GuiControl,, answer24, |%list24%
if answer24 = Open Ticket
{
	web_address = "https://illuminate.firstlight.systems/illuminate/ticketing/new_ticket";
	GoSub, OpenWeb
}
else
if answer24 = Find Ticket
{
	GoSub, GetInfo17
		While(waiting)
		Sleep, 500
	webX = "https://illuminate.firstlight.systems/illuminate/ticketing/worksheet?ticketID=%ticket_number%";
	web_address = %webX%;
	GoSub, OpenWeb
}
else
if answer24 = Show all tickets
{
	web_address = "https://illuminate.firstlight.systems/illuminate/ticketing/listing";
	GoSub, OpenWeb
}
else
if answer24 = Search Phone Numbers
{
	web_address = "https://illuminate.firstlight.systems/illuminate/network/lrn_cnam_lookup";
	GoSub, OpenWeb
}

Return
}

;FL DATA NEW | FirstLight Fiber||JumpBox|CPE T-Mark340|Solarwinds|Edge Gene|Planet Operate|OneControl
choice25:
{
Gui,1: submit, nohide

if choice25 = FirstLight Fiber
	Return
else
	GuiControl,, answer25, |%list25%
if answer25 = JumpBox
{
	;DONE
	GoSub, JumpBox
}
else
if answer25 = CPE T-Mark340
{
    ;logs into TMARK	(SAMPLE NID: 	172.31.15.90)
	GoSub, LoginManagementFL
	;might want to add more commands here.
}
else
if answer25 = Solarwinds
{
    ;DONE
	web_address = "http://solarwinds.corp.techvalleycom.com/Orion/Login.aspx?";
	GoSub, OpenWeb
}
else
if answer25 = Edge Gene
{
	GoSub, EdgeGenie
}
else
if answer25 = Planet Operate
{
	GoSub, PlanetOperate
}
else
if answer25 = OneControl
{
	GoSub, OneControl
}
else
if answer25 = AnyConnectVPN
{
	GoSub, AnyConnectVPN
}
else
if answer25 = FirstLightVPN
{
	GoSub, FirstLightVPN
}
else
if answer25 = BlueCat(IPs)
{
	GoSub, blueC
}
Return
}
;AnyConnectVPN|FirstLightVPN


;list26 = Oxterm01|illuminate|IP Centrix|-- BAYRING --|Bayring Tracking|VoiP Tracking|Site Info|-- OXFORD --|Customer Diagrams|Omnia360/CHR (web)|Calix
choice26:
{
Gui,1: submit, nohide

if choice26 = Find Service Info or -- BAYRING -- or -- OXFORD --
	Return
else
	GuiControl,, answer26, |%list26%
if answer26 = Bayring Tracking
{
    ;web_address = "http://solarwinds.corp.techvalleycom.com/Orion/Login.aspx?";
	GoSub, JobTracking
}

;NEED TO FINISH REST OF THESE...
else
if answer26 = Oxterm01
{
	GoSub, Oxterm1
}
else
if answer26 = illuminate
{
    ;DONE
	web_address = "https://illuminate.firstlight.systems/illuminate/customer/";
	GoSub, OpenWeb
}
else
if answer26 = IP Centrix
{
	GoSub, IPCentrix 
}
else
if answer26 = VoiP Tracking
{
	GoSub, voip3
}
else
if answer26 = Site Info
{
	GoSub, Siteinfo
}
else
if answer26 = Customer Diagrams
{
	GoSub, MaineNetwork
}
else
if answer26 = Omnia360/CHR (web)
{
	web_address = "https://oxf-p.saas.chrsolutions.com/main.aspx#"
	GoSub, OpenWeb
}
else
if answer26 = Calix
{
	GoSub, OpenCalix
}
Return
}



;TODO legacy G4
;ADTRAN 3k TASKS:
;------------------------------------

choice27:
{
Gui,1: submit, nohide
if answer27 = Adtran 3000 Tasks
	Return
else
	GuiControl,, answer27, |%list27%
if answer27 = log into 3k
{
	choice = 1
	GoSub, Get3k ;ALLOWS USER TO SELECT 3K.
}	
else if answer27 = log into turnstone
{
	choice = 2
	GoSub, GetTurnStone ;ALLOWS USER TO SELECT TurnStone
}
else if answer27 = OSS
{
	choice = 3
	web_address = "http://oss.g4.net/"
	GoSub, OpenWeb
	sleep, 1000
	send, oss_username
    send, {tab}
	send, oss_password
}
else if answer27 = Repair Playbook Link
{
	choice = 4
	;web_address = "https://techvalleycom.sharepoint.com/sites/RepairCenter/_layouts/15/WopiFrame.aspx?sourcedoc={f852ad69-a4a9-493b-a148-ade25df08675}&action=edit&wd=target%28Guides%2FGuides%20%28Technical%5C%29.one%7C96725bb9-3393-4a56-b96a-262fa6775fd3%2F%5BG4%5D%20NEW%20IP%20Routes%20%5BLegacy%20G4%5D%7C00cd3d52-ed15-48a3-8114-aae23191b230%2F%29";
	 web_address = "https://techvalleycom.sharepoint.com/sites/RepairCenter/_layouts/15/WopiFrame.aspx?sourcedoc={f852ad69-a4a9-493b-a148-ade25df08675}&action=edit&wd=target`%28Guides`%2FGuides`%20`%28Technical`%5C`%29.one`%7C96725bb9-3393-4a56-b96a-262fa6775fd3`%2F`%5BG4`%5D`%20NEW`%20IP`%20Routes`%20`%5BLegacy`%20G4`%5D`%7C00cd3d52-ed15-48a3-8114-aae23191b230`%2F`%29&wdorigin=703"
	;web_address = "https://techvalleycom.sharepoint.com/cloudcommunications/Shared`%20Documents/Forms/AllItems.aspx?RootFolder=`%2Fcloudcommunications`%2FShared`%20Documents`%2F~Customer`%20Folders~&FolderCTID=0x012000BD46AB4E35EBD9449250AB5E8B526C7F"
	
	GoSub, OpenWeb
	sleep, 1000
	/*
	send, oss_username
    send, {tab}
	send, oss_password
	*/
}
Return
}
;------------------------------------END

choice28:
{
Gui,1: submit, nohide
if answer28 = Sovernet NH (Copper)
	Return
else
	GuiControl,, answer28, |%list28%
if answer28 = Adtran 5000 Tasks
{
	;return
	;NOW NEED TO MAKE A NEW MENU FOR Adtran 5000 tasks...
	GoSub, Get5kSover
	 
	 /*
	Gui,3: submit, nohide
	
	
	if 5kChoice = Adtran 5000s
		Return
	if 5kChoice = ---------------SOUTH 5ks---------------
		Return
	if 5kChoice = ---------------NORTH 5ks---------------
		Return
	
	
	Gui,3: destroy
	listcntr = 0
	
	Loop, % arr12.MaxIndex()
	{
		if arr12[A_Index] = 5kChoice
		{
			ipaddr := arrSover[A_Index]
			listcntr = %A_Index%
		}
	}
	Adtran = %5kChoice%
	*/
	
	;GoSub, GUIornot
}
else
Return
}

/*
Phone Number Configuration

Search Phone Number SW / LRN
Bayring / Oxford - Omnia
VoIP Tracking FL
Neustar

*/
;- FL Tickets - Illuminate || Open Ticket | Find Ticket | Show all tickets | Search Phone Number
choice32:
{
Gui,1: submit, nohide

if choice32 = Phone Number Configuration
	Return
else
	GuiControl,, answer32, |%list32%

if answer32 = Search Phone Number SW / LRN
{
	web_address = "https://illuminate.firstlight.systems/illuminate/network/lrn_cnam_lookup";
	GoSub, OpenWeb
}
else
if answer32 = Bayring / Oxford - Omnia
{
	GoSub, Oxterm1
}
else
if answer32 = VoIP Tracking FL
{
	GoSub, voip3
}
else
if answer32 = Neustar
{
	GoSub, Neustar
}
else
if answer32 = FL Meta customer info
{
	web_address = "https://techvalleycom.sharepoint.com/cloudcommunications/Shared`%20Documents/Forms/AllItems.aspx?RootFolder=`%2Fcloudcommunications`%2FShared`%20Documents`%2F~Customer`%20Folders~&FolderCTID=0x012000BD46AB4E35EBD9449250AB5E8B526C7F"
	GoSub, OpenWeb
}
else
Return
}

;------------------------------------END




;------------------------------------
;FOR 5Ks only
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
; SEGTEL
;------------------------------------
choice29:
{
Gui,1: submit, nohide
if answer29 = Other Tasks
	Return
else
	GuiControl,, answer20, |%list20%

if answer29 = Calix (segtel)
    GoSub, OpenCalixSegtel
else if answer29 = Segtel port info
{    
	;GoSub, Segtel port info
	web_address = "https://segnet.wholesaleadmin.segnet.com/dslqual.cgi?command=showquals&status=installed&orderby=foc_date";
	GoSub, OpenWeb
	sleep, 1000
	send, tvccsr
    send, {tab}
	send, tvc9182r
}
else
Return
}

;MAINE FIBER:
;------------------------------------
choice30:
{
Gui,1: submit, nohide
if answer30 = Maine Fiber Company
	Return
else
	GuiControl,, answer30, |%list30%

if answer30 = TODO
{	;GoSub, OpenCalix}
}


Return
}



;Bayring 5k ect...:
;------------------------------------
choice31:
{
Gui,1: submit, nohide
if answer31 = Bayring
	Return
else
	GuiControl,, answer31, |%list31%


if answer31 = Adtran 5000 Tasks
{
	;return
	;NOW NEED TO MAKE A NEW MENU FOR Adtran 5000 tasks...
	GoSub, Get5k
	/*
	Gui,3: submit, nohide
	
	
	if 5kChoice = Adtran 5000s
		Return
	if 5kChoice = ---------------SOUTH 5ks---------------
		Return
	if 5kChoice = ---------------NORTH 5ks---------------
		Return
	
	
	Gui,3: destroy
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
	*/
	
	;GoSub, GUIornot
}

if answer31 = Adtran 1124 Tasks
{
	;NOW NEED TO MAKE A NEW MENU FOR Adtran 1124 tasks...
	;Gui,1: Add,DropDownList, w275 vanswer16 gchoice16, %list16%
	GoSub, Get5k
	/*
	Gui,3: submit, nohide
	
	
	
	if 5kChoice = Adtran 5000s
		Return
	if 5kChoice = ---------------SOUTH 5ks---------------
		Return
	if 5kChoice = ---------------NORTH 5ks---------------
		Return
	Gui,3: destroy
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
	*/
	;GoSub, GUIornot
}	

if answer31 = Login ONT w/Management IP
{
	choice = 24
	GoSub, ChooseIAD
}

if answer31 = Login ESHDSL w/Management IP
{
	choice = 25
	GoSub, ChooseIAD
}
else
Return
}
;------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
;------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

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
;FOR OXFORD 5Ks only
;------------------------------------
OpenNorth5ks:
{
WinGetPos,x,y,,,%menutitle%
xpos := (x -50)
ypos := (y +40)
North5kList =
Gui,2: Destroy
Gui,2: font, s12,arial
Gui,2: +AlwaysOnTop +SysMenu -MinimizeBox +Border -Resize
Gui,2: Color, YELLOW
North5kList .=	(!North5kList ? "" : "|") item%A_Index%
For each, item in arrOxfordName
	North5kList .=	(!North5kList ? "" : "|") item
Gui,2: Add, DropDownList, r35 w355 vNorth5kChoice Choose1 gNorth5kChosen, %North5kList%
Gui,2: show, x%xpos% y%ypos%,REPAIR
Return
}
North5kChosen:
{
	Gui,2: submit, nohide
	if North5kChoice = Adtran 5000s
		Return
		if 5kChoice = ---------------SOUTH 5ks---------------
		Return
	if 5kChoice = ---------------NORTH 5ks---------------
		Return
	Gui,2: destroy
	listcntr = 0
	Loop, % arrOxfordName.MaxIndex()
	{
		if arrOxfordName[A_Index] = North5kChoice
		{
			ipaddr := arrOxford[A_Index]
			listcntr = %A_Index%
		}
	}
	Adtran = %North5kChoice%
	GoSub, GUIornot
	Return
}
;------------------------------------
;FOR SORVERNET 5Ks only
;------------------------------------
Get5kSover:
{
WinGetPos,x,y,,,%menutitle%
xpos := (x -50)
ypos := (y +40)
5kListSover =
Gui,2: Destroy
Gui,2: font, s12,arial
Gui,2: +AlwaysOnTop +SysMenu -MinimizeBox +Border -Resize
Gui,2: Color, YELLOW
5kListSover .=	(!5kListSover ? "" : "|") item%A_Index%
For each, item in arr12
	5kListSover .=	(!5kListSover ? "" : "|") item
Gui,2: Add, DropDownList, r35 w355 vSover5kChoice Choose1 g5kChosenSover, %5kListSover%
Gui,2: show, x%xpos% y%ypos%,REPAIR
Return
}
;------------------------------------
5kChosenSover:
{
Gui,2: submit, nohide
if Sover5kChoice = Adtran 5000s
	Return
if Sover5kChoice = ---------------SOUTH 5ks---------------
	Return
if Sover5kChoice = ---------------NORTH 5ks---------------
	Return
Gui,2: destroy
listcntr = 0
Loop, % arr1.MaxIndex()
{
	if arr12[A_Index] = Sover5kChoice
	{
		ipaddr := arrSover[A_Index]
		listcntr = %A_Index%
	}
}
Adtran = %Sover5kChoice%
GoSub, GUIornot
Return
}



;CONFIG CUBE

ConfigCube:
{
	GoSub, JumpBox
	sleep, 2000
	send, telnet 69.168.14.56{enter}
    send, admin{enter}
    sendraw,%newiadpw%
	send, {enter}
    send, en{enter}
    sendraw, %newiadenpw%
	send, {enter}
	return
}


;------------------------------------
;FOR 3Ks only
;------------------------------------
Get3k:
{
WinGetPos,x,y,,,%menutitle%
xpos := (x -50)
ypos := (y +40)
3kList =
Gui,2: Destroy
Gui,2: font, s12,arial
Gui,2: +AlwaysOnTop +SysMenu -MinimizeBox +Border -Resize
Gui,2: Color, YELLOW
3kList .=	(!3kList ? "" : "|") item%A_Index%
For each, item in arr10
	3kList .=	(!3kList ? "" : "|") item
Gui,2: Add, DropDownList, r35 w355 v3kChoice Choose1 g3kChosen, %3kList%
Gui,2: show, x%xpos% y%ypos%,REPAIR
Return
}
;------------------------------------



3kChosen:
{
Gui,2: submit, nohide
if 3kChoice = Adtran 3000s
	Return
	if 3kChoice = ---------------SOUTH 3ks---------------
	Return
if 3kChoice = ---------------NORTH 3ks---------------
	Return
Gui,2: destroy
listcntr = 0
Loop, % arr1.MaxIndex()
{
	if arr10[A_Index] = 3kChoice
	{
		ipaddr := arr3000[A_Index]
		listcntr = %A_Index%
	}
}
Adtran = %3kChoice%
GoSub, PuttyG4

;NOW THAT I'M IN G4 JUMPBOX, LOG INTO THE 3K selected.
Sleep, 1500
send, telnet %ipaddr%{ENTER}
Sleep, 500
if(ipaddr == "172.17.182.170") ;some need to bypass a specific menu
{
   send, {ENTER}
}
Sleep, 1500
sendraw, %un3ks%
Sleep, 300
send, {ENTER}
Sleep, 500
sendraw, %pw3ks%
send,{ENTER}


;NOW NEED TO RUN SPECIFIC COMMANDS IN 3K (press options)
;;TESTING: https://techvalleycom.sharepoint.com/sites/RepairCenter/_layouts/15/WopiFrame.aspx?sourcedoc={f852ad69-a4a9-493b-a148-ade25df08675}&action=edit&wd=target%28Guides.one%7C96725bb9-3393-4a56-b96a-262fa6775fd3%2F%5BG4%5D%20TA3000%20Troubleshooting%7C0c13a1e1-c090-4500-a8e0-f4164c6888bf%2F%29

Sleep, 1500
send, 4{ENTER}
;now select SLOT NUMBER



Return
}



;------------------------------------
;FOR TURNSTONE only
;------------------------------------
GetTurnStone: ;LOADS THE DROPDOWN GUI
{
WinGetPos,x,y,,,%menutitle%
xpos := (x -50)
ypos := (y +40)
TurnStoneList =
Gui,2: Destroy
Gui,2: font, s12,arial
Gui,2: +AlwaysOnTop +SysMenu -MinimizeBox +Border -Resize
Gui,2: Color, YELLOW
TurnStoneList .=	(!TurnStoneList ? "" : "|") item%A_Index%
For each, item in arr11
	TurnStoneList .=	(!TurnStoneList ? "" : "|") item
Gui,2: Add, DropDownList, r35 w355 vTurnStoneChoice Choose1 gTurnStoneChosen, %TurnStoneList%
Gui,2: show, x%xpos% y%ypos%,REPAIR
Return
}
;------------------------------------



TurnStoneChosen: ;NOW GETTING THE OUTPUT CHOSEN
{
Gui,2: submit, nohide
if TurnStoneChoice = Turn Stones
	Return


Gui,2: destroy
listcntr = 0
Loop, % arr1.MaxIndex()
{
	if arr11[A_Index] = TurnStoneChoice
	{
		ipaddr := arrTS[A_Index]
		listcntr = %A_Index%
	}
}
Adtran = %TurnStoneChoice%
GoSub, PuttyG4

;NOW THAT I'M IN G4 JUMPBOX, LOG INTO THE 3K selected.
Sleep, 1500
send, telnet %ipaddr%{ENTER}
Sleep, 500
if(ipaddr == "172.17.182.170") ;some need to bypass a specific menu
{
   send, {ENTER}
}


Sleep, 2500
sendraw, %pwTS%
send,{ENTER}

sendraw, %unTS%
Sleep, 300
send, {ENTER}
Sleep, 500
sendraw, %pwTS%
send,{ENTER}


;NOW NEED TO RUN SPECIFIC COMMANDS IN 3K (press options)
;;TESTING: https://techvalleycom.sharepoint.com/sites/RepairCenter/_layouts/15/WopiFrame.aspx?sourcedoc={f852ad69-a4a9-493b-a148-ade25df08675}&action=edit&wd=target%28Guides.one%7C96725bb9-3393-4a56-b96a-262fa6775fd3%2F%5BG4%5D%20TA3000%20Troubleshooting%7C0c13a1e1-c090-4500-a8e0-f4164c6888bf%2F%29

Sleep, 1500
send, 4{ENTER}


;now select SLOT NUMBER



Return
}


;NOW GUI FOR CS15.
GetCS15Tasks: ;LOADS THE DROPDOWN GUI
{
	WinGetPos,x,y,,,%menutitle%
	xpos := (x -50)
	ypos := (y +40)
	CS15TasksList =
	Gui,22: Destroy
	Gui,22: font, s12,arial
	Gui,22: +AlwaysOnTop +SysMenu -MinimizeBox +Border -Resize
	Gui,22: Color, YELLOW
	CS15TasksList .=	(!CS15TasksList ? "" : "|") item%A_Index%
	For each, item in arrCS15title
		CS15TasksList .=	(!CS15TasksList ? "" : "|") item
	Gui,22: Add, DropDownList, r35 w355 vCS15TaskChoice Choose1 gCS15TaskChosen, %CS15TasksList%
	Gui,22: show, x%xpos% y%ypos%,c15 Tasks
	Return
}
;------------------------------------



CS15TaskChosen: ;NOW GETTING THE OUTPUT CHOSEN
{
	Gui,22: submit, nohide
	if CS15TaskChoice = CS15 Tasks
		Return


	Gui,22: destroy
	listcntr = 0
	Loop, % arr1.MaxIndex()
	{
		if arrCS15title[A_Index] = CS15TaskChoice
		{
			selection := arrCS15tasks[A_Index]
			listcntr = %A_Index%
		}
	}
	Adtran = %CS15TaskChoice%



	command = %selection%

	if(command == "check new number")
	{
		goAgain := "YES"
			MsgBox, 
			(LTrim 
				   ** To check new number Via script, PLEASE CLOSE and re-run script. **   
			)
		;GoSub, CS15commands
	}
	else
	{
		;execute command:
		sleep, 500
		send, ****{ENTER}
		sleep, 500
		
		if(%command% == "1")
		{
			send,  que rcfa %tn%  {enter};issue with the %tn%
        }
		else if(%command% == "2")
		{
			send,  del rcfa %tn%{enter}
        }
		else if(%command% == "3")
		{
			send, new rcfa %tn% unas 1 <TO> max 5 prs2 5425  !ilp !7db{enter}
        }
		else if(%command% == "4")
		{
			send, new rcfa %tn% <TO> max 5 pres 5424 !ilp !7db{enter}
        }
		else if(%command% == "5")
		{
			send, ovly ckt {enter};{ENTER}
			send, list oltg %route%{ENTER}
			send, busy oltg %route%{ENTER}
			send, rts oltg %route%{ENTER} ;issue with the %tn% 
        }
		else if(%command% == "6")
		{
			send, icp dn %tn% rout dnic {enter};{ENTER} 
        }
		else if(%command% == "7")
		{
			send, que dn %tn% {enter}
        }
		else if(%command% == "8")
		{
			send, que stn %tn%  {enter}
        }
		else if(%command% == "9")
		{
			send, none {enter}
        }
		else if(%command% == "10")
		{
			send, ado stn %tn% cfw ;{ENTER}act stn 512 2026 cfw <TO>{ENTER} {enter}
        }
		else if(%command% == "11")
		{
			send, qact stn %tn%  {enter} ;{ENTER}
        }
		else if(%command% == "12")
		{
			send, que stn %tn% ;{ENTER}qact stn %tn%{ENTER}   ;issue with the %tn% {enter}
        }
		else if(%command% == "13")
		{
			send, ado stn %tn% cfw ;{ENTER}act stn 512 2026 cfw <TO>{enter}
        }
		else if(%command% == "14")
		{
			send, STAT GWDN %tn% {enter} ;{ENTER}
        }
		else if(%command% == "15")
		{
			send, qact stn %tn% {enter} ;{ENTER}
        }
		else
		{}
		;MsgBox, %command% - ipaddr - %ipaddr%

		;Then display options again.
		sleep, 1000
		gosub, GetCS15Tasks
	}
	/*

	GoSub, PuttyG4

	;NOW THAT I'M IN G4 JUMPBOX, LOG INTO THE 3K selected.
	Sleep, 1500
	send, telnet %ipaddr%{ENTER}
	Sleep, 500
	if(ipaddr == "172.17.182.170") ;some need to bypass a specific menu
	{
	   send, {ENTER}
	}


	Sleep, 2500
	sendraw, %pwTS%
	send,{ENTER}

	sendraw, %unTS%
	Sleep, 300
	send, {ENTER}
	Sleep, 500
	sendraw, %pwTS%
	send,{ENTER}


	;NOW NEED TO RUN SPECIFIC COMMANDS IN 3K (press options)
	;;TESTING: https://techvalleycom.sharepoint.com/sites/RepairCenter/_layouts/15/WopiFrame.aspx?sourcedoc={f852ad69-a4a9-493b-a148-ade25df08675}&action=edit&wd=target%28Guides.one%7C96725bb9-3393-4a56-b96a-262fa6775fd3%2F%5BG4%5D%20TA3000%20Troubleshooting%7C0c13a1e1-c090-4500-a8e0-f4164c6888bf%2F%29

	Sleep, 1500
	send, 4{ENTER}


	;now select SLOT NUMBER

	*/


	Return
}






;------------------------------------
;SHARED FUNCTION?
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
	GoSub, OpenWebsiteAndLogIn ;USED TO BE OpenAdtranGUI changed: 02-22-2019
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


;DIFFERENT USER INPUTS

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
GetInfo3: ;tn (USED FOR PHONE NUMBER, SBC ect...)
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
	;cutTN := RegExReplace(%tn%, "^[0-9]{3}", "")  ; Returns "123" because a match was achieved via the case-insensitive option.

	Gui,12: Add,Button,Default x25 y125 disabled gOpenit,CONTINUE
	Gui,12: Add,Button,x146 y125 gCancelit1,CANCEL
	waiting := true
	Gui,12: Show,x%xpos% y%ypos%,REPAIR
	Return
}
;------------------------------------
GetInfoCS15: ;tn (USED FOR PHONE NUMBER, SBC ect...)
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
	Gui,13: Add,Text, cNAVY,Please put `n1 for Lewiston SW `n2 for Bangor SW`n
	Gui,13: Font, s12 normal, arial
	;Gui,12: Add,Text, cNAVY x5 y80,Chose SW to log into:`n
	Gui,13: Add,Edit,LIMIT10 NUMBER cNAVY gValueCheckCS15 vcs15guiType w120 x137 y79
	;cutTN := RegExReplace(%tn%, "^[0-9]{3}", "")  ; Returns "123" because a match was achieved via the case-insensitive option.

	Gui,13: Add,Button,Default x25 y125 disabled gOpenit,CONTINUE
	Gui,13: Add,Button,x146 y125 gCancelit1,CANCEL
	waiting := true
	Gui,13: Show,x%xpos% y%ypos%,REPAIR
	Return
}
;------------------------------------------
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

;NEW gets illuminate ticket number
GetInfo17: ;ticket
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
Gui,14: Add,Text, cNAVY,Please put in 6 digit ticket number:
Gui,14: Font, s12 normal, arial
Gui,14: Add,Text, cNAVY x5 y80,Ticket Number:
Gui,14: Add,Edit,LIMIT6 cNAVY gValueCheck16 vticket_number w150 x53 y79

;OPEN AND CLOSE BUTTONS:
Gui,14: Add,Button,Default x25 y125 disabled gOpenit,CONTINUE
Gui,14: Add,Button,x146 y125 gCancelit1,CANCEL
waiting := true
;GO BACK TO REPAIR MENU
Gui,14: Show,x%xpos% y%ypos%,REPAIR
Return
}
;------------------------------------

;------------------------------------
GetInfo18: ;tn (USED FOR PHONE NUMBER, SBC ect...) NEW JUST FOR CS 15
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
Gui,12: Add,Edit,LIMIT10 NUMBER cNAVY gValueCheck17 vtn w120 x137 y79
;cutTN := RegExReplace(%tn%, "^[0-9]{3}", "")  ; Returns "123" because a match was achieved via the case-insensitive option.

Gui,12: Add,Button,Default x25 y125 disabled gOpenit,CONTINUE
Gui,12: Add,Button,x146 y125 gCancelit1,CANCEL
waiting := true
Gui,12: Show,x%xpos% y%ypos%,REPAIR
Return
}

GetInfo19: ;mypin
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
Gui,16: Add,Text, cNAVY x5 y80,Enter PIN:
Gui,16: Add,Edit,LIMIT4 cNAVY gValueCheck18 vmypin w150 x137 y79

Gui,16: Add,Button,Default x25 y125 disabled gOpenit,CONTINUE
Gui,16: Add,Button,x146 y125 gCancelit1,CANCEL
waiting := true
Gui,16: Show,x%xpos% y%ypos%,REPAIR
Return
}

;MESSAGES FOR USER:

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
Messageit7: ;message (UNIQUE FOR AUTOPROV)
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

;asking yes or no
;------------------------------------ new 03-15-2019
Messageit13: ;message
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
Gui,30: Add,Text, cNAVY,`nPerform standard tasks?        `n
Gui,30: Font, s12 normal, arial
Gui,30: Add,Button, x25 y80 gOpenit,YES
Gui,30: Add,Button, Default x86 y80 gCancelit1,NO
waiting := true
Gui,30: Show,x%xpos% y%ypos%,REPAIR
Return
}

;TASK COMPLETE
;------------------------------------ new 03-15-2019
Messageit14: ;message
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
Gui,30: Add,Text, cNAVY,`nTASK COMPLETE %task_counter%        `n
Gui,30: Font, s12 normal, arial
Gui,30: Add,Button, Default x86 y80 gCancelit1,OK
waiting := true
Gui,30: Show,x%xpos% y%ypos%,REPAIR

task_counter++
Return
}

Messageit15:
{
WinGetPos,x,y,,,%menutitle%
xpos := (x -50)
ypos := (y +40)
Gui,30: Destroy
Gui,30: Default
Gui,30: font, s12 bold, arial
Gui,30: Color, GREEN
Gui,30: +AlwaysOnTop +SysMenu -MaximizeBox +Border -Resize
Gui,30: Font, s14 bold, arial
Gui,30: Add,Text, cNAVY,`n - ALL TASK COMPLETE! - `n
Gui,30: Font, s12 normal, arial
Gui,30: Add,Button, Default x86 y80 gCancelit1,OK
waiting := true
Gui,30: Show,x%xpos% y%ypos%,REPAIR

Return
}

;VALUE CHECKER

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
ValueCheckCS15: ;tn
{
GuiControlGet, cs15guiType

If (cs15guiType = "" or StrLen(cs15guiType) > 1)
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

ValueCheck18: ;tn for dms10
{
GuiControlGet, mypin

If (mypin = "1163")
	GuiControl,enabled, CONTINUE
else
	GuiControl,disabled, CONTINUE
Return
}
;------------------------------------

ValueCheck16: ;ticket
{
GuiControlGet, ticket_number

If (ticket_number = "" or StrLen(ticket_number) != 6) ;6 characters
	GuiControl,disabled, CONTINUE
else
	GuiControl,enabled, CONTINUE
Return
}
;------------------------------------

;This is a small function to verify that a string is a valid IP address.
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
;------------------------------------
ValueCheck17: ;tn for dms10
{
GuiControlGet, tn

If (tn = "" or StrLen(tn) < 8)
	GuiControl,disabled, CONTINUE
else
    {
	;tn = RegExReplace(tn, "^[0-9]{3}", "")  ; Returns "123" because a match was achieved via the case-insensitive option.
	
	GuiControl,enabled, CONTINUE
	}
Return
}

;NOW OTHER FUNCTIONS, SELECTED FROM MENU:

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



;------------------------------------ NEW 03-15-2019
LoginManagementFL:
{
GoSub, ChooseTMARK
WinActivate, %session%
Return
}
;------------------------------------
ChooseTMARK:
{
GoSub, GetInfo7
While(waiting)
	Sleep, 500
if Ch = 1
	GoSub, GetTMARK
else
	GoSub, RepairMenu
Return
}

;------------------------------------
GetTMARK:
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
		
		;TMARK
		/*
		FLusername 
        FLpasword  
        FLEenable  
        
        FLusername2 
        FLpasword2  
        FLEenable2  

		
		*/
			Send, %FLusername%{ENTER}
			Sleep, 800
			Send, %FLpasword%{ENTER}
			Sleep, 800
			Send, enable{ENTER}
			Sleep, 800
			Send, %FLEenable%{ENTER} ;adtran
			Sleep, 800
			
			;login2
			send X{enter}
			sleep, 800
			Send, %FLusername2%{ENTER}
			Sleep, 800
			Send, %FLpasword2%{ENTER}
			Sleep, 800
			Send, enable{ENTER}
			Sleep, 800
			Send, %FLEenable2%{ENTER} ;adtran
			Sleep, 800
			
			
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
			
			gosub, Messageit13
			While(waiting)
				Sleep, 500
			
						
			;TEST IP 172.31.15.90 
			;10 basic commands:
			;------------------
			
			/*
				show ver
				show uptime
				show interface
				show interface 1/2/1
				show interface 1/2/1 st
				show clock
				show mac-address-table 
				show qos vlan-policy 
				show qos network-policy
				self-test               
				show log buffer 
				show log buffer 
			*/
			send, show ver{ENTER}
            send, show uptime{ENTER}
			send, show interface{ENTER}
			send, show interface 1/2/1{ENTER}
			send, show interface 1/2/1 statistics {ENTER}
			send, show clock{ENTER}
			send, show mac-address-table {ENTER}
			send, show qos vlan-policy {ENTER}
			send, show qos network-policy {ENTER}
			send, self-test{ENTER}
			send, show log buffer {ENTER}
			
			Return
		    
		

		
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


;ALL SBC FUNCTIONS:
/*
HOW IT WORKS:
1. Starts with SBC2 - 192.168.76.29
2. checks health to see if active
3. stores all input in a file - "%USERPROFILE%\desktop\Logs\192.168.76.29.txt"
4. reads file and if it sees "standby" it will switch to other window / SBC 1
5. will check this SBC and if number is found. DONE
6. IF number is NOT found it will keep going and open Perimeta
7. reusing that number it will check the reg.
*/
;------------------------------------
CheckSBC:
{
nbr := 0
If (healthchecked = 0)
	GoSub, CheckHealth
;GoSub, OpenSBC

GoSub, GetResults
While(waiting)
	Sleep, 500
GoSub, Messageit6
While(waiting)
	Sleep, 500
if ch = 1
	;IF ITS ALREADY ON THE CURRENT SBC THEN RUN REG COMMAND FOR TN.
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

; NEW FUNCTION THAT CHECKS SBC and finds if number is not registered to it, it will then check the perimeta.
GetResults:
{
; 1. need to close the window first
; 2. then run command below to delete
; 3. reopen it so it a fresh session...  

			;Send, exit{ENTER}
			


;CREATING FILE FOR OUTPUT:

	;SBC1 delete file. so it can 
	if(ActiveSBC == "SBC1") 
	{
		
		IfNotExist, %USERPROFILE%\desktop\Logs\Backup
		{
			;MsgBox DOES NOT EXIST
			;FileCreateDir, %USERPROFILE%\desktop\Logs\Backup
		}	
		IfExist, %USERPROFILE%\desktop\Logs\192.168.76.28.txt
		{		
			;MsgBox EXISTS ;X
			;FileMove, %USERPROFILE%\desktop\Logs\192.168.76.28.txt, %USERPROFILE%\desktop\Logs\Backup\192.168.76.28.txt,1	
		}	
		FileDelete, %USERPROFILE%\desktop\Logs\192.168.76.28.txt
		ipaddr = 192.168.76.28 
		
		;MsgBox %A_LastError%
		;msgbox Removed - %USERPROFILE%\desktop\Logs\192.168.76.28.txt
		
		
	}
	else ;SBC2
	{
		IfNotExist, %USERPROFILE%\desktop\Logs\Backup
			FileCreateDir, %USERPROFILE%\desktop\Logs\Backup
		IfExist, %USERPROFILE%\desktop\Logs\192.168.76.29.txt
			FileMove, %USERPROFILE%\desktop\Logs\192.168.76.29.txt, %USERPROFILE%\desktop\Logs\Backup\192.168.76.29.txt,1
		FileDelete, %USERPROFILE%\desktop\Logs\192.168.76.29.txt
		
		ipaddr = 192.168.76.29
	}
	sleep, 1000
	
	;NOW that file is deleted and started over.
	Run, "C:\Program Files (x86)\PuTTY\putty.exe" -load "SBC1"
			Sleep 800
			WinActivate,%ipaddr% - PuTTY
			WinSetTitle,%ipaddr% - PuTTY,,SBC1 %ipaddr%
			WinMove,%ActiveSBC% %ipaddr%,,242,177
			Sleep 800
			SendRaw, %sbcpw%
			Send, {ENTER}
			Sleep 800
			
	GoSub, GetInfo3
	
	While(waiting)
	 Sleep, 500
	
	Send, show{SPACE}registration{SPACE}sipd{SPACE}by-user{SPACE}%tn%{SPACE}d{ENTER}

sleep 500

;NEW 06-25-2019
;IF NOT FOUND GO TO PERIMETA FUNCTION...
;---------------------------------------
Loop, Read, %USERPROFILE%\desktop\Logs\%ipaddr%.txt
	{
		IfInString, A_LoopReadLine,	No matching entries found! ;reads file line by line until it finds "No matching entries found!" then go to PERIMETA
		{
			Send, exit{ENTER}
			;Send, IP-%ipaddr% SBC-%ActiveSBC%{ENTER}
			ActiveSBC = Perimeta
			ipaddr = 10.3.112.10
			GoSub, CheckPerimeta
			Break
		}
	}
	
sleep 1000

;If it finds a registration:
if(ipaddr != "10.3.112.10")
{
	gosub, CheckSubSBC
}

Return
}
;------------------------------------

;------------------------------------
CheckHealth:
{
;NOTE: STARTING WITH SBC2!

;CREATING FILE FOR OUTPUT:
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
else ;activate window
	{
		WinActivate,SBC2 192.168.76.29
		Sleep, 500
	}

	;If there is not window alreay open...open one with SBC2
	IfWinNotExist SBC2 192.168.76.29
	{
		Run, "C:\Program Files (x86)\PuTTY\putty.exe" -load "SBC2"
		Sleep 1800
		WinActivate,192.168.76.29 - PuTTY
		WinSetTitle,192.168.76.29 - PuTTY,,SBC2 192.168.76.29
		WinMove,SBC2 192.168.76.29,,242,177
		Sleep 800
		SendRaw, %sbcpw%
		Send, {ENTER}
		Sleep 800
	}
	Send, show{SPACE}health{ENTER}
	Sleep 3000
	Loop, Read, %USERPROFILE%\desktop\Logs\192.168.76.29.txt
	{
		IfInString, A_LoopReadLine,	State				Standby ;reads file line by line until it finds "state Standby"
		{
			/* 
			MOVING THIS TO GetResults
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
			*/
			Send, exit{ENTER} ;EXITS FIRST SBC (SBC2)
			ActiveSBC = SBC1
			ipaddr = 192.168.76.28
			Break
		}
	}
healthchecked := 1 ;MEANING IT DID CHECK IT
Return
}



;NOW PERIMETA MAIN:
;------------------------------------
CheckPerimeta:
{
nbr := 0  ;???
;If (healthchecked = 0)
;	GoSub, CheckHealth

;LOG:
IfNotExist, %USERPROFILE%\desktop\Logs\Backup
	FileCreateDir, %USERPROFILE%\desktop\Logs\Backup
IfExist, %USERPROFILE%\desktop\Logs\PERIMETA.txt
	FileMove, %USERPROFILE%\desktop\Logs\PERIMETA.txt, %USERPROFILE%\desktop\Logs\Backup\PERIMETA.txt,1

;NOW OPEN THE FUNCTION:
GoSub, OpenPerimeta

/* NOT ASKING FOR USER INPUT ANY MORE 
GoSub, GetInfo3                      ;DONE (RE-USE) get TN from user
While(waiting)
	Sleep, 500
*/	
sleep, 5000 ;first wait 5 sec until Perimeta is fully loaded.

GoSub, GetResultsPerimeta            ;DONE (Does the actual commands)
GoSub, Messageit6                    ;DONE perform another task
While(waiting)
	Sleep, 500
if ch = 1                            ; DEFAULT CHOISE
	
			GoSub, GetInfo3           ;DONE (RE-USE) get TN from user
			While(waiting)
				Sleep, 500
			GoSub, GetResultsPerimeta ;DONE (Does the actual commands)
	
Return
}	
;------------------------------------ NEW Vojta

;Opens the Putty session and logs in:
OpenPerimeta:
{
;LOG:
IfNotExist, %USERPROFILE%\desktop\Logs\Backup
	FileCreateDir, %USERPROFILE%\desktop\Logs\Backup
IfExist, %USERPROFILE%\desktop\Logs\PERIMETA.txt
	FileMove, %USERPROFILE%\desktop\Logs\PERIMETA.txt, %USERPROFILE%\desktop\Logs\Backup\PERIMETA.txt,1

WinGet, state,MinMax, 10.3.112.10 - PuTTY;repair@
if state = -1
	{
		WinRestore, 10.3.112.10 - PuTTY
		Sleep, 500
	}
else
	{
		WinActivate, 10.3.112.10 - PuTTY
		Sleep, 500
	}
IfWinNotExist 10.3.112.10 - PuTTY
	{
		Run "C:\Program Files (x86)\PuTTY\putty.exe" -load "Perimeta"
		WinActivate, %Perimeta%
		Sleep, 1800
		WinMove,Perimeta 10.3.112.10,,242,177
		Send, %perimeta_un%{ENTER}
		Sleep 600 ;21000
		SendRaw, %perimeta_pw%
		Send, {ENTER}
		Sleep 500
	}
else
	{
		WinActivate, 10.3.112.10 - PuTTY
		Sleep 500
	}
Return
}
;------------------------------------ NEW Vojta
;SHOULD BE DONE

;Executes Perimeta command:
GetResultsPerimeta:
{
WinActivate,%PerimetaName% %Perimeta% ;DISPLAYS NAME AND IP?
;Send, show{SPACE}registration{SPACE}sipd{SPACE}by-user{SPACE}%tn%{SPACE}d{ENTER}

Send,  1{ENTER}
Send,  1{ENTER}
Send,  show{SPACE}sbc{SPACE}subscriber{SPACE}filter{SPACE}%tn%{SPACE}verbose{ENTER}
Send,  y{ENTER}
sleep 500

gosub, CheckSubPerimeta


Return
}
;------------------------------------ NEW Vojta

;will check perimeta for SIP ALG ect.
CheckSubPerimeta:
{
        ;wait 10 sec for processing...
		send waiting 15 seconds...{enter}
		sleep 15000
		/*
		Local_ID
		Local_ID_IP
		
		Access_Call_ID
		Access_Call_ID_IP
		
		Fast_registration_str
		Fast_registration
		
		Behind_NAT_str
		Behind_NAT
		*/
		
		/*
		PERIMETA: (TEST TN - 2075735005) BAD?    GOOD? 6037662578
		----------------
		Lewiston-Perimeta-ISC1#show sbc subscriber filter 2075735005 verbose
		Warning, there are currently 5648 subscribers in the system.
		  Continue? [y/n]:y
			sip:2075735005@192.168.220.25
			  Registrar adjacency:   MetasphereCFS
			  Delegate registration: No
		 X     Local-ID sip:2075735005@72.55.232.237:55146
				Rewritten Contact:    sip:1d8903b2cfd0c88cb5ac5631b65816e4@192.168.12.230:5060
				Remote IP Address:    72.55.232.237 Service Network ID 2
		 X       Access Call-ID:       6b71f708-99b08401-e25883de@72.55.232.237
				Access Transport:     UDP
				User Agent:           PolycomVVX-VVX_400-UA/5.2.2.1522_0004f290b190
				Subscriber adjacency: GenericAccess
				Expires in:           3 mins 27 secs (core)
		 X      Fast registration:    Not required
				SIP Outbound:         Inactive
		 X       Behind NAT:           No (auto-detect)
				Push notifications:   Not required
		*/
		
		/*
		need public IP ip   - Public_IP
		phone model         - Phone_Model
		transport TCP / UDP - Transport
		
		*/
		Public_IP := 0
		Phone_Model := 0
		Transport := 0
		
		;NOW READ FILE:
		Loop, read, %USERPROFILE%\desktop\Logs\10.3.112.10.txt
		{
		    ;Local-ID sip:
			IfInString, A_LoopReadLine, Local-ID sip:
			{
				Local_ID = %A_LoopReadLine%
				
				;Haystack := "abcdefghijklmnopqrs"
				Needle := "@"
				StringGetPos, pos, Local_ID, %Needle%
				;now should get the IP
				Local_ID_IP := SubStr(Local_ID,(pos+2)) ;ex. 2075735005@72.55.232.237:55146 interested in IP after @   match 192. 10. or 172. (private addresses)
				;for some reason getting: 5@72.55.232.237:55146
			}
			
			
			;Access Call-ID
			IfInString, A_LoopReadLine, Access Call-ID
			{
				Access_Call_ID = %A_LoopReadLine%
				
				;Haystack := "abcdefghijklmnopqrs"
				Needle := "@"
				StringGetPos, pos, Access_Call_ID, %Needle%
				;now should get the IP
				Access_Call_ID_IP := SubStr(Access_Call_ID,(pos+2)) ;ex. 6b71f708-99b08401-e25883de@72.55.232.237 Interested in the IP after @   match 192. 10. or 172. (private addresses)
                ;for some reason getting: e@72.55.232.237
			}
			
			
			;Fast registration:
			IfInString, A_LoopReadLine, Fast registration
			{
				Fast_registration_str = %A_LoopReadLine%
				Fast_registration := SubStr(Fast_registration_str,22,12) ; --->"Not required" OR "Active"
				
			}
			
			
			;Behind NAT: (should be YES)
			IfInString, A_LoopReadLine, Behind NAT
			{
				Behind_NAT_str = %A_LoopReadLine%
				Behind_NAT := SubStr(Behind_NAT_str,23,2) ;either Yes OR No
				;break
			}
			
			
			;Public_IP:
			IfInString, A_LoopReadLine, Remote IP Address
			{
				Public_IP_str = %A_LoopReadLine%
				Public_IP := SubStr(Public_IP_str,22) 
				
			}
			
			
			;Phone_Model:
			IfInString, A_LoopReadLine, User Agent
			{
				Phone_Model_str = %A_LoopReadLine%
				Phone_Model := SubStr(Phone_Model_str,22) 
				;break
			}
			
			;Transport:
			IfInString, A_LoopReadLine, Access Transport
			{
				Transport_str = %A_LoopReadLine%
				Transport := SubStr(Transport_str,23,3) 
				;break
			}
			
			
		}
		;MESSAGE USER:
		part := SubStr(Local_ID_IP,1,3)
		/*
		USED FOR DEBUGGING:
		
		MsgBox, 	
		(LTrim    
				  Local_ID: %Local_ID%
		 	      Local_ID_IP: %Local_ID_IP%
				  part: %part%
		 	      
		 	      Access_Call_ID: %Access_Call_ID%
		 	      Access_Call_ID_IP: %Access_Call_ID_IP%
		 	      
		 	      Fast_registration_str: %Fast_registration_str%
		 	      Fast_registration: %Fast_registration%
		 	      
		 	      Behind_NAT_str: %Behind_NAT_str%
		 	      Behind_NAT: %Behind_NAT%
		)
		
		*/
		
		;now initializing 2 more variables used to determine sIP ALG.
		totalErrors := 0
		sipALG_enabled :=0
		
		;ANALIZE:
		;Looking for a non-interal IP (public IP)
		if((SubStr(Local_ID_IP,1,3)!="10.") && (SubStr(Local_ID_IP,1,3)!="172") && (SubStr(Local_ID_IP,1,3)!="192"))
		{
			totalErrors++
		}
		/*
		if(SubStr(Access_Call_ID_IP,1,3)=="10." || SubStr(Access_Call_ID_IP,1,3)=="172" || SubStr(Access_Call_ID_IP,1,3)=="192")
		{
			totalErrors++
		}
		*/
		if(Fast_registration == "Not required")
		{
			totalErrors++
		}
		if(Behind_NAT == "No")
		{
			totalErrors++
		}
		else
		{	
			Behind_NAT := "YES"
		}
		;seeing if IPs match
		if(SubStr(Local_ID_IP,1,3) != SubStr(Access_Call_ID_IP,1,3))
		{
			totalErrors++
		}
		
		if(totalErrors > 0)
		{
			sipALG_enabled = "YES"
		}
		else
		{
			sipALG_enabled = "NO"
		}
		
		;THEN SAY, YES OR NO TO SIP ALG BEING ENABLED OR NOT.
		MsgBox, 
		(LTrim 
			   Phone number: %tn%
		       Local ID IP: %Local_ID_IP%
			   Access Call ID IP: %Access_Call_ID_IP%
			   Public IP: %Public_IP%
			   Fast registration: %Fast_registration%
			   Behind NAT: %Behind_NAT%
			   Phone Model / MAC: %Phone_Model%
			   Transport: %Transport%
		
        Errors: %totalErrors%		
		SIP-ALG enabled? %sipALG_enabled%
		)
Return		
}


;will check SBC for SIP ALG ect.
CheckSubSBC:
{
        sleep 2000
		/*
		SBC: (test TN - 6037660655) bad? Good?: 6034886144
		------------------
		 x	EXPIRE: 774
		 x	Local expire: 774
			Half: 157
		*/

		Public_IP := 0
		Phone_Model := 0
		Transport := 0
		
		Expire := 0
		Local_ex := 0
		
		;NOW READ FILE:
		Loop, read, %USERPROFILE%\desktop\Logs\%ipaddr%.txt
		{
		    ;Expire
			IfInString, A_LoopReadLine, Expire:
			{
				Expire_x = %A_LoopReadLine%
				
				;now should get the IP
				Expire := SubStr(Expire_x,8,3) ;ex. 2075735005@72.55.232.237:55146 interested in IP after @   match 192. 10. or 172. (private addresses)
				;for some reason getting: 5@72.55.232.237:55146
			}
			
			
			;Local_ex	
			IfInString, A_LoopReadLine, Local expire:
			{
				Local_ex_x = %A_LoopReadLine%
				
				;now should get the IP
				Local_ex := SubStr(Local_ex_x,14,3) ;ex. 6b71f708-99b08401-e25883de@72.55.232.237 Interested in the IP after @   match 192. 10. or 172. (private addresses)
                ;for some reason getting: e@72.55.232.237
			}
			
			;Public_IP:
			;* ONLY READS THE FIRST INSTACE OF IP
			If InStr(A_LoopReadLine, "IP: ")
			{
				Public_IP_str = %A_LoopReadLine%
				Public_IP := SubStr(Public_IP_str,4) 		
			}
			
	
			
			;Transport:
			IfInString, A_LoopReadLine, Transport:
			{
				Transport_str = %A_LoopReadLine%
				Transport := SubStr(Transport_str,12,3) 
				;break
			}
			
			
		}
		;MESSAGE USER:
		part := SubStr(Local_ID_IP,1,3)

		
		;now initializing 2 more variables used to determine sIP ALG.
		totalErrors := 0
		sipALG_enabled :=0
		
		;ANALIZE:

		if(Expire == Local_ex)
		{
			totalErrors++
		}
		
		if(totalErrors > 0)
		{
			sipALG_enabled = "YES"
		}
		else
		{
			sipALG_enabled = "NO"
		}
		
		;THEN SAY, YES OR NO TO SIP ALG BEING ENABLED OR NOT.
		MsgBox, 
		(LTrim 
			   Phone number: %tn%
			   Public IP: %Public_IP%
			   Transport: %Transport%
		
        Errors: %totalErrors%		
		SIP-ALG enabled? %sipALG_enabled%
		)
		;TEST TN: 6037660655
		
	Return	
}


;AUTOPROV:
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


;T1 tasks (Remote Muxes)
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

;*******************************************************************************************************************************************
;LINKS ECT:
;*******************************************************************************************************************************************

;PINGER: (WORKS)
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

		Run, "%Rdrive%%nocTier1%%fileloc%\Tech software tools\software tools\Network Pinger\Network Pinger.exe",,UseErrorlevel
		If ErrorLevel = ERROR
			GoSub, Messageit11
		WinActivate, Network Pinger
		Sleep, 1800
	}
Return
}


;DITTO CLIPBOARD MANAGER
Ditto2:
{
WinGet, state,MinMax, Ditto2
if state = -1
	{
		WinRestore, Ditto2
		Sleep, 500
	}
else
	{
		WinActivate, Ditto2
		Sleep, 500
	}
IfWinNotExist Ditto2
	{

		Run, "%Rdrive%%nocTier1%%fileloc%\Tech software tools\software tools\Ditto\Ditto.exe",,UseErrorlevel
		If ErrorLevel = ERROR
			GoSub, Messageit11
		WinActivate, Ditto2
		Sleep, 1800
	}
Return
}
;------------------------------------

;GENERATE PASSWORD:  (WORKS)
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
		Run, "%Rdrive%%nocTier1%%fileloc%\Tech software tools\software tools\PasGen.exe",, UseErrorlevel
		If ErrorLevel = ERROR
			GoSub, Messageit11
		WinActivate, Free Password Generator
		Sleep, 1800
	}
Return
}
;------------------------------------ 

;TIMER: (WORKS)
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
		Run, "%Rdrive%%nocTier1%%fileloc%\Tech software tools\software tools\xntimer.exe",,UseErrorLevel
		If ErrorLevel = ERROR
			GoSub, Messageit11
		WinActivate, XNote Timer
		Sleep, 1800
	}
Return
}
;------------------------------------ (WORKS)
MXToolbox:
{
Run, http://mxtoolbox.com/,,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
Sleep, 500
Return
}
;------------------------------------ (WORKS)
MACfind:
{
Run, http://www.coffer.com/mac_find/,,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
Sleep, 1800
Return
}
;------------------------------------ (WORKS)
Neustar:
{
Run, http://numbering.neustar.biz/,,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
Sleep, 1800
Return
}
;------------------------------------ (WORKS)


;AUTOPROV LINK
autoprovGUI:
{
Run, http://192.168.201.61,,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
Sleep, 1800
Return
}
;------------------------------------ (WORKS)
IPlist:
{
;"X:\Ops\NERD\IP Documentation\Network Group Equipment IP Addresses.xls"
Run, "X:\Ops\NERD\IP Documentation\Network Group Equipment IP Addresses.xls",,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
Sleep, 1800
Return
}
;------------------------------------ (WORKS)
MUXlist:
{
;"X:\Ops\Network Engineering\Documentation\Adtran\28XX\BRCO MUX Hub Slots.xlsx"
Run, "X:\Ops\Network Engineering\Documentation\Adtran\28XX\BRCO MUX Hub Slots.xlsx",,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
Sleep, 1800
Return
}
;------------------------------------ WORKS
Passwords:
{
;R:\shared\NOC-Tier 1\Legacy Bayring REPAIR DEPT INFO-PROCEDURES\Password lists-OXF South Branch (CANT FIND THIS)
;FOUND: R:\shared\NOC-Tier 1\Training Info\new hire info-docs,etc
Run, "%Rdrive%%nocTier1%\Training Info\new hire info-docs`,etc\Password lists-OXF South Branch",,UseErrorlevel ;\Legacy Bayring REPAIR DEPT INFO-PROCEDURES\
If ErrorLevel = ERROR
	GoSub, Messageit11
Sleep, 1800
Return
}
;------------------------------------ found ( not sure how used .kdbx file...)
KeePass:
{
;R:\shared\NOC-Tier 1\SOUTH NOC  specific Repair Info\REPAIR DEPT INFO-PROCEDURES\Password lists-OXF South Branch
;j$u2O^8sW
Run, "%Rdrive%%nocTier1%\Training Info\new hire info-docs`,etc\Password lists-OXF South Branch\Repairkeepass.kdbx",,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
Sleep, 1800
Return
}
;------------------------------------ works
JobTracking:
{
Run, https://bayringtracking.firstlight.net/browse.php,,UseErrorLevel ;http://tracking.worldpath.net/,,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
Sleep, 1800
Return
}
;------------------------------------ (WORKS)
voip1:
{
Run, http://trackvoip.bayring.com/,,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
Sleep, 1800
Return
}
;------------------------------------ (discontinued)
voip2:
{
Run, http://trackvoip.bayring.net/,,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
Sleep, 1800
Return
}
;------------------------------------ (discontinued)
voip3:
{
Run, https://voiptracking.firstlight.net/index.php,,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
Sleep, 1800
Return
}
blueC:
{
Run, https://bluecat-admin.firstlight.net/app?service=home,,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
Sleep, 1800
Return
}
;------------------------------------ (WORKS)
KNM:
{
Run, http://192.168.200.15/object.list.xsi,,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
Sleep, 1800
Return
}
;------------------------------------ (discontinued ?)
SAS:
{
Run, http://192.168.220.186/serviceassurance/search,,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
Sleep, 1800
Return
}
;------------------------------------ (works)
SAS1:
{
Run, https://192.168.114.65/serviceassurance/search,,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
Sleep, 1800
Return
}
;------------------------------------ (works)
MaineCO:
{
;R:\shared\CO Department
Run, "%Rdrive%\shared\CO Department\Connect Maine",,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
Sleep, 1800
Return
}

;OXFORD DIAGRAMS!
;\\firstlight.net\groups\LegacyShares\ON\Central\Network Diagrams\Customer Diagrams
;------------------------------------ (works)
MaineNetwork:
{
;R:\Network Diagrams
Run, "%Rdrive%\Network Diagrams",,UseErrorlevel 
If ErrorLevel = ERROR
	GoSub, Messageit11
Sleep, 1800
Return
}
;------------------------------------ (WORKS)


;OTHER CARRIER TICKETING WEBSITES:
Fairpoint:
{
Run, https://vfoprod-fairpoint.activationnow.com/,,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
Sleep, 1800
Return
}
;------------------------------------ (works)
Verizon:
{
Run, https://www22.verizon.com/wholesale/secure/sso/ws_login/,,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
Return
}
;------------------------------------ (works)



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
;------------------------------------ dont use this software anymore.. 
GoToAssist:
{
IfWinNotExist GoToAssist Corporate
	{
		Run, "%Rdrive%%nocTier1%%fileloc%\Tech software tools\software tools\GoToAssist_Corporate_HelpAlert.exe",,UseErrorlevel
		If ErrorLevel = ERROR
			GoSub, Messageit11
		WinActivate, GoToAssist Corporate - noc@oxfordnetworks.com connected to egw.gotoassist.com
		Sleep, 1800
	}
WinShow, GoToAssist Corporate - noc@oxfordnetworks.com connected to egw.gotoassist.com
Return
}
;------------------------------------ (WORKS) need log in.
Siteinfo:
{
Run, "x:\ops\nerd\siteinfo",,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
WinActivate, Siteinfo
Sleep, 1800
Return
}

IPCentrix:
{
Run, "X:\Shared\Orders\IP Centrex",,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
WinActivate, Siteinfo
Sleep, 1800
Return
}
;------------------------------------ (works)
Orders:
{
Run, "x:/shared/orders",,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
WinActivate, Orders
Sleep, 1800
Return
}
;------------------------------------ (works)
Loopqual:
{
Run, "x:/shared/provisioning/!loop qual",,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
WinActivate,!Loop Qual
Sleep, 1800
Return
}
;------------------------------------ (works)
Oncall:
{
Run, https://files.bayring.com,,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
Sleep, 1800
Return
}
;------------------------------------ Bayring
Digsafe:
{
;\shared\NOC-Tier 1\SOP procedure info Repair-Noc\OSP info-ALL NOCS
;\\files\Central\shared\NOC-Tier 1\OSP info-ALL NOCS
Run, "%Rdrive%%nocTier1%\SOP procedure info Repair-Noc\OSP info-ALL NOCS\repair digsafe.kmz",,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
Sleep, 1800
Return
}
;------------------------------------ OXFORD
DigsafeON:
{
Run, "%Rdrive%%nocTier1%\SOP procedure info Repair-Noc\OSP info-ALL NOCS\oxford.kmz",, UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
Sleep, 1800
Return
}
;------------------------------------ DONE
O360:
{
;R:\shared\NOC-Tier 1\SOUTH NOC  specific Repair Info\OMNIA 360 documents-guides
;FOUND: \firstlight.net\groups\LegacyShares\ON\Central\shared\NOC-Tier 1\Training Info\new hire info-docs,etc
Run, "%Rdrive%%nocTier1%\Training Info\new hire info-docs`,etc\OMNIA 360 documents-guides";%fileloc%\OMNIA 360 documents-guides",,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
Sleep, 1800
Return
}
;------------------------------------ WORKS
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
;------------------------------------ WORKS
NOCfolder:
{
Run, "%Rdrive%%nocTier1%%fileloc%",,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
WinActivate, 
Sleep, 1800
Return
}
;------------------------------------
NOC1folder:
{
Run, "%Rdrive%%nocTier1%",,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
WinActivate, 
Sleep, 1800
Return
}
DMS100Decomm:
{
Run, "%decom%",,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
WinActivate, 
Sleep, 1800
Return
}
;------------------------------------ \\firstlight.net\groups\LegacyShares\ON\Central\shared\NOC-Tier 1\SWITCH INFO & TESTING--Meta-DMS-Trunking-Voicemail\Oxford North records
;ups\LegacyShares\ON\Central\shared\NOC-Tier 1\SWITCH INFO & TESTING--Meta-DMS-Trunking-Voicemail\Oxford North records
CIDsheet:
{
Run, "%Rdrive%%nocTier1%\SWITCH INFO & TESTING--Meta-DMS-Trunking-Voicemail\Oxford North records\Circuit ID training cheat sheet 12-16-16.xls",,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
WinActivate, 
Sleep, 1800
Return
}
;------------------------------------ works
Altcarrier:
{
;https://citrix.oxfordnetworks.com 
Run, "%Rdrive%%nocTier1%\Alternate carrier--underlying carrier info\Archive-Legacy companies",,UseErrorlevel ;Alternate Carrier & Peak info
If ErrorLevel = ERROR
	GoSub, Messageit11
WinActivate, 
Sleep, 1800
Return
}
;------------------------------------ DONE
DMShowto:
{
Run, "%Rdrive%%nocTier1%\SWITCH INFO & TESTING--Meta-DMS-Trunking-Voicemail\DMS how to",,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
WinActivate, 
Sleep, 1800
Return
}
;------------------------------------ (WORKS)
Metahowto:
{
Run, "%Rdrive%%nocTier1%\SWITCH INFO & TESTING--Meta-DMS-Trunking-Voicemail\META how to",,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
WinActivate, 
Sleep, 1800
Return
}
;------------------------------------ WORKS


;OTHER INTERNET LINKS:


Speedtest:
{
Run, "http://speedtest.firstlight.net/",,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
WinActivate, 
Sleep, 1800
Return
}
;------------------------------------ (DONE)
Webmail:
{
Run, "https://login.microsoftonline.com/login.srf",,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
WinActivate, 
Sleep, 1800
Return
}
;------------------------------------ DONE
Altcarrier1:
{
Run, "%Rdrive%%nocTier1%\Alternate carrier--underlying carrier info",,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
WinActivate, 
Sleep, 1800
Return
}
;------------------------------------ DONE
VOIP:
{
;\\files\Central\shared\NOC-Tier 1\VoIP info ;\\firstlight.net\groups\LegacyShares\ON\Central\shared\NOC-Tier 1\Firstlight Network NOC Repair Center info\Hpbx related information\VoIP info
Run, "%Rdrive%%nocTier1%\Firstlight Network NOC Repair Center info\Hpbx related information\\VoIP info",,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
WinActivate, 
Sleep, 1800
Return
}
;------------------------------------ WORKS
Multitel:
{
Run, http:\\192.168.76.197,,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
Sleep, 1800
Return
}
;------------------------------------ WORKS



;GUI 5, creates new GUI  gets another gui and ask user to select RDP server to log into.

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
if RDPChoice = Oxterm1
	GoSub, Oxterm1
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
;------------------------------------ (doesnt work)
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
		Run, "%Rdrive%%nocTier1%%fileloc%\Tech software tools\RDP Sites\OMNIA - Term2.RDP",,UseErrorlevel
		If ErrorLevel = ERROR
			GoSub, Messageit11
		WinActivate, brcterm2
		Sleep, 1800
	}
Return
}
;------------------------------------ NEW Vojta 03-5-2019 (WORKS)
; OXF\Vripa
; Standard@123
;------------------------------------
Oxterm1:
{
Gui,5:Destroy
WinGet, state,MinMax, Oxterm1
if state = -1
	WinRestore, Oxterm1
else
	WinActivate, Oxterm1
IfWinNotExist Oxterm1
	{
		Run, "C:\Users\vripa\Desktop\Oxferm01 Omnia.RDP",,UseErrorlevel ;HAVE TO KEEP IN LOCAL PATH ( NO PERMISSION TO SHARED )
		If ErrorLevel = ERROR
			GoSub, Messageit11
		WinActivate, Oxterm1
		Sleep, 4800
		send oxf\vripa{TAB}{shift DOWN}s{shift UP}tandard{shift DOWN}2{shift UP}123{ENTER}
		sleep, 2000
		send {shift DOWN}s{shift UP}tandard{shift DOWN}2{shift UP}123{ENTER} ; ** LOG IN AGAIN AS YOU HAVE TO LOG IN 2x for password to take **
	}
Return
}
;------------------------------------ (doesnt work)
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
		Run, "%Rdrive%%nocTier1%%fileloc%\Tech software tools\RDP Sites\inm-viewer.RDP",,UseErrorlevel
		If ErrorLevel = ERROR
			GoSub, Messageit11
		WinActivate, inm-viewer
		Sleep, 1800
	}
Return
}
;------------------------------------ (doesnt work)
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
		Run, "%Rdrive%%nocTier1%%fileloc%\Tech software tools\RDP Sites\afc-viewer.RDP",,UseErrorlevel
		If ErrorLevel = ERROR
			GoSub, Messageit11
		WinActivate, afc-viewer
		Sleep, 1800
	}
Return
}
;------------------------------------ (doesnt work)
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
		Run, "%Rdrive%%nocTier1%%fileloc%\Tech software tools\RDP Sites\pingplotter.RDP",,UseErrorlevel
		If ErrorLevel = ERROR
			GoSub, Messageit11
		WinActivate, stw
		Sleep, 1800
	}
Return
}
;------------------------------------

;(WORKING!)
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
		Run,"%Rdrive%%nocTier1%%fileloc%\Tech software tools\RDP Sites\pcap.RDP",,UseErrorlevel ;"%fileloc%\Tech software tools\RDP Sites\pcap.RDP"  \RDP Sites\pcap.RDP
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
		Run, "%Rdrive%%nocTier1%%fileloc%\Tech software tools\RDP Sites\ossview.RDP",,UseErrorlevel
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
		Run, "%Rdrive%%nocTier1%%fileloc%\Tech software tools\RDP Sites\ossview.RDP",,UseErrorlevel
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
;------------------------------------ (works)
TechTools:
{
Run, %Rdrive%%nocTier1%%fileloc%\Tech software tools,,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
Sleep, 1500
Return
}
;------------------------------------ (works)
Switch:
{
Run, X:\Ops\Switch,,UseErrorlevel
If ErrorLevel = ERROR
	GoSub, Messageit11
Sleep, 1500
Return
}
;------------------------------------
OpenEAS:
{
Run, http://login.bayring.com,,UseErrorlevel
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


;DMS SWITCHS:
;**************************************************************************************************************************

;BANGORE SW:
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
		;GoSub, GetInfo
		;While(waiting)
		;Sleep, 500
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
		Send, %dms_un%{ENTER}
		Sleep, 500
		SendRaw, %dms_pw%
		Send,{ENTER}
		Sleep, 500
		
		/*
		
		Send, dmstty{SPACE}?{ENTER}
		Sleep, 500
		
		;FINDING TTY OPEN PORT IN THIS LOOP:
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
		send, {shiftdown}c{shiftup}sel{space}none{enter} ;Csel none 
		sleep, 500
		GoSub, GetInfo3
			While(waiting)
	    Sleep, 500
		Send, ****{ENTER}
		send, ovly odq{ENTER}
		Sleep, 500
		;cutTN = %tn%
		tn := SubStr(tn,4,-4) " " SubStr(tn,-3)
		send, list dn %tn% all all{ENTER}
		Sleep, 500
		send, ****{ENTER}
		sleep, 500
		send, ovly dn{ENTER}
		sleep, 500
		send, qact stn %tn%{ENTER}
		sleep, 500
		send, stat lpk <PASTE LOC TN HERE>
		
		*/
		
		GoSub, CS15commands
	}
Return
}


;LEWISTON CS15:
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
		;GoSub, GetInfo
		;While(waiting)
		;Sleep, 500
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
		Send, %dms_un%{ENTER}
		Sleep, 500
		SendRaw, %dms_pw%
		Send,{ENTER}
		Sleep, 500
		
		;SHARED COMMANDS:
		GoSub, CS15commands
	}
Return
}


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
;------------------------------------ changed loggin
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

;------------------------------------ changed loggin
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
		;GoSub, GetInfo
		;While(waiting)
		;Sleep, 500
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
		Send, %dms_un%{ENTER}
		Sleep, 500
		SendRaw, %dms_pw%
		Send,{ENTER}
		Sleep, 500
		
		;SHARED COMMANDS:
		GoSub, CS15commands
		
		/*
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
		*/
	}
Return
}


;NEW CS 15 FUNCTION...
CS15commands:
{
        ;GoSub, GetCS15Tasks
		;goAgain means if you are already logged in below wont need to execute.
		if(goAgain == "NO")
		{
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
										tty := SubStr(avail,5,2) ;GETS THE number 26! (this way it grabs 5 chars out which is 2, and 2 chars long which is the 26)
										break
									}
			}
			;Sleep, 1500
			Send, dmstty{SPACE}%tty%{ENTER}
			Sleep, 1500
			Send, ****{ENTER}
			Sleep, 500
			Send, LOGI{ENTER}
			Sleep, 500
			Send, %dms10pw%{ENTER} ;onfiber1
			Sleep, 500
			send, {shiftdown}c{shiftup}sel{space}none{enter} ;Csel none (THIS WILL TURN OFF EVENT MESSAGES DURING YOUR SESSION)
			Sleep, 500
		}
		/*
		else
		{
			Sleep, 1500
			WinActivate, %switch% %ipaddr%
			Sleep, 500
			if WinExist("%switch% %ipaddr%")
				WinClose ; use the window found above
			else
				WinClose "%ipaddr% - PuTTY"
			;WinClose, %switch% %ipaddr%
			
			MsgBox, 
			(LTrim 
				   new search... %switch% %ipaddr%			   	   
			)
		
		}
		*/
		
		;clear log:
		;MsgBox, 
		;(LTrim 
		;	   Clearing path: %USERPROFILE%\desktop\Logs\%ipaddr%.txt	   
		;)
		;-------------------------------------------------------------------------------------------------
		;NOW CLEAR FILE:
		;-------------------------------------------------------------------------------------------------
		;file := FileOpen(%USERPROFILE%\desktop\Logs\%ipaddr%.txt, "w")
		
		
	

		;if !IsObject(file)
		;{
		;	MsgBox Can't open "%file%" for writing.
		;	return
		;}
		;"%USERPROFILE%\desktop\Logs\%ipaddr%.txt".Close()
		;TestString := "This is a test string.`r`n"  ; When writing a file this way, use `r`n rather than `n to start a new line.
		;FileOpen("%USERPROFILE%\desktop\Logs\%ipaddr%.txt", "w")   ; for stdout
		;"%USERPROFILE%\desktop\Logs\%ipaddr%.txt".Write(TestString)
		;"%USERPROFILE%\desktop\Logs\%ipaddr%".txt.Close()
		
		;IniWrite, TEST, %USERPROFILE%\desktop\Logs\%ipaddr%.txt, TELNET, key
		
		;GETS INPUT FROM USER (TN)...
		
		GoSub, GetInfo3
			While(waiting)
		
	    Sleep, 500
		Send, ****{ENTER}
		Sleep, 500
		send, ovly odq{ENTER}
		Sleep, 500
		;cutTN = %tn%
		tn := SubStr(tn,4,-4) " " SubStr(tn,-3)
		
		;FIND WHERE / HOW LINE IS BUILT:
		send, list dn %tn% all all{ENTER}
		Sleep, 500
		send, ****{ENTER}
		sleep, 500
		
		;NOW NEED TO TEST TYPE OF LINE!
		sleep, 2000
		
	
		
		
		;NOW READ FILE:
		Loop, read, %USERPROFILE%\desktop\Logs\%ipaddr%.txt
		{
		    ;1. RDN
			IfInString, A_LoopReadLine, RDN
			{
				;whole string...
				whole_string_x = %A_LoopReadLine%
				
				;now should get the IP
				type_of_line := "Remote call forward (RCFA)"
				
			}
			
			;2. POTS
			IfInString, A_LoopReadLine, CALX
			{
				;whole string...
				whole_string_x = %A_LoopReadLine%
				
				;now should get the IP
				type_of_line := "POTs line"
				
			}
			;3. SIP line
			IfInString, A_LoopReadLine, SIP
			{
				;whole string...
				whole_string_x = %A_LoopReadLine%
				
				;now should get the IP
				type_of_line := "SIP line"
				
			}
			
			;5. not built on SW
			IfInString, A_LoopReadLine, ROUT PRTI
			{
				;whole string...
				whole_string_x = %A_LoopReadLine%
				
				;now should get the IP
				type_of_line := "Not bouilt in SW"
				
			}
			;6. not built on SW
			IfInString, A_LoopReadLine, ROUT DNIC
			{
				;whole string...
				whole_string_x = %A_LoopReadLine%
				
				;now should get the IP
				type_of_line := "Not bouilt in SW"
				
			}
			;7. not built on SW
			IfInString, A_LoopReadLine, ROUT VCDN
			{
				;whole string...
				whole_string_x = %A_LoopReadLine%
				
				;now should get the IP
				type_of_line := "Not bouilt in SW"
				
			}		
			
			
			;4. DID on a PRI
			IfInString, A_LoopReadLine, ROUT
			{
				;whole string...
				whole_string_x = %A_LoopReadLine%
				
				;now should get the IP
				type_of_line := "DID on a PRI"
				
				route := SubStr(whole_string_x,22)
						;;NOW LOOK FOR LOC IN THE FILE:
						;Sleep, 1000
						;loc := 0
						;Loop, read, %USERPROFILE%\desktop\Logs\%ipaddr%.txt
						;{
						;	IfInString, A_LoopReadLine, LOC 
						;		{
						;			avail = %A_LoopReadLine%
						;			loc := SubStr(avail,5)
						;			break
						;		}
						;
						;}
				
			}
		
        ;now not built in our SW.

		
			
		}
		
		;ELSE not built on SW
		if(type_of_line == 0 || route== "DNIC" || route== "PRTI" ||route== "VCDN" )
		{
			type_of_line := "Not built in SW"
		}
		
		;THEN SAY, what type of line this is ect...
		MsgBox, 
		(LTrim 
			   Phone number: %tn%
			   
			   Type of line: %type_of_line%  
		)
		;ALL TEXT: %whole_string_x%
		
		ltg := 0
		
		;NOW DO MY IF STATEMENTS...
		;-----------------------------------------------------------------------------------------------------------------------
		;RCFA
		if(type_of_line == "Remote call forward (RCFA)")
		{
			Sleep, 500
			send, ****{enter}
			Sleep, 500
			send, OVLY DN{enter}
			Sleep, 500
			send, que rcfa %tn%{enter}
			Sleep, 500
			
			;DELETE
			;send, del rcfa %tn%{enter}
			;CREATE
			;(IN-STATE)
			;send, new rcfa %tn% unas 1 207661395 max 5 prs2 5425  !ilp !7db{enter}
			;(OUT-OF-STATE)
			;send, New rcfa 835 4849 6037661395 max 5 pres 5424 !ilp !7db{enter}
			;Sleep, 500
			;send, que rcfa %tn%{enter}
			;Sleep, 500
			
		}
		;POTS
		else if(type_of_line == "POTs line") 
		{
			send,****{enter}
			Sleep, 500
			send,OVLY DN{enter}
			Sleep, 500
			send, que stn %tn%{enter}
			Sleep, 500
			send, qact stn %tn%{enter}
			Sleep, 500
						
			
			;check features:
			; ----------------
			; qact stn 512 2026 
			; 
			; call forward add
			; ----------------
			; ado stn 512 2026 cfw
			; 
			; enable
			; ----------------
			; act stn 512 2026 cfw 6037661395 (TO)
			; 
			; disable
			; ----------------
			; qact stn 512 2026
			; BOUNCE?
			; OTHERS?
			 
		}
		;SIP
		else if(type_of_line == "SIP line") 
		{
			;CHECK LINE
			send,****{enter}
			Sleep, 500
			send,OVLY DN{enter}
			Sleep, 500
			send, que stn %tn%{enter}
			Sleep, 500
			
			;NOW CHECK FOR IAD
			send,****{enter}
			Sleep, 500
			send,OVLY PED{enter}
			Sleep, 500
			send,STAT GWDN %tn%{enter}
			
			;FORWARD
			;remove ROUTE:
			;--------
			;icp dn 835 4849 rout dnic 
			;
			;check:
			;---------
			;que dn 835 4849 
			;
			;build RCFA:
			;-----------
			;new rcfa 835 4849 unas 1 2102835 max 5 prs2 5425 !ilp !7db 
			;
			;check:
			;---------
			;que rcfa 835 4849 
			;
			;OR
			;
			;build v2:
			;--------------------
			;new rcfa 835 4849      (enter)
			;	NAME   "Federal_Dist"         (enter)
			;	OPCX   1                              (enter)
			;	RDN   2102835                  (enter)
			;	OPT   max 5 !7db pres 5424 prs2 5425 !ilp    (enter)
			;	  *Customers name  has to be in quotes
			;
			
			;PUT BACK (rebuild)
			;remove RCF:
			;------------------
			;del rcfa 835 4849
			;
			;check:
			;------------------
			;que rcfa 835 4849 
			;
			;rebuild route:
			;------------------
			;icp dn 835 4849 rout 1069 
			;
			;check:
			;------------------
			;que dn 835 4849 
			
		}
		;DID on PRI
		else if(type_of_line == "DID on a PRI") 
		{
			;CHECK
			send,****{enter}
			Sleep, 500
			send,OVLY DN{enter}
			Sleep, 500
			send, que stn %tn%{enter}
			Sleep, 500
			
			;find IAD IP
			send,****{enter}
			Sleep, 500
			send,OVLY ROUT {enter}
			Sleep, 500
			send,que rout %route%{enter}
			Sleep, 1500
			
			;NOW FIND THE LTG
			Loop, read, %USERPROFILE%\desktop\Logs\%ipaddr%.txt
			{
				;whole_string_y = %A_LoopReadLine%
				;MsgBox, 
				;	(LTrim 
				;		   LINE: %whole_string_y%
				;	)
					
				IfInString, A_LoopReadLine, LTG
				{
					;whole string...
					whole_string_y = %A_LoopReadLine%
									
					ltg := SubStr(whole_string_y, 6,4)
										
					
					
					break
				}
			}	
			Sleep, 500
			send,**** {enter} 
			Sleep, 500
			send,ovly pri{enter}
			Sleep, 500
			send,que SIP %ltg% {enter}
			Sleep, 500 		
			send, ####	
            Sleep, 500			
			send,que PRI %route%{enter}
			Sleep, 500
			
			;find status:
			send,**** {enter}
			Sleep, 500
			send, ovly ckt{enter}
			Sleep, 500
			send, list oltg %route%{enter}
			
			;FORWARD
			;remove ROUTE:
			;--------
			;icp dn 835 4849 rout dnic 
			;
			;check:
			;---------
			;que dn 835 4849 
			;
			;build RCFA:
			;-----------
			;new rcfa 835 4849 unas 1 2102835 max 5 prs2 5425 !ilp !7db 
			;
			;check:
			;---------
			;que rcfa 835 4849 
			;
			;OR
			;
			;build v2:
			;--------------------
			;new rcfa 835 4849      (enter)
			;	NAME   "Federal_Dist"         (enter)
			;	OPCX   1                              (enter)
			;	RDN   2102835                  (enter)
			;	OPT   max 5 !7db pres 5424 prs2 5425 !ilp    (enter)
			;	  *Customers name  has to be in quotes
			;
			
			;PUT BACK (rebuild)
			;remove RCF:
			;------------------
			;del rcfa 835 4849
			;
			;check:
			;------------------
			;que rcfa 835 4849 
			;
			;rebuild route:
			;------------------
			;icp dn 835 4849 rout 1069 
			;
			;check:
			;------------------
			;que dn 835 4849 
		}
		;NOT IN SW
		else 
		{
			;DISPLAY NO FUNCTIONS TO PERFORM, NUMBER NOT ON THIS SW.
			send, N/A{enter}
			
		}
		
		;-----------------------------------------------------------------------------------------------------------------------
		
		;GOES TO OVLY DN to check line:
		;send, ovly dn{ENTER}
		;sleep, 500
		;send, que stn %tn%{ENTER}
		;sleep, 500
		;send, qact stn %tn%{ENTER}
		;sleep, 500
		
		;GET IAD IP IF SIP BASED:
		;send, stat gwdn %tn%{ENTER} ;GET IAD IP.
		;sleep, 500
		
		;BOUNCING LINE:
		;bouce line method 1:
		
		;NOW LOOK FOR LOC IN THE FILE:
		
		;Sleep, 1000
		;loc := 0
		;Loop, read, %USERPROFILE%\desktop\Logs\%ipaddr%.txt
		;{
		;	IfInString, A_LoopReadLine, LOC 
		;		{
		;			avail = %A_LoopReadLine%
		;			loc := SubStr(avail,5)
		;			break
		;		}
		;
		;}
		;
		;if(loc != "0")
		;{
		;	send, stat lpk %loc%{ENTER}
		;	sleep, 500
		;}
		
		
		;bouce line method 1:
		;send, busy lpk <LOC>{ENTER}
		;sleep, 500
		;bouce line method 1:
		;send, rts lpk <LOC>{ENTER}
		;sleep, 500
		
		
		;NOW NEW OVERLAY... PED.
		;sleep, 500
		;send, ****{ENTER}
		;sleep, 500
		;send, ovly ped{ENTER}
		;sleep, 500
		
		
		;METHOD 2 for bouncing a different line:
		;send, stat lpk <PASTE LOC TN HERE from que stn>{enter}
		;GET STATUS and see active calls:
		
		;if(loc != "0")
		;{
		;	sleep, 500
		;	send, ****{ENTER}
		;	sleep, 500
		;	send, ovly ped{ENTER}
		;	sleep, 500
		;	send, stat idtl %loc%{enter}
		;	sleep, 500
		;}
		
		;BUSY OUT:
		;sleep, 500
		;send, busy idtl <PASTE LOC TN HERE from que stn>{enter}
		;sleep, 500
		;and return to service...
		;send, rts idtl <PASTE LOC TN HERE from que stn>{enter}
		
		;CALL HISTORY:
		;send, ****{ENTER}
		;sleep, 500
		;send, ovly qtrn{enter}
		;sleep, 500
		;send, trvr dn %tn%{enter}
	   
      
		
		;----------------------------------------------------------------
		;Call forwarding DN
		;----------------------------------------------------------------
		;check
		;qact stn %tn%
		;Add
		;ado stn %tn% cfw
		;activate
		;act stn %tn% cfw <forward to TN>
		;deactivate
		;dact stn %tn%
		
		
		;DELAY r5 after <forward to TN> r5 (will wait 5 rings)
		
		;----------------------------------------------------------------
		;RCF:
		;----------------------------------------------------------------
		;act stn 443 2521 cfw 2077801677

        ;icp dn 443 3336 rout dnic

        ;new rcfa 443 3336 unas 1 2077801677 max 5 prs2 5425 !ilp !7db
		
		
		;----------------------------------------------------------------
		;See Active call
		;----------------------------------------------------------------
        ;stat idtl <LOC>
        
		;Will Display:   IDTL (SPL ) CALX IDE 01 987  INS       ENBL      CPBY (instead of IDLE)
		
		
		;PRI
		/*
		send, ****{ENTER}
		sleep, 500
		send, ovly rout{enter}
		sleep, 500
		send, que rout <route#>{enter}
		
		
		IF SIP:
		send, que sip <SIP#>{enter}
		*/
		
		;MORE PRI
		/*
		send, ****{ENTER}
		sleep, 500
		send, ovly ckt{enter}
		sleep, 500
		send, list oltq <PRI#>
		*/
		
		;PRI bounce
		/*
		you can busy out the PRI:
		;busy oltg <PRI #>
		;rts oltg <PRI #>
		;list oltg <PRI #>
		*/
		
		;KEEP ADDING MORE HERE
		
		
		
		;NOW OPTIONS:
		
	   number_of_numbers_checked ++
	   sleep, 1000
	   
	   ;run again?
	   goAgain := "YES"
       
	   GoSub, GetCS15Tasks
	   
	   return
		
}


;------------------------------------ changed loggin

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
		;GoSub, GetInfo
		;While(waiting)
		;Sleep, 500
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
		Send, %dms_un%{ENTER}
		Sleep, 500
		SendRaw, %dms_pw%
		Send,{ENTER}
		Sleep, 500
		
		;SHARED COMMANDS:
		GoSub, CS15commands
		
		/* ---CODE REPLACED BY SHARED FUNCTION ABOVE. ----
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
		*/
	}
Return
}
;------------------------------------ changed loggin

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
		;GoSub, GetInfo
		;While(waiting)
		;Sleep, 500
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
		Send, %dms_un%{ENTER}
		Sleep, 500
		SendRaw, %dms_pw%
		Send,{ENTER}
		Sleep, 500
		
		;SHARED COMMANDS:
		GoSub, CS15commands
		
		/* (CODE BELOW REPLACED BY ONE SHARED FUNCTION ABOVE)
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
		*/
			
	}
Return
}
;------------------------------------  PORTSMOUTH DMS 100 (CHANGED UN AND PW)
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
		;GoSub, GetInfo
		;While(waiting)
		;Sleep, 500
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
		Send, %port_un%{ENTER}
		Sleep, 500
		SendRaw, %port_pw%
		Send,{ENTER}
		;NEW FUNCTIONS 03-15-2019
		Sleep, 500
		GoSub, GetInfo3
			While(waiting)
	    Sleep, 500
        
		;checking configuration of line:
		send, qdn %tn%{ENTER}
		sleep, 500
		
		;getting to repair...
		send, mapci{ENTER}
		
		;now reproving line:
		send, 2 {ENTER}
		send, 15 {ENTER}
		send, 3 {ENTER}
		
		;POSTING LINE:
		send, 2 d %tn%{ENTER}

		
		/*		
				;REPROVING:
				send, rdtprov{ENTER}

				;make busy
				send, frls{ENTER}	

				more...
		*/
		
		
		;for forwarding:
		/*
		send, servord{ENTER}{ENTER}{ENTER}
		sleep, 500
		send, chf $ <TN TO FWD> cfw c nscr 10 a <TN TO FWD TO> $
		*/
	}
	
Return
}
;------------------------------------ changed loggin

;**************************************************************************************************************************

;------------------------------------ NEW VOJTA 03-5-2019
JumpBox: ;gets into jumpbox to access device
{
IfNotExist, %USERPROFILE%\desktop\Logs\Backup
	FileCreateDir, %USERPROFILE%\desktop\Logs\Backup
IfExist, %USERPROFILE%\desktop\Logs\%ipaddr%.txt
	FileMove, %USERPROFILE%\desktop\Logs\%ipaddr%.txt, %USERPROFILE%\desktop\Logs\Backup\%ipaddr%.txt,1
type = JumpBox
WinGet,state,MinMax, %ipaddr% - PuTTY
if state = -1 ;Window is minimized
	{
		WinActivate, %ipaddr% - PuTTY
		WinSetTitle, %ipaddr% - PuTTY,,JumpBox 64.140.224.214
		WinActivate, JumpBox 64.140.224.214
		Sleep, 500
	}
else ;Window is not minimized but on screen
	{
		WinActivate, %ipaddr% - PuTTY
		WinSetTitle, %ipaddr% - PuTTY,,JumpBox 64.140.224.214
		WinActivate, JumpBox 64.140.224.214
		Sleep, 500
	}
IfWinNotExist JumpBox 64.140.224.214
	{
		;GoSub, GetInfo
		;While(waiting)
		;Sleep, 500
		Run "C:\Program Files (x86)\PuTTY\putty.exe" -load "JumpBox",,UseErrorlevel
		If ErrorLevel = ERROR
			GoSub, Messageit11
		WinActivate, %ipaddr% - PuTTY
		Sleep, 500
		WinSetTitle, %ipaddr% - PuTTY,,JumpBox 64.140.224.214
		WinActivate,JumpBox 64.140.224.214
		Sleep, 500
		WinMove,JumpBox 64.140.224.214,,242,177
		Sleep, 500
		WinActivate,JumpBox 64.140.224.214
		Send, %jumpbox_un%{ENTER}
		Sleep, 500
		SendRaw, %jumpbox_pw%
		Send,{ENTER}
	}	
Return
}


;CALIX ONT FIBER OXFORD.
;**************************************************************************************************************************

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
		;IP: 
		;USERNAME: vripa
		;PW: Fir$tLi8*123
		;WEB: http://192.168.3.25:8080/home.action
		Run "C:\Program Files (x86)\Calix\EMSGui.exe",,UseErrorlevel ;used to be just "calix" instead of "Calix_ 14"
		;Run "C:\Program Files (x86)\Calix_ 14\EMSGui.exe",,UseErrorlevel ;used to be just "calix" instead of "Calix_ 14"
		sleep, 8000
		send, {delete}{delete}{delete}{delete}{delete}{delete}{delete}{delete}{delete}{delete}{delete}vripa{TAB}%calix_pw%{tab}{delete}{delete}{delete}{delete}{delete}{delete}{delete}{delete}{delete}{delete}{delete}{delete}{delete}{delete}{delete}{delete}{delete}{delete}{delete}{delete}{delete}{delete}192.168.3.25{enter}
		If ErrorLevel = ERROR
			GoSub, Messageit11
		WinActivate, CMS 192.168.3.25
	}
Return
}
;------------------------------------
;SEGTEL

OpenCalixSegtel:
{
WinGet,state,MinMax,10.200.4.60 - PuTTY
if state = -1 ;Window is minimized
	{
		WinActivate,10.200.4.60 - PuTTY
		WinSetTitle,10.200.4.60 - PuTTY,,CMS 10.200.4.60
		WinActivate,DMS100 Switch 192.168.0.130
		Sleep, 500
	}
else ;Window is not minimized but on screen
	{
		WinActivate,10.200.4.60 - PuTTY
		WinSetTitle,10.200.4.60 - PuTTY,,CMS 10.200.4.60
		WinActivate,CMS 10.200.4.60
		Sleep, 500
	}
IfWinNotExist CMS 10.200.4.60
	{
		;USERNAME: mursitti
		;IP: 10.200.4.60
		;USES version 11.02 of calix.
		Run "C:\Program Files (x86)\Calix_ 14\EMSGui.exe",,UseErrorlevel ;used to be just "calix" instead of "Calix_ 14"
		sleep, 6000
		send, {delete}{delete}{delete}{delete}{delete}{delete}{delete}{delete}{delete}{delete}{delete}mursitti{TAB}
		sendraw, %calix_pw_2%
		send, {tab}{delete}{delete}{delete}{delete}{delete}{delete}{delete}{delete}{delete}{delete}{delete}{delete}{delete}{delete}{delete}{delete}{delete}{delete}{delete}{delete}{delete}{delete}10.200.4.60{enter}
		
		send, {tab}
		If ErrorLevel = ERROR
			GoSub, Messageit11
		WinActivate, CMS 10.200.4.60
	}
Return
}
;------------------------------------


;EdgeGenie
EdgeGenie:
{
Gui,5:Destroy
WinGet, state,MinMax, EdgeGenie
if state = -1
	WinRestore, EdgeGenie
else
	WinActivate, EdgeGenie
IfWinNotExist EdgeGenie
	{
		Run "C:\Program Files\EdgeGenieGUI\bin\gui.bat",,UseErrorlevel ;used to be just "calix" instead of "Calix_ 14"
		If ErrorLevel = ERROR
			GoSub, Messageit11
		WinActivate, EdgeGenie
		Sleep, 4000
		send, %edgeG_un%
		sleep, 500
		send, {tab}%edgeG_pw%{ENTER}
	}
Return
}
;------------------------------------

;PlanetOperate
PlanetOperate:
{
Gui,5:Destroy
WinGet, state,MinMax, PlanetOperate
if state = -1
	WinRestore, PlanetOperate
else
	WinActivate, PlanetOperate
IfWinNotExist PlanetOperate
	{
		Run "C:\Program Files (x86)\Cyan Inc\Planet Operate-16.12.04-30965\client\PlanetOperate.exe",,UseErrorlevel ;used to be just "calix" instead of "Calix_ 14"
		If ErrorLevel = ERROR
			GoSub, Messageit11
		WinActivate, PlanetOperate
		Sleep, 4000
		send, %planetO_un%
		sleep, 500
		send, {tab}%planetO_pw%{ENTER}
		
	}   
Return
}



;Accession
Accession:
{
Gui,5:Destroy
WinGet, state,MinMax, Accession
if state = -1
	WinRestore, Accession
else
	WinActivate, Accession
IfWinNotExist Accession
	{
		Run "C:\Program Files (x86)\Accession Communicator2\AccessionCommunicator.exe",,UseErrorlevel ;used to be just "calix" instead of "Calix_ 14"
		If ErrorLevel = ERROR
			GoSub, Messageit11
		WinActivate, Accession
		
	}   
Return
}


;CommPortalAssistant
CommPortalAssistant:
{
Gui,5:Destroy
WinGet, state,MinMax, CommPortalAssistant
if state = -1
	WinRestore, CommPortalAssistant
else
	WinActivate, CommPortalAssistant
IfWinNotExist CommPortalAssistant
	{
		Run "C:\Program Files (x86)\Metaswitch Networks\CommPortal Assistant\telephonytraynotifier.exe",,UseErrorlevel ;used to be just "calix" instead of "Calix_ 14"
		If ErrorLevel = ERROR
			GoSub, Messageit11
		WinActivate, CommPortalAssistant
		
		;Run, C:\Program Files (x86)\Metaswitch Networks\CommPortal Assistant\telephonytraynotifier.exe
		Sleep, 20000
		Send, {LWin Down}{b}{LWin Up}{Enter}{Up 4}{Enter}
		Sleep, 3000
		ControlFocus, msctls_hotkey325, A ahk_class ahk_class
		/*
		Click, Left, 1
		Sleep, 10
		*/
		Loop
		{
			CoordMode, Pixel, Window
			ImageSearch, FoundX, FoundY, -146, -125, 762, 656, C:\Users\vripa\AppData\Roaming\MacroCreator\Screenshots\Screen_20190619082947.png
			;CenterImgSrchCoords("C:\Users\vripa\AppData\Roaming\MacroCreator\Screenshots\Screen_20190619082947.png", FoundX, FoundY)
			If ErrorLevel = 0
				Click, %FoundX%, %FoundY% Left, 1
		}
		Until ErrorLevel = 0
		Send, {Tab 9}
		/*
		Send, {Tab 5}{Enter}
		*/
		Sleep, 1000
		Send, {Enter}
		Sleep, 1000
		Send, {Tab 3}{Enter}
		Sleep, 1000
		MsgBox, 0, , DONE

	}  
;WinActivate, ahk_class NotifyIconOverflowWindow	




Return
}
;------------------------------------

;OneControl
OneControl:
{
Gui,5:Destroy
WinGet, state,MinMax, OneControl
if state = -1
	WinRestore, OneControl
else
	WinActivate, OneControl
IfWinNotExist OneControl
	{
		Run "C:\Program Files (x86)\Ciena\OneControl_Client_6.3.0\OneControl_Client.exe",,UseErrorlevel ;used to be just "calix" instead of "Calix_ 14"
		If ErrorLevel = ERROR
			GoSub, Messageit11
		WinActivate, OneControl
		Sleep, 1800
	}
Return
}
;------------------------------------

;AnyConnectVPN (works)
AnyConnectVPN:
{
Gui,5:Destroy
WinGet, state,MinMax, AnyConnectVPN
if state = -1
	WinRestore, AnyConnectVPN
else
	WinActivate, AnyConnectVPN
IfWinNotExist AnyConnectVPN
	{
		Run "C:\Program Files (x86)\Cisco\Cisco AnyConnect Secure Mobility Client\vpnui.exe",,UseErrorlevel ;used to be just "calix" instead of "Calix_ 14"
		If ErrorLevel = ERROR
			GoSub, Messageit11
		WinActivate, AnyConnectVPN
		Sleep, 800
		send, {enter}
		Sleep, 2000
		send, %calix_pw%{enter}
	}
Return
}
;------------------------------------

;FirstLightVPN
; WORKS new 03-18-2019
FirstLightVPN:
{
Gui,5:Destroy
WinGet, state,MinMax, FirstLightVPN
if state = -1
	WinRestore, FirstLightVPN
else
	WinActivate, FirstLightVPN
IfWinNotExist FirstLightVPN
	{
		Run "C:\Windows\System32\rasphone.exe",,UseErrorlevel ; -d firstlight VPN (at the end)
		If ErrorLevel = ERROR
			GoSub, Messageit11
		WinActivate, FirstLightVPN
		Sleep, 1800
		send, {ENTER}
		Sleep, 500
		send, {ENTER}
        Sleep, 500
	}
Return
}
;------------------------------------



;------------------------------------
;OPEN EXPLORER
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
		
		Run "C:\Program Files (x86)\Metaswitch\MetaView Explorer\MetaViewExplorerIA.exe",,UseErrorlevel ;"C:\Program Files (x86)\Metaswitch\MetaView Explorer\metaviewexplorerla.exe",,UseErrorlevel
		;While(waiting)
		Sleep, 7000
		send, hgf351pm{ENTER}
		
		If ErrorLevel = ERROR
			GoSub, Messageit11
		WinActivate, MetaView Explorer - 192.168.114.30
		Sleep, 500
	}
Return
}
;------------------------------------

;OPEN WEB
OpenWeb:
{
IfWinNotExist %web_address%
	{
		Run %web_address%,,UseErrorlevel
		If ErrorLevel = ERROR
			GoSub, Messageit11
		WinActivate, %web_address%
		Sleep, 1800
		WinActivate, %web_address%
	}
else
	{
		WinActivate, %web_address%
		Sleep 500
	}
Return
}
;------------------------------------


;NOT SURE WHAT THESE ARE...

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
		Run, %Rdrive1%\apps\onda\,,UseErrorlevel
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



;**************************************************************************************************************************
;OTHER FUNCTIONS 
;**************************************************************************************************************************

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


;EXITS AND DESTROYS APP:
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

;(CLOSES THE GUI)
Esc::
GoTo Exit

;(CLOSES THE GUI)
!c:: ;alt-c
GoTo Exit
ExitApp

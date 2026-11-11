; Urien By RajaaBoy

; This is this character's configuration file. 
; Here you will be able to enable and disable certain features and mechanics that this character has.
; Everything that can be modified is listed below. 
; Only modify those states between "Edit Start" and "Edit End" lines
; Using values other than those specified next to each state's value may cause unexpected results.

; Press ctrl + F and search for the following strings to jump to the different sections:
;	System Features
;		01. Basic Attack Chaining Toggle
;		02. Parry Toggle
;		03, Quick Stand Toggle
;		04. Ground Recovery Toggle
;		05. Aerial Recovery Toggle
;		06. Score System Toggle
;		07. Message Toggle
;		08. KO Background & KO Messages Toggle
;		09. Selection Timer Toggle
;		10. Super Art Selection Toggle
;		11. Palette Selection Toggle
;		12. Super Bar Toggle
;		13. Stun Bar Toggle
;		14. Win Score Toggle
;		15. Grade Screen Toggle
;		16. Super bar/Stun bar Display Toggle
; 		17. Red Parry Toggle
;		18. Air Guard Toggle
;		19. Super Art Canceling Toggle
;		20. System Effect Type Toggle
; 		21. Hit Counter Toggle
; 		22. Hit Sound Toggle
;		23. SF3 Hitspark Color Toggle
;		24. Command Buffering Toggle

; Tips:
;	cond(teamside = 1, [Player1's Value], [Player2's Value])
;	Changing player1's value only affects player1; changing player2's values only affects player2.

;=======================================================================================================================================================================================================================================================================================================================================================
; Configuration Helper
;=======================================================================================================================================================================================================================================================================================================================================================
[Statedef 4000]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = -65536

;----------------------------------------------------------------------------------------------------EDIT START-->
; 1. System Features
;----------------------------------------------------------------------------------------------------EDIT START-->

;==================================================< BASIC ATTACK CHAINING TOGGLE >===============================================================================================
[state 4000, Chaining]
type = varset
trigger1 = !time
v = 0
value = 1
	; 0 = Off
	; 1 = On

	

;==================================================< PARRY TOGGLE >===============================================================================================
[state 4000, Parry]
type = varset
trigger1 = !time
v = 1
value = 5
	; 0 -> 16 = harder -> easier



;==================================================< QUICK STAND TOGGLE >===============================================================================================
[state 4000, Quick Stand]
type = varset
trigger1 = !time
v = 2
value = 1
	; 0 = Off
	; 1 = On

	

;==================================================< GROUND RECOVERY TOGGLE >===============================================================================================
[state 4000, Ground Recovery]
type = varset
trigger1 = !time
v = 3
value = 1
	; 0 = Off
	; 1 = On

	

;==================================================< AERIAL RECOVERY TOGGLE >===============================================================================================
[state 4000, Aerial Recovery]
type = varset
trigger1 = !time
v = 4
value = 1
	; 0 = Off
	; 1 = On


	
;==================================================< SCORE SYSTEM TOGGLE >===============================================================================================
[state 4000, Score System]
type = varset
trigger1 = !time
v = 5
value = 0
	; 0 = Off
	; 1 = On

; Horizontal Offset
[state 4000, Offset X]
type = varset
trigger1 = !time
v = 6
value = cond(teamside = 1, 104, 256)
	; Increase = Move Right 
	; Decrease = Move Left

 ; Vertical Offset
[state 4000, Offset Y]
type = varset
trigger1 = !time
v = 7
value = cond(teamside = 1, -2, -2)
	; Increase = Move Up
	; Decrease = Move down

; Width
[state 4000, Width]
type = varset
trigger1 = !time
fv = 0
value = 1.0
	; Increase = Bigger
	; Decrease = Smaller

; Height
[state 4000, Height]
type = varset
trigger1 = !time
fv = 1
value = 0.9
	; Increase = Bigger
	; Decrease = Smaller



;==================================================< MESSAGE TOGGLE (TECH BONUS, COUNTER HIT, ETC) >===============================================================================================
[state 4000, Message System]
type = varset
trigger1 = !time
v = 8
value = 0
	; 0 = Off 
	; 1 = Only Serious Messages
	; 2 = 60 Achievement Messages (set a)
	; 3 = 60 Achievement Messages (set b)
	; 4 = All Messages
	; Change any of the above values to their negative opposites to prevent messages from prolonging the end of the match.

; Horizontal Offset
[state 4000, Offset X]
type = varset
trigger1 = !time
v = 9
value = cond(teamside = 1, 0, 311)
	; Increase = Move Right 
	; Decrease = Move Left

; Vertical Offset
[state 4000, Offset Y]
type = varset
trigger1 = !time
v = 10
value = cond(teamside = 1, -48, -48)
	; Increase = Move Up 
	; Decrease = Move Down

; Width
[state 4000, Width]
type = varset
trigger1 = !time
fv = 2
value = 1.0
	; Increase = Bigger 
	; Decrease = Smaller

; Height
[state 4000, Height]
type = varset
trigger1 = !time
fv = 3
value = 1.0
	; Increase = Bigger 
	; Decrease = Smaller



;==================================================< KO BACKGROUND & KO MESSAGES TOGGLE >===============================================================================================
[state 4000, KO Pause & KO Background]
type = varset
trigger1 = !time
v = 11
value = 2
	; 0 = Off
	; 1 = Pause and KO message
	; 2 = Only Pause


	
;==================================================< SELECTION TIMER TOGGLE >===============================================================================================
[state 4000, Selection Timer]
type = varset
trigger1 = !time
v = 12
value = 0
	; 0 = Off
	; value = time in seconds

; Horizontal Offset
[state 4000, Offset X]
type = varset
trigger1 = !time
v = 13
value = cond(teamside = 1, 0, 320)
	; Increase = Move Right 
	; Decrease = Move Left

; Vertical Offset
[state 4000, Offset Y]
type = varset
trigger1 = !time
v = 14
value = cond(teamside = 1, -56, -56)
	; Increase = Move Up 
	; Decrease = Move Down

; Width
[state 4000, Width]
type = varset
trigger1 = !time
fv = 4
value = 1.0 
	; Increase = Bigger 
	; Decrease = Smaller

; Height
[state 4000, Height]
type = varset
trigger1 = !time
fv = 5
value = 1.0
	; Increase = Bigger 
	; Decrease = Smaller



;==================================================< SUPER ART SELECTION TOGGLE >===============================================================================================
[state 4000, Super Art Selection]
type = varset
trigger1 = !time
v = 15
value =0
	; 0 = Off 
	; 1 = Disable Bars (All Super Arts)
	; 2 = All Super Arts
	; 3 = Tyrant Slaughter
	; 4 = Temporal Thunder
	; 5 = Aegis Reflector

; Horizontal Offset
[state 4000, Offset X]
type = varset
trigger1 = !time
v = 16
value = cond(teamside = 1, 120, 200)
	; Increase = Move Right 
	; Decrease = Move Left

; Vertical Offset
[state 4000, Offset Y]
type = varset
trigger1 = !time
v = 17
value = cond(teamside = 1, -200, -200)
	; Increase = Move Up 
	; Decrease = Move Down

; Width
[state 4000, Width]
type = varset
trigger1 = !time
fv = 6
value = 1.0
	; Increase = Bigger 
	; Decrease = Smaller

; Height
[state 4000, Height]
type = varset
trigger1 = !time
fv = 7
value = 1.0
	; Increase = Bigger 
	; Decrease = Smaller

; Super Art Select Style
; Stacked may have layering problems on certain stages with foregrounds because Elecbyte decided to make certain parameters ignore layering parameters.
[state 4000, Style]
type = varset
trigger1 = !time
v = 18
value = 1
	; 0 = Normal
	; 1 = Stacked



;==================================================< PALETTE SELECTION TOGGLE >===============================================================================================
[state 4000, Palette Selection]
type = varset
trigger1 = !time
v = 19
value = 0
	; 0 = Off
	; 1 = On

; Horizontal Offset
[state 4000, Offset X]
type = varset
trigger1 = !time
v = 20
value = cond(teamside = 1, 144, 176)
	; Increase = Move Right 
	; Decrease = Move Left

; Vertical Offset
[state 4000, Offset Y]
type = varset
trigger1 = !time
v = 21
value = cond(teamside = 1, -184, -184)
	; Increase = Move Up 
	; Decrease = Move Down

; Width
[state 4000, Width]
type = varset
trigger1 = !time
fv = 8
value = 1.0
	; Increase = Bigger 
	; Decrease = Smaller

; Height
[state 4000, Height]
type = varset
trigger1 = !time
fv = 9
value = 1.0 
	; Increase = Bigger 
	; Decrease = Smaller

	

;==================================================< SUPER BAR TOGGLE >===============================================================================================
[state 4000, Super Bar]
type = varset
trigger1 = !time
v = 22
value = 0
	; 0 = Off
	; 1 = On

; Horizontal Offset
[state 4000, Offset X]
type = varset
trigger1 = !time
v = 23
value = cond(teamside = 1, 36, 284)
	; Increase = Move Right 
	; Decrease = Move Left

; Vertical Offset
[state 4000, Offset Y]
type = varset
trigger1 = !time
v = 24
value = cond(teamside = 1, -226, -226)
	; Increase = Move Up 
	; Decrease = Move Down

; Width
[state 4000, Width]
type = varset
trigger1 = !time
fv = 10
value = 1.0
	; Increase = Bigger 
	; Decrease = Smaller

; Height
[state 4000, Height]
type = varset
trigger1 = !time
fv = 11
value = 1.0
	; Increase = Bigger 
	; Decrease = Smaller



;==================================================< STUN BAR TOGGLE >===============================================================================================
[state 4000, Stun Bar]
type = varset
trigger1 = !time
v = 25
value = 0
	; 0 = Off
	; 1 = On

; Horizontal Offset
[state 4000, Offset X]
type = varset
trigger1 = !time
v = 26
value = cond(teamside = 1, 136, 184)
	; Increase = Move Right 
	; Decrease = Move Left

; Vertical Offset
[state 4000, Offset Y]
type = varset
trigger1 = !time
v = 27
value = cond(teamside = 1, -40, -40)
	; Increase = Move Up 
	; Decrease = Move Down

; Width
[state 4000, Width]
type = varset
trigger1 = !time
fv = 12
value = 1.0
	; Increase = Bigger 
	; Decrease = Smaller

; Height
[state 4000, Height]
type = varset
trigger1 = !time
fv = 13
value = 1.0
	; Increase = Bigger 
	; Decrease = Smaller



;==================================================< WIN SCORE TOGGLE >===============================================================================================
[state 4000, Win Score]
type = varset
trigger1 = !time
v = 28
value = 0
	; 0 = Off
	; 1 = On

; Horizontal Offset
[state 4000, Offset X]
type = varset
trigger1 = !time
v = 29
value = cond(teamside = 1, 320, 320)
	; Increase = Move Right 
	; Decrease = Move Left

; Vertical Offset
[state 4000, Offset Y]
type = varset
trigger1 = !time
v = 30
value = cond(teamside = 1, -64, -64)
	; Increase = Move Up 
	; Decrease = Move Down

; Width
[state 4000, Width]
type = varset
trigger1 = !time
fv = 14
value = 1.0
	; Increase = Bigger 
	; Decrease = Smaller

; Height
[state 4000, Height]
type = varset
trigger1 = !time
fv = 15
value = 1.0
	; Increase = Bigger 
	; Decrease = Smaller



;==================================================< GRADE SCREEN TOGGLE >===============================================================================================
[state 4000, Grade Screen]
type = varset
trigger1 = !time
v = 31
value = 0
	; 0 = Off
	; 1 = On


	
;==================================================< SUPER BAR/STUN BAR DISPLAY TOGGLE >===============================================================================================
; Display super and stun bars during super art selection?
; Could be buggy in some instances, but is mostly okay to enable.
[state 4000, Super bar/Stun bar Display]
type = varset
trigger1 = !time
v = 32
value = 0
	; 0 = Off
	; 1 = On

	

;==================================================< RED PARRY TOGGLE >===============================================================================================
[state 4000, Red Parry]
type = varset
trigger1 = !time
v = 33
value = 1
	; 0 = Off
	; 1 = On

	

;==================================================< AIR GUARD TOGGLE >===============================================================================================
[state 4000, Air Guard]
type = varset
trigger1 = !time
v = 34
value = 1
	; 0 = Off
	; 1 = On


	
;==================================================< SUPER ART CANCELING TOGGLE >===============================================================================================
[state 4000, Super Art Canceling]
type = varset
trigger1 = !time
v = 35
value = 1
	; 0 = Off
	; 1 = On

	

;==================================================< SYSTEM EFFECT TYPE TOGGLE >===============================================================================================
[state 4000, System Effect Type]
type = varset
trigger1 = !time
v = 36
value = 1
	; 0 = SF3
	; 1 = Custom



;==================================================< HIT COUNTER TOGGLE >===============================================================================================
[state 4000, Hit Counter]
type = varset
trigger1 = !time
v = 37
value = 0
	; 0 = Off
	; 1 = On (screenpack hit counter disabled)
	; 2 = On (screenpack hit counter enabled)



;==================================================< HIT SOUND TOGGLE >===============================================================================================
[state 4000, Hit Sound]
type = varset
trigger1 = !time
v = 38
value = 0
	; 0 = SF3
	; 1 = Custom
	


;==================================================< SF3 HITSPARK COLOR TOGGLE >===============================================================================================
[state 4000, SF3 Hitspark Color]
type = varset
trigger1 = !time
v = 39
value = cond(teamside = 1, 0, 1)
	; 0 = Redyellow (default player 1)
	; 1 = Green (default player 2)
	; 2 = Blue
	; 3 = Black
	; 4 = Purple
	; 5 = Red
	; 6 = Babyblue
	; 7 = Gray



;==================================================< COMMAND BUFFERING TOGGLE >===============================================================================================
; Contiguous command buffering allows commands to sustain themselves in certain conditions; reversals, target combos, and links will
; be easier to perform. Strict command buffering means strict canceling, chaining, and linking.
; Values lower than or equal zero mean nothing and should be avoided.
; You can make the commands as easy as you want.
[state 4000, Command Buffering]
type = varset
trigger1 = !time
v = 40
value = 6
	; Lower Value = Stricter
	; Higher Value = More Contiguous (easier, more intruding)



;----------------------------------------------------------------------------------------------------EDIT END-->



;*
;***
;******
;************
;************************
;**************************************
;*********************************************
;*****************************************************
;***********************************************************
;*******************************************************************
;*******************************************************************
;------------------------------------------------------------------------------------------------------>
; DO NOT EDIT BELOW THIS LINE
;------------------------------------------------------------------------------------------------------>
;*******************************************************************
;*******************************************************************
;*****************************************************
;*********************************************
;**************************************
;************************
;************
;******
;***
;*



[state 4000, Change Animation]
type = changeanim
trigger1 = anim != 9999
value = 9999

[state 4000, Parent Bind]
type = bindtoparent
trigger1 = 1
pos = 0, -4

[state 4000, No KO Slowdown]
type = assertspecial
triggerall = root,var(59) && root,alive
triggerall = cond(numhelper(4000), helper(4000),var(11), 1)
trigger1 = root,var(54) = [1, 2]
trigger2 = numenemy
trigger2 = enemy(0),life + cond(numenemy = 2, enemy(1),life, 0) <= 0
flag = nokoslow

[state 4000, Remove Default Hit Counter]
type = hitadd
triggerall = var(37) = 1
trigger1 = !root,numpartner || playeridexist(root,var(55))
value = -65536

[state 4000, Turn]
type = turn
trigger1 = facing != root,facing

[state 4000, Limit Parry Difficulty]
type = varset
trigger1 = var(1) != [0, 16]
var(1) = cond(var(1) < 0, 0, 16)

[state 4000, AI Super Art Selection]
type = null
triggerall = !time
triggerall = root,ailevel
trigger1 = var(12) := 0 || var(15) := 0 || var(19) := 0

; It's an unnecessary formula, could just divide var(x) by fvar(x), but -- 
; this could be used for positioning in other types of code that need to multiply first, then get the position later on.
; This is purely referencial because I like being complicated when it's not necessary.
[state 4000, Positioning Formula]
type = null
triggerall = !time
; Score System
trigger1 = var(6) := ceil(var(6) * fvar(0) / fvar(0) ** 2.0) || var(7) := ceil(var(7) * fvar(1) / fvar(1) ** 2.0) || 1
; Message System
trigger1 = var(9) := ceil(var(9) * fvar(2) / fvar(2) ** 2.0) || var(10) := ceil(var(10) * fvar(3) / fvar(3) ** 2.0) || 1
; Selection Timer
trigger1 = var(13) := ceil(var(13) * fvar(4) / fvar(4) ** 2.0) || var(14) := ceil(var(14) * fvar(5) / fvar(5) ** 2.0) || 1
; Super Art Selection
trigger1 = var(16) := ceil(var(16) * fvar(6) / fvar(6) ** 2.0) || var(17) := ceil(var(17) * fvar(7) / fvar(7) ** 2.0) || 1
; Palette Selection
trigger1 = var(20) := ceil(var(20) * fvar(8) / fvar(8) ** 2.0) || var(21) := ceil(var(21) * fvar(9) / fvar(9) ** 2.0) || 1
; Super Bar
trigger1 = var(23) := ceil(var(23) * fvar(10) / fvar(10) ** 2.0) || var(24) := ceil(var(24) * fvar(11) / fvar(11) ** 2.0) || 1
; Stun Bar
trigger1 = var(26) := ceil(var(26) * fvar(12) / fvar(12) ** 2.0) || var(27) := ceil(var(27) * fvar(13) / fvar(13) ** 2.0) || 1
; Win Score
trigger1 = var(29) := ceil(var(29) * fvar(14) / fvar(14) ** 2.0) || var(30) := ceil(var(30) * fvar(15) / fvar(15) ** 2.0)

[state 4000, Not the Beginning]
type = varadd
trigger1 = sysvar(0) < 2 && roundstate >= 2
sysvar(0) = 1

[state 4000, Death Sound]
type = varadd
trigger1 = root,var(54) = 1 && numenemy >= 1
trigger1 = enemy(0),numhelper(6225)
trigger2 = root,var(54) = 2 && numenemy >= 2
trigger2 = enemy(0),numhelper(6225) || enemy(1),numhelper(6225)
trigger3 = root,var(54) = 3 && numenemy >= 2
trigger3 = enemy(0),numhelper(6225)
trigger4 = root,var(54) = 4 && numenemy >= 2
trigger4 = enemy(0),numhelper(6225)
sysvar(1) = 1

[state 4000, Death Sound]
type = playsnd
triggerall = !sysvar(2) && !root,alive
trigger1 = root,var(54) = [1, 2]
trigger1 = sysvar(1) >= 90
trigger2 = (root,var(54) != [1, 2]) || root,var(54) && !sysvar(1)
trigger2 = !root,gethitvar(hitshaketime)
trigger2 = cond(root,statetype = L, root,time >= 3, 1)
value = 5150, (root,stateno = 5810 || root,anim = 5810)
channel = 0

[state 4000, Death Sound]
type = varset
triggerall = !root,alive
trigger1 = root,var(54) = [1, 2]
trigger1 = sysvar(1) >= 90
trigger2 = (root,var(54) != [1, 2]) || root,var(54) && !sysvar(1)
trigger2 = !root,gethitvar(hitshaketime)
trigger2 = cond(root,statetype = L, root,time >= 3, 1)
sysvar(2) = 1

[state 4000, Death Sound]
type = varset
trigger1 = sysvar(1)
trigger1 = root,alive
sysvar(1) = 0

[state 4000, Death Sound]
type = varset
trigger1 = sysvar(2)
trigger1 = root,alive
sysvar(2) = 0

[state 4000, Display Grade System]
type = displaytoclipboard
trigger1 = authorname = "RajaaBoy"
text = "Offence = %d | Defence = %d  | Tech = %d  | EX = %d | v.1.0"
params = root,var(34), root,var(35), root,var(36), root,var(37)
ignorehitpause = 1

[state 4000, Destroy Explod]
type = removeexplod
trigger1 = time >= 2147483647

[state 4000, Destroy Helper]
type = destroyself
trigger1 = time >= 2147483647

;=========================================================================
; Initiate
;=========================================================================
[Statedef 5900]
type = S

[state 5900, General System Helper]
type = helper
trigger1 = !numhelper(4000)
name = "General System Helper"
ID = 4000
stateno = 4000
postype = p1
ownpal = 0
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0
supermovetime = 2147483647
pausemovetime = 2147483647

[state 5900, Reset Variables at Beginning of Every Round?]
type = null
triggerall = 1
; Integers
trigger1 = var(00) := 0000000 || var(01) := 0000000 || var(02) := 0000000 || var(03) := 0000000 || var(04) := 0000000 || var(05) := 0000000 || 1
trigger1 = var(06) := 0000000 || var(07) := 0000000 || var(08) := 0000000 || var(09) := 0000000 || var(10) := 0000000 || var(11) := 0000000 || 1
trigger1 = var(12) := 0000000 || var(13) := 0000000 || var(14) := 0000000 || var(15) := 0000000 || var(16) := 0000000 || var(17) := 0000000 || 1
trigger1 = var(18) := 0000000 || var(19) := var(19) || var(20) := var(20) || var(21) := var(21) || var(22) := 0000000 || var(23) := 0000000 || 1
trigger1 = var(24) := 0000000 || var(25) := 0000000 || var(26) := 0000000 || var(27) := 0000000 || var(28) := 0000000 || var(29) := 0000000 || 1
trigger1 = var(30) := 0000000 || var(31) := var(31) || var(32) := 0000000 || var(33) := var(33) || var(34) := var(34) || var(35) := var(35) || 1
trigger1 = var(36) := var(36) || var(37) := var(37) || var(38) := 0000000 || var(39) := 0000000 || var(40) := 0000000 || var(41) := 0000000 || 1
trigger1 = var(42) := 0000000 || var(43) := 0000000 || var(44) := 0000000 || var(45) := 0000000 || var(46) := 0000000 || var(47) := 0000000 || 1
trigger1 = var(48) := 0000000 || var(49) := 0000000 || var(50) := 0000000 || var(51) := 0000000 || var(52) := 0000000 || var(53) := 0000000 || 1
trigger1 = var(54) := 0000000 || var(55) := 0000000 || var(56) := 0000000 || var(57) := 0000000 || var(58) := 0000000 || var(59) := var(59) || 1
; Floats
trigger1 = fvar(00) := 0000000 || fvar(01) := 0000000 || fvar(02) := 0000000 || fvar(03) := 0000000 || fvar(04) := 0000000 || fvar(05) := 0000000 || 1
trigger1 = fvar(06) := 0000000 || fvar(07) := 0000000 || fvar(08) := 0000000 || fvar(09) := 0000000 || fvar(10) := 0000000 || fvar(11) := 0000000 || 1
trigger1 = fvar(12) := fvar(12) || fvar(13) := fvar(13) || fvar(14) := fvar(14) || fvar(15) := fvar(15) || fvar(16) := fvar(16) || fvar(17) := fvar(17) || 1
trigger1 = fvar(18) := 0000000 || fvar(19) := 0000000 || fvar(20) := 0000000 || fvar(21) := 0000000 || fvar(22) := 0000000 || fvar(23) := 0000000 || 1
trigger1 = fvar(24) := 0000000 || fvar(25) := 0000000 || fvar(26) := 0000000 || fvar(27) := 0000000 || fvar(28) := 0000000 || fvar(29) := 0000000 || 1
trigger1 = fvar(30) := 0000000 || fvar(31) := 0000000 || fvar(32) := 0000000 || fvar(33) := 0000000 || fvar(34) := 0000000 || fvar(35) := 0000000 || 1
trigger1 = fvar(36) := 0000000 || fvar(37) := 0000000 || fvar(38) := 0000000 || fvar(39) := 0000000

[state 5900, Reset Variables at Beginning of Every Match?]
type = null
triggerall = !roundsexisted
; Integers
trigger1 = var(00) := 0000000 || var(01) := 0000000 || var(02) := 0000000 || var(03) := 0000000 || var(04) := 0000000 || var(05) := 0000000 || 1
trigger1 = var(06) := 0000000 || var(07) := 0000000 || var(08) := 0000000 || var(09) := 0000000 || var(10) := 0000000 || var(11) := 0000000 || 1
trigger1 = var(12) := 0000000 || var(13) := 0000000 || var(14) := 0000000 || var(15) := 0000000 || var(16) := 0000000 || var(17) := 0000000 || 1
trigger1 = var(18) := 0000000 || var(19) := var(19) || var(20) := var(20) || var(21) := var(21) || var(22) := 0000000 || var(23) := 0000000 || 1
trigger1 = var(24) := 0000000 || var(25) := 0000000 || var(26) := 0000000 || var(27) := 0000000 || var(28) := 0000000 || var(29) := 0000000 || 1
trigger1 = var(30) := 0000000 || var(31) := 0000000 || var(32) := 0000000 || var(33) := 0000000 || var(34) := 0000000 || var(35) := 0000000 || 1
trigger1 = var(36) := 0000000 || var(37) := 0000000 || var(38) := 0000000 || var(39) := 0000000 || var(40) := 0000000 || var(41) := 0000000 || 1
trigger1 = var(42) := 0000000 || var(43) := 0000000 || var(44) := 0000000 || var(45) := 0000000 || var(46) := 0000000 || var(47) := 0000000 || 1
trigger1 = var(48) := 0000000 || var(49) := 0000000 || var(50) := 0000000 || var(51) := 0000000 || var(52) := 0000000 || var(53) := 0000000 || 1
trigger1 = var(54) := 0000000 || var(55) := 0000000 || var(56) := 0000000 || var(57) := 0000000 || var(58) := 0000000 || var(59) := var(59) || 1
; Floats
trigger1 = fvar(00) := 0000000 || fvar(01) := 0000000 || fvar(02) := 0000000 || fvar(03) := 0000000 || fvar(04) := 0000000 || fvar(05) := 0000000 || 1
trigger1 = fvar(06) := 0000000 || fvar(07) := 0000000 || fvar(08) := 0000000 || fvar(09) := 0000000 || fvar(10) := 0000000 || fvar(11) := 0000000 || 1
trigger1 = fvar(12) := fvar(12) || fvar(13) := fvar(13) || fvar(14) := fvar(14) || fvar(15) := fvar(15) || fvar(16) := fvar(16) || fvar(17) := fvar(17) || 1
trigger1 = fvar(18) := 0000000 || fvar(19) := 0000000 || fvar(20) := 0000000 || fvar(21) := 0000000 || fvar(22) := 0000000 || fvar(23) := 0000000 || 1
trigger1 = fvar(24) := 0000000 || fvar(25) := 0000000 || fvar(26) := 0000000 || fvar(27) := 0000000 || fvar(28) := 0000000 || fvar(29) := 0000000 || 1
trigger1 = fvar(30) := 0000000 || fvar(31) := 0000000 || fvar(32) := 0000000 || fvar(33) := 0000000 || fvar(34) := 0000000 || fvar(35) := 0000000 || 1
trigger1 = fvar(36) := 0000000 || fvar(37) := 0000000 || fvar(38) := 0000000 || fvar(39) := 0000000

[state 5900, Reset Variables at Beginning of First Match]
type = varrangeset
trigger1 = !roundsexisted && matchno = 1
value = 0
[state 5900, Reset Variables at Beginning of First Match]
type = varrangeset
trigger1 = !roundsexisted && matchno = 1
fvalue = 0

[state 5900, Palette]
type = null
triggerall = !var(19)
trigger1 = cond(palno = 01, 0 * (var(19) := 004), 1) ; a
trigger1 = cond(palno = 02, 0 * (var(19) := 005), 1) ; b
trigger1 = cond(palno = 03, 0 * (var(19) := 006), 1) ; c
trigger1 = cond(palno = 04, 0 * (var(19) := 001), 1) ; x
trigger1 = cond(palno = 05, 0 * (var(19) := 002), 1) ; y
trigger1 = cond(palno = 06, 0 * (var(19) := 003), 1) ; z
trigger1 = cond(palno = 07, 0 * (var(19) := 011), 1) ; start + a
trigger1 = cond(palno = 08, 0 * (var(19) := 012), 1) ; start + b
trigger1 = cond(palno = 09, 0 * (var(19) := 013), 1) ; start + c
trigger1 = cond(palno = 10, 0 * (var(19) := 008), 1) ; start + x
trigger1 = cond(palno = 11, 0 * (var(19) := 009), 1) ; start + y
trigger1 = cond(palno = 12, 0 * (var(19) := 010), 1) ; start + z

[state 5900, End State]
type = changestate
trigger1 = !roundsexisted && roundno >= 2
trigger1 = teammode = turns
value = 4100

[state 5900, End State]
type = changestate
trigger1 = 1
value = 190 * (roundno = 1)
;---------------------------------------------------------------------------
;=========================================================================
[StateDef -2]

;=========================================================================
; Precaching -2
;=========================================================================
; To add compatibility with another Rajaa-Styled SF3 character, simply add animations: 2147483647 and -2147483647 to your character,
; then place your character's name in the triggers below for var(54), just like it is for RajaaBoy.
; You'll only need to add subsequent triggerX's, nothing else.

[state -2, Precaching: Detect Contact]
type = varset
trigger1 = var(2) < 0
trigger1 = movecontact = 1
var(2) = hitpausetime
ignorehitpause = 1

[state -2, Precaching: RajaaBoy]
type = varset
triggerall = numenemy = 1
trigger1 = enemy,authorname = "RajaaBoy"
; trigger2 = enemy,authorname = "YourName"
var(54) = (enemy,selfanimexist(-2147483647) && enemy,selfanimexist(2147483647))

[state -2, Precaching: RajaaBoy]
type = varset
triggerall = numenemy = 2
triggerall = enemy(0),selfanimexist(-2147483647) && enemy(0),selfanimexist(2147483647)
triggerall = enemy(1),selfanimexist(-2147483647) && enemy(1),selfanimexist(2147483647)
trigger1 = enemy(0),authorname = "RajaaBoy" && enemy(1),authorname = "RajaaBoy"
; trigger2 = enemy(0),authorname = "YourName" && enemy(1),authorname = "YourName" 
var(54) = 2

[state -2, Precaching: RajaaBoy]
type = varset
triggerall = numenemy = 2
triggerall = enemy(0),selfanimexist(-2147483647) && enemy(0),selfanimexist(2147483647)
trigger1 = enemy(0),authorname = "RajaaBoy" && enemy(1),authorname != "RajaaBoy"
; trigger2 = enemy(0),authorname = "YourName" && enemy(1),authorname != "YourName"
var(54) = 3

[state -2, Precaching: RajaaBoy]
type = varset
triggerall = numenemy = 2
triggerall = enemy(1),selfanimexist(-2147483647) && enemy(1),selfanimexist(2147483647)
trigger1 = enemy(0),authorname != "RajaaBoy" && enemy(1),authorname = "RajaaBoy"
; trigger2 = enemy(0),authorname != "YourName" && enemy(1),authorname = "YourName" 
var(54) = 4

[state -2, Precaching: Reset Rajaa Enemy Flags]
type = varset
trigger1 = var(54)
trigger1 = !numenemy
var(54) = 0

[state -2, Precaching: RajaaBoy]
type = varset
triggerall = numpartner
triggerall = partner,selfanimexist(-2147483647) && partner,selfanimexist(2147483647)
trigger1 = partner,authorname = "RajaaBoy"
; trigger2 = partner,authorname = "YourName"
var(55) = partner,ID

[state -2, Precaching: Reset Partner Flags]
type = varset
trigger1 = var(55)
trigger1 = !numpartner
var(55) = 0

[state -2, Precaching: Partner]
type = varset
triggerall = numpartner
triggerall = partner,authorname = "GM" || partner,authorname = "Homura"
trigger1 = partner,name = "Ryu" || partner,name = "Ken" || partner,name = "Gouki" || partner,name = "Hugo"
trigger2 = partner,name = "Sean" || partner,name = "Alex" || partner,name = "Gill" || partner,name = "Elena"
trigger3 = partner,name = "Ibuki" || partner,name = "Makoto" || partner,name = "Remy" || partner,name = "Chun-Li"
trigger4 = partner,name = "Twelve" || partner,name = "Q" || partner,name = "Urien" || partner,name = "Necro"
trigger5 = partner,name = "Yun" || partner,name = "Yang" || partner,name = "Dudley" || partner,name = "Oro"
var(56) = partner,ID

[state -2, Precaching: Reset Partner Flags]
type = varset
trigger1 = var(56)
trigger1 = !numpartner
var(56) = 0

[state -2, Precaching: Cornerpush Target ID]
type = varset
trigger1 = numtarget
trigger1 = !target,ishelper
trigger1 = movecontact = 1 && var(2) = hitpausetime || var(2) = -2 || var(2) = -3 || var(2) = -4 || var(2) = -5
var(57) = target,id
ignorehitpause = 1
[state -2, Precaching: Reset Cornerpush Target ID]
type = varset
trigger1 = !var(59)
var(57) = 0
ignorehitpause = 1

[state -2, Precaching: Target ID]
type = varset
trigger1 = var(2) = hitpausetime
trigger1 = movecontact = 1 && numtarget
trigger1 = !target,ishelper
var(58) = target,id
ignorehitpause = 1

[state -2, Precaching: Aspect Ratio]
type = null
; General Velocities
trigger1 = fvar(14) := 1.0 ; * (gamewidth / (384.0 * gamewidth / 320.0)) || 1 ; xvel
trigger1 = fvar(15) := 1.0 * (gameheight / (224.0 * gameheight / 240.0)) || 1 ; yvel
trigger1 = fvar(16) := 1.0 ; * (gamewidth / (384.0 * gamewidth / 320.0)) || 1 ; xaccel
trigger1 = fvar(17) := 1.0 ; * (gameheight / (224.0 * gameheight / 240.0)) || 1 ; yaccel
; Hit Velocities
trigger1 = fvar(18) := cond((var(54) != [1, 2]), 1.0 * (gamewidth / (384.0 * gamewidth / 320.0)), 1.0) || 1 ; ground hit xvel
trigger1 = fvar(19) := 1.0 * (gameheight / (224.0 * gameheight / 240.0)) || 1 ; ground hit yvel (unused)
trigger1 = fvar(20) := 1.0 ; * (gameheight / (224.0 * gameheight / 240.0)) || 1 ; hit yaccel
ignorehitpause = 1

[state -2, Precaching: Detect Previous Stateno]
type = varset
triggerall = time <= 1
trigger1 = stateno = 40 || stateno = 50
trigger2 = prevstateno = 40 || prevstateno = 50
trigger3 = stateno = 132 || stateno = 140
trigger4 = prevstateno = 120 || prevstateno = 132 || prevstateno = 140
trigger5 = stateno = 913 || prevstateno = 913
trigger6 = stateno = 5040 || prevstateno = 5040
var(48) = 1
ignorehitpause = 1

[state -2, Precaching: Reset Previous Stateno]
type = varset
trigger1 = !var(59)
trigger2 = statetype != A && stateno != 40
trigger3 = movetype = H && stateno != 5040
trigger4 = (stateno = [154, 155]) || (stateno = [164, 165])
var(48) = 0
ignorehitpause = 1

[state -2, Precaching: Reset Accels]
type = null
trigger1 = !var(48) || cond(!fvar(13), fvar(13) := const(movement.yaccel) * fvar(17), 0)
trigger1 = fvar(12) := 0.0 * fvar(16) || fvar(13) := const(movement.yaccel) * fvar(17)
ignorehitpause = 1

[state -2, Precaching: Reset High Jump]
type = null
trigger1 = stateno != 40 && stateno != 50 && stateno != [912, 913]
trigger1 = statetype != A || movetype != I
trigger1 = var(44) := 0
ignorehitpause = 1

;=========================================================================
; Charge Buffering, Button Tap Buffering
;=========================================================================
; Street Fighter 3: 3rd Strike styled charge buffering -- 100% Accurate.
; Use fvar(23) and fvar(22) for commands in the .cmd file:
; triggerall = command = "fwd" || command = "holdfwd"
; triggerall = command = "a" || command = "b" || command = "c"
; triggerall = fvar(23)

;========================< Charge Back >========================
[state -2, Charge: Back Charge Hold Time]
type = varadd
triggerall = !ailevel
trigger1 = fvar(21) < 23 && !fvar(23)
trigger1 = command = "holdback"
fvar(21) = 1
ignorehitpause = 1

[state -2, Charge: Back Charge Buffer Time]
type = varset
triggerall = !ailevel
trigger1 = fvar(21) = 23
trigger1 = command != "holdback"
fvar(22) = 10 + 0 * (fvar(21) := 42) + 0 * (fvar(23) := 5 + cond(numhelper(4000), helper(4000),var(40), 6))
ignorehitpause = 1
[state -2, Charge: Back Charge Buffer Time]
type = varadd
triggerall = !ailevel
trigger1 = command != "holdback" || fvar(23)
fvar(22) = -1 + 0 * (cond(fvar(23), fvar(23) := fvar(23) - 1, 0))
ignorehitpause = 1
[state -2, Charge: Back Charge Buffer Time]
type = varset
triggerall = !ailevel
trigger1 = fvar(22) < 0
fvar(22) = 42 + 0 * (fvar(21) := 0)
ignorehitpause = 1

[state -2, Charge: Reset Back Hold Time]
type = varset
triggerall = !ailevel
trigger1 = fvar(21) >= 42 && fvar(23)
trigger1 = command = "fwd" || command = "holdfwd"
fvar(21) = 0 * (fvar(23) := 5 + cond(numhelper(4000), helper(4000),var(40), 6))
ignorehitpause = 1

;========================< Charge Down >========================
[state -2, Charge: Down Charge Hold Time]
type = varadd
triggerall = !ailevel
trigger1 = fvar(24) < 23 && !fvar(26)
trigger1 = command = "holddown"
fvar(24) = 1
ignorehitpause = 1

[state -2, Charge: Down Charge Buffer Time]
type = varset
triggerall = !ailevel
trigger1 = fvar(24) = 23
trigger1 = command != "holddown"
fvar(25) = 10 + 0 * (fvar(24) := 42) + 0 * (fvar(26) := 5 + cond(numhelper(4000), helper(4000),var(40), 6))
ignorehitpause = 1
[state -2, Charge: Down Charge Buffer Time]
type = varadd
triggerall = !ailevel
trigger1 = command != "holddown" || fvar(26)
fvar(25) = -1 + 0 * (cond(fvar(26), fvar(26) := fvar(26) - 1, 0))
ignorehitpause = 1
[state -2, Charge: Down Charge Buffer Time]
type = varset
triggerall = !ailevel
trigger1 = fvar(25) < 0
fvar(25) = 42 + 0 * (fvar(24) := 0)
ignorehitpause = 1

[state -2, Charge: Reset Down Hold Time]
type = varset
triggerall = !ailevel
trigger1 = fvar(24) >= 42 && fvar(26)
trigger1 = command = "up" || command = "holdup"
fvar(24) = 0 * (fvar(26) := 5 + cond(numhelper(4000), helper(4000),var(40), 6))
ignorehitpause = 1

;========================< Tap Button >========================

[state -2, Tap Button: Human Buffer Time]
type = null
triggerall = !ailevel
; Neutral Throw
trigger1 = stateno = 820
trigger1 = animelemtime(14) < 0
trigger1 = command = "x" || command = "y" || command = "z"
trigger1 = fvar(27) := (fvar(27) + 16) + 0 * (fvar(29) := 10)
ignorehitpause = 1

[state -2, Tap Button: AI Buffer Time]
type = null
triggerall = ailevel
; Neutral Throw
trigger1 = stateno = 820 && numenemy
trigger1 = animelemtime(14) < 0
trigger1 = fvar(27) := (fvar(27) + 16) + 0 * (fvar(29) := 10)
ignorehitpause = 1

[state -2, Tap Button: Max Buffer Time]
type = varset
trigger1 = fvar(27) > 43
fvar(27) = 43
ignorehitpause = 1

[state -2, Tap Button: Buffer Over]
type = varset
trigger1 = fvar(27) && !fvar(29)
fvar(28) = 0 + 0 * (fvar(27) := 0)
ignorehitpause = 1
[state -2, Tap Button: Periodically Reset Buffer]
type = varadd
trigger1 =  !fvar(27) && !fvar(29)
fvar(28) = -1
ignorehitpause = 1
[state -2, Tap Button: Periodically Reset Buffer]
type = varset
trigger1 = fvar(28) < 0
fvar(28) = 42 + 0 * (fvar(27) := 0) + 0 * (fvar(29) := 0)
ignorehitpause = 1

[state -2, Tap Button: Buffer Duration]
type = varadd
trigger1 = fvar(29)
fvar(29) = -1
ignorehitpause = 1

;=========================================================================
; Tweaks
;=========================================================================

[state -2, Tweak: Detect Hits]
type = varadd
trigger1 = var(2) = hitpausetime && movehit = 1
trigger1 = hitdefattr != SCA,AT
trigger2 = var(2) = -2 || var(2) = -4 ; pseudo-hit/pseudo-hit (no sparks)
var(51) = 1
ignorehitpause = 1
[state -2, Tweak: Reset Hits]
type = varset
triggerall = var(51)
trigger1 = roundstate >= 4
trigger2 = cond((var(54) = [1, 2]) && playeridexist(var(58)), playerid(var(58)),fvar(7) < playerid(var(58)),fvar(8) && !playerid(var(58)),var(30), 1)
trigger2 = cond(numenemy, enemynear,statetype = L && (enemynear,stateno != [5100, 5101]), 0)
trigger3 = cond((var(54) = [1, 2]) && playeridexist(var(58)), playerid(var(58)),fvar(7) < playerid(var(58)),fvar(8) && !playerid(var(58)),var(30), 1)
trigger3 = cond(numenemy, enemynear,statetype = L && (enemynear,stateno = [5100, 5101]) && enemynear,time >= 2, 0)
trigger4 = cond(numenemy, enemynear,movetype != H && enemynear,anim != 5300, 0)
trigger5 = !hitpausetime
trigger5 = cond((var(54) = [1, 2]) && playeridexist(var(58)), playerid(var(58)),fvar(7) < playerid(var(58)),fvar(8) && !playerid(var(58)),var(30), 1)
trigger5 = var(51) >= 2 && var(13) && !var(14) && !var(15) && !var(16)
var(51) = 0
ignorehitpause = 1

[state -2, Tweak: Hit/Attack Level]
type = varset
triggerall = numenemy && var(54) = [1, 2]
triggerall = gethitvar(fall.envshake.freq) != 0
trigger1 = var(53) - life > 0 ; || enemynear,var(2) = enemynear,hitpausetime
var(17) = floor(gethitvar(fall.envshake.freq))
ignorehitpause = 1
[state -2, Tweak: Reset Hit/Attack Level]
type = varset
triggerall = var(17)
trigger1 = movetype != A && movetype != H
var(17) = 0
ignorehitpause = 1

[state -2, Tweak: Target Facing]
type = targetfacing
trigger1 = numtarget = 1 && movecontact = 1
trigger1 = !target,hitshakeover && !target,hitfall && !target,time
value = cond(((target,pos x - pos x) * facing) >= 0, -1, 1)
ignorehitpause = 1

[state -2, Tweak: Afterimage Cancel]
type = afterimagetime
trigger1 = !var(59) || movetype = H
trigger2 = stateno != 50 && ctrl
time = 0
ignorehitpause = 1

[state -2, Tweak: Edge Width]
type = posadd
triggerall = numhelper(9991)
triggerall = helper(9991),var(0) || helper(9991),var(1)
trigger1 = frontedgebodydist < helper(9991),var(0)
trigger2 = backedgebodydist < helper(9991),var(1)
x = cond(frontedgebodydist < helper(9991),var(0), frontedgebodydist - helper(9991),var(0), helper(9991),var(1) - backedgebodydist)
ignorehitpause = 1

[state -2, Tweak: No AI Guarding]
type = assertspecial
trigger1 = ailevel
trigger1 = gametime % 4 = 0
flag = nostandguard
flag2 = nocrouchguard
flag3 = noairguard
ignorehitpause = 1

[state -2, Tweak: No Air Guarding]
type = assertspecial
trigger1 = cond(numhelper(4000), !helper(4000),var(34), 0)
flag = noairguard
ignorehitpause = 1

;=========================================================================
; System Initialization
;=========================================================================

[state -2, General System Helper]
type = helper
trigger1 = !numhelper(4000)
name = "General System Helper"
ID = 4000
stateno = 4000
postype = p1
ownpal = 0
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0
supermovetime = 2147483647
pausemovetime = 2147483647
ignorehitpause = 1

[state -2, Score System Helper]
type = helper
trigger1 = cond(numhelper(4000), helper(4000),var(5), stateno != 5900)
trigger1 = cond(var(54) && numenemy, !enemy,numhelper(6610), 1)
trigger1 = !numhelper(6300) && !numhelper(6610)
trigger1 = !numpartner || cond(var(55) && numpartner, partner,ID > ID, 1)
name = "Score System Helper"
ID = 6300
stateno = 6300
postype = p1
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0
supermovetime = 2147483647
pausemovetime = 2147483647
ignorehitpause = 1

[state -2, Extra Score System Helper 1]
type = helper
trigger1 = cond(numhelper(4000), helper(4000),var(8) || helper(4000),var(37), stateno != 5900)
trigger1 = cond(var(54) && numenemy, !enemy,numhelper(6610), 1)
trigger1 = !numhelper(6305) && !numhelper(6610)
trigger1 = !numpartner || cond(var(55) && numpartner, partner,ID > ID, 1)
name = "Extra Score System Helper"
ID = 6305
stateno = 6305
postype = p1
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0
supermovetime = 2147483647
pausemovetime = 2147483647
ignorehitpause = 1

[state -2, Extra Score System Helper 2]
type = helper
trigger1 = cond(numhelper(4000), abs(helper(4000),var(8)) = 2 || abs(helper(4000),var(8)) = 4, stateno != 5900)
trigger1 = cond(var(54) && numenemy, !enemy,numhelper(6610), 1)
trigger1 = !numhelper(6306) && !numhelper(6610)
trigger1 = !numpartner || cond(var(55) && numpartner, partner,ID > ID, 1)
name = "Extra Score System Helper"
ID = 6306
stateno = 6306
postype = p1
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0
supermovetime = 2147483647
pausemovetime = 2147483647
ignorehitpause = 1

[state -2, Extra Score System Helper 3]
type = helper
trigger1 = cond(numhelper(4000), abs(helper(4000),var(8)) = 3 || abs(helper(4000),var(8)) = 4, stateno != 5900)
trigger1 = cond(var(54) && numenemy, !enemy,numhelper(6610), 1)
trigger1 = !numhelper(6307) && !numhelper(6610)
trigger1 = !numpartner || cond(var(55) && numpartner, partner,ID > ID, 1)
name = "Extra Score System Helper"
ID = 6307
stateno = 6307
postype = p1
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0
supermovetime = 2147483647
pausemovetime = 2147483647
ignorehitpause = 1

[state -2, Message System Helper]
type = helper
trigger1 = cond(numhelper(4000), helper(4000),var(8) || helper(4000),var(37), stateno != 5900)
trigger1 = cond(var(54) && numenemy, !enemy,numhelper(6610), 1)
trigger1 = !numhelper(6315) && !numhelper(6610)
trigger1 = !numpartner || cond(var(55) && numpartner, partner,ID > ID, 1)
name = "Message System Helper"
ID = 6315
stateno = 6315
postype = p1
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0
supermovetime = 2147483647
pausemovetime = 2147483647
ignorehitpause = 1

[state -2, Selection Timer Helper]
type = helper
trigger1 = var(21) != 1 && !var(21) && roundstate < 2
trigger1 = cond(numhelper(4000), helper(4000),var(12), stateno != 5900)
trigger1 = cond(numhelper(4000), helper(4000),var(15), stateno != 5900)
; trigger1 = cond(numhelper(4000), helper(4000),var(15) || helper(4000),var(19), stateno != 5900)
trigger1 = !numhelper(6350) && !numhelper(6610) && !numpartner
name = "Selection Timer Helper"
ID = 6350
stateno = 6350
postype = p1
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0
supermovetime = 2147483647
pausemovetime = 2147483647
ignorehitpause = 1

[state -2, Super Art Selection Helper]
type = helper
trigger1 = var(21) != 1 && !var(21) && roundstate < 2
trigger1 = cond(numhelper(4000), helper(4000),var(15), stateno != 5900)
trigger1 = !numhelper(6365) && !numhelper(6610) && !numpartner
name = "Super Art Selection Helper"
ID = 6365
stateno = 6365 + cond(numhelper(4000), !!helper(4000),var(18), 0)
postype = p1
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0
supermovetime = 2147483647
pausemovetime = 2147483647
ignorehitpause = 1

[state -2, Palette Selection Helper]
type = helper
trigger1 = var(21) != 1 && !var(21) && roundstate < 2
trigger1 = cond(numhelper(4000), helper(4000),var(19), stateno != 5900)
trigger1 = !numhelper(6430) && !numhelper(6610) && !numpartner
name = "Palette Selection Helper"
ID = 6430
stateno = 6430
postype = p1
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0
supermovetime = 2147483647
pausemovetime = 2147483647
ignorehitpause = 1

[state -2, Super Bar Helper]
type = helper
trigger1 = var(21) != 1
trigger1 = cond(numhelper(4000), helper(4000),var(22), stateno != 5900)
trigger1 = cond(var(54) && numenemy, !enemy,numhelper(6610), 1)
trigger1 = cond(numhelper(4000) && numhelper(6365), helper(4000),var(32), !numhelper(6365))
trigger1 = !numhelper(6450) && !numhelper(6610)
trigger1 = !numpartner || cond((var(55) || var(56)) && numpartner, partner,ID > ID, 1)
name = "Super Bar Helper"
ID = 6450
stateno = 6450
postype = p1
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0
supermovetime = 2147483647
pausemovetime = 2147483647
ignorehitpause = 1

[state -2, Stun Bar Helper]
type = helper
trigger1 = var(21) != 1
trigger1 = cond(numhelper(4000), helper(4000),var(25), stateno != 5900)
trigger1 = cond(var(54) && numenemy, !enemy,numhelper(6610), 1)
trigger1 = cond(numhelper(4000) && numhelper(6365), helper(4000),var(32), !numhelper(6365))
trigger1 = !numhelper(6550) && !numhelper(6610)
name = "Stun Bar Helper"
ID = 6550
stateno = 6550
postype = p1
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0
supermovetime = 2147483647
pausemovetime = 2147483647
ignorehitpause = 1

[state -2, Win Score Helper]
type = helper
trigger1 = roundstate = 4 && win && matchover
trigger1 = cond(numhelper(4000), helper(4000),var(28), 1)
; trigger1 = cond(numhelper(6315), !helper(6315),sysvar(0), 1) || cond(numhelper(4000), helper(4000),var(8) < 0, 0) 
trigger1 = cond(var(54) && numenemy, !enemy,numhelper(6610), 1)
trigger1 = !numhelper(6575) && !numhelper(6610)
trigger1 = !numpartner || cond(var(55) && numpartner, partner,ID > ID, 1)
trigger1 = (stateno = [181, 189]) || (stateno = [4200, 4299])
trigger1 = !animelemtime(animelemno(0) + 1) && anim != 0 || time >= 240
name = "Win Score Helper"
ID = 6575
stateno = 6575
postype = p1
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0
supermovetime = 2147483647
pausemovetime = 2147483647
ignorehitpause = 1

[state -2, Grade Screen Helper]
type = helper
triggerall = cond(numhelper(4000), helper(4000),var(31), 1)
triggerall = cond(numhelper(6315), !helper(6315),sysvar(0), 1) || cond(numhelper(4000), helper(4000),var(8) < 0, 0) 
triggerall = !numhelper(6610)
triggerall = !numpartner || cond(var(55) && numpartner, partner,ID > ID, 1)
trigger1 = roundstate = 4 && win && matchover
trigger1 = cond(numhelper(4000), !helper(4000),var(28), !numhelper(6575))
trigger1 = (stateno = [181, 189]) || (stateno = [4200, 4299])
trigger1 = !animelemtime(animelemno(0) + 1) && anim != 0  || time >= 240
trigger2 = cond(numhelper(4000), helper(4000),var(28), 1)
trigger2 = cond(numhelper(6575), helper(6575),fvar(6) >= 72, 0)
name = "Grade Screen Helper"
ID = 6610
stateno = 6610
postype = p1
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0
supermovetime = 2147483647
pausemovetime = 2147483647
ignorehitpause = 1

;=========================================================================
; Score System
;=========================================================================
; Var(20): Actual Score.

[state -2, Score System: Limit Score]
type = varset
trigger1 = var(20) != [0, 99999999] ; 2147483647 - highest number possible
var(20) = cond(var(20) > 99999999, 99999999, 0)
ignorehitpause = 1

;=========================================================================
; Super Arts Selection
;=========================================================================
; Var(21): Selected Super Art. 
; Value shouldn't exceed number of available super arts + 2.

[state -2, Super Arts Selection: Super Art]
type = varset
trigger1 = !numhelper(6365)
trigger1 = stateno != 5900
trigger1 = var(21) != [1, 5]
var(21) = 2
ignorehitpause = 1

[state -2, Super Arts Selection: Super Art]
type = varset
trigger1 = !numhelper(6365)
trigger1 = cond(numpartner, partner,ID < ID, 0)
var(21) = 2
ignorehitpause = 1

;=========================================================================
; Palette Selection
;=========================================================================
; Var(19): Selected Palette 
; Value shouldn't exceed number of available palettes.

[state -2, Palette Selection: Super Art]
type = varset
trigger1 = stateno != 5900
trigger1 = var(19) != [1, 13]
var(19) = cond(var(19) < 1, 13, 1)
ignorehitpause = 1

;=========================================================================
; Super Bar
;=========================================================================

;========================< Initialize Super Bar >========================
; Var(22): Any value from 1 to 3 (represents the number of stocks).
; Var(23): Maximum power value.
; Var(24): Size of the Bar. Should be the maximum power in one stock divided by 10 times 320 divided by 384.
; Var(25): Adds more power to each attack that already generates power.
; fvar(33): Multiplies amount of power gained from attacks that already generate power.
; fvar(34): Multiplies damage based on Super Art.
; Var(26): Amount of power needed to perform EX Specials
; Var(27): Amount of power needed to perform Super Arts
; Var(28): Amount of current power limited by var(23).
; Var(29): Timer for super art that requires time (Makoto's SA3).

[state -2, Super Bar: Initialize Super Bar]
type = null

; All Super Arts
trigger1 = var(21) <= 2
trigger1 = var(22) := 3 || var(23) := 3840 || var(24) := 107 || 1
trigger1 = var(25) := 0 || fvar(33) := 1.0 || fvar(34) := 1.0 || 1
trigger1 = var(26) := 400 || var(27) := floor(var(23) / var(22))
; trigger1 = var(26) := floor(var(23) / var(22) / 3.0) || var(27) := floor(var(23) / var(22))

; Super Art I
trigger2 = var(21) = 3
trigger2 = var(22) := 2 || var(23) := 2080 || var(24) := 87 || 1
trigger2 = var(25) := 0 || fvar(33) := 1.0 || fvar(34) := 1.0 || 1
trigger2 = var(26) := 400 || var(27) := floor(var(23) / var(22))
; trigger2 = var(26) := floor(var(23) / var(22) / 3.0) || var(27) := floor(var(23) / var(22))

; Super Art II
trigger3 = var(21) = 4
trigger3 = var(22) := 2 || var(23) := 1600 || var(24) := 67 || 1
trigger3 = var(25) := 0 || fvar(33) := 1.0 || fvar(34) := 1.0 || 1
trigger3 = var(26) := 400 || var(27) := floor(var(23) / var(22))
; trigger3 = var(26) := floor(var(23) / var(22) / 3.0) || var(27) := floor(var(23) / var(22))

; Super Art III
trigger4 = var(21) = 5
trigger4 = var(22) := 2 || var(23) := 1760 || var(24) := 74 || 1
trigger4 = var(25) := 0 || fvar(33) := 1.0 || fvar(34) := 1.0 || 1
trigger4 = var(26) := 400 || var(27) := floor(var(23) / var(22))
; trigger4 = var(26) := floor(var(23) / var(22) / 3.0) || var(27) := floor(var(23) / var(22))

; Super Art IV (disabled)
trigger5 = var(21) = 6
trigger5 = var(22) := 0 || var(23) := 0 || var(24) := 0 || 1
trigger5 = var(25) := 0 || fvar(33) := 0.0 || fvar(34) := 0.0 || 1
trigger5 = var(26) := 400 || var(27) := floor(var(23) / var(22))
; trigger5 = var(26) := floor(var(23) / var(22) / 3.0) || var(27) := floor(var(23) / var(22))

; Super Art V (disabled)
trigger6 = var(21) = 7
trigger6 = var(22) := 0 || var(23) := 0 || var(24) := 0 || 1
trigger6 = var(25) := 0 || fvar(33) := 0.0 || fvar(34) := 0.0 || 1
trigger6 = var(26) := 400 || var(27) := floor(var(23) / var(22))
; trigger6 = var(26) := floor(var(23) / var(22) / 3.0) || var(27) := floor(var(23) / var(22))
ignorehitpause = 1

; Simul Mode
[state -2, Super Bar: Initialize Super Bar]
type = null
trigger1 = cond(numpartner, partner,ID < ID, 0)
trigger1 = var(22) := 3 || var(23) := partner,powermax || var(24) := 107 || 1
trigger1 = var(25) := 0 || fvar(33) := 1.0 || fvar(34) := 1.0 || 1
trigger1 = var(26) := 400 || var(27) := floor(var(23) / var(22))
; trigger1 = var(26) := floor(var(23) / var(22) / 3.0) || var(27) := floor(var(23) / var(22))
ignorehitpause = 1

[state -2, Super Bar: Restrict Power]
type = null
trigger1 = var(28) := cond(power > var(23), var(23), power) || 1
trigger1 = var(29)
trigger1 = var(28) := 0
ignorehitpause = 1

[state -2, Super Bar: Reduce Timer]
type = null
trigger1 = var(29) && gametime % 6 = 0
trigger1 = stateno != -1 ; (change "stateno != -1" to the state that activates the time countdown super art and add other conditions as necessary)
trigger1 = var(29) := var(29) - 10 * var(22) || 1
trigger1 = cond(var(29) < 0, var(29) := 0, 0)
ignorehitpause = 1

[state -2, Super Bar: Restrict Power]
type = powerset
trigger1 = roundstate = 2 && !numpartner || var(29)
value = cond(var(29), var(29), var(28))
ignorehitpause = 1

;========================< Calculate Length of Super Bar >========================
; Fvar(5): Splits the length of the super bar into how many stocks are specified in var(22).
; Fvar(6): Scales the full length of 1 stock by the full power that one stock can contain.
; Mugen is retarded and doesn't handle float values correctly.

[state -2, Super Bar: Meter into Segments]
type = null
triggerall = !var(29)
trigger1 = fvar(5) := 1.0 * var(24) / var(22) || 1
trigger1 = fvar(6) := 1.0 * var(22) * var(28) * (fvar(5) / (var(23) / var(22))) || 1
trigger1 = fvar(6) := fvar(6) - var(24) * floor(var(28) / (var(23) / var(22))) + var(24) * (var(28) >= var(23))
trigger1 = fvar(6) := ceil(fvar(6) * (var(24) - 6.9) / var(24))
ignorehitpause = 1

[state -2, Super Bar: Meter into Timer]
type = null
triggerall = var(29)
trigger1 = fvar(5) := 1.0 * var(24) / var(23) || 1
trigger1 = fvar(6) := 1.0 * var(29) * fvar(5) || 1
trigger1 = fvar(6) := ceil(fvar(6) * (var(24) - 6.9) / var(24))
ignorehitpause = 1

;========================< Super Bar Default Fallbacks >========================

[state -2, Super Bar: Fallbacks]
type = null
triggerall = !numhelper(6450) 
trigger1 = cond(!var(25), var(25) := 0, 1)
trigger1 = cond(!var(26), var(26) := 400, 1)
trigger1 = cond(!var(27), var(27) := 1280, 1)
trigger1 = cond(!fvar(33), fvar(33) := 1.0, 1)
trigger1 = cond(!fvar(34), fvar(34) := 1.0, 0)
ignorehitpause = 1

;=========================================================================
; Stun Bar
;=========================================================================

[state -2, Stun Bar: Initialize Stun Endurance]
type = varset
trigger1 = roundstate < 2
trigger1 = numhelper(6550)
fvar(7) = 0.0 + 0 * (var(30) := 0)
ignorehitpause = 1

[state -2, Stun Bar: Max Endurance]
type = varset
trigger1 = !fvar(8)
fvar(8) = 64.0 ; edit this to change the max stun endurance
ignorehitpause = 1

[state -2, Stun Bar: Stun Bar Damage Scaling]
type = varadd
trigger1 = numhelper(6550)
trigger1 = var(53) - life > 0
sysfvar(3) = 1
ignorehitpause = 1

[state -2, Stun Bar: Increment Stun Endurance by Damage]
type = varadd
trigger1 = alive && numenemy && var(54) = [1, 2]
trigger1 = numhelper(6550) && roundstate = 2
trigger1 = movetype = H && stateno != [120, 165]
trigger1 = var(53) - life > 0 ; || enemynear,var(2) = enemynear,hitpausetime
trigger1 = gethitvar(fall.envshake.phase) > 0 && sysfvar(3)
fvar(7) = cond(gethitvar(fall.envshake.phase) - (sysfvar(3) - 1) < 1, 1, gethitvar(fall.envshake.phase) - (sysfvar(3) - 1))
ignorehitpause = 1

[state -2, Stun Bar: Increment Stun Endurance by Damage]
type = varadd
trigger1 = alive && numenemy && var(54) = [1, 2]
trigger1 = numhelper(6550) && roundstate = 2
trigger1 = movetype = H && stateno != [120, 165]
trigger1 = var(53) - life > 0 ; || enemynear,var(2) = enemynear,hitpausetime
trigger1 = fvar(9) > 0 && sysfvar(3)
fvar(7) = cond(fvar(9) - (sysfvar(3) - 1) < 2, 2, fvar(9) - (sysfvar(3) - 1))
ignorehitpause = 1

[state -2, Stun Bar: Increment Stun Endurance by Damage]
type = varadd
trigger1 = alive && var(54) != [1, 2]
trigger1 = numhelper(6550) && roundstate = 2
trigger1 = movetype = H && stateno != [120, 165]
trigger1 = var(53) - life > 0 && sysfvar(3)
fvar(7) = (2.0 + 2.0 * cond(gethitvar(animtype) <= 2, gethitvar(animtype), 3.0)) / sysfvar(3)
ignorehitpause = 1

[state -2, Stun Bar: Decrement Stun Endurance]
type = varadd
trigger1 = numhelper(6550) && !gethitvar(hitshaketime)
trigger1 = fvar(7) = (0.0, fvar(8))
trigger1 = gametime % 24 = 1
fvar(7) = -1.0
ignorehitpause = 1

[state -2, Stun Bar: Initialize Stun Flag]
type = varset
trigger1 = numhelper(6550) && stateno != 5300
trigger1 = fvar(7) >= fvar(8) && !var(30)
var(30) = 1
ignorehitpause = 1

[state -2, Stun Bar: Prevent Stun Endurance from Going out of Bounds]
type = varset
trigger1 = numhelper(6550)
trigger1 = fvar(7) != [0.0, fvar(8)]
fvar(7) = cond(fvar(7) < 0.0, 0.0, fvar(8))
ignorehitpause = 1

[state -2, Stun Bar: Prevent Stun Endurance from Going out of Bounds]
type = varset
trigger1 = fvar(7)
trigger1 = roundstate >= 3
fvar(7) = 0.0 + 0 * (var(30) := 0)
ignorehitpause = 1

[state -2, Stun Bar: Stun Bar Damage Scaling]
type = varset
triggerall = sysfvar(3)
triggerall = numhelper(6550)
trigger1 = movetype != H
trigger2 = fvar(7) >= fvar(8) || var(30)
sysfvar(3) = 0
ignorehitpause = 1

[state -2, Stun Bar: Reset Stun Damage]
type = varset
triggerall = fvar(9)
trigger1 = movetype != H
fvar(9) = 0
ignorehitpause = 1

;=========================================================================
; Win Score System
;=========================================================================

[state -2, Win Score: Game Time]
type = varadd
trigger1 = roundstate <= 2 && life > 0 && p2life > 0 && (ctrl || var(32))
trigger1 = var(32) := cond(!var(32), 1, var(32))
var(32) = 1
ignorehitpause = 1

[state -2, Win Score: Detect Loss]
type = varset
trigger1 = !var(33)
trigger1 = lose
var(33) = 1
ignorehitpause = 1

;=========================================================================
; Hit Sparks, Hit Sounds, Hit Effects, and Hit KO
;=========================================================================

[state -2, Hit Sound]
type = playsnd
trigger1 = var(2) = hitpausetime
trigger1 = var(3) >= 0 || var(4) >= 0
trigger1 = movecontact = 1
trigger2 = var(2) = -2 || var(2) = -3 ; pseudo-hit/pseudo-guard
value = cond(movehit || var(2) = -2, 200, 120), cond(movehit || var(2) = -2, var(3), var(4)) + 40 * cond(numhelper(4000), (movehit || var(2) = -2) && helper(4000),var(38) && (var(3) = [200, 330]), 0)
channel = 2
ignorehitpause = 1

[state -2, Hitspark, Guardspark]
type = helper
trigger1 = var(2) = hitpausetime
trigger1 = var(5) >= 0 || var(6) >= 0
trigger1 = movecontact = 1
trigger2 = var(2) = -2 || var(2) = -3 ; pseudo-hit/pseudo-guard
name = "Hitspark"
ID = 6100
stateno = cond(movehit || var(2) = -2, 6100, 6105)
postype = p1
pos = ceil(cond(p2dist x < 0, 0, cond(p2dist x < var(7), p2dist x, var(7))) * const(size.xscale)), ceil(var(8) * const(size.yscale))
ownpal = 1
keyctrl = 0
size.xscale = 1.0 ; const(size.xscale)
size.yscale = 1.0 ; const(size.yscale)
pausemovetime = 0
supermovetime = 0
ignorehitpause = 1

; for hitdefs
; palfx.time = cond((var(54) != [1, 2]), 32, 0 * (var(38) := 1))
; palfx.color = 256
; palfx.sinadd = 224, 72, 0, 4
[state -2, Burnspark]
type = helper
triggerall = var(2) = hitpausetime && movehit = 1
triggerall = playeridexist(var(58))
triggerall = numhelper(6165) < numenemy && hitdefattr != SCA,AT
trigger1 = stateno = -1
name = "Burnspark"
ID = 6165
stateno = 6165
postype = left
pos = ceil(playerid(var(58)),screenpos x), ceil(playerid(var(58)),pos y)
ownpal = 1
keyctrl = 0
size.xscale = 1.0 ; const(size.xscale)
size.yscale = 1.0 ; const(size.yscale)
supermovetime = 2147483647
pausemovetime = 2147483647
ignorehitpause = 1

[state -2, Wall Hit Effect]
type = helper
trigger1 = var(58) && playeridexist(var(58)) 
trigger1 = playerid(var(58)),gethitvar(chainid) && playerid(var(58)),movetype = H
trigger1 = playerid(var(58)),stateno = 5805
trigger1 = playerid(var(58)),anim = 5806 || playerid(var(58)),anim = 5808
trigger1 = playerid(var(58)),animelemtime(1) = 1
name = "Wall Hit Effect"
ID = 6065
stateno = 6065
postype = left
pos = cond(playerid(var(58)),screenpos x < gamewidth * 0.5, 0, gamewidth), ceil(playerid(var(58)),pos y) + playerid(var(58)),const(size.mid.pos.y)
facing = cond(playerid(var(58)),screenpos x < gamewidth * 0.5, -1, 1)
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0
pausemovetime = 0
supermovetime = 0
ignorehitpause = 1

[state -2, Ground Hit Effect]
type = helper
trigger1 = var(58) && playeridexist(var(58)) 
trigger1 = playerid(var(58)),gethitvar(chainid) && playerid(var(58)),movetype = H
trigger1 = playerid(var(58)),stateno = -1 && playerid(var(58)),time <= 1
name = "Ground Hit Effect"
ID = 6066
stateno = 6065
postype = left
pos = ceil(playerid(var(58)),screenpos x), ceil(playerid(var(58)),pos y)
facing = 1
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0
pausemovetime = 0
supermovetime = 0
ignorehitpause = 1
;
;[state -2, Helper KO Finish]
;type = helper
;triggerall = winko && alive && !numhelper(6225) && !p2life
;triggerall = cond(numhelper(4000), helper(4000),var(11), 1)
;triggerall = !numpartner || cond(var(55) && numpartner, partner,ID > ID, 1)
;trigger1 = cond(numhelper(3105), (helper(3105),movecontact = [1, 2]), 0)
;trigger2 = cond(numhelper(3205), (helper(3205),movecontact = [1, 2]), 0)
;name = "KO Finish"
;ID = 6225
;stateno = 6230
;postype = left
;pos = ceil(gamewidth * 0.5), -ceil(gameheight * 0.5)
;ownpal = 1
;keyctrl = 0
;size.xscale = 1.0
;size.yscale = 1.0
;pausemovetime = 2147483647
;supermovetime = 2147483647
;ignorehitpause = 1
;
;[state -2, KO Finish]
;type = helper
;triggerall = winko && var(59) && alive && !numhelper(6225) && !p2life
;triggerall = cond(numhelper(4000), helper(4000),var(11), 1)
;triggerall = !numpartner || cond(var(55) && numpartner, partner,ID > ID, 1)
;trigger1 = var(54) = [1, 2]
;trigger2 = numenemy
;trigger2 = enemy(0),life + cond(numenemy = 2, enemy(1),life, 0) <= 0
;name = "KO Finish"
;ID = 6225
;stateno = 6225 + 5 * (var(29) > 0 || (movetype = A && stateno = [3000, 3999]))
;postype = left
;pos = ceil(gamewidth * 0.5), -ceil(gameheight * 0.5)
;ownpal = 1
;keyctrl = 0
;size.xscale = 1.0
;size.yscale = 1.0
;pausemovetime = 2147483647
;supermovetime = 2147483647
;ignorehitpause = 1

[state -2, Buffer Reprisal]
type = varadd
trigger1 = var(45) >= 2
trigger1 = stateno != [800, 801]
var(45) = -1
ignorehitpause = 1

[state -2, Detect Reprisal]
type = varset
trigger1 = var(45) < 2 || numhelper(6310005)
trigger1 = numenemy && stateno != [800, 801]
var(45) = p2movetype = A
ignorehitpause = 1

;=========================================================================
; Juggle
;=========================================================================
; Var(9): Detects opponents who have been air reset.
; Var(10): Amount of juggle points to be accumulated.
; Var(11): Accumulated juggle points.
; Var(12): The Juggle Window. Time Before Opponent Can't be juggled.
; Var(13): Time up, no more juggling.
; fvar(35): Reflected Jugglepoints to be accumulated.
; fvar(36): Reflected Jugglepoints time allotment.

; Notes:
; 15 juggle points is the maximum amount of juggle points.
; Opponents that are forced to air recover (air reset) can only be hit by super arts -- and only if the juggle window allows it.
; Some attacks reset juggle points and thus reset juggle window.
; Opponents can only be juggled when var(12) is greater than or equal 0.

[state -2, Ignore Engine's Juggle]
type = assertspecial
trigger1 = 1
flag = nojugglecheck
ignorehitpause = 1

;========================< Juggle Points >========================

;[state -2, Reset Juggle Points]
;type = varset
;trigger1 = movetype != A || time <= 1
;var(10) = 0
;ignorehitpause = 1
;
;[state -2, Accumulate Juggle Points]
;type = varadd
;trigger1 = var(10) && movehit = 1
;trigger1 = var(2) = hitpausetime
;trigger1 = hitdefattr != SCA,AT
;var(11) = var(10)
;ignorehitpause = 1
;
;[state -2, Accumulate Reflective Juggle Points]
;type = varadd
;trigger1 = numenemy && var(54) = [1, 2]
;trigger1 = enemy,fvar(35) && enemy,fvar(36)
;var(11) = floor(enemy,fvar(35))
;ignorehitpause = 1
;
;[state -2, Restrict Accumulated Juggle Points]
;type = varset
;trigger1 = var(11) != [0, 15]
;var(11) = cond(var(11) < 0 ,0 ,15)
;ignorehitpause = 1
;
;[state -2, Flush Accumulated Juggle Points]
;type = varset
;triggerall = var(11) && numenemy ; = 1
;trigger1 = enemynear,stateno != 5040 && enemynear,movetype != H
;trigger2 = enemynear,statetype != A && enemynear,statetype != L
;trigger2 = !enemynear,gethitvar(yvel)
;trigger3 = enemynear,ctrl || enemynear,stateno = [5110, 5150]
;var(11) = 0
;ignorehitpause = 1
;
;[state -2, Unique Juggle Reset]
;type = null ; varset
;triggerall = var(11) && movehit = 1
;triggerall = var(2) = hitpausetime
;trigger1 = stateno = -1 && animelemtime(-1) < 0
;var(11) = 0
;ignorehitpause = 1

;========================< Juggle Window >========================

[state -2, Set Juggle Window]
type = null
triggerall = var(10) && movehit = 1
triggerall = var(2) = hitpausetime
triggerall = hitdefattr != SCA,AT
trigger1 = var(11) = [1, 6]
trigger1 = var(12) := 120 - 20 * (var(11) - 1)
trigger2 = var(11) = 7
trigger2 = var(12) := 10
trigger3 = var(11) = 8
trigger3 = var(12) := 4
trigger4 = var(11) = 9
trigger4 = var(12) := 2
trigger5 = var(11) >= 10
trigger5 = var(12) := 1
ignorehitpause = 1

[state -2, Set Juggle Window]
type = null
triggerall = numenemy && var(54) = [1, 2]
triggerall = enemy,fvar(35) && enemy,fvar(36)
trigger1 = var(11) = [1, 6]
trigger1 = var(12) := 120 - 20 * (var(11) - 1)
trigger2 = var(11) = 7
trigger2 = var(12) := 10
trigger3 = var(11) = 8
trigger3 = var(12) := 4
trigger4 = var(11) = 9
trigger4 = var(12) := 2
trigger5 = var(11) >= 10
trigger5 = var(12) := 1
ignorehitpause = 1

;[state -2, Decrement Juggle Window]
;type = varadd
;trigger1 = var(11) && var(12) >= 0
;trigger1 = !hitpausetime && !var(46)
;trigger1 = cond(playeridexist(var(57)), playerid(var(57)),hitshakeover, 1)
;var(12) = -1
;ignorehitpause = 1
;
;[state -2, Close Juggle Window]
;type = varset
;trigger1 = var(11) && var(12) < 0
;var(13) = 1
;ignorehitpause = 1
;
;[state -2, Reset Juggle Window]
;type = varset
;trigger1 = !var(11)
;var(12) = (var(13) := 0)
;ignorehitpause = 1

;========================< Air Resetting >========================

[state -2, Detect Air Reset]
type = varset
triggerall = numenemy
trigger1 = var(54) = [1, 2]
trigger1 = enemynear,stateno = 5030 || enemynear,stateno = 5035
trigger1 = enemynear,hitover || enemynear,gethitvar(hittime) < 0
trigger2 = var(54) != [1, 2]
trigger2 = enemynear,stateno = 5030 || enemynear,stateno = 5035
trigger2 = enemynear,hitover || enemynear,gethitvar(hittime) < 0 || enemynear,time >= 4
trigger3 = enemynear,stateno = 5040 && !enemynear,ctrl
trigger4 = enemynear,stateno = 5210 && enemynear,time < 15
var(9) = 1
ignorehitpause = 1

[state -2, Revert Air Reset]
type = varset
triggerall = var(9) && numenemy ; = 1
triggerall = cond(enemynear,stateno = 5210, enemynear,time >= 15, 1)
trigger1 = enemynear,stateno != 5040 && enemynear,movetype != H
trigger2 = enemynear,statetype != A || !enemynear,hitshakeover ; && !var(11)
trigger3 = enemynear,ctrl || enemynear,hitfall
var(9) = 0
ignorehitpause = 1

;========================< Manage All Juggling >========================

[state -2, Reset Reflective Juggle Points]
type = varset
trigger1 = 1
fvar(35) = (fvar(36) := 0)
ignorehitpause = 1

[state -2, Infinite Juggle]
type = null
trigger1 = roundstate > 2
trigger1 = var(9) := 0 || var(10) := 0 || var(11) := 0 || var(12) := 0 || var(13) := 0
ignorehitpause = 1

[state -2, Deactivate Hitdefs]
type = hitdef
triggerall = movetype = A
trigger1 = var(9) || var(13) || var(49) = var(50)
ID = -1 * floor(fvar(3) := 0)
attr = 
hitflag = 
ignorehitpause = 1

;=========================================================================
; Damage Scale
;=========================================================================

[state -2, Detect Damage Scale Hits]
type = varadd
trigger1 = var(2) = hitpausetime && movehit = 1
trigger1 = hitdefattr != SCA,AT
trigger2 = var(2) = -2 || var(2) = -4 ; pseudo-hit/pseudo-hit (no sparks)
var(52) = 1
ignorehitpause = 1

[state -2, Reset Damage Scale Hits]
type = varset
triggerall = var(52)
trigger1 = roundstate >= 4
trigger2 = cond(numenemy, enemynear,statetype = L && (enemynear,stateno != [5100, 5101]), 0)
trigger3 = cond(numenemy, enemynear,statetype = L && (enemynear,stateno = [5100, 5101]) && enemynear,time >= 2, 0)
trigger4 = cond(numenemy, enemynear,movetype != H, 0)
var(52) = 0
ignorehitpause = 1

[state -2, Initialize Damage Scale]
type = varset
trigger1 = 1
fvar(0) = cond(var(52) > 0, 1.0 / 2.0 ** (var(52) * 0.225), 1.0) ; + (0.11 * var(45))
ignorehitpause = 1

[state -2, Unique Damage Scale]
type = null
; 3000
trigger1 = stateno = 3000
trigger1 = fvar(0) < 0.8
trigger1 = fvar(0) := 0.8
ignorehitpause = 1

[state -2, Life Damage Scale Single]
type = varset
trigger1 = numenemy = 1
trigger1 = enemy,life <= enemy,lifemax * 0.3
fvar(0) = fvar(0) * (1.0 - (0.44 - 0.11 * ceil(10.0 * enemy,life / enemy,lifemax) * (enemy,life > enemy,lifemax * 0.05)))
ignorehitpause = 1

[state -2, Life Damage Scale Simul]
type = varset
trigger1 = numenemy = 2
trigger1 = enemy(0),life + enemy(1),life <= (enemy(0),lifemax + enemy(1),lifemax) * 0.3
fvar(0) = fvar(0) * (1.0 - (0.44 - 0.11 * ceil(10.0 * (enemy(0),life + enemy(1),life) / (enemy(0),lifemax + enemy(1),lifemax)) * ((enemy(0),life + enemy(1),life) > (enemy(0),lifemax + enemy(1),lifemax) * 0.05)))
ignorehitpause = 1

[state -2, Crouching Damage Scale]
type = varset
trigger1 = p2statetype = C
fvar(0) = fvar(0) * 1.25
ignorehitpause = 1

[state -2, Personal Action Damage Scale]
type = varset
trigger1 = 1
fvar(0) = fvar(0) * (1.0 + 0.0413 * var(47))
ignorehitpause = 1

[state -2, Super Art Damage Scale]
type = varset
trigger1 = 1
fvar(0) = fvar(0) * fvar(34)
ignorehitpause = 1

[state -2, Restrict Damage Scale (general)]
type = varset
trigger1 = fvar(0) < 0
fvar(0) = 0.0
ignorehitpause = 1

[state -2, Reset Damage Scale Hits]
type = varset
triggerall = var(52)
trigger1 = roundstate >= 4
trigger2 = cond(numenemy, enemynear,stateno = 5300 || enemynear,anim = 5300, 0)
var(52) = 0
ignorehitpause = 1

;=========================================================================
; Grades
;=========================================================================

;========================< Calculate Offence Grade >========================

[state -2, Grades: Increase Offence]
type = null
triggerall = roundstate = 2 && var(59)
trigger1 = time % 32 = 0 && stateno = 20 && anim = 20
trigger1 = var(34) := var(34) + 1 * (vel x > 0)
trigger2 = stateno = 50 && time = 1
trigger2 = var(34) := var(34) + 1 * (vel x > 0)
trigger3 = time = 1 && stateno = 100
trigger3 = var(34) := var(34) + 1
trigger4 = time = 1 && stateno = [200, 799]
trigger4 = stateno % 10 = 0 || stateno % 10 = 5
trigger4 = var(34) := var(34) + 1
trigger5 = time = 1 && stateno = [1000, 2999]
trigger5 = stateno % 100 = 0
trigger5 = var(34) := var(34) + 4
trigger6 = time = 1 && stateno = [1000, 2999]
trigger6 = stateno % 100 = 50
trigger6 = var(34) := var(34) + 8
trigger7 = time = 1 && stateno = [3000, 3999]
trigger7 = stateno % 100 = 0
trigger7 = var(34) := var(34) + 12
ignorehitpause = 1

[state -2, Grades: Decrease Offence]
type = null
triggerall = roundstate = 2 && var(59)
trigger1 = time % 32 = 0 && stateno = 20 && anim = 21
trigger1 = var(34) := var(34) - 1 * (vel x < 0)
trigger2 = stateno = 50 && time = 1
trigger2 = var(34) := var(34) - 1 * (vel x < 0)
trigger3 = time = 1 && stateno = 105
trigger3 = var(34) := var(34) - 1
trigger4 = time = 1 && stateno % 2 = 0 && stateno = [150, 155]
trigger4 = movetype = H && gethitvar(guarded)
trigger4 = var(34) := var(34) - 1
ignorehitpause = 1

;========================< Calculate Defence Grade >========================

[state -2, Grades: Increase Defence]
type = null
triggerall = roundstate = 2 && var(59)
trigger1 = time % 32 = 0 && stateno = 20 && anim = 21
trigger1 = var(35) := var(35) + 1 * (vel x < 0)
trigger2 = stateno = 50 && time = 1
trigger2 = var(35) := var(35) + 1 * (vel x < 0)
trigger3 = time = 1 && stateno = 105
trigger3 = var(35) := var(35) + 1
trigger4 = time = 1 && stateno % 2 = 0 && stateno = [150, 155]
trigger4 = movetype = H && gethitvar(guarded)
trigger4 = var(35) := var(35) + 4
trigger5 = time = 1 && stateno = [910, 912]
trigger5 = var(35) := var(35) + 8
trigger6 = time = 2 && stateno = 807
trigger6 = var(35) := var(35) + 12
ignorehitpause = 1

[state -2, Grades: Increase Defence]
type = null
triggerall = roundstate = 2 && var(59)
trigger1 = gametime % 32 = 0 && movetype = I
trigger1 = command = "holdback" && backedgebodydist < frontedgedist
trigger1 = var(35) := var(35) + 1
ignorehitpause = 1

[state -2, Grades: Increase Defence]
type = null
triggerall = roundstate = 2 && var(59)
trigger1 = time % 32 = 0 && stateno = 11
trigger1 = command = "holdback" && backedgebodydist < 24
trigger1 = var(35) := var(35) + 3
ignorehitpause = 1

[state -2, Grades: Decrease Defence]
type = null
triggerall = roundstate = 2 && var(59)
trigger1 = time % 64 = 0 && stateno = 20 && anim = 20
trigger1 = var(35) := var(35) - 1 * (vel x > 0)
trigger2 = stateno = 50 && time = 1
trigger2 = var(35) := var(35) - 1 * (vel x > 0)
trigger3 = time = 1 && stateno = 100
trigger3 = var(35) := var(35) - 1
ignorehitpause = 1

;========================< Calculate Tech Grade >========================

[state -2, Grades: Increase Tech]
type = null
triggerall = roundstate = 2 && var(59)
trigger1 = var(51) >= 2 || var(10) >= 2
trigger1 = hitdefattr != SCA,AT && var(58) && playeridexist(var(58))
trigger1 = playerid(var(58)),movetype = H && playerid(var(58)),stateno = [5000, 5999]
trigger1 = playerid(var(58)),gethitvar(hitshaketime) && playerid(var(58)),time <= 1
trigger1 = var(36) := var(36) + 1
ignorehitpause = 1

[state -2, Grades: Increase Tech]
type = null
triggerall = roundstate = 2 && var(59)
trigger1 = time = 1 && stateno = 800 && prevstateno = [200, 799]
trigger1 = var(36) := var(36) + 8
trigger2 = time = 1 && stateno = [900, 912]
trigger2 = var(36) := var(36) + 12
trigger3 = var(45) && time  = 1 && stateno = [200, 799]
trigger3 = stateno % 10 = 0 || stateno % 10 = 5
trigger3 = var(36) := var(36) + 1
trigger4 = var(45) && time = 1 && stateno = [1000, 2999]
trigger4 = stateno % 100 = 0
trigger4 = var(36) := var(36) + 1
trigger5 = var(45) && time = 1 && stateno = [1000, 2999]
trigger5 = stateno % 100 = 50
trigger5 = var(36) := var(36) + 1
trigger6 = var(45) && time = 1 && stateno = [3000, 3999]
trigger6 = stateno % 100 = 0
trigger6 = var(36) := var(36) + 1
trigger7 = time = 2 && stateno = 807
trigger7 = var(36) := var(36) + 15
ignorehitpause = 1

[state -2, Grades: Increase Tech]
type = null
triggerall = roundstate = 2 && var(59)
trigger1 = time = 1 && stateno = [1000, 2999]
trigger1 = prevstateno = [200, 899]
trigger1 = var(36) := var(36) + 1
trigger2 = time = 1 && stateno = [3000, 3999]
trigger2 = prevstateno = [1000, 2999]
trigger2 = var(36) := var(36) + 3
ignorehitpause = 1

[state -2, Grades: Increase Tech]
type = null
triggerall = roundstate = 2 && var(59)
trigger1 = time = 1 && stateno = 52
trigger1 = numtarget && prevstateno = [600, 699]
trigger1 = target,stateno != [120, 155]
trigger1 = var(36) := var(36) + 1
ignorehitpause = 1

[state -2, Grades: Increase Tech]
type = null
triggerall = roundstate = 2 && var(59)
triggerall = !animtime && (numtarget || movehit)
trigger1 = stateno = [200, 799]
trigger1 = stateno % 10 = 0 || stateno % 10 = 5
trigger1 = var(36) := var(36) + 1
trigger2 = stateno = [1000, 2999]
trigger2 = stateno % 100 = 0
trigger2 = var(36) := var(36) + 1
trigger3 = stateno = [1000, 2999]
trigger3 = stateno % 100 = 50
trigger3 = var(36) := var(36) + 1
trigger4 = stateno = [3000, 3999]
trigger4 = stateno % 100 = 0
trigger4 = var(36) := var(36) + 1
ignorehitpause = 1

[state -2, Grades: Decrease Tech]
type = null
triggerall = roundstate = 2 && var(59)
trigger1 = numhelper(915) && command = "fwd"
trigger1 = helper(915),time >= 8 && stateno != [910, 913]
trigger1 = var(36) := var(36) - 2
ignorehitpause = 1

[state -2, Grades: Decrease Tech]
type = null
triggerall = roundstate = 2 && var(59)
triggerall = !animtime && !numtarget && !movehit
trigger1 = stateno = [200, 799]
trigger1 = stateno % 10 = 0 || stateno % 10 = 5
trigger1 = var(36) := var(36) - 2
trigger2 = stateno = [1000, 2999]
trigger2 = stateno % 100 = 0
trigger2 = var(36) := var(36) - 2
trigger3 = stateno = [1000, 2999]
trigger3 = stateno % 100 = 50
trigger3 = var(36) := var(36) - 2
trigger4 = stateno = [3000, 3999]
trigger4 = stateno % 100 = 0
trigger4 = var(36) := var(36) - 2
ignorehitpause = 1

;========================< Calculate EX Points Grade >========================

[state -2, Grades: Increase EX Points]
type = null
triggerall = roundstate = 2 && var(59)
trigger1 = time = 1 && stateno = 920
trigger1 = var(37) := var(37) + 1
trigger2 = time = 1 && stateno = [1000, 2999]
trigger2 = stateno % 100 = 50
trigger2 = var(37) := var(37) + 3
trigger3 = time = 1 && stateno = [3000, 3999]
trigger3 = stateno % 100 = 0
trigger3 = var(37) := var(37) + 5
ignorehitpause = 1

;========================< Calculate All Grades >========================

[state -2, Grades: Decrease All Grades]
type = null
triggerall = roundstate = 2
trigger1 = var(53) - life > 0 && stateno != [120, 155]
trigger1 = movetype = H && !gethitvar(guarded)
trigger1 = var(34) := var(34) - 2 || var(35) := var(35) - 4 || var(36) := var(36) - 2 || var(37) := var(37) - 1
ignorehitpause = 1

;========================< Prevent Grades from Going out of Bounds >========================

[state -2, Grades: Limit Offence]
type = varset
trigger1 = var(34) != [0, 150]
var(34) = cond(var(34) > 150, 150, 0)
ignorehitpause = 1

[state -2, Grades: Limit Defence]
type = varset
trigger1 = var(35) != [0, 150]
var(35) = cond(var(35) > 150, 150, 0)
ignorehitpause = 1

[state -2, Grades: Limit Tech]
type = varset
trigger1 = var(36) != [0, 150]
var(36) = cond(var(36) > 150, 150, 0)
ignorehitpause = 1

[state -2, Grades: Limit EX Point]
type = varset
trigger1 = var(37) != [0, 150]
var(37) = cond(var(37) > 150, 150, 0)
ignorehitpause = 1

;=========================================================================
; Street Fighter 3: 3rd Strike Palette Effects (Hit)
;=========================================================================
[state -2, SF3 Palette Effect: Record Palette]
type = varset
trigger1 = numenemy && var(54) = [1, 2]
trigger1 = movetype = H && (enemynear,var(2) = enemynear,hitpausetime || gethitvar(hitshaketime))
trigger1 = enemynear,var(38) && time <= 1
var(38) = -enemynear,var(38)
ignorehitpause = 1

[state -2, SF3 Palette Effect: Reset Palette]
type = varset
triggerall = var(38)
trigger1 = movetype != A && movetype != H
trigger2 = movetype != A && gethitvar(hittime) = -1 && !gethitvar(hitshaketime)
var(38) = 0
ignorehitpause = 1

;=========================================================================
; Street Fighter 3: 3rd Strike Palette Effects (Other)
;=========================================================================
[state -2, SF3 Palette Effect: Record Palette]
type = null
; Parry
trigger1 = stateno = [910, 912]
trigger1 = time = [3, 15]
trigger1 = var(39) := cond(var(0) > 2, 1, 10)
; EX Special
trigger2 = numhelper(6200)
trigger2 = helper(6200),time = 4
trigger2 = var(39) := 7
; Super Art
trigger3 = numhelper(6205)
trigger3 = helper(6205),time = helper(6205),var(5) + 30
trigger3 = var(39) := 3
ignorehitpause = 1

[state -2, SF3 Palette Effect: Reset Palette]
type = varset
triggerall = var(39)
trigger1 = movetype = H || (stateno = [910, 912]) && time > 15 || cond(numhelper(6205), helper(6205),time > helper(6205),var(5) + 37, 0)
trigger2 = !numhelper(6200) && !numhelper(6205) && stateno != [910, 912]
trigger2 = stateno != -1 ; unique
trigger3 = stateno = -1 && anim = -1 && animelemtime(-1) >= 0 ; unique
var(39) = 0
ignorehitpause = 1

;=========================================================================
; Dramatic K.O
;=========================================================================

[state -2, Dramatic K.O]
type = changestate
triggerall = var(59)
triggerall = movetype = H && !ctrl && prevstateno != 5810
triggerall = gethitvar(damage) >= life && !pos y >= 0 && statetype != A
trigger1 = stateno = 5000 || stateno = 5010
trigger1 = (prevstateno = [120, 153]) || (prevstateno = [160, 163])
trigger2 = gethitvar(hitshaketime) && numenemy
trigger2 = enemynear,movecontact ; && enemynear,hitdefattr = SCA,NA
trigger2 = (enemynear,stateno = [200, 205]) || (enemynear,stateno = [400, 405]) || (enemynear,stateno = [600, 605])
trigger3 = gethitvar(hitshaketime) && numenemy
trigger3 = enemynear,movecontact ; && enemynear,hitdefattr = SCA,NA
trigger3 = (enemynear,stateno = [230, 235]) || (enemynear,stateno = [430, 435]) || (enemynear,stateno = [630, 635])
value = 5810
ignorehitpause = 1

[state -2, Dramatic K.O: Voice]
type = playsnd
triggerall = !var(59)
trigger1 = anim = 5810 && animelemtime(1) = 2
trigger1 = roundstate = 2 && alive
value = 5000, random % 2
volumescale = 100
channel = 0

;=========================================================================
; Target Management
;=========================================================================

;========================<  Throw -1 >========================
[state -2, T. Management: Add Power]
type = poweradd
trigger1 = numtarget(-1)
trigger1 = target(-1),vel y > 0
trigger1 = target(-1),pos y + target(-1),vel y > target(-1),const(movement.air.gethit.groundlevel)
value = cond(90 - 10 * var(51) < 10, 10, 90 - 10 * var(51)) ; (should add 80 power by default)

[state -2, T. Management: Target Power]
type = null ; targetpoweradd
trigger1 = numtarget(-1)
trigger1 = target(-1),vel y > 0
trigger1 = target(-1),pos y + target(-1),vel y > target(-1),const(movement.air.gethit.groundlevel)
value = 20

;=========================================================================
; Urien Reflection Management - Unique
;=========================================================================

[state -2, Generic Projectile]
type = helper
trigger1 = numhelper(3215)
trigger1 = helper(3215),var(0)
name = "Metallic Sphere"
ID = 3225
stateno = 3225
postype = left
pos = floor(helper(3215),screenpos x), floor(helper(3215),pos y - 72)
facing = helper(3215),facing
ownpal = 1
keyctrl = 0
size.xscale = const(size.xscale) * 0.5
size.yscale = const(size.yscale) * 0.25
; size.xscale = 1.0 - 0.5 * cond(numhelper(4000), helper(4000),var(36) != 0, 0)
; size.yscale = 1.0 - 0.5 * cond(numhelper(4000), helper(4000),var(36) != 0, 0)

;=========================================================================
; Status -2
;=========================================================================

[state -2, Status: System]
type = displaytoclipboard
trigger1 = authorname = "RajaaBoy"
text = "Reset = %d | Juggle = %d/%d/%d/%d | Scale = %f | RajaaBoy \n"
params = var(9), var(10), var(11), var(12), var(16), fvar(0)
ignorehitpause = 1

[state -2, Status: System]
type = appendtoclipboard
trigger1 = authorname = "RajaaBoy"
text = "Art = %d | Max = %d | Cost = %d/%d | Target ID = %d | Own = %d | v.1.1"
params = var(21), var(23), var(26), var(27), var(58), var(59)
ignorehitpause = 1

;=========================================================================
; Postcache -2
;=========================================================================

[state -2, Postcache: Reset Personal Action]
type = null
triggerall = var(47)
trigger1 = var(2) = hitpausetime || var(2) = -2 || var(2) = -3 || var(2) = -4 ; pseudo-hit/pseudo/guard/pseudo-hit (no sparks)
trigger1 = hitdefattr != SCA,AT
trigger1 = var(47) := var(47) - 2
trigger2 = var(47) != 10 && !numtarget
trigger2 = var(47) := 0
ignorehitpause = 1

[state -2, Postcache: Reset Movecontact]
type = varset
trigger1 = 1
var(2) = -1

[state -2, Postcache: Re-Initiate Hit Variables]
type = varrangeset
trigger1 = movetype = I
trigger2 = movetype = H
trigger2 = time
first = 2
last = 8
value = -1
ignorehitpause = 1

[state -2, Postcache: Superart Active]
type = varadd
trigger1 = var(46)
var(46) = -1
[state -2, Postcache: Superart Inactive]
type = varset
triggerall = var(46)
trigger1 = !var(59) || movetype = H
var(46) = 0

[state -2, Postcache: Hitdef ID]
type = null
trigger1 = cond(movetype != A || time <= 1, var(49) := -1 || var(50) := -2, 1)
trigger1 = cond(movecontact = 1 || movereversed = 1, var(50) := var(49), 0)
ignorehitpause = 1

[state -2, Postcache: Measure Damage]
type = varset
trigger1 = 1
var(53) = life
ignorehitpause = 1

[state -2, Postcache: In Own State]
type = varset
trigger1 = 1
var(59) = 0
ignorehitpause = 1

;=========================================================================
[StateDef -3]

;=========================================================================
; Precaching -3
;=========================================================================

[state -3, Precaching: Detect Contact]
type = varset
trigger1 = sysfvar(0) < 0
trigger1 = movecontact = 1
sysfvar(0) = hitpausetime
ignorehitpause = 1

;=========================================================================
; CornerPush
;=========================================================================
[state -3, CornerPush: Reset]
type = varset
triggerall = playeridexist(var(57))
trigger1 = numtarget
trigger1 = target,ID = playerid(var(57)),ID
trigger1 = target,gethitvar(hitshaketime) && target,time <= 0
trigger2 = playerid(var(57)),ctrl
trigger3 = playerid(var(57)),hitover && playerid(var(57)),statetype != A && !playerid(var(57)),gethitvar(isbound)
trigger3 = stateno != 802 && stateno != 804
trigger4 = playerid(var(57)),movetype != H && playerid(var(57)),stateno != 5040
trigger5 = playerid(var(57)),statetype = L
var(57) = floor((fvar(1) := 0) + (fvar(2) := 0))

[state -3, Initialize Cornerpush Target ID]
type = varset
trigger1 = numtarget
trigger1 = !target,ishelper
trigger1 = movecontact = 1 && sysfvar(0) = hitpausetime || var(2) = -2 || var(2) = -3 || var(2) = -4 || var(2) = -5
var(57) = target,id
ignorehitpause = 1
[state -3, Initialize Cornerpush Force]
type = varset
triggerall = playeridexist(var(57))
trigger1 = 0 ; movecontact = 1 && sysfvar(0) = hitpausetime || var(2) = -2 || var(2) = -3 || var(2) = -4 || var(2) = -5
trigger2 = playerid(var(57)),gethitvar(hitshaketime) <= 0
fvar(1) = playerid(var(57)),vel x ; gethitvar(xvel) ; * (1.0 + cond(var(51) * 0.05 < 0.5, var(51) * 0.05, 0.5))
ignorehitpause = 1
[state -3, Initialize Cornerpush Duration]
type = varset
trigger1 = playeridexist(var(57))
trigger1 = movecontact = 1 && sysfvar(0) = hitpausetime || var(2) = -2 || var(2) = -3 || var(2) = -4 || var(2) = -5
fvar(2) = fvar(3) + 1
ignorehitpause = 1

[state -3, Activate Cornerpush]
type = posadd
triggerall = fvar(1) && fvar(2) >= 0 && playeridexist(var(57)) ; && roundstate <= 2
triggerall = !hitpausetime && playerid(var(57)),gethitvar(hitshaketime) <= 0
triggerall = cond(playerid(var(57)),screenpos x > screenpos x, cond(screenpos x > gamewidth * 0.5, 1, playerid(var(57)),statetype != A || playerid(var(57)),gethitvar(groundtype) = 3), cond(screenpos x < gamewidth * 0.5, 1, playerid(var(57)),statetype != A || playerid(var(57)),gethitvar(groundtype) = 3))
; Front Hit Velocity
trigger1 = playerid(var(57)),frontedgebodydist <= abs(playerid(var(57)),vel x) ; abs(playerid(var(57)),vel x + playerid(var(57)),const(size.ground.front))
trigger1 = playerid(var(57)),gethitvar(xvel) * playerid(var(57)),facing > 0.0
; Back Hit Velocity
trigger2 = playerid(var(57)),backedgebodydist <= abs(playerid(var(57)),vel x) ; abs(playerid(var(57)),vel x - playerid(var(57)),const(size.ground.back))
trigger2 = playerid(var(57)),gethitvar(xvel) * playerid(var(57)),facing < 0.0
; Front Throw Velocity
trigger3 = playerid(var(57)),frontedgebodydist <= abs(playerid(var(57)),vel x) ; abs(playerid(var(57)),vel x + playerid(var(57)),const(size.ground.front))
trigger3 = playerid(var(57)),vel x > 0.0 && !playerid(var(57)),gethitvar(xvel)
trigger3 = playerid(var(57)),movetype = H
; Back Throw Velocity
trigger4 = playerid(var(57)),backedgebodydist <= abs(playerid(var(57)),vel x) ; abs(playerid(var(57)),vel x - playerid(var(57)),const(size.ground.back))
trigger4 = playerid(var(57)),vel x < 0.0 && !playerid(var(57)),gethitvar(xvel)
trigger4 = playerid(var(57)),movetype = H
x = cond((playerid(var(57)),pos x - pos x) * facing > 0, -abs(fvar(1)), abs(fvar(1)))

[state -3, Cornerpush Force]
type = varset
trigger1 = playeridexist(var(57)) && !hitpausetime
trigger1 = playerid(var(57)),gethitvar(hitshaketime) <= 0
fvar(1) = playerid(var(57)),vel x ; * (1.0 + cond(var(51) * 0.05 < 0.5, var(51) * 0.05, 0.5))

[state -3, Cornerpush Duration]
type = varadd
trigger1 = fvar(2) >= 0
trigger1 = playeridexist(var(57)) && !hitpausetime
trigger1 = playerid(var(57)),gethitvar(hitshaketime) <= 0
fvar(2) = -1

[state -3, CornerPush: Reset All]
type = null
trigger1 = fvar(2) <= 0 || !playeridexist(var(57))
trigger1 = fvar(1) := 0 || fvar(2) := -1 || fvar(3) := 0 ; || var(57) := 0

;=========================================================================
; Canceling
;=========================================================================

[state -3, Reset Cancellations]
type = null
trigger1 = var(14) := 0 || var(15) := 0
trigger2 = var(16) := 0
trigger3 = var(40) := 0 || var(41) := 0
trigger4 = var(42) := 0 || var(43) := 0
ignorehitpause = 1

;========================< Cancels from Normal Punches >========================
[state -3, Special Cancellable Punches]
type = null
triggerall = stateno = [200, 699]
; Standing Light Punch
trigger1 = stateno = 200 && movecontact
trigger1 = animelemtime(1) = [4, 6]
trigger1 = var(14) := 51
; Standing Mid Punch
trigger2 = stateno = 210 && movecontact
trigger2 = animelemtime(1) = [5, 9]
trigger2 = var(14) := 52
; Crouching Light Punch
trigger3 = stateno = 400 && movecontact
trigger3 = animelemtime(1) = [4, 5]
trigger3 = var(14) := 54
; Crouching Hard Punch
trigger4 = stateno = 420 && movecontact
trigger4 = animelemtime(1) = [9, 10] ; 9
trigger4 = var(14) := 56
ignorehitpause = 1

[state -3, Super Art Cancellable Punches]
type = null
triggerall = stateno = [200, 699]
; Standing Light Punch
trigger1 = stateno = 200 && movecontact
trigger1 = animelemtime(1) = [4, 6]
trigger1 = var(15) := 51
; Standing Mid Punch
trigger2 = stateno = 210 && movecontact
trigger2 = animelemtime(1) = [5, 9]
trigger2 = var(15) := 52
; Crouching Light Punch
trigger3 = stateno = 400 && movecontact
trigger3 = animelemtime(1) = [4, 5]
trigger3 = var(15) := 54
; Crouching Hard Punch
trigger4 = stateno = 420 && movecontact
trigger4 = animelemtime(1) = [9, 10] ; 9
trigger4 = var(15) := 56
ignorehitpause = 1

;========================< Cancels from Normal Kicks >========================
[state -3, Special Cancellable Kicks]
type = null
triggerall = stateno = [200, 699]
; Standing Light Kick
trigger1 = stateno = 230 && movecontact
trigger1 = animelemtime(1) = [5, 8]
trigger1 = var(14) := 61
; Crouching Light Kick
trigger2 = stateno = 430 && movecontact
trigger2 = animelemtime(1) = [5, 7]
trigger2 = var(14) := 64
ignorehitpause = 1

[state -3, Super Art Cancellable Kicks]
type = null
triggerall = stateno = [200, 699]
; Standing Light Kick
trigger1 = stateno = 230 && movecontact
trigger1 = animelemtime(1) = [5, 8]
trigger1 = var(15) := 61
; Crouching Light Kick
trigger2 = stateno = 430 && movecontact
trigger2 = animelemtime(1) = [5, 7]
trigger2 = var(15) := 64
ignorehitpause = 1

;========================< Cancels from Specials/Super Arts >========================
[state -3, Super Art Cancellable Specials]
type = null
; Metallic Sphere
trigger1 = stateno = 1000 || stateno = 1050
trigger1 = numhelper(1015) && anim != [1005, 1007]
trigger1 = cond(anim = 1000, var(16) := 1 * (animelemtime(1) = [13, 21]), 1)
trigger1 = cond(anim = 1001, var(16) := 1 * (animelemtime(1) = [13, 21]), 1)
trigger1 = cond(anim = 1002, var(16) := 1 * (animelemtime(1) = [13, 20]), 1)
trigger1 = cond(anim = 1050, var(16) := 1 * (animelemtime(1) = [13, 22]), 1)
; Chariot Tackle
trigger2 = (stateno = 1100 || stateno = 1150) && movecontact = [1, 4]
trigger2 = cond(anim = 1100, var(16) := 2 * (animelemtime(1) = [7, 20]), 1)
trigger2 = cond(anim = 1105 || anim = 1110, var(16) := 2 * (animelemtime(2) < 0), 1)
trigger2 = cond(anim = 1101, var(16) := 2 * (animelemtime(1) = [10, 25]), 1)
trigger2 = cond(anim = 1106 || anim = 1111, var(16) := 2 * (animelemtime(2) < 0), 1)
trigger2 = cond(anim = 1102, var(16) := 2 * (animelemtime(1) = [13, 23]), 1)
trigger2 = cond(anim = 1107 || anim = 1112, var(16) := 2 * (animelemtime(2) < 0), 1)
trigger2 = cond(anim = 1150, var(16) := 2 * (animelemtime(1) = [6, 13]), 1)
ignorehitpause = 1

[state -3, Super Art Cancellable Super Arts]
type = null
triggerall = cond(numhelper(4000), helper(4000),var(35), 0)
; Super Art I
trigger1 = stateno = 3000 && movecontact = [1, 8]
trigger1 = cond(numhelper(4000), helper(4000),var(35), 0)
trigger1 = anim = 3000 && animelemtime(1) = [51, 133]
trigger1 = var(16) := 101
; Super Art II
trigger2 = stateno = 3100
trigger2 = cond(numhelper(4000), helper(4000),var(35), 0)
trigger2 = numhelper(3105) && animelemtime(1) = [53, 81]
trigger2 = var(16) := 102
; Super Art III
trigger3 = stateno = 3200
trigger3 = cond(numhelper(4000), helper(4000),var(35), 0)
trigger3 = numhelper(3205) && animelemtime(1) = [52, 81]
trigger3 = var(16) := 103
ignorehitpause = 1

;========================< Cancels from Everything Else >========================
[state -3, Misc Canceler]
type = null
; Standing Light Punch (Self Cancel)
trigger1 = stateno = 200
trigger1 = animelemtime(1) = [5, 8]
trigger1 = var(40) := 1
; Standing Light Punch (Normal Cancel)
trigger2 = stateno = 200
trigger2 = animelemtime(1) = [9, 10]
trigger2 = var(40) := 2
; Crouching Light Punch (Self Cancel)
trigger3 = stateno = 400
trigger3 = animelemtime(1) = [4, 9]
trigger3 = var(40) := 3
; Crouching Light Punch (Normal Cancel)
trigger4 = stateno = 400
trigger4 = animelemtime(1) = [10, 11]
trigger4 = var(40) := 4
; Standing Light Kick (Normal Cancel)
trigger5 = stateno = 230
trigger5 = animelemtime(1) = [11, 12]
trigger5 = var(40) := 5
ignorehitpause = 1

[state -3, Super Jump Canceler]
type = null
; ???
trigger1 = stateno = -1
trigger1 = animelemtime(1) = [-1, -1]
trigger1 = var(41) := 1
ignorehitpause = 1

[state -3, Dash Canceler]
type = null
; ???
trigger1 = stateno = -1
trigger1 = animelemtime(1) = [-1, -1]
trigger1 = var(42) := 1
ignorehitpause = 1

[state -3, Chain/Target Canceler]
type = null
; Standing Light Punch
trigger1 = stateno = 200 && movecontact
trigger1 = animelemtime(1) = [4, 5]
trigger1 = var(43) := 1
; Forward + Mid Punch
trigger2 = stateno = 700 && movecontact
trigger2 = animelemtime(1) = [9, 10]
trigger2 = var(43) := 2
ignorehitpause = 1

;========================< Custom Target Combos >========================
[state -3, Custom Target Combos]
type = null
triggerall = stateno = [200, 699]
triggerall = movecontact = [1, 8]
triggerall = cond(numhelper(4000), helper(4000),var(0), 0)
; Standing Light Punch/Kick Near and Far
trigger1 = stateno = 200 || stateno = 205 || stateno = 230 || stateno = 235
trigger1 = var(14) := cond(stateno % 200 < 30, 51, 61)
trigger1 = stateno % 10 = 5
trigger1 = var(14) := var(14) - var(14) * 2
; Standing Medium Punch/Kick Near and Far
trigger2 = stateno = 210 || stateno = 215 || stateno = 240 || stateno = 245
trigger2 = var(14) := cond(stateno % 200 < 30, 52, 62)
trigger2 = stateno % 10 = 5
trigger2 = var(14) := var(14) - var(14) * 2
; Standing Hard Punch/Kick Near and Far
trigger3 = stateno = 220 || stateno = 225 || stateno = 250 || stateno = 255
trigger3 = var(14) := cond(stateno % 200 < 30, 53, 63)
trigger3 = stateno % 10 = 5
trigger3 = var(14) := var(14) - var(14) * 2
; Crouching Light Punch/Kick Near and Far
trigger4 = stateno = 400 || stateno = 405 || stateno = 430 || stateno = 435
trigger4 = var(14) := cond(stateno % 200 < 30, 54, 64)
trigger4 = stateno % 10 = 5
trigger4 = var(14) := var(14) - var(14) * 2
; Crouching Medium Punch/Kick Near and Far
trigger5 = stateno = 410 || stateno = 415 || stateno = 440 || stateno = 445
trigger5 = var(14) := var(14) := cond(stateno % 200 < 30, 55, 65)
trigger5 = stateno % 10 = 5
trigger5 = var(14) := var(14) - var(14) * 2
; Crouching Hard Punch/Kick Near and Far
trigger6 = stateno = 420 || stateno = 425 || stateno = 450 || stateno = 455
trigger6 = var(14) := cond(stateno % 200 < 30, 56, 66)
trigger6 = stateno % 10 = 5
trigger6 = var(14) := var(14) - var(14) * 2
; Aerial Light Punch/Kick Near and Far
trigger7 = stateno = 600 || stateno = 605 || stateno = 630 || stateno = 635
trigger7 = var(14) := cond(stateno % 200 < 30, 57, 67)
trigger7 = stateno % 10 = 5
trigger7 = var(14) := var(14) - var(14) * 2
; Aerial Medium Punch/Kick Near and Far
trigger8 = stateno = 610 || stateno = 615 || stateno = 640 || stateno = 645
trigger8 = var(14) := cond(stateno % 200 < 30, 58, 68)
trigger8 = stateno % 10 = 5
trigger8 = var(14) := var(14) - var(14) * 2
; Aerial Hard Punch/Kick Near and Far
trigger9 = stateno = 620 || stateno = 625 || stateno = 650 || stateno = 655
trigger9 = var(14) := cond(stateno % 200 < 30, 59, 69)
trigger9 = stateno % 10 = 5
trigger9 = var(14) := var(14) - var(14) * 2
ignorehitpause = 1

[state -3, Reset Cancellations]
type = null
triggerall = time <= 1
trigger1 = var(14) := 0 || var(15) := 0
trigger2 = var(16) := 0
trigger3 = var(40) := 0 || var(41) := 0
trigger4 = var(42) := 0 || var(43) := 0
ignorehitpause = 1

;=========================================================================
; Parrying
;=========================================================================

[state -3, Parry Helper]
type = helper
triggerall = !ailevel && roundstate = 2 && !numhelper(915)
triggerall = cond(numhelper(4000), helper(4000),var(1), 1)
triggerall = command = "fwd" && (statetype = S || statetype = A) || command = "down" && (statetype = S || statetype = C)
triggerall = command != "NE_fwd" && command != "NE_back" && command != "NE_up" && command != "NE_down"
trigger1 = ctrl && movetype = I || stateno = [910, 912]
trigger2 = hitshakeover && stateno = [160, 165]
trigger2 = cond(numhelper(4000), helper(4000),var(33), 1)
name = "Parry"
ID = 915
stateno = 915
ownpal = 0
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0
supermovetime = 2147483647
pausemovetime = 2147483647

[state -3, Parry Helper]
type = helper
triggerall = ailevel && roundstate = 2 && numenemy && !numhelper(915)
triggerall = cond(numhelper(4000), helper(4000),var(1), 1)
; condition
trigger1 = ctrl && movetype = I && (p2movetype = A || inguarddist || numhelper(917))
trigger1 = enemynear,time >= 5
trigger1 = random < 128 * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger2 = stateno = [910, 912]
trigger2 = time >= 16 && (p2movetype = A || inguarddist)
trigger2 = random < 1000 * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger3 = stateno = [160, 165]
trigger3 = hitshakeover && (p2movetype = A || inguarddist)
trigger3 = cond(numhelper(4000), helper(4000),var(33), 1)
trigger3 = random < 1000 * (ailevel ** 2.0 / 64.0) ; probability
name = "Parry"
ID = 915
stateno = 915
ownpal = 0
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0
supermovetime = 2147483647
pausemovetime = 2147483647

;========================< Red Parry >========================
[state -3, Activate Red Parry Attack/Projectile]
type = changestate
triggerall = var(54) = [1, 2]
triggerall = cond(numhelper(4000), helper(4000),var(33), 1)
triggerall = cond(numhelper(915), helper(915),var(0) > -1 && helper(915),stateno = 916, 0)
trigger1 = (stateno = [160, 165]) || (prevstateno = [160, 165])
trigger1 = var(0) := 3
value = cond(statetype = A, 912, 910 + helper(915),var(0))
ignorehitpause = 1

[state -3, Activate Red Parry Attack]
type = hitoverride
triggerall = var(54) != [1, 2]
triggerall = cond(numhelper(4000), helper(4000),var(33), 1)
triggerall = cond(numhelper(915), helper(915),var(0) > -1 && !helper(915),var(1), 0)
trigger1 = (stateno = [160, 165]) || (prevstateno = [160, 165])
trigger1 = var(0) := 3
attr = SCA,AA
stateno = cond(statetype = A, 912, 910 + helper(915),var(0))
slot = 2
time = 1
ignorehitpause = 1

[state -3, Activate Red Parry Projectile]
type = hitoverride
; triggerall = var(54) != [1, 2]
triggerall = cond(numhelper(4000), helper(4000),var(33), 1)
triggerall = cond(numhelper(915), helper(915),var(0) > -1 && !helper(915),var(1), 0)
trigger1 = (stateno = [160, 165]) || (prevstateno = [160, 165])
trigger1 = var(0) := 4
attr = SCA,AP
stateno = cond(statetype = A, 912, 910 + helper(915),var(0))
slot = 3
time = 1
ignorehitpause = 1

;========================< Regular Parry >========================
[state -3, Activate Parry Attack/Projectile]
type = changestate
triggerall = var(54) = [1, 2]
triggerall = cond(numhelper(915), helper(915),var(0) > -1 && helper(915),stateno = 916, 0)
trigger1 = ctrl && stateno != [160, 165]
trigger1 = var(0) := 1
value = cond(statetype = A, 912, 910 + helper(915),var(0))
ignorehitpause = 1

[state -3, Activate Parry Attack]
type = hitoverride
triggerall = var(54) != [1, 2]
triggerall = cond(numhelper(915), helper(915),var(0) > -1 && !helper(915),var(1), 0)
trigger1 = ctrl && stateno != [160, 165]
trigger1 = var(0) := 1
attr = SCA,AA
stateno = cond(statetype = A, 912, 910 + helper(915),var(0))
slot = 0
time = 1
ignorehitpause = 1

[state -3, Activate Parry Projectile]
type = hitoverride
; triggerall = var(54) != [1, 2]
triggerall = cond(numhelper(915), helper(915),var(0) > -1 && !helper(915),var(1), 0)
trigger1 = ctrl && stateno != [160, 165]
trigger1 = var(0) := 2
attr = SCA,AP
stateno = cond(statetype = A, 912, 910 + helper(915),var(0))
slot = 1
time = 1
ignorehitpause = 1

[state -3, Parry Skillfully]
type = assertspecial
trigger1 = numhelper(917)
trigger1 = helper(917),time <= 20
flag = nowalk

;=========================================================================
; Afterimage Jump/EX/Super Art Management
;=========================================================================
[state -3, Afterimage: Jump]
type = afterimage
trigger1 = stateno = 40 && !animtime && var(44) = 1
time = 1
length = 4
timegap = 1
framegap = 1
palcolor = 256
palinvertall = 0
palbright = 0, 0, 0
palcontrast = 256, 256, 256
palpostbright = 0, 0, 0
paladd = 0, 0, 0
palmul = 1.0, 1.0, 1.0
trans = none

[state -3, Afterimage: EX]
type = afterimage
trigger1 = numhelper(6200)
trigger1 = helper(6200),time <= 1
time = 1
length = 12
timegap = 1
framegap = 4
palcolor = 0
palinvertall = 0
palbright = 0, 0, 0
palcontrast = 256, 256, 64
palpostbright = 0, 0, 0
paladd = 0, 0, 0
palmul = 1.0, 1.0, 1.0
trans = none
ignorehitpause = 1

[state -3, Afterimage: Custom Super Art I]
type = afterimage
trigger1 = cond(numhelper(4000), helper(4000),var(36), 0)
trigger1 = numhelper(6205) && stateno = 3000
trigger1 = helper(6205),var(4) = 1 && time <= 1
time = 1
length = 12
timegap = 1
framegap = 3
palcolor = 0
palinvertall = 0
palbright = 32, 32, 64
palcontrast = 160, 160, 160
palpostbright = 32, 32, 100
paladd = -56, -56, 0
palmul = 1.0, 1.0, 1.0
trans = none
ignorehitpause = 1

[state -3, Afterimage: Custom Super Art II]
type = afterimage
trigger1 = cond(numhelper(4000), helper(4000),var(36), 0)
trigger1 = numhelper(6205) && stateno = 3100
trigger1 = helper(6205),var(4) = 2 && time <= 1
time = 1
length = 12
timegap = 1
framegap = 3
palcolor = 0
palinvertall = 0
palbright = 32, 64, 32
palcontrast = 160, 160, 160
palpostbright = 32, 100, 32
paladd = -56, 0, -56
palmul = 1.0, 1.0, 1.0
trans = none
ignorehitpause = 1

[state -3, Afterimage: Custom Super Art III]
type = afterimage
trigger1 = cond(numhelper(4000), helper(4000),var(36), 0)
trigger1 = numhelper(6205) && stateno = 3200
trigger1 = helper(6205),var(4) = 3 && time <= 1
time = 1
length = 12
timegap = 1
framegap = 3
palcolor = 0
palinvertall = 0
palbright = 64, 32, 64
palcontrast = 160, 160, 160
palpostbright = 100, 32, 100
paladd = 0, -56, 0
palmul = 1.0, 1.0, 1.0
trans = none
ignorehitpause = 1

[state -3, Afterimage: Custom Staple Super Art]
type = afterimage
trigger1 = cond(numhelper(4000), helper(4000),var(36), 0)
trigger1 = numhelper(6205) && stateno = 3300
trigger1 = helper(6205),var(4) = 4 && time <= 1
time = 1
length = 12
timegap = 1
framegap = 3
palcolor = 0
palinvertall = 0
palbright = 64, 48, 32
palcontrast = 160, 160, 160
palpostbright = 100, 80, 32
paladd = 0, -16, -56
palmul = 1.0, 1.0, 1.0
trans = none
ignorehitpause = 1

[state -3, Afterimage: SF3 Super Art]
type = afterimage
trigger1 = cond(numhelper(4000), !helper(4000),var(36), 1)
trigger1 = numhelper(6205) && stateno = [3000, 3999]
trigger1 = helper(6205),time = 1 && stateno % 100 = 0
time = 1
length = 12
timegap = 1
framegap = 3
palcolor = 0
palinvertall = 0
palbright = 64, 64, 128
palcontrast = 160, 160, 160
palpostbright = 64, 64, 200
paladd = -56, -56, 0
palmul = 1.0, 1.0, 1.0
trans = none
ignorehitpause = 1

[state -3, Afterimage: Time]
type = afterimagetime
trigger1 = stateno = 50 && time <= 7 && var(44) = 1
trigger2 = stateno = [3000, 3999]
trigger3 = cond(numhelper(6200), helper(6200),time < 23, 0)
time = 2
ignorehitpause = 1

;=========================================================================
; Get Hit Sounds and Voices
;=========================================================================

[state -3, Voice]
type = playsnd
triggerall = random > 800
trigger1 = stateno = 5000 || stateno = 5010 || stateno = 5020 || stateno = 5070 || stateno = 5080 || stateno = 5100
trigger1 = alive && time = 1
value = 5000, cond(stateno = 5100, random % 2, cond(gethitvar(animtype) >= 2, 1, 0))
channel = 0

[state -3, Stop Voice]
type = stopsnd
triggerall = numhelper(4000)
trigger1 = helper(4000),sysvar(0) = 1
trigger2 = helper(4000),sysvar(1) = 1
channel = 0

[state -3, Stop Introduction Sounds]
type = stopsnd
trigger1 = numhelper(4000)
trigger1 = helper(4000),sysvar(0) = 1
channel = 4

;=========================================================================
; Postcache -3
;=========================================================================

[state -3, Postcache: Turn When Control is Granted]
type = changestate
triggerall = stateno != 0 && stateno != 11 && alive && life > 0 && roundstate = [2, 3]
triggerall = hitover && !hitfall && !hitpausetime && hitshakeover
triggerall = movetype != A && statetype != A && statetype != L
triggerall = numenemy = 1 && !vel x && !vel y && !pos y
triggerall = ctrl && p2dist x < 0 ; && !inguarddist
trigger1 = stateno != 12 && stateno != 52 && stateno != 5001 && stateno != 5011
trigger2 = stateno = 12 && time >= 3 ; unique
trigger3 = stateno = 52 && time >= 3 ; unique
trigger4 = stateno = 5001 && animelemtime(1) >= 4 ; unique
trigger5 = stateno = 5011 && animelemtime(1) >= 4 ; unique
anim = 5 + 1 * (statetype = C || command = "holddown")
value = 0 + 11 * (statetype = C || command = "holddown")
ctrl = 1

[state -3, Postcache: Reset Movecontact]
type = varset
trigger1 = 1
sysfvar(0) = -1

[state -3, Postcache: In Own State]
type = varset
trigger1 = 1
var(59) = 1
ignorehitpause = 1
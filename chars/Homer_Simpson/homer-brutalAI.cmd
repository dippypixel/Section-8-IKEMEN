;-| Homer's AI |---------------------------------------------------
; Note to kingshadow3:
;    I had to change the AI trigger variable number from 24 to 7. It was
;    conflicting with a variable 24 already being used in a common state,
;    which causes the Power Charge move to be disabled. Base your future
;    AI updates on this .CMD file. Thanks!
;                                                   -JudgeSpear


[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Deafauls |------------------------------------------------------------------
[Defaults]
command.time = 15
command.buffer.time = 1

;-------------------------------------------------------------------------------
 [Command]
name = "cpu1"
command = U, U, U, U, F, B, B, F
time = 0
[Command]
name = "cpu2"
command = U, U, U, D, F, B, B, F
time = 0
[Command]
name = "cpu3"
command = U, U, D, D, F, B, B, F
time = 0
[Command]
name = "cpu4"
command = U, D, D, D, F, B, B, F
time = 0
[Command]
name = "cpu5"
command = D, D, D, D, F, B, B, F
time = 0
[Command]
name = "cpu6"
command = D, D, D, U, F, B, B, F
time = 0
[Command]
name = "cpu7"
command = D, D, U, U, F, B, B, F
time = 0
[Command]
name = "cpu8"
command = D, U, U, U, F, B, B, F
time = 0
[Command]
name = "cpu9"
command = U, D, U, U, F, B, B, F
time = 0
[Command]
name = "cpu10"
command = U, U, D, U, F, B, B, F
time = 0
[Command]
name = "cpu11"
command = D, U, U, D, F, B, B, F
time = 0
[Command]
name = "cpu12"
command = U, D, D, U, F, B, B, F
time = 0
[Command]
name = "cpu13"
command = D, U, D, U, F, B, B, F
time = 0
[Command]
name = "cpu14"
command = U, D, U, D, F, B, B, F
time = 0
[Command]
name = "cpu15"
command = F, F, F, F, F, B, B, F
time = 0
[Command]
name = "cpu16"
command = B, B, B, B, F, B, B, F
time = 0
[Command]
name = "cpu17"
command = F, B, F, F, F, B, B, F
time = 0
[Command]
name = "cpu18"
command = F, F, B, F, F, B, B, F
time = 0
[Command]
name = "cpu19"
command = B, F, F, F, F, B, B, F
time = 0
[Command]
name = "cpu20"
command = F, F, F, B, F, B, B, F
time = 0
[Command]
name = "cpu21"
command = F, B, B, F, F, B, B, F
time = 0
[Command]
name = "cpu22"
command = B, F, F, B, F, B, B, F
time = 0
[Command]
name = "cpu23"
command = F, B, F, B, F, B, B, F
time = 0
[Command]
name = "cpu24"
command = B, F, B, F, F, B, B, F
time = 0
[Command]
name = "cpu25"
command = D, F, D, F, F, B, B, F
time = 0
[Command]
name = "cpu26"
command = D, B, D, B, F, B, B, F
time = 0
[Command]
name = "cpu27"
command = D, B, D, F, F, B, B, F
time = 0
[Command]
name = "cpu28"
command = D, F, D, B, F, B, B, F
time = 0
[Command]
name = "cpu29"
command = U, F, D, B, F, B, B, F
time = 0
[Command]
name = "cpu30"
command = U, B, D, F, F, B, B, F
time = 0
[Command]
name = "cpu31"
command = B, D, F, U, F, B, B, F
time = 0
[Command]
name = "cpu32"
command = F, D, B, U, F, B, B, F
time = 0
[Command]
name = "cpu33"
command = U, U, U, U, F, B, B, F
time = 0
[Command]
name = "cpu34"
command = U, U, U, D, F, B, B, F
time = 0
[Command]
name = "cpu35"
command = U, U, D, D, F, B, B, F
time = 0
[Command]
name = "cpu36"
command = U, D, D, D, F, B, B, F
time = 0
[Command]
name = "cpu37"
command = D, D, D, D, F, B, B, F
time = 0
[Command]
name = "cpu38"
command = D, D, D, U, F, B, B, F
time = 0
[Command]
name = "cpu39"
command = D, D, U, U, F, B, B, F
time = 0
[Command]
name = "cpu40"
command = D, U, U, U, F, B, B, F
time = 0
[Command]
name = "cpu41"
command = U, D, U, U, F, B, B, F
time = 0
[Command]
name = "cpu42"
command = U, U, D, U, F, B, B, F
time = 0
[Command]
name = "cpu43"
command = D, U, U, D, F, B, B, F
time = 0
[Command]
name = "cpu44"
command = U, D, D, U, F, B, B, F
time = 0
[Command]
name = "cpu45"
command = D, U, D, U, F, B, B, F
time = 0
[Command]
name = "cpu46"
command = U, D, U, D, F, B, B, F
time = 0
[Command]
name = "cpu47"
command = F, F, F, F, F, B, B, F
time = 0
[Command]
name = "cpu48"
command = B, B, B, B, F, B, B, F
time = 0
[Command]
name = "cpu49"
command = F, B, F, F, F, B, B, F
time = 0
[Command]
name = "cpu50"
command = F, F, B, F, F, B, B, F
time = 0
[Command]
name = "cpu51"
command = B, F, F, F, F, B, B, F
time = 0

[command]
name = "fwd"
command=F
time=0
[command]
name = "back"
command=B
time=0
[command]
name = "up"
command=U
time=0
[command]
name = "down"
command=D
time=0

; Definition of the Commands
;=====================================================================
;First of all, I must to Thanx to "Mr.H" for let me use this comands for my two chars: Homero and Homer-Iori
;   -Warner el Tochix




;-| Super Motions |---------------------------------------------------



[Command]
name = "DFDFDFDFC"
command = ~D, F, D, F, D, F, D, F, x+y
time = 100



[Command]
name = "SIMSON 2"
command = ~$D, $B, $D, $F, a+b
time = 30



[Command]
name = "Drunken Tornado_LV.2"
command = ~D, F, D, F, y
time = 30


[Command]
name = "Drunken Tornado_LV.1"
command = ~D, F, D, F, x
time = 30


[Command]
name = "Hell Candy Bomb_LV.3"
command = ~$D, $B, $D, $F, x+y
time = 30


[Command]
name = "Hell Candy Bomb_LV.2"
command = ~$D, $B, $D, $F, y
time = 30


[Command]
name = "Hell Candy Bomb_LV.1"
command = ~$D, $B, $D, $F, x
time = 30


[Command]
name = "Bash Dash Masher_LV.3"
command = ~$D, $F, $D, $B, x+y
time = 30


[Command]
name = "Bash Dash Masher_LV.2"
command = ~$D, $F, $D, $B, y
time = 30


[Command]
name = "Bash Dash Masher_LV.1"
command = ~$D, $F, $D, $B, x
time = 30


;-| EX Special Motions |----------------------------------------------
[Command]
name = "Sideswitch EX"
command = ~$B, $D, $F, x+y
time = 20

[Command]
name = "Rush Tackle Kick EX"
command = ~$F, $D, $B, a+b
time = 35


[Command]
name = "3-hit Rushdown EX"
command = ~D, DB, B, x+y

[Command]
name = "Woohoo Whirlwind EX"
command = ~F, D, DF, x+y
time = 35

[Command]
name = "Kinetic Donut EX"
command = ~D, DF, F, x+y
time = 35


[Command]
name = "Sideswitch"
command = ~$B,  $D,  $F, x
time = 20


[Command]
name = "Sideswitch"
command = ~$B,  $D,  $F, y
time = 20


[Command]
name = "Rush Tackle Kick_a"
command = ~$F, $D,  $B, a
time = 20


[Command]
name = "Rush Tackle Kick_b"
command = ~$F,  $D,  $B, b
time = 20


[Command]
name = "Woohoo Whirlwind_x"
command = ~F, D, DF, x
time = 15


[Command]
name = "Woohoo Whirlwind_y"
command = ~F, D, DF, y
time = 15


[Command]
name = "Kinetic Donut_x"
command = ~D, DF, F, x
time = 15


[Command]
name = "Kinetic Donut_y"
command = ~D, DF, F, y
time = 15


[Command]
name = "3-hit Rushdown"
command = ~D, DB, B, x
time = 15


[Command]
name = "3-hit Rushdown"
command = ~D, DB, B, y
time = 15


;-------------------------------------------------

[Command]
name = "MAX"
command = a+y
time = 1

;-| Double Tap |------------------------------------------------------
[Command]
name = "FF";Required (do not remove)
command = F, F
time = 10


[Command]
name = "BB";Required (do not remove)
command = B, B
time = 10


;-| 2/3 Button Combination |------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = a+x
time = 1

[Command]
name = "call-st";Required (do not remove)
command = a+y
time = 1

;-| Dir + Button |----------------------------------------------------
[Command]
name = "fwd_a"
command = /F,a
time = 1

[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "fwd_c"
command = /F,c
time = 1

[Command]
name = "fwd_x"
command = /F,x
time = 1

[Command]
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "fwd_z"
command = /F,z
time = 1

[Command]
name = "back_a"
command = /B,a
time = 1

[Command]
name = "back_b"
command = /B,b
time = 1

[Command]
name = "back_c"
command = /B,c
time = 1

[Command]
name = "back_x"
command = /B,x
time = 1

[Command]
name = "back_y"
command = /B,y
time = 1

[Command]
name = "back_z"
command = /B,z
time = 1

[Command]
name = "down_b"
command = /D,b
time = 1

[Command]
name = "down_y"
command = /D,y
time = 1

[Command]
name = "charge1"
command = /b
time = 1

[Command]
name = "charge2"
command = /y
time = 1

[Command]
name = "charge"
command = /c
time = 1

;-| Single Button |---------------------------------------------------
[Command]
name = "x"
command = x
time = 1

[Command]
name = "a"
command = a
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "s"
command = s
time = 1

[Command]
name = "random"
command = x
time = 1

[Command]
name = "random"
command = a
time = 1

[Command]
name = "random"
command = y
time = 1

[Command]
name = "random"
command = b
time = 1

[Command]
name = "random"
command = c
time = 1

[Command]
name = "random"
command = z
time = 1

[Command]
name = "random"
command = s
time = 1

[Command]
name = "recovery"
command = z
time = 1



;-| Hold Button |-----------------------------------------------------
[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_s"
command = /s
time = 1

;-| Hold Dir |--------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup";Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

;------------------------ For KOF Series Only
[Command]
name = "holdupfwd"
command = /UF
time = 1

[Command]
name = "holdupback"
command = /UB
time = 1

[Command]
name = "longjump"
command = ~D, $U
time = 11

[Command]
name = "!longjump"
command = ~10$D, $U
time = 20

;=====================================================================
; State Entry for Commands
;=====================================================================
; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;_____________________________________________________________________



;AI Activation
[State -1, AI Activation]
type = VarSet
triggerall = var(7) != 1
triggerall = RoundState = [1,2]
triggerall = enemynear,life > 0
trigger1 = command = "cpu1"
trigger2 = command = "cpu2"
trigger3 = command = "cpu3"
trigger4 = command = "cpu4"
trigger5 = command = "cpu5"
trigger6 = command = "cpu6"
trigger7 = command = "cpu7"
trigger8 = command = "cpu8"
trigger9 = command = "cpu9"
trigger10 = command = "cpu10"
trigger11 = command = "cpu11"
trigger12 = command = "cpu12"
trigger13 = command = "cpu13"
trigger14 = command = "cpu14"
trigger15 = command = "cpu15"
trigger16 = command = "cpu16"
trigger17 = command = "cpu17"
trigger18 = command = "cpu18"
trigger19 = command = "cpu19"
trigger20 = command = "cpu20"
trigger21 = command = "cpu21"
trigger22 = command = "cpu22"
trigger23 = command = "cpu23"
trigger24 = command = "cpu24"
trigger25 = command = "cpu25"
trigger26 = command = "cpu26"
trigger27 = command = "cpu27"
trigger28 = command = "cpu28"
trigger29 = command = "cpu29"
trigger30 = command = "cpu30"
trigger31 = command = "cpu31"
trigger32 = command = "cpu32"
trigger33 = command = "cpu33"
trigger34 = command = "cpu34"
trigger35 = command = "cpu35"
trigger36 = command = "cpu36"
trigger37 = command = "cpu37"
trigger38 = command = "cpu38"
trigger39 = command = "cpu39"
trigger40 = command = "cpu40"
trigger41 = command = "cpu41"
trigger42 = command = "cpu42"
trigger43 = command = "cpu43"
trigger44 = command = "cpu44"
trigger45 = command = "cpu45"
trigger46 = command = "cpu46"
trigger47 = command = "cpu47"
trigger48 = command = "cpu48"
trigger49 = command = "cpu49"
trigger50 = command = "cpu50"
trigger51 = command = "cpu51"
Trigger52 = NumHelper(30000) != 0
Trigger52 = Helper(30000),Var(7)
ignorehitpause = 1
v = 7
value = 1

[State -3]
type = VarSet
triggerall = var(7)    = 1
trigger1 = roundstate = [0,1]
trigger2   = roundstate  = 4
trigger3   = win
trigger4   = lose
trigger5  = drawgame
trigger6   = !alive
ignorehitpause = 1
var(7) = -1


[State -1]
type = VarSet
trigger1 = var(7)    = -1
trigger1 = roundstate = 2 && enemynear,life > 0
trigger1 = ctrl
ignorehitpause = 1
var(7) = 1


[State -3]
Type = Helper
Trigger1 = NumHelper(30000) = 0 && !Var(7)
Trigger1 = RoundState = 2 && alive && StateNo = 0
Trigger1 = PrevStateNo = 5900 || PrevStateNo = [190,199]
StateNo = 30000
PosType = P1
Pos = 0, 0
KeyCtrl = 1
Ownpal = 1
ID = 30000
IgnoreHitPause = 1
SuperMoveTime = 9999
PauseMoveTime = 9999

[State -3]
type=changestate
trigger1= ishelper(30000)
trigger1= stateno!=30000
value=30000


[State -1, VarSet]
Type = VarSet
Trigger1 = NumEnemy = 1
Trigger2 = NumEnemy = 2
Trigger2 = Enemynear,Life > 0
var(58) = 0
IgnoreHitPause = 1


[State -1, VarSet]
Type = VarSet
Trigger1 = NumEnemy > 1
Trigger1 = Enemynear,Life = 0
var(58) = 1
IgnoreHitPause = 1

;=====================================================================
; Super Arts
;=====================================================================


[State -1, SIMSON 2]
type = ChangeState
value = 3510
triggerall= Command = "SIMSON 2"
triggerall = Power >= 3000
triggerall = var(39) = 0
triggerall = !var(7)  ;Prevent AI from abusing this move, throwing off the Custom AI
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100 || StateNo = 40)
trigger2 = movecontact
trigger2 = (stateno = [200,205]) || stateno = 235 || stateno = 400 || stateno = 430
trigger3 = Var(12) = [1,16]
trigger3 = stateno = 210 || stateno = 215  || stateno = 410
trigger4 = !var(40)
trigger4 = statetype != A
trigger4  = StateNo = 1301 && Animelem = 4,>= 0 && Animelem = 6,<= 4
;Super Cancel triggers
trigger5 = !var(40)
trigger5 = statetype != A
trigger5 = Stateno = 1110 &&Animelem = 2,>= 1 && Animelem = 3,<= 3
trigger6 = !var(40)
trigger6 = statetype != A
trigger6 = Stateno = 3101 &&Animelem = 2,>= 1 && Animelem = 33,<= 1


;---------------------------------------------------------------------
; 禁千弐百拾壱式・八稚女（LV.1）
[State -1, Ready Aim Fire]
type = ChangeState
value = 3450
triggerall = !var(7)
triggerall= var(39) = 0
triggerall= Power >= 2000
triggerall= Command = "Drunken Tornado_LV.2"
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100 || StateNo = 40)
trigger2 = movecontact
trigger2 = (stateno = [200,205]) || stateno = 235 || stateno = 400 || stateno = 430
trigger3 = Var(12) = [1,16]
trigger3 = stateno = 210 || stateno = 215  || stateno = 410
trigger4 = !var(40)
trigger4 = statetype != A
trigger4  = StateNo = 1301 && Animelem = 4,>= 0 && Animelem = 6,<= 4
;Super Cancel triggers
trigger5 = !var(40)
trigger5 = statetype != A
trigger5 = Stateno = 1110 &&Animelem = 2,>= 1 && Animelem = 3,<= 3
trigger6 = !var(40)
trigger6 = statetype != A
trigger6 = Stateno = 3101 &&Animelem = 2,>= 1 && Animelem = 33,<= 1

[State -1, Ready Aim Fire]
type = ChangeState
value = 3400
triggerall = !var(7)
triggerall= var(39) = 0
triggerall= Power >= 1000
triggerall= Command = "Drunken Tornado_LV.1"
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100 || StateNo = 40)
trigger2 = movecontact
trigger2 = (stateno = [200,205]) || stateno = 235 || stateno = 400 || stateno = 430
trigger3 = Var(12) = [1,16]
trigger3 = stateno = 210 || stateno = 215  || stateno = 410
trigger4 = !var(40)
trigger4 = statetype != A
trigger4  = StateNo = 1301 && Animelem = 4,>= 0 && Animelem = 6,<= 4
;Super Cancel triggers
trigger5 = !var(40)
trigger5 = statetype != A
trigger5 = Stateno = 1110 &&Animelem = 2,>= 1 && Animelem = 3,<= 3
trigger6 = !var(40)
trigger6 = statetype != A
trigger6 = Stateno = 3101 &&Animelem = 2,>= 1 && Animelem = 33,<= 1


;---------------------------------------------------------------------
; 裏百八式・八酒杯（LV.3）
[State -1, Hell Candy Bomb 3]
type = ChangeState
value = 3020
triggerall = !var(7)
triggerall= NumHelper(3008) = 0 && NumHelper(3009) = 0 && NumHelper(3010) = 0
triggerall= Var(17) = 0 && var(39) = 0 && (Command = "Hell Candy Bomb_LV.3" && Power >= 3000)
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100 || StateNo = 40)
trigger2 = movecontact
trigger2 = (stateno = [200,205]) || stateno = 235 || stateno = 400 || stateno = 430
trigger3 = Var(12) = [1,16]
trigger3 = stateno = 210 || stateno = 215  || stateno = 410

;---------------------------------------------------------------------
; 裏百八式・八酒杯（LV.2）
[State -1, Hell Candy Bomb 2]
type = ChangeState
value = 3010
triggerall = !var(7)
triggerall= NumHelper(3008) = 0 && NumHelper(3009) = 0 && NumHelper(3010) = 0
triggerall= Var(17) = 0 && var(39) = 0 && (Command = "Hell Candy Bomb_LV.2" && Power >= 2000)
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100 || StateNo = 40)
trigger2 = movecontact
trigger2 = (stateno = [200,205]) || stateno = 235 || stateno = 400 || stateno = 430
trigger3 = Var(12) = [1,16]
trigger3 = stateno = 210 || stateno = 215  || stateno = 410

;---------------------------------------------------------------------
; 裏百八式・八酒杯（LV.1）
[State -1, Hell Candy Bomb 1]
type = ChangeState
value = 3002
triggerall = !var(7)
triggerall= NumHelper(3008) = 0 && NumHelper(3009) = 0 && NumHelper(3010) = 0 && Power >= 1000
;triggerall= Var(17) = 0 && var(39) = 0 && ((Command = "Hell Candy Bomb_LV.1") || (Command = "Hell Candy Bomb_LV.2" && Power < 2000))
triggerall= Var(17) = 0 && var(39) = 0 && (Command = "Hell Candy Bomb_LV.1")
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100 || StateNo = 40)
trigger2 = movecontact
trigger2 = (stateno = [200,205]) || stateno = 235 || stateno = 400 || stateno = 430
trigger3 = Var(12) = [1,16]
trigger3 = stateno = 210 || stateno = 215  || stateno = 410

;---------------------------------------------------------------------
; 禁千弐百拾壱式・八稚女（LV.3）
[State -1, Bash Dash Masher 3]
type = ChangeState
value = 3120
triggerall = !var(7)
triggerall= Command = "Bash Dash Masher_LV.3" && Power >= 3000
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100 || StateNo = 40)
trigger2 = movecontact
trigger2 = (stateno = [200,205]) || stateno = 235 || stateno = 400 || stateno = 430
trigger3 = Var(12) = [1,16]
trigger3 = stateno = 210 || stateno = 215  || stateno = 410
trigger4 = !var(40)
trigger4 = statetype != A
trigger4  = StateNo = 1301 && Animelem = 4,>= 0 && Animelem = 6,<= 4
;Super Cancel triggers
trigger5 = !var(40)
trigger5 = statetype != A
trigger5 = Stateno = 1110 &&Animelem = 2,>= 1 && Animelem = 3,<= 3

;---------------------------------------------------------------------
; 禁千弐百拾壱式・八稚女（LV.2）
[State -1, Bash Dash Masher 2]
type = ChangeState
value = 3110
triggerall = !var(7)
triggerall= Command = "Bash Dash Masher_LV.2" && Power >= 2000
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100 || StateNo = 40)
trigger2 = movecontact
trigger2 = (stateno = [200,205]) || stateno = 235 || stateno = 400 || stateno = 430
trigger3 = Var(12) = [1,16]
trigger3 = stateno = 210 || stateno = 215  || stateno = 410
trigger4 = !var(40)
trigger4 = statetype != A
trigger4  = StateNo = 1301 && Animelem = 4,>= 0 && Animelem = 6,<= 4
;Super Cancel triggers
trigger5 = !var(40)
trigger5 = statetype != A
trigger5 =  Stateno = 1110 && Animelem = 2,>= 1 && Animelem = 3,<= 3

;---------------------------------------------------------------------
; 禁千弐百拾壱式・八稚女（LV.1）
[State -1, Bash Dash Masher 1]
type = ChangeState
value = 3100
triggerall = !var(7)
triggerall= Power >= 1000
triggerall= (Command = "Bash Dash Masher_LV.1") || (Command = "Bash Dash Masher_LV.2" && Power < 2000)
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100 || StateNo = 40)
trigger2 = movecontact
trigger2 = (stateno = [200,205]) || stateno = 235 || stateno = 400 || stateno = 430
trigger3 = Var(12) = [1,16]
trigger3 = stateno = 210 || stateno = 215  || stateno = 410
trigger4 = !var(40)
trigger4 = statetype != A
trigger4 = !var(40)
trigger4 = statetype != A
trigger4  = StateNo = 1301 && Animelem = 4,>= 0 && Animelem = 6,<= 4
;Super Cancel triggers
trigger5 = !var(40)
trigger5 = statetype != A
trigger5 = Stateno = 1110 &&Animelem = 2,>= 1 && Animelem = 3,<= 3



;---------------------------------------------------------------------
; 走
;[State -1, BEER RIOT HOMER]
;type = ChangeState
;value = 9999
;triggerall= !var(39)
;triggerall = command = "Overdrive"
;trigger1 = StateType = S && Ctrl = 1

;============================================
; EX Specials
;============================================
;----------------------------------------------------------

[State -1, EX Kinetic Donut]
type = ChangeState
value = 1420
triggerall = !var(7)
triggerall = Power >= 500
triggerall= Command = "Rush Tackle Kick EX"
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = movecontact
trigger2 = (stateno = [200,205]) || stateno = 235 || stateno = 400 || stateno = 430
trigger3 = Var(12) = [1,16]
trigger3 = stateno = 210 || stateno = 215  || stateno = 410


[State -1, EX Kinetic Donut]
type = ChangeState
value = 1420
triggerall = !var(7)
triggerall = Power >= 500
triggerall= Command = "Rush Tackle Kick EX"
triggerall = StateType != A
triggerall = var(40) > 0
triggerall = stateno != 1020
trigger1 = Var(12)
trigger1 = stateno = [200,499]
trigger2 = Var(12)
trigger2 = stateno = [1000,2999]



;---------------------------------------------------------------------
[State -1, Side Switch]
type = ChangeState
value = 1250
triggerall = var(7) <= 0
triggerall= Command = "Sideswitch EX"
triggerall = Power >= 500
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = movecontact
trigger2 = (stateno = [200,205]) || stateno = 235 || stateno = 400 || stateno = 430
trigger3 = Var(12) = [1,16]
trigger3 = stateno = 210 || stateno = 215  || stateno = 410



[State -1, Tackle Kick]
type = ChangeState
value = 1250
triggerall = !var(7)
triggerall= Command = "Sideswitch EX"
triggerall = StateType != A
triggerall = var(40) > 0
triggerall = stateno != [1200,1250]
trigger1 = Var(12)
trigger1 = stateno = [200,499]
trigger2 = Var(12)
trigger2 = stateno = [1000,2999]

[State -1, EX Woohoo Whirlwind]
type = ChangeState
value = 1120
triggerall = !var(7)
triggerall = Power >= 500
triggerall= Command = "Woohoo Whirlwind EX"
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = movecontact
trigger2 = (stateno = [200,205]) || stateno = 235 || stateno = 400 || stateno = 430
trigger3 = Var(12) = [1,16]
trigger3 = stateno = 210 || stateno = 215  || stateno = 410



[State -1, EX Woohoo Whirlwind]
type = ChangeState
value = 1120
triggerall = !var(7)
triggerall= Command = "Woohoo Whirlwind EX"
triggerall = StateType != A
triggerall = var(40) > 0
triggerall = stateno != 1120
trigger1 = Var(12)
trigger1 = stateno = [200,499]
trigger2 = Var(12)
trigger2 = stateno = [1000,2999]

;---------------------------------------------------------------------
; 百八式・闇払い（強）
[State -1, EX Kinetic Donut]
type = ChangeState
value = 1020
triggerall = !var(7)
triggerall = Power >= 500
triggerall= NumHelper(3008) = 0 && NumHelper(3009) = 0 && NumHelper(3010) = 0
triggerall= Var(17) = 0 && Command = "Kinetic Donut EX" && NumProjID(1005) = 0
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = movecontact
trigger2 = (stateno = [200,205]) || stateno = 235 || stateno = 400 || stateno = 430
trigger3 = Var(12) = [1,16]
trigger3 = stateno = 210 || stateno = 215  || stateno = 410


[State -1, EX Kinetic Donut]
type = ChangeState
value = 1020
triggerall = !var(7)
triggerall= NumHelper(3008) = 0 && NumHelper(3009) = 0 && NumHelper(3010) = 0
triggerall= Command = "Kinetic Donut EX" && NumProjID(1005) = 0
triggerall = StateType != A
triggerall = var(40) > 0
triggerall = stateno != 1020
trigger1 = Var(12)
trigger1 = stateno = [200,499]
trigger2 = Var(12)
trigger2 = stateno = [1000,2999]

[State -1, 3-hit rush 1]
type = ChangeState
value = 11320
triggerall = Power >= 500
triggerall = var(7) <= 0
triggerall= Command = "3-hit Rushdown EX"
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = movecontact
trigger2 = (stateno = [200,205]) || stateno = 235 || stateno = 400 || stateno = 430
trigger3 = Var(12) = [1,16]
trigger3 = stateno = 210 || stateno = 215  || stateno = 410


[State -1, 3-hit rush 1]
type = ChangeState
value = 11320
triggerall = var(7) <= 0
triggerall= Command = "3-hit Rushdown EX"
triggerall = StateType != A
triggerall = var(40) > 0
triggerall = stateno != 11320
trigger1 = Var(12)
trigger1 = stateno = [200,499]
trigger2 = Var(12)
trigger2 = stateno = [1000,2999]


;------------------------ 三段目
[State -1, 3-hit rush 3]
type = ChangeState
value = 11322
triggerall= var(15) = 2
trigger1  = StateNo = 11321 && AnimElem = 5,>= 2 && AnimElem = 7,< 0
trigger2 = Var(12) = [1,16]
trigger2 = stateno = 11321

;=====================================================================
; Special Arts 
;=====================================================================

;---------------------------------------------------------------------
; 屑風
[State -1, Side Switch]
type = ChangeState
value = 1200
triggerall = !var(7)
triggerall= Command = "Sideswitch" && var(39) = 0
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = movecontact
trigger2 = (stateno = [200,205]) || stateno = 235 || stateno = 400 || stateno = 430
trigger3 = Var(12) = [1,16]
trigger3 = stateno = 210 || stateno = 215  || stateno = 410


[State -1, Tackle Kick]
type = ChangeState
value = 1200
triggerall = !var(7)
triggerall= Command = "Sideswitch"
triggerall = StateType != A
triggerall = var(40) > 0
triggerall = stateno != [1200,1250]
trigger1 = Var(12)
trigger1 = stateno = [200,499]
trigger2 = Var(12)
trigger2 = stateno = [1000,2999]
;---------------------------------------------------------------------
; 弐百拾弐式・琴月陰（弱）
[State -1, Tackle Kick]
type = ChangeState
value = 1400
triggerall = !var(7)
triggerall= Command = "Rush Tackle Kick_a"
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = movecontact
trigger2 = (stateno = [200,205]) || stateno = 235 || stateno = 400 || stateno = 430
trigger3 = Var(12) = [1,16]
trigger3 = stateno = 210 || stateno = 215  || stateno = 410



[State -1, Tackle Kick]
type = ChangeState
value = 1400
triggerall = !var(7)
triggerall= Command = "Rush Tackle Kick_a"
triggerall = StateType != A
triggerall = var(40) > 0
triggerall = stateno != 1400
trigger1 = Var(12)
trigger1 = stateno = [200,499]
trigger2 = Var(12)
trigger2 = stateno = [1000,2999]

;---------------------------------------------------------------------
; 弐百拾弐式・琴月陰（強）
[State -1, Tackle Kick Drunken]
type = ChangeState
value = 1410
triggerall = !var(7)
triggerall= Command = "Rush Tackle Kick_b"
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = movecontact
trigger2 = (stateno = [200,205]) || stateno = 235 || stateno = 400 || stateno = 430
trigger3 = Var(12) = [1,16]
trigger3 = stateno = 210 || stateno = 215  || stateno = 410



[State -1, Tackle Kick Drunken]
type = ChangeState
value = 1410
triggerall = !var(7)
triggerall= Command = "Rush Tackle Kick_b"
triggerall = StateType != A
triggerall = var(40) > 0
triggerall = stateno != 1410
trigger1 = Var(12)
trigger1 = stateno = [200,499]
trigger2 = Var(12)
trigger2 = stateno = [1000,2999]
;---------------------------------------------------------------------
; 百式・鬼焼き（弱）
[State -1, Woohoo Whirlwind 1]
type = ChangeState
value = 1100
triggerall = !var(7)
triggerall= Command = "Woohoo Whirlwind_x"
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = movecontact
trigger2 = (stateno = [200,205]) || stateno = 235 || stateno = 400 || stateno = 430
trigger3 = Var(12) = [1,16]
trigger3 = stateno = 210 || stateno = 215  || stateno = 410



[State -1, Woohoo Whirlwind 1]
type = ChangeState
value = 1100
triggerall = !var(7)
triggerall= Command = "Woohoo Whirlwind_x"
triggerall = StateType != A
triggerall = var(40) > 0
triggerall = stateno != 1100
trigger1 = Var(12)
trigger1 = stateno = [200,499]
trigger2 = Var(12)
trigger2 = stateno = [1000,2999]
;---------------------------------------------------------------------
; 百式・鬼焼き（強）
[State -1, Woohoo Whirlwind 2]
type = ChangeState
value = 1110
triggerall = !var(7)
triggerall= Command = "Woohoo Whirlwind_y"
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = movecontact
trigger2 = (stateno = [200,205]) || stateno = 235 || stateno = 400 || stateno = 430
trigger3 = Var(12) = [1,16]
trigger3 = stateno = 210 || stateno = 215  || stateno = 410



[State -1, Woohoo Whirlwind 2]
type = ChangeState
value = 1110
triggerall = !var(7)
triggerall= Command = "Woohoo Whirlwind_y"
triggerall = StateType != A
triggerall = var(40) > 0
triggerall = stateno != 1110
trigger1 = Var(12)
trigger1 = stateno = [200,499]
trigger2 = Var(12)
trigger2 = stateno = [1000,2999]

;---------------------------------------------------------------------
; 百八式・闇払い（弱）
[State -1, Kinetic Donut 1]
type = ChangeState
value = 1000
triggerall = !var(7)
triggerall= NumHelper(3008) = 0 && NumHelper(3009) = 0 && NumHelper(3010) = 0
triggerall= Var(17) = 0 && Command = "Kinetic Donut_x" && NumProjID(1005) = 0
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = movecontact
trigger2 = (stateno = [200,205]) || stateno = 235 || stateno = 400 || stateno = 430
trigger3 = Var(12) = [1,16]
trigger3 = stateno = 210 || stateno = 215  || stateno = 410



[State -1, Kinetic Donut 1]
type = ChangeState
value = 1000
triggerall = !var(7)
triggerall= NumHelper(3008) = 0 && NumHelper(3009) = 0 && NumHelper(3010) = 0
triggerall=  Command = "Kinetic Donut_x" && NumProjID(1005) = 0
triggerall = StateType != A
triggerall = var(40) > 0
triggerall = stateno != 1000
trigger1 = Var(12)
trigger1 = stateno = [200,499]
trigger2 = Var(12)
trigger2 = stateno = [1000,2999]

;---------------------------------------------------------------------
; 百八式・闇払い（強）
[State -1, Kinetic Donut 2]
type = ChangeState
value = 1010
triggerall = !var(7)
triggerall= NumHelper(3008) = 0 && NumHelper(3009) = 0 && NumHelper(3010) = 0
triggerall= Var(17) = 0 && Command = "Kinetic Donut_y" && NumProjID(1005) = 0
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = movecontact
trigger2 = (stateno = [200,205]) || stateno = 235 || stateno = 400 || stateno = 430
trigger3 = Var(12) = [1,16]
trigger3 = stateno = 210 || stateno = 215  || stateno = 410



[State -1, Kinetic Donut 2]
type = ChangeState
value = 1010
triggerall = !var(7)
triggerall= NumHelper(3008) = 0 && NumHelper(3009) = 0 && NumHelper(3010) = 0
triggerall= Command = "Kinetic Donut_y" && NumProjID(1005) = 0
triggerall = StateType != A
triggerall = var(40) > 0
triggerall = stateno != 1010
trigger1 = Var(12)
trigger1 = stateno = [200,499]
trigger2 = Var(12)
trigger2 = stateno = [1000,2999] 

;---------------------------------------------------------------------
; 百弐拾七式・葵花
;------------------------ 一段目
[State -1, 3-hit rush 1]
type = ChangeState
value = 1300
triggerall = !var(7)
triggerall= Command = "3-hit Rushdown"
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = movecontact
trigger2 = (stateno = [200,205]) || stateno = 235 || stateno = 400 || stateno = 430
trigger3 = Var(12) = [1,16]
trigger3 = stateno = 210 || stateno = 215  || stateno = 410


[State -1, 3-hit rush 1]
type = ChangeState
value = 1300
triggerall = !var(7)
triggerall= Command = "3-hit Rushdown"
triggerall = StateType != A
triggerall = var(40) > 0
triggerall = stateno != 1300
trigger1 = Var(12)
trigger1 = stateno = [200,499]
trigger2 = Var(12)
trigger2 = stateno = [1000,2999]

;------------------------ 二段目
[State -1, 3-hit rush 2]
type = ChangeState
value = 1301
triggerall = !var(7)
triggerall= var(15) = 1
trigger1  = StateNo = 1300 && AnimElem = 5,>= 2 && AnimElem = 7,< 0
trigger2 = Var(12) = [1,16]
trigger2 = stateno = 1300

;------------------------ 三段目
[State -1, 3-hit rush 3]
type = ChangeState
value = 1302
triggerall = !var(7)
triggerall= var(15) = 1
trigger1  = StateNo = 1301 && AnimElem = 5,>= 2 && AnimElem = 7,< 0
trigger2 = Var(12) = [1,16]
trigger2 = stateno = 1301

;------------------------先行入力
[State -1,3-hit rush - Varset]
type = VarSet
var(15) = 1
triggerall = Command = "3-hit Rushdown" && Time > 0 && var(15) = 0
trigger1  = StateNo = 1300 && AnimElem = 1,> 1 && AnimElem = 6,< 3
trigger2  = StateNo = 1301 && AnimElem = 1,> 1 && AnimElem = 6,< 3

;------------------------先行入力
[State -1,3-hit rush - Varset]
type = VarSet
var(15) = 2
triggerall = Command = "3-hit Rushdown EX" && Time > 0 && var(15) = 0
trigger1  = StateNo = 11320 && AnimElem = 1,> 1 && AnimElem = 6,< 3
trigger2  = StateNo = 11321 && AnimElem = 1,> 1 && AnimElem = 6,< 3

;=====================================================================
; Basic Animation
;=====================================================================

;---------------------------------------------------------------------
;RunFwd
[State -1, Run Forward]
type = ChangeState
value = 100
triggerall = !var(7)
trigger1 = Command = "FF" && StateType = S && Ctrl = 1 && StateNo != 100

;---------------------------------------------------------------------
;RunBack
[State -1, Hop Backward]
type = ChangeState
value = 105
triggerall = !var(7)
trigger1 = Command = "BB" && StateType = S && Ctrl = 1

;=====================================================================
; 2/3 Buttons
;=====================================================================
;
;=====================================================================
; Basic Throws
;=====================================================================

;---------------------------------------------------------------------
; 逆剥ぎ（Ｐ通常投げ）
[State -1, Throw]
type = ChangeState
value = 800
triggerall = !var(7)
triggerall = StateNo != 100 && StateType = S && Ctrl = 1
triggerall = P2MoveType != H && !P2StateType = A
trigger1 = Command = "fwd_y" && P2BodyDist X < 10 ;40
trigger2 = Command = "back_y" && P2BodyDist X < 10  ;20

;---------------------------------------------------------------------
; 逆剥ぎ（K通常投げ）
[State -1, Throw]
type = ChangeState
value = 850
triggerall = !var(7)
triggerall = StateNo != 100 && StateType = S && Ctrl = 1
triggerall = P2MoveType != H && !P2StateType = A
trigger1 = Command = "fwd_b" && P2BodyDist X < 10
trigger2 = Command = "back_b" && P2BodyDist X < 10

;---------------------------------------------------------------------
; Special Attacks , Moves and so on.
;---------------------------------------------------------------------

;---------------------------------------------------------------------
; 緊回避動作
[State -1, Crawling Dodge]
type = ChangeState
value = 4000
triggerall = !var(7)
triggerall = Command = "recovery"
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = Time <= 1 && ((StateNo = [200,499]) ||  (StateNo = 700))

;---------------------------------------------------------------------
; パワ溜め動作
;Power Charge
[State -1, Power Charge]
type = ChangeState
value = 4100
triggerall = (command = "charge1" && command = "charge2") || command = "charge" 
triggerall = statetype != A && Power < 4000
triggerall =var(40) = 0
triggerall = !var(7)      ;Prevents AI from Abusing Charge to throw off AI
trigger1 = ctrl
trigger2 = Time <= 1 && ((StateNo = [200,499]) ||  (StateNo = 700))

;=====================================================================
; Dir + Button
;=====================================================================
;--------------------------------------------------------------------------------------

;MAX?ﾔﾑ
[State -1, MAX?ﾔﾑ]
type = ChangeState
value = 750
triggerall = var(7) <= 0
triggerall = command = "MAX"  || command = "c"
triggerall = power >= 1000 && var(40) = 0
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100,101])

;---------------------------------------------------------------------------
;ｫｯｫ､ｫﾃｫｯMAX?ﾔﾑ
[State -1, ｫｯｫ､ｫﾃｫｯMAX?ﾔﾑ]
type = ChangeState
value = 751
triggerall = var(7) <= 0
triggerall = command = "MAX" || command = "c"
triggerall = power >= 2000 && var(40) = 0
triggerall = statetype != A
trigger1 = (stateno = [200,499]) && var(12)
;---------------------------------------------------------------------
; 外式・轟陰""（→A）
[State -1]
type = ChangeState
value = 700
triggerall = !var(7)
triggerall= Command = "fwd_a"
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)

;---------------------------------------------------------------------
; 外式・百合折り（ジャンプ中←A）
[State -1, Body Splash]
type = ChangeState
value = 710
triggerall = !var(7)
triggerall= Command = "back_a"
trigger1 = StateType = A && Ctrl = 1

;=====================================================================
; Taunts
;=====================================================================

;---------------------------------------------------------------------
; 挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "s"
trigger1 = StateType = S && Ctrl = 1

;=====================================================================
; Basic Arts
;=====================================================================

;---------------------------------------------------------------------
; 弱パン
[State -1, Stand Weak Punch]
type = ChangeState
value = IfElse(P2BodyDist X <= 10,205,200)
triggerall = var(7) <= 0
triggerall = Command = "x" && !Command = "holddown"
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 100)
trigger2  = (StateNo = 200)
trigger2  =  AnimElem = 3,> 1 || movecontact
trigger3  = (StateNo = 205)
trigger3  =  AnimElem = 3,> 1 || movecontact
trigger4  = (StateNo = 400)
trigger4  =  AnimElem = 3,> 1 || movecontact
trigger5  = (StateNo = 430)
trigger5  =  AnimElem = 3,> 1 || movecontact



;---------------------------------------------------------------------
; 弱キック
[State -1, Stand Weak Kick]
type = ChangeState
value = IfElse(P2BodyDist X <= 28,235,230)
triggerall = var(7) <= 0
triggerall = Command = "a" && !Command = "holddown"
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 100)
trigger2  = (StateNo = 200)
trigger2  =  AnimElem = 3,> 1 || movecontact
trigger3  = (StateNo = 205)
trigger3  =  AnimElem = 3,> 1 || movecontact
trigger4  = (StateNo = 400)
trigger4  =  AnimElem = 3,> 1 || movecontact
trigger5  = (StateNo = 430)
trigger5  =  AnimElem = 3,> 1 || movecontact



;---------------------------------------------------------------------
; 強パン
[State -1, Stand Strong Punch]
type = ChangeState
value = IfElse(P2BodyDist X <= 30,215,210)
triggerall = var(7) <= 0
triggerall = Command = "y" && !Command = "holddown"
trigger1  = (StateNo = 200)
trigger1  =  AnimElem = 3,> 1 || movecontact
trigger2  = (StateNo = 205)
trigger2  =  AnimElem = 3,> 1 || movecontact
trigger3 = StateType = S && (Ctrl = 1 || StateNo = 100)


;---------------------------------------------------------------------
; 強キック
[State -1, Stand Strong Kick]
type = ChangeState
value = 240
triggerall = Command = "b" && !Command = "holddown"
triggerall = var(7) <= 0
trigger1  = (StateNo = 230)
trigger1  =  AnimElem = 3,> 1 || movecontact
trigger2  = (StateNo = 235)
trigger2  =  AnimElem = 3,> 1 || movecontact
trigger3 = StateType = S && (Ctrl = 1 || StateNo = 100)

;---------------------------------------------------------------------
; しゃがみ弱パン
[State -1]
type = ChangeState
value = 400
triggerall = Command = "x" && Command = "holddown"
triggerall = var(7) <= 0
trigger1 =  (StateType = C && Ctrl = 1) || StateNo = 100
trigger2  = (StateNo = 200)
trigger2  =  AnimElem = 3,> 1 || movecontact
trigger3  = (StateNo = 205)
trigger3  =  AnimElem = 3,> 1 || movecontact
trigger4  = (StateNo = 400)
trigger4  =  AnimElem = 3,> 1 || movecontact
trigger5  = (StateNo = 430)
trigger5  =  AnimElem = 3,> 1 || movecontact

;---------------------------------------------------------------------
; しゃがみ強パン
[State -1]
type = ChangeState
value = 410
triggerall = Command = "y" && Command = "holddown"
triggerall = var(7) <= 0
trigger1 = (StateType = C && Ctrl = 1) || StateNo = 100
trigger2  = (StateNo = 400)
trigger2  =  AnimElem = 3,> 1 || movecontact
trigger3  = (StateNo = 430)
trigger3  =  AnimElem = 3,> 1 || movecontact


;---------------------------------------------------------------------
; しゃがみ弱キック
[State -1]
type = ChangeState
value = 430
triggerall = Command = "a" && Command = "holddown"
triggerall = var(7) <= 0
trigger1 = (StateType = C && Ctrl = 1) || StateNo = 100
trigger2  = (StateNo = 200)
trigger2  =  AnimElem = 3,> 1 || movecontact
trigger3  = (StateNo = 205)
trigger3  =  AnimElem = 3,> 1 || movecontact
trigger4  = (StateNo = 400)
trigger4  =  AnimElem = 3,> 1 || movecontact
trigger5  = (StateNo = 430)
trigger5  =  AnimElem = 3,> 1 || movecontact

;---------------------------------------------------------------------
; しゃがみ強キック
[State -1]
type = ChangeState
value = 440
triggerall = Command = "b" && Command = "holddown"
triggerall = var(7) <= 0
trigger1 = (StateType = C && Ctrl = 1) || StateNo = 100

;---------------------------------------------------------------------
; ジャンプ弱パン
[State -1]
type = ChangeState
value = 600
triggerall = var(7) <= 0
triggerall = Command = "x" && StateType = A && Ctrl = 1
trigger1 = StateNo != 105

;---------------------------------------------------------------------
; ジャンプ強パン
[State -1]
type = ChangeState
value = 610
triggerall = var(7) <= 0
triggerall = Command = "y" && StateType = A && Ctrl = 1
trigger1 = StateNo != 105

;---------------------------------------------------------------------
; ジャンプ弱キック
[State -1]
type = ChangeState
value = 630
triggerall = var(7) <= 0
triggerall = Command = "a" && StateType = A && Ctrl = 1
trigger1 = StateNo != 105

;---------------------------------------------------------------------
; ジャンプ強キック
[State -1]
type = ChangeState
value = 640
triggerall = var(7) <= 0
triggerall = Command = "b" && StateType = A && Ctrl = 1
trigger1 = StateNo != 105









;-------------------------------------------------------------------------------------

[State -1, AI]
Type = ChangeState
TriggerAll = Var(7) =1
trigger1 = stateno = [120,139] 
trigger1 = stateno = [150,159]
Trigger1 =p2statetype != A || p2statetype = A
trigger1 = p2movetype != A || p2movetype = I
Value = 140


[state -1];ガ?ド
type = ChangeState
value = 120
triggerall = alive
;triggerall = var(55)      >= 2
triggerall = var(7)      = 1
triggerall = random <= 750*var(7)
trigger1   = ctrl || stateno = 21
trigger1   = p2movetype    = A
trigger1   = enemynear,hitdefattr = SCA, AA, AP
trigger1   = p2bodydist x >= 0
trigger1   = inguarddist
trigger2   = ctrl || stateno = 21
trigger2   = enemynear,movetype = A
trigger2   = enemy,numhelper > 0 || enemy,numproj > 0
trigger2   = inguarddist
trigger3   = ctrl || stateno = 21
trigger3   = enemynear,movetype = A
trigger3   = enemynear,hitdefattr = SCA, AA, AP
trigger3   = p2bodydist x  < 0
trigger4   = stateno       = 100
trigger4   = p2movetype    = A
trigger4   = enemynear,hitdefattr = SCA, AA, AP
trigger4   = inguarddist
trigger5   = stateno       = 100
trigger5   = enemynear,movetype = A
trigger5   = enemy,numhelper > 0 || enemy,numproj > 0
trigger5   = inguarddist









[state -1]
type = ChangeState
value = 210
triggerall = var(7)
triggerall = var(40) >= 700
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != A && p2statetype != L
triggerall = p2bodydist x = [31,70]
triggerall = p2movetype = H
triggerall = p2stateno != [120,159]
trigger1 = ctrl 

[State -1,]
type = ChangeState
value = 215
triggerall = var(40) >= 700
;triggerall = var(55) >= 2
triggerall = roundstate = 2
triggerall = var(7) = 1
triggerall = statetype != A
triggerall = p2bodydist x <= 30
trigger1 = enemynear(var(58)),statetype != A && enemynear(var(58)),statetype != L
trigger1 = enemynear(var(58)),movetype = H
trigger1 = ctrl

[State -1,]
type = ChangeState
value = 1300
;triggerall = var(55) >= 2
triggerall = roundstate = 2
triggerall = var(7) = 1
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A && enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
triggerall = var(8)
trigger1 = var(40) = [1,900]
trigger1 = stateno = 210
trigger2 = var(40) = [1,900]
trigger2 = stateno = 215
trigger3 = var(40) = [200,900]
trigger3 = stateno = 1110
trigger3 = animelem = 3,>= 1 && animelem = 3,<= 3
trigger4 = var(40) = [200,900]
trigger4 = stateno = 1120
trigger4 = animelem = 3,>= 1 && animelem = 3,<= 3
trigger5 = var(40) = [200,900]
trigger5 = stateno = 1402



[State -1,]
type = ChangeState
value = 1120
triggerall = var(40) = [200,900]
;triggerall = var(55) >= 2
triggerall = roundstate = 2
triggerall = var(7) = 1
triggerall = statetype != A
trigger1 = var(8)
trigger1 = enemynear(var(58)),statetype != A && enemynear(var(58)),statetype != L
trigger1 = enemynear(var(58)),movetype = H
trigger1 = stateno = 1301 



[State -1,]
type = ChangeState
value = 1250
;triggerall = var(55) >= 2
triggerall = roundstate = 2
triggerall = var(7) = 1
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A && enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
triggerall = var(8)
trigger1 = var(40) = [1,400]
trigger1 = stateno = 1110
trigger1 = animelem = 3,>= 1 && animelem = 3,<= 3
trigger2 = var(40) = [1,400]
trigger2 = stateno = 1120
trigger2 = animelem = 3,>= 1 && animelem = 3,<= 3






;------------------------------------------------------------------------------------------

[State -1,]
type = ChangeState
value = 1200
;triggerall = var(55) >= 2
triggerall = roundstate = 2
triggerall = var(7) = 1
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A&& enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype != H
triggerall = p2bodydist x <= 40
triggerall = random <= var(7)*800
trigger1 = ctrl || stateno = 100


;-----------------------------------------------------------------------------------


[State -1,]
type = ChangeState
value = 215
;triggerall = var(55) >= 2
triggerall = roundstate = 2
triggerall = var(7) = 1
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A && enemynear(var(58)),statetype != L
triggerall = p2bodydist x = [0,30]
triggerall = random <= var(7)*800
trigger1 = ctrl || stateno = 100

[state -1]
type = ChangeState
value = 210
triggerall = var(7)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != A && p2statetype != L
triggerall = p2bodydist x = [30,80]
triggerall = p2movetype = H
triggerall = p2stateno != [120,159]
triggerall = random <= var(7)*900
trigger1 = ctrl 

[State -1,]
type = ChangeState
value = 430
;triggerall = var(55) >= 2
triggerall = roundstate = 2
triggerall = var(7) = 1
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A && enemynear(var(58)),statetype != L
triggerall = p2bodydist x = [0,30]
triggerall = random <= var(7)*800
trigger1 = ctrl || stateno = 100

[State -1,]
type = ChangeState
value = ifelse(random <= var(7)*499,1110,1100)
;triggerall = var(55) >= 2
triggerall = roundstate = 2
triggerall = var(7) = 1
triggerall = statetype != A
triggerall = p2bodydist x <= 40
triggerall = random <= var(7)*800
trigger1 = enemynear(var(58)),statetype != A && enemynear(var(58)),statetype != L
trigger1 = enemynear(var(58)),movetype = A && enemynear(var(58)),movetype != H
trigger1 = ctrl
trigger2 = enemynear(var(58)),statetype = A&& enemynear(var(58)),statetype != L
trigger2 = enemynear(var(58)),movetype != H
trigger2 = ctrl || stateno = 100



[State -1,]
type = ChangeState
value = 1000
;triggerall = var(55) >= 2
triggerall = roundstate = 2
triggerall = var(7) = 1
triggerall = statetype != A
triggerall = p2bodydist x >= 100
triggerall = random <= var(7)*300
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype = L
trigger1 = ctrl


;Jumping strong Kick
[State -1]
type = ChangeState
value = 610
triggerall = roundstate = 2
triggerall = var(7) = 1
triggerall = p2bodydist x <= 70
triggerall = statetype = A
triggerall = random <= var(7)*600
trigger1 = ctrl




;----------------------------------------------------------------------------



[State -1,]
type = ChangeState
value = 3510
triggerall = power >= 3000
;triggerall = var(55) >= 2
triggerall = roundstate = 2
triggerall = var(7) = 1
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A && enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype != H
triggerall = p2bodydist x <= 50
triggerall = random <= var(7)*800
trigger1 = ctrl || stateno = 100


[State -1,]
type = ChangeState
value = 3120
triggerall = power >= 3000
;triggerall = var(55) >= 2
triggerall = roundstate = 2
triggerall = var(7) = 1
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A && enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = A && enemynear(var(58)),movetype != H
triggerall = p2bodydist x = [0,30]
triggerall = random <= var(7)*100+ifelse(power >= 3000,700,ifelse(power >= 2000,400,0))
trigger1 = ctrl || stateno = 100

[State -1,]
type = ChangeState
value = 3110
triggerall = power >= 2000
;triggerall = var(55) >= 2
triggerall = roundstate = 2
triggerall = var(7) = 1
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A && enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = A && enemynear(var(58)),movetype != H
triggerall = p2bodydist x = [0,30]
triggerall = random <= var(7)*100+ifelse(power >= 3000,700,ifelse(power >= 2000,400,0))
trigger1 = ctrl || stateno = 100

[State -1,]
type = ChangeState
value = 3100
triggerall = power >= 1000
;triggerall = var(55) >= 2
triggerall = roundstate = 2
triggerall = var(7) = 1
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A && enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = A && enemynear(var(58)),movetype != H
triggerall = p2bodydist x = [0,30]
triggerall = random <= var(7)*100+ifelse(power >= 3000,700,ifelse(power >= 2000,400,0))
trigger1 = ctrl || stateno = 100


[State -1,]
type = ChangeState
value = 3010
triggerall = power >= 2000
;triggerall = var(55) >= 2
triggerall = var(17) = 0
triggerall = roundstate = 2
triggerall = var(7) = 1
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A && enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = A && enemynear(var(58)),movetype != H
triggerall = p2bodydist x = [100,200]
triggerall = random <= var(7)*100+ifelse(power >= 3000,700,ifelse(power >= 2000,400,0))
trigger1 = ctrl




;-----------------------------------------------------------
[State -1,]
type = ChangeState
value = 400
;triggerall = var(55) >= 2
triggerall = roundstate = 2
triggerall = var(7) = 1
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),movetype = H
triggerall = random <= var(7)*900
trigger1 = stateno = 430 && var(12)

[State -1,]
type = ChangeState
value = 751
triggerall = power >= 2000
triggerall = var(40) <= 0
;triggerall = var(55) >= 2
triggerall = roundstate = 2
triggerall = var(7) = 1
triggerall = enemynear(var(58)),stateno != [120,159]
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A && enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
triggerall = random <= var(7)*300
triggerall = var(8) 
trigger1 = stateno = 210 
trigger2 = stateno = 215


[State -1,]
type = ChangeState
value = 3510
triggerall = power >= 3000
;triggerall = var(55) >= 2
triggerall = roundstate = 2
triggerall = var(7) = 1
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A && enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
triggerall = random <= var(7)*100+ifelse(power >= 3000,700,ifelse(power >= 2000,400,0))
triggerall = var(8)
trigger1 = stateno = 210 
trigger2 = stateno = 215
trigger3 = var(40) <= 0
trigger3 = stateno = 1301
trigger4 = var(40) <= 0
trigger4 = stateno = 1110




[State -1,]
type = ChangeState
value = 3100
triggerall = power >= 1000
;triggerall = var(55) >= 2
triggerall = roundstate = 2
triggerall = var(7) = 1
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A && enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
triggerall = random <= var(7)*100+ifelse(power >= 3000,700,ifelse(power >= 2000,400,0))
triggerall = var(8)
trigger1 = stateno = 210 
trigger2 = stateno = 215
trigger3 = var(40) <= 0
trigger3 = stateno = 1301
trigger4 = var(40) <= 0
trigger4 = stateno = 1110

[State -1,]
type = ChangeState
value = 3110
triggerall = power >= 2000
;triggerall = var(55) >= 2
triggerall = roundstate = 2
triggerall = var(7) = 1
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A && enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
triggerall = random <= var(7)*100+ifelse(power >= 3000,700,ifelse(power >= 2000,400,0))
triggerall = var(8)
trigger1 = stateno = 210 
trigger2 = stateno = 215
trigger3 = var(40) <= 0
trigger3 = stateno = 1301
trigger4 = var(40) <= 0
trigger4 = stateno = 1110

[State -1,]
type = ChangeState
value = 3120
triggerall = power >= 3000
;triggerall = var(55) >= 2
triggerall = roundstate = 2
triggerall = var(7) = 1
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A && enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
triggerall = random <= var(7)*100+ifelse(power >= 3000,700,ifelse(power >= 2000,400,0))
triggerall = var(8)
trigger1 = stateno = 210 
trigger2 = stateno = 215
trigger3 = var(40) <= 0
trigger3 = stateno = 1301
trigger4 = var(40) <= 0
trigger4 = stateno = 1110


[State -1,]
type = ChangeState
value = 3450
triggerall = power >= 2000
triggerall = var(40) <= 0
;triggerall = var(55) >= 2
triggerall = roundstate = 2
triggerall = var(7) = 1
triggerall = enemynear(var(58)),stateno != [120,159]
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A && enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
triggerall = random <= var(7)*100+ifelse(power >= 3000,700,ifelse(power >= 2000,400,0))
triggerall = var(8) 
trigger1 = stateno = 215

[State -1,]
type = ChangeState
value = 3400
triggerall = power >= 1000
triggerall = var(40) <= 0
;triggerall = var(55) >= 2
triggerall = roundstate = 2
triggerall = var(7) = 1
triggerall = enemynear(var(58)),stateno != [120,159]
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A && enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
triggerall = random <= var(7)*100+ifelse(power >= 3000,700,ifelse(power >= 2000,400,0))
triggerall = var(8) 
trigger1 = stateno = 215





[State -1,]
type = ChangeState
value = 1200
;triggerall = var(55) >= 2
triggerall = roundstate = 2
triggerall = var(7) = 1
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A && enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
triggerall = random <= var(7)*500
triggerall = var(8)
trigger1 = stateno = 215
trigger1 = p2bodydist x <= 30

[State -1,]
type = ChangeState
value = ifelse(random <= var(7)*499,1300,1400)
;triggerall = var(55) >= 2
triggerall = roundstate = 2
triggerall = var(7) = 1
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A && enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
triggerall = random <= var(7)*700
triggerall = var(8)
trigger1 = stateno = 210 
trigger2 = stateno = 215
trigger3 = stateno = 400 
trigger4 = stateno = 410 




[State -1,]
type = ChangeState
value = 1301
;triggerall = var(55) >= 2
triggerall = roundstate = 2
triggerall = var(7) = 1
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
triggerall = p2bodydist x <= 60
triggerall = random <= var(7)*990
trigger1 = stateno = 1300 && var(8)


[State -1,]
type = ChangeState
value = 1302
triggerall = var(40) <= 0
;triggerall = var(55) >= 2
triggerall = roundstate = 2
triggerall = var(7) = 1
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A && enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
triggerall = p2bodydist x <= 60
triggerall = random <= var(7)*900
trigger1 = stateno = 1301 && var(8)

[State -1,]
type = ChangeState
value = 1302
triggerall = var(40) <= 0
;triggerall = var(55) >= 2
triggerall = roundstate = 2
triggerall = var(7) = 1
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype = A && enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
triggerall = p2bodydist x <= 60
triggerall = frontedgedist > 70
triggerall = random <= var(7)*900
trigger1 = stateno = 1301 && var(8)




[State -1,]
type = ChangeState
value = 1300
;triggerall = var(55) >= 2
triggerall = roundstate = 2
triggerall = var(7) = 1
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype = A && enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
trigger1 = stateno = 11321
trigger1 = animelem = 8 ,> 4 && animelem = 8 ,<= 5

[State -1,]
type = ChangeState
value = 1110
;triggerall = var(55) >= 2
triggerall = roundstate = 2
triggerall = var(7) = 1
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype = A && enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
triggerall = frontedgedist <= 70
triggerall = random <= var(7)*900
trigger1 = stateno = 1301
trigger1 = animelem = 8 ,> 4 && animelem = 8 ,<= 5
;------------------------------------------------------------------------


[State -1,]
type = ChangeState
value = 1250
triggerall = power >= 500
;triggerall = var(55) >= 2
triggerall = roundstate = 2
triggerall = var(7) = 1
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A&& enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype != H
triggerall = p2bodydist x <= 60
triggerall = random <= var(7)*300+ifelse(power >= 3000,400,ifelse(power >= 2000,200,0))
trigger1 = ctrl

[State -1,]
type = ChangeState
value = 1420
triggerall = power >= 500
;triggerall = var(55) >= 2
triggerall = roundstate = 2
triggerall = var(7) = 1
triggerall = statetype != A
triggerall = p2bodydist x <= 50
triggerall = random <= var(7)*300
trigger1 = enemynear(var(58)),statetype != A
trigger1 = enemynear(var(58)),movetype = A
trigger1 = ctrl

[State -1,]
type = ChangeState
value = 1120
triggerall = power >= 500
;triggerall = var(55) >= 2
triggerall = roundstate = 2
triggerall = var(7) = 1
triggerall = statetype != A
triggerall = p2bodydist x <= 40
triggerall = random <= var(7)*300
trigger1 = enemynear(var(58)),statetype != A && enemynear(var(58)),statetype != L
trigger1 = enemynear(var(58)),movetype = A && enemynear(var(58)),movetype != H
trigger1 = ctrl
trigger2 = enemynear(var(58)),statetype = A&& enemynear(var(58)),statetype != L
trigger2 = enemynear(var(58)),movetype != H
trigger2 = ctrl


[State -1,]
type = ChangeState
value = 1020
triggerall = power >= 500
;triggerall = var(55) >= 2
triggerall = roundstate = 2
triggerall = var(7) = 1
triggerall = statetype != A
triggerall = p2bodydist x = [100,200]
triggerall = random <= var(7)*80
trigger1 = enemynear(var(58)),statetype != A && enemynear(var(58)),statetype != L
trigger1 = enemynear(var(58)),movetype != A && enemynear(var(58)),movetype != H
trigger1 = ctrl

[State -1,]
type = ChangeState
value = 1250
triggerall = power >= 500
;triggerall = var(55) >= 2
triggerall = roundstate = 2
triggerall = var(7) = 1
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A && enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
triggerall = random <= var(7)*300+ifelse(power >= 3000,400,ifelse(power >= 2000,200,0))
triggerall = var(8)
trigger1 = stateno = 210 
trigger2 = stateno = 400 



[State -1,]
type = ChangeState
value = 11320
triggerall = power >= 500
;triggerall = var(55) >= 2
triggerall = roundstate = 2
triggerall = var(7) = 1
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A && enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
triggerall = random <= var(7)*300
triggerall = var(8)
trigger1 = stateno = 210 
trigger2 = stateno = 215
trigger3 = stateno = 400 
trigger4 = stateno = 410 



;-------------------------------------------------------



;Run Forward
[State -1]
type = ChangeState
value = 100
;triggerall = var(55) >= 2
triggerall = roundstate = 2
triggerall = var(7) = 1
triggerall = enemynear(var(58)),movetype != A
triggerall = p2bodydist x >= 150
triggerall = stateno != 100
triggerall = random <= 160*var(7)
trigger1 = statetype != A
trigger1 = ctrl

;Run Forward
[State -1]
type = ChangeState
value = 100
;triggerall = var(55) >= 2
triggerall = roundstate = 2
triggerall = var(7) = 1
triggerall = enemynear(var(58)),statetype = L
triggerall = stateno != 100
trigger1 = stateno = 0
trigger1 = ctrl
trigger1 = p2bodydist x > 50

;--------------------------------------------------------------------------
[State -1]
type = ChangeState
value = ifelse(random <= var(7)*499,800,850)
TriggerAll = var(7) =1
;triggerall = var(55) >= 2
TriggerAll = (RoundState = 2) && Alive
TriggerAll = statetype = S
triggerall = stateno != 100
triggerAll = p2bodydist X <= 10
triggerAll = (p2statetype = S) || (p2statetype = C)
triggerAll = p2movetype != H
triggerall = random <= 700*var(7)
trigger1 = ctrl
trigger2 = ctrl
Trigger2 = p2StateNo = [120,159]


[State -1, RUN]
type = ChangeState
value = 100
;triggerall = var(55) >= 2
triggerall = var(7) = 1
triggerall = Random <= 800*var(7)
triggerall = RoundState = 2  && Alive
triggerall = statetype != A
triggerall = !inguarddist
triggerall = ctrl || (stateno = [20,22]) || (stateno = [120,149])
trigger1 = p2bodydist x >= 240
trigger1 = Random <= 400*var(7)
trigger2 = p2bodydist x = [120,240]
trigger2 = Random <= 200*var(7)
trigger3 = p2bodydist x = [60,120]
trigger3 = Random <= 100*var(7)

[State -1,d]
type = ChangeState
value = 100
;triggerall = var(55) >= 2
triggerall = var(7) = 1
triggerall = roundstate = 2  && Alive
triggerall = statetype != A
triggerall = frontedgebodydist >= 90
triggerall = enemynear,movetype != A
Triggerall = EnemyNear,StateType != L
triggerall = ctrl
triggerall = prevstateno != 100
triggerall = prevstateno != 101
triggerall = prevstateno != 102
triggerall = !inguarddist
trigger1 = p2bodydist x = [240,290]
trigger1 = random <= (var(7))*400
trigger2 = p2bodydist x = [120,240]
trigger2 = random <= (var(7))*230
trigger3 = p2bodydist x > 270
trigger3 = random <= (var(7))*350
trigger4 = enemynear,statetype = A && enemynear,movetype = H
trigger4 = p2bodydist x > 120
trigger4 = random <= (var(7))*500


[State -3,bs]
Type = ChangeState
value = 105
triggerall = var(7) 
triggerall = roundstate = 2  && Alive
triggerall = statetype != A
triggerall = enemynear,movetype != A
triggerall = enemynear,movetype != H
triggerall = stateno != 104
triggerall = prevstateno != 104
triggerall = ctrl || stateno = 20 || stateno = 21
triggerall = backedgedist > 40
trigger1 = enemynear,statetype != A
trigger1 = enemynear,statetype != L
trigger1 = p2bodydist x <= 90
trigger1 = !numtarget
trigger1 = random <= var(7)*150
trigger2 = enemynear,statetype = L
trigger2 = p2bodydist x <= 40
trigger2 = random <= var(7)*250



[State -1, FRoll]
type = ChangeState
value = 4000
triggerall = var(7) = 1
;triggerall = var(55) >= 2
triggerall = RoundState = 2 && enemynear,life > 0
triggerall = Random <= 600*var(7)
triggerall = statetype != A
triggerall = enemynear,MoveType != H
triggerall = InGuardDist
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || stateno = 115 || (stateno = [120,149])
trigger1 = P2bodydist X >= 125
trigger1 =Enemy,Numproj != 0
trigger2 = (enemynear,AnimTime <= -35 && !enemynear,Ctrl)
trigger2 = Enemy,Numproj != 0




[State -1, FRoll]
type = ChangeState
value = 4000
triggerall = var(7) = 1
;triggerall = var(55) >= 2
triggerall = RoundState = 2 && enemynear,life > 0
triggerall = enemynear,time >= 50
triggerall = Random <= 200*var(7)
triggerall = Random <= 600*var(7)
triggerall = statetype != A
triggerall = enemynear,statetype != L
triggerall = enemynear,movetype != H
triggerall = enemynear,StateNo >= 200
triggerall =!enemynear,HitDefAttr = SCA, AT
triggerall = enemynear,facing != facing
triggerall = InGuardDist
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || stateno = 115 || (stateno = [120,149])
trigger1 = p2bodydist X = [0,150]
trigger1 = enemynear,animtime <= -30





[State -1, FRoll]
type = ChangeState
value = 4000
triggerall = var(7) = 1
;triggerall = var(55) >= 2
triggerall = Random <= 900*var(7)
triggerall = RoundState = 2 && enemynear,life > 0
triggerall = statetype != A
triggerall = enemynear,statetype != A
triggerall = enemynear,statetype != L
triggerall = enemynear,movetype != H
triggerall = enemynear,facing != facing
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || stateno = 115 || (stateno = [120,149])
trigger1 = p2bodydist X = [-5,100]
trigger1 = Random <= 100*var(7)
trigger2 = p2bodydist X > 100
trigger2 = Random <= 50*var(7)



[State -1, FRoll]
type = ChangeState
value = 4000
triggerall = var(7) = 1
;triggerall = var(55) >= 2
triggerall = Random <= 900*var(7)
triggerall = RoundState = 2 && enemynear,life > 0
triggerall = movetype = H
triggerall = enemynear,statetype != A
triggerall = enemynear,statetype != L
triggerall = enemynear,movetype != H
triggerall = (PrevStateNo=[5000,5270])
triggerall = enemynear,facing != facing
triggerall = ctrl
trigger1 = p2bodydist X = [-5,100]
trigger1 = Random <= 100*var(7)
trigger2 = p2bodydist X > 100
trigger2 = Random <= 50*var(7)

[State -1]
type = ChangeState
value = 4100
triggerall = power < 4000
triggerall = var(7) = 1
;triggerall = var(55) >= 2
triggerall =var(40) = 0
triggerall = RoundState = 2 && enemynear,life > 0
triggerall = Random <= 600*var(7)
triggerall = statetype != A
trigger1 = enemynear(var(58)),movetype != A
trigger1 = enemynear(var(58)),numproj = 0
trigger1 = p2bodydist x >= 100
trigger1 = ctrl 




;Forward jump
[State -1,]
type = ChangeState
value = 38
triggerall = roundstate = 2
triggerall = var(7)
triggerall = p2bodydist x = [80,150]
triggerall = random <= 100*var(7)
trigger1 = statetype != A
trigger1 = ctrl
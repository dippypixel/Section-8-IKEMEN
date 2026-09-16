;-| ボタン配置 |------------------------------------------------
[Remap]
x = x    ;簡易ボタン
y = y    ;簡易ボタン2
z = z    ;シールド
a = a    ;弱攻撃
b = b    ;中攻撃
c = c    ;強攻撃
s = s    ;挑発

;-| AI |--------------------------------------------------------
[Command]
name = "CPU1"
command = D, D, D, D, D, D, D, D
time = 1

[Command]
name = "CPU11"
command = D, D, D, D, D, D, D, D
time = 1

[Command]
name = "CPU12"
command = D, D, D, D, D, D, D, D
time = 1

[Command]
name = "CPU2"
command = z, z, z, z, z, z, z, z
time = 1

[Command]
name = "CPU13"
command = z, z, z, z, z, z, z, z
time = 1

[Command]
name = "CPU14"
command = z, z, z, z, z, z, z, z
time = 1

[Command]
name = "CPU3"
command = B, B, B, B, B, B, B, B
time = 1

[Command]
name = "CPU15"
command = B, B, B, B, B, B, B, B
time = 1

[Command]
name = "CPU16"
command = B, B, B, B, B, B, B, B
time = 1

[Command]
name = "CPU4"
command = x, x, x, x, x, x, x, x
time = 1

[Command]
name = "CPU17"
command = x, x, x, x, x, x, x, x
time = 1

[Command]
name = "CPU18"
command = x, x, x, x, x, x, x, x
time = 1

[Command]
name = "CPU5"
command = U, U, U, U, U, U, U, U
time = 1

[Command]
name = "CPU19"
command = U, U, U, U, U, U, U, U
time = 1

[Command]
name = "CPU20"
command = U, U, U, U, U, U, U, U
time = 1

[Command]
name = "CPU6"
command = a, a, a, a, a, a, a, a
time = 1

[Command]
name = "CPU21"
command = a, a, a, a, a, a, a, a
time = 1

[Command]
name = "CPU22"
command = a, a, a, a, a, a, a, a
time = 1

[Command]
name = "CPU7"
command = F, F, F, F, F, F, F, F
time = 1

[Command]
name = "CPU23"
command = F, F, F, F, F, F, F, F
time = 1

[Command]
name = "CPU8"
command = b, b, b, b, b, b, b, b
time = 1

[Command]
name = "CPU9"
command = y, y, y, y, y, y, y, y
time = 1

[Command]
name = "CPU10"
command = y, y, y, y, y, y, y, y
time = 1

; Uppercut
[Command]
name = "DP_x"
command = ~F, D, DF, x

name = "DP_x"
command = ~F, D, F, x

[Command]
name = "DP_y"
command = ~F, D, DF, y

[Command]
name = "DP_y"
command = ~F, D, F, y

[Command]
name = "DP_z"
command = ~F, D, DF, z

[Command]
name = "DP_z"
command = ~F, D, F, z

; Uppercut Super
[Command]
name = "DP_xyz"
command = ~F, D, DF, x+y

[Command]
name = "DP_xyz"
command = ~F, D, DF, y+z

[Command]
name = "DP_xyz"
command = ~F, D, DF, x+z


;-----------------
; Reverse Uppercut
[Command]
name = "rDP_x"
command = ~B, D, DB, x

[Command]
name = "rDP_y"
command = ~B, D, DB, y

[Command]
name = "rDP_z"
command = ~B, D, DB, z

;-----------------
; Fireball
[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_z"
command = ~D, DF, F, z

;-----------------
; Fireball Super
[Command]
name = "QCF_xyz"
command = ~D, DF, F, x+y

[Command]
name = "QCF_xyz"
command = ~D, DF, F, y+z

[Command]
name = "QCF_xyz"
command = ~D, DF, F, x+z

;-----------------
; Reverse Fireball
[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
command = ~D, DB, B, y

[Command]
name = "QCB_z"
command = ~D, DB, B, z

;-----------------
; Reverse Fireball Super
[Command]
name = "QCB_xyz"
command = ~D, DB, B, x+y

[Command]
name = "QCB_xyz"
command = ~D, DB, B, y+z

[Command]
name = "QCB_xyz"
command = ~D, DB, B, x+z

;-----------------
; Double Tap
[Command]
name = "DD_x"
command = ~D, D, x

[Command]
name = "DD_y"
command = ~D, D, y

[Command]
name = "DD_z"
command = ~D, D, z

;-----------------
; Double Tap Super
[Command]
name = "DD_xyz"
command = ~D, D, x+y

[Command]
name = "DD_xyz"
command = ~D, D, y+z

[Command]
name = "DD_xyz"
command = ~D, D, x+z

;-| ２回押し技 |-----------------------------------------------------------

[Command]
name = "FF"
command = F, F
time = 12

[Command]
name = "BB"
command = B, B
time = 12

[Command]
name = "xyz"
command = x+y+z
time = 0

[Command]
name = "recovery"
command = a+b+c
time = 0

;-| 方向とボタンで出す技 |---------------------------------------------------------
;-| ボタン設定（いじらない）|---------------------------------------------------------
[Command]
name = "a"
command = a
time = 0

[Command]
name = "b"
command = b
time = 0

[Command]
name = "c"
command = c
time = 0

[Command]
name = "x"
command = x
time = 0

[Command]
name = "y"
command = y
time = 0

[Command]
name = "z"
command = z
time = 0

[Command]
name = "start"
command = s
time = 0

[command]
name = "fwd"
command = F
time = 0

[command]
name = "back"
command = B
time = 0

[Command]
name = "up" 
command = U
time = 0

[Command]
name = "down"
command = D
time = 0

[Command]
name = "throw"
command = x+y
time = 0

[Command]
name = "counter"
command = y+z
time = 0

;-| 押しっぱなし設定（いじらない）-------------------------------------------------------
[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup"
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1

[Command]
name = "holdx"
command = /$x
time = 1

[Command]
name = "holdy"
command = /$y
time = 1

[Command]
name = "holdz"
command = /$z
time = 1

[Command]
name = "holdstart"
command = /$s
time = 1

;---------------------------------------------------------------------------
; 下の記述↓は絶対に消さないでください。
;この記述を消すのは自殺行為です。絶対に消さないで下さい。
[Statedef -1]
;===========================================================================
; SUPERS
[State -1, Raging Storm]
Type = ChangeState
Value = 2100
triggerall = StateType != A
Triggerall = Command = "DD_xyz"
triggerall = Power >= 1000
triggerall = Var(15) = 0
Trigger1 = Ctrl
trigger2 = StateNo = [200,1999]
trigger2 = MoveContact
trigger3 = StateNo = 3001 || StateNo = 3101
trigger3 = MoveHit

[State -1, Sabretooth's Political Commentary]
Type = ChangeState
Value = 2400
triggerall = StateType != A
Triggerall = Command = "QCB_xyz"
triggerall = Power >= 1000
triggerall = Var(15) = 0
Trigger1 = Ctrl
trigger2 = StateNo = [200,1999]
trigger2 = MoveContact
trigger3 = StateNo = 3001 || StateNo = 3101
trigger3 = MoveHit

[State -1, One In The Pipe]
Type = ChangeState
Value = 2200
triggerall = StateType = A
Triggerall = Command = "QCF_xyz"
triggerall = Power >= 1000
triggerall = Var(15) = 0
Trigger1 = Ctrl
trigger2 = StateNo = [200,1999]
trigger2 = MoveContact
trigger3 = StateNo = 3201
trigger3 = MoveHit

[State -1, Exprosive]
Type = ChangeState
Value = 2300
triggerall = StateType != A
Triggerall = Command = "QCF_xyz"
triggerall = Power >= 1000
triggerall = Var(15) = 0
Trigger1 = Ctrl
trigger2 = StateNo = [200,1999]
trigger2 = MoveContact
trigger3 = StateNo = 3201
trigger3 = MoveHit

[State -1, Grant Him Your Strength]
Type = ChangeState
Value = 2500
triggerall = StateType != A
Triggerall = Command = "xyz" || command = "c"
triggerall = Power >= 3000
triggerall = Var(15) = 0
Trigger1 = Ctrl
trigger2 = StateNo = [200,1999]
trigger2 = MoveContact
trigger3 = StateNo = 3001 || StateNo = 3101
trigger3 = MoveHit

;===========================================================================
[State -1, ------]
Type = Null
Trigger1 = 1
;===========================================================================
; SPECIALS
[State -1, Upperkick]
Type = ChangeState
Value = 1000
triggerall = StateType != A
triggerall = Var(15) = 0
Triggerall = Command = "DP_x" || Command = "DP_y" || Command = "DP_z"
Trigger1 = Ctrl
trigger2 = StateNo = [200,499]
trigger2 = MoveContact
trigger3 = StateNo = 3001 || StateNo = 3101
trigger3 = MoveHit

;[State -1, Uppercut - Bristol]
;Type = ChangeState
;Value = 1400
;triggerall = StateType != A
;triggerall = Var(15) = 0
;Triggerall = Command = "DP_x"
;Trigger1 = Ctrl
;trigger2 = StateNo = [200,499]
;trigger2 = MoveContact
;trigger3 = StateNo = 3001 || StateNo = 3101
;trigger3 = MoveHit

[State -1, Chargin - Sai]
Type = ChangeState
Value = 1200
triggerall = StateType != A
triggerall = Var(15) = 0
Triggerall = Command = "QCB_x"
Trigger1 = Ctrl
trigger2 = StateNo = [200,499]
trigger2 = MoveContact
trigger3 = StateNo = 3001 || StateNo = 3101
trigger3 = MoveHit

[State -1, Chargin - Terry]
Type = ChangeState
Value = 1201
triggerall = StateType != A
triggerall = Var(15) = 0
Triggerall = Command = "QCB_y"
Trigger1 = Ctrl
trigger2 = StateNo = [200,499]
trigger2 = MoveContact
trigger3 = StateNo = 3001 || StateNo = 3101
trigger3 = MoveHit

[State -1, Chargin - Hol Funtimes]
Type = ChangeState
Value = 1202
triggerall = StateType != A
triggerall = Var(15) = 0
Triggerall = Command = "QCB_z"
Trigger1 = Ctrl
trigger2 = StateNo = [200,499]
trigger2 = MoveContact
trigger3 = StateNo = 3001 || StateNo = 3101
trigger3 = MoveHit

[State -1, Lets Just Throw Shit - Chintao]
Type = ChangeState
Value = 1300
triggerall = StateType != A
triggerall = Var(15) = 0
Triggerall = Command = "QCF_x"
Trigger1 = Ctrl
trigger2 = StateNo = [200,499]
trigger2 = MoveContact
trigger3 = StateNo = 3001 || StateNo = 3101
trigger3 = MoveHit

[State -1, Lets Just Throw Shit - Taokaka]
Type = ChangeState
Value = 1301
triggerall = StateType != A
triggerall = Var(15) = 0
Triggerall = Command = "QCF_y"
Trigger1 = Ctrl
trigger2 = StateNo = [200,499]
trigger2 = MoveContact
trigger3 = StateNo = 3001 || StateNo = 3101
trigger3 = MoveHit

[State -1, Lets Just Throw Shit - Saber]
Type = ChangeState
Value = 1302
triggerall = StateType != A
triggerall = Var(15) = 0
Triggerall = Command = "QCF_z"
Trigger1 = Ctrl
trigger2 = StateNo = [200,499]
trigger2 = MoveContact
trigger3 = StateNo = 3001 || StateNo = 3101
trigger3 = MoveHit

[State -1, Lightning]
Type = ChangeState
Value = 1100
triggerall = StateType != A
triggerall = Var(15) = 0
Triggerall = Command = "DD_x" || Command = "DD_y" || Command = "DD_z"
Trigger1 = Ctrl
trigger2 = StateNo = [200,499]
trigger2 = MoveContact
trigger3 = StateNo = 3001 || StateNo = 3101
trigger3 = MoveHit

[State -1, Lightning Aireal]
Type = ChangeState
Value = 1101
triggerall = StateType = A
triggerall = Var(15) = 0
Triggerall = Command = "DD_x" || Command = "DD_y" || Command = "DD_z"
Trigger1 = Ctrl
trigger2 = StateNo = [600,699]
trigger2 = MoveContact
trigger3 = StateNo = 3201
trigger3 = MoveHit

;[State -1, Upperkick]
;Type = ChangeState
;Value = 1000
;triggerall = StateType != A
;triggerall = Var(15) = 0
;Triggerall = Command = "QCB_x" || Command = "QCB_y" || Command = "QCB_z"
;Trigger1 = Ctrl
;trigger2 = StateNo = [200,499]
;trigger2 = MoveContact
;trigger3 = StateNo = 3001 || StateNo = 3101
;trigger3 = MoveHit

[State -1, ------]
Type = Null
Trigger1 = 1
;===========================================================================
; OTHER
[State -1, S Dash Forward]
Type = ChangeState
Value = 100
triggerall = StateType != A
Triggerall = Command = "FF"
Trigger1 = Ctrl

[State -1, S Dash Back]
Type = ChangeState
Value = 105
triggerall = StateType != A
Triggerall = Command = "BB"
Trigger1 = Ctrl

[State -1, A Dash Forward]
Type = ChangeState
Value = 110
triggerall = Var(5) > 0
triggerall = StateType = A
Triggerall = Command = "FF"
Trigger1 = Ctrl
trigger2 = StateNo = [600,699]
trigger2 = MoveHit

[State -1, A Dash Back]
Type = ChangeState
Value = 115
triggerall = Var(5) > 0
triggerall = StateType = A
Triggerall = Command = "BB"
Trigger1 = Ctrl
trigger2 = StateNo = [600,699]
trigger2 = MoveHit

[State -1, Taunt X]
Type = ChangeState
Value = 19501
triggerall = StateType != A
triggerall = Var(15) = 0
triggerall = Command = "holdx"
Triggerall = Command = "start"
Trigger1 = Ctrl

[State -1, Taunt]
Type = ChangeState
Value = 195
triggerall = StateType != A
triggerall = Var(15) = 0
triggerall = Command != "holdx"
Triggerall = Command = "start"
Trigger1 = Ctrl

[State -1, S Throw]
Type = ChangeState
Value = 800
triggerall = StateType != A
triggerall = Var(15) = 0
Triggerall = Command = "a" ;|| Command = "throw"
Trigger1 = Ctrl

[State -1, A Throw]
Type = ChangeState
Value = 900
triggerall = StateType = A
triggerall = Var(15) = 0
Triggerall = Command = "a" ;|| Command = "throw"
Trigger1 = Ctrl

[State -1, A Counter]
Type = ChangeState
Value = 3200
triggerall = StateType = A
triggerall = Var(15) = 0
Triggerall = Command = "b" ;|| Command = "counter"
Trigger1 = Ctrl

[State -1, C Counter]
Type = ChangeState
Value = 3100
triggerall = StateType != A
triggerall = Var(15) = 0
triggerall = Command = "holddown"
Triggerall = Command = "b" ;|| Command = "counter"
Trigger1 = Ctrl

[State -1, S Counter]
Type = ChangeState
Value = 3000
triggerall = StateType != A
triggerall = Var(15) = 0
triggerall = Command != "holddown"
Triggerall = Command = "b" ;|| Command = "counter"
Trigger1 = Ctrl
Trigger2 = StateNo = 3001
Trigger2 = Time < 14

[State -1, ------]
Type = Null
Trigger1 = 1
;===========================================================================
; NORMALS
[State -1, A Heavy]
Type = ChangeState
Value = 620
triggerall = StateType = A
triggerall = Var(15) = 0
Triggerall = Command = "z"
Trigger1 = Ctrl
trigger2 = StateNo = 600 || StateNo = 610 || StateNo = 615
trigger2 = MoveContact

[State -1, A Medium Downard]
Type = ChangeState
Value = 615
triggerall = StateType = A
triggerall = Var(15) = 0
Triggerall = Command = "y"
triggerall = Command = "holddown"
Trigger1 = Ctrl
trigger2 = StateNo = 600
trigger2 = MoveContact

[State -1, A Medium]
Type = ChangeState
Value = 610
triggerall = StateType = A
triggerall = Var(15) = 0
Triggerall = Command = "y"
triggerall = Command != "holddown"
Trigger1 = Ctrl
trigger2 = StateNo = 600
trigger2 = MoveContact

[State -1, A Light]
Type = ChangeState
Value = 600
triggerall = StateType = A
triggerall = Var(15) = 0
Triggerall = Command = "x"
Trigger1 = Ctrl
trigger2 = StateNo = 600
trigger2 = MoveContact

[State -1, C Heavy Slide]
Type = ChangeState
Value = 425
triggerall = StateType != A
triggerall = Var(15) = 0
Triggerall = Command = "z"
triggerall = Command = "holddown"
triggerall = Command = "holdfwd"
Trigger1 = Ctrl
trigger2 =  StateNo = 200 || StateNo = 210  || StateNo = 400 || StateNo = 210 || StateNo = 215 || StateNo = 410
trigger2 = MoveContact

[State -1, C Heavy]
Type = ChangeState
Value = 420
triggerall = StateType != A
triggerall = Var(15) = 0
Triggerall = Command = "z"
triggerall = Command = "holddown"
triggerall = Command != "holdfwd"
Trigger1 = Ctrl
trigger2 =  StateNo = 200 || StateNo = 210  || StateNo = 400 || StateNo = 210 || StateNo = 215 || StateNo = 410
trigger2 = MoveContact

[State -1, C Medium]
Type = ChangeState
Value = 410
triggerall = StateType != A
triggerall = Var(15) = 0
Triggerall = Command = "y"
triggerall = Command = "holddown"
Trigger1 = Ctrl
trigger2 = StateNo = 200 || StateNo = 205  || StateNo = 400
trigger2 = MoveContact

[State -1, C Light]
Type = ChangeState
Value = 400
triggerall = StateType != A
triggerall = Var(15) = 0
Triggerall = Command = "x"
triggerall = Command = "holddown"
Trigger1 = Ctrl
trigger2 = StateNo = 205  || StateNo = 200
trigger2 = MoveContact
trigger2 = Time > 4
trigger3 = StateNo = 400
trigger3 = Time > 3

[State -1, S Heavy Forward]
Type = ChangeState
Value = 225
triggerall = StateType != A
triggerall = Var(15) = 0
Triggerall = Command = "z"
triggerall = Command = "holdfwd"
triggerall = Command != "holddown"
Trigger1 = Ctrl
trigger2 = StateNo = 200 || StateNo = 210  || StateNo = 400 || StateNo = 210 || StateNo = 215 || StateNo = 410
trigger2 = MoveContact

[State -1, S Heavy]
Type = ChangeState
Value = 220
triggerall = StateType != A
triggerall = Var(15) = 0
Triggerall = Command = "z"
triggerall = Command != "holdfwd"
triggerall = Command != "holddown"
Trigger1 = Ctrl
trigger2 = StateNo = 200 || StateNo = 210  || StateNo = 400 || StateNo = 210 || StateNo = 215 || StateNo = 410
trigger2 = MoveContact

[State -1, S Medium Forward]
Type = ChangeState
Value = 215
triggerall = StateType != A
triggerall = Var(15) = 0
Triggerall = Command = "y"
triggerall = Command = "holdfwd"
triggerall = Command != "holddown"
Trigger1 = Ctrl
trigger2 = StateNo = 200 || StateNo = 205  || StateNo = 400
trigger2 = MoveContact

[State -1, S Medium]
Type = ChangeState
Value = 210
triggerall = StateType != A
triggerall = Var(15) = 0
Triggerall = Command = "y"
triggerall = Command != "holdfwd"
triggerall = Command != "holddown"
Trigger1 = Ctrl
trigger2 = StateNo = 200 || StateNo = 205  || StateNo = 400
trigger2 = MoveContact

[State -1, S Light Close]
Type = ChangeState
Value = 205
triggerall = StateType != A
triggerall = Var(15) = 0
triggerall = p2bodydist X < 10
triggerall = p2statetype != A
Triggerall = Command = "x"
triggerall = Command != "holddown"
Trigger1 = Ctrl
trigger2 = StateNo = 200 || StateNo = 205  || StateNo = 400
trigger2 = MoveContact
trigger2 = Time > 4

[State -1, S Light]
Type = ChangeState
Value = 200
triggerall = StateType != A
triggerall = Var(15) = 0
Triggerall = Command = "x"
triggerall = Command != "holddown"
Trigger1 = Ctrl
trigger2 = StateNo = 200 || StateNo = 205 || StateNo = 400
trigger2 = MoveContact
trigger2 = Time > 4

[State -1, ------]
Type = Null
Trigger1 = 1

[State -1, AI Jump]
Type = ChangeState
Value = 40
triggerall = StateType != A && P2StateType = A && Var(15) = 1
trigger1 = random < 500 && ctrl && p2dist y >= 32

[State -1, AI Exprosive]
Type = ChangeState
Value = 2300
triggerall = StateType != A && Var(15) = 1 && power >= 1000
trigger1 = random < 10 && ctrl
trigger2 = StateNo = [200,499]
trigger2 = random < 64 && MoveHit
trigger3 = StateNo = 3001
trigger3 = random < 100 && MoveHit

[State -1, AI Sabretooth]
Type = ChangeState
Value = 2400
triggerall = StateType != A && Var(15) = 1 && power >= 1000 && p2dist x <= 64
trigger1 = random < 16 && ctrl
trigger2 = StateNo = [200,499]
trigger2 = random < 96 && MoveHit
trigger3 = StateNo = 3001
trigger3 = random < 100 && MoveHit

[State -1, AI Raging Storm]
Type = ChangeState
Value = 2100
triggerall = StateType != A && Var(15) = 1 && power >= 1000 && p2dist x <= 128
trigger1 = random < 8 && ctrl
trigger2 = random < 64 && ctrl && enemy,MoveType = A
trigger3 = StateNo = [200,499]
trigger3 = random < 64 && MoveHit
trigger4 = StateNo = 3001
trigger4 = random < 100 && MoveHit

[State -1, AI One In The Pipe]
Type = ChangeState
Value = 2200
triggerall = StateType = A && Var(15) = 1 && power >= 1000
trigger1 = p2dist x >= 64 && random < 10 && ctrl
trigger2 = StateNo = [600,699]
trigger2 = random < 64 && MoveHit
trigger3 = StateNo = 3001
trigger3 = random < 100 && MoveHit

[State -1, AI Grant Him Your Strength]
Type = ChangeState
Value = 2500
triggerall = StateType != A && Var(15) = 1 && power >= 3000
trigger1 = random < 8 && ctrl
trigger2 = StateNo = [600,699]
trigger2 = random < 48 && MoveHit
trigger3 = StateNo = 3001
trigger3 = random < 64 && MoveHit

[State -1, AI Chargin]
Type = ChangeState
Value = ifelse(p2dist x < 64,1200,ifelse(p2dist x < 128,1201,1202))
triggerall = StateType != A && P2StateType != L && Var(15) = 1
trigger1 = p2dist x <= 192 && random < 20 && ctrl
trigger2 = StateNo = 200 || StateNo = 205 || StateNo = 210 || StateNo = 215 || StateNo = 225 || StateNo = 226 || StateNo = 400 || StateNo = 410 || StateNo = 420 || StateNo = 425
trigger2 = random < 100 && MoveHit

[State -1, AI A Lightnin]
Type = ChangeState
Value = 1101
triggerall = StateType = A && Var(15) = 1
trigger1 = p2dist x >= 48 && p2dist x <= 250 && random < 10 && ctrl
trigger2 = StateNo = [600,699]
trigger2 = random < 64 && MoveHit

[State -1, AI S Lightnin]
Type = ChangeState
Value = 1100
triggerall = StateType != A && Var(15) = 1
trigger1 = p2dist x >= 48 && p2dist x <= 250 && random < 10 && ctrl
trigger2 = StateNo = 200 || StateNo = 205 || StateNo = 210 || StateNo = 215 || StateNo = 225 || StateNo = 226 || StateNo = 400 || StateNo = 410 || StateNo = 420 || StateNo = 425
trigger2 = random < 64 && MoveHit

[State -1, AI Projectile]
Type = ChangeState
Value = ifelse(p2dist y < 100, 1300, ifelse(random>500,1301,1302))
triggerall = StateType != A && P2StateType != L && Var(15) = 1
trigger1 = p2dist x >= 160 && random < 45 && ctrl
trigger2 = StateNo = 200 || StateNo = 205 || StateNo = 210 || StateNo = 215 || StateNo = 225 || StateNo = 226 || StateNo = 400 || StateNo = 410 || StateNo = 420 || StateNo = 425
trigger2 = random < 25 && MoveHit

[State -1, AI Upperkick]
Type = ChangeState
Value = 1000
triggerall = StateType != A && P2StateType != L && Var(15) = 1
trigger1 = p2dist x <= 192 && random < 25 && ctrl
trigger2 = StateNo = 200 || StateNo = 205 || StateNo = 210 || StateNo = 215 || StateNo = 225 || StateNo = 226 || StateNo = 400 || StateNo = 410 || StateNo = 420 || StateNo = 425
trigger2 = random < 50 && MoveHit

[State -1, AI S Counter]
Type = ChangeState
Value = 3000
triggerall = StateType != A && Var(15) = 1 && enemy,MoveType = A && enemy,StateType != C
trigger1 = !(enemynear,hitdefattr=SCA,AT) && inguarddist && random > 500 && ctrl
trigger1 = (stateno!=[120,155])

[State -1, AI C Counter]
Type = ChangeState
Value = 3100
triggerall = StateType != A && Var(15) = 1 && enemy,MoveType = A && enemy,StateType != A
trigger1 = !(enemynear,hitdefattr=SCA,AT) && inguarddist && random > 500 && ctrl
trigger1 = (stateno!=[120,155])

[State -1, AI A Counter]
Type = ChangeState
Value = 3200
triggerall = StateType = A && Var(15) = 1 && enemy,MoveType = A
trigger1 = !(enemynear,hitdefattr=SCA,AT) && inguarddist && random > 500 && ctrl
trigger1 = (stateno!=[120,155])

[State -1, AI Guard]
Type = ChangeState
Value = 120
triggerall = StateType != A && Var(15) = 1 && Ctrl
trigger1 = !(enemynear,hitdefattr=SCA,AT) && inguarddist && random < 100
trigger1 = (stateno!=[120,155])

[State -1, AI Taunt]
Type = ChangeState
Value = 195
triggerall = StateType != A && Var(15) = 1 && P2StateType = L
trigger1 = p2dist x >= 64 && random < 25 && ctrl

[State -1, AI A Throw]
Type = ChangeState
Value = 900
triggerall = StateType = A && Var(15) = 1 && P2StateType != L && P2StateType = A
trigger1 = p2dist x <= 48 && random < 250 && ctrl

[State -1, AI S Throw]
Type = ChangeState
Value = 800
triggerall = StateType != A && Var(15) = 1 && P2StateType != L && P2StateType != A
trigger1 = p2dist x <= 48 && random < 250 && ctrl

[State -1, AI A Heavy]
Type = ChangeState
Value = 620
triggerall = StateType = A && P2StateType != L && Var(15) = 1
trigger1 = p2dist x <= 64 && random < 25 && ctrl
trigger2 = StateNo = 600 || StateNo = 610  || StateNo = 615
trigger2 = random < 125 && MoveHit

[State -1, AI A Medium]
Type = ChangeState
Value = ifelse(P2StateType=A,610,615)
triggerall = StateType = A && P2StateType != L && Var(15) = 1
trigger1 = p2dist x <= 72 && random < 50 && ctrl
trigger2 = StateNo = 600 && random < 250 && MoveHit

[State -1, AI A Light]
Type = ChangeState
Value = 600
triggerall = StateType = A && P2StateType != L && Var(15) = 1
trigger1 = p2dist x <= 64 && random < 100 && ctrl
trigger2 = StateNo = 600 && random < 500 && MoveHit

[State -1, AI S Heavy]
Type = ChangeState
Value = ifelse(random<500,ifelse(random<500,220,225),ifelse(random<500,420,425))
triggerall = StateType != A && P2StateType != L && Var(15) = 1
trigger1 = p2dist x <= 88 && random < 25 && ctrl
trigger2 = StateNo = 200 || StateNo = 205 || StateNo = 210 || StateNo = 215 || StateNo = 400 || StateNo = 410
trigger2 = random < 125 && MoveHit

[State -1, AI S Medium]
Type = ChangeState
Value = ifelse(random<500,ifelse(random<500,210,215),410)
triggerall = StateType != A && P2StateType != L && Var(15) = 1
trigger1 = p2dist x <= 72 && random < 50 && ctrl
trigger2 = StateNo = 200 || StateNo = 205  || StateNo = 400
trigger2 = random < 250 && MoveHit

[State -1, AI S Light]
Type = ChangeState
Value = ifelse(random<500,200,400)
triggerall = StateType != A && Var(15) = 1
trigger1 = p2dist x <= 64 && random < 100 && ctrl
trigger2 = StateNo = 200 || StateNo = 205
trigger2 = random < 500 && MoveHit

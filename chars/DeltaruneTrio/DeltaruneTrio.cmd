;==========================================================================
;--------------------------|CPU Activation Commands|-----------------------
;==========================================================================
[Command]
name = "cpu1"
command = ~D,UB, F, x, s, a, x, U,x+y+z+a+b+c+s
time = 1


[Command]
name = "cpu2"
command = ~D,UB, F, y, s, a, x, U,x+y+z+a+b+c+s
time = 1


[Command]
name = "cpu3"
command = ~D,UB, F, z, s, a, x, U,x+y+z+a+b+c+s
time = 1


[Command]
name = "cpu4"
command = ~D,DB, F, x, s,x+y+z+a+b+c+s
time = 1


[Command]
name = "cpu5"
command = ~D,DB, F, y, s,x+y+z+a+b+c+s
time = 1


[Command]
name = "cpu6"
command = ~D,DB, F, z, s,x+y+z+a+b+c+s
time = 1

[Command]
name = "cpu7"
command = ~D,DB, s, U, B, x ,x+y+z+a+b+c+s
time = 1


[Command]
name = "cpu8"
command = ~D,DB, s, U, B, y ,x+y+z+a+b+c+s
time = 1


[Command]
name = "cpu9"
command = ~D,DB, s, U, B, z ,x+y+z+a+b+c+s
time = 1


[Command]
name = "cpu10"
command = ~D,DF, F, x, s, U ,x+y+z+a+b+c+s
time = 1


[Command]
name = "cpu11"
command = ~D,DF, F, y, s, U ,x+y+z+a+b+c+s
time = 1


[Command]
name = "cpu12"
command = ~D,DF, F, z, s, U ,x+y+z+a+b+c+s
time = 1

[Command]
name = "cpu13"
command = ~D,DF, F, a, s, U ,x+y+z+a+b+c+s
time = 1


[Command]
name = "cpu14"
command = ~D,DF, F, b, s, U ,x+y+z+a+b+c+s
time = 1


[Command]
name = "cpu15"
command = ~D,DF, F, c, s, U ,x+y+z+a+b+c+s
time = 1


[Command]
name = "cpu16"
command = ~D,DB, B, a, s, U ,x+y+z+a+b+c+s
time = 1


[Command]
name = "cpu17"
command = ~D,DB, B, b, s, U ,x+y+z+a+b+c+s
time = 1


[Command]
name = "cpu18"
command = ~D,DB, B, c, s, U ,x+y+z+a+b+c+s
time = 1


[Command]
name = "cpu19"
command = ~D,DB, F, a, s, U ,x+y+z+a+b+c+s
time = 1


[Command]
name = "cpu20"
command = ~D,DB, F, b, s, U ,x+y+z+a+b+c+s
time = 1


[Command]
name = "cpu21"
command = ~D,DB, F, c, s, U ,x+y+z+a+b+c+s
time = 1


[Command]
name = "cpu22"
command = ~D,UB, F, a, s, U,x+y+z+a+b+c+s
time = 1


[Command]
name = "cpu23"
command = ~D,UB, F, b, s, U,x+y+z+a+b+c+s
time = 1


[Command]
name = "cpu24"
command = ~D,UB, F, c, s, U,x+y+z+a+b+c+s
time = 1


[Command]
name = "cpu25"
command = ~D,DF, F, s, s, U,x+y+z+a+b+c+s
time = 1

;-| 必殺技 |----------------------------------------------------------------
[Command]
name = "K_Special"
command = ~D, DF, F, x
time = 20

[Command]
name = "R_Special"
command = ~D, DF, F, y
time = 20

[Command]
name = "S_Special"
command = ~D, DF, F, z
time = 20

[Command]
name = "1_Assist"
command = ~D, DB, B, x
time = 20

[Command]
name = "2_Assist"
command = ~D, DB, B, y
time = 20

[Command]
name = "3_Assist"
command = ~D, DB, B, z
time = 20

[Command]
name = "Goat_Toss"
command = ~D, D, x+y
time = 32

[Command]
name = "SPARE"
command = ~D, D, x+z
time = 32

[Command]
name = "All_Out"
command = ~D, D, y+z
time = 32

;-| ２回押し技 |------------------------------------------------------------
[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

;-| ２回押し技 |------------------------------------------------------------
[Command]
name = "FWD"
command = F
time = 10

[Command]
name = "BCK"
command = B
time = 10

[Command]
name = "DWN"
command = D
time = 10

;-| ２・３個の同時押し技 |--------------------------------------------------

;-| 方向とボタンで出す技 |--------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| ボタン設定（いじらない）|-----------------------------------------------
[Command]
name = "a"
command = a
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
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

;-| 押しっぱなし設定（いじらない）|-----------------------------------------
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
name = "holdstart"
command = /$s
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

;---------------------------------------------------------------------------
; Statedef -1

;---------------------------------------------------------------------------
;下の記述↓は絶対に消さないでください。
[Statedef -1]

;---| AI section | --------------------------------------------------------
[State -1, AI]
type = VarSet
trigger1  = command = "cpu1"
trigger2  = command = "cpu2"
trigger3  = command = "cpu3"
trigger4  = command = "cpu4"
trigger5  = command = "cpu5"
trigger6  = command = "cpu6"
trigger7  = command = "cpu7"
trigger8  = command = "cpu8"
trigger9  = command = "cpu9"
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
;trigger26 = command = "cpu26"
;trigger27 = command = "cpu27"
;trigger28 = command = "cpu28"
;trigger29 = command = "cpu29"
;trigger30 = command = "cpu30"
triggerall = !IsHelper
v = 59
value = 1
;---------------------------------------------------------------------------

[State -1, AI] ; Close the gap?
type = ChangeState
value = 100
triggerall = p2bodydist x >= 84
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = statetype != A
trigger1 = random < 450
triggerall = prevstateno != 100
triggerall = ctrl = 1

[State -1, AI] ; Close the gap?2
type = ChangeState
value = 20
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = statetype != A
trigger1 = random < 450
triggerall = prevstateno != 20
triggerall = ctrl = 1

[State -1, AI] ; punch
type = ChangeState
value = 200
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = random < 500
triggerall = p2statetype != L
triggerall = p2bodydist x = [0,35]
triggerall = p2statetype != A
triggerall = stateno !=200
trigger1 = ctrl = 1

[State -1, AI] ; punch
type = ChangeState
value = 201
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = statetype != A
trigger1 = random < 500
triggerall = p2statetype != L
triggerall = p2bodydist x = [0,35]
triggerall = p2statetype != A
triggerall = stateno !=210
trigger1 = stateno = 200 && movehit
trigger2 = random < 300
triggerall = ctrl = 1

[State -1, AI] ; punch
type = ChangeState
value = 202
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = statetype != A
trigger1 = random < 500
triggerall = p2statetype != L
triggerall = p2bodydist x = [0,35]
triggerall = p2statetype != A
trigger2 = stateno = 201 && NumHelper(2222) > 0
trigger2 = Helper(2222), movehit
trigger1 = ctrl = 1

[State -1, AI] ; punch
type = ChangeState
value = 800
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = statetype != A
trigger1 = random < 500
triggerall = p2statetype != L
triggerall = p2bodydist x <= 15
triggerall = p2statetype != A
trigger2 = stateno = 202 && NumHelper(3333) > 0
trigger2 = Helper(3333), movehit
trigger1 = ctrl = 1

[State -1, AI] ;Should I Offensively Guard?
Type = Changestate
Triggerall = Inguarddist
Triggerall = var(59) = 1
Triggerall = ctrl
triggerall = enemy,hitdefattr != S, AT
triggerall = enemy,movetype = A
Trigger1 = random > 500
value = 120

[State -1, AI Guard] ;Should I Defensively Guard?
type = ChangeState
triggerall = var(59) = 1
triggerall = ctrl
triggerAll = stateno != [120,140]
trigger1 = inguarddist ||enemy,numproj||enemy(numenemy>1),numproj
trigger1 = enemynear, MoveGuarded = 0
value = 120

[State -1, AI] ; Dance it up?
type = ChangeState
value = 195
triggerall = p2bodydist x >= 75
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = statetype != A
trigger1 = enemynear, stateno = 5101
trigger2 = prevstateno = 800
trigger3 = p2bodydist x >= 175
triggerall = prevstateno != 195
triggerall = ctrl = 1

[State -1, AI]
type = ChangeState
value = 1300
triggerall = p2bodydist x >= 75
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = statetype != A
trigger1 = random < 500
triggerall = prevstateno != 1300
triggerall = ctrl = 1

[State -1, AI]
type = ChangeState
value = 1400
triggerall = p2movetype != H
triggerall = p2bodydist x <=50
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = statetype != A
trigger1 = random < 500
trigger2 = p2bodydist x <=20
triggerall = prevstateno != 1400
triggerall = ctrl = 1

[State -1, AI]
type = ChangeState
value = 1200
triggerall = enemynear, stateno != 1219 && enemynear, anim != 5110
triggerall = NumHelper(2222) > 0
triggerall = Helper(2222), stateno != 1210
triggerall = Helper(2222), stateno != 2019
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = statetype != A
trigger1 = random < 300
trigger1 = life > 250
trigger2 = p2bodydist x >= 25
trigger2 = life > 250
trigger2 = random < 500
triggerall = prevstateno != 1200
triggerall = ctrl = 1

[State -1, AI]
type = ChangeState
value = 1101+random%3
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = statetype != A
trigger1 = random < 300
trigger1 = power >= 100
trigger2 = p2bodydist x >= 25
trigger2 = random < 500
triggerall = prevstateno != 100
triggerall = ctrl = 1 && NumHelper(1101) = 0

[State -1, AI]
type = ChangeState
value = 100
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = statetype != A
trigger1 = random < 100
trigger2= p2bodydist x >= 85
triggerall = prevstateno = 1200
triggerall = ctrl = 1

[State -1, AI] ; Assist 1
type = ChangeState
value = 1101
trigger3 = p2bodydist x >= 55
trigger3 = random < 200
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = statetype != A
trigger2 = random < 400
trigger1 = prevstateno = 800
triggerall = prevstateno != 2101 || prevstateno != 2102 || prevstateno != 2103
triggerall = ctrl = 1 && NumHelper(1101) = 0

[State -1, AI] ; Assist 2
type = ChangeState
value = 1102
trigger3 = p2bodydist x >= 55
trigger3 = random < 200
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = statetype != A
trigger2 = random < 400
trigger1 = prevstateno = 800
triggerall = prevstateno != 1101 || prevstateno != 1102 || prevstateno != 1103
triggerall = ctrl = 1 && NumHelper(1101) = 0

[State -1, AI] ; Assist 3
type = ChangeState
value = 1103
trigger3 = p2bodydist x >= 55
trigger3 = random < 200
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = statetype != A
trigger2 = random < 400
trigger1 = prevstateno = 800
triggerall = prevstateno != 1101 || prevstateno != 1102 || prevstateno != 1103
triggerall = ctrl = 1 && NumHelper(1101) = 0

[State -1, AI] ;Spare
type = ChangeState
value = 3000
trigger1 = enemynear, life < (0.33*lifemax)
triggerall = Power >=1500
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = ctrl = 1

[State -1, AI] ; Slice
type = ChangeState
value = 2500
trigger1 = Power >=2000
trigger1 = p2bodydist x <= 100
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = ctrl = 1

[State -1, AI] ;Yote
type = ChangeState
value = 2000
trigger1 = Power >=1000
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = ctrl = 1
trigger1 = random < 500



;===========================================================================
;必殺技

;===========================================================================
;必殺技

;---------------------------------------------------------------------------
;Throw
[State -1, ]
type = ChangeState
value = 800
triggerall = ctrl && !IsHelper
triggerall = command = "x"
triggerall = statetype = S
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 15
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 15
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H
;---------------------------------------------------------------------------
;Alphys Assist
[State -1, クッパブレス]
type = ChangeState
value = 1400
triggerall = Command = "K_Special"
;triggerall = power>=250
trigger1 = StateType != A
trigger1 = Ctrl
;ddsffsdsdfdsfdssfdfsdfsfdsfddsfdsfdsf

;---------------------------------------------------------------------------
;スパイクボンバー
[State -1, スパイクボンバー]
type = ChangeState
value = 1200
triggerall = Command = "R_Special"
;triggerall = power>=250
trigger1 = StateType != A
trigger1 = Ctrl
;triggerall = numhelper = 0

;---------------------------------------------------------------------------
;スパイクボンバー
[State -1, スパイクボンバー]
type = ChangeState
value = 1300
triggerall = Command = "S_Special"
;triggerall = power>=250
trigger1 = StateType != A
trigger1 = Ctrl

;---------------------------------------------------------------------------
;スパイクボンバー
[State -1, スパイクボンバー]
type = ChangeState
value = 1101
triggerall = Command = "1_Assist"
triggerall = power >=100
trigger1 = StateType != A
trigger1 = Ctrl
;triggerall = numhelper(1400) = 0

;---------------------------------------------------------------------------
;スパイクボンバー
[State -1, スパイクボンバー]
type = ChangeState
value = 1102
triggerall = Command = "2_Assist"
triggerall = power >=100
trigger1 = StateType != A
trigger1 = Ctrl
;triggerall = numhelper = 0

;---------------------------------------------------------------------------
;スパイクボンバー
[State -1, スパイクボンバー]
type = ChangeState
value = 1103
triggerall = Command = "3_Assist"
triggerall = power >=100
trigger1 = StateType != A
trigger1 = Ctrl
;triggerall = numhelper = 0

;---------------------------------------------------------------------------
;テイルアタック
[State -1, テイルアタック]
type = ChangeState
value = 2000
triggerall = Command = "Goat_Toss"
triggerall = power >=1000
trigger1 = StateType != A
trigger1 = Ctrl

;---------------------------------------------------------------------------
;テイルアタック
[State -1, テイルアタック]
type = ChangeState
value = 3000
triggerall = Command = "SPARE"
triggerall = power >=1500
trigger1 = StateType != A
trigger1 = Ctrl
;---------------------------------------------------------------------------
;テイルアタック
[State -1, テイルアタック]
type = ChangeState
value = 2500
triggerall = Command = "All_Out"
triggerall = power >=2000
trigger1 = StateType != A
trigger1 = Ctrl
;===========================================================================
;特殊技
;---------------------------------------------------------------------------

;===========================================================================

[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Jump Back]
type = ChangeState
value = 105
triggerall = StateType = S
triggerall = (Ctrl) && (StateNo != 100)
trigger1 = Command = "BB"
;通常技
;---------------------------------------------------------------------------

;===========================================================================
;通常技
;---------------------------------------------------------------------
;立ちパンチ
[State -1, 立ちパンチ]
type = ChangeState
value = 200
triggerall = !IsHelper && Var(17) = 0
triggerall = Command = "x"
trigger1 = StateType = S
trigger1 = Ctrl

;---------------------------------------------------------------------------
;立ちキック
[State -1, 立ちキック]
type = ChangeState
value = 201
triggerall = !IsHelper && Var(17) = 0
triggerall = Command = "y"
trigger1 = StateType = S
trigger1 = Ctrl

;---------------------------------------------------------------------------
;立ちキック
[State -1, 立ちキック]
type = ChangeState
value = 202
triggerall = !IsHelper ;&& Var(17) = 2
triggerall = Command = "z"
trigger1 = StateType = S
trigger1 = Ctrl

;---------------------------------------------------------------------------

;しゃがみパンチ
[State -1, しゃがみパンチ]
type = ChangeState
value = 400
triggerall = Command = "x"
triggerall = Command = "holddown"
trigger1 = StateType = C
trigger1 = Ctrl

[State -1, しゃがみキック]
type = ChangeState
value = 401
triggerall = Command = "y"
triggerall = Command = "holddown"
trigger1 = StateType = C
trigger1 = Ctrl

;しゃがみキック
[State -1, しゃがみキック]
type = ChangeState
value = 402
triggerall = Command = "z"
triggerall = Command = "holddown"
trigger1 = StateType = C
trigger1 = Ctrl


;---------------------------------------------------------------------------
;空中パンチ
[State -1, 空中パンチ]
type = ChangeState
value = 600
triggerall = Command = "x"
trigger1 = Statetype = A
trigger1 = Ctrl

;---------------------------------------------------------------------------
;空中キック
[State -1, 空中キック]
type = ChangeState
value = 601
triggerall = Command = "y"
trigger1 = Statetype = A
trigger1 = Ctrl

;---------------------------------------------------------------------------
;空中キック
[State -1, 空中キック]
type = ChangeState
value = 602
triggerall = Command = "z"
trigger1 = Statetype = A
trigger1 = Ctrl

[State -1, Taunt]
type = ChangeState
value = 195
triggerall = Command = "start"
triggerall = stateno != 100
trigger1 = (StateType = S) && (Ctrl)
;------------------------------------------------------------


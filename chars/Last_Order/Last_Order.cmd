;---------------------------------------------------------------------------
;======================= Button Remapping ==================================
;----------------------------------------------------------------------------
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s
;---------------------------------------------------------------------------
;======================= Default Values ==================================
;----------------------------------------------------------------------------
[Defaults]
command.time = 15
command.buffer.time = 1
;---------------------------------------------------------------------------
;======================= AI ==============================================
;---------------------------------------------------------------------------
[Command]
name = "cpu01"
command = D+a+a+a+a+a, F, D, F, B, F,U,F,F,F, a+b+c, a+a, a+a, a+a, a+a, a+a
time = 1

[Command]
name = "cpu02"
command = B, F, U, U, D, B,a,a,a,a
time = 1

[Command]
name = "cpu03"
command = D, D, D, D, D, D,b,b,y,y
time = 1

[Command]
name = "cpu04"
command = D+a+a+a+a, F, D, F, B, F,U,F,F,F, a+b+c
time = 1

[Command]
name = "cpu05"
command = D+a+a+a+a+a, F, D, F, B, F,U,F,F,F, a+b+c+c
time = 1

[Command]
name = "cpu06"
command = F, a+b+c,c+c,c+c,c+c,c+c
time = 1

[Command]
name = "cpu07"
command = F, a+b+c,c+c,c+c,c+c,c+c,c+c
time = 1

[Command]
name = "cpu08"
command = F, a+b+c, a+a, a+a
time = 1

[Command]
name = "cpu09"
command = F, a+b+c, a+a, a+a, a+a
time = 1

[Command]
name = "cpu10"
command = F, D, F, D, D, F,U,B,B,F
time = 1

[Command]
name = "cpu11"
command = F, F, U, U, F, F,U,B,U,B, x+y+z
time = 1

[Command]
name = "cpu12"
command = U, U, U, U, U, U,a,a,x,x
time = 1

[Command]
name = "cpu13"
command = U, U, U, U, U, U,a,a,x,x,a,a,a,a
time = 1

[Command]
name = "cpu14"
command = U+a+a+a+a+a, U, U, U, U, U,a,a,x,x,a,a,a,a
time = 1

;---------------------------------------------------------------------------
;======================= Super, Hyper Move ==============================
;---------------------------------------------------------------------------

[Command]
name = "41236c"
command = ~B, DB, D, DF, F, c
time = 20
buffer.time = 10



[Command]
name = "41236b"
command = ~B, DB, D, DF, F, b
time = 20
buffer.time = 10




[Command]
name = "41236a"
command = ~B, DB, D, DF, F, a
time = 20
buffer.time = 10



[Command]
name = "421c"
command = ~B, D, DB, c
time = 20
buffer.time = 10



[Command]
name = "214c"
command = ~D, DB, B, c
time = 20
buffer.time = 10




[Command]
name = "623c"
command = ~F, D, DF, c
time = 20
buffer.time = 10




[Command]
name = "236c"
command = ~D, DF, F, c
time = 20
buffer.time = 10



;---------------------------------------------------------------------------
;======================= Special Move ==============================
;---------------------------------------------------------------------------
[Command]
name = "421b"
command = ~B, D, DB, b
time = 20
buffer.time = 10



[Command]
name = "421a"
command = ~B, D, DB, a
time = 20
buffer.time = 10



[Command]
name = "63214b"
command = ~F, DF, D, DB, B, b
time = 20
buffer.time = 10



[Command]
name = "63214a"
command = ~F, DF, D, DB, B, a
time = 20
buffer.time = 10



;[Command]
;name = "46b"
;command = ~25$B, F, b

;[Command]
;name = "46a"
;command = ~25$B, F, a

[Command]
name = "214b"
command = ~D, DB, B, b
time = 20
buffer.time = 10



[Command]
name = "214a"
command = ~D, DB, B, a
time = 20
buffer.time = 10



;[Command]
;name = "623b"
;command = ~F, D, DF, b

;[Command]
;name = "623a"
;command = ~F, D, DF, a

[Command]
name = "236b"
command = ~D, DF, F, b
time = 20
buffer.time = 10



[Command]
name = "236a"
command = ~D, DF, F, a
time = 20
buffer.time = 10



;---------------------------------------------------------------------------
;======================= Double Tap ======================================
;---------------------------------------------------------------------------
[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

;---------------------------------------------------------------------------
;======================= 2/3 Button Combination =========================
;---------------------------------------------------------------------------
[Command]
name = "recovery"
command = x
time = 1

[Command]
	name="recovery"
	command=y
	Time=1

[Command]
	name="recovery"
	command=z
	Time=1

[Command]
	name="recovery"
	command=a
	Time=1

[Command]
	name="recovery"
	command=b
	Time=1

[Command]
	name="recovery"
	command=c
	Time=1

;---------------------------------------------------------------------------
;======================= Dir + Button ===================================
;---------------------------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1
;---------------------------------------------------------------------------
;======================= Single Button ===================================
;---------------------------------------------------------------------------
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
name = "s"
command = s
time = 1

[Command]
name = "BL_B"
command = B
time = 1

[Command]
name = "BL_DB"
command = DB
time = 1

;---------------------------------------------------------------------------
;======================= Hold Dir =======================================
;---------------------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Command]
name = "holdx";Required (do not remove)
command = /$x
time = 1

[Command]
name = "holda";Required (do not remove)
command = /$a
time = 1

[Command]
name = "longjump"
command = ~D, $U
time = 1

; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]
;==============================================================================================================================================================
; AI
[State -1, -AI- Varset]
type = VarSet
triggerall = var(59) != 1
trigger1 = command = "cpu01"
trigger2 = command = "cpu02"
trigger3 = command = "cpu03"
trigger4 = command = "cpu04"
trigger5 = command = "cpu05"
trigger6 = command = "cpu06"
trigger7 = command = "cpu07"
trigger8 = command = "cpu08"
trigger9 = command = "cpu09"
trigger10 = command = "cpu10"
trigger11 = command = "cpu11"
trigger12 = command = "cpu12"
trigger13 = command = "cpu13"
trigger14 = command = "cpu14"
v = 59
value = 1

[State -1, -AI- Burst]
type = ChangeState
value = 930
triggerall = Alive
triggerall = var(59) = 1 && var(28) = 100
triggerall = MoveType = H
trigger1 = stateno = 5000 && time > 0
trigger2 = stateno = 5010 && time > 0
trigger3 = stateno = 5020 && time > 0
trigger4 = stateno = 5070 && time > 0
trigger5 = stateno = [5001,5070]

[State -1, -AI- Stand Guard]
type = ChangeState
triggerall = roundstate = 2 && var(59)= 1
triggerall =(StateType != A) && (Ctrl)&& (enemynear, Facing != Facing)
trigger1 = (P2StateType != C) && (P2MoveType = A)
trigger2 = inguarddist
value = 130

[State -1, -AI- Crouch Guard]
type = ChangeState
triggerall = roundstate = 2 && var(59)= 1
triggerall = (StateType != A) && (Ctrl) && (enemynear, Facing != Facing)
trigger1 = (P2StateType = C) && (P2MoveType = A)
trigger2 = inguarddist
value = 131

[State -1, -AI- Air Guard]
type = ChangeState
triggerall = roundstate = 2 && var(59)= 1
triggerall = (StateType = A) && (Ctrl) && (enemynear, Facing != Facing)
trigger1 = P2MoveType = A
trigger2 = inguarddist
value = 132

[State -1, -AI- Move]
type = ChangeState
value = 400
triggerall = roundstate = 2 && var(59)= 1
triggerall = statetype = S
triggerall = stateno != 400
trigger1 = ctrl
trigger1 = p2bodydist x <= 5

[State -1, -AI- Move]
type = ChangeState
value = 210
triggerall = roundstate = 2 && var(59)= 1
triggerall = statetype = C
triggerall = stateno != 210
trigger1 = movecontact && stateno = 400
trigger2 = movecontact && stateno = 200

[State -1, -AI- Move]
type = ChangeState
value = 220
triggerall = roundstate = 2 && var(59)= 1
triggerall = statetype = S
triggerall = stateno != 220
trigger1 = movecontact && stateno = 210

[State -1, -AI- Move]
type = ChangeState
value = 10
triggerall = roundstate = 2 && var(59)= 1
triggerall = statetype = S
triggerall = stateno != 10 && stateno != 11
trigger1 = ctrl
trigger1 = p2bodydist x >= 25 && p2bodydist x <= 60

[State -1, -AI- Move]
type = ChangeState
value = 410
triggerall = roundstate = 2 && var(59)= 1
triggerall = statetype = C
triggerall = stateno != 410
trigger1 = ctrl
trigger1 = p2bodydist x >= 40 && p2bodydist x <= 60

[State -1, -AI- Move]
type = ChangeState
value = 420
triggerall = roundstate = 2 && var(59)= 1
triggerall = statetype = C
triggerall = stateno != 420
trigger1 = movecontact && stateno = 410

[State -1, -AI- Move]
type = ChangeState
value = 105
triggerall = roundstate = 2 && var(59)= 1
triggerall = statetype = S
triggerall = stateno != 105
trigger1 = ctrl
trigger1 = p2bodydist x <= 40
trigger2 = p2movetype = A && p2bodydist x <= 75 && ctrl

[State -1, -AI- Move]
type = ChangeState
value = 100
triggerall = roundstate = 2 && var(59)= 1
triggerall = statetype = S
triggerall = stateno != 100
trigger1 = ctrl
trigger1 = p2bodydist x >= 120

[State -1, -AI- Start_Charge]
type = ChangeState
value = 4500
triggerall = var(59) = 1
triggerall = RoundState = 2
triggerall = statetype != A
triggerall = Power < 6000
triggerall = ctrl
triggerall = Numproj = 0
triggerall = enemy,Numproj= 0
trigger1 = p2bodydist X > 35
trigger1 = p2statetype = L
trigger1 = Life > 250
trigger1 = Var(58) = [50,52]
trigger2 = p2bodydist X > 150
trigger2 = Var(58) = [50,90]
trigger3 = Power < 300
trigger3 = Life > 250
trigger3 = p2bodydist X = [100,150]
trigger3 = Var(58) = [50,70]

[State -1, -AI- Stop_Charge]
type = ChangeState
value = 4501
triggerall = var(59) = 1
triggerall = stateno = 4500
trigger1 = p2bodydist X < 85
trigger1 = p2statetype != L || P2StateNo = 5120
trigger2 = enemy,Numproj > 0
trigger3 = p2movetype = A
trigger3 = Var(58) = [0,90]
trigger4 = p2bodydist X < 120
trigger4 = Vel X > 0
trigger5 = random < statetime/10
trigger6 = roundstate != 2
trigger7 = inguarddist
trigger7 = Var(58) = [0,90]
trigger8 = Life < 250 && Power > 1250
trigger8 = random < statetime

[State -1, -AI- Move]
type = ChangeState
value = 600
triggerall = roundstate = 2 && var(59)= 1
triggerall = statetype = A
triggerall = stateno != 600
trigger1 = ctrl
trigger1 = p2bodydist x >= 40 && p2bodydist y = 0

[State -1, -AI- Move]
type = ChangeState
value = 610
triggerall = roundstate = 2 && var(59)= 1
triggerall = statetype = A
triggerall = stateno != 610
trigger1 = movecontact && stateno = 600

[State -1, -AI- Move]
type = ChangeState
value = 620
triggerall = roundstate = 2 && var(59)= 1
triggerall = statetype = A
triggerall = stateno != 620
trigger1 = movecontact && stateno = 610

;[State -1, -AI- Move]
;type = ChangeState
;value = 1000
;triggerall = roundstate = 2 && var(59)= 1
;triggerall = statetype != A && power < 1000
;triggerall = stateno != 1150
;triggerall = stateno != 1000
;trigger1 = movecontact && stateno = 220
;trigger2 = movecontact && stateno = 410
;trigger3 = movecontact && stateno = 420

[State -1, -AI- Move]
type = ChangeState
value = 1200
triggerall = statetype != A && power >= 500
triggerall = roundstate = 2 && var(59)= 1
triggerall = statetype = S
triggerall = NumHelper(1200999) = 0 ;Sister_Rifle
;triggerall = NumHelper(1250999) = 0 ;Sister_Electric
;triggerall = NumHelper(1400999) = 0 ;Accelerator
trigger1 = movecontact && stateno = 220
trigger2 = movecontact && stateno = 410
trigger3 = movecontact && stateno = 420

[State -1, -AI- Move]
type = ChangeState
value = 3600
triggerall = roundstate = 2 && var(59)= 1
triggerall = statetype != A && power >= 1000
;triggerall = NumHelper(1200999) = 0 ;Sister_Rifle
triggerall = NumHelper(1250999) = 0 ;Sister_Electric
;triggerall = NumHelper(1400999) = 0 ;Accelerator
triggerall = stateno != [1000,3999]
triggerall = hitcount >= 1
trigger1 = movecontact && stateno = 220
trigger2 = movecontact && stateno = 410
;trigger3 = movecontact && stateno = 420


;==============================================================================================================================================================
;---------------------------------------------------------------------------
; Combo condition
;---------------------------------------------------------------------------
[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(1) = 0

[State -1, Combo condition Check]
type = VarSet
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = movecontact
var(1) = 1

;===========================================================================
;Hyper
;---------------------------------------------------------------------------
;41236c
[State -1, 41236c]
type = ChangeState
value = 3900
triggerall = !var(59)
;triggerall = NumHelper(1200999) = 0 ;Sister_Rifle
;triggerall = NumHelper(1250999) = 0 ;Sister_Electric
triggerall = NumHelper(1400999) = 0 ;Accelerator
triggerall = command = "41236c"
triggerall = power >= 3000
triggerall = RoundState = 2
triggerall = var(16) = 1
triggerall = var(2) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = var(1)

;---------------------------------------------------------------------------
;41236b
[State -1, 41236b]
type = ChangeState
value = 3800
triggerall = !var(59)
;triggerall = NumHelper(1200999) = 0 ;Sister_Rifle
;triggerall = NumHelper(1250999) = 0 ;Sister_Electric
triggerall = NumHelper(1400999) = 0 ;Accelerator
triggerall = command = "41236b"
triggerall = power >= 2000
triggerall = RoundState = 2
triggerall = var(2) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = var(1)

;---------------------------------------------------------------------------
;41236a
[State -1, 41236c]
type = ChangeState
value = 3700
triggerall = !var(59)
;triggerall = NumHelper(1200999) = 0 ;Sister_Rifle
;triggerall = NumHelper(1250999) = 0 ;Sister_Electric
triggerall = NumHelper(1400999) = 0 ;Accelerator
triggerall = NumHelper(3702) = 0 ;Accelerator_Helper
triggerall = command = "41236a"
triggerall = power >= 2000
triggerall = RoundState = 2
triggerall = var(2) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = var(1)
;---------------------------------------------------------------------------
;421c
[State -1, 421c]
type = ChangeState
value = 3600
triggerall = !var(59)
;triggerall = NumHelper(1200999) = 0 ;Sister_Rifle
triggerall = NumHelper(1250999) = 0 ;Sister_Electric
;triggerall = NumHelper(1400999) = 0 ;Accelerator
;triggerall = NumHelper(3702) = 0 ;Accelerator_Helper
triggerall = command = "421c"
triggerall = power >= 1000
triggerall = RoundState = 2
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = var(1)
;---------------------------------------------------------------------------
;214c_air
;[State -1, 214c_air]
;type = ChangeState
;value = 3500
;triggerall = !var(59)
;triggerall = command = "214c"
;triggerall = power >= 1000
;triggerall = RoundState = 2
;triggerall = statetype = A
;trigger1 = ctrl
;trigger2 = stateno = [600,699]

;---------------------------------------------------------------------------
;214c
[State -1, 214c]
type = ChangeState
value = 3200
triggerall = !var(59)
triggerall = NumHelper(1200999) = 0 ;Sister_Rifle
;triggerall = NumHelper(1250999) = 0 ;Sister_Electric
;triggerall = NumHelper(1400999) = 0 ;Accelerator
triggerall = command = "214c"
triggerall = power >= 1000
triggerall = RoundState = 2
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = var(1)

;---------------------------------------------------------------------------
;623c
;[State -1, 623c]
;type = ChangeState
;value = 3100
;triggerall = !var(59)
;triggerall = command = "623c"
;triggerall = power >= 1000
;triggerall = RoundState = 2
;trigger1 = statetype != A
;trigger1 = ctrl
;trigger2 = var(1)

;------------------------------------------------------------------------------
;236c
[State -1, 236c]
type = ChangeState
value = 3000
triggerall = !var(59)
triggerall = command = "236c"
triggerall = power >= 1000
triggerall = RoundState = 2
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = var(1)

;===========================================================================
;Special
;---------------------------------------------------------------------------
;421b
[State -1, 421b]
type = ChangeState
value = 1650
triggerall = !var(59)
;triggerall = NumHelper(1200999) = 0 ;Sister_Rifle
triggerall = NumHelper(1250999) = 0 ;Sister_Electric
;triggerall = NumHelper(1400999) = 0 ;Accelerator
triggerall = power >= 500
triggerall = command = "421b"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = var(1)

;---------------------------------------------------------------------------
;421a
[State -1, 421a]
type = ChangeState
;value = 1600 ;DEFAULT
value =1250
triggerall = !var(59)
;triggerall = NumHelper(1200999) = 0 ;Sister_Rifle
triggerall = NumHelper(1250999) = 0 ;Sister_Electric
;triggerall = NumHelper(1400999) = 0 ;Accelerator
triggerall = power >= 500
triggerall = command = "421a"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = var(1)

;---------------------------------------------------------------------------
;63214b
[State -1, 63214b]
type = ChangeState
value = 1450
triggerall = !var(59)
;triggerall = NumHelper(1200999) = 0 ;Sister_Rifle
;triggerall = NumHelper(1250999) = 0 ;Sister_Electric
triggerall = NumHelper(1400999) = 0 ;Accelerator
triggerall = power >= 1000
triggerall = var(2) = 0
triggerall = command = "63214b"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = var(1)

;---------------------------------------------------------------------------
;63214a
[State -1, 63214a]
type = ChangeState
value = 1400
triggerall = !var(59)
;triggerall = NumHelper(1200999) = 0 ;Sister_Rifle
;triggerall = NumHelper(1250999) = 0 ;Sister_Electric
triggerall = NumHelper(1400999) = 0 ;Accelerator
triggerall = power >= 1000
triggerall = var(2) = 0
triggerall = command = "63214a"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = var(1)

;---------------------------------------------------------------------------
;46b
;[State -1, 46b]
;type = ChangeState
;value = 1350
;triggerall = !var(59)
;triggerall = command = "46b"
;trigger1 = statetype != A
;trigger1 = ctrl
;trigger2 = var(1)

;---------------------------------------------------------------------------
;46a
;[State -1, 46a]
;type = ChangeState
;value = 1300
;triggerall = !var(59)
;triggerall = command = "46a"
;trigger1 = statetype != A
;trigger1 = ctrl
;trigger2 = var(1)

;---------------------------------------------------------------------------
;214b_air
;[State -1, 214b_air]
;type = ChangeState
;value = 1550
;triggerall = !var(59)
;triggerall = command = "214b"
;triggerall = statetype = A
;trigger1 = ctrl
;trigger2 = stateno = [600,699]

;---------------------------------------------------------------------------
;214a_air
;[State -1, 214a_air]
;type = ChangeState
;value = 1500
;triggerall = !var(59)
;triggerall = command = "214a"
;triggerall = statetype = A
;trigger1 = ctrl
;trigger2 = stateno = [600,699]

;---------------------------------------------------------------------------
;214b
[State -1, 214b]
type = ChangeState
;value = 1250 ;DEFAULT
value = 1600
triggerall = !var(59)
triggerall = command = "214b"
triggerall = NumHelper(1200999) = 0 ;Sister_Rifle
;triggerall = NumHelper(1250999) = 0 ;Sister_Electric
;triggerall = NumHelper(1400999) = 0 ;Accelerator
triggerall = power >= 500
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = var(1)

;---------------------------------------------------------------------------
;214a
[State -1, 214a]
type = ChangeState
value = 1200
triggerall = !var(59)
triggerall = command = "214a"
triggerall = NumHelper(1200999) = 0 ;Sister_Rifle
;triggerall = NumHelper(1250999) = 0 ;Sister_Electric
;triggerall = NumHelper(1400999) = 0 ;Accelerator
triggerall = power >= 500
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = var(1)

;---------------------------------------------------------------------------
;623b
;[State -1, 623b]
;type = ChangeState
;value = 1150
;triggerall = !var(59)
;triggerall = command = "623b"
;trigger1 = statetype != A
;trigger1 = ctrl
;trigger2 = var(1)

;---------------------------------------------------------------------------
;623a
;[State -1, 623a]
;type = ChangeState
;value = 1100
;triggerall = !var(59)
;triggerall = command = "623a"
;trigger1 = statetype != A
;trigger1 = ctrl
;trigger2 = var(1)

;---------------------------------------------------------------------------
;236b
[State -1, 236b]
type = ChangeState
value = 1050
triggerall = !var(59)
triggerall = command = "236b"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = var(1)

;---------------------------------------------------------------------------
;236a
[State -1, 236a]
type = ChangeState
value = 1000
triggerall = !var(59)
triggerall = command = "236a"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = var(1)

;===========================================================================
; Basic Move
;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = !var(59)
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1,  Air Dash(Front)]
type = ChangeState
value = 110
triggerall = !var(59)
triggerall = anim != 105
triggerall = anim != 110
triggerall = anim != 111
triggerall = anim != 113
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = !var(59)
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1,  Air Dash(Back)]
type = ChangeState
value = 112
triggerall = !var(59)
triggerall = anim != 105
triggerall = anim != 110
;triggerall = anim != 111
;triggerall = anim != 113
trigger1 = command = "BB"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -2, Blocking_F]
type = VarSet
;triggerall = !var(59)
triggerall = var(20) = 0
trigger1 = command = "BL_B" && command != "holddown"&& Command != "holdup"
var(20) = 1

[State -2, Blocking_D]
type = VarSet
;triggerall = !var(59)
triggerall = var(21) = 0
trigger1 = Command = "BL_DB" && command != "holdfwd"&& Command != "holdup"
var(21) = 1

;---------------------------------------------------------------------------
;Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = !var(59)
triggerall = command = "x"
triggerall = statetype != A
triggerall = ctrl
trigger1 = command = "holdfwd"
trigger2 = command = "holdback"

;---------------------------------------------------------------------------
;Power Charge
[State -1 ,Power Charge]
type = ChangeState
value = 4500
;triggerall = !var(59)
triggerall = statetype = S
triggerall = Power < 6000
triggerall = ctrl = 1
trigger1 = command = "holdx"

;---------------------------------------------------------------------------
[State -1, Burst]
type = ChangeState
value = 930
triggerall = !var(59)
TriggerAll = Alive
triggerall = command =  "recovery"
triggerall = MoveType = H
triggerall = var(28) >= 100
trigger1 = stateno = 5000 && time > 0
trigger2 = stateno = 5010 && time > 0
trigger3 = stateno = 5020 && time > 0
trigger4 = stateno = 5070 && time > 0
trigger5 = stateno != 5000 && stateno != 5010 && stateno != 5020 && stateno != 5070
trigger5 = stateno = [5001,5070]

;---------------------------------------------------------------------------
[State -1, BRC]
type = ChangeState
value = 990
triggerall = !var(59)
triggerall = command = "z"
triggerall = MoveType = A
triggerall = power >= 1000
triggerall = RoundState = 2
triggerall = StateNo != 990
triggerall = movehit = 1
triggerall = StateNo != [1000,2999]
trigger1 = var(1)
trigger2 = StateNo = [600,699]
;---------------------------------------------------------------------------
[State -1, Taunt]
type = ChangeState
value = 160
triggerall = !var(59)
triggerall = command = "s"
triggerall = StateNo != 160
trigger1 = statetype != A
trigger1 = ctrl

;===========================================================================
;Attack
;---------------------------------------------------------------------------
;a
[State -1, a]
type = ChangeState
value = 200
triggerall = !var(59)
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200 && time > 1 && movecontact

;---------------------------------------------------------------------------
;b
[State -1, b]
type = ChangeState
value = 210
triggerall = !var(59)
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 400 && movecontact

;---------------------------------------------------------------------------
;c
[State -1, c]
type = ChangeState
value = 220
triggerall = !var(59)
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 410 && movecontact

;---------------------------------------------------------------------------
;ca
[State -1, ca]
type = ChangeState
value = 400
triggerall = !var(59)
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 400 && movecontact
trigger3 = time > 5

;---------------------------------------------------------------------------
;cb
[State -1, cb]
type = ChangeState
value = 410
triggerall = !var(59)
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 400 && movecontact

;---------------------------------------------------------------------------
;cc
[State -1, cc]
type = ChangeState
value = 420
triggerall = !var(59)
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 410 && movecontact

;---------------------------------------------------------------------------
[State -1, ja]
type = ChangeState
value = 600
triggerall = !var(59)
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600 && movecontact = 1
trigger2 = time > 5

;---------------------------------------------------------------------------
[State -1, jb]
type = ChangeState
value = 610
triggerall = !var(59)
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact = 1

;---------------------------------------------------------------------------
[State -1, jc]
type = ChangeState
value = 620
triggerall = !var(59)
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact = 1
trigger3 = stateno = 610 && movecontact = 1

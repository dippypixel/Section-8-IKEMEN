; CMON
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Default Values |-------------------------------------------------------
; EVERYONE
[Defaults]
command.time = 20
command.buffer.time = 1


;-| Super Motions |--------------------------------------------------------
; GRAB A GUN
[Command]
name = "LightGunSuper"
command = ~D, DF, F, D, DF, F, x
time = 20

[Command]
name = "HeavyGunSuper"
command = ~D, DF, F, D, DF, F, y
time = 20

[Command]
name = "INTHEFACE"
command = ~D, DB, B, D, DB, B, x
time = 20

[Command]
name = "INTHEFACE"
command = ~D, DB, B, D, DB, B, y
time = 20

[Command]
name = "GobbleGobble"
command = ~D, DB, B, D, DB, B, z
time = 20

[Command]
name = "RULESOFNATURE"
command = ~D, DF, F, D, DF, F, z
time = 20

;-| Special Motions |------------------------------------------------------
; RUN, RUN RUN
[Command]
name = "blocking"
command = $F,x
time = 3

[Command]
name = "blocking" ;Same name as above (buttons in opposite order)
command = x,$F
time = 3

[Command]
name = "rdp_x"
command = ~B, D, DB, x
time = 20

[Command]
name = "rdp_y"
command = ~B, D, DB, y
time = 20

[Command]
name = "rdp_z"
command = ~B, D, DB, z
time = 20

[Command]
name = "upper_x"
command = ~F, D, DF, x
time = 20

[Command]
name = "upper_y"
command = ~F, D, DF, y
time = 20

[Command]
name = "upper_z"
command = ~F, D, DF, z
time = 20

[Command]
name = "upper_xy"
command = ~F, D, DF, x+y

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_z"
command = ~D, DF, F, z

[Command]
name = "QCF_xy"
command = ~D, DF, F, x+y

[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
command = ~D, DB, B, y

[Command]
name = "QCB_z"
command = ~D, DB, B, z

[Command]
name = "QCF_a"
command = ~D, DF, F, a

[Command]
name = "QCF_b"
command = ~D, DF, F, b

[Command]
name = "QCF_ab"
command = ~D, DF, F, a+b

[Command]
name = "FF_ab"
command = F, F, a+b

[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "DDX"
command = D, D, x
time = 15

[Command]
name = "DDY"
command = D, D, y
time = 15

[Command]
name = "DDX"
command = D, D, x
time = 15

[Command]
name = "DDZ"
command = D, D, z
time = 15

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| Single Button |---------------------------------------------------------
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

;-| Hold Dir |--------------------------------------------------------------
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

[Statedef -1]


;===========================================================================
;---------------------------------------------------------------------------
[State -1, AI Condition Reset]
type = VarSet
trigger1 = 1
var(3) = 0

[State -1, AI Condition Check]
type = VarSet
trigger1 = AILevel != 0
trigger1 = EnemyNear,StateNo != [5100,5120]
trigger1 = EnemyNear,StateType != L
trigger1 = RoundState = 2
trigger1 = StateNo != [3110,3115]
var(3) = 1

;===========================================================================
;---------------------------------------------------------------------------
[State -1, RULES OF NATURE]
type = ChangeState
value = 3100
triggerall = RoundState = 2
triggerall = power >= 3000
triggerall = statetype != A
triggerall = p2life <= lifemax / 2
trigger1 = ctrl
trigger1 = command = "RULESOFNATURE" && AILevel = 0
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3050,3100)
trigger2 = movecontact
trigger2 = command = "RULESOFNATURE" && AILevel = 0
;trigger3 = stateno = 1310 || stateno = 1330 || stateno = 1020 || stateno = 1000 || stateno = 1010
;trigger3 = command = "RULESOFNATURE"
trigger3 = Var(3) = 1 && (AILevel*AILevel*AILevel*2)*0.1 > random
trigger3 = StateNo = 1002 && MoveHit && Time = [30,32]
trigger4 = Var(3) = 1 && (AILevel*AILevel*AILevel*2)*0.1 > random
trigger4 = StateNo = 440 || StateNo = [1304,1306]
trigger4 = MoveHit

[State -1, FUCK YOU IN THE FACE]
type = ChangeState
value = 3050
triggerall = RoundState = 2
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger1 = command = "INTHEFACE" && AILevel = 0
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3050,3100)
trigger2 = movecontact
trigger2 = command = "INTHEFACE" && AILevel = 0
;trigger3 = stateno = 1310 || stateno = 1330 || stateno = 1020 || stateno = 1000 || stateno = 1010
;trigger3 = command = "INTHEFACE"
trigger3 = Var(3) = 1 && (AILevel*AILevel*AILevel*2)*0.3 > random
trigger3 = StateNo = [1304,1305]
trigger3 = MoveHit

[State -1, gobble gobble]
type = ChangeState
value = 3110
triggerall = RoundState = 2
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger1 = command = "GobbleGobble" && AILevel = 0
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3050,3100)
trigger2 = movecontact
trigger2 = command = "GobbleGobble" && AILevel = 0
trigger3 = ctrl
trigger3 = Var(3) = 1 && (AILevel*AILevel*AILevel*2)*0.75 > random
trigger3 = (p2statetype = S) || (p2statetype = C)
trigger3 = p2movetype != H
trigger3 = P2BodyDist X + EnemyNear,Vel X*-1 < 6 && EnemyNear,PrevStateNo != 5120
;trigger3 = stateno = 1310 || stateno = 1330 || stateno = 1020 || stateno = 1000 || stateno = 1010
;trigger3 = command = "GobbleGobble"

[State -1, NOW IS THE TIME]
type = ChangeState
value = 3000
triggerall = RoundState = 2
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger1 = command = "LightGunSuper" && AILevel = 0
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3050,3100)
trigger2 = movecontact
trigger2 = command = "LightGunSuper" && AILevel = 0
;trigger3 = stateno = 1310 || stateno = 1330 || stateno = 1020 || stateno = 1000 || stateno = 1010
;trigger3 = command = "LightGunSuper"
trigger3 = Var(3) = 1 && (AILevel*AILevel*AILevel*2)*0.5 > random
trigger3 = StateNo = [1000,1019]
trigger3 = ProjHit = 1
trigger4 = Var(3) = 1 && (AILevel*AILevel*AILevel*2)*0.5 > random
trigger4 = StateNo = 1001 && MoveHit && Time = [5,8]

[State -1, ONE SHOT KILL]
type = ChangeState
value = 3010
triggerall = RoundState = 2
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger1 = command = "HeavyGunSuper" && AILevel = 0
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3050,3100)
trigger2 = movecontact
trigger2 = command = "HeavyGunSuper" && AILevel = 0
;trigger3 = stateno = 1310 || stateno = 1330 || stateno = 1020 || stateno = 1000 || stateno = 1010
;trigger3 = command = "HeavyGunSuper"
trigger3 = Var(3) = 1 && (AILevel*AILevel*AILevel*2)*0.5 > random
trigger3 = StateNo = 1002 && MoveHit && Time = [30,32]


;===========================================================================
;This is not a move, but it sets up var(1) to be 1 if conditions are right
;for a combo into a special move (used below).
;Since a lot of special moves rely on the same conditions, this reduces
;redundant logic.
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
trigger3 = stateno = 1310 || stateno = 1330 ;From blocking
var(1) = 1

[State -1, Jumpcancel]
type = ChangeState
value = 40
triggerall = stateno = 1306
triggerall = Time >= 26
triggerall = power > 250
triggerall = movehit
trigger1 = command = "holdup"

[State -1, blink]
type = ChangeState
value = 1050
triggerall = var(1) ;Use combo condition (above)
trigger1 = command = "rdp_x" && AILevel = 0
trigger2 = Var(3) = 1 && (AILevel*AILevel*AILevel*2)*0.05 > random
trigger2 = P2BodyDist X > 120

[State -1, blink]
type = ChangeState
value = 1050
triggerall = var(1) ;Use combo condition (above)
trigger1 = command = "rdp_y" && AILevel = 0
trigger2 = Var(3) = 1 && (AILevel*AILevel*AILevel*2)*0.05 > random
trigger2 = P2BodyDist X > 120

[State -1, ex blink]
type = ChangeState
value = 1051
triggerall = power >= 500
triggerall = var(1) ;Use combo condition (above)
trigger1 = command = "rdp_z" && AILevel = 0
trigger2 = Var(3) = 1 && (AILevel*AILevel*AILevel*2)*0.02 > random
trigger2 = P2BodyDist X > 120

[State -1, DOWNmobile XY]
type = ChangeState
value = 1001
triggerall = var(1) ;Use combo condition (above)
trigger1 = command = "upper_x" || command = "upper_y"
trigger1 = AILevel = 0
trigger2 = Var(3) = 1 && (AILevel*AILevel*AILevel*2)*0.35 > random
trigger2 = StateNo = 440 && MoveContact
trigger3 = Var(3) = 1 && (AILevel*AILevel*AILevel*2)*0.25 > random
trigger3 = P2StateType = A && P2Dist Y < -40 && P2BodyDist X < 80
trigger4 = Var(3) = 1 && (AILevel*AILevel*AILevel*2)*0.75 > random
trigger4 = P2StateType = A && P2Dist Y < -120 && P2BodyDist X < 80

[State -1, DOWNmobile EX]
type = ChangeState
value = 1002
triggerall = RoundState = 2
triggerall = power >= 500
triggerall = var(1) ;Use combo condition (above)
trigger1 = command = "upper_z" && AILevel = 0
trigger2 = Var(3) = 1 && (AILevel*AILevel*AILevel*2)*0.15 > random
trigger2 = StateNo = 440 && MoveContact

[State -1, air slash x]
type = ChangeState
value = 1300
triggerall = statetype = A
trigger1 = ctrl || stateno = [600,699]
trigger1 = command = "QCB_x" && AILevel = 0
trigger2 = Var(3) = 1 && (AILevel*AILevel*AILevel*2)*0.20 > random
trigger2 = StateNo = 630 && MoveContact

[State -1, air slash y]
type = ChangeState
value = 1302
triggerall = statetype = A
trigger1 = ctrl || stateno = [600,699]
trigger1 = command = "QCB_y" && AILevel = 0
trigger2 = Var(3) = 1 && (AILevel*AILevel*AILevel*2)*0.25 > random
trigger2 = StateNo = 630 && MoveContact
trigger3 = Var(3) = 1 && (AILevel*AILevel*AILevel*2)*0.5 > random
trigger3 = StateNo = 211 && MoveContact && Time = [6,8]

[State -1, air slash ex]
type = ChangeState
value = 1303
triggerall = RoundState = 2
triggerall = power >= 500
triggerall = statetype = A
trigger1 = ctrl || stateno = [600,699]
trigger1 = command = "QCB_z" && AILevel = 0
trigger2 = Var(3) = 1 && (AILevel*AILevel*AILevel*2)*0.15 > random
trigger2 = StateNo = 630 && MoveContact
trigger3 = Var(3) = 1 && (AILevel*AILevel*AILevel*2)*0.3 > random
trigger3 = StateNo = 211 && MoveContact && Time = [6,8]

[State -1, GET OUT EX]
type = ChangeState
value = 1306
triggerall = RoundState = 2
triggerall = power >= 500
triggerall = var(1) ;Use combo condition (above)
trigger1 = command = "QCB_z" && AILevel = 0
trigger2 = Var(3) = 1 && (AILevel*AILevel*AILevel*2)*0.15 > random
trigger2 = StateNo = 440 && MoveContact
trigger3 = Var(3) = 1 && (AILevel*AILevel*AILevel*2)*0.07 > random
trigger3 = StateNo = 211 && MoveContact && Time = [6,8]

;---------------------------------------------------------------------------
[State -1, GET OUT X]
type = ChangeState
value = 1304
triggerall = var(1) ;Use combo condition (above)
trigger1 = command = "QCB_x" && AILevel = 0
trigger2 = Var(3) = 1 && (AILevel*AILevel*AILevel*2)*0.25 > random
trigger2 = StateNo = 440 && MoveContact
trigger3 = Var(3) = 1 && (AILevel*AILevel*AILevel*2)*0.35 > random
trigger3 = StateNo = 211 && MoveContact && Time = [6,8]

;---------------------------------------------------------------------------
[State -1, GET OUT Y]
type = ChangeState
value = 1305
triggerall = var(1) ;Use combo condition (above)
trigger1 = command = "QCB_y" && AILevel = 0
trigger2 = Var(3) = 1 && (AILevel*AILevel*AILevel*2)*0.1 > random
trigger2 = StateNo = 440 && MoveContact
trigger3 = Var(3) = 1 && (AILevel*AILevel*AILevel*2)*0.35 > random
trigger3 = StateNo = 211 && MoveContact && Time = [6,8]

;---------------------------------------------------------------------------
[State -1, HEEERE'S JOHNNY EX]
type = ChangeState
value = 1020
triggerall = power >= 500
triggerall = var(1) ;Use combo condition (above)
trigger1 = command = "QCF_z" && AILevel = 0
trigger2 = Var(3) = 1 && (AILevel*AILevel*AILevel*2)*0.05 > random
trigger2 = P2BodyDist X > 120
trigger3 = Var(3) = 1 && (AILevel*AILevel*AILevel*2)*0.15 > random
trigger3 = P2BodyDist X > 120 && P2MoveType = A

;---------------------------------------------------------------------------
[State -1, HEEERE'S JOHNNIES]
type = ChangeState
value = 1000
triggerall = var(1) ;Use combo condition (above)
trigger1 = command = "QCF_x" && AILevel = 0
trigger2 = Var(3) = 1 && (AILevel*AILevel*AILevel*2)*0.1 > random
trigger2 = P2BodyDist X > 120
trigger3 = Var(3) = 1 && (AILevel*AILevel*AILevel*2)*0.35 > random
trigger3 = P2BodyDist X > 120 && P2MoveType = A

;---------------------------------------------------------------------------
[State -1, HEEEERE'S JOHNNY]
type = ChangeState
value = 1010
triggerall = numprojid(1011) = 0
triggerall = var(1) ;Use combo condition (above)
trigger1 = command = "QCF_y" && AILevel = 0
trigger2 = Var(3) = 1 && (AILevel*AILevel*AILevel*2)*0.1 > random
trigger2 = P2BodyDist X > 120
trigger3 = Var(3) = 1 && (AILevel*AILevel*AILevel*2)*0.35 > random
trigger3 = P2BodyDist X > 120 && P2MoveType = A

;---------------------------------------------------------------------------
[State -1, THAT SHIT I JUST etc EX]
type = ChangeState
value = 1220
triggerall = power >= 500
triggerall = numhelper (1200) = 0
triggerall = var(1) ;Use combo condition (above)
trigger1 = command = "DDZ" && AILevel = 0
trigger2 = (AILevel*AILevel*AILevel*2)*0.05 > random
trigger2 = P2BodyDist X < 120 && EnemyNear,StateNo = [5100,5110]

;---------------------------------------------------------------------------
[State -1, THAT SHIT I JUST etc light]
type = ChangeState
value = 1200
triggerall = numhelper(1200) = 0
triggerall = var(1) ;Use combo condition (above)
trigger1 = command = "DDX" && AILevel = 0
trigger2 = (AILevel*AILevel*AILevel*2)*0.25 > random
trigger2 = P2BodyDist X < 120 && EnemyNear,StateNo = [5100,5110]

;---------------------------------------------------------------------------
[State -1, THAT SHIT I JUST etc heavy]
type = ChangeState
value = 1210
triggerall = numhelper(1200) = 0
triggerall = var(1) ;Use combo condition (above)
trigger1 = command = "DDY" && AILevel = 0
trigger2 = (AILevel*AILevel*AILevel*2)*0.25 > random
trigger2 = P2BodyDist X > 120 && EnemyNear,StateNo = [5100,5110]

;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "FF" && AILevel = 0
trigger2 = (AILevel*AILevel*AILevel*2)*0.25 > random && RoundState = 2
trigger2 = P2BodyDist X = [80,160]

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "BB" && AILevel = 0
trigger2 = EnemyNear,StateType = L && RoundState = 2 && (AILevel*AILevel*AILevel*2)*0.3 > random
trigger2 = P2BodyDist X < 128

;---------------------------------------------------------------------------
[State -1, GET THE FU]
type = ChangeState
value = 800
triggerall = statetype = S
triggerall = stateno != 100
triggerall = (p2statetype = S) || (p2statetype = C)
triggerall = p2movetype != H
trigger1 = ctrl || StateNo = 240
trigger1 = p2bodydist X < 3
trigger1 = command = "holdfwd" && command = "z" ||  Var(3) = 1 && EnemyNear,PrevStateNo != 5120 && (AILevel*AILevel*AILevel*2)*0.9 > random
trigger2 = ctrl || StateNo = 240
trigger2 = p2bodydist X < 5
trigger2 = command = "holdback" && command = "z" || Var(3) = 1 && EnemyNear,PrevStateNo != 5120 && (AILevel*AILevel*AILevel*2)*0.9 > random

;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = statetype != A
trigger1 = ctrl && AILevel = 0
trigger1 = command = "x" && command != "holddown" && command != "holdback"
trigger2 = stateno = 200 && time > 6
trigger2 = command = "x" && command != "holddown" && command != "holdback"
trigger3 = ctrl || StateNo = 200 && Time > 6
trigger3 = Var(3) = 1 && (AILevel*AILevel*AILevel*2)*0.5 > random
trigger3 = P2BodyDist X < 40

;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = statetype != A
trigger1 = ctrl
trigger1 = command = "y" && command != "holddown" && command != "holdfwd"
trigger2 = (stateno = 200 && time > 5) || (stateno = 230 && time > 2)
trigger2 = command = "y" && command != "holddown" && command != "holdfwd"
trigger3 = ctrl
trigger3 = Var(3) = 1 && (AILevel*AILevel*AILevel*2)*0.1 > random
trigger3 = P2BodyDist X < 48
trigger4 = (stateno = 200 && time > 5) || (stateno = 230 && time > 2)
trigger4 = Var(3) = 1 && (AILevel*AILevel*AILevel*2)*0.5 > random
trigger4 = MoveContact

[State -1, double slap]
type = ChangeState
value = 211
triggerall = statetype != A
trigger1 = ctrl
trigger1 = command = "z" && command != "holddown"
trigger2 = stateno = 410 || stateno = 210
trigger2 = time > 5
trigger2 = command = "z" && command != "holddown"
trigger3 = stateno = 200 || stateno = 230 || stateno = 400 || stateno = 430  || stateno = 240
trigger3 = time > 2
trigger3 = command = "z" && command != "holddown"
trigger4 = stateno = 410
trigger4 = time > 5
trigger4 = Var(3) = 1 && (AILevel*AILevel*AILevel*2)*0.25 > random
trigger5 = stateno = 210
trigger5 = time > 7
trigger5 = Var(3) = 1 && (AILevel*AILevel*AILevel*2)*0.45 > random

;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = statetype != A
trigger1 = ctrl
trigger1 = command = "x" && command = "holdback" && command != "holddown"
trigger2 = (stateno = 200 && time > 7) || (stateno = 230 && time > 9)
trigger2 = command = "x" && command = "holdback" && command != "holddown"

;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = statetype != A
trigger1 = ctrl
trigger1 = command = "y" && command = "holdfwd" && command != "holddown"
trigger2 = (stateno = 200 && time > 5) || (stateno = 230 && time > 2)
trigger2 = command = "y" && command = "holdfwd" && command != "holddown"
trigger3 = (stateno = 200 && time > 7) || (stateno = 230 && time > 9)
trigger3 = Var(3) = 1 && (AILevel*AILevel*AILevel*2)*0.2 > random
trigger3 = P2BodyDist X < 128
trigger4 = (stateno = 200 && time > 7) || (stateno = 230 && time > 9)
trigger4 = Var(3) = 1 && (AILevel*AILevel*AILevel*2)*0.5 > random
trigger4 = MoveGuarded

;---------------------------------------------------------------------------
[State -1, Back Taunt]
type = ChangeState
value = 195
triggerall = statetype != A
triggerall = ctrl
trigger1 = command = "start"
trigger1 = command = "holdback" && command != "holddown" && command != "holdfwd"
trigger2 = RoundState = 3 && PrevStateNo != 195 && PrevStateNo != [19500,19510]
trigger2 = (AILevel*AILevel*AILevel*2)*0.25 > random

[State -1, Down Taunt]
type = ChangeState
value = 19501
triggerall = statetype != A
triggerall = ctrl
trigger1 = command = "start"
trigger1 = command != "holdback" && command = "holddown" && command != "holdfwd"
trigger2 = RoundState = 3 && PrevStateNo != 195 && PrevStateNo != [19500,19510]
trigger2 = (AILevel*AILevel*AILevel*2)*0.1 > random

[State -1, Neutral Taunt]
type = ChangeState
value = 19500
triggerall = statetype != A
triggerall = ctrl
trigger1 = command = "start"
trigger1 = command != "holdback" && command != "holddown" && command != "holdfwd"
trigger2 = RoundState = 3 && PrevStateNo != 195 && PrevStateNo != [19500,19510]
trigger2 = (AILevel*AILevel*AILevel*2)*0.35 > random

[State -1, Forward Taunt A]
type = ChangeState
value = 19502
triggerall = numhelper (1200) = 0
triggerall = statetype != A
triggerall = ctrl
trigger1 = command = "start"
trigger1 = command != "holdback" && command != "holddown" && command = "holdfwd"
trigger2 = RoundState = 3 && PrevStateNo != 195 && PrevStateNo != [19500,19510]
trigger2 = (AILevel*AILevel*AILevel*2)*0.25 > random

[State -1, Forward Taunt B]
type = ChangeState
value = 19503
triggerall = numhelper (1200) > 0
triggerall = statetype != A
triggerall = ctrl
trigger1 = command = "start"
trigger1 = command != "holdback" && command != "holddown" && command = "holdfwd"
trigger2 = RoundState = 3 && PrevStateNo != 195 && PrevStateNo != [19500,19510]
trigger2 = (AILevel*AILevel*AILevel*2)*0.25 > random

;---------------------------------------------------------------------------
[State -1, Crouching Light]
type = ChangeState
value = 430
triggerall = statetype != A
trigger1 = command = "x" && command = "holddown"
trigger1 = ctrl
trigger2 = command = "x" && command = "holddown"
trigger2 = stateno = 430
trigger2 = time > 9 || (movecontact && time > 2)
trigger3 = ctrl
trigger3 = Var(3) = 1 && (AILevel*AILevel*AILevel*2)*0.5 > random
trigger3 = P2BodyDist X < 40

;---------------------------------------------------------------------------
[State -1, Crouching Medium]
type = ChangeState
value = 410
triggerall = statetype != A
trigger1 = command = "y" && command = "holddown"
trigger1 = ctrl
trigger2 = command = "y" && command = "holddown"
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 2)
trigger3 = stateno = 400
trigger3 = (time > 9) || (movecontact && time > 2)
trigger3 = Var(3) = 1 && (AILevel*AILevel*AILevel*2)*0.5 > random

[State -1, Crouching Heavy]
type = ChangeState
value = 440
triggerall = statetype != A
trigger1 = command = "z" && command = "holddown"
trigger1 = ctrl
trigger2 = command = "z" && command = "holddown"
trigger2 = stateno = 410 || stateno = 210
trigger2 = time > 5
trigger3 = command = "z" && command = "holddown"
trigger3 = stateno = 200 || stateno = 230 || stateno = 400 || stateno = 430  || stateno = 240
trigger3 = time > 2
trigger4 = stateno = 410
trigger4 = time > 5
trigger4 = Var(3) = 1 && (AILevel*AILevel*AILevel*2)*0.55 > random
trigger5 = stateno = 210
trigger5 = time > 7
trigger5 = Var(3) = 1 && (AILevel*AILevel*AILevel*2)*0.25 > random
trigger6 = stateno = 240
trigger6 = time > 22 && MoveContact
trigger6 = Var(3) = 1 && (AILevel*AILevel*AILevel*2)*0.55 > random

;---------------------------------------------------------------------------
[State -1, Jump Light]
type = ChangeState
value = 630
triggerall = statetype = A
triggerall = ctrl
trigger1 = command = "x"
trigger2 = Var(3) = 1 && (AILevel*AILevel*AILevel*2)*0.5 > random
trigger2 = P2BodyDist X < 40

;---------------------------------------------------------------------------
[State -1, Jump Medium]
type = ChangeState
value = 631
triggerall = statetype = A
trigger1 = command = "y"
trigger1 = ctrl
trigger2 = command = "y"
trigger2 = stateno = 630 ;jump_x or jump_a
trigger2 = time > 3
trigger3 = stateno = 630
trigger3 = MoveContact || Time > 6
trigger3 = Var(3) = 1 && (AILevel*AILevel*AILevel*2)*0.5 > random
trigger3 = P2BodyDist X < 40

;---------------------------------------------------------------------------
[State -1, Heavy]
type = ChangeState
value = 640
triggerall = statetype = A
trigger1 = command = "z"
trigger1 = ctrl
trigger1 = command = "z"
trigger2 = stateno = 630 || stateno = 631 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 631
trigger3 = MoveContact
trigger3 = Var(3) = 1 && (AILevel*AILevel*AILevel*2)*0.5 > random
trigger3 = P2BodyDist X < 40

; EVERY NIGHT I WONDER WHY

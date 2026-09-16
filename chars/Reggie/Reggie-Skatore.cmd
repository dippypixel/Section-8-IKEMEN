;-| Button Remapping |-----------------------------------------------------
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Default Values |-------------------------------------------------------
[Defaults]
command.time = 15
command.buffer.time = 1


;-| Super Motions |--------------------------------------------------------
[Command]
name = "*** Would?X"
command = ~D, DB, B, D, DF, F, x
time = 20

[Command]
name = "*** Would?Y"
command = ~D, DB, B, D, DF, F, y
time = 20

[Command]
name = "DidntWeDeserveALookA"
command = ~D, DF, F, D, DF, F, a
time = 20

[Command]
name = "DidntWeDeserveALookB"
command = ~D, DF, F, D, DF, F, b
time = 20

[Command]
name = "CrashTodayA"
command = ~D, B, D, F, a
time = 20

[Command]
name = "CrashTodayB"
command = ~D, B, D, F, b
time = 20

[Command]
name = "GoodWeatherX"
command = ~D, DF, F, D, DF, F, x
time = 20

[Command]
name = "GoodWeatherY"
command = ~D, DF, F, D, DF, F, y
time = 20

;-| Special Motions |------------------------------------------------------

[Command]
name = "MiracleofSound"
command = ~D, DB, B, a
time = 20

[Command]
name = "MiracleofSound"
command = ~D, B, a
time = 20

[Command]
name = "ByeByeByeB"
command = ~40$B, F, b

[Command]
name = "ByeByeByeA"
command = ~40$B, F, a

[Command]
name = "NaturalHighB"
command = ~40$D, U, y

[Command]
name = "NaturalHighA"
command = ~40$D, U, x

[Command]
name = "PavementSawA"
command = ~40$B, F, x

[Command]
name = "PavementSawB"
command = ~40$B, F, y

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

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
;*** Would?X
[State -1, *** Would?Y]
type = ChangeState
value = 3070
triggerall = power >= 3000
triggerall = statetype != A
triggerall = ctrl || hitdefattr = SC, NA, SA, HA && movecontact
trigger1 = (command = "*** Would?X" || command = "*** Would?Y") && !Var(15)
trigger2 = Var(15) && (Var(15)**3)*2*0.2 > random && RoundState = 2 ; AI chains from charge
trigger2 = (StateNo = 1000 || StateNo = 1010) && !MoveReversed && MoveHit && (Time = [18,20]) && P2Dist X > 8

;---------------------------------------------------------------------------
;Didn'tDeserveA
[State -1, Didn'tDeserve]
type = ChangeState
value = 3053
triggerall = power >= 2000
triggerall = statetype != A
triggerall = ctrl || hitdefattr = SC, NA, SA, HA && movecontact
trigger1 = (command = "DidntWeDeserveALookA" || command = "DidntWeDeserveALookB") && !Var(15)
trigger2 = Var(15) && (Var(15)**3)*2*0.3 > random && RoundState = 2 ; AI chains from charge
trigger2 = (StateNo = 1000 || StateNo = 1010) && !MoveReversed && MoveHit && (Time = [18,20]) && Abs(P2Dist Y) < 40 && P2Dist X > 8

;---------------------------------------------------------------------------
;Crash TodayA
[State -1, Crash TodayA]
type = ChangeState
value = 3050
triggerall = power >= 1000
triggerall = statetype != A
triggerall = ctrl || hitdefattr = SC, NA, SA, HA && movecontact
trigger1 = (command = "CrashTodayA" || command = "CrashTodayB") && !Var(15)
trigger2 = Var(15) && (Var(15)**3)*2*0.6 > random && RoundState = 2 ; AI chains from charge
trigger2 = (StateNo = 1000 || StateNo = 1010) && !MoveReversed && MoveHit && (Time = [18,20]) && P2Dist X > 8

;---------------------------------------------------------------------------
;Good Weather for an AirstrikeX
[State -1, Good Weather for an AirstrikeX]
type = ChangeState
value = 3000
triggerall = power >= 1000
triggerall = statetype != A
triggerall = ctrl || hitdefattr = SC, NA, SA, HA && movecontact
trigger1 = (command = "GoodWeatherX" || command = "GoodWeatherY") && !Var(15)
trigger2 = Var(15) && (Var(15)**3)*2*0.2 > random && RoundState = 2 ; AI attempts to zone
trigger2 = P2BodyDist X > 160 && P2MoveType = A && P2StateType != A

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
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact
var(1) = 1

;Miracle of Sound in Motion (weak)
[State -1, Boomba]
type = ChangeState
value = 10500
triggerall = statetype = A
triggerall = ctrl
trigger1 = command = "MiracleofSound" && !Var(15)

;-----------------------------------------------------------
;Natural High of Bloodstone (strong)
[State -1, Natural High B]
type = ChangeState
value = 1063
triggerall = var(1) || StateNo = 40
trigger1 = command = "NaturalHighB" && !Var(15)
trigger2 = Var(15) && (Var(15)**3)*2*0.9 > random && RoundState = 2 ; AI chains from heavy basics
trigger2 = (StateNo = 210 || StateNo = 410) && !MoveReversed && MoveHit && Abs(P2Dist Y) >= 56

;---------------------------------------------------------------------------
;Natural High of Bloodstone (weak)
[State -1, Natural High A]
type = ChangeState
value = 1060
triggerall = var(1) || StateNo = 40
trigger1 = command = "NaturalHighA" && !Var(15)
trigger2 = Var(15) && (Var(15)**3)*2*0.9 > random && RoundState = 2 ; AI attempts to AA
trigger2 = Abs(P2Dist X) < 24 && Abs(P2Dist Y) > 48 && P2StateNo < 5100

;-----------------------------------------------------------
;---------------------------------------------------------------------------
;Pavement Saw (weak)
[State -1, Pavement Saw A]
type = ChangeState
value = 1000
triggerall = var(1) ;Use combo condition (above)
trigger1 = command = "PavementSawA" && !Var(15)

;---------------------------------------------------------------------------
;Pavement Saw (strong)
[State -1, Pavement Saw B]
type = ChangeState
value = 1010
triggerall = var(1) ;Use combo condition (above)
trigger1 = command = "PavementSawB" && !Var(15)
trigger2 = Var(15) && (Var(15)**3)*2*0.9 > random && RoundState = 2 ; AI chains from heavy basics
trigger2 = (StateNo = 210 || StateNo = 410) && !MoveReversed && MoveHit && Abs(P2Dist Y) < 56

;-----------------------------------------------------------
;Bye Bye Bye (weak)
[State -1, Bye Bye Bye A]
type = ChangeState
value = 1200
triggerall = var(1) ;Use combo condition (above)
trigger1 = command = "ByeByeByeA" && !Var(15)
trigger2 = Var(15) && (Var(15)**3)*2*0.9 > random && RoundState = 2 ; AI attempts to OTG
trigger2 = EnemyNear,StateNo = 5100

;-----------------------------------------------------------
;Bye Bye Bye (strong)
[State -1, Bye Bye Bye B]
type = ChangeState
value = 1210
triggerall = var(1) ;Use combo condition (above)
trigger1 = command = "ByeByeByeB" && !Var(15)
trigger2 = Var(15) && (Var(15)**3)*2*0.3 > random && RoundState = 2 ; AI starts the attack
trigger2 = P2BodyDist X > 48 && P2BodyDist X < 160 && P2StateType != A && P2StateNo < 5100

;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "FF" && !Var(15)
trigger2 = Var(15) && (Var(15)**3)*2*0.5 > random && RoundState = 2 ; AI runs in on flying opponent
trigger2 = P2BodyDist X >= 48 && (P2StateNo = [5030,5100))
trigger3 = Var(15) && (Var(15)**3)*2*0.2 > random && RoundState = 2 ; AI runs in
trigger3 = P2BodyDist X >= 80

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "BB" && !Var(15)
trigger2 = Var(15) && (Var(15)**3)*2*0.2 > random && RoundState = 2 ; AI runs in
trigger2 = P2BodyDist X < 32 && (EnemyNear,Stateno = [5110,5120])

;---------------------------------------------------------------------------
;Fly For Me
[State -1, Kung Fu Throw]
type = ChangeState
value = 280
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = p2bodydist X < 5
triggerall = (p2statetype = S) || (p2statetype = C)
triggerall = p2movetype != H
trigger1 = command = "y" && (command = "holdfwd" || command = "holdback") && !Var(15)
trigger2 = Var(15) && (Var(15)**3)*2*0.9 > random && RoundState = 2 ; AI throws frequently
trigger2 = EnemyNear,PrevStateNo != 5120 && Enemy,StateNo < 5000

;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = statetype != A
triggerall = ctrl || stateno = 200 && time >= 5
trigger1 = command = "x" && command != "holddown" && !Var(15)
trigger2 = Var(15) && (Var(15)**3)*2*0.6 > random && RoundState = 2 ; AI starts the attack
trigger2 = P2BodyDist X < 32 && (abs(P2Dist Y) = [0,64]) && P2StateNo < 5100

;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = statetype != A
triggerall = ctrl || (stateno = 200 || stateno = 230) && movecontact
trigger1 = command = "y" && command != "holddown" && !Var(15)
trigger2 = Var(15) && (Var(15)**3)*2*0.9 > random && RoundState = 2 ; AI chains from light kick
trigger2 = StateNo = 230 && !MoveReversed && EnemyNear,StateType != A
trigger3 = Var(15) && (Var(15)**3)*2*0.9 > random && RoundState = 2 ; AI chains from light punch on airborne opponent
trigger3 = StateNo = 200 && !MoveReversed && EnemyNear,StateType = A

;Stand Heavy Attack
[State -1, Heavy Attack]
type = ChangeState
value = 220
triggerall = statetype != A
triggerall = ctrl || (stateno = 200 || stateno = 230) && movecontact
trigger1 = command = "z" && command != "holddown" && !Var(15)

;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = statetype != A
triggerall = ctrl || stateno = 200 && movecontact
trigger1 = command = "a" && command != "holddown" && !Var(15)
trigger2 = Var(15) && (Var(15)**3)*2*0.9 > random && RoundState = 2 ; AI chains from light punch
trigger2 = StateNo = 200 && !MoveReversed && EnemyNear,StateType != A

;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = statetype != A
triggerall = ctrl || stateno = 200 && movecontact
trigger1 = command = "b" && command != "holddown" && !Var(15)

;---------------------------------------------------------------------------
;Dodge
[State -1, Dodge]
type = ChangeState
value = 196
triggerall = statetype != A
triggerall = ctrl
trigger1 = command = "c" && command != "holddown" && !Var(15)

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = statetype != A
triggerall = ctrl
trigger1 = command = "start" && !Var(15)

;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = statetype != A
triggerall = ctrl
trigger1 = command = "x" && command = "holddown" && !Var(15)
trigger2 = Var(15) && (Var(15)**3)*2*0.6 > random && RoundState = 2 ; AI starts the attack
trigger2 = P2BodyDist X < 32 && P2StateType != A && P2StateNo < 5100

;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = statetype != A
triggerall = ctrl || (stateno = 400 || stateno = 430) && movecontact
trigger1 = command = "y" && command = "holddown" && !Var(15)
trigger2 = Var(15) && (Var(15)**3)*2*0.9 > random && RoundState = 2 ; AI chains from light kick
trigger2 = StateNo = 430 && !MoveReversed && EnemyNear,StateType != A

;Crouching Heavy Attack
[State -1, Crouching Heavy Attack]
type = ChangeState
value = 420
triggerall = statetype != A
triggerall = ctrl || (stateno = 400 || stateno = 430) && movecontact
trigger1 = command = "z" && command = "holddown" && !Var(15)

;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = statetype != A
triggerall = ctrl || (stateno = 400 || stateno = 430) && movecontact
trigger1 = command = "a" && command = "holddown" && !Var(15)
trigger2 = Var(15) && (Var(15)**3)*2*0.9 > random && RoundState = 2 ; AI chains from light punch
trigger2 = StateNo = 400 && !MoveReversed

;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = statetype != A
triggerall = ctrl || (stateno = 400 || stateno = 430) && movecontact
trigger1 = command = "b" && command = "holddown" && !Var(15)

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = statetype = A
triggerall = ctrl
trigger1 = command = "x" && !Var(15)
trigger2 = Var(15) && (Var(15)**3)*2*0.6 > random && RoundState = 2 ; AI starts the attack
trigger2 = P2BodyDist X < 32 && Abs(P2Dist Y + 40) < 48

;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = statetype = A
triggerall = ctrl || (stateno = 600 || stateno = 630) && movecontact
trigger1 = command = "y" && !Var(15)
trigger2 = Var(15) && (Var(15)**3)*2*0.9 > random && RoundState = 2 ; AI chains from light punch
trigger2 = StateNo = 600 && !MoveReversed

;Jump Strong Attack
[State -1, Jump Strong Attack]
type = ChangeState
value = 620
triggerall = statetype = A
triggerall = ctrl
trigger1 = command = "z" && !Var(15)

;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = statetype = A
triggerall = ctrl
trigger1 = command = "a" && !Var(15)

;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = statetype = A
triggerall = ctrl || (stateno = 600 || stateno = 630) && movecontact
trigger1 = command = "b" && !Var(15)
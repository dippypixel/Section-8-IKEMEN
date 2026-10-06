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

;-| Hyper Motions |--------------------------------------------------------
[Command]
name = "Da Wae"     ;Required (do not remove)
command = ~D, F, a+b
time = 10

[Command]
name = "PUT YOUR HANDS UP"     ;Required (do not remove)
command = ~D, F, x+y
time = 10

;-| Special Motions |------------------------------------------------------
[Command]
name = "Fireball"     ;Required (do not remove)
command = ~D, F, x
time = 10

[Command]
name = "Crashin"     ;Required (do not remove)
command = ~D, F, y
time = 10

[Command]
name = "JOOOH"     ;Required (do not remove)
command = ~D, B, x
time = 10

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
name = "DU"
command = ~D, U
time = 5

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

[Command]
name = "holdc";Required (do not remove)
command = /c
time = 1

; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;===================== AI Code ============================================
[State -1, AI ON]
Type = VarSet
TriggerAll = Var(59) < 1
TriggerAll = RoundState=2
Trigger1 = AILevel>0
v = 59
value= 1
Ignorehitpause=1

[State -1, AI OFF]
Type=VarSet
Trigger1 = var(59)>0
Trigger1 = RoundState!=2
Trigger2 = !IsHelper
Trigger2 = AILevel=0
v = 59
value = 0
Ignorehitpause = 1

[State -1, AssertSpecial AI]
Type=Assertspecial
Triggerall = StateNo!=[120,160]
Trigger1 = var(59)>0
flag = noairguard
flag2 = nocrouchguard
flag3 = nostandguard

[State -1, AssertSpecial AI]
type = AssertSpecial
trigger1 = var(59)>0
flag = nowalk

[State -1, Recovery AI];DS12
type = ChangeState
triggerall = Var(59)>0
triggerall= NumEnemy
triggerall= Roundstate = 2 && Alive
triggerall= Stateno = 5050 && CanRecover
triggerall = Vel y > 0 && Pos y < -20
trigger1 = Random <= 999
value = 5210

[State -1, Recovery AI];DS12
type = ChangeState
triggerall = Var(59)>0
triggerall = NumEnemy
triggerall = Roundstate = 2 && Alive
triggerall = Stateno = 5050 && GetHitVar(fall.recover)
trigger1 = Vel y > 0 && Pos y >= -5
value = 5200

[State -1, Run Forward AI]
Type = changestate
triggerall = var(59)>0
triggerall = Ctrl
triggerall = StateType = S
trigger1 = P2StateType != L
trigger1 = P2MoveType != A
trigger1 = Random < 500
trigger1 = P2BodyDist x >= 120
value = 102

[State -1, Run Backwards AI]
Type = changestate
triggerall = var(59)>0
triggerall = Ctrl
triggerall = StateType = S
triggerall = !backedgedist <= 30
trigger1 = P2StateType = L
trigger1 = P2MoveType = H
trigger1 = Random < 500
trigger1 = P2BodyDist x <= 180
value = 103

[State -1, Walk Forwards AI]
Type = changestate
triggerall = var(59)>0
triggerall = Ctrl
triggerall = StateType = S
triggerall = P2StateType != L
triggerall = P2MoveType != A
trigger1 = Random < 300
trigger1 = P2BodyDist x = [20,120]
value = 21

[State -1, Super Jump AI]
Type=Changestate
triggerall = var(59)>0
triggerall = !StateType = A
trigger1 = ctrl = 0
trigger1 = stateno = 410 && movecontact
value = 901

[State -1, Super Jump AI]
Type=Changestate
triggerall = var(59)>0
triggerall = !StateType = A
trigger1 = ctrl
trigger1 = P2StateType = A
trigger1 = P2BodyDist y <= -150
value = 902

[State -1, PowerCharge AI]
type = ChangeState
triggerall = var(59)>0
triggerall = !StateType = A
triggerall = Ctrl
triggerall = Power < PowerMax
triggerall = Random < 180
trigger1 = P2bodyDist x >= 180
trigger1 = P2MoveType != A
value = 907

[State -1, Crashin AI]
type = ChangeState
triggerall = var(59)>0
triggerall = !Statetype = A
triggerall = Ctrl
triggerall = !P2StateType = L
triggerall = Random < 200
trigger1 = P2BodyDist Y >= -120
trigger1 = P2StateType = A
trigger1 = P2BodyDist X <= 28
trigger2 = P2MoveType = A
trigger2 = P2BodyDist X <= 28
trigger2 = P2StateType = S
value = 1010

[State -1, Fireball AI]
type = ChangeState
triggerall = var(59)>0
triggerall = Ctrl
triggerall = numhelper(1002)= 0 && numhelper(1003) = 0
triggerall = Random < 400
triggerall = !StateType = A
trigger1 = P2bodyDist x >= 120
trigger1 = P2MoveType != A
value = 1000

[State -1, Fireball AIR AI]
type = ChangeState
Triggerall = var(59)>0
triggerall = Ctrl = 0
triggerall = StateType = A
trigger1 = Stateno = 610 && MoveContact
value= 1001

[State -1, Jump AI]
type = ChangeState
triggerall = Var(59)>0
triggerall = !StateType = A
trigger1 = Ctrl
trigger1 = P2StateType != L
trigger1 = P2MoveType != A
trigger1 = Random < 400
trigger1 = P2BodyDist x >= 100
trigger2 = ctrl = 0
trigger2 = Stateno = 1020 && MoveHit
trigger2 = Time = 5
trigger2 = Random < 1000
value = 41

[State -1, AirDash Forward AI]
type = ChangeState
triggerall = Var(59)>0
triggerall = Ctrl
triggerall = StateType = A
triggerall = P2StateType != L 
trigger1 = StateNo = 50 && Time = 2
value = 110

[State -1, AirDash Back From Knockdown AI]
type = ChangeState
triggerall = Var(59)>0
triggerall = Ctrl
triggerall = StateType = A
triggerall = P2StateType = L
triggerall = P2BodyDist x <= 100
trigger1 = StateNo = 50 && Time > 2
value = 115

[State -1, DA WAE AI]
type = ChangeState
triggerall = var(59)>0
triggerall = Power >= 2000
triggerall = Statetype = S
trigger1 = P2MoveType = A
trigger1 = P2BodyDist X >= 110
trigger1 = P2Bodydist Y >= -130
trigger1 = Random < 500
trigger1 = Ctrl
value = 3005

[State -1, PUT YOUR HANDS UP AI]
type = ChangeState
triggerall = var(59)>0
triggerall = Power >= 1000
triggerall = !Statetype = A
trigger1 = Stateno = 1020 && MoveHit
trigger1 = Time = 5
trigger1 = Random < 900
trigger1 = Ctrl = 0
value = 3000

[State -1, Grab AI]
type = ChangeState
triggerall = var(59)>0
triggerall = !P2Statetype = L
triggerall = !P2Statetype = A
triggerall = !P2Movetype = H
triggerall = !Statetype = A
triggerall = Ctrl
triggerall = P2Bodydist X <= 12
triggerall = Stateno != 100
triggerall = Stateno != 101
trigger1 = Random < 300
value = 800

[State -1, Taunt AI]
type = ChangeState
value = 1950
triggerall = AILevel > 0
triggerall = StateType != A
triggerall = Ctrl
trigger1 = RoundState = 3
trigger1 = Win
trigger1 = Alive
trigger1 = PrevStateno != 1950

[State -1, JOOHH AI]
type = ChangeState
triggerall = var(59)>0
triggerall = Statetype = S
trigger1 = Ctrl = 0
trigger1 = Stateno = 240 && MoveHit
value = 1020

[State -1, Launcher Standing AI]
type = ChangeState
triggerall = var(59)>0
triggerall = !Statetype = A
triggerall = Ctrl = 0
trigger1 = Stateno = 210 && MoveContact
trigger1 = P2StateType = A
trigger2 = Stateno = 200 && MoveContact
trigger2 = P2StateType = A
trigger3 = Stateno = 230 && MoveContact
trigger3 = P2StateType = A
value = 410

[State -1, Launcher Crouching AI]
type = ChangeState
triggerall = var(59)>0
triggerall = !Statetype = A
triggerall = Ctrl = 0
trigger1 = Stateno = 440 && MoveContact
trigger2 = Stateno = 400 && MoveContact
trigger2 = P2StateType = A
trigger3 = Stateno = 430 && MoveContact
trigger3 = P2StateType = A
value = 410

[State -1, Standing Combo Starter AI]
type = ChangeState
triggerall = var(59)>0
triggerall = !StateType = A
triggerall = !P2StateType = L
triggerall = P2BodyDist X <= 20
triggerall = P2BodyDist Y >= -60
triggerall = !InGuardDist
trigger1 = Ctrl
trigger1 = Random < 500
value = 200

[State -1, Standing Combo AI]
type = ChangeState
triggerall = var(59)>0
triggerall = Statetype = S
trigger1 = Ctrl = 0
trigger1 = Stateno = 200 && MoveContact
value = 230

[State -1, Standing Combo AI]
type = ChangeState
triggerall = var(59)>0
triggerall = Statetype = S
trigger1 = Ctrl = 0
trigger1 = Stateno = 230 && MoveHit
value = 210

[State -1, Standing Combo AI]
type = ChangeState
triggerall = var(59)>0
triggerall = Statetype = S
trigger1 = Ctrl = 0
trigger1 = Stateno = 210 && MoveHit
value = 240

[State -1, Crouching Guarded Combo AI]
type = ChangeState
triggerall = var(59)>0
triggerall = !Statetype = A
trigger1 = Ctrl = 0
trigger1 = Stateno = 230 && MoveGuarded
value = 430

[State -1, Crouching Combo AI]
type = ChangeState
triggerall = var(59)>0
triggerall = Statetype = C
triggerall = Ctrl = 0
trigger1 = Stateno = 430 && MoveContact
trigger2 = Stateno = 240 && MoveContact
trigger2 = random < 300
value = 440

[State -1, Air Combo Starter AI]
type = ChangeState
triggerall = var(59)>0
triggerall = Ctrl
triggerall = StateType = A
triggerall = !InGuardDist
trigger1 = P2MoveType = H && P2StateType = A
trigger1 = Stateno = 901 && Time = 13
trigger2 = Stateno != 901 && P2BodyDist x = [0,23]
value= 600

[State -1, Air Combo AI]
type = ChangeState
Triggerall = var(59)>0
triggerall = Ctrl = 0
triggerall = StateType = A
trigger1 = Stateno = 600 && MoveContact
value= 630

[State -1, Air Combo AI]
type = ChangeState
Triggerall = var(59)>0
triggerall = Ctrl = 0
triggerall = StateType = A
trigger1 = Stateno = 630 && MoveContact
value= 640

[State -1, Air Combo AI]
type = ChangeState
Triggerall = var(59)>0
triggerall = Ctrl = 0
triggerall = StateType = A
trigger1 = Stateno = 640 && MoveContact
value= 610

;===========================================================================
;---------------------------------------------------------------------------
;He Doesn't Know Da Wae
[State -1, Da Wae]
type = ChangeState
value = 3005
triggerall = !var(59)>0
triggerall = StateType != A
triggerall = power >= 2000
triggerall = command = "Da Wae"
triggerall = numhelper(3006)=0
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 230 || stateno = 240 || stateno = 400 || stateno = 410 || stateno = 430 || stateno = 440) && movecontact
trigger2 = time > 2
trigger3 = stateno = 1000
trigger3 = time > 4
trigger4 = stateno = 1020 && movecontact
trigger4 = time > 4

;---------------------------------------------------------------------------
;PUT YOUR HANDS UP
[State -1, PUT YOUR HANDS UP]
type = ChangeState
value = 3000
triggerall = !var(59)>0
triggerall = StateType != A
triggerall = power >= 1000
triggerall = command = "PUT YOUR HANDS UP"
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 230 || stateno = 240 || stateno = 400 || stateno = 410 || stateno = 430 || stateno = 440) && movecontact
trigger2 = time > 2
trigger3 = stateno = 1000
trigger3 = time > 4
trigger4 = stateno = 1020 && movecontact
trigger4 = time > 4

;===========================================================================
;---------------------------------------------------------------------------
;JOOOH
[State -1, JOOOH]
type = ChangeState
value = 1020
triggerall = !var(59)>0
triggerall = command = "JOOOH"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 230 || stateno = 240 || stateno = 400 || stateno = 410 || stateno = 430 || stateno = 440) && movecontact
trigger2 = time > 2

;---------------------------------------------------------------------------
;Crashin
[State -1, Crashin]
type = ChangeState
value = 1010
triggerall = !var(59)>0
triggerall = command = "Crashin"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 230 || stateno = 240 || stateno = 400 || stateno = 410 || stateno = 430 || stateno = 440) && movecontact
trigger2 = time > 2

;---------------------------------------------------------------------------
;Crashin AIR
[State -1, Crashin AIR]
type = ChangeState
value = 1015
triggerall = !var(59)>0
triggerall = command = "Crashin"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600 || stateno = 630 || stateno = 640) && movecontact
trigger2 = time > 2

;---------------------------------------------------------------------------
;Fireball
[State -1, Fireball]
type = ChangeState
value = 1000
triggerall = !var(59)>0
triggerall = numhelper(1002)= 0 && numhelper(1003) = 0
triggerall = command = "Fireball"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 230 || stateno = 240 || stateno = 400 || stateno = 410 || stateno = 430 || stateno = 440) && movecontact
trigger2 = time > 2

;---------------------------------------------------------------------------
;Fireball AIR
[State -1, Fireball AIR]
type = ChangeState
value = 1001
triggerall = !var(59)>0
triggerall = numhelper(1002)= 0 && numhelper(1003) = 0
triggerall = command = "Fireball"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600 || stateno = 610 || stateno = 630 || stateno = 640) && movecontact
trigger2 = time > 2

;===========================================================================
;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 1950
triggerall = !var(59)>0
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = !var(59)>0
triggerall = command = "z"
triggerall = statetype = S
triggerall = stateno != 100
trigger1 = ctrl

;---------------------------------------------------------------------------
;Super Jump
[State -1, Super Jump]
type = ChangeState
value = 900
triggerall = !var(59)>0
trigger1 = command = "DU"
trigger1 = ctrl
trigger1 = statetype != A
trigger2 = stateno = 410 && movecontact && (command = "holdup")
trigger2 = time > 1
ignorehitpause = 1

;---------------------------------------------------------------------------
;Jump Cancel
[State -1, Jump Cancel]
type = ChangeState
value = 40
triggerall = !var(59)>0
triggerall = command = "holdup"
trigger1 = stateno = 1020 && movecontact
trigger1 = time > 2

;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = !var(59)>0
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = !var(59)>0
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Airdash Back
[State -1, Airdash Fwd]
type = ChangeState
value = 110
triggerall = stateno != 110 && stateno != 115
triggerall = !var(59)>0
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Airdash Back
[State -1, Airdash Back]
type = ChangeState
value = 115
triggerall = stateno != 110 && stateno != 115
triggerall = !var(59)>0
trigger1 = command = "BB"
trigger1 = statetype = A
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = !var(59)>0
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = !var(59)>0
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 230) && movecontact
trigger2 = time > 2

;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = !var(59)>0
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger2 = time > 2

;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = !var(59)>0
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 230) && movecontact
trigger2 = time > 2

;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = !var(59)>0
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger2 = time > 2

;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = !var(59)>0
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 230 || stateno = 400 || stateno = 430 || stateno = 440) && movecontact
trigger2 = time > 2

;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = !var(59)>0
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 230 || stateno = 400) && movecontact
trigger2 = time > 2

;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = !var(59)>0
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 230 || stateno = 240 || stateno = 400 || stateno = 430) && movecontact
trigger2 = time > 2

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = !var(59)>0
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = !var(59)>0
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600 || stateno = 630 || stateno = 640) && movecontact
trigger2 = time > 2

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = !var(59)>0
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger2 = time > 2

;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = !var(59)>0
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600 || stateno = 630) && movecontact
trigger2 = time > 2

;----------------------------------------------------------------------------------
;PowerCharge
[State -1, Powercharge]
type = Changestate
value = 905
triggerall = !var(59)>0
trigger1 = command = "holdc"
trigger1 = power < powermax
trigger1 = ctrl
trigger1 = statetype != A
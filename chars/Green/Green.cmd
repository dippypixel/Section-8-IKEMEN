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

;-| Hyper Motions |------------------------------------------------------
[Command]
name = "i summon sentry!"
command = ~D, F, x+y
time = 10

[Command]
name = "Big Ol' Fish"
command = ~D, B, x+y
time = 10

[Command]
name = "Tesla CyberWhat"
command = ~D, F, a+b
time = 10

[Command]
name = "Flinstone Blast"
command = ~D, B, a+b
time = 10

[Command]
name = "die a few deaths"
command = ~x, x, F, a, z
time = 30

[Command]
name = "im feeling kinda super"
command = ~D, B, b+c
time = 10

;-| Special Motions |------------------------------------------------------
[Command]
name = "CLAPPED"
command = c+z
time = 10

[Command]
name = "charge up boy"
command = /y+b
time=1

[Command]
name = "Genocide Cutter"
command = ~F, D, F, a
time = 10

[Command]
name = "Power Wave"
command = ~D, F, z
time = 10

[Command]
name = "DeepFreeze"
command = ~D, F, y
time = 10

[Command]
name = "Bald"
command = ~D, F, x
time = 10

[Command]
name = "Mario Spin"
command = ~D, B, x
time = 10

[Command]
name = "police i swear to god!"
command = ~D, B, y
time = 10

[Command]
name = "My Feet Got Hands"
command = ~D, F, a
time = 10

[Command]
name = "Fish!"
command = ~D, F, b
time = 10

[Command]
name = "RED"
command = ~D, B, a
time = 10

[Command]
name = "CAMBO"
command = ~D, B, b
time = 10

[Command]
name = "VERT"
command = ~D, B, c
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

[Command]
name = "Grab";Required (do not remove)
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
name = "holdb"
command = /b
time = 1

[Command]
name = "holdy"
command = /y
time = 1

;---------------------------------------------------------------------------
; 2. State entry
; --------------
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

[State -1, Recovery AI];ds12
type = ChangeState
triggerall = Var(59)>0
triggerall= NumEnemy
triggerall= Roundstate = 2 && Alive
triggerall= Stateno = 5050 && CanRecover
triggerall = Vel y > 0 && Pos y < -20
trigger1 = Random <= 999
value = 5210

[State -1, Recovery AI];ds12
type = ChangeState
triggerall = Var(59)>0
triggerall = NumEnemy
triggerall = Roundstate = 2 && Alive
triggerall = Stateno = 5050 && GetHitVar(fall.recover)
trigger1 = Vel y > 0 && Pos y >= -5
value = 5200

[State -1, Star Hyper Move AI]
type = ChangeState
triggerall = !var(3)>0
triggerall = var(59)>0
triggerall = Ctrl
triggerall = Statetype = S
trigger1 = Power >= 4000
value = 3015

[State -1, Guard Break AI]
type = ChangeState
triggerall = var(59)>0
triggerall = Power >= 1000
triggerall = Statetype != A
trigger1 = Stateno = [150,153] 
trigger1 = P2BodyDist x <= 30
value = 700

[State -1, Burst AI]
type = ChangeState
triggerall = !var(3)>0
triggerall = var(59)>0
triggerall = Ctrl = 0
triggerall = Movetype = H
triggerall = !var(4)>0
triggerall = Stateno != [150,155]
trigger1 = Life <= 350
value = 710

[State -1, Run Forward AI]
Type = changestate
triggerall = var(59)>0
triggerall = Ctrl
triggerall = StateType = S
trigger1 = P2StateType != L
trigger1 = P2MoveType != A
trigger1 = Random < 500
trigger1 = P2BodyDist x >= 25
trigger1 = P2Stateno = 701 || P2Stateno = 1053 
trigger2 = var(3)>0
trigger2 = P2BodyDist x >= 25
value = 102

[State -1, Walk Forwards AI]
Type = changestate
triggerall = !var(3)>0
triggerall = var(59)>0
triggerall = Ctrl
triggerall = StateType = S
triggerall = P2StateType != L
triggerall = P2MoveType != A
triggerall = P2Stateno != 701 || P2Stateno != 1053 
trigger1 = Random < 300
trigger1 = P2BodyDist x = [0,110]
value = 21

[State -1, Super Jump AI]
Type=Changestate
triggerall = var(59)>0
triggerall = !StateType = A
trigger1 = ctrl = 0
trigger1 = stateno = 440 && movecontact
trigger2 = !stateno = 440
value = 9001

[State -1, Assist AI]
type = ChangeState
triggerall = !var(3)>0
triggerall = var(59)>0
triggerall = !StateType = A
triggerall = Ctrl
triggerall = Random < 800
triggerall = numhelper(2001)=0
triggerall = numhelper(2002)=0
triggerall = numhelper(2003)=0
trigger1 = P2bodyDist x >= 120
value = 2000+random%3

[State -1, PowerCharge AI]
type = ChangeState
triggerall = !var(3)>0
triggerall = var(59)>0
triggerall = !StateType = A
triggerall = Ctrl
triggerall = Power < PowerMax
triggerall = Random < 180
triggerall = P2Stateno != 701
triggerall = P2Stateno != 1053 
trigger1 = P2bodyDist x >= 185
trigger1 = P2MoveType != A
value = 992

[State -1, Genocide Cutter AI]
type = ChangeState
triggerall = !var(3)>0
triggerall = var(59)>0
triggerall = !Statetype = A
triggerall = Ctrl
triggerall = !P2StateType = L
trigger1 = P2StateType = A
trigger1 = P2BodyDist X <= 25
trigger1 = P2BodyDist Y >= -120
trigger1 = Random < 500
trigger2 = P2MoveType = A
trigger2 = P2BodyDist X <= 20
trigger2 = P2StateType = S
value = 1025

[State -1, Projectile AI]
type = ChangeState
triggerall = !var(3)>0
triggerall = var(59)>0
triggerall = Ctrl
triggerall = numhelper(1006)=0
triggerall = numhelper(1002)=0
triggerall = Random < 400
triggerall = !StateType = A
triggerall = P2Stateno != 701
triggerall = P2Stateno != 1053 
trigger1 = P2bodyDist x >= 110
trigger1 = P2MoveType != A
value = 1005

[State -1, Projectile AI]
type = ChangeState
triggerall = !var(3)>0
triggerall = var(59)>0
triggerall = Ctrl
triggerall = numhelper(1002)=0
triggerall = Random < 300
triggerall = !StateType = A
triggerall = P2Stateno != 701
triggerall = P2Stateno != 1053 
trigger1 = P2bodyDist x >= 110
trigger1 = P2MoveType != A
value = 1000

[State -1, Projectile AI]
type = ChangeState
triggerall = !var(3)>0
triggerall = var(59)>0
triggerall = Ctrl
triggerall = numhelper(1002)=0
triggerall = Power >= 500
triggerall = Power != [4000,10000]
triggerall = Random < 100
triggerall = !StateType = A
triggerall = P2Stateno != 701
triggerall = P2Stateno != 1053 
trigger1 = P2bodyDist x >= 110
trigger1 = P2MoveType != A
value = 1050

[State -1, Knockdown Jump AI]
type = ChangeState
triggerall = !Var(3)>0
triggerall = Var(59)>0
triggerall = Ctrl
triggerall = !StateType = A
triggerall = P2StateType = L
trigger1 = P2BodyDist x <= 110
value = 41

[State -1, AirDash Forward AI]
type = ChangeState
triggerall = Var(3)>0
triggerall = Var(59)>0
triggerall = Ctrl
triggerall = StateType = A
trigger1 = StateNo = 50 && Time > 2
value = 110

[State -1, AirDash Back From Knockdown AI]
type = ChangeState
triggerall = !Var(3)>0
triggerall = Var(59)>0
triggerall = Ctrl
triggerall = StateType = A
triggerall = P2StateType = L
trigger1 = StateNo = 50 && Time > 2
value = 115

[State -1, Fish Hyper Move AI]
type = ChangeState
triggerall = var(59)>0
triggerall = !Statetype = A
triggerall = Power >= 1000
trigger1 = P2MoveType = A
trigger1 = P2BodyDist X <= 60
trigger1 = P2Bodydist Y >= -100
trigger1 = Random < 500
trigger1 = Ctrl
trigger2 = Stateno = 1020 && MoveContact
trigger2 = Time > 51
value = 3005

[State -1, Tesla Hyper Move AI]
type = ChangeState
triggerall = var(59)>0
triggerall = Power >= 2000
triggerall = Statetype = S
trigger1 = Stateno = 3005 && MoveContact
trigger1 = Time > 67
trigger1 = Random < 405
trigger1 = Ctrl = 0
trigger2 = P2MoveType = A
trigger2 = P2BodyDist X >= 110
trigger2 = P2Bodydist Y >= -130
trigger2 = Random < 500
trigger2 = Ctrl
value = 3025

[State -1, Yabba Hyper Move AI]
type = ChangeState
triggerall = var(59)>0
triggerall = Power >= 2000
trigger1 = !Statetype = A
trigger1 = Stateno = 3005 && MoveContact
trigger1 = Time > 67
trigger1 = Random < 400
trigger1 = Ctrl = 0
trigger2 = Stateno = 1021 && MoveContact
trigger2 = Time > 52
trigger2 = Random < 400
trigger2 = Ctrl = 0
value = 3000

[State -1, Sentry Hyper Move AI]
type = ChangeState
triggerall = var(59)>0
triggerall = !Statetype = A
triggerall = Power >= 1500
triggerall = !stateno = 3010
trigger1 = Stateno = 3005 && MoveContact
trigger1 = Time > 67
trigger1 = Random < 300
trigger1 = Ctrl = 0
value = 3010

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
trigger1 = Random < 360
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

[State -1, Launcher Standing AI]
type = ChangeState
triggerall = var(59)>0
triggerall = !Statetype = A
triggerall = Ctrl = 0
trigger1 = Stateno = 210 && MoveContact
trigger1 = P2StateType = A
trigger2 = Stateno = 200 && MoveContact
trigger2 = P2StateType = A
trigger3 = Stateno = 205 && MoveContact
trigger3 = P2StateType = A
trigger4 = Stateno = 230 && MoveContact
trigger4 = P2StateType = A
trigger5 = Stateno = 235 && MoveContact
trigger5 = P2StateType = A
value = 440

[State -1, Launcher Crouching AI]
type = ChangeState
triggerall = var(59)>0
triggerall = !Statetype = A
triggerall = Ctrl = 0
trigger1 = Stateno = 410 && MoveContact
trigger2 = Stateno = 400 && MoveContact
trigger2 = P2StateType = A
trigger3 = Stateno = 405 && MoveContact
trigger3 = P2StateType = A
trigger4 = Stateno = 430 && MoveContact
trigger4 = P2StateType = A
trigger5 = Stateno = 435 && MoveContact
trigger5 = P2StateType = A
value = 440

[State -1, Standing Combo Starter AI]
type = ChangeState
triggerall = var(59)>0
triggerall = !P2StateType = L
triggerall = !Statetype = A
triggerall = P2BodyDist X <= 25
triggerall = P2BodyDist Y >= -50
triggerall = !InGuardDist
trigger1 = Ctrl
trigger1 = Random < 500
trigger1 = Power >= 1000
value = 200

[State -1, Crouching Combo Starter AI]
type = ChangeState
triggerall = var(59)>0
triggerall = !P2StateType = L
triggerall = !Statetype = A
triggerall = P2BodyDist X <= 25
triggerall = P2BodyDist Y >= -25
triggerall = !InGuardDist
trigger1 = Ctrl
trigger1 = Random < 500
value = 400

[State -1, Crouching Combo AI]
type = ChangeState
triggerall = var(59)>0
triggerall = Statetype = C
trigger1 = Ctrl = 0
trigger1 = Stateno = 400 && MoveContact
value = 430

[State -1, Crouching Combo AI]
type = ChangeState
triggerall = var(59)>0
triggerall = Statetype = C
trigger1 = Ctrl = 0
trigger1 = Stateno = 430 && MoveContact
value = 405

[State -1, Crouching Combo AI]
type = ChangeState
triggerall = var(59)>0
triggerall = Statetype = C
trigger1 = Ctrl = 0
trigger1 = Stateno = 405 && MoveContact
trigger1 = Time > 6
value = 435

[State -1, Crouching Combo AI]
type = ChangeState
triggerall = var(59)>0
triggerall = Statetype = C
trigger1 = Ctrl = 0
trigger1 = Stateno = 435 && MoveContact
value = 410

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
trigger1 = Stateno = 230 && MoveContact
value = 205

[State -1, Standing Combo AI]
type = ChangeState
triggerall = var(59)>0
triggerall = Statetype = S
trigger1 = Ctrl = 0
trigger1 = Stateno = 205 && MoveContact
trigger1 = Time > 7
value = 235

[State -1, Standing Combo AI]
type = ChangeState
triggerall = var(59)>0
triggerall = Statetype = S
trigger1 = Ctrl = 0
trigger1 = Stateno = 235 && MoveContact
value = 210

[State -1, Standing Combo AI]
type = ChangeState
triggerall = var(59)>0
triggerall = Statetype = S
trigger1 = Ctrl = 0
trigger1 = Stateno = 210 && MoveContact
value = 240

[State -1, Standing Combo AI]
type = ChangeState
triggerall = var(59)>0
triggerall = Statetype = S
trigger1 = Ctrl = 0
trigger1 = Stateno = 240 && MoveContact
value = 1065

[State -1, Standing Combo AI]
type = ChangeState
triggerall = var(59)>0
triggerall = Statetype = S
trigger1 = Ctrl = 0
trigger1 = Stateno = 1065 && MoveContact
trigger1 = Time = 39
value = 1055

[State -1, Standing Combo AI]
type = ChangeState
triggerall = var(59)>0
triggerall = Statetype = S
trigger1 = Ctrl = 0
trigger1 = Stateno = 1055 && MoveContact
trigger1 = Time = 53
value = 1020

[State -1, Air Combo Starter AI]
type = ChangeState
triggerall = var(59)>0
triggerall = Ctrl
triggerall = StateType = A
triggerall = !InGuardDist
trigger1 = P2MoveType = H && P2StateType = A
trigger1 = Stateno = 9001 && Time = 14
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
value= 605

[State -1, Air Combo AI]
type = ChangeState
Triggerall = var(59)>0
triggerall = Ctrl = 0
triggerall = StateType = A
trigger1 = Stateno = 605 && MoveContact
value= 635

[State -1, Air Combo AI]
type = ChangeState
Triggerall = var(59)>0
triggerall = Ctrl = 0
triggerall = StateType = A
trigger1 = Stateno = 635 && MoveContact
value= 640

[State -1, Air Combo AI]
type = ChangeState
Triggerall = var(59)>0
triggerall = Ctrl = 0
triggerall = StateType = A
trigger1 = Stateno = 640 && MoveContact
value= 1045

[State -1, Air Combo AI]
type = ChangeState
Triggerall = var(59)>0
triggerall = Ctrl = 0
triggerall = StateType = A
trigger1 = Stateno = 1045 && MoveContact
trigger1 = Time = 55
value= 1056

[State -1, Air Combo AI]
type = ChangeState
Triggerall = var(59)>0
triggerall = Ctrl = 0
triggerall = StateType = A
trigger1 = Stateno = 1056 && MoveContact
trigger1 = time = 30
value= 1021

;===========================================================================
;HYPERS
;---------------------------------------------------------------------------
;starman!
[State -1, im feeling kinda super]
type = ChangeState
value = 3015
triggerall = !var(59)>0
triggerall = power >= 4000
triggerall = command = "im feeling kinda super"
trigger1 = ctrl
trigger1 = statetype = S

;---------------------------------------------------------------------------
;totally not an akuma move
[State -1, die a few deaths]
type = ChangeState
value = 3020
triggerall = !var(59)>0
triggerall = power >= 4000
triggerall = command = "die a few deaths"
trigger1 = ctrl
trigger1 = statetype = S
trigger2 = hitdefattr = SC, NA, SA, HA

;---------------------------------------------------------------------------
;reminds me of someone
[State -1, Tesla CyberWhat]
type = ChangeState
value = 3025
triggerall = !var(59)>0
triggerall = StateType = S
triggerall = power >= 2000
triggerall = command = "Tesla CyberWhat"
triggerall = numhelper(3026)=0
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 205 || stateno = 210 || stateno = 230 || stateno = 235 || stateno = 240 || stateno = 400 || stateno = 405 || stateno = 410 || stateno = 430 || stateno = 435 || stateno = 440)
trigger2 = movecontact
trigger3 = stateno = 1020
trigger3 = movecontact
trigger3 = time > 43
trigger4 = stateno = 1021
trigger4 = movecontact
trigger4 = time > 43
trigger5 = stateno = 3005 && movecontact
trigger5 = time > 50

;---------------------------------------------------------------------------
;YABADABA DOOOO
[State -1, Flinstone Blast]
type = ChangeState
value = 3000
triggerall = !var(59)>0
triggerall = power >= 2000
triggerall = command = "Flinstone Blast"
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 205 || stateno = 210 || stateno = 230 || stateno = 235 || stateno = 240 || stateno = 400 || stateno = 405 || stateno = 410 || stateno = 430 || stateno = 435 || stateno = 440)
trigger2 = movecontact
trigger3 = (stateno = 600 || stateno = 605 || stateno = 630 || stateno = 635 || stateno = 640)  && movecontact
trigger4 = stateno = 1020
trigger4 = movecontact
trigger4 = time > 43
trigger5 = stateno = 1021
trigger5 = movecontact
trigger5 = time > 43
trigger6 = stateno = 3005 && movecontact
trigger6 = time > 50

;---------------------------------------------------------------------------
;ALAKA BLAM
[State -1, Big Ol' Fish]
type = ChangeState
value = 3005
triggerall = !var(59)>0
triggerall = power >= 1000
triggerall = command = "Big Ol' Fish"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 205 || stateno = 210 || stateno = 230 || stateno = 235 || stateno = 240 || stateno = 400 || stateno = 405 || stateno = 410 || stateno = 430 || stateno = 435 || stateno = 440)
trigger2 = movecontact
trigger3 = stateno = 1020
trigger3 = movecontact
trigger3 = time > 43
trigger4 = stateno = 1065
trigger4 = movecontact
trigger4 = time > 25
trigger5 = stateno = 1055
trigger5 = movecontact
trigger5 = time > 38

;---------------------------------------------------------------------------
;Sentry Goin Up
[State -1, i summon sentry!]
type = ChangeState
value = 3010
triggerall = !var(59)>0
triggerall = power >= 1500
triggerall = command = "i summon sentry!"
trigger1 = ctrl
trigger1 = statetype = S
trigger2 = (stateno = 200 || stateno = 205 || stateno = 210 || stateno = 230 || stateno = 235 || stateno = 240 || stateno = 400 || stateno = 405 || stateno = 410 || stateno = 430 || stateno = 435 || stateno = 440)
trigger2 = movecontact
trigger3 = stateno = 1020
trigger3 = time > 43
trigger4 = stateno = 1065
trigger4 = movecontact
trigger4 = time > 25
trigger5 = stateno = 1055
trigger5 = movecontact
trigger5 = time > 38
trigger6 = stateno = 3005 && movecontact
trigger6 = time > 50

;===========================================================================
;SPECIALS
;---------------------------------------------------------------------------
;Bald
[State -1, Bald]
type = ChangeState
value = 1000
triggerall = !var(59)>0
triggerall = command = "Bald"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Deep Freeze!
[State -1, Deep Freeze]
type = ChangeState
value = 1050
triggerall = !var(59)>0
triggerall = power >= 500
triggerall = numhelper(1002)= 0
triggerall = command = "DeepFreeze"
triggerall = p2stateno != 1053
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Power Wave
[State -1, Power Wave]
type = ChangeState
value = 1005
triggerall = !var(59)>0
triggerall = numhelper(1006)=0
triggerall = command = "Power Wave"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;counter i think
[State -1, lacounter]
type = ChangeState
value = 1010
triggerall = !var(59)>0
triggerall = command = "police i swear to god!"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Mario Spin
[State -1, Mario Spin]
type = ChangeState
value = 1020
triggerall = !var(59)>0
triggerall = command = "Mario Spin"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 205 || stateno = 210 || stateno = 230 || stateno = 235 || stateno = 240 || stateno = 400 || stateno = 405 || stateno = 410 || stateno = 430 || stateno = 435 || stateno = 440)
trigger2 = movecontact
trigger3 = stateno = 1065
trigger3 = movecontact
trigger3 = time > 25
trigger4 = stateno = 1055
trigger4 = movecontact
trigger4 = time > 38

;---------------------------------------------------------------------------
;Mario Spin (Air)
[State -1, Mario Spin (Air)]
type = ChangeState
value = 1021
triggerall = !var(59)>0
triggerall = command = "Mario Spin"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600 || stateno = 605 || stateno = 630 || stateno = 635 || stateno = 640)  && movecontact
trigger3 = stateno = 1056
trigger3 = movecontact
trigger3 = time > 20
trigger4 = stateno = 1045
trigger4 = movecontact
trigger4 = time > 15

;---------------------------------------------------------------------------
;Genocide Cutter
[State -1, Genocide Cutter]
type = ChangeState
value = 1025
triggerall = !var(59)>0
triggerall = command = "Genocide Cutter"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 205 || stateno = 210 || stateno = 230 || stateno = 235 || stateno = 240 || stateno = 400 || stateno = 405 || stateno = 410 || stateno = 430 || stateno = 435 || stateno = 440)
trigger2 = movecontact

;---------------------------------------------------------------------------
;Spinning Fish
[State -1, Spinning Fish]
type = ChangeState
value = 1055
triggerall = !var(59)>0
triggerall = command = "Fish!"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 205 || stateno = 210 || stateno = 230 || stateno = 235 || stateno = 240 || stateno = 400 || stateno = 405 || stateno = 410 || stateno = 430 || stateno = 435 || stateno = 440)
trigger2 = movecontact
trigger3 = stateno = 1065
trigger3 = movecontact
trigger3 = time > 25

;---------------------------------------------------------------------------
;Foot Gatling!
[State -1, Foot Gatling!]
type = ChangeState
value = 1065
triggerall = !var(59)>0
triggerall = command = "My Feet Got Hands"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 205 || stateno = 210 || stateno = 230 || stateno = 235 || stateno = 240 || stateno = 400 || stateno = 405 || stateno = 410 || stateno = 430 || stateno = 435 || stateno = 440)
trigger2 = movecontact

;---------------------------------------------------------------------------
;Tatsumaki Senpukyaku
[State -1, Tatsumaki Senpukyaku!]
type = ChangeState
value = 1045
triggerall = !var(59)>0
triggerall = command = "My Feet Got Hands"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600 || stateno = 605 || stateno = 630 || stateno = 635 || stateno = 640)  && movecontact

;---------------------------------------------------------------------------
;Spinning Fish (Air)
[State -1, Spinning Fish (Air)]
type = ChangeState
value = 1056
triggerall = !var(59)>0
triggerall = command = "Fish!"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600 || stateno = 605 || stateno = 630 || stateno = 635 || stateno = 640)  && movecontact
trigger3 = stateno = 1045
trigger3 = movecontact
trigger3 = time > 15

;---------------------------------------------------------------------------
;Spinning Fish (Air)
[State -1, Spinning Fish (Air)]
type = ChangeState
value = 1056
triggerall = !var(59)>0
triggerall = command = "Fish!"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600 || stateno = 605 || stateno = 630 || stateno = 635 || stateno = 640)  && movecontact
trigger3 = stateno = 1045
trigger3 = movecontact
trigger3 = time > 15

;---------------------------------------------------------------------------
;Red Assist
[State -1, Red Assist]
type = ChangeState
value = 2000
triggerall = !var(59)>0
triggerall = command = "RED"
triggerall = numhelper(2001)=0
triggerall = numhelper(2002)=0
triggerall = numhelper(2003)=0
triggerall = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Cambo Assist
[State -1, Cambo Assist]
type = ChangeState
value = 2001
triggerall = !var(59)>0
triggerall = command = "CAMBO"
triggerall = numhelper(2001)=0
triggerall = numhelper(2002)=0
triggerall = numhelper(2003)=0
triggerall = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Vert Assist
[State -1, Vert Assist]
type = ChangeState
value = 2002
triggerall = !var(59)>0
triggerall = command = "VERT"
triggerall = numhelper(2001)=0
triggerall = numhelper(2002)=0
triggerall = numhelper(2003)=0
triggerall = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;CLAPPED  Guard Break
[State -1, Guard Break]
type = ChangeState
value = 700
triggerall = !var(59)>0
triggerall = command = "CLAPPED"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = stateno = [150,153] 

;---------------------------------------------------------------------------
;BURST!
[State -1, BURST]
type = ChangeState
value = 710
triggerall = !var(59)>0
triggerall = !var(4)>0
triggerall = command = "start"
triggerall = stateno != [150,155]
trigger1 = movetype = H

;===========================================================================
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
;AirJump Back
[State -1, AirJump Fwd]
type = ChangeState
value = 110
triggerall = stateno != 110 && stateno != 115
triggerall = !var(59)>0
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;AirJump Back
[State -1, AirJump Back]
type = ChangeState
value = 115
triggerall = stateno != 110 && stateno != 115
triggerall = !var(59)>0
trigger1 = command = "BB"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 1950
triggerall = !var(59)>0
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;===========================================================================
;GRAB
;---------------------------------------------------------------------------
;Grab
[State -1, Grab]
type = ChangeState
value = 800
triggerall = !var(59)>0
triggerall = command = "Grab"
triggerall = stateno != 100
triggerall = stateno != 101
trigger1 = statetype = S
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
;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 205
triggerall = !var(59)>0
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 230 || stateno = 400)  && movecontact
ignorehitpause=1

;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = !var(59)>0
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 205 || stateno = 200 || stateno = 230 || stateno = 235)  && movecontact
ignorehitpause=1

;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = !var(59)>0
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = command != "RED"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200  && movecontact
ignorehitpause=1

;---------------------------------------------------------------------------
;Stand Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 235
triggerall = !var(59)>0
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = command != "CAMBO"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 230 || stateno = 205)  && movecontact
ignorehitpause=1

;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = !var(59)>0
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = command != "VERT"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 205 || stateno = 200 || stateno = 210 || stateno = 230 || stateno = 235)  && movecontact
ignorehitpause=1

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
ignorehitpause=1

;---------------------------------------------------------------------------
;Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 405
triggerall = !var(59)>0
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 205 || stateno = 400 || stateno = 430) && movecontact
ignorehitpause=1

;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = !var(59)>0
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 210 || stateno = 400 || stateno = 405 || stateno = 430 || stateno = 435) && movecontact
ignorehitpause=1

;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = !var(59)>0
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = command != "RED"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 230 || stateno = 400) && movecontact
ignorehitpause=1

;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 435
triggerall = !var(59)>0
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = command != "CAMBO"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 235 || stateno = 405 || stateno = 430) && movecontact
ignorehitpause=1

;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = !var(59)>0
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = command != "VERT"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 205 || stateno = 210 || stateno = 230 || stateno = 235 || stateno = 400 || stateno = 405 || stateno = 410 || stateno = 430 || stateno = 435) && movecontact
ignorehitpause=1

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
;Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 605
triggerall = !var(59)>0
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600|| stateno = 630) && movecontact
ignorehitpause=1

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = !var(59)>0
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600|| stateno = 605|| stateno = 630 || stateno = 635 || stateno = 640) && movecontact
ignorehitpause=1

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = !var(59)>0
triggerall = command = "a"
triggerall = command != "RED"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
ignorehitpause=1

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 635
triggerall = !var(59)>0
triggerall = command = "b"
triggerall = command != "CAMBO"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 605 && movecontact
ignorehitpause = 1

;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = !var(59)>0
triggerall = command = "c"
triggerall = command != "VERT"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600|| stateno = 605|| stateno = 630 || stateno = 635) && movecontact
ignorehitpause=1

;---------------------------------------------------------------------------
;Super Jump
[State -1, Super Jump]
type = ChangeState
value = 9000
triggerall = !var(59)>0
trigger1 = command = "DU"
trigger1 = ctrl ; these means that you can make the move when you control the char
trigger1 = statetype != A ; these is to make that you cant use the superjump while you are in the air
trigger2 = stateno = 440 && movecontact && (command = "holdup")
trigger2 = time > 1
ignorehitpause = 1

;----------------------------------------------------------------------------------
;Power Charge
[State -1, Powercharge]
type = Changestate
value = 990
triggerall = !var(3)>0
triggerall = !var(59)>0
trigger1 = command = "holdb" && command = "holdy"
trigger1 = power < powermax
trigger1 = ctrl
trigger1 = statetype != A


; _________________________________________
;| Character by JStudios2k, Edited from Cattigan619 and MGSSJ2                |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯

;---------------------- Integer variable list ----------------------
; var(0):= DISABLE
; var(1):= [TEMP] PORTRAIT, HELPER SUPER PORTRAIT
; var(2):= HELPER HIT DETECTION 
; var(3):= JUMP DIRECTION, HELPER MOVEHIT VAR
; var(4):= CHAIN CANCEL (CUSTOM COMBO)
; var(5):= COMMAND CANCEL RESET 
; var(6):= SPECIAL CANCEL 
; var(7):= SUPER CANCEL 
; var(8):= HYPER CANCEL 
; var(9):=  COUNTER FLAG
;var(10):= SPECIAL MOVE STRENGTH
;var(13):= NUMBER OF HITS
;var(15):= JUGGLE COUNT 
;var(16):= JUGGLE FLAG
;var(17):= UNBLOCKABLE
;var(18):= PROJCONTACT RESET
;var(19):= THROW TECH
;var(20):= CUSTOM COMBO
;var(21):= SUPER CANCEL FLAG
;var(22):= HYPER CANCEL FLAG
;var(23):= SUPER KO
;var(24):= POWERSET VAR
;var(25):= EX FLASH 
;var(26):= NO WALK FLAG
;var(30):= HIT DETECTION
;var(31):= HIT SOUND
;var(32):= GUARD SOUND
;var(33):= SPARKNO
;var(34):= GUARD SPARKNO
;var(35):= SPARK X-POS
;var(36):= SPARK Y-POS
;var(38):= THROWS ALLOWED
;var(39):= PROJECTILE FLAG
;var(40):= FOCUS / POWER CHARGE SELECT
;var(41):= RAGE STATE CONTROLLER
;var(43):= DISALLOW SPECIAL/SUPER THROWS
;var(45):= RAGE FLASH
;var(47):= BACK CHARGE
;var(48):= BACK CHARGE BUFFER
;var(49):= DOWN CHARGE
;var(50):= DOWN CHARGE BUFFER
;var(52):= SOUND SELECT
;var(53):= MAX MODE
;var(54):= DRIVE SELECT
;var(55):= DRIVE LOCK TOGGLE
;var(56):= TOGGLE ON/OFF PALETTE AND DRIVE SELECTOR
;var(58):= GAMETIME VAR
;var(59):= [TEMP] INTRO DECIDER

;---------------------- Float variable list ----------------------
; fvar(0):= [TEMP] PORTRAIT SETTING VAR, PALETTE SELECTOR FVAR
; fvar(5):= CORNER PUSH
; fvar(8):= LIFE
; fvar(9):= FOCUS ATTACK 
;fvar(10):= DAMAGE SCALING FACTOR 
;fvar(11):= DAMAGE STRENGTH
;fvar(27):= PALETTE NO
;fvar(29):= SPARK SELECT

;==============================================================================================
;=======================================<SYSTEM STATES>========================================
;==============================================================================================

;---------------------------------------------------------------------------
;STANDING
[Statedef 0]
type = S
physics = S
movetype = I
velset = 0, 0
sprpriority = 0

[State 0, Remove Explods]
type = RemoveExplod
trigger1 = IsHelper

[State 0, Destroy Helpers]
type = DestroySelf
trigger1 = IsHelper

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 0 && Anim != 5
trigger2 = Anim = 5 && !AnimTime
value = 0

[State 0, Dead]
type = ChangeState
trigger1 = !Alive
value = 5050

;====================<CROUCHING>====================
;Stand to Crouch
[StateDef 10]
type = C
physics = C
moveType = I
velSet = 0,0
sprPriority = 0

[State 10, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && Anim = 12
value = 10
elem = 3 - AnimElemNo(0)

[State 10, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 10
value = 10

[State 10, End]
type = ChangeState
trigger1 = !AnimTime
value = 11


;Crouching
[StateDef 11]
type = C
physics = C
moveType = I
anim = 11
velSet = 0,0
sprPriority = 0

[State 11, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 6 && !AnimTime
value = 11


;Crouch to Stand
[StateDef 12]
type = S
physics = S
moveType = I
velSet = 0,0
sprPriority = 0

[State 12, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && Anim = 10
value = 12
elem = 3 - AnimElemNo(0)

[State 12, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 12
value = 12

[State 12, End]
type = ChangeState
trigger1 = command = "holddown" && command != "holdup"
value = 10

[State 12, End]
type = ChangeState
trigger1 = !AnimTime
value = 0

;WALKING
[Statedef 20]
type = S
physics = S
movetype = I
sprpriority = 0

[State 20, Vel]
type = velset
trigger1 = command = "holdfwd"
x = const(velocity.walk.fwd.x)

[State 20, Vel]
type = velset
trigger1 = command = "holdback"
x = const(velocity.walk.back.x)

[State 20, Anim]
type = changeanim
triggerall = vel x > 0
trigger1 = anim != 20 && anim != 5
trigger2 = anim = 5 && animelemtime(1) >= 1
value = 20

[State 20, Anim]
type = changeanim
triggerall = vel x < 0
trigger1 = anim != 21 && anim != 5
trigger2 = anim = 5 && animelemtime(1) >= 1
value = 21


;JUMPING
[Statedef 40]
type = S
physics = S
movetype = I
anim = 40
ctrl = 0
velset = 0, 0
sprpriority = 1
facep2 = 1

[State 40, Direction]
type = varset
trigger1 = !AIlevel
sysvar(1) = ifelse(!time, 0, ifelse(command = "holdfwd", 1, ifelse(command = "holdback", -1, sysvar(1))))
[State 40, Direction]
type = varset
trigger1 = AIlevel
sysvar(1) = ifelse((enemynear, movetype != A || backedgebodydist <= 10), 1, ifelse((enemynear, movetype = A), -1, 0))

[State 40, High Jump]
type = varset
trigger1 = !time && !AIlevel
var(3) = ifelse(command = "highjump", 3, 0)
[State 40, High Jump]
type = varset
trigger1 = !time && AIlevel
var(3) = ifelse((p2bodydist x >= 160 || random < (125 * (AIlevel ** 2 / 64.0))), 3, 0)
[State 40, High Jump]
type = varset
trigger1 = !time && prevstateno = 100
var(3) = 3

[State 40, Low Jump]
type = varset
trigger1 = !AIlevel && command != "holdup" && (var(3) != [1, 2])
var(3) = ifelse((var(3) = 3 && sysvar(1)), 2, 1)
[State 40, Low Jump]
type = varset
trigger1 = AIlevel && (var(3) != [1, 2])
trigger1 = (enemynear, statetype = C) && random < 500
var(3) = ifelse((var(3) = 3 && sysvar(1)), 2, 1)

[State 40, Snd]
type = playsnd
trigger1 = !animtime
value = ifElse((var(3) = [2,3]), 41, 40), 0
[State 40, Dust]
type = helper
trigger1 = !animtime
stateno = 8100
ID = 8100
name = "Jump Dust"
postype = p1
ownpal = 1

[State 40, Velocity: Normal Jump]
type = VelSet
trigger1 = !AnimTime
x = ifElse(!sysvar(1), const(velocity.jump.neu.x), ifElse(sysvar(1) = 1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = const(velocity.jump.y) + (ifelse(var(20), 1,0))

[State 40, Velocity: Low Jump]
type = VelSet
trigger1 = !AnimTime && var(3) = 1
x = ifElse(!sysvar(1), const(velocity.jump.neu.x), ifElse(sysvar(1) = 1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = 0.75 * const(velocity.jump.y) + (ifelse(var(20), 1,0))

[State 40, Velocity: Long Low Jump]
type = VelSet
trigger1 = !AnimTime && var(3) = 2
x = ifElse(!sysvar(1), const(velocity.jump.neu.x), ifElse(sysvar(1) = 1, const(velocity.runjump.fwd.x), const(velocity.runjump.back.x)))
y = 0.75 * const(velocity.jump.y) + (ifelse(var(20), 1,0))

[State 40, Velocity: Long Jump]
type = VelSet
trigger1 = !AnimTime && var(3) = 3
x = ifElse(!sysvar(1), const(velocity.jump.neu.x), ifElse(sysvar(1) = 1, const(velocity.runjump.fwd.x), const(velocity.runjump.back.x)))
y = ifElse(!sysvar(1), const(velocity.runjump.y), const(velocity.jump.y)) + (ifelse(var(20), 1,0))

[State 40, End]
type = changestate
trigger1 = !animtime
value = 50
ctrl = 1

[Statedef 50]
type = A
physics = N
movetype = I
sprpriority = 1

[State 50, Anim]
type = changeanim
trigger1 = !time
value = ifelse(!vel x, 41, ifelse(vel x > 0, 42, 43)) + 10 * (var(3) = [1, 2])
persistent = 0

[State 50, No Guard]
type = assertspecial
trigger1 = var(3) = [1, 2]
flag = noairguard
ignoreHitPause = 1

[State 50, Grounded Frame]
type = posfreeze
trigger1 = time < 1 && prevstateno = 40
value = 1

[State 50, Accel]
type = gravity
trigger1 = time >= 1 || prevstateno != 40

[State 50, Land]
type = changestate
trigger1 = pos y > -vel y
value = 52


[Statedef 51]
type = A
physics = N
movetype = I
sprpriority = 1
[State 51, Accel]
type = gravity
trigger1 = 1
[State 51, Land]
type = changestate
trigger1 = pos y > -vel y
value = 52


[Statedef 52]
type = S
physics = S
movetype = I
anim = 47
ctrl = 0
velset = 0, 0
sprpriority = 1

[State 52, anim 57]
type = changeanim
trigger1 = !time && (var(3) = 1 || var(3) = 2)
trigger1 = (prevstateno = [600, 699])
value = 57

[State 52, Pos]
type = posset
trigger1 = 1
y = 0

[State 52, Ctrl]
type = ctrlset
trigger1 = !time && (prevstateno != [600, 699])
trigger2 = time = 1 && anim != 57
value = 1

[State 52, Guard]
type = changestate
trigger1 = ctrl && command = "holdback"
trigger1 = inguarddist && (prevstateno != [600, 699])
value = 120

[State 52, No walking]
type = assertspecial
trigger1 = anim != 5
flag = nowalk
ignoreHitPause = 1

[State 52, Snd]
type = playsnd
trigger1 = !time
value = 52,0

[State 52, Dust]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 52, Turn]
type = changeanim
trigger1 = ctrl && p2dist x < 0
trigger1 = anim != 5
value = 5

[State 52, Turn]
type = turn
trigger1 = anim = 5 && animelem = 1

[State 52, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;RUN
[Statedef 100]
type = S
physics = N
movetype = I
anim = 100
ctrl = 0
sprpriority = 1

[State 100, Vel]
type = velset
trigger1 = 1
x = const(velocity.run.fwd.x)

[State 100, Step Sound]
type = PlaySnd
trigger1 = (AnimElem = 3 || AnimElem = 7)
value = 100, ifElse((AnimElem = 3), 0, 1)

[State 100, Jump]
type = changestate
trigger1 = !AIlevel
trigger1 = command = "holdfwd" && command = "holdup"
value = 40

[State 100, Jump]
type = changestate
trigger1 = AIlevel && random < 25
value = 40

[State 100, End]
type = ChangeState
trigger1 = !AILevel && command != "holdfwd"
trigger2 = AILevel && P2BodyDist x <= 90
value = 101


;--- STOP ---
[Statedef 101]
type = S
physics = S
movetype = I
anim = 101
ctrl = 0
sprpriority = 1

[State 101, Snd]
type = playsnd
trigger1 = !time
value = 101,0

[State 101, Dust]
type = explod
trigger1 = !time
anim = 8104
sprpriority = 3
postype = p1
pos = 0, 0
vel = 0, 0
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 101, Jump]
type = changestate
trigger1 = !AIlevel && command = "holdup"
value = 40

[State 101, End]
type = changestate
trigger1 = !animtime
value = ifelse(command = "holddown", 10, 0)
ctrl = 1


[Statedef 102]
type = S
physics = N
movetype = I
anim = 102
ctrl = 0
sprpriority = 1

[State 102, Snd]
type = playsnd
trigger1 = !time
value = 110,0

[State 102, Dust]
type = helper
trigger1 = animelem = 2
stateno = 8103
ID = 8100
name = "Dash Dust"
postype = p1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 102, Run]
type = varset
trigger1 = !time
sysvar(1) = 1

[State 102, Run]
type = varset
triggerall = AnimElemTime(2) <= 0
trigger1 = !AIlevel && command != "holdfwd"
sysvar(1) = 0

[State 102, Run]
type = changestate
trigger1 = AnimElemTime(2) = 0 && sysvar(1)
value = 100

[State 102, Type]
type = statetypeset
trigger1 = animelemtime(2) >= 0
statetype = A
physics = N

[State 105, 1]
type = VelSet
trigger1 = AnimElem = 2
x = 6.75
y = -4

[State 105, 1]
type = VelMul
trigger1 = AnimElemTime(2) > 0
x = .98

[State 105, 1]
type = VelAdd
trigger1 = AnimElemTime(2) > 0
y = 0.65

[State 102, End]
type = changestate
trigger1 = animelemtime(2) >= 0
trigger1 = pos y > -vel y
value = 103


;--- LAND ---
[Statedef 103]
type = S
physics = S
ctrl = 1
anim = 103
velset = 0, 0

[State 103, Pos]
type = posset
trigger1 = 1
y = 0

[State 103, Snd]
type = playsnd
trigger1 = !time
value = 100,0

[State 103, Dust]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 103, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


[Statedef 105]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 105
ctrl = 0
sprpriority = 1

[State 105, Snd]
type = playsnd
trigger1 = animelem = 2
value = 105,0

[State 105, Dust]
type = helper
trigger1 = animelem = 2
stateno = 8103
ID = 8100
name = "Dash Dust"
postype = p1
facing = -1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 105, Vel]
type = velset
trigger1 = animelem = 2
x = const(velocity.run.back.x)
y = const(velocity.run.back.y)

[State 105, 1]
type = VelMul
trigger1 = AnimElemTime(2) > 0
x = .98

[State 105, 1]
type = VelAdd
trigger1 = AnimElemTime(2) > 0
y = 0.75

[State 110, Type]
type = StateTypeSet
trigger1 = AnimElemTime(2) >= 0
stateType = A
physics = N

[State 105, Land]
type = changestate
trigger1 = animelemtime(2) >= 0
trigger1 = pos y > -vel y
value = 106


;--- LAND ---
[Statedef 106]
type = S
physics = S
ctrl = 0
anim = 106
velset = 0, 0

[State 106, Pos]
type = posset
trigger1 = 1
y = 0

[State 106, Snd]
type = playsnd
trigger1 = !time
value = 100,1

[State 106, Dust]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 106, Ctrl]
type = ctrlset
trigger1 = time >= 2
value = 1

[State 106, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;EVADE
[Statedef 700]
type = S
physics = S
movetype = I
anim = 700
ctrl = 0
velset = 0, 0
sprpriority = -2

[State 700, Snd]
type = playsnd
trigger1 = !time
value = 4,0
channel = 0

[State 700, Snd]
type = playsnd
trigger1 = animelem = 1
value = 1, 3
channel = 1

[State 700, Push]
type = playerpush
trigger1 = 1
value = 0
ignoreHitPause = 1

[State 700, HB]
type = hitby
trigger1 = 1
value = SCA, AT
time = 1

[State 700, Attack]
type = changestate
trigger1 = !AIlevel && (time = [15, 25])
trigger1 = command = "x" || command = "y" || command = "z" || command = "a" || command = "b" || command = "c"
value = ifelse((command = "x" || command = "y" || command = "z"), 220, 212)

[State 700, Attack]
type = changestate
trigger1 = AIlevel && (time = [15, 25]) && numenemy
trigger1 = (enemynear, movetype != A) && (p2bodydist x = [ -60, 60]) && (p2dist y >= -60)
value = ifelse(random < 666, 220, 212)

[State 700, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;ROLL Forward 
[Statedef 710]
type = S
physics = N
movetype = I
anim = 710
ctrl = 0
velset = 0, 0
sprpriority = 1

[State 710, Push]
type = playerpush
trigger1 = 1
value = 0
ignoreHitPause = 1

[State 710, HB]
type = hitby
trigger1 = animelemtime(6) < 0
value = SCA, AT
time = 1

[State 710, Snd]
type = playsnd
trigger1 = !time
value = 4,0
channel = 0

[State 710, Snd]
type = playsnd
trigger1 = !time
value = 110,0
channel = 1

[State 810, Velocity]
type = VelSet
trigger1 = AnimElem = 2
x = 4.5

[State 810, Velocity]
type = VelSet
trigger1 = AnimElem = 10
x = 0

[State 710, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;ROLL Backward 
[Statedef 715]
type = S
physics = N
movetype = I
anim = 715
ctrl = 0
velset = 0, 0
sprpriority = 1

[State 715, Push]
type = playerpush
trigger1 = 1
value = 0
ignoreHitPause = 1

[State 715, HB]
type = hitby
trigger1 = animelemtime(6) < 0
value = SCA, AT
time = 1

[State 715, Snd]
type = playsnd
trigger1 = !time
value = 4,0
channel = 0

[State 715, Snd]
type = playsnd
trigger1 = !time
value = 110,0
channel = 1

[State 810, Velocity]
type = VelSet
trigger1 = AnimElem = 2
x = -4.5

[State 810, Velocity]
type = VelSet
trigger1 = AnimElem = 10
x = 0

[State 715, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;POWER CHARGE
[Statedef 730]
type = S
physics = S
movetype = I
anim = 730
velset = 0, 0
ctrl = 0

[State 730, Power]
type = poweradd
triggerall = power < const(data.power) && power < powermax
trigger1 = !AIlevel && (command = "holdb" && command = "holdy")
trigger2 = AIlevel
value = 2 + ifelse(time < 60, 0, (time -60) / 12)

[State 730, Snd]
type = playsnd
trigger1 = !time
value = 730,1
channel = 0

[State 730, Flash]
type = palfx
trigger1 = 1
time = 1
add = 75 + ceil(sin(time / 6.0 * pi) * 75), 25 + ceil(sin(time / 6.0 * pi) * 25), 0

[State 730, FX]
type = helper
trigger1 = !numhelper(8330)
stateno = 8330
ID = 8330
name = "Power Charge"
postype = p1
pos = 0,0
pausemovetime = 65535
supermovetime = 65535
ownpal = 1

[State 730, FX]
type = helper
trigger1 = !numhelper(8331)
stateno = 8331
ID = 8331
name = "Particles"
postype = p1
pausemovetime = 65535
supermovetime = 65535
ownpal = 1

[State 730, End]
type = changestate
trigger1 = power >= const(data.power) || power >= powermax || roundstate != 2
trigger2 = !AIlevel && (command != "holdb" || command != "holdy")
trigger3 = AIlevel && (inguarddist || p2bodydist x <= 120)
value = 731
ctrl = 1


;POWER CHARGE END
[Statedef 731]
type = S
physics = S
movetype = I
anim = 731
velset = 0, 0
ctrl = 1

[State 5336, 1]
type=removeexplod
trigger1= anim=731
ID=6058

[State 731, Stop Snd]
type = stopsnd
trigger1 = !time
channel = 0

[State 730, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1



;ZERO COUNTER 
[Statedef 750]
type = S
physics = S
movetype = I
anim = 750
velset = 0, 0
ctrl = 0
sprpriority = 2
poweradd = -1000
facep2 = 1

[State 750, Button]
type = varset
trigger1 = !time && !AIlevel
var(10) = (command = "412k")
ignorehitpause = 1

[State 750, Button AI]
type = varset
trigger1 = !time && AIlevel
var(10) = ifelse((p2statetype = A), 0, ifelse((p2statetype = C), 1, ifelse(random < 500, 0, 1)))
ignorehitpause = 1

[State 750, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[State 750, Stop]
type = posfreeze
trigger1 = 1
value = 1

[State 750, Snd]
type = playsnd
trigger1 = !time
value = 4,0
channel = 0

[State 750, SuperPause FX]
type = helper
trigger1 = !time
stateno = 8350
ID = 8350
name = "Zero Counter"
postype = p1
pos = 35, -83
supermovetime = 255
ownpal = 1

[State 750, Super Pause]
type = superpause
trigger1 = !time
time = 15
movetime = 15
p2defmul = 1
anim = -1
sound = s750,0
darken = 0

[State 750, End]
type = changestate
trigger1 = time >= 15
value = ifelse(var(10) = 1, 2910, 2900)



;PARRY STANDING
[Statedef 760]
type = S
physics = S
movetype = I
anim = 760
velset = 0, 0
ctrl = 0
sprpriority = 2
poweradd = 78
facep2 = 1

[State 760, HB]
type = hitby
trigger1 = 1
value = SCA, AT
time = 1

[State 760, Pause]
type = pause
trigger1 = !time
time = 15
movetime = 15
endcmdbuftime = 15
pausebg = 0

[State 760, Stop]
type = posfreeze
trigger1 = 1
value = 1

[State 760, No walking]
type = varset
trigger1 = 1
var(26) = 7

[State 760, Snd]
type = playsnd
trigger1 = !time
value = 4,0
channel = 0

[State 760, Snd]
type = playsnd
trigger1 = !time
value = 760,0
channel = 1

[State 760, Flash]
type = palfx
trigger1 = !time
add = 0, 64, 255
sinadd = 0, -64, -255, 60
time = 15

[State 760, FX]
type = explod
trigger1 = !time
anim = 8360
sprpriority = 5
postype = p1
pos = 32, -59
pausemovetime = -1
supermovetime = -1
scale = 0.5, 0.5
ownpal = 1

[State 760, Shake]
type = envshake
trigger1 = !time
time = 0
ampl = 0

[State 760, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;PARRY CROUCHING
[Statedef 761]
type = C
physics = C
movetype = I
anim = 761
velset = 0, 0
ctrl = 0
sprpriority = 2
poweradd = 78
facep2 = 1

[State 761, HB]
type = hitby
trigger1 = 1
value = SCA, AT
time = 1

[State 761, Pause]
type = pause
trigger1 = !time
time = 15
movetime = 15
endcmdbuftime = 15
pausebg = 0

[State 761, Stop]
type = posfreeze
trigger1 = 1
value = 1

[State 761, No walking]
type = varset
trigger1 = 1
var(26) = 7

[State 761, Snd]
type = playsnd
trigger1 = !time
value = 4,0
channel = 0

[State 761, Snd]
type = playsnd
trigger1 = !time
value = 760,0
channel = 1

[State 761, Flash]
type = palfx
trigger1 = !time
add = 0, 64, 255
sinadd = 0, -64, -255, 60
time = 15

[State 761, FX]
type = explod
trigger1 = !time
anim = 8360
sprpriority = 5
postype = p1
pos = 36,-40
pausemovetime = -1
supermovetime = -1
scale = 0.5, 0.5
ownpal = 1

[State 761, Shake]
type = envshake
trigger1 = !time
time = 0
ampl = 0

[State 761, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;PARRY JUMPING 
[Statedef 762]
type = A
physics = N
movetype = I
anim = 762
ctrl = 0
sprpriority = 2
poweradd = 78
facep2 = 1

[State 762, HB]
type = hitby
trigger1 = 1
value = SCA, AT
time = 1

[State 762, Pause]
type = pause
trigger1 = !time
time = 15
movetime = 15
endcmdbuftime = 15
pausebg = 0

[State 762, Stop]
type = posfreeze
trigger1 = 1
value = 1

[State 762, Snd]
type = playsnd
trigger1 = !time
value = 4, 0
channel = 0

[State 762, Snd]
type = playsnd
trigger1 = !time
value = 760,0
channel = 1

[State 762, Flash]
type = palfx
trigger1 = !time
add = 0, 64, 255
sinadd = 0, -64, -255, 60
time = 15

[State 762, FX]
type = explod
trigger1 = !time
anim = 8360
sprpriority = 5
postype = p1
pos = 28,-73
pausemovetime = -1
supermovetime = -1
scale = 0.5, 0.5
ownpal = 1

[State 762, Shake]
type = envshake
trigger1 = !time
time = 0
ampl = 0

[State 762, End]
type = changestate
trigger1 = !animtime
value = 763
ctrl = 1

;PARRY JUMP FINISH
[Statedef 763]
type = A
physics = N
movetype = I
anim = 763
ctrl = 1

[State 763, Vel]
type = velset
trigger1 = !time
x = ifelse(vel x > 2, 2, ifelse(vel x < -2, -2, vel x))
y = ifelse(vel y < -2, vel y, -2)

[State 763, Accel]
type = gravity
trigger1 = 1

[State 763, Land]
type = changestate
trigger1 = pos y > -vel y
value = 52


;PARRY HELPER
[StateDef 765]
type = A
physics = N
moveType = I
anim = ifElse(Root, StateType = C, 766, ifElse(Root, StateType = A, 767, 765))
velSet = 0,0
ctrl = 0

[State 765, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 765, BindToRoot]
type = BindToRoot
trigger1 = 1
time = -1

[State 765, Change to Crouching]
type = ChangeAnim
triggerAll = !Time
trigger1 = !(Root, AILevel) && Root, command = "down"
trigger2 = Root, AILevel && (Root, StateType != A) && P2StateType = C
value = 766

[State 765, Change to Standing / Jumping]
type = ChangeAnim
triggerAll = !Time
trigger1 = !(Root, AILevel) && Root, command = "fwd"
trigger2 = Root, AILevel && Anim != 766
value = ifElse((Root, StateType = A), 767, 765)

[State 765, Change to Standing / Jumping]
type = ChangeAnim
trigger1 = Anim = 765 || Anim = 767
value = ifElse((Root, StateType = A), 767, 765)

[State 765, Disable]
type = VarSet
trigger1 = Time >= ifElse((Root, StateType = A), 7, 8)
trigger2 = Facing != (Root, Facing)
trigger3 = !(Root, ctrl)
trigger3 = (Root, StateNo != [760,762]) && (Root, StateNo != 5120)
var(0) = 1

[State 765, Disable]
type = VarSet
triggerAll = !(Root, AILevel)
trigger1 = (Root, command = "holdback")
trigger2 = Time < 4 && (Root, command = "holdfwd" + Root, command = "holddown") > 1
trigger3 = Time >= 4 && (Root, command = "holdfwd" || Root, command = "holddown")
trigger4 = Time >= 1 && (((Anim = 765 || Anim = 767) && Root, command = "fwd") || (Anim = 766 && Root, command = "down"))
var(0) = 1

[State 765, Disable]
type = ChangeAnim
trigger1 = var(0) = 1
value = 1

[State 765, Standing/Air]
type = ReversalDef
trigger1 = !var(0) && (Anim = 765 || Anim = 767)
trigger1 = (Root, StateNo != 5120) || !(Root, AnimTime)
reversal.attr = SCA,AA
p1StateNo = 766
pauseTime = 0,0
sparkNo = -1
numHits = 0

[State 765, Crouching]
type = ReversalDef
trigger1 = !var(0) && Anim = 766
reversal.attr = SC,AA
p1StateNo = 766
pauseTime = 0,0
sparkNo = -1
numHits = 0

[State 765, Disable]
type = ReversalDef
trigger1 = var(0) = 1
reversal.attr =
pauseTime = 0,0
sparkNo = -1
numHits = 0

[State 765, End]
type = DestroySelf
trigger1 = Time >= 18
trigger2 = (Root, MoveType != I)
trigger3 = !(Root, ctrl) && (Root, StateNo != [760,762]) && (Root, StateNo != 5120)
trigger4 = (Root, StateNo = [760,762]) && (Root, Time <= 1)

;PARRY SUCCESS
[StateDef 766]
moveType = I
ctrl = 0

[State 766, Disable]
type = VarSet
trigger1 = 1
var(0) = 1

[State 766, End]
type = DestroySelf
trigger1 = Root, StateNo = [760,762]
trigger2 = Time >= 2

;MAX MODE
[Statedef 770]
type = S
movetype = I
physics = S
anim = 770
ctrl = 0
velset = 0,0

[State 770, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0, 22
channel = 0

[State 770, Super Pause]
type = superpause
trigger1 = !time
time = 30
movetime = 30
anim = -1
p2defmul = 1
darken = 0

[State 106, Dust]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 770, EnvShake]
type = EnvShake
trigger1 = !Time
time = 10
freq = 120
ampl = -4
;phase = 90
;ignorehitpause = 
;persistent = 

[State 770, MAX Snd]
type = PlaySnd
trigger1 = !Time
value = 770, 0

[State 770, Power Up! Text]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 8291
ID = 8291
name = "Power Up FX"
posType = P1
pos = ceil(4 * const(size.xScale)), ceil(-62 * const(size.yScale))
facing = -1
ownPal = 1
pauseMoveTime = 255
superMoveTime = 255
ignoreHitPause = 1

[State 770, PowerAdd]
type = PowerAdd
trigger1 = AnimElem = 1
value = -1000

[State 770, PowerSet Var]
type = Varset
trigger1 = Animelem = 1
var(24) = Power

[State 770, MAX Mode Timer]
type = VarSet
trigger1 = AnimElem = 1
var(53) = 1000

[State 770, Max Meter V2]
type = Helper
helpertype = Normal
trigger1 = Animelem = 1 && !NumHelper(780)
id = 780
pos = 0,0
postype = left
name = "Max Meter"
stateno = 780
ignorehitpause = 1
ownpal = 1

[State 770, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;MAX MODE BAR HELPER
[Statedef 780]
type = S
movetype = I
physics = N
anim = 1
sprpriority = 0
ignorehitpause = 1

[State 780, BindToRoot]
type = BindToRoot
trigger1 = 1
time = -1
pos = 0,-15

[State 780, Meter BG]
type = Explod
trigger1 = !Time
anim = 780
id = 780
pos = 2,0
postype = p1
bindtime = -1
removetime = -1
scale = .5,.5
sprpriority = -1
ontop = 1
ownpal = 1
removeongethit = 0

[State 780, Meter Fill]
type = Explod
trigger1 = Time = 2
anim = 781
id = 781
pos = 24,0
postype = p1
bindtime = -1
removetime = -1
scale = .5,.5
sprpriority = 2
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 780, Meter Container]
type = Explod
trigger1 = Time = 2
anim = 782
id = 782
pos = 0,0
postype = p1
bindtime = -1
removetime = -1
scale = .5,.5
sprpriority = 4
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 780, ModifyExplod]
type = ModifyExplod
trigger1 = root, Var(53) > 0
id = 781
scale = (5 + root, Var(53)) / 2000.0,.5
ignorehitpause = 1

[State 780, RemoveExplod]
type = RemoveExplod
trigger1 = root, Var(53) <= 0
id = 780
ignorehitpause = 1

[State 780, RemoveExplod]
type = RemoveExplod
trigger1 = root, Var(53) <= 0
id = 781
ignorehitpause = 1

[State 780, RemoveExplod]
type = RemoveExplod
trigger1 = root, Var(53) <= 0
id = 782
ignorehitpause = 1

[State 780, DestroySelf]
type = DestroySelf
trigger1 = root, Var(53) <= 0
ignorehitpause = 1

;CUSTOM COMBO GROUND 
[Statedef 900]
type = S
physics = S
movetype = A
anim = 900
velset = 0, 0
ctrl = 0
sprpriority = 2
poweradd = -1000

[State 900, Corner Push]
type = varset
trigger1 = time = 4
fvar(5) = 0

[State 900, Unguardable]
type = varset
trigger1 = time = 4 && numenemy
trigger1 = (enemynear, stateno != [120, 155])
var(17) = 30

[State 900, NHB]
type = nothitby
trigger1 = !time
value = SCA
time = 38

[State 900, Stop]
type = posfreeze
trigger1 = 1
value = 1

[State 900, Var]
type = varset
trigger1 = time >= 4
var(20) = 180

[State 900, Snd]
type = playsnd
trigger1 = time = 4
value = 181,0
channel = 0

[State 900, SuperPause FX]
type = helper
trigger1 = time = 4
stateno = 8400
ID = 8400
name = "Custom Combo Startup"
postype = p1
pos = -14,-52
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1
[State 900, Super Pause]
type = superpause
trigger1 = time = 4
time = 30
movetime = 30
anim = -1
sound = s900,0
p2defmul = 1
darken = 0

[State 900, AfterImage]
type = afterimage
trigger1 = !animtime
time = 2
timegap = 1
framegap = 4
length = 13
palbright = 0, 0, 0
palcontrast = 64, 128, 192
palpostbright = 0, 0, 0
paladd = 0, 0, 0
palmul = 0.75, 0.75, 0.75
trans = add1

[State 900, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;CUSTOM COMBO AIR 
[Statedef 905]
type = A
physics = N
movetype = A
anim = 905
ctrl = 0
sprpriority = 2
poweradd = -1000

[State 905, Corner Push]
type = varset
trigger1 = time = 4
fvar(5) = 0

[State 905, Unguardable]
type = varset
trigger1 = time = 4 && numenemy
trigger1 = (enemynear, stateno != [120, 155])
var(17) = 30

[State 905, NHB]
type = nothitby
trigger1 = !time
value = SCA
time = 38

[State 905, Stop]
type = posfreeze
trigger1 = 1
value = 1

[State 905, Var]
type = varset
trigger1 = time >= 4
var(20) = 180

[State 905, Snd]
type = playsnd
trigger1 = time = 4
value = 181,0
channel = 0

[State 905, SuperPause FX]
type = helper
trigger1 = time = 4
stateno = 8400
ID = 8400
name = "Custom Combo Startup"
postype = p1
pos = 2,-90
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 905, Super Pause]
type = superpause
trigger1 = time = 4
time = 30
movetime = 30
anim = -1
sound = s900,0
p2defmul = 1
darken = 0

[State 905, AfterImage]
type = afterimage
trigger1 = !animtime
time = 2
timegap = 1
framegap = 4
length = 13
palbright = 0, 0, 0
palcontrast = 64, 128, 192
palpostbright = 0, 0, 0
paladd = 0, 0, 0
palmul = 0.75, 0.75, 0.75
trans = add1

[State 905, End]
type = changestate
trigger1 = !animtime
value = 906
ctrl = 1

;CUSTOM COMBO AIR FINISH
[Statedef 906]
type = A
physics = N
movetype = I
anim = 906
ctrl = 1

[State 906, Accel]
type = gravity
trigger1 = 1

[State 906, Land]
type = changestate
trigger1 = pos y > -vel y
value = 52

;-------------------------------------------
;Focus Strike - charge state 1
;This state covers the charging aspect of the Focus Strike attack at the start.
[Statedef 901]
type = S
movetype = I
physics = S
juggle = 10
anim = 901
ctrl = 0
poweradd = 0
velset = 0,0

; These next two sctrls cover initial charge value and building it up
[State 900, starting value]
type = VarSet
trigger1 = time = 1 && var(20)
fvar(9) = 0

[State 900, adding to value]
type = VarAdd
trigger1 = time >= 1
fv = 9
value = 1
persistent = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S1,14
volumescale = 255
[State 0, AAAAAA]
type = PlaySnd
trigger1 = animelem = 6
value = S5,2
volumescale = 255
[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S1,12
volumescale = 255

; This PalFX sctrl emulates the temporary darkening of the character while charging near the start
[state 901, dark flash]
type = PalFx
trigger1 = time = 10
add = 0,0,0
sinadd = -100,-100,-100,40
time = 16

; These change states control dash cancels and moving into the attack portion
[State 900, dash cancel back]
type = ChangeState
trigger1 = time >= 8 && command = "BB"
value = 105

[State 900, dash cancel forward]
type = ChangeState
trigger1 = time >= 8 && command = "FF"
value = 100

[State 900, stopping early]
type = ChangeState
trigger1 = time >= 8 && command != "holdb" && command !="holdy"
value = 902

[State 900, fully charged]
type = ChangeState
trigger1 = fvar(9)>=60
value = 902

;---------------------------------------------
;Focus Strike - charge state 2
;This state covers the charging aspect of the Focus Strike attack if hit
[Statedef 902]
type = S
movetype = I
physics = S
juggle = 10
ctrl = 0
poweradd = 0
velset = 0,0

; This part covers the after effects of getting hit from earlier.
[state 901, no more saving hit]
type = varset
trigger1 = time = 1
var(20) = 0

[state 901, white flash]
type = PalFx
trigger1 = time = 1
sinadd = 128,128,128,16
time = 8

[State 901, life removal]
type = LifeAdd
trigger1 = time = 1 && !var(20)
value = -(gethitvar(damage))
kill = 1

; This ctrl changes the animframe back to the last active one
[State 901, ChangeAnim]
type =  Null
trigger1 = time = 0
value = 901
elem = var(22)

; This varset is the continuation of charging
[State 901, adding to charge]
type = VarAdd
trigger1 = time >= 1
fv = 9
value = 1
persistent = 1

; These change states control dash cancels and moving into the attack portion
[State 901, dash cancel]
type = ChangeState
trigger1 = time >= 8 && command = "BB"
value = 105

[State 901, dash cancel forward]
type = ChangeState
trigger1 = time >= 8 && command = "FF"
value = 100

[State 901, early release]
type = ChangeState
trigger1 = time >= 8 && command != "holdb" && command != "holdy"
value = 903

[State 901, fully charged]
type = ChangeState
trigger1 = fvar(9)>=60
value = 903

;----------------------------------------
;Focus Attack - actual attack
[Statedef 903]
type = S
movetype = A
physics = S
juggle = 10
anim = 902
ctrl = 0
velset = 0,0

;PalFX sctrls; the first removes any earlier stuff, and the second the white flash
;that appears if you have maxed out focus
[state 901, cancel earlier fx flash]
type = PalFx
trigger1 = time = 0
add = 0,0,0
time = 0

[state 901, bright flash if maxed out]
type = PalFx
triggerall =FVar(9) = 60
trigger1 = time = 1
add = 128,128,128
sinadd = -128,-128,-128,32
time = 8

[State 0, NYOOM]
type = PlaySnd
trigger1 = !time
value = S1,13
volumescale = 255

[State 0, NYOOM]
type = PlaySnd
trigger1 = !time && fvar(9) = 60
value = S1,15
volumescale = 255
[State 0, Woosh]
type = Explod
trigger1 = fvar(9) = 60
trigger1 = !time
anim = 904
ID = 904
pos = -19,-19
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
removetime = -2
scale = -.65,-.65
sprpriority = 0
ontop = 0
;ignorehitpause =
;trans = 
;persistent =
;supermove = 0
;pausemove = 0


[State 1003, VelSetStart]
type = VelSet
trigger1 = anim = 902
x = 16+(fvar(9)/8)
persistent = 0

[State 0, Woosh]
type = Helper
trigger1 = !time
stateno = 8103
ID = 8100
name = "Dash Dust"
postype = p1
facing = 1
pausemovetime = 255
supermovetime = 255
ownpal = 1

; The hitdef used depends on the how long you've been charging.
; In case you are wondering why there are 2 versions of each lvl's
; hitdef, the second one has been refined to compensate for hitting
; air opponents.
;lvl 1
[State 902, 0-30]
type = HitDef
triggerall = P2stateno != [5020,5040]
triggerall = p2stateno != [154,155]
trigger1 = AnimElem = 3 && (FVar(9) = [0,29])
attr = S, NA
damage= 40,0
animtype = Hard
guardflag = M
hitflag = M
priority = 4, Hit
pausetime = 9, 9
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=83), var(36):=-10
hitsound = s2,1001
guardsound = s3, 0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 14
ground.velocity = -8.95
guard.slidetime = 18
guard.hittime = 18
guard.ctrltime = 12
airguard.velocity = -3.5,-4
air.type = High
air.velocity = -3.5,-6
air.hittime = 9
getpower = 101,101
givepower = 21,21
ground.cornerpush.veloff = -7.25
air.cornerpush.veloff = 0
yaccel = .55
air.fall = 1
air.juggle = 15
envshake.time = 6
envshake.freq = 120
envshake.ampl = 4

[State 902, 0-30]
type = HitDef
triggerall = P2stateno != [5020,5040]
triggerall = p2stateno != [154,155]
triggerall = p2statetype = A
trigger1 = AnimElem = 2 && (FVar(9) = [0,29])
attr = S, NA
damage= 40,0
animtype = Hard
guardflag = A
hitflag = A
priority = 4, Hit
pausetime = 9, 9
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=83), var(36):=-10
hitsound = s2,1001
guardsound = s3, 0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 14
ground.velocity = -6.95
guard.slidetime = 18
guard.hittime = 18
guard.ctrltime = 12
airguard.velocity = -3.5,-4
air.type = High
air.velocity = -3.5,-6
air.hittime = 9
getpower = 101,101
givepower = 21,21
ground.cornerpush.veloff = -7.25
air.cornerpush.veloff = 0
yaccel = .55
air.fall = 1
air.juggle = 15
envshake.time = 6
envshake.freq = 120
envshake.ampl = 4

; Counter version of lvl 1: If you counterhit when at this early stage, crumple is possible it seems.
[State 902, 0-30 counter ver]
type = HitDef
triggerall = P2stateno != [5020,5040]
triggerall = p2stateno != [154,155]
trigger1 = AnimElem = 2 && (FVar(9) = [0,29])
trigger1 = p2movetype = A && p2statetype !=A
attr = S, NA
damage= 40,0
animtype = Back
guardflag = M
hitflag = M
priority = 6, Hit
pausetime = 9, 9
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=83), var(36):=-10
hitsound = s2,1001
guardsound = s3, 0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 14
ground.velocity = -6.95
guard.slidetime = 18
guard.hittime = 18
guard.ctrltime = 12
airguard.velocity = -3.5,-4
air.type = High
air.velocity = -3.5,-6
air.hittime = 9
getpower = 101,101
givepower = 21,21
ground.cornerpush.veloff = -7.25
air.cornerpush.veloff = 0
yaccel = .55
air.fall = 1
fall = 1
air.juggle = 15
envshake.time = 6
envshake.freq = 120
envshake.ampl = 4

;lvl 2
[State 902, 31-59]
type = HitDef
triggerall = P2stateno != [5020,5040]
triggerall = p2stateno != [154,155]
trigger1 = AnimElem = 3 && (FVar(9) = [31,59])
attr = S, NA
damage= 60,0
animtype = Hard
guardflag = M
hitflag = M
priority = 4, Hit
pausetime = 11, 11
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=83), var(36):=-10
hitsound = s2,1001
guardsound = s3, 0
ground.type = Trip
ground.slidetime = 16
ground.hittime  = 16
ground.velocity = -8.95
guard.slidetime = 18
guard.hittime = 18
guard.ctrltime = 12
airguard.velocity = -3.5,-4
air.type = High
air.velocity = -3.5,-6
air.hittime = 9
getpower = 101,101
givepower = 21,21
ground.cornerpush.veloff = -7.25
air.cornerpush.veloff = 0
yaccel = .55
air.fall = 1
air.juggle = 15
envshake.time = 8
envshake.freq = 120
envshake.ampl = 4

[State 902, 31-59 b]
type = HitDef
triggerall = P2stateno != [5020,5040]
triggerall = p2stateno != [154,155]
triggerall = p2statetype = A
trigger1 = AnimElem = 2 && (FVar(9) = [30,59])
attr = S, NA
damage= 60,0
animtype = Hard
guardflag = A
hitflag = A
priority = 5, Hit
pausetime = 11, 11
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=83), var(36):=-10
hitsound = s2,1001
guardsound = s3, 0
ground.type = Trip
ground.slidetime = 16
ground.hittime  = 16
ground.velocity = -4.95
guard.slidetime = 18
guard.hittime = 18
guard.ctrltime = 12
airguard.velocity = -3.5,-4
air.type = High
air.velocity = -3.5,-6
air.hittime = 9
getpower = 101,101
givepower = 21,21
ground.cornerpush.veloff = -7.25
air.cornerpush.veloff = 0
yaccel = .55
air.fall = 1
air.juggle = 15
envshake.time = 8
envshake.freq = 120
envshake.ampl = 4

[State 902, 31-59 counter]
type = HitDef
triggerall = P2stateno != [5020,5040]
triggerall = p2stateno != [154,155]
trigger1 = p2movetype = A && p2statetype !=A
trigger1 = AnimElem = 2 && (FVar(9) = [30,59])
attr = S, NA
damage= 60,0
animtype = Back
hitflag = M
priority = 5, Hit
pausetime = 11, 11
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=83), var(36):=-10
hitsound = s2,1001
guardsound = s3, 0
ground.type = Trip
ground.slidetime = 16
ground.hittime  = 16
ground.velocity = -4.95
guard.slidetime = 18
guard.hittime = 18
guard.ctrltime = 12
airguard.velocity = -3.5,-4
air.type = High
air.velocity = -3.5,-6
air.hittime = 9
getpower = 101,101
givepower = 21,21
ground.cornerpush.veloff = -7.25
air.cornerpush.veloff = 0
yaccel = .55
air.fall = 1
fall = 1
air.juggle = 15
envshake.time = 8
envshake.freq = 120
envshake.ampl = 4

;lvl 3 MAX
[State 902, max-charge]
type = HitDef
triggerall = P2stateno != [5020,5040]
triggerall = p2stateno != [154,155]
trigger1 = AnimElem = 3 && FVar(9) = 60
attr = S, NA
damage= 85,0
animtype = Hard
;guardflag = MA ;<-- Commented out as you will not be blocking this. This will hurt, and you will fall!
hitflag = MAF
priority = 4, Hit
pausetime = 14, 14
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=83), var(36):=-10
hitsound = s2,1001
guardsound = s3, 0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 14
ground.velocity = -4.95
guard.slidetime = 18
guard.hittime = 18
guard.ctrltime = 12
airguard.velocity = -3.5,-4
air.type = High
air.velocity = -3.5,-6
air.hittime = 9
getpower = 101,101
givepower = 21,21
ground.cornerpush.veloff = -7.25
air.cornerpush.veloff = 0
yaccel = .55
air.fall = 1
air.juggle = 15
p2stateno = 904 ;<-- This is the p2 crumple state
envshake.time = 16
envshake.freq = 120
envshake.ampl = 4

[State 902, max-charge]
type = HitDef
triggerall = P2stateno != [5020,5040]
triggerall = p2stateno != [154,155]
triggerall = p2statetype = A
trigger1 = AnimElem = 2 && FVar(9) = 60
attr = S, NA
damage= 85,0
animtype = Hard
hitflag = A
priority = 6, Hit
pausetime = 14, 14
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=83), var(36):=-10
hitsound = s2,1001
guardsound = s3, 0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 14
ground.velocity = -4.95
guard.slidetime = 18
guard.hittime = 18
guard.ctrltime = 12
airguard.velocity = -3.5,-4
air.type = High
air.velocity = -3.5,-6
air.hittime = 9
getpower = 101,101
givepower = 21,21
ground.cornerpush.veloff = -7.25
air.cornerpush.veloff = 0
yaccel = .55
air.fall = 1
air.juggle = 15
envshake.time = 16
envshake.freq = 120
envshake.ampl = 4

[State 902, fvar reset]
type = VarSet
trigger1 = !AnimTime
fvar(9) = 0

;Dash Cancels upon movecontact
[State 902, dash cancel]
type = ChangeState
trigger1 = Movecontact && command = "FF"
value = 100

[State 902, dash cancel]
type = ChangeState
trigger1 = Movecontact && command = "BB"
value = 105

[State 902, end]
type = ChangeState
trigger1 = AnimTime =0
value = 0
ctrl = 1

;----------------------------------------
;Focus Attack - p2 crumple state
[Statedef 904]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0,0

;Fixes the y pos just in case.
[State 903, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 903, Change to custom crumple anim]
type = ChangeAnim2
trigger1 = time = 1
value = 903

[State 903, Hitoverride if hit by non-fall move]
type = HitOverride
trigger1 = stateno = 904
attr = SCA,NA,SA,HA,NP,SP,HP
stateno = 5020
time = 1
forceair = 1

[State 903, Return to their own states]
type = SelfState
trigger1 = anim = 903 && !animtime
value = 5110
ctrl = 1



;GUARD START 
[Statedef 120]
type = U
physics = U
anim = 120 + (statetype = C) + (statetype = A) * 2
[State 120, Type]
type = statetypeset
trigger1 = !time && statetype = S
physics = S
[State 120, Type]
type = statetypeset
trigger1 = !time && statetype = C
physics = C
[State 120, Type]
type = statetypeset
trigger1 = !time && statetype = A
physics = A
[State 120, Vel]
type = velset
trigger1 = !time && statetype != A
x = 0
y = 0
[State 120, High to Low]
type = statetypeset
trigger1 = !AILevel && StateType = S && command = "holddown"
trigger2 = AILevel && StateType = S && (EnemyNear, MoveType = A) && (EnemyNear, StateType = C)
statetype = C
physics = C
[State 120, Low to High]
type = statetypeset
trigger1 = !AILevel && StateType = C && command != "holddown"
trigger2 = AILevel && StateType = C && (EnemyNear, MoveType = A) && (EnemyNear, StateType != C)
statetype = S
physics = S
[State 120, AI fix]
type = ctrlset
trigger1 = AIlevel && numenemy
value = (enemynear, time >= 120 || time >= 180)
[State 120, End]
type = changestate
trigger1 = !animtime || AIlevel
value = 130 + (statetype = C) + (statetype = A) * 2
[State 120, Stop]
type = changestate
trigger1 = (!AIlevel && command != "holdback")
trigger2 = !inguarddist
trigger3 = AIlevel && numenemy
trigger3 = enemynear, hitdefattr = SCA, AT
value = 140


;STAND GUARD (guarding) ---
[Statedef 130]
type = S
physics = S
[State 130, Anim]
type = changeanim
trigger1 = anim != 130
value = 130
[State 130, AI fix]
type = ctrlset
trigger1 = AIlevel && numenemy
value = (enemynear, time >= 120 || time >= 180)
[State 130, High to Low]
type = changestate
trigger1 = !AIlevel && command = "holddown"
trigger2 = AILevel && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = (EnemyNear, MoveType = A) && (EnemyNear, StateType = C)
value = 131
[State 130, Stop Guarding]
type = changestate
trigger1 = (!AIlevel && command != "holdback")
trigger2 = !inguarddist
trigger3 = AIlevel && numenemy
trigger3 = enemynear, hitdefattr = SCA, AT
value = 140
[State 130, Snd]
type = playsnd
trigger1 = !time
trigger1 = prevstateno = 132 || (prevstateno = [154, 155])
value = 52,0
[State 130, Dust]
type = explod
trigger1 = !time
trigger1 = prevstateno = 132 || (prevstateno = [154, 155])
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

;CROUCH GUARD (guarding) ---
[Statedef 131]
type = C
physics = C
[State 131, Anim]
type = changeanim
trigger1 = anim != 131
value = 131
[State 131, Low to High]
type = changestate
trigger1 = !AIlevel && command != "holddown"
trigger2 = AILevel && Random < (125 * (AILevel ** 2 / 64.0))
trigger2 = (EnemyNear, MoveType = A) && (EnemyNear, StateType != C)
value = 130
[State 131, AI fix]
type = ctrlset
trigger1 = AIlevel && numenemy
value = (enemynear, time >= 120 || time >= 180)
[State 131, Stop Guarding]
type = changestate
trigger1 = (!AIlevel && command != "holdback")
trigger2 = !inguarddist
trigger3 = AIlevel && numenemy
trigger3 = enemynear, hitdefattr = SCA, AT
value = 140


;AIR GUARD (guarding) ---
[Statedef 132]
type = A
physics = N
[State 132, Anim]
type = changeanim
trigger1 = anim != 132
value = 132
[State 132, Accel]
type = veladd
trigger1 = 1
y = const(movement.yaccel)
[State 132, Var]
type = varset
trigger1 = 1
sysvar(0) = (pos y >= 0 && vel y > 0)
[State 132, Vel]
type = velset
trigger1 = sysvar(0)
y = 0
[State 132, Pos]
type = posset
trigger1 = sysvar(0)
y = 0
[State 132, AI fix]
type = ctrlset
trigger1 = AIlevel && numenemy
value = (enemynear, time >= 120 || time >= 180)
[State 132, End]
type = changestate
trigger1 = sysvar(0) && inguarddist
trigger1 = (!AIlevel && command = "holdback") || AIlevel
value = 130
[State 132, End]
type = changestate
trigger1 = sysvar(0)
value = 52
[State 132, stop guarding]
type = changestate
trigger1 = (!AIlevel && command != "holdback")
trigger2 = !inguarddist
trigger3 = AIlevel && numenemy
trigger3 = enemynear, hitdefattr = SCA, AT
value = 140


;GUARD (end) ---
[Statedef 140]
type = U
physics = U
ctrl = 1
[State 140, Anim]
type = changeanim
trigger1 = !time
value = 140 + (statetype = C) + (statetype = A) * 2
[State 140, Type]
type = statetypeset
trigger1 = !time && statetype = S
physics = S
[State 140, Type]
type = statetypeset
trigger1 = !time && statetype = C
physics = C
[State 140, Type]
type = statetypeset
trigger1 = !time && statetype = A
physics = A
[State 140, High to Low]
type = statetypeset
trigger1 = !AIlevel && statetype = S && command = "holddown"
trigger2 = AILevel && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = StateType = S && (EnemyNear, MoveType = A) && (EnemyNear, StateType = C)
statetype = C
physics = C
[State 140, Low to High]
type = statetypeset
trigger1 = !AIlevel && statetype = C && command != "holddown"
trigger2 = AILevel && Random < (125 * (AILevel ** 2 / 64.0))
trigger2 = StateType = C && (EnemyNear, MoveType = A) && (EnemyNear, StateType != C)
statetype = S
physics = S
[State 140, End]
type = changestate
trigger1 = !animtime
value = (statetype = C) * 11 + (statetype = A) * 51

;SGUARDHIT (shaking) ---
[Statedef 150]
type = S
movetype = H
physics = N
velset = 0, 0
[State 150, Anim]
type = changeanim
trigger1 = 1
value = 150
[State 150, End]
type = changestate
trigger1 = hitshakeover
value = 151 + 2 * ((!AIlevel && command = "holddown") || (AIlevel && (enemynear, movetype = A) && (enemynear, statetype = C)))
[State 150, High to Low]
type = statetypeset
trigger1 = !AIlevel && statetype = S && command = "holddown"
trigger2 = AILevel && Random < (250 * (AILevel ** 2 / 64.0))
statetype = C
physics = C
[State 150, Low to High]
type = statetypeset
trigger1 = !AIlevel && statetype = C && command != "holddown"
trigger2 = AIlevel && Random < (125 * (AILevel ** 2 / 64.0))
trigger2 = StateType = C && (EnemyNear, MoveType = A) && (EnemyNear, StateType != C)
statetype = S
physics = S
;SGUARDHIT2 (knocked back) ---
[Statedef 151]
type = S
movetype = H
physics = S
anim = 150
[State 151, Vel]
type = hitvelset
trigger1 = !time
x = 1
[State 151, Vel]
type = velset
trigger1 = time = gethitvar(slidetime)
trigger2 = hitover
x = 0
[State 151, Ctrl]
type = ctrlset
trigger1 = time = gethitvar(ctrltime)
value = 1
[State 151, High to Low]
type = statetypeset
trigger1 = !AIlevel && statetype = S && command = "holddown"
trigger2 = AILevel && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = StateType = S && (EnemyNear, MoveType = A) && (EnemyNear, StateType = C)
statetype = C
physics = C
[State 151, Low to High]
type = statetypeset
trigger1 = !AIlevel && statetype = C && command != "holddown"
trigger2 = AILevel && Random < (125 * (AILevel ** 2 / 64.0))
trigger2 = StateType = C && (EnemyNear, MoveType = A) && (EnemyNear, StateType != C)
statetype = S
physics = S

[State 151, End]
type = changestate
trigger1 = hitover
value = 130
ctrl = 1


;CGUARDHIT (shaking) ---
[Statedef 152]
type = C
movetype = H
physics = N
velset = 0, 0
[State 152, Anim]
type = changeanim
trigger1 = 1
value = 151
[State 152, End]
type = changestate
trigger1 = hitshakeover
value = 151 + 2 * ((!AIlevel && command = "holddown") || (AIlevel && (enemynear, movetype = A) && (enemynear, statetype = C)))
[State 152, High to Low]
type = statetypeset
trigger1 = !AIlevel && statetype = S && command = "holddown"
trigger2 = AILevel && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = StateType = S && (EnemyNear, MoveType = A) && (EnemyNear, StateType = C)
statetype = C
physics = C
[State 152, Low to High]
type = statetypeset
trigger1 = !AIlevel && statetype = C && command != "holddown"
trigger2 = AILevel && Random < (125 * (AILevel ** 2 / 64.0))
trigger2 = StateType = C && (EnemyNear, MoveType = A) && (EnemyNear, StateType != C)
statetype = S
physics = S


;CGUARDHIT2 (knocked back) ---
[Statedef 153]
type = C
movetype = H
physics = C
anim = 151
[State 153, Vel]
type = hitvelset
trigger1 = !time
x = 1
[State 153, Vel]
type = velset
trigger1 = time = gethitvar(slidetime)
trigger2 = hitover
x = 0
[State 153, Ctrl]
type = ctrlset
trigger1 = time = gethitvar(ctrltime)
value = 1
[State 153, High to Low]
type = statetypeset
trigger1 = !AIlevel && statetype = S && command = "holddown"
trigger2 = AILevel && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = StateType = S && (EnemyNear, MoveType = A) && (EnemyNear, StateType = C)
statetype = C
physics = C
[State 153, Low to High]
type = statetypeset
trigger1 = !AIlevel && statetype = C && command != "holddown"
trigger2 = AILevel && Random < (125 * (AILevel ** 2 / 64.0))
trigger2 = StateType = C && (EnemyNear, MoveType = A) && (EnemyNear, StateType != C)
statetype = S
physics = S
[State 153, End]
type = changestate
trigger1 = hitover
value = 131
ctrl = 1


;AGUARDHIT (shaking) ---
[Statedef 154]
type = A
movetype = H
physics = N
velset = 0, 0
[State 154, Anim]
type = changeanim
trigger1 = 1
value = 152
[State 154, End]
type = changestate
trigger1 = hitshakeover
value = 155


;AGUARDHIT2 (knocked away) ---
[Statedef 155]
type = A
movetype = H
physics = N
anim = 152
[State 155, Vel]
type = hitvelset
trigger1 = !time
x = 1
y = 1
[State 155, Vel]
type = veladd
trigger1 = 1
y = const(movement.yaccel)
[State 155, Ctrl]
type = ctrlset
trigger1 = time = gethitvar(ctrltime)
value = 1
[State 155, Var]
type = varset
trigger1 = 1
sysvar(0) = (pos y >= 0 && vel y > 0)
[State 155, Vel]
type = velset
trigger1 = sysvar(0)
y = 0
[State 155, Pos]
type = posset
trigger1 = sysvar(0)
y = 0
[State 155, End]
type = changestate
trigger1 = sysvar(0) && inguarddist
trigger1 = (!AIlevel && command = "holdback") || AIlevel
value = 130
[State 155, End]
type = changestate
trigger1 = sysvar(0)
value = 52

;LOSE 
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0, 0

[State 170, Assert]
type = assertspecial
trigger1 = Time < 200
flag = roundnotover


;DRAW GAME
[Statedef 175]
type = S
ctrl = 0
velset = 0, 0
[State 175, switch]
type = changestate
trigger1 = !time
value = 170

;---------------------------------------------------------------------------
; Win state decider
[Statedef 180]
type = S

[State 180, 1]
type = ChangeState
trigger1 = time = 0
trigger1 = helper(8600),var(0) != 7
value = 181+(random%6)
[State 180, 1]
type = ChangeState
trigger1 = time = 0
trigger1 = helper(8600),var(0) = 7
value = 184
;---------------------------------------------------------------------------
;Win Pose - The "Chun Li"
[Statedef 181]
type = S
anim = 180
velset = 0,0
ctrl = 0

[State 180,PlaySnd]
type= PlaySnd
trigger1=AnimElem=1
value=5,10

[State 180, GhostPal]
type = Trans
trigger1 = PalNo = 7
ignorehitpause=1
Trans = add

[State 180, NoShadow]
type=AssertSpecial
trigger1 = PAlNo=7
ignorehitpause=1
flag = noshadow



;---------------------------------------------------------------------------
; Win Pose - Respect
[Statedef 182]
type = S
anim = 0
velset = 0,0
ctrl = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 16
value = 181

[State 180, 0]
type = AssertSpecial
trigger1 = Time < 100
flag = RoundNotOver

[State 180, 0]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 0, PalFX]
type = PalFX
trigger1 = time = [0,16]
time = 1
add = time*16,time*16,time*16
mul = 256,256,256

[State 0, PalFX]
type = PalFX
trigger1 = time = [16,32]
time = 1
add = 256-(time-16)*16,256-(time-16)*16,256-(time-16)*16
mul = 256,256,256

[State 181,PlaySnd]
type= PlaySnd
trigger1=!time
value=0,1001

[State 181, 0]
type = AssertSpecial
trigger1 = Time < 120
flag = RoundNotOver

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 181,PlaySnd]
type= PlaySnd
trigger1=time = 16
value=1,23

[State 181,PlaySnd]
type= PlaySnd
trigger1=!time
value=0,1001


[State 181, GhostPal]
type = Trans
trigger1 = PalNo = 7
ignorehitpause=1
Trans = add

[State 181, NoShadow]
type=AssertSpecial
trigger1 = PAlNo=7
ignorehitpause=1
flag = noshadow
;---------------------------------------------------------------------------
; Win Pose - Muscle Man
[Statedef 183]
type = S
anim = 0
velset = 0,0
ctrl = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 8
value = 182

[State 0, PalFX]
type = PalFX
trigger1 = time = [0,8]
time = 8
add = time*32,time*32,time*32
mul = 256,256,256

[State 0, PalFX]
type = PalFX
trigger1 = time = [16,32]
time = 1
add = 256-(time-16)*16,256-(time-16)*16,256-(time-16)*16
mul = 256,256,256


[State 182, 0]
type = AssertSpecial
trigger1 = Time < 320
flag = RoundNotOver

[State 182, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 182, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S0,1000

[State 181,PlaySnd2]
type= PlaySnd
trigger1=time = 16
value=1,24


[State 182, GhostPal]
type = Trans
trigger1 = PalNo = 7
ignorehitpause=1
Trans = add

[State 182, NoShadow]
type=AssertSpecial
trigger1 = PAlNo=7
ignorehitpause=1
flag = noshadow

[State 0, AngleDraw]
type = AngleDraw
trigger1 = time = [8,16]
scale = .5+(time-8)*.0625,.75+(time-8)*.03125




;---------------------------------------------------------------------------
; Win Pose - You forced me to do this.
[Statedef 184]
type = S
anim = 183
velset = 0,0
ctrl = 0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 0, PosSet]
type = PosSet
trigger1 = !time
trigger1 = screenpos x < 50 || screenpos x > 270
x = 0

[State 0, Explod]
type = Explod
trigger1 = time = 50
anim = 16260
ID = 16260
pos = floor(screenpos x),floor(screenpos y)
postype = left  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
pausemovetime = 0
scale = 1,1
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, Explod]
type = Explod
trigger1 = time = 50
anim = 16261
ID = 16261
pos = floor(screenpos x),floor(screenpos y)
postype = left  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
pausemovetime = 0
scale = 1,1
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = [50,58]
ID = 16260
trans = addalpha
alpha = 0,256-(time-50)*32

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = [50,58]
ID = 16261
trans = addalpha
alpha = (time-50)*32,256

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S21,13
volume = 255
channel = -1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time < 165
flag = roundnotover
flag2 = nofg







;---------------------------------------------------------------------------
; Win Pose - SUPER SAIYAN, B^&%CH
[Statedef 185]
type = S
velset = 0,0
sprpriority = 1
anim = 19050
ctrl = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S5,11
volume = 255
channel = -1

[State 0, PalFX]
type = PalFX
trigger1 = !time
time = 600
add = 0,0,0
mul = 256,256,256
sinadd = 16,16,16,10
invertall = 0
color = 256

[State 0, BGPalFX]
type = BGPalFX
trigger1 = time = [0,20] 
time = 700
add = 256-time*16,256-time*16,256-time*16
mul = 256,256,256
sinadd = 16,16,16,10

[State 181, 0]
type = AssertSpecial
trigger1 = Time < 400
flag = RoundNotOver

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 0, EnvColor]
type = EnvColor
trigger1 = !time
value = 255,255,0
time = 1
under = 0

[State 0, VarRandom]
type = VarRandom
trigger1 = 1
v = 31
range = 1,2

[State 0, Explod]
type = Explod
trigger1 = time = 2
anim = 16564
ID = 16564
pos = 0,floor(-pos y)
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, Explod]
type = Explod
trigger1 = time = 3
anim = 16565
ID = 16565
pos = 0,floor(-pos y+10)
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
pausemovetime = 0
scale = 1,1
sprpriority = 7
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, Explod]
type = Explod
trigger1 = 1
anim = 16560+(random<333)+(random<666)
ID = 16560+(random<333)+(random<666)
pos = 50*IfElse(var(31)=1,1,-1),-130
postype = p1  ;p2,front,back,left,right
facing = IfElse(var(31)=1,1,-1)
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = .65,.85
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, Explod]
type = Explod
trigger1 = time = 5
anim = 8105
ID = 16010
pos = 0,floor(-pos y)
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
pausemovetime = 0
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, PosAdd]
type = posSet
trigger1 = 1
y = floor(-10-(sin(time*.1))*3.00)

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S24,0
volume = 255
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S24,2
volume = 255
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time > 0
trigger1 = time % 46 = 0
value = S24,1
volume = 255
channel = -1

[State 0, EnvShake]
type = EnvShake
trigger1 = !time
time = 60
freq = 180
ampl = -8

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 45
time = 500
freq = 90
ampl = -3

;---------------------------------------------------------------------------
; Win Pose - Fatality much
[Statedef 186]
type = S
anim = 185
velset = 0,0
ctrl = 0

[State 181,PlaySnd]
type= PlaySnd
trigger1=!time
value=5,12

[State 181, 0]
type = AssertSpecial
trigger1 = Time < 120
flag = RoundNotOver

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 181, GhostPal]
type = Trans
trigger1 = PalNo = 7
ignorehitpause=1
Trans = add

[State 181, NoShadow]
type=AssertSpecial
trigger1 = PAlNo=7
ignorehitpause=1
flag = noshadow

;---------------------------------------------------------------------------
; Win Pose - Killer
[Statedef 187]
type = S
anim = 186
velset = 0,0
ctrl = 0

[State 181,PlaySnd]
type= PlaySnd
trigger1=!time
value=5,13

[State 0, BGPalFX]
type = BGPalFX
trigger1 = animelem = 3,>=0
time = 1
mul = 192,192,192

[State 181,PlaySnd]
type= PlaySnd
trigger1=animelem = 3
value=25,1

[State 0, Offset]
type = Offset
trigger1 = time = [195,220]
x = 0-(time-195)*30
y = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 180
value = S20,17
volume = 255
channel = -1
;lowpriority = -1
;ignorehitpause = 
;persistent = 


[State 0, Offset]
type = Offset
trigger1 = time = 250
x = 0
y = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 210
value = S25,0
volume = 255
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 220
value = S25,3
volume = 255
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 345
value = S1,25
volume = 255
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 590
value = S25,4
volume = 255
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 540
value = S25,2
volume = 255
channel = -1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay

[State 0, Explod]
type = Explod
trigger1 = time = 540
anim = 19060
ID = 19060
pos = floor(gamewidth/2),50
postype = left  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
pausemovetime = 0
scale = 1,1
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, Explod]
type = Explod
trigger1 = time = 750
anim = 19061
ID = 19061
pos = floor(gamewidth/2),90
postype = left  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
pausemovetime = 0
scale = 1,1
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0



[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 770
value = S25,5
volume = 255
channel = -1

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 220
time = 30
freq = 120
ampl = -2

[State 0, EnvShake]
type = EnvShake
trigger1 = animelem = 10
trigger2 = time = 195
time = 5
freq = 120
ampl = -2

[State 0, Explod]
type = Explod
trigger1 = animelem = 10
anim = 16020
ID = 16020
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = 1,.33
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 181, 0]
type = AssertSpecial
trigger1 = Time < 900
flag = RoundNotOver

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 181, GhostPal]
type = Trans
trigger1 = PalNo = 7
ignorehitpause=1
Trans = add

[State 181, NoShadow]
type=AssertSpecial
trigger1 = PAlNo=7
ignorehitpause=1
flag = noshadow

;---------------------------------------------------------------------------
; Introduction - Decider
[Statedef 190]
type = S
ctrl = 0
anim = 1
velset = 0,0

[State 190, vs Darwin]
type = ChangeState
triggerall = time = 0
trigger1 = enemy,name= "Darwin"
trigger2 = enemy,name= "Darwin Watterson, but POTS" ;|| p4name="Gumball Watterson"
value=191

[State 190, vs Batman]
type = ChangeState
triggerall = time = 0
trigger1 = enemy,name= "BATMAN" ;|| p4name="BATMAN"
value=192

[State 190,vs Gumball]
type = ChangeState
triggerall = time = 0
trigger1 = enemy,name= "Gumball Watterson" ;|| p4name="Gumball Watterson"
trigger2 = enemy,name= "Gumball Watterson, but POTS" ;|| p4name="Gumball Watterson"
value=199

[State 190,vs KungFuMan]
type = ChangeState
triggerall = time = 0
trigger1 = enemy,name= "Kung Fu Man" ;|| p4name="Kung Fu Man"
trigger2 = enemy,name= "the kung fu man" ;|| p4name="the kung fu man"
value=198

[State 190,vs Mario/Luigi]
type = ChangeState
triggerall = time = 0
trigger1 = enemy,name= "SuperMario" ;|| p4name="SuperMario"
trigger2 = enemy,name= "SuperLuigi" ;|| p4name="SuperLuigi"
trigger3 = enemy,name= "Mario" ;|| p4name="Mario"
trigger4 = enemy,name= "Luigi" ;|| p4name="Luigi"
trigger5 = enemy,name= "Bowser" ;|| p4name="Bowser"
value=197

[State 190,vs Ironman]
type = ChangeState
triggerall = time = 0
trigger1 = enemy,name = "Ironman" ;|| p4name="Ironman"
trigger2 = enemy,name = "WarMachine" ;||p4name="WarMachine"
value=201

[State 190,vs Nicole]
type = ChangeState
triggerall = time = 0
trigger1 = enemy,name= "Nicole Watterson" ;|| p4name="Nicole Watterson"
value=202

[State 190, 0]
type = varrandom
trigger1 = 1
v = 59
range = 1,3; depends on how many intros u have, you can put 1,3 so you can have three intros

[State 190, 0]
type = changestate
trigger1 = var(59) = 1 
trigger1 = time = 0
value = 196

[State 190, 0]
type = changestate
trigger1 = var(59) = 2
trigger1 = time = 0
value = 191

[State 190, 0]
type = changestate
trigger1 = var(59) = 3
trigger1 = time = 0
value = 193
;---------------------------------------------------------------------------
;Intro vs Batman
[Statedef 192]
type = S
sprpriority=2
ctrl=0
anim=192

[State 192,AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Intro
flag2 = nobardisplay
flag3= nomusic


[State 192, sound1]
type = PlaySnd
trigger1 = Time=30
channel=1
value = 192,0

[State 192, sound2]
type = PlaySnd
trigger1 = Time=400
channel=1
value = 192,1

[State 192, sound3]
type = PlaySnd
trigger1 =AnimElem=4
channel=1
value = 192,2

[State 192, sound4]
type = PlaySnd
trigger1 =AnimElem=28
channel=1
value = 100,0

[State 192, 0]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
;---------------------------------------------------------------------------
;The Words Intro
[Statedef 191]
type = S
sprpriority=1
ctrl=0
anim=0

[State 191,AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 191, 0]
type = ChangeState
trigger1 = time = 90
value = 0

[State 191,PlaySnd]
type= PlaySnd
trigger1=time=30
value=S1,6

[State 0, Explod]
type = Explod
trigger1 = time = 30
anim = 8351
ID = 915
pos = 15,-0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = .5,1
sprpriority = 6
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 191, GhostPal]
type = Trans
trigger1 = PalNo = 7
Trans = add

[State 0, AngleDraw]
type = AngleDraw
trigger1 = time = [34,43]
scale = .125+(time-34)*.0875,5-(time-34)*.4

[State 0, PalFX]
type = PalFX
trigger1 = time = [0,34]
time = 1
add = 256,256,256
mul = 256,256,256
invertall = 0
color = 256

[State 0, PalFX]
type = PalFX
trigger1 = time = [34,66]
time = 1
add = 256-(time-34)*8,256-(time-34)*8,256-(time-34)*8
mul = 256,256,256
invertall = 0
color = 256

[State 0, Trans]
type = Trans
trigger1 = time = [0,34]
trans = addalpha
alpha = 0,256

[State 0, Trans]
type = Trans
trigger1 = time = [34,60]
trigger1 = palno != 7
trans = addalpha
alpha = (time-34)*16,256-(time-34)*16

[State 0, Trans]
type = Trans
trigger1 = time = [34,60]
trigger1 = palno = 7
trans = addalpha
alpha = (time-34)*16,256

[State 191, NoShadow]
type=AssertSpecial
trigger1 = PAlNo=7
flag = noshadow
;---------------------------------------------------------------------------
;Bobert Intro
[Statedef 193]
type = S
sprpriority=2
ctrl=0
anim=191

[State 193,AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Intro
flag2 = nobardisplay
flag3= nomusic

[State 0, Helper]
type = Helper
trigger1 = !time
helpertype = normal ;player
name = "Bobert"
ID = 194
stateno = 194
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 0, PosAdd]
type = PosAdd
trigger1 = !time
x = -160
y = -50

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 193, sound1]
type = PlaySnd
trigger1 = !time
channel=1
value = 12,0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = [0,80]
value = 191
elem = 1

[State 0, VelSet]
type = VelSet
trigger1 = time = [90,100]
x = 16
y = 5

[State 0, VelSet]
type = VelSet
trigger1 = time = 100
x = 0
y = 0

[State 0, PosSet]
type = PosSet
trigger1 = time = 100
y = 0

[State 193, sound2]
type = PlaySnd
trigger1 = animelem = 3
channel=-1
value = 2,5
persistent = 0

[State 193, sound2]
type = PlaySnd
trigger1 = time = 90
channel=-1
value = 101,0
persistent = 0

[State 193, sound3]
type = PlaySnd
trigger1 = AnimElem=3,10
channel=-1
value = 12,1
persistent = 0

[State 0, EnvShake]
type = EnvShake
trigger1 = animelem = 3
time = 6
freq = 90
ampl = -2
persistent = 0

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 210
time = 25
freq = 90
ampl = -4
persistent = 0

[State 193, sound4]
type = PlaySnd
trigger1 = time = 210
channel=1
value = 2,3000

[State 0, Trans]
type = Trans
trigger1 = time = [0,80]
trans = addalpha
alpha = 0,256

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = !animtime
value = 0

[State 193, 0]
type = ChangeState
trigger1 = time = 210
value = 0


;bobert himself
[Statedef 194]
type = S
sprpriority=3
ctrl=0
anim=19100
physics = N

[State 0, VelSet]
type = VelSet
trigger1 = time = 105
x = 8
y = -12

[State 0, PosAdd]
type = PosAdd
trigger1 = time = 105
x = 45
y = -45

[State 0, AngleDraw]
type = AngleDraw
trigger1 = time >= 105
value = ((time-105)*-45)*.5

[State 0, Gravity]
type = Gravity
trigger1 = time > 110

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 210

;---------------------------------------------------------------------------
;VS KFM
[Statedef 198]
type = S
sprpriority=2
ctrl=0
anim=193

[State 198,AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Intro
flag2=nomusic

[State 198, sound]
type = PlaySnd
trigger1 = Time=0
channel=1
value = 1,23

[State 198, sound]
type = PlaySnd
trigger1 = animelem = 8
value = 5,17
[State 198, sound]
type = PlaySnd
trigger1 = animelem = 8
channel=1
value = 101,0
[State 0, EnvShake]
type = EnvShake
trigger1 = animelem = 8
time = 10
freq = 90
ampl = -4
persistent = 0

[State 198, 0]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
;---------------------------------------------------------------------------
;I'm a Predator intro
[Statedef 196]
type = S
physics = N
sprpriority = 2
anim = 190
ctrl = 0

[State 196, Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro
flag2=nomusic

[State 196, Anim]
type = ChangeAnim
trigger1 = time = [0,15]
value = Anim

[State 196, State]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

[State 196, PlaySnd]
type = PlaySnd
trigger1 = time=18
value = S5,14
;---------------------------------------------------------------------------
;Intro vs Mario/Luigi/Bowser
[Statedef 197]
type=S
anim=196
ctrl=0

[State 197, State]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

[State 197, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = S16,0

[State 197, PlaySnd]
type = PlaySnd
trigger1 = Animelem=4
value = S20,1

[State 197, PlaySnd]
type = PlaySnd
trigger1 = Animelem=14
value = S16,0

[State 197, PlaySnd]
type = PlaySnd
trigger1 = Animelem=13
value = S2,5

[State 197, PlaySnd]
type = PlaySnd
trigger1 = Animelem=8
value = S10,1

[State 197, Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro
flag2=nomusic
;---------------------------------------------------------------------------
;Intro vs Ironman
[Statedef 201]
type=S
anim=197
ctrl=0

[State 201, State]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

[State 201, PlaySnd]
type = PlaySnd
trigger1 = Animelem=4
value = S194,1

[State 201, Explod]
type = Explod
trigger1 =Animelem=4 
anim = 80000
pos = 80,-15
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel=0,0
removetime = -2
pausemovetime = 0
scale = 0.4,0.4
sprpriority = 0
ownpal = 1

[State 201, Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro
flag2=nomusic

;Intro vs Nicole
[Statedef 202]
type=S
anim=198
ctrl=0

[State 202, State]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

[State 202, Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro
flag2=nomusic
;---------------------------------------------------------------------------
;Intro vs Himself
[Statedef 199]
type = S
anim = 199
ctrl = 0

[State 199, Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro
flag2=nomusic

[State 199, State]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

[State 196, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = s5,15

;---------------------------------------------------------------------------
; Taunt
[Statedef 195]
type = S
sprpriority=2
ctrl=0
velset = 0,0
anim=195

[State 198,AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Intro
flag2=nomusic

[State 198, sound]
type = PlaySnd
trigger1 = Time=0
channel=0
value = S21,18

[State 0, BGPalFX]
type = BGPalFX
trigger1 = animelem = 9,>=0
time = 1
add = 0,0,0
mul = 192,192,192

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = animelem = 9,>=0
flag = nobardisplay


[State 0, Explod]
type = Explod
trigger1 = animelem = 9
anim = 16270
ID = 16270
pos = floor(gamewidth/2),floor(gameheight/2-30)
postype = left  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 55
pausemovetime = 0
scale = 1,1
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 0, Explod]
type = Explod
trigger1 = animelem = 9
anim = 16271
ID = 16271
pos = floor(gamewidth/2),floor(gameheight/2)
postype = left  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 55
pausemovetime = 0
scale = 1,1
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 198, 0]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Continue?
[Statedef 5500]
type = S
ctrl = 0
anim = 5300
velset = 0,0

[State 5500, 1] ;Use continue animation if available
type = ChangeAnim
trigger1 = time = 0
trigger1 = SelfAnimExist(5500)
value = 5500

;CHEAP K.O.
[Statedef 5950]
type = S
movetype = H
physics = S
anim = 5950
velset = 0, 0

[State 5950, NHB]
type = nothitby
trigger1 = 1
value = SCA

[State 5950, Pos]
type = posset
trigger1 = 1
y = 0

[State 5950, KO Snd]
type = assertspecial
trigger1 = 1
flag = nokosnd

[State 5950, KO Snd]
type = stopsnd
trigger1 = !time && !alive
channel = 0

[State 5950, KO Snd]
type = playsnd
trigger1 = animelem = 2 && !alive
value = 5950,0

[State 5981, Snd]
type = playsnd
trigger1 = animelem = 10
value = f7, 0

[State 5981, FX]
type = explod
trigger1 = animelem = 10
anim = f60
postype = p1
pos = 0, 0
sprpriority = -3

[State 5950, End]
type = changestate
trigger1 = !animtime
value = ifelse(alive, 5110, 5150)




;AIR HIT TRANSITION 
[Statedef 5035]
type = A
movetype = H
physics = N

[State 5035, Anim]
type = changeanim
trigger1 = !time
trigger1 = selfanimexist(5035)
trigger1 = anim = [5000, 5029]
value = 5035

[State 5035, Accel]
type = veladd
trigger1 = 1
y = gethitvar(yaccel)

[State 5035, Recover]
type = changestate
triggerall = !hitfall
trigger1 = hitover
trigger2 = !animtime
trigger3 = vel y > 0 && pos y >= 10
trigger4 = !time
trigger4 = anim != 5035
value = 5040

[State 5035, fall]
type = changestate
triggerall = hitfall
trigger1 = hitover
trigger2 = !animtime
trigger3 = vel y > 0 && pos y >= 10
trigger4 = !time
trigger4 = anim != 5035
value = 5050


;FALL RECOVERY
[Statedef 5200]
type = A
movetype = H
physics = N

[State 5200, Anim]
type = changeanim
trigger1 = anim = 5035 && !animtime
value = 5050

[State 5200, Vel]
type = veladd
trigger1 = 1
y = gethitvar(yaccel)

[State 5200, End]
type = selfstate
trigger1 = vel y > 0 && pos y >= 10
value = 5201

;RECOVER NEAR GROUND
[Statedef 5201]
type = S
movetype = I
physics = N
anim = 5200
ctrl = 0
facep2 = 1

[State 5201, Pos]
type = posset
trigger1 = 1
y = 0

[State 5201, VelSet]
type = VelSet
trigger1 = Time = 0
x = -6

[State 5201, VelMul]
type = VelMul
trigger1 = 1
x = 0.9

[State 5201, VelSet]
type = VelSet
trigger1 = vel X > -0.1
x = 0

[State 5201, Snd]
type = playsnd
trigger1 = !time
value = 4,4
channel = 0

[State 5201, Snd]
type = playsnd
trigger1 = !time
value = 5200,0
channel = 1

[State 5201, Flash]
type = palfx
trigger1 = !time
add = 255, 255, 255
sinadd = -255, -255, -255, 40
time = 10

[State 5201, FX]
type = helper
trigger1 = !time
stateno = 8200
ID = 8200
name = "Recover FX"
postype = p1
pos = 0, ceil(-18 * const(size.yscale))
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 5201, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[State 5201, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;FALL RECOVER AIR 
[Statedef 5210]
type = A
movetype = I
physics = N
anim = 5210
ctrl = 0
facep2 = 1

[State 5210, Accel]
type = veladd
trigger1 = 1
y = 0.6

[State 5210, Vel]
type = velset
trigger1 = !time
x = ifelse((command = "holdfwd" && command != "holdback"), 4, ifelse((command != "holdfwd" && command = "holdback"), -4, 0))
y = -7.55

[State 5210, Snd]
type = playsnd
trigger1 = !time
value = 820,0
channel = 0

[State 5210, Snd]
type = playsnd
trigger1 = !time
value = 5200,0
channel = 1

[State 5210, Flash]
type = palfx
trigger1 = !time
add = 255, 255, 255
sinadd = -255, -255, -255, 40
time = 10

[State 5210, FX]
type = helper
trigger1 = !time
stateno = 8200
ID = 8200
name = "Recover FX"
postype = p1
pos = 0, ceil(-66 * const(size.yscale))
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 5210, NHB]
type = nothitby
trigger1 = AnimElemTime(5) < 0
value = SCA
time = 1

[State 5210, Ctrl]
type = ctrlset
trigger1 = AnimElemTime(5) < 0
value = 1

[State 5210, Land]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 52



;TARGET SAFE FALL
[Statedef 5205]
type = A
physics = N
movetype = H

[State 5205, Anim]
type = changeanim
trigger1 = !animtime
trigger1 = anim = 5035
value = 5050

[State 5205, Accel]
type = veladd
trigger1 = 1
y = gethitvar(yaccel)

[State 5205, Ground]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y >= const(movement.air.gethit.groundrecover.ground.threshold)
value = 5200

[State 5205, Air]
type = selfstate
trigger1 = time >= 60
value = 5210

;============<OFF SCREEN STAND BY>=========
;Stand by
[Statedef 7827]
type=S
movetype=I
physics=N
velset=0,0
ctrl=0
facep2=1

[State 0, ScreenBound]
type=ScreenBound
trigger1 =1
value =0
ignorehitpause =1
[State 7827]
type=PosSet
trigger1=!time
y=0
ignorehitpause=1
[State 7827]
type=ChangeState
trigger1=NumEnemy=[1,2]
trigger1=Enemy(0),statetype=L || Enemy(0),movetype != H
value=7828
[State 7827]
type=ChangeState
trigger1=NumEnemy=2
trigger1=Enemy(1),statetype=L || Enemy(1),movetype != H
value=7828
;============<OFF SCREEN RUN IN>=========
;Off Screen Run In
[Statedef 7828]
type   =S
physics=S
anim=100
ctrl=0
facep2=1

[State 7828, SND]
type=playsnd
trigger1=(animelem=3 || animelem=6)
value=100,0

[State 7828]
type=PosSet
trigger1=!Time
y=0
ignorehitpause=1
[State 7828]
type=VelSet
trigger1=AnimElem=1
x=7
ignorehitpause=1
[State 7828]
type=VelSet
trigger1=AnimElemNo(0)=[1,2]
x=9
ignorehitpause=1
[State 7828]
type=AssertSpecial
trigger1=1
flag=NoWalk
ignorehitpause=1
[State 7828]
type=AssertSpecial
trigger1=1
flag=NoAutoTurn
ignorehitpause=1

[State 7828]
type=ChangeState
trigger1= time>=20
value=7829
ctrl=0
;============<OFF SCREEN RUN STOP>=========
;Off Screen Run Stop
[Statedef 7829]
type   =S
physics=S
anim=101
ctrl=0

[State 7829,VelMul]
type=VelMul
trigger1 =time=2
x=.5
[State 7829,Dust]
type=MakeDust
trigger1=time%6
pos=30, 0

[State 7829, SND]
type=playsnd
trigger1 =!time
value=0, 101
persistent=0
[State 7829,END]
type=ChangeState
trigger1=!animtime
value=0
ctrl=1

;---------------------------------------------------------------------------
; Stand get-hit (shaking)
[Statedef 5000]
type    = S
movetype= H
physics = N
velset = 0,0

[State 5000, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = ifelse((GetHitVar(groundtype) = 1),5000,5010) + GetHitVar(animtype)

[State 5000, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = 5030

[State 5000, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype) ;5051 - 4 + type

[State 5000, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 5000, 5] ;State type gets set to aerial if getting hit up
type = StateTypeSet
trigger1 = Time = 0
trigger1 = GetHitVar(yvel) != 0 || GetHitVar(fall)
trigger2 = Pos Y != 0
statetype = a

[State 5000, FFB Light]
type = ForceFeedback
trigger1 = anim = 5000
trigger2 = anim = 5010
persistent = 0
time = 6
waveform = square

[State 5000, FFB Medium]
type = ForceFeedback
trigger1 = anim = 5001
trigger2 = anim = 5011
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 5000, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5012
trigger2 = anim = 5002
trigger3 = anim = 5030
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

[State 5000, 6]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yvel) = 0 && !GetHitVar(fall)
value = 5001 ;Stand get-hit (knocked back)

[State 5000, 7]
type = ChangeState
trigger1 = HitShakeOver
value = 5030

;---------------------------------------------------------------------------
; Stand get-hit (knocked back)
[Statedef 5001]
type    = S
movetype= H
physics = S

[State 5001, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 5001, 2]
type = ChangeAnim
trigger1 = AnimTime = 0
value = 5005 + GetHitVar(animtype) + (GetHitVar(groundtype)=2)*10

[State 5001, 3] ;Stop sliding back
type = VelMul
trigger1 = Time >= GetHitVar(slidetime)
x = .6

[State 5001, 4]
type = VelSet
trigger1 = HitOver
x = 0

[State 5001, 5]
type = DefenceMulSet
trigger1 = HitOver
value = 1

[State 5001, 6]
type = ChangeState
trigger1 = HitOver
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Crouch get-hit (shaking)
[Statedef 5010]
type    = C
movetype= H
physics = N
velset = 0,0

[State 5010, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = 5020 + GetHitVar(animtype)

[State 5010, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = 5030

[State 5010, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype) ;5051 - 4 + type

[State 5010, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 5010, 5] ;State type gets set to aerial if getting hit up
type = StateTypeSet
triggerall = Time = 0
trigger1 = GetHitVar(yvel) != 0 || GetHitVar(fall)
trigger2 = Pos Y != 0
statetype = a

[State 5010, 6]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yvel) = 0 && !GetHitVar(fall)
value = 5011 ;Crouch get-hit (knocked back)

[State 5010, 7]
type = ChangeState
trigger1 = HitShakeOver
value = 5030

[State 5010, FFB Light]
type = ForceFeedback
trigger1 = anim = 5020
persistent = 0
time = 6
waveform = square

[State 5010, FFB Medium]
type = ForceFeedback
trigger1 = anim = 5021
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 5010, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5022
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

;---------------------------------------------------------------------------
; Crouch get-hit (knocked back)
[Statedef 5011]
type    = C
movetype= H
physics = C

[State 5011, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 5011, 2]
type = ChangeAnim
trigger1 = AnimTime = 0
value = 5025 + GetHitVar(animtype)

[State 5011, 3] ;Stop sliding back
type = VelMul
trigger1 = Time >= GetHitVar(slidetime)
x = .6

[State 5011, 4]
type = VelSet
trigger1 = HitOver
x = 0

[State 5011, 5]
type = DefenceMulSet
trigger1 = HitOver
value = 1

[State 5011, 6]
type = ChangeState
trigger1 = HitOver
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Air get-hit (shaking)
[Statedef 5020]
type    = A
movetype= H
physics = N
velset = 0,0

[State 5020, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = ifelse((GetHitVar(airtype) = 1),5000,5010) + GetHitVar(animtype)

[State 5020, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = 5030

[State 5020, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype) ;5051 - 4 + type

[State 5020, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 5020, 5]
type = ChangeState
trigger1 = HitShakeOver
value = 5030

[State 5020, FFB Light]
type = ForceFeedback
trigger1 = anim = 5000
trigger2 = anim = 5010
persistent = 0
time = 6
waveform = square

[State 5020, FFB Medium]
type = ForceFeedback
trigger1 = anim = 5001
trigger2 = anim = 5011
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 5020, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5012
trigger2 = anim = 5002
trigger3 = anim = 5030
trigger4 = anim = [5051,5059]
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

;---------------------------------------------------------------------------
; Air get-hit (knocked away)
[Statedef 5030]
type    = A
movetype= H
physics = N
ctrl = 0

[State 5030, 1]
type = ChangeAnim
trigger1 = Anim != [5000, 5199]
trigger1 = SelfAnimExist(5030)
value = 5030

[State 5030, 2]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5030, 3]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 5030, 4]
type = ChangeState
triggerall = !HitFall
trigger1 = HitOver
trigger2 = Vel Y > 0    ;Hit ground
trigger2 = Pos Y >= Const(movement.air.gethit.groundlevel)
value = 5040 ;HITA_RECOV

[State 5030, 5]
type = ChangeState
triggerall = HitFall
trigger1 = HitOver
trigger2 = Vel Y > 0    ;Hit ground
trigger2 = Pos Y >= Const(movement.air.gethit.groundlevel)
value = 5050 ;HITA_FALL

[State 5030, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 5035 ;Air get-hit (transition)

;---------------------------------------------------------------------------
; Air get-hit (transition)
[Statedef 5035]
type    = A
movetype= H
physics = N

[State 5035, 1]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5035)
trigger1 = Anim != [5051,5059] ;Not if in hit up anim
trigger1 = Anim != 5090 ;Not if hit off ground anim
value = 5035

[State 5035, 2]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5035, 3]
type = ChangeState
triggerall = !HitFall
trigger1 = HitOver  ;Hit is over
trigger2 = AnimTime = 0 ;Animation over
trigger3 = Vel Y > 0    ;Hit ground
trigger3 = Pos Y >= Const(movement.air.gethit.groundlevel)
trigger4 = Time = 0     ;No transition anim
trigger4 = Anim != 5035 ;.
value = 5040 ;Air get-hit (recovering in air, not falling)

[State 5035, 4]
type = ChangeState
triggerall = HitFall
trigger1 = HitOver  ;Hit is over
trigger2 = AnimTime = 0 ;Anim is over
trigger3 = Vel Y > 0    ;Hit ground
trigger3 = Pos Y >= Const(movement.air.gethit.groundlevel)
trigger4 = Time = 0     ;No transition anim
trigger4 = Anim != 5035 ;.
value = 5050 ;Air get-hit (falling)

;---------------------------------------------------------------------------
; Air get-hit (recovering in air, not falling)
[Statedef 5040]
type    = A
movetype= H
physics = N

[State 5040, 1]
type = ChangeState
trigger1 = !Alive
value = 5050
ctrl = 0

[State 5040, 2]
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim != 5040
trigger2 = Time = 0
trigger2 = Anim != 5035
value = 5040

[State 5040, 3]
type = CtrlSet
trigger1 = HitOver
value = 1

[State 5040, 4]
type = StateTypeSet
trigger1 = HitOver
movetype = I

[State 5040, 5]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5040, 6]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 52 ;Jump land

;---------------------------------------------------------------------------
; Air get-hit (falling)
[Statedef 5050]
type    = A
movetype= H
physics = N

[State 5050, 1] ;Change anim when done with transition
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim = 5035
trigger2 = Time = 0     ;If no transition anim
trigger2 = Anim != 5035
trigger2 = (Anim != [5051, 5059]) && (Anim != [5061, 5069])
trigger2 = Anim != 5090 ;Not if hit off ground anim
value = 5050

[State 5050, 2] ;Coming down anim
type = ChangeAnim
trigger1 = anim = [5050,5059]
trigger1 = Vel Y >= ifelse(anim = 5050, Const720p(4), Const720p(-8))
trigger1 = SelfAnimExist(anim+10)
value = anim+10
persistent = 0

[State 5050, 3] ;Gravity
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5050, 4] ;Recover near ground
type = ChangeState
triggerall = Vel Y > 0
triggerall = Pos Y >= Const(movement.air.gethit.groundrecover.ground.threshold)
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;Air get-hit (fall recovery on ground)

[State 5050, 5]; Recover in mid air
type = ChangeState
triggerall = Vel Y > Const(movement.air.gethit.airrecover.threshold)
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210 ;Air get-hit (fall recovery in air)

[State 5050, 6]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= ifelse((anim = [5051,5059]) || (anim = [5061,5069]), 0, Const(movement.air.gethit.groundlevel))
value = 5100 ;Downed get-hit (hit ground from fall)

;---------------------------------------------------------------------------
; Tripped get-hit (shaking)
[Statedef 5070]
type    = A
movetype= H
physics = N
velset = 0,0

[State 5070, 1]
type = ChangeAnim
trigger1 = 1
value = 5070

[State 5070, 2]
type = ChangeState
trigger1 = HitShakeOver
value = 5071

[State 5070, 3]
type = ForceFeedback
trigger1 = time = 0
time = 12
waveform = sinesquare
ampl = 140

;---------------------------------------------------------------------------
; Tripped get-hit (knocked away)
[Statedef 5071]
type    = A
movetype= H
physics = N

[State 5071, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 5071, 2] ;Acceleration
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5071, 3] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >= Const(movement.air.gethit.trip.groundlevel)
type = ChangeState
value = 5110

;---------------------------------------------------------------------------
; Downed get-hit (shaking)
[Statedef 5080]
type    = L
movetype= H
physics = N
velset = 0,0

[State 5080, 1] ;Set default anim
type = VarSet
trigger1 = time = 0
sysvar(2) = ifelse (GetHitVar(yvel) = 0, 5080, 5090)

[State 5080, 2]
type = VarAdd
trigger1 = time = 0
trigger1 = (anim = [5081,5089]) || (anim = [5111,5119])
trigger1 = SelfAnimExist(sysvar(2) + (anim % 10))
sysvar(2) = anim % 10

[State 5080, 3] ;If 5090 doesn't exist, default to 5030
type = VarSet
trigger1 = time = 0
trigger1 = sysvar(2) = 5090
trigger1 = !SelfAnimExist(5090)
sysvar(2) = 5030

[State 5080, 3] ;Freeze
type = ChangeAnim
trigger1 = 1
value = sysvar(2)

[State 5080, 4]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yvel) = 0
value = 5081 ;Downed get-hit (knocked back)

[State 5080, 5]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yvel) != 0
value = 5030 ;Air get-hit (knocked away)

;---------------------------------------------------------------------------
; Downed get-hit (knocked back)
[Statedef 5081]
type    = L
movetype= H
physics = C

[State 5081, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 5081, 2]
type = VelSet
trigger1 = HitOver
x = 0

[State 5081, 3] ;Don't show hit ground frame
type = VarSet
trigger1 = Time = 0
sysvar(0) = 1

[State 5081, 4]
type = ChangeState
trigger1 = HitOver
value = 5110 ;Downed get-hit (lying down)

;---------------------------------------------------------------------------
; Downed get-hit (hit ground from fall)
[Statedef 5100]
type    = L
movetype= H
physics = N

[State 5100, 2004.04.14 behavior]
type = null;VelSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
trigger1 = vel x < -1
x = -1

[State 5100, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 5100, Var] ;Save fall velocity
type = VarSet
trigger1 = Time = 0
sysvar(1) = floor(vel y)

[State 5100, 2] ;Hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = (anim != [5051,5059]) && (anim != [5061,5069])
trigger2 = !SelfAnimExist(5100 + (anim % 10))
value = 5100

[State 5100, 3] ;Hit ground anim (for hit up)
type = ChangeAnim
trigger1 = time = 0
trigger1 = (anim = [5051,5059]) || (anim = [5061,5069])
trigger1 = SelfAnimExist(5100 + (anim % 10))
value = 5100 + (anim % 10)

[State 5100, 4]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5100, 5]
type = VelSet
trigger1 = Time = 0
y = 0

[State 5100, 6] ;Reduce speed
type = VelMul
trigger1 = Time = 0
x = 0.75

[State 5100, 7]
type = ChangeState
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
value = 5110 ;Downed get-hit (lying down)

[State 5100, 8]
type = Explod
trigger1 = Time = 1
anim = F(60 + (sysvar(1) > Const720p(20)) + (sysvar(1) > Const720p(56)))
pos = 0, 0
sprpriority = ifelse (sysvar(1) <= Const720p(56), -10, 10)

[State 5100, 9]
type = HitFallDamage
trigger1 = Time = 3

[State 5100, 10]
type = PlaySnd
trigger1 = Time = 1
value = F7, (sysvar(1) > Const720p(20)) + (sysvar(1) > Const720p(56))

[State 5100, 11]
type = PosFreeze
trigger1 = 1

[State 5100, 12]
type = ChangeState
trigger1 = AnimTime = 0
value = 5101 ;Downed get-hit (bounce off ground)

[State 5100, 13]
type = ForceFeedback
trigger1 = Time = 0
waveform = sinesquare
ampl = 128,-3,-.2,.005
time = 20

;---------------------------------------------------------------------------
; Downed get-hit (bounce off ground)
[Statedef 5101]
type    = L
movetype= H
physics = N

[State 5101, 1] ;Coming hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim != [5101,5109]
trigger2 = !SelfAnimExist(5160 + (anim % 10))
value = 5160

[State 5101, 2] ;Coming hit ground anim (for hit up)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim = [5101,5109]
trigger1 = SelfAnimExist(5160 + (anim % 10))
value = 5160 + (anim % 10)

[State 5101, 3]
type = HitFallVel
trigger1 = Time = 0

[State 5101, 4]
type = PosSet
trigger1 = Time = 0
y = Const(movement.down.bounce.offset.y)

[State 5101, 5]
type = PosAdd
trigger1 = Time = 0
x = Const(movement.down.bounce.offset.x)

[State 5101, 6] ;Acceleration
type = VelAdd
trigger1 = 1
y = Const(movement.down.bounce.yaccel)

[State 5101, 7] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >= Const(movement.down.bounce.groundlevel)
type = ChangeState
value = 5110

;---------------------------------------------------------------------------
; Downed get-hit (lying down)
[Statedef 5110]
type    = L
movetype= H
physics = N

[State 5110, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 5110, 1] ;For hit up/up-diag type (from state 5081)
type = ChangeAnim
persistent = 0
trigger1 = SelfAnimExist(5110 + (anim % 10))
trigger1 = anim = [5081,5089]
value = 5110 + (anim % 10)

[State 5110, 2] ;Hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
triggerall = anim != [5110,5119] ;Not already changed anim
trigger1 = anim != [5161,5169]
trigger2 = !SelfAnimExist(5170 + (anim % 10))
value = 5170

[State 5110, 3] ;Hit ground anim (for hit up)
type = ChangeAnim
triggerall = time = 0
triggerall = anim != [5110,5119] ;Not already changed anim
trigger1 = anim = [5161,5169]
trigger1 = SelfAnimExist(5170 + (anim % 10))
value = 5170 + (anim % 10)

[State 5110, 4]
type = HitFallDamage
trigger1 = Time = 0

[State 5110, 5]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5110, Var] ;Get fall velocity
type = VarSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) != 0
sysvar(1) = floor(vel y)

[State 5110, 6]
type = PlaySnd
trigger1 = Time = 0
trigger1 = !SysVar(0)
value = F7, (sysvar(1) > Const720p(20)) + (sysvar(1) > Const720p(56))

[State 5110, 7]
type = Explod
trigger1 = Time = 0
trigger1 = !SysVar(0)
anim = F(60 + (sysvar(1) > Const720p(20)) + (sysvar(1) > Const720p(56)))
pos = 0, 0
sprpriority = ifelse (sysvar(1) <= Const720p(56), -10, 10)

[State 5110, 8]
type = VelSet
trigger1 = Time = 0
y = 0

[State 5110, 9] ;For hit up type
type = ChangeAnim
persistent = 0
triggerall = anim = [5171,5179]
triggerall = SelfAnimExist(5110 + (anim % 10))
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground anim
value = 5110 + (anim % 10)

[State 5110, 10] ;For normal
type = ChangeAnim
persistent = 0
triggerall = Anim != [5111,5119]
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground frame
value = 5110

[State 5110, 11] ;If just died
type = ChangeState
triggerall = !alive
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground frame
trigger3 = Anim = [5110,5119]
value = 5150

[State 5110, 12]
type = VarSet
trigger1 = SysVar(0)
trigger1 = Time = 0
sysvar(0) = 0

[State 5110, 13] ;Friction
type = VelMul
trigger1 = 1
x = 0.85

[State 5110, 14] ;Friction
type = VelSet
trigger1 = abs(Vel x) < Const(movement.down.friction.threshold)
persistent = 0
x = 0

[State 5110, 15]
type = ForceFeedback
trigger1 = alive
trigger1 = Time = 0
time = 8
ampl = 240
waveform = sine

[State 5110, 16]
type = ForceFeedback
trigger1 = !alive
trigger1 = Time = 0
ampl = 200, 7, -.467
time = 30
waveform = sine

;---------------------------------------------------------------------------
; Downed get-hit (getting up)
[Statedef 5120]
type    = L
movetype= I
physics = N

[State 5120, 1a] ;Get up anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim != [5111,5119]
trigger2 = !SelfAnimExist(5120 + (anim % 10))
value = 5120

[State 5120, 1b] ;Get up anim (for hit up/diag-up)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim = [5111,5119]
trigger1 = SelfAnimExist(5120 + (anim % 10))
value = 5120 + (anim % 10)

[State 5120, 2]
type = VelSet
trigger1 = Time = 0
x = 0

[State 5120, 3]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 5120, 4]
type = HitFallSet
trigger1 = AnimTime = 0
value = 1

[State 5120, 5] ;Can't be thrown right after getting up
type = NotHitBy
trigger1 = AnimTime = 0
value = , NT,ST,HT
time = 12

[State 5120, 6] ;Can't be hit right after getting up (short time)
type = NotHitBy
trigger1 = AnimTime = 0
value2 = SCA
time = 3

[State 5120, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Downed get-hit (lying defeated)
[Statedef 5150]
type    = L
movetype= H
physics = N
sprpriority = -3
ctrl = 0

[State 5150, 1] ;Normal anim
type = ChangeAnim
triggerall = Time = 0
triggerall = SelfAnimExist(5140)
trigger1 = (anim != [5111,5119]) && (anim != [5171,5179])
trigger2 = !SelfAnimExist(5140 + (anim % 10))
value = 5140

[State 5150, 3] ;Hit up type anim
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (anim = [5111,5119]) || (anim = [5171,5179])
trigger1 = SelfAnimExist(5140 + (anim % 10))
value = 5140 + (anim % 10)

[State 5150, 4] ;Match over anim
type = ChangeAnim
persistent = 0
;trigger1 = Time = 0
trigger1 = MatchOver = 1
trigger1 = Anim = [5140,5149]
trigger1 = SelfAnimExist(anim+10)
value = anim+10

[State 5150, 5] ;Switch to 5110 if liedead anim does not exist
type = ChangeAnim
trigger1 = Time = 0
trigger1 = Anim != [5140,5159]
trigger1 = Anim != [5110,5119]
value = 5110

[State 5150, 6] ;Friction
type = VelMul
trigger1 = 1
x = 0.85

[State 5150, 7] ;Friction
type = VelSet
trigger1 = abs(Vel x) < Const(movement.down.friction.threshold)
persistent = 0
x = 0

[State 5150, 8]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Air get-hit (fall recovery on ground; still falling)
[Statedef 5200]
type    = A
movetype= H
physics = N

[State 5200, 1] ;Change anim if done with transition
type = ChangeAnim
trigger1 = Anim = 5035
trigger1 = AnimTime = 0
value = 5050

[State 5200, 2]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5200, 3]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= Const(movement.air.gethit.groundrecover.groundlevel)
value = 5201

;---------------------------------------------------------------------------
; Air get-hit (fall recovery on ground)
[Statedef 5201]
type    = A
movetype= H
physics = A
anim = 5200

[State 5201, 1] ;Turn if not facing opponent
type = Turn
trigger1 = Time = 0
trigger1 = p2dist X < Const720p(-20)

[State 5201, 2]
type = VelSet
trigger1 = Time = 0
x = Const(velocity.air.gethit.groundrecover.x)
y = Const(velocity.air.gethit.groundrecover.y)

[State 5201, 3]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5201, 4]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 5201, 5] ;Blink white
type = PalFX
trigger1 = Time = 0
time = 3
add = 128,128,128 ;256,256,256

[State 5201, 6]
type = Explod
trigger1 = Time = 0
anim = F60
pos = 0, -floor(vel y)
sprpriority = -10

;---------------------------------------------------------------------------
; Air get-hit (fall recovery in air)
[Statedef 5210]
type    = A
movetype= I
physics = N
anim = 5210
ctrl = 0

[State 5210, 1] ;Blink white
type = PalFX
trigger1 = Time = 0
time = 3
add = 128,128,128

[State 5210, 1]
type = PosFreeze
trigger1 = Time < 4

[State 5210, 2] ;Turn if not facing opponent
type = Turn
trigger1 = Time = 0
trigger1 = p2dist X < Const720p(-80)

[State 5210, 1.0 behavior 1]
type = VelMul
trigger1 = Time = 4
x = Const(velocity.air.gethit.airrecover.mul.x)
y = Const(velocity.air.gethit.airrecover.mul.y)

[State 5210, 1.0 behavior 2]
type = VelAdd
trigger1 = Time = 4
x = Const(velocity.air.gethit.airrecover.add.x)
y = Const(velocity.air.gethit.airrecover.add.y)

[State 5210, 2002.04.14 behavior 1]
type = null;VelMul
trigger1 = Time = 4
x = .8
y = .8

[State 5210, 2002.04.14 behavior 2]
type = null;VelAdd
trigger1 = Time = 4
x = 0 
y = -4.5

[State 5210, 2002.04.14 behavior 3]
type = null;VelMul
trigger1 = Time = 4
trigger1 = Vel Y > 0
y = .5

[State 5210, 2002.04.14 behavior 4]
type = null;VelAdd
trigger1 = Time = 4
trigger1 = Vel Y > -3
y = -2

[State 5210, 2002.04.14 behavior 5]
type = null;VelAdd
trigger1 = Time = 4
trigger1 = Vel Y > -2
y = -1

[State 5210, 2] ;Go up
type = VelAdd
trigger1 = Time = 4
trigger1 = Command = "holdup"
y = Const(velocity.air.gethit.airrecover.up)

[State 5210, 2] ;Go down
type = VelAdd
trigger1 = Time = 4
trigger1 = Command = "holddown"
y = Const(velocity.air.gethit.airrecover.down)

[State 5210, 2] ;Go fwd
type = VelAdd
trigger1 = Time = 4
trigger1 = Command = "holdfwd"
x = Const(velocity.air.gethit.airrecover.fwd)

[State 5210, 2] ;Go back
type = VelAdd
trigger1 = Time = 4
trigger1 = Command = "holdback"
x = Const(velocity.air.gethit.airrecover.back)

[State 5210, 3]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 15

[State 5210, 4]
type = CtrlSet
trigger1 = Time = 20
value = 1

[State 5210, 5]
type = VelAdd
trigger1 = Time >= 4
y = Const(movement.air.gethit.airrecover.yaccel)

[State 5210, 5] ;Land on ground
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 52 ;Jump land
ctrl = 1

;==============================================================
;========================================================Syn===
;==============================================================
;DRAMATIC KO PAUSE
[Statedef 9944]
type = s
movetype = i
physics = n

[State 9944, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
flag2 = invisible

[State 9944, NHB]
type = NotHitBy
trigger1 = 1
value = SCA

[State PERFECT]
type = PlaySnd
trigger1 = winko
trigger1 = roundstate = 3
trigger1 = parent,life = lifemax
value = S1,19
volume = 255
abspan = 0
ignorehitpause = 1
persistent = 0
channel = 9

[State HOLY SHIT]
type = PlaySnd
trigger1 = winko
trigger1 = roundstate = 3
trigger1 = parent,life = [1,80]
value = S1,18
volume = 255
abspan = 0
ignorehitpause = 1
persistent = 0
channel = 9

[State 9944, Dramatic KO Helper]
type = helper
triggerall = (root,alive || enemy,alive)
trigger1 = roundstate = 3 && (root,life <= 0 || enemy,life <= 0)
helpertype = Normal
id = 9955
pos = 0,0
postype = p1
name = "K.O."
stateno = 9955
supermovetime = 9999999999
pausemovetime = 9999999999
persistent = 0
ignorehitpause = 1
;==============================================================
;=======================================================Syn====
;==============================================================
;DRAMATIC KO PAUSE HELPER
[Statedef 9955]
type = s
movetype = i
physics = n

[State 9955, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
flag2 = invisible
flag3 = nokoslow;<------------optional
ignorehitpause = 1

[State 9955,NHB]
type = NotHitBy
trigger1 = 1
value = SCA

[State 9955, pause]
type = Pause
trigger1 = 1
time = 28;<---adjust to your likings
ignorehitpause = 1
persistent = 0

[State 9955, DestroySelf]
type = DestroySelf
trigger1 = time >= 28;<---make the time match the time in the pause code above

;===========================================================================
;===============================< -2 STATES >=================================
;===========================================================================
[Statedef -2]

;QUOTES AND SUCH, I DUNNO
[state -2, quote activation]
type = VictoryQuote
trigger1 = 1
value = 1+(random%10) ;i have 8 normal quotes so i put the number 8 after the %.

[state -2, VS Mirror ending]
type = VictoryQuote
trigger1 = enemy,name = "Gumball Watterson" || enemy,name = "Gumball Watterson, but POTS";it will be used against this character
value = 11 ;Replace # with the value of the quote you want to use.

[state -2, VS Darwin ending]
type = VictoryQuote
trigger1 = enemy,name = "Darwin" ;it will be used against this character
trigger2 = enemy,name = "Darwin Watterson, but POTS" ;|| p4name="Gumball Watterson"
value = 12 ;Replace # with the value of the quote you want to use.

[state -2, VS Ryu ending]
type = VictoryQuote
trigger1 = enemy,name = "Ryu" ;it will be used against this character
value = 13 ;Replace # with the value of the quote you want to use.

[state -2, VS Guile ending]
type = VictoryQuote
trigger1 = enemy,name = "Guile" ;it will be used against this character
value = 14 ;Replace # with the value of the quote you want to use.
;END OF QUOteS, WHAT MORE

;Focus Attack
[State -2, Focus Attack meter reset when no longer charging]
type = VarSet
trigger1 = (stateno !=[900,901]) && ((stateno=[5000,5099]) && prevstateno != 900)
trigger2 = stateno = [100,105]
fv = 9
value = 0

[State -2, life return removed if hit while refilling]
type = VarSet
trigger1 = var(21) && stateno !=901 && movetype = H
var(21) = 0

[State -2, Life return if left alone]
type = LifeAdd
trigger1 = (stateno != [901,902]) && var(21) && (Gametime%6)=1
value = 1
absolute = 0

[State -2, life return if left alone]
type = VarAdd
trigger1 = (stateno != [901,902]) && var(21) && (Gametime%6)=1
v = 21
value = -1
;End focus attack

[State -2, Finish]
type = ScreenBound
triggerall = (Life <= 0) || (!Alive) || (Lose)
trigger1 = (StateNo = 5150) && (RoundState = 4)
value = 0
MoveCamera = 0,0
IgnoreHitPause = 1

[State -2,screen]
type=ScreenBound
trigger1=p2stateno=4020&&p2movetype=H
value=p2bodydist x < 30 && BackEdgeDist < 30
[State -2,screen]
type=ChangeState
triggerall=roundstate=2
triggerall=Movetype != H && Stateno != 7827
trigger1=BackEdgeDist < -10 -const(size.ground.front)-const(size.ground.back)
trigger1=StateType != A
value=7827

[State -2, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nojugglecheck
IgnoreHitPause = 1

[State -2, Hit Detection]
type = varset
trigger1 = movecontact = 1 && var(30) < 0
var(30) = hitpausetime
ignorehitpause = 1

[State -2, HitSound]
type = playsnd
trigger1 = movecontact = 1 && var(30) = hitpausetime
trigger1 = movehit = 1 && var(31) >= 0
value = 2, var(31) + ifelse(var(31)<=5,var(52)*20,0)
channel = 2
ignorehitpause = 1

[State -2, GuardSound]
type = playsnd
trigger1 = movecontact = 1 && var(30) = hitpausetime
trigger1 = moveguarded = 1 && var(32) >= 0
value = 3, var(32)
channel = 2
ignorehitpause = 1

[State -2, Sparks]
type = helper
triggerall = StateNo != 1301 && StateNo != 1331
triggerall = movecontact = 1 && var(30) = hitpausetime
trigger1 = movehit = 1 && numenemy
trigger1 = var(33) = 8010 || var(33) = 8011 || var(33) = 8012 || var(33) = 8013 || var(33) = 8014 || var(33) = 8001
trigger2 = moveguarded = 1 && numenemy
trigger2 = var(34) = 8000 || var(34) = 8001
trigger3 = MoveHit = 1 && NumEnemy
trigger3 = var(33) = 8015 || var(33) = 8016 || var(33) = 8017
stateno = ifelse(moveguarded, var(34), var(33))
ID = 8000
name = "Spark"
postype = p1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < var(35), ceil(P2Dist x), var(35))), var(36)
facing = 1
size.xscale=1
size.yscale=1
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State -2, Counter FX]
type = helper
triggerAll = movehit = 1 && var(30) = hitpausetime
triggerAll = numenemy && var(9)
trigger1 = !(hitdefattr = SCA, AT) && (enemynear, movereversed != 1)
trigger2 = (EnemyNear, MoveReversed != 1) && StateNo = [1100,1299]
stateno = 8290
ID = 8290
name = "Counter FX"
postype = p1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < var(35), ceil(P2Dist x), var(35))), var(36)
facing = -1
ownpal = 1
size.xscale=1
size.yscale=1
pausemovetime = 255
supermovetime = 255
ignorehitpause = 1

[State -2, Counter Flag]
type = varset
trigger1 = numenemy
var(9) = (enemynear, movetype = A)
ignorehitpause = 1

[State -2, Hit Detection]
type = varset
trigger1 = 1
var(30) = -1

[State -2, Hit Detection]
type = varrangeset
trigger1 = movetype = I
trigger2 = movetype = H && time
first = 30
last = 36
value = -1
ignorehitpause = 1

;Palette logic by Sennou Room
[state -2, Palette AI]
type = varset
trigger1 = AILevel&&!fvar(0)&&palno<=6
fvar(0)= palno
ignorehitpause = 1
[state -2, Palette AI]
type = varset
trigger1 = AILevel&&!fvar(0)&&palno>6
fvar(0)= palno - 6
ignorehitpause = 1
[state -2, Continue Palette]
type = remappal
triggerall=((stateno=[190,194])||(stateno=[196,199])||(stateno=[201,202])||(stateno=[6900,6999]))||((stateno=0)&&((prevstateno=[190,194])||(prevstateno=[6900,6999])||(prevstateno=[5900,5901])))
trigger1=var(56)&&!numhelper(256)&&fvar(0)
source = 1, 1
dest = 1, ceil(fvar(0))
ignorehitpause = 1
[state -2, No Clones 1]
type = remappal
triggerall=((stateno=[190,194])||(stateno=[196,199])||(stateno=[201,202])||(stateno=[6900,6999]))||((stateno=0)&&((prevstateno=[190,194])||(prevstateno=[6900,6999])||(prevstateno=[5900,5901])))
triggerall=numenemy && (fvar(0)=[1,11])
trigger1=(var(56)=[0,2])&&!numhelper(256)
trigger1=enemy,authorname="JStudios2k"&&enemy,name="Gumball Watterson, but POTS"&&enemy,fvar(0)=fvar(0) 
source = 1, 1
dest = 1, Ifelse(((teamside!=1&&!AILevel&&Enemy,AILevel=0)||(teamside!=1&&AILevel)||(teamside=1&&AILevel&&Enemy,AILevel=0)) && Enemy,Numhelper(256)=0,ceil(fvar(0))+1,ceil(fvar(0)))
ignorehitpause = 1
[state -2, No Clones 2]
type = remappal
triggerall=((stateno=[190,194])||(stateno=[196,199])||(stateno=[201,202])||(stateno=[6900,6999]))||((stateno=0)&&((prevstateno=[190,194])||(prevstateno=[6900,6999])||(prevstateno=[5900,5901])))
triggerall=numenemy && (fvar(0)=12)
trigger1=(var(56)=[0,2])&&!numhelper(256)
trigger1=enemy,authorname="JStudios2k"&&enemy,name="Gumball Watterson, but POTS"&&enemy,fvar(0)=fvar(0) 
source = 1, 1
dest = 1, Ifelse(((teamside!=1&&!AILevel&&Enemy,AILevel=0)||(teamside!=1&&AILevel)||(teamside=1&&AILevel&&Enemy,AILevel=0)) && Enemy,Numhelper(256)=0,1,ceil(fvar(0)))
ignorehitpause = 1
[state -2, No Clones 3]
type = remappal
triggerall=numenemy && roundstate=0
trigger1=!var(56)&&(var(56)!=3||AILevel)&&((teamside!=1&&!AILevel&&Enemy,AILevel=0)||(teamside!=1&&AILevel)||(teamside=1&&AILevel&&Enemy,AILevel=0))
trigger1=enemy,authorname="JStudios2k"&&enemy,name="Gumball Watterson, but POTS"&&enemy,var(54)<2&&(enemy,palno=palno|(enemy,palno=palno+6&&var(56)!=3)|enemy,palno=palno-6)
source = 1, 1
dest = 1, palno + ifelse(palno>6, -5, 1) + ifelse((palno=6|palno=12), -7, 0)
[state -2, Palette]
type = varset
trigger1 = numhelper(256)
trigger1=helper(256),fvar(0)=[1,fvar(27)]
fvar(0)= helper(256),fvar(0)
ignorehitpause = 1
[state -2, Palette Selection]
type = remappal
trigger1 = numhelper(256)
trigger1=helper(256),fvar(0)=[1,fvar(27)]
source = 1, 1
dest = 1, ceil(fvar(0))
ignorehitpause = 1
;End palette logic

[State -2, P2 Facing]
type = targetfacing
trigger1 = movecontact = 1 && numtarget
trigger1 = !(target, hitshakeover) && !(target, hitfall) && (target, time <= 1)
value = ifelse(p2dist x >= 0, -1, 1)
ignorehitpause = 1

[State -2, P2 Safe Fall]
type = targetstate
trigger1 = numtarget = 1
trigger1 = target, command = "recovery"
trigger1 = target, pos y >= -48 && target, vel y > 0
trigger1 = target, alive && target, hitfall && target, gethitvar(fall.recover)
trigger1 = target, stateno = 5030 || target, stateno = 5035 || target, stateno = 5050 || target, stateno = 5071
value = 5205
ignorehitpause = 1

[State -2, Prevent Guard]
type = assertspecial
trigger1 = var(17) > 0
trigger1 = var(17) := (var(17) -1)
flag = unguardable
ignorehitpause = 1

[State -2, Hitcount]
type = varadd
trigger1 = !IsHelper
trigger1 = movehit = 1
trigger1 = !HitPauseTime
trigger1 = !(hitdefattr = SCA, AT)
var(13) = 1

[State -2, Hitcount Reset]
type = varset
trigger1 = numenemy && var(13)
trigger1 = (enemynear, movetype != H) && (enemynear, stateno != 5300)
var(13) = 0
ignorehitpause = 1

[State -2, Juggle Count]
type=varadd
trigger1= movehit=1
trigger1= !(hitdefattr=SCA,AT)
var(15)=1

[State -2, Juggle Reset Single]
type = varset
triggerall = numenemy = 1 && var(15)
trigger1 = (enemy, statetype != A) && (enemy, stateno != [5100, 5109]) && (enemy, time >= 0)
trigger2 = (enemy, movetype != H) || (enemy, stateno = [120, 155]) || (enemy, ctrl)
var(15) = 0
ignorehitpause = 1

[State -2, Juggle Reset Simul]
type = varset
triggerall = numenemy >= 2 && var(15)
trigger1 = (enemynear(0), statetype != A) && (enemynear(0), time >= 0)
trigger2 = (enemynear(0), movetype != H) || (enemynear(0), stateno = [120, 155]) || (enemynear(0), ctrl)
trigger3 = (enemynear(1), statetype != A) && (enemynear(0), time >= 0)
trigger4 = (enemynear(1), movetype != H) || (enemynear(0), stateno = [120, 155]) || (enemynear(0), ctrl)
var(15) = 0
ignorehitpause = 1

[State -2, Free Juggling]
type = varset
trigger1 = roundstate != 2
var(15) = 0
ignorehitpause = 1

[State -2, Juggle Flag]
type = varset
trigger1 = numenemy && !var(16)
trigger1 = (enemynear, stateno = 5040) && !(enemynear, ctrl)
var(16) = 1
ignorehitpause = 1

[State -2, Juggle Flag Reset Single]
type = varset
triggerall = numenemy = 1 && var(16)
trigger1 = (enemy, movetype != H) && (enemy, stateno != 5040)
trigger2 = !(enemy, hitshakeover) || (enemy, statetype = L) || (enemy, ctrl)
var(16) = 0
ignorehitpause = 1

[State -2, Juggle Flag Reset Simul]
type = varset
triggerall = numenemy >= 2 && var(16)
trigger1 = (enemynear(0), movetype != H) && (enemynear(0), stateno != 5040)
trigger2 = !(enemynear(0), hitshakeover) || (enemynear(0), statetype = L) || (enemynear(0), ctrl)
trigger3 = (enemynear(1), movetype != H) && (enemynear(1), stateno != 5040)
trigger4 = !(enemynear(1), hitshakeover) || (enemynear(1), statetype = L) || (enemynear(1), ctrl)
var(16) = 0
ignorehitpause = 1

[State -2, Custom Combo End]
type = varset
trigger1 = var(20) < 0
trigger2 = movetype = H
trigger3 = roundstate != 2
trigger4 = (stateno = [3000, 4999])
var(20) = 0
ignorehitpause = 1

[State -2, Custom Combo Time]
type = varadd
trigger1 = var(20) > 0
var(20) = -1
ignorehitpause = 1

[State -2, Custom Combo Asserts]
type = assertspecial
trigger1 = var(20) > 0
flag = nostandguard
flag2 = nocrouchguard
flag3 = noairguard
ignorehitpause = 1

[State -2, Custom Combo PalFX]
type = palfx
trigger1 = var(20) > 60
time = 2
add = 32 + ceil(sin(var(20) / 16.0 * pi) * 32), 32 + ceil(sin(var(20) / 16.0 * pi) * 32), 32 + ceil(sin(var(20) / 16.0 * pi) * 32)
ignorehitpause = 1

[State -2, Custom Combo PalFX]
type = palfx
trigger1 = var(20) = [1, 60]
time = 2
add = 64 + ceil(sin(var(20) / 8.0 * pi) * 64), 64 + ceil(sin(var(20) / 8.0 * pi) * 64), 64 + ceil(sin(var(20) / 8.0 * pi) * 64)
ignorehitpause = 1

[State -2, Throws Allowed]
type = varset
trigger1 = enemynear, movetype != H
trigger1 = enemynear, stateno != 140
trigger1 = (enemynear, ctrl && enemynear, time >= 1) || (enemynear, time >= 8)
trigger2 = enemynear, movetype = A
trigger3 = (enemynear, stateno != [0, 52]) && (enemynear, stateno != [120, 155]) && (enemynear, stateno != [5000, 5120])
trigger4 = var(20) || var(21) || var(22)
var(38) = 0

[State -2, Special/Super Throws Allowed]
type = VarSet
trigger1 = 1
var(43) = 0

[State -2, Special/Super Throws Disallowed]
type = VarSet
triggerall = NumEnemy
trigger1 = EnemyNear, StateNo = [150,155]
trigger2 = (EnemyNear, StateNo = 51 || EnemyNear, StateNo = 140) && (EnemyNear, PrevStateNo = [150, 155])
trigger3 = (EnemyNear, StateNo = [5020,5040]) && !(EnemyNear, HitFall)
trigger4 = ((EnemyNear, StateNo = 0) || (EnemyNear, StateNo = 52)) && (EnemyNear, PrevStateNo = [5000,5040]) && ((EnemyNear, Time <= 0) || !(EnemyNear, Ctrl))
trigger5 = (EnemyNear, StateNo = 0) && (EnemyNear, PrevStateNo = 52) && ((EnemyNear, Time <= 0) || !(EnemyNear, Ctrl))
trigger6 = (EnemyNear, StateNo = 40) && (EnemyNear, Time >= 1 || EnemyNear, PrevStateNo = 0 || EnemyNear, PrevStateNo = 52)
trigger7 = EnemyNear, StateNo = 5110
var(43) = 1
ignoreHitPause = 1

[State -2, Dampener]
type = varset
trigger1 = 1
fvar(10) = ifElse(var(13) < 6, 24, ifElse(var(13) >= 23, 1, 29 - var(13))) / 24.0
ignorehitpause = 1

[State -2, Dampener - Custom Combo]
type = varset
trigger1 = var(20)
fvar(10) = 0.7 * (10 - ifElse(var(13) >= 9, 9, var(13))) / 10.0
ignorehitpause = 1

[State -2, Dampener - Custom Combo Limiter]
type = varset
trigger1 = var(20)
trigger1 = StateNo = 250
fvar(10) = ifElse(var(13), 0, 0.7)
ignorehitpause = 1

[State -2, Dampener - Supers]
type = varset
trigger1 = (stateno = [3000, 4999])
fvar(10) = ifelse(var(22), 0.6, ifelse(var(21), 0.8, 1.0))
ignorehitpause = 1

[State -2, Dampener Limit]
type = varset
trigger1 = fvar(10) < 0
fvar(10) = 0
ignorehitpause = 1

[State -2, Root Dampener]
type = varset
trigger1 = 1
fvar(11) = fvar(10) * ifelse(var(9), 1.2, 1)
ignorehitpause = 1

[State -2, Back Charge Increment]
type = VarAdd
trigger1 = command = "holdback"
var(47) = 1

[State -2, Back Charge Reset]
type = VarSet
trigger1 = command != "holdback"
var(47) = 0

[State -2, Back Charge Buffer Activation]
type = VarSet
trigger1 = var(47) >= 35
var(48) = 32

[State -2, Back Charge Buffer Decrement]
type = VarAdd
trigger1 = var(47) < 35 && var(48) > 0
var(48) = -1

[State -2, Down Charge Increment]
type = VarAdd
trigger1 = command = "holddown"
var(49) = 1

[State -2, Down Charge Reset]
type = VarSet
trigger1 = command != "holddown"
var(49) = 0

[State -2, Down Charge Buffer Activation]
type = VarSet
trigger1 = var(49) >= 30
var(50) = 32

[State -2, Down Charge Buffer Decrement]
type = VarAdd
trigger1 = var(49) < 30 && var(50) > 0
var(50) = -1

[State -2, MAX Mode End]
type = VarSet
trigger1 = var(53) < 0
trigger2 = RoundState != 2
trigger3 = !Alive
trigger4 = (StateNo = [3000,4999])
var(53) = 0
ignoreHitPause=1

[State -2, MAX Mode Time]
type = VarAdd
trigger1 = var(53) > 0
ignorehitpause = 1
var(53) = -1

[State -2, MAX Mode PowerSet]
type = PowerSet
trigger1 = var(53) > 0
ignorehitpause = 1
value = var(24)

[State -2, MAX Mode PalFX]
type = PalFX
triggerall = var(53) > 0
trigger1 = !(GameTime % 2)
time = 1
add = 60,60,60
ignorehitpause = 1

[State -2, MAX Mode Atk Up]
type = AttackMulSet
trigger1 = var(53) > 0
value = 1.10

[State -2, MAX Mode Atk Reset]
type = AttackMulSet
trigger1 = var(53) <= 0
value = 1

[State -2, MAX Mode Def Up(New)];special thanks to Jesuszilla
type = LifeAdd
triggerall = Alive && MoveType = H
triggerall = var(53) ; MAX Mode 
trigger1 = (FVar(8)-life)>0
value = ifElse((FVar(8)-life)<life,floor((FVar(8)-life)*0.125),0)

[State -2, Rage Activation FX]
type = Helper
trigger1 = roundstate = 2
trigger1 = var(54) = 2
trigger1 = fvar(8) <= 250 && alive
trigger1 = !numhelper(8250)
helpertype = normal ;player
name = "ANGERY"
ID = 8250
stateno = 8250
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999999
pausemovetime = 999999
ignorehitpause = 1

[State -2, Rage Dormant]
type = VarSet
trigger1 = fvar(8) > 250 && alive
var(41) = 0
ignorehitpause = 1

[State -2, Rage Activation Var]
type = VarSet
trigger1 = var(54) = 2
trigger1 = var(41) < 1
trigger1 = fvar(8) <= 250 && alive
var(41) = 1
ignorehitpause = 1

[State -2, Rage Mode PalFX]
type = palfx
trigger1 = var(41) = 1 && alive
trigger1 = !(GameTime % 4)
time = 4
add = 75 + ceil(sin(time / 16.0 * pi) * 75), 0,0
ignorehitpause = 1

[State -2, Rage Atk Up]
type = AttackMulSet
trigger1 = var(41) = 1
value = 1.15

[State -2, Rage Atk Reset]
type = AttackMulSet
trigger1 = var(41) > 1
value = 1

[State -2, Rage Fatigue]
type = LifeAdd
triggerall = Alive && MoveType = H
triggerall = var(41) = 2
trigger1 = (FVar(8)-life)>0
value = ifElse((FVar(8)-life)<life,floor(-(FVar(8)-life)-0.125),0)

[State -2, Rage Power Charge]
type = poweradd
triggerall = power < const(data.power) && power < powermax
trigger1 = roundstate = 2 && alive
trigger1 = var(54) = 2
trigger1 = var(41) = 1
value = 1

[State -2, Life Holder];special thanks to Jesuszilla
type = VarSet
trigger1 = 1
fvar(8) = Life
ignorehitpause = 1

[State -2, Voice Pos]
type = sndpan
trigger1 = 1
channel = 0
pan = 0
ignorehitpause = 1

[State -2, collapse/cheese kill snd]
type = playsnd
trigger1 = StateNo != 5950
trigger1 = Anim = 5950 || Anim = 5955
trigger1 = animelem = 10
value = f7, 0

[State -2, collapse/cheese kill FX]
type = explod
trigger1 = StateNo != 5950
trigger1 = Anim = 5950 || Anim = 5955
trigger1 = animelem = 10
anim = f60
postype = p1
pos = 0, 0
sprpriority = -3

[State -2, guard crush/throw escape voice]
type = playsnd
trigger1 = Anim = 5910 || Anim = 5920 || Anim = 5930
trigger1 = animelemtime(1) = 1
trigger2 = Anim = 5940 || Anim = 5945
trigger2 = AnimElem = 2 && StateNo != 890
value = 5940,0
channel = 0
ignoreHitPause = 1

[State -2, Debug]
type = DisplayToClipboard
trigger1 = 1
text = "AI = %d Attack = %f Hits = %d Juggle = %d Palette = %d"
params = AILevel, fvar(11), var(13), var(15), fvar(0)
ignoreHitPause = 1

[State -2, Debug]
type = AppendToClipboard
trigger1 = 1
text = "\np2bodydist x = %f p2dist y = %f x = %f"
params = p2bodydist x, p2dist y, EnemyNear, const(size.head.pos.y)
text = "\nBy You"
ignoreHitPause = 1

[State -2, Wall Impact Dust]
type = Helper
triggerall=!numhelper(8111) && numenemy
trigger1=P2movetype=H && p2stateno=1127 && enemy,time=1
trigger2=P2movetype=H && p2stateno=4061 && enemy,time=1
stateNo = 8111
ID = 8111
name = "Wall Impact Dust"
posType = P2
facing = -1
pos= floor(-5*const(size.xscale)),ceil(-70*const(size.yscale))
ownPal = 1
ignorehitpause=1

[State -2, Ground Impact Dust];Not used, but still added just incase...
type = Helper
triggerall=!numhelper(8110) && numenemy
trigger1=P2movetype=H && p2stateno=243 && enemy,time=1
trigger2=P2movetype=H && p2stateno=816 && enemy,time=4
stateNo = 8110
ID = 8110
name = "Ground Impact Dust"
posType = P2
facing = -1
pos = 0,0
ownPal = 1
ignorehitpause=1

;---------------------------------------------------------------------------

[State -2, DRAMATIC KO HELPER]
type = helper
trigger1 = teammode = single || teammode = turns
trigger1 = enemy, teammode = single || enemy, teammode = turns
trigger1 = roundstate = 2 && !numhelper(9944)
id = 9944
pos = 0,0
postype = p1
name = "DRAMATIC KO HELPER"
stateno = 9944
supermovetime = 9999999999
pausemovetime = 9999999999

;===========================================================================
;===============================< -3 STATES >=================================
;===========================================================================
[Statedef -3]

; Focus attack / Saving Strike code (Part B)
;-----------------------------
[state -3, animelem set frame 1]
type = varset
trigger1 = stateno = 901 && time = 1
var(22) = 1

[state -3, animelem set frame 2]
type = varset
trigger1 = stateno = 901 && animelem = 2
var(22) = 2

[state -3, animelem set frame 3]
type = varset
trigger1 = stateno = 901 && animelem = 3
var(22) = 3

[State -3, Change to second state]
type = HitOverride
trigger1 = stateno = 901
attr = SCA,NA,SA,HA,NP,SP,HP
slot = 0
stateno = 902
time = 1
forceair = 0
ignorehitpause = 1
persistent = 1

[state -3, varset for first state]
type = varset
trigger1 = stateno = 901
var(20) = 1

[state -3, varset for second state]
type = varset
trigger1 = stateno = 902
var(20) = 0

[state -3, lost health tally in second state]
type = varset
trigger1 = stateno = 902 && time = 0
var(21) = (gethitvar(damage))

[State -3, health removal in second state]
type = LifeAdd
trigger1 = stateno = 902
value = -(gethitvar(damage))
kill = 1
;End of Focus attack

[State -3, Gametime Var]
type = varset
trigger1 = 1
var(58) = gametime
ignorehitpause = 1

[State -3, ProjContact Reset]
type = varset
triggerall = var(18)
trigger1 = (StateNo != [1000,1030])
trigger1 = StateNo != 1050 && StateNo != 1080
var(18) = 0

[State -3, Projectile Flag Off]
type = VarSet
trigger1 = !NumHelper(1001)
var(39) = 0
ignoreHitPause = 1

[State -3, Chain Reset]
type = varset
trigger1 = 1
var(4) = 0
ignorehitpause = 1

[State -3, Chain Check]
type = varset
trigger1 = (var(20) || var(41)=1) && (StateNo = [200,699]) && MoveContact
trigger2 = var(20) && (StateNo = [1000,2999]) && StateType != A && (MoveContact || var(18))
trigger2 = StateNo != [1300,1331]
trigger3 = var(20) && (StateNo = 1301 || StateNo = 1331) && StateType != A && (MoveContact || var(18))
trigger3 = (AnimElemTime(41) > 0 && StateNo = 1301) || (AnimElemTime(62) > 0 && StateNo = 1301)
var(4) = 1
ignorehitpause = 1

[State -3, Command Cancel Reset]
type = varset
trigger1 = 1
var(5) = 0
ignorehitpause = 1

[State -3, Command Cancel Check]
type = varset
triggerAll = !var(20)
trigger1 = (StateNo = [200,201]) && MoveContact
trigger2 = StateNo = 211 && MoveContact && AnimElemTime(5) < 0
trigger3 = StateNo = 221 && MoveContact && AnimElemTime(6) < 0
trigger4 = StateNo = 231 && MoveContact
trigger5 = StateNo = 400 && MoveContact
trigger6 = StateNo = 410 && MoveContact && AnimElemTime(5) < 0
trigger7 = StateNo = 241 && MoveContact 
trigger8 = StateNo = 430 && MoveContact
trigger9 = StateNo = 450 && MoveContact && AnimElemTime(6) < 0
trigger10 =StateNo = 420 || StateNo = 421 && MoveContact && AnimElemTime(5) < 0
trigger11 = StateNo = 251 && MoveContact && AnimElemTime(6) < 0
var(5) = 1
ignorehitpause = 1

[State -3, Cancel Reset]
type = varset
trigger1 = 1
var(6) = 0
ignorehitpause = 1

[State -3, Cancel Check]
type = varset
trigger1 = var(20) && (StateNo = [200,699])
trigger2 = var(20) && (StateNo = [1000,2999]) && (MoveContact || var(18))
trigger3 = (StateNo = [200,699]) && Time <= 2
trigger4 = StateNo = [200,201] 
trigger5 = StateNo = 211 && movecontact&&AnimElemTime(5) < 0
trigger6 = StateNo = 421 && movecontact&& AnimElemTime(5) < 0
trigger7 = StateNo = 231 && movecontact
trigger8 = StateNo = 400
trigger9 = StateNo = 410 && movecontact&& AnimElemTime(5) < 0
trigger10 = StateNo = 430
trigger11 = StateNo = 600
trigger12 = StateNo = 630
trigger13 = StateNo = 221 && MoveContact && AnimElemTime(6) < 0
trigger14 = StateNo = 241 && MoveContact ;&& AnimElemTime(5) < 0  
trigger15 = StateNo = 251 && MoveContact && AnimElemTime(6) < 0
trigger16 = StateNo = 440 && MoveContact && AnimElemTime(5) < 0
var(6) = 1
ignorehitpause = 1

[State -3, Super Cancel Reset]
type = varset
trigger1 = 1
var(7) = 0
ignorehitpause = 1

[State -3, Super Cancel Flag Reset]
type = VarSet
trigger1 = var(21)
trigger1 = (StateNo != [3000,4999]) || MoveType = H
var(21) = 0
ignoreHitPause = 1

[State -3, Super Cancel Check]
type = varset
trigger1 = var(20) && (StateNo = [200,699])
trigger2 = var(20) && (StateNo = [1000,2999]) && (MoveContact || var(18))
trigger3 = (StateNo = [200,699]) && Time <= 1.5
trigger4 = StateNo = [200,201]
trigger5 = StateNo = 211 && (AnimElemTime(5) < 0 || (movecontact = [1, 8]))
trigger6 = StateNo = 220 && (AnimElemTime(5) < 0 || (movecontact = [1, 8]))
trigger7 = StateNo = 221 && movecontact&&(AnimElemTime(6) < 0 || (movecontact = [1, 8]))
trigger8 = StateNo = [230,231]
trigger9 = StateNo = 251 && (AnimElemTime(6) < 0 || (movecontact = [1, 8]))
trigger10 = StateNo = 400
trigger11 = StateNo = 410 && (AnimElemTime(5) < 0 || (movecontact = [1, 8]))
trigger12 = StateNo = 420 && (AnimElemTime(5) < 0 || (movecontact = [1, 8]))
trigger13 = StateNo = 430
trigger14 = StateNo = 440 && (AnimElemTime(5) < 0 || (movecontact = [1, 8]))
trigger15 = StateNo = 450 && (AnimElemTime(6) < 0 || (movecontact = [1, 8]))
trigger16 = (StateNo = [1000,1030]) && (AnimElemTime(7) = [1,8])
trigger17 = Stateno = 1101 
trigger18 = Stateno = 1400
trigger19 = Stateno = 1401
trigger20 = Stateno = 1101
trigger21 = Stateno = 1201
trigger22 = Stateno = 1301
trigger23 = Stateno = 1501
trigger24 = Stateno = 1430
trigger25 = StateNo = 421 && MoveContact && AnimElemTime(5) < 0
trigger26 = StateNo = 1600 || StateNo = 1630 && MoveContact
trigger27 = (StateNo = [1700,1730]) && MoveContact 
trigger28 = Stateno = 241 && MoveContact && animelemtime(5)>=0
trigger29 = Stateno = 252
var(7) = 1
ignorehitpause = 1

[State -3, Hyper Cancel Reset]
type = varset
trigger1 = 1
var(8) = 0
ignorehitpause = 1
[State -3, Hyper Cancel Reset]
type = varset
trigger1 = stateno = 3110 && AnimElemTime(87) < 0 && MoveContact
var(8) = 1
ignorehitpause = 1

[State -3, Hyper Cancel Flag Reset]
type = varset
trigger1 = var(22)
trigger1 = (stateno != [3000, 4999]) || movetype = H
var(22) = 0
ignorehitpause = 1

[State -3, Parry Detection]
type = helper
triggerall = roundstate = 2 && !numhelper(765) && !var(20)
triggerall = (movetype = I && ctrl) || (stateno = [760, 762]) || stateno = 5120
triggerall = (command != "rlsfwd" && command != "rlsback" && command != "rlsup" && command != "rlsdown") || AIlevel
trigger1 = !AIlevel && (statetype = S || statetype = C || stateno = 5120) && (command = "fwd" || command = "down")
trigger2 = !AIlevel && statetype = A && (var(3) != 1 && var(3) != 2) && command = "fwd"
trigger3 = AIlevel && (stateno != [760, 762]) && inguarddist && random < 50
trigger4 = AIlevel && (stateno = [760, 762]) && time = 14 && random < 667
stateno = 765
ID = 765
name = "Parry Detection"
postype = p1
pausemovetime = 65535
supermovetime = 65535

[State -3, Parry Attacks]
type = changestate
trigger1 = (stateno != [760, 762]) && numhelper(765)
trigger1 = helper(765), stateno = 766
value = ifelse((helper(765), anim = 767), 762, ifelse((helper(765), anim = 766), 761, 760))
ignorehitpause = 1

[State -3, Parry Projectiles]
type = hitoverride
trigger1 = (stateno != [760, 762]) && numhelper(765)
trigger1 = !(helper(765), var(0)) && (helper(765), anim = 765)
attr = SA, AP
stateno = 760
slot = 0
time = 1
ignorehitpause = 1

[State -3, Parry Projectiles]
type = hitoverride
trigger1 = (stateno != [760, 762]) && numhelper(765)
trigger1 = !(helper(765), var(0)) && (helper(765), anim = 766)
attr = C, AP
stateno = 761
slot = 0
time = 1
ignorehitpause = 1

[State -3, Parry Projectiles]
type = hitoverride
trigger1 = (stateno != [760, 762]) && numhelper(765)
trigger1 = !(helper(765), var(0)) && (helper(765), anim = 767)
attr = SCA, AP
stateno = 762
slot = 0
time = 1
ignorehitpause = 1

[State -3, NoWalk after Parry]
type = assertspecial
trigger1 = var(26) > 0
trigger1 = var(26) := (var(26) -1)
flag = nowalk
ignoreHitPause = 1

[State -3, Corner Push]
type = varset
trigger1 = fvar(5)
trigger1 = numtarget
trigger1 = target, hitover || (target, gethitvar(hitshaketime) > 0 && target, time <= 0)
fvar(5) = 0

[State -3, Corner Push]
type = VarSet
trigger1 = NumTarget
trigger1 = Target, GetHitVar(HitShakeTime) <= 0
fvar(5) = fvar(5) * 0.85

[State -3, Corner Push]
type = varset
triggerAll = MoveType != H
trigger1 = movecontact = 1 && numtarget
fvar(5) = target, gethitvar(xvel)
ignorehitpause = 1

[State -3, Corner Push]
type = posadd
triggerall = fvar(5)
triggerall = (statetype = S || statetype = C) && numtarget
triggerall = !hitpausetime && target, gethitvar(hitshaketime) <= 0
triggerall = (target, statetype = S || target, statetype = C) && !(target, gethitvar(yvel)) && !(target, hitfall)
trigger1 = target, frontedgebodydist <= abs(target, vel x)
trigger1 = (target, gethitvar(xvel) * target, facing) > 0
trigger2 = target, backedgebodydist <= abs(target, vel x)
trigger2 = (target, gethitvar(xvel) * target, facing) < 0
x = ifelse(target, frontedgebodydist <= 0, -1, 1) * (target, facing) * fvar(5)

[State -3, Corner Push]
type = varset
trigger1 = fvar(5)
trigger1 = abs(fvar(5)) < 1.0
fvar(5) = 0

[State -3, Corner Push]
type = varset
trigger1 = numtarget
trigger1 = target, gethitvar(hitshaketime) <= 0
fvar(5) = fvar(5) * 0.85

[State -3, ExFX]
type = varadd
trigger1 = var(25) > 0
var(25) = -1

[State -3, ExFX]
type = varset
trigger1 = (stateno != [1000, 2999]) || movetype = H
var(25) = 0

[State -3, Ex Flash]
type = palfx
trigger1 = !(gametime % 2) && var(25)
time = 1
color = 0
mul = 256, 224, 0
add = 128, 128, 128
ignorehitpause = 1

[State -3, RageFX]
type = varadd
trigger1 = var(45) > 0
var(45) = -1

[State -3, RageFX]
type = varset
trigger1 = (stateno != [1000, 2999]) || movetype = H
var(45) = 0

[State -3, Rage Flash]
type = palfx
trigger1 = !(gametime % 2) && var(45)
time = 1
color = 0
mul = 256, 0, 0
add = 128, 128, 128
ignorehitpause = 1

[State -3, Movement Afterimage]
type = afterimage
triggerall = time = 1 && !var(20)
trigger1 = stateno = 50 && (var(3) = 2 || var(3) = 3)
trigger2 = (stateno = [700, 715])
time = 2
timegap = 1
framegap = 4
length = 9
palbright = 0, 0, 0
palcontrast = 128, 128, 128
palpostbright = 0, 0, 0
paladd = 0, 0, 0
palmul = 0.9, 0.9, 0.9
trans = add1

[State -3, Lv1 Super Afterimage]
type = afterimage
trigger1 = stateno = 3000 && time = 43
time = 2
timegap = 1
framegap = 10
length = 21
palbright = 0, 0, 0
palcontrast = 128, 128, 128
palpostbright = 0, 0, 0
paladd = 0, 0, 0
palmul = 0.75, 0.75, 0.75
trans = add1

[State -3, Lv2 Super Afterimage]
type = afterimage
trigger1 = stateno = 3050 && time = 43
time = 2
timegap = 1
framegap = 10
length = 21
palbright = 0, 0, 0
palcontrast = 32, 32, 160
palpostbright = 0, 0, 0
paladd = 0, 0, 0
palmul = 0.75, 0.75, 0.75
trans = add1

[State -3, Lv3 Super Afterimage]
type = afterimage
trigger1 = stateno = 3500 && time = 43
time = 2
timegap = 1
framegap = 10
length = 21
palbright = 0, 0, 0
palcontrast = 160, 32, 32
palpostbright = 0, 0, 0
paladd = 0, 0, 0
palmul = 0.75, 0.75, 0.75
trans = add1

[State -3, Afterimage Persist]
type = afterimagetime
trigger1 = stateno = 50 || (stateno = [600, 699])
trigger1 = (var(3) = 2 || var(3) = 3) && vel y < -1
trigger2 = var(20)
trigger3 = stateno = [700, 715]
trigger4 = (StateNo = [3000,4999])
time = 2

[State -3, Underground Juggle Prevention]
type = targetbind
trigger1 = movecontact = 1
trigger1 = numtarget && numenemy
trigger1 = (target, time = 0) && (target, ID = enemynear, ID)
trigger1 = !(target, hitshakeover) && (target, pos y > 0)
pos = ceil(p2dist x), ceil(-pos y)
ignorehitpause = 1

[State -3, Prevent Crossup]
type = width
trigger1 = movetype != H
edge = 8, 0
ignorehitpause = 1

[State -3, Variable Height]
type = playerpush
triggerall = statetype = A && movetype != H && numenemy
triggerall = p2bodydist x = [ -(enemynear, const(size.ground.back) + enemynear, const(size.ground.front)), 0]
trigger1 = p2statetype = S
trigger1 = P2Dist y >= (EnemyNear, const(size.height) - 12)
trigger2 = P2StateType = C
trigger2 = P2Dist y >= (EnemyNear, const(size.height) - 28)
trigger3 = P2StateType = L
trigger3 = P2Dist y >= 12
value = 0
ignorehitpause = 1

[State -3, GetHit Snd]
type = playsnd
triggerall = alive && time = 1
triggerall = stateno = 5000 || stateno = 5010
trigger1 = gethitvar(animtype) >= 2 && random < 500
trigger2 = gethitvar(animtype) = 1 && random < 375
trigger3 = gethitvar(animtype) = 0 && random < (250 * (AIlevel ** 2 / 64.0))
value = 5000, (random % 3)
channel = 0
ignorehitpause = 1

[State -3, GetHit Snd]
type = playsnd
triggerall = alive && time = 1
trigger1 = (stateno = 5000 || stateno = 5010) && numenemy
trigger1 = gethitvar(fall) || (enemynear, hitdefattr = SCA, SA, HA)
trigger2 = (stateno = 5020 || stateno = 5070 || stateno = 5080)
trigger3 = (stateno = 5050 || stateno = 5100) && (prevstateno != [5000, 5199])
value = 5000, 1 + (random % 3)
channel = 0
ignorehitpause = 1

[State -3, Cheap KO]
type = changestate
trigger1 = !alive && (stateno = [5000, 5010])
trigger1 = (prevstateno = [130, 131]) || (prevstateno = [140, 141]) || (prevstateno = [150, 153])
value = 5950
ignorehitpause = 1

[State -3, Cheap KO]
type = assertspecial
trigger1 = (stateno = [5000, 5010])
trigger1 = (prevstateno = [130, 131]) || (prevstateno = [140, 141]) || (prevstateno = [150, 153])
flag = nokosnd
ignorehitpause = 1

[State -3, Stop Guarding Voice]
type = StopSnd
trigger1 = StateNo = [120,155]
channel = 0

[State -3, CC Finish]
type = helper
triggerall = winKO && var(20)
triggerall = roundstate = 3 && !numhelper(8600)
trigger1 = movehit = [1, 4]
trigger2 = StateNo = 810 && (AnimElemTime(6) = [0, 1])
trigger3 = StateNo = 820 && (AnimElemTime(6) = [0, 1])
trigger4 = numhelper(1005)
trigger4 = (helper(1005), stateno = [1005, 1007]) && (helper(1005), var(18))
trigger5 = numhelper(1055)
trigger5 = (helper(1055), stateno = [1055, 1057]) && (helper(1055), var(18))
stateno = 8600
ID = 8600 + 0 * (var(23) := 900)
name = "Super Finish"
postype = left
pos = 160, -120
ownpal = 1
pausemovetime = 255
supermovetime = 255
ignorehitpause = 1

[State -3, Super Finish]
type = helper
triggerall = winKO
triggerall = roundstate = 3 && !numhelper(8600)
trigger1 = MoveHit = 1 && (StateNo = [3000,4999])
trigger1 = var(23) := stateno
trigger2 = StateNo = 3000
trigger2 = var(23) := 3000
trigger3 = NumHelper(3015)
trigger3 = Helper(3015),var(3)>0
trigger4 = NumHelper(3008)
trigger4 = Helper(3008),var(3)>0
trigger5 = StateNo = 3102
trigger5 = var(23) := 3100
trigger6 = StateNo = 3110
trigger6 = var(23) := 3110
trigger7 = StateNo = 3151 || StateNo = 3161
trigger7 = var(23) := 3150
trigger8 = (StateNo = [3500,3503])
trigger8 = var(23) := 3110
stateno = 8600
ID = 8600
name = "Super Finish"
postype = left
pos = 160, -120
ownpal = 1
pausemovetime = 255
supermovetime = 255
ignorehitpause = 1
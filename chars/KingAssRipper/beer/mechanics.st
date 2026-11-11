; Urien By RajaaBoy

;=========================================================================
; Stand
;=========================================================================
[StateDef 0]
type = S
movetype = I
physics = S
velset = 0, 0
sprpriority = 0

[state 0, Destroy]
type = removeexplod
trigger1 = ishelper
[state 0, Destroy]
type = destroyself
trigger1 = ishelper

[state 0, Change Animation]
type = changeanim
trigger1 = !time && anim = [20, 21]
trigger1 = selfanimexist(anim + 2)
value = anim + 2

[state 0, Change Animation]
type = changeanim
trigger1 = anim != 0 && anim != 5
trigger1 = (anim != [22, 23]) && anim != 910
trigger2 = anim != 0 && !animtime
value = 0

[state 0, Change Animation]
type = changeanim
triggerall = random < 496
triggerall = anim = 0
trigger1 = animelemtime(3) = 28 || animelemtime(9) = 100
value = anim
elem = animelemno(0) + 1

[state 0, End State]
type = changestate
trigger1 = !alive
value = 5050

;=========================================================================
; Stand to Crouch
;=========================================================================
[Statedef 10]
type = C
movetype = I
physics = C
velset = 0, 0
sprpriority = 0

[state 10, Change Animation]
type = changeanim
trigger1 = anim != 10 && !time
value = 10

[state 10, Multiply Velocity]
type = velmul
trigger1 = !time
x = 0.75

[state 10, Set Velocity]
type = velset
trigger1 = abs(vel x) < const(movement.crouch.friction.threshold)
x = 0.0

[state 10, End State]
type = changestate
trigger1 = !animtime
value = 11

;=========================================================================
; Crouching
;=========================================================================
[Statedef 11]
type = C
movetype = I
physics = C
velset = 0, 0
sprpriority = 0

[state 11, Change Animation]
type = changeanim
trigger1 = anim != 6 && anim != 11 && anim != 911
trigger2 = anim != 11 && !animtime
value = 11

;=========================================================================
; Crouch to Stand
;=========================================================================
[Statedef 12]
type = S
movetype = I
physics = S
velset = 0, 0
sprpriority = 0

[state 12, Change Animation]
type = changeanim
trigger1 = anim != 12 && !time
value = 12

[state 12, End State]
type = changestate
trigger1 = !animtime
value = 0

;=========================================================================
; Walking
;=========================================================================
[StateDef 20]
type = S
movetype = I
physics = S
ctrl = 1
sprpriority = 0

; Walk forward
[state 20, Set Velocity]
type = velset
trigger1 = command = "holdfwd"
x = const(velocity.walk.fwd.x) * fvar(14)

; Walk backward
[state 20, Set Velocity]
type = velset
trigger1 = command = "holdback"
x = const(velocity.walk.back.x) * fvar(14)

[state 20, Change Animation]
type = changeanim
trigger1 = anim != 20 + (vel x < 0)
value = 20 + (vel x < 0)

;=========================================================================
; Jump Start
;=========================================================================
[Statedef 40]
type = S
movetype = I
physics = S
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 1

[state 40, End State]
type = changestate
trigger1 = numhelper(917)
trigger1 = helper(917),time <= 20
value = 0 + 11 * (anim = 911)
ctrl = 1

[state 40, End State]
type = changestate
trigger1 = !time && prevstateno = 52
trigger1 = inguarddist && command = "holdback"
value = 120

[state 40, Jump Direction]
type = varset
trigger1 = !ailevel && !time
sysvar(1) = cond(command = "holdfwd", 1, cond(command = "holdback", -1, 0))
[state 40, Jump Direction]
type = varset
trigger1 = !ailevel && time
trigger1 = command = "holdfwd" || command = "holdback"
sysvar(1) = cond(command = "holdfwd", 1, cond(command = "holdback", -1, sysvar(1)))

[state 40, AI Jump Direction]
type = varset
trigger1 = ailevel && !time
sysvar(1) = 1 - random % 3
[state 40, AI Jump Direction]
type = varset
triggerall = ailevel
trigger1 = p2movetype = A && backedgedist >= 32
trigger1 = random < 64 * (ailevel ** 2.0 / 64.0)
sysvar(1) = -1
[state 40, AI Jump Direction]
type = varset
triggerall = ailevel
trigger1 = backedgedist < 16 && p2bodydist x < 80
trigger1 = p2movetype = A && p2statetype != A
trigger1 = random < 64 * (ailevel ** 2.0 / 64.0)
trigger2 = numtarget
trigger2 = target,statetype = A && target,vel x < 0
sysvar(1) = 0
[state 40, AI Jump Direction]
type = varset
triggerall = ailevel
trigger1 = p2bodydist x > 160 && p2movetype = A
trigger1 = random < 64 * (ailevel ** 2.0 / 64.0)
trigger2 = p2bodydist x > 64 && enemynear,time >= 8
trigger3 = numtarget
trigger3 = target,statetype = A && target,vel x < -1
sysvar(1) = 1

[state 40, Reset Jump Type]
type = varset
trigger1 = !time
var(44) = 0

[state 40, High Jump Cancel]
type = varset
trigger1 = !time
trigger1 = var(41)
var(44) = 1

[state 40, AI High Jump]
type = varset
triggerall = ailevel && !time && !var(44)
trigger1 = sysvar(1) = 1
trigger1 = p2bodydist x > 160 && p2movetype = A
trigger1 = random < 64 * (ailevel ** 2.0 / 64.0)
var(44) = 1

[state 40, High Jump]
type = varset
trigger1 = !ailevel && !var(44)
trigger1 = command = "$2$8"
var(44) = 1

[state 40, Change Animation]
type = changeanim
trigger1 = !time
value = 40 + 10 * var(44)

[state 40, Vulnerability]
type = hitby
trigger1 = 1
value = SCA, NA,SA,HA, NP,SP,HP

[state 40, Sound]
type = playsnd
trigger1 = !animtime
value = 40, 0
volumescale = 100

[state 40, Set Jump Velocities (raw)]
type = null
triggerall = 1 ; || animtime = -1
 ; Upward
trigger1 = sysvar(1) = 0
trigger1 = fvar(10) := 0.0 || fvar(11) := -8.0 || fvar(12) := 0.0 || fvar(13) := 0.53125 ; normal jump
trigger1 = sysvar(1) = 0 && var(44) = 1
trigger1 = fvar(10) := 0.0 || fvar(11) := -11.5 || fvar(12) := 0.0 || fvar(13) := 0.5625 ; high jump

 ; Forward
trigger2 = sysvar(1) = 1
trigger2 = fvar(10) := 3.25 || fvar(11) := -8.0 || fvar(12) := 0.0 || fvar(13) := 0.53125 ; normal jump
trigger2 = sysvar(1) = 1 && var(44) = 1
trigger2 = fvar(10) := 3.5 || fvar(11) := -11.5 || fvar(12) := 0.0 || fvar(13) := 0.5625 ; high jump

 ; Backward
trigger3 = sysvar(1) = -1
trigger3 = fvar(10) := -3.125 || fvar(11) := -8.0 || fvar(12) := 0.0 || fvar(13) := 0.53125 ; normal jump
trigger3 = sysvar(1) = -1 && var(44) = 1
trigger3 = fvar(10) := -3.25 || fvar(11) := -11.5 || fvar(12) := 0.0 || fvar(13) := 0.5625 ; high jump

[state 40, Scale Jumping Velocities to 4:3]
type = null
triggerall = 1 ; || animtime = -1
trigger1 = fvar(10) := fvar(10) * fvar(14) || 1 ; xvel
trigger1 = fvar(11) := fvar(11) * fvar(15) || 1 ; yvel
trigger1 = fvar(12) := fvar(12) * fvar(16) || 1 ; xaccel
trigger1 = fvar(13) := fvar(13) * fvar(17) || 1 ; yaccel

[state 40, Jump Dust]
type = helper
trigger1 = !animtime
trigger1 = cond(numhelper(4000), helper(4000),var(36), 0)
name = "Jump Dust"
ID = 7000
stateno = 7000
postype = P1
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0

[state 40, End State]
type = changestate
trigger1 = !animtime
value = 50
ctrl = 1

;=========================================================================
; Jumping
;=========================================================================
[Statedef 50]
type = A
movetype = I
physics = N
sprpriority = 1

[state 50, Change Animation]
type = changeanim
trigger1 = !time
value = cond(sysvar(1) = 0 || prevstateno = 140, 41, cond(sysvar(1) = 1, 42, 43)) + 10 * (anim = 50)
elem = cond(prevstateno = 140, 4, 1)

[state 50, Reset Velocities]
type = null
trigger1 = prevstateno != 40
trigger1 = fvar(10) := vel x || fvar(11) := vel y || 1
trigger1 = !var(48)
trigger1 = fvar(12) := 0.0 * fvar(16) || fvar(13) := const(movement.yaccel) * fvar(17)

[state 50, Set Velocity]
type = velset
trigger1 = fvar(10) || fvar(11)
x = fvar(10)
y = fvar(11)
persistent = 0

[state 50, Increment Velocity]
type = veladd
trigger1 = time > 0
x = fvar(12)
y = fvar(13)

[state 50, End State]
type = changestate
trigger1 = pos y + vel y > 0
value = 52

;=========================================================================
; Jump Land
;=========================================================================
[Statedef 52]
type = S
movetype = I
physics = S
ctrl = 0
velset = 0, 0
sprpriority = 0

[state 52, Set Position]
type = posset
trigger1 = !time
y = 0

[state 52, Change Animation]
type = changeanim
trigger1 = !time
value = 47 - 37 * (command = "holddown")

[state 52, Set State Type]
type = statetypeset
trigger1 = anim = 10
statetype = C
physics = C
persistent = 0

[state 52, Control]
type = ctrlset
trigger1 = time = (prevstateno = [600, 699])
value = 1
persistent = 0

[state 52, Special Effect]
type = assertspecial
trigger1 = !ctrl
trigger2 = time < 2
flag = nowalk
; flag2 = noautoturn

[state 52, Sound]
type = playsnd
trigger1 = !time 
value = 52, 0
volumescale = 100

[state 52, Land Smoke]
type = helper
trigger1 = !time
trigger1 = cond(numhelper(4000), helper(4000),var(36), 0)
name = "Land Smoke"
ID = 7010
stateno = 7010
postype = P1
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0

[state 52, End State]
type = changestate
triggerall = ctrl
trigger1 = command = "holdup"
trigger2 = command = "holdback" && inguarddist
value = cond(command = "holdup", 40, 120)

[state 52, End State]
type = changestate
trigger1 = !animtime
value = 0 + 11 * (statetype = C)
ctrl = 1

;=========================================================================
; Dash Forward
;=========================================================================
[Statedef 100]
type = S
movetype = I
physics = N
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 1

[state 100, Reset Command Buffering]
type = null
trigger1 = !time
trigger1 = fvar(30) := 0 || fvar(31) := 0

;========================< Initiate Forward Dash >========================

[state 100, Set Position]
type = posset
trigger1 = !time
y = 0

[state 100, Change Animation]
type = changeanim
trigger1 = !time
value = 100

[state 100, Sound]
type = playsnd
trigger1 = anim = 100
trigger1 = !animelemtime(2)
value = 100, 0
volumescale = 100

[state 100, Set State Type]
type = statetypeset
trigger1 = anim = 100
trigger1 = !animelemtime(2)
statetype = A

[state 100, Set Velocity]
type = velset
trigger1 = anim = 100
trigger1 = !animelemtime(2)
x = const(velocity.run.fwd.x) * fvar(14)
y = const(velocity.run.fwd.y) * fvar(15)

[state 100, Increment Velocity]
type = veladd
trigger1 = anim = 100
trigger1 = animelemtime(2) >= 2
x = -0.25 * fvar(16)
y = 0.375 * fvar(17)

[state 100, Dash Dust]
type = helper
trigger1 = anim = 100
trigger1 = !animelemtime(2)
trigger1 = cond(numhelper(4000), helper(4000),var(36), 0)
name = "Dash Dust"
ID = 7015
stateno = 7015
postype = P1
pos = 0, 0
facing = cond(vel x >= 0, 1, -1)
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0

;========================< Stop Forward Dash >========================

[state 100, Change Animation]
type = changeanim
trigger1 = anim = 100
trigger1 = pos y + vel y > 0
value = 101

[state 100, Set State Type]
type = statetypeset
trigger1 = anim = 101
statetype = S
persistent = 0

[state 100, Sound]
type = playsnd
trigger1 = anim = 101
value = 52, 0
volumescale = 100
persistent = 0

[state 100, Set Velocity]
type = velset
trigger1 = anim = 101
x = 0.0
y = 0.0
persistent = 0

[state 100, Set Position]
type = posset
trigger1 = anim = 101
y = 0
persistent = 0

[state 100, Land Smoke]
type = helper
trigger1 = anim = 101
trigger1 = cond(numhelper(4000), helper(4000),var(36), 0)
name = "Land Smoke"
ID = 7010
stateno = 7010
postype = P1
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0
persistent = 0

[state 100, Control]
type = ctrlset
trigger1 = anim = 101
trigger1 = animelemtime(1) >= 2
value = 1
persistent = 0

[state 100, Special Effect]
type = assertspecial
trigger1 = anim = 101
trigger1 = animelemtime(1) <= 3
flag = nowalk

[state 100, End State]
type = changestate
trigger1 = anim = 101 && !animtime
value = 0
ctrl = 1

;=========================================================================
; Dash Backward
;=========================================================================
[Statedef 105]
type = S
movetype = I
physics = N
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 1

[state 105, Reset Command Buffering]
type = null
trigger1 = !time
trigger1 = fvar(30) := 0 || fvar(31) := 0

;========================< Initiate Backward Dash >========================

[state 105, Set Position]
type = posset
trigger1 = !time
y = 0

[state 105, Change Animation]
type = changeanim
trigger1 = !time
value = 105

[state 105, Sound]
type = playsnd
trigger1 = anim = 105
trigger1 = !animelemtime(2)
value = 100, 0
volumescale = 100

[state 105, Set State Type]
type = statetypeset
trigger1 = anim = 105
trigger1 = !animelemtime(2)
statetype = A

[state 105, Set Velocity]
type = velset
trigger1 = anim = 105
trigger1 = !animelemtime(2)
x = const(velocity.run.back.x) * fvar(14)
y = const(velocity.run.back.y) * fvar(15)

[state 105, Increment Velocity]
type = veladd
trigger1 = anim = 105
trigger1 = animelemtime(2) >= 2
x = 0.25 * fvar(16)
y = 0.375 * fvar(17)

[state 105, Dash Dust]
type = helper
trigger1 = anim = 105
trigger1 = !animelemtime(2)
trigger1 = cond(numhelper(4000), helper(4000),var(36), 0)
name = "Dash Dust"
ID = 7015
stateno = 7015
postype = P1
pos = 0, 0
facing = cond(vel x >= 0, 1, -1)
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0

;========================< Stop Backward Dash >========================

[state 105, Change Animation]
type = changeanim
trigger1 = anim = 105
trigger1 = pos y + vel y > 0
value = 106

[state 105, Set State Type]
type = statetypeset
trigger1 = anim = 106
statetype = S
persistent = 0

[state 105, Sound]
type = playsnd
trigger1 = anim = 106
value = 52, 0
volumescale = 105
persistent = 0

[state 105, Set Velocity]
type = velset
trigger1 = anim = 106
x = 0.0
y = 0.0
persistent = 0

[state 105, Set Position]
type = posset
trigger1 = anim = 106
y = 0
persistent = 0

[state 105, Land Smoke]
type = helper
trigger1 = anim = 106
trigger1 = cond(numhelper(4000), helper(4000),var(36), 0)
name = "Land Smoke"
ID = 7010
stateno = 7010
postype = P1
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0
persistent = 0

[state 105, Control]
type = ctrlset
trigger1 = anim = 106
trigger1 = animelemtime(1) >= 2
value = 1
persistent = 0

[state 105, End State]
type = changestate
trigger1 = anim = 106 && !animtime
value = 0
ctrl = 1

;=========================================================================
; Into Guard
;=========================================================================
[Statedef 120]
type = U
physics = U

[state 120, Standing Guard Type]
type = varset
trigger1 = 1
sysvar(3) = 5 * (statetype = S && p2dist y < -16)

[state 120, Reset Velocities]
type = null
trigger1 = !var(48) && statetype = A
trigger1 = fvar(12) := 0.0 * fvar(16) || fvar(13) := const(movement.yaccel) * fvar(17)

[state 120, Set Velocity]
type = velset
trigger1 = !time && statetype != A
x = 0.0
y = 0.0

[state 120, Change Animation]
type = changeanim
trigger1 = !time
value = 120 + 1 * (statetype = C) + 2 * (statetype = A) + sysvar(3)

[state 120, Set State Type]
type = statetypeset
trigger1 = !time && statetype = S
physics = S

[state 120, Set State Type]
type = statetypeset
trigger1 = !time && statetype = C
physics = C

[state 120, Set State Type]
type = statetypeset
trigger1 = !time && statetype = A
physics = N

[state 120, High -> Low]
type = statetypeset
trigger1 = !ailevel && statetype = S && command = "holddown"
trigger2 = ailevel && statetype = S && enemynear,movetype = A && enemynear,statetype = C
statetype = C
physics = C

[state 120, Low -> High]
type = statetypeset
trigger1 = !ailevel && statetype = C && command != "holddown"
trigger2 = ailevel && statetype = C && p2movetype = A && p2statetype!= C
statetype = S
physics = S

[state 120, Increment Velocity]
type = veladd
trigger1 = statetype = A
x = fvar(12)
y = fvar(13)

[state 120, Set Velocity]
type = velset
trigger1 = statetype = A
trigger1 = pos y + vel y > 0
y = 0.0

[state 120, Set Position]
type = posset
trigger1 = statetype = A
trigger1 = !vel y
y = 0

[state 120, AI Fix]
type = ctrlset
trigger1 = ailevel && numenemy
value = enemynear,time >= 70 || time >= 70

[state 120, End State]
type = changestate
triggerall = statetype = A
triggerall = !vel y
triggerall = inguarddist
trigger1 = !ailevel
trigger1 = command = "holdback"
trigger2 = ailevel
value = 130

[state 120, End State]
type = changestate
trigger1 = statetype = A
trigger1 = !vel y || pos y + vel y > 0
value = 52

[state 120, End State]
type = changestate
trigger1 = !animtime
value = 130 + 1 * (statetype = C) + 2 * (statetype = A)

[state 120, End State]
type = changestate
trigger1 = !ailevel && command != "holdback"
trigger2 = !inguarddist
trigger3 = ailevel && numenemy
trigger3 = enemynear,hitdefattr = SCA,AT
value = 140

;=========================================================================
; Stand Guard (guarding)
;=========================================================================
[Statedef 130]
type = S
physics = S

[state 130, Standing Guard Type]
type = varset
trigger1 = 1
sysvar(3) = 5 * (statetype = S && p2dist y < -24)

[state 130, Change Animation]
type = changeanim
trigger1 = anim != 130 + sysvar(3)
value = 130 + sysvar(3)

[state 130, AI Fix]
type = ctrlset
trigger1 = ailevel && numenemy
value = enemynear,time >= 70 || time >= 70

[state 130, High -> Low]
type = changestate
trigger1 = !ailevel && command = "holddown"
trigger2 = ailevel && p2movetype = A && p2statetype = C && random < 900 * (ailevel ** 2.0 / 64.0)
value = 131

[state 130, End State]
type = changestate
trigger1 = !ailevel && command != "holdback"
trigger2 = !inguarddist
trigger3 = ailevel && numenemy
trigger3 = enemynear,hitdefattr = SCA,AT
value = 140

;=========================================================================
; Crouch Guard (guarding)
;=========================================================================
[Statedef 131]
type = C
physics = C

[state 131, Change Animation]
type = changeanim
trigger1 = anim != 131
value = 131

[state 131, AI Fix]
type = ctrlset
trigger1 = ailevel && numenemy
value = enemynear,time >= 70 || time >= 70

[state 131, Low -> High]
type = changestate
trigger1 = !ailevel && command != "holddown"
trigger2 = ailevel && p2movetype = A && p2statetype != C && random < 450 * (ailevel ** 2.0 / 64.0)
value = 130

[state 131, End State]
type = changestate
trigger1 = !ailevel && command != "holdback"
trigger2 = !inguarddist
trigger3 = ailevel && numenemy
trigger3 = enemynear,hitdefattr = SCA,AT
value = 140

;=========================================================================
; Air Guard (guarding)
;=========================================================================
[Statedef 132]
type = A
physics = N

[state 132, Reset Velocities]
type = null
trigger1 = prevstateno != 120
trigger1 = fvar(12) := 0.0 * fvar(16) || fvar(13) := const(movement.yaccel) * fvar(17)

[state 132, Change Animation]
type = changeanim
trigger1 = anim != 132
value = 132

[state 132, Increment Velocity]
type = veladd
trigger1 = 1
x = fvar(12)
y = fvar(13)

[state 132, Set Velocity]
type = velset
trigger1 = pos y + vel y > 0
y = 0.0

[state 132, Set Position]
type = posset
trigger1 = !vel y
y = 0

[state 132, AI Fix]
type = ctrlset
trigger1 = ailevel && numenemy
value = enemynear,time >= 70 || time >= 70

[state 132, End State]
type = changestate
triggerall = !vel y
triggerall = inguarddist
trigger1 = !ailevel
trigger1 = command = "holdback"
trigger2 = ailevel
value = cond(!ailevel && command = "holddown" || ailevel && p2statetype = C, 131, 130)

[state 132, End State]
type = changestate
trigger1 = !vel y || pos y + vel y > 0
value = 52

[state 132, End State]
type = changestate
trigger1 = !ailevel
trigger1 = command != "holdback"
trigger2 = !inguarddist
trigger3 = ailevel && numenemy
trigger3 = enemynear,hitdefattr = SCA,AT
value = 140

;=========================================================================
; Guard (end)
;=========================================================================
[Statedef 140]
type = U
physics = U
ctrl = 1

[state 140, Standing Guard Type]
type = varset
trigger1 = 1
sysvar(3) = 5 * (statetype = S && p2dist y < -24)

[state 140, Reset Velocities]
type = null
trigger1 = statetype = A && prevstateno != [120, 165]
trigger1 = fvar(12) := 0.0 * fvar(16) || fvar(13) := const(movement.yaccel) * fvar(17)

[state 140, Change Animation]
type = changeanim
trigger1 = !time
value = 140 + 1 * (statetype = C) + 2 * (statetype = A) + sysvar(3)

[state 140, Set State Type]
type = statetypeset
trigger1 = !time && statetype = S
physics = S

[state 140, Set State Type]
type = statetypeset
trigger1 = !time && statetype = C
physics = C

[state 140, Set State Type]
type = statetypeset
trigger1 = !time && statetype = A
physics = N

[state 140, High -> Low]
type = statetypeset
trigger1 = !ailevel && statetype = S && command = "holddown"
trigger2 = ailevel && statetype = S && p2movetype = A && p2statetype = C && random < 900 * (ailevel ** 2.0 / 64.0)
statetype = C
physics = C

[state 140, Low -> High]
type = statetypeset
trigger1 = !ailevel && statetype = C && command != "holddown"
trigger2 = ailevel && statetype = C && p2movetype = A && p2statetype != C && random < 450 * (ailevel ** 2.0 / 64.0)
statetype = S
physics = S

[state 140, Increment Velocity]
type = veladd
trigger1 = statetype = A
x = fvar(12)
y = fvar(13)

[state 140, End State]
type = changestate
trigger1 = !animtime
value = 0 + 11 * (statetype = C) + 50 * (statetype = A)

;=========================================================================
; Stand Guard Hit (shaking)
;=========================================================================
[Statedef 150]
type = S
movetype = H
physics = N
velset = 0, 0

[state 150, Standing Guard Type]
type = varset
trigger1 = !time
trigger1 = (prevstateno = [150, 151]) || (prevstateno = [160, 161])
sysvar(3) = 5 * (statetype = S && p2dist y < -24)

[state 150, Hittime]
type = varset
trigger1 = !time
sysvar(4) = 0

[state 150, Change Animation]
type = changeanim
trigger1 = 1
value = 150 + sysvar(3)
elem = 1 + (time >= 2) + hitshakeover ; unique
ignorehitpause = 1 ; unique

[state 150, End State]
type = changestate
trigger1 = !hitshakeover && !ailevel
trigger1 = command != "holdback"
value = 160

[state 150, End State]
type = changestate
trigger1 = hitshakeover && !ailevel
trigger1 = command != "holdback"
value = 161 + 2 * (command = "holddown")

[state 150, End State]
type = changestate
trigger1 = hitshakeover
value = 151 + 2 * ((!ailevel && command = "holddown") || (ailevel && p2movetype = A && p2statetype = C))

[state 150, High -> Low]
type = statetypeset
trigger1 = !ailevel && statetype = S && command = "holddown"
trigger2 = ailevel && statetype = S && p2movetype = A && p2statetype = C && random < 900 * (ailevel ** 2.0 / 64.0)
statetype = C
physics = C

[state 150, Low -> High]
type = statetypeset
trigger1 = !ailevel && statetype = C && command != "holddown"
trigger2 = ailevel && statetype = C && p2movetype = A && p2statetype != C && random < 450 * (ailevel ** 2.0 / 64.0)
statetype = S
physics = S

; Urien - Unique Metal Sound
[state 150, Sound]
type = playsnd
trigger1 = !time
trigger1 = var(54) != [1, 2]
value = 120, 20
volumescale = 100
channel = 6

[state 150, FFB]
type = forcefeedback
trigger1 = !time
waveform = square
time = 3

;=========================================================================
; Stand Guard Hit 2 (knocked back)
;=========================================================================
[Statedef 151]
type = S
movetype = H
physics = N

[state 151, Standing Guard Type]
type = varset
trigger1 = 0
sysvar(3) = 5 * (statetype = S && p2dist y < -24)

[state 151, Hittime]
type = varadd
trigger1 = time ; cond(prevstateno = 161 || prevstateno = 163, time >= 0, time)
sysvar(4) = 1

[state 151, Set Hit Direction]
type = varset
trigger1 = 1
sysfvar(1) = cond(gethitvar(xvel) * facing < 0, -1, cond(gethitvar(xvel) * facing > 0, 1, 0))

[state 151, Change Animation]
type = changeanim
trigger1 = !time
trigger1 = prevstateno = 150 || prevstateno = 152 || prevstateno = 160 || prevstateno = 162
value = 150 + sysvar(3)

[state 151, Set Hit Velocity]
type = null ; velset
trigger1 = var(54) = [1, 2]
trigger1 = sysvar(4) < gethitvar(slidetime)
; trigger1 = prevstateno = 150 || prevstateno = 152 || prevstateno = 160 || prevstateno = 162
x = abs(ceil((gethitvar(xvel) * facing) * cos((sysvar(4) - (gethitvar(slidetime) / 2.0)) * pi / gethitvar(slidetime)))) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

[state 151, Set Hit Velocity]
type = velset
trigger1 = var(54) != [1, 2]
trigger1 = !time
trigger1 = prevstateno = 150 || prevstateno = 152 || prevstateno = 160 || prevstateno = 162
x = gethitvar(xvel) * facing

[state 151, Multiply Hit Velocity]
type =  velmul
trigger1 = var(54) != [1, 2]
trigger1 = vel x
x = const(movement.stand.friction)

;========================< SF3 Hit Movement >========================

;<-------------------------<Slide 7>------------------------->

[state 151, Slide: 7, Vel: 6, Pixels: 28]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 7
trigger1 = abs(gethitvar(xvel)) = 6.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [1, 8]
; trigger2 = abs(gethitvar(xvel)) = (0.0, 8.0)
x = (3 * (sysvar(4) = 0) + 4 * (sysvar(4) = 1) + 6 * (sysvar(4) = 2) + 7 * (sysvar(4) = 3) + 4 * (sysvar(4) = 4) + 3 * (sysvar(4) = 5) + 1 * (sysvar(4) = 6)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

[state 151, Slide: 7, Vel: 8, Pixels: 32]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 7
trigger1 = abs(gethitvar(xvel)) = 8.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [1, 8]
; trigger2 = abs(gethitvar(xvel)) = [8.0, 10.0)
x = (3 * (sysvar(4) = 0) + 5 * (sysvar(4) = 1) + 6 * (sysvar(4) = 2) + 7 * (sysvar(4) = 3) + 6 * (sysvar(4) = 4) + 4 * (sysvar(4) = 5) + 1 * (sysvar(4) = 6)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

[state 151, Slide: 7, Vel: 10, Pixels: 40]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 7
trigger1 = abs(gethitvar(xvel)) = 10.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [1, 8]
; trigger2 = abs(gethitvar(xvel)) >= 10.0
x = (5 * (sysvar(4) = 0) + 7 * (sysvar(4) = 1) + 11 * (sysvar(4) = 2) + 6 * (sysvar(4) = 3) + 5 * (sysvar(4) = 4) + 4 * (sysvar(4) = 5) + 2 * (sysvar(4) = 6)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

;<-------------------------<Slide 9>------------------------->

[state 151, Slide: 9, Vel: 8, Pixels: 38]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 9
trigger1 = abs(gethitvar(xvel)) = 8.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = 9
; trigger2 = abs(gethitvar(xvel)) = (0.0, 10.0)
x = (3 * (sysvar(4) = 0) + 3 * (sysvar(4) = 1) + 4 * (sysvar(4) = 2) + 6 * (sysvar(4) = 3) + 8 * (sysvar(4) = 4) + 7 * (sysvar(4) = 5) + 4 * (sysvar(4) = 6) + 2 * (sysvar(4) = 7) + 1 * (sysvar(4) = 8)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

[state 151, Slide: 9, Vel: 10, Pixels: 48]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 9
trigger1 = abs(gethitvar(xvel)) = 10.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = 9
; trigger2 = abs(gethitvar(xvel)) = [10.0, 12.0)
x = (4 * (sysvar(4) = 0) + 7 * (sysvar(4) = 1) + 8 * (sysvar(4) = 2) + 9 * (sysvar(4) = 3) + 8 * (sysvar(4) = 4) + 6 * (sysvar(4) = 5) + 3 * (sysvar(4) = 6) + 2 * (sysvar(4) = 7) + 1 * (sysvar(4) = 8)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

[state 151, Slide: 9, Vel: 12, Pixels: 60]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 9
trigger1 = abs(gethitvar(xvel)) = 12.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = 9
; trigger2 = abs(gethitvar(xvel)) = [12.0, 13.0)
x = (4 * (sysvar(4) = 0) + 7 * (sysvar(4) = 1) + 9 * (sysvar(4) = 2) + 10 * (sysvar(4) = 3) + 11 * (sysvar(4) = 4) + 8 * (sysvar(4) = 5) + 6 * (sysvar(4) = 6) + 4 * (sysvar(4) = 7) + 1 * (sysvar(4) = 8)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

[state 151, Slide: 9, Vel: 13, Pixels: 66]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 9
trigger1 = abs(gethitvar(xvel)) = 13.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = 9
; trigger2 = abs(gethitvar(xvel)) = [13.0, 14.0)
x = (4 * (sysvar(4) = 0) + 7 * (sysvar(4) = 1) + 9 * (sysvar(4) = 2) + 10 * (sysvar(4) = 3) + 12 * (sysvar(4) = 4) + 9 * (sysvar(4) = 5) + 6 * (sysvar(4) = 6) + 5 * (sysvar(4) = 7) + 4 * (sysvar(4) = 8)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

[state 151, Slide: 9, Vel: 14, Pixels: 75]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 9
trigger1 = abs(gethitvar(xvel)) = 14.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = 9
; trigger2 = abs(gethitvar(xvel)) >= 14.0 
x = (5 * (sysvar(4) = 0) + 8 * (sysvar(4) = 1) + 10 * (sysvar(4) = 2) + 11 * (sysvar(4) = 3) + 13 * (sysvar(4) = 4) + 10 * (sysvar(4) = 5) + 7 * (sysvar(4) = 6) + 6 * (sysvar(4) = 7) + 5 * (sysvar(4) = 8)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

;<-------------------------<Slide 10>------------------------->

[state 151, Slide: 10, Vel: 10, Pixels: 54]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 10
trigger1 = abs(gethitvar(xvel)) = 10.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [10, 11]
; trigger2 = abs(gethitvar(xvel)) = [10.0, 12.0)
x = (14 * (sysvar(4) = 0) + 9 * (sysvar(4) = 1) + 7 * (sysvar(4) = 2) + 6 * (sysvar(4) = 3) + 5 * (sysvar(4) = 4) + 4 * (sysvar(4) = 5) + 3 * (sysvar(4) = 6) + 3 * (sysvar(4) = 7) + 2 * (sysvar(4) = 8)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing
[state 151, Slide: 10, Vel: 10, Pixels: 54]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime) && sysvar(4) >= 9
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 10
trigger1 = abs(gethitvar(xvel)) = 10.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [10, 11]
; trigger2 = abs(gethitvar(xvel)) = [10.0, 12.0)
x = (1 * (sysvar(4) = 9)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

;<-------------------------<Slide 12>------------------------->

[state 151, Slide: 12, Vel: 14, Pixels: 72]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 12
trigger1 = abs(gethitvar(xvel)) = 14.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [12, 19]
; trigger2 = abs(gethitvar(xvel)) = (0.0, 16.0)
x = (4 * (sysvar(4) = 0) + 7 * (sysvar(4) = 1) + 9 * (sysvar(4) = 2) + 10 * (sysvar(4) = 3) + 12 * (sysvar(4) = 4) + 9 * (sysvar(4) = 5) + 6 * (sysvar(4) = 6) + 5 * (sysvar(4) = 7) + 4 * (sysvar(4) = 8)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing
[state 151, Slide: 12, Vel: 14, Pixels: 72]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime) && sysvar(4) >= 9
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 12
trigger1 = abs(gethitvar(xvel)) = 14.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [12, 19]
; trigger2 = abs(gethitvar(xvel)) = (0.0, 16.0)
x = (3 * (sysvar(4) = 9) + 2 * (sysvar(4) = 10) + 1 * (sysvar(4) = 11)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

[state 151, Slide: 12, Vel: 16, Pixels: 84]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 12
trigger1 = abs(gethitvar(xvel)) = 16.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [12, 19]
; trigger2 = abs(gethitvar(xvel)) = [16.0, 17.0)
x = (5 * (sysvar(4) = 0) + 8 * (sysvar(4) = 1) + 10 * (sysvar(4) = 2) + 11 * (sysvar(4) = 3) + 13 * (sysvar(4) = 4) + 10 * (sysvar(4) = 5) + 7 * (sysvar(4) = 6) + 6 * (sysvar(4) = 7) + 5 * (sysvar(4) = 8)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing
[state 151, Slide: 12, Vel: 16, Pixels: 84]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime) && sysvar(4) >= 9
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 12
trigger1 = abs(gethitvar(xvel)) = 16.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [12, 19]
; trigger2 = abs(gethitvar(xvel)) = [16.0, 17.0)
x = (4 * (sysvar(4) = 9) + 3 * (sysvar(4) = 10) + 2 * (sysvar(4) = 11)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

[state 151, Slide: 12, Vel: 17, Pixels: 90]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 12
trigger1 = abs(gethitvar(xvel)) = 17.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [12, 19]
; trigger2 = abs(gethitvar(xvel)) = [17.0, 18.0)
x = (9 * (sysvar(4) = 0) + 12 * (sysvar(4) = 1) + 17 * (sysvar(4) = 2) + 9 * (sysvar(4) = 3) + 8 * (sysvar(4) = 4) + 7 * (sysvar(4) = 5) + 7 * (sysvar(4) = 6) + 6 * (sysvar(4) = 7) + 5 * (sysvar(4) = 8)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing
[state 151, Slide: 12, Vel: 17, Pixels: 90]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime) && sysvar(4) >= 9
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 12
trigger1 = abs(gethitvar(xvel)) = 17.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [12, 19]
; trigger2 = abs(gethitvar(xvel)) = [17.0, 18.0)
x = (4 * (sysvar(4) = 9) + 4 * (sysvar(4) = 10) + 2 * (sysvar(4) = 11)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

[state 151, Slide: 12, Vel: 18, Pixels: 100]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 12
trigger1 = abs(gethitvar(xvel)) = 18.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [12, 19]
; trigger2 = abs(gethitvar(xvel)) >= 18.0
x = (10 * (sysvar(4) = 0) + 14 * (sysvar(4) = 1) + 18 * (sysvar(4) = 2) + 12 * (sysvar(4) = 3) + 9 * (sysvar(4) = 4) + 8 * (sysvar(4) = 5) + 7 * (sysvar(4) = 6) + 6 * (sysvar(4) = 7) + 5 * (sysvar(4) = 8)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing
[state 151, Slide: 12, Vel: 18, Pixels: 100]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime) && sysvar(4) >= 9
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 12
trigger1 = abs(gethitvar(xvel)) = 18.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [12, 19]
; trigger2 = abs(gethitvar(xvel)) >= 18.0
x = (5 * (sysvar(4) = 9) + 4 * (sysvar(4) = 10) + 2 * (sysvar(4) = 11)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

;<-------------------------<Slide 20>------------------------->

[state 151, Slide: 20, Vel: 24, Pixels: 144]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 20
trigger1 = abs(gethitvar(xvel)) = 24.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) >= 20
; trigger2 = abs(gethitvar(xvel)) > 0.0
x = (21 * (sysvar(4) = 0) + 17 * (sysvar(4) = 1) + 12 * (sysvar(4) = 2) + 11 * (sysvar(4) = 3) + 11 * (sysvar(4) = 4) + 10 * (sysvar(4) = 5) + 10 * (sysvar(4) = 6) + 9 * (sysvar(4) = 7) + 9 * (sysvar(4) = 8)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing
[state 151, Slide: 20, Vel: 24, Pixels: 144]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime) && sysvar(4) >= 9
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 20
trigger1 = abs(gethitvar(xvel)) = 24.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) >= 20
; trigger2 = abs(gethitvar(xvel)) > 0.0
x = (8 * (sysvar(4) = 9) + 7 * (sysvar(4) = 10) + 6 * (sysvar(4) = 11) + 5 * (sysvar(4) = 12) + 4 * (sysvar(4) = 13) + 2 * (sysvar(4) = 14) + 1 * (sysvar(4) = 15) + 1 * (sysvar(4) = 19)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

;<-------------------------<Universal Slide>------------------------->

[state 151, Stop Hit Velocity]
type = velset
triggerall = vel x
trigger1 = hitover || gethitvar(hittime) <= 0
trigger2 = sysvar(4) >= gethitvar(slidetime)
trigger3 = var(54) != [1, 2]
trigger3 = cond(sysfvar(1) = -1, vel x > 0, vel x < 0)
x = 0.0

;========================< SF3 Guard Functions >========================

[state 151, Control]
type = ctrlset
; trigger1 = sysvar(4) >= gethitvar(ctrltime)
trigger1 = hitover || gethitvar(hittime) <= 0
value = 1

[state 151, High -> Low]
type = statetypeset
trigger1 = !ailevel && statetype = S && command = "holddown"
trigger2 = ailevel && statetype = S && p2movetype = A && p2statetype = C && random < 900 * (ailevel ** 2.0 / 64.0)
statetype = C

[state 151, Low -> High]
type = statetypeset
trigger1 = !ailevel && statetype = C && command != "holddown"
trigger2 = ailevel && statetype = C && p2movetype = A && p2statetype != C && random < 450 * (ailevel ** 2.0 / 64.0)
statetype = S

[state 151, End State]
type = changestate
trigger1 = hitover || gethitvar(hittime) <= 0
value = 130
ctrl = 1

[state 151, End State]
type = changestate
trigger1 = !ailevel && command != "holdback"
value = 161 + 2 * (command = "holddown")

[state 151, End State]
type = changestate
triggerall = ailevel >= 8 && p2movetype = A && inguarddist
trigger1 = random < 64 * (ailevel ** 2.0 / 64.0)
value = 161 + 2 * (statetype = C)

;=========================================================================
; Crouch Guard Hit (shaking)
;=========================================================================
[Statedef 152]
type = C
movetype = H
physics = N
velset = 0, 0

[state 152, Hittime]
type = varset
trigger1 = !time
sysvar(4) = 0

[state 152, Change Animation]
type = changeanim
trigger1 = 1
value = 151
elem = 1 + (time >= 2) + hitshakeover ; unique
ignorehitpause = 1 ; unique

[state 152, End State]
type = changestate
trigger1 = !hitshakeover && !ailevel
trigger1 = command != "holdback"
value = 162

[state 152, End State]
type = changestate
trigger1 = hitshakeover && !ailevel
trigger1 = command != "holdback"
value = 161 + 2 * (command = "holddown")

[state 152, End State]
type = changestate
trigger1 = hitshakeover
value = 151 + 2 * ((!ailevel && command = "holddown") || (ailevel && p2movetype = A && p2statetype = C))

[state 152, High -> Low]
type = statetypeset
trigger1 = !ailevel && statetype = S && command = "holddown"
trigger2 = ailevel && statetype = S && p2movetype = A && p2statetype = C && random < 900 * (ailevel ** 2.0 / 64.0)
statetype = C
physics = C

[state 152, Low -> High]
type = statetypeset
trigger1 = !ailevel && statetype = C && command != "holddown"
trigger2 = ailevel && statetype = C && p2movetype = A && p2statetype != C && random < 450 * (ailevel ** 2.0 / 64.0)
statetype = S
physics = S

; Urien - Unique Metal Sound
[state 152, Sound]
type = playsnd
trigger1 = !time
trigger1 = var(54) != [1, 2]
value = 120, 20
volumescale = 100
channel = 6

[state 152, FFB]
type = forcefeedback
trigger1 = !time
waveform = square
time = 4

;=========================================================================
; Crouch Guard Hit 2 (knocked back)
;=========================================================================
[Statedef 153]
type = C
movetype = H
physics = N

[state 153, Hittime]
type = varadd
trigger1 = time ; cond(prevstateno = 161 || prevstateno = 163, time >= 0, time)
sysvar(4) = 1

[state 153, Set Hit Direction]
type = varset
trigger1 = 1
sysfvar(1) = cond(gethitvar(xvel) * facing < 0, -1, cond(gethitvar(xvel) * facing > 0, 1, 0))

[state 153, Change Animation]
type = changeanim
trigger1 = !time 
trigger1 = prevstateno = 150 || prevstateno = 152 || prevstateno = 160 || prevstateno = 162
value = 151

[state 153, Set Hit Velocity]
type = null ; velset
trigger1 = var(54) = [1, 2]
trigger1 = sysvar(4) < gethitvar(slidetime)
; trigger1 = prevstateno = 150 || prevstateno = 152 || prevstateno = 160 || prevstateno = 162
x = abs(ceil((gethitvar(xvel) * facing) * cos((sysvar(4) - (gethitvar(slidetime) / 2.0)) * pi / gethitvar(slidetime)))) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

[state 153, Set Hit Velocity]
type = velset
trigger1 = var(54) != [1, 2]
trigger1 = !time 
trigger1 = prevstateno = 150 || prevstateno = 152 || prevstateno = 160 || prevstateno = 162
x = gethitvar(xvel) * facing

[state 153, Multiply Hit Velocity]
type =  velmul
trigger1 = var(54) != [1, 2]
trigger1 = vel x
x = const(movement.stand.friction)

;========================< SF3 Hit Movement >========================

;<-------------------------<Slide 7>------------------------->

[state 153, Slide: 7, Vel: 6, Pixels: 28]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 7
trigger1 = abs(gethitvar(xvel)) = 6.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [1, 8]
; trigger2 = abs(gethitvar(xvel)) = (0.0, 8.0)
x = (3 * (sysvar(4) = 0) + 4 * (sysvar(4) = 1) + 6 * (sysvar(4) = 2) + 7 * (sysvar(4) = 3) + 4 * (sysvar(4) = 4) + 3 * (sysvar(4) = 5) + 1 * (sysvar(4) = 6)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

[state 153, Slide: 7, Vel: 8, Pixels: 32]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 7
trigger1 = abs(gethitvar(xvel)) = 8.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [1, 8]
; trigger2 = abs(gethitvar(xvel)) = [8.0, 10.0)
x = (3 * (sysvar(4) = 0) + 5 * (sysvar(4) = 1) + 6 * (sysvar(4) = 2) + 7 * (sysvar(4) = 3) + 6 * (sysvar(4) = 4) + 4 * (sysvar(4) = 5) + 1 * (sysvar(4) = 6)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

[state 153, Slide: 7, Vel: 10, Pixels: 40]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 7
trigger1 = abs(gethitvar(xvel)) = 10.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [1, 8]
; trigger2 = abs(gethitvar(xvel)) >= 10.0
x = (5 * (sysvar(4) = 0) + 7 * (sysvar(4) = 1) + 11 * (sysvar(4) = 2) + 6 * (sysvar(4) = 3) + 5 * (sysvar(4) = 4) + 4 * (sysvar(4) = 5) + 2 * (sysvar(4) = 6)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

;<-------------------------<Slide 9>------------------------->

[state 153, Slide: 9, Vel: 8, Pixels: 38]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 9
trigger1 = abs(gethitvar(xvel)) = 8.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = 9
; trigger2 = abs(gethitvar(xvel)) = (0.0, 10.0)
x = (3 * (sysvar(4) = 0) + 3 * (sysvar(4) = 1) + 4 * (sysvar(4) = 2) + 6 * (sysvar(4) = 3) + 8 * (sysvar(4) = 4) + 7 * (sysvar(4) = 5) + 4 * (sysvar(4) = 6) + 2 * (sysvar(4) = 7) + 1 * (sysvar(4) = 8)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

[state 153, Slide: 9, Vel: 10, Pixels: 48]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 9
trigger1 = abs(gethitvar(xvel)) = 10.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = 9
; trigger2 = abs(gethitvar(xvel)) = [10.0, 12.0)
x = (4 * (sysvar(4) = 0) + 7 * (sysvar(4) = 1) + 8 * (sysvar(4) = 2) + 9 * (sysvar(4) = 3) + 8 * (sysvar(4) = 4) + 6 * (sysvar(4) = 5) + 3 * (sysvar(4) = 6) + 2 * (sysvar(4) = 7) + 1 * (sysvar(4) = 8)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

[state 153, Slide: 9, Vel: 12, Pixels: 60]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 9
trigger1 = abs(gethitvar(xvel)) = 12.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = 9
; trigger2 = abs(gethitvar(xvel)) = [12.0, 13.0)
x = (4 * (sysvar(4) = 0) + 7 * (sysvar(4) = 1) + 9 * (sysvar(4) = 2) + 10 * (sysvar(4) = 3) + 11 * (sysvar(4) = 4) + 8 * (sysvar(4) = 5) + 6 * (sysvar(4) = 6) + 4 * (sysvar(4) = 7) + 1 * (sysvar(4) = 8)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

[state 153, Slide: 9, Vel: 13, Pixels: 66]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 9
trigger1 = abs(gethitvar(xvel)) = 13.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = 9
; trigger2 = abs(gethitvar(xvel)) = [13.0, 14.0)
x = (4 * (sysvar(4) = 0) + 7 * (sysvar(4) = 1) + 9 * (sysvar(4) = 2) + 10 * (sysvar(4) = 3) + 12 * (sysvar(4) = 4) + 9 * (sysvar(4) = 5) + 6 * (sysvar(4) = 6) + 5 * (sysvar(4) = 7) + 4 * (sysvar(4) = 8)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

[state 153, Slide: 9, Vel: 14, Pixels: 75]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 9
trigger1 = abs(gethitvar(xvel)) = 14.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = 9
; trigger2 = abs(gethitvar(xvel)) >= 14.0 
x = (5 * (sysvar(4) = 0) + 8 * (sysvar(4) = 1) + 10 * (sysvar(4) = 2) + 11 * (sysvar(4) = 3) + 13 * (sysvar(4) = 4) + 10 * (sysvar(4) = 5) + 7 * (sysvar(4) = 6) + 6 * (sysvar(4) = 7) + 5 * (sysvar(4) = 8)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

;<-------------------------<Slide 10>------------------------->

[state 153, Slide: 10, Vel: 10, Pixels: 54]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 10
trigger1 = abs(gethitvar(xvel)) = 10.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [10, 11]
; trigger2 = abs(gethitvar(xvel)) = [10.0, 12.0)
x = (14 * (sysvar(4) = 0) + 9 * (sysvar(4) = 1) + 7 * (sysvar(4) = 2) + 6 * (sysvar(4) = 3) + 5 * (sysvar(4) = 4) + 4 * (sysvar(4) = 5) + 3 * (sysvar(4) = 6) + 3 * (sysvar(4) = 7) + 2 * (sysvar(4) = 8)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing
[state 153, Slide: 10, Vel: 10, Pixels: 54]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime) && sysvar(4) >= 9
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 10
trigger1 = abs(gethitvar(xvel)) = 10.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [10, 11]
; trigger2 = abs(gethitvar(xvel)) = [10.0, 12.0)
x = (1 * (sysvar(4) = 9)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

;<-------------------------<Slide 12>------------------------->

[state 153, Slide: 12, Vel: 14, Pixels: 72]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 12
trigger1 = abs(gethitvar(xvel)) = 14.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [12, 19]
; trigger2 = abs(gethitvar(xvel)) = (0.0, 16.0)
x = (4 * (sysvar(4) = 0) + 7 * (sysvar(4) = 1) + 9 * (sysvar(4) = 2) + 10 * (sysvar(4) = 3) + 12 * (sysvar(4) = 4) + 9 * (sysvar(4) = 5) + 6 * (sysvar(4) = 6) + 5 * (sysvar(4) = 7) + 4 * (sysvar(4) = 8)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing
[state 153, Slide: 12, Vel: 14, Pixels: 72]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime) && sysvar(4) >= 9
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 12
trigger1 = abs(gethitvar(xvel)) = 14.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [12, 19]
; trigger2 = abs(gethitvar(xvel)) = (0.0, 16.0)
x = (3 * (sysvar(4) = 9) + 2 * (sysvar(4) = 10) + 1 * (sysvar(4) = 11)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

[state 153, Slide: 12, Vel: 16, Pixels: 84]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 12
trigger1 = abs(gethitvar(xvel)) = 16.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [12, 19]
; trigger2 = abs(gethitvar(xvel)) = [16.0, 17.0)
x = (5 * (sysvar(4) = 0) + 8 * (sysvar(4) = 1) + 10 * (sysvar(4) = 2) + 11 * (sysvar(4) = 3) + 13 * (sysvar(4) = 4) + 10 * (sysvar(4) = 5) + 7 * (sysvar(4) = 6) + 6 * (sysvar(4) = 7) + 5 * (sysvar(4) = 8)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing
[state 153, Slide: 12, Vel: 16, Pixels: 84]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime) && sysvar(4) >= 9
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 12
trigger1 = abs(gethitvar(xvel)) = 16.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [12, 19]
; trigger2 = abs(gethitvar(xvel)) = [16.0, 17.0)
x = (4 * (sysvar(4) = 9) + 3 * (sysvar(4) = 10) + 2 * (sysvar(4) = 11)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

[state 153, Slide: 12, Vel: 17, Pixels: 90]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 12
trigger1 = abs(gethitvar(xvel)) = 17.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [12, 19]
; trigger2 = abs(gethitvar(xvel)) = [17.0, 18.0)
x = (9 * (sysvar(4) = 0) + 12 * (sysvar(4) = 1) + 17 * (sysvar(4) = 2) + 9 * (sysvar(4) = 3) + 8 * (sysvar(4) = 4) + 7 * (sysvar(4) = 5) + 7 * (sysvar(4) = 6) + 6 * (sysvar(4) = 7) + 5 * (sysvar(4) = 8)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing
[state 153, Slide: 12, Vel: 17, Pixels: 90]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime) && sysvar(4) >= 9
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 12
trigger1 = abs(gethitvar(xvel)) = 17.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [12, 19]
; trigger2 = abs(gethitvar(xvel)) = [17.0, 18.0)
x = (4 * (sysvar(4) = 9) + 4 * (sysvar(4) = 10) + 2 * (sysvar(4) = 11)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

[state 153, Slide: 12, Vel: 18, Pixels: 100]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 12
trigger1 = abs(gethitvar(xvel)) = 18.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [12, 19]
; trigger2 = abs(gethitvar(xvel)) >= 18.0
x = (10 * (sysvar(4) = 0) + 14 * (sysvar(4) = 1) + 18 * (sysvar(4) = 2) + 12 * (sysvar(4) = 3) + 9 * (sysvar(4) = 4) + 8 * (sysvar(4) = 5) + 7 * (sysvar(4) = 6) + 6 * (sysvar(4) = 7) + 5 * (sysvar(4) = 8)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing
[state 153, Slide: 12, Vel: 18, Pixels: 100]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime) && sysvar(4) >= 9
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 12
trigger1 = abs(gethitvar(xvel)) = 18.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [12, 19]
; trigger2 = abs(gethitvar(xvel)) >= 18.0
x = (5 * (sysvar(4) = 9) + 4 * (sysvar(4) = 10) + 2 * (sysvar(4) = 11)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

;<-------------------------<Slide 20>------------------------->

[state 153, Slide: 20, Vel: 24, Pixels: 144]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 20
trigger1 = abs(gethitvar(xvel)) = 24.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) >= 20
; trigger2 = abs(gethitvar(xvel)) > 0.0
x = (21 * (sysvar(4) = 0) + 17 * (sysvar(4) = 1) + 12 * (sysvar(4) = 2) + 11 * (sysvar(4) = 3) + 11 * (sysvar(4) = 4) + 10 * (sysvar(4) = 5) + 10 * (sysvar(4) = 6) + 9 * (sysvar(4) = 7) + 9 * (sysvar(4) = 8)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing
[state 153, Slide: 20, Vel: 24, Pixels: 144]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime) && sysvar(4) >= 9
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 20
trigger1 = abs(gethitvar(xvel)) = 24.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) >= 20
; trigger2 = abs(gethitvar(xvel)) > 0.0
x = (8 * (sysvar(4) = 9) + 7 * (sysvar(4) = 10) + 6 * (sysvar(4) = 11) + 5 * (sysvar(4) = 12) + 4 * (sysvar(4) = 13) + 2 * (sysvar(4) = 14) + 1 * (sysvar(4) = 15) + 1 * (sysvar(4) = 19)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

;<-------------------------<Universal Slide>------------------------->

[state 153, Stop Hit Velocity]
type = velset
triggerall = vel x
trigger1 = hitover || gethitvar(hittime) <= 0
trigger2 = sysvar(4) >= gethitvar(slidetime)
trigger3 = var(54) != [1, 2]
trigger3 = cond(sysfvar(1) = -1, vel x > 0, vel x < 0)
x = 0.0

;========================< SF3 Guard Functions >========================

[state 153, Control]
type = ctrlset
; trigger1 = sysvar(4) >= gethitvar(ctrltime)
trigger1 = hitover || gethitvar(hittime) <= 0
value = 1

[state 153, High -> Low]
type = statetypeset
trigger1 = !ailevel && statetype = S && command = "holddown"
trigger2 = ailevel && statetype = S && p2movetype = A && p2statetype = C && random < 900 * (ailevel ** 2.0 / 64.0)
statetype = C

[state 153, Low -> High]
type = statetypeset
trigger1 = !ailevel && statetype = C && command != "holddown"
trigger2 = ailevel && statetype = C && p2movetype = A && p2statetype != C && random < 450 * (ailevel ** 2.0 / 64.0)
statetype = S

[state 153, End State]
type = changestate
trigger1 = hitover || gethitvar(hittime) <= 0
value = 131
ctrl = 1

[state 153, End State]
type = changestate
trigger1 = !ailevel && command != "holdback"
value = 161 + 2 * (command = "holddown")

[state 153, End State]
type = changestate
triggerall = ailevel >= 8 && p2movetype = A && inguarddist
trigger1 = random < 64 * (ailevel ** 2.0 / 64.0)
value = 161 + 2 * (p2statetype = C)

;=========================================================================
; Air Guard Hit (shaking)
;=========================================================================
[Statedef 154]
type = A
movetype = H
physics = N
velset = 0, 0

[state 154, Hittime]
type = varset
trigger1 = !time
sysvar(4) = 0

[state 154, Set Velocities]
type = null
trigger1 = !time
trigger1 = fvar(12) := 0.0 * fvar(16) || fvar(13) := const(movement.yaccel) * fvar(17)

[state 154, Change Animation]
type = changeanim
trigger1 = 1
value = 152

[state 154, End State]
type = changestate
trigger1 = !hitshakeover && !ailevel
trigger1 = command != "holdback"
value = 164

[state 154, End State]
type = changestate
triggerall = hitshakeover
trigger1 = !ailevel && command != "holdback"
value = 165

[state 154, End State]
type = changestate
trigger1 = hitshakeover
value = 155

; Urien - Unique Metal Sound
[state 154, Sound]
type = playsnd
trigger1 = !time
trigger1 = var(54) != [1, 2]
value = 120, 20
volumescale = 100
channel = 6

[state 154, FFB]
type = forcefeedback
trigger1 = !time
waveform = square
time = 4

;=========================================================================
; Air Guard Hit 2 (knocked away)
;=========================================================================
[Statedef 155]
type = A
movetype = H
physics = N

[state 155, Hittime]
type = varadd
trigger1 = cond(prevstateno = 165, time >= 0, time)
sysvar(4) = 1

[state 155, Set Velocities]
type = null
trigger1 = !time
trigger1 = fvar(12) := 0.0 * fvar(16) || fvar(13) := const(movement.yaccel) * fvar(17)

[state 155, Change Animation]
type = changeanim
trigger1 = !time
trigger1 = prevstateno = 154 || prevstateno = 164
value = 152

[state 155, Set Hit Velocity]
type = velset
trigger1 = !time
trigger1 = prevstateno = 154 || prevstateno = 164
x = gethitvar(xvel) * facing
y = gethitvar(yvel)

[state 155, Increment Velocity]
type = veladd
trigger1 = 1
x = fvar(12)
y = fvar(13)

[state 155, Control]
type = ctrlset
; trigger1 = sysvar(4) >= gethitvar(ctrltime)
trigger1 = hitover || gethitvar(hittime) <= 0
value = 1

[state 155, Set Velocity]
type = velset
trigger1 = pos y + vel y > 0
y = 0.0

[state 155, Set Position]
type = posset
trigger1 = !vel y
y = 0

[state 155, End State]
type = changestate
trigger1 = !ailevel && command != "holdback"
value = 165

[state 155, End State]
type = changestate
triggerall = ailevel >= 8 && p2movetype = A && inguarddist
trigger1 = random < 64 * (ailevel ** 2.0 / 64.0)
value = 165

[state 155, End State]
type = changestate
trigger1 = !vel y
trigger1 = command = "holdback"
trigger1 = inguarddist
value = cond(command = "holddown", 131, 130)

[state 155, End State]
type = changestate
trigger1 = !vel y || pos y + vel y > 0
value = 52

;=========================================================================
; Stand Guard Shake (Release Button)
;=========================================================================
[Statedef 160]
type = S
movetype = H
physics = N
velset = 0, 0

[state 160, Standing Guard Type]
type = varset
trigger1 = !time
trigger1 = (prevstateno = [150, 151]) || (prevstateno = [160, 161])
sysvar(3) = 5 * (statetype = S && p2dist y < -24)

[state 160, Hittime]
type = varset
trigger1 = !time
sysvar(4) = 0

[state 160, Change Animation]
type = changeanim
trigger1 = 1
value = 150 + sysvar(3)
elem = 1 + (time >= 2) + hitshakeover ; unique
ignorehitpause = 1 ; unique

[state 160, End State]
type = changestate
trigger1 = !hitshakeover && !ailevel
trigger1 = command = "holdback"
value = 150

[state 160, End State]
type = changestate
trigger1 = hitshakeover && !ailevel
trigger1 = command != "holdback"
value = 161 + 2 * (command = "holddown")

[state 160, End State]
type = changestate
trigger1 = hitshakeover
value = 151 + 2 * ((!ailevel && command = "holddown") || (ailevel && p2movetype = A && p2statetype = C))

[state 160, High -> Low]
type = statetypeset
trigger1 = !ailevel && statetype = S && command = "holddown"
trigger2 = ailevel && statetype = S && p2movetype = A && p2statetype = C && random < 900 * (ailevel ** 2.0 / 64.0)
statetype = C
physics = C

[state 160, Low -> High]
type = statetypeset
trigger1 = !ailevel && statetype = C && command != "holddown"
trigger2 = ailevel && statetype = C && p2movetype = A && p2statetype != C && random < 450 * (ailevel ** 2.0 / 64.0)
statetype = S
physics = S

[state 160, FFB]
type = forcefeedback
trigger1 = !time
waveform = square
time = 3

;=========================================================================
; Stand Guard (Release Button)
;=========================================================================
[Statedef 161]
type = S
movetype = H
physics = N

[state 161, Standing Guard Type]
type = varset
trigger1 = 0
sysvar(3) = 5 * (statetype = S && p2dist y < -24)

[state 161, Hittime]
type = varadd
trigger1 = time ; cond(prevstateno = 151 || prevstateno = 153, time >= 0, time)
sysvar(4) = 1

[state 161, Set Hit Direction]
type = varset
trigger1 = 1
sysfvar(1) = cond(gethitvar(xvel) * facing < 0, -1, cond(gethitvar(xvel) * facing > 0, 1, 0))

[state 161, Change Animation]
type = changeanim
trigger1 = !time
trigger1 = prevstateno = 150 || prevstateno = 152 || prevstateno = 160 || prevstateno = 162
value = 150 + sysvar(3)

[state 161, Set Hit Velocity]
type = null ; velset
trigger1 = var(54) = [1, 2]
trigger1 = sysvar(4) < gethitvar(slidetime)
; trigger1 = prevstateno = 150 || prevstateno = 152 || prevstateno = 160 || prevstateno = 162
x = abs(ceil((gethitvar(xvel) * facing) * cos((sysvar(4) - (gethitvar(slidetime) / 2.0)) * pi / gethitvar(slidetime)))) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

[state 161, Set Hit Velocity]
type = velset
trigger1 = var(54) != [1, 2]
trigger1 = !time
trigger1 = prevstateno = 150 || prevstateno = 152 || prevstateno = 160 || prevstateno = 162
x = gethitvar(xvel) * facing

[state 161, Multiply Hit Velocity]
type =  velmul
trigger1 = var(54) != [1, 2]
trigger1 = vel x
x = const(movement.stand.friction)

;========================< SF3 Hit Movement >========================

;<-------------------------<Slide 7>------------------------->

[state 161, Slide: 7, Vel: 6, Pixels: 28]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 7
trigger1 = abs(gethitvar(xvel)) = 6.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [1, 8]
; trigger2 = abs(gethitvar(xvel)) = (0.0, 8.0)
x = (3 * (sysvar(4) = 0) + 4 * (sysvar(4) = 1) + 6 * (sysvar(4) = 2) + 7 * (sysvar(4) = 3) + 4 * (sysvar(4) = 4) + 3 * (sysvar(4) = 5) + 1 * (sysvar(4) = 6)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

[state 161, Slide: 7, Vel: 8, Pixels: 32]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 7
trigger1 = abs(gethitvar(xvel)) = 8.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [1, 8]
; trigger2 = abs(gethitvar(xvel)) = [8.0, 10.0)
x = (3 * (sysvar(4) = 0) + 5 * (sysvar(4) = 1) + 6 * (sysvar(4) = 2) + 7 * (sysvar(4) = 3) + 6 * (sysvar(4) = 4) + 4 * (sysvar(4) = 5) + 1 * (sysvar(4) = 6)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

[state 161, Slide: 7, Vel: 10, Pixels: 40]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 7
trigger1 = abs(gethitvar(xvel)) = 10.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [1, 8]
; trigger2 = abs(gethitvar(xvel)) >= 10.0
x = (5 * (sysvar(4) = 0) + 7 * (sysvar(4) = 1) + 11 * (sysvar(4) = 2) + 6 * (sysvar(4) = 3) + 5 * (sysvar(4) = 4) + 4 * (sysvar(4) = 5) + 2 * (sysvar(4) = 6)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

;<-------------------------<Slide 9>------------------------->

[state 161, Slide: 9, Vel: 8, Pixels: 38]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 9
trigger1 = abs(gethitvar(xvel)) = 8.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = 9
; trigger2 = abs(gethitvar(xvel)) = (0.0, 10.0)
x = (3 * (sysvar(4) = 0) + 3 * (sysvar(4) = 1) + 4 * (sysvar(4) = 2) + 6 * (sysvar(4) = 3) + 8 * (sysvar(4) = 4) + 7 * (sysvar(4) = 5) + 4 * (sysvar(4) = 6) + 2 * (sysvar(4) = 7) + 1 * (sysvar(4) = 8)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

[state 161, Slide: 9, Vel: 10, Pixels: 48]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 9
trigger1 = abs(gethitvar(xvel)) = 10.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = 9
; trigger2 = abs(gethitvar(xvel)) = [10.0, 12.0)
x = (4 * (sysvar(4) = 0) + 7 * (sysvar(4) = 1) + 8 * (sysvar(4) = 2) + 9 * (sysvar(4) = 3) + 8 * (sysvar(4) = 4) + 6 * (sysvar(4) = 5) + 3 * (sysvar(4) = 6) + 2 * (sysvar(4) = 7) + 1 * (sysvar(4) = 8)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

[state 161, Slide: 9, Vel: 12, Pixels: 60]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 9
trigger1 = abs(gethitvar(xvel)) = 12.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = 9
; trigger2 = abs(gethitvar(xvel)) = [12.0, 13.0)
x = (4 * (sysvar(4) = 0) + 7 * (sysvar(4) = 1) + 9 * (sysvar(4) = 2) + 10 * (sysvar(4) = 3) + 11 * (sysvar(4) = 4) + 8 * (sysvar(4) = 5) + 6 * (sysvar(4) = 6) + 4 * (sysvar(4) = 7) + 1 * (sysvar(4) = 8)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

[state 161, Slide: 9, Vel: 13, Pixels: 66]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 9
trigger1 = abs(gethitvar(xvel)) = 13.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = 9
; trigger2 = abs(gethitvar(xvel)) = [13.0, 14.0)
x = (4 * (sysvar(4) = 0) + 7 * (sysvar(4) = 1) + 9 * (sysvar(4) = 2) + 10 * (sysvar(4) = 3) + 12 * (sysvar(4) = 4) + 9 * (sysvar(4) = 5) + 6 * (sysvar(4) = 6) + 5 * (sysvar(4) = 7) + 4 * (sysvar(4) = 8)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

[state 161, Slide: 9, Vel: 14, Pixels: 75]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 9
trigger1 = abs(gethitvar(xvel)) = 14.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = 9
; trigger2 = abs(gethitvar(xvel)) >= 14.0 
x = (5 * (sysvar(4) = 0) + 8 * (sysvar(4) = 1) + 10 * (sysvar(4) = 2) + 11 * (sysvar(4) = 3) + 13 * (sysvar(4) = 4) + 10 * (sysvar(4) = 5) + 7 * (sysvar(4) = 6) + 6 * (sysvar(4) = 7) + 5 * (sysvar(4) = 8)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

;<-------------------------<Slide 10>------------------------->

[state 161, Slide: 10, Vel: 10, Pixels: 54]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 10
trigger1 = abs(gethitvar(xvel)) = 10.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [10, 11]
; trigger2 = abs(gethitvar(xvel)) = [10.0, 12.0)
x = (14 * (sysvar(4) = 0) + 9 * (sysvar(4) = 1) + 7 * (sysvar(4) = 2) + 6 * (sysvar(4) = 3) + 5 * (sysvar(4) = 4) + 4 * (sysvar(4) = 5) + 3 * (sysvar(4) = 6) + 3 * (sysvar(4) = 7) + 2 * (sysvar(4) = 8)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing
[state 161, Slide: 10, Vel: 10, Pixels: 54]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime) && sysvar(4) >= 9
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 10
trigger1 = abs(gethitvar(xvel)) = 10.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [10, 11]
; trigger2 = abs(gethitvar(xvel)) = [10.0, 12.0)
x = (1 * (sysvar(4) = 9)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

;<-------------------------<Slide 12>------------------------->

[state 161, Slide: 12, Vel: 14, Pixels: 72]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 12
trigger1 = abs(gethitvar(xvel)) = 14.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [12, 19]
; trigger2 = abs(gethitvar(xvel)) = (0.0, 16.0)
x = (4 * (sysvar(4) = 0) + 7 * (sysvar(4) = 1) + 9 * (sysvar(4) = 2) + 10 * (sysvar(4) = 3) + 12 * (sysvar(4) = 4) + 9 * (sysvar(4) = 5) + 6 * (sysvar(4) = 6) + 5 * (sysvar(4) = 7) + 4 * (sysvar(4) = 8)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing
[state 161, Slide: 12, Vel: 14, Pixels: 72]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime) && sysvar(4) >= 9
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 12
trigger1 = abs(gethitvar(xvel)) = 14.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [12, 19]
; trigger2 = abs(gethitvar(xvel)) = (0.0, 16.0)
x = (3 * (sysvar(4) = 9) + 2 * (sysvar(4) = 10) + 1 * (sysvar(4) = 11)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

[state 161, Slide: 12, Vel: 16, Pixels: 84]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 12
trigger1 = abs(gethitvar(xvel)) = 16.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [12, 19]
; trigger2 = abs(gethitvar(xvel)) = [16.0, 17.0)
x = (5 * (sysvar(4) = 0) + 8 * (sysvar(4) = 1) + 10 * (sysvar(4) = 2) + 11 * (sysvar(4) = 3) + 13 * (sysvar(4) = 4) + 10 * (sysvar(4) = 5) + 7 * (sysvar(4) = 6) + 6 * (sysvar(4) = 7) + 5 * (sysvar(4) = 8)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing
[state 161, Slide: 12, Vel: 16, Pixels: 84]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime) && sysvar(4) >= 9
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 12
trigger1 = abs(gethitvar(xvel)) = 16.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [12, 19]
; trigger2 = abs(gethitvar(xvel)) = [16.0, 17.0)
x = (4 * (sysvar(4) = 9) + 3 * (sysvar(4) = 10) + 2 * (sysvar(4) = 11)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

[state 161, Slide: 12, Vel: 17, Pixels: 90]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 12
trigger1 = abs(gethitvar(xvel)) = 17.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [12, 19]
; trigger2 = abs(gethitvar(xvel)) = [17.0, 18.0)
x = (9 * (sysvar(4) = 0) + 12 * (sysvar(4) = 1) + 17 * (sysvar(4) = 2) + 9 * (sysvar(4) = 3) + 8 * (sysvar(4) = 4) + 7 * (sysvar(4) = 5) + 7 * (sysvar(4) = 6) + 6 * (sysvar(4) = 7) + 5 * (sysvar(4) = 8)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing
[state 161, Slide: 12, Vel: 17, Pixels: 90]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime) && sysvar(4) >= 9
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 12
trigger1 = abs(gethitvar(xvel)) = 17.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [12, 19]
; trigger2 = abs(gethitvar(xvel)) = [17.0, 18.0)
x = (4 * (sysvar(4) = 9) + 4 * (sysvar(4) = 10) + 2 * (sysvar(4) = 11)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

[state 161, Slide: 12, Vel: 18, Pixels: 100]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 12
trigger1 = abs(gethitvar(xvel)) = 18.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [12, 19]
; trigger2 = abs(gethitvar(xvel)) >= 18.0
x = (10 * (sysvar(4) = 0) + 14 * (sysvar(4) = 1) + 18 * (sysvar(4) = 2) + 12 * (sysvar(4) = 3) + 9 * (sysvar(4) = 4) + 8 * (sysvar(4) = 5) + 7 * (sysvar(4) = 6) + 6 * (sysvar(4) = 7) + 5 * (sysvar(4) = 8)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing
[state 161, Slide: 12, Vel: 18, Pixels: 100]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime) && sysvar(4) >= 9
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 12
trigger1 = abs(gethitvar(xvel)) = 18.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [12, 19]
; trigger2 = abs(gethitvar(xvel)) >= 18.0
x = (5 * (sysvar(4) = 9) + 4 * (sysvar(4) = 10) + 2 * (sysvar(4) = 11)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

;<-------------------------<Slide 20>------------------------->

[state 161, Slide: 20, Vel: 24, Pixels: 144]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 20
trigger1 = abs(gethitvar(xvel)) = 24.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) >= 20
; trigger2 = abs(gethitvar(xvel)) > 0.0
x = (21 * (sysvar(4) = 0) + 17 * (sysvar(4) = 1) + 12 * (sysvar(4) = 2) + 11 * (sysvar(4) = 3) + 11 * (sysvar(4) = 4) + 10 * (sysvar(4) = 5) + 10 * (sysvar(4) = 6) + 9 * (sysvar(4) = 7) + 9 * (sysvar(4) = 8)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing
[state 161, Slide: 20, Vel: 24, Pixels: 144]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime) && sysvar(4) >= 9
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 20
trigger1 = abs(gethitvar(xvel)) = 24.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) >= 20
; trigger2 = abs(gethitvar(xvel)) > 0.0
x = (8 * (sysvar(4) = 9) + 7 * (sysvar(4) = 10) + 6 * (sysvar(4) = 11) + 5 * (sysvar(4) = 12) + 4 * (sysvar(4) = 13) + 2 * (sysvar(4) = 14) + 1 * (sysvar(4) = 15) + 1 * (sysvar(4) = 19)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

;<-------------------------<Universal Slide>------------------------->

[state 161, Stop Hit Velocity]
type = velset
triggerall = vel x
trigger1 = hitover || gethitvar(hittime) <= 0
trigger2 = sysvar(4) >= gethitvar(slidetime)
trigger3 = var(54) != [1, 2]
trigger3 = cond(sysfvar(1) = -1, vel x > 0, vel x < 0)
x = 0.0

;========================< SF3 Guard Functions >========================

[state 161, Control]
type = ctrlset
; trigger1 = sysvar(4) >= gethitvar(ctrltime)
trigger1 = hitover || gethitvar(hittime) <= 0
value = 1

[state 161, High -> Low]
type = statetypeset
trigger1 = !ailevel && statetype = S && command = "holddown"
trigger2 = ailevel && statetype = S && p2movetype = A && p2statetype = C && random < 900 * (ailevel ** 2.0 / 64.0)
statetype = C

[state 161, Low -> High]
type = statetypeset
trigger1 = !ailevel && statetype = C && command != "holddown"
trigger2 = ailevel && statetype = C && p2movetype = A && p2statetype != C && random < 450 * (ailevel ** 2.0 / 64.0)
statetype = S

[state 161, End State]
type = changestate
trigger1 = hitover || gethitvar(hittime) <= 0
value = 140
ctrl = 1

[state 161, End State]
type = changestate
trigger1 = !ailevel && command = "holdback"
value = 151 + 2 * (command = "holddown")

[state 161, End State]
type = changestate
trigger1 = ailevel && p2movetype = A && inguarddist
trigger1 = time >= 2 && cond(numhelper(915), !helper(915),var(1), 1)
value = 151 + 2 * (statetype = C)

;=========================================================================
; Crouch Guard Shake (Release Button)
;=========================================================================
[Statedef 162]
type = C
movetype = H
physics = N
velset = 0, 0

[state 162, Hittime]
type = varset
trigger1 = !time
sysvar(4) = 0

[state 162, Change Animation]
type = changeanim
trigger1 = 1
value = 151
elem = 1 + (time >= 2) + hitshakeover ; unique
ignorehitpause = 1 ; unique

[state 162, End State]
type = changestate
trigger1 = !hitshakeover && !ailevel
trigger1 = command = "holdback"
value = 152

[state 162, End State]
type = changestate
trigger1 = hitshakeover && !ailevel
trigger1 = command != "holdback"
value = 161 + 2 * (command = "holddown")

[state 162, End State]
type = changestate
trigger1 = hitshakeover
value = 151 + 2 * ((!ailevel && command = "holddown") || (ailevel && p2movetype = A && p2statetype = C))

[state 162, High -> Low]
type = statetypeset
trigger1 = !ailevel && statetype = S && command = "holddown"
trigger2 = ailevel && statetype = S && p2movetype = A && p2statetype = C && random < 900 * (ailevel ** 2.0 / 64.0)
statetype = C
physics = C

[state 162, Low -> High]
type = statetypeset
trigger1 = !ailevel && statetype = C && command != "holddown"
trigger2 = ailevel && statetype = C && p2movetype = A && p2statetype != C && random < 450 * (ailevel ** 2.0 / 64.0)
statetype = S
physics = S

[state 162, FFB]
type = forcefeedback
trigger1 = !time
waveform = square
time = 4

;=========================================================================
; Crouch Guard (Release Button)
;=========================================================================
[Statedef 163]
type = C
movetype = H
physics = N

[state 163, Hittime]
type = varadd
trigger1 = time ; cond(prevstateno = 151 || prevstateno = 153, time >= 0, time)
sysvar(4) = 1

[state 163, Set Hit Direction]
type = varset
trigger1 = 1
sysfvar(1) = cond(gethitvar(xvel) * facing < 0, -1, cond(gethitvar(xvel) * facing > 0, 1, 0))

[state 163, Change Animation]
type = changeanim
trigger1 = !time
trigger1 = prevstateno = 150 || prevstateno = 152 || prevstateno = 160 || prevstateno = 162
value = 151

[state 163, Set Hit Velocity]
type = null ; velset
trigger1 = var(54) = [1, 2]
trigger1 = sysvar(4) < gethitvar(slidetime)
; trigger1 = prevstateno = 150 || prevstateno = 152 || prevstateno = 160 || prevstateno = 162
x = abs(ceil((gethitvar(xvel) * facing) * cos((sysvar(4) - (gethitvar(slidetime) / 2.0)) * pi / gethitvar(slidetime)))) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

[state 163, Set Hit Velocity]
type = velset
trigger1 = var(54) != [1, 2]
trigger1 = !time
trigger1 = prevstateno = 150 || prevstateno = 152 || prevstateno = 160 || prevstateno = 162
x = gethitvar(xvel) * facing

[state 163, Multiply Hit Velocity]
type =  velmul
trigger1 = var(54) != [1, 2]
trigger1 = vel x
x = const(movement.stand.friction)

;========================< SF3 Hit Movement >========================

;<-------------------------<Slide 7>------------------------->

[state 163, Slide: 7, Vel: 6, Pixels: 28]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 7
trigger1 = abs(gethitvar(xvel)) = 6.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [1, 8]
; trigger2 = abs(gethitvar(xvel)) = (0.0, 8.0)
x = (3 * (sysvar(4) = 0) + 4 * (sysvar(4) = 1) + 6 * (sysvar(4) = 2) + 7 * (sysvar(4) = 3) + 4 * (sysvar(4) = 4) + 3 * (sysvar(4) = 5) + 1 * (sysvar(4) = 6)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

[state 163, Slide: 7, Vel: 8, Pixels: 32]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 7
trigger1 = abs(gethitvar(xvel)) = 8.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [1, 8]
; trigger2 = abs(gethitvar(xvel)) = [8.0, 10.0)
x = (3 * (sysvar(4) = 0) + 5 * (sysvar(4) = 1) + 6 * (sysvar(4) = 2) + 7 * (sysvar(4) = 3) + 6 * (sysvar(4) = 4) + 4 * (sysvar(4) = 5) + 1 * (sysvar(4) = 6)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

[state 163, Slide: 7, Vel: 10, Pixels: 40]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 7
trigger1 = abs(gethitvar(xvel)) = 10.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [1, 8]
; trigger2 = abs(gethitvar(xvel)) >= 10.0
x = (5 * (sysvar(4) = 0) + 7 * (sysvar(4) = 1) + 11 * (sysvar(4) = 2) + 6 * (sysvar(4) = 3) + 5 * (sysvar(4) = 4) + 4 * (sysvar(4) = 5) + 2 * (sysvar(4) = 6)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

;<-------------------------<Slide 9>------------------------->

[state 163, Slide: 9, Vel: 8, Pixels: 38]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 9
trigger1 = abs(gethitvar(xvel)) = 8.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = 9
; trigger2 = abs(gethitvar(xvel)) = (0.0, 10.0)
x = (3 * (sysvar(4) = 0) + 3 * (sysvar(4) = 1) + 4 * (sysvar(4) = 2) + 6 * (sysvar(4) = 3) + 8 * (sysvar(4) = 4) + 7 * (sysvar(4) = 5) + 4 * (sysvar(4) = 6) + 2 * (sysvar(4) = 7) + 1 * (sysvar(4) = 8)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

[state 163, Slide: 9, Vel: 10, Pixels: 48]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 9
trigger1 = abs(gethitvar(xvel)) = 10.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = 9
; trigger2 = abs(gethitvar(xvel)) = [10.0, 12.0)
x = (4 * (sysvar(4) = 0) + 7 * (sysvar(4) = 1) + 8 * (sysvar(4) = 2) + 9 * (sysvar(4) = 3) + 8 * (sysvar(4) = 4) + 6 * (sysvar(4) = 5) + 3 * (sysvar(4) = 6) + 2 * (sysvar(4) = 7) + 1 * (sysvar(4) = 8)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

[state 163, Slide: 9, Vel: 12, Pixels: 60]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 9
trigger1 = abs(gethitvar(xvel)) = 12.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = 9
; trigger2 = abs(gethitvar(xvel)) = [12.0, 13.0)
x = (4 * (sysvar(4) = 0) + 7 * (sysvar(4) = 1) + 9 * (sysvar(4) = 2) + 10 * (sysvar(4) = 3) + 11 * (sysvar(4) = 4) + 8 * (sysvar(4) = 5) + 6 * (sysvar(4) = 6) + 4 * (sysvar(4) = 7) + 1 * (sysvar(4) = 8)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

[state 163, Slide: 9, Vel: 13, Pixels: 66]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 9
trigger1 = abs(gethitvar(xvel)) = 13.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = 9
; trigger2 = abs(gethitvar(xvel)) = [13.0, 14.0)
x = (4 * (sysvar(4) = 0) + 7 * (sysvar(4) = 1) + 9 * (sysvar(4) = 2) + 10 * (sysvar(4) = 3) + 12 * (sysvar(4) = 4) + 9 * (sysvar(4) = 5) + 6 * (sysvar(4) = 6) + 5 * (sysvar(4) = 7) + 4 * (sysvar(4) = 8)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

[state 163, Slide: 9, Vel: 14, Pixels: 75]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 9
trigger1 = abs(gethitvar(xvel)) = 14.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = 9
; trigger2 = abs(gethitvar(xvel)) >= 14.0 
x = (5 * (sysvar(4) = 0) + 8 * (sysvar(4) = 1) + 10 * (sysvar(4) = 2) + 11 * (sysvar(4) = 3) + 13 * (sysvar(4) = 4) + 10 * (sysvar(4) = 5) + 7 * (sysvar(4) = 6) + 6 * (sysvar(4) = 7) + 5 * (sysvar(4) = 8)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

;<-------------------------<Slide 10>------------------------->

[state 163, Slide: 10, Vel: 10, Pixels: 54]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 10
trigger1 = abs(gethitvar(xvel)) = 10.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [10, 11]
; trigger2 = abs(gethitvar(xvel)) = [10.0, 12.0)
x = (14 * (sysvar(4) = 0) + 9 * (sysvar(4) = 1) + 7 * (sysvar(4) = 2) + 6 * (sysvar(4) = 3) + 5 * (sysvar(4) = 4) + 4 * (sysvar(4) = 5) + 3 * (sysvar(4) = 6) + 3 * (sysvar(4) = 7) + 2 * (sysvar(4) = 8)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing
[state 163, Slide: 10, Vel: 10, Pixels: 54]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime) && sysvar(4) >= 9
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 10
trigger1 = abs(gethitvar(xvel)) = 10.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [10, 11]
; trigger2 = abs(gethitvar(xvel)) = [10.0, 12.0)
x = (1 * (sysvar(4) = 9)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

;<-------------------------<Slide 12>------------------------->

[state 163, Slide: 12, Vel: 14, Pixels: 72]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 12
trigger1 = abs(gethitvar(xvel)) = 14.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [12, 19]
; trigger2 = abs(gethitvar(xvel)) = (0.0, 16.0)
x = (4 * (sysvar(4) = 0) + 7 * (sysvar(4) = 1) + 9 * (sysvar(4) = 2) + 10 * (sysvar(4) = 3) + 12 * (sysvar(4) = 4) + 9 * (sysvar(4) = 5) + 6 * (sysvar(4) = 6) + 5 * (sysvar(4) = 7) + 4 * (sysvar(4) = 8)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing
[state 163, Slide: 12, Vel: 14, Pixels: 72]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime) && sysvar(4) >= 9
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 12
trigger1 = abs(gethitvar(xvel)) = 14.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [12, 19]
; trigger2 = abs(gethitvar(xvel)) = (0.0, 16.0)
x = (3 * (sysvar(4) = 9) + 2 * (sysvar(4) = 10) + 1 * (sysvar(4) = 11)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

[state 163, Slide: 12, Vel: 16, Pixels: 84]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 12
trigger1 = abs(gethitvar(xvel)) = 16.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [12, 19]
; trigger2 = abs(gethitvar(xvel)) = [16.0, 17.0)
x = (5 * (sysvar(4) = 0) + 8 * (sysvar(4) = 1) + 10 * (sysvar(4) = 2) + 11 * (sysvar(4) = 3) + 13 * (sysvar(4) = 4) + 10 * (sysvar(4) = 5) + 7 * (sysvar(4) = 6) + 6 * (sysvar(4) = 7) + 5 * (sysvar(4) = 8)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing
[state 163, Slide: 12, Vel: 16, Pixels: 84]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime) && sysvar(4) >= 9
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 12
trigger1 = abs(gethitvar(xvel)) = 16.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [12, 19]
; trigger2 = abs(gethitvar(xvel)) = [16.0, 17.0)
x = (4 * (sysvar(4) = 9) + 3 * (sysvar(4) = 10) + 2 * (sysvar(4) = 11)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

[state 163, Slide: 12, Vel: 17, Pixels: 90]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 12
trigger1 = abs(gethitvar(xvel)) = 17.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [12, 19]
; trigger2 = abs(gethitvar(xvel)) = [17.0, 18.0)
x = (9 * (sysvar(4) = 0) + 12 * (sysvar(4) = 1) + 17 * (sysvar(4) = 2) + 9 * (sysvar(4) = 3) + 8 * (sysvar(4) = 4) + 7 * (sysvar(4) = 5) + 7 * (sysvar(4) = 6) + 6 * (sysvar(4) = 7) + 5 * (sysvar(4) = 8)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing
[state 163, Slide: 12, Vel: 17, Pixels: 90]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime) && sysvar(4) >= 9
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 12
trigger1 = abs(gethitvar(xvel)) = 17.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [12, 19]
; trigger2 = abs(gethitvar(xvel)) = [17.0, 18.0)
x = (4 * (sysvar(4) = 9) + 4 * (sysvar(4) = 10) + 2 * (sysvar(4) = 11)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

[state 163, Slide: 12, Vel: 18, Pixels: 100]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 12
trigger1 = abs(gethitvar(xvel)) = 18.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [12, 19]
; trigger2 = abs(gethitvar(xvel)) >= 18.0
x = (10 * (sysvar(4) = 0) + 14 * (sysvar(4) = 1) + 18 * (sysvar(4) = 2) + 12 * (sysvar(4) = 3) + 9 * (sysvar(4) = 4) + 8 * (sysvar(4) = 5) + 7 * (sysvar(4) = 6) + 6 * (sysvar(4) = 7) + 5 * (sysvar(4) = 8)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing
[state 163, Slide: 12, Vel: 18, Pixels: 100]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime) && sysvar(4) >= 9
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 12
trigger1 = abs(gethitvar(xvel)) = 18.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [12, 19]
; trigger2 = abs(gethitvar(xvel)) >= 18.0
x = (5 * (sysvar(4) = 9) + 4 * (sysvar(4) = 10) + 2 * (sysvar(4) = 11)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

;<-------------------------<Slide 20>------------------------->

[state 163, Slide: 20, Vel: 24, Pixels: 144]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 20
trigger1 = abs(gethitvar(xvel)) = 24.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) >= 20
; trigger2 = abs(gethitvar(xvel)) > 0.0
x = (21 * (sysvar(4) = 0) + 17 * (sysvar(4) = 1) + 12 * (sysvar(4) = 2) + 11 * (sysvar(4) = 3) + 11 * (sysvar(4) = 4) + 10 * (sysvar(4) = 5) + 10 * (sysvar(4) = 6) + 9 * (sysvar(4) = 7) + 9 * (sysvar(4) = 8)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing
[state 163, Slide: 20, Vel: 24, Pixels: 144]
type = velset
triggerall = sysvar(4) < gethitvar(slidetime) && sysvar(4) >= 9
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 20
trigger1 = abs(gethitvar(xvel)) = 24.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) >= 20
; trigger2 = abs(gethitvar(xvel)) > 0.0
x = (8 * (sysvar(4) = 9) + 7 * (sysvar(4) = 10) + 6 * (sysvar(4) = 11) + 5 * (sysvar(4) = 12) + 4 * (sysvar(4) = 13) + 2 * (sysvar(4) = 14) + 1 * (sysvar(4) = 15) + 1 * (sysvar(4) = 19)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

;<-------------------------<Universal Slide>------------------------->

[state 163, Stop Hit Velocity]
type = velset
triggerall = vel x
trigger1 = hitover || gethitvar(hittime) <= 0
trigger2 = sysvar(4) >= gethitvar(slidetime)
trigger3 = var(54) != [1, 2]
trigger3 = cond(sysfvar(1) = -1, vel x > 0, vel x < 0)
x = 0.0

;========================< SF3 Guard Functions >========================

[state 163, Control]
type = ctrlset
; trigger1 = sysvar(4) >= gethitvar(ctrltime)
trigger1 = hitover || gethitvar(hittime) <= 0
value = 1

[state 163,High -> Low]
type = statetypeset
trigger1 = !ailevel && statetype = S && command = "holddown"
trigger2 = ailevel && statetype = S && p2movetype = A && p2statetype = C && random < 900 * (ailevel ** 2.0 / 64.0)
statetype = C

[state 163,Low -> High]
type = statetypeset
trigger1 = !ailevel && statetype = C && command != "holddown"
trigger2 = ailevel && statetype = C && p2movetype = A && p2statetype != C && random < 450 * (ailevel ** 2.0 / 64.0)
statetype = S

[state 163, End State]
type = changestate
trigger1 = hitover || gethitvar(hittime) <= 0
value = 140
ctrl = 1

[state 163, End State]
type = changestate
trigger1 = !ailevel && command = "holdback"
value = 151 + 2 * (command = "holddown")

[state 163, End State]
type = changestate
trigger1 = ailevel && p2movetype = A && inguarddist
trigger1 = time >= 2 && cond(numhelper(915), !helper(915),var(1), 1)
value = 151 + 2 * (statetype = C)

;=========================================================================
; Air Guard Shake (Release Button)
;=========================================================================
[Statedef 164]
type = A
movetype = H
physics = N
velset = 0, 0

[state 164, Hittime]
type = varset
trigger1 = !time
sysvar(4) = 0

[state 164, Set Velocities]
type = null
trigger1 = !time
trigger1 = fvar(12) := 0.0 * fvar(16) || fvar(13) := const(movement.yaccel) * fvar(17)

[state 164, Change Animation]
type = changeanim
trigger1 = 1
value = 152

[state 164, End State]
type = changestate
trigger1 = !hitshakeover && !ailevel
trigger1 = command = "holdback"
value = 154

[state 164, End State]
type = changestate
triggerall = hitshakeover
trigger1 = !ailevel && command != "holdback"
value = 165

[state 164, End State]
type = changestate
trigger1 = hitshakeover
value = 155

[state 164, FFB]
type = forcefeedback
trigger1 = !time
waveform = square
time = 4

;=========================================================================
; Air Guard Hit (Release Button)
;=========================================================================
[Statedef 165]
type = A
movetype = H
physics = N

[state 165, Hittime]
type = varadd
trigger1 = cond(prevstateno = 155, time >= 0, time)
sysvar(4) = 1

[state 165, Set Velocities]
type = null
trigger1 = !time
trigger1 = fvar(12) := 0.0 * fvar(16) || fvar(13) := const(movement.yaccel) * fvar(17)

[state 165, Change Animation]
type = changeanim
trigger1 = !time
trigger1 = prevstateno = 154 || prevstateno = 164
value = 152

[state 165, Set Hit Velocity]
type = velset
trigger1 = !time
trigger1 = prevstateno = 154 || prevstateno = 164
x = gethitvar(xvel) * facing
y = gethitvar(yvel)

[state 165, Increment Velocity]
type = veladd
trigger1 = 1
x = fvar(12)
y = fvar(13)

[state 165, Control]
type = ctrlset
; trigger1 = sysvar(4) >= gethitvar(ctrltime)
trigger1 = hitover || gethitvar(hittime) <= 0
value = 1

[state 165, Set Velocity]
type = velset
trigger1 = pos y + vel y > 0
y = 0.0

[state 165, Set Position]
type = posset
trigger1 = !vel y
y = 0

[state 165, End State]
type = changestate
trigger1 = !ailevel && command = "holdback"
value = 155

[state 165, End State]
type = changestate
trigger1 = ailevel && p2movetype = A && inguarddist
trigger1 = time >= 2 && cond(numhelper(915), !helper(915),var(1), 1)
value = 155

[state 165, End State]
type = changestate
trigger1 = !vel y
trigger1 = command = "holdback"
trigger1 = inguarddist
value = cond(command = "holddown", 131, 130)

[state 165, End State]
type = changestate
trigger1 = !vel y || pos y + vel y > 0
value = 52

;=========================================================================
; Universal Overhead
;=========================================================================
[Statedef 900]
type = S
movetype = A
physics = N
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 1

[state 900, Level]
type = null
triggerall = !time
trigger1 = var(17) := 1 || 1
trigger1 = fvar(30) := 0 || fvar(31) := 0

[state 900, Set Position]
type = posset
trigger1 = !time
y = 0

[state 900, Change Animation]
type = changeanim
trigger1 = !time
value = 900

[state 900, Add Power]
type = poweradd
trigger1 = !animelemtime(5)
value = 0

[state 900, Set State Type]
type = statetypeset
trigger1 = !animelemtime(2)
statetype = A

[state 900, Sound]
type = playsnd
trigger1 = !animelemtime(2)
value = 40, 0
volumescale = 100

[state 900, Sound]
type = playsnd
trigger1 = !animelemtime(5)
value = 1, 1
volumescale = 100
channel = 1

[state 900, Set Velocity]
type = velset
trigger1 = !animelemtime(2)
x = 2.0 * fvar(14)
y = -4.5 * fvar(15)

[state 900, Increment Velocity]
type = veladd
trigger1 = animelemtime(2) > 0
x = 0.0 * fvar(16)
y = 0.4375 * fvar(17)

[state 900, Set Velocity]
type = velset
trigger1 = movecontact
x = 0.5 * fvar(14)
persistent = 0

[state 900, Jump Smoke]
type = helper
trigger1 = !animelemtime(2)
trigger1 = cond(numhelper(4000), helper(4000),var(36), 0)
name = "Jump Smoke"
ID = 7000
stateno = 7000
postype = P1
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0

[state 900, Juggle Points 1]
type = null
trigger1 = animelemtime(5) >= 0
trigger1 = var(10) := 1 || var(17) := 1 || var(49) := 900
[state 900, Hit 1]
type = hitdef
triggerall = var(49) != var(50) && !var(9) && !var(13)
trigger1 = animelemtime(5) >= 0
ID = 5631 + 0 * (var(49) := 900)
attr = S, NA
damage = ceil(cond(32 * fvar(0) < 7, 7, 32 * fvar(0)))
fall.envshake.phase = 3 ; stun damage
fall.envshake.freq = var(17) ; hit/attack level
fall.envshake.ampl = 0 ; hit y position
guardflag = H
hitflag = MAF
priority = 4, Hit
pausetime = 8, 8
hitsound = -1 + 0 * (var(3) := 210)
guardsound = -1 + 0 * (var(4) := cond(p2name = "Urien", 20, 0))
sparkno = -1 + 0 * (var(5) := 17)
guard.sparkno = -1 + 0 * (var(6) := 0)
sparkxy = 0 * (var(7) := 48), 0 * (var(8) := -64)
animtype = medium
ground.type = low
air.animtype = back
air.type = low
ground.slidetime = 7
ground.hittime = 13
guard.slidetime = 7
guard.hittime = 12
air.hittime = cond((var(54) = [1, 2]), 5, 128)
ground.velocity = -8.0 * fvar(18)
guard.velocity = -8.0 * fvar(18)
air.velocity = -4.25 * fvar(14), -4.6875 * fvar(15)
airguard.velocity = -4.0 * fvar(14), -4.0 * fvar(15)
ground.cornerpush.veloff = 0.0 * (fvar(3) := 7.0)
guard.cornerpush.veloff = 0.0
yaccel = 0.375 * fvar(20)
getpower = cond(20 - 10 * var(51) < 10, 10, 20 - 10 * var(51)), 10
givepower = 0, 0
envshake.time = 4
envshake.ampl = 1
envshake.freq = 128
fall = 0
air.fall = 0
fall.recover = 0
fall.recovertime = 1
fall.animtype = back
forcenofall = 1

[state 900, Idle]
type = statetypeset
trigger1 = pos y + vel y > 0
movetype = I
persistent = 0

[state 900, End State]
type = changestate
trigger1 = pos y + vel y > 0
value = 901

;=========================================================================
; Land
;=========================================================================
[Statedef 901]
type = S
movetype = I
physics = N
ctrl = 0
velset = vel x, 0
sprpriority = 0

[state 901, Set Position]
type = posset
trigger1 = !time
y = 0

[state 901, Change Animation]
type = changeanim
trigger1 = !time
value = 901 - 891 * (command = "holddown" && !ailevel)

[state 901, Set State Type]
type = statetypeset
trigger1 = anim = 10
statetype = C
physics = C
persistent = 0

[state 901, Sound]
type = playsnd
trigger1 = !time 
value = 52, 0
volumescale = 100

[state 901, Set Velocity]
type = velset
trigger1 = time = 2 - (vel x < 2.0 * fvar(14))
x = 0.0

[state 901, Land Smoke]
type = helper
trigger1 = !time
trigger1 = cond(numhelper(4000), helper(4000),var(36), 0)
name = "Land Smoke"
ID = 7010
stateno = 7010
postype = P1
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0

[state 901, Control]
type = ctrlset
trigger1 = time >= 4
value = 1
persistent = 0

[state 901, End State]
type = changestate
triggerall = ctrl
trigger1 = command = "holdup"
trigger2 = command = "holdback" && inguarddist
value = cond(command = "holdup", 40, 120)

[state 901, End State]
type = changestate
trigger1 = !animtime
value = 0 + 11 * (statetype = C)
ctrl = 1

;=========================================================================
; Quck Stand
;=========================================================================
[Statedef 905]
type = L
movetype = I
physics = N
ctrl = 0
facep2 = 0
velset = 0, 0
sprpriority = 1

;========================< Initiate Quick Stand >========================

[state 905, Set Position]
type = posset
trigger1 = !time
y = 0

[state 905, Change Animation]
type = changeanim
trigger1 = !time
value = 905 + (p2dist x < 0)

[state 905, State Type Set]
type = statetypeset
trigger1 = anim = 905 && animelemtime(12) = 1
trigger2 = anim = 906 && animelemtime(13) = 1
statetype = S
persistent = 0

[state 905, Vulnerability]
type = nothitby
trigger1 = statetype = L
value = SCA
time = 1

[state 905, Voice]
type = playsnd
trigger1 = 0
value = 2, 1
volumescale = 100
channel = 0

[state 905, Set Velocity]
type = velset
trigger1 = anim = 905 && !animelemtime(1)
trigger2 = anim = 906 && !animelemtime(1)
x = cond(anim = 905, -5.625, 5.5) * fvar(14)

[state 905, Set Velocity]
type = velset
trigger1 = anim = 905 && !animelemtime(7)
trigger2 = anim = 906 && !animelemtime(8)
x = 0.0 * fvar(14)

[state 905, Solidity]
type = playerpush
trigger1 = vel x
value = 0

;========================< End Quick Stand >========================

[state 905, Control Set]
type = ctrlset
trigger1 = statetype = S
value = 1
persistent = 0

[state 905, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; Parry - Stand
;=========================================================================
[StateDef 910]
type = S
movetype = I
physics = S
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 2

[state 910, Reset Juggle Points and Damage Scaling]
type = null
trigger1 = !time
trigger1 = var(9) := 0 || var(10) := 0 || var(11) := 0 || var(12) := 0 || var(13) := 0 || var(51) := 0

[state 910, Set Position]
type = posset
trigger1 = !time
y = 0

[state 910, Change Animation]
type = changeanim
trigger1 = !time
value = 910

[state 910, Vulnerability]
type = nothitby
trigger1 = time <= 15
time = 1
value = SCA

[state 910, Vulnerability]
type = hitby
trigger1 = time <= 1
time = 1
value = SCA,NA,SA,HA,NP,SP,HP

[state 910, Hit Override]
type = hitoverride
trigger1 = time <= 1
attr = SCA,NA,SA,HA,NP,SP,HP
stateno = stateno
slot = 0
time = 1

[state 910, Add Power]
type = poweradd
trigger1 = !time
value = ceil(40 * fvar(33) + var(25))

[state 910, Pause]
type = pause
triggerall = !time
trigger1 = var(54) != [1, 2]
trigger2 = var(0) % 2 = 0
time = 16
movetime = 16
endcmdbuftime = 16
pausebg = 0

[state 910, Voice]
type = playsnd
trigger1 = !time
value = 2, 0
volumescale = 100
channel = 0

[state 910, Sound]
type = playsnd
trigger1 = !time
value = 910, 0
volumescale = 100
channel = 3

[state 910, Shake]
type = envshake
trigger1 = !time
time = 0
ampl = 0
freq = 0

[state 910, Effect]
type = explod
trigger1 = !time
ID = 6050 + cond(numhelper(4000), 1000 * helper(4000),var(36), 0)
anim = 6050 + cond(numhelper(4000), 1000 * helper(4000),var(36), 0)
postype = p1
pos = ceil(64 * const(size.xscale)), ceil(-96 * const(size.yscale))
bindtime = 1
removeongethit = 1
ownpal = 1
scale = 1.0 - cond(numhelper(4000), 0.5 * helper(4000),var(36), 0), 1.0 - cond(numhelper(4000), 0.5 * helper(4000),var(36), 0)
sprpriority = 5
supermovetime = -1
pausemovetime = -1

[state 910, Parry Skill]
type = helper
trigger1 = !time
name = "Parry Skill"
ID = 917
stateno = 917
postype = p1
pos = ceil(64 * const(size.xscale)), ceil(-96 * const(size.yscale))
facing = 1
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0
supermovetime = 2147483647
pausemovetime = 2147483647

[state 910, Control]
type = ctrlset
trigger1 = time >= 15
value = 1
persistent = 0

[state 910, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; Parry - Crouch
;=========================================================================
[StateDef 911]
type = C
movetype = I
physics = C
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 2

[state 911, Reset Juggle Points and Damage Scaling]
type = null
trigger1 = !time
trigger1 = var(9) := 0 || var(10) := 0 || var(11) := 0 || var(12) := 0 || var(13) := 0 || var(51) := 0

[state 911, Set Position]
type = posset
trigger1 = !time
y = 0

[state 911, Change Animation]
type = changeanim
trigger1 = !time
value = 911

[state 911, Vulnerability]
type = nothitby
trigger1 = time <= 15
time = 1
value = SCA

[state 911, Vulnerability]
type = hitby
trigger1 = time <= 1
time = 1
value = SCA,NA,SA,HA,NP,SP,HP

[state 911, Hit Override]
type = hitoverride
trigger1 = time <= 1
attr = SCA,NA,SA,HA,NP,SP,HP
stateno = stateno
slot = 0
time = 1

[state 911, Add Power]
type = poweradd
trigger1 = !time
value = ceil(40 * fvar(33) + var(25))

[state 911, Pause]
type = pause
triggerall = !time
trigger1 = var(54) != [1, 2]
trigger2 = var(0) % 2 = 0
time = 16
movetime = 16
endcmdbuftime = 16
pausebg = 0

[state 911, Voice]
type = playsnd
trigger1 = !time
value = 2, 0
volumescale = 100
channel = 0

[state 911, Sound]
type = playsnd
trigger1 = !time
value = 910, 0
volumescale = 100
channel = 3

[state 911, Shake]
type = envshake
trigger1 = !time
time = 0
ampl = 0
freq = 0

[state 911, Effect]
type = explod
trigger1 = !time
ID = 6050 + cond(numhelper(4000), 1000 * helper(4000),var(36), 0)
anim = 6050 + cond(numhelper(4000), 1000 * helper(4000),var(36), 0)
postype = p1
pos = ceil(64 * const(size.xscale)), ceil(-40 * const(size.yscale))
bindtime = 1
removeongethit = 1
ownpal = 1
scale = 1.0 - cond(numhelper(4000), 0.5 * helper(4000),var(36), 0), 1.0 - cond(numhelper(4000), 0.5 * helper(4000),var(36), 0)
sprpriority = 5
supermovetime = -1
pausemovetime = -1

[state 911, Parry Skill]
type = helper
trigger1 = !time
name = "Parry Skill"
ID = 917
stateno = 917
postype = p1
pos = ceil(64 * const(size.xscale)), ceil(-40 * const(size.yscale))
facing = 1
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0
supermovetime = 2147483647
pausemovetime = 2147483647

[state 911, Control]
type = ctrlset
trigger1 = time >= 15
value = 1
persistent = 0

[state 911, End State]
type = changestate
trigger1 = ctrl && command != "holddown"
trigger1 = animelemtime(6) >= 0
value = 12
ctrl = 1

[state 911, End State]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1

;=========================================================================
; Parry - Air
;=========================================================================
[Statedef 912]
type = A
movetype = I
physics = N
ctrl = 0
facep2 = 1
sprpriority = 2

[state 912, Reset Juggle Points and Damage Scaling]
type = null
trigger1 = !time
trigger1 = var(9) := 0 || var(10) := 0 || var(11) := 0 || var(12) := 0 || var(13) := 0 || var(51) := 0

[state 912, Change Animation]
type = changeanim
trigger1 = !time
value = 912

[state 912, Vulnerability]
type = nothitby
trigger1 = time < 16
time = 1
value = SCA

[state 912, Vulnerability]
type = hitby
trigger1 = time <= 2
time = 1
value = SCA,NA,SA,HA,NP,SP,HP

[state 912, Hit Override]
type = hitoverride
trigger1 = time <= 2
attr = SCA,NA,SA,HA,NP,SP,HP
stateno = stateno
slot = 0
time = 1

[state 912, Add Power]
type = poweradd
trigger1 = !time
value = ceil(40 * fvar(33) + var(25))

[state 912, No Command Buffering]
type = varset
trigger1 = time < 16
fvar(30) = (fvar(31) := 0)

[state 912, Pause]
type = pause
triggerall = !time
trigger1 = var(54) != [1, 2]
trigger2 = var(0) % 2 = 0
time = 16
movetime = 16
endcmdbuftime = 16
pausebg = 0

[state 912, Voice]
type = playsnd
trigger1 = !time
value = 2, 1
volumescale = 100
channel = 0

[state 912, Sound]
type = playsnd
trigger1 = !time
value = 910, 0
volumescale = 100
channel = 3

[state 912, Shake]
type = envshake
trigger1 = !time
time = 0
ampl = 0
freq = 0

[state 912, Freeze Position]
type = posfreeze
trigger1 = 1
value = 1

[state 912, Effect]
type = explod
trigger1 = !time
ID = 6050 + cond(numhelper(4000), 1000 * helper(4000),var(36), 0)
anim = 6050 + cond(numhelper(4000), 1000 * helper(4000),var(36), 0)
postype = p1
pos = ceil(32 * const(size.xscale)), ceil(-88 * const(size.yscale))
bindtime = 1
removeongethit = 1
ownpal = 1
scale = 1.0 - cond(numhelper(4000), 0.5 * helper(4000),var(36), 0), 1.0 - cond(numhelper(4000), 0.5 * helper(4000),var(36), 0)
sprpriority = 5
supermovetime = -1
pausemovetime = -1

[state 912, End State]
type = changestate
trigger1 = time >= 16
value = 913

;=========================================================================
; Parry - Air Fall
;=========================================================================
[Statedef 913]
type = A
movetype = I
physics = N
ctrl = 1
sprpriority = 2

[state 913, Change Animation]
type = changeanim
trigger1 = anim != 912
value = 912
elem = 5

[state 913, Set Velocity]
type = velset
trigger1 = !time
trigger1 = !vel x
x = cond(var(44) = 1, 0.0, 0.0) * fvar(14)
y = cond(var(44) = 1, -6.4375, -3.21875) * fvar(15)
[state 913, Increment Velocity]
type = veladd
trigger1 = !vel x
x = fvar(12) := cond(var(44) = 1, 0.0, 0.0) * fvar(16)
y = fvar(13) := cond(var(44) = 1, 0.5625, 0.53125) * fvar(17)

[state 913, Set Velocity]
type = velset
trigger1 = !time
trigger1 = vel x > 0
x = cond(var(44) = 1, 3.5, 3.25) * fvar(14)
y = cond(var(44) = 1, -6.4375, -3.75) * fvar(15)
[state 913, Increment Velocity]
type = veladd
trigger1 = vel x > 0
x = fvar(12) := cond(var(44) = 1, 0.0, 0.0) * fvar(16)
y = fvar(13) := cond(var(44) = 1, 0.5625, 0.53125) * fvar(17)

[state 913, Set Velocity]
type = velset
trigger1 = !time
trigger1 = vel x < 0
x = cond(var(44) = 1, -3.25, -3.125) * fvar(14)
y = cond(var(44) = 1, -4.1875, -2.6875) * fvar(15)
[state 913, Increment Velocity]
type = veladd
trigger1 = vel x < 0
x = fvar(12) := cond(var(44) = 1, 0.0, 0.0) * fvar(16)
y = fvar(13) := cond(var(44) = 1, 0.5625, 0.53125) * fvar(17)

[state 913, End State]
type = changestate
trigger1 = pos y + vel y > 0
value = 52

;=========================================================================
; Personal Action
;=========================================================================
[Statedef 920]
type = S
movetype = A
physics = S
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 1

[state 920, Level]
type = null
triggerall = !time
trigger1 = var(17) := 1
trigger1 = fvar(30) := 0 || fvar(31) := 0

[state 920, Change Animation]
type = changeanim
trigger1 = !time
value = 920

[state 920, Add Power]
type = poweradd
trigger1 = !animelemtime(11)
value = ceil(40 * fvar(33) + var(25))

[state 920, Sonud]
type = playsnd
trigger1 = !animelemtime(8)
value = 5100, 0
volumescale = 100
channel = 1

[state 920, Sonud]
type = playsnd
trigger1 = !animelemtime(3)
value = 5150,1
channel = 0

[state 920, Shake]
type = envshake
trigger1 = !animelemtime(8)
time = 13
ampl = 8
freq = 128

[state 920, Hard Slam Effect]
type = helper
trigger1 = !animelemtime(8)
name = "Hard Slam Effect"
ID = 6066
stateno = 6065
postype = P1
pos = -16, 16
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0

[state 920, Pressure Wave]
type = helper
trigger1 = !animelemtime(8)
name = "Pressure Wave"
ID = 6025
stateno = 6025
postype = P1
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0

[state 920, Gravel]
type = helper
trigger1 = !animelemtime(8)
name = "Gravel"
ID = 6035
stateno = 6035
postype = P1
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0

[state 920, Increment Position]
type = posadd
trigger1 = !animelemtime(1)
x = 16.0
[state 920, Increment Position]
type = posadd
trigger1 = !animelemtime(6)
x = 2.0
[state 920, Increment Position]
type = posadd
trigger1 = !animelemtime(12)
x = -10.0

[state 920, Attack Distance]
type = attackdist
trigger1 = movetype = A
value = 0
ignorehitpause = 1

[state 920, Juggle Points 1]
type = null
trigger1 = animelemtime(8) >= 0 && animelemtime(10) < 0
trigger1 = var(10) := 3 || var(17) := 1 || var(49) := 920
[state 920, Hit 1]
type = hitdef
triggerall = var(49) != var(50) && !var(9) && !var(13)
trigger1 = animelemtime(8) >= 0 && animelemtime(10) < 0
ID = 0 + 0 * (var(49) := 920)
attr = S, NA
damage = ceil(cond(7 * fvar(0) < 7, 7, 7 * fvar(0)))
fall.envshake.phase = 0 ; stun damage
fall.envshake.freq = var(17) ; hit/attack level
fall.envshake.ampl = 0 ; hit y position
guardflag = L
hitflag = MAF
priority = 4, Hit
pausetime = 0, 1
hitsound = -1 + 0 * (var(3) := -1)
guardsound = -1 + 0 * (var(4) := -1)
sparkno = -1 + 0 * (var(5) := -1)
guard.sparkno = -1 + 0 * (var(6) := -1)
sparkxy = 0 * (var(7) := 96), 0 * (var(8) := -72)
animtype = hard
ground.type = trip
air.animtype = back
air.type = trip
ground.slidetime = 12
ground.hittime = 17
guard.slidetime = 12
guard.hittime = 17
air.hittime = cond((var(54) = [1, 2]), 3, 128)
ground.velocity = -3.1875 * fvar(14), -2.9609375 * fvar(15)
guard.velocity = -16.0 * fvar(18)
air.velocity = -3.1875 * fvar(14), -2.9609375 * fvar(15)
airguard.velocity = -4.0 * fvar(14), -4.0 * fvar(15)
ground.cornerpush.veloff = 0.0 * (fvar(3) := 7.0)
guard.cornerpush.veloff = 0.0
yaccel = 0.5 * fvar(20)
getpower = cond(20 - 10 * var(51) < 10, 10, 20 - 10 * var(51)), 10
givepower = 0, 0
envshake.time = 4
envshake.ampl = 1
envshake.freq = 128
fall = 1
air.fall = 1
fall.recover = 0
fall.recovertime = 1
fall.animtype = back
forcenofall = 1
kill = 0

[state 920, Idle]
type = statetypeset
trigger1 = animelemtime(10) >= 0
movetype = I
persistent = 0

[state 920, Control]
type = ctrlset
trigger1 = animelemtime(15) >= 0
value = 1
persistent = 0

[state 920, Personal Action]
type = varset
trigger1 = !animelemtime(7)
var(47) = 10

[state 920, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; Stand get-hit (shaking)
;=========================================================================
[Statedef 5000]
type = S
movetype = H
physics = N
velset = 0, 0

[state 5000, Change Animation]
type = changeanim
trigger1 = !time
trigger1 = gethitvar(animtype) != [3, 5]
value = cond(gethitvar(groundtype) = 1, 5000, 5010) + gethitvar(animtype)

[state 5000, Change Animation]
type = changeanim
trigger1 = !time
trigger1 = gethitvar(animtype) = [3, 5]
value = 5030 + 5 * (gethitvar(fall) && selfanimexist(5035))

[state 5000, Change Animation]
type = changeanim
trigger1 = !time
trigger1 = (gethitvar(animtype) = [4, 5]) && (selfanimexist(5047 + gethitvar(animtype)))
value = 5047 + gethitvar(animtype)

[state 5000, Change Animation]
type = changeanim
triggerall = !time && var(54)
trigger1 = gethitvar(chainid) = [5600, 5699]
trigger1 = selfanimexist(gethitvar(chainid))
value = gethitvar(chainid)

[state 5000, Change Animation]
type = changeanim
trigger1 = !time && var(54) && anim = [5620, 5622]
trigger1 = gethitvar(fall) && gethitvar(damage) >= life
trigger1 = selfanimexist(5052) || selfanimexist(5652)
value = cond(selfanimexist(5652), 5652, 5052)

[state 5000, Change Animation]
type = changeanim
trigger1 = !time && var(54) && gethitvar(damage) >= life
trigger1 = anim = 5600 ; || anim = 5601
trigger1 = selfanimexist(5654)
value = 5654

[state 5000, Change Animation]
type = changeanim
triggerall = !time && var(54)
trigger1 = gethitvar(chainid) = 5800
trigger1 = selfanimexist(gethitvar(chainid))
value = gethitvar(chainid)

[state 5000, Change Animation]
type = changeanim
trigger1 = anim != 5800
trigger1 = time > 0
value = anim
elem = 1 + (animelemtime(animelemno(0) - 1) = 1 && hitshakeover) ; unique

[state 5000, Set Hit Fall]
type = hitfallset
triggerall = !time
trigger1 = anim = [5650, 5669]
value = 1

[state 5000, Increment Position]
type = posset
triggerall = !time && var(54) = [1, 2]
trigger1 = pos y > -gethitvar(fall.envshake.ampl)
y = -gethitvar(fall.envshake.ampl)

[state 5000, Turn]
type = varset
trigger1 = !time
sysvar(1) = 0

[state 5000, Turn]
type = varset
trigger1 = anim = [5610, 5612]
trigger2 = anim = [5620, 5622]
sysvar(1) = 1
persistent = 0

[state 5000, Turn]
type = turn
trigger1 = sysvar(1) = 1
persistent = 0

[state 5000, Set State Type]
type = statetypeset
triggerall = !time
trigger1 = gethitvar(yvel) || gethitvar(fall)
trigger2 = pos y
statetype = A

[state 5000, FFB]
type = forcefeedback
trigger1 = anim = 5000 || anim = 5010
time = 6
waveform = square
persistent = 0

[state 5000, FFB]
type = forcefeedback
trigger1 = anim = 5001 || anim = 5011
time = 8
waveform = sinesquare
ampl = 110, -1, -0.3
persistent = 0

[state 5000, FFB]
type = forcefeedback
trigger1 = anim = 5012 || anim = 5002 || anim = 5030
trigger2 = anim = [5600, 5999]
time = 15
waveform = sinesquare
ampl = 140
persistent = 0

[state 5000, End State]
type = changestate
trigger1 = hitshakeover
trigger1 = !gethitvar(yvel) && !gethitvar(fall)
value = 5001

[state 5000, End State]
type = changestate
trigger1 = hitshakeover
value = 5030

;=========================================================================
; Stand get-hit (knocked back)
;=========================================================================
[Statedef 5001]
type = S
movetype = H
physics = N

[state 5001, End State]
type = changestate
trigger1 = gethitvar(animtype) = [3, 5]
value = 5030

[state 5001, Set Hit Direction]
type = varset
trigger1 = 1
sysfvar(1) = cond(gethitvar(xvel) * facing < 0, -1, cond(gethitvar(xvel) * facing > 0, 1, 0))

[state 5001, Set Hit Velocity]
type = null ; velset
trigger1 = var(54) = [1, 2]
trigger1 = time < gethitvar(slidetime)
x = abs(ceil((gethitvar(xvel) * facing) * cos((time - (gethitvar(slidetime) / 2.0)) * pi / gethitvar(slidetime)))) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

[state 5001, Set Hit Velocity]
type = velset
trigger1 = !time
trigger1 = var(54) != [1, 2]
x = gethitvar(xvel) * facing

[state 5001, Multiply Hit Velocity]
type =  velmul
trigger1 = var(54) != [1, 2]
trigger1 = vel x
x = const(movement.stand.friction)

;========================< SF3 Hit Movement >========================

;<-------------------------<Slide 7>------------------------->

[state 5001, Slide: 7, Vel: 6, Pixels: 28]
type = velset
triggerall = time < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 7
trigger1 = abs(gethitvar(xvel)) = 6.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [1, 8]
; trigger2 = abs(gethitvar(xvel)) = (0.0, 8.0)
x = (3 * (time = 0) + 4 * (time = 1) + 6 * (time = 2) + 7 * (time = 3) + 4 * (time = 4) + 3 * (time = 5) + 1 * (time = 6)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

[state 5001, Slide: 7, Vel: 8, Pixels: 32]
type = velset
triggerall = time < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 7
trigger1 = abs(gethitvar(xvel)) = 8.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [1, 8]
; trigger2 = abs(gethitvar(xvel)) = [8.0, 10.0)
x = (3 * (time = 0) + 5 * (time = 1) + 6 * (time = 2) + 7 * (time = 3) + 6 * (time = 4) + 4 * (time = 5) + 1 * (time = 6)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

[state 5001, Slide: 7, Vel: 10, Pixels: 40]
type = velset
triggerall = time < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 7
trigger1 = abs(gethitvar(xvel)) = 10.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [1, 8]
; trigger2 = abs(gethitvar(xvel)) >= 10.0
x = (5 * (time = 0) + 7 * (time = 1) + 11 * (time = 2) + 6 * (time = 3) + 5 * (time = 4) + 4 * (time = 5) + 2 * (time = 6)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

;<-------------------------<Slide 9>------------------------->

[state 5001, Slide: 9, Vel: 8, Pixels: 38]
type = velset
triggerall = time < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 9
trigger1 = abs(gethitvar(xvel)) = 8.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = 9
; trigger2 = abs(gethitvar(xvel)) = (0.0, 10.0)
x = (3 * (time = 0) + 3 * (time = 1) + 4 * (time = 2) + 6 * (time = 3) + 8 * (time = 4) + 7 * (time = 5) + 4 * (time = 6) + 2 * (time = 7) + 1 * (time = 8)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

[state 5001, Slide: 9, Vel: 10, Pixels: 48]
type = velset
triggerall = time < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 9
trigger1 = abs(gethitvar(xvel)) = 10.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = 9
; trigger2 = abs(gethitvar(xvel)) = [10.0, 12.0)
x = (4 * (time = 0) + 7 * (time = 1) + 8 * (time = 2) + 9 * (time = 3) + 8 * (time = 4) + 6 * (time = 5) + 3 * (time = 6) + 2 * (time = 7) + 1 * (time = 8)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

[state 5001, Slide: 9, Vel: 12, Pixels: 60]
type = velset
triggerall = time < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 9
trigger1 = abs(gethitvar(xvel)) = 12.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = 9
; trigger2 = abs(gethitvar(xvel)) = [12.0, 13.0)
x = (4 * (time = 0) + 7 * (time = 1) + 9 * (time = 2) + 10 * (time = 3) + 11 * (time = 4) + 8 * (time = 5) + 6 * (time = 6) + 4 * (time = 7) + 1 * (time = 8)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

[state 5001, Slide: 9, Vel: 13, Pixels: 66]
type = velset
triggerall = time < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 9
trigger1 = abs(gethitvar(xvel)) = 13.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = 9
; trigger2 = abs(gethitvar(xvel)) = [13.0, 14.0)
x = (4 * (time = 0) + 7 * (time = 1) + 9 * (time = 2) + 10 * (time = 3) + 12 * (time = 4) + 9 * (time = 5) + 6 * (time = 6) + 5 * (time = 7) + 4 * (time = 8)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

[state 5001, Slide: 9, Vel: 14, Pixels: 75]
type = velset
triggerall = time < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 9
trigger1 = abs(gethitvar(xvel)) = 14.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = 9
; trigger2 = abs(gethitvar(xvel)) >= 14.0 
x = (5 * (time = 0) + 8 * (time = 1) + 10 * (time = 2) + 11 * (time = 3) + 13 * (time = 4) + 10 * (time = 5) + 7 * (time = 6) + 6 * (time = 7) + 5 * (time = 8)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

;<-------------------------<Slide 10>------------------------->

[state 5001, Slide: 10, Vel: 10, Pixels: 54]
type = velset
triggerall = time < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 10
trigger1 = abs(gethitvar(xvel)) = 10.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [10, 11]
; trigger2 = abs(gethitvar(xvel)) = [10.0, 12.0)
x = (14 * (time = 0) + 9 * (time = 1) + 7 * (time = 2) + 6 * (time = 3) + 5 * (time = 4) + 4 * (time = 5) + 3 * (time = 6) + 3 * (time = 7) + 2 * (time = 8)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing
[state 5001, Slide: 10, Vel: 10, Pixels: 54]
type = velset
triggerall = time < gethitvar(slidetime) && time >= 9
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 10
trigger1 = abs(gethitvar(xvel)) = 10.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [10, 11]
; trigger2 = abs(gethitvar(xvel)) = [10.0, 12.0)
x = (1 * (time = 9)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

;<-------------------------<Slide 12>------------------------->

[state 5001, Slide: 12, Vel: 14, Pixels: 72]
type = velset
triggerall = time < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 12
trigger1 = abs(gethitvar(xvel)) = 14.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [12, 19]
; trigger2 = abs(gethitvar(xvel)) = (0.0, 16.0)
x = (4 * (time = 0) + 7 * (time = 1) + 9 * (time = 2) + 10 * (time = 3) + 12 * (time = 4) + 9 * (time = 5) + 6 * (time = 6) + 5 * (time = 7) + 4 * (time = 8)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing
[state 5001, Slide: 12, Vel: 14, Pixels: 72]
type = velset
triggerall = time < gethitvar(slidetime) && time >= 9
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 12
trigger1 = abs(gethitvar(xvel)) = 14.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [12, 19]
; trigger2 = abs(gethitvar(xvel)) = (0.0, 16.0)
x = (3 * (time = 9) + 2 * (time = 10) + 1 * (time = 11)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

[state 5001, Slide: 12, Vel: 16, Pixels: 84]
type = velset
triggerall = time < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 12
trigger1 = abs(gethitvar(xvel)) = 16.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [12, 19]
; trigger2 = abs(gethitvar(xvel)) = [16.0, 17.0)
x = (5 * (time = 0) + 8 * (time = 1) + 10 * (time = 2) + 11 * (time = 3) + 13 * (time = 4) + 10 * (time = 5) + 7 * (time = 6) + 6 * (time = 7) + 5 * (time = 8)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing
[state 5001, Slide: 12, Vel: 16, Pixels: 84]
type = velset
triggerall = time < gethitvar(slidetime) && time >= 9
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 12
trigger1 = abs(gethitvar(xvel)) = 16.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [12, 19]
; trigger2 = abs(gethitvar(xvel)) = [16.0, 17.0)
x = (4 * (time = 9) + 3 * (time = 10) + 2 * (time = 11)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

[state 5001, Slide: 12, Vel: 17, Pixels: 90]
type = velset
triggerall = time < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 12
trigger1 = abs(gethitvar(xvel)) = 17.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [12, 19]
; trigger2 = abs(gethitvar(xvel)) = [17.0, 18.0)
x = (9 * (time = 0) + 12 * (time = 1) + 17 * (time = 2) + 9 * (time = 3) + 8 * (time = 4) + 7 * (time = 5) + 7 * (time = 6) + 6 * (time = 7) + 5 * (time = 8)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing
[state 5001, Slide: 12, Vel: 17, Pixels: 90]
type = velset
triggerall = time < gethitvar(slidetime) && time >= 9
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 12
trigger1 = abs(gethitvar(xvel)) = 17.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [12, 19]
; trigger2 = abs(gethitvar(xvel)) = [17.0, 18.0)
x = (4 * (time = 9) + 4 * (time = 10) + 2 * (time = 11)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

[state 5001, Slide: 12, Vel: 18, Pixels: 100]
type = velset
triggerall = time < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 12
trigger1 = abs(gethitvar(xvel)) = 18.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [12, 19]
; trigger2 = abs(gethitvar(xvel)) >= 18.0
x = (10 * (time = 0) + 14 * (time = 1) + 18 * (time = 2) + 12 * (time = 3) + 9 * (time = 4) + 8 * (time = 5) + 7 * (time = 6) + 6 * (time = 7) + 5 * (time = 8)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing
[state 5001, Slide: 12, Vel: 18, Pixels: 100]
type = velset
triggerall = time < gethitvar(slidetime) && time >= 9
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 12
trigger1 = abs(gethitvar(xvel)) = 18.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [12, 19]
; trigger2 = abs(gethitvar(xvel)) >= 18.0
x = (5 * (time = 9) + 4 * (time = 10) + 2 * (time = 11)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

;<-------------------------<Slide 20>------------------------->

[state 5001, Slide: 20, Vel: 24, Pixels: 144]
type = velset
triggerall = time < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 20
trigger1 = abs(gethitvar(xvel)) = 24.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) >= 20
; trigger2 = abs(gethitvar(xvel)) > 0.0
x = (21 * (time = 0) + 17 * (time = 1) + 12 * (time = 2) + 11 * (time = 3) + 11 * (time = 4) + 10 * (time = 5) + 10 * (time = 6) + 9 * (time = 7) + 9 * (time = 8)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing
[state 5001, Slide: 20, Vel: 24, Pixels: 144]
type = velset
triggerall = time < gethitvar(slidetime) && time >= 9
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 20
trigger1 = abs(gethitvar(xvel)) = 24.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) >= 20
; trigger2 = abs(gethitvar(xvel)) > 0.0
x = (8 * (time = 9) + 7 * (time = 10) + 6 * (time = 11) + 5 * (time = 12) + 4 * (time = 13) + 2 * (time = 14) + 1 * (time = 15) + 1 * (time = 19)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

;<-------------------------<Universal Slide>------------------------->

[state 5001, Stop Hit Velocity]
type = velset
triggerall = vel x
trigger1 = hitover || gethitvar(hittime) <= 0
trigger2 = time >= gethitvar(slidetime)
trigger3 = var(54) != [1, 2]
trigger3 = cond(sysfvar(1) = -1, vel x > 0, vel x < 0)
x = 0.0

;========================< SF3 Hit Anim Functions >========================

[state 5001, Change Animation]
type = changeanim
triggerall = !time
trigger1 = anim != [5000, 5004]
trigger1 = anim != [5010, 5014]
trigger1 = anim != [5600, 5604]
trigger1 = anim != [5610, 5614]
trigger1 = anim != [5620, 5624]
trigger1 = anim != [5630, 5634]
trigger1 = anim != [5640, 5644]
trigger2 = anim = 5800
value = cond(gethitvar(groundtype) = 1, 5000, 5010) + gethitvar(animtype)

[state 5001, Change Animation]
type = changeanim
trigger1 = !hitover && gethitvar(hittime)
trigger1 = !animtime ; || !animelemtime(animelemno(0) + 1) && animelemtime(animelemno(0)) >= 8
trigger1 = selfanimexist(anim + 5)
value = anim + 5
persistent = 0

[state 5001, Change Animation]
type = changeanim
triggerall = hitover || gethitvar(hittime) <= 0
triggerall = selfanimexist(anim + 5)
trigger1 = anim = [5000, 5004]
trigger2 = anim = [5010, 5014]
trigger3 = anim = [5600, 5604]
trigger4 = anim = [5610, 5614]
trigger5 = anim = [5620, 5624]
trigger6 = anim = [5630, 5634]
trigger7 = anim = [5640, 5644]
value = anim + 5
persistent = 0

[state 5001, Change Animation]
type = changeanim
triggerall = (anim = [5610, 5612]) || (anim = [5620, 5622])
triggerall = selfanimexist(anim + 5)
trigger1 = anim = 5610 && gethitvar(hittime) <= 6 ; unique
trigger2 = anim = 5611 && gethitvar(hittime) <= 6 ; unique
trigger3 = anim = 5612 && gethitvar(hittime) <= 6 ; unique
trigger4 = anim = 5620 && gethitvar(hittime) <= 6 ; unique
trigger5 = anim = 5621 && gethitvar(hittime) <= 6 ; unique
trigger6 = anim = 5622 && gethitvar(hittime) <= 6 ; unique
value = anim + 5
persistent = 0

[state 5001, Change Animation]
type = changeanim
trigger1 = hitover || gethitvar(hittime) <= 0
trigger1 = anim != 5005 + gethitvar(animtype) + 10 * (gethitvar(groundtype) = 2)
trigger1 = anim != [5605, 5609]
trigger1 = anim != [5615, 5619]
trigger1 = anim != [5625, 5629]
trigger1 = anim != [5635, 5639]
trigger1 = anim != [5645, 5649]
value = 5005 + gethitvar(animtype) + 10 * (gethitvar(groundtype) = 2)
persistent = 0

[state 5001, Change Animation]
type = changeanim
triggerall = !hitover && gethitvar(hittime)
triggerall = anim = [5600, 5649]
triggerall = !animelemtime(animelemno(0) + 1)
trigger1 = anim = [5605, 5609]
trigger2 = anim = [5615, 5619]
trigger3 = anim = [5625, 5629]
trigger4 = anim = [5635, 5639]
trigger5 = anim = [5645, 5649]
value = anim
elem = animelemno(0) ; always make sure last frames are more than one tick

[state 5001, Re-Turn]
type = turn
triggerall = sysvar(1) = 1
triggerall = prevstateno = 5000
; triggerall = hitover || gethitvar(hittime) <= 0
trigger1 = anim = [5615, 5617]
trigger1 = !animelemtime(1) ; unique
trigger2 = anim = [5625, 5627]
trigger2 = !animelemtime(3) ; unique
[state 5001, Re-Turn]
type = varset
triggerall = sysvar(1) = 1
triggerall = prevstateno = 5000
; triggerall = hitover || gethitvar(hittime) <= 0
trigger1 = anim = [5615, 5617]
trigger1 = !animelemtime(1) ; unique
trigger2 = anim = [5625, 5627]
trigger2 = !animelemtime(3) ; unique
sysvar(1) = 0
[state 5001, Re-Turn]
type = posadd
trigger1 = anim = [5615, 5617]
trigger1 = !animelemtime(4) ; unique
trigger2 = anim = [5625, 5627]
trigger2 = !animelemtime(4) ; unique
x = -7.0 - 7.0 * (anim = [5615, 5617])

[state 5001, Vulnerability]
type = null ; nothitby
trigger1 = fvar(7) < 64.0 && !var(30)
trigger1 = hitover || gethitvar(hittime) <= 0
value = ,NT
time = 6
persistent = 0

[state 5001, Defence Set]
type = defencemulset
trigger1 = hitover || gethitvar(hittime) <= 0
value = 1

[state 5001, Set State Type]
type = statetypeset
trigger1 = fvar(7) < 64.0 && !var(30)
trigger1 = hitover || gethitvar(hittime) <= 0
movetype = I 

[state 5001, Control]
type = ctrlset
trigger1 = hitover || gethitvar(hittime) <= 0
value = 1

[state 5001, End State]
type = changestate
triggerall = hitover || gethitvar(hittime) <= 0
triggerall = cond((anim = [5600, 5649]), !animtime, !animelemtime(animelemno(0) + 1))
trigger1 = anim = 5005 && animelemtime(animelemno(0)) >= 4 || anim = 5015 && animelemtime(animelemno(0)) >= 4
trigger2 = anim = 5006 && animelemtime(animelemno(0)) >= 4 || anim = 5016 && animelemtime(animelemno(0)) >= 4
trigger3 = anim = 5007 && animelemtime(animelemno(0)) >= 4 || anim = 5017 && animelemtime(animelemno(0)) >= 4
trigger4 = anim = [5600, 5649]
value = 0
ctrl = 1

;=========================================================================
; Crouch get-hit (shaking)
;=========================================================================
[Statedef 5010]
type = C
movetype = H
physics = N
velset = 0, 0

[state 5010, Change Animation]
type = changeanim
trigger1 = !time
trigger1 = gethitvar(animtype) != [3, 5]
value = 5020 + gethitvar(animtype)

[state 5010, Change Animation]
type = changeanim
trigger1 = !time
trigger1 = gethitvar(animtype) = [3, 5]
value = 5030

[state 5010, Change Animation]
type = changeanim
trigger1 = !time
trigger1 = (gethitvar(animtype) = [4, 5]) && (selfanimexist(5047 + gethitvar(animtype)))
value = 5047 + gethitvar(animtype)

[state 5010, Change Animation]
type = changeanim
triggerall = !time && var(54)
trigger1 = gethitvar(chainid) = [5640, 5649]
trigger1 = selfanimexist(gethitvar(chainid))
value = gethitvar(chainid)

[state 5010, Change Animation]
type = changeanim
triggerall = !time && var(54)
trigger1 = gethitvar(chainid) = [5650, 5669]
trigger1 = selfanimexist(gethitvar(chainid))
value = gethitvar(chainid)

[state 5010, Change Animation]
type = changeanim
triggerall = !time && var(54)
trigger1 = gethitvar(chainid) = 5800
trigger1 = selfanimexist(gethitvar(chainid))
value = gethitvar(chainid)

[state 5010, Change Animation]
type = changeanim
trigger1 = anim != 5800
trigger1 = time > 0
value = anim
elem = 1 + (animelemtime(animelemno(0) - 1) = 1 && hitshakeover) ; unique

[state 5010, Set Hit Fall]
type = hitfallset
triggerall = !time
trigger1 = anim = [5650, 5669]
value = 1

[state 5010, Increment Position]
type = posset
triggerall = !time && var(54) = [1, 2]
trigger1 = pos y > -gethitvar(fall.envshake.ampl)
y = -gethitvar(fall.envshake.ampl)

[state 5010, Set State Type]
type = statetypeset
triggerall = !time
trigger1 = gethitvar(yvel) || gethitvar(fall)
trigger2 = pos y
statetype = A

[state 5010, FFB]
type = forcefeedback
trigger1 = anim = 5020
time = 6
waveform = square
persistent = 0

[state 5010, FFB Medium]
type = forcefeedback
trigger1 = anim = 5021
time = 8
waveform = sinesquare
ampl = 110, -1, -0.3
persistent = 0

[state 5010, FFB Hard]
type = forcefeedback
trigger1 = anim = 5022
trigger2 = anim = [5600, 5999]
time = 15
waveform = sinesquare
ampl = 140
persistent = 0

[state 5010, End State]
type = changestate
trigger1 = hitshakeover
trigger1 = !gethitvar(yvel) && !gethitvar(fall)
value = 5011

[state 5010, End State]
type = changestate
trigger1 = hitshakeover
value = 5030

;=========================================================================
; Crouch get-hit (knocked back)
;=========================================================================
[Statedef 5011]
type = C
movetype = H
physics = N

[state 5011, End State]
type = changestate
trigger1 = gethitvar(animtype) = [3, 5]
value = 5030

[state 5011, Set Hit Direction]
type = varset
trigger1 = 1
sysfvar(1) = cond(gethitvar(xvel) * facing < 0, -1, cond(gethitvar(xvel) * facing > 0, 1, 0))

[state 5011, Set Hit Velocity]
type = null ; velset
trigger1 = var(54) = [1, 2]
trigger1 = time < gethitvar(slidetime)
x = abs(ceil((gethitvar(xvel) * facing) * cos((time - (gethitvar(slidetime) / 2.0)) * pi / gethitvar(slidetime)))) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

[state 5011, Set Hit Velocity]
type = velset
trigger1 = !time
trigger1 = var(54) != [1, 2]
x = gethitvar(xvel) * facing

[state 5011, Multiply Hit Velocity]
type =  velmul
trigger1 = var(54) != [1, 2]
trigger1 = vel x
x = const(movement.stand.friction)

;========================< SF3 Hit Movement >========================

;<-------------------------<Slide 7>------------------------->

[state 5011, Slide: 7, Vel: 6, Pixels: 28]
type = velset
triggerall = time < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 7
trigger1 = abs(gethitvar(xvel)) = 6.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [1, 8]
; trigger2 = abs(gethitvar(xvel)) = (0.0, 8.0)
x = (3 * (time = 0) + 4 * (time = 1) + 6 * (time = 2) + 7 * (time = 3) + 4 * (time = 4) + 3 * (time = 5) + 1 * (time = 6)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

[state 5011, Slide: 7, Vel: 8, Pixels: 32]
type = velset
triggerall = time < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 7
trigger1 = abs(gethitvar(xvel)) = 8.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [1, 8]
; trigger2 = abs(gethitvar(xvel)) = [8.0, 10.0)
x = (3 * (time = 0) + 5 * (time = 1) + 6 * (time = 2) + 7 * (time = 3) + 6 * (time = 4) + 4 * (time = 5) + 1 * (time = 6)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

[state 5011, Slide: 7, Vel: 10, Pixels: 40]
type = velset
triggerall = time < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 7
trigger1 = abs(gethitvar(xvel)) = 10.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [1, 8]
; trigger2 = abs(gethitvar(xvel)) >= 10.0
x = (5 * (time = 0) + 7 * (time = 1) + 11 * (time = 2) + 6 * (time = 3) + 5 * (time = 4) + 4 * (time = 5) + 2 * (time = 6)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

;<-------------------------<Slide 9>------------------------->

[state 5011, Slide: 9, Vel: 8, Pixels: 38]
type = velset
triggerall = time < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 9
trigger1 = abs(gethitvar(xvel)) = 8.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = 9
; trigger2 = abs(gethitvar(xvel)) = (0.0, 10.0)
x = (3 * (time = 0) + 3 * (time = 1) + 4 * (time = 2) + 6 * (time = 3) + 8 * (time = 4) + 7 * (time = 5) + 4 * (time = 6) + 2 * (time = 7) + 1 * (time = 8)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

[state 5011, Slide: 9, Vel: 10, Pixels: 48]
type = velset
triggerall = time < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 9
trigger1 = abs(gethitvar(xvel)) = 10.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = 9
; trigger2 = abs(gethitvar(xvel)) = [10.0, 12.0)
x = (4 * (time = 0) + 7 * (time = 1) + 8 * (time = 2) + 9 * (time = 3) + 8 * (time = 4) + 6 * (time = 5) + 3 * (time = 6) + 2 * (time = 7) + 1 * (time = 8)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

[state 5011, Slide: 9, Vel: 12, Pixels: 60]
type = velset
triggerall = time < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 9
trigger1 = abs(gethitvar(xvel)) = 12.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = 9
; trigger2 = abs(gethitvar(xvel)) = [12.0, 13.0)
x = (4 * (time = 0) + 7 * (time = 1) + 9 * (time = 2) + 10 * (time = 3) + 11 * (time = 4) + 8 * (time = 5) + 6 * (time = 6) + 4 * (time = 7) + 1 * (time = 8)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

[state 5011, Slide: 9, Vel: 13, Pixels: 66]
type = velset
triggerall = time < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 9
trigger1 = abs(gethitvar(xvel)) = 13.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = 9
; trigger2 = abs(gethitvar(xvel)) = [13.0, 14.0)
x = (4 * (time = 0) + 7 * (time = 1) + 9 * (time = 2) + 10 * (time = 3) + 12 * (time = 4) + 9 * (time = 5) + 6 * (time = 6) + 5 * (time = 7) + 4 * (time = 8)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

[state 5011, Slide: 9, Vel: 14, Pixels: 75]
type = velset
triggerall = time < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 9
trigger1 = abs(gethitvar(xvel)) = 14.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = 9
; trigger2 = abs(gethitvar(xvel)) >= 14.0 
x = (5 * (time = 0) + 8 * (time = 1) + 10 * (time = 2) + 11 * (time = 3) + 13 * (time = 4) + 10 * (time = 5) + 7 * (time = 6) + 6 * (time = 7) + 5 * (time = 8)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

;<-------------------------<Slide 10>------------------------->

[state 5011, Slide: 10, Vel: 10, Pixels: 54]
type = velset
triggerall = time < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 10
trigger1 = abs(gethitvar(xvel)) = 10.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [10, 11]
; trigger2 = abs(gethitvar(xvel)) = [10.0, 12.0)
x = (14 * (time = 0) + 9 * (time = 1) + 7 * (time = 2) + 6 * (time = 3) + 5 * (time = 4) + 4 * (time = 5) + 3 * (time = 6) + 3 * (time = 7) + 2 * (time = 8)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing
[state 5011, Slide: 10, Vel: 10, Pixels: 54]
type = velset
triggerall = time < gethitvar(slidetime) && time >= 9
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 10
trigger1 = abs(gethitvar(xvel)) = 10.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [10, 11]
; trigger2 = abs(gethitvar(xvel)) = [10.0, 12.0)
x = (1 * (time = 9)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

;<-------------------------<Slide 12>------------------------->

[state 5011, Slide: 12, Vel: 14, Pixels: 72]
type = velset
triggerall = time < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 12
trigger1 = abs(gethitvar(xvel)) = 14.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [12, 19]
; trigger2 = abs(gethitvar(xvel)) = (0.0, 16.0)
x = (4 * (time = 0) + 7 * (time = 1) + 9 * (time = 2) + 10 * (time = 3) + 12 * (time = 4) + 9 * (time = 5) + 6 * (time = 6) + 5 * (time = 7) + 4 * (time = 8)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing
[state 5011, Slide: 12, Vel: 14, Pixels: 72]
type = velset
triggerall = time < gethitvar(slidetime) && time >= 9
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 12
trigger1 = abs(gethitvar(xvel)) = 14.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [12, 19]
; trigger2 = abs(gethitvar(xvel)) = (0.0, 16.0)
x = (3 * (time = 9) + 2 * (time = 10) + 1 * (time = 11)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

[state 5011, Slide: 12, Vel: 16, Pixels: 84]
type = velset
triggerall = time < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 12
trigger1 = abs(gethitvar(xvel)) = 16.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [12, 19]
; trigger2 = abs(gethitvar(xvel)) = [16.0, 17.0)
x = (5 * (time = 0) + 8 * (time = 1) + 10 * (time = 2) + 11 * (time = 3) + 13 * (time = 4) + 10 * (time = 5) + 7 * (time = 6) + 6 * (time = 7) + 5 * (time = 8)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing
[state 5011, Slide: 12, Vel: 16, Pixels: 84]
type = velset
triggerall = time < gethitvar(slidetime) && time >= 9
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 12
trigger1 = abs(gethitvar(xvel)) = 16.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [12, 19]
; trigger2 = abs(gethitvar(xvel)) = [16.0, 17.0)
x = (4 * (time = 9) + 3 * (time = 10) + 2 * (time = 11)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

[state 5011, Slide: 12, Vel: 17, Pixels: 90]
type = velset
triggerall = time < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 12
trigger1 = abs(gethitvar(xvel)) = 17.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [12, 19]
; trigger2 = abs(gethitvar(xvel)) = [17.0, 18.0)
x = (9 * (time = 0) + 12 * (time = 1) + 17 * (time = 2) + 9 * (time = 3) + 8 * (time = 4) + 7 * (time = 5) + 7 * (time = 6) + 6 * (time = 7) + 5 * (time = 8)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing
[state 5011, Slide: 12, Vel: 17, Pixels: 90]
type = velset
triggerall = time < gethitvar(slidetime) && time >= 9
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 12
trigger1 = abs(gethitvar(xvel)) = 17.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [12, 19]
; trigger2 = abs(gethitvar(xvel)) = [17.0, 18.0)
x = (4 * (time = 9) + 4 * (time = 10) + 2 * (time = 11)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

[state 5011, Slide: 12, Vel: 18, Pixels: 100]
type = velset
triggerall = time < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 12
trigger1 = abs(gethitvar(xvel)) = 18.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [12, 19]
; trigger2 = abs(gethitvar(xvel)) >= 18.0
x = (10 * (time = 0) + 14 * (time = 1) + 18 * (time = 2) + 12 * (time = 3) + 9 * (time = 4) + 8 * (time = 5) + 7 * (time = 6) + 6 * (time = 7) + 5 * (time = 8)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing
[state 5011, Slide: 12, Vel: 18, Pixels: 100]
type = velset
triggerall = time < gethitvar(slidetime) && time >= 9
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 12
trigger1 = abs(gethitvar(xvel)) = 18.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) = [12, 19]
; trigger2 = abs(gethitvar(xvel)) >= 18.0
x = (5 * (time = 9) + 4 * (time = 10) + 2 * (time = 11)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

;<-------------------------<Slide 20>------------------------->

[state 5011, Slide: 20, Vel: 24, Pixels: 144]
type = velset
triggerall = time < gethitvar(slidetime)
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 20
trigger1 = abs(gethitvar(xvel)) = 24.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) >= 20
; trigger2 = abs(gethitvar(xvel)) > 0.0
x = (21 * (time = 0) + 17 * (time = 1) + 12 * (time = 2) + 11 * (time = 3) + 11 * (time = 4) + 10 * (time = 5) + 10 * (time = 6) + 9 * (time = 7) + 9 * (time = 8)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing
[state 5011, Slide: 20, Vel: 24, Pixels: 144]
type = velset
triggerall = time < gethitvar(slidetime) && time >= 9
trigger1 = (var(54) = [1, 2]) && gethitvar(slidetime) = 20
trigger1 = abs(gethitvar(xvel)) = 24.0 * fvar(18)
; trigger2 = (var(54) != [1, 2]) && gethitvar(slidetime) >= 20
; trigger2 = abs(gethitvar(xvel)) > 0.0
x = (8 * (time = 9) + 7 * (time = 10) + 6 * (time = 11) + 5 * (time = 12) + 4 * (time = 13) + 2 * (time = 14) + 1 * (time = 15) + 1 * (time = 19)) * fvar(14) * (gethitvar(xvel) / abs(gethitvar(xvel))) * facing

;<-------------------------<Universal Slide>------------------------->

[state 5011, Stop Hit Velocity]
type = velset
triggerall = vel x
trigger1 = hitover || gethitvar(hittime) <= 0
trigger2 = time >= gethitvar(slidetime)
trigger3 = var(54) != [1, 2]
trigger3 = cond(sysfvar(1) = -1, vel x > 0, vel x < 0)
x = 0.0

;========================< SF3 Hit Anim Functions >========================

[state 5011, Change Animation]
type = changeanim
triggerall = !time
trigger1 = anim != [5020, 5024]
trigger1 = anim != [5640, 5644]
trigger2 = anim = 5800
value = 5020 + gethitvar(animtype)

[state 5011, Change Animation]
type = changeanim
trigger1 = !hitover && gethitvar(hittime)
trigger1 = !animtime ; || !animelemtime(animelemno(0) + 1) && animelemtime(animelemno(0)) >= 8
trigger1 = selfanimexist(anim + 5)
value = anim + 5
persistent = 0

[state 5011, Change Animation]
type = changeanim
triggerall = hitover || gethitvar(hittime) <= 0
triggerall = selfanimexist(anim + 5)
trigger1 = anim = [5640, 5644]
value = anim + 5
persistent = 0

[state 5011, Change Animation]
type = changeanim
trigger1 = hitover || gethitvar(hittime) <= 0
trigger1 = anim != 5025 + gethitvar(animtype)
trigger1 = anim != [5645, 5649]
value = 5025 + gethitvar(animtype)
persistent = 0

[state 5011, Change Animation]
type = changeanim
triggerall = !hitover && gethitvar(hittime)
triggerall = !animelemtime(animelemno(0) + 1)
trigger1 = anim = [5645, 5649]
value = anim
elem = animelemno(0) ; always make sure last frames are more than one tick

[state 5011, Vulnerability]
type = null ; nothitby
trigger1 = fvar(7) < 64.0 && !var(30)
trigger1 = hitover || gethitvar(hittime) <= 0
value = ,NT,ST,HT
time = 6
persistent = 0

[state 5011, Defence Set]
type = defencemulset
trigger1 = hitover || gethitvar(hittime) <= 0
value = 1

[state 5011, Set State Type]
type = statetypeset
trigger1 = fvar(7) < 64.0 && !var(30)
trigger1 = hitover || gethitvar(hittime) <= 0
movetype = I 

[state 5011, Control]
type = ctrlset
trigger1 = hitover || gethitvar(hittime) <= 0
value = 1

[state 5011, End State]
type = changestate
triggerall = hitover || gethitvar(hittime) <= 0
triggerall = cond((anim = [5600, 5649]), !animtime, !animelemtime(animelemno(0) + 1))
trigger1 = anim = 5025 && animelemtime(animelemno(0)) >= 4 ; unique
trigger2 = anim = 5026 && animelemtime(animelemno(0)) >= 4 ; unique
trigger3 = anim = 5027 && animelemtime(animelemno(0)) >= 4 ; unique
trigger4 = anim = [5600, 5649]
value = cond(command = "holddown", 11, 12)
ctrl = 1

;=========================================================================
; Air get-hit (shaking)
;=========================================================================
[Statedef 5020]
type = A
movetype = H
physics = N
velset = 0, 0

[state 5020, Set Hit Fall]
type = hitfallset
trigger1 = fvar(7) >= fvar(8) || var(30)
value = 1

[state 5020, Change Animation]
type = changeanim
trigger1 = !time
trigger1 = gethitvar(animtype) != [3, 5]
value = cond(gethitvar(airtype) = 1, 5000, 5010) + gethitvar(animtype)

[state 5020, Change Animation]
type = changeanim
trigger1 = !time
trigger1 = gethitvar(animtype) = [3, 5]
value = 5030 + 5 * (gethitvar(fall) && selfanimexist(5035))

[state 5020, Change Animation]
type = changeanim
trigger1 = !time
trigger1 = (gethitvar(animtype) = [4, 5]) && (selfanimexist(5047 + gethitvar(animtype)))
value = 5047 + gethitvar(animtype)

[state 5020, Change Animation]
type = changeanim
triggerall = !time && var(54)
trigger1 = gethitvar(chainid) = [5650, 5669]
trigger1 = selfanimexist(gethitvar(chainid))
value = gethitvar(chainid)

[state 5020, Change Animation]
type = changeanim
triggerall = !time && var(54)
trigger1 = gethitvar(chainid) = 5800
trigger1 = selfanimexist(gethitvar(chainid))
value = gethitvar(chainid)

[state 5020, Change Animation]
type = changeanim
trigger1 = anim != 5800
trigger1 = time > 0
value = anim
elem = 1 + (animelemtime(animelemno(0) - 1) = 1 && hitshakeover) ; unique

[state 5020, Set Hit Fall]
type = hitfallset
triggerall = !time
trigger1 = anim = [5650, 5669]
value = 1

[state 5020, Increment Position]
type = posset
triggerall = !time && var(54) = [1, 2]
trigger1 = pos y > -gethitvar(fall.envshake.ampl)
y = -gethitvar(fall.envshake.ampl)

[state 5020, FFB]
type = forcefeedback
trigger1 = anim = 5000 || anim = 5010
time = 6
waveform = square
persistent = 0

[state 5020, FFB]
type = forcefeedback
trigger1 = anim = 5001 || anim = 5011
time = 8
waveform = sinesquare
ampl = 110, -1, -0.3
persistent = 0

[state 5020, FFB]
type = forcefeedback
trigger1 = anim = 5002 || anim = 5012 || anim = 5030 || anim = [5051, 5059]
trigger2 = anim = [5600, 5999]
time = 15
waveform = sinesquare
ampl = 140
persistent = 0

[state 5020, End State]
type = changestate
trigger1 = hitshakeover
value = 5030

;=========================================================================
; Air get-hit (knocked away)
;=========================================================================
[Statedef 5030]
type = A
movetype = H
physics = N
ctrl = 0

[state 5030, Set Hit Fall]
type = hitfallset
trigger1 = fvar(7) >= fvar(8) || var(30)
value = 1

[state 5030, Re-Turn]
type = turn
trigger1 = sysvar(1) = 1
trigger1 = prevstateno = 5000

[state 5030, Re-Turn]
type = varset
trigger1 = sysvar(1) = 1
trigger1 = prevstateno = 5000
sysvar(1) = 0

[state 5030, Change Animation]
type = changeanim
trigger1 = anim != [5000, 5199]
trigger1 = anim != [5600, 5799]
; trigger1 = anim != 5800
trigger1 = selfanimexist(5030)
value = 5030

[state 5030, Set Hit Velocity]
type = velset
trigger1 = !time
x = gethitvar(xvel) * facing
y = cond(anim = 5655, 0.0, gethitvar(yvel))

; Unique Represents weight. Percentage is based on Ryu's X velocities.
[state 5030, Multiply Hit Velocity]
type = velmul
trigger1 = !time
x = cond(abs(gethitvar(xvel)) - abs(floor(gethitvar(xvel))), 0.94117647058823529411764705882353, 0.9375)

[state 5030, Increment Velocity]
type = veladd
trigger1 = time
trigger1 = anim != 5655
y = gethitvar(yaccel)

[state 5030, End State]
type = changestate
triggerall = !hitfall
trigger1 = var(54) != [1, 2]
trigger1 = hitover || gethitvar(hittime) < 0 || !animtime || time >= 3
trigger2 = var(54) = [1, 2]
trigger2 = hitover || gethitvar(hittime) < 0
trigger3 = pos y + vel y > const(movement.air.gethit.groundlevel)
value = 5040

[state 5030, End State]
type = changestate
triggerall = hitfall
triggerall = cond(anim = 5655, animelemtime(2) >= 3, 1) ; unique
trigger1 = hitover || gethitvar(hittime) < 0 || !animtime || time >= 0
trigger2 = pos y + vel y > const(movement.air.gethit.groundlevel)
value = 5050

[state 5030, End State]
type = changestate
trigger1 = !animtime
trigger2 = anim = [5090, 5095]
trigger2 = time >= 7
value = 5035

;=========================================================================
; Air get-hit (transition)
;=========================================================================
[Statedef 5035]
type = A
movetype = H
physics = N

[state 5035, Set Hit Fall]
type = hitfallset
trigger1 = fvar(7) >= fvar(8) || var(30)
value = 1

[state 5035, Change Animation]
type = null ; changeanim
trigger1 = !time
trigger1 = selfanimexist(5035)
trigger1 = anim != [5051, 5059]
trigger1 = anim != [5090, 5095]
trigger1 = anim != [5650, 5669]
value = 5035

[state 5035, Increment Velocity]
type = veladd
trigger1 = cond((prevstateno = [5030, 5050]), 1, time)
y = gethitvar(yaccel)

[state 5035, End State]
type = changestate
triggerall = !hitfall
trigger1 = var(54) != [1, 2]
trigger1 = hitover || gethitvar(hittime) < 0 || !animtime || time >= 3
trigger2 = var(54) = [1, 2]
trigger2 = hitover || gethitvar(hittime) < 0
trigger3 = pos y + vel y > const(movement.air.gethit.groundlevel)
trigger4 = anim != 5035 && !time
value = 5040

[state 5035, End State]
type = changestate
triggerall = hitfall
trigger1 = hitover || gethitvar(hittime) < 0 || !animtime || time >= 0
trigger2 = pos y + vel y > const(movement.air.gethit.groundlevel)
trigger3 = anim != 5035 && !time
value = 5050

;=========================================================================
; Air get-hit (recovering in air, not falling)
;=========================================================================
[Statedef 5040]
type = A
movetype = H
physics = N

[state 5040, Set Hit Fall]
type = hitfallset
trigger1 = fvar(7) >= fvar(8) || var(30)
value = 1

[state 5040, End State]
type = changestate
trigger1 = !alive
trigger2 = fvar(7) >= fvar(8) || var(30)
value = 5050
ctrl = 0

[state 5040, Change Animation]
type = changeanim
trigger1 = !time
value = 5040

[state 5040, Increment Velocity]
type = veladd
trigger1 = 1
x = (fvar(12) := 0.0 * fvar(16))
y = (fvar(13) := cond(!gethitvar(yaccel), const(movement.yaccel) * fvar(17), gethitvar(yaccel) * fvar(17)))

[state 5040, Set State Type]
type = statetypeset
trigger1 = hitover
movetype = I

[state 5040, Control]
type = ctrlset
trigger1 = hitover
trigger1 = var(54) != [1, 2]
value = 1

[state 5040, End State]
type = changestate
trigger1 = vel y >= 0
trigger1 = pos y + vel y > 0
value = 52

;=========================================================================
; Air get-hit (falling)
;=========================================================================
[Statedef 5050]
type = A
movetype = H
physics = N

[state 5050, Set Hit Fall]
type = hitfallset
trigger1 = !time
value = 1

[state 5050, Change Animation]
type = changeanim
trigger1 = !time
trigger1 = anim != [5051, 5059]
trigger1 = anim != [5061, 5069]
trigger1 = anim != [5090, 5095]
trigger1 = anim != [5650, 5669]
value = 5050

[state 5050, Change Animation]
type = changeanim
trigger1 = vel y >= 0 && !time
trigger1 = anim != 5050 && anim != 5052 && anim != [5650, 5669]
value = 5060

[state 5050, Increment Velocity]
type = veladd
trigger1 = 1
y = gethitvar(yaccel)

[state 5050, End State]
type = changestate
trigger1 = vel y >= 0
trigger1 = pos y + vel y > const(movement.air.gethit.groundlevel)
; trigger1 = pos y + vel y > cond((anim = [5051, 5059]) || (anim = [5061, 5069]), 0, const(movement.air.gethit.groundlevel))
value = 5100

;=========================================================================
; Swept (shaking)
;=========================================================================
[Statedef 5070]
type = A
movetype = H
physics = N
velset = 0, 0

[state 5070, Change Animation]
type = changeanim
trigger1 = 1
value = 5070
elem = 1 + (animelemtime(animelemno(0) - 1) = 1 && hitshakeover) ; unique

[state 5070, Increment Position]
type = posset
triggerall = !time && var(54) = [1, 2]
trigger1 = pos y > -gethitvar(fall.envshake.ampl)
y = -gethitvar(fall.envshake.ampl)

[state 5070, FFB]
type = forcefeedback
trigger1 = !time
time = 12
waveform = sinesquare
ampl = 140

[state 5070, End State]
type = changestate
trigger1 = hitshakeover
value = 5071

;=========================================================================
; Swept (falling)
;=========================================================================
[Statedef 5071]
type = A
movetype = H
physics = N

[state 5071, Set Hit Velocity]
type = velset
trigger1 = !time
x = gethitvar(xvel) * facing
y = gethitvar(yvel)

[state 5071, Increment Velocity]
type = veladd
trigger1 = time
y = gethitvar(yaccel)

[state 5071, End State]
type = changestate
trigger1 = pos y + vel y > cond((var(54) = [1, 2]), -abs(gethitvar(yvel)), const(movement.air.gethit.trip.groundlevel))
value = 5100

;=========================================================================
; Downed (shaking)
;=========================================================================
[Statedef 5080]
type = L
movetype = H
physics = N
velset = 0, 0

[state 5080, Change Animation]
type = changeanim
trigger1 = !time
value = cond(!gethitvar(yvel), 5080, 5090)

[state 5080, Change Animation]
type = changeanim
trigger1 = 1
value = anim
elem = 1 + (animelemtime(animelemno(0) - 1) = 1 && hitshakeover) ; unique

[state 5080, Increment Position]
type = posset
triggerall = !time && var(54) = [1, 2]
trigger1 = pos y > -gethitvar(fall.envshake.ampl)
y = -gethitvar(fall.envshake.ampl)

[state 5080, End State]
type = ChangeState
trigger1 = hitshakeover
value = cond(!gethitvar(yvel), 5081, 5030)

;=========================================================================
; Downed (knocked back)
;=========================================================================
[Statedef 5081]
type = L
movetype = H
physics = C

[state 5081, Set Hit Velocity]
type = velset
trigger1 = !time
x = gethitvar(xvel) * facing

[state 5081, Set Hit Velocity]
type = velset
trigger1 = hitover || gethitvar(hittime) <= 0
x = 0.0

[state 5081, End State]
type = changestate
trigger1 = hitover || gethitvar(hittime) <= 0
value = 5110

;=========================================================================
; Downed get-hit (hit ground from fall)
;=========================================================================
[Statedef 5100]
type = L
movetype = H
physics = N

[state 5100, Reset Quick Stand]
type = varset
trigger1 = !time
sysvar(0) = 0

[state 5100, Set Quick Stand]
type = varset
trigger1 = time <= 4 && !ailevel
trigger1 = command = "down"
sysvar(0) = 1

[state 5100, Set Animation]
type = varset
trigger1 = !time
sysvar(2) = 5100

[state 5100, Set Animation]
type = varset
triggerall = !time
trigger1 = anim = 5070
trigger2 = anim = 10254 ; Necro's Custom: 3110
sysvar(2) = 5101

[state 5100, Set Animation]
type = varset
triggerall = !time && var(54)
trigger1 = anim = [5650, 5669]
sysvar(2) = cond(anim >= 5660, 5710, 5700) + anim % 10

[state 5100, Set Animation]
type = varset
triggerall = !time
trigger1 = anim = 5052 || anim = 5652
sysvar(2) = 5702

[state 5100, Set Animation]
type = varset
triggerall = !time
trigger1 = anim = 5051
sysvar(2) = 5704

[state 5100, Set Animation]
type = varset
triggerall = !time && var(54)
trigger1 = anim = 10251 ; Necro's Custom: 845
sysvar(2) = 5710

[state 5100, Set Position]
type = posset
trigger1 = !time
y = 0

[state 5100, Hit Fall Damage]
type = hitfalldamage
trigger1 = !time

[state 5100, Shake]
type = envshake ; fallenvshake
trigger1 = !time
time = 7
ampl = 3
freq = 180

[state 5100, Change Animation]
type = changeanim
trigger1 = !time
value = cond(selfanimexist(sysvar(2)), sysvar(2), 5100)

[state 5100, Sound]
type = playsnd
trigger1 = !time
trigger1 = vel y > 0
value = 5100, 0

[state 5100, Hard Slam Effect]
type = helper
trigger1 = !time
trigger1 = vel y >= 20.0
name = "Hard Slam Effect"
ID = 6066
stateno = 6065
postype = P1
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0

[state 5100, Pressure Wave]
type = helper
trigger1 = !time
trigger1 = vel y > 0
name = "Pressure Wave"
ID = 6025
stateno = 6025
postype = P1
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0

[state 5100, Gravel]
type = helper
trigger1 = !time
trigger1 = vel y > 0
name = "Gravel"
ID = 6035
stateno = 6035
postype = P1
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0

[state 5100, Freeze Position]
type = posfreeze
trigger1 = 1
value = 1

[state 5100, Set Velocity]
type = velset
trigger1 = !time && vel x != [-1.25 * fvar(14), 1.25 * fvar(14)]
trigger1 = anim = 5101
x = cond(vel x > 1.25 * fvar(14), 1.25 * fvar(14), -1.25 * fvar(14))

[state 5100, Set Velocity]
type = velset
trigger1 = !time && vel x != [-1.875 * fvar(14), 1.875 * fvar(14)]
trigger1 = anim != 5101
x = cond(vel x > 1.875 * fvar(14), 1.875 * fvar(14), -1.875 * fvar(14))

[state 5100, Set Velocity]
type = velset
trigger1 = !time
y = 0.0

[state 5100, End State]
type = changestate
trigger1 = !time
trigger1 = !gethitvar(fall.yvel)
value = 5110

[state 5100, Increment Position]
type = posadd
trigger1 = vel x
trigger1 = time % 2 = 0
x = vel x * 0.82

[state 5100, FFB]
type = forcefeedback
trigger1 = !time
waveform = sinesquare
ampl = 128, -3, -0.2, 0.005
time = 20

[state 5100, End State]
type = changestate
trigger1 = !animtime
value = 5101

;=========================================================================
; Downed get-hit (slide on ground)
;=========================================================================
[Statedef 5101]
type = L
movetype = H
physics = N

[state 5101, Reset Quick Stand]
type = varset
trigger1 = !time && prevstateno != 5100
sysvar(0) = 0

[state 5101, Set Quick Stand]
type = varset
trigger1 = time <= 4 && prevstateno != 5100
trigger1 = command = "down"
sysvar(0) = 1

[state 5101, Set Position]
type = posset
trigger1 = !time
y = 0

[state 5101, Change Animation]
type = changeanim
trigger1 = !time && var(54) && anim = [5700, 5719]
trigger1 = selfanimexist(cond(anim >= 5710, 5770, 5760) + anim % 10)
value = cond(anim >= 5710, 5770, 5760) + anim % 10

[state 5101, Change Animation]
type = changeanim
trigger1 = !time && anim != [5760, 5779]
trigger2 = !time && !var(54)
value = 5160 + (anim = 5101)

[state 5101, Increment Position]
type = posadd
trigger1 = !time
x = const(movement.down.bounce.offset.x)

[state 5101, Set Velocity]
type = velset
trigger1 = !time && vel x != [-1.25 * fvar(14), 1.25 * fvar(14)]
trigger1 = anim = 5161
x = cond(vel x > 1.25 * fvar(14), 1.25 * fvar(14), -1.25 * fvar(14))

[state 5101, Set Velocity]
type = velset
trigger1 = !time && vel x != [-1.875 * fvar(14), 1.875 * fvar(14)]
trigger1 = anim != 5161
x = cond(vel x > 1.875 * fvar(14), 1.875 * fvar(14), -1.875 * fvar(14))

[state 5101, Set Velocity]
type = velset
trigger1 = !time
y = 0.0

[state 5101, End State]
type = changestate
trigger1 = !animtime
value = 5110

;=========================================================================
; Downed get-hit (lying down)
;=========================================================================
[Statedef 5110]
type = L
movetype = H
physics = N

[state 5110, Hit Fall Damage]
type = hitfalldamage
trigger1 = !time

[state 5110, Shake]
type = null ; fallenvshake
trigger1 = !time

[state 5110, Set Position]
type = posset
trigger1 = !time
y = 0

[state 5110, Change Animation]
type = changeanim
trigger1 = !time && var(54)
trigger1 = anim != 5110 && anim = [5760, 5779]
trigger1 = selfanimexist(cond(anim >= 5770, 5790, 5780) + anim % 10)
value = cond(anim >= 5770, 5790, 5780) + anim % 10

[state 5110, Change Animation]
type = changeanim
trigger1 = !time
trigger1 = anim != 5110
trigger1 = anim != [5780, 5799]
value = 5170 + (anim = 5161)

[state 5110, Get-up Time Based on Animation]
type = varset
trigger1 = !time
sysvar(2) = anim

[state 5110, Change Animation]
type = changeanim
trigger1 = !animtime
value = 5110
persistent = 0

[state 5110, Sound]
type = playsnd
trigger1 = !time && prevstateno != [5100, 5101]
value = 5100, 0

[state 5110, Hard Slam Effect]
type = helper
trigger1 = !time && prevstateno != [5100, 5101]
trigger1 = vel y >= 20.0
name = "Hard Slam Effect"
ID = 6066
stateno = 6065
postype = P1
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0

[state 5110, Pressure Wave]
type = helper
trigger1 = !time && prevstateno != [5100, 5101]
name = "Pressure Wave"
ID = 6025
stateno = 6025
postype = P1
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0

[state 5110, Gravel]
type = helper
trigger1 = !time && prevstateno != [5100, 5101]
name = "Gravel"
ID = 6035
stateno = 6035
postype = P1
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0

[state 5110, Set Velocity]
type = velset
trigger1 = !time && vel x != [-1.25 * fvar(14), 1.25 * fvar(14)]
trigger1 = anim = 5171
x = cond(vel x > 1.25 * fvar(14), 1.25 * fvar(14), -1.25 * fvar(14))

[state 5110, Set Velocity]
type = velset
trigger1 = !time && vel x != [-1.875 * fvar(14), 1.875 * fvar(14)]
trigger1 = anim != 5171
x = cond(vel x > 1.875 * fvar(14), 1.875 * fvar(14), -1.875 * fvar(14))

[state 5110, Set Velocity]
type = velset
trigger1 = !time
y = 0.0

[state 5110, Set Velocity]
type = velset
trigger1 = anim = 5110 || anim = 5171 && !animelemtime(animelemno(0) + 1)
trigger2 = anim != 5110 && !animtime
x = 0.0
persistent = 0

[state 5110, Multiply Velocity]
type = velmul
trigger1 = vel x
x = 0.765

[state 5110, FFB]
type = forcefeedback
trigger1 = alive && !time
time = 8
ampl = 240
waveform = sine

[state 5110, FFB]
type = forcefeedback
trigger1 = !alive && !time
ampl = 200, 7, -0.467
time = 30
waveform = sine

[state 5110, End State]
type = changestate
triggerall = cond(numhelper(4000), helper(4000),var(2), 1)
triggerall = alive && roundstate = 2
triggerall = cond((var(54) = [1, 2]), gethitvar(fall.recovertime), gethitvar(fall.recover))
triggerall = fvar(7) < fvar(8) && !var(30)
triggerall = time >= 3 && anim != 5110
trigger1 = !ailevel && sysvar(0) = 1
trigger2 = ailevel && random < 128 * (ailevel ** 2.0 / 64.0)
trigger2 = cond(p2dist x < 0, backedgedist < frontedgedist, backedgedist >= frontedgedist)
value = 905

[state 5110, End State]
type = changestate
trigger1 = alive && anim = 5110
value = 5111

[state 5110, End State]
type = changestate
triggerall = alive && anim = 5110
trigger1 = sysvar(2) = 5171 && animelemtime(1) >= 12
trigger2 = sysvar(2) != 5171 && animelemtime(1) >= 16
value = 5120

[state 5110, End State]
type = changestate
trigger1 = !alive
trigger1 = !animtime || anim = [5110, 5119]
value = 5150

;=========================================================================
; Lying Down
;=========================================================================
[Statedef 5111]
type = L
movetype = H
physics = N

[state 5111, End State]
type = changestate
triggerall = alive
trigger1 = sysvar(2) = 5171 && animelemtime(1) >= 12
trigger2 = sysvar(2) != 5171 && animelemtime(1) >= 16
trigger3 = time > 128
value = 5120

[state 5111, End State]
type = changestate
trigger1 = !alive
trigger1 = !animtime || anim = [5110, 5119]
value = 5150

;=========================================================================
; Hit Getup
;=========================================================================
[Statedef 5120]
type = L
movetype = I
physics = N

[state 5120, Change Animation]
type = changeanim
trigger1 = !time
trigger1 = anim = 5810
value = 5811

[state 5120, Change Animation]
type = changeanim
trigger1 = !time
trigger1 = anim != 5811
value = 5120

[state 5120, Set Velocity]
type = velset
trigger1 = !time
x = 0.0
y = 0.0

[state 5120, State Type Set]
type = statetypeset
trigger1 = var(54) = [1, 2]
trigger1 = fvar(7) >= fvar(8) || var(30)
movetype = H
persistent = 0

[state 5120, State Type Set]
type = statetypeset
trigger1 = animelemtime(7) = 1 ; unique
statetype = S
persistent = 0

[state 5120, Vulnerability]
type = nothitby
trigger1 = statetype = L
value = SCA
time = 1

[state 5120, Set Hit Fall]
type = hitfallset
trigger1 = !animtime
trigger1 = fvar(7) < fvar(8) && !var(30)
value = 1

[state 5120, Vulnerability]
type = nothitby
trigger1 = !animtime || statetype = S
trigger1 = fvar(7) < fvar(8) && !var(30)
value = ,NT,ST,HT
time = 12
persistent = 0

[state 5120, Vulnerability]
type = nothitby
trigger1 = !animtime || statetype = S
trigger1 = fvar(7) < fvar(8) && !var(30)
value2 = SCA
time = 3
persistent = 0

[state 5120, Control Set]
type = ctrlset
trigger1 = statetype = S
value = 1
persistent = 0

[state 5120, Change to Stun State]
type = changestate
triggerall = numhelper(6550) && alive
trigger1 = fvar(7) >= fvar(8) || var(30)
trigger1 = ctrl || !animtime
trigger1 = fvar(7) := 0 || var(30) := 0 || 1
value = 5300

[state 5120, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; Hit Liedead
;=========================================================================
[Statedef 5150]
type = L
movetype = H
physics = N
sprpriority = -3

[state 5150, Destroy Helper]
type = removeexplod
trigger1 = ishelper

[state 5150, Destroy Helper]
type = destroyself
trigger1 = ishelper

[state 5150, Change Animation]
type = changeanim
trigger1 = !time
trigger1 = anim != [5110, 5119]
trigger1 = anim != 5810
value = 5110

[state 5150, Change Animation]
type = changeanim
trigger1 = anim = 5810
trigger1 = !animelemtime(animelemno(0) + 1)
value = anim
elem = animelemno(0)

[state 5150, Effie]
type = helper
trigger1 = !numhelper(4300)
trigger1 = time >= 13
trigger1 = matchover
name = "Effie"
ID = 4300
stateno = 4315
postype = left
pos = ceil(gamewidth * (facing = 1) + 72 * facing), 16
facing = facing
ownpal = 1
keyctrl = 0
size.shadowoffset = 0
persistent = 0

[state 5150, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[state 5150, Set Velocity]
type = velset
trigger1 = abs(vel x) < const(movement.down.friction.threshold)
x = 0.0
persistent = 0

[state 5150, Multiply Velocity]
type = velmul
trigger1 = vel x
x = 0.85

;=========================================================================
; Recovery
;=========================================================================
[Statedef 5200]
type = A
movetype = H
physics = N

[state 5200, Set Position]
type = posset
trigger1 = pos y > 0
y = 0

[state 5200, Change Animation]
type = changeanim
trigger1 = anim = 5035
trigger1 = !animtime
value = 5050

[state 5200, Increment Velocity]
type = veladd
trigger1 = 1
y = gethitvar(yaccel)

[state 5200, Own State]
type = selfstate
trigger1 = pos y + vel y > -5
value = 5201

;=========================================================================
; Ground Recovery
;=========================================================================
[Statedef 5201]
type = L
movetype = I
physics = N
ctrl = 0
velset = 0, 0

;========================< Initiate Ground Recovery >========================

[state 5201, Set Position]
type = posset
trigger1 = !time
y = 0

[state 5201, Change Animation]
type = changeanim
trigger1 = !time
value = 5200

[state 5201, Turn]
type = turn
trigger1 = !time
trigger1 = p2dist x < 0

[state 5201, State Type Set]
type = statetypeset
trigger1 = !animelemtime(9)
statetype = S
persistent = 0

[state 5201, Vulnerability]
type = nothitby
trigger1 = statetype = L
value = SCA
time = 1

[state 5201, Voice]
type = playsnd
trigger1 = !animelemtime(1)
value = 200, 800
volumescale = 100
channel = 1

[state 5201, Voice]
type = playsnd
trigger1 = !animelemtime(3)
value = 2, 1
volumescale = 100
channel = 0

[state 5201, Set Velocity]
type = velset
trigger1 = !animelemtime(2)
x = -4.125

[state 5201, Set Velocity]
type = velset
trigger1 = !animelemtime(6)
x = 0.0

[state 5201, Solidity]
type = playerpush
trigger1 = vel x
value = 0

[state 5201, Pressure Wave]
type = helper
trigger1 = !time
name = "Pressure Wave"
ID = 6025
stateno = 6025
postype = P1
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0

;========================< End Ground Recovery >========================

[state 5201, Control Set]
type = ctrlset
trigger1 = statetype = S
value = 1
persistent = 0

[state 5201, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; Aerial Recovery
;=========================================================================
[Statedef 5210]
type = A
movetype = I
physics = N
ctrl = 0

[state 5210, Change Animation]
type = changeanim
trigger1 = !time
value = 5210

[state 5210, Turn]
type = turn
trigger1 = !time
trigger1 = p2dist x < 0

[state 5210, Vulnerability]
type = nothitby
trigger1 = !time
value = SCA
time = 16

[state 5210, Voice]
type = playsnd
trigger1 = !time
value = 2, 1
volumescale = 100
channel = 0

[state 5210, Set Velocity]
type = velset
trigger1 = time <= 1
x = cond(command = "holdfwd", 4.0, -4.0) * fvar(14)
y = -8.0 * fvar(15)

[state 5210, Increment Velocity]
type = veladd
trigger1 = 1
y = const(movement.air.gethit.airrecover.yaccel) * fvar(17)

[state 5210, Control]
type = ctrlset
trigger1 = time >= 15
value = 1
persistent = 0

[state 5210, End State]
type = changestate
trigger1 = pos y + vel y > 0
value = 52
ctrl = 1

;=========================================================================
; Stunned
;=========================================================================
[Statedef 5300]
type = S
movetype = I
physics = S
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 0

[state 5300, State Type Set]
type = statetypeset
trigger1 = !time
trigger1 = var(54) = [1, 2]
movetype = H

[state 5300, Set Hit Fall]
type = hitfallset
trigger1 = !time
value = 0

[state 5300, Set Position]
type = posset
trigger1 = !time
y = 0

[state 5300, End State]
type = changestate
trigger1 = !alive
value = 5050

[state 5300, Stun Time]
type = varset
trigger1 = !time
sysvar(0) = 0

[state 5300, Stun Time]
type = null
triggerall = !time
trigger1 = var(17) = [0, 1] ; Normal Hit
trigger1 = var(0) := 90 + 20 * (random % 4)
trigger2 = var(17) = 2 ; Special Hit
trigger2 = var(0) := 150 + 20 * (random % 4)
trigger3 = var(17) = 3 ; Super Art Hit
trigger3 = var(0) := 120 + 40 * (random % 4)
trigger4 = var(17) = 4 ; Normal Throw
trigger4 = var(0) := 120 + 20 * (random % 4)
trigger5 = var(17) = 5 ; Special Throw
trigger5 = var(0) := 120 + 40 * (random % 4)
trigger6 = var(17) = 6 ; Super Art Throw
trigger6 = var(0) := 150 + 40 * (random % 4)

[state 5300, Change Animation]
type = changeanim
trigger1 = !time
value = 5300

[state 5300, Button Tap Buffer Time]
type = varadd
trigger1 = sysvar(0) > 0
trigger1 = time % 3 = 0
sysvar(0) = -1

[state 5300, Tap button to Speed up]
type = varadd
trigger1 = command = "a" || command = "b" || command = "c"
trigger2 = command = "x" || command = "y" || command = "z"
trigger3 = command = "fwd" || command = "back" || command = "up" || command = "down"
sysvar(0) = 1

[state 5300, Button Tap Buffer Time]
type = varset
trigger1 = sysvar(0) > 12
sysvar(0) = 12

[state 5300, Decrease Stun Time]
type = varadd
triggerall = var(0) > 0 && sysvar(0) >= 6
trigger1 = command = "a" || command = "b" || command = "c"
trigger2 = command = "x" || command = "y" || command = "z"
trigger3 = command = "fwd" || command = "back" || command = "up" || command = "down"
var(0) = -1

[state 5300, Change Animation]
type = changeanim
triggerall = anim = 5300
triggerall = var(0) > 0 && sysvar(0) >= 6
triggerall = animelemtime(animelemno(0)) >= 4
trigger1 = command = "a" || command = "b" || command = "c"
trigger2 = command = "x" || command = "y" || command = "z"
trigger3 = command = "fwd" || command = "back" || command = "up" || command = "down"
value = anim
elem = cond(!animelemtime(animelemno(0) + 1), 1, animelemno(0) + 1)

[state 5300, Stars, Ducks, Reapers, and Angles]
type = helper
trigger1 = anim = 5300
trigger1 = !numhelper(6565)
name = "Stars, Ducks, Reapers, and Angles"
ID = 6565
stateno = 6565
postype = p1
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0

[state 5300, Control]
type = ctrlset
trigger1 = time >= var(0)
value = 1
persistent = 0

[state 5300, End State]
type = changeanim
trigger1 = time >= var(0)
value = 5301
persistent = 0

[state 5300, End State]
type = changestate
trigger1 = anim = 5301 && !animtime
trigger2 = ctrl && p2dist x < 0
value = 0
ctrl = 1

;=========================================================================
; Electrocuted
;=========================================================================
[Statedef 5800]
type = U
movetype = H
physics = N
velset = 0, 0
sprpriority = -1

[state 5800, Destroy Explod]
type = removeexplod
trigger1 = ishelper

[state 5800, Destroy Helper]
type = destroyself
trigger1 = ishelper

[state 5800, Change Animation]
type = changeanim
trigger1 = !time
value = cond(selfanimexist(7696), 7696, 5000 + 10 * (random % 2))
ignorehitpause = 1

[state 5800, Change Animation]
type = changeanim
triggerall = !time && selfanimexist(5700)
trigger1 = authorname = "RajaaBoy"
; trigger2 = authorname != "YourName"
value = 5700
ignorehitpause = 1

[state 5800, Change Animation]
type = null ; changeanim
trigger1 = gethitvar(hitshaketime)
trigger1 = time % 4 = 0 && anim = 7696
value = anim
elem = cond(!animelemtime(animelemno(0) + 1), 1, animelemno(0) + 1)
ignorehitpause = 1

[state 5800, Change Animation]
type = changeanim
trigger1 = gethitvar(hitshaketime)
trigger1 = time % 4 = 0 && anim = [5000, 5010]
value = 5000 + 10 * (random % 2)
ignorehitpause = 1

[state 5800, Change Animation]
type = changeanim
triggerall = !gethitvar(hitshaketime)
trigger1 = gethitvar(fall) || !alive
value = 5030

[state 5800, Palette Effect]
type = palfx
trigger1 = gethitvar(hitshaketime)
trigger1 = anim = [5000, 5010]
time = 1
mul = 64 - ceil(64.0 * cos(time * pi / 4.0)), 64 - ceil(64.0 * cos(time * pi / 4.0)), 256 - ceil(256.0 * cos(time * pi / 4.0))
add = 256 - ceil(256.0 * cos(time * pi / 8.0)), 256 - ceil(256.0 * cos(time * pi / 8.0)), 256 - ceil(256.0 * cos(time * pi / 8.0))
color = 0 
ignorehitpause = 1

[state 5800, End State]
type = selfstate
triggerall = !gethitvar(hitshaketime)
trigger1 = gethitvar(fall) || !alive
value = 5030

[state 5800, End State]
type = selfstate
trigger1 = !gethitvar(hitshaketime)
trigger2 = time > 128
value = 5000 * statetype = S + 5010 * statetype = C + 5030 * statetype = A

;=========================================================================
; Wall Slam (for targets)
;=========================================================================
[statedef 5805]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0, 0
sprpriority = -1

[state 5805, Destroy Explod]
type = removeexplod
trigger1 = ishelper

[state 5805, Destroy Helper]
type = destroyself
trigger1 = ishelper

;========================< Hit Stun >========================

[state 5805, Set Hit Fall]
type = hitfallset
trigger1 = !time
value = 1

[state 5805, Change Animation]
type = changeanim
trigger1 = !time
trigger1 = gethitvar(animtype) != [3, 5]
value = cond((gethitvar(groundtype) = 1), 5000, 5010) + gethitvar(animtype)

[state 5805, Change Animation]
type = changeanim
trigger1 = !time
trigger1 = gethitvar(animtype) = [3, 5]
value = 5030

[state 5805, Change Animation]
type = changeanim
trigger1 = !time
trigger1 = (gethitvar(animtype) = [4, 5]) && selfanimexist(5047 + gethitvar(animtype))
value = 5047 + gethitvar(animtype)

[state 5805, Change Animation]
type = changeanim
triggerall = !time
triggerall = selfanimexist(-2147483647) && selfanimexist(2147483647)
triggerall = selfanimexist(5805)
trigger1 = authorname = "RajaaBoy"
; trigger2 = authorname != "YourName"
value = 5805

[state 5805, Change Animation]
type = changeanim
trigger1 = !hitshakeover
value = anim

[state 5805, Bound]
type = screenbound
trigger1 = !hitshakeover
value = 0
movecamera = 1, 1

[state 5805, Solidity]
type = playerpush
trigger1 = 1
value = 0

;========================< Hit Toward Wall >========================

[state 5805, Change Animation]
type = changeanim
trigger1 = hitshakeover
trigger1 = anim != [5805, 5809]
value = 5050
persistent = 0

[state 5805, Bound]
type = screenbound
trigger1 = hitshakeover
trigger1 = anim = 5050 || anim = 5805
value = 0
movecamera = 1, 1

[state 5805, Solidity]
type = playerpush
trigger1 = hitshakeover
trigger1 = anim = 5050 || anim = 5805
value = 0

[state 5805, Set Velocity]
type = velset
trigger1 = hitshakeover
trigger1 = anim = 5050 || anim = 5805
x = gethitvar(xvel) * facing
y = gethitvar(yvel)
persistent = 0

[state 5805, Increment Velocity]
type = veladd
triggerall = hitshakeover
triggerall = anim = 5050 || anim = 5805
trigger1 = gethitvar(chainid) = 250
x = 0.0
y = gethitvar(yaccel)

;========================< Hit Wall >========================

[state 5805, Change Animation]
type = changeanim
triggerall = hitshakeover
triggerall = anim = 5050 || anim = 5805
triggerall = cond(vel x > 0, frontedgebodydist <= 0, backedgebodydist <= 0)
triggerall = selfanimexist(-2147483647) && selfanimexist(2147483647)
triggerall = selfanimexist(5806)
trigger1 = authorname = "RajaaBoy"
; trigger2 = authorname != "YourName"
value = 5806

[state 5805, End State]
type = changeanim2
trigger1 = hitshakeover
trigger1 = anim = 5050 || anim = 5805
trigger1 = cond(vel x > 0, frontedgebodydist <= 0, backedgebodydist <= 0)
value = 5808

[state 5805, Bound]
type = screenbound
trigger1 = anim = 5806 || anim = 5808
value = 0
movecamera = 1, 1

[state 5805, Solidity]
type = playerpush
trigger1 = anim = 5806 || anim = 5808
value = 0

[state 5805, Sound]
type = playsnd
trigger1 = anim = 5806 || anim = 5808
trigger1 = !animelemtime(1)
value = f7, 2
volumescale = 100

[state 5805, Shake]
type = envshake
trigger1 = anim = 5806 || anim = 5808
trigger1 = !animelemtime(1)
time = 10
ampl = 10
freq = 128

[state 5805, Increment Position]
type = posadd
trigger1 = anim = 5806 || anim = 5808
trigger1 = !animelemtime(1)
x = const(size.ground.back)

[state 5805, Set Velocity]
type = velset
trigger1 = anim = 5806 || anim = 5808
trigger1 = !animelemtime(1)
x = 0.0
y = 0.0

;========================< Bounce off Wall >========================

[state 5805, Turn]
type = turn
trigger1 = anim = 5806 || anim = 5808
trigger1 = !animtime
trigger1 = backedgedist < frontedgedist

[state 5805, Set Velocity]
type = velset
triggerall = anim = 5806 || anim = 5808
triggerall = !animtime
trigger1 = gethitvar(chainid) = 250
x = -4.9765625
y = -8.59375

[state 5805, Change Animation]
type = changeanim
triggerall = anim = 5806 || anim = 5808
triggerall = !animtime
triggerall = selfanimexist(-2147483647) && selfanimexist(2147483647)
triggerall = selfanimexist(5807)
trigger1 = authorname = "RajaaBoy"
; trigger2 = authorname != "YourName"
value = 5807

[state 5805, End State]
type = changeanim2
trigger1 = anim = 5806 || anim = 5808
trigger1 = !animtime
value = 5809

[state 5805, Bound]
type = screenbound
trigger1 = anim = 5807
value = 1
movecamera = 1, 1

[state 5805, Increment Velocity]
type = veladd
triggerall = anim = 5807 || anim = 5809
trigger1 = gethitvar(chainid) = -1
y = gethitvar(yaccel)

[state 5805, Shake]
type = envshake
trigger1 = pos y + vel y > 0
time = 10
ampl = 10
freq = 128

[state 5805, Own State]
type = selfstate
trigger1 = pos y + vel y > 0
value = 5100

[state 5805, Own State]
type = selfstate
trigger1 = time > 256
value = 5050

;=========================================================================
; Dramatic K.O
;=========================================================================
[Statedef 5810]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0, 0

[state 5810, Set Position]
type = posset
trigger1 = 1
y = 0

[state 5810, Change Animation]
type = changeanim
trigger1 = !hitshakeover
value = 5810

[state 5810, State Type Set]
type = statetypeset
trigger1 = animelemtime(4) >= 0 ; unique
statetype = L
persistent = 0

[state 5810, Voice]
type = playsnd
trigger1 = alive
trigger1 = !animelemtime(2)
value = 5150,0
volumescale = 100
channel = 0

[state 5810, Set Hit Velocity]
type = velset
trigger1 = hitshakeover
x = gethitvar(xvel) * facing
persistent = 0

[state 5810, Multiply Velocity]
type = velmul
trigger1 = vel x
x = const(movement.stand.friction)

[state 5810, Set Velocity]
type = velset
trigger1 = vel x >= -abs(gethitvar(xvel)) * 0.25
x = 0.0

[state 5810, Increment Position] ; unique
type = posadd
trigger1 = !animelemtime(7)
x = -24.0

[state 5810, End State]
type = selfstate
trigger1 = hitover || gethitvar(hittime) <= 0
trigger1 = !animelemtime(animelemno(0) + 1)
trigger1 = animelemtime(animelemno(0)) >= 16
value = 5120 + 30 * !alive
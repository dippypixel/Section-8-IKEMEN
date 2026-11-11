; Urien By RajaaBoy

;=========================================================================
; Lose Pose
;=========================================================================
[Statedef 170]
type = S
movetype = I
physics = S
ctrl = 0
velset = 0, 0
sprpriority = 1

[state 830, Voice]
type = playsnd
trigger1 = !animelemtime(5)
value = 181,4
volumescale = 100
[state 830, Voice]
type = playsnd
trigger1 = !animelemtime(5)
value = 181,4
volumescale = 100
[state 830, Voice]
type = playsnd
trigger1 = !animelemtime(5)
value = 181,4
volumescale = 100
[State 0, EnvShake]
type = EnvShake
trigger1 = Animelem = 5
time = 9999
freq = 160
ampl = -12

[state 170, Set Position]
type = posset
trigger1 = !time
y = 0

[state 170, Change Animation]
type = changeanim
trigger1 = !time
value = 170

[state 170, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[state 170, Special Effect]
type = assertspecial
trigger1 = time <= 240
flag = roundnotover

;=========================================================================
; Conclusions
;=========================================================================
[statedef 180]
type = S
movetype = I
physics = S
velset = 0, 0
sprpriority = 2

[state 180, Detect Perfect Win]
type = varadd
trigger1 = !time
var(31) = life >= lifemax

[state 180, Keep Score]
type = varadd
trigger1 = !time && win && matchover
var(20) = 50000 * var(31) + 100 * life + ceil(600 * cond(var(32) >= 5940, 1, 99 - (var(32) / 60))) + 30000 * !var(33)

[state 180, Keep Score]
type = varset
triggerall = !time && win && matchover
trigger1 = cond(numhelper(6305), helper(6305),sysvar(0), 0)
trigger2 = cond(numhelper(6306), helper(6306),sysvar(0), 0)
trigger3 = cond(numhelper(6307), helper(6307),sysvar(0), 0)
var(20) = 0

[state 180, Set Position]
type = posset
trigger1 = !time
y = 0

[state 180, Victory Quote]
type = victoryquote
trigger1 = !time
value = 1 + random % 8

[state 180, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[state 180, Special Effect]
type = assertspecial
trigger1 = 1
flag = roundnotover

[state 180, End State]
type = changeState
trigger1 = 1
value = cond(matchover, 182 + random % 2, 181)

;=========================================================================
; Fist Curl
;=========================================================================
[Statedef 181]
type = S
movetype = I
physics = S
ctrl = 0
velset = 0, 0
sprpriority = 2

[state 181, Set Position]
type = posset
trigger1 = !time
y = 0

[state 181, Change Animation]
type = changeanim
trigger1 = !time
value = 181

[state 181, Voice]
type = playsnd
trigger1 = !animelemtime(4)
value = 181, 0 + random % 3
volumescale = 100
channel = 0

[state 181, Special Effect]
type = assertspecial
trigger1 = animelemtime(1) <= 240
flag = roundnotover

;=========================================================================
; Heart Stealer
;=========================================================================
[Statedef 182]
type = S
movetype = I
physics = S
ctrl = 0
velset = 0, 0
sprpriority = 2

[state 182, Change Animation]
type = changeanim
trigger1 = !time
value = 182

[state 182, Change Animation]
type = changeanim
trigger1 = !time && playeridexist(var(58))
trigger1 = facing * (playerid(var(58)),pos x - pos x) > 80
trigger1 = frontedgebodydist > 1 && time < 96
value = 100

[state 182, Change Animation]
type = changeanim
triggerall = anim = 101
trigger1 = animelemtime(3) = 1 && playeridexist(var(58))
trigger1 = facing * (playerid(var(58)),pos x - pos x) > 80
trigger2 = animelemtime(9) = 4
value = cond(animelemtime(3) = 1 && frontedgebodydist > 1 && time < 96, 100, 182)

[state 182, Turn]
type = turn
trigger1 = anim = 182
trigger1 = playeridexist(var(58)) && !animelemtime(1)
trigger1 = facing * (playerid(var(58)),pos x - pos x) < 0

[state 200, Sound]
type = playsnd
trigger1 = anim = 182
trigger1 = !animelemtime(6)
value = 1, 0
volumescale = 100
channel = 1

[state 200, Sound]
type = playsnd
trigger1 = anim = 182
trigger1 = !animelemtime(8)
value = 181,1
volumescale = 100
channel = 1

[state 200, Sound]
type = playsnd
trigger1 = anim = 182
trigger1 = !animelemtime(2)
value = 2,2
volumescale = 100
channel = 0

;========================< Initiate Forward Dash >========================

[state 182, Sound]
type = playsnd
trigger1 = anim = 100
trigger1 = !animelemtime(2)
value = 100, 0
volumescale = 100

[state 182, Set State Type]
type = statetypeset
trigger1 = anim = 100
trigger1 = !animelemtime(2)
statetype = A
physics = N

[state 182, Set Velocity]
type = velset
trigger1 = anim = 100
trigger1 = !animelemtime(2)
x = const(velocity.run.fwd.x) * fvar(14)
y = const(velocity.run.fwd.y) * fvar(15)

[state 182, Increment Velocity]
type = veladd
trigger1 = anim = 100
trigger1 = animelemtime(2) >= 2
x = -0.25 * fvar(16)
y = 0.375 * fvar(17)

[state 182, Dash Dust]
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

[state 182, Change Animation]
type = changeanim
trigger1 = anim = 100
trigger1 = pos y + vel y > 0
value = 101

[state 182, Set State Type]
type = statetypeset
trigger1 = anim = 101
statetype = S
physics = S

[state 182, Sound]
type = playsnd
trigger1 = anim = 101
trigger1 = !animelemtime(1)
value = 52, 0
volumescale = 100

[state 182, Set Velocity]
type = velset
trigger1 = anim = 101
trigger1 = !animelemtime(1)
x = 0.0
y = 0.0

[state 182, Set Position]
type = posset
trigger1 = anim = 101
trigger1 = !animelemtime(1)
y = 0

[state 182, Land Smoke]
type = helper
trigger1 = anim = 101
trigger1 = !animelemtime(1)
trigger1 = cond(numhelper(4000), helper(4000),var(36), 0)
name = "Land Smoke"
ID = 7010
stateno = 7010
postype = P1
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0

;========================< Finish Intro >========================

[state 182, Special Effect]
type = assertspecial
trigger1 = anim = 100 || anim = 101
trigger2 = anim = 182
trigger2 = animelemtime(1) <= 240
flag = roundnotover

;=========================================================================
; Fire Tempest
;=========================================================================
[Statedef 183]
type = S
movetype = I
physics = S
ctrl = 0
velset = 0, 0
sprpriority = 2

[state 183, Set Position]
type = posset
trigger1 = !time
y = 0

[state 183, Change Animation]
type = changeanim
trigger1 = !time
value = 183

[state 183, Transparency]
type = trans
trigger1 = animelemtime(13) >= 0
trans = addalpha
alpha = 0, 256 * (animelemtime(13) > 1)

[state 183, Voice]
type = playsnd
trigger1 = !animelemtime(2)
value = 181, 0
volumescale = 100
channel = 0
[state 183, Voice]
type = playsnd
trigger1 = !animelemtime(2)
value = 181, 4
volumescale = 100

[state 183, Voice]
type = playsnd
trigger1 = numhelper(4320)
trigger1 = !helper(4320),animelemtime(37)
value = 183, 0
volumescale = 100
channel = 0

[state 183, Sound]
type = playsnd
trigger1 = !animelemtime(7)
value = 5100, 2
volumescale = 100

[state 183, Sound]
type = playsnd
trigger1 = !animelemtime(9)
value = 3, 6
volumescale = 100

[state 183, Shake]
type = envshake
trigger1 = !animelemtime(7)
trigger2 = !animelemtime(9)
time = 12
ampl = 6
freq = 128

[state 183, Fire Tempest]
type = helper
trigger1 = !animelemtime(9)
name = "Fire Tempest"
ID = 4320
stateno = 4320
postype = p1
ownpal = 1
keyctrl = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 183, Special Effect]
type = assertspecial
trigger1 = animelemtime(1) <= 240
flag = roundnotover

;=========================================================================
; Introductions
;=========================================================================
[Statedef 190]
type = S
movetype = I
physics = S
ctrl = 0
velset = 0, 0
sprpriority = 1

[state 190, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[state 190, End State]
type = changestate
trigger1 = !time
value = 191

;=========================================================================
; Transform
;=========================================================================
[Statedef 191]
type = S
movetype = I
physics = S
ctrl = 0
velset = 0, 0
sprpriority = 1

[state 191, Set Position]
type = posset
trigger1 = !time
y = 0

[state 191, Change Animation]
type = changeanim
trigger1 = !time
value = 191

[state 191, Special Effect]
type = assertspecial
trigger1 = 1
flag = intro

[state 191, Voice]
type = playsnd
trigger1 = !animelemtime(4)
value = 191, 0 + random % 2
volumescale = 100
channel = 0

[state 191, Sound]
type = playsnd
trigger1 = !animelemtime(20)
value = 3, 5
volumescale = 100

[state 191, Suit]
type = helper
trigger1 = animelemtime(24) < 0
trigger1 = !numhelper(4301)
name = "Suit"
ID = 4300
stateno = 4300
postype = p1
ownpal = 1
keyctrl = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 191, Skin]
type = helper
trigger1 = animelemtime(24) < 0
trigger1 = !numhelper(4301)
name = "Skin"
ID = 4301
stateno = 4301
postype = p1
ownpal = 1
keyctrl = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 191, End State]
type = changestate
trigger1 = !animtime
value = 0

;=========================================================================
; Turns
;=========================================================================
[Statedef 4100]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 1

[state 4100, Set Position]
type = posset
trigger1 = !time
y = 0

[state 4100, Camera]
type = helper
trigger1 = !time
name = "Camera"
ID = 4100
stateno = 9990
postype = p1
pos = 0, 0
facing = 1
ownpal = 1
keyctrl = 0

[state 4100, Change Animation]
type = changeanim
trigger1 = !time
value = 42

[state 4100, Special Effect]
type = assertspecial
trigger1 = 1
flag = intro

[state 4100, Vulnerability]
type = nothitby
trigger1 = anim = 42
value = SCA
time = 1

[state 4100, Solidity]
type = playerpush
trigger1 = anim = 42
value = 0

[state 4100, Increment Position]
type = posadd
trigger1 = !time
x = -200.0
y = 0.0

[state 4100, Set Velocity]
type = velset
trigger1 = !time
x = cond(numhelper(stateno), (helper(stateno),pos x - pos x) * facing, 200.0) / 56.0
y = 0.421875 * 28.0 * -1.0

[state 4100, Increment Velocity]
type = veladd
trigger1 = anim = 42
trigger1 = time
y = 0.421875

[state 4100, Change Animation]
type = changeanim
trigger1 = anim = 42 && time
trigger1 = pos y + vel y >= 0
value = 4100

[state 191, State Type Set]
type = statetypeset
trigger1 = anim = 4100
statetype = S
persistent = 0

[state 4100, Sound]
type = playsnd
trigger1 = anim = 4100
value = 52, 0
volumescale = 100
persistent = 0

[state 4110, Voice]
type = playsnd
trigger1 = anim = 4100
trigger1 = !animelemtime(3)
value = 192, 0
volumescale = 100
channel = 0

[state 4100, Set Velocity]
type = velset
trigger1 = anim = 4100
x = 0.0
y = 0.0
persistent = 0

[state 4100, Set Velocity]
type = posset
trigger1 = anim = 4100
x = cond(numhelper(stateno), helper(stateno),pos x, pos x)
y = 0.0
persistent = 0

[state 4100, Land Smoke]
type = helper
trigger1 = anim = 4100
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

[state 4100, Bound]
type = screenbound
trigger1 = anim = 42
value = 0
movecamera = 0, 0

[state 4100, End State]
type = changestate
trigger1 = anim = 4100
trigger1 = !animtime
value = 0

;=========================================================================
; Suit
;=========================================================================
[Statedef 4300]
type = S
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 4

[state 4300, Change Animation]
type = changeanim
trigger1 = !time
trigger2 = animelemno(0) != root,animelemno(0)
trigger2 = root,anim = 191 && root,animelemtime(23) < 0
value = 4300
elem = cond(!time, 1, root,animelemno(0))

[state 4300, Parent Bind]
type = bindtoparent
trigger1 = 1
pos = 0, 0

[state 4300, Suit Particle]
type = helper
trigger1 = !animelemtime(22)
name = "Suit Particle"
ID = 4305
stateno = 4305
postype = p1
ownpal = 0
keyctrl = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 4300, Suit Particle]
type = helper
trigger1 = !animelemtime(22)
name = "Suit Particle"
ID = 4306
stateno = 4305
postype = p1
ownpal = 0
keyctrl = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 4300, Suit Particle]
type = helper
trigger1 = !animelemtime(22)
name = "Suit Particle"
ID = 4307
stateno = 4305
postype = p1
ownpal = 0
keyctrl = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 4300, Suit Particle]
type = helper
trigger1 = !animelemtime(22)
name = "Suit Particle"
ID = 4308
stateno = 4305
postype = p1
ownpal = 0
keyctrl = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 4300, Destroy Helper]
type = destroyself
trigger1 = parent,anim != 191
trigger2 = parent,stateno != 191
trigger3 = !animtime || !root,var(59)

;=========================================================================
; Skin
;=========================================================================
[Statedef 4301]
type = S
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 3

[state 4301, Change Animation]
type = changeanim
trigger1 = !time
trigger2 = animelemno(0) != root,animelemno(0)
trigger2 = root,anim = 191 && root,animelemtime(23) < 0
value = 4301
elem = cond(!time, 1, root,animelemno(0))

[state 4301, Parent Bind]
type = bindtoparent
trigger1 = 1
pos = 0, 0

[state 4301, Destroy Helper]
type = destroyself
trigger1 = parent,anim != 191 || parent,animelemtime(24) >= 0
trigger2 = parent,stateno != 191
trigger3 = !animtime || !root,var(59)

;=========================================================================
; Suit Particle
;=========================================================================
[Statedef 4305]
type = S
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 3

[state 4305, Change Animation]
type = changeanim
trigger1 = !time
value = 4305 + (1 * ishelper(4306)) + (2 * ishelper(4307)) + (3 * ishelper(4308))

[state 4305, Parent Bind]
type = bindtoparent
trigger1 = ishelper(4305)
pos = 24, -152
persistent = 0
[state 4305, Parent Bind]
type = bindtoparent
trigger1 = ishelper(4306)
pos = -72, -120
persistent = 0
[state 4305, Parent Bind]
type = bindtoparent
trigger1 = ishelper(4307)
pos = -32, -72
persistent = 0
[state 4305, Parent Bind]
type = bindtoparent
trigger1 = ishelper(4308)
pos = 24, -48
persistent = 0

[state 4305, Turn]
type = turn
trigger1 = !time
trigger1 = ishelper(4306) || ishelper(4307)

[state 4305, Set Velocity]
type = velset
trigger1 = !time
x = (5.0 * ishelper(4305)) + (3.5 * ishelper(4306)) + (7.0 * ishelper(4307)) + (2.0 * ishelper(4308))
y = (-2.5 * ishelper(4305)) + (-3.0 * ishelper(4306)) + (-3.0 * ishelper(4307)) + (-3.0 * ishelper(4308))

[state 4305, Increment Velocity]
type = veladd
trigger1 = time
x = 0.0 - 0.1375 * (vel x > 1.5)
y = 0.1875

[state 4305, Set Velocity]
type = velset
trigger1 = vel x < 1.5
x = 1.5

[state 4305, Destroy Helper]
type = destroyself
trigger1 = screenpos y > gameheight

;=========================================================================
; Blood Loop
;=========================================================================
[Statedef 4315]
type = S
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 4

[state 4315, Change Animation]
type = changeanim
trigger1 = !time
value = 4315

[state 4315, Change Animation]
type = changeanim
trigger1 = parent,animelemtime(53) < 0
trigger1 = animelemtime(24) >= 0
value = 4315
elem = 8

[state 4315, Change Animation]
type = changeanim
trigger1 = parent,animelemtime(53) >= 0
value = 4315
elem = 25
persistent = 0

[state 4315, Parent Bind]
type = bindtoparent
trigger1 = 1
pos = 0, 0

[state 4315, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 4315, Destroy Helper]
type = destroyself
trigger1 = parent,anim != 170
trigger2 = parent,stateno != 170
trigger3 = !root,var(59)

;=========================================================================
; Fire Tempest Loop
;=========================================================================
[Statedef 4320]
type = S
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 4

[state 4320, Change Animation]
type = changeanim
trigger1 = !time
value = 4320

[state 4320, Parent Bind]
type = bindtoparent
trigger1 = 1
pos = 0, 0

[state 4320, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 4320, Extra Fire]
type = explod
trigger1 = !animelemtime(7)
anim = 4321
ID = 0
postype = p1
pos = 0, -151
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = const(size.xscale), const(size.yscale)
sprpriority = 65536

[state 4320, Extra Fire]
type = explod
trigger1 = !animelemtime(7)
anim = 4321
ID = 0
postype = p1
pos = 0, -199
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = const(size.xscale), const(size.yscale)
sprpriority = 65536

[state 4320, Extra Fire]
type = explod
trigger1 = !animelemtime(7)
anim = 4321
ID = 0
postype = p1
pos = 0, -247
bindtime = -1
removetime = -1
facing = 1
ownpal = 0
scale = const(size.xscale), const(size.yscale)
sprpriority = 65536

[state 4320, Destroy Explod]
type = removeexplod
trigger1 = parent,anim != 183
trigger2 = parent,stateno != 183
trigger3 = !root,var(59)

[state 4320, Destroy Helper]
type = destroyself
trigger1 = parent,anim != 183
trigger2 = parent,stateno != 183
trigger3 = !root,var(59)
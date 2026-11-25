;---------------------------------------------------------------------------
;------------HYPERS---------------------------------------------------------
;-------------------------------------------------------------------------------
;VF: INTRO
[StateDef 3000]
type = U
movetype = A
physics = N
anim = 3000
ctrl = 0
velset = 0,0
juggle  = 5

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = pos y != 0
statetype = A
[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = pos y >= -1
statetype = S
[State 0, StateTypeSet]
type = PosSet
trigger1= vel y > 0
trigger1= pos y > -vel y
y = 0
[State 0, StateTypeSet]
type = VelSet
trigger1= vel y > 0
trigger1= pos y > -vel y
y = 0

[State 3000, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3000, aa]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA
;value2 = S,NA
time = 1
;ignorehitpause = 
;persistent = 


[State 3000, a8] ;Super portrait
type = Explod
trigger1 = !time
anim = 8950
postype = back
pos = 20,30
ownpal = 1
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999
removeongethit = 1
bindtime = -1
sprpriority = -18

[State 3000, a9] ;bgscreen
type = Explod
trigger1 = !time
anim = F9999
ownpal = 1
pos = 0,0
postype = back
;facing = 1
bindtime = -1
supermovetime = 9999
pausemovetime = 9999
sprpriority = -19
scale = 1,1
removeongethit = 1

[State 3000, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH out
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3100, a5] ; SUPER PAUSE
type = SuperPause
trigger1 = !time
darken = 0
anim = F8400
sound = S10, 0
pos = -6, -25
movetime = 40
poweradd = -1000
bindtime = -1
sprpriority = 6
Time = 40
p2defmul = 2
removeongethit = 1

[State 3000, dust]
type = Explod
triggerall = !NumExplod(918)
trigger1 = Time = 0
id= 918
anim = F918
supermove = 1
ontop = 1
removeongethit = 1


[State 3100, sndx]
type = PlaySnd
trigger1 = time = 1
value = 20,14

[state 3100, Energy]
type = BgPalFx
trigger1 = AnimElem = 1
add = 0,0,0
mul = 256,256,256
sinadd = -255,-255,-255,150
time = 33

[State 3100, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = ifelse(statetype=A,3107,3101)

[State 0, PlaySnd]
type = PlaySnd
trigger1 = 1
value = 501,0
volume = 255
channel = -1
lowpriority = -1
freqmul = 1.0
loop = 0
pan = 0
abspan = 0
ignorehitpause = 0
persistent = 0

;----------------
;VF: CHARGE
[StateDef 3101]
type = S
movetype= A
physics = N
juggle  = 15
ctrl = 0
anim = 3011

[State 3101, Velset]
Type = VelSet
trigger1 = Time = 0
x = 9

[State 3000, BGPalfx]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3101, AfterImage]
type = afterimage
trigger1 = !Time
time = 30
length = 6
TimeGap  = 2
FrameGap = 1
Trans = Add1
[State 3000, v]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1

[State 3101, 2]
type = HitDef
trigger1 = !movehit
attr = A, SA
damage = 0, 0
guardflag = HA
pausetime = 0, 0
sparkno = 2
sparkxy = -10, -16
guard.sparkno = -1
hitsound = -1
guardsound = 6, 0
ground.type = High
ground.slidetime = 9
ground.hittime = 9
ground.velocity = 0, 0
air.velocity = 0, 0
p1stateno = 3103
fall = 0
kill = 0

[State 200, 1]
type = PlaySnd
trigger1 = animelem=2
value = 8, 6

[State 200, 1]
type = PlaySnd
trigger1 = animelem= 5
value = 8, 7

[State 0, ]
type = VarRandom
trigger1 = 1
v = 15
range = -10, -65

[State 100, a7]
type = Explod
trigger1 = Time % 7=0
sprpriority = 7
anim = F590
postype = P1
pos = ifelse(random<500,-5,0),ifelse(random<500,-10,-30)
accel = ifelse(random<500,-.1,-.7),0
random = 8,60
removeongethit = 1
ownpal = 1
;bindtime= 1
supermovetime = 9999
pausemovetime = 9999
scale = .5,.5


[State 3101, 9]
Type = ChangeState
;triggerall = Time > 10
Trigger1 = Time = 100
trigger2 = MoveGuarded
value = 101

;-------------------------------------------
;VIXEN FURY
[StateDef 3102]
type = A
physics = A
anim = 101

[State 3102, 2]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

;---------------------------------------
;VF: I'LL BASH YOU GOOD
[Statedef 3103]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 3013
sprpriority = 2

[State 3013, pos]
Type = Posset
trigger1 = Time = 0
y = 0

[State 3200, blind]
type = targetbind
trigger1 = time = 0
pos = 20, 0

[State 3000, 9]
type = afterimage
trigger1 = !Time
time = 125
length = 6
TimeGap  = 2
FrameGap = 1
Trans = Add1

[State 3000, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3000, aa]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1


[State 200, 1]
type = HitDef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 18
trigger3 = AnimElem = 20
attr = S, HA
damage = 5, 0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 0, 8
sparkno = 0
guard.sparkno = -1
sparkxy = -10, -16
hitsound = S2,0
guardsound = 6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = 0
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12
fall = 0
kill = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = 20
value = 500,1
volume = 255
channel = -1
lowpriority = -1
freqmul = 1.0
loop = 0
pan = 0
abspan = 0
ignorehitpause = 0
persistent = 0

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 6
attr = S, HA
damage = 5, 0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 0, 8
sparkno =1
guard.sparkno = -1
sparkxy = -10, -16
hitsound = S2,1
guardsound = 6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = 0
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12
fall = 0
kill = 0

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 9
trigger2 = AnimElem = 27
attr = S, HA
damage = 5, 0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 0, 8
sparkno = 3
guard.sparkno = -1
sparkxy = -10, -16
hitsound = S50,8
guardsound = 6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = 0
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12
fall = 0
kill = 0

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 12
trigger2 = AnimElem = 24
attr = S, HA
damage = 5, 0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 0, 8
sparkno = 2
guard.sparkno = -1
sparkxy = -10, -16
hitsound = S50,7
guardsound = 6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = 0
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12
fall = 0
kill = 0

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 30
attr = S, NA
damage = 80, 20
animtype = Back
guardflag = MA
hitflag = MAF
priority = 6, Hit
pausetime = 2, 15
sparkno = 2
sparkxy = -10, -20
hitsound = S2,2
guardsound = S3,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 12
ground.velocity = 4
guard.velocity = -13
air.velocity = -5
airguard.velocity = -6
p2stateno = 33215

[State 1001, EnvColor]
type = EnvColor
trigger1 = MoveHit
value = 255,255,255
ignorehitpause = 1
under = 1

[State 200, MoveHitReset]
type = MoveHitReset
trigger1 = MoveHit = 1
persistent = 1
ignorehitpause = 1

[State 830, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value =3016
ctrl = 1

;-----------------------------------------------------------------------------
;VF: UP AND ATTEM
[Statedef 3016]
type = S
movetype = A
physics = S
anim = 3014
velset = 0,0
ctrl = 0

[State 3000, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3000, aa]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1


[State 1000, 1]
type = PlaySnd
trigger1 = Time = 1
value =3,1

[State 1000, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value =20,3
channel= 4

[State 1000, 1]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 6
trigger3 = AnimElem = 8
trigger4 = AnimElem = 10
trigger5 = AnimElem = 12
trigger5 = AnimElem = 14
value =50,4
channel= 6

[State 0, HitAdd]
type = HitAdd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 6
trigger3 = AnimElem = 8
trigger4 = AnimElem = 10
trigger5 = AnimElem = 12
trigger6 = AnimElem = 15
trigger7 = AnimElem = 17
trigger8 = AnimElem = 21
trigger9 = AnimElem = 24
value = 1
;ignorehitpause = 
;persistent = 
[State 1000, 1]
type = PlaySnd
trigger1 = AnimElem = 15
trigger2 = AnimElem = 17
value =50,5
channel= 8

[State 810, a]
type = Width
trigger1 = 1
value = 0, 0

[State 1000, dust]
type = Explod
triggerall = !NumExplod(918)
trigger1 = Time = 0
anim = F918
postype = p1
supermove = 1
ontop = 1
removeongethit = 1


[State 1000, blood]
type = Explod
trigger1 = AnimElem = 4
trigger2 = AnimElem = 8
trigger3 = AnimElem = 12
trigger4 = AnimElem = 15
trigger5 = AnimElem = 17
anim = F11
pos= 7,-12
postype = p1
supermove = 1
sprpriority = 2
removeongethit = 1

[State 1000, blood]
type = Explod
trigger1 = AnimElem = 6
trigger2 = AnimElem = 10
trigger3 = AnimElem = 15
trigger4 = AnimElem = 17
anim = F11
facing=-1
pos= -17,-12
postype = p1
supermove = 1
sprpriority = 2
removeongethit = 1

[State 1000, dust]
type = Explod
trigger1 = AnimElem = 4
trigger2 = AnimElem = 8
trigger3 = AnimElem = 12
trigger4 = AnimElem = 15
trigger5 = AnimElem = 17
anim = F0
pos= 5,-12
postype = p1
supermove = 1
sprpriority = 3
removeongethit = 1

[State 1000, dust]
type = Explod
trigger1 = AnimElem = 6
trigger2 = AnimElem = 10
trigger3 = AnimElem = 15
trigger4 = AnimElem = 17
anim = F0
pos= -15,-12
postype = p1
facing=-1
supermove = 1
sprpriority = 3
removeongethit = 1

[State 1000, 1]
type = PlaySnd
trigger1 = AnimElem = 21
trigger2 = AnimElem = 24
trigger3 = AnimElem = 27
value =50,2
channel= 7

[State 1000, 1]
type = PlaySnd
trigger1 = AnimElem = 21
trigger2 = AnimElem = 24
value =2,2
channel= 5

[State 3200, EnvShake]
type = EnvShake
trigger1 = AnimElem = 21
trigger2 = AnimElem = 24
trigger3 = AnimElem = 27
time = 18

[State 1000, blood]
type = Explod
trigger1 = AnimElem = 21
trigger2 = AnimElem = 24
trigger3 = AnimElem = 27
anim = F2
pos= 7,-12
postype = p1
supermove = 1
sprpriority = 2
removeongethit = 1

[State 1000, blood]
type = Explod
trigger1 = AnimElem = 21
trigger2 = AnimElem = 24
trigger3 = AnimElem = 27
anim = F62
pos= 0,0
postype = p1
supermove = 1
ontop =1
removeongethit = 1

[State 1022, a3]
type = TargetLifeadd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 6
trigger3 = AnimElem = 8
trigger4 = AnimElem = 10
trigger5 = AnimElem = 12
trigger6 = AnimElem = 14
value = -7
persistent =1
kill=0
[State 1022, a3]
type = TargetLifeadd
trigger1 = AnimElem = 15
trigger2 = AnimElem = 17
value = -12
persistent =1
kill=0
[State 1022, a3]
type = TargetLifeadd
trigger1 = AnimElem = 21
trigger2 = AnimElem = 24
value = -18
persistent =1
kill=0
[State 1022, a3]
type = TargetLifeadd
trigger1 = AnimElem = 27
value = -18
persistent =1
kill=1

[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 1
pos = 20,0

[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 2
pos = 0,0


[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
trigger3 = AnimElem = 6
trigger4 = AnimElem = 8
trigger5 = AnimElem = 10
trigger6 = AnimElem = 12
pos = 0,0

[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
trigger3 = AnimElem = 7
trigger4 = AnimElem = 9
trigger5 = AnimElem = 11
trigger6 = AnimElem = 13
pos = 0,0

[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 14
trigger2 = AnimElem = 15
trigger3 = AnimElem = 16
trigger4 = AnimElem = 17
trigger5 = AnimElem = 18
trigger6 = AnimElem = 19
pos = 0,0


[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 20
trigger2 = AnimElem = 21
trigger3 = AnimElem = 22
trigger4 = AnimElem = 23
trigger5 = AnimElem = 24
trigger6 = AnimElem = 25
trigger7 = AnimElem = 26
trigger8 = AnimElem = 27
pos = 0,0


[State 210, 2]
type = HitDef
trigger1 = AnimElem = 27
attr = S, NA
damage = 80, 0
animtype = Low
guardflag = MA
hitflag = MAF
priority = 6, Hit
pausetime = 2, 15
sparkno = 3
sparkxy = -10, -16
hitsound = S2,2
guardsound = S3, 0
ground.type = High
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -14
guard.velocity = -8
air.velocity = -14
airguard.velocity = -6
ground.cornerpush.veloff = -5
air.fall = 1
fall.recovertime = 26
kill=1


[State 1410, Invincibility]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

[State 1410, State]
type = sprpriority
trigger1 = 1
value = 4

[State 1410, State]
type = ChangeState
trigger1 = animtime = 0
value = 12
ctrl = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time = 15
value = 500,3
volume = 255
channel = -1
lowpriority = -1
freqmul = 1.0
loop = 0
pan = 0
abspan = 0
ignorehitpause = 0
persistent = 0


[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time = 120
value = 500,2
volume = 255
channel = -1
lowpriority = -1
freqmul = 1.0
loop = 0
pan = 0
abspan = 0
ignorehitpause = 0
persistent = 0

;-----------------------------------------------------------------------------

;----------------
;VF: CHARGE(AIR)
[StateDef 3107]
type = S
movetype= A
physics = N
juggle  = 15
ctrl = 0
anim = 3011

[State 0, Gravity]
type = Veladd
trigger1 = pos y < 0
y = const(movement.yaccel)

[State 3101, Velset]
Type = VelSet
trigger1 = pos y > 0
y = 0
[State 3101, Posset]
Type = Posset
trigger1 = pos y > 0
y = 0

[State 3101, Velset]
Type = VelSet
trigger1 = Time = 0
x = 9

[State 3000, BGPalfx]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3101, AfterImage]
type = afterimage
trigger1 = !Time
time = 30
length = 6
TimeGap  = 2
FrameGap = 1
Trans = Add1
[State 3000, v]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1

[State 3101, 2]
type = HitDef
trigger1 = !movehit
attr = A, SA
damage = 0, 0
guardflag = HA
pausetime = 0, 0
sparkno = 2
sparkxy = -10, -16
guard.sparkno = -1
hitsound = -1
guardsound = 6, 0
ground.type = High
ground.slidetime = 9
ground.hittime = 9
ground.velocity = 0, 0
air.velocity = 0, 0
p1stateno = 3108
fall = 0
kill = 0

[State 200, 1]
type = PlaySnd
trigger1 = animelem=2
value = 8, 6

[State 200, 1]
type = PlaySnd
trigger1 = animelem= 5
value = 8, 7

[State 0, ]
type = VarRandom
trigger1 = 1
v = 15
range = -10, -65

[State 100, a7]
type = Explod
trigger1 = Time % 7=0
sprpriority = 7
anim = F590
postype = P1
pos = ifelse(random<500,-5,0),ifelse(random<500,-10,-30)
accel = ifelse(random<500,-.1,-.7),0
random = 8,60
removeongethit = 1
ownpal = 1
;bindtime= 1
supermovetime = 9999
pausemovetime = 9999
scale = .5,.5


[State 3101, 9]
Type = ChangeState
;triggerall = Time > 10
Trigger1 = Time = 100
trigger2 = MoveGuarded
value = 101


;----------------
;VF: GRAB(Air)
[StateDef 3108]
type = S
movetype= A
physics = N
juggle  = 15
ctrl = 0
anim = 3017
[State 0, VelMul]
type = VelMul
trigger1 = !time
x = .5

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = 3,1
volume = 255
channel = -1
lowpriority = -1
freqmul = 1.0
loop = 0
pan = 0
abspan = 0
ignorehitpause = 0
persistent = 0

[State 0, Gravity]
type = Veladd
trigger1 = 1
y = const(movement.yaccel)

[State 3101, 2]
type = HitDef
trigger1 = !movehit
attr = A, SA
damage = 0, 0
guardflag = HA
pausetime = 0, 0
guard.sparkno = -1
hitsound = -1
guardsound = 6, 0
ground.type = High
ground.slidetime = 9
ground.hittime = 9
ground.velocity = 0, 0
air.velocity = 0, 0
fall = 0
kill = 0
[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
;ignorehitpause = 
;persistent = 


[State 0, TargetBind]
type = TargetBind
trigger1 = movecontact
time = 1
id = -1
pos = 20,0
;ignorehitpause = 
;persistent = 
[State 3101, 9]
Type = ChangeState
trigger1 = pos y >= 0
value = 3103


[Statedef 33215]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0, 0
poweradd = 80

[State 1410, 1]
type = SprPriority
trigger1 = time >= 0
value = -2

[State 850, 1]
type = ChangeAnim2
trigger1 = time = 0
value = 33015

[State 850, 1]
type = screenbound
trigger1 = 1
value = 1

[State 7696, 6]
type = changestate
trigger1 = AnimTime =0
ctrl = 0
value = 5050


;----------------------------------------------------------------------------
; Healing factor
;----------------------------------------------------------------------------
[Statedef 3300]
type    = S
movetype= I
physics = S
ctrl = 0
velset = 0
anim = 3300

[State 3150,PalFX]
type = PalFX
trigger1 = (Time%11) = 0
trigger1 = Time = [28,120]
add = 250,250,250
time = 1
ignorehitpause = 1

[State 3000, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3000, aa]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1

[State 3000, a8] ;Super portrait
type = Explod
trigger1 = !time
anim = 8950
postype = back
pos = 20,30
ownpal = 1
ignorehitpause = 1
sprpriority = -1
supermovetime = 9999
pausemovetime = 9999
removeongethit = 1
bindtime = -1
sprpriority = -28

[State 3000, a9] ;bgscreen
type = Explod
trigger1 = !time
anim = F9999
ownpal = 1
pos = 0,0
postype = back
;facing = 1
bindtime = -1
supermovetime = 9999
pausemovetime = 9999
sprpriority = -39
scale = 1,1
removeongethit = 1

[State 3000, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH out
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3100, a5] ; SUPER PAUSE
type = SuperPause
trigger1 = !time
darken = 0
anim = F8400
sound = S10, 0
pos = -6, -25
movetime = 40
poweradd = -1000
bindtime = -1
sprpriority = 6
Time = 40
p2defmul = 2
removeongethit = 1


[State 3000, dust]
type = Explod
triggerall = !NumExplod(918)
trigger1 = Time = 0
id= 918
anim = F918
supermove = 1
ontop = 1
removeongethit = 1

[State 3300,Explod]
type = Explod
triggerall = !NumExplod(8690)
trigger1 = animelem = 5
anim = F8690
id = 8690
postype = p1
pos = 0,7
sprpriority = -2
supermove = 1
ontop=1
bindtime = -1
removetime = 99
removeongethit = 1
pausemovetime = -1
ownpal = 1

[State 3300,Explod]
type = Explod
triggerall = !NumExplod(8695)
trigger1 = animelem = 5
anim = F8695
id = 8695
postype = p1
pos = -5,0
sprpriority = 2
supermove = 1
bindtime = -1
ontop=1
removetime = 99
removeongethit = 1
pausemovetime = -1
ownpal = 1

[State 3300,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 12
trigger3 = AnimElem = 20
volume = 200
value = 50,12

[State 3300,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
volume = 200
value = 20, 0
channel= 8

[State 3300,lifeAdd]
type = lifeAdd
triggerall = time > 56 && time < 158
trigger1 = 1
value =  3

[State 3300,lifeAdd]
type = lifeAdd
trigger1 = animelem = 5
value =  45

[State 3300,ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------------
; Speed Up
;----------------------------------------------------------------------------
[Statedef 3400]
type = S
physics = N
movetype = A
velset = 0, 0
anim = 3400
sprpriority = 1
ctrl = 0

[State 3400,AfterImage]
type = AfterImage
trigger1 = time = 41
time = 50
TimeGap  = 1
FrameGap = 4
length = 15
PalBright   = 0,0,0
PalContrast = 255,255,255
PalMul      = .8,.8,.8

[State 3000, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3000, aa]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1

[State 3000, a8] ;Super portrait
type = Explod
trigger1 = !time
anim = 8950
postype = back
pos = 20,30
ownpal = 1
ignorehitpause = 1
sprpriority = -1
supermovetime = 9999
pausemovetime = 9999
removeongethit = 1
bindtime = -1
sprpriority = -28

[State 3000, a9] ;bgscreen
type = Explod
trigger1 = !time
anim = F9999
ownpal = 1
pos = 0,0
postype = back
;facing = 1
bindtime = -1
supermovetime = 9999
pausemovetime = 9999
sprpriority = -39
scale = 1,1
removeongethit = 1

[State 3000, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH out
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3100, a5] ; SUPER PAUSE
type = SuperPause
trigger1 = !time
darken = 0
anim = F8400
sound = S10, 0
pos = -6, -25
movetime = 40
poweradd = -1000
bindtime = -1
sprpriority = 6
Time = 40
p2defmul = 2
removeongethit = 1

[State 3000, snd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 20,1
channel=6

[State 3000, dust]
type = Explod
triggerall = !NumExplod(918)
trigger1 = Time = 0
id= 918
anim = F918
supermove = 1
ontop = 1
removeongethit = 1

[State 3400,PlaySnd]
type = null;PlaySnd
trigger1 = AnimElem = 2
value = 50, 6

[State 3400,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 20, 6

[State 3400,NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA, NT,ST,HT
time = 3

[State 3400,HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
animtype  = Heavy
damage    = 50
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = 1,1
sparkno = 2
sparkxy = -20,-25
hitsound = S50,6
guardsound = S3,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -10,-4
air.velocity = -10,-4
fall = 1
air.fall = 1

[State 3400,VarSet]
type = VarSet
trigger1 = 1
;trigger1 = AnimTime = 0
var(35) = 0

[State 3400,VarSet]
type = VarSet
trigger1 = Time = 55
var(11) = 1

[State 3400,Helper]
type = Helper
triggerall = !var(11)
trigger1 = Time = 54
name = "Vixen Speed Up"
postype = p1
id = 1
pos = 0,0
stateno = 3401
ownpal = 1

[State 3400,ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = 1
value = 500,4
volume = 255
channel = -1
lowpriority = -1
freqmul = 1.0
loop = 0
pan = 0
abspan = 0
ignorehitpause = 0
persistent = 0

;----------------------------
; Helper de Tiempo
[Statedef 3401]
type = S
movetype = I
physics = N
velset = 0, 0
anim = 0123

[State 3401,AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State 3401,BindToParent]
type = BindToParent
trigger1 = 1
pos = ifelse(parent, facing = 1, 0,0),-7
ignorehitpause = 1

[State 3401,Explod]
type = Explod
trigger1 = 1 && root, TeamSide = 1
trigger1 = time = 0
ID = 56
anim = 6061
postype = left
pos = 5,215
bindtime = -1
removetime = -1
sprpriority = 3
ownpal = 1

[State 3401,Explod]
type = Explod
trigger1 = 1 && root, TeamSide = 2
trigger1 = time = 0
ID = 56
anim = 6061
postype = left
pos = 252,215
facing = 1
bindtime = -1
removetime = -1
sprpriority = 3
ownpal = 1

[State 3401,Explod]
type = Explod
trigger1 = 1 && root, TeamSide = 1
trigger1 = time = 0
ID = 56
anim = 6060
postype = left
pos = 5,220
bindtime = -1
removetime = -1
sprpriority = 2
ownpal = 1

[State 3401,Explod]
type = Explod
trigger1 = 1 && root, TeamSide = 2
trigger1 = time = 0
ID = 56
anim = 6060
postype = left
pos = 315,220
facing = -1
bindtime = -1
removetime = -1
sprpriority = 2
ownpal = 1

[State 3401,Explod]
type = Explod
trigger1 = 1 && root, TeamSide = 1
trigger1 = time = 14
ID = 56
anim = 11120
postype = left
pos = 5,220
bindtime = -1
removetime = 678
sprpriority = 1
ownpal = 1

[State 3401,Explod]
type = Explod
trigger1 = 1 && root, TeamSide = 2
trigger1 = time = 14
ID = 56
anim = 11120
postype = left
pos = 315,220
facing = -1
bindtime = -1
removetime = 678
sprpriority = 1
ownpal = 1

[State 3401,RemoveExplod]
type = RemoveExplod
trigger1 = parent, var(35) >= 700
ID = 56
ignorehitpause = 1

[State 3401,DestroySelf]
type = DestroySelf
triggerall = NumExplod(56) = 0
trigger1 = parent, var(35) >= 700
ignorehitpause = 1


;---------------------------------------------------------------------------
; Shun Goku Satsu - Startup
[Statedef 4000]
type = S
movetype = I
physics = N
ctrl = 0
velset = 0,0
anim = 4000

[State 4000, PowerAdd]
type = PowerAdd
trigger1 = time = 0
value = -3000

[State 4000, SuperPause]
type = SuperPause
trigger1 = time = 0
time = 50
anim = 102
sound = 20,0
pos = 0,-20
move = 1
darken = 1

[State 4000, ChangeState]
type = ChangeState
trigger1 = Time = 1
value = 4001
ctrl = 0

;---------------------------------------------------------------------------
; Shun Goku Satsu - Glide
[Statedef 4001]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0,0
anim = 4001

[State 4001, AfterImage]
type = AfterImage
trigger1 = time = 0
time = -1
framegap = 6

[State 4001, AfterImage]
type = AfterImage
trigger1 = Time = 30
time = 0

[State 4001, VelSet]
type = VelSet
trigger1 = 1
x = 5

[State 4001, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 4001, AssertSpecial]
type = AssertSpecial
trigger1 = time > 0
flag = unguardable

[State 4001, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S4000,0

[State 4001, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,HT
hitflag = MAF
guardflag = MA
p1stateno = 4002
p2stateno = 4003
p2facing = 1
priority = 1,Miss
numhits = 0

[State 4001, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Shun Goku Satsu - Attack
[Statedef 4002]
type = S
movetype = I
physics = N
ctrl = 0
velset = 0,0
anim = 4002

[State 4002, TargetBind]
type = TargetBind
trigger1 = time = 0
pos = 30,0

[State 4002, AfterImage]
type = AfterImage
trigger1 = Time = 30
time = 1

[State 4002, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S4000,2

[State 4002, Fade to Black]
type=allpalfx
trigger1= AnimElem = 3
time=30
sinadd=-255,-255,-255,120

[State 4002, Blackout]
type=envcolor
trigger1 = AnimElemTime(4) > 0 && AnimElemTime(22) < 0
time=4
value=0,0,0

[State 4002, AssertSpecial]
type = AssertSpecial
trigger1 = AnimElemTime(4) > 0 && AnimElemTime(22) < 0
flag = nobardisplay

[State 4002, Super Sparks]
type = Explod
trigger1 = AnimElem =  4,=0 || AnimElem =  5,=0 || AnimElem =  6,=0
trigger2 = AnimElem =  7,=0 || AnimElem =  8,=0 || AnimElem =  9,=0
trigger3 = AnimElem = 10,=0 || AnimElem = 11,=0 || AnimElem = 12,=0
trigger4 = AnimElem = 13,=0 || AnimElem = 14,=0 || AnimElem = 15,=0
trigger5 = AnimElem = 16,=0 || AnimElem = 17,=0 || AnimElem = 18,=0
trigger6 = AnimElem = 19,=0 || AnimElem = 20,=0 || AnimElem = 21,=0
trigger7 = AnimElem = 22,=0
ID = 2006
sprpriority = 5
facing = 1
pos =0, -48
random=60,60
postype = P2
anim = F3
ontop = 1
ignorehitpause = 1

[State 4002, HitAdd]
type = HitAdd
trigger1 = AnimElem =  4,=0 || AnimElem =  5,=0 || AnimElem =  6,=0
trigger2 = AnimElem =  7,=0 || AnimElem =  8,=0 || AnimElem =  9,=0
trigger3 = AnimElem = 10,=0 || AnimElem = 11,=0 || AnimElem = 12,=0
trigger4 = AnimElem = 13,=0 || AnimElem = 14,=0 || AnimElem = 15,=0
trigger5 = AnimElem = 16,=0 || AnimElem = 17,=0 || AnimElem = 18,=0
trigger6 = AnimElem = 19,=0 || AnimElem = 20,=0 || AnimElem = 21,=0
trigger7 = AnimElem = 22,=0
value = 1

[State 4002,PlaySnd]
type = PlaySnd
trigger1 = AnimElem =  4,=0 || AnimElem =  5,=0 || AnimElem =  6,=0
trigger2 = AnimElem =  7,=0 || AnimElem =  8,=0 || AnimElem =  9,=0
trigger3 = AnimElem = 10,=0 || AnimElem = 11,=0 || AnimElem = 12,=0
trigger4 = AnimElem = 13,=0 || AnimElem = 14,=0 || AnimElem = 15,=0
trigger5 = AnimElem = 16,=0 || AnimElem = 17,=0 || AnimElem = 18,=0
trigger6 = AnimElem = 19,=0 || AnimElem = 20,=0 || AnimElem = 21,=0
trigger7 = AnimElem = 22,=0
value = F5,4

[State 4002,TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem =  4,=0 || AnimElem =  5,=0 || AnimElem =  6,=0
trigger2 = AnimElem =  7,=0 || AnimElem =  8,=0 || AnimElem =  9,=0
trigger3 = AnimElem = 10,=0 || AnimElem = 11,=0 || AnimElem = 12,=0
trigger4 = AnimElem = 13,=0 || AnimElem = 14,=0 || AnimElem = 15,=0
trigger5 = AnimElem = 16,=0 || AnimElem = 17,=0 || AnimElem = 18,=0
trigger6 = AnimElem = 19,=0 || AnimElem = 20,=0 || AnimElem = 21,=0
value = -35
kill = 0

[State 4002,TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 22,=0
value = -75

[State 4002, AssertSpecial]
type = AssertSpecial
trigger1 = time > 0
flag = nokoslow

[State 4002, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 4004
ctrl = 0

;---------------------------------------------------------------------------
; End
[Statedef 4004]
type = S
movetype = I
physics = N
ctrl = 0
velset = 0,0
anim = 4005

[State 4004, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S3000,0

[State 4004, Playsnd]
type = PlaySnd
trigger1 = WinKO
trigger1 = time = 0
value = S4000, 3

[State 4004, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Custom State
[Statedef 4003]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0,0

[State 4003, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 4003

[State 4003, PosAdd]
type = PosAdd
trigger1 = pos y < 0
y = 5

[State 4003, PosSet]
type = PosSet
trigger1 = pos y > 0
y = 0

[State 4003, ChangeState]
type = ChangeState
trigger1 = Time = 195
trigger1 = Alive
value = 4005
ctrl = 0

[State 0, SelfState]
type = SelfState
trigger1 = Time = 195
trigger1 = !Alive
value = 5150

;---------------------------------------------------------------------------
; Liedown
[Statedef 4005]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0,0

[State 4005, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 4004

[State 4005, ChangeState]
type = SelfState
trigger1 = AnimTime = 0 && life != 0
value = 5120
ctrl = 0

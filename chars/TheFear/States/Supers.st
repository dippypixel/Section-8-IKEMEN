;--- SUPERS ---
;States 2500 - 3499
;Reserved for Super Attacks.
;Examples, Ryu's Shinkku Hadouken, or Shin Shoryuken. Terry Bogard's Power Geyser, or Buster Wolf.

;---------------------------------------------------------------------------
; Japanese Fucking Weapon
[Statedef 3000]
type = S
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 3000
poweradd = -1000
sprpriority = 2
facep2 = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = !time
time = 30
anim = -1
sound = s3000,0
darken = 0
p2defmul = 1
unhittable = 1

[State 3000, Helper]
type = Helper
trigger1 = !time
stateno = 4000
ID = 4000
pos = -8,-60
postype = p1
ownpal = 1
pausemovetime = 99999
supermovetime = 99999

[State 3000, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(7) < 0
value = SCA
ignorehitpause = 1

[State 3000, AfterImage]
type = AfterImage
trigger1 = !time
time = 20
length = 8
palbright = 0,0,0
palcontrast = 128,128,128
paladd = 0,0,0
palmul = 1,1,1
framegap = 3
trans = Add1

[State 3000, VelSet]
type = VelSet
trigger1 = !time
x = 3.5

[State 3000, VelSet]
type = VelSet
trigger1 = AnimElem = 7
x = 0

[State 3000, Width]
type = Width
trigger1 = (AnimElemTime(1) >= 0) && (AnimElemTime(7) < 0)
value = 30,0

[State 3000, HitDef]
type = HitDef
trigger1 = !time
attr = S, HA
damage = ceil(220*fvar(11)),60
animtype = Heavy
hitflag = MAF
guardflag = MA
pausetime = 20,20
sparkno = s6007
guard.sparkno = s6003
sparkxy = -20,-66
hitsound = s3000,2
guardsound = s0,5
ground.type = High
ground.slidetime = 35
ground.hittime = 35
ground.velocity = -5,-3.5
guard.velocity = -8.0
air.type = High
air.velocity = -5,-3.5
air.hittime = 35
fall = 1
fall.recover = 0
yaccel = 0.5
envshake.time = 20
envshake.ampl = 8
getpower = 0,0
givepower = 0,0

[State 3000, Damage Dampen]
type = VarSet
trigger1 = movehit
fvar(10) = fvar(10)*0.925
ignorehitpause = 1
persistent = 0

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = !AnimElemTime(6)
value = s1100,0

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = !time
value = s3000,1
channel = 0

[State 3000, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Cleaning Blaster
[Statedef 3100]
type = S
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 3100
poweradd = -1000
sprpriority = 2
facep2 = 1

[State 3100, SuperPause]
type = SuperPause
trigger1 = !time
time = 30
anim = -1
sound = s3000,0
darken = 0
p2defmul = 1
unhittable = 1

[State 3100, Helper]
type = Helper
trigger1 = !time
stateno = 4000
ID = 4000
pos = -4,-60
postype = p1
ownpal = 1
pausemovetime = 99999
supermovetime = 99999

[State 3100, Helper]
type = Helper
trigger1 = AnimElemTime(4) = 4
helpertype = Normal
stateno = 3101
ID = 3101
pos = 0,0
postype = p1
ownpal = 1
ignorehitpause = 1

[State 3100, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(4) < 0
value = SCA
ignorehitpause = 1

[State 3100, VelSet]
type = VelSet
trigger1 = AnimElem = 5
x = -3

[State 3100, VelSet]
type = VelSet
trigger1 = AnimElem = 8
x = -1

[State 3100, VelSet]
type = VelSet
trigger1 = AnimElem = 9
x = 0

[State 3100, Explod]
type = Explod
trigger1 = time = 15
anim = 3102
ID = 3102
pos = 302,-64
postype = p1
ownpal = 1
scale = 2.0,1.0
sprpriority = 10
removeongethit = 1

[State 3100, Explod]
type = Explod
trigger1 = AnimElem = 4
anim = 3103
ID = 3103
pos = 50,-82
postype = p1
ownpal = 1
sprpriority = 10
removeongethit = 1

[State 3100, PlaySnd]
type = PlaySnd
trigger1 = !AnimElemTime(4)
value = s3100,0
channel = 1

[State 3100, PlaySnd]
type = PlaySnd
trigger1 = !AnimElemTime(5)
value = s3100,1
channel = 1

[State 3100, PlaySnd]
type = PlaySnd
trigger1 = !time
value = s3100,2+random%2
channel = 0

[State 3100, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Hit
[Statedef 3101]
type = A
movetype = A
physics = N
ctrl = 0
sprpriority = 3

[State 3101, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 3101
value = 3101

[State 3101, HitDef]
type = HitDef
trigger1 = time%2 = 0
attr = A, HP
damage = ceil(4*root,fvar(11)),1
animtype = Heavy
hitflag = MAF
guardflag = MA
pausetime = 0,4
sparkno = -1
guard.sparkno = -1
hitsound = -1
guardsound = -1
ground.type = High
ground.slidetime = 35
ground.hittime = 35
ground.velocity = -6,-5
guard.velocity = -10.0
air.type = High
air.velocity = -6,-5
air.hittime = 35
fall = 1
fall.recover = 0
getpower = 0,0
givepower = 0,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
palfx.time = 40
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10

[State 3101, Damage Dampen]
type = ParentVarSet
trigger1 = movehit
fvar(10) = root,fvar(10)*0.925
ignorehitpause = 1
persistent = 0

[State 3101, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = parent,movetype = H
ignorehitpause = 1

;---------------------------------------------------------------------------
; Extreme Fireworks
[Statedef 3200]
type = S
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 3200
poweradd = -2000
sprpriority = 2
facep2 = 1

[State 3200, SuperPause]
type = SuperPause
trigger1 = !time
time = 30
anim = -1
sound = s3200,0
darken = 0
p2defmul = 1
unhittable = 1

[State 3200, Helper]
type = Helper
trigger1 = !time
stateno = 4001
ID = 4001
pos = -3,-60
postype = p1
ownpal = 1
pausemovetime = 99999
supermovetime = 99999

[State 3200, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(7) < 0
value = SCA
ignorehitpause = 1

[State 3200, AfterImage]
type = AfterImage
trigger1 = !time
time = 2
length = 8
palbright = 0,0,0
palcontrast = 128,128,128
paladd = 0,0,0
palmul = 1,1,1
framegap = 3
trans = Add1
ignorehitpause = 1

[State 3200, AfterImageTime]
type = AfterImageTime
trigger1 = AnimElemTime(2) >= 0
time = 2
ignorehitpause = 1

[State 3200, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 2
statetype = A
physics = N

[State 3200, VelSet]
type = VelSet
trigger1 = AnimElemTime(2) >= 0 && P2Dist X > 0
x = ((p2dist x*4)/100)

[State 3200, VelSet]
type = VelSet
trigger1 = AnimElem = 2
y = -9

[State 3200, Gravity]
type = Gravity
trigger1 = StateType = A

[State 3200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = s3200,1
channel = 0

[State 3200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = s50,0

[State 3200, HitDef]
type = HitDef
triggerall = !movecontact && !movereversed
trigger1 = animelemtime(7) >= 0
attr = A, HA
damage = 0,0
animtype = Heavy
ground.type = High
air.type = High
hitflag = MAF
guardflag = H
pausetime = 8,8
sparkno = s6001
guard.sparkno = s6002
sparkxy = -10,-56
hitsound = s0,2
guardsound = s0,5
ground.slidetime = 20
ground.hittime = 20
air.hittime = 20
ground.velocity = 0,0
guard.velocity = -5.0
air.velocity = 0,0
getpower = 0,0
givepower = 0,0
kill = 0
p2facing = 1
ID = 3200

[State 3200, TargetBind]
type = TargetBind
triggerall = numtarget(3200)
trigger1 = movehit = 1
trigger1 = !(target(3200), ishelper)
trigger1 = floor(target(3200),pos x-pos x)*facing < 0
pos = 0,ceil(-pos y)
ignorehitpause = 1

[State 3200, TargetState]
type = TargetState
triggerall = numtarget(3200)
trigger1 = movehit = 1
trigger1 = !(target(3200), ishelper)
value = 3210
ID = 3200
ignorehitpause = 1

[State 3200, ChangeState]
type = ChangeState
triggerall = numtarget(3200)
trigger1 = movehit
value = 3202
ignorehitpause = 1
persistent = 0

[State 3200, Idle]
type = statetypeset
trigger1 = movecontact || movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State 3200, ChangeState]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y > -Vel Y
value = 3201

;---------------------------------------------------------------------------
; Landing
[Statedef 3201]
type = S
movetype = I
physics = S
ctrl = 0
anim = 3201

[State 3201, PosSet]
type = PosSet
trigger1 = !time
y = 0

[State 3201, VelSet]
type = VelSet
trigger1 = !time
y = 0

[State 3201, PlaySnd]
type = PlaySnd
trigger1 = !time
value = s52,0

[State 3201, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Extreme Fireworks - Success
[Statedef 3202]
type = U
movetype = A
physics = N
ctrl = 0
sprpriority = 2

[State 3202, AfterImage]
type = AfterImage
trigger1 = !time
time = 999
length = 8
palbright = 0,0,0
palcontrast = 128,128,128
paladd = 0,0,0
palmul = 1,1,1
framegap = 3
trans = Add1
ignorehitpause = 1

[State 3202, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1

[State 3202, Gravity]
type = Gravity
trigger1 = StateType = A

[State 3202, ChangeAnim]
type = ChangeAnim
trigger1 = Vel Y > 0
trigger1 = Pos Y > -Vel Y
value = 3201
persistent = 0

[State 3202, StateTypeSet]
type = StateTypeSet
trigger1 = anim = 3201
statetype = S

[State 3202, PosSet]
type = PosSet
trigger1 = anim = 3201
y = 0

[State 3202, VelSet]
type = VelSet
trigger1 = anim = 3201
y = 0

[State 3202, VelSet]
type = VelSet
trigger1 = anim = 3201
trigger1 = animelem = 2
x = 0

[State 3202, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 3201 && AnimTime = 0
value = 3202

[State 3202, PlaySnd]
type = PlaySnd
trigger1 = Anim = 3202
trigger1 = AnimElemTime(1) = 20
value = s3200,2
channel = 0

[State 3202, PlaySnd]
type = PlaySnd
trigger1 = Anim = 3202
trigger1 = AnimElem = 4
value = s1200,0

[State 3202, PlaySnd]
type = PlaySnd
trigger1 = Anim = 3202
trigger1 = AnimElem = 4
value = s1100,3

[State 3202, PlaySnd]
type = PlaySnd
trigger1 = Anim = 3202
trigger1 = AnimElem = 18
value = s3200,3
channel = 0

[State 3202, Explod]
type = Explod
trigger1 = Anim = 3202
trigger1 = AnimElem = 4
anim = 3215
ID = 3215
pos = 24,0
postype = p1
ownpal = 1
sprpriority = 5

[State 3202, Explod]
type = Explod
trigger1 = Anim = 3202
trigger1 = AnimElem = 4
anim = 6006+(random%2)
pos = ceil(p2dist x),-112
postype = p1
ownpal = 1
ontop = 1

[State 3202, TargetState]
type = TargetState
trigger1 = Anim = 3202
trigger1 = AnimElem = 4
value = 3211
ID = 3200

[State 3202, TargetState]
type = TargetState
trigger1 = Anim = 3202
trigger1 = AnimElem = 14
value = 3212
ID = 3200

[State 3202, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 3202 && AnimTime = 0
value = 3203

[State 3202, Helper]
type = Helper
trigger1 = Anim = 3203
trigger1 = AnimElem = 1 || AnimElem = 5 || AnimElem = 9
stateno = 3203
ID = 3202
pos = ceil(p2dist x),ceil(p2dist y-56)
postype = p1
ownpal = 1

[State 3202, Explod]
type = Explod
trigger1 = Anim = 3203
trigger1 = AnimElem = 1 || AnimElem = 5 || AnimElem = 9
anim = 6000+(AnimElem = 9)
pos = ceil(p2dist x),ceil(p2dist y-64)
postype = p1
ownpal = 1
ontop = 1

[State 3202, PlaySnd]
type = PlaySnd
trigger1 = Anim = 3203
trigger1 = AnimElem = 1 || AnimElem = 5
value = s0,4

[State 3202, PlaySnd]
type = PlaySnd
trigger1 = Anim = 3203
trigger1 = AnimElem = 9
value = s3000,2

[State 3202, EnvShake]
type = EnvShake
trigger1 = Anim = 3203
trigger1 = AnimElem = 9
time = 16
freq = 160
ampl = -4

[State 3202, TargetState]
type = TargetState
trigger1 = Anim = 3203
trigger1 = AnimElem = 1 || AnimElem = 5 || AnimElem = 9
value = 3213
ID = 3200

[State 3202, HitAdd]
type = HitAdd
trigger1 = Anim = 3202
trigger1 = AnimElem = 4
trigger2 = Anim = 3203
trigger2 = AnimElem = 1 || AnimElem = 5 || AnimElem = 9
value = numtarget

[State 3202, TargetLifeAdd]
type = TargetLifeAdd
triggerall = numtarget
trigger1 = Anim = 3203
trigger1 = AnimElem = 1 || AnimElem = 5 || AnimElem = 9
value = -ceil(176*fvar(11))
kill = (AnimElem = 9)
ignorehitpause = 1

[State 3202, Damage Dampen]
type = VarSet
trigger1 = Anim = 3203
trigger1 = AnimElem = 1 || AnimElem = 5 || AnimElem = 9
fvar(10) = fvar(10)*0.95
ignorehitpause = 1
persistent = 0

[State 3203, PlaySnd]
type = PlaySnd
trigger1 = Anim = 3203
trigger1 = AnimElem = 1 || AnimElem = 5 || AnimElem = 9
value = s3100,1

[State 3202, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 3203 && AnimTime = 0
value = 3204

[State 3202, ChangeState]
type = ChangeState
trigger1 = Anim = 3204 && AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Extreme Fireworks - Explosion
[Statedef 3203]
type = A
movetype = I
physics = N
ctrl = 0
anim = 3216
sprpriority = 5

[State 3203, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 3203, EnvColor]
type = EnvColor
trigger1 = !time
value = 0,0,0
time = 2
under = 1

[State 3203, EnvColor]
type = EnvColor
trigger1 = time = 3
value = 255,255,255
time = 2
under = 1

[State 3203, VelSet]
type = VelSet
trigger1 = animelem = 2
y = -0.50

[State 3203, DestroySelf]
type = DestroySelf
triggerall = ishelper
trigger1 = !animtime

;---------------------------------------------------------------------------
; Extreme Fireworks - P2 - 1
[Statedef 3210]
type = A
movetype = H
physics = N
velset = 0,0

[State 3210, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1

[State 3210, HitFallSet]
type = HitFallSet
trigger1 = !time
value = 0

[State 3210, Offset]
type = Offset
trigger1 = 1
x = time%2

[State 3210, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = 5002

[State 3210, SelfState]
type = SelfState
trigger1 = Time >= 300
value = 5050

;---------------------------------------------------------------------------
; Extreme Fireworks - P2 - 2
[Statedef 3211]
type = A
movetype = H
physics = N
velset = 0,-8.0

[State 3211, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1

[State 3211, ChangeAnim2]
type = ChangeAnim
trigger1 = !time
value = 5051-!(selfanimexist(5051))

[State 3211, ScreenBound]
type = ScreenBound
trigger1 = anim = [5050,5051]
value = 1
movecamera = 1,0
ignorehitpause = 1

[State 3211, VelSet]
type = VelSet
trigger1 = anim = [5050,5051]
trigger1 = vel y + screenpos y <= -360
y = 0
ignorehitpause = 1

[State 3211, SelfState]
type = SelfState
trigger1 = Time >= 300
value = 5050

;---------------------------------------------------------------------------
; Extreme Fireworks - P2 - 3
[Statedef 3212]
type = A
movetype = H
physics = N
velset = 0,8.0

[State 3212, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1

[State 3212, ChangeAnim2]
type = ChangeAnim2
trigger1 = !time
value = 3211

[State 3212, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0
ignorehitpause = 1

[State 3212, SelfState]
type = SelfState
trigger1 = Time >= 300
value = 5050

;---------------------------------------------------------------------------
; Extreme Fireworks - P2 - 3
[Statedef 3213]
type = A
movetype = H
physics = N
velset = -1.50,-6

[State 3213, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1

[State 3213, ChangeAnim]
type = ChangeAnim
trigger1 = !time
value = 5030

[State 3213, Offset]
type = Offset
trigger1 = time <= 6
x = time%2

[State 3213, PosFreeze]
type = PosFreeze
trigger1 = time <= 6

[State 3213, ChangeAnim]
type = ChangeAnim
trigger1 = time <= 6
value = 5030
elem = animelemno(0)

[State 3213, ChangeAnim]
type = changeanim
trigger1 = time >= 7
trigger1 = Anim = 5030 && AnimTime = 0
value = ifelse(SelfAnimExist(5035), 5035, 5050)

[State 3213, ChangeAnim]
type = ChangeAnim
trigger1 = time >= 7
trigger1 = Anim = 5035 && AnimTime = 0
value = 5050

[State 3213, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0
ignorehitpause = 1

[State 3213, VelAdd]
type = VelAdd
trigger1 = time >= 7
y = 0.45

[State 3213, ChangeState]
type = ChangeState
trigger1 = Time >= 7
trigger1 = (Pos Y + Vel Y >= 0)
value = 3214

[State 3213, SelfState]
type = SelfState
trigger1 = Time >= 300
value = 5050

;---------------------------------------------------------------------------
; Extreme Fireworks - P2 - 4
[Statedef 3214]
type = L
movetype = H
physics = N
velset = 0,0

[State 3214, ChangeAnim]
type = ChangeAnim
trigger1 = !time
value = 5100

[State 3214, EnvShake]
type = EnvShake
trigger1 = !time
time = 8
freq = 120
ampl = -3

[State 3214, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 5100 && AnimTime = 0
value = 5110

[State 3214, PosSet]
type = PosSet
trigger1 = !time
y = 0

[State 3214, SelfState]
type = SelfState
triggerall = Alive
triggerall = Anim = 5110
trigger1 = Time >= 128
value = 5120
ctrl = 0

[State 3214, SelfState]
type = SelfState
triggerall = !Alive
triggerall = Anim = 5110
trigger1 = Time >= 4
value = 5150
ctrl = 0

[State 3214, VarSet]
type = VarSet
trigger1 = 1
sysvar(0) = 1

;---------------------------------------------------------------------------
; SuperPause Helper
[Statedef 4000]
ctrl = 0
anim = 99999

[State 4000, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = nobg
flag3 = nofg
ignorehitpause = 1

[State 4000, Explod]
type = Explod
trigger1 = time = 5
anim = 6100
ID = 6100
pos = 0,0
postype = p1
ownpal = 1
sprpriority = -10
bindtime = -1
pausemovetime = 99999
supermovetime = 99999

[State 4000, Explod]
type = Explod
trigger1 = time = 13
anim = 6101
ID = 6101
pos = 0,0
postype = p1
ownpal = 1
sprpriority = 10
bindtime = -1
pausemovetime = 99999
supermovetime = 99999

[State 4000, EnvColor]
type = EnvColor
trigger1 = !time
time = 4
value = 255,255,255
under = 1
persistent = 0
ignorehitpause = 1

[State 4000, DestroySelf]
type = DestroySelf
trigger1 = time = 30
ignorehitpause = 1

;---------------------------------------------------------------------------
; SuperPause Helper 2
[Statedef 4001]
ctrl = 0
anim = 99999

[State 4001, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = nobg
flag3 = nofg
ignorehitpause = 1

[State 4001, Explod]
type = Explod
trigger1 = time = 5
anim = 6102
ID = 6102
pos = 0,0
postype = p1
ownpal = 1
sprpriority = -10
bindtime = -1
pausemovetime = 99999
supermovetime = 99999

[State 4001, Explod]
type = Explod
trigger1 = time = 13
anim = 6103
ID = 6103
pos = 0,0
postype = p1
ownpal = 1
sprpriority = 10
bindtime = -1
pausemovetime = 99999
supermovetime = 99999

[State 4001, EnvColor]
type = EnvColor
trigger1 = !time
time = 4
value = 255,255,255
under = 1
persistent = 0
ignorehitpause = 1

[State 4001, DestroySelf]
type = DestroySelf
trigger1 = time = 30
ignorehitpause = 1
; _________________________________________
;| Character by JStudios2k, Edited from Cattigan619 and MGSSJ2                |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;========================================<SUPER MOVES>========================================
;==============================================================================================

;---------------------------------------------------------------------------
;The Fridge
[Statedef 3000]
type=S
physics=N
movetype=A
ctrl=0
velset=0,0
sprpriority=1
poweradd=-1000
facep2=1

[State 3000, Anim]
type=changeanim
trigger1=!time
value=3000

[state 3000,Posset]
type=posset
trigger1=!time
y=0

[State 3000, Portrait]
type = VarSet
trigger1 = !Time
var(1) = 2

[State 3000, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "x" || command = "rlsx"), 0, ifElse((command = "y" || command = "rlsy"), 1, 2))

[State 3000, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 3000, Super Cancel Flag]
type = varset
trigger1 = !time
var(21) = ((prevstateno = [1000, 2999]) && var(7)) || var(20)

[State 3000, Hyper Cancel Flag]
type = varset
trigger1 = !time
var(22) = (prevstateno = [3000, 4999]) && var(8)

[State 3000, CC Reset]
type = palfx
trigger1 = !time
trigger1 = !(var(20) := 0)
time = 1

[State 3000, Corner Push]
type = varset
trigger1 = time = 3
fvar(5) = 0

[State not angery]
type=VarSet
trigger1=!time&&var(41)=1
var(41)=2

[State 3000, Super Cancel Flash]
type = palfx
trigger1 = var(21) || var(22)
trigger1 = !(time % 2) && time <= 12
time = 1
add = 255, 255, 255
ignorehitpause = 1

[State 3000, Super Cancel Juggle]
type = varset
trigger1 = !time
trigger1 = var(21) || var(22)
var(15) = 0
ignorehitpause = 1

[State 3000, Superpause FX]
type = helper
trigger1 = Time = 3
stateno = 8500
ID = 8500
name = "Superpause FX"
postype = p1
pos = 23, -40
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3000, Superpause]
type = superpause
trigger1 = Time = 3
time = 40
movetime = 40
p2defmul = 1
unhittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 0, PalFX]
type = PalFX
trigger1 = animelemtime(2) = [0,7]
time = 1
add = 256-(time-124)*16,256-(time-124)*16,256-(time-124)*16

[State 52, Boom]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 0, Shot Sound]
type = PlaySnd
trigger1 = animelem = 4
trigger2 = animelem = 5
trigger3 = animelem = 6
trigger4 = animelem = 7
trigger5 = animelem = 8
trigger6 = animelem = 9
trigger7 = animelem = 10
trigger8 = animelem = 11
trigger9 = animelem = 12
trigger10 = animelem = 13
trigger11 = animelem = 14
trigger12 = animelem = 15
value = S1,8
channel = -1

[State 0, FIRE]
type = Helper
trigger1 = animelem = 4
trigger2 = animelem = 5
trigger3 = animelem = 6
trigger4 = animelem = 7
trigger5 = animelem = 8
trigger6 = animelem = 9
trigger7 = animelem = 10
trigger8 = animelem = 11
trigger9 = animelem = 12
trigger10 = animelem = 13
trigger11 = animelem = 14
trigger12 = animelem = 15
helpertype = normal ;player
name = "BOOM"
ID = 3005
stateno = 3005
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0

[State 0, Woosh]
type = Helper
trigger1 = animelem = 4
trigger2 = animelem = 5
trigger3 = animelem = 6
trigger4 = animelem = 7
trigger5 = animelem = 8
trigger6 = animelem = 9
trigger7 = animelem = 10
trigger8 = animelem = 11
trigger9 = animelem = 12
trigger10 = animelem = 13
trigger11 = animelem = 14
trigger12 = animelem = 15
helpertype = normal ;player
name ="Gas"
ID = 8103
stateno = 8103
pos = -22,-30
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(16) = 8
value = 0, 1001

[State 0, PalFX]
type = PalFX
trigger1 = animelemtime(16) = [8,15]
time = 1
add = 256-(time-124)*16,256-(time-124)*16,256-(time-124)*16

[State 3000, Idle]
type = StateTypeSet
trigger1 = AnimElemTime(16) >= 0
moveType = I

[State 3000, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;The Skull
[Statedef 3010]
type=S
physics=N
movetype=A
ctrl=0
velset=0,0
sprpriority=1
facep2=1

[State 3000, Anim]
type=changeanim
trigger1=!time
value=3010

[state 3000,Posset]
type=posset
trigger1=!time
y=0
[state 3000,Posset]
type=posadd
trigger1=!time
x=-99

[State 3000, Portrait]
type = VarSet
trigger1 = !Time
var(1) = 3

[State 3000, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "x" || command = "rlsx"), 0, ifElse((command = "y" || command = "rlsy"), 1, 2))

[State 3000, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 905, Var]
type = varset
trigger1 = !time
var(20) = 0

[State 3000, Super Cancel Flag]
type = varset
trigger1 = !time
var(21) = ((prevstateno = [1000, 2999]) && var(7)) || var(20)

[State 3000, Hyper Cancel Flag]
type = varset
trigger1 = !time
var(22) = (prevstateno = [3000, 4999]) && var(8)

[State 3000, CC Reset]
type = palfx
trigger1 = !time
trigger1 = !(var(20) := 0)
time = 1

[State 3000, Corner Push]
type = varset
trigger1 = time = 3
fvar(5) = 0

[State not angery]
type=VarSet
trigger1=!time
var(41)=2

[State 3000, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 40

[State 3000, Super Cancel Flash]
type = palfx
trigger1 = var(21) || var(22)
trigger1 = !(time % 2) && time <= 12
time = 1
add = 255, 255, 255
ignorehitpause = 1

[State 3000, Super Cancel Juggle]
type = varset
trigger1 = !time
trigger1 = var(21) || var(22)
var(15) = 0
ignorehitpause = 1

[State 3000, Superpause FX]
type = helper
trigger1 = Time = 3
stateno = 8500
ID = 8500
name = "Superpause FX"
postype = p1
pos = 23, -40
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3000, Superpause]
type = superpause
trigger1 = Time = 3
time = 40
movetime = 40
p2defmul = 1
unhittable = 1
anim = -1
sound = s8500,1
darken = 0

[State 3000, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 12

[State 0, Helper]
type = Helper
trigger1 = animelem = 6
helpertype = normal ;player
name = "Clayzooka"
ID = 3015
stateno = 3015
pos = 105,-38
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 3000, Snd]
type = playsnd
trigger1 = animelem = 6
value = 1, 11

[State 3000, Idle]
type = StateTypeSet
trigger1 = AnimElemTime(16) >= 0
moveType = I

[State 3000, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;The Flower
[Statedef 3100]
type=S
physics=N
movetype=A
ctrl=0
velset=0,0
sprpriority=1
poweradd=-1000
facep2=1

[State 3000, Anim]
type=changeanim
trigger1=!time
value=3100

[state 3000,Posset]
type=posset
trigger1=!time
y=0

[State 3000, Portrait]
type = VarSet
trigger1 = !Time
var(1) = 5

[State 3000, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "x" || command = "rlsx"), 0, ifElse((command = "y" || command = "rlsy"), 1, 2))

[State 3000, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 3000, Super Cancel Flag]
type = varset
trigger1 = !time
var(21) = ((prevstateno = [1000, 2999]) && var(7)) || var(20)

[State 3000, Hyper Cancel Flag]
type = varset
trigger1 = !time
var(22) = (prevstateno = [3000, 4999]) && var(8)

[State 3000, CC Reset]
type = palfx
trigger1 = !time
trigger1 = !(var(20) := 0)
time = 1

[State 3000, Corner Push]
type = varset
trigger1 = time = 3
fvar(5) = 0

[State not angery]
type=VarSet
trigger1=!time
var(41)=2

[State 3000, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 40

[State 3000, Super Cancel Flash]
type = palfx
trigger1 = var(21) || var(22)
trigger1 = !(time % 2) && time <= 12
time = 1
add = 255, 255, 255
ignorehitpause = 1

[State 3000, Super Cancel Juggle]
type = varset
trigger1 = !time
trigger1 = var(21) || var(22)
var(15) = 0
ignorehitpause = 1

[State 3000, Superpause FX]
type = helper
trigger1 = Time = 3
stateno = 8500
ID = 8500
name = "Superpause FX"
postype = p1
pos = 23, -40
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3000, Superpause]
type = superpause
trigger1 = Time = 3
time = 40
movetime = 40
p2defmul = 1
unhittable = 1
anim = -1
sound = s8500, ifelse(!(var(20) := 0),0,1)
darken = 0

[State 0, AfterImage]
type = AfterImage
trigger1 = !time
timegap  = 1
framegap = 3
palbright = 0,0,0
palcontrast = 70,20,220
palpostbright = 0,0,0
paladd = 10,10,10
palmul = .65,.65,.65
time = 85
trans = add
palcolor = 50
persistent = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S5,7
volume = 255

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 21
x = ifelse(var(20),17,12)
y = 0
[State 0, VelSet]
type = VelSet
trigger1 = animelem = 22
x = 0
y = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 21
value = S1,16
volume = 255
channel = 1
persistent = 0

[State 0, Explod]
type = Helper
trigger1 = animelem = 21
stateno = 8103
ID = 8100
name = "Dash Dust"
postype = p1
facing = 1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 0, HitDef]
type = HitDef
trigger1 = !time
attr = S,HA
hitflag = MAF
guardflag = M
ground.type = High
air.type = High
damage = 0,0
kill = 0
;hitsound = S0,0
pausetime = 0,0
ground.hittime = 0
air.hittime = 0
sparkno = -1
guard.sparkno = -1 + 0*(var(34):=8001)
sparkxy = -25,-35
ground.velocity = 0,0
air.velocity = 0,0
p1stateno = 3101
p2stateno = 1310
fall = 0
id = 3020
numhits = 0
fall.recover = 1
persistent = 0

[State 3000, Idle]
type = StateTypeSet
trigger1 = AnimElemTime(22) >= 0
moveType = I

[State 3000, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;The Flower (but faster)
[Statedef 3103]
type=S
physics=N
movetype=A
ctrl=0
velset=0,0
sprpriority=1
poweradd=0
facep2=1

[State 3000, Anim]
type=changeanim
trigger1=!time
value=3100

[state 3000,Posset]
type=posset
trigger1=!time
y=0

[State 3000, Portrait]
type = VarSet
trigger1 = !Time
var(1) = 5

[State 3000, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "x" || command = "rlsx"), 0, ifElse((command = "y" || command = "rlsy"), 1, 2))

[State 3000, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 3000, Super Cancel Flag]
type = varset
trigger1 = !time
var(21) = ((prevstateno = [1000, 2999]) && var(7)) || var(20)

[State 3000, Hyper Cancel Flag]
type = varset
trigger1 = !time
var(22) = (prevstateno = [3000, 4999]) && var(8)

[State 3000, CC Reset]
type = palfx
trigger1 = !time
trigger1 = !(var(20) := 0)
time = 1

[State 3000, Corner Push]
type = varset
trigger1 = time = 3
fvar(5) = 0

[State 3000, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 40

[State 3000, Super Cancel Flash]
type = palfx
trigger1 = var(21) || var(22)
trigger1 = !(time % 2) && time <= 12
time = 1
add = 255, 255, 255
ignorehitpause = 1

[State 3000, Super Cancel Juggle]
type = varset
trigger1 = !time
trigger1 = var(21) || var(22)
var(15) = 0
ignorehitpause = 1

[State 3000, Superpause FX]
type = helper
trigger1 = Time = 3
stateno = 8500
ID = 8500
name = "Superpause FX"
postype = p1
pos = 23, -40
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3000, Superpause]
type = superpause
trigger1 = Time = 3
time = 40
movetime = 40
p2defmul = 1
unhittable = 1
anim = -1
sound = s8500, 1
darken = 0

[State 821, Muteki]
type = NotHitBy
trigger1 = 1
value = SCA

[State 0, AfterImage]
type = AfterImage
trigger1 = !time
timegap  = 1
framegap = 3
palbright = 0,0,0
palcontrast = 70,20,220
palpostbright = 0,0,0
paladd = 10,10,10
palmul = .65,.65,.65
time = 85
trans = add
palcolor = 50
persistent = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S5,7
volume = 255

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 21
x = 17
y = 0
[State 0, VelSet]
type = VelSet
trigger1 = animelem = 22
x = 0
y = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 21
value = S1,16
volume = 255
channel = 1
persistent = 0

[State 0, Explod]
type = Helper
trigger1 = animelem = 21
stateno = 8103
ID = 8100
name = "Dash Dust"
postype = p1
facing = 1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 0, HitDef]
type = HitDef
trigger1 = !time
attr = S,HA
hitflag = MAF
guardflag = M
ground.type = High
air.type = High
damage = 0,0
kill = 0
;hitsound = S0,0
pausetime = 0,0
ground.hittime = 0
air.hittime = 0
sparkno = -1
guard.sparkno = -1 + 0*(var(34):=8001)
sparkxy = -25,-35
ground.velocity = 0,0
air.velocity = 0,0
p1stateno = 3104
p2stateno = 1310
fall = 1
id = 3020
numhits = 0
fall.recover = 0
fall.recoverTime = 300
persistent = 0

[State 3000, Idle]
type = StateTypeSet
trigger1 = AnimElemTime(22) >= 0
moveType = I

[State 3000, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 0
ctrl = 1

;THE SIMPSONS???
[Statedef 3101]
type = S
movetype = A
physics = S
poweradd = 0
velset = 0,0
anim = 3101
ctrl = 0

[State 0, PosSet]
type = PosSet
trigger1 = 1
y = 0
;ignorehitpause = 
;persistent = 

[State 810, Safety]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 810, More Safety]
type = NotHitBy
trigger1 = 1
value = SCA

[State 810, Stunned]
type = TargetState
trigger1 = !Time && NumTarget
value = 1310

[State 810, Target Facing]
type = TargetFacing
trigger1 = Time <= 1
value = -1

[State 810, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 0, TargetBind]
type = TargetBind
trigger1 = animelemtime(50)<0
time = 1
pos = 50-ifelse(animelemtime(8)>=0,20,ifelse(animelemtime(6)>=0,16,ifelse(animelemtime(3)>=0,12,ifelse(animelemtime(2)>=0,8,4)))),0
[State 0, TargetBind]
type = TargetBind
trigger1 = animelemtime(50)=0
time = 1
pos = 40,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 18
value = S5,8
volume = 255
channel = 0

[State 0, HitAdd]
type = HitAdd
trigger1 = animelem =  1
trigger2 = animelem =  8
trigger3 = animelem =  12
trigger4 = animelem =  17
trigger5 = animelem =  21
trigger6 = animelem =  24
trigger7 = animelem =  26
trigger8 = animelem =  29
trigger9 = animelem =  32
trigger10 = animelem = 36
trigger11 = animelem = 40
trigger12 = animelem = 46
value = 1

[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = animelem =  1
trigger2 = animelem =  8
trigger3 = animelem =  12
trigger4 = animelem =  17
trigger5 = animelem =  21
trigger6 = animelem =  24
trigger7 = animelem =  26
trigger8 = animelem =  29
trigger9 = animelem =  32
trigger10 = animelem = 36
trigger11 = animelem = 40
trigger12 = animelem = 46
value = ifelse(var(20),-13,-11)
ID = 3020
kill = 0
absolute = 0

[State 0, TargetState]
type = TargetState
triggerall = NumTarget(3020)
trigger1 = animelem =  17
trigger5 = animelem =  21
trigger6 = animelem =  24
trigger7 = animelem =  26
value = 3026
ID = 3020

[State 0, TargetState]
type = TargetState
triggerall = NumTarget(3020)
trigger1 = animelem =  32
trigger10 = animelem = 36
trigger11 = animelem = 40
trigger12 = animelem = 46
value = 3027
ID = 3020

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem =  1
trigger2 = animelem =  8
trigger3 = animelem =  12
trigger4 = animelem =  17
trigger5 = animelem =  21
trigger6 = animelem =  24
trigger7 = animelem =  26
trigger8 = animelem =  29
trigger9 = animelem =  32
trigger10 = animelem = 36
trigger11 = animelem = 40
trigger12 = animelem = 46
value = S2,1001
volume = 255

[State 810, Light EnvShake]
type = EnvShake
trigger1 = animelem =  12
trigger2 = animelem =  17
trigger3 = animelem =  21
trigger4 = animelem =  24
trigger5 = animelem =  26
trigger8 = animelem =  29
trigger9 = animelem =  32
trigger10 = animelem = 36
trigger11 = animelem = 40
trigger12 = animelem = 46
time = 4
freq = 90
ampl = 4
[State 810, EnvShake]
type = EnvShake
trigger1 = AnimElem = 1
time = 14
freq = 120
ampl = 15
[State 810, EnvShake]
type = EnvShake
trigger1 = AnimElem = 8
time = 14
freq = 120
ampl = 4

[State 210, Inch Forwards]
type=posadd
trigger1 = animelem =  1
trigger2 = animelem =  8
trigger3 = animelem =  12
trigger4 = animelem =  17
trigger5 = animelem =  21
trigger6 = animelem =  24
trigger7 = animelem =  26
trigger8 = animelem =  29
trigger9 = animelem =  32
trigger10 = animelem = 36
trigger11 = animelem = 40
trigger12 = animelem = 46
x=8

[State 0, Sparks]
type = Helper
trigger1 = animelem =  1
trigger2 = animelem =  8
trigger3 = animelem =  12
trigger4 = animelem =  17
trigger5 = animelem =  21
trigger6 = animelem =  24
trigger7 = animelem =  26
trigger8 = animelem =  29
trigger9 = animelem =  32
trigger10 = animelem = 36
trigger11 = animelem = 40
trigger12 = animelem = 46
helperType = Normal
stateNo = 8014
ID = 8001
name = "Spark"
posType = P1
pos = 43, -44
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 3102
ctrl = 0

;Going bilingual
[Statedef 3104]
type = S
movetype = A
physics = S
poweradd = 0
velset = 0,0
anim = 3103
ctrl = 0

[State 0, PosSet]
type = PosSet
trigger1 = 1
y = 0
;ignorehitpause = 
;persistent = 

[State 810, Safety]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 810, More Safety]
type = NotHitBy
trigger1 = 1
value = SCA

[State 810, Stunned]
type = TargetState
trigger1 = !Time && NumTarget
value = 1310

[State 810, Target Facing]
type = TargetFacing
trigger1 = Time <= 1
value = -1

[State 810, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 0, TargetBind]
type = TargetBind
trigger1 = animelemtime(94)<0
time = 1
pos = 50-ifelse(animelemtime(8)>=0,20,ifelse(animelemtime(6)>=0,16,ifelse(animelemtime(3)>=0,12,ifelse(animelemtime(2)>=0,8,4)))),0
[State 0, TargetBind]
type = TargetBind
trigger1 = animelemtime(94)=0
time = 1
pos = 40,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 18
value = S50,8
volume = 255
channel = 0

[State 0, HitAdd]
type = HitAdd
trigger1 = animelem =  1
trigger2 = animelem =  8
trigger3 = animelem =  12
trigger4 = animelem =  17
trigger5 = animelem =  21
trigger6 = animelem =  24
trigger7 = animelem =  26
trigger8 = animelem =  29
trigger9 = animelem =  32
trigger10 = animelem = 36
trigger11 = animelem = 40
trigger12 = animelem = 46
;Added Hits
trigger13 = animelem = 57
trigger14 = animelem = 65
trigger15 = animelem = 69
trigger16 = animelem = 72
trigger17 = animelem = 74 || animelem = 76 || animelem = 78 || animelem = 80
trigger18 = animelem = 82 || animelem = 84 || animelem = 86 || animelem = 88
trigger19 = animelem = 90 || animelem = 94
value = 1

[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = animelem =  1
trigger2 = animelem =  8
trigger3 = animelem =  12
trigger4 = animelem =  17
trigger5 = animelem =  21
trigger6 = animelem =  24
trigger7 = animelem =  26
trigger8 = animelem =  29
trigger9 = animelem =  32
trigger10 = animelem = 36
trigger11 = animelem = 40
trigger12 = animelem = 46
ID = 3020
kill = 0
absolute = 0
value = -12

[State 0, TargetLifeAdd Extra]
type = TargetLifeAdd
ID = 3020
kill = 0
absolute = 0
trigger1 = animelem = 57
trigger2 = animelem = 65
trigger3 = animelem = 69
trigger4 = animelem = 72
trigger5 = animelem = 74 || animelem = 76 || animelem = 78 || animelem = 80
trigger6 = animelem = 82 || animelem = 84 || animelem = 86 || animelem = 88
trigger7 = animelem = 90 || animelem = 94
value = ifelse(var(20),-5,-5)

[State 0, TargetState]
type = TargetState
triggerall = NumTarget(3020)
trigger1 = animelem =  17
trigger5 = animelem =  21
trigger6 = animelem =  24
trigger7 = animelem =  26
value = 3026
ID = 3020

[State 0, TargetState]
type = TargetState
triggerall = NumTarget(3020)
trigger1 = animelem =  32
trigger10 = animelem = 36
trigger11 = animelem = 40
trigger12 = animelem = 46
;Added Hits
trigger13 = animelem = 57
trigger14 = animelem = 65
trigger15 = animelem = 69
trigger16 = animelem = 72
trigger17 = animelem = 74 || animelem = 76 || animelem = 78 || animelem = 80
trigger18 = animelem = 82 || animelem = 84 || animelem = 86 || animelem = 88
trigger19 = animelem = 90 || animelem = 94
value = 3027
ID = 3020

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem =  1
trigger2 = animelem =  8
trigger3 = animelem =  12
trigger4 = animelem =  17
trigger5 = animelem =  21
trigger6 = animelem =  24
trigger7 = animelem =  26
trigger8 = animelem =  29
trigger9 = animelem =  32
trigger10 = animelem = 36
trigger11 = animelem = 40
trigger12 = animelem = 46
;Added Hits
trigger13 = animelem = 57
trigger14 = animelem = 65
trigger15 = animelem = 69
trigger16 = animelem = 72
trigger17 = animelem = 74 || animelem = 76 || animelem = 78 || animelem = 80
trigger18 = animelem = 82 || animelem = 84 || animelem = 86 || animelem = 88
trigger19 = animelem = 90 || animelem = 94
value = S2,1001
volume = 255

[State 810, Light EnvShake]
type = EnvShake
trigger1 = animelem =  12
trigger2 = animelem =  17
trigger3 = animelem =  21
trigger4 = animelem =  24
trigger5 = animelem =  26
trigger8 = animelem =  29
trigger9 = animelem =  32
trigger10 = animelem = 36
trigger11 = animelem = 40
trigger12 = animelem = 46
time = 4
freq = 90
ampl = 4
[State 810, EnvShake]
type = EnvShake
trigger1 = AnimElem = 1
time = 14
freq = 120
ampl = 15
[State 810, EnvShake]
type = EnvShake
trigger1 = AnimElem = 8
time = 14
freq = 120
ampl = 4
[State 810, Moar EnvShake]
type = EnvShake
trigger1 = animelem = 57
trigger2 = animelem = 65
trigger3 = animelem = 69
trigger4 = animelem = 72
trigger5 = animelem = 74 || animelem = 76 || animelem = 78 || animelem = 80
trigger6 = animelem = 82 || animelem = 84 || animelem = 86 || animelem = 88
trigger7 = animelem = 90 || animelem = 94
time = 6
freq = 120
ampl = 6

[State 210, Inch Forwards]
type=posadd
trigger1 = animelem =  1
trigger2 = animelem =  8
trigger3 = animelem =  12
trigger4 = animelem =  17
trigger5 = animelem =  21
trigger6 = animelem =  24
trigger7 = animelem =  26
trigger8 = animelem =  29
trigger9 = animelem =  32
trigger10 = animelem = 36
trigger11 = animelem = 40
trigger12 = animelem = 46
;Added Hits
trigger13 = animelem = 57
trigger14 = animelem = 65
trigger15 = animelem = 69
trigger16 = animelem = 72
trigger17 = animelem = 74 || animelem = 76 || animelem = 78 || animelem = 80
trigger18 = animelem = 82 || animelem = 84 || animelem = 86 || animelem = 88
trigger19 = animelem = 90 || animelem = 94
x=8

[State 0, Sparks]
type = Helper
trigger1 = animelem =  1
trigger2 = animelem =  8
trigger3 = animelem =  12
trigger4 = animelem =  17
trigger5 = animelem =  21
trigger6 = animelem =  24
trigger7 = animelem =  26
trigger8 = animelem =  29
trigger9 = animelem =  32
trigger10 = animelem = 36
trigger11 = animelem = 40
trigger12 = animelem = 46
;Added Hits
trigger13 = animelem = 57
trigger14 = animelem = 65
trigger15 = animelem = 69
trigger16 = animelem = 72
trigger17 = animelem = 74 || animelem = 76 || animelem = 78 || animelem = 80
trigger18 = animelem = 82 || animelem = 84 || animelem = 86 || animelem = 88
trigger19 = animelem = 90 || animelem = 94
helperType = Normal
stateNo = 8014
ID = 8001
name = "Spark"
posType = P1
pos = 43, -44
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 3102
ctrl = 0



;GET REKT
[Statedef 3102]
type = S
movetype = A
physics = S
poweradd = 0
velset = -14,0
anim = 3102
ctrl = 0

[State 905, Var]
type = varset
trigger1 = !time
var(20) = 0

[State 191,PlaySnd]
type= PlaySnd
trigger1=!time
value=S1,17

[State 191,PlaySnd]
type= PlaySnd
trigger1=!time
value=S1,7

[State 0, ZAP]
type = Explod
trigger1=!time
anim = 8351
ID = 8351
pos = 15,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = .6,1
sprpriority = 6
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, PalFX]
type = PalFX
trigger1 = time = [0,16]
time = 1
add = 256-time*16,256-time*16,256-time*16
mul = 256,256,256
invertall = 0
color = 256

[State 0, EnvShake]
type = EnvShake
trigger1 = !time
time = 16
freq = 90
ampl = -2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 25
value = S5,0
volume = 255
channel = -1

[State 0, BOOM]
type = Explod
trigger1= time = 25
anim = 3105
ID = 3105
pos = 199,-38
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
pausemovetime = 0
scale = 1,.7
sprpriority = 6
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, TargetLifeAdd]
type = TargetLifeAdd
triggerall = NumTarget(3020)
trigger1 = time = 35
value = -60
ID = 3020
kill = 1
absolute = 0

[State 191,PlaySnd]
type= PlaySnd
trigger1= time = 35
value=S2,3000

[State 0, TargetState]
type = TargetState
triggerall = NumTarget(3020)
trigger1 = time = 35
value = 3028
ID = 3020

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 35
time = 14
freq = 120
ampl = 15

[State 0, TargetDrop]
type = TargetDrop
triggerall = NumTarget(3020)
trigger1 = time = 35
excludeID = -1
keepone = 1

[State 0, PalFX]
type = PalFX
trigger1 = time = [75,83]
time = 1
add = (time-75)*32,(time-75)*32,(time-75)*32
mul = 256,256,256
invertall = 0
color = 256

[State 0, PalFX]
type = PalFX
trigger1 = time = [83,91]
time = 1
add = 256-(time-83)*32,256-(time-83)*32,256-(time-83)*32
mul = 256,256,256
invertall = 0
color = 256

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 83
value = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 95
value = 0
ctrl = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 75
value = S0,1001
volume = 255
channel = -1

;OW!
[Statedef 3026]
type = S
movetype = H
physics = S
anim = 5002
poweradd = 0
velset = 0,0
ctrl = 0

[State 0, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 0, SelfState]
type = SelfState
trigger1 = time = 180
value = 5050

;OW!
[Statedef 3027]
type = S
movetype = H
physics = S
anim = 5010
poweradd = 0
velset = 0,0
ctrl = 0

[State 0, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 0, SelfState]
type = SelfState
trigger1 = time = 180
value = 5050

;OW!
[Statedef 3028]
type = S
movetype = H
physics = S
anim = 5050
poweradd = 0
velset = 0,0
ctrl = 0

[State 0, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 0, VelSet]
type = VelSet
trigger1 = 1
x = -9
y = -4

[State 0, PalFX]
type = PalFX
trigger1 = 1
time = 40
mul = 256, 256, 512
sinadd = 0, 60, 110, 8
invertall = 1
color = 32

[State 0, SelfState]
type = SelfState
trigger1 = 1
value = 5050
ctrl = 0

;---------------------------------------------------------------------------
;The World, just not DIO's
[Statedef 3110]
type=S
physics=N
movetype=A
ctrl=0
velset=0,0
sprpriority=1
poweradd=-500
facep2=1

[State 3000, Anim]
type=changeanim
trigger1=!time
value=3110

[state 3000,Posset]
type=posset
trigger1=!time
y=0

[State 3000, Portrait]
type = VarSet
trigger1 = !Time
var(1) = 6

[State 0, ScreenBound]
type = ScreenBound
trigger1 = time > 20
value = 0
movecamera = 0,0

[State 3000, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "x" || command = "rlsx"), 0, ifElse((command = "y" || command = "rlsy"), 1, 2))

[State 3000, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 905, Var]
type = varset
trigger1 = !time
var(20) = 0

[State 3000, Super Cancel Flag]
type = varset
trigger1 = !time
var(21) = ((prevstateno = [1000, 2999]) && var(7)) || var(20)

[State 3000, Hyper Cancel Flag]
type = varset
trigger1 = !time
var(22) = (prevstateno = [3000, 4999]) && var(8)

[State 3000, CC Reset]
type = palfx
trigger1 = !time
trigger1 = !(var(20) := 0)
time = 1

[State 3000, Corner Push]
type = varset
trigger1 = time = 3
fvar(5) = 0

[State 3000, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 40

[State 3000, Super Cancel Flash]
type = palfx
trigger1 = var(21) || var(22)
trigger1 = !(time % 2) && time <= 12
time = 1
add = 255, 255, 255
ignorehitpause = 1

[State 3000, Super Cancel Juggle]
type = varset
trigger1 = !time
trigger1 = var(21) || var(22)
var(15) = 0
ignorehitpause = 1

[State 3000, Superpause FX]
type = helper
trigger1 = time = 30
stateno = 8510
ID = 8510
name = "Superpause FX"
postype = p1
pos = 23, -40
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3000, Superpause]
type = superpause
trigger1 = !time
time = 30
movetime = 30
p2defmul = 1
unhittable = 1
anim = -1
;sound = s8500,1
darken = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 20
value = S1,21
volume = 255
channel = -1

[State 0, VelSet]
type = VelSet
trigger1 = time = [20,50]
x = 1
y = -15

[State 0, PosAdd]
type = PosAdd
trigger1 = time = 50
x = floor(p2dist x)
y = -floor(screenpos y)-100

[State 0, VelSet]
type = VelSet
trigger1 = time >= 50 && pos y < 0
x = 0
y = 15	

[State 0, VelSet]
type = VelSet
trigger1 = time >= 50
trigger1 = pos y >= 0
x = 0
y = 0

[State 0, PosSet]
type = PosSet
trigger1 = time >= 50
trigger1 = pos y > 0
y = 0 

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 60
value = S5,9
volume = 255
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 70
value = S1,22
volume = 255
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 30
value = S8500,1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 50
value = 3111

[State 810, EnvShake]
type = EnvShake
trigger1 = time = 70
time = 14
freq = 120
ampl = 4

[State 0, Helper]
type = Helper
trigger1 = time = 50
name = "Tank"
ID = 3112
stateno = 3112
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 0, VarRandom]
type = VarRandom
triggerall = anim = 3111
trigger1 = time = 50
trigger2 = animelem = 2
trigger3 = animelem = 3
trigger4 = animelem = 36
v = 30
range = -120,100

[State 0, VarRandom]
type = VarRandom
triggerall = anim = 3111
trigger1 = time = 50
trigger2 = animelem = 2
trigger3 = animelem = 3
trigger4 = animelem = 36
v = 31
range = -90,-10

[State 0, PalFX]
type = PalFX
trigger1 = pos y >= 0
trigger1 = time > 50
trigger1 = random < 700
time = 1
add = 0,0,0
mul = floor(random*.25),floor(random*.25),floor(random*.25)
invertall = IfElse(random<500,0,1)

[State 0, PalFX]
type = PalFX
trigger1 = time = 239
time = 2
add = 256,256,256
mul = 256,256,256

[State 0, VelSet]
type = VelSet
trigger1 = time = 240
x = -3
y = -5

[State 0, TargetState]
type = TargetState
trigger1 = time = 239
value = 3114
[State 0, ChangeState]
type = ChangeState
trigger1 = time = 240
value = 3113
ctrl = 0

;WHAT THE FV#K.
[Statedef 3113]
type    = A
movetype= H
physics = N
velset = -2.8,-7
poweradd = 40

[State 0, LifeAdd]
type = LifeAdd
trigger1 = time = 0
value = -77
kill = 0
absolute = 1
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = time = 1
anim = 3016
ID = 3016
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
sprpriority = 6
pausemovetime = 0
scale = 2,2
removeongethit = 0
ownpal = 0

[State 810, EnvShake]
type = EnvShake
trigger1 = !time
time = 14
freq = 120
ampl = 4

[State 0, PalFX]
type = PalFX
trigger1 = 1
time = 300
add = random%256,random%256,random%256
mul = random%256,random%256,random%256
invertall = random%2
color = random%256

[State 0, StopSnd]
type = StopSnd
trigger1 = !time
channel = -1
[State 0, StopSnd]
type = StopSnd
trigger1 = !time
channel = 0
[State 0, StopSnd]
type = StopSnd
trigger1 = !time
channel = 1
[State 0, StopSnd]
type = StopSnd
trigger1 = !time
channel = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S2,3100
volume = 255

[State 1013, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 5061

[State 1013, 1] ;Gravity
type = VelAdd
Trigger1 = 1
y = .4

[State 821, Muteki]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1013, 2] ; Recover near ground (use ChangeState)
type = ChangeState
triggerall = time = 15
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 1013, 3] ; Recover in mid air (use SelfState)
type = SelfState
triggerall = time = 15
triggerall = Vel Y > 0
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210 ;HITFALL_AIRRECOVER

[State 1013, 4] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground

[Statedef 3114]
type    = A
movetype= H
physics = N
velset = -2.8,-7

[State 0, PalFX]
type = PalFX
trigger1 = 1
time = 300
add = random%256,random%256,random%256
mul = random%256,random%256,random%256
invertall = random%2
color = random%256

[State 1013, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 5061

[State 1013, 1] ;Gravity
type = VelAdd
Trigger1 = 1
y = .4

[State 821, Muteki]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1013, 2] ; Recover near ground (use ChangeState)
type = ChangeState
triggerall = time = 15
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 1013, 3] ; Recover in mid air (use SelfState)
type = SelfState
triggerall = time = 15
triggerall = Vel Y > 0
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210 ;HITFALL_AIRRECOVER

[State 1013, 4] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground

;---------------------------------------------------------------------------
;MAX Hadouken
[StateDef 3050]
type=S
movetype=A
physics=N
poweradd=-2000
ctrl=0
velset=0,0
sprpriority=1
facep2=1

[State 3050, Anim]
type=changeanim
trigger1=!time
value=3050

[state 3050,Posset]
type=posset
trigger1=!time
y=0

[State 3000, Portrait]
type = VarSet
trigger1 = !Time
var(1) = 4

[State 3050, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 3050, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3050, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3050, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3050, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State not angery]
type=VarSet
trigger1=!time
var(41)=2

[State 3050, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3050, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3050, Super Pause FX]
type = Helper
trigger1 = Time = 3
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = -9, -22
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3050, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 200
moveTime = 200
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0


[State 0, Helper]
type = Helper
trigger1 = time = 10
trigger1 = facing = 1
name = "Portrait"
ID = 3007
stateno = 3007
pos = -310,-floor(screenpos y)-20
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = .35
size.yscale = .35
[State 0, Helper]
type = Helper
trigger1 = time = 10
trigger1 = facing = -1
name = "Portrait"
ID = 3007
stateno = 3007
pos = 310,-floor(screenpos y)-20
postype = right    ;p2,front,back,left,right
facing = -1
keyctrl = 0
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = .35
size.yscale = .35

[State 0, Helper]
type = Helper
trigger1 = time = 10
helpertype = normal ;player
name = "BG"
ID = 3009
stateno = 3009
pos = 0,0
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999
pausemovetime = 999

[State 0, BGPalFX]
type = BGPalFX
trigger1 = time = [0,8]
time = 1
add = 0,0,0
mul = 256-time*32,256-time*32,256-time*32


[State 0, BGPalFX]
type = BGPalFX
trigger1 = !time
time = 220
add = -64,-64,64
mul = 64,64,192
sinadd = 0,0,80,10
invertall = 0
color = 0


[State 0, Explod]
type = Explod
trigger1 = time = 10
anim = 19001
ID = 19001
pos = -20,-35
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
pausemovetime = 999
supermovetime = 999
scale = .15,.15
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = [10,18)
ID = 19001
trans = addalpha
alpha = (time-10)*32,256
scale = (time-10)*.01875,(time-10)*.01875

[State 0, BGPalFX]
type = BGPalFX
trigger1 = time = [10,220]
time = 1
add = 0,0,0
mul = 0,0,0

[State 0, BGPalFX]
type = BGPalFX
trigger1 = time = [220,236]
time = 1
add = 0,0,0
mul = (time-220)*8,(time-220)*8,(time-220)*8

[State 0, BGPalFX]
type = BGPalFX
trigger1 = time > 236
time = 1
add = 0,0,0
mul = 128,128,128

[State 0, BGPalFX]
type = BGPalFX
trigger1 = time = [324,340]
time = 1
add = 0,0,0
mul = 128+(time-324)*8,128+(time-324)*8,128+(time-324)*8

[State 0, LAZER]
type = Helper
trigger1 = time = 190
helpertype = normal ;player
name = "Hadouken"
ID = 3008
stateno = 3008
pos = 22,-0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999
pausemovetime = 999

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 190
id = 19001

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 250
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;MAX Shoryuken
[StateDef 3150]
type=S
movetype=A
physics=N
poweradd=-2000
ctrl=0
velset=0,0
sprpriority=1
facep2=1

[State 3050, Anim]
type=changeanim
trigger1=!time
value=3150

[state 3050,Posset]
type=posset
trigger1=!time
y=0

[State 3000, Portrait]
type = VarSet
trigger1 = !Time
var(1) = 4

[State 3050, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 3050, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3050, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3050, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3050, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State not angery]
type=VarSet
trigger1=!time
var(41)=2

[State 3050, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 40

[State 3050, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3050, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3050, Super Pause FX]
type = Helper
trigger1 = Time = 3
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = 10, -40
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3050, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 40
moveTime = 40
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

;TELEPORT
[State 0, PUNISH]
type = ChangeState
trigger1 = anim = 3150 && animelemtime(9) = -1
value = 3155
ctrl = 0

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = numenemy
triggerall = anim = 3150 && animelemtime(8) > 2
triggerall = anim = 3150 && animelemtime(9) < -1
trigger1 = !ailevel && command != "holda" && command != "holdc" && command != "holdb"
trigger2 = ailevel
trigger2 = (p2movetype != A) || (enemynear,animtime >= -7)
value = 3150
elem = 9
ignorehitpause = 1

[State 0, PosAdd]
type = PosAdd
trigger1 = anim = 3150 && animelem = 7
x = 50
[State 0, Explod]
type = Explod
trigger1 = anim = 3150 && animelem = 8
anim = 3151
ID = 3151
pos = 5,-30
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = 3
ownpal = 1
ignorehitpause = 1
[State 0, Explod]
type = Explod
trigger1 = anim = 3150 && animelem = 8
anim = 3151
ID = 3151
pos = 10,-60
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = 3
ownpal = 1
ignorehitpause = 1
[State 0, Explod]
type = Explod
trigger1 = anim = 3150 && animelemtime(8) >= 0
trigger1 =anim = 3150 &&  animelemtime(9) < 0
trigger1 = (time%6)=0
anim = 3152
ID = 3152
pos = (animelemtime(7)*9),-50
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = .5,.5
sprpriority = 1
ownpal = 1
ignorehitpause = 1

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fvar(0) = 0.1
[State 0, VarSet]
type = VarAdd
trigger1 = anim = 3150 && animelemtime(9) >= 0
trigger1 = anim = 3150 && animelemtime(12) < 0
trigger1 = fvar(0) < 1
fvar(0) = 0.1
[State 0, AngleDraw]
type = AngleDraw
trigger1 = anim = 3150 && animelemtime(9) >= 0
trigger1 = anim = 3150 && animelemtime(12) < 0
trigger1 = fvar(0) < 1
value = 0
scale = 1/fvar(0),1
ignorehitpause = 1
[State 0, HitBy]
type = NotHitBy
trigger1 = anim = 3150 && animelemtime(8) < 0
value = SA,NA,SA,HA,NP,SP,HP
time = 2
ignorehitpause = 1
[State 0, HitBy]
type = HitBy
trigger1 = anim = 3150 && animelemtime(9) >= 0
trigger1 = anim = 3150 && animelemtime(12) < 0
value = SCA,NT,ST,HT
time = 2
ignorehitpause = 1

[State 0, PosAdd]
type = PosAdd
trigger1 = anim = 3150 && animelem = 9
x = p2bodydist x - 5 + (enemynear,vel x)

[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 3150 && animelem = 6
value = s1,26
[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 3150 && animelem = 9
value = S1,15

;ATTACK
[State 1100, Vel]
type = velset
trigger1 = anim = 3150 && animelem = 12
x = 12
y = -14
[State 1100, Vel]
type = velmul
trigger1 = 1
x = 0.88
[State 1100, Vel]
type = velmul
trigger1 = vel y > 0
x = 0

[State 1100, Snd]
type = Null
trigger1 = anim = 3150 && animelem = 9
value = 41, 0
[State 1100, Dust]
type = helper
trigger1 = anim = 3150 && animelem = 9
helpertype = normal
stateno = 8100
ID = 8100
name = "Dust"
postype = p1
ownpal = 1
[State 0, Woosh]
type = Explod
trigger1 = anim = 3150 && animelem = 9
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

[State 1100, Snd]
type = playsnd
trigger1 = anim = 3150 && animelem = 12
value = 5,1
channel = 0
ignorehitpause = 1
persistent = 0

[State 1100, Hit]
type = hitdef
triggerall= !var(16) && (var(15)<1 || var(20))
trigger1 = animelem = 3 && anim = 3150
ID = 3150
attr = S, SA
damage = 28, 17
animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = ifelse(var(20), 18, 24), ifelse(var(20), 18, 24)
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=64), var(36):= -22
hitsound = s2, 1000
guardsound = s3, 0
ground.type = Low
ground.slidetime = 16
ground.hittime = 16
ground.velocity = ifelse(var(10) = 3, -4, ifelse(var(10) = 2, -3.5, -3)), ifelse(var(10) = 3, -12, ifelse(var(10) = 2, -10, -8))
ground.cornerpush.veloff = 0
air.type = Low
air.velocity = ifelse(var(10) = 3, -4, ifelse(var(10) = 2, -3.5, -3)), ifelse(var(10) = 3, -12, ifelse(var(10) = 2, -10, -8))
guard.velocity = -10.52
guard.cornerpush.veloff = 0;-12.74
getpower = ifelse(p2movetype = H, 72, 144) * (!var(20) && prevstateno != 750), 36 * (!var(20) && prevstateno != 750)
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 4
kill = 0
fall = 1
fall.recover = 1
fall.recovertime = 120
fall.animtype = Medium
yaccel = 0.5
forcestand = 1
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 1100, Hit2]
type = hitdef
trigger1 = animelem = 4 && anim = 3150
trigger1 = !movecontact && !movereversed
ID = 3150
attr = A, SA
damage = 28, 7
animtype = Back
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=64), var(36):= -40
hitsound = s2, 1000
guardsound = s3, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = ifelse(var(10) = 3, -4, ifelse(var(10) = 2, -3.5, -3)), ifelse(var(10) = 3, -12, ifelse(var(10) = 2, -10, -8))
ground.cornerpush.veloff = 0
air.type = Low
air.velocity = ifelse(var(10) = 3, -4, ifelse(var(10) = 2, -3.5, -3)), ifelse(var(10) = 3, -12, ifelse(var(10) = 2, -10, -8))
guard.cornerpush.veloff = 0
guard.velocity = -10.52
getpower = ifelse(p2movetype = H, 72, 144) * (!var(20) && prevstateno != 750), 36 * (!var(20) && prevstateno != 750)
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 4
kill = 0
fall = 1
fall.recover = 1
fall.recovertime = 120
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = ifelse(var(20), -4, -8), -1.5
forcestand = 1
airguard.cornerpush.veloff = 0
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 1100, statetype]
type = statetypeset
trigger1 = anim = 3150 && animelemtime(12) >= 0
trigger2 = anim = 3153
statetype = A
physics = A
[State 1100, Anim]
type = changeanim
trigger1 = anim = 3150 && animelemtime(12) > 0 && vel y > -5
value = 3153
persistent = 0

[State 450, Hit]
type=hitdef
trigger1 = animelem = 10 && anim = 3153
attr = A,HA
hitflag = MAF
guardflag = H
damage = ceil(ifelse(fvar(11)*91<7, 7, fvar(11)*91)), 11
getpower = ifelse(!var(13), 216, 72)*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
guard.pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Trip
air.type = Trip
ground.hittime = 18 + 4*var(9)
ground.slidetime = 18 + 4*var(9)
guard.hittime = 18
air.hittime = 120
ground.velocity = -1, -6.25
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.86, -10.52)
guard.cornerPush.velOff = 0
air.velocity = -1, -8.24
air.cornerPush.velOff = 0
yAccel = 0.677
fall = 1
fall.recover = 0
fall.recoverTime = 120
hitsound = -1 + 0*(var(31):=3000)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8014)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=83), var(36):=-10
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48
envshake.time = 6
envshake.freq = 120
envshake.ampl = 6

[State 3100, HIT YOU]
type=targetstate
trigger1= movehit && numtarget(3150) 
trigger1= target(3150),Movetype=H
trigger1=!(target, time) && !(target, ishelper) 
ID=3150
value=3152
ignorehitpause=1
[State 3100, HIT YOU]
type=changestate
trigger1= movehit && numtarget(3150) 
trigger1= target(3150),Movetype=H
trigger1=!(target, time) && !(target, ishelper) 
value=3151
ignorehitpause=1

[State 3050, End]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5110
ctrl = 1

;The punchline
[Statedef 3151]
type = S
movetype = A
physics = S
velset = 0,0
sprpriority = 0
anim = 3006
ctrl = 0

[State 3002, SuperPause]
type = SuperPause
trigger1 = !time
time = 180
movetime = 180
pos = 0,-30
darken = 0

[State 0, Helper]
type = Helper
trigger1 = time = 20
trigger1 = facing = 1
name = "Portrait"
ID = 3006
stateno = 3006
pos = -260,-floor(screenpos y)
postype = left
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = .4
size.yscale = .4
[State 0, Helper]
type = Helper
trigger1 = time = 20
trigger1 = facing = -1
name = "Portrait"
ID = 3006
stateno = 3006
pos = 260,-floor(screenpos y)
postype = right
facing = -1
keyctrl = 0
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = .4
size.yscale = .4

[State 0, BGPalFX]
type = BGPalFX
trigger1 = !time
time = 220
add = -64,-64,64
mul = 64,64,192
sinadd = 0,0,80,10
invertall = 0
color = 0

[State 0, Explod]
type = Explod
trigger1 = time = 21
anim = 19001
ID = 19001
pos = 18,-26
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
pausemovetime = 999
supermovetime = 999
scale = .15,.15
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1

[State 0, ScreenBound]
type = ScreenBound
trigger1 = time = [10,220]
value = 0
movecamera = 0,0

[State 0, AfterImage]
type = AfterImage
trigger1 = time = 20
time = 10
length = 10
palcolor = 256
palinvertall = 0
palbright = 30,30,30
palcontrast = 120,120,220
palpostbright = 0,0,0
paladd = 255,0,0
palmul = 1,1,1
timegap = 1
framegap = 1
trans = add

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = [21,29)
ID = 19001
trans = addalpha
alpha = (time-20)*32,256
scale = (time-20)*.01875,(time-20)*.01875

[State 0, PosAdd]
type = PosAdd
trigger1 = time >= 20
trigger1 = p2dist x < 35
x = p2dist x-29
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = time = [20,100]
trigger1 = p2dist x > 35
x = 40

[State 0, VelSet]
type = VelSet
trigger1 = time = [20,100]
trigger1 = p2dist x < 35
x = 0

[State 0, Explod]
type = Explod
trigger1 = time = 20
anim = 904
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
pausemovetime = 999
supermovetime = 999
scale = 1,.75
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 20
time = 10
freq = 240
ampl = -2

[State 0, Turn]
type = Turn
trigger1 = !time
trigger1 = p2dist x < 0

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 190 
id = 19001

[State 0, BGPalFX]
type = BGPalFX
trigger1 = time = [190,222]
time = 15
add = 256-(time-190)*10,256-(time-190)*10,256-(time-190)*10
mul = 256,256,256

[State 0, BGPalFX]
type = BGPalFX
trigger1 = time = [206,242]
time = 15
add = -64,-64,-64
mul = 256,256,256

[State 0, BGPalFX]
type = BGPalFX
trigger1 = time = [242,250]
time = 1
add = -64+(time-242)*8,-64+(time-242)*8,-64+(time-242)*8
mul = 256,256,256

[State 0, Explod]
type = Explod
trigger1 = time = 191
anim = 16520
ID = 16520
pos = 0,50
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
pausemovetime = 0
scale = 1,1
sprpriority = -1
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1

[State 0, Explod]
type = Explod
trigger1 = time = 191
anim = 16520
ID = 16521
pos = 12,-75
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
pausemovetime = 0
scale = .25,.15
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1
trans = addalpha
alpha = 192,256

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 190
value = S20,19
volume = 255
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 190
value = S20,20
volume = 255
channel = -1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 191
value = 3007

[State 0, HitDef]
type = HitDef
trigger1 = anim = 3007
trigger1 = time % 5 = 1
trigger1 = time < 235
trigger1 = hitcount < 5
ID = 3150
attr = S,HA
hitflag = MAF
guardflag = HL
ground.type = High
air.type = High
damage = 75,15
hitsound = S2,12
pausetime = 4,4
ground.hittime = 10
air.hittime = 10
sparkno = -1 + 0*(var(33):=8014)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkxy = -17,-32
ground.velocity = IfElse(hitcount<4,-.5,-4),IfElse(hitcount<4,-4,-15)
air.velocity = IfElse(hitcount<4,-.5,-4),IfElse(hitcount<4,-4,-15)
;kill = 0
fall = 1
fall.recover = 0
yaccel = 1
envshake.freq = 120
envshake.ampl = 6
envshake.time = 6
fall.envshake.time = 15
fall.envshake.ampl = -3
fall.envshake.freq = 90
[State 810, EnvShake]
type = EnvShake
trigger1 = time = 220 && anim = 3007
time = 14
freq = 120
ampl = 15
[State 810, PlaySnd]
type = PlaySnd
trigger1 = time = 220
value = s2,11
[State 810, YEET]
type = TargetState
trigger1 = time = 220
trigger1 = numtarget(3150)
id = 3150
value = 1158

[State 0, VelSet]
type = VelSet
trigger1 = time = [191,240]
y = -3

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = [230,246]
ID = 16520
trans = addalpha
alpha = 256-(time-230)*16,256

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = [230,246]
ID = 16521
trans = addalpha
alpha = 192-(time-230)*12,256

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 246
id = 16520

[State 0, VelAdd]
type = VelAdd
trigger1 = time = [240,250]
x = -.3

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = time = 191
statetype = A       ;S,A,C,L
movetype = A        ;I,A,H
physics = A         

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 250
value = 50
ctrl = 0

;Get stuck
[Statedef 3152]
type=S
movetype=H
physics=N
ctrl=0
velset=0,0
sprpriority=0
facep2=1

[State 3020, Remove Explods]
type=RemoveExplod
trigger1=IsHelper
[State 3320, Destroy Helpers]
type=DestroySelf
trigger1=IsHelper
[State 3020, VelSet]
type = VelSet
trigger1 =!time 
x = -1
[State 3020, VelMul]
type = VelMul
trigger1 = 1
x = .5
[State 3020, VelSet]
type = VelSet
trigger1 =time>12
x = 0

[State 3020, HitBy]
type=HitBy
trigger1=1
value=SA,SP,HA,HP
time=1
ignorehitpause =1


[State 3020, HitFallSet]
type=HitFallSet
trigger1=1
value=0
[State 3020, PosSet]
type=PosSet
trigger1=!time
y=0
[State 3020, Width]
type = Width
trigger1 = 1
edge = 0,10
[State 3020, ChangeAnim]
type=ChangeAnim2
trigger1=!time
value=3159

[State 3020, SelfState]
type=SelfState
trigger1=!animtime
value=0
ctrl=1

;Snap back to reality
[Statedef 3155]
type    = A
movetype= H
physics = N
juggle  = 0
velset = 0,0
anim = 1
ctrl = 0
sprpriority = -2

[State 0, LifeAdd]
type = LifeAdd
trigger1 = time = 0
value = -50
kill = 0
absolute = 1
ignorehitpause = 1
[State 0, PosAdd]
type = PosAdd
trigger1 = time = 0
x = frontedgedist + 90
y = 0
[State 0, ScreenBound]
type = ScreenBound
trigger1 = time = 0
trigger2 = time
trigger2 = frontedgedist < 40
value = 0
movecamera = 0,1
ignorehitpause = 1
[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S1,22
[State 810, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 14
freq = 120
ampl = 15
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 1
value = 5052
[State 0, VelSet]
type = VelSet
trigger1 = time = 1
x = -6
y = -7.6
[State 0, VelSet]
type = VelAdd
trigger1 = time
y = 0.44
[State 0, ChangeState]
type = ChangeState
trigger1 = time
trigger1 = vel y + pos y >= 5
value = 5100
ctrl = 0

;---------------------------------------------------------------------------
;MAX Hadouken JP Dubbed
[StateDef 3060]
type=S
movetype=A
physics=N
poweradd=-500
ctrl=0
velset=0,0
sprpriority=1
facep2=1

[State 3050, Anim]
type=changeanim
trigger1=!time
value=3050

[state 3050,Posset]
type=posset
trigger1=!time
y=0

[State 3000, Portrait]
type = VarSet
trigger1 = !Time
var(1) = 4

[State 3050, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 3050, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3050, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3050, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3050, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3050, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 40

[State 3050, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3050, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3050, Super Pause FX]
type = Helper
trigger1 = Time = 3
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = -9, -22
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3050, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 200
moveTime = 200
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,1
darken = 0


[State 0, Helper]
type = Helper
trigger1 = time = 10
trigger1 = facing = 1
name = "Portrait"
ID = 3007
stateno = 3007
pos = -310,-floor(screenpos y)-20
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = .35
size.yscale = .35
[State 0, Helper]
type = Helper
trigger1 = time = 10
trigger1 = facing = -1
name = "Portrait"
ID = 3007
stateno = 3007
pos = 310,-floor(screenpos y)-20
postype = right    ;p2,front,back,left,right
facing = -1
keyctrl = 0
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = .35
size.yscale = .35

[State 0, Helper]
type = Helper
trigger1 = time = 10
helpertype = normal ;player
name = "BG"
ID = 3009
stateno = 3009
pos = 0,0
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999
pausemovetime = 999

[State 0, BGPalFX]
type = BGPalFX
trigger1 = time = [0,8]
time = 1
add = 0,0,0
mul = 256-time*32,256-time*32,256-time*32


[State 0, BGPalFX]
type = BGPalFX
trigger1 = !time
time = 220
add = -64,-64,64
mul = 64,64,192
sinadd = 0,0,80,10
invertall = 0
color = 0


[State 0, Explod]
type = Explod
trigger1 = time = 10
anim = 19001
ID = 19001
pos = -20,-35
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
pausemovetime = 999
supermovetime = 999
scale = .15,.15
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = [10,18)
ID = 19001
trans = addalpha
alpha = (time-10)*32,256
scale = (time-10)*.01875,(time-10)*.01875

[State 0, BGPalFX]
type = BGPalFX
trigger1 = time = [10,220]
time = 1
add = 0,0,0
mul = 0,0,0

[State 0, BGPalFX]
type = BGPalFX
trigger1 = time = [220,236]
time = 1
add = 0,0,0
mul = (time-220)*8,(time-220)*8,(time-220)*8

[State 0, BGPalFX]
type = BGPalFX
trigger1 = time > 236
time = 1
add = 0,0,0
mul = 128,128,128

[State 0, BGPalFX]
type = BGPalFX
trigger1 = time = [324,340]
time = 1
add = 0,0,0
mul = 128+(time-324)*8,128+(time-324)*8,128+(time-324)*8

[State 0, LAZER]
type = Helper
trigger1 = time = 190
helpertype = normal ;player
name = "Hadouken"
ID = 3008
stateno = 3008
pos = 22,-0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999
pausemovetime = 999

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 190
id = 19001

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 236
value = 3200
ctrl = 1

;---------------------------------------------------------------------------
;MAX Shoryuken JP Dubbed
[StateDef 3160]
type=S
movetype=A
physics=N
poweradd=-500
ctrl=0
velset=0,0
sprpriority=1
facep2=1

[State 3050, Anim]
type=changeanim
trigger1=!time
value=3150

[state 3050,Posset]
type=posset
trigger1=!time
y=0

[State 3000, Portrait]
type = VarSet
trigger1 = !Time
var(1) = 4

[State 3050, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 3050, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3050, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3050, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3050, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3050, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 40

[State 3050, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3050, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3050, Super Pause FX]
type = Helper
trigger1 = Time = 3
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = 10, -40
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3050, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 40
moveTime = 40
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,1
darken = 0

;TELEPORT
[State 0, PUNISH]
type = ChangeState
trigger1 = anim = 3150 && animelemtime(8) = 15
value = 3155
ctrl = 0

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = numenemy
triggerall = anim = 3150 && animelemtime(8) > 2
triggerall = anim = 3150 && animelemtime(9) < -1
trigger1 = !ailevel && command != "holda" && command != "holdc" && command != "holdb"
trigger2 = ailevel
trigger2 = (p2movetype != A) || (enemynear,animtime >= -7)
value = 3150
elem = 9
ignorehitpause = 1

[State 0, PosAdd]
type = PosAdd
trigger1 = anim = 3150 && animelem = 7
x = 50
[State 0, Explod]
type = Explod
trigger1 = anim = 3150 && animelem = 8
anim = 3151
ID = 3151
pos = 5,-30
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = 3
ownpal = 1
ignorehitpause = 1
[State 0, Explod]
type = Explod
trigger1 = anim = 3150 && animelem = 8
anim = 3151
ID = 3151
pos = 10,-60
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = 3
ownpal = 1
ignorehitpause = 1
[State 0, Explod]
type = Explod
trigger1 = anim = 3150 && animelemtime(8) >= 0
trigger1 =anim = 3150 &&  animelemtime(9) < 0
trigger1 = (time%6)=0
anim = 3152
ID = 3152
pos = (animelemtime(7)*9),-50
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = .5,.5
sprpriority = 1
ownpal = 1
ignorehitpause = 1

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fvar(0) = 0.1
[State 0, VarSet]
type = VarAdd
trigger1 = anim = 3150 && animelemtime(9) >= 0
trigger1 = anim = 3150 && animelemtime(12) < 0
trigger1 = fvar(0) < 1
fvar(0) = 0.1
[State 0, AngleDraw]
type = AngleDraw
trigger1 = anim = 3150 && animelemtime(9) >= 0
trigger1 = anim = 3150 && animelemtime(12) < 0
trigger1 = fvar(0) < 1
value = 0
scale = 1/fvar(0),1
ignorehitpause = 1
[State 0, HitBy]
type = NotHitBy
trigger1 = anim = 3150 && animelemtime(8) < 0
value = SA,NA,SA,HA,NP,SP,HP
time = 2
ignorehitpause = 1
[State 0, HitBy]
type = HitBy
trigger1 = anim = 3150 && animelemtime(9) >= 0
trigger1 = anim = 3150 && animelemtime(12) < 0
value = SCA,NT,ST,HT
time = 2
ignorehitpause = 1

[State 0, PosAdd]
type = PosAdd
trigger1 = anim = 3150 && animelem = 9
x = p2bodydist x - 5 + (enemynear,vel x)

[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 3150 && animelem = 6
value = s1,26
[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 3150 && animelem = 9
value = S1,15

;ATTACK
[State 1100, Vel]
type = velset
trigger1 = anim = 3150 && animelem = 12
x = 12
y = -14
[State 1100, Vel]
type = velmul
trigger1 = 1
x = 0.88
[State 1100, Vel]
type = velmul
trigger1 = vel y > 0
x = 0

[State 1100, Snd]
type = Null
trigger1 = anim = 3150 && animelem = 9
value = 41, 0
[State 1100, Dust]
type = helper
trigger1 = anim = 3150 && animelem = 9
helpertype = normal
stateno = 8100
ID = 8100
name = "Dust"
postype = p1
ownpal = 1
[State 0, Woosh]
type = Explod
trigger1 = anim = 3150 && animelem = 9
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

[State 1100, Snd]
type = playsnd
trigger1 = anim = 3150 && animelem = 12
value = 5,1
channel = 0
ignorehitpause = 1
persistent = 0

[State 1100, Hit]
type = hitdef
triggerall= !var(16) && (var(15)<1 || var(20))
trigger1 = animelem = 3 && anim = 3150
ID = 3150
attr = S, SA
damage = 28, 17
animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = ifelse(var(20), 18, 24), ifelse(var(20), 18, 24)
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=64), var(36):= -22
hitsound = s2, 1000
guardsound = s3, 0
ground.type = Low
ground.slidetime = 16
ground.hittime = 16
ground.velocity = ifelse(var(10) = 3, -4, ifelse(var(10) = 2, -3.5, -3)), ifelse(var(10) = 3, -12, ifelse(var(10) = 2, -10, -8))
ground.cornerpush.veloff = 0
air.type = Low
air.velocity = ifelse(var(10) = 3, -4, ifelse(var(10) = 2, -3.5, -3)), ifelse(var(10) = 3, -12, ifelse(var(10) = 2, -10, -8))
guard.velocity = -10.52
guard.cornerpush.veloff = 0;-12.74
getpower = ifelse(p2movetype = H, 72, 144) * (!var(20) && prevstateno != 750), 36 * (!var(20) && prevstateno != 750)
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 4
kill = 0
fall = 1
fall.recover = 1
fall.recovertime = 120
fall.animtype = Medium
yaccel = 0.5
forcestand = 1
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 1100, Hit2]
type = hitdef
trigger1 = animelem = 4 && anim = 3150
trigger1 = !movecontact && !movereversed
ID = 3150
attr = A, SA
damage = 28, 7
animtype = Back
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=64), var(36):= -40
hitsound = s2, 1000
guardsound = s3, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = ifelse(var(10) = 3, -4, ifelse(var(10) = 2, -3.5, -3)), ifelse(var(10) = 3, -12, ifelse(var(10) = 2, -10, -8))
ground.cornerpush.veloff = 0
air.type = Low
air.velocity = ifelse(var(10) = 3, -4, ifelse(var(10) = 2, -3.5, -3)), ifelse(var(10) = 3, -12, ifelse(var(10) = 2, -10, -8))
guard.cornerpush.veloff = 0
guard.velocity = -10.52
getpower = ifelse(p2movetype = H, 72, 144) * (!var(20) && prevstateno != 750), 36 * (!var(20) && prevstateno != 750)
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 4
kill = 0
fall = 1
fall.recover = 1
fall.recovertime = 120
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = ifelse(var(20), -4, -8), -1.5
forcestand = 1
airguard.cornerpush.veloff = 0
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 1100, statetype]
type = statetypeset
trigger1 = anim = 3150 && animelemtime(12) >= 0
trigger2 = anim = 3153
statetype = A
physics = A
[State 1100, Anim]
type = changeanim
trigger1 = anim = 3150 && animelemtime(12) > 0 && vel y > -5
value = 3153
persistent = 0

[State 450, Hit]
type=hitdef
trigger1 = animelem = 10 && anim = 3153
attr = A,HA
hitflag = MAF
guardflag = H
damage = ceil(ifelse(fvar(11)*100<7, 7, fvar(11)*100)), 11
getpower = ifelse(!var(13), 216, 72)*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
guard.pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Trip
air.type = Trip
ground.hittime = 18 + 4*var(9)
ground.slidetime = 18 + 4*var(9)
guard.hittime = 18
air.hittime = 120
ground.velocity = -1, -6.25
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.86, -10.52)
guard.cornerPush.velOff = 0
air.velocity = -1, -8.24
air.cornerPush.velOff = 0
yAccel = 0.677
fall = 1
fall.recover = 0
fall.recoverTime = 120
hitsound = -1 + 0*(var(31):=3000)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8014)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=83), var(36):=-10
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48
envshake.time = 6
envshake.freq = 120
envshake.ampl = 6

[State 3100, HIT YOU]
type=targetstate
trigger1= movehit && numtarget(3150) 
trigger1= target(3150),Movetype=H
trigger1=!(target, time) && !(target, ishelper) 
ID=3150
value=3152
ignorehitpause=1
[State 3100, HIT YOU]
type=changestate
trigger1= movehit && numtarget(3150) 
trigger1= target(3150),Movetype=H
trigger1=!(target, time) && !(target, ishelper) 
value=3161
ignorehitpause=1

[State 3050, End]
type = ChangeState
trigger1 = anim = 3153 && animelemtime(10) >= 10
value = 3200

;The punchline, also dubbed
[Statedef 3161]
type = S
movetype = A
physics = S
velset = 0,0
sprpriority = 0
anim = 3006
ctrl = 0

[State 3002, SuperPause]
type = SuperPause
trigger1 = !time
time = 180
movetime = 180
pos = 0,-30
darken = 0

[State 0, Helper]
type = Helper
trigger1 = time = 20
trigger1 = facing = 1
name = "Portrait"
ID = 3006
stateno = 3006
pos = -260,-floor(screenpos y)
postype = left
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = .4
size.yscale = .4
[State 0, Helper]
type = Helper
trigger1 = time = 20
trigger1 = facing = -1
name = "Portrait"
ID = 3006
stateno = 3006
pos = 260,-floor(screenpos y)
postype = right
facing = -1
keyctrl = 0
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = .4
size.yscale = .4

[State 0, BGPalFX]
type = BGPalFX
trigger1 = !time
time = 220
add = -64,-64,64
mul = 64,64,192
sinadd = 0,0,80,10
invertall = 0
color = 0

[State 0, Explod]
type = Explod
trigger1 = time = 21
anim = 19001
ID = 19001
pos = 18,-26
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
pausemovetime = 999
supermovetime = 999
scale = .15,.15
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1

[State 0, ScreenBound]
type = ScreenBound
trigger1 = time = [10,220]
value = 0
movecamera = 0,0

[State 0, AfterImage]
type = AfterImage
trigger1 = time = 20
time = 10
length = 10
palcolor = 256
palinvertall = 0
palbright = 30,30,30
palcontrast = 120,120,220
palpostbright = 0,0,0
paladd = 255,0,0
palmul = 1,1,1
timegap = 1
framegap = 1
trans = add

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = [21,29)
ID = 19001
trans = addalpha
alpha = (time-20)*32,256
scale = (time-20)*.01875,(time-20)*.01875

[State 0, PosAdd]
type = PosAdd
trigger1 = time >= 20
trigger1 = p2dist x < 35
x = p2dist x-29
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = time = [20,100]
trigger1 = p2dist x > 35
x = 40

[State 0, VelSet]
type = VelSet
trigger1 = time = [20,100]
trigger1 = p2dist x < 35
x = 0

[State 0, Explod]
type = Explod
trigger1 = time = 20
anim = 904
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
pausemovetime = 999
supermovetime = 999
scale = 1,.75
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 20
time = 10
freq = 240
ampl = -2

[State 0, Turn]
type = Turn
trigger1 = !time
trigger1 = p2dist x < 0

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 190 
id = 19001

[State 0, BGPalFX]
type = BGPalFX
trigger1 = time = [190,222]
time = 15
add = 256-(time-190)*10,256-(time-190)*10,256-(time-190)*10
mul = 256,256,256

[State 0, BGPalFX]
type = BGPalFX
trigger1 = time = [206,242]
time = 15
add = -64,-64,-64
mul = 256,256,256

[State 0, BGPalFX]
type = BGPalFX
trigger1 = time = [242,250]
time = 1
add = -64+(time-242)*8,-64+(time-242)*8,-64+(time-242)*8
mul = 256,256,256

[State 0, Explod]
type = Explod
trigger1 = time = 191
anim = 16520
ID = 16520
pos = 0,50
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
pausemovetime = 0
scale = 1,1
sprpriority = -1
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1

[State 0, Explod]
type = Explod
trigger1 = time = 191
anim = 16520
ID = 16521
pos = 12,-75
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
pausemovetime = 0
scale = .25,.15
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1
trans = addalpha
alpha = 192,256

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 190
value = S20,19
volume = 255
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 190
value = S20,20
volume = 255
channel = -1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 191
value = 3007

[State 0, HitDef]
type = HitDef
trigger1 = anim = 3007
trigger1 = time % 3 = 1
trigger1 = time < 235
trigger1 = hitcount < 8
ID = 3150
attr = S,HA
hitflag = MAF
guardflag = HL
ground.type = High
air.type = High
damage = 57,15
hitsound = S2,12
pausetime = 4,4
ground.hittime = 10
air.hittime = 10
sparkno = -1 + 0*(var(33):=8014)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkxy = -17,-32
ground.velocity = IfElse(hitcount<4,-.5,-4),IfElse(hitcount<4,-4,-15)
air.velocity = IfElse(hitcount<4,-.5,-4),IfElse(hitcount<4,-4,-15)
;kill = 0
fall = 1
fall.recover = 0
yaccel = 1
envshake.freq = 120
envshake.ampl = 6
envshake.time = 6
fall.envshake.time = 15
fall.envshake.ampl = -3
fall.envshake.freq = 90
[State 810, EnvShake]
type = EnvShake
trigger1 = time = 220 && anim = 3007
time = 14
freq = 120
ampl = 15
[State 810, PlaySnd]
type = PlaySnd
trigger1 = time = 220
value = s2,11
[State 810, YEET]
type = TargetState
trigger1 = time = 220
trigger1 = numtarget(3150)
id = 3150
value = 1158

[State 0, VelSet]
type = VelSet
trigger1 = time = [191,240]
y = -3

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = [230,246]
ID = 16520
trans = addalpha
alpha = 256-(time-230)*16,256

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = [230,246]
ID = 16521
trans = addalpha
alpha = 192-(time-230)*12,256

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 246
id = 16520

[State 0, VelAdd]
type = VelAdd
trigger1 = time = [240,250]
x = -.3

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = time = 191
statetype = A       ;S,A,C,L
movetype = A        ;I,A,H
physics = A         

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 250
value = 3200
ctrl = 0

;Anime burnout be like...
[Statedef 3200]
type    = A
movetype= H
physics = N
velset = -2.8,-7
poweradd = 40

[State 0, LifeAdd]
type = LifeAdd
trigger1 = time = 0
value = -91
kill = 0
absolute = 1
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = time = 1
anim = 3016
ID = 3016
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
sprpriority = 6
pausemovetime = 0
scale = 1,1
removeongethit = 0
ownpal = 0

[State 810, EnvShake]
type = EnvShake
trigger1 = !time
time = 14
freq = 120
ampl = 4

[State 0, PalFX]
type = PalFX
trigger1 = 1
time = 300
add = random%256,random%256,random%256
mul = random%256,random%256,random%256
invertall = random%2
color = random%256

[State 0, StopSnd]
type = StopSnd
trigger1 = !time
channel = -1
[State 0, StopSnd]
type = StopSnd
trigger1 = !time
channel = 0
[State 0, StopSnd]
type = StopSnd
trigger1 = !time
channel = 1
[State 0, StopSnd]
type = StopSnd
trigger1 = !time
channel = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S2,3100
volume = 255

[State 1013, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 5061

[State 1013, 1] ;Gravity
type = VelAdd
Trigger1 = 1
y = .4

[State 821, Muteki]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1013, 2] ; Recover near ground (use ChangeState)
type = ChangeState
triggerall = time = 15
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 1013, 3] ; Recover in mid air (use SelfState)
type = SelfState
triggerall = time = 15
triggerall = Vel Y > 0
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210 ;HITFALL_AIRRECOVER

[State 1013, 4] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground

;-----------------------------------------------
;The Words
[StateDef 3500]
type = S
physics = S
moveType = A
ctrl = 0
velSet = 0,0
sprpriority = 1
powerAdd = ifelse(var(20),-2000,-3000)
faceP2 = 1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time < 475
value = 0

[State 3000, Portrait]
type = VarSet
trigger1 = !Time
var(1) = 7

[state 3500,Posset]
type=posset
trigger1=!time
y=0

[State 3000, Super Cancel Flag]
type = varset
trigger1 = !time
var(21) = ((prevstateno = [1000, 2999]) && var(7)) || var(20)

[State 3000, Hyper Cancel Flag]
type = varset
trigger1 = !time
var(22) = (prevstateno = [3000, 4999]) && var(8)

[State 3000, CC Reset]
type = palfx
trigger1 = !time
trigger1 = !(var(20) := 0)
time = 1

[State 3000, Corner Push]
type = varset
trigger1 = time = 3
fvar(5) = 0

[State not angery]
type=VarSet
trigger1=!time
var(41)=2

[State 3000, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 40

[State 3000, Super Cancel Flash]
type = palfx
trigger1 = var(21) || var(22)
trigger1 = !(time % 2) && time <= 12
time = 1
add = 255, 255, 255
ignorehitpause = 1

[State 3000, Super Cancel Juggle]
type = varset
trigger1 = !time
trigger1 = var(21) || var(22)
var(15) = 0
ignorehitpause = 1

[State 3500, Super Pause FX]
type = Helper
trigger1 = !time
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = p1
pos = 11, -63
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3500, Super Pause]
type = SuperPause
trigger1 = !time
time = 465
moveTime = 465
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,2
darken = 0

[State 3003, Explod2]
type = explod
trigger1 = !time
anim = 80001
postype = back
pos = 0,0 
ownpal=1
vel=0,0
accel=0,0
facing=1
removetime=37
supermovetime=37
bindtime=-1
supermovetime = 9999
pausemovetime = 99999
sprpriority=-7
removeongethit = 1

[State 0, Helper]
type = Helper
trigger1 = time = 35
trigger1 = facing = 1
name = "Final Portrait"
ID = 3549
stateno = 3549
pos = -270,-floor(screenpos y)
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = .31
size.yscale = .31
[State 0, Helper]
type = Helper
trigger1 = time = 35
trigger1 = facing = -1
name = "Final Portrait"
ID = 3549
stateno = 3549
pos = 270,-floor(screenpos y)
postype = right    ;p2,front,back,left,right
facing = -1
keyctrl = 0
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = .31
size.yscale = .31

[State 0, BGPalFX]
type = BGPalFX
trigger1 = time > 25
time = 1
add = -64,-64,-64
mul = 256,256,256

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 18000
ID = 8000
pos = 160,120
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
pausemovetime = 99999
supermovetime = 99999
scale = 5,5
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = [0,25]
ID = 8000
trans = addalpha
alpha = 0,256-time*ceil(256/24)

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 35
id = 8000

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 480
value = 3500

[State 0, VelSet]
type = VelSet
trigger1 = anim = 3500
x = 30
y = 0

[State 0, AfterImage]
type = AfterImage
trigger1 = anim = 3500
timegap  = 1
framegap = 3
palbright = 0,0,0
palcontrast = 70,20,220
palpostbright = 0,0,0
paladd = 10,10,10
palmul = .65,.65,.65
time = 85
trans = add
palcolor = 50
persistent = 0

[State 0, HitDef]
type = HitDef
trigger1 = !time
attr = S,HA
hitflag = MAF
guardflag = L
ground.type = Low
air.type = Low
damage = 0,0
hitsound = S0,0
guardsound = -1 + 0*(var(32):=0)
guard.sparkno = -1 + 0*(var(34):=8001)
pausetime = 0,0
ground.hittime = 0
air.hittime = 0
sparkno = -1
sparkxy = -25,-35
ground.velocity = 0,0
air.velocity = 0,0
fall = 0
fall.recover = 1
id = 3050
p1stateno = 3501
p2stateno = 3506
persistent = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 3500
value = S1,28
volume = 255
channel = -1
persistent = 0

[State 0, Woosh]
type = Explod
trigger1 = anim = 3500
anim = 16020
ID = 16020
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 10
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 5
supermovetime = 5
scale = 1,.33
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
persistent = 0

[State 3000, EEEEEEEEE]
type = ChangeState
trigger1 = moveguarded
value = 3510

[State 0, StopSnd]
type = StopSnd
trigger1 = anim = 3500
trigger1 = !animtime
channel = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = anim = 3500
trigger1 = !animtime
value = 0
ctrl = 1

;Wombo Combo
[Statedef 3501]
type = S
movetype = A
physics = S
anim = 3051
poweradd = 0
velset = 0,0
ctrl = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S1,29
channel = 2
loop = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
trigger1 = enemy,name = "Darwin Watterson"
value = S5,901
volume = 255
channel = -1

[State 0, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 1
add = -64,-64,-64
mul = 256,256,256

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
trigger2 = animelem = 2
trigger3 = animelem = 3
trigger4 = animelem = 4
value = S2,2
volume = 255
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 9
trigger2 = animelem = 13
trigger3 = animelem = 17
trigger4 = animelem = 21
value = S2,1001
volume = 255
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 25
trigger2 = animelem = 26
trigger3 = animelem = 27
trigger4 = animelem = 28
value = S2,4
volume = 255
channel = -1


[State 0, HitAdd]
type = HitAdd
trigger1 = animelem = 2
trigger2 = animelem = 3
trigger3 = animelem = 4
trigger4 = animelem = 9
trigger5 = animelem = 13
trigger6 = animelem = 17
trigger7 = animelem = 21
trigger8 = animelem = 25
trigger9 = animelem = 26
trigger10 = animelem = 27
trigger11 = animelem = 28
value = 1


[State 0, TargetLifeAdd]
type = TargetLifeAdd
triggerall = numtarget(3050)
trigger1 = animelem = 2
trigger2 = animelem = 3
trigger3 = animelem = 4
trigger4 = animelem = 9
trigger5 = animelem = 13
trigger6 = animelem = 17
trigger7 = animelem = 21
trigger8 = animelem = 25
trigger9 = animelem = 26
trigger10 = animelem = 27
trigger11 = animelem = 28
trigger12 = !time
value = -28
ID = 3050
kill = 0
absolute = 0

[State 0, OW!]
type = TargetState
triggerall = NumTarget(3050)
trigger1 = animelem = 9
value = 3506
ID = 3050

[State 0, OUCH!]
type = TargetState
triggerall = NumTarget(3050)
trigger1 = animelem = 25
value = 3505
ID = 3050

[State 0, Hit Sparks]
type = Helper
trigger1 = !time
trigger2 = animelem = 2
trigger3 = animelem = 3
trigger4 = animelem = 4
trigger5 = animelem = 9
trigger6 = animelem = 13
trigger7 = animelem = 17
trigger8 = animelem = 21
trigger9 = animelem = 25
trigger10 = animelem = 26
trigger11 = animelem = 27
trigger12 = animelem = 28
helperType = Normal
stateNo = 8012
ID = 8001
name = "Spark"
posType = P1
pos = 50, -50
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1
[State 810, Bigger Hit Spark]
type = Helper
trigger1 = NumTarget && AnimElem = 22
helperType = Normal
stateNo = 8014
ID = 8001
name = "Spark"
posType = P1
pos = 43, -44
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 0, TargetVelAdd]
type = TargetVelAdd
triggerall = numtarget(3050)
trigger1 = animelem = 5,<0
x = 0
y = .4
ID = 3050

[State 0, TargetVelSet]
type = TargetVelSet
triggerall = numtarget(3050)
trigger1 = !time
trigger2 = animelem = 2
trigger3 = animelem = 3
trigger4 = animelem = 4
x = -2
y = -3
ID = 3050


[State 0, TargetVelSet]
type = TargetVelSet
triggerall = numtarget(3050)
trigger1 = animelem = 5
x = 0
y = 0
ID = 3050

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 6,>=0
trigger1 = animelem = 7,<0
x = 3
y = -7.5

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 7
y = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 7
value = S41,0
volume = 255
channel = -1

[State 0, Landing dust]
type = Explod
trigger1 = animelem = 7
anim = 8102
ID = 16010
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
scale = .4,.4
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, GENOCIDE CUTTA]
type = Explod
trigger1 = animelem = 9
trigger2 = animelem = 13
trigger3 = animelem = 17
trigger4 = animelem = 21
anim = 16250
ID = 16250
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
scale = 1,1
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, EnvShake]
type = EnvShake
trigger1 = !time
time = 600
freq = 120
ampl = -4

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 29
x = -15
y = -7
persistent = 0

[State 0, VelAdd]
type = VelAdd
trigger1 = animelem = 29,>=0
trigger1 = vel y < 0
y = .2


[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 0, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 3502
ctrl = 0








;Damn son
[Statedef 3502]
type = S
movetype = A
physics = S
anim = 16240
poweradd = 0
velset = 0,0
sprpriority = 1
ctrl = 0

[State 0, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 1
add = -64,-64,-64
mul = 256,256,256

[State 0, AngleDraw]
type = AngleDraw
trigger1 = time < 20
value = -40
scale = .4,.4

[State 0, AngleDraw]
type = AngleDraw
trigger1 = time >= 20
trigger1 = anim = 16240
value = 0
scale = .4,.4

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 16550
ID = 16550
pos = -30,-10
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0


[State 0, VelSet]
type = VelSet
trigger1 = time < 20
x = 30
y = 10 

[State 0, ScreenBound]
type = Null
trigger1 = 1
value = 0
movecamera = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
trigger2 = time = 22
trigger3 = time = 42
value = S1,30
volume = 255
channel = -1

[State 0, HitAdd]
type = HitAdd
trigger1 = time = 5
trigger2 = time = 25
trigger3 = time = 45
value = 1

[State 0, TargetLifeAdd]
type = TargetLifeAdd
triggerall = numtarget(3050)
trigger1 = time = 5
trigger2 = time = 25
trigger3 = time = 45
value = -40
ID = 3050
kill = 0
absolute = 0

[State 0, Hit Sparks]
type = Helper
trigger1 = time = 5
trigger2 = time = 25
helperType = Normal
stateNo = 8013
ID = 8001
name = "Spark"
posType = P1
pos = -20, -15
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 0, Another Hit Spark]
type = Helper
trigger1 = time = 45
helperType = Normal
stateNo = 8013
ID = 8001
name = "Spark"
posType = P1
pos = -20, -15
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
trigger2 = time = 22
trigger3 = time = 40
value = S2,6
volume = 255
channel = -1

[State 0, TargetState]
type = TargetState
triggerall = NumTarget(3050)
trigger1 = time = 5
trigger2 = time = 25
trigger3 = time = 45
value = 3507+(time=45)
ID = 3050

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 8001
ID = 18001
pos = 160,120
postype = left  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = 5,5
sprpriority = -3
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, PosSet]
type = PosSet
trigger1 = time = 20
x = target(3050),pos x
y = target(3050),pos y

[State 0, Turn]
type = Turn
trigger1 = time = 20

[State 0, PosAdd]
type = PosAdd
trigger1 = time = 20
x = -300
y = 70
[State 0, VelSet]
type = VelSet
trigger1 = time = [20,75)
x = 40
y = -13 

[State 0, Explod]
type = Explod
trigger1 = time = 20
anim = 16550
ID = 16550
pos = -30,10
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = -1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, PosSet]
type = PosSet
trigger1 = time = 40
x = target(3050),pos x
y = target(3050),pos y

[State 0, Turn]
type = Turn
trigger1 = time = 40

[State 0, PosAdd]
type = PosAdd
trigger1 = time = 40
x = -250
y = 54

[State 0, Explod]
type = Explod
trigger1 = time = 40
anim = 16550
ID = 16550
pos = -30,10
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = -1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, Explod]
type = Explod
trigger1 = time = 45
anim = 16550
ID = 16550
pos = 0,60
postype = left  ;p2,front,back,left,right
facing = -1
vfacing = -1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 10
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, Explod]
type = Explod
trigger1 = time = 55
anim = 16550
ID = 16550
pos = 0,60
postype = right  ;p2,front,back,left,right
facing = 1
vfacing = -1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 10
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 55
trigger2 = time = 45
value = s1,31
volume = 255
channel = -1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 75
value = 3052

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 100
value = S730,0
channel = -1

[State 0, PosSet]
type = PosSet
trigger1 = time = 75
x = target(3050),pos x
y = target(3050),pos y

[State 0, PosAdd]
type = PosAdd
trigger1 = time = 75
x = -150
y = 20

[State 0, Trans]
type = Trans
trigger1 = time = [75,83]
trans = addalpha
alpha = (time-75)*32,256-(time-75)*32

[State 0, VelSet]
type = VelSet
trigger1 = time = [75,83]
x = 12-(time-75)*1.475
y = -3+(time-75)*.3125

[State 801, TargetBind]
type = TargetBind
trigger1 = time = [75,83]
time = 1
pos = 40,30
	
[State 0, VelSet]
type = VelSet
trigger1 = time > 83
x = .2
y = -.5+(time-83)*.005

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 83
trigger1 = enemy,name = "Darwin Watterson"
value = S5,902
volume = 255
channel = -1

[State 0, Explod]
type = Explod
trigger1 = time = 80
anim = 16310
ID = 16310
pos = 0,0
postype = left  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
pausemovetime = 0
scale = .5,.5
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 3004, AssertSpecial]
type = AssertSpecial
trigger1 = time >= 80
flag = nofg

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = [80,96]
ID = 16310
trans = addalpha
alpha = (time-80)*16,256-(time-80)*16

[State 0, Explod]
type = Explod
trigger1 = time = 80
anim = 16251
ID = 16251
pos = -35,-60
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
pausemovetime = 0
scale = .5,.5
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(16251)
ID =16251
scale = .5+sin(time-80)*.1,.5+sin(time-80)*.1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = anim = 3052
trigger1 = animelem = 8
id = 16251
persistent = 0

[State 0, The Dragon]
type = Helper
trigger1 = anim = 3052
trigger1 = animelem = 8
helpertype = normal ;player
name = "Dragon"
ID = 3504
stateno = 3504
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0
persistent = 0

[State 0, VarSet]
type = VarSet
trigger1 = !time
v = 31    ;fv = 10
value = 0

[State 0, VarAdd]
type = VarAdd
trigger1 = anim = 3052
trigger1 = animelem = 8,>=0
v = 31    ;fv = 
value = 1


[State 0, HitAdd]
type = HitAdd
trigger1 = var(31) > 0
value = 1
persistent = 0

[State 0, VelSet]
type = VelSet
trigger1 = var(31) >= 13
x = 1
y = 7

[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = var(31) >= 10
trigger1 = numtarget(3050)
value = -90
ID = 3050
kill = 1
absolute = 0
persistent = 0

[State 0, TargetState]
type = TargetState
triggerall = NumTarget(3050);()
trigger1 = var(31) >= 15
value = 3509
ID = 3050
persistent = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = pos y >= 0
trigger1 = anim = 3052
trigger1 = animelem = 8,>=0
value = 3503
ctrl = 0






;that ain't falco--OH, OHHHH
[Statedef 3503]
type = S
movetype = A
physics = S
anim = 3053
poweradd = 0
velset = 0,0
sprpriority = 1
ctrl = 0


[State 0, StopSnd]
type = StopSnd
trigger1 = !time
channel = 2

[State 0, StopSnd]
type = StopSnd
trigger1 = !time
channel = 0

[State 0, Explod]
type = Explod
trigger1 = time = 6
anim = 3016
ID = 16551
pos = 0,-30
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = -1
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, EnvShake]
type = EnvShake
trigger1 = !time
time = 30
freq = 120
ampl = -3

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = !time
id = 16310

[State 0, BGPalFX]
type = BGPalFX
trigger1 = time = [0,64]
trigger1 = !winko
time = 1
add = 256-time*4,256-time*4,256-time*4

[State 0, VelSet]
type = VelSet
trigger1 = !time
x = 0
y = 0

[State 0, PosSet]
type = PosSet
trigger1 = !time
y = 0

[State 0, TargetDrop]
type = TargetDrop
trigger1 = !time
excludeID = -1

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 100
value = 0
ctrl = 1
;anim =
;ignorehitpause = 
;persistent = 












;the dragon
[Statedef 3504]
type = S
movetype = I
physics = S
anim = 16252
poweradd = 0
velset = 0,0
sprpriority = 7
ctrl = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 10
value = S1,32
volume = 255
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 10
value = S2,3100
volume = 255
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 10
value = S2,6
volume = 255
channel = -1

[State 0, VarSet]
type = VarSet
trigger1 = parent,stateno != 3052
trigger1 = var(1) = 0
v = 1
value = 1
persistent = 0

[State 0, Screen]
type = Explod
trigger1 = time = 10
anim = 18000
ID = 18000
pos = 160,120
postype = left  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 8
pausemovetime = 0
scale = 5,5
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = [10,18]
trigger1 = numexplod(8000)
ID = 8000
trans = addalpha
alpha = 256-(time-10)*32,256

[State 0, Trans]
type = Trans
trigger1 = var(1) = 0
trans = addalpha
alpha = 224,32

[State 0, AngleDraw]
type = AngleDraw
trigger1 = var(1) = 0
value = 0
scale = .75,.75

[State 0, AngleDraw]
type = AngleDraw
trigger1 = time >= 10
trigger1 = var(1) = 0
value = 0
scale = .75,.75+(time%4=[0,1])*.15

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = var(1) >= 1
trigger1 = anim != 16253
value = 16253

[State 0, AngleDraw]
type = AngleDraw
trigger1 = var(1) >= 1
scale = .75-var(1)*.046875,.75+var(1)*.2

[State 0, PalFX]
type = PalFX
trigger1 = var(1) >= 1
time = 1
add = 256,256,256
mul = 256,256,256

[State 0, DestroySelf]
type = DestroySelf
trigger1 = var(1) = 16

[State 0, VarAdd]
type = VarAdd
trigger1 = var(1) >= 1
v = 1    ;fv = 
value = 1





;OW!
[Statedef 3505]
type = S
movetype = H
physics = S
anim = 5012
poweradd = 0
ctrl = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 0, ScreenBound]
type = ScreenBound
trigger1 =1 
value = 0
movecamera = 0,0

[State 0, SelfState]
type = SelfState
trigger1 = time = 720
value = 5050


;OW!
[Statedef 3506]
type = S
movetype = H
physics = S
anim = 5030
poweradd = 0
ctrl = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 0, ScreenBound]
type = ScreenBound
trigger1 =1 
value = 0
movecamera = 0,0

[State 0, SelfState]
type = SelfState
trigger1 = time = 720
value = 5050


;OUCH!
[Statedef 3507]
type = S
movetype = H
physics = S
anim = 5012
poweradd = 0
ctrl = 0

[State 0, PalFX]
type = PalFX
trigger1 = !time
time = 25
add = 64,128,256
mul = 256,256,256
sinadd = 0,50,50,5
invertall = 1
color = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 0, ScreenBound]
type = ScreenBound
trigger1 =1 
value = 0
movecamera = 0,0

[State 0, SelfState]
type = SelfState
trigger1 = time = 720
value = 5050


;AAAARGHH
[Statedef 3508]
type = S
movetype = H
physics = S
anim = 5030
poweradd = 0
ctrl = 0

[State 0, PalFX]
type = PalFX
trigger1 = !time
time = 45
add = 64,128,256
mul = 256,256,256
sinadd = 0,50,50,5
invertall = 1
color = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 0, ScreenBound]
type = ScreenBound
trigger1 =1 
value = 0
movecamera = 0,0

[State 0, Offset]
type = Offset
trigger1 = 1
x = (time%4=0)*2
y = 0

[State 0, SelfState]
type = SelfState
trigger1 = time = 720
value = 5050




;LMAO
[Statedef 3509]
type = S
movetype = H
physics = S
anim = 5050
poweradd = 0
ctrl = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time && alive
value = S11,0

[State 0, VelSet]
type = VelSet
trigger1 = 1
x = -4

[State 0, VelSet]
type = VelSet
trigger1 = !time
x = -6
y = -2

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
x = 0
y = .11+time*.002

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 0
value = 0
movecamera = 0,0

[State 0, PosSet]
type = PosSet
trigger1 = pos y >= 0
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = pos y >= 0
y = 0

[State 0, SelfState]
type = SelfState
trigger1 = pos y = 0
value = 5100

;NO!
[Statedef 3510]
type    = S
movetype= H
physics = S
velset = -5.5,0
anim = 3510
ctrl = 0
sprpriority = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = ishelper
value = SCA,AA,AP,AT
time = 1
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S3,0
channel = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = S5,7
channel = 1

[State 3000, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = ifelse(ishelper,3007,0)
ctrl = ifelse(ishelper,0,1)



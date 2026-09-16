;---------------------------------------------------------------------------
; KO Voice
[Statedef 179]
type = S
ctrl = 0
anim = 9741
velset = 0,0

;[State FART]
;type = PlaySnd
;trigger1 = parent,time = 1
;value = S5,4
;channel = 5
;volume = 255
;abspan = 0
;ignorehitpause = 1

[State WHAM Timer]
type = VarSet
trigger1 = 1
var(30) = parent,var(32)
ignorehitpause = 1
[State WHAM Timer]
type = VarSet
trigger1 = (parent,var(33)=0)
v = 32
value = 0
ignorehitpause = 1
[State WHAM Timer]
type = VarAdd
trigger1 = (parent,var(33)=1)
v = 32
value = 1
ignorehitpause = 1
[State WHAM]
type = PlaySnd
;trigger1 = parent,numtarget
;trigger1 = var(30)
;trigger1 = playerID(var(30)),stateno = 227
;trigger1 = playerID(var(30)),time = 1
;trigger1 = playerID(var(30)),movetype = H
trigger1 = var(32) = 1
value = S0,5
freqmul = 1.0
ignorehitpause = 1

[State PERFECT]
type = PlaySnd
trigger1 = winko
trigger1 = roundstate = 3
trigger1 = parent,life = lifemax
value = S0,6
volume = 255
abspan = 0
ignorehitpause = 1
persistent = 0
;[State HOLY SHIT]
;type = PlaySnd
;trigger1 = winko
;trigger1 = roundstate = 3
;trigger1 = parent,life = [1,80]
;value = S0,25
;volume = 255
;abspan = 0
;ignorehitpause = 1
;persistent = 0


[State 0, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = 1
text = "30 = %d 32 = %d"
params = var(30),var(32)

[State 0, VarSet]
type = VarAdd
trigger1 = var(12) > 0
trigger1 = numexplod(947)
var(12) = -1
[State 0, VarSet]
type = VarSet
trigger1 = fvar(13) != 0
trigger1 = !numexplod(947)
fvar(13) = 0
[State 0, VarSet]
type = VarAdd
trigger1 = var(12) > 0
trigger1 = fvar(13) < 1
trigger1 = numexplod(947)
fvar(13) = 0.05
[State 0, VarSet]
type = VarAdd
trigger1 = fvar(13) > 0
trigger1 = numexplod(947)
trigger1 = var(12) <= 0
fvar(13) = -0.05
[State 0, VarSet]
type = VarSet
trigger1 = fvar(13) > 1
trigger1 = var(12) > 0
trigger1 = numexplod(947)
fvar(13) = 1

[State 0, VarSet]
type = VarSet
trigger1 = !numexplod(947)
trigger1 = (p2movetype != H && p2stateno != [5000,5110]) || roundstate = 4
trigger1 = p2life - var(13) <= -380
var(12) = 150
[State SOVIET DAMAGE]
type = Explod
trigger1 = !numexplod(947)
trigger1 =(p2movetype != H && p2stateno != [5000,5110]) || roundstate = 4
trigger1 = p2life - var(13) <= -380
anim = 947
ID = 947
pos = 160,ceil(gameheight - 20)
postype = left
bindtime = -1
;removetime = 150
removetime = -1
supermovetime = 65535
pausemovetime = 65535
scale = 1,fvar(13)
sprpriority = 666
ontop = 1
ownpal = 1
ignorehitpause = 1
[State MAO]
type = ModifyExplod
trigger1 = numexplod(947)
ID = 947
pos = 160,ceil(GameHeight - 20)
supermovetime = 65535
pausemovetime = 65535
scale = 1,fvar(13)
sprpriority = 666
ontop = 1
ownpal = 1
ignorehitpause = 1
[State REM]
type = RemoveExplod
trigger1 = numexplod(947)
trigger1 = fvar(13) <= 0
trigger1 = var(12) <= 0
id = 947
ignorehitpause = 1

[State remember p2 life]
type = VarSet
trigger1 = (p2movetype != H && p2stateno != [5000,5110]) || roundstate = 4
var(13) = p2life
ignorehitpause = 1

; Neuro bar

[State length]
type = VarSet
trigger1 = 1
fvar(20) = parent,var(30)
[State fvar]
type = VarSet
trigger1 = 1
fvar(21) = ifelse(fvar(20)>250,1,fvar(20)/250)
[State length]
type = VarSet
trigger1 = 1
fvar(32) = parent,var(32)
[State fvar]
type = VarSet
trigger1 = 1
fvar(33) = ifelse(fvar(32)>100,1,fvar(32)/100)
[State ..]
type = VarSet
trigger1 = time = 0
var(20) = -16
[State ..]
type = VarAdd
triggerall = time
triggerall = var(20) < 0
trigger1 = roundstate = 2
var(20) = 1
[State ..]
type = VarAdd
triggerall = time
triggerall = var(20) > -35
trigger1 = roundstate != 2
var(20) = -1
[State R]
type = VarAdd
trigger1 = var(23) < 255
trigger1 = parent,var(30)>=50
var(23) = 5
[State R]
type = VarAdd
trigger1 = var(23) > 0
trigger1 = parent,var(30)<50
var(23) = -5
[State G]
type = VarAdd
trigger1 = var(24) < 255
trigger1 = parent,var(30)=[0,50]
trigger2 = var(24) < 200
trigger2 = parent,var(30)=[50,100]
trigger3 = var(24) < 100
trigger3 = parent,var(30)=[100,150]
var(24) = 5
[State G]
type = VarAdd
trigger1 = var(24) > 0
trigger1 = parent,var(30)=[150,200]
trigger2 = var(24) > 200
trigger2 = parent,var(30)=[50,100]
trigger3 = var(24) > 100
trigger3 = parent,var(30)=[100,150]
var(24) = -5

[State 0, Explod]
type = Explod
trigger1 = (parent,teamside = 1)
anim = 10100
ID = 3302
pos = 4+var(20),149
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = 1
supermovetime = 65535
pausemovetime = 65535
scale = 0.5,0.5
sprpriority = 800
ontop = 1
ownpal = 1
ignorehitpause = 1
[State 0, Explod]
type = Explod
trigger1 = (parent,teamside = 1)
trigger1 = fvar(32) > 0
anim = 10105
ID = 934
pos = 4+var(20),149
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = 1
supermovetime = 65535
pausemovetime = 65535
scale = 0.5,0.5*fvar(33)
sprpriority = 800
ontop = 1
ownpal = 1
ignorehitpause = 1
[State 0, Explod]
type = Explod
trigger1 = (parent,teamside = 1)
trigger1 = fvar(20) > 0
anim = 10101
ID = 934
pos = 4+var(20),149
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = 1
supermovetime = 65535
pausemovetime = 65535
scale = 0.4,0.48*fvar(21)
sprpriority = 800
ontop = 1
ownpal = 0
ignorehitpause = 1
[State 0, Explod]
type = Explod
trigger1 = (parent,teamside = 2)
anim = 10102
ID = 933
pos = -4-var(20),149
postype = right
facing = 1
vfacing = 1
bindtime = -1
removetime = 1
supermovetime = 65535
pausemovetime = 65535
scale = 0.5,0.5
sprpriority = 802
ontop = 1
ownpal = 1
ignorehitpause = 1
[State 0, Explod]
type = Explod
trigger1 = (parent,teamside = 2)
trigger1 = fvar(20) > 0
anim = 10101
ID = 934
pos = -4-var(20),149
postype = right
facing = 1
vfacing = 1
bindtime = -1
removetime = 1
supermovetime = 65535
pausemovetime = 65535
scale = 0.4,0.48*fvar(21)
sprpriority = 800
ontop = 1
ownpal = 0
ignorehitpause = 1
[State 0, Explod]
type = Explod
trigger1 = (parent,teamside = 2)
trigger1 = fvar(32) > 0
anim = 10106
ID = 934
pos = -4-var(20),149
postype = right
facing = 1
vfacing = 1
bindtime = -1
removetime = 1
supermovetime = 65535
pausemovetime = 65535
scale = 0.5,0.5*fvar(33)
sprpriority = 800
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 0, PalFX]
type = PalFX
trigger1 = fvar(20) > 0
time = 2
mul = 1+var(23),1+var(24),1
ignorehitpause = 1

; bonk
[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = parent,numexplod(3906)
flag = nobardisplay
ignorehitpause = 1
;----------------------------------------------------------------------
; WILD KARNOV ARRIVED
[Statedef 1891]
type = A
movetype= A
physics = N
anim = 9741;3561
velset = 0,0
sprpriority = 888


[State 0, VarSet]
type = VarSet
trigger1 = time = 0
var(10) = 160
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
var(11) = ceil(GameHeight/2)

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fvar(1) = 1
[State 0, VarAdd]
type = VarSet
trigger1 = time
fvar(1) = fvar(1) * 0.943
[State 0, VarAdd]
type = VarAdd
trigger1 = time
fvar(0) = 0.09 * fvar(1)

[State 0, Explod]
type = Explod
trigger1 = time = 0
id = 3561
anim = 1891
pos = var(10),var(11)
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = 80
supermovetime = 65535
pausemovetime = 65535
scale = .1,.1
sprpriority = 888
ontop = 1
ownpal = 1
[State 0, Explod]
type = ModifyExplod
trigger1 = numexplod(3561)
id = 3561
pos = var(10),var(11)
postype = left
scale = .1+fvar(0),.1+fvar(0)


[State 0, DestroySelf]
type = DestroySelf
trigger1 = time >= 81

;------------------
; Hit by Fast Kung Fu Palm - flying through the air
; (a custom gethit state)
[Statedef 226]
type    = A
movetype= H
physics = N

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 1026, Velocity]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 1026, Gravity]
type = VelAdd
trigger1 = 1
y = .45

[State 1026, No scroll]
type = ScreenBound
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist < 65
trigger2 = FrontEdgeBodyDist < 65
value = 1
movecamera = 0,1

[State 1026, Hit wall]
type = ChangeState
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist <= 20
trigger2 = FrontEdgeBodyDist <= 20
value = 227

[State 1026, Hit ground]
type = SelfState
trigger1 = vel y + pos y >= const(movement.air.gethit.groundlevel)
value = 5100

;------------------
; Hit by Fast Kung Fu Palm - bounce off wall
; (a custom gethit state)
[Statedef 228]
type    = A
movetype= H
physics = N

;[State 1028, 1]
;type = NotHitBy
;trigger1 = 1
;value = , NA, NP

[State 1028, Vel Y]
type = VelSet
trigger1 = Time = 0
y = ifelse(sysvar(4),-9,-6.5)

[State 1028, Vel X]
type = VelSet
trigger1 = Time = 0
x = ifelse(sysvar(4),1,1.6)

[State 1028, Turn]
type = Turn
trigger1 = (Time = 0) && (BackEdgeDist < 30)

[State 1028, Gravity]
type = VelAdd
trigger1 = 1
y = .4

[State 1028, Anim 5050] ;Self falling animation
type = ChangeAnim
trigger1 = Time = 0
trigger1 = !SelfAnimExist(5052)
value = 5050

[State 1028, Anim 5052] ;Self falling animation (diagup type)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5052)
value = 5052

[State 1028, Anim 5060] ;Coming down - normal
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5050
trigger1 = SelfAnimExist(5060)
persistent = 0
value = 5060

[State 1028, Anim 5062] ;Coming down - diagup type
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5052
trigger1 = SelfAnimExist(5062)
persistent = 0
value = 5062

[State 1028, Hit ground]
type = SelfState
trigger1 = vel y + pos y >= const(movement.air.gethit.groundlevel)
value = 5100


;------------------
; Hit by Fast Kung Fu Palm - flying through the air
; (a custom gethit state)
[Statedef 326]
type    = A
movetype= H
physics = N

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 1026, Velocity]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 1026, Gravity]
type = VelAdd
trigger1 = 1
y = .45

[State 1026, No scroll]
type = ScreenBound
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist < 65
trigger2 = FrontEdgeBodyDist < 65
value = 1
movecamera = 0,1

[State 1026, Hit wall]
type = ChangeState
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist <= 20
trigger2 = FrontEdgeBodyDist <= 20
value = 327

[State 1026, Hit ground]
type = SelfState
trigger1 = vel y + pos y >= const(movement.air.gethit.groundlevel)
value = 5100

;------------------
; Hit by Fast Kung Fu Palm - bounce off wall
; (a custom gethit state)
[Statedef 328]
type    = A
movetype= H
physics = N

;[State 1028, 1]
;type = NotHitBy
;trigger1 = 1
;value = , NA, NP

[State 1028, Vel Y]
type = VelSet
trigger1 = Time = 0
y = -5.7

[State 1028, Vel X]
type = VelSet
trigger1 = Time = 0
x = 34.34

[State 1028, Turn]
type = Turn
trigger1 = (Time = 0) && (frontEdgeDist < 30)

[State 1028, Gravity]
type = VelMul
trigger1 = 1
x = 0.9
[State 1028, Gravity]
type = VelAdd
trigger1 = 1
y = .4

[State 1028, Anim 5050]
type = ChangeAnim2
trigger1 = Time = 0
value = 328

[State 1028, Hit ground]
type = SelfState
trigger1 = vel y + pos y >= const(movement.air.gethit.groundlevel)
value = 5100

;---------------------------------------------------------------------------
; COME ON AND SLAM!!!
[Statedef 731]
type    = S
movetype= I
physics = S
velset = 0,0
anim = 9741
ctrl = 0
sprpriority = 3

[State 0, VarSet]
type = VarSet
trigger1 = 1
fvar(21) = sin((time)*.1)*1
[State 0, VarSet]
type = VarSet
trigger1 = 1
fvar(22) = cos((time)*.022)*250
[State 0, VarSet]
type = VarSet
trigger1 = 1
fvar(23) = sin((time)*.11)*1
[State 0, VarSet]
type = VarSet
trigger1 = 1
fvar(24) = sin((time)*.19)*1
[State 0, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 2
add = -60+ceil(60*fvar(21)),ceil(30*fvar(23)),ceil(20*fvar(24))
;mul = 256,256,256
color = ceil(fvar(22))
ignorehitpause = 1


[State 0, VarSet]
type = VarSet
trigger1 = time = 0
var(0) = ceil((420) / ((powermax+1000) / (power+1000)) )

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 2
ignorehitpause = 1

[State EX]
type = AfterImage
trigger1 = time = 0
length = 20
PalBright   =  30, 30,  0
PalContrast =  70, 70, 20
PalAdd      = -10,-10,-10
PalMul      = .85,.65,.50
TimeGap  = 1
FrameGap = 6
Trans = Add
time = 2
[State EX]
type = AfterImageTime
trigger1 = time
time = 2
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time
value = parent,anim
elem = parent,animelemno(0)
ignorehitpause = 1
[State 0, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
facing = 1
pos = 0,0
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nomusic
flag2 = invisible
ignorehitpause = 1
[State 0, ParentVarSet]
type = ParentVarSet
trigger1 = 1
var(40) = 0
ignorehitpause = 1
[State 0, ParentVarSet]
type = ParentVarSet
trigger1 = 1
var(41) = 0
ignorehitpause = 1
[State 0, ParentVarSet]
type = ParentVarSet
trigger1 = 1
var(42) = 0
ignorehitpause = 1
[State 0, ParentVarSet]
type = ParentVarSet
trigger1 = 1
var(43) = 0
ignorehitpause = 1
[State 0, ParentVarSet]
type = ParentVarSet
trigger1 = parent,var(37) != 1
var(37) = 1
ignorehitpause = 1
[State 0, ParentVarSet]
type = ParentVarAdd
trigger1 = (time%8)=0
trigger1 = (parent,prevstateno) != (parent,stateno)
trigger1 = fvar(13) < 1
fvar(13) = .01
ignorehitpause = 1
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,48
channel = 0
loop = 1
abspan = 0

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fvar(31) = var(0)
[State 0, VarSet]
type = VarSet
trigger1 = 1
fvar(30) = ((420 + fvar(31)) - time) / (420 + fvar(31))


[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 10110
ID = 736
pos = 160,GameHeight-5
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = 65535
supermovetime = 65535
scale = .5,.5
sprpriority = 920
ontop = 1
ownpal = 1
[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 737
ID = 737
pos = 160,GameHeight-5
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = 65535
supermovetime = 65535
scale = 1.05*fvar(30),.74
sprpriority = 921
ontop = 1
ownpal = 1

[State 0, Explod]
type = ModifyExplod
trigger1 = time
trigger1 = numexplod(737)
ID = 737
scale = 1.05*fvar(30),.74


[State 0, PowerSet]
type = PowerSet
trigger1 = 1
value = 0
ignorehitpause = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = time >= 420 + var(0)
trigger2 = time
trigger2 = roundstate > 2
value = 732
ctrl = 0

;---------------------------------------------------------------------------
; COME ON AND SLAM!!!
[Statedef 733]
type    = S
movetype= I
physics = S
velset = 0,0
anim = 9741
ctrl = 0
sprpriority = 3

[State 0, VarSet]
type = VarSet
trigger1 = 1
fvar(21) = sin((time)*.1)*1
[State 0, VarSet]
type = VarSet
trigger1 = 1
fvar(22) = cos((time)*.022)*250
[State 0, VarSet]
type = VarSet
trigger1 = 1
fvar(23) = sin((time)*.11)*1
[State 0, VarSet]
type = VarSet
trigger1 = 1
fvar(24) = sin((time)*.19)*1
[State 0, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 2
add = -60+ceil(60*fvar(21)),ceil(30*fvar(23)),ceil(20*fvar(24))
;mul = 256,256,256
color = ceil(fvar(22))
ignorehitpause = 1


[State 0, VarSet]
type = VarSet
trigger1 = time = 0
var(0) = ceil((5000) / ((powermax+1000) / (power+1000)) )

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 2
ignorehitpause = 1

[State EX]
type = AfterImage
trigger1 = time = 0
length = 20
PalBright   =  30, 30,  0
PalContrast =  70, 70, 20
PalAdd      = -10,-10,-10
PalMul      = .85,.65,.50
TimeGap  = 1
FrameGap = 6
Trans = Add
time = 2
[State EX]
type = AfterImageTime
trigger1 = time
time = 2
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time
value = parent,anim
elem = parent,animelemno(0)
ignorehitpause = 1
[State 0, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
facing = 1
pos = 0,0
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nomusic
flag2 = invisible
ignorehitpause = 1
[State 0, ParentVarSet]
type = ParentVarSet
trigger1 = 1
var(40) = 0
ignorehitpause = 1
[State 0, ParentVarSet]
type = ParentVarSet
trigger1 = 1
var(41) = 0
ignorehitpause = 1
[State 0, ParentVarSet]
type = ParentVarSet
trigger1 = 1
var(42) = 0
ignorehitpause = 1
[State 0, ParentVarSet]
type = ParentVarSet
trigger1 = 1
var(43) = 0
ignorehitpause = 1
[State 0, ParentVarSet]
type = ParentVarSet
trigger1 = parent,var(37) != 1
var(37) = 1
ignorehitpause = 1
[State 0, ParentVarSet]
type = ParentVarAdd
trigger1 = (time%8)=0
trigger1 = (parent,prevstateno) != (parent,stateno)
trigger1 = fvar(13) < 1
fvar(13) = .01
ignorehitpause = 1
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,48
channel = 0
loop = 1
abspan = 0

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fvar(31) = var(0)
[State 0, VarSet]
type = VarSet
trigger1 = 1
fvar(30) = ((5000 + fvar(31)) - time) / (5000 + fvar(31))


[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 10110
ID = 736
pos = 160,GameHeight-5
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = 65535
supermovetime = 65535
scale = .5,.5
sprpriority = 920
ontop = 1
ownpal = 1
[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 737
ID = 737
pos = 160,GameHeight-5
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = 65535
supermovetime = 65535
scale = 1.05*fvar(30),.74
sprpriority = 921
ontop = 1
ownpal = 1

[State 0, Explod]
type = ModifyExplod
trigger1 = time
trigger1 = numexplod(737)
ID = 737
scale = 1.05*fvar(30),.74


[State 0, PowerSet]
type = PowerSet
trigger1 = 1
value = 0
ignorehitpause = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = time >= 5000 + var(0)
trigger2 = time
trigger2 = roundstate > 2
value = 732
ctrl = 0
; COME ON AND SLAM!!!
[Statedef 731]
type    = S
movetype= I
physics = S
velset = 0,0
anim = 9741
ctrl = 0
sprpriority = 3

[State 0, VarSet]
type = VarSet
trigger1 = 1
fvar(21) = sin((time)*.1)*1
[State 0, VarSet]
type = VarSet
trigger1 = 1
fvar(22) = cos((time)*.022)*250
[State 0, VarSet]
type = VarSet
trigger1 = 1
fvar(23) = sin((time)*.11)*1
[State 0, VarSet]
type = VarSet
trigger1 = 1
fvar(24) = sin((time)*.19)*1
[State 0, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 2
add = -60+ceil(60*fvar(21)),ceil(30*fvar(23)),ceil(20*fvar(24))
;mul = 256,256,256
color = ceil(fvar(22))
ignorehitpause = 1


[State 0, VarSet]
type = VarSet
trigger1 = time = 0
var(0) = ceil((9999999) / ((powermax+1000) / (power+1000)) )

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 2
ignorehitpause = 1

[State EX]
type = AfterImage
trigger1 = time = 0
length = 20
PalBright   =  30, 30,  0
PalContrast =  70, 70, 20
PalAdd      = -10,-10,-10
PalMul      = .85,.65,.50
TimeGap  = 1
FrameGap = 6
Trans = Add
time = 2
[State EX]
type = AfterImageTime
trigger1 = time
time = 2
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time
value = parent,anim
elem = parent,animelemno(0)
ignorehitpause = 1
[State 0, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
facing = 1
pos = 0,0
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nomusic
flag2 = invisible
ignorehitpause = 1
[State 0, ParentVarSet]
type = ParentVarSet
trigger1 = 1
var(40) = 0
ignorehitpause = 1
[State 0, ParentVarSet]
type = ParentVarSet
trigger1 = 1
var(41) = 0
ignorehitpause = 1
[State 0, ParentVarSet]
type = ParentVarSet
trigger1 = 1
var(42) = 0
ignorehitpause = 1
[State 0, ParentVarSet]
type = ParentVarSet
trigger1 = 1
var(43) = 0
ignorehitpause = 1
[State 0, ParentVarSet]
type = ParentVarSet
trigger1 = parent,var(37) != 1
var(37) = 1
ignorehitpause = 1
[State 0, ParentVarSet]
type = ParentVarAdd
trigger1 = (time%8)=0
trigger1 = (parent,prevstateno) != (parent,stateno)
trigger1 = fvar(13) < 1
fvar(13) = .01
ignorehitpause = 1
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,48
channel = 0
loop = 1
abspan = 0

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fvar(31) = var(0)
[State 0, VarSet]
type = VarSet
trigger1 = 1
fvar(30) = ((9999999 + fvar(31)) - time) / (9999999 + fvar(31))


[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 10110
ID = 736
pos = 160,GameHeight-5
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = 65535
supermovetime = 65535
scale = .5,.5
sprpriority = 920
ontop = 1
ownpal = 1
[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 737
ID = 737
pos = 160,GameHeight-5
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = 65535
supermovetime = 65535
scale = 1.05*fvar(30),.74
sprpriority = 921
ontop = 1
ownpal = 1

[State 0, Explod]
type = ModifyExplod
trigger1 = time
trigger1 = numexplod(737)
ID = 737
scale = 1.05*fvar(30),.74


[State 0, PowerSet]
type = PowerSet
trigger1 = 1
value = 0
ignorehitpause = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = time >= 9999999 + var(0)
trigger2 = time
trigger2 = roundstate > 2
value = 732
ctrl = 0

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; AAAAACK
[Statedef 1206]
type    = A
movetype= H
physics = N
velset = -2.8,-9.9731
ctrl = 0

[State 0, ForceFeedback]
type = ForceFeedback
trigger1 =  time = 0
waveform = "sine"
time = 60
freq = 200,0,0,0
ampl = 200,0,0,0
self = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = time >= 4
y = 0.55

[State 0, PosFreeze]
type = PosFreeze
trigger1 = time < 4
value = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time < 8
value = SCA,AA,AP,AT
time = 1
ignorehitpause = 1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time < 4
value = ifelse(selfanimexist(5052),5052,5030)
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim = 5030
trigger1 = animtime = 0
value = ifelse(selfanimexist(5035),5035,5050)
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim = 5035
trigger1 = animtime = 0
value = 5050

[State 0, SelfState]
type = SelfState
trigger1 = vel y + pos y >= const(movement.air.gethit.groundlevel)
value = 5100

;---------------------------------------------------------------------------
; HIT_BOUNCE (bounce into air)
[Statedef 214]
type    = A
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
type = VelSet
trigger1 = Time = 0
x = -1
y = -10.937
[State 5101, 5] ;Acceleration
type = VelAdd
trigger1 = 1
y = .713

[State 5101, 6] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >= const(movement.down.bounce.groundlevel)
type = SelfState
value = 5110

;------------------
; Hit by Fast Kung Fu Palm - bounce off wall
; (a custom gethit state)
[Statedef 3028]
type    = A
movetype= H
physics = N

;[State 1028, 1]
;type = NotHitBy
;trigger1 = 1
;value = , NA, NP

[State 1028, Vel Y]
type = VelSet
trigger1 = Time = 0
y = -4

[State 1028, Vel X]
type = VelSet
trigger1 = Time = 0
x = 0.5

[State 1028, Gravity]
type = VelAdd
trigger1 = 1
y = .5

[State 1028, Hit ground]
type = SelfState
trigger1 = vel y + pos y >= const(movement.air.gethit.groundlevel)
value = 5100

;----------------------------------------------------------------------
; WILD ALEXLEXUS ARRIVED
[Statedef 3561]
type = A
movetype= A
physics = N
anim = 9741;3561
velset = 0,0
sprpriority = 888

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
var(0) = floor(screenpos x)
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
var(1) = floor(screenpos y)
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
var(10) = 160 - var(0)
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
var(11) = ceil(GameHeight/2) - var(1)

[State 0, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = 1
text = "x = %d, x = %d f = %d"
params = var(0),var(10),(var(0)+var(10))
;ignorehitpause =
;persistent =

[State 0, StopSnd]
type = StopSnd
trigger1 = time = 0
channel = -1
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,27
abspan = 0
volume = 255

[State 0, SuperPause]
type = SuperPause
trigger1 = time = 0
time = 350
movetime = 350
anim = -1
darken = 0
pausebg = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time = [0,250]
flag = roundnotover
[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nomusic
flag2 = noshadow
flag3 = nobardisplay

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fvar(1) = 1
[State 0, VarAdd]
type = VarAdd
trigger1 = time >= 67
fvar(0) = 0.035
[State 0, VarAdd]
type = VarSet
trigger1 = time >= 67
fvar(1) = fvar(1) * 0.98
;[State 0, AngleDraw]
;type = AngleDraw
;trigger1 = 1
;scale = 1+fvar(0),1+fvar(0)

[State 0, Explod]
type = Explod
trigger1 = time = 0
id = 3561
anim = 3561
pos = var(0),var(1)
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = 193
supermovetime = 65535
pausemovetime = 65535
scale = .5,.5
sprpriority = 888
ontop = 1
ownpal = 1
[State 0, Explod]
type = ModifyExplod
trigger1 = numexplod(3561)
id = 3561
pos = var(0)+ceil(var(10)*(1-fvar(1))),var(1)+ceil(var(11)*(1-fvar(1)))
postype = left
scale = .5+fvar(0),.5+fvar(0)
[State 0, Explod]
type = Explod
trigger1 = time = 193
anim = 3562+random%4
pos = 160,ceil(GameHeight/2)
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
supermovetime = 65535
pausemovetime = 65535
scale = 1,1
sprpriority = 999
ontop = 1
ownpal = 1
[State 0, EnvColor]
type = EnvColor
trigger1 = time >= 193
value = 0,0,0
time = 2

;-------------------------------------------------------------------------------
;SUPER BG EFFECT
[Statedef 3901]
type    = S
movetype = I
physics = S
sprpriority = -15
anim = 9741
ctrl = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noBG
flag3 = noFG
[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = timerfreeze

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fvar(0) = 1
[State 0, VarSet]
type = VarSet
trigger1 = time
fvar(0) = fvar(0) * 0.97
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fvar(10) = 1
[State 0, VarSet]
type = VarSet
trigger1 = time
fvar(10) = fvar(10) * 0.95
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fvar(11) = 0.01
[State 0, VarSet]
type = VarAdd
trigger1 = time
fvar(11) = 0.07 * fvar(10)

[State 0, PalFXWiz]
type = PalFX
trigger1 = 1
time = 2
add = floor(64*fvar(0)),floor(64*fvar(0)),floor(64*fvar(0))
mul = 255+floor(255*fvar(0)),255+floor(255*fvar(0)),255+floor(255*fvar(0))
color = 255 - floor(255*fvar(0))

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 3915
ID = 3915
pos = 160,ceil(GameHeight/2)
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = 40
supermovetime = 65535
pausemovetime = 65535
scale = .5,.5
sprpriority = -800
ownpal = 0
[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 3910
ID = 3910
pos = 160-floor(160*fvar(10)),ceil(GameHeight/2)+floor(ceil(GameHeight/2)*fvar(10))
postype = back
facing = 1
vfacing = 1
bindtime = -1
removetime = 40
supermovetime = 65535
pausemovetime = 65535
scale = fvar(11),fvar(11)
sprpriority = -777
ownpal = 1
[State 0, Explod]
type = ModifyExplod
trigger1 = time
trigger1 = numexplod(3910)
ID = 3910
pos = 160-floor(160*fvar(10))+(random%10*ifelse(random<500,1,-1)),ceil(GameHeight/2)+floor(ceil(GameHeight/2)*fvar(10))+(random%10*ifelse(random<500,1,-1))
postype = back
facing = 1
vfacing = 1
bindtime = -1
scale = fvar(11),fvar(11)

[State 0, ]
type = DestroySelf
trigger1 = time >= 40

;---------------------------------------------------------------------------
; HYPER COMBO FINISH
[Statedef 3850]
type    = S
movetype= I
physics = N
velset = 0,0
ctrl = 0
anim = 9741

[State 0, VarSet]
type = VarSet
triggerall = time = 0
trigger1 = numhelper(3100)
trigger1 = helper(3100), stateno = [3110,3119]
var(11) = 1
ignorehitpause = 1
[State 0, VarSet]
type = VarSet
triggerall = time = 0
trigger1 = numhelper(3100)
trigger1 = helper(3100), stateno = [3120,3129]
var(11) = 2
ignorehitpause = 1
[State 0, VarSet]
type = VarSet
triggerall = time = 0
trigger1 = numhelper(3100)
trigger1 = helper(3100), stateno = [3130,3139]
var(11) = 3
ignorehitpause = 1
[State 0, VarSet]
type = VarSet
triggerall = time = 0
trigger1 = numhelper(3100)
trigger1 = helper(3100), stateno = [3140,3149]
var(11) = 4
ignorehitpause = 1
[State 0, VarSet]
type = VarSet
triggerall = time = 0
trigger1 = numhelper(3100)
trigger1 = helper(3100), stateno = [3150,3159]
var(11) = 5
ignorehitpause = 1
[State 0, VarSet]
type = VarSet
triggerall = time = 0
trigger1 = numhelper(3100)
trigger1 = helper(3100), stateno = [3160,3169]
var(11) = 6
ignorehitpause = 1
[State 0, VarSet]
type = VarSet
triggerall = time = 0
trigger1 = numhelper(3170)
var(11) = 7
ignorehitpause = 1
[State 0, VarSet]
type = VarSet
triggerall = time = 0
trigger1 = numhelper(3100)
trigger1 = helper(3100), stateno = [3180,3189]
var(11) = 8
ignorehitpause = 1
[State 0, VarSet]
type = VarSet
triggerall = time = 0
trigger1 = parent,stateno = 3400
var(11) = 13
ignorehitpause = 1
[State 0, VarSet]
type = VarSet
triggerall = time = 0
trigger1 = parent,stateno = 3301
var(11) = 14
ignorehitpause = 1
[State 0, VarSet]
type = VarSet
triggerall = time = 0
trigger1 = parent,stateno = 3220
var(11) = 15
ignorehitpause = 1
[State 0, VarSet]
type = VarSet
triggerall = time = 0
trigger1 = parent,stateno = 3508
var(11) = 16
ignorehitpause = 1
[State 0, VarSet]
type = VarSet
triggerall = time = 0
trigger1 = numhelper(3212)
var(11) = 17
ignorehitpause = 1

[State 0, SuperPause]
type = SuperPause
trigger1 = time = 0
time = 110
anim = -1
sound = -1
movetime = 110
darken = 0
p2defmul = 1
pausebg = 1
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nokoslow
flag2 = nomusic
flag3 = nobardisplay
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,11
volume = 255
abspan = 0
[State 0, PlaySnd]
type = PlaySnd
trigger1 = var(11) = 16
value = S0,25
volume = 255
loop = 1
abspan = 0
persistent = 0

[State 0, VarAdd]
type = VarAdd
trigger1 = var(0) < 255
trigger1 = time < 110
var(0) = 5
[State 0, VarAdd]
type = VarAdd
trigger1 = time >= 110
var(0) = -5
[State 0, VarAdd]
type = VarAdd
trigger1 = var(0) < 255
trigger1 = time < 110
var(1) = 4
[State 0, VarAdd]
type = VarAdd
trigger1 = time >= 110
var(1) = -4

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 3850+var(11)
ID = 3850
pos = 160,ceil(gameheight/2)
postype = left
facing = 1
bindtime = -1
removetime = -1
supermovetime = 65535
pausemovetime = 65535
scale = .5,.5+((gameheight-240)/480)
sprpriority = 999
ontop = 1
ownpal = 0
ignorehitpause = 1

[State 0, PalFX]
type = PalFX
trigger1 = 1
time = 4
mul = var(0),var(0),var(0)
ignorehitpause = 1

[State 0, PalFX]
type = BgPalFX
trigger1 = 1
time = 4
add = 0,0,var(1)
mul = 256-var(1),256-var(1),256
color = 256-var(1)
ignorehitpause = 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = numexplod(3850)
trigger1 = time >= 110
trigger1 = var(0) <= 10
id = 3850
ignorehitpause = 1

[State 0, DestroySelf]
type = ChangeState
trigger1 = time >= 110
trigger1 = var(0) <= 10
value = 3859

;---------------------------------------------------------------------------
; BITCHIN'
[Statedef 3173]
type    = S
movetype= A
physics = S
anim = 3173
velset = 0,0
ctrl = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S0,31

[State 0, StopSnd]
type = StopSnd
trigger1 = animelem = 5
channel = -1
[State 0, SuperPause]
type = SuperPause
trigger1 = animelem = 5
time = 40
anim = -1
sound = -1
movetime = 40
darken = 0
p2defmul = 1
unhittable = 1
pausebg = 1
ignorehitpause = 1
;[State 0, BGPalFX]
;type = BGPalFX
;trigger1 = animelem = 5
;time = 40
;invertall = 1
;color = 0
[State 0, Explod]
type = Explod
trigger1 = animelem = 5
anim = 3179
ID = 3179
pos = 160,ceil(gameheight/2)
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = 40
supermovetime = 65535
pausemovetime = 65535
scale = .5,.5
sprpriority = 999
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = animelemtime(5) >= 0
trigger1 = animelemtime(6) < 0
flag = nomusic
flag2 = timerfreeze

[State 0, Helper]
type = Helper
trigger1 = animelem = 6
helpertype = normal
name = "Up back"
ID = 3170
stateno = 3174
pos = -70,-70
postype = p2
facing = 1
ownpal = 1
[State 0, Helper]
type = Helper
trigger1 = animelem = 6
helpertype = normal
name = "Up front"
ID = 3170
stateno = 3175
pos = 70,-70
postype = p2
facing = -1
ownpal = 1
[State 0, Helper]
type = Helper
trigger1 = animelem = 6
helpertype = normal
name = "Down back"
ID = 3170
stateno = 3177
pos = -70,70
postype = p2
facing = 1
ownpal = 1
[State 0, Helper]
type = Helper
trigger1 = animelem = 6
helpertype = normal
name = "Down front"
ID = 3170
stateno = 3176
pos = 70,70
postype = p2
facing = -1
ownpal = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = S1,ifelse(random<500,69,800+random%5)
channel = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; batle monsturs is best game // melvanainchains
[Statedef 185]
type = S
ctrl = 0
anim = 185
velset = 0,0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nomusic

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time = [0,710]
flag = roundnotover

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 0,40
channel = 0
[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 23
value = S1,106
channel = 0
abspan = 0
loop = 1
persistent = 0
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 610
value = S1,107
channel = 0
abspan = 0
loop = 1
[State 0, Explod]
type = Explod
trigger1 = time = 610
trigger2 = time >= 610
trigger2 = (time%15)=0
anim = 1850+random%12
pos = random%320,random%240
postype = left
facing = ifelse(random<500,-1,1)
vfacing = ifelse(random<500,-1,1)
bindtime = -1
removetime = -1
supermovetime = 65535
pausemovetime = 65535
scale = ifelse(random<500,.5,1),ifelse(random<500,.5,1)
sprpriority = 700
ontop = 1
ownpal = 1
removeongethit = 1

[State 0, Turn]
type = Turn
trigger1 = animelem = 24
trigger1 = time >= 60

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Generic Hadouken
[Statedef 3190]
type    = A
movetype= A
physics = N
velset = 6,0
ctrl = 0
anim = 3190
sprpriority = 2

[State 0, VelSet]
type = VelSet
trigger1 = movehit
x = 0
y = 0
persistent = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = (anim = 3191 && animelemtime(6) >= 0)
flag = nobardisplay
flag2 = noFG
flag3 = noBG
ignorehitpause = 1

[State 0, StopSnd]
type = StopSnd
trigger1 = movehit
channel = -1
ignorehitpause = 1
persistent = 0

[State 0, VelSet]
type = VelSet
trigger1 = movehit
x = 0
y = 0

[State 0, ]
type = AssertSpecial
trigger1 = movehit
flag = nomusic
flag2 = nokosnd
flag3 = nokoslow
ignorehitpause = 1

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = 0
scale = .5,.5
ignorehitpause = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = ,NA
time = 2
ignorehitpause = 1

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
slot = 0
stateno = 3112
time = -1
ignorehitpause = 1

[State 0, VarAdd]
type = VarAdd
;trigger1 = anim = 3111
trigger1 = movecontact = [1,3]
var(7) = 1
ignorehitpause = 1

[State 0, AttackMulSet]
type = AttackMulSet
trigger1 = 1
value = 0.25+(parent,fvar(13)*0.75)
ignorehitpause = 1

[State 200, 1]
type = HitDef
trigger1 = time = 1
;trigger2 = anim = 3191
;trigger2 = animelem = 2
trigger2 = anim = 3191
trigger2 = animelem = 3
trigger3 = anim = 3191
trigger3 = animelem = 4
trigger4 = anim = 3191
trigger4 = animelem = 5
trigger5 = anim = 3191
trigger5 = animelem = 6
attr = A, HP
damage = 45, 5
animtype = diagup
guardflag = M
hitflag = MAF
pausetime = 0, 6
sparkno = 2
sparkxy = 0, 0
hitsound = -1
guardsound = S6, 0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
guard.velocity = -8
ground.velocity = -3.5,-5.8
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -3.5,-5.8
air.hittime = 20
fall = 1
air.fall = 1
fall.recovertime = 40
id = 123
yaccel = .5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
getpower = 0
kill = (anim = 3191 && animelemtime(6) >= 0)
envshake.time = 12
envshake.freq = 255
envshake.ampl = -7
[State 0, PlaySnd]
type = PlaySnd
triggerall = anim = 3191
trigger1 = animelem = 2
trigger2 = animelem = 3
trigger3 = animelem = 4
trigger4 = animelem = 5
trigger5 = animelem = 6
value = S5,20
channel = 0
[State 0, ]
type = EnvColor
triggerall = anim = 3191
trigger1 = animelem = 6
value = 0,0,0
time = 100
ignorehitpause = 1

[State 0, ]
type = Explod
triggerall = anim = 3191
trigger1 = animelem = 6
anim = 3195
pos = 160,ceil(gameheight/2)
postype = left
facing = 1
vfacing = 1
removetime = 100
bindtime = 1
supermovetime = 65535
pausemovetime = 65535
scale = 1,1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 0, SuperPause]
type = SuperPause
triggerall = anim = 3191
trigger1 = animelem = 2
trigger2 = animelem = 3
trigger3 = animelem = 4
trigger4 = animelem = 5
time = 24
movetime = 24
anim = -1
sound = -1
darken = 0
p2defmul = 1
unhittable = 1
pausebg = 1
[State 0, SuperPause]
type = SuperPause
triggerall = anim = 3191
trigger1 = animelem = 6
time = 90
movetime = 90
anim = -1
sound = -1
darken = 0
p2defmul = 1
unhittable = 1
pausebg = 1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim = 3190
trigger1 = movehit
value = 3191
ignorehitpause = 1

[State ProRation]
type = ParentVarSet
trigger1 = movehit = 2
fvar(13) = (parent,fvar(13)) * 0.95
ignorehitpause = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = movereversed || moveguarded
trigger1 = anim != 3191
trigger2 = frontedgedist < -25
trigger2 = anim = 3190
trigger3 = anim = 3191
trigger3 = animtime = 0
value = 3112
ctrl = 0

;---------------------------------------------------------------------------
; Generic Hadouken
[Statedef 3200]
type    = A
movetype= A
physics = N
velset = 6,0
ctrl = 0
anim = 3190
sprpriority = 2

[State 0, VelSet]
type = VelSet
trigger1 = movehit
x = 0
y = 0
persistent = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = (anim = 3191 && animelemtime(6) >= 0)
flag = nobardisplay
flag2 = noFG
flag3 = noBG
ignorehitpause = 1

[State 0, StopSnd]
type = StopSnd
trigger1 = movehit
channel = -1
ignorehitpause = 1
persistent = 0

[State 0, VelSet]
type = VelSet
trigger1 = movehit
x = 0
y = 0

[State 0, ]
type = AssertSpecial
trigger1 = movehit
flag = nomusic
flag2 = nokosnd
flag3 = nokoslow
ignorehitpause = 1

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = 0
scale = .5,.5
ignorehitpause = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = ,NA
time = 2
ignorehitpause = 1

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
slot = 0
stateno = 3112
time = -1
ignorehitpause = 1

[State 0, VarAdd]
type = VarAdd
;trigger1 = anim = 3111
trigger1 = movecontact = [1,3]
var(7) = 1
ignorehitpause = 1

[State 0, AttackMulSet]
type = AttackMulSet
trigger1 = 1
value = 0.25+(parent,fvar(13)*0.75)
ignorehitpause = 1

[State 200, 1]
type = HitDef
trigger1 = time = 1
;trigger2 = anim = 3191
;trigger2 = animelem = 2
trigger2 = anim = 3191
trigger2 = animelem = 3
trigger3 = anim = 3191
trigger3 = animelem = 4
trigger4 = anim = 3191
trigger4 = animelem = 5
trigger5 = anim = 3191
trigger5 = animelem = 6
attr = A, HP
damage = 45, 5
animtype = diagup
guardflag = M
hitflag = MAF
pausetime = 0, 6
sparkno = 2
sparkxy = 0, 0
hitsound = -1
guardsound = S6, 0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
guard.velocity = -8
ground.velocity = -3.5,-5.8
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -3.5,-5.8
air.hittime = 20
fall = 1
air.fall = 1
fall.recovertime = 40
id = 123
yaccel = .5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
getpower = 0
kill = (anim = 3191 && animelemtime(6) >= 0)
envshake.time = 12
envshake.freq = 255
envshake.ampl = -7
[State 0, PlaySnd]
type = PlaySnd
triggerall = anim = 3191
trigger1 = animelem = 2
trigger2 = animelem = 3
trigger3 = animelem = 4
trigger4 = animelem = 5
trigger5 = animelem = 6
value = S5,20
channel = 0
[State 0, ]
type = EnvColor
triggerall = anim = 3191
trigger1 = animelem = 6
value = 0,0,0
time = 100
ignorehitpause = 1

[State 0, ]
type = Explod
triggerall = anim = 3191
trigger1 = animelem = 6
anim = 3196
pos = 0,0
postype = left
facing = 1
vfacing = 1
removetime = 100
bindtime = 1
supermovetime = 65535
pausemovetime = 65535
scale = .5,.5+((gameheight-240)/480)
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 0, SuperPause]
type = SuperPause
triggerall = anim = 3191
trigger1 = animelem = 2
trigger2 = animelem = 3
trigger3 = animelem = 4
trigger4 = animelem = 5
time = 24
movetime = 24
anim = -1
sound = -1
darken = 0
p2defmul = 1
unhittable = 1
pausebg = 1
[State 0, SuperPause]
type = SuperPause
triggerall = anim = 3191
trigger1 = animelem = 6
time = 90
movetime = 90
anim = -1
sound = -1
darken = 0
p2defmul = 1
unhittable = 1
pausebg = 1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim = 3190
trigger1 = movehit
value = 3191
ignorehitpause = 1

[State ProRation]
type = ParentVarSet
trigger1 = movehit = 2
fvar(13) = (parent,fvar(13)) * 0.95
ignorehitpause = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = movereversed || moveguarded
trigger1 = anim != 3191
trigger2 = frontedgedist < -25
trigger2 = anim = 3190
trigger3 = anim = 3191
trigger3 = animtime = 0
value = 3112
ctrl = 0

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------

[StateDef -2]

[State some things are best reset]
type = Null
trigger1 = roundstate <= 1 || stateno = 5900
trigger1 = (var(31):=0)
ignorehitpause = 1
[State some things are best reset]
type = Null
trigger1 = roundstate <= 1 || stateno = 5900
trigger1 = (var(32):=0)
ignorehitpause = 1
[State some things are best reset]
type = Null
trigger1 = roundstate <= 1 || stateno = 5900
trigger1 = (var(37):=0)
ignorehitpause = 1
[State some things are best reset]
type = Null
trigger1 = roundstate <= 1 || stateno = 5900
trigger1 = (var(48):=0)
ignorehitpause = 1

[State 0, VarSet]
type = VarSet
trigger1 = name = "Unlimited Most_Mysterious"
trigger2 = name = "Anger personified"
trigger3 = command = "ACTA" && command = "ACTAh"
trigger3 = !var(55)
var(36) = 1

[State ME USING 1.0]
type = VarSet
trigger1 = var(49) != 1
var(49) = 1
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 5131
trigger1 = animelem = 7
trigger2 = anim = 5950 || anim = 5330
trigger2 = animelem = 12
value = F7,0

[State 0, StopSnd]
type = StopSnd
triggerall = time = 1
triggerall = prevstateno = 195
trigger1 = stateno = 10
trigger2 = stateno = 40
channel = 0


[State 0, Helper]
type = Helper
trigger1 = !numhelper(9749)
trigger1 = command = "Konami"
trigger1 = !var(55)
helpertype = normal
name = "LOL"
ID = 9749
stateno = 9749
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 65535
pausemovetime = 65535
ignorehitpause = 1
[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = numhelper(9749)
flag = invisible
ignorehitpause = 1


[State IntroSkip]
type = VarAdd
trigger1 = var(29) < 5
trigger1 = roundstate = 2
var(29) = 1
[State IntroSkip]
type = StopSnd
trigger1 = var(29) = 1
channel = 1
ignorehitpause = 1
[State IntroSkip]
type = EnvShake
trigger1 = var(29) = 1
trigger1 = prevstateno = 192
time = 1
freq = 1


;[State 0, PlaySnd]
;type = PlaySnd
;triggerall = p2statetype = A
;trigger1 = (p2bodydist x + p2bodydist y) = [-40,40]
;value = S5,4
;channel = random%3
;freqmul = 2

[State 0, VarSet]
type = VarSet
triggerall = movehit
trigger1 = stateno = 260
trigger2 = stateno = 270
trigger3 = stateno = 460
trigger4 = stateno = [660,680]
var(23) = 60
ignorehitpause = 1
[State 0, VarSet]
type = VarAdd
trigger1 = var(23) > 0
var(23) = -1
[State 0, VarSet]
type = VarSet
trigger1 = var(23)
trigger1 = p2movetype != H
var(23) = 0

[State 0, VarSet]
type = VarSet
trigger1 = var(22)
trigger1 = statetype != A
var(22) = 0

[State 0, VarSet]
type = VarSet
triggerall = stateno != 800
trigger1 = stateno = [810,819]
trigger2 = statetype = A
trigger3 = p2statetype = A
trigger4 = moveguarded
;trigger5 = stateno = [120,160]
var(8) = 12
[State 0, VarAdd]
type = VarAdd
trigger1 = var(8) > 0
var(8) = -1



[State 0, PlaySnd]
type = PlaySnd
triggerall = anim = 100
trigger1 = animelem = 6
value = S0,16
[State 0, PlaySnd]
type = PlaySnd
triggerall = anim = 100
trigger1 = animelem = 10
trigger2 = animelem = 2
value = S0,17

[State 0, Helper]
type = Helper
triggerall = anim = 5300
trigger1 = !numhelper(927)
trigger1 = roundstate = 2
helpertype = normal
name = "LOL"
ID = 927
stateno = 927
pos = 0,0
postype = p1
ownpal = 1
supermovetime = 65535
pausemovetime = 65535
ignorehitpause = 1
[State 0, Helper]
type = Helper
triggerall = anim = 5300
trigger1 = !numhelper(928)
trigger1 = roundstate = 2
helpertype = normal
name = "LOL"
ID = 928
stateno = 928
pos = 0,0
postype = p1
ownpal = 1
supermovetime = 65535
pausemovetime = 65535
ignorehitpause = 1
[State 0, Helper]
type = Helper
triggerall = anim = 5300
trigger1 = !numhelper(929)
trigger1 = roundstate = 2
helpertype = normal
name = "LOL"
ID = 929
stateno = 929
pos = 0,0
postype = p1
ownpal = 1
supermovetime = 65535
pausemovetime = 65535
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
triggerall = roundstate = 2
trigger1 = movehit
trigger1 = (stateno = [3001,3002]) || (stateno = [3300,3301]) || (stateno = 3400)
trigger2 = numhelper(3100)
trigger3 = stateno = 3220
trigger4 = stateno = [3501,3509]
trigger5 = numhelper(3170)
trigger6 = numhelper(3212)
flag = nokoslow
ignorehitpause = 1

[State 0, Helper]
type = Helper
triggerall = !numhelper(3850)
triggerall = roundstate = 3
triggerall = winko
trigger1 = movehit
trigger1 = (stateno = [3001,3002]) || (stateno = [3300,3301]) || (stateno = 3400)
trigger2 = numhelper(3100)
trigger2 = helper(3100), stateno != [3170,3179]
trigger2 = helper(3100), stateno != [3190,3199]
trigger2 = helper(3100), stateno != [3200,3299]
trigger2 = helper(3100), stateno != [3210,3219]
trigger2 = helper(3100), prevstateno != [3190,3199]
trigger2 = helper(3100), prevstateno != [3200,3299]
trigger2 = helper(3100), prevstateno != [3210,3219]
trigger3 = stateno = 3220
trigger4 = stateno = [3501,3509]
trigger5 = numhelper(3170)
trigger6 = numhelper(3212)
helpertype = normal
name = "HYPER COMBO FINISH"
ID = 3850
stateno = 3850
pos = 0,0
postype = p1
ownpal = 1
supermovetime = 65535
pausemovetime = 65535
ignorehitpause = 1

[State 0, Helper]
type = Helper
triggerall = !numhelper(3850)
triggerall = roundstate = 3
triggerall = winko
trigger1 = movehit
trigger1 = (stateno = [3001,3002]) || (stateno = [3300,3301]) || (stateno = 3400)
trigger2 = helper(3100), stateno != [3170,3179]
trigger2 = stateno != [3219,3220]
trigger2 = prevstateno != [3219,3220]
trigger2 = helper(3100), stateno != [3210,3219]
trigger2 = helper(3100), prevstateno != [3210,3219]
trigger2 = stateno = 3220
trigger2 = palno = 1
trigger2 = palno = 8
trigger2 = palno = 9
trigger2 = palno = 10
trigger2 = palno = 12
trigger3 = numhelper(3212)
helpertype = normal
name = "HYPER COMBO FINISH"
ID = 3850
stateno = 3850
pos = 0,0
postype = p1
ownpal = 1
supermovetime = 65535
pausemovetime = 65535
ignorehitpause = 1

[State P2Soundcode nope]
type = VarSet
trigger1 = 1
v = 33
value = 0
ignorehitpause = 1
[State P2Soundcode WHAM]
type = VarSet
trigger1 = (numtarget)
trigger1 = (target,stateno = 227) || (target,stateno = 3027) || (target,stateno = 327)
trigger1 = (target,time = 1)
trigger1 = (target,movetype = H)
v = 33
value = 1
ignorehitpause = 1


[State 0, Helper]
type = Helper
trigger1 = !numhelper(179)
helpertype = normal
name = "Misc Stuff"
ID = 179
stateno = 179
pos = 0,0
postype = p1
ownpal = 1
supermovetime = 65535
pausemovetime = 65535
ignorehitpause = 1

[State Limiter]
type = VarSet
trigger1 = stateno = 40
trigger2 = p2statetype = A
trigger2 = movecontact
trigger3 = stateno = [120,169]
var(8) = 16
ignorehitpause = 1
[State Limiter]
type = VarAdd
trigger1 = var(8) > 0
var(8) = -1
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
triggerall = !win
trigger1 = stateno = 5120
trigger1 = time = 1
value = S5120,random%9
channel = 0


[State 0, ]
type = PlaySnd
triggerall = alive
trigger1 = (stateno = 5000) || (stateno = 5010) || (stateno = 5020) || (stateno = 5070)
trigger1 = time = 0
trigger2 = (stateno != 5000) && (stateno != 5010) && (stateno != 5020) && (stateno != 5070)
trigger2 = stateno != [120,160]
trigger2 = gethitvar(damage)
value = 5000,0+random%20
channel = 0
ignorehitpause = 1
[State 0, PlaySnd]
type = PlaySnd
triggerall = time = 1
triggerall = random < 500
trigger1 = stateno = 150
trigger2 = stateno = 152
trigger3 = stateno = 154
value = S120,random%7
channel = 0
lowpriority = 1



[State ANTI-MINDGAME-GUARD]
type = VarAdd
triggerall = var(50) < 120
trigger1 = p2movetype = A
trigger1 = stateno = [120,169]
var(50) = 1
ignorehitpause = 1
[State ANTI-MINDGAME-GUARD]
type = VarSet
triggerall = var(50) > 0
trigger1 = stateno = [150,155]
trigger1 = time = 1
var(50) = ceil(var(50)*0.8)
ignorehitpause = 1
[State ANTI-MINDGAME-GUARD]
type = VarAdd
triggerall = var(50) > 0
triggerall = (gametime%3)=0
trigger1 = p2movetype != A
trigger2 = stateno != [120,169]
var(50) = -1
ignorehitpause = 1
[State ANTI-MINDGAME-TH]
type = VarSet
trigger1 = numenemy
trigger1 = var(55)
var(51) = (enemynear,HitDefAttr = SCA,AT) || (var(50) > 20) || ((abs(enemynear,animtime) <= enemynear,movecontact ))
ignorehitpause = 1

[State -2, P2 Facing]
type= targetfacing
trigger1= movecontact=1 && numtarget=1
trigger1= !(target,hitshakeover) && !(target,hitfall) && (target,time<=1)
value= ifelse(p2dist x>=0, -1, 1)
ignorehitpause= 1

[State -2, Neo-Juggle-System-Reset]
type = VarSet
triggerall = var(40)
trigger1 = !numtarget
trigger2 = numtarget
trigger2 = (target,statetype != A) && (target,statetype != L)
var(40) = 0
ignorehitpause = 1
[State -2, Neo-Juggle-System-Reset]
type = VarSet
triggerall = var(41)
trigger1 = !numtarget
trigger2 = numtarget
trigger2 = (target,statetype != A) && (target,statetype != L)
var(41) = 0
ignorehitpause = 1
[State -2, Neo-Juggle-System-Reset]
type = VarSet
triggerall = var(42)
trigger1 = !numtarget
trigger2 = numtarget
trigger2 = (target,statetype != A) && (target,statetype != L)
var(42) = 0
ignorehitpause = 1
[State -2, Neo-Juggle-System copy]
type = VarSet
;triggerall = var(42)
trigger1 = time = 1
trigger2 = !numtarget
trigger3 = numtarget
trigger3 = (target,statetype != A) && (target,statetype != L)
var(43) = var(41)
ignorehitpause = 1
[State 0, Neo-Juggle-System-Debug]
type = DisplayToClipboard
trigger1 = var(36)
text = "NJS Flags = %d | %d"
params = var(40),var(41)
ignorehitpause = 1

[State Prevent the prorator from going too low]
type = VarSet
trigger1 = fvar(13) < 0.15
fvar(13) = 0.15
ignorehitpause = 1
[State Prorator Reset]
type = VarSet
trigger1 = !numenemy
trigger2 = p2movetype != H || (!enemynear,gethitvar(hitcount))
trigger2 = !movehit || movereversed
trigger3 = p2stateno = 5120
fvar(13) = 1
ignorehitpause = 1
[State 0, AttackMulSet]
type = AttackMulSet
trigger1 = 1
time = 2
;value = ifelse(p2movetype!=H,ifelse(var(20)=1,1.25,1),1 - ifelse(fvar(15)>.75,.75,fvar(15)))
value = ( ifelse((stateno=[3000,3900]), 0.25+(fvar(13)*0.75) ,fvar(13))  )
ignorehitpause = 1


; Within StateDef -2, none of your own AI-related code should be placed
; above these next two controllers.

[State -2, StopAI]
type = VarSet
triggerall = var(58) > 0 && !IsHelper
trigger1 = RoundState != 2
trigger2 = !Alive
var(58) = -2
IgnoreHitPause = 1

; This controller is optional.  It allows you treat the AI flag as a boolean
; value rather than an integer value, letting you trigger your AI directives
; with "var(0)" instead of "var(58)>0", and letting you make moves usable only
; by humans by using "!var(0)" instead of "var(58)<1", thus slightly improving
; the size and efficiency of your code.
; Another benefit is that it makes it much easier for users to disable your AI,
; if they so choose.
[State -2, Simplifier]
type = VarSet
triggerall = !IsHelper
;trigger1 = var(58) = 1
;trigger2 = var(55):=0
trigger1 = 1
var(55) = ifelse(roundstate<=2,ailevel,0)	; Another option is to replace 1 with something like MatchNo, if
		; you want to design your AI to have varying levels of difficulty.
IgnoreHitPause = 1

[State -2, Movehitoner]
type = VarSet
trigger1 = 1
var(21) = ifelse(movehit=1,var(21)+1,0)
ignorehitpause = 1
[State -2, MONI]
type = Playsnd
trigger1 = movetype = A
trigger1 = var(21)=1
trigger1 = var(37)
value = S1,90
channel = 0
ignorehitpause = 1

; NEURO

[State -2, Neuroadd]
type = VarAdd
trigger1 = !numhelper(721)
trigger1 = var(21) = 1
trigger1 = numtarget
var(30) = ifelse((target,gethitvar(hitcount))>4,4,(target,gethitvar(hitcount)))
ignorehitpause = 1
[State -2, Neuroadd]
type = VarAdd
trigger1 = !numhelper(721)
trigger1 = gethitvar(damage)
trigger1 = stateno != [120,156]
trigger1 = var(31) >= 0
var(30) = ifelse((gethitvar(hitcount)+gethitvar(hitcount))>10,10,(gethitvar(hitcount)+gethitvar(hitcount)))
ignorehitpause = 1
[State -2, Neuroadd]
type = VarAdd
trigger1 = !numhelper(721)
trigger1 = time = 1
trigger1 = movetype = A
var(30) = 1
;ignorehitpause = 1
[State -2, Neurocalm]
type = VarAdd
trigger1 = !numhelper(721)
trigger1 = var(30) > 0
trigger1 = p2movetype != H
trigger1 = (gametime%60)=0
var(30) = -1
ignorehitpause = 1
[State -2, Neuromax]
type = VarSet
trigger1 = var(30) >= 250
var(30) = 250
ignorehitpause = 1
[State -2, NEURODIZZY]
type = VarSet
trigger1 = var(31) = 0
trigger1 = movetype = H
trigger1 = stateno != [120,156]
trigger1 = gethitvar(damage)
trigger1 = var(30) >= 250
var(31) = 1
ignorehitpause = 1
[State -2, NEUROUNDIZZY]
type = VarSet
triggerall = var(31) = 1
trigger1 = anim = 5300
trigger2 = !alive
var(31) = -120
ignorehitpause = 1
[State -2, NEURODIZZY]
type = VarAdd
triggerall = var(31) < 0
triggerall = alive
trigger1 = anim != 5300
var(31) = 1
ignorehitpause = 1
[State 0, Helper]
type = Helper
trigger1 = anim = 5300
trigger1 = !numhelper(721)
trigger1 = var(30) >= 1
helpertype = normal
name = "Effects of peels"
ID = 721
stateno = 721
pos = 0,0
postype = p1
supermovetime = 65535
pausemovetime = 65535
ignorehitpause = 1

; NEURO

; GUARD

[State GC, ADD]
type = VarAdd
trigger1 = (GetHitVar(HitShakeTime) = 1)
trigger1 = (stateno = 150) || (stateno = 152) || (stateno = 154)
var(32) = 1
ignorehitpause = 1
[State GC, ADD]
type = VarAdd
trigger1 = (GetHitVar(HitShakeTime) = 5)
trigger1 = (stateno = 150) || (stateno = 152) || (stateno = 154)
var(32) = 5
ignorehitpause = 1
[State GC, ADD]
type = VarAdd
trigger1 = (GetHitVar(HitShakeTime) = 10)
trigger1 = (stateno = 150) || (stateno = 152) || (stateno = 154)
var(32) = 10
ignorehitpause = 1
[State GC, ADD]
type = VarAdd
trigger1 = (GetHitVar(HitShakeTime) = 15)
trigger1 = (stateno = 150) || (stateno = 152) || (stateno = 154)
var(32) = 15
ignorehitpause = 1
[State GC, REGEN]
type = VarAdd
trigger1 = var(32) > 0
trigger1 = movetype != H
trigger1 = (gametime%6) = 0
var(32) = -1
ignorehitpause = 1
[State GC, WARNING]
type = Helper
trigger1 = (stateno = 150) || (stateno = 152) || (stateno = 154)
trigger1 = time = 0
trigger1 = var(32) >= 50
helpertype = normal ;player
name = "Guard Warning"
ID = 935
stateno = 935
pos = 0,-60
postype = p1
facing = 1
ownpal = 1
supermovetime = 65535
pausemovetime = 65535
ignorehitpause = 1
[State GC, HOLY SHIT]
type = SelfState
triggerall = statetype != A
trigger1 = (stateno = 150) || (stateno = 152)
trigger1 = var(32) >= 100
trigger1 = time <= 1
value = 5912
ctrl = 0
[State GC, HOLY SHIT]
type = SelfState
triggerall = statetype = A
trigger1 = (stateno = 154)
trigger1 = var(32) >= 100
trigger1 = time <= 1
value = 5930
ctrl = 0

; GUARD

[State 0, VarSet]
type = VarSet
trigger1 = time = 1
trigger1 = movetype = A
trigger1 = stateno != 1101
trigger1 = stateno != 1201
var(38) = floor(p2bodydist x)
ignorehitpause = 1
[State 0, VarSet]
type = VarSet
trigger1 = time = 1
trigger1 = movetype = A
trigger1 = stateno != 1101
trigger1 = stateno != 1201
var(39) = floor(p2bodydist y)
ignorehitpause = 1


[State -2, DTC]
type = DisplayToClipboard
trigger1 = 1
text = "var(58) = %d, var(38) = %d, var(38) = %d, pro = %f"
params = var(58), var(38), var(39), fvar(13)
IgnoreHitPause = 1

[State -2, ATC]
type = AppendToClipboard
trigger1 = 1
text = "\nMatchNo = %d, var(52) = %d, hed = %d, %f"
params = MatchNo, var(52), const(size.head.pos.y), (p2bodydist x + p2dist y)
IgnoreHitPause = 1

;------------------------------------------------------------------------------------------
;melty blood target
[State -2]
Type = VarAdd
Trigger1 = FVar(18) > 0
FV = 18
Value = -16
IgnoreHitPause = 1
SuperMoveTime = 99999
PauseMoveTime = 99999

[State -2]
Type = VarSet
TriggerAll = Alive = 1
TriggerAll = RoundState = 2
;Trigger1 = ScreenPos Y+IfElse(StateType=S||StateType=A,Const(Size.Head.Pos.Y),Const(Size.Mid.Pos.Y)) > 240
trigger1 = ScreenPos Y <= 0
trigger2 = ScreenPos Y >= 240 - const(size.head.pos.y)
FV = 18
Value = 256
IgnoreHitPause = 1
SuperMoveTime = 99999
PauseMoveTime = 99999

[State -2]
Type = Explod
Trigger1 = FVar(18) > 0
Anim = 27000
PosType = back
Pos = floor(Pos X)*facing + 154,0+ (ScreenPos Y >= 231)*226;154+Ceil(Pos X*Facing)
Scale = 0.5,0.5
Ownpal = 1
BindTime = -1
IgnoreHitPause = 1
SprPriority = 8
ID = 27000

[State -2]
Type = Explod
Trigger1 = FVar(18) > 0
Anim = 27010
PosType = back
Pos = floor(Pos X)*facing + 154,0 + (ScreenPos Y >= 231)*226;154+Ceil(Pos X*Facing), 226
Scale = 0.5,0.5
Ownpal = 1
BindTime = -1
IgnoreHitPause = 1
facing = 2
SprPriority = 9
ID = 27010

[State -2]
Type = ModifyExplod
Trigger1 = NumExplod(27000) > 0
PosType = Back
Pos = floor(Pos X)*facing + 154,0 + (ScreenPos Y >= 231)*226;154+Ceil(Pos X*Facing), 226
Trans = AddAlpha
Alpha = Ceil(FVar(18)),256-Ceil(FVar(18))
BindTime = -1
IgnoreHitPause = 1
ID = 27000

[State -2]
Type = ModifyExplod
Trigger1 = NumExplod(27010) > 0
PosType = Back
Pos = floor(Pos X)*facing + 154,0+ (ScreenPos Y >= 231)*226;154+Ceil(Pos X*Facing), 226
Trans = AddAlpha
Alpha = Ceil(FVar(18)),256
BindTime = -1
IgnoreHitPause = 1
ID = 27010

[State -2‚mouse]
Type = AngleDraw
Trigger1 = Anim = 62590
Value = 0
Scale = 0.5, 0.5

[State -2]
type = VictoryQuote
trigger1=!time
value = 1+random%12

[State -2]
type = VictoryQuote
triggerall = numenemy > 0
trigger1 = enemy,name = "Onpu Segawa"
value = 14

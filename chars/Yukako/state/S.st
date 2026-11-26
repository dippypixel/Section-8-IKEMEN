;ガーキャン
[statedef 950]
type=s
movetype=a
physics=s
poweradd=120
velset=0,0
anim=1210
ctrl=0

[state 950,点滅]
type=palfx
trigger1=time<3
time=1
add=255,255,255
ignorehitpause=1

[state 950,無敵]
type=nothitby
trigger1=animtime!=0
trigger1=animelemtime(14)<0
value=sca

[state 950,波紋ッ！]
type=playsnd
trigger1=animelemtime(7)=0
value=0,4
channel=0

[state 950,コーラ効果音]
type=playsnd
trigger1=animelemtime(12)=0
value=1200,0

[state 950,コーラが吹き出す]
type=explod
trigger1=animelemtime(12)=0
anim=1201
pos=0,0
scale=const(size.xscale),const(size.yscale)
sprpriority=1
ownpal=1

[state 950,ヒット定義]
type=hitdef
trigger1=animelemtime(12)=2
trigger2=var(0)&16
attr=s,sa
animtype=up
damage=70,14
guardflag=ma
pausetime=11,11
sparkno=s6103
guard.sparkno=s6125
sparkxy=0,-110
hitsound=s5,4
guardsound=s6,0
ground.type=low
ground.slidetime=14
ground.hittime=14
air..hittime=14
ground.velocity=-1,-10.5
guard.velocity=-6
air.velocity=-1,-8.5
airguard.velocity=-4,-4.5
p2facing=1
fall=1
fall.recovertime=50
yaccel=0.4
guard.kill=0

[state 950,コンボ補正開始]
type=varset
triggerall=!var(1)
trigger1=movehit
var(1)=enemynear,gethitvar(hitcount)
ignorehitpause=1

[state 950,終了]
type=changestate
trigger1=animtime=0
value=0
ctrl=1

;===========================================================================
;クラッカーブーメラン
; 
[Statedef 1040]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 1040
ctrl = 0

[State 1040, 死髪舞剣]
type = playsnd
trigger1 = time = 0
value = 1000,0
channel = 0

[State 810, Throw Sound]
type = playsnd
trigger1 = animelem = 1
value = 3,10
channel = 0

[State 810, Throw Sound]
type = playsnd
trigger1 = animelem = 7
value = 3,11

[State 230, 2]
type = HitDef
trigger1 = animelem = 7
attr = S, SA
damage = 0, 6
pausetime = 0,0
guard.pausetime = 0,10
guard.sparkno = s6125
hitflag = M
guardflag = M
priority = 1, Miss
sparkno = -1
sparkxy = -10,-70
hitsound   = -1
guardsound = s1,5
sprpriority = 1
ground.velocity = -5*const(size.xscale),0
guard.velocity = -5*const(size.xscale)
guard.hittime  = 6
guard.slidetime = 6
air.velocity = 0,0
p2facing = 1
p1stateno = 1041
p2stateno = 1043
ID = 1040

[State 191, Wood 1]
type = helper
trigger1 = moveguarded
name = "flag"
helpertype = normal
stateno = 11059
id = 11059
postype = p1
pos = 0,0

[State 230, 2]
type = HitDef
trigger1 = numhelper(11059) = 0
trigger1 = animelem = 8
attr = S, SA
damage = 0, 6
guard.pausetime = 0,10
guard.sparkno = s6125
hitflag = M
guardflag = M
priority = 1, Miss
sparkno = -1
sparkxy = -10,-70
hitsound   = -1
guardsound = s1,5
sprpriority = 1
p2facing = 1
p1stateno = 1042
p2stateno = 1043
ground.velocity = -5*const(size.xscale)
guard.velocity = -5*const(size.xscale)
guard.hittime  = 6
guard.slidetime = 6
ID = 1040

[State 1051, 2]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;------------------
; flag
; 
[Statedef 11059]
type    = S
movetype= I
physics = S
velset = 0,0
anim = 10001
ctrl = 0

[State 1051, 2]
type = destroyself
trigger1 = time = 5
;------------------
; ウェブ縛り・近距離（立ち）
; 
[Statedef 1041]
type    = S
movetype= I
physics = S
velset = 0,0
anim = 1041
ctrl = 0
sprpriority = 0

[State 810, Throw Sound]
type = width
trigger1 = 1
value = ceil(240*const(size.xscale)),0

[State 1051, 2]
type = ChangeState
triggerall = time >= 1
triggerall = command = "holdback"
triggerall = var(7) < 180
trigger1 = command = "x"
trigger2 = command = "y"
trigger3 = command = "z"
trigger4 = command = "b"
value = 1045

[State 191, Wood 1]
type = Explod
trigger1 = time = 6
anim = 11046
id = 11046
postype = p2
pos = 0,ceil(-30*const(size.yscale))
sprpriority = 3
removetime = -1
bindtime = -1
ownpal = 1
scale = const(size.xscale),const(size.yscale)

[State 810, Bind 1]
type = TargetBind
trigger1 = p2dist X <= 200*const(size.xscale)
pos = 150*const(size.xscale), 0

[State 810, Hurt 11]
type = TargetLifeAdd
trigger1 = var(8) = 1
trigger1 = numhelper(11050) != 0
value = -7

[State 1051, 2]
type = varset
trigger1 = time = 0
v = 6
value = 0

[State 1051, 2]
type = varset
trigger1 = time = 0
v = 7
value = 0

[State 1051, 2]
type = varset
trigger1 = time = 0
v = 8
value = 0

[State 1051, 2]
type = varset
trigger1 = time = 0
v = 9
value = 0

[State 1051, 2]
type = varadd
trigger1 = time > 0
v = 7
value = 1

[State 1051, 2]
type = varadd
triggerall = time > 0
triggerall = numtarget(1040) >= 1
trigger1 = target(1040),command = "fwd"
trigger2 = target(1040),command = "back"
trigger3 = target(1040),command = "up"
trigger4 = target(1040),command = "down"
v = 7
value = 10

[State 1051, 2]
type = targetstate
triggerall = numtarget(1040) >= 1
triggerall = target(1040),stateno != 1053
trigger1 = var(9) >= 8
trigger2 = target(1040),alive = 0
value = 1053

[State 1051, 2]
type = targetstate
trigger1 = var(7) >= 180
value = 1044
;ctrl = 1

[State 1051, 2]
type = ChangeState
;triggerall = target(1040),stateno != 1043
trigger1 = var(7) >= 180
trigger2 = var(9) >= 8
trigger3 = numtarget(1040) >= 1 && target(1040),alive = 0
trigger4 = numtarget(1040) >= 1 && target(1040),stateno = 1044
trigger5 = numtarget(1040) >= 1 && target(1040),stateno != 1043
trigger6 = numtarget(1040)  = 0
value = 1054

[State 1051, 2]
type = null;targetstate
trigger1 = var(8) = 1
trigger1 = var(9) < 8
trigger1 = var(7) < 180
value = 1049

;------------------
; ウェブ引っ張り・近距離（立ち）
; 
[Statedef 1045]
type    = S
movetype= I
physics = S
velset = 0,0
anim = 1045
ctrl = 0
sprpriority = 0

[State 191, Wood 1]
type = Explod
triggerall = prevstateno = 1041 || prevstateno = 1042
trigger1 = numexplod(11046) = 0
trigger1 = time = 0
anim = 11046
id = 11046
postype = p2
pos = 0,ceil(-30*const(size.yscale))
sprpriority = 3
removetime = -1
bindtime = -1
ownpal = 1
scale = const(size.xscale),const(size.yscale)

[State 191, Wood 1]
type = Explod
triggerall = prevstateno = 1051 || prevstateno = 1052
trigger1 = numexplod(11046) = 0
trigger1 = time = 0
anim = 11046
id = 11046
postype = p2
pos = 0,ceil(-10*const(size.yscale))
sprpriority = 3
removetime = -1
bindtime = -1
ownpal = 1
scale = const(size.xscale),const(size.yscale)

[State 5071, 1]
type = removeexplod
trigger1 = animelem = 3
id = 11046

[State 810, Bind 1]
type = TargetBind
trigger1 = time = 0
pos = 120*const(size.xscale), 0
time = 1

[State 810, Bind 1]
type = TargetBind
trigger1 = time = 5
pos = 97*const(size.xscale), 0
time = 1

[State 1051, 2]
type = targetstate
trigger1 = time = 0
value = 1046

[State 1051, 2]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;------------------
; ウェブ縛り・遠距離（立ち）
; 
[Statedef 1042]
type    = S
movetype= I
physics = S
velset = 0,0
anim = 1044
ctrl = 0
sprpriority = 0

[State 810, Throw Sound]
type = width
trigger1 = 1
value = ceil(270*const(size.xscale)),0

[State 191, Wood 1]
type = helper
triggerall = time > 6
triggerall = var(6) = 0
triggerall = command != "holdback"
trigger1 = command = "x"
trigger2 = command = "y"
trigger3 = command = "z"
trigger4 = command = "b"
name = "hamon"
helpertype = normal
stateno = 11050
id = 11050
postype = p1
pos = ceil(86*const(size.xscale)),ceil(-73*const(size.yscale))
sprpriority = 4

[State 1051, 2]
type = ChangeState
triggerall = time >= 1
triggerall = command = "holdback"
triggerall = var(7) < 180
trigger1 = command = "x"
trigger2 = command = "y"
trigger3 = command = "z"
trigger4 = command = "b"
value = 1047

[State 191, Wood 1]
type = Explod
trigger1 = time = 6
anim = 11046
id = 11046
postype = p2
pos = 0,ceil(-30*const(size.yscale))
sprpriority = 3
removetime = -1
bindtime = -1
ownpal = 1
scale = const(size.xscale),const(size.yscale)

[State 810, Bind 1]
type = TargetBind
trigger1 = p2dist X <= 264*const(size.xscale)
pos = 265*const(size.xscale), 0

[State 810, Hurt 11]
type = TargetLifeAdd
trigger1 = var(8) = 1
trigger1 = numhelper(11050) != 0
value = -7

[State 1051, 2]
type = varset
trigger1 = time = 0
v = 6
value = 0

[State 1051, 2]
type = varset
trigger1 = time = 0
v = 7
value = 0

[State 1051, 2]
type = varset
trigger1 = time = 0
v = 8
value = 0

[State 1051, 2]
type = varset
trigger1 = time = 0
v = 9
value = 0

[State 1051, 2]
type = varadd
trigger1 = time > 0
v = 7
value = 1

[State 1051, 2]
type = varadd
triggerall = time > 0
triggerall = numtarget(1040) >= 1
trigger1 = target(1040),command = "fwd"
trigger2 = target(1040),command = "back"
trigger3 = target(1040),command = "up"
trigger4 = target(1040),command = "down"
v = 7
value = 10

[State 1051, 2]
type = targetstate
trigger1 = var(7) >= 180
value = 1044
;ctrl = 1

[State 1051, 2]
type = targetstate
triggerall = numtarget(1040) >= 1
triggerall = target(1040),stateno != 1053
trigger1 = var(9) >= 8
trigger2 = target(1040),alive = 0
value = 1053

[State 1051, 2]
type = ChangeState
;triggerall = numtarget(1040) >= 1 && target(1040),stateno != 1043
trigger1 = var(7) >= 180
trigger2 = var(9) >= 8
trigger3 = numtarget(1040) >= 1 && target(1040),alive = 0
trigger4 = numtarget(1040) >= 1 && target(1040),stateno = 1044
trigger5 = numtarget(1040) >= 1 && target(1040),stateno != 1043
trigger6 = numtarget(1040)  = 0
value = 1054

[State 1051, 2]
type = null;targetstate
trigger1 = var(8) = 1
trigger1 = var(9) < 8
trigger1 = var(7) < 180
value = 1049

;------------------
; ウェブ引っ張り・遠距離（立ち）
; 
[Statedef 1047]
type    = S
movetype= I
physics = S
velset = 0,0
anim = 1046
ctrl = 0
sprpriority = 0

[State 191, Wood 1]
type = Explod
triggerall = prevstateno = 1041 || prevstateno = 1042
trigger1 = numexplod(11046) = 0
trigger1 = time = 0
anim = 11046
id = 11046
postype = p2
pos = 0,ceil(-30*const(size.yscale))
sprpriority = 3
removetime = -1
bindtime = -1
ownpal = 1
scale = const(size.xscale),const(size.yscale)

[State 191, Wood 1]
type = Explod
triggerall = prevstateno = 1051 || prevstateno = 1052
trigger1 = numexplod(11046) = 0
trigger1 = time = 0
anim = 11046
id = 11046
postype = p2
pos = 0,ceil(-10*const(size.yscale))
sprpriority = 3
removetime = -1
bindtime = -1
ownpal = 1
scale = const(size.xscale),const(size.yscale)

[State 5071, 1]
type = removeexplod
trigger1 = animelem = 3
id = 11046

[State 810, Bind 1]
type = TargetBind
trigger1 = time = 0
pos = 200*const(size.xscale), 0
time = 1

[State 810, Bind 1]
type = TargetBind
trigger1 = time = 5
pos = 155*const(size.xscale), 0
time = 1

[State 1051, 2]
type = targetstate
trigger1 = time = 0
value = 1048

[State 1051, 2]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;------------------
; ウェブ縛り・終了（立ち）
; 
[Statedef 1054]
type    = S
movetype= I
physics = S
velset = 0,0
anim = 1054
ctrl = 0
sprpriority = 0

[State 3010, 2]
type = null;helper
triggerall = numtarget(1040) >= 1
trigger1 = target(1040),stateno = 1053
trigger1 = numhelper(1004) = 0
name = "denki"
helpertype = normal
stateno = 1004
id = 1004
pos = 0,ceil(-35*const(size.yscale))
postype = p2
ownpal = 1
keyctrl = 0
persistent = 0
ignorehitpause = 1

[State 5071, 1];マフラーが消える
type = removeexplod
trigger1 = time = 0
trigger1 = numexplod(11046) != 0
id = 11046

[State 1051, 2]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;------------------
; ウェブ波紋
; 
[Statedef 11050]
type    = A
movetype= I
physics = N
velset = 9*const(size.xscale),0
anim = 11050
sprpriority = 4
ctrl = 0

[State 810, Throw Sound]
type = playsnd
trigger1 = animelem = 1
value = 3,12
channel = 0

[state 3003]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 11051, 2]
type = parentvarset
trigger1 = time = 0
v = 6
value = 1

[State 11051, 2]
type = parentvarset
trigger1 = time = 5
v = 6
value = 0

[State 11051, 2]
type = ChangeState
trigger1 = p2dist X < 10*const(size.xscale)
value = 11051

[State 1051, 2]
type = destroyself
trigger1 = parent,stateno != 1041
trigger1 = parent,stateno != 1042
trigger1 = parent,stateno != 1051
trigger1 = parent,stateno != 1052
trigger1 = parent,stateno != 1542
trigger1 = parent,stateno != 1551

;------------------
; ウェブ波紋ヒット
; 
[Statedef 11051]
type    = A
movetype= I
physics = N
velset = 0,0
anim = 11051
sprpriority = 4
ctrl = 0

[State 810, Throw Sound]
type = playsnd
trigger1 = animelem = 1
value = 1,7

[state 3003]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 11051, 2]
type = parentvarset
trigger1 = time = 0
v = 8
value = 1

[State 11051, 2]
type = parentvarset
trigger1 = time = 1
v = 8
value = 0

[State 11051, 2]
type = parentvaradd
trigger1 = time = 0
v = 9
value = 1

[State 11051, 2]
type = destroyself
trigger1 = parent,stateno != 1041
trigger1 = parent,stateno != 1042
trigger1 = parent,stateno != 1051
trigger1 = parent,stateno != 1052
trigger1 = parent,stateno != 1542
trigger1 = parent,stateno != 1551
trigger2 = animtime = 0
;------------------
; ウェブ相手
; 
[Statedef 1043]
type    = S
movetype= H
physics = N
ctrl = 0
sprpriority = 2

[State 1051, 2]
type = Changeanim2
trigger1 = time = 0
value = 1042

[State 1051, 2]
type = selfstate
trigger1 = time >= 180
value = 0
ctrl = 1

;------------------
; ウェブ相手（波紋ヒット）
; 
[Statedef 1049]
type    = S
movetype= H
physics = N
ctrl = 0
sprpriority = 2

[State 1051, 2]
type = Changeanim2
trigger1 = time = 0
value = 1048

[State 1051, 2]
type = Changestate
trigger1 = animtime = 0
value = 1043
;------------------
; ウェブ相手もどり
; 
[Statedef 1044]
type    = S
movetype= I
physics = N
ctrl = 0

[State 1051, 2]
type = Changeanim
trigger1 = time = 0
value = 0

[State 1051, 2]
type = selfstate
trigger1 = time >= 10
value = 0
ctrl = 1

;------------------
; ウェブ相手引っ張られ・近距離
; 
[Statedef 1046]
type    = S
movetype= H
physics = N
ctrl = 0
velset = 0,0
sprpriority = 2

[State 1051, 2]
type = Changeanim2
trigger1 = time = 0
value = 1043

[State 1065, 3]
type = sprpriority
trigger1 = time = 15
value = -1

[State 108, 0]
type = Velset
trigger1   = time = 5
x = 6*enemy,const(size.xscale)

[State 108, 0]
type = VelAdd
trigger1   = time >= 5
trigger1   = Vel X > 0
x = -0.24*enemy,const(size.xscale)

[State 108, 0]
type = Velset
trigger1   = time >= 5
trigger1   = Vel X < 0
x = 0

[State 1051, 2]
type = selfstate
trigger1 = time = 27
value = 0
ctrl = 1

;------------------
; ウェブ相手引っ張られ・遠距離
; 
[Statedef 1048]
type    = S
movetype= H
physics = N
ctrl = 0
velset = 0,0
sprpriority = 2

[State 1051, 2]
type = Changeanim2
trigger1 = time = 0
value = 1043

[State 1065, 3]
type = sprpriority
trigger1 = time = 15
value = -1

[State 108, 0]
type = Velset
trigger1   = time = 5
x = 6*enemy,const(size.xscale)

[State 108, 0]
type = VelAdd
trigger1   = time >= 9
trigger1   = Vel X > 0
x = -0.31*enemy,const(size.xscale)

[State 108, 0]
type = Velset
trigger1   = time >= 9
trigger1   = Vel X < 0
x = 0

[State 1051, 2]
type = selfstate
trigger1 = time = 27
value = 0
ctrl = 1


;---------------------------------------------------------------------------
;ウェブ・相手の空中の状態
[Statedef 1053]
type    = A
movetype= H
physics = N
velset = -4,-7
poweradd = 40

[State 820, 1]
type = velset
Trigger1 = time = 1
x = -4
y = -7

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 803

[State 821, 1]
type = VelAdd
Trigger1 = 1
y = .4

[State 821, 4] 
type = palfx
trigger1 = time = 0
time = 99
add = 100,100,100
mul = 200,200,200
sinadd = 150,150,150,3

[State 1028, Hit ground]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 10)
value = 5110

;===========================================================================
;クラッカーヴォレイ1
;---------------------------------------------------------------------------
; 駄目押しにもう一本　強
[Statedef 1100]
type    = S
movetype= I
physics = S
ctrl = 0
velset = 0,0
anim = 1100;3522

[State 2200, 2]
type = PalFX
triggerall = var(20) >= 2
trigger1 = time >= 0 && time <= 4
trigger1 = time%4 = 0
time = 2
mul = 228,58,58

[State 210, Width]
type = Width
trigger1 = AnimElemTime(8) >= 0
trigger1 = AnimElemTime(9) < 0
value = 50,0

[State 460, 2]
type = PlaySnd
trigger1 = animelemtime(8) = 2
value = 2,0 

[State 460, 2]
type = PlaySnd
trigger1 = animelemtime(7) = 0
value = 1100, 0
channel = 0

[state 1027]
type = StateTypeSet
trigger1 = animelemtime(8) = 2
movetype = A

[State 8001]
type = Explod
trigger1 = animelemtime(8) = 2
trigger1 = numhelper(3600) <= 31
anim = 1110;3588
sprpriority = 3
pos = 58,-75
postype = p1
ownpal = 1
pausemovetime = ifelse(var(50)=1,99999, ifelse(var(48)>0,37-var(48), 0))

[State 4100,1]
type = Helper
trigger1 = animelemtime(9) = 0
trigger1 = numhelper(3600) <= 31
name = "knife22"
sprpriority = 4
pos = 66,-75
postype = p1
facing = 1
stateno = 1120;3622
helpertype = normal          
ownpal = 1
pausemovetime = ifelse(var(50)=1,99999, ifelse(var(48)>0,37-var(48), 0))

[State -1, Kung Fu Throw]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;ナイフNo.22
[Statedef 1120]
type    = A
movetype= A
physics = N
poweradd= 0
ctrl = 0
anim = 1120;3600
sprpriority = 4

[State 2200, 2]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 460, 2]
type = NotHitBy
trigger1 = 1
value = SCA

[State 460, 2]
type = PlayerPush
trigger1 = 1
value = 0

[State 460, 2]
type = VelSet
trigger1 = time = 0
trigger2 = root,var(50) = 0
x = 12

[State 460, 2]
type = VelSet
trigger1 = movehit
trigger2 = root,var(50) = 1
trigger2 = time = 4
x = 0
ignorehitpause = 1

[State 210, 2]
type = HitDef
trigger1 = root,var(50) = 0
trigger1 = root,var(37) > 0
attr = S, SP
damage    = floor(ifelse((root,var(8))=1,ifelse(root,var(20)<2,42, 63)*parent,fvar(0), ifelse(root,var(20)<2,42, 63)*parent,fvar(1))), floor(ifelse(root,var(20)<2,14,21)*parent,fvar(1))
getpower = 0,0
animtype = hard
guardflag = MA
hitflag = MAFD
priority = 5, Hit
pausetime = 0,15
guard.pausetime = 0,8
sparkno = s6100
guard.sparkno = s6125
sparkxy = -12,-0
hitsound   = s10,6
guardsound = s10,4
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -5*parent,fvar(8)
airguard.velocity = floor(ifelse(-2.0*parent,fvar(6)>0,0, -2.0*parent,fvar(6))),floor(-1.0*parent,fvar(6));-2.0,-1.0
air.velocity = floor(ifelse(-2.0*parent,fvar(6)>0,0, -2.0*parent,fvar(6))),floor(-1.0*parent,fvar(6));-2.0,-1.0
air.hittime = 18
guard.kill = 0
fall = 1
fall.recover = 0
ID = ifelse(root,var(8)=1,9999,0)

[State 210, 2]
type = HitDef
trigger1 = root,var(50) = 0
trigger1 = root,var(37) = 0
attr = S, SP
damage    = floor(ifelse((root,var(8))=1,ifelse(root,var(20)<2,42, 63)*parent,fvar(0), ifelse(root,var(20)<2,42, 63)*parent,fvar(1))), floor(ifelse(root,var(20)<2,14,21)*parent,fvar(1))
getpower = 0,0
animtype = hard
hitflag = MAFD
priority = 5, Hit
pausetime = 0,15
guard.pausetime = 0,8
sparkno = s6100
guard.sparkno = s6125
sparkxy = -12,-0
hitsound   = s10,6
guardsound = s10,4
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -5*parent,fvar(8)
airguard.velocity = floor(ifelse(-2.0*parent,fvar(6)>0,0, -2.0*parent,fvar(6))),floor(-1.0*parent,fvar(6));-2.0,-1.0
air.velocity = floor(ifelse(-2.0*parent,fvar(6)>0,0, -2.0*parent,fvar(6))),floor(-1.0*parent,fvar(6));-2.0,-1.0
air.hittime = 18
guard.kill = 0
fall = 1
fall.recover = 0
ID = ifelse(root,var(8)=1,9999,0)

[State 210, 2]
type = HitDef
trigger1 = root,var(50) = 1
attr = S, SP
damage    = 0
getpower = 0,0
animtype = hard
;guardflag = MA
hitflag = MAFD
priority = 5, Hit
pausetime = 0,15
guard.pausetime = 0,8
sparkno = s6100
guard.sparkno = s6125
sparkxy = -12,-0
hitsound   = s10,6
guardsound = s10,4
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = 0
air.velocity = 0,0
air.hittime = 18
guard.kill = 0
fall = 1
fall.recover = 0
p2facing = 1

[State 200, 1]
type = parentvaradd
trigger1 = root,var(50) = 1
trigger1 = movehit
var(53) = floor(ifelse((root,var(8))=1,ifelse(root,var(20)<2,42, 63)*parent,fvar(0), ifelse(root,var(20)<2,42, 63)*parent,fvar(1)))
ignorehitpause = 1
persistent = 0

[State 10011, 4]
type = HitOverride
trigger1 = 1
attr = SCA, NT, ST, HT, NA, SA, HA,NP,SP,HP
stateno = -1
time = -1

[State 230, 3]
type = ChangeState
trigger1 = moveguarded
value = 3619

[State 230, 3]
type = DestroySelf
triggerall = root,var(50) = 0
trigger1 = ScreenPos X !=[-300,619]
trigger2 = ScreenPos Y !=[-200,439]

[State 230, 3]
type = ChangeState
trigger1 = movehit
value = 36220
ignorehitpause = 1

[Statedef 36220];刺さった後
type    = A
movetype= I
physics = N
anim = 1121;3610
sprpriority = 4

[State 230, 3]
type = poweradd
trigger1 = time = 0
trigger1 = root,var(50) = 0
value = 40
ignorehitpause = 1

[State 230, 3]
type = DestroySelf
trigger1 = animtime = 0

;---------------------------------------------------------------------------
;地面に落ちたときのナイフ
[Statedef 1130]
type    = S
movetype= I
physics = N
anim = 1130;3618
sprpriority = -1

[State 2200, 2]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[state 10000, 1]
type = VelSet
trigger1 = time = 0
x = 5
y = -3

[state 10000, 1]
type = VelAdd
trigger1 = time >= 10
y = .44

[State 230, 3]
type = DestroySelf
trigger1 = animtime = 0

;---------------------------------------------------------------------------
;ガードされたときのナイフ
[Statedef 1140]
type    = A
movetype= I
physics = N
anim = 1140;3619
sprpriority = 4

[State 2200, 2]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[state 10000, 1]
type = VelSet
trigger1 = time = 0
x = -2
y = -3

[state 10000, 1]
type = VelAdd
trigger1 = time >= 10
y = .44

[State 230, 3]
type = DestroySelf
trigger1 = animtime = 0

;===========================================================================
;===========================================================================
;---------------------------------------------------------------------------
;すでに植え込んでおいたわ・発動

[Statedef 1200]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 1200
sprpriority = 2

[State 1200, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, NT          ;ｓ：立ち　ｎ：通常　ｔ：投げ
hitflag = M-          ;コンボの途中から投げが入らないよう設定してある
priority = 1, Miss    ;１は優先順位が低いので技がでないかミスするという設定
sparkno = -1          ;-をつければスパークエフェクトは無い
sprpriority = -1       ;
p1facing = ifelse (command = "holdback", -1, 1)
p2facing = 1          ;？
p1stateno = 1210       ;投げが成功した場合の移動する１Ｐのステート
p2stateno = 1220       ;投げが成功した場合の移動する２Ｐのステート
fall = 1              ;落ちる力を２Ｐにかけるか

[State 1200, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;すでに植え込んでおいたわ・投げている自分

[Statedef 1210]
type    = S
movetype= A
physics = N
anim = 1210
sprpriority = -1

[State 210, 4]
type = SprPriority
trigger1 = AnimElemTime(2) = 0
value = 2

[State 1210, Grab Sound]
type = PlaySnd
trigger1 = time = 0
value = 1200, random%2
channel = 0

[State 1210, Grab Sound]
type = PlaySnd
trigger1 = AnimElemTime(1) = 0
value = 1, 1

[State 460, 2]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = 5, 2

[State 1210, Bind 1]
type = TargetBind
trigger1 = AnimElemTime(2) < 0
pos = 38, -10

[State 1210, Width 2-11]
type = Width
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(12) < 0
edge = 60,0

[State 1210, Bind 2-4]
type = TargetBind
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
pos = 10, 5

[State 1210, Bind 5]
type = TargetBind
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
pos = 30, -35

[State 1210, Bind 6]
type = TargetBind
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
pos = 79, -20

[State 1210, Hurt 11]
type = TargetLifeAdd
trigger1 = AnimElemTime(5) = 0
value = floor(-119*fvar(1))

[State 1210, Throw 11]
type = TargetState
trigger1 = AnimElemTime(5) = 0
value = 1221

[State 1210, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;すでに植え込んでおいたわ・投げられている相手

[Statedef 1220]
type    = A
movetype= H
physics = N
velset = 0,0

[State 1227, No scroll]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 1220, 1]
type = ChangeAnim2
trigger1 = time = 0
value = 1220

;---------------------------------------------------------------------------
;すでに植え込んでおいたわ・相手の空中の状態

[Statedef 1221]
type    = A
movetype= H
physics = N
velset = -15,-0.1

[State 1221, 1]
type = VelAdd
Trigger1 = 1
y = .33

[State 1221, 4] 
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100

[State 1227, No scroll]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 1221, Hit wall]
type = ChangeState
;triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist <= 20
trigger2 = FrontEdgeBodyDist <= 20
value = 1227

;---------------------------------------------------------------------------
; 飛んでいった相手の壁に当たる状態のステート

[Statedef 1227]
type    = A
movetype= H
physics = N

[State 1227, Turn]
type = Turn
trigger1 = (Time = 0) && (FrontEdgeBodyDist <= 30)

[State 1227, Pos]
type = PosAdd
trigger1 = Time = 0
x = 15 - BackEdgeBodyDist

[State 1227, Stop moving]
type = PosFreeze
trigger1 = 1
x = 1
y = 1

[State 1227, No scroll]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,1

[State 1227, Spark]
type = Explod
trigger1 = Time = 0
anim = F72
pos = 0, floor (screenpos y) - 50
postype = back
sprpriority = 3

[State 1227, Anim]
type = ChangeAnim2
trigger1 = Time = 0
value = 1220

[State 1227, Sound]
type = PlaySnd
trigger1 = Time = 0
value = F7,0

[State 1227, State]
type = ChangeState
trigger1 = Time = 0
value = 1228

;---------------------------------------------------------------------------
; 壁に当たった相手が落ちるステート

[Statedef 1228]
type    = A
movetype= H
physics = N

[State 1228, 1]
type = NotHitBy
trigger1 = 1
value = , NA, NP, NT

[State 1228, Vel Y]
type = VelSet
trigger1 = Time = 0
y = -5

[State 1228, Vel X]
type = VelSet
trigger1 = Time = 0
x = 1.6

[State 1228, Turn]
type = Turn
trigger1 = (Time = 0) && (BackEdgeDist < 30)

[State 1228, Gravity]
type = VelAdd
trigger1 = 1
y = .45

[State 1228, Anim 5050] 
type = ChangeAnim
trigger1 = Time = 0
trigger1 = !SelfAnimExist(5052)
value = 5050

[State 1228, Anim 5052] 
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5052)
value = 5052

[State 1228, Anim 5060] 
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5050
trigger1 = SelfAnimExist(5060)
persistent = 0
value = 5060

[State 1228, Anim 5062] 
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5052
trigger1 = SelfAnimExist(5062)
persistent = 0
value = 5062

[State 1228, Hit ground]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100


;===========================================================================
;===========================================================================
;Special1_X
[Statedef 1300]
type    = A
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 80
anim = 1300;1302
ctrl = 0
sprpriority = 20

[State 1300, 出てくるんじゃあない]
type = playsnd
trigger1 = time = 0
value = 1300,0
channel = 0

[State 0, VelSet]
type = VelSet
trigger1 =animelem = 4
x = 0
y = -15
;ignorehitpause =
;persistent =

[State 0, ScreenBound]
type = ScreenBound
trigger1 =  1
value = 0
movecamera = 0,0
;ignorehitpause =
;persistent =



[State 1302, Fim]
type = ChangeState
trigger1 = AnimTime = 0
value = 1301
ctrl = 0

[Statedef 1301]
type    = A
movetype= A
physics = N
velset = 0,15
anim = 1301
ctrl = 0
sprpriority = 20

[State 0, ScreenBound]
type = ScreenBound
trigger1 =  1
value = 0
movecamera = 0,0
;ignorehitpause =
;persistent =

[State 0, PosSet]
type = PosSet
trigger1 = !time
trigger1 = numenemy > 0
x = floor(enemynear,pos x)
y = floor(enemynear,pos x) + -300
;ignorehitpause =
;persistent =
[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S1300,25
volume = 0
channel = 5



[State 0, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,SA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAFD        ;HLAFD+-
guardflag = MA         ;HLA
animtype = up          ;light,medium,hard,back,up,diagup
air.animtype = diagup
priority = 5,Hit   ;Hit,Miss,Dodge
pausetime = 8,4
damage = 100,1
sparkno = s6100
sparkxy = 0,-10
guard.sparkno = S6125
hitsound=s5,4
guardsound=s6,0
ground.velocity = 0
guard.velocity = -1
air.velocity = 0,10
airguard.velocity = -1,-2
hittime = 20
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
sprpriority = 1
fall.recover=0
fall = 1

[State 1302, Fim]
type = ChangeState
trigger1 = pos y >= 0
value = 1302
ctrl = 0

[Statedef 1302]
type    = S
movetype= I
physics = S
juggle  = 1
velset = 0,0
poweradd = 0
anim = 1302;1302
ctrl = 0
sprpriority = 20

[State 0, PosSet]
type = PosSet
trigger1 = !time
y = 0
;ignorehitpause =
;persistent =




[State 1302, Fim]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
;Special1_X
[Statedef 1310]
type    = A
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 80
anim = 1300;1302
ctrl = 0
sprpriority = 20


[State 1310, 出てくるんじゃあない]
type = playsnd
trigger1 = time = 0
value = 1300,1
channel = 0

[State 0, VelSet]
type = VelSet
trigger1 =animelem = 4
x = 0
y = -15
;ignorehitpause =
;persistent =

[State 0, ScreenBound]
type = ScreenBound
trigger1 =  1
value = 0
movecamera = 0,0
;ignorehitpause =
;persistent =



[State 1312, Fim]
type = ChangeState
trigger1 = AnimTime = 0
value = 1311
ctrl = 0

[Statedef 1311]
type    = A
movetype= A
physics = N
velset = 0,15
anim = 1301
ctrl = 0
sprpriority = 20

[State 0, ScreenBound]
type = ScreenBound
trigger1 =  1
value = 0
movecamera = 0,0
;ignorehitpause =
;persistent =

[State 0, PosSet]
type = PosSet
trigger1 = !time
trigger1 = numenemy > 0
x = floor(enemynear,pos x)
y = floor(enemynear,pos x) + -300
;ignorehitpause =
;persistent =
[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S1300,25
volume = 0
channel = 5



[State 0, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,SA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAFD        ;HLAFD+-
guardflag = MA         ;HLA
animtype = up          ;light,medium,hard,back,up,diagup
air.animtype = diagup
priority = 5,Hit   ;Hit,Miss,Dodge
pausetime = 8,4
damage = 120,1
sparkno = s6100
sparkxy = 0,-10
guard.sparkno = S6125
hitsound=s5,4
guardsound=s6,0
ground.velocity = 0
guard.velocity = -1
air.velocity = 0,10
airguard.velocity = -1,-2
hittime = 20
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
sprpriority = 1
fall.recover=0
fall = 1

[State 1312, Fim]
type = ChangeState
trigger1 = pos y >= 0
value = 1312
ctrl = 0

[Statedef 1312]
type    = S
movetype= I
physics = S
juggle  = 1
velset = 0,0
poweradd = 0
anim = 1302;1302
ctrl = 0
sprpriority = 20

[State 0, PosSet]
type = PosSet
trigger1 = !time
y = 0
;ignorehitpause =
;persistent =




[State 1312, Fim]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



;---------------------------------------------------------------------------
;Special1_X
[Statedef 1320]
type    = A
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 80
anim = 1300;1302
ctrl = 0
sprpriority = 20


[State 1320, 出てくるんじゃあない]
type = playsnd
trigger1 = time = 0
value = 1300,2
channel = 0

[State 0, VelSet]
type = VelSet
trigger1 =animelem = 4
x = 0
y = -15
;ignorehitpause =
;persistent =

[State 0, ScreenBound]
type = ScreenBound
trigger1 =  1
value = 0
movecamera = 0,0
;ignorehitpause =
;persistent =



[State 1322, Fim]
type = ChangeState
trigger1 = AnimTime = 0
value = 1321
ctrl = 0

[Statedef 1321]
type    = A
movetype= A
physics = N
velset = 0,15
anim = 1301
ctrl = 0
sprpriority = 20

[State 0, ScreenBound]
type = ScreenBound
trigger1 =  1
value = 0
movecamera = 0,0
;ignorehitpause =
;persistent =

[State 0, PosSet]
type = PosSet
trigger1 = !time
trigger1 = numenemy > 0
x = floor(enemynear,pos x)
y = floor(enemynear,pos x) + -300
;ignorehitpause =
;persistent =
[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S1300,25
volume = 0
channel = 5



[State 0, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,SA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAFD        ;HLAFD+-
guardflag = MA         ;HLA
animtype = up          ;light,medium,hard,back,up,diagup
air.animtype = diagup
priority = 5,Hit   ;Hit,Miss,Dodge
pausetime = 8,4
damage = 130,1
sparkno = s6100
sparkxy = 0,-10
guard.sparkno = S6125
hitsound=s5,4
guardsound=s6,0
ground.velocity = 0
guard.velocity = -1
air.velocity = 0,10
airguard.velocity = -1,-2
hittime = 20
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
sprpriority = 1
fall.recover=0
fall = 1

[State 1322, Fim]
type = ChangeState
trigger1 = pos y >= 0
value = 1322
ctrl = 0

[Statedef 1322]
type    = S
movetype= I
physics = S
juggle  = 1
velset = 0,0
poweradd = 0
anim = 1302;1302
ctrl = 0
sprpriority = 20

[State 0, PosSet]
type = PosSet
trigger1 = !time
y = 0
;ignorehitpause =
;persistent =




[State 1322, Fim]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



;===========================================================================
;泥棒猫のにおい・弱
[statedef 1400]
type=s
movetype=a
physics=s
poweradd=100
velset=0,0
anim=1400
ctrl=0

[state 1400,発射音]
type=playsnd
trigger1=animelemtime(8)=0
value=1400,0

[State 1400]
type = Helper
trigger1=animelemtime(8)=0
helpertype = normal
name = "hair"
ID = 1401
pos = 0, -100
postype = p1
facing = 1
stateno = 1401
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = 1.0
size.yscale = 1.0

[state 1400,終了]
type=changestate
trigger1=animtime=0
value=0
ctrl=1

;---------------------------------------------------------------------------
;泥棒猫のにおい・中
[statedef 1410]
type=s
movetype=a
physics=s
poweradd=100
velset=0,0
anim=1410
ctrl=0

[state 1410,発射音]
type=playsnd
trigger1=animelemtime(8)=0
value=1400,0

[State 1410]
type = Helper
trigger1=animelemtime(8)=0
helpertype = normal
name = "hair2"
ID = 1411
pos = 0, -100
postype = p1
facing = 1
stateno = 1411
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = 1.0
size.yscale = 1.0

[state 1410,終了]
type=changestate
trigger1=animtime=0
value=0
ctrl=1

;---------------------------------------------------------------------------
;泥棒猫のにおい・強
[statedef 1420]
type=s
movetype=a
physics=s
poweradd=100
velset=0,0
anim=1420
ctrl=0

[state 1420,発射音]
type=playsnd
trigger1=animelemtime(8)=0
value=1400,0

[State 1420]
type = Helper
trigger1=animelemtime(8)=0
helpertype = normal
name = "hair3"
ID = 1421
pos = 0, -100
postype = p1
facing = 1
stateno = 1421
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = 1.0
size.yscale = 1.0

[state 1420,終了]
type=changestate
trigger1=animtime=0
value=0
ctrl=1

;---------------------------------------------------------------------------
;髪・弱--------------------------------------------------------------------------------------------------
[Statedef 1401];弾
type    = A
movetype= A
physics = N
ctrl = 0
anim = 1401
sprpriority = 3
velset = 8,0

[state 1401]
type = NotHitBy
trigger1 = 1
value = ,AT

[state 1401]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP
stateno = 1404


[State 1401]
type = HitDef
trigger1 = 1
attr = S, SP
animtype  = hard
damage    = 21, 0
guardflag = MA
pausetime = 0,10
sparkno = S1402
sparkxy = 0,0
hitsound   = S100,4
fall = 1
guard.sparkno = S1402
guardsound = S100,6
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = 0,0
air.velocity = 0,0
givepower = 42, 0
persistent = 0

[state 1401]
type = Destroyself
triggerall = time > 30
trigger1 = ScreenPos X < -60
trigger2 = ScreenPos X > 380


[Statedef 1404];相殺
type    = A
movetype= H
physics = N
Anim = 1402
ctrl = 0
velset = 0, 0
sprpriority = 2

[state 1404]
type = Destroyself
trigger1 = Animtime = 0
;---------------------------------------------------------------------------
;髪・中--------------------------------------------------------------------------------------------------
[Statedef 1411];弾
type    = A
movetype= A
physics = N
ctrl = 0
anim = 1401
sprpriority = 3
velset = 8,0

[state 1411]
type = NotHitBy
trigger1 = 1
value = ,AT

[state 1411]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP
stateno = 1414


[State 1411]
type = HitDef
trigger1 = 1
attr = S, SP
animtype  = hard
damage    = 30, 0
guardflag = MA
pausetime = 0,10
sparkno = S1412
sparkxy = 0,0
hitsound   = S100,4
guard.sparkno = S1412
guardsound = S100,6
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = 0,0
air.velocity = 0,0
givepower = 42, 0
persistent = 0
id = 1412

[State 1411]
type = TargetState
trigger1 = Numtarget(1412)
trigger1 = target(1412),stateno = 5000 || target(1412),stateno = 5010 || target(1412),stateno = 5020
value = 1413

[State 1411]
type = ChangeState
trigger1 = Numtarget(1412)
trigger1 = target(1412),stateno = 1413
value = 1412

[state 1411]
type = Destroyself
triggerall = time > 30
trigger1 = ScreenPos X < -60
trigger2 = ScreenPos X > 380

[Statedef 1412];拘束自分
type    = S
movetype= I
physics = N
ctrl = 0
anim = 1403
sprpriority = 3
velset = 0,0

[state 1412]
type = posset
trigger1 = Numtarget(1412)
trigger1 = time = 0
x = target(1412),pos X
y = 0

[state 1412]
type = Changestate
trigger1 = Animelemtime(13) < 0
trigger1 = Numtarget(1412) = 0
value = 1415

[state 1412]
type = Destroyself
trigger1 = Animtime = 0

[Statedef 1413];拘束相手
type    = S
movetype= H
physics = S
ctrl = 0
velset = 0, 0
sprpriority = 1

[state 1413]
type = Nothitby
trigger1 = 1
value = , AT

[state 1413]
type = playerpush
trigger1 = 1
value = 0

[state 1413]
type = Changeanim2
trigger1 = time = 0
value = 1404

[state 1413]
type = posset
trigger1 = time = 0
y = 0

[state 1413]
type = HitFallSet
trigger1 = time = 0
value = 0
xvel = 0
yvel = 0

[state 1413]
type = Selfstate
trigger1 = Animtime = 0
value = 0
ctrl = 1

[Statedef 1414];相殺
type    = A
movetype= H
physics = N
Anim = 1402
ctrl = 0
velset = 0, 0
sprpriority = 2

[state 1414]
type = Destroyself
trigger1 = Animtime = 0

[Statedef 1415];拘束解除
type    = S
movetype= I
physics = N
Anim = 1405
ctrl = 0
velset = 0, 0
sprpriority = 2

[state 1415]
type = Destroyself
trigger1 = Animtime = 0

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;髪・強--------------------------------------------------------------------------------------------------
[Statedef 1421];弾
type    = A
movetype= A
physics = N
ctrl = 0
anim = 1401
sprpriority = 3
velset = 8,0

[state 1421]
type = NotHitBy
trigger1 = 1
value = ,AT

[state 1421]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP
stateno = 1424


[State 1421]
type = HitDef
trigger1 = 1
attr = S, SP
animtype  = hard
damage    = 21, 0
guardflag = MA
pausetime = 0,10
sparkno = S1422
sparkxy = 0,0
hitsound   = S100,4
guard.sparkno = S1422
guardsound = S100,6
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = 0,0
air.velocity = 0,0
givepower = 42, 0
persistent = 0
id = 1422

[State 1421]
type = TargetState
trigger1 = Numtarget(1422)
trigger1 = target(1422),stateno = 5000 || target(1422),stateno = 5010 || target(1422),stateno = 5020
value = 1423

[State 1421]
type = ChangeState
trigger1 = Numtarget(1422)
trigger1 = target(1422),stateno = 1423
value = 1422

[state 1421]
type = Destroyself
triggerall = time > 30
trigger1 = ScreenPos X < -60
trigger2 = ScreenPos X > 380

[Statedef 1422];拘束自分
type    = S
movetype= I
physics = N
ctrl = 0
anim = 1403
sprpriority = 3
velset = 0,0

[state 1422]
type = posset
trigger1 = Numtarget(1422)
trigger1 = time = 0
x = target(1422),pos X
y = 0

[State 1422,Explod]
type = Explod
trigger1 = Animelemtime(6) = 0
anim = 6121
scale = 1,1
postype = p2
pos = 0,-100
ownpal = 1

[State 1422,炎の音]
type = playsnd
trigger1 = Animelemtime(6) = 0
value = 5,10

[State 1422,TargetLifeAdd]
Type = TargetLifeAdd
trigger1 = Animelemtime(6) = 0
value = -50

[state 1422]
type = Changestate
trigger1 = Animelemtime(13) < 0
trigger1 = Numtarget(1422) = 0
value = 1425

[state 1422]
type = Destroyself
trigger1 = Animtime = 0

[Statedef 1423];拘束相手
type    = S
movetype= H
physics = S
ctrl = 0
velset = 0, 0
sprpriority = 1

[state 1423]
type = Nothitby
trigger1 = 1
value = , AT

[state 1423]
type = playerpush
trigger1 = 1
value = 0

[state 1423]
type = Changeanim2
trigger1 = time = 0
value = 1404

[state 1423]
type = posset
trigger1 = time = 0
y = 0

[state 1423]
type = HitFallSet
trigger1 = time = 0
value = 0
xvel = 0
yvel = 0

[state 1423]
type = Selfstate
trigger1 = Animtime = 0
value = 0
ctrl = 1

[Statedef 1424];相殺
type    = A
movetype= H
physics = N
Anim = 1402
ctrl = 0
velset = 0, 0
sprpriority = 2

[state 1424]
type = Destroyself
trigger1 = Animtime = 0

[Statedef 1425];拘束解除
type    = S
movetype= I
physics = N
Anim = 1405
ctrl = 0
velset = 0, 0
sprpriority = 2

[state 1425]
type = Destroyself
trigger1 = Animtime = 0

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;===========================================================================
;薔薇マジック
[statedef 2200]
type=s
movetype=i
physics=s
ctrl=0
anim=2200

[state 2200,受け止め定義]
type=reversaldef
trigger1=animelemtime(9)=0
reversal.attr=sca,aa,ap
pausetime=0,14
numhits=0
p1stateno=2210

[state 2200,食らい上書き]
type=hitoverride
trigger1=animelemno(0)=9
time=1
attr=sca,aa,ap
stateno=2210
ignorehitpause=1

[state 2200,終了]
type=changestate
trigger1=animtime=0
value=0
ctrl=1

;---------------------------------------------------------------------------
;薔薇マジック・成功
[statedef 2210]
type=s
movetype=i
physics=s
ctrl=0
velset=0,0
anim=2210

[state 2210,無敵]
type=nothitby
trigger1=1
value=sca

[state 2210,薔薇]
type=explod
trigger1=time=0
anim=7800
pos=0,-120
postype=p1
scale=const(size.xscale),const(size.yscale)
bindtime=1
ontop=1
ownpal=1
pausemovetime=2147483647
supermovetime=2147483647

[state 2210,ガラスが割れる音]
type=playsnd
trigger1=time=0
value=2200,0

[state 2210,時間停止]
type=pause
trigger1=time=0
time=20
movetime=20
ignorehitpause=1

[state 2210,敵の背後に瞬間移動]
type=posset
trigger1=time=1
x=enemynear,pos x+facing*50

[state 2210,振り向き]
type=turn
trigger1=time=1
trigger1=p2dist x<0

[state 2210,終了]
type=changestate
trigger1=animtime=0
value=0
ctrl=1

;ここからオリジナル
;===========================================================================
;===========================================================================
;山吹色の波紋疾走
[Statedef 1100]
type = S
movetype = A
physics = N
anim = 1100
ctrl = 0
velset = 0,0

[State -2]
type = VarSet
trigger1 = time = 0
var(5) = ifelse(command = "山吹色の波紋疾走3",2,ifelse(command = "山吹色の波紋疾走2",1,0))
ignorehitpause = 1

[State 1100]
type = PowerAdd
trigger1 = time = 0
value = ifelse(var(5)=2,60,ifelse(var(5)=1,50,10))

[State 1100]
type = Width
trigger1 = animelemtime(15) >= 0 && animelemtime(17) < 0
player = 28,0

[State 1100]
type = PlaySnd
trigger1 = animelem = 13
value = 5,9
channel = 1

[State 1100]
type = HitDef
triggerall = var(5) != 2
trigger1 = time = 0
attr = S, NP
hitflag = MAF
guardflag = M
animtype = Light
air.animtype = back
fall.animtype = back
priority = 3, Hit
damage = ceil(ifelse((97*fvar(1))<7,7,(97*fvar(1)))),ceil(ifelse((97*fvar(1)*.25)<7,7,(97*fvar(1)*.25)))
pausetime = 17,13
guard.pausetime = 17,30
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
hitsound = s1,5
guardsound = s120, 0
ground.type = high
air.type = high
ground.slidetime = 23
ground.hittime = 23
air.hittime = 23
guard.ctrltime = 23
ground.velocity = -15*const(size.xscale)
air.velocity = -3*ifelse(var(42)<2,1,.5**(var(42)-2)),-2*ifelse(var(42)<2,1,.5**(var(42)-2))
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
getpower = 40,0
givepower = 20,0
guard.kill = 0
fall = 0
fall.recover = 1
p2facing = 1
id = 1190

[State 1100]
type = HitDef
triggerall = var(5) = 2
trigger1 = time = 0
attr = S, NP
hitflag = MAF
guardflag = M
animtype = Light
air.animtype = back
fall.animtype = back
priority = 3, Hit
damage = ceil(ifelse((132*fvar(1))<7,7,(132*fvar(1)))),ceil(ifelse((132*fvar(1)*.25)<7,7,(132*fvar(1)*.25)))
pausetime = 17,5
guard.pausetime = 17,30
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
hitsound = s1,5
guardsound = s120, 0
ground.type = high
air.type = high
ground.slidetime = 23
ground.hittime = 23
air.hittime = 23
guard.ctrltime = 23
ground.velocity = -15*const(size.xscale)
air.velocity = -3*ifelse(var(42)<2,1,.5**(var(42)-2)),-2*ifelse(var(42)<2,1,.5**(var(42)-2))
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
getpower = 40,0
givepower = 20,0
guard.kill = 0
fall = 0
fall.recover = 1
p2facing = 1
id = 1190

[State 1100]
type = VarSet
triggerall = numtarget
trigger1 = movehit
var(19) = target,id
ignorehitpause = 1

[State 1100]
type = TargetState
triggerall = time > 1
triggerall = var(5) != 2
trigger1 = numtarget(1190) && var(4) = 1
trigger1 = !target,gethitvar(hitshaketime)
value = 1190
ignorehitpause = 1
persistent = 0

[State 1100]
type = Helper
triggerall = time > 1
triggerall = var(19)
trigger1 = numtarget(1190) && var(4) = 1
stateno = 21092
id = 21091
facing = 1
pos = 0,0
sprpriority = 4
ignorehitpause = 1
persistent = 0

[State -2, MoveContact]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1
;------------------------------------
[State 120, 1]
type = VarSet
trigger1 = animelem = 1
var(13) = ceil(14*const(size.xscale))
ignorehitpause = 1

[State 120, 1]
type = VarSet
trigger1 = animelem = 1
var(14) = ceil(-84*const(size.yscale))
ignorehitpause = 1

[State 120, 1]
type = VarSet
trigger1 = animelem = 2
var(13) = ceil(-3*const(size.xscale))
ignorehitpause = 1

[State 120, 1]
type = VarSet
trigger1 = animelem = 2
var(14) = ceil(-87*const(size.yscale))
ignorehitpause = 1

[State 120, 1]
type = VarSet
trigger1 = animelem = 3 || animelem = 5 || animelem = 7 || animelem = 9
var(13) = ceil(-19*const(size.xscale))
ignorehitpause = 1

[State 120, 1]
type = VarSet
trigger1 = animelem = 3 || animelem = 5 || animelem = 7 || animelem = 9
var(14) = ceil(-87*const(size.yscale))
ignorehitpause = 1

[State 120, 1]
type = VarSet
trigger1 = animelem = 4 || animelem = 6 || animelem = 8 || animelem = 10
var(13) = ceil(-17*const(size.xscale))
ignorehitpause = 1

[State 120, 1]
type = VarSet
trigger1 = animelem = 4 || animelem = 6 || animelem = 8 || animelem = 10
var(14) = ceil(-85*const(size.yscale))
ignorehitpause = 1

[State 120, 1]
type = VarSet
trigger1 = animelem = 11
var(13) = ceil(-12*const(size.xscale))
ignorehitpause = 1

[State 120, 1]
type = VarSet
trigger1 = animelem = 11
var(14) = ceil(-91*const(size.yscale))
ignorehitpause = 1

[State 120, 1]
type = VarSet
trigger1 = animelem = 12
var(13) = ceil(-9*const(size.xscale))
ignorehitpause = 1

[State 120, 1]
type = VarSet
trigger1 = animelem = 12
var(14) = ceil(-93*const(size.yscale))
ignorehitpause = 1

[State 120, 1]
type = VarSet
trigger1 = animelem = 13
var(13) = ceil(9*const(size.xscale))
ignorehitpause = 1

[State 120, 1]
type = VarSet
trigger1 = animelem = 13
var(14) = ceil(-100*const(size.yscale))
ignorehitpause = 1

[State 120, 1]
type = VarSet
trigger1 = animelem = 14
var(13) = ceil(46*const(size.xscale))
ignorehitpause = 1

[State 120, 1]
type = VarSet
trigger1 = animelem = 14
var(14) = ceil(-107*const(size.yscale))
ignorehitpause = 1

[State 120, 1]
type = VarSet
trigger1 = animelem = 15
var(13) = ceil(39*const(size.xscale))
ignorehitpause = 1

[State 120, 1]
type = VarSet
trigger1 = animelem = 15
var(14) = ceil(-62*const(size.yscale))
ignorehitpause = 1

[State 120, 1]
type = VarSet
trigger1 = animelem = 16
var(13) = ceil(41*const(size.xscale))
ignorehitpause = 1

[State 120, 1]
type = VarSet
trigger1 = animelem = 16
var(14) = ceil(-59*const(size.yscale))
ignorehitpause = 1

[State 120, 1]
type = VarSet
trigger1 = animelem = 17
var(13) = ceil(36*const(size.xscale))
ignorehitpause = 1

[State 120, 1]
type = VarSet
trigger1 = animelem = 17
var(14) = ceil(-65*const(size.yscale))
ignorehitpause = 1

[State 120, 1]
type = VarSet
trigger1 = animelem = 18
var(13) = ceil(35*const(size.xscale))
ignorehitpause = 1

[State 120, 1]
type = VarSet
trigger1 = animelem = 18
var(14) = ceil(-66*const(size.yscale))
ignorehitpause = 1

[State 120, 1]
type = VarSet
trigger1 = animelem = 19
var(13) = ceil(34*const(size.xscale))
ignorehitpause = 1

[State 120, 1]
type = VarSet
trigger1 = animelem = 19
var(14) = ceil(-69*const(size.yscale))
ignorehitpause = 1

[State 120, 1]
type = VarSet
trigger1 = animelem = 20
var(13) = ceil(32*const(size.xscale))
ignorehitpause = 1

[State 120, 1]
type = VarSet
trigger1 = animelem = 20
var(14) = ceil(-73*const(size.yscale))
ignorehitpause = 1

[State 120, 1]
type = VarSet
trigger1 = animelem = 21
var(13) = ceil(31*const(size.xscale))
ignorehitpause = 1

[State 120, 1]
type = VarSet
trigger1 = animelem = 21
var(14) = ceil(-75*const(size.yscale))
ignorehitpause = 1
;------------------------------------
[State 1100]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;===========================================================================
;山吹色吹っ飛び
[Statedef 1190]
type    = A
movetype= H
physics = N
velset = 0,0

[State 1100]
type = ChangeAnim
trigger1 = 1
value = 5030

[State 1100]
type = ChangeAnim
trigger1 = anim != 5030
value = anim

[State 1100]
type = ScreenBound
trigger1 = 1
value = 1

[State 1100]
type = VelSet
trigger1 = !Time
x = -10
y = -6

[State 1100]
type = VelAdd
trigger1 = 1
y = .2

[State 1100]
type = ChangeState
trigger1 = BackEdgeBodyDist <= 20
value = 2600

[State 1100]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y > 10)
value = 5100
;===========================================================================

;===============================================================
; 鞭のように
;===============================================================
[Statedef 2000]
type    = S
movetype= A
physics = S
anim = 310
velset = 0,0
ctrl = 0
poweradd = 0

; 先行入力発動時の振り向き
[State 2000, Turn]
type = Turn
triggerall = Time = 0
trigger1 = P2Dist X < 0


; 素振り効果音
[State 2000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 6
trigger2 = AnimElem = 19
trigger3 = AnimElem = 28
trigger4 = AnimElem = 41
trigger5 = AnimElem = 50
value = 1,2

[State 2000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1,=1
value = 2000,random%2
channel = 0


; 攻撃判定の実行
[State 310, HitDef]
type = HitDef
trigger1 = animelem = 7
trigger2 = animelem = 9
attr = S,NA
animtype = Hard
damage = 33+8*(var(1))
getpower = PowerMax*76/5000*!fvar(0),PowerMax*76/5000*!fvar(0)
givepower = 15,15
guardflag = M
hitflag = MAF
pausetime = 6,15
guard.pausetime = 6,13
sparkno=s6102
guard.sparkno=s6125
sparkxy=-10,-60
hitsound=s5,2
guardsound=s6,0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = IfElse((AnimElemTime(9)>=0&&AnimElemTime(10)<0),0,-10)
air.hittime = 13
air.velocity = -3.5,-8.4
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
guard.dist = 999999
air.fall = 1
fall.recovertime = 15-5+Helper(8990),var(33);36
yaccel = .6
id = IfElse(var(1)=0,310,2)
nochainid = var(11)


[State 2000, PosAdd]
type = Posadd
trigger1 = AnimElem = 2,=0 || AnimElem = 3,=0 || AnimElem = 4,=0
x = -8

[State 2000, PosAdd]
type = PosAdd
trigger1 = AnimElem = 15,=0
x = 16



[State 2000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2,=0
value = 310,1
channel = 0


; 攻撃判定の実行
[State 2000, HitDef]
type = HitDef
trigger1 = animelem = 20
trigger2 = animelem = 21
attr = S,NA
animtype = Hard
damage = 33+8*(var(1))
getpower = PowerMax*76/5000*!fvar(0),PowerMax*76/5000*!fvar(0)
givepower = 15,15
guardflag = M
hitflag = MAF
pausetime = 6,15
guard.pausetime = 6,13
sparkno=s6102
guard.sparkno=s6125
sparkxy=-10,-60
hitsound=s5,2
guardsound=s6,0
ground.type = Low
ground.slidetime = 16
ground.hittime = 16
ground.velocity = 0
air.hittime = 13
air.velocity = -3.5,-8.4
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
guard.dist = 999999
air.fall = 1
fall.recovertime = 15-5+Helper(8990),var(33);36
yaccel = .6
id = IfElse(var(1)=0,311,2)
nochainid = var(11)





[State 2000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2,=0
value = 310,2
channel = 0


; 攻撃判定の実行
[State 2000, HitDef]
type = HitDef
trigger1 = animelem = 29
trigger2 = animelem = 31
attr = S,NA
animtype = Hard
damage = 33+8*(var(1))
getpower = PowerMax*76/5000*!fvar(0),PowerMax*76/5000*!fvar(0)
givepower = 15,15
guardflag = M
hitflag = MAF
pausetime = 6,15
guard.pausetime = 6,13
sparkno=s6102
guard.sparkno=s6125
sparkxy=-10,-60
hitsound=s5,2
guardsound=s6,0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = IfElse((AnimElem = 4),-10,0)
air.hittime = 13
air.velocity = -3.5,-8.4
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
guard.dist = 999999
air.fall = 1
fall.recovertime = 15-5+Helper(8990),var(33);36
yaccel = .6
id = IfElse(var(1)=0,312,2)
nochainid = var(11)



[State 2000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2,=0
value = 310,3
channel = 0


; 攻撃判定の実行
[State 2000, HitDef]
type = HitDef
trigger1 = animelem = 42
trigger2 = animelem = 43
attr = S,NA
animtype = Hard
damage = 33+8*(var(1))
getpower = PowerMax*76/5000*!fvar(0),PowerMax*76/5000*!fvar(0)
givepower = 15,15
guardflag = M
hitflag = MAF
pausetime = 6,15
guard.pausetime = 6,13
sparkno=s6102
guard.sparkno=s6125
sparkxy=-10,-60
hitsound=s5,2
guardsound=s6,0
ground.type = Low
ground.slidetime = 16
ground.hittime = 16
ground.velocity = 0
air.hittime = 13
air.velocity = -3.5,-8.4
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
guard.dist = 999999
fall.recover = 1
air.fall = 1
fall.recovertime = 15-5+Helper(8990),var(33);36
yaccel = .6
id = IfElse(var(1)=0,313,2)
nochainid = var(11)




; 素振り効果音
[State 2000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3,=0
value = 1,2

[State 2000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2,=0
value = 310,4
channel = 0


; 攻撃判定の実行
[State 2000, HitDef]
type = HitDef
trigger1 = animelem = 51
trigger2 = animelem = 53
attr = S,NA
animtype = Hard
damage = 33+8*(var(1))
getpower = PowerMax*76/5000*!fvar(0),PowerMax*76/5000*!fvar(0)
givepower = 15,15
guardflag = M
hitflag = MAF
pausetime = 6,15
guard.pausetime = 6,13
sparkno=s6102
guard.sparkno=s6125
sparkxy=-10,-60
hitsound=s5,2
guardsound=s6,0
ground.type = Trip
ground.slidetime = 16
ground.hittime = 16
guard.velocity = -10
ground.velocity = -1.8,-10.7
air.velocity = -1.8,-10.7
air.hittime = 36
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
guard.dist = 999999
yaccel = .8
id = IfElse(var(1)=0,314,2)
nochainid = var(11)
fall = 1
fall.recovertime = 41



[State 2000, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


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
trigger1 = p2dist X <= 224*const(size.xscale)
pos = 225*const(size.xscale), 0

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
;山吹色の波紋疾走・弱
[Statedef 1200]
type    = S
movetype= A
physics = S
juggle  = 1
poweradd = 40
ctrl = 0
anim = 1200
velset = 0,0

[State 1200,山吹色の波紋疾走]
type = PlaySnd
trigger1 = AnimElem = 9
value = 1200,random%2
channel=0

[State 1200, vel]
type = velset
trigger1 = time = [9,14]
x = 5

[State 1200, vel]
type = velset
trigger1 = time = [15,18]
x = 1

[State 1200, vel]
type = velset
trigger1 = time >= 19
x = 0

[State 1200,ヒット定義]
type = HitDef
trigger1 = AnimElem = 4
attr = s, sa
damage = 50, 10
animtype = Hard
getpower = 30
givepower = 15
priority = 5, Hit
hitflag = MAF
guardflag = MA
pausetime = 6, 6
sparkxy = 0, -80
sparkno = S6102
guard.sparkno = S6125
hitsound = s5,4
guardsound = s6,0
ground.type = High
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -4, -3
air.velocity = -5.5, -3
palfx.time = 60
palfx.add = 0,0,16
palfx.mul = 192,192,300
palfx.sinadd = 5, 5,32, 6
fall = 1
fall.recover = 0

[State 1200, Exp]
type = Explod
trigger1 = AnimElem = 24
anim = 1201
ID = 1201
pos = 0,0
postype = p1
sprpriority = 3
bindtime = -1
ownpal = 1
removeongethit = 1

[State 1200, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;山吹色の波紋疾走・中
[Statedef 1210]
type    = S
movetype= A
physics = S
juggle  = 1
poweradd = 40
ctrl = 0
anim = 1210
velset = 0,0

[State 1210,山吹色の波紋疾走]
type = PlaySnd
trigger1 = AnimElem = 13
value = 1200,random%2
channel=0

[State 1210, vel]
type = velset
trigger1 = time = [13,23]
x = 9

[State 1210, vel]
type = velset
trigger1 = time = [23,26]
x = 1

[State 1210, vel]
type = velset
trigger1 = time >= 27
x = 0

[State 1210,ヒット定義]
type = HitDef
trigger1 = AnimElem = 13
attr = S, SA
damage = 10, 2
animtype = Hard
getpower = 30
givepower = 15
priority = 5, Hit
hitflag = MAF
guardflag = MA
pausetime = 3, 3
sparkxy = 0, -80
sparkno = S6101
guard.sparkno = S6125
hitsound = S5,1
guardsound = S5,6
ground.type = High
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -4, 0
air.velocity = -5.5, -3
palfx.time = 60
palfx.add = 0,0,16
palfx.mul = 192,192,300
palfx.sinadd = 5, 5,32, 6

[State 1210, Hit]
type = HitDef
trigger1 = AnimElem = 16
trigger2 = AnimElem = 19
attr = S, SA
damage = 50, 10
animtype = Hard
getpower = 30
givepower = 15
priority = 5, Hit
hitflag = MAF
guardflag = MA
pausetime = 5, 5
sparkxy = 0, -80
sparkno = S6102
guard.sparkno = S6125
hitsound = S5,1
guardsound = S5,6
ground.type = High
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -4, -3
air.velocity = -5.5, -3
palfx.time = 60
palfx.add = 0,0,16
palfx.mul = 192,192,300
palfx.sinadd = 5, 5,32, 6
fall = 1
fall.recover = 0


[State 1210, Exp]
type = Explod
trigger1 = AnimElem = 43
anim = 1201
ID = 1201
pos = 0,0
postype = p1
sprpriority = 3
bindtime = -1
ownpal = 1
removeongethit = 1

[State 1210, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;山吹色の波紋疾走・強
[Statedef 1220]
type    = S
movetype= A
physics = S
juggle  = 1
poweradd = 40
ctrl = 0
anim = 1220
velset = 0,0

[State 1220,山吹色の波紋疾走]
type = PlaySnd
trigger1 = AnimElem = 15
value = 1200,random%2
channel=0

[State 1200, vel]
type = velset
trigger1 = time = [40,50]
x = 13

[State 1220, vel]
type = velset
trigger1 = time = [50,53]
x = 1

[State 1220, vel]
type = velset
trigger1 = time >= 54
x = 0

[State 1220, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = unguardable

[State 1220,ヒット定義]
type = HitDef
trigger1 = AnimElem = 40
attr = S, SA
damage = 15, 2
animtype = Hard
getpower = 40
givepower = 15
priority = 5, Hit
hitflag = MAF
guardflag = MA
pausetime = 3, 3
sparkxy = 0, -80
sparkno = S6102
guard.sparkno = S6125
hitsound = S5,1
guardsound = S5,6
ground.type = High
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -4, 0
air.velocity = -5.5, -3
palfx.time = 60
palfx.add = 0,0,16
palfx.mul = 192,192,300
palfx.sinadd = 5, 5,32, 6

[State 1220, Hit]
type = HitDef
trigger1 = AnimElem = 43
trigger2 = AnimElem = 46
attr = S, SA
damage = 60, 10
animtype = Hard
getpower = 40
givepower = 15
priority = 5, Hit
hitflag = MAF
guardflag = MA
pausetime = 5, 5
sparkxy = 0, -80
sparkno = 2
guard.sparkno = 40
hitsound = S5,1
guardsound = S5,6
ground.type = High
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -4, -3
air.velocity = -5.5, -3
palfx.time = 60
palfx.add = 0,0,16
palfx.mul = 192,192,300
palfx.sinadd = 5, 5,32, 6
fall = 1
fall.recover = 0


[State 1220, Exp]
type = Explod
trigger1 = AnimElem = 43
anim = 1201
ID = 1201
pos = 0,0
postype = p1
sprpriority = 3
bindtime = -1
ownpal = 1
removeongethit = 1

[State 1220, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;===========================================================================
;波紋カッター・弱
[statedef 1300]
type=s
movetype=a
physics=s
poweradd=100
velset=0,0
anim=1300
ctrl=0

[state 1300,オーバードライブ！]
type=playsnd
trigger1=animelemtime(4)=0
value=1300,random%2
channel=0

[state 1300,カッターのエフェクト]
type=explod
trigger1=animelemtime(7)=-2
anim=1301
pos=0,0
scale=const(size.xscale),const(size.yscale)
sprpriority=1
ownpal=1

[state 1300,ヒット定義]
type=hitdef
trigger1=animelemtime(7)=0
trigger2=var(0)&16
attr=s,sp
animtype=hard
damage=112,21
guardflag=ma
pausetime=0,5
sparkno=s6103
guard.sparkno=s6125
sparkxy=0,-65
hitsound=s5,5
guardsound=s6,0
ground.type=low
ground.slidetime=31
ground.hittime=31
air.hittime=31
ground.velocity=-10
ground.cornerpush.veloff=0
guard.velocity=-7
air.velocity=-3.5,-4.5
airguard.velocity=-3.5,-4.5
guard.kill=0
guard.dist=250

[state 1300,終了]
type=changestate
trigger1=animtime=0
value=0
ctrl=1

;---------------------------------------------------------------------------
;波紋カッター・中
[statedef 1310]
type=s
movetype=a
physics=s
poweradd=100
velset=0,0
anim=1310
ctrl=0

[state 1310,オーバードライブ！]
type=playsnd
trigger1=animelemtime(4)=0
value=1300,random%2
channel=0

[state 1310,カッターのエフェクト]
type=explod
trigger1=animelemtime(7)=-2
anim=1301
pos=0,0
scale=const(size.xscale),const(size.yscale)
sprpriority=1
ownpal=1

[state 1310,ヒット定義]
type=hitdef
trigger1=animelemtime(7)=0
trigger2=var(0)&16
attr=s,sp
animtype=hard
damage=112,21
guardflag=ma
pausetime=0,5
sparkno=s6103
guard.sparkno=s6125
sparkxy=0,-65
hitsound=s5,5
guardsound=s6,0
ground.type=low
ground.slidetime=29
ground.hittime=29
air.hittime=29
ground.velocity=-10
ground.cornerpush.veloff=0
guard.velocity=-7
air.velocity=-3.5,-4.5
airguard.velocity=-3.5,-4.5
guard.kill=0
guard.dist=250

[state 1310,終了]
type=changestate
trigger1=animtime=0
value=0
ctrl=1

;---------------------------------------------------------------------------
;波紋カッター・強
[statedef 1320]
type=s
movetype=a
physics=s
poweradd=0
velset=0,0
anim=1320
ctrl=0

[state 1320,オーバードライブ！]
type=playsnd
trigger1=animelemtime(4)=0
value=1300,random%2
channel=0

[state 1320,カッターのエフェクト]
type=explod
trigger1=animelemtime(14)=-2
trigger2=animelemtime(14)=2
trigger3=animelemtime(14)=6
anim=1301
pos=10+animelemtime(14)*5,0
scale=const(size.xscale),const(size.yscale)
sprpriority=1
ownpal=1

[state 1320,ヒット定義1]
type=hitdef
trigger1=animelemtime(14)=0
trigger2=animelemtime(14)=4
trigger3=var(0)&16
trigger3=animelemtime(14)<8
attr=s,sp
animtype=hard
damage=35,7
getpower=0
guardflag=ma
pausetime=0,8
sparkno=s6103
guard.sparkno=s6125
sparkxy=0,-65
hitsound=s5,5
guardsound=s6,0
ground.type=low
ground.slidetime=31
ground.hittime=31
air.hittime=31
ground.velocity=-15
ground.cornerpush.veloff=0
guard.velocity=-9
air.velocity=-5,-5
airguard.velocity=-5,-5
air.fall=1
fall.animtype=hard
yaccel=0.4
guard.kill=0
guard.dist=250;+var(1)*20

[state 1320,ヒット定義2]
type=hitdef
trigger1=animelemtime(14)=8
trigger2=var(0)&16
trigger2=animelemtime(14)>8
attr=s,sp
animtype=hard
damage=70,14
getpower=0
guardflag=ma
pausetime=0,8
sparkno=s6103
guard.sparkno=s6125
sparkxy=0,-65
hitsound=s5,5
guardsound=s6,0
ground.type=low
ground.slidetime=31
ground.hittime=31
air.hittime=31
ground.velocity=-6,-6
ground.cornerpush.veloff=0
guard.velocity=-9
air.velocity=-6,-6
airguard.velocity=-5,-5
air.fall=1
fall.animtype=hard
yaccel=0.4
guard.kill=0
guard.dist=290
p2stateno=5600
p2facing=1

[state 1320,終了]
type=changestate
trigger1=animtime=0
value=0
ctrl=1

;===========================================================================
;アイアンボーガン・弱
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

[state 1400,弾]
type=projectile
trigger1=animelemtime(8)=0
attr=s,sp
damage=70,14
animtype=hard
pausetime=0,12
offset=75,-77
velocity=6,0
projid=1400
projanim=1403
projhitanim=1405
projremanim=1405
projhits=ifelse(var(0)&16,1000,1)
guardflag=ma
sparkno=s6103
guard.sparkno=s6125
sparkxy=0,0
hitsound=s5,4
guardsound=s6,0
ground.type=high
ground.slidetime=21
ground.hittime=21
air.hittime=15
ground.velocity=-6,0
air.velocity=-3,-4
guard.kill=0

[state 1400,終了]
type=changestate
trigger1=animtime=0
value=0
ctrl=1

;---------------------------------------------------------------------------
;アイアンボーガン・中
[statedef 1410]
type=s
movetype=a
physics=s
poweradd=100
velset=0,0
anim=1400
ctrl=0

[state 1410,発射音]
type=playsnd
trigger1=animelemtime(8)=0
value=1400,0

[state 1410,弾]
type=projectile
trigger1=animelemtime(8)=0
attr=s,sp
damage=77,14
animtype=hard
pausetime=0,12
offset=75,-77
velocity=5,0
projid=1410
projanim=1404
projhitanim=1406
projremanim=1406
projhits=ifelse(var(0)&16,1000,1)
guardflag=ma
sparkno=s6103
guard.sparkno=s6125
sparkxy=0,0
hitsound=s5,4
guardsound=s6,0
ground.type=high
ground.slidetime=21
ground.hittime=21
air.hittime=15
ground.velocity=-6,0
air.velocity=-3,-4
guard.kill=0

[state 1410,終了]
type=changestate
trigger1=animtime=0
value=0
ctrl=1

;---------------------------------------------------------------------------
;アイアンボーガン・強
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
trigger1=animelemtime(12)=0
value=1400,0

[state 1420,弾]
type=Helper
trigger1=animelemtime(12)=0
helpertype=normal
name="Bowgun_Ball"
ID=1420
pos=-70,-85
postype=p1
facing=1
stateno=1421
keyctrl=0
ownpal=1

[state 1420,終了]
type=changestate
trigger1=animtime=0
value=0
ctrl=1

;---------------------------------------------------------------------------
;アイアンボーガン・強:弾(前景)
[statedef 1421]
anim=1403
type=u
movetype=a
phtsics=n
ctrl=0
velset=-6,0
sprpriority=3

[state 1421,反転]
type=turn
trigger1=time=0

[state 1421,判定]
type=hitdef
trigger1=time=0
trigger2=root,var(0)&16
attr=s,sp
damage=70,14
animtype=hard
pausetime=0,12
guardflag=ma
sparkno=s6103
guard.sparkno=s6125
sparkxy=0,0
hitsound=s5,4
guardsound=s6,0
ground.type=high
ground.slidetime=21
ground.hittime=21
air.hittime=15
ground.velocity=-2,0
air.velocity=-2,-1
guard.kill=0
p2facing=1

[state 1421,1]
type = NotHitBy
trigger1 = Time >= 0
value = SCA, NA, SA, HA, NT, ST, HT

[state 1423,HitOverRide]
type=hitoverride
trigger1 = Time = 0
time = -1
attr=s,sp
stateno=1424

[state 1421,背景へ]
type=changestate
trigger1=facing*pos x>170
value=1422

[state 1421,2ヒット目へ]
type=changestate
triggerall=ishelper
trigger1=movecontact
value=1423

[state 1421,ガー不]
type=assertspecial
triggerall=ishelper
trigger1=root,var(0)&8
flag=unguardable
ignorehitpause=1

[state 1421,対吸血鬼補正]
type=attackmulset
triggerall=ishelper
trigger1=root,fvar(39)
value=root,fvar(39)
ignorehitpause=1

;---------------------------------------------------------------------------
;アイアンボーガン・強:弾(背景)
[statedef 1422]
anim=1401
type=u
movetype=i
phtsics=n
ctrl=0
velset=-6,0
sprpriority=-3

[state 1422,反転]
type=turn
trigger1=time=0

[state 1422,消滅]
type=destroyself
triggerall=ishelper
trigger1=time=0
trigger1=var(0)>=1

[state 1422,周回数の記録]
type=varadd
trigger1=time=0
var(0)=1

[state 1422,奥に表示っぽく]
type=offset
trigger1=1
y=-30

[state 1422,前面へ]
type=changestate
trigger1=facing*pos x>170
value=1421

;---------------------------------------------------------------------------
;アイアンボーガン・強:弾(1ヒット後)
[statedef 1423]
anim=1403
type=u
movetype=a
phtsics=n
ctrl=0
velset=6,0
sprpriority=3

[state 1423,判定]
type=hitdef
trigger1=time=3
trigger2=root,var(0)&16
attr=s,sp
damage=14,7
animtype=hard
pausetime=0,12
guardflag=ma
sparkno=s6103
guard.sparkno=s6125
sparkxy=0,0
hitsound=s5,4
guardsound=s6,0
ground.type=high
ground.slidetime=21
ground.hittime=21
air.hittime=15
ground.velocity=-2,0
air.velocity=-2,-1
guard.kill=0


[state 1423,1]
type = NotHitBy
trigger1 = Time >= 0
value = SCA, NA, SA, HA, NT, ST, HT

[state 1423,HitOverRide]
type=hitoverride
trigger1 = Time = 0
time = -1
attr=s,sp
stateno=1424

[state 1423,消滅]
type=destroyself
triggerall=ishelper
trigger1=time>20

[state 1423,コンボ補正開始]
type=parentvarset
triggerall=!root,var(1)
trigger1=movehit
var(1)=enemynear,gethitvar(hitcount)
ignorehitpause=1

[state 1423,ガー不]
type=assertspecial
triggerall=ishelper
trigger1=root,var(0)&8
flag=unguardable
ignorehitpause=1

[state 1423,対吸血鬼補正]
type=attackmulset
triggerall=ishelper
trigger1=root,fvar(39)
value=root,fvar(39)
ignorehitpause=1

;---------------------------------------------------------------------------
;アイアンボーガン・強:消滅
[statedef 1424]
anim=1406
type=u
movetype=a
phtsics=n
ctrl=0
velset=-6,0
sprpriority=3

[state 1424,消滅]
type=destroyself
trigger1=time=0

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

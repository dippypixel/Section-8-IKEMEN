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
;---------------------------------------------------------------------------
;俺の脚を断て！
[Statedef 1000]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd = 30
ctrl = 0
velset = 0,0
anim = 1000
sprpriority = 2
facep2 = 1

[State 44790, 0]
type = PlaySnd
trigger1 = time = 0
value = 200, 0
channel = 0

[State 2300, zonnbi tomaru]
type = AttackDist
trigger1 = 1
value = -1

[State 1027, helper]
type = Helper
trigger1 = animtime = 0
trigger1 = numhelper(44791) = 0
helpertype = normal
name = "joseph"
stateno = 44791
id = 44791
pos = -20, 0
postype = back
ownpal = 1
facing = 1
supermovetime = 0
pausemovetime = 0

[State 230, 3]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;ジョセフ登場
[Statedef 44791]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,0
anim = 1940
sprpriority = 7

[State 2300, zonnbi tomaru]
type = AttackDist
trigger1 = 1
value = -1

[State 2300, zonnbi tomaru]
type = nothitby
trigger1 = 1
value = ,AT

[State 810, Throw Sound]
type = Playerpush
trigger1 = 1
value = 1

[State 2300, yarare anim]
type = HitOverride
trigger1 = 1
attr = S,AA
slot = 0
stateno = 44795
time = 1
forceair = 0

[State 2300, yarare anim]
type = HitOverride
trigger1 = 1
attr = C,AA
slot = 1
stateno = 44795
time = 1
forceair = 0

[State 2300, yarare anim]
type = HitOverride
trigger1 = 1
attr = A,AA
slot = 2
stateno = 44795
time = 1
forceair = 0

[State 2300, yarare anim]
type = HitOverride
trigger1 = 1
attr = SCA, AA,AP 
slot = 3
stateno = 44795
time = 1
forceair = 0

[State 191, 1] 
type = AngleDraw
trigger1 = 1
scale = 1.0036,1

[State 1010, 移動速度]
type = VelSet
trigger1 = time >= 7
trigger1 = time >= 40
x = 3

[State 1010, 移動速度]
type = VelSet
trigger1 = time >= 10
x = 4

[State 1010, 移動速度]
type = VelSet
trigger1 = animelem = 6
x = 0

[State 440, 4]
type = ChangeState
trigger1 = root,Var(34) = 1
trigger1 = ParentDist X < 20
value = 44793

[State 440, 4]
type = ChangeState
trigger1 = Time = 90
value = 44793

[State 440, 4]
type = ChangeState
trigger1 = root,Var(34) = 0
trigger1 = root,StateType != A
trigger1 = ParentDist X < 20 
value = 44792

[State 440, 4]
type = ChangeState
trigger1 = root,StateType = A
trigger1 = ParentDist X < 20
value = 44793
;---------------------------------------------------------------------------
;ジョセフ攻撃
[Statedef 44792]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 2000
ctrl = 0
velset = 0,0
anim = 1941
sprpriority = 1


[State 44792, 0]
type = PlaySnd
trigger1 = time = 0
value = 201, 0

[state 44792,ヒット定義]
type=hitdef
trigger1=animelemtime(5)=0
trigger2=var(0)&16
attr=c,na
affectteam = B
damage=91
getpower = 200
guardflag=ma
pausetime=9,9
sparkno=s6102
guard.sparkno=s6125
sparkxy=-10,-55
hitsound=s5,2
guardsound=s6,0
ground.slidetime=21
ground.hittime=21
air.hittime=21
ground.velocity=-4.5,0
air.velocity=-3.2,0

[State 44792, 7]
type = nothitby
trigger1 = 1
value = SCA,NA
time = 1

[State 440, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 44793
;---------------------------------------------------------------------------
;ジョセフ退場
[Statedef 44793]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,0
anim = 1942
sprpriority = 7

[State 810, Throw Sound]
type = ChangeAnim
trigger1 = time >= 90
trigger1 = AnimTime = 0
value = 55

[State 2300, zonnbi tomaru]
type = AttackDist
trigger1 = 1
value = -1

[State 2300, zonnbi tomaru]
type = nothitby
trigger1 = 1
value = ,AT

[State 810, Throw Sound]
type = Playerpush
trigger1 = 1
value = 1

[State 2300, yarare anim]
type = HitOverride
trigger1 = 1
attr = S,AA
slot = 0
stateno = 44795
time = 1
forceair = 0

[State 2300, yarare anim]
type = HitOverride
trigger1 = 1
attr = C,AA
slot = 1
stateno = 44795
time = 1
forceair = 0

[State 2300, yarare anim]
type = HitOverride
trigger1 = 1
attr = A,AA
slot = 2
stateno = 44795
time = 1
forceair = 0

[State 2300, yarare anim]
type = HitOverride
trigger1 = 1
attr = SCA, AA,AP 
slot = 3
stateno = 44795
time = 1
forceair = 0

[State 191, 1] 
type = AngleDraw
trigger1 = 1
scale = 1.0036,1

[State 1000, 7]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[State 0, Override]
type = HitOverride
trigger1 = 1
attr = SCA,AP,AT,AA
stateno = 1410
time = 1

[State 1010, 移動速度]
type = VelSet
trigger1 = animelem = 3
x = -6

[State 1010, 移動速度]
type = VelSet
trigger1 = time >= 10
x = -8

[State 3010, 2]
type = destroyself
trigger1 = pos x <= -240 || pos x >= 240
;---------------------------------------------------------------------------
;ジョセフ攻撃くらい
[Statedef 44794]
type    = S
movetype= H
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,0
sprpriority = 3

[State 0]
type = LifeAdd
trigger1 = time = 0
value = -50

[State 191, Wood 1]
type = PlaySnd
trigger1 = time = 0
value = s1, 0

[State 191, Wood 1]
type = Explod
trigger1 = time = 0
anim = 830
id = 830
postype = p1
pos = ceil(-20 * const(size.xscale)),ceil(-16 * const(size.yscale))
removeongethit = 1
sprpriority = 4

[State 0]
type = ChangeAnim
trigger1 = time = 0
value = 54

[State 0]
type = varset
trigger1 = 1
var(33) = 0

[State 230, 3]
type = ChangeState
trigger1 = animtime = 0
trigger2 = life <= 50
trigger2 = animelem = 14
value = 0
ctrl = 1
;----------------------------------------------------------------------
;ジョセフくらい
[Statedef 44795]
type    = S
movetype= H
physics = S
velset = 0,0

[State 810, Throw Sound]
type = ChangeAnim
trigger1 = time >= 90
trigger1 = AnimTime = 0
value = 1943

[State 2300, zonnbi tomaru]
type = nothitby
trigger1 = 1
value = ,AT

[State 810, Throw Sound]
type = Playerpush
trigger1 = 1
value = 1

[State 2300, yarare anim]
type = HitOverride
trigger1 = 1
attr = S,AA
slot = 0
stateno = 44795
time = 1
forceair = 0

[State 2300, yarare anim]
type = HitOverride
trigger1 = 1
attr = C,AA
slot = 1
stateno = 44795
time = 1
forceair = 0

[State 2300, yarare anim]
type = HitOverride
trigger1 = 1
attr = A,AA
slot = 2
stateno = 44795
time = 1
forceair = 0

[State 2300, yarare anim]
type = HitOverride
trigger1 = 1
attr = SCA, AA,AP 
slot = 3
stateno = 44795
time = 1
forceair = 0

[State 191, 1] 
type = AngleDraw
trigger1 = 1
scale = 1.0036,1

[State 2300, zonnbi tomaru]
type = ChangeAnim
trigger1 = time = 0
value = 52

[State 1010, 移動速度]
type = VelSet
trigger1 = time >= 0
x = -8

[State 3010, 2]
type = destroyself
trigger1 = pos x <= -240 || pos x >= 240
;----------------------------------------------------------------------
;===========================================================================
;---------------------------------------------------------------------------
;部下の体ごと撃って撃って撃ちまくれ！
[Statedef 1100]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd = 30
ctrl = 0
velset = 0,0
anim = 1000
sprpriority = 2
facep2 = 1

[State 1100, 0]
type = PlaySnd
trigger1 = time = 0
value = 202, 0
channel = 0

[State 2300, zonnbi tomaru]
type = AttackDist
trigger1 = 1
value = -1

[State 1027, helper]
type = Helper
trigger1 = numhelper(44891) = 0
trigger1 = animtime = 0
helpertype = normal
name = "soldier"
stateno = 44891
id = 44891
pos = -20, 0
postype = back
ownpal = 1
facing = 1
supermovetime = 0
pausemovetime = 0


[State 1100, 3]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;兵隊登場
[Statedef 44891]
type = A
movetype = I
physics = N
velset = 3,0
anim = 1930
ctrl = 0
sprpriority = 3

[State 44891, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 44891, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 5,2
volume = 200

[State 44891, InterceptHit]
type = HitOverride
trigger1 = time = 0
time = -1
slot = 0
attr = SCA, AA, AT, AP
stateno = 44893
ignorehitpause = 1

[State 44891, ChangeState]
type = ChangeState
trigger1 = backedgebodydist > 100
value = 44892

;---------------------------------------------------------------------------
;兵隊射撃
[Statedef 44892]
type = A
movetype = I
physics = N
velset = 0,0
anim = 1931
ctrl = 0
sprpriority = 3

[State 44892, 1]
type = PlaySnd
trigger1 = animelem = 2
value = 3020, 1

[State 44892, 2]
type = Projectile
trigger1 = animelem = 2
projanim = 3022
projhitanim = -1
offset = 23,-71
velocity = 30,0
attr = S, HP
animtype  = Medium
damage    = 7, 2
priority  = 6
guardflag = MA
hitflag = MAFD
pausetime = 0,10
sparkno = s6101
guard.sparkno = s6125
sparkxy = 0,-15 + var(13)
hitsound   = s3,8
guardsound = s3,6
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -4
air.velocity = -4,-3
air.fall = 1
down.velocity = -7,-2
down.hittime = 5
getpower = 0,0

[State 44892, 2]
type = varrandom
trigger1 = 1
v = 13
range = 0,30

[State 44892, 2]
type = Projectile
trigger1 = animelem = 2
projanim = 3022
projhitanim = -1
offset = 24,-70
velocity = 30,0
attr = S, SP
animtype  = Medium
damage    = 3, 1
priority  = 6
guardflag = MA
hitflag = MAFD
pausetime = 0,10
sparkno = s6104
guard.sparkno = s6125
sparkxy = 0,-15 + var(13)
hitsound = s1, 5
guardsound = s1, 8
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -4
air.velocity = -4,-3
air.fall = 1
down.velocity = -7,-2
down.hittime = 5
getpower = 0,0
affectteam = B

[State 0, ChangeState]
type = ChangeState
trigger1 = var(15) >= 3
trigger2 = time >= 120
value = 44893

;---------------------------------------------------------------------------
;兵隊退場
[Statedef 44893]
type = A
movetype = I
physics = N
anim = 1932
ctrl = 0
sprpriority = 3

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim = 1941
trigger1 = animtime = 0
value = 1942

[State 0, VelSet]
type = VelSet
trigger1 = anim = 1932
x = -4
y = 0

[State 0, PlaySnd]
type = PlaySnd
triggerall = (parent, var(6)) = 3603
trigger1 = backedgebodydist < -30
trigger2 = time >= 300
value = 5,7
volume = 200

[State 0, DestroySelf]
type = DestroySelf
trigger1 = backedgebodydist < -30
trigger2 = time >= 300

;===========================================================================
;-HEAT VISION-----------------
;Heat Vision X
[Statedef 1200]
type    = S
movetype= A
physics = N
poweradd= 80
ctrl = 0
velset = 0, 0
anim = 1200


[State 1200, Explod];Beam flash
type = Explod
trigger1 = animelem = 5
anim = 6507
ID = 111
pos = 18,-100;18,-93
postype = p1
bindtime = -1
scale = .3,.3;const(size.xscale),Const(size.yscale)
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 1200, 紫外線照射装置作動]
type=playsnd
trigger1=animelemtime(1)=0
value=1200,0


;-------------------
;Heat ray X
[State 1200, 0]
type = Helper
trigger1 = AnimElem = 7
helpertype = normal
name = "H_RAY"
id = 666
postype = p1
pos = 14,-96
stateno = 1201
keyctrl = 0
ownpal = 0
sprpriority = 1
priority = 3
;size.xscale=0.5
;size.yscale=0.5

[State 1200, 8]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1

;Heat ray state X
[Statedef 1201]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
ctrl = 0
poweradd = 0
anim = 6505 ;1201 ;6504 ;<-Experimental beam

[state 1211, 8]   ;Enable with Experimental Beam
type = Veladd
trigger1 = animelem = 5
x = 30

[State 1221, 1] ;Blur Effect
type = AfterImage
trigger1 = time = 10
time = 20
palcontrast = 140,0,0 ;130,80,82;222,142,82
paladd = 10,-250,-250
trans = add
length = 15
timegap = 1
framegap = 1

[State 1614, a3]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 5140, 2]
type = SprPriority
trigger1 = Time >= 0
value = 2

[State 1201 , 1]
type = HitDef
trigger1 = AnimElem = 1
;persistent = 0
attr = SCA, HP
damage    = 45,3
animtype = Heavy
guardflag = MA
hitflag = MAFDP
priority = 3, Hit
pausetime = 0,20
sparkno = -1
hitsound   = S0,25
guardsound = S0, 42
ground.type = High
;ground.slidetime = 15
;ground.hittime  = 20
;ground.velocity = -10, -10
;air.velocity = -10,-10
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 210,10,-200
Palfx.mul = 200,200,200
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1

[State 188, Fire]
type = Explod
trigger1 = Movehit = 1
anim = 9995
random = 50, 90
pos = -10,-75
postype = p2
sprpriority = 5
bindtime = 1


;[state 1201, 8]
;type = BindToParent
;trigger1 = parent, stateno = 1200
;pos = 0,0

[state 1201, 8]
type = destroyself
trigger1 = Animtime = 80
trigger2 = parent, stateno != 1200


;----------------
;Heat Vision Y
[Statedef 1210]
type    = S
movetype= A
physics = N
poweradd= 80
ctrl = 0
velset = 0, 0
anim = 1210


[State 1200, Explod];Beam flash
type = Explod
trigger1 = animelem = 5
anim = 6507
ID = 111
pos = 18,-101;18,-93
postype = p1
bindtime = -1
scale = .5,.5;const(size.xscale),Const(size.yscale)
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 1210, 紫外線照射装置作動]
type=playsnd
trigger1=animelemtime(1)=0
value=1200,0

;-------------------
;Heat ray Y
[State 1210, 0]
type = Helper
trigger1 = AnimElem = 7
helpertype = normal
name = "H_RAY"
id = 666
postype = p1
pos = 14,-96
stateno = 1211
keyctrl = 0
ownpal = 0
sprpriority = 1
priority = 3


[State 1210, 8]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1

;Heat ray state Y
[Statedef 1211]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
ctrl = 0
poweradd = 0
anim = 6504 ;1211 <-old beam
            ;6504 ;<-Experimental beam

[state 1211, 8]   ;Enable with Experimental Beam
type = Veladd
trigger1 = animelem = 16
x = 30

[State 1221, 1] ;Blur Effect
type = AfterImage
trigger1 = time = 10
time = 20
palcontrast = 140,0,0 ;130,80,82;222,142,82
paladd = 10,-250,-250
trans = add
length = 15
timegap = 1
framegap = 1


[State 1614, a3]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 5140, 2]
type = SprPriority
trigger1 = Time >= 0
value = 2

[State 1211 , 1]
type = HitDef
trigger1 = AnimElem = 1
;persistent = 0
attr = SCA, HP
damage    = 75,3
animtype = Heavy
guardflag = MA
hitflag = MAFDP
priority = 3, Hit
pausetime = 0,0;37
sparkno = -1
hitsound   = S0,25
guardsound = S0,42
ground.type = High
ground.slidetime = 15;15
ground.hittime  = 15;20
ground.velocity = -15,0;-10, -10
air.velocity = -15,0;-10,-10
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 210,10,-200
Palfx.mul = 200,200,200
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1

[State 188, Fire]
type = Explod
trigger1 = Movehit = 1
anim = 9995
random = 50, 90
pos = -10,-75
postype = p2
sprpriority = 5
bindtime = 1

;[state 1211, 8]
;type = BindToParent
;trigger1 = parent, stateno = 1210
;pos = 0,0


[state 1211, 8]
type = destroyself
trigger1 = Animtime = 70
trigger2 = parent, stateno != 1210


;----------------
;Heat Vision Z
[Statedef 1220]
type    = S
movetype= A
physics = N
poweradd= 80
ctrl = 0
velset = 0, 0
anim = 1220

[State 1220, Explod];Beam flash
type = Explod
trigger1 = animelem = 7
anim = 6508
ID = 111
pos = 18,-100;18,-92
postype = p1
bindtime = -1
scale = .5,.5
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 1220, Explod];Beam flash
type = Explod
trigger1 = animelem = 5
anim = 6508
ID = 111
pos = 18,-99;18,-91
postype = p1
bindtime = -1
scale = .7,.7
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 1220, 紫外線照射装置作動]
type=playsnd
trigger1=animelemtime(1)=0
value=1200,0

;-------------------
;Heat ray Z
[State 1220, 0]
type = Helper
trigger1 = AnimElem = 5
helpertype = normal
name = "H_RAY"
id = 666
postype = p1
pos = 14,-96
stateno = 1221
keyctrl = 0
ownpal = 0
sprpriority = 1
priority = 3


[State 1220, 8]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1

;Heat ray state
[Statedef 1221]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
ctrl = 0
poweradd = 0
anim = 6506 ;1221 <-old beam
            ;6504 ;<-Experimental beam

[state 1211, 8]   ;Enable with Experimental Beam
type = Veladd
trigger1 = animelem = 13
x = 25


[State 1614, a3]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 1221, 1] ;Blur Effect
type = AfterImage
trigger1 = time = 10
time = 20
palcontrast = 140,0,0 ;130,80,82;222,142,82
paladd = 10,-250,-250
trans = add
length = 15
timegap = 1
framegap = 1

[State 5140, 2]
type = SprPriority
trigger1 = Time >= 0
value = 2

[State 1221 , 1]
type = HitDef
trigger1 = AnimElem = 1
attr = SCA, HP
damage    = 105,3
animtype = Heavy
guardflag = MA
hitflag = MAFDP
priority = 3, Hit
pausetime = 0,10
sparkno = -1
hitsound   = S0,25
guardsound = S0,42
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -10, -10
air.velocity = -10,-10
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 210,10,-200
Palfx.mul = 200,200,200
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1

[State 188, Fire]
type = Explod
trigger1 = Movehit = 1
anim = 9995
random = 50, 90
pos = -10,-75
postype = p2
sprpriority = 5
bindtime = 1

;[state 1221, 8]
;type = BindToParent
;trigger1 = parent, stateno = 1220
;pos = 0,0

[state 1221, 8]
type = destroyself
trigger1 = Animtime = 80
trigger2 = parent, stateno != 1220

;===========================================================================
;---------------------------------------------------------------------------
;弱グレネード
[Statedef 1300]
type     = S
movetype = A
physics  = S
juggle   = 0
poweradd = 50
velset   = 0,0
anim     = 1300
ctrl     = 0
sprpriority = 2

[State 1300, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1300,0


[State 1300, ヘルパーを出す]
type = Helper
trigger1 = AnimElem = 4
name = "AT01"
stateno = 1301
ID = 1301
helpertype = normal
pos = 50,-75;-50
postype = p1
facing = 0
keyctrl = 0
ownpal = 1

[State 1300, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;中グレネード
[Statedef 1310]
type     = S
movetype = A
physics  = S
juggle   = 0
poweradd = 50
velset   = 0,0
anim     = 1310
ctrl     = 0
sprpriority = 2

[State 1300, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1300,0

[State 1300, ヘルパーを出す]
type = Helper
trigger1 = AnimElem = 4
name = "AT01"
stateno = 1302
ID = 1302
helpertype = normal
pos = 50,-75;-50
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 1300, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;強グレネード
[Statedef 1320]
type     = S
movetype = A
physics  = S
juggle   = 0
poweradd = 50
velset   = 0,0
anim     = 1320
ctrl     = 0
sprpriority = 2

[State 1300, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1300,0

[State 1300, ヘルパーを出す]
type = Helper
trigger1 = AnimElem = 4
name = "AT01"
stateno = 1302
ID = 1302
helpertype = normal
pos = 50,-75;-50
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 1300, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;弱グレネードヘルパー
[Statedef 1301]
type = A
movetype = A
physics = N
poweradd= 5
juggle  = 0
ctrl = 0
anim = 1301
sprpriority = 3
facep2 = 0

[State 230, 2]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[State 1300, 音を鳴らす]
type = PlaySnd
trigger1 = Animelem = 1
value = 365, 2

[State 1305, 移動速度]
type = VelSet
trigger1 = time = 0
x = 4

[State 1310, 移動速度]
type = Veladd
trigger1 = time > 5
x = -.01

[State 1310, 移動速度]
type = VelSet
trigger1 = 1
trigger1 = time <= 5
y = -2.5

[State 1310, 移動速度]
type = Veladd
trigger1 = time > 5
y = .55

[State 1310, 移動速度]
type = Veladd
trigger1 = FrontEdgeBodyDist < 0
x = -1.5

[State 1320, 移動速度]
type = Veladd
trigger1 = time > 5
x = -.01

[State 1320, 移動速度]
type = VelSet
trigger1 = 1
trigger1 = time <= 5
y = -2.5

[State 1320, 移動速度]
type = Veladd
trigger1 = time > 5
y = .55

[State 1320, 移動速度]
type = Veladd
trigger1 = FrontEdgeBodyDist < 0
x = -1.5

[State 1300, 2　ヒット定義]
type = HitDef
trigger1 = time = 0
attr = A, SP
hitflag = MAF
damage    = 5
animtype  = hard
guardflag = MA
priority = 2, Hit
pausetime = 0,15
sparkno = s6121
guard.sparkno = s6125
sparkxy = 0,0
hitsound = s12, 8
guardsound = s12,0
ground.type = High
ground.slidetime = 11
ground.hittime  = 12
ground.velocity = -4,-4
air.velocity = -5,-5
p2facing = 1
getpower = 0,0
givepower = 15,25
ground.cornerpush.veloff = 0
air.hittime = 25
guard.dist = 0
air.fall = 0
air.fall.recover = 0
palfx.color = 150
palfx.time = 40
palfx.add = 128,24,0
palfx.mul = 90,64,64
palfx.siSAdd = 90,90,90,4

[State 1305, 移動速度]
type = changestate
trigger1 = movecontact = 1
Value = 1304
Ctrl = 0

[State 1305, 移動速度]
type = changestate
trigger1 = Vel Y > 0 && Pos Y >= 0
Value = 1303
Ctrl = 0

;---------------------------------------------------------------------------
;強グレネードヘルパー
[Statedef 1302]
type = S
movetype = A
physics = N
poweradd= 5
juggle  = 0
ctrl = 0
anim = 1301
sprpriority = 3
facep2 = 0

[State 230, 2]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[State 1300, 音を鳴らす]
type = PlaySnd
trigger1 = Animelem = 1
value = 365, 2

[State 1305, 移動速度]
type = VelSet
trigger1 = time = 0
x = 4

[State 1305, 移動速度]
type = Veladd
trigger1 = time > 5
x = -.03

[State 1305, 移動速度]
type = Velset
trigger1 = FrontEdgeBodyDist < 0
x = -1.8

[State 1305, 移動速度]
type = VelSet
trigger1 = 1
trigger1 = time <= 5
y = -9

[State 1305, 移動速度]
type = Veladd
trigger1 = time > 5
y = .5

[State 1310, 2　ヒット定義]
type = HitDef
trigger1 = time = 0
attr = A, SP
hitflag = MAF
damage    = 5
animtype  = hard
guardflag = MA
priority = 2, Hit
pausetime = 0,15
sparkno = s6121
guard.sparkno = s6125
sparkxy = 0,0
hitsound = s12, 8
guardsound = s12,0
ground.type = High
ground.slidetime = 11
ground.hittime  = 12
ground.velocity = -4,-4
air.velocity = -5,-5
p2facing = 1
getpower = 0,0
givepower = 15,25
ground.cornerpush.veloff = 0
air.hittime = 25
guard.dist = 0
air.fall = 0
air.fall.recover = 0
palfx.color = 150
palfx.time = 40
palfx.add = 128,24,0
palfx.mul = 90,64,64
palfx.siSAdd = 90,90,90,4

[State 1305, 移動速度]
type = changestate
trigger1 = movecontact = 1
Value = 1304
Ctrl = 0

[State 1305, 移動速度]
type = changestate
trigger1 = Vel Y > 0 && Pos Y >= 0
Value = 1303
Ctrl = 0

;---------------------------------------------------------------------------
;地面接触後の手榴弾ヘルパー
[Statedef 1303]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 10
ctrl = 0
velset = 0
anim = 1302
scale = 1,1
sprpriority = 4
facep2 = 1

[State 1300, 音を鳴らす]
type = PlaySnd
trigger1 = Animelem = 1
trigger2 = Animelem = 8
value = 1000, 0

[State 1305, 移動速度]
type = posset
trigger1 = time = 0
y = 0

[State 1305, 移動速度]
type = posset
trigger1 = 1
y = -5

[State 1305, 移動速度]
type = velset
trigger1 = time < 10
x = 1.5

[State 1305, 2]
type = poweradd
trigger1 = movecontact = 1
value = 10

[State 1300, 2　ヒット定義]
type = HitDef
trigger1 = time = 0
attr = A, SP
hitflag = MAF
damage    = 90
animtype  = hard
guardflag = MA
priority = 2, Hit
pausetime = 0,9
sparkno = s6121
guard.sparkno = s6125
sparkxy = 0,0
hitsound = s12, 8
guardsound = s12,0
ground.type = High
ground.slidetime = 11
ground.hittime  = 12
ground.velocity = -4,-4
air.velocity = -5,-5
p2facing = 1
getpower = 0,0
givepower = 15,25
ground.cornerpush.veloff = 0
air.hittime = 15
guard.dist = 0
air.fall = 1
air.fall.recover = 0
palfx.color = 150
palfx.time = 40
palfx.add = 128,24,0
palfx.mul = 90,64,64
palfx.siSAdd = 90,90,90,4

[State 1300, 音を鳴らす]
type = PlaySnd
trigger1 = time = 0
value = 300, 1
channel = 0

[State 1300, ヘルパーを出す]
type = Helper
trigger1 = animtime = 0
name = "Bomb"
stateno = 1304
ID = 1304
helpertype = normal
pos = 0,0
helperscale = 10,10
postype = p1
facing = 0
keyctrl = 0
ownpal = 1

[State 1300, 2]
type = destroyself
trigger1 = animtime = 0

;---------------------------------------------------------------------------
;爆発ヘルパー
[Statedef 1304]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 10
ctrl = 0
velset = 0
anim = 1304
sprpriority = 4
facep2 = 1

[State 1301, 特殊効果]
type = AssertSpecial
trigger1 = 1
flag = NoShadow ;影を消す

[State 1300, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 1
value = s1111,0

[State 1305, 移動速度]
type = VelSet
trigger1 = time = 0
y = 0

[State 1320, 4]
type = EnvShake
trigger1 = animelem = 3
time = 15
ampl = -5
freq = 35
phase = 35

[State 1305, 2]
type = poweradd
trigger1 = movecontact = 1
value = 10

[State 1300]
type = Projectile
trigger1 = time = 0
projID = 1304
projanim = 1304
projremove = 0
projpriority = 2
projhitanim = -1
projremanim = -1
projscale = 1,1
projsprpriority = 0
projshadow = 0,0,0
projremovetime = 20
offset = 0,0
velocity = 0,0
attr = A, SP
damage = 120, 11
animtype = Hard
guardflag = MA
hitflag = MA
priority = 3, Hit
pausetime = 0, 10
sparkno = -1;s4020
guard.sparkno = -1;s4120
sparkxy = 0,0
hitsound = s1111,1
guardsound = s2,1
ground.type = High
ground.slidetime = 20
ground.hittime  = 21
ground.velocity = -5.5
airguard.velocity = -3,-2
air.type = High
air.velocity = -3.4,-3.8
air.hittime = 12
air.fall = 1
fall.recover = 0
palfx.time = 30
palfx.add = 30,-40,-140
palfx.sinadd = 60,60,50,10
palfx.color = 0
palfx.invertall = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0

[State 1300, 音を鳴らす]
type = PlaySnd
trigger1 = time = 0
value = 5, 10
channel = 0

[State 1300, 2]
type = destroyself
trigger1 = animtime = 0

;---------------------------------------------------------------------------


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

[State 1400, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1400,1

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
projanim=1450
projhitanim=1460
projremanim=1465
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
anim=1410
ctrl=0

[state 1410,発射音]
type=playsnd
trigger1=animelemtime(8)=0
value=1400,0

[State 1400, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1400,1

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
projanim=1450
projhitanim=1460
projremanim=1465
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

[State 1400, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1400,1

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
anim=1450
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

[State 1421, HitOverRide] 
type = hitoverride
trigger1 = 1
attr = SCA, NA, SA, HA, NT, ST, HT
stateno = 1455

;---------------------------------------------------------------------------
;アイアンボーガン・強:弾(背景)
[statedef 1422]
anim=1450
type=u
movetype=i
phtsics=n
ctrl=0
velset=-6,0
sprpriority=-3

[state 1422,1]
type = NotHitBy
trigger1 = Time >= 0
value = SCA, NA, SA, HA, NT, ST, HT

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

[State 1422, HitOverRide] 
type = hitoverride
trigger1 = 1
attr = SCA, NA, SA, HA, NT, ST, HT
stateno = 1455

;---------------------------------------------------------------------------
;アイアンボーガン・強:弾(1ヒット後)
[statedef 1423]
anim=1450
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

[state 1423,消滅]
type=destroyself
triggerall=ishelper
trigger1=time>20

[state 1423,消滅2]
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

[State 1423, HitOverRide] 
type = hitoverride
trigger1 = 1
attr = SCA, NA, SA, HA, NT, ST, HT
stateno = 1455

[State 1423, HitOverRide] 
type = hitoverride
trigger1 = 1
attr = SCA,AT,AA,AP
stateno = 1455

;---------------------------------------------------------------------------
;終了
[Statedef 1455]
type = A
movetype = I
physics = N
ctrl = 0
velset = -4.5,0
anim = 99999

[State 1455, end]
type = DestroySelf
trigger1 = time = 0

;===========================================================================
;そうかい
;---------------------------------------------------------------------------
;中段当て身投げ（待機）
[Statedef 2200]
type = S
movetype= I
physics = S
ctrl = 0
velset = 0,0
anim = 2200
poweradd = 70

[State 220, Position]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1035, 2]
type = ReversalDef
trigger1 = AnimElem = 2
attr = S, SA
reversal.attr = SC, NA
pausetime = 0,12
sparkno = -1
hitsound = S810,0
sprpriority = -1
p1stateno = ifelse(!var(12),2210,2251)
p2stateno = 2216
guard.dist = 0
p2facing = 1
numhits = 0
getpower = 35

[State 2200, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;中段当て身投げ（成功）（表）
[Statedef 2210]
type    = S
movetype = A
physics = S
ctrl = 0
velset = 0,0
anim = 2210

[State 2210, そうかい]
type=playsnd
trigger1=animelem=1
value=2200,random%2
channel = 0

[State 2210, ドリル音]
type=playsnd
trigger1=animelem=3
value=2201,0

[State 2210, ヒット音]
type=playsnd
trigger1=animelem=20
value=5,2

[State 1031, TargetState]
type = TargetState
trigger1 = AnimElem = 2
value = 2215

[State 3001, Width]
type = Width
trigger1 = 1
edge = 45,0

[State 1000, 落下衝撃Spark]
type = Explod
trigger1 = AnimElem = 20
Anim = 6101
pos = 50, -80
postype = p1
ownpal = 1
sprpriority = 3
;pausemovetime = -1
supermovetime = -1
scale = 1,1

[State 220, Position]
type = PosAdd
trigger1 = AnimTime = 0
x = 24


[State 3001, Add Hits!]
type = HitAdd
trigger1 = AnimElem = 12
value = 1

[State -2, Combo]
type = VarAdd
trigger1 = AnimElem = 20
var(17) = 1
ignorehitpause = 1

[State 180, 1]
type = VarAdd
trigger1 = AnimElem = 20
var(50)=500
ignorehitpause = 1
persistent = 1

[State 180, 1]
type = VarAdd
triggerall = var(17) >= 2
trigger1 = AnimElem = 20
var(50)=ifelse(var(17)<6,2000,500)
ignorehitpause = 1
persistent = 1

[State 901, Hurt]
type = TargetLifeAdd
trigger1 = AnimElem = 20
value = -200

[State 901, Hurt]
type = TargetPowerAdd
trigger1 = AnimElem = 20
value = 35

[State 903, EnvShake]
type = EnvShake
trigger1 = AnimElem = 20
time = 20

[State 901, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 1950
ctrl = 1

;---------------------------------------------------------------------------
;中段当て身投げ（成功）（表）（相手）
[Statedef 2215]
type    = A
movetype = H
physics = N
velset = 0,0
poweradd = 35
sprpriority = -1
anim= 2215

[State 1201, screenbound]
type = screenbound
trigger1 = anim = 2215
value = 1

[State 902, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 2215

[State 902, 1]
type = ChangeAnim
trigger1 = Time = 100
value = 5090

[State 902, 1]
type = ChangeAnim
trigger1 = Time = 105
value = 5080

[State 902, 1]
type = ChangeAnim
trigger1 = Time = 107
value = 5110

[State 170, 1]
type = NotHitBy
trigger1 = 1
value = SCA

[State 2210, ChangeState]
type = SelfState
trigger1 = Time >= 107
value = ifelse(alive, 5120, 5150)

;---------------------------------------------------------------------------
;中段当て身投げ（成功）（裏）
[Statedef 2251]
type    = S
movetype = A
physics = S
ctrl = 0
velset = 0,0
anim = 2251

[State 1031, TargetState]
type = TargetState
trigger1 = AnimElem = 2
value = 2255

[State 3001, Width]
type = Width
trigger1 = 1
edge = 60,0

[State 901, Effect]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2210, 0
channel = 0

[State 901,1]
type = TargetBind
trigger1 = animelem = 2
pos = -10,0
time = -1

[State 901,1]
type = TargetBind
trigger1 = animelem = 3
pos = -25,0
time = 1

[State 3001, Add Hits!]
type = HitAdd
trigger1 = AnimElem = 3
value = 1

[State -2, Combo]
type = VarAdd
trigger1 = AnimElem = 3
var(17) = 1
ignorehitpause = 1

[State 180, 1]
type = VarAdd
trigger1 = AnimElem = 3
var(50)=500
ignorehitpause = 1
persistent = 1

[State 180, 1]
type = VarAdd
triggerall = var(17) >= 2
trigger1 = AnimElem = 3
var(50)=ifelse(var(17)<6,2000,500)
ignorehitpause = 1
persistent = 1

[State 2210,Turn]
type = Turn
trigger1 = AnimTime = 0

[State 901, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;中段当て身投げ（成功）（裏）（相手）
[Statedef 2255]
type    = S
movetype = H
physics = N
velset = 0,0
poweradd = 35
sprpriority = -1

[State 2210,Turn]
type = Turn
trigger1 = Time = 0

[State 902, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 2255

[State 1100, Velocity]
type = VelMul
trigger1 = 1
x = .92

[State 1100, Velocity]
type = VelSet
trigger1 = AnimElem = 2
x = -4

[State 1100, Velocity]
type = VelSet
trigger1 = Animtime = 0
x = 0

[State 3110, ChangeState]
type = SelfState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;当て身投げ（成功）（相手）2
[Statedef 2216]
movetype = H
ctrl = 0
velset = 0,0

[State 105, 1]
type = Statetypeset
trigger1 = 1
movetype = H
ignorehitpause = 1
persistent = 1

[State 650, HitPause]
type = PosFreeze
trigger1 = 1
ignorehitpause = 1

[State 1033, End]
type = SelfState
trigger1 = time = 25
value = 5000
;---------------------------------------------------------------------------
;真空投げ
[Statedef 901]
type    = S
movetype = A
physics = N
velset = 0,0

[State 900, 1]
type = VarAdd
triggerall = var(0)&2**9
trigger1 = Time = 0
var(0) = -(2**9)

[State 900, 1]
type = VarAdd
triggerall = Time < 7 && !(var(0)&2**9)
triggerall = Target,Command = "holdfwd" || Target,Command = "holdback"
trigger1 = Target,Command = "y" || Target,Command = "z"
trigger2 = Target,Command = "b" || Target,Command = "c"
var(0) = 2**9

[State 900,TargetBind]
type = TargetBind
trigger1 = Time < 7 && (var(0)&2**9)
pos = 40, 0

[State 900,TargetBind]
type = ChangeState
trigger1 = Time < 7 && (var(0)&2**9)
value = 950

[State 1201, 2]
type = Playerpush
trigger1 = 1
value = 0

[State 901, Throw]
type = TargetState
trigger1 = Time = 0
value = 905

[State 820, Anim]
type = ChangeAnim
trigger1 = Time = 0
value = 901
persistent = 0

[State 3001, Width]
type = Width
trigger1 = animelemtime(4) < 0
edge = 45,45

[State 3001, Width]
type = Width
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
edge = 60,0

[State 3001, Width]
type = Width
trigger1 = animelemtime(5) = 0
edge = 105,0

[State 901, Effect]
type = PlaySnd
trigger1 = AnimElem = 1
value = 900, 0
channel = 1

[State 901, Effect]
type = PlaySnd
trigger1 = AnimElem = 2
value = 850, 0
channel = 0

[State 901, Effect]
type = PlaySnd
trigger1 = AnimElem = 9
value = 1200, 1
channel = 0

[State 901, Effect]
type = PlaySnd
trigger1 = AnimElem = 9
value = 3, 2

[State 901,1]
type = TargetBind
trigger1 = animelem = 1
pos = -30,0
time = -1

[State 901,1]
type = TargetBind
trigger1 = animelem = 2
pos = -16,-115
time = -1

[State 901,1]
type = TargetBind
trigger1 = animelem = 3
pos = 16, -124
time = -1

[State 901,1]
type = TargetBind
trigger1 = animelem = 4
pos = 44, -98
time = -1

[State 901,1]
type = TargetBind
trigger1 = animelem = 5
pos = 85, -120
time = -1

[State 901,1]
type = TargetBind
trigger1 = animelemtime(5) = 2
pos = 75, -85
time = 1

[State 3001, Add Hits!]
type = HitAdd
trigger1 = AnimElem = 5
value = 1

[State -2, Combo]
type = VarAdd
trigger1 = AnimElem = 5
var(17) = 1
ignorehitpause = 1

[State 180, 1]
type = VarAdd
trigger1 = AnimElem = 5
var(50)=500
ignorehitpause = 1
persistent = 1

[State 180, 1]
type = VarAdd
triggerall = var(17) >= 2
trigger1 = AnimElem = 5
var(50)=ifelse(var(17)<6,2000,500)
ignorehitpause = 1
persistent = 1

[State 901, Hurt]
type = TargetLifeAdd
trigger1 = AnimElem = 5
value = -300

[State 901, Hurt]
type = TargetPowerAdd
trigger1 = AnimElem = 5
value = 35

[State 901, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;真空投げ（相手）
[Statedef 905]
type    = A
movetype = H
physics = N
velset = 0,0
poweradd = 30
sprpriority = -1

[State 1201, screenbound]
type = screenbound
trigger1 = AnimElemTime(6) <= 0
value = 1

[State 902, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 905

[State 903, Vel]
type = VelSet
trigger1 = AnimElemTime(6) = 0
x = -4
y = -7.5

[State 903, Vel]
type = veladd
trigger1 = AnimElemTime(6) >= 0
y = 0.49

[State 903, EnvShake]
type = EnvShake
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
time = 20

[State 1300,Turn]
type = Turn
trigger1 = AnimElemTime(6) > 0
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0

[State 903, 2]
type = SelfState
trigger1 = AnimElemTime(6) > 0
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100

;---------------------------------------------------------------------------
;真空投げ（相手）2
[Statedef 906]
type    = A
movetype = H
physics = N
velset = 0,0
ctrl = 0

[State 1205, ChangeState]
type = selfstate
trigger1 = Time > 5
value = 5100

[State 170, 1]
type = NotHitBy
trigger1 = 1
value = SCA

;---------------------------------------------------------------------------
;おいハナクソ
[Statedef 1500]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd = 30
ctrl = 0
velset = 0,0
anim = 1000
sprpriority = 2
facep2 = 1

[State 1100, 0]
type = PlaySnd
trigger1 = time = 0
value = 202, 1
channel = 0

[State 2300, zonnbi tomaru]
type = AttackDist
trigger1 = 1
value = -1

[State 1500, helper]
type = Helper
trigger1 = numhelper(1501) = 0
trigger1 = animtime = 0
helpertype = normal
name = "donovan"
stateno = 1501
id = 1501
pos = -20, 0
postype = back
ownpal = 1
facing = 1
supermovetime = 0
pausemovetime = 0


[State 1500, 3]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;ドノヴァン登場
[Statedef 1501]
type = A
movetype = I
physics = N
velset = 3,0
anim = 1920
ctrl = 0
sprpriority = 3

[State 1501, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 1501, ボイス]
type = PlaySnd
trigger1 = Time = 0
value = 1500, 0
channel = 0
volume = 200


[State 1501, InterceptHit]
type = HitOverride
trigger1 = time = 0
time = -1
slot = 0
attr = SCA, AA, AT, AP
stateno = 1508;退場
ignorehitpause = 1

[State 44891, ChangeState]
type = ChangeState
trigger1 = backedgebodydist > 100
value = 1502;攻撃へ

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;
[Statedef 1502]
type     = S
movetype = A
physics  = S
juggle   = 4
poweradd = 0
velset   = 0,0
anim     = 1922
ctrl     = 0
sprpriority = 2

[State 1502, 無敵]
type = NotHitBy
trigger1 = AnimElem = 1
value = SCA
time = 42

[State 1502, ボロじゅうたん]
type = Explod
trigger1 = time = 0
Anim = 1928
pos = 0, 0
postype = p1
ownpal = 1
sprpriority = 3
;pausemovetime = -1
supermovetime = -1
scale = 1,1

[State 1502, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 1503

;------------------
; ジャンプ
[Statedef 1503]
type     = A
movetype = A
physics  = N
velset   = 5,-12
anim     = 1921

[State 1503, 速度加算] ;重力
type = VelAdd
trigger1 = 1
y = .4

[State 1503, 移動速度]
type = VelSet
trigger1 = AnimElemTime(3) = 0
x = 0.3

[State 1503, ボイス]
type = PlaySnd
trigger1 = Time = 46
value = 1500,1
channel = 0

[State 1503, ヒット定義]
type = HitDef
trigger1 = Time = 0
attr = A, HT
damage = 0
animtype = Hard
getpower  = 0
hitflag = M-
priority = 1, Miss
sparkno = -1
guard.sparkno = -1
p1sprpriority = 1
p2sprpriority = 0
p1facing = 1
p2facing = 1
p1stateno = 1504
p2stateno = 1506
guard.dist = 0
fall = 1
fall.recover = 0

[State 3051, ステート変更] ;着地
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 1504

;---------------------------------------------------------------------------
; 投げ成功モーション
[Statedef 1504]
type     = A
movetype = A
physics  = N
anim     = 1923

[State 1504, 物理的なキャラの幅]
type = Width
trigger1 = AnimElem = 1
edge = 40,0

[State 1504, 掴んだ相手の位置１]
type = TargetBind
trigger1 = AnimElemTime(1) >= 0
pos = 20, 0

[State 1504, ステート変更] ;着地
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 1505

;---------------------------------------------------------------------------
; 投げ成功モーション
[Statedef 1505]
type     = S
movetype = A
physics  = N
anim     = 1924
velset   = 0,0

[State 1505, 軸位置設定] ;地面の位置に軸をリセット
type = PosSet
trigger1 = Time = 0
y = 0

[State 1505, 音を鳴らす] ;着地音
type = PlaySnd
trigger1 = Time = 0
value = 7, 0


[State 1505, 物理的なキャラの幅]
type = Width
trigger1 = AnimElem = 1
edge = 60,0

[State 1505, 掴んだ相手の位置１]
type = TargetBind
trigger1 = AnimElemTime(1) >= 0
pos = 5, 0

[State 1505, ボイス]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1501,random%2
channel = 0
volume = 200

[State 1505, 掴んだ相手のステート変更]
type = TargetState
trigger1 = AnimElem = 4
value = 1507

[State 1505, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 6
trigger2 = AnimElem = 8
trigger3 = AnimElem = 10
value = 2, 1


[State 1505, 掴んだ相手の体力ゲージの増減]
type = TargetLifeAdd
trigger1 = AnimElem = 6
trigger2 = AnimElem = 8
value = ceil(-10*const(data.attack)*0.01)
Kill = 0

[State 1505, 掴んだ相手の体力ゲージの増減]
type = TargetLifeAdd
trigger1 = AnimElem = 10
value = ceil(-120*const(data.attack)*0.01)

[State 1505, 掴んだ相手のパワーゲージの増減]
type = TargetPowerAdd
trigger1 = AnimElem = 6
trigger2 = AnimElem = 8
trigger3 = AnimElem = 10
value = -300

[State 1505, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 1508
ctrl = 1

;---------------------------------------------------------------------------
; 相手側の投げられモーション1

[Statedef 1506]
type     = A
movetype = H
physics  = N
velset   = 0,0

[State 1506, 制御した相手のアニメ変更]
type = ChangeAnim2
Trigger1 = Time = 0
value = 1926

[State 1506, 軸位置設定] ;地面の位置に軸をリセット
type = PosSet
trigger1 = AnimElemTime(1) >= 0
y = 0

[State 1506, 制御解除して相手のステートに戻す];※保険
type = SelfState
trigger1 = AnimTime = 0
value = 5110

;---------------------------------------------------------------------------
; 相手側の投げられモーション2

[Statedef 1507]
type     = A
movetype = H
physics  = N
velset   = 0,0

[State 1507, 制御した相手のアニメ変更]
type = ChangeAnim2
Trigger1 = Time = 0
value = 1927

[State 1507, 制御解除して相手のステートに戻す]
type = SelfState
trigger1 = AnimTime = 0
value = 5110

[State 249, 相手を揺れているように]
type = null;posadd
trigger1 = Time = [89,122]
trigger2 = Time = [141,184]
trigger3 = Time = [201,256]
y = ifelse(time %4 = 0,-4,4)

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;ドノヴァン退場
[Statedef 1508]
type = A
movetype = I
physics = N
anim = 1925
ctrl = 0
sprpriority = 3

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim = 1941
trigger1 = animtime = 0
value = 1942

[State 0, VelSet]
type = VelSet
trigger1 = anim = 1925
x = -4
y = 0

[State 0, PlaySnd]
type = PlaySnd
triggerall = (parent, var(6)) = 3603
trigger1 = backedgebodydist < -30
trigger2 = time >= 300
value = 5,7
volume = 200

[State 0, DestroySelf]
type = DestroySelf
trigger1 = backedgebodydist < -30
trigger2 = time >= 300


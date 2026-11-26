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
;グリーンベレー・弱
[Statedef 1040]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd = 30
ctrl = 0
velset = 0,0
anim = 1100
sprpriority = 2
facep2 = 1

[State 1040, 0]
type = PlaySnd
trigger1 = time = 0
value = 1200, 0
channel = 0

[State 2300, zonnbi tomaru]
type = AttackDist
trigger1 = 1
value = -1

[State 1027, helper]
type = Helper
trigger1 = numhelper(1041) < 2
trigger1 = time = 0
helpertype = normal
name = "gb"
stateno = 1041
id = 1041
size.xscale=0.5
size.yscale=0.5
pos = -10, 0
postype = p1
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
;グリーンベレー登場
[Statedef 1041]
type = A
movetype = I
physics = N
velset = 2,0
anim = 1101
ctrl = 0
sprpriority = 3

[State 1041, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 1041, InterceptHit]
type = HitOverride
trigger1 = time = 0
time = -1
slot = 0
attr = SCA, AA, AT, AP
stateno = 1043
ignorehitpause = 1

[State 1041, ChangeState]
type = ChangeState
trigger1 = time > 20
trigger1 = p2dist X < 0.1
value = 1042

;---------------------------------------------------------------------------
;グリーンベレーナイフ
[Statedef 1042]
type = A
movetype = a
physics = N
velset = 0,0
anim = 1104
ctrl = 0
sprpriority = 3

[State 1042, 1]
type = PlaySnd
trigger1 = animelem = 10
trigger2 = animelem = 15
value = 3020, 1

[State 1042, 2]
type = hitdef
triggerall = anim = 1104
trigger1 = animelem = 11
trigger2 = animelem = 16
attr = S, SA
damage = 20,5 
pausetime = 0,8
guard.pausetime = 0,10
guard.sparkno = s6125
hitflag = M
guardflag = M
priority = 1, Miss
sparkno = -1
sparkxy = -10,-20
hitsound   = s5,0
guardsound = s1,5
sprpriority = 1
ground.velocity = -5*const(size.xscale),0
guard.velocity = -5*const(size.xscale)
guard.hittime  = 6
guard.slidetime = 6
air.velocity = 0,0

[State 1042, 2]
type = varrandom
trigger1 = 1
v = 13
range = 0,30

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 1043

;---------------------------------------------------------------------------
;グリーンベレー退場
[Statedef 1043]
type = A
movetype = I
physics = N
anim = 1103
ctrl = 0
sprpriority = 3

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim = 1101
trigger1 = animtime = 0
value = 1103

[State 0, VelSet]
type = VelSet
trigger1 = anim = 1103
x = -3
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
trigger1 = backedgebodydist < -100
trigger2 = time >= 300

;===========================================================================
;===========================================================================
;---------------------------------------------------------------------------
;グリーンベレー・弱
[Statedef 1100]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd = 30
ctrl = 0
velset = 0,0
anim = 1100
sprpriority = 2
facep2 = 1

[State 1100, 0]
type = PlaySnd
trigger1 = time = 0
value = 1200, 0
channel = 0

[State 2300, zonnbi tomaru]
type = AttackDist
trigger1 = 1
value = -1

[State 1027, helper]
type = Helper
triggerall = var(41) = 0
trigger1 = numhelper(1101) < 10;57
trigger1 = time = 12
helpertype = normal
name = "gb"
stateno = 1101
id = 1101
size.xscale=0.5
size.yscale=0.5
pos = -10, 0
postype = p1
ownpal = 1
facing = 1
supermovetime = 0
pausemovetime = 0

[State 1027, helper]
type = Helper
triggerall = var(41) = 0
trigger1 = numhelper(1101) < 10;57
trigger1 = time = 16
helpertype = normal
name = "gb"
stateno = 1101
id = 1101
size.xscale=0.5
size.yscale=0.5
pos = -22, 0
postype = p1
ownpal = 1
facing = 1
supermovetime = 0
pausemovetime = 0

[State 1027, helper]
type = Helper
triggerall = var(41) = 0
trigger1 = numhelper(1101) < 10;57
trigger1 = time = 18
helpertype = normal
name = "gb"
stateno = 1101
id = 1101
size.xscale=0.5
size.yscale=0.5
pos = -28, 0
postype = p1
ownpal = 1
facing = 1
supermovetime = 0
pausemovetime = 0

[State 1027, helper]
type = Helper
triggerall = var(41) = 1
trigger1 = numhelper(1101) < 10;57
trigger1 = time = 12
helpertype = normal
name = "gb"
stateno = 1101
id = 1101
size.xscale=0.3
size.yscale=0.3
pos = -10, 0
postype = p1
ownpal = 1
facing = 1
supermovetime = 0
pausemovetime = 0

[State 1027, helper]
type = Helper
triggerall = var(41) = 1
trigger1 = numhelper(1101) < 10;57
trigger1 = time = 16
helpertype = normal
name = "gb"
stateno = 1101
id = 1101
size.xscale=0.3
size.yscale=0.3
pos = -22, 0
postype = p1
ownpal = 1
facing = 1
supermovetime = 0
pausemovetime = 0

[State 1027, helper]
type = Helper
triggerall = var(41) = 1
trigger1 = numhelper(1101) < 10;57
trigger1 = time = 18
helpertype = normal
name = "gb"
stateno = 1101
id = 1101
size.xscale=0.3
size.yscale=0.3
pos = -28, 0
postype = p1
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
;=======================歩兵登場===============================
;---------------------------------------------------------------------------
;歩兵登場
[Statedef 1101]
type = S
movetype = A
physics = S
sprpriority = 0
velset = 0,0
anim = 1101

;[State 1104, 1]
;type = changeanim
;triggerall = var(41) = 1
;trigger1 = time = 0
;value = 1111

[State 301] ;移動
type = ChangeState
triggerall = time >= 10
triggerall= roundstate = 2
trigger1 =Parent,life != 0
value = 1102

[State 1, 2]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AT,AP
slot = 1
stateno = 1107
time = -1

[State 301] ;爆発
type = ChangeState
trigger1 =Parent,life = 0
value = 1107

;---------------------------------------------------------------------------
;前進
[Statedef 1102]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 0
ctrl = 0
velset = 0,0
anim = 1101
sprpriority = 0

;[State 1104, 1]
;type = changeanim
;triggerall = var(41) = 1
;trigger1 = time = 0
;value = 1111

[State 0, 2]
type = VelSet
trigger1 = 1
x = 1

[State 1, 2]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AT,AP
slot = 1
stateno = 1107
time = -1

[State 301] ;移動
type = ChangeState
triggerall = P2bodydist X < 20
triggerall = time >= 10
triggerall= roundstate = 2
trigger1 =Parent,life != 0
value = 1103

[State 301] ;攻撃
type = ChangeState
trigger1 = time >= 30
trigger1 = P2bodydist X <= 50
trigger2 = time >= 150
value = 1104;+random%2

[State 1051, 2];相手の方向を見ます
type = turn
trigger1 = facing = 1
trigger1 = pos X-enemynear(0),pos X > 0
trigger1 = enemynear(0),alive
trigger2 = facing = -1
trigger2 = pos X-enemynear(0),pos X < 0
trigger2 = enemynear(0),alive
trigger3 = facing = 1
trigger3 = pos X-enemynear(1),pos X > 0
trigger3 = enemynear(0),alive = 0
trigger4 = facing = -1
trigger4 = pos X-enemynear(1),pos X < 0
trigger4 = enemynear(0),alive = 0

[State 301] ;爆発
type = ChangeState
trigger1 =Parent,life = 0
value = 1107

;---------------------------------------------------------------------------
;後退
[Statedef 1103]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 0
ctrl = 0
velset = 0,0
anim = 1103
sprpriority = 0

;[State 1104, 1]
;type = changeanim
;triggerall = var(41) = 1
;trigger1 = time = 0
;value = 1113

[State 1103, 2]
type = VelSet
trigger1 = 1
x = -1

[State 1103, 2]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AT,AP
slot = 1
stateno = 1107
time = -1

[State 1103] ;攻撃
type = ChangeState
trigger1 = time >= 30
trigger1 = P2bodydist X > 80
trigger2 = time >= 150
value = 1104;+random%2

[State 1103] ;移動
type = ChangeState
triggerall = P2bodydist X >100
triggerall = time >= 10
triggerall= roundstate = 2
trigger1 =Parent,life != 0
value = 1102

[State 1051, 2];相手の方向を見ます
type = turn
trigger1 = facing = 1
trigger1 = pos X-enemynear(0),pos X > 0
trigger1 = enemynear(0),alive
trigger2 = facing = -1
trigger2 = pos X-enemynear(0),pos X < 0
trigger2 = enemynear(0),alive
trigger3 = facing = 1
trigger3 = pos X-enemynear(1),pos X > 0
trigger3 = enemynear(0),alive = 0
trigger4 = facing = -1
trigger4 = pos X-enemynear(1),pos X < 0
trigger4 = enemynear(0),alive = 0

[State 301] ;爆発
type = ChangeState
trigger1 =Parent,life = 0
value = 1107

;---------------------------------------------------------------------------
;射撃
[Statedef 1104]
type = A
movetype = I
physics = N
velset = 0,0
anim = 1102
ctrl = 0
sprpriority = 3

;[State 1104, 1]
;type = changeanim
;triggerall = var(41) = 1
;trigger1 = time = 0
;value = 1112

[State 1104, 1]
type = PlaySnd
trigger1 = animelem = 3
trigger2 = animelem = 22
trigger3 = animelem = 41
value = 3020, 1

[State 1104, 2]
type = Projectile
triggerall = anim = 1102
trigger1 = animelem = 3
trigger2 = animelem = 22
trigger3 = animelem = 49
projanim = 3022
projhitanim = -1
offset = 23,-15
velocity = 30,0
attr = S, HP
animtype  = Medium
damage    = 3, 1
priority  = 6
guardflag = MA
hitflag = MAFD
pausetime = 0,10
sparkno = s6100
guard.sparkno = s6125
sparkxy = 0,-15 + var(13)
hitsound   = s5,0
guardsound = s6,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -4
air.velocity = -4,-3
air.fall = 1
down.velocity = -7,-2
down.hittime = 5
getpower = 0,0

[State 1104, 2]
type = null;Projectile
triggerall = anim = 1112
trigger1  = animelem = 4
trigger2  = animelem = 6
trigger3  = animelem = 8
trigger4  = animelem = 12
trigger5  = animelem = 14
trigger6  = animelem = 16
trigger7  = animelem = 18
trigger8  = animelem = 20
trigger9  = animelem = 22
trigger10 = animelem = 24
trigger11 = animelem = 26
trigger12 = animelem = 28
trigger13 = animelem = 30
trigger14 = animelem = 32
trigger15 = animelem = 34
trigger16 = animelem = 36
trigger17 = animelem = 49
trigger18 = animelem = 51
trigger19 = animelem = 53
trigger20 = animelem = 55
trigger21 = animelem = 57
trigger22 = animelem = 59
trigger23 = animelem = 61
projanim = 3022
projhitanim = -1
offset = 23,-15
velocity = 30,0
attr = S, HP
animtype  = Medium
damage    = 2, 1
priority  = 6
guardflag = MA
hitflag = MAFD
pausetime = 0,10
sparkno = s6101
guard.sparkno = s6125
sparkxy = 0,-15 + var(13)
hitsound   = s5,0
guardsound = s6,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -4
air.velocity = -4,-3
air.fall = 1
down.velocity = -7,-2
down.hittime = 5
getpower = 0,0

[State 0, VelSet]
type = VelSet
trigger1 = anim = 1102;1108
trigger1 = animelem = 39
x = 1
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = anim = 1102;1108
trigger1 = animelem = 46
x = 0
y = 0

[State 1104, 2]
type = varrandom
trigger1 = 1
v = 13
range = 0,30

[State 1105, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 1102
ctrl = 0

[State 1105, 2]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AT,AP
slot = 1
stateno = 1107
time = -1

[State 1051, 2];相手の方向を見ます
type = turn
trigger1 = facing = 1
trigger1 = pos X-enemynear(0),pos X > 0
trigger1 = enemynear(0),alive
trigger2 = facing = -1
trigger2 = pos X-enemynear(0),pos X < 0
trigger2 = enemynear(0),alive
trigger3 = facing = 1
trigger3 = pos X-enemynear(1),pos X > 0
trigger3 = enemynear(0),alive = 0
trigger4 = facing = -1
trigger4 = pos X-enemynear(1),pos X < 0
trigger4 = enemynear(0),alive = 0

[State 301] ;爆発
type = ChangeState
trigger1 =Parent,life = 0
value = 1107

;---------------------------------------------------------------------------
; 砲撃②
[Statedef 1105]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 70
ctrl = 0
velset = 0,0
anim = 1104
sprpriority = 1

[State 1105, 1]
type = PlaySnd
trigger1 = animelem = 3
value = 5,10

[State 0, 2]
type = VelSet
trigger1 = animelem = 3
x = -0.8

[State 1105, 2]
type = Projectile
trigger1 = animelem = 3
projanim = 1106
projscale = 0.5,0.5
projhitanim = -1
offset = 23,-25
velocity = 30,-10
attr = S, HP
animtype  = Medium
damage    = 7, 2
priority  = 6
guardflag = MA
hitflag = MAFD
pausetime = 0,10
sparkno = s1305
guard.sparkno = s1305
sparkxy = 0,-15
hitsound   = s5,10
guardsound = s5,10
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -4
air.velocity = -4,-3
air.fall = 1
down.velocity = -7,-2
down.hittime = 5
getpower = 0,0

[State 1105, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 1102
ctrl = 0

[State 1105, 2]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AT,AP
slot = 1
stateno = 1107
time = -1

[State 301] ;爆発
type = ChangeState
trigger1 =Parent,life = 0
value = 1107

;---------------------------------------------------------------------------
;死亡
[Statedef 1107]
type = S
movetype = A
physics = S
sprpriority = 0
velset = 0,0
anim = 1107

[State 1, 2]
type = ParentVarAdd
trigger1 = time = 0
var(40) = -1;死にカウント

;[State 1107]
;type = PlaySnd
;trigger1 = time = 4
;value = 5, 10

[State 1207];爆発
type = null;Explod
triggerall = anim = 1117
trigger1 = time = 4
ignorehitpause = 1
id = 6142
anim = 6142
pos = 0,0
postype = P1
sprpriority = 7
removetime = 21
ownpal = 1


[State 1107, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 100

[State 1107, 2]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AT,AP
slot = 1
stateno = 1107
time = -1

[State 20000]
type = DestroySelf
trigger1 = animtime = 0



;===========================================================================
;===========================================================================
;tank・弱
[Statedef 1200]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd = 30
ctrl = 0
velset = 0,0
anim = 1200
sprpriority = 2
facep2 = 1

[State 1200, 0]
type = PlaySnd
trigger1 = time = 0
value = 1200, 0
channel = 0

[State 2300, zonnbi tomaru]
type = AttackDist
trigger1 = 1
value = -1

[State 1027, helper]
type = Helper
trigger1 = animtime = 0
trigger1 = numhelper(1201) < 2
helpertype = normal
name = "tank"
stateno = 1201
id = 1201
pos = -50, 0
postype = p1
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
;=======================一般戦車登場===============================
;---------------------------------------------------------------------------
;一般戦車登場
[Statedef 1201]
type = S
movetype = A
physics = S
sprpriority = 0
velset = 0,0
anim = 1201

[State 301] ;移動
type = ChangeState
triggerall = time >= 10
triggerall= roundstate = 2
trigger1 =Parent,life != 0
value = 1202

[State 1, 2]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AT,AP
slot = 1
stateno = 1207
time = -1

[State 301] ;爆発
type = ChangeState
trigger1 =Parent,life = 0
value = 1207

;---------------------------------------------------------------------------
;前進
[Statedef 1202]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 0
ctrl = 0
velset = 0,0
anim = 1201
sprpriority = 0

[State 0, 2]
type = VelSet
trigger1 = 1
x = .5

[State 1, 2]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AT,AP
slot = 1
stateno = 1207
time = -1

[State 301] ;移動
type = ChangeState
triggerall = P2bodydist X < 50
triggerall = time >= 10
triggerall= roundstate = 2
trigger1 =Parent,life != 0
value = 1203

[State 301] ;攻撃
type = ChangeState
trigger1 = time >= 30
trigger1 = P2bodydist X <= 50
trigger2 = time >= 150
value = 1204+random%2

[State 301] ;爆発
type = ChangeState
trigger1 =Parent,life = 0
value = 1207

;---------------------------------------------------------------------------
;後退
[Statedef 1203]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 0
ctrl = 0
velset = 0,0
anim = 1203
sprpriority = 0

[State 1203, 2]
type = VelSet
trigger1 = 1
x = -0.5

[State 1203, 2]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AT,AP
slot = 1
stateno = 1207
time = -1

[State 1203] ;攻撃
type = ChangeState
trigger1 = time >= 30
trigger1 = P2bodydist X > 80
trigger2 = time >= 150
value = 1204+random%2

[State 1203] ;移動
type = ChangeState
triggerall = P2bodydist X >150
triggerall = time >= 10
triggerall= roundstate = 2
trigger1 =Parent,life != 0
value = 1202

[State 301] ;爆発
type = ChangeState
trigger1 =Parent,life = 0
value = 1207

;---------------------------------------------------------------------------
; 砲撃①
[Statedef 1204]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 70
ctrl = 0
velset = 0,0
anim = 1202
sprpriority = 1

[State 1204, 1]
type = PlaySnd
trigger1 = animelem = 3
value = 5,10

[State 1204, 2]
type = VelSet
trigger1 = animelem = 3
x = -0.8

[State 1204, 2]
type = Projectile
trigger1 = animelem = 3
projanim = 1206
projscale = 0.5,0.5
projhitanim = -1
offset = 23,-20
velocity = 30,0
attr = S, HP
animtype  = Medium
damage    = 7, 2
priority  = 6
guardflag = MA
hitflag = MAFD
pausetime = 0,10
sparkno = s1305
guard.sparkno = s1305
sparkxy = 0,-15
hitsound   = s5,10
guardsound = s5,10
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -4
air.velocity = -4,-3
air.fall = 1
down.velocity = -7,-2
down.hittime = 5
getpower = 0,0

[State 1204, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 1202
ctrl = 0


[State 1204, 2]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AT,AP
slot = 1
stateno = 1207
time = -1

[State 301] ;爆発
type = ChangeState
trigger1 =Parent,life = 0
value = 1207

;---------------------------------------------------------------------------
; 砲撃②
[Statedef 1205]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 70
ctrl = 0
velset = 0,0
anim = 1204
sprpriority = 1

[State 1205, 1]
type = PlaySnd
trigger1 = animelem = 3
value = 5,10

[State 0, 2]
type = VelSet
trigger1 = animelem = 3
x = -0.8

[State 1205, 2]
type = Projectile
trigger1 = animelem = 3
projanim = 1206
projscale = 0.5,0.5
projhitanim = -1
offset = 23,-25
velocity = 30,-10
attr = S, HP
animtype  = Medium
damage    = 7, 2
priority  = 6
guardflag = MA
hitflag = MAFD
pausetime = 0,10
sparkno = s1305
guard.sparkno = s1305
sparkxy = 0,-15
hitsound   = s5,10
guardsound = s5,10
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -4
air.velocity = -4,-3
air.fall = 1
down.velocity = -7,-2
down.hittime = 5
getpower = 0,0

[State 1205, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 1202
ctrl = 0

[State 1205, 2]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AT,AP
slot = 1
stateno = 1207
time = -1

[State 301] ;爆発
type = ChangeState
trigger1 =Parent,life = 0
value = 1207

;---------------------------------------------------------------------------
;爆発
[Statedef 1207]
type = S
movetype = A
physics = S
sprpriority = 0
velset = 0,0
anim = 99999

[State 1, 2]
type = ParentVarAdd
trigger1 = time = 0
var(44) = -1;死にカウント

[State 1207]
type = PlaySnd
trigger1 = time = 4
value = 5, 10

[State 1207];爆発
type = Explod
trigger1 = time = 4
ignorehitpause = 1
id = 6142
anim = 6142
pos = 0,0
postype = P1
sprpriority = 7
removetime = 21
ownpal = 1

[State 1207, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 100

[State 1207, 2]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AT,AP
slot = 1
stateno = 1207
time = -1

[State 20000]
type = DestroySelf
trigger1 = time = 4


;===========================================================================
;===========================================================================
;apatch・弱
[Statedef 1300]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd = 30
ctrl = 0
velset = 0,0
anim = 1300
sprpriority = 2
facep2 = 1

[State 1300, 0]
type = PlaySnd
trigger1 = time = 0
value = 1200, 0
channel = 0

[State 2300, zonnbi tomaru]
type = AttackDist
trigger1 = 1
value = -1

[State 1027, helper]
type = Helper
trigger1 = animtime = 0
trigger1 = numhelper(1301) < 2
helpertype = normal
name = "apatch"
stateno = 1301
id = 1301
pos = -10, 0
postype = p1
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
;=======================アパッチ登場===============================
;---------------------------------------------------------------------------
;アパッチ登場
[Statedef 1301]
type = S
movetype = A
physics = S
sprpriority = 0
velset = 0,0
anim = 1301

[State 1301] ;移動
type = ChangeState
triggerall = time >= 10
triggerall= roundstate = 2
trigger1 =Parent,life != 0
value = 1302

[State 1, 2]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AT,AP
slot = 1
stateno = 1307
time = -1

[State 1301] ;爆発
type = ChangeState
trigger1 =Parent,life = 0
value = 1307

;---------------------------------------------------------------------------
;前進
[Statedef 1302]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 0
ctrl = 0
velset = 0,0
anim = 1301
sprpriority = 0

[State 0, 2]
type = VelSet
trigger1 = 1
x = .3

[State 1302, 2]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AT,AP
slot = 1
stateno = 1307
time = -1

[State 1302] ;移動
type = ChangeState
triggerall = P2bodydist X < 100
triggerall = time >= 10
triggerall= roundstate = 2
trigger1 =Parent,life != 0
value = 1303

[State 1302] ;攻撃
type = ChangeState
trigger1 = time >= 30
trigger1 = P2bodydist X <= 50
trigger2 = time >= 150
value = 1304

[State 1051, 2];相手の方向を見ます
type = turn
trigger1 = facing = 1
trigger1 = pos X-enemynear(0),pos X > 0
trigger1 = enemynear(0),alive
trigger2 = facing = -1
trigger2 = pos X-enemynear(0),pos X < 0
trigger2 = enemynear(0),alive
trigger3 = facing = 1
trigger3 = pos X-enemynear(1),pos X > 0
trigger3 = enemynear(0),alive = 0
trigger4 = facing = -1
trigger4 = pos X-enemynear(1),pos X < 0
trigger4 = enemynear(0),alive = 0

[State 301] ;爆発
type = ChangeState
trigger1 =Parent,life = 0
value = 1307

;---------------------------------------------------------------------------
;後退
[Statedef 1303]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 0
ctrl = 0
velset = 0,0
anim = 1303
sprpriority = 0

[State 1303, 2]
type = VelSet
trigger1 = 1
x = -0.3

[State 1303, 2]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AT,AP
slot = 1
stateno = 1307
time = -1

[State 1303] ;攻撃
type = ChangeState
trigger1 = time >= 30
trigger1 = P2bodydist X > 80
trigger2 = time >= 150
value = 1304

[State 1303] ;移動
type = ChangeState
triggerall = P2bodydist X >200
triggerall = time >= 10
triggerall= roundstate = 2
trigger1 =Parent,life != 0
value = 1302

[State 1051, 2];相手の方向を見ます
type = turn
trigger1 = facing = 1
trigger1 = pos X-enemynear(0),pos X > 0
trigger1 = enemynear(0),alive
trigger2 = facing = -1
trigger2 = pos X-enemynear(0),pos X < 0
trigger2 = enemynear(0),alive
trigger3 = facing = 1
trigger3 = pos X-enemynear(1),pos X > 0
trigger3 = enemynear(0),alive = 0
trigger4 = facing = -1
trigger4 = pos X-enemynear(1),pos X < 0
trigger4 = enemynear(0),alive = 0

[State 301] ;爆発
type = ChangeState
trigger1 =Parent,life = 0
value = 1307

;---------------------------------------------------------------------------
; ミサイル
[Statedef 1304]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 70
ctrl = 0
velset = 0,0
anim = 1302
sprpriority = 1

[State 1304, 1]
type = PlaySnd
trigger1 = animelem = 3
value = 5,10

[State 1304, 2]
type = VelSet
trigger1 = animelem = 3
x = -0.8

[State 1322, 2]
type = Projectile
trigger1 = animelem = 3
projanim = 1304
projhitanim = -1
projscale = 0.5,0.5
offset = 23,-71
velocity = 7,0
attr = S, HP
animtype  = Medium
damage    = 7, 2
priority  = 6
guardflag = MA
hitflag = MAFD
pausetime = 0,10
sparkno = s1305
guard.sparkno = s1305
sparkxy = 0,-15 + var(13)
hitsound   = s5,10
guardsound = s5,10
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -4
air.velocity = -4,-3
air.fall = 1
down.velocity = -7,-2
down.hittime = 5
getpower = 0,0

[State 1304, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 1302
ctrl = 0


[State 1304, 2]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AT,AP
slot = 1
stateno = 1307
time = -1

[State 1051, 2];相手の方向を見ます
type = turn
trigger1 = facing = 1
trigger1 = pos X-enemynear(0),pos X > 0
trigger1 = enemynear(0),alive
trigger2 = facing = -1
trigger2 = pos X-enemynear(0),pos X < 0
trigger2 = enemynear(0),alive
trigger3 = facing = 1
trigger3 = pos X-enemynear(1),pos X > 0
trigger3 = enemynear(0),alive = 0
trigger4 = facing = -1
trigger4 = pos X-enemynear(1),pos X < 0
trigger4 = enemynear(0),alive = 0

[State 301] ;爆発
type = ChangeState
trigger1 =Parent,life = 0
value = 1307

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;爆発
[Statedef 1307]
type = S
movetype = A
physics = S
sprpriority = 0
velset = 0,0
anim = 99999

[State 1, 2]
type = ParentVarAdd
trigger1 = time = 0
var(42) = -1;死にカウント

[State 1307]
type = PlaySnd
trigger1 = time = 4
value = 5, 10

[State 1307];爆発
type = Explod
trigger1 = time = 4
ignorehitpause = 1
id = 6144
anim = 6144
pos = 0,-90
postype = P1
sprpriority = 7
removetime = 21
ownpal = 1
scale= 0.5,0.5

[State 1307, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 100

[State 1307, 2]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AT,AP
slot = 1
stateno = 1307
time = -1

[State 20000]
type = DestroySelf
trigger1 = time = 4




;===========================================================================
;===========================================================================
;グリーンベレー・弱
[Statedef 1400]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd = 30
ctrl = 0
velset = 0,0
anim = 1100
sprpriority = 2
facep2 = 1

[State 1400, 0]
type = PlaySnd
trigger1 = time = 0
value = 1200, 0
channel = 0

[State 2300, zonnbi tomaru]
type = AttackDist
trigger1 = 1
value = -1

[State 1027, helper]
type = Helper
trigger1 = numhelper(1401) < 2
trigger1 = time = 0
helpertype = normal
1name = "gbomb0"
stateno = 1401
id = 1401
size.xscale=0.5
size.yscale=0.5
pos = -10, 0
postype = p1
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
;グリーンベレー登場
[Statedef 1401]
type = A
movetype = I
physics = N
velset = 2,0
anim = 1101
ctrl = 0
sprpriority = 3

[State 1401, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0


[State 1401, InterceptHit]
type = HitOverride
trigger1 = time = 0
time = -1
slot = 0
attr = SCA, AA, AT, AP
stateno = 1403
ignorehitpause = 1

[State 1401, ChangeState]
type = ChangeState
trigger1 = time > 30
value = 1402

;---------------------------------------------------------------------------
;グリーンベレー地雷
[Statedef 1402]
type = A
movetype = a
physics = N
velset = 0,0
anim = 1105
ctrl = 0
sprpriority = 3

[State 1402, 1]
type = PlaySnd
trigger1 = animelem = 10
trigger2 = animelem = 15
value = 3020, 1

[State 1402, helper]
type = Helper
trigger1 = numhelper(1430) < 4
trigger1 = animelem = 5
helpertype = normal
name = "bomb"
stateno = 1430
id = 1430
size.xscale=0.5
size.yscale=0.5
pos = -10, 0
postype = p1
ownpal = 1
facing = 1
supermovetime = 0
pausemovetime = 0

[State 1402, 2]
type = varrandom
trigger1 = 1
v = 13
range = 0,30

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 1403

;---------------------------------------------------------------------------
;グリーンベレー退場
[Statedef 1403]
type = A
movetype = I
physics = N
anim = 1103
ctrl = 0
sprpriority = 3

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim = 1101
trigger1 = animtime = 0
value = 1103

[State 0, VelSet]
type = VelSet
trigger1 = anim = 1103
x = -3
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
trigger1 = backedgebodydist < -100
trigger2 = time >= 300

;---------------------------------------------------------------------------
;地雷
[Statedef 1430]
type = A
movetype = A
physics = N
anim = 1106
ctrl = 0
sprpriority = 3

[State 1430, 2　ヒット定義]
type = HitDef
trigger1 = time = 0
attr = A, HA
damage    = 100
animtype  = hard
hitflag = MAFD
guardflag = M
priority = 2, Hit
pausetime = 0,9
getpower = ifelse(helper(8500),fvar(8)=0,100,100*1.1)
givepower = 40
sparkno = s1305
guard.sparkno = s1305
sparkxy = 0,-5
hitsound   = s5,10
guardsound = s5,10
ground.type = High
ground.slidetime = 11
ground.hittime  = 11
ground.velocity = 2,0
air.velocity = 2,0
p2facing = 1
ground.cornerpush.veloff = 0
air.hittime = 15
fall = 1
fall.recovertime = 60

[State 1430, 音を鳴らす]
type = PlaySnd
trigger1 = time = 0
value = 100, 2
channel = 0


[State 1430, ヘルパーを消す]
type = DestroySelf
trigger1 = time > 400

[state 1430]
type = changestate
trigger1 = movehit
value = 10040

;---------------------------------------------------------------------------
;===========================================================================
[Statedef 10040, 重力]
type    = S
movetype= I
physics = S
velset = 0,0
ctrl = 0
sprpriority = 0

[state 10000]
type = changeanim
trigger1 = anim != 10000
value = 10000

[State 10000, 特殊効果]
type = AssertSpecial
trigger1 = 1
flag = NoShadow ;影を消す
[state 10000]
type = trans
trigger1 = 1
trans = addalpha
alpha = 0, 256
[State 10000]
Type = HitOverRide
Trigger1 = 1
Attr = SCA, AA, AP, AT
StateNo = stateno
ignorehitpause = 1
[State 1000]
type = NotHitBy
trigger1 = 1
value = SCA
ignorehitpause = 1


[State 10000]
type = reversaldef
trigger1 = 1
reversal.attr = SCA,AA,AT,AP
ignorehitpause = 1
[State 10000]
Type = PosSet
Trigger1 = 1
x = target,pos X
y = (target,Const (size.head.pos.y)) +target,pos Y



[state 10040]				;相手のY方向ベクトルを記憶し続け、
type = targetvelset			;記憶よりマイナス方向へ向かった時に
trigger1 = target,vel Y < fvar(0)	;速度を半減するように命令。
y = target,vel Y * .5
[state 10040]				;記憶は速度の変更後に行うようにする。
type = varset
trigger1 = 1
fvar(0) = target,vel Y

[state 10000]
type = varadd
trigger1 = 1
var(45) = 1
[state 10000]
type = changestate
trigger1 = time = 10
value = stateno

[State 10000, ヘルパーを消す]
type = DestroySelf
trigger1 = var(45) = 1000
trigger2 = !target,alive
;trigger2 = numhelper(1201)>1 && helper(1201),stateno=1202 && time>2

;===========================================================================
;===========================================================================
;グリーンベレー・中
[Statedef 1410]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd = 30
ctrl = 0
velset = 0,0
anim = 1100
sprpriority = 2
facep2 = 1

[State 1400, 0]
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
trigger1 = numhelper(1411) < 2
trigger1 = time = 0
helpertype = normal
1name = "gbomb1"
stateno = 1411
id = 1411
size.xscale=0.5
size.yscale=0.5
pos = -10, 0
postype = p1
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
;グリーンベレー登場
[Statedef 1411]
type = A
movetype = I
physics = N
velset = 2,0
anim = 1101
ctrl = 0
sprpriority = 3

[State 1401, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0


[State 1401, InterceptHit]
type = HitOverride
trigger1 = time = 0
time = -1
slot = 0
attr = SCA, AA, AT, AP
stateno = 1403
ignorehitpause = 1

[State 1401, ChangeState]
type = ChangeState
trigger1 = time > 60
value = 1412

;---------------------------------------------------------------------------
;グリーンベレー地雷
[Statedef 1412]
type = A
movetype = a
physics = N
velset = 0,0
anim = 1105
ctrl = 0
sprpriority = 3

[State 1412, helper]
type = Helper
trigger1 = numhelper(1430) < 4
trigger1 = animelem = 5
helpertype = normal
name = "bomb"
stateno = 1430
id = 1430
size.xscale=0.5
size.yscale=0.5
pos = -10, 0
postype = p1
ownpal = 1
facing = 1
supermovetime = 0
pausemovetime = 0

[State 1402, 2]
type = varrandom
trigger1 = 1
v = 13
range = 0,30

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 1403

;===========================================================================
;グリーンベレー・強
[Statedef 1420]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd = 30
ctrl = 0
velset = 0,0
anim = 1100
sprpriority = 2
facep2 = 1

[State 1400, 0]
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
trigger1 = numhelper(1421) < 2
trigger1 = time = 0
helpertype = normal
name = "gbomb2"
stateno = 1421
id = 1421
size.xscale=0.5
size.yscale=0.5
pos = -10, 0
postype = p1
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
;グリーンベレー登場
[Statedef 1421]
type = A
movetype = I
physics = N
velset = 2,0
anim = 1101
ctrl = 0
sprpriority = 3

[State 1401, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0


[State 1401, InterceptHit]
type = HitOverride
trigger1 = time = 0
time = -1
slot = 0
attr = SCA, AA, AT, AP
stateno = 1403
ignorehitpause = 1

[State 1401, ChangeState]
type = ChangeState
trigger1 = time > 90
value = 1422

;---------------------------------------------------------------------------
;グリーンベレー地雷
[Statedef 1422]
type = A
movetype = a
physics = N
velset = 0,0
anim = 1105
ctrl = 0
sprpriority = 3

[State 1422, helper]
type = Helper
trigger1 = numhelper(1430) < 4
trigger1 = animelem = 5
helpertype = normal
name = "bomb"
stateno = 1430
id = 1430
size.xscale=0.5
size.yscale=0.5
pos = -10, 0
postype = p1
ownpal = 1
facing = 1
supermovetime = 0
pausemovetime = 0

[State 1402, 2]
type = varrandom
trigger1 = 1
v = 13
range = 0,30

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 1403

;===========================================================================
;誰だってそーする
[statedef 2200]
type=s
movetype=i
physics=s
ctrl=0
anim=2200

[state 2200,ボイス]
type=playsnd
trigger1=animelem = 3
value=2200,0
channel = 0

[state 2200 , 歩兵数・初期値に戻す]
type = VarSet
trigger1 = time = 0
var(40) = 60

[state 2200 , 戦車数・初期値に戻す]
type = VarSet
trigger1 = time = 0
var(44) = 7

[state 2200 , アパッチ数・初期値に戻す]
type = VarSet
trigger1 = time = 0
var(42) = 4


[state 2200,終了]
type=changestate
trigger1=animtime=0
value=0
ctrl=1

;===========================================================================

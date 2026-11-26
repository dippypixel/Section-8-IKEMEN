;---------------------------------------------------------------------------
;電気椅子　初撃
[Statedef 3200]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 3200
sprpriority = 2
poweradd = 0

[state 3200,カットイン]
type=helper
triggerall=!numhelper(4999)
trigger1=animelemtime(5)=0
helpertype=normal
name="cutin"
id=4999
pos=0,0
scale = 0.2,0.2
postype=back
facing=1
stateno=4999
ownpal=0
supermovetime=2147483647

[state 3200,暗転]
type=superpause
trigger1=animelemtime(5)=0
pos=15,-75
anim=s6000
sound=s4999,0
poweradd=-2000
time=45
darken=0
p2defmul=1

[state 3200,無敵]
type=nothitby
trigger1=animelemtime(5)>=0
trigger1=animelemtime(9)<0
trigger2=movehit
trigger2=numtarget(3000)
value=sca

[state 3200,ヒット定義]
type=hitdef
trigger1=animelemtime(3)=0
trigger2=animelemtime(10)=0
attr=s,na
damage=10
guardflag=ma
pausetime=7,15
animtype=light
sparkno=s6100
guard.sparkno=s6125
sparkxy=-10,-76
hitsound=s5,0
guardsound=s6,0
ground.type=high
ground.slidetime=13
ground.hittime=13
air.hittime=13
ground.velocity=0
air.velocity=-1.4,0

[State 3200]
type = HitDef
triggerall = enemy,movetype != H
trigger1=animelemtime(22)=0
attr = S,HT
hitflag = M-
priority = 7, Miss
sparkno = -1
sprpriority = 1
p1facing = 1
p2facing = 1
p1stateno = 3210
p2stateno = 3220
numhits = 0

[state 3250,疑似ヒットスパーク]
type=explod
trigger1=animelemtime(22)=0
trigger1= movehit
anim=6100
pos=50,-50
scale=const(size.xscale),const(size.yscale)
sprpriority=1
ownpal=1

[state 3250,疑似SE]
type=playsnd
trigger1=animelemtime(22)=0
trigger1= movehit
value=5,3


[State 3200]
type = playsnd
trigger1 = animelem = 3
value = 0,23

[State 3200, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value =0
ctrl = 1

;---------------------------------------------------------------------------
;電気椅子　発動
[Statedef 3210]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 3210
sprpriority = 2

[State 3210]
type = PosAdd
trigger1 = time = 0
trigger1 = frontedgebodydist <= 100
x = -60

[State 3200]
type = playsnd
trigger1 = animelem = 1
value = 0,11

[State 3200]
type = Helper
trigger1 = Animelem = 3
stateno = 3260
id = 3260
pos = 100,0
postype = p1
ownpal = 1
sprpriority = 2
name = "chair"

[State 3210]
type = targetbind
trigger1 = animelem = 1
trigger2 = animelem = 3
pos = 60,-65

[State 3210]
type = targetbind
trigger1 = animelem = 2
pos = 87,-65

[State 3230]
type = Targetstate
trigger1 = numhelper(3260) = 1
trigger1 = helper(3260),stateno = 3261
value = 3240

[State 3210]
type = changestate
trigger1 = numhelper(3260) = 1
trigger1 = helper(3260),stateno = 3261
value = 3230

;---------------------------------------------------------------------------
;電気椅子　攻撃
[Statedef 3230]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 3230
sprpriority = 2

[State 3230]
type = Targetstate
trigger1 = time = 0
value = 3240


[State 3015];電気エフェクト
type = Explod
trigger1 = timemod = 10,0
anim = 6115
id = 6115
pos = 70,-20
vel = 0,-5.5
postype = p1
sprpriority = 3
ownpal = 1
removeongethit = 1

[State 3210]
type = targetbind
trigger1 = animelem = 1
trigger2 = animelem = 3
pos = 60,-10

[State 3230]
type = playsnd
trigger1 = time = 0
value = 3000,random%3
channel = 0

[State 3230]
type = TargetLifeAdd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 6
trigger3 = AnimElem = 9
value = -65
kill = 0

[State 3230]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,13


[State 3230]
type = changestate
trigger1 = animtime = 0
value = 3235

;---------------------------------------------------------------------------
;待機
[Statedef 3235]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 3250
sprpriority = 2

[State 3250]
type = targetbind
trigger1 = time = 0
pos = 87,-65

[State 3250]
type = targetstate
trigger1 = time = 0
value = 3255


[State 3230]
type = changestate
trigger1 = animtime = 0
value = 3250


;---------------------------------------------------------------------------
;電気椅子　相手
[Statedef 3220]
type    = A
movetype= H
physics = N
velset = 0,0

[State 3220, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 3220

[STate 3220]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1,0

;---------------------------------------------------------------------------
[Statedef 3240]
type    = A
movetype= H
physics = N
velset = 0,0

[State 3240, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 3240

[STate 3240]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1,0

[State 3240]
type = PalFX
trigger1 = AnimElem = 3 && anim = 3240
trigger2 = AnimElem = 6 && anim = 3240
trigger3 = AnimElem = 9 && anim = 3240
time = 12
add = 159,159,150
sinadd = 20,20,130,5
mul = 81,82,150
invertall = 0
color = 0

;---------------------------------------------------------------------------
[Statedef 3255]
type    = A
movetype= H
physics = N
velset = 0,0

[State 3260]
type = ChangeAnim2
Trigger1 = Time = 0
value = 3255

[STate 3260]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1,0

;---------------------------------------------------------------------------
;投げ
[Statedef 3250]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 3256
sprpriority = 2

[State 3250]
type = targetstate
trigger1 = time = 0
value = 3251


[State 3250]
type = sprpriority
trigger1 = animelem = 6
value = -2

[State 3250]
type = sprpriority
trigger1 = animelem = 8
value = 2

[State 3250]
type = targetlifeadd
trigger1 = animelem = 8
value = ifelse(var(26),-90,-60)

[State 3250]
type = PlaySnd
trigger1 = animelem = 8
value = 5,5

[state 3250,疑似ヒットスパーク]
type=explod
trigger1=animelemtime(8)=0
anim=6102
pos=50,-50
scale=const(size.xscale),const(size.yscale)
sprpriority=1
ownpal=1

[State 3250]
type = changestate
trigger1 = animtime = 0 && Anim = 3256
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[Statedef 3251]
type    = A
movetype= H
physics = N
velset = 0,0

[State 3251, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 3257

[STate 3251]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1,0

[State 3251, 1]
type = Velset
Trigger1 = animelem = 9
x = -8
y = -5

[State 3251, 1]
type = VelAdd
Trigger1 = animelem = 9 ,>= 0
y = .4

[State 3251, 2]
type = ChangeState
triggerall = Vel Y > 0
triggerall = Pos Y >= -50
triggerall = alive
triggerall = CanRecover
triggerall = animelem = 11, >= 0
trigger1 = Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 3251, 3]
type = SelfState
triggerall = Vel Y > -30
triggerall = alive
triggerall = CanRecover
triggerall = animelem = 11, >= 0
trigger1 = Command = "recovery"
value = 5210 ;HITFALL_AIRRECOVER

[State 3251, 4]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -30
value = 5100 ;Hit ground

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;電気椅子　椅子00
[Statedef 3260]
type    = A
movetype= I
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = 3260
sprpriority = -1

[State 3260]
type = ChangeState
trigger1 = animtime = 0
value = 3261

;---------------------------------------------------------------------------
;電気椅子　椅子01
[Statedef 3261]
type    = A
movetype= I
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = 3261
sprpriority = -1

[State 3261]
type = changeanim
trigger1 = root,stateno = 3230
value = 3261
persistent = 0

[State 3000];電撃SE
type = playsnd
trigger1 = time = 0
trigger2 = time = 20
trigger3 = time = 40
value=5,12

[State 3000];電撃エフェクト1
type = Explod
triggerall = Anim = 3261
trigger1 = time = 0
anim = 6114
pos = -20,-80
postype = p1
sprpriority = 4
bindtime = -1
ownpal = 1
shadow = 0,0,0
removeongethit = 1

[State 3000];電撃エフェクト2
type = Explod
triggerall = Anim = 3261
trigger1 = time = 20
anim = 6115
pos = -20,-80
postype = p1
sprpriority = 4
bindtime = -1
ownpal = 1
shadow = 0,0,0
removeongethit = 1

[State 3000];電撃エフェクト3
type = Explod
triggerall = Anim = 3261
trigger1 = time = 40
anim = 6116
pos = -20,-80
postype = p1
sprpriority = 4
bindtime = -1
ownpal = 1
shadow = 0,0,0
removeongethit = 1

[State 3261]
type = changestate
trigger1 = animtime = 0 && Anim = 3261
value = 3261

[State 3261]
type = changestate
trigger1 = root,stateno = 3235
value = 3262

;---------------------------------------------------------------------------
;電気椅子　椅子02
[Statedef 3262]
type    = A
movetype= I
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = 3262
sprpriority = -1


[State 3261]
type = changestate
trigger1 = root,stateno = 3250
value = 3263

;電気椅子　椅子03
[Statedef 3263]
type = A
movetype = I
physics = N
ctrl = 0
sprpriority = -2
poweradd = 0
velset = 0,0
anim = 3263


[State 3262]
type = Destroyself
trigger1 = animtime = 0

;---------------------------------------------------------------------------
;===========================================================================
;---------------------------------------------------------------------------
;ファイトクラブだ！
[Statedef 3100]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd = 0
ctrl = 0
velset = 0,0
anim = 3100
sprpriority = 2
facep2 = 1

[state 3100,無敵]
type=nothitby
trigger1=time=[0,1]
value=sca

[state 3100,カットイン]
type=helper
triggerall=!numhelper(4999)
trigger1=time=1
helpertype=normal
name="cutin"
id=4999
pos=0,0
postype=back
facing=1
stateno=4999
keyctrl=0
ownpal=0
supermovetime=2147483647

[state 3100,暗転]
type=superpause
trigger1=time=1
pos=-20,-75
anim=s6000
sound=s4999,0
poweradd=-1000
time=45
darken=0
p2defmul=1


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
trigger1 = time = 0
trigger1 = numhelper(3110) = 0
helpertype = normal
name = "westwood"
stateno = 3110
id = 3110
pos = 40, 0
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
;ウェストウッド登場
[Statedef 3110]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,0
anim = 3110
sprpriority = 7

[State 2300, zonnbi tomaru]
type = nothitby
trigger1 = 1
value = SCA,NA

[State 440, 4]
type = ChangeState
trigger1 = animelem = 2
value = 3111

;---------------------------------------------------------------------------
;ウェストウッド　サバイバー呼び出し
[Statedef 3111]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,0
anim = 3111
sprpriority = 1


[State 44792, 0]
type = PlaySnd
trigger1 = time = 0
value = 3100,random%3


[State 1027, helper]
type = Helper
trigger1 = animelem = 6
trigger1 = numhelper(3120) = 0
helpertype = normal
name = "survive"
stateno = 3120
id = 3120
pos = 0, 0
postype = back
ownpal = 1
facing = 1
supermovetime = 0
pausemovetime = 0

[State 44792, 7]
type = nothitby
trigger1 = 1
value = SCA,NA
time = 1

[State 440, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 3112

;---------------------------------------------------------------------------
;ウェストウッド退場
[Statedef 3112]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,0
anim = 3112
sprpriority = 7

[State 2300, zonnbi tomaru]
type = nothitby
trigger1 = 1
value = SCA,NA

[State 3010, 2]
type = destroyself
trigger1 = animtime = 0

;---------------------------------------------------------------------------
サバイバー
[Statedef 3120]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,0
anim = 99999
sprpriority = -1

[state 4010,サバイバー表示]
type=explod
trigger1=time=0
anim=3120
pos=0,0
postype=p1
removetime= 1200
ownpal=1
scale = 0.5,0.5

[state 4010,サバイバー表示]
type=explod
trigger1=time=0
anim=3120
pos=120,0
postype=p1
removetime= 1200
ownpal=1
scale = 0.5,0.5

[state 4010,サバイバー表示]
type=explod
trigger1=time=0
anim=3120
pos=240,0
postype=p1
removetime= 1200
ownpal=1
scale = 0.5,0.5

[state 4010,サバイバー表示]
type=explod
trigger1=time=0
anim=3120
pos=360,0
postype=p1
removetime= 1200
ownpal=1
scale = 0.5,0.5

[state 4010,サバイバー表示]
type=explod
trigger1=time=0
anim=3120
pos=480,0
postype=p1
removetime= 1200
ownpal=1
scale = 0.5,0.5

[state 4010,サバイバー表示]
type=explod
trigger1=time=0
anim=3120
pos=-120,0
postype=p1
removetime= 1200
ownpal=1
scale = 0.5,0.5

[state 4010,サバイバー表示]
type=explod
trigger1=time=0
anim=3120
pos=-240,0
postype=p1
removetime= 1200
ownpal=1
scale = 0.5,0.5

[state 4010,サバイバー表示]
type=explod
trigger1=time=0
anim=3120
pos=-360,0
postype=p1
removetime= 1200
ownpal=1
scale = 0.5,0.5

[state 4010,サバイバー表示]
type=explod
trigger1=time=0
anim=3120
pos=-480,0
postype=p1
removetime= 1200
ownpal=1
scale = 0.5,0.5

[State 3010, 2]
type = destroyself
trigger1 = time =1200


;===========================================================================
;攻撃は絶対ッ！
[Statedef 4000]
type    = S
movetype= A
physics = N
juggle  = 4
poweradd= 0
ctrl = 0
velset = 0,0
anim = 4000
sprpriority = 2

;---------------------------------------------------
[state 4000,カットイン]
type=helper
triggerall=!numhelper(4999)
trigger1=time=0
helpertype=normal
name="cutin"
id=4999
pos=0,0
postype=back
facing=1
stateno=4999
keyctrl=0
ownpal=0
supermovetime=2147483647

[state 4000,暗転]
type=superpause
trigger1=time=0
pos=15,-75
anim=s6000
sound=s4999,0
poweradd=-1000
time=45
darken=0
p2defmul=1

[state 4000,無敵]
type=nothitby
trigger1=movehit
trigger1=numtarget(4000)
value=sca

;---------------------------------------------------

[State 4000, Width]
type = Width
trigger1 = Animelem = 7,>= 0
edge = 40

[State 4000, PlaySnd]
type = PlaySND
trigger1 = AnimElem = 6
value = 64,0
channel = 0

[State 4000, PlaySnd]
type = PlaySND
trigger1 = time = 0
value = 4000,random%3
channel = 0

[State 4000, PosAdd]
type = PosAdd
trigger1 = Animelem = 5 || AnimElem = 6 || AnimElem = 7
x = 8

[State 4000, VelSet]
type = VelSet
trigger1 = Animelem = 7
y = -10.5
x = 3

[State 4000, VelSet]
type = VelAdd
trigger1 = Animelem = 7,>= 0
y = .32

[State 4000, VelMul]
type = VelMul
trigger1 = Animelem = 7,>= 0
x = .95

[State 4000, VelMul]
type = VelMul
trigger1 = Animelem = 7,<= 0
y = .95

[State 4000, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 7
StateType = A
physics = N

[State 4000, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, SA
animtype = Hard
damage = 90, 30
guardflag = MA
hitflag = MAF
pausetime = 16, 16
sparkno=s6102
guard.sparkno=s6125
sparkxy = -20, -55
hitsound=s5,2
guardsound=s6,0
ground.type = Low
guard.slidetime = 6
ground.hittime  = 15
ground.velocity = -2,-8.5
air.velocity = -2,-7.5
fall = 1
fall.recover = 0
palfx.time = 48
palfx.color = 0
palfx.invertall = 1
palfx.add = 120,40,8
palfx.sinadd = 40,8,8,8
kill=0

[state 4010,背景演出用ヘルパー]
type=helper
trigger1=time=0
helpertype=normal
name="haikei"
ID=4010
pos=0,0
postype=back
stateno=4012
ownpal=1

[State 4000, Changestate]
type = Changestate
trigger1 = Animtime = 0
value = 4010

;------------------------------------------------------------------------------
;攻撃は絶対ッ！ 下降
[Statedef 4010]
type    = A
movetype= A
physics = N
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,0
anim = 4010
sprpriority = 3

[State 4010, Width]
type = Width
trigger1 = Animelem = 1,>= 0
edge = 40

[State 4010, PlaySnd]
type = PlaySND
trigger1 = AnimElem = 2
value = 64,2

[State 4010, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 7.5
y = 9

[State 4010, HitDef]
type = HitDef
trigger1 = time = 0
attr = A, SA
animtype = DiagUp
damage = 120,40
guardflag = MA
hitflag = MAF
pausetime = 24, 24
sparkno=s6102
guard.sparkno=s6125
sparkxy = -20, -20
hitsound=s5,2
guardsound=s6,0
ground.type = High
guard.slidetime = 6
ground.hittime  = 15
ground.velocity = -6.5,-7.5
air.velocity = -6.5, -7.5
fall = 1
fall.recover = 0
palfx.time = 48
palfx.color = 0
palfx.invertall = 1
palfx.add = 120,40,8
palfx.sinadd = 40,8,8,8

[State 4010, ChangeState]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 4020

;------------------------------------------------------------------------------
;攻撃は絶対ッ！ 着地
[Statedef 4020]
type = S
movetype = I
physics = S
anim = 4020
ctrl = 0
velset = 0,0
sprpriority = 2



[State 4020, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 4020, Changestate]
type = Changestate
trigger1 = Animtime = 0
value = 0
ctrl = 1


;------------------------------------------------------------------------------
;攻撃は絶対ッ:背景
[statedef 4012]
anim=99999
type=u
movetype=i
phtsics=n
ctrl=0

[state 4012,ステージ背景を隠す]
type=assertspecial
trigger1=1
flag=nobg
flag2=nofg

[state 4012,背景1-1]
type=explod
trigger1=time=0
anim=6005
id=6005
postype=back
pos=0,0
scale=1,240.0/287
removetime=-1
bindtime=-1
sprpriority=-100
pausemovetime=2147483647
supermovetime=2147483647

[state 4012,背景1-2]
type=explod
trigger1=time=0
anim=6005
id=6005
postype=back
pos=512,0
scale=1,240.0/287
removetime=-1
bindtime=-1
sprpriority=-100
pausemovetime=2147483647
supermovetime=2147483647

[state 4012,背景2-1]
type=explod
trigger1=time=0
anim=6006
id=6006
postype=back
pos=0,0
scale=1,240.0/287
removetime=-1
bindtime=-1
sprpriority=-100
pausemovetime=2147483647
supermovetime=2147483647

[state 4012,背景2-2]
type=explod
trigger1=time=0
anim=6006
id=6006
postype=back
pos=512,0
scale=1,240.0/287
removetime=-1
bindtime=-1
sprpriority=-100
pausemovetime=2147483647
supermovetime=2147483647

[state 4012,背景3-1]
type=explod
trigger1=time=0
anim=6007
id=6007
postype=back
pos=0,0
scale=1,240.0/287
removetime=-1
bindtime=-1
sprpriority=-100
pausemovetime=2147483647
supermovetime=2147483647

[state 4012,背景3-2]
type=explod
trigger1=time=0
anim=6007
id=6007
postype=back
pos=512,0
scale=1,240.0/287
removetime=-1
bindtime=-1
sprpriority=-100
pausemovetime=2147483647
supermovetime=2147483647

[state 4012,背景4-1]
type=explod
trigger1=time=0
anim=6008
id=6008
postype=back
pos=0,0
scale=1,240.0/287
removetime=-1
bindtime=-1
sprpriority=-100
pausemovetime=2147483647
supermovetime=2147483647

[state 4012,背景4-2]
type=explod
trigger1=time=0
anim=6008
id=6008
postype=back
pos=512,0
scale=1,240.0/287
removetime=-1
bindtime=-1
sprpriority=-100
pausemovetime=2147483647
supermovetime=2147483647

[state 3012,終了]
type=changestate
trigger1=root,stateno!=[4000,4010]
value=4013

;---------------------------------------------------------------------------
;消去
[statedef 4013]
anim=99999
type=u
movetype=i
phtsics=n
ctrl=0

[state 3013,消去]
type=removeexplod
trigger1=time=0

[state 3013,終了]
type=destroyself
triggerall=ishelper
trigger1=time=0


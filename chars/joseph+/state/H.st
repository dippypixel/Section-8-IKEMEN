[Statedef 20750 - Joseph Stylish Cancel]
type = U
physics = N
anim = 750
velset = 0,0
sprpriority = 4

[State 100, 2]
type = turn
trigger1 = facing != root,facing

[State 1505,0]
type = BindToParent
trigger1 = rootdist x <= 12
pos = -12,0

[State 1100, Velocity]
type = VelSet
trigger1 = rootdist x > 12
x = ifelse((rootdist x-12)>7,7,(rootdist x-12))

[State 1100, Velocity]
type = VelSet
trigger1 = rootdist x <= 12
x = 0

[State 1201, screenbound]
type = screenbound
trigger1 = !root,var(50)
trigger1 = !root,stateno=1550
value = 1

[State 2600, ChangeState]
type = changeanim
trigger1 = parent,var(35) = 1
trigger2 = parent,var(0) = -1
trigger3 = parent,var(0) = 2
value = anim
elem = AnimElemNo(0)-!AnimElemTime(AnimElemNo(0))
persistent = 1

[State 2600, posfreeze]
type = posfreeze
trigger1 = parent,var(35) = 1
trigger2 = parent,var(0) = -1
trigger3 = parent,var(0) = 2

[State 2600, ChangeState]
type = ParentVarSet
trigger1 = 1
var(35) = 1

[State 2600, ChangeState]
type = ChangeState
trigger1 = root,stateno = 1250
trigger2 = root,stateno = 3250 && root,time = 1
trigger3 = root,stateno = 850 && root,time = 1
value = 20000

[State 2600, ChangeState]
type = ChangeState
trigger1 = root,stateno = 3350 && root,time = 1
value = 23350

[State 2600, ChangeState]
type = ChangeState
trigger1 = root,stateno = 3550 && root,time = 1
value = 23500

[State 2600, ChangeState]
type = ChangeState
trigger1 = root,stateno = 3650 && root,time = 1
value = 23650

[State 2600, ChangeState]
type = ChangeState
triggerall = time > 1
trigger1 = (root,stateno = [300,599]) && root,statetype = S && root,time = 1
trigger2 = root,stateno = 1050 && root,time = 1
trigger3 = root,stateno = 1150 && root,time = 1
trigger4 = root,stateno = 1151 && root,time = 1
trigger5 = root,stateno = 1550 && root,time = 1
value = 21000

[State 2600, ChangeState]
type = ChangeState
triggerall = time > 1
trigger1 = (root,stateno = [300,599]) && root,statetype = C && root,time = 1
value = 21005

[State 2600, ChangeState]
type = ChangeState
triggerall = time > 1
trigger1 = root,stateno = 2500 && root,time = 1
value = 22500

[State 2600, ChangeState]
type = ChangeState
triggerall = time > 1
trigger1 = root,stateno = 2501 && root,time = 1
value = 22501

[State 0, 1]
type = ChangeAnim
triggerall = time > 1
trigger1 = (root,stateno = [0,159]) && root,time = 1
value = root,anim-10000

[State 0, 1]
type = ChangeAnim
triggerall = time > 1
trigger1 = (root,stateno = [99900,99920]) && root,time = 1
value = root,anim-10000

[State 2600, ChangeState]
type = ChangeState
triggerall = time > 1
trigger1 = root,ctrl || root,stateno = 830 || root,stateno = 10820
trigger2 = root,movetype = H
value = 20001

[State 2600, ChangeState]
type = ChangeState
triggerall = time > 1
trigger1 = !var(0) && root,stateno = 3200
value = 20000

[State 2600, ChangeState]
type = ChangeState
triggerall = time > 1
trigger1 = root,stateno = 840 && root,time = 1
value = 21000

[State 2600, ChangeState]
type = ChangeState
Trigger1 = Root,stateno = 4550 && Root,time <= 1
value = 24550

[State 2600, ChangeState]
type = ChangeState
Trigger1 = Root,stateno = [1251125,1251127]
value = 20000

[State 2600, ChangeState]
type = ChangeState
triggerall = root,movetype != H 
trigger1 = root,stateno = 750
value = 20750

[Statedef 755 - Stylish Cancel Helper]
type     = S
movetype = I
physics  = S
anim     = 1251199
velset   = 0,0
ctrl     = 0

[State 750]
type = AssertSpecial
trigger1 = 1
flag = nofg

[State 750]
type = BGPalFX
trigger1 = time <= 31
time = 1
add = 0,0,0
mul = 76,76,76
sinadd = 256,256,256,10
invertall = 0
color = 256
[State 750]
type = BGPalFX
trigger1 = time > 31
time = 1
add = 0,0,0
mul = (76+9*(time-31)),(76+9*(time-31)),(76+9*(time-31))
sinadd = 256,256,256,10
invertall = 0
color = 256

[State 750, ??????]
type = DestroySelf
trigger1 = time >= 51

[Statedef 750 - Stylish Cancel]
type     = S
movetype = I
physics  = S
anim     = cond(var(49)=10000,10195,750)
;velset   = 0,0
ctrl     = 0

[State 200, 7 - Fixed Bug]
type = TargetState
trigger1 = prevstateno = 1151
trigger1 = !var(24)
trigger1 = numtarget
trigger1 = target,stateno != [2600,2601]
trigger1 = target,stateno != [150,155]
trigger1 = !var(0)
value = 2700
ignorehitpause = 0
persistent = 0

[State 750]
type = PosFreeze
trigger1 = 1
value = 1

[State 900]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 750]
type = PowerAdd
trigger1 = Time = 0
value = -500

[State 750, helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "bgef"
ID = 755
pos = 40, -80
postype = p1
facing = 1
stateno = 755
keyctrl = 0
ownpal = 1
supermovetime = 9999
pausemovetime = 9999

[State 20000]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "moji"
ID = 20026
pos = 0, -75
postype = p1
facing = facing
stateno = 20026
keyctrl = 0
ownpal = 1
supermovetime = 99999
pausemovetime = 99999
size.xscale = 1
size.yscale = 1
ignorehitpause = 1

[State 750]
type = PlaySnd
trigger1 = time = 0
value = s6,21
channel = -1
[State 750]
type = PlaySnd
trigger1 = time = 0
value = s750,0+random%2
channel = 0

[State 750]
type = Pause
trigger1 = time = 0
time = 31
anim = -1
sound = -1
pos = 0,-50
movetime = 31
darken = 0
p2defmul = 1
poweradd = 0
unhittable = 1

;????????
[State -2]
type = VelSet
trigger1 = 1;animtime = 0
x = 0
ignorehitpause = 1

[state 0 - No corner push]
type = varset
trigger1 = time = 0
var(24) = 0

[state 0 - No corner push]
type = varset
trigger1 = time = 0
fvar(2) = 0

[State 750, ??????]
type = ChangeState
trigger1 = !var(49)
trigger1 = AnimTime = 0
trigger2 = var(49)
trigger2 = time >= 31
value = 0
ctrl = 1

[Statedef 1250 - Assist]
type = S
movetype = A
physics = N
juggle = 0
ctrl = 0
anim = 1000
velset = 0,0

[State 220, Position]
type = PosSet
trigger1 = Time = 0
y = 0

[State 220, Position]
type = PosAdd
triggerall = var(0) != -1
triggerall = var(0) != 2
trigger1 = Time = 0
x = -12

[State 1100, VarSet]
type = VarSet
trigger1 = Time = 0
var(49) = 0

[State 1100, VarSet]
type = VarSet
trigger1 = Time = 0
var(9) = 1

[State 220, Position]
type = PosAdd
triggerall = var(0) != -1
triggerall = var(0) != 2
triggerall = time > 1
trigger1 = NumHelper(10000)
trigger1 = helper(10000),stateno = 10000
x = 12

[State 1100, VarSet]
type = VarSet
triggerall = time > 1
trigger1 = NumHelper(10000)
trigger1 = helper(10000),stateno = 10000
var(49) = 10000

[State 52, Effect]
type = AssertSpecial
triggerall = time > 1
trigger1 = NumHelper(10000)
trigger1 = helper(10000),stateno = 10000
flag = noshadow
ignorehitpause = 1

[State 220, 3]
type = ChangeState
triggerall = time > 1
trigger1 = NumHelper(10000)
trigger1 = helper(10000),stateno = 10000
value = 0
ctrl = 1

[State 2600, ChangeState]
type = ChangeState
triggerall = IsHelper
triggerall = root,movetype != H 
trigger1 = root,stateno = 750
value = 10000

[State 8500, 1]
type = varset
triggerall = numhelper(33333)
triggerall = var(59) >= 1 || helper(33333),fvar(1)
triggerall = time = 0
triggerall = p2stateno != [120,155]
triggerall = p2statetype = S
triggerall = enemynear,const(size.head.pos.y) <= -80
triggerall = numhelper(33333) && numhelper(22222)
triggerall = p2bodydist x <= 30
triggerall = random < 750
trigger1 = helper(22222),rootdist X >= 300 && facing = 1
trigger2 = helper(33333),rootdist X >= 300 && facing = -1
fvar(37) = 2

[State 220, Voice]
type = StopSnd
trigger1 = parent,stateno = 12200 || parent,stateno = 12300
trigger2 = root,movetype = H
trigger3 = parent,stateno = 1150
trigger4 = parent,stateno = 1160
trigger5 = parent,stateno = 1170
trigger6 = parent,stateno = 1180
trigger7 = var(0) = 1
trigger8 = parent,stateno = 3050 && parent,time = 1
trigger9 = parent,stateno = 3060 && parent,time = 1
trigger10 = parent,stateno = 3150 && parent,time = 1
trigger11 = parent,stateno = 850 && parent,time = 1
trigger12 = parent,stateno = 13100 && parent,time = 1
trigger13 = parent,stateno = 13000 && parent,time = 1
trigger14 = root, stateno = 1251125
trigger15 = root, stateno = 1251127
trigger16 = root,stateno = 1251126
trigger17 = root,stateno = 750
channel = 0


[State -2, CornerPush]
type = PosAdd
triggerall = stateno != 750
triggerall = var(0) != -1
triggerall = var(0) != 1
triggerall = var(0) != 2
triggerall = !NumHelper(8000) && !NumHelper(8001)
triggerall = NumHelper(10000)
triggerall = !Helper(10000),NumHelper(8000) && !Helper(10000),NumHelper(8001)
triggerall = StateType != A || (StateType = A && !var(49) && !var(8))
trigger1 = fvar(3)
x = -fvar(3)

[State 2600, ChangeState]
type = ChangeState
triggerall = root,movetype != H 
trigger1 = root,stateno = 750
value = 20750

[Statedef 200000 - Kanji]
type     = A
movetype = I
physics  = N
juggle   = 1
ctrl     = 0
anim     = 200000
poweradd = 0
sprpriority = 6

[State 20000]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 20000]
type = VarSet
trigger1 = time = 0
fv = 20
value = 0.4
[State 20000]
type = VarAdd
trigger1 = time%2 = 0
fv = 20
value = 0.01

[State 20000]
type = AngleDraw
trigger1 = 1
scale = fvar(20),fvar(20)


[State 20000]
type = DestroySelf
trigger1 = time > 30

[Statedef 9502]
type = S
anim = 9502
velset = 0,0
sprpriority = 10
ctrl = 0

[State 20502, 影なし]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 20502, ターン]
type = Turn
trigger1 = Time = 0
trigger1 = root,facing = -1
persistent = 0
ignorehitpause = 1

[State 20502, 拡大前1.0スケール固定]
Type = AngleDraw
Trigger1 = time >= 5
Value = 0
scale = 0.5,0.5
ignorehitpause = 1

[State 20502, 拡大]
Type = AngleDraw
Trigger1 = time < 5
Value = 0
scale = 0.3+(time - 1) * 0.05, 0.3+(time - 1) * 0.05
ignorehitpause = 1

[State 20502, 消去]
type = DestroySelf
Triggerall = !Parent,Ishelper(7701)
trigger1 = time >= 28
trigger2 = root,movetype = H	;フェール
trigger3 = root,statetype = L	;フェール

[State 20502, 消去]
type = DestroySelf
Triggerall = Parent,Ishelper(7701)
trigger1 = time >= 28

[Statedef 9503]
type = S
anim = 9503
velset = 0,0
sprpriority = 10
ctrl = 0

[State 20503, 影なし]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 20503, ターン]
type = Turn
trigger1 = Time = 0
trigger1 = root,facing = -1
persistent = 0
ignorehitpause = 1

[State 20503, 1.0スケール固定]
Type = AngleDraw
Trigger1 = 1
Value = 0
scale = 0.5,0.5
ignorehitpause = 1

[State 20503, 消去]
type = DestroySelf
trigger1 = animtime = 0

[Statedef 200010]
type     = A
movetype = I
physics  = N
juggle   = 1
ctrl     = 0
anim     = 200010
poweradd = 0
sprpriority = 6

[State 20000]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 20000]
type = VarSet
trigger1 = time = 0
fv = 20
value = 0.5
[State 20000]
type = VarAdd
trigger1 = time%2 = 0
fv = 20
value = 0.01

[State 20000]
type = AngleDraw
trigger1 = 1
scale = fvar(20),fvar(20)


[State 20000]
type = DestroySelf
trigger1 = time > 30

[Statedef 20002]
type     = A
movetype = I
physics  = N
juggle   = 1
ctrl     = 0
anim     = 20002
poweradd = 0
sprpriority = 6

[State 20000]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 20000]
type = VarSet
trigger1 = time = 0
fv = 20
value = 0.4
[State 20000]
type = VarAdd
trigger1 = time%2 = 0
fv = 20
value = 0.01

[State 20000]
type = AngleDraw
trigger1 = 1
scale = fvar(20),fvar(20)


[State 20000]
type = DestroySelf
trigger1 = time > 30

[Statedef 20003]
type     = A
movetype = I
physics  = N
juggle   = 1
ctrl     = 0
anim     = 20003
poweradd = 0
sprpriority = 6

[State 20000]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 20000]
type = VarSet
trigger1 = time = 0
fv = 20
value = 0.4
[State 20000]
type = VarAdd
trigger1 = time%2 = 0
fv = 20
value = 0.01

[State 20000]
type = AngleDraw
trigger1 = 1
scale = fvar(20),fvar(20)


[State 20000]
type = DestroySelf
trigger1 = time > 30

[Statedef 20026]
type     = A
movetype = I
physics  = N
juggle   = 1
ctrl     = 0
anim     = 20026
poweradd = 0
sprpriority = 11

[State 20000]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 20000]
type = VarSet
trigger1 = time = 0
fv = 20
value = 0.4
[State 20000]
type = VarAdd
trigger1 = time%2 = 0
fv = 20
value = 0.01


[State 20000]
type = AngleDraw
trigger1 = 1
scale = fvar(20),fvar(20)


[State 20000]
type = DestroySelf
trigger1 = time > 30

;忘れぬ想い(初撃)
[statedef 3000]
type=s
movetype=a
physics=s
velset=0,0
anim=3000
ctrl=0

[state 3000,カットイン]
type=helper
triggerall=!numhelper(4999)
trigger1=animelemtime(5)=0
helpertype=normal
name="cutin"
id=4999
pos=0,0
postype=back
facing=1
stateno=4999
ownpal=0
supermovetime=2147483647

[state 3000,暗転]
type=superpause
trigger1=animelemtime(5)=0
pos=15,-75
anim=s6000
sound=s4999,0
poweradd=-1000
time=45
darken=0
p2defmul=1

[state 3000,無敵]
type=nothitby
trigger1=animelemtime(5)>=0
trigger1=animelemtime(9)<0
trigger2=movehit
trigger2=numtarget(3000)
value=sca

[state 3000,初撃]
type=hitdef
triggerall=roundstate=2
trigger1=animelemtime(8)=0
attr=s,ha
damage=7,0
getpower=0,0
animtype=up
guardflag=m
pausetime=3,6
sparkno=s6104
guard.sparkno=s6125
sparkxy=0,-110
hitsound=s5,5
guardsound=s6,0
ground.type=high
ground.velocity=-0.8,-12
air.velocity=-0.8,-12
guard.velocity=-3
airguard.velocity=-3,-3
ground.slidetime=12
ground.hittime=12
air.hittime=12
p2facing=1
yaccel=0.4
p2facing=1
fall=1
fall.recover=0
kill=0
priority=6,hit
id=3000

[state 3000,命中]
type=changestate
triggerall=roundstate=2
triggerall=animelemtime(9)=0
trigger1=movehit
trigger1=numtarget(3000)
value=3010

[state 3000,失敗]
type=changestate
trigger1=animtime=0
value=0
ctrl=1

;---------------------------------------------------------------------------
;忘れぬ想い(成功)
[statedef 3010]
type=s
movetype=a
physics=s
anim=3010

[state 3010,ガード認識距離]
type=attackdist
trigger1=1
value=0

[state 3010,対象ステート]
type=targetstate
trigger1=time=0
value=3020
id=3000

[state 3010,こっちを向かせる]
type=targetfacing
trigger1=animelemtime(16)<60
value=-1
id=3000

[state 3010,対象の速度]
type=targetvelset
trigger1=time=0
x=-0.8
y=-12
id=3000

[state 3010,背景を暗く]
type=bgpalfx
trigger1=time=0
time=42
mul=128,128,128

[state 3010,在りし日のシーザー]
type=explod
trigger1=time=0
anim=8000
id=8000
pos=floor(ifelse(facing=1,screenpos x,320-screenpos x)),0
postype=back
bindtime=-1
supermovetime=42
pausemovetime=42
ontop=1
ownpal=1

[state 3010,ｼｨｰｻﾞｧｰ]
type=playsnd
trigger1=time=0
value=3000,0
channel=0

[state 3010,一時停止]
type=pause
trigger1=time=0
time=42

[state 3010,対象の位置]
type=targetbind
trigger1=animelemno(0)=16
pos=100,-20
id=3000

[state 3010,背景演出用ヘルパー]
type=helper
trigger1=animelemtime(16)=0
helpertype=normal
name="omoide_BG"
ID=3000
pos=0,0
postype=back
stateno=3012
ownpal=1

[state 3010,ｷﾗｰﾝ]
type=explod
trigger1=animelemtime(16)=-9
anim=8011
id=8011
pos=100,-80
postype=p1
scale=const(size.xscale),const(size.yscale)
bindtime=-1
ontop=1
ownpal=1

[state 3010,連続ヒット:ダメージ]
type=targetlifeadd
triggerall=animelemtime(16)=[0,59]
trigger1=animelemtime(16)%12=0
value=-floor(42*const(data.attack)*fvar(0)*fvar(1)*fvar(39)/100)
kill=0
id=3000

[state 3010,連続ヒット:被ダメゲージ増加]
type=targetpoweradd
triggerall=animelemtime(16)=[0,59]
trigger1=animelemtime(16)%12=0
value=25
id=3000

[state 3010,連続ヒット:ヒット数]
type=hitadd
triggerall=animelemtime(16)=[0,60]
trigger1=animelemtime(16)%12=0
value=numtarget(3000)

[state 3010,連続ヒット:ヒット数]
type=varadd
triggerall=var(1)
triggerall=animelemtime(16)=[0,60]
trigger1=animelemtime(16)%12=0
var(3)=1

[state 3010,連続ヒット:疑似ヒット音]
type=playsnd
triggerall=animelemtime(16)=[0,59]
trigger1=animelemtime(16)%12=0
value=5,5

[state 3010,連続ヒット:疑似ヒットスパーク]
type=explod
triggerall=animelemtime(16)=[0,60]
trigger1=animelemtime(16)%12=0
anim=6104
pos=-10,-80
postype=p2
ontop=1
ownpal=1

[state 3010,フィニッシュ:ダメージ]
type=targetlifeadd
trigger1=animelemtime(16)=60
value=-floor(84*const(data.attack)*fvar(0)*fvar(1)*fvar(39)/100)
id=3000

[state 3010,フィニッシュ:被ダメゲージ増加]
type=targetpoweradd
trigger1=animelemtime(16)=60
value=55
id=3000

[state 3010,フィニッシュ:疑似ヒット音]
type=playsnd
trigger1=animelemtime(16)=60
value=5,105

[state 3010,対象ステート変更]
type=targetstate
trigger1=animelemtime(16)=60
value=3021
id=3000

[state 3010,今も我が心に…]
type=playsnd
trigger1=animelemtime(17)=0
value=3000,2
channel=0

[state 3010,カメラ固定]
type=screenbound
trigger1=animelemtime(17)>=0
trigger2=anim=0
value=0

[state 3010,待機]
type=changestate
trigger1=animtime=0
value=3011

;---------------------------------------------------------------------------
;忘れぬ想い(終了後待機)
[statedef 3011]
type=s
movetype=i
phisics=s
ctrl=0
anim=0

[state 3011,ステージ背景を隠す]
type=assertspecial
trigger1=!target,stateno=5602
trigger1=!target,stateno=5100
trigger1=numtarget(3000)
flag=nobg
flag2=nofg

[state 3011,カメラ固定]
type=screenbound
trigger1=1
value=0

[state 3011,エフェクト消去]
type=removeexplod
trigger1=target,stateno=5602
trigger2=target,stateno=5100
trigger3=!numtarget(3000)

[state 3011,終了]
type=changestate
trigger1=target,stateno=5602
trigger2=target,stateno=5100
trigger3=!numtarget(3000)
value=60

;---------------------------------------------------------------------------
;忘れぬ想い:対象側
[statedef 3020]
type=a
movetype=h
phisics=n
ctrl=0

[state 3020,すり抜け]
type=playerpush
trigger1=1
value=0

[state 3020,無敵]
type=nothitby
trigger1=1
value=sca

[state 3020,アニメ変更(打ち上げ)]
type=changeanim
trigger1=time<30
value=ifelse(selfanimexist(5051),5051,5030)

[state 3020,重力]
type=veladd
trigger1=!gethitvar(isbound)
y=0.4

[state 3020,アニメ変更(落下)]
type=changeanim
trigger1=selfanimexist(5060)||selfanimexist(5061)
trigger1=time<57
trigger1=vel y>0
persistent=0
value=ifelse(selfanimexist(5061),5061,5060)

[state 3020,アニメ変更(吹っ飛ぶ)]
type=changeanim
trigger1=time=57
value=ifelse(selfanimexist(5035),5035,5030)

;---------------------------------------------------------------------------
;忘れぬ想い:対象側(壁吹っ飛び)
[statedef 3021]
type=a
movetype=h
physics=n
ctrl=0

[state 3021,すり抜け]
type=playerpush
trigger1=1
value=0

[state 3021,無敵]
type=nothitby
trigger1=1
value=sca

[state 3021,アニメ変更]
type=changeanim2
trigger1=time=0
value=5410

[state 3021,喰らい重力]
type=veladd
trigger1=1
y=0.2

[state 3021,喰らい速度]
type=velset
trigger1=time=0
x=-14
y=-5

[state 3021,吹っ飛びすぎる場合はカメラ固定]
type=screenbound
trigger1=time>40
value=0

[state 3021,壁にぶつかって落下へ]
type=changestate
trigger1=backedgebodydist<10
trigger2=frontedgebodydist<10
value=5602

[state 3021,壁まで飛ばずに落下]
type=selfstate
trigger1=pos y>=0
trigger1=vel y>0
value=5100

;---------------------------------------------------------------------------
;忘れぬ想い:背景
[statedef 3012]
anim=99999
type=u
movetype=i
phtsics=n
ctrl=0

[state 3012,ステージ背景を隠す]
type=assertspecial
trigger1=1
flag=nobg
flag2=nofg

[state 3012,背景1-1]
type=explod
trigger1=time=0
anim=6010
id=6010
postype=back
pos=0,0
scale=1,240.0/287
removetime=-1
bindtime=-1
sprpriority=-10
pausemovetime=2147483647
supermovetime=2147483647

[state 3012,背景1-2]
type=explod
trigger1=time=0
anim=6010
id=6010
postype=back
pos=512,0
scale=1,240.0/287
removetime=-1
bindtime=-1
sprpriority=-10
pausemovetime=2147483647
supermovetime=2147483647

[state 3012,背景2-1]
type=explod
trigger1=time=0
anim=6011
id=6011
postype=back
pos=0,0
scale=1,240.0/287
removetime=-1
bindtime=-1
sprpriority=-10
pausemovetime=2147483647
supermovetime=2147483647

[state 3012,背景2-2]
type=explod
trigger1=time=0
anim=6011
id=6011
postype=back
pos=512,0
scale=1,240.0/287
removetime=-1
bindtime=-1
sprpriority=-10
pausemovetime=2147483647
supermovetime=2147483647

[state 3012,背景3-1]
type=explod
trigger1=time=0
anim=6012
id=6012
postype=back
pos=0,0
scale=1,240.0/287
removetime=-1
bindtime=-1
sprpriority=-10
pausemovetime=2147483647
supermovetime=2147483647

[state 3012,背景3-2]
type=explod
trigger1=time=0
anim=6012
id=6012
postype=back
pos=512,0
scale=1,240.0/287
removetime=-1
bindtime=-1
sprpriority=-10
pausemovetime=2147483647
supermovetime=2147483647

[state 3012,背景4-1]
type=explod
trigger1=time=0
anim=6013
id=6013
postype=back
pos=0,0
scale=1,240.0/287
removetime=-1
bindtime=-1
sprpriority=-10
pausemovetime=2147483647
supermovetime=2147483647

[state 3012,背景4-2]
type=explod
trigger1=time=0
anim=6013
id=6013
postype=back
pos=512,0
scale=1,240.0/287
removetime=-1
bindtime=-1
sprpriority=-10
pausemovetime=2147483647
supermovetime=2147483647

[state 3012,想い出の日々1]
type=explod
trigger1=time=0
anim=8005
id=8005
postype=back
pos=240,60
removetime=-1
bindtime=60
sprpriority=-9
pausemovetime=2147483647
supermovetime=2147483647

[state 3012,想い出の日々2]
type=explod
trigger1=time=12
anim=8006
id=8006
postype=back
pos=80,180
removetime=-1
bindtime=48
sprpriority=-9
pausemovetime=2147483647
supermovetime=2147483647

[state 3012,想い出の日々3]
type=explod
trigger1=time=24
anim=8007
id=8007
postype=back
pos=240,180
removetime=-1
bindtime=36
sprpriority=-9
pausemovetime=2147483647
supermovetime=2147483647

[state 3012,想い出の日々4]
type=explod
trigger1=time=36
anim=8008
id=8008
postype=back
pos=80,60
removetime=-1
bindtime=24
sprpriority=-9
pausemovetime=2147483647
supermovetime=2147483647

[state 3012,想い出の日々:シメ]
type=explod
trigger1=time=48
anim=8010
id=8010
postype=back
pos=160,240
removetime=-1
bindtime=-1
sprpriority=-8
pausemovetime=2147483647
supermovetime=2147483647

[state 3012,終了]
type=changestate
trigger1=root,stateno!=[3010,3011]
value=3013

[state 3012,終了]
type=changestate
triggerall=winko
trigger1	=enemy,name="iggy"	;イギー
trigger1	=enemy,authorname="Gal129"
trigger2	=enemy,name="Avdul"	;アヴドゥル
trigger2	=enemy,authorname="Izumo"
trigger3	=enemy,name="Kakyoin"	;花京院
trigger3	=enemy,authorname="Izumo"
trigger4	=enemy,name="Polnareff"	;ポルナレフ
trigger4	=enemy,authorname="Izumo"
trigger5	=enemy,name="Shadow Dio"	;影DIO
trigger5	=enemy,authorname="kikurage"
trigger6	=enemy,name="Young Joseph +"	;若ジョセフ
trigger6	=enemy,authorname="Men'sClub"
trigger7	=enemy,name="petshop"	;ペットショップ
trigger7	=enemy,authorname="rei"
trigger8	=enemy,name="DIO BRANDO"	;ハイDIO
trigger8	=enemy,authorname="Shio"
trigger9	=enemy,name="blackpolnareff"	;アヌポル
trigger9	=enemy,authorname="Warusaki3"
trigger10	=enemy,name="dio"	;DIO
trigger10	=enemy,authorname="Warusaki3"
trigger11	=enemy,name="final dio"	;DIO
trigger11	=enemy,authorname="Warusaki3"
trigger12	=enemy,name="Jotaro Kujo"	;承太郎
trigger12	=enemy,authorname="Warusaki3"
trigger13	=enemy,name="shadow dio"	;影DIO
trigger13	=enemy,authorname="Warusaki3"
trigger14	=enemy,name="vanillaice"	;ヴァニラ
trigger14	=enemy,authorname="Warusaki3"
trigger15	=enemy,name="Hol horse"	;ホルホース
trigger15	=enemy,authorname="y.y"
trigger16	=enemy,name="Hol horse & Boingo"	;ホルボイ
trigger16	=enemy,authorname="y.y"
trigger17	=enemy,name="joseph"	;ジョセフ
trigger17	=enemy,authorname="y.y"
trigger18	=enemy,name="jotaro"	;承太郎
trigger18	=enemy,authorname="y.y"
trigger19	=enemy,name="Kujo Jotaro (Part4)"	;承太郎(4部)
trigger19	=enemy,authorname="y.y"
value=3013

;---------------------------------------------------------------------------
;消去
[statedef 3013]
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

;===========================================================================
;エイジャの赤石
[statedef 3100]
type=s
movetype=a
physics=s
velset=0,0
anim=3100
ctrl=0

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
poweradd=-2000
time=45
darken=0
p2defmul=1

[state 3010,刻むぜぇー波紋のビート!]
type=playsnd
trigger1=animelemtime(2)=0
value=3100,0
channel=0

[state 3010,効果音1]
type=playsnd
trigger1=animelemtime(2)=0
value=3100,1

[state 3010,赤石]
type=explod
trigger1=animelemtime(2)=0
anim=8100
pos=0,0
postype=p1
bindtime=-1
sprpriority=1
ownpal=1
removeongethit=1

[state 3010,効果音2]
type=playsnd
trigger1=animelemtime(15)=0
value=3100,2

[state 3100,ガード認識距離]
type=attackdist
trigger1=1
value=0

[state 3100,ビーム]
type=projectile
trigger1=animelemtime(15)=-4
attr=s,hp
damage=480
getpower=0,0
animtype=back
pausetime=0,30
guard.dist=0
offset=63,-88
projid=3100
projanim=8101
projhits=ifelse(var(0)&16,1000,1)
projremove=0
projremovetime=21
guardflag=
sparkxy=0,0
hitsound=-1
p2stateno=5600
ground.velocity=-10,0
air.velocity=-10,0
yaccel=0
id=3100

[state 3100,カメラ固定]
type=screenbound
trigger1=animelemtime(15)>=0
value=0

[state 3100,終了]
type=changestate
triggerall=animelemtime(17)>=0
trigger1=numtarget(3100)
trigger1=target,stateno=5602
trigger2=numtarget(3100)
trigger2=target,stateno=5100
trigger3=!numtarget(3100)
value=60

;===========================================================================
;ブッ壊すほどシュート(初撃)
[statedef 4000]
type=s
movetype=a
physics=s
velset=0,0
anim=4000
ctrl=0

[state 4000,ホラホラ行くぜぇー]
type=playsnd
trigger1=time=0
value=191,0
channel=0

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

[state 4000,初撃]
type=hitdef
triggerall=roundstate=2
trigger1=animelemtime(5)=0
attr=s,ha
animtype=diagup
damage=70,0
getpower=0,0
guardflag=ma
pausetime=13,16
sparkno=s6104
guard.sparkno=s6125
sparkxy=0,-110
hitsound=s5,5
guardsound=s6,0
ground.type=high
ground.velocity=-4,-8.5
air.velocity=-4,-8.5
airguard.velocity=-4,-3
ground.slidetime=16
ground.hittime=16
air.hittime=16
p2facing=1
yaccel=0.4
p2facing=1
fall=1
fall.recover=0
kill=0
priority=6,hit
id=4000

[state 4000,命中]
type=changestate
triggerall=roundstate=2
triggerall=animelemtime(6)=0
trigger1=movehit
trigger1=numtarget(4000)
value=4010

[state 4000,失敗]
type=changestate
trigger1=animtime=0
value=0
ctrl=1

;---------------------------------------------------------------------------
;ブッ壊すほどシュート(成功)
[statedef 4010]
type=s
movetype=a
physics=s
anim=4010

[state 4000,ホラホラ行くぜぇー]
type=playsnd
trigger1=time=34
value=10004,0
channel=0

[state 4010,対象ステート]
type=targetstate
trigger1=time=0
value=4020
id=4000

[state 4010,こっちを向かせる]
type=targetfacing
trigger1=1
value=-1
id=4000

[state 4010,対象の速度]
type=targetvelset
trigger1=time=0
x=-4
y=-8.5
id=4000

[state 4010,対象ステート変更]
type=targetstate
trigger1=animelemtime(4)>=0
trigger1=time%3=0
value=4021
id=4000

[state 4010,ダメージ]
type=targetlifeadd
trigger1=animelemtime(4)>=0
trigger1=time%3=0
value=-floor(12*const(data.attack)*fvar(0)*fvar(1)*fvar(39)/100)
id=4000
kill=0

[state 4010,被ダメゲージ増加]
type=targetpoweradd
trigger1=animelemtime(4)>=0
trigger1=time%3=0
value=6
id=3000

[state 4010,ヒット数]
type=hitadd
trigger1=animelemtime(4)>=0
trigger1=time%3=0
value=numtarget(4000)

[state 4000,ヒット数]
type=varadd
triggerall=var(1)
trigger1=animelemtime(4)>=0
trigger1=time%3=0
var(3)=1

[state 4010,疑似ヒット音]
type=playsnd
trigger1=animelemtime(4)>=0
trigger1=time%3=0
value=5,5
volume=-128

[state 4010,疑似ヒットスパーク]
type=explod
trigger1=animelemtime(4)>=0
trigger1=time%3=0
anim=6103
pos=target(4000),const(size.mid.pos.x),target(4000),const(size.mid.pos.y)
postype=p2
random=100,100
ontop=1
ownpal=1

[state 4010,疑似ヒットスパーク]
type=explod
trigger1=animelemtime(4)>=0
trigger1=time%3=0
anim=6109
pos=target(4000),const(size.mid.pos.x),target(4000),const(size.mid.pos.y)
postype=p2
random=100,100
ontop=1
ownpal=1

[state 4010,銃撃音]
type=playsnd
trigger1=animelemtime(4)>=0
trigger1=time%3=0
value=4000,0

[state 4010,流れ弾]
type=projectile
trigger1=animelemtime(4)>=0
attr=s,hp
damage=7,7
getpower=0,0
animtype=hard
pausetime=0,0
offset=target(4000),const(size.mid.pos.x)+(random-500)/5,target(4000),const(size.mid.pos.y)+(random-500)/5
postype=p2
projid=4012
projanim=4012
projhits=1
projremovetime=3
guardflag=ma
sparkno=s6103
guard.sparkno=s6125
sparkxy=0,0
hitsound=-1;s5,5
guardsound=-1;s6,0
ground.type=high
ground.slidetime=10
ground.hittime=10
air.hittime=10
ground.velocity=-0.5,0
air.velocity=0,-0.8
guard.kill=0

[state 4010,終了]
type=changestate
trigger1=time>=102
trigger1=time%3=0
;trigger1=target(4000),life=1
value=4011

;---------------------------------------------------------------------------
;ブッ壊すほどシュート(トドメ)
[statedef 4011]
type=s
movetype=a
physics=s
anim=4011

[state 4011,ダメージ]
type=targetlifeadd
trigger1=time=3
value=-floor(49*const(data.attack)*fvar(0)*fvar(1)*fvar(39)/100)
id=4000

[state 4010,被ダメゲージ増加]
type=targetpoweradd
trigger1=time=3
value=6
id=3000

[state 4010,ヒット数]
type=hitadd
trigger1=time=3
value=numtarget(4000)

[state 4010,ヒット数]
type=varadd
triggerall=var(1)
trigger1=time=3
var(3)=1

[state 4010,疑似ヒット音]
type=playsnd
trigger1=time=3
value=5,105

[state 4010,疑似ヒットスパーク]
type=explod
trigger1=time=3
anim=6104
pos=target(4000),const(size.mid.pos.x),target(4000),const(size.mid.pos.y)
postype=p2
ontop=1
ownpal=1

[state 4011,銃撃音]
type=playsnd
trigger1=time=3
value=4000,0

[state 4011,対象ステート変更]
type=targetstate
trigger1=time=3
value=3021
id=4000

[state 4011,終了]
type=changestate
trigger1=animtime=0
value=0
ctrl=1

;---------------------------------------------------------------------------
;ブッ壊すほどシュート:対象側
[statedef 4020]
type=a
movetype=h
phisics=n
ctrl=0
anim=5030

[state 4020,すり抜け]
type=playerpush
trigger1=1
value=0

[state 4020,無敵]
type=nothitby
trigger1=1
value=sca

[state 4020,アニメ変更(吹っ飛び)]
type=changeanim
trigger1=selfanimexist(5035)
trigger1=anim=5030
trigger1=animtime=0
value=5035

[state 4020,重力]
type=veladd
trigger1=!gethitvar(isbound)
y=0.4

[state 4020,アニメ変更(落下)]
type=changeanim
trigger1=vel y>0
persistent=0
value=ifelse(selfanimexist(5060),5060,5050)

[state 4020,落下]
type=selfstate
trigger1=pos y>=0
trigger1=vel y>0
value=5100

;---------------------------------------------------------------------------
;ブッ壊すほどシュート:対象側2
[statedef 4021]
type=a
movetype=h
phisics=n
ctrl=0
velset=0,-0.8

[state 4021,すり抜け]
type=playerpush
trigger1=1
value=0

[state 4021,無敵]
type=nothitby
trigger1=1
value=sca

[state 4021,アニメ変更]
type=changeanim
trigger1=time=0
value=5030

[state 4021,重力]
type=veladd
trigger1=1
y=0.4

[state 4021,落下]
type=selfstate
trigger1=pos y>=0
trigger1=vel y>0
value=5100

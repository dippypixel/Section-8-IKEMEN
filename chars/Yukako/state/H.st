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

[state 3010,近づいてくる由花子]
type=explod
trigger1=time=0
anim=8000
id=8000
postype=back
bindtime=-1
supermovetime=97
pausemovetime=97
ontop=1
ownpal=1

[state 3010,ジョージ]
type=playsnd
trigger1=time=0
value=3000,random%3
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
type=null;playsnd
triggerall=animelemtime(16)=[0,59]
trigger1=animelemtime(16)%12=0
value=5,5

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

[state 3010,対象ステート変更]
type=targetstate
trigger1=animelemtime(16)=60
value=3021
id=3000

[state 3010,邪魔者は…]
type=playsnd
trigger1=animelemtime(17)=0
trigger1=enemy,name!="hirose koiti"
value=3001,0
channel=0

[state 3010,愛してるわ…]
type=playsnd
trigger1=animelemtime(17)=0
trigger1=enemy,name="hirose koiti"
value=3002,0
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
;忘れぬ想い(終了後待機)017
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
triggerall= time > 220
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
anim=8001
id=8001
postype=back
pos=0,0
scale=1,1
removetime=-1
bindtime=-1
sprpriority=5
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

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
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
poweradd=-1000
time=45
darken=0
p2defmul=1


[State 3100]
type = PlaySnd
trigger1 = Time = 4
value = 3100,random%2


[State 3100]
type = ChangeState
trigger1 = AnimTime = 0
value = 3101
ctrl = 0


;---------------------------------------------------------------------------
;Death Bite
[Statedef 3101]
type    = S
movetype= A
physics = N
juggle  = 1
;poweradd=
velset = 0,0
anim = 3101
ctrl = 0
sprpriority = 0
;facep2 = 1


[State 3101]
type = null;NotHitBy
trigger1 = 1
value = SCA


[State 3101]
type = null;PlayerPush
trigger1 = 1
value = 0

[State 3101]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0



[State 3101]
type = Helper
trigger1 = AnimElem = 1
stateno = 3110
id = 3110
ownpal = 1
pos = 0,0
persistent = 0


[State 3101]
type = ChangeState
trigger1 = Time >= 10 && !NumHelper(3110)
;trigger2 = BackEdgeDist < -50
value = 3102
ctrl = 0





;---------------------------------------------------------------------------
;Death Bite End
[Statedef 3102]
type    = S
movetype= I
physics = N
juggle  = 1
;poweradd=
velset = 0,0
;anim = 3102
ctrl = 0
sprpriority = 0
;facep2 = 1


[State 3102]
type = null;NotHitBy
trigger1 = 1
value = SCA


[State 3102]
type = null;PlayerPush
trigger1 = 1
value = 0


[State 3102]
type = null;PalFx
trigger1 = Time%8 = 0
color = 256
time = 4
add = 255,63,-255

[State 3102]
type = null;AfterImage
trigger1 = time = 0
time = 30
length = 7
palbright = 30,30,130
palpostbright = 0,0,50
palcontrast =120,120,220
paladd = 0,0,0
palmul = 1,1,1
palcolor = 0
timegap = 2
framegap = 3


[State 3102]
type = null;ChangeAnim
trigger1 = AnimTime = 0
value = 41
elem = 7
persistent = 0

[State 3102]
type = null;VelAdd
trigger1 = 1
y = 0.4


[State 3102]
type = null;ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 52
ctrl = 0

[State 3102]
type = ChangeAnim
trigger1 = AnimElem = 3 && BackEdgeDist < -10
value = anim


[State 3102]
type = ChangeState
trigger1 = AnimTime = 0 && BackEdgeDist >= 0 
value = 0
ctrl = 1



;---------------------------------------------------------------------------
;------------------------------------------------------------------------------------------------------------
;Venom Rush Helper
[Statedef 3110]
type = S
movetype = I
physics =N
anim = 3110
ctrl = 0
sprpriority = -1
velset = 0,0




[State 3110]
type = varset
trigger1 = Time = 0
var(2) = 0



[State 3110]
type = AssertSpecial
trigger1 = 1
flag = noshadow



[State 3110]
type = VelSet
trigger1 = Time = 0
x = 5


[State 3110]
type = VelSet
trigger1 = FrontEdgeDist < -100
x = 0

[State 3110]
type = Helper
trigger1 = FrontEdgeDist > -100
trigger1 = Time%25 = 0 && Vel X
stateno = 3115
id = 3115
pos = -45,0



[State 3110]
type = varset
trigger1 = Time > 10 && !NumHelper(3111)
var(2) = 1



[State 3110]
type = VelSet
trigger1 = var(2)
trigger1 = ParentDist X < 0
x = -11




[State 3110]
type = DestroySelf
trigger1 = var(2)
trigger1 = ParentDist X >= 0



[State 3110]
type = Helper
trigger1 = FrontEdgeDist > -70
trigger1 = Time%10 = 0 && Vel X > 0
stateno = 3111
id = 3111
ownpal = 1
pos = 0,0
persistent = 0

;------------------------------------------------------------------------------------------------------------
;Venom Rush Helper
[Statedef 3111]
type = U
movetype = A
physics = N
;anim = 3111
ctrl = 0
sprpriority = 2
velset = 0,0
hitcountpersist = 1

[State 3111]
type = ChangeAnim
trigger1 = Time = 0 && Anim != 3111
value = 3111

[State 3111]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1480,1


[State 3111]
type = AssertSpecial
trigger1 = 1
flag = noshadow


[State 3111]
type = HitBy
trigger1 = 1
value = SCA,AP


[State 3111]
type = HitOverride
trigger1 = 1
stateno = 3111
attr = SCA,AP
slot = 0
time = -1

[State 3111]
type = HitDef
attr = S, HP
trigger1 = Time%2 = 0
trigger1 = hitcount < 2
trigger1 = moveguarded < 1
damage = 8,3
animtype = Medium
priority  = 5, Hit
guardflag = MA
hitflag = MAFD
pausetime = 3,3
sparkxy = -10,-70
hitsound   = S5,4
guardsound = S6,0
sparkno = s6102
guard.sparkno = S6125
ground.type = Low
ground.slidetime = 10
ground.hittime  = 20
ground.velocity = -1,-4;-7,-7
air.velocity = -5,-2;-7,-7
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall = 1
air.fall = 1
fall.recover = 0
;fall.animtype = Up
;p2stateno = 9020
getpower = 10,5
sprpriority = 3
p2stateno = 9020
id = 9020

[State 3111]
type = Varset
trigger1 = time = 0
var(0) = 3

[State 3111]
type = VarAdd
trigger1 = MoveGuarded
var(0) = -1

[State 3111]
type = MoveHitReset
trigger1 = var(0) > 0
trigger1 = MoveGuarded

[State 3111]
type = null;ChangeState
trigger1 = var(0) < 1 || hitcount > 2
trigger2 = Time > 50
value = 21459
ignorehitpause  = 1


[State 3111]
type = null;ChangeState;DestroySelf
trigger1 = MoveGuarded
ignorehitpause = 1
value = 21459



[State 3111]
type = ChangeState;DestroySelf
trigger1 = MoveReversed
ignorehitpause = 1
value = 21511


[State 3111]
type = DestroySelf
trigger1 = AnimTime = 0


[State 3111]
type = Helper
trigger1 = FrontEdgeDist > -70
trigger1 = Time = 10
stateno = 3111
id = 3111
ownpal = 1
pos = 45,0


;------------------------------------------------------------------------------------------------------------
;------------------------------------------------------------------------------------------------------------
;Venom Rush Helper
[Statedef 3115]
type = S
movetype = I
physics =N
anim = 3110
ctrl = 0
sprpriority = -1
velset = 0,0




[State 3115]
type = AssertSpecial
trigger1 = 1
flag = noshadow




[State 3115]
type = varset
trigger1 = Time = 0
fvar(0) = pos x


[State 3115]
type = varset
trigger1 = Time = 0
fvar(1) = pos y



[State 3115]
type = Posset
trigger1 = Time > 0
x = fvar(0)
y = fvar(1)



[State 3115]
type = DestroySelf
trigger1 = ParentDist X <= 0
trigger2 = RootDist X >= 0
trigger3 = FrontEdgeDist > 320

;---------------------------------------------------------------------------
[Statedef 9020]
type    = A
movetype= H
physics = N
velset = 0,0

[State 9020, Anim] ;Custom animation
type = null;ChangeAnim2
trigger1 = 1
value = 5012


[State 5020, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim ;2
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = ifelse((GetHitVar(airtype) = 1),5000,5010) + GetHitVar(animtype)


[State 5000, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = 5030

[State 5000, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype) ;5051 - 4 + type



[State 5050, 2] ; anim for trip
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(groundtype) = 3
trigger1 = SelfAnimExist(5070)
value = 5070


[State 9020, State]
type = AfterImage
trigger1 = Time = 5
length = 5
timegap = 1
framegap = 1
PalBright   = 0,0,0
PalContrast = 100,100,100
PalMul      = 1,1,1
trans = Add1
time = 0

[State 9020, State]
type = AfterImageTime
trigger1 = 1
time = 2

[State 9020, State]
type = ChangeState
trigger1 = HitShakeOver = 1
value = 9030

;----------------------------------------------------------------------
; Hit by - flying through the air
; (a custom gethit state)
[Statedef 9030]
type    = A
movetype= H
physics = N


[State 9030]
type = AfterImage
trigger1 = Time = 5
length = 5
timegap = 1
framegap = 1
PalBright   = 0,0,0
PalContrast = 100,100,100
PalMul      = 1,1,1
trans = Add1
time = 0

[State 9030]
type = AfterImageTime
trigger1 = 1
time = 2

[State 9030, Velocity]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 9030, Gravity]
type = VelAdd
trigger1 = 1
y = .39

[State 9030, No scroll]
type = null;ScreenBound
;triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist < 65
trigger2 = FrontEdgeBodyDist < 65
value = 0
movecamera = 0,1

[State 9030, Hit wall]
type = ChangeState
;triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist <= 20
trigger2 = FrontEdgeBodyDist <= 20
value = 9027


[State 5050, 1] ;Change anim when done with transition
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim = 5035
trigger2 = Time = 0     ;If no transition anim
trigger2 = Anim != 5035
trigger2 = (Anim != [5051, 5059]) && (Anim != [5061, 5069])
trigger2 = Anim != 5090 ;Not if hit off ground anim
value = 5050
trigger2 = Anim != 5070

[State 5050, 2] ;Coming down anim
type = ChangeAnim
trigger1 = anim = [5050,5059]
trigger1 = Vel Y >= ifelse(anim = 5050, 1, -2)
trigger1 = SelfAnimExist(anim+10)
value = anim+10
persistent = 0


[State 5050, 2] ;Coming down anim for trip
type = ChangeAnim
trigger1 = anim = 5070
trigger1 = Vel Y >= 0
trigger1 = SelfAnimExist(anim-10) || SelfAnimExist(5071)
value = ifelse(SelfAnimExist(5071),5071,anim-10)
persistent = 0


[State 5035, 3]
type = null;ChangeState
triggerall = !HitFall
trigger1 = HitOver  ;Hit is over
trigger2 = AnimTime = 0 ;Animation over
trigger3 = Vel Y > 0    ;Hit ground
trigger3 = Pos Y >= 10  ;.
trigger4 = Time = 0     ;No transition anim
trigger4 = Anim != 5035 ;.
value = 5040 ;HITA_RECOV

[State 5050, 4] ;Recover near ground
type = null;SelfState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = 1;Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 5050, 5]; Recover in mid air
type = null;ChangeState
triggerall = Vel Y > -1
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210 ;HITFALL_AIRRECOVER

[State 9030, Hit ground]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= ifelse((anim = [5051,5059]) || (anim = [5061,5071]), 0, 25)
value = 5100 ;HIT_BOUNCE

;-----------------------------------------------------------------------------------------------------

;-----------------------------------------------------------------------------------------------------
; Hit by  - hit wall
; (a custom gethit state)
[Statedef 9027]
type    = A
movetype= H
physics = N

[State 9027, Turn]
type = Turn
trigger1 = (Time = 0) && (FrontEdgeBodyDist <= 30)

[State 9027]
type = EnvShake
trigger1 = time = 0
time = 30
freq = 100
ampl = -10
phase = 10

[State 9027, Pos]
type = PosAdd
trigger1 = Time = 0
x = 15 - BackEdgeBodyDist

[State 9027, Stop moving]
type = PosFreeze
trigger1 = 1
x = 1
y = 1

[State 9027, No scroll]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 9027, Spark]
type = null;Explod
trigger1 = Time = 0
anim = F72
pos = 0, floor (screenpos y) - 50
postype = back
sprpriority = 3

[State 9027, Anim]
type = ChangeAnim2
trigger1 = Time = 0
value = 825

[State 9027, Sound]
type = null;PlaySnd
trigger1 = Time = 0
value = F7,0

[State 9027, State]
type = ChangeState
trigger1 = Time = 5
value = 9028

;----------------------------------------------------------------
; Hit by  - bounce off wall
; (a custom gethit state)
[Statedef 9028]
type    = A
movetype= H
physics = N


[State 9028, 1]
type = NotHitBy
trigger1 = 1
value = , NA, NP

[State 9028, Vel Y]
type = VelSet
trigger1 = Time = 0
y = -2

[State 9028, Vel X]
type = VelSet
trigger1 = Time = 0
x = 2


[State 9028, Turn]
type = null;Turn
trigger1 = (Time = 0) && (BackEdgeDist < 30)

[State 9028, Gravity]
type = VelAdd
trigger1 = 1
y = .39

[State 9028, Anim 5050] ;Self falling animation
type = ChangeAnim
trigger1 = Time = 0
trigger1 = !SelfAnimExist(5052)
value = 5050

[State 9028, Anim 5052] ;Self falling animation (diagup type)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5052)
value = 5052

[State 9028, Anim 5060] ;Coming down - normal
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5050
trigger1 = SelfAnimExist(5060)
persistent = 0
value = 5060

[State 9028, Anim 5062] ;Coming down - diagup type
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5052
trigger1 = SelfAnimExist(5062)
persistent = 0
value = 5062

[State 9028, Hit ground]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100


;------------------------------------------------------------------------------------------------------------

;===========================================================================
;-------------------------------------------------------------------------------
;これから問題を出すわ-1
[Statedef 4000]
type    = S
movetype= A
physics = S
anim = 4000
sprpriority = 0
ctrl = 0
juggle = 5
poweradd = -2000



[state 4000,ホラホラ行くぜぇー]
type=playsnd
trigger1=time=0
value=4000,0
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




[State 4000, 1]
type = HitDef
trigger1 = Time = 0
attr = S, HT
hitflag = M
getpower = 0
priority = 4, Miss
hitsound   = -1;s7,0
sparkno = -1
p1sprpriority = 2
p2sprpriority = 0
p1facing = 1
p2facing = 1
p1stateno = 4001
p2stateno = 4007
guard.dist = 0
fall = 1
fall.recover = 0

[State 4000, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



;--------------------------------
;投げ成功モーション1
[Statedef 4001]
type    = S
movetype= A
physics = N
anim = 4001

[State -1]
Type = NotHitBy
Trigger1 = 1
Value = SAC, NT, ST, HT ,NA, SA, HA ,NP, SP, HP
Time = 1

[State 1000, 0]
type = TargetBind
trigger1 = AnimElemTime(1) >= 0
pos = 60,0

[State 1000, 0]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 3300]
type = VelSet
trigger1 = 1
x = 0
y = 0

;正解選択肢決定
[State 1000, 0]
type = VarRandom
trigger1 = time = 0
v = 34
range = 0,2

;不正解選択肢決定1
[State 1000, 0]
type = VarSet
trigger1 = time = 0
v = 35
value = ifelse(random<500,-1,1)



;相手選択肢
[State 1000, 0]
type = VarSet
trigger1 = time = 0
v = 36
value = 0

[State 1000, 0]
type = VarAdd
trigger1 = time > 239
trigger1 = target,command = "up"
v = 36
value = ifelse(var(36)=0,2,-1)

[State 1000, 0]
type = VarAdd
trigger1 = time > 239
trigger1 = target,command = "down"
v = 36
value = ifelse(var(36)=2,-2,1)




[State 1000, 0]
type = Explod
trigger1 = time = 0
anim = 4010
ID = 4010
pos = 0,80
postype = left
sprpriority = 1
bindtime = 1
removetime = 290
scale = 0.5,0.5

[State 1000, 0]
type = Explod
trigger1 = time = 0
anim = 4013
ID = 4013
pos = 0,80
postype = left
sprpriority = 2
vfacing = 1
bindtime = 1
removetime = 290
scale = 0.5,0.5


[State 4001]
type = PlaySnd
trigger1 = time = 0
value = s4001,0




[State 1000, 0]
type = Explod
trigger1 = time = 0
anim = 4011
ID = 4011
pos = 220,150
postype = left
sprpriority = 1
vfacing = 1
bindtime = 1
removetime = 290
scale = 0.52,0.5

[State 1000, 0]
type = Explod
trigger1 = time = 240
anim = ifelse(var(34)=0,4020,(ifelse((var(34)=1),4020+var(35),4020+var(35))))
ID = 4019
pos = 220,150
postype = left
sprpriority = 2
vfacing = 1
bindtime = 1
removetime = 50
scale = 0.48,0.5


[State 1000, 0]
type = Explod
trigger1 = time = 240
anim = ifelse(var(34)=1,4020,(ifelse((var(34)=0),4020+var(35),4020-var(35))))
ID = 4020
pos = 220,180
postype = left
sprpriority = 2
vfacing = 1
bindtime = 1
removetime = 50
scale = 0.48,0.5

[State 1000, 0]
type = Explod
trigger1 = time = 240
anim = ifelse(var(34)=2,4020,(ifelse((var(34)=1),4020-var(35),4020-var(35))))
ID = 4021
pos = 220,210
postype = left
sprpriority = 2
vfacing = 1
bindtime = 1
removetime = 50
scale = 0.48,0.5





[State 1000, 0]
type = Explod
trigger1 = time > 239
anim = 4012
ID = 4012
pos = 220,150+var(36)*30
postype = left
sprpriority = 2
vfacing = 1
bindtime = 1
removetime = 1
scale = 0.5,0.5


[State 2021, ステート変更]
type = ChangeState
trigger1 = Time > 289
trigger1 = var(36) = var(34)
value = 4005
ctrl = 0

[State 2021, ステート変更]
type = ChangeState
trigger1 = Time > 289
trigger1 = var(36) != var(34)
value = 4002
ctrl = 0



;--------------------------------
;投げ成功モーション2
[Statedef 4002]
type    = S
movetype= A
physics = N
anim = 4002

[State 1000, 0]
type = VarSet
trigger1 = time = 0
v = 37
value = 0

[State 4000]
type = PlaySnd
trigger1 = time = 0
value = s4000,2
channel = 0


[State 1000, 0]
type = TargetBind
trigger1 = AnimElemTime(1) >= 0
pos = 60,0

[State 1000, 0]
type = TargetState
trigger1 = time = 0
value = 4008

[State -1]
Type = NotHitBy
Trigger1 = 1
Value = SAC, NT, ST, HT ,NA, SA, HA ,NP, SP, HP
Time = 1

[State 1000, 0]
type = ScreenBound
trigger1 = 1
value = 1

[State 2021]
type = VelSet
trigger1 = 1
x = 0
y = 0

[State 1000, 0]
type = PlaySnd
trigger1 = animelem = 4
value = s7,2
channel = -1


[State 1000, 0]
type = TargetLifeAdd
trigger1 = animelem = 4
value = -110
ID = -1
kill = 0



[State -1]
type = VarSet
trigger1 = animelem = 4
fv = 10
value = fvar(10)*0.65
persistent = 0
ignorehitpause = 1
[State -1]
type = VarSet
trigger1 = animelem = 4
fv = 11
value = fvar(11)*0.65
persistent = 0
ignorehitpause = 1



[State 1000, 0]
type = Explod
trigger1 = time = 0
anim = 4010
ID = 4010
pos = 0,80
postype = left
sprpriority = 1
vfacing = 1
bindtime = 1
removetime = 58
scale = 0.5,0.5

[State 1000, 0]
type = Explod
trigger1 = time = 0
anim = 4014
ID = 4014
pos = 0,80
postype = left
sprpriority = 2
vfacing = 1
bindtime = 1
removetime = 58
scale = 0.5,0.5






[State 1000, 0]
type = Explod
trigger1 = time = 0
anim = 4011
ID = 4011
pos = 220,150
postype = left
sprpriority = 1
vfacing = 1
bindtime = 1
removetime = 58
scale = 0.52,0.5

[State 1000, 0]
type = VarSet
trigger1 = command = "波紋カッター・強"
v = 37
value = 1

[State 2020, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = var(37) = 1
value = 4003
ctrl = 0

[State 1000, 0]
type = TargetState
trigger1 = AnimTime = 0
value = 4010


[State 2020, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;--------------------------------
;投げ成功モーション3
[Statedef 4003]
type    = S
movetype= A
physics = N
anim = 4003

[State 4000]
type = PlaySnd
trigger1 = time = 0
value = s4000,1
channel = 0


[State -1]
Type = NotHitBy
Trigger1 = 1
Value = SAC, NT, ST, HT ,NA, SA, HA ,NP, SP, HP
Time = 1

[State 1000, 0]
type = TargetState
trigger1 = time = 0
value = 4011

[State 1000, 0]
type = TargetBind
trigger1 = AnimElemTime(1) >= 0
pos = 60,0

[State 1000, 0]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 2021]
type = VelSet
trigger1 = 1
x = 0
y = 0

;正解選択肢決定
[State 1000, 0]
type = VarRandom
trigger1 = time = 0
v = 34
range = 0,2

;不正解選択肢決定
[State 1000, 0]
type = VarSet
trigger1 = time = 0
v = 35
value = ifelse(random < 501,1,-1)

;相手選択肢
[State 1000, 0]
type = VarSet
trigger1 = time = 0
v = 36
value = 0

[State 1000, 0]
type = VarAdd
trigger1 = time > 149
trigger1 = enemynear,command = "up"
v = 36
value = ifelse(var(36)=0,2,-1)

[State 1000, 0]
type = VarAdd
trigger1 = time > 149
trigger1 = enemynear,command = "down"
v = 36
value = ifelse(var(36)=2,-2,1)





[State 1000, 0]
type = Explod
trigger1 = time = 0
anim = 4010
ID = 4010
pos = 0,80
postype = left
sprpriority = 1
bindtime = 1
removetime = 400
scale = 0.5,0.5

[State 1000, 0]
type = Explod
trigger1 = time = 0
anim = 4015
ID = 4015
pos = 0,80
postype = left
sprpriority = 2
vfacing = 1
bindtime = 1
removetime = 200
scale = 0.5,0.5

[State 1000, 0]
type = Explod
trigger1 = time = 201
anim = 4016
ID = 4016
pos = 0,80
postype = left
sprpriority = 2
vfacing = 1
bindtime = 1
removetime = 200
scale = 0.52,0.5

[State 4001]
type = PlaySnd
trigger1 = time = 201
value = s4001,1

[State 4000]
type = null;PlaySnd
trigger1 = time = 201
value = s4000,2
channel = 0


[State 1000, 0]
type = Explod
trigger1 = time = 0
anim = 4011
ID = 4011
pos = 220,150
postype = left
sprpriority = 1
vfacing = 1
bindtime = 1
removetime = 400
scale = 0.52,0.5

[State 1000, 0]
type = Explod
trigger1 = time = 350
anim = ifelse(var(34)=0,4022,(ifelse((var(34)=1),4023+var(35),4023+var(35))))
ID = 4022
pos = 220,150
postype = left
sprpriority = 2
vfacing = 1
bindtime = 1
removetime = 50
scale = 0.48,0.5


[State 1000, 0]
type = Explod
trigger1 = time = 350
anim = ifelse(var(34)=1,4022,(ifelse((var(34)=0),4023+var(35),4023-var(35))))
ID = 4024
pos = 220,180
postype = left
sprpriority = 2
vfacing = 1
bindtime = 1
removetime = 50
scale = 0.48,0.5

[State 1000, 0]
type = Explod
trigger1 = time = 350
anim = ifelse(var(34)=2,4022,(ifelse((var(34)=1),4023-var(35),4023-var(35))))
ID = 4023
pos = 220,210
postype = left
sprpriority = 2
vfacing = 1
bindtime = 1
removetime = 50
scale = 0.48,0.5

[State 1000, 0]
type = Explod
trigger1 = time > 349
anim = 4012
ID = 4012
pos = 220,150+var(36)*30
postype = left
sprpriority = 2
vfacing = 1
bindtime = 1
removetime = 1
scale = 0.5,0.5


[State 2021, ステート変更]
type = ChangeState
trigger1 = Time > 399
trigger1 = var(36) = var(34)
value = 4005
ctrl = 0

[State 2021, ステート変更]
type = ChangeState
trigger1 = Time > 399
trigger1 = var(36) != var(34)
value = 4004
ctrl = 0

;--------------------------------
;投げ成功モーション4
[Statedef 4004]
type    = S
movetype= A
physics = N
anim = 4004

[State 4000]
type = PlaySnd
trigger1 = time = 0
value = s4000,2
channel = 0


[State 1000, 0]
type = TargetBind
trigger1 = time = 0
pos = 60,0

[State -1]
Type = NotHitBy
Trigger1 = 1
Value = SAC, NT, ST, HT ,NA, SA, HA ,NP, SP, HP
Time = 1

[State 1000, 0]
type = ScreenBound
trigger1 = 1
value = 1

[State 2021]
type = VelSet
trigger1 = 1
x = 0
y = 0


[State 1000, 0]
type = Explod
trigger1 = time = 0
anim = 4010
ID = 4010
pos = 0,80
postype = left
sprpriority = 1
bindtime = 1
removetime = 190
scale = 0.5,0.5

[State 1000, 0]
type = Explod
trigger1 = time = 0
anim = 4018
ID = 4018
pos = 0,80
postype = left
sprpriority = 2
bindtime = 1
removetime = 190
scale = 0.5,0.5


[State 1000, 0]
type = Explod
trigger1 = time = 0
anim = 4011
ID = 4011
pos = 220,150
postype = left
sprpriority = 1
vfacing = 1
bindtime = 1
removetime = 190
scale = 0.52,0.5

[State 1010]
type = Explod
trigger1 = time = 165
anim = 10100+random%4
pos =  11, -45
postype = p2
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
scale = 1, 1
sprpriority = 5
ownpal = 1
removeongethit = 1

[State 1000, 0]
type = PlaySnd
trigger1 = time = 165
value = S7,2
channel = -1

[State 1000, 0]
type = TargetLifeAdd
trigger1 = time = 165
value = -110
ID = -1
kill = 0

[State -1]
type = VarSet
trigger1 = time = 165
fv = 10
value = fvar(10)*0.65
persistent = 0
ignorehitpause = 1
[State -1]
type = VarSet
trigger1 = time = 165
fv = 11
value = fvar(11)*0.65
persistent = 0
ignorehitpause = 1

[State 1000, 0]
type = TargetState
trigger1 = Time = 165
value = 4012

[State 2020, ステート変更]
type = ChangeState
trigger1 = Time = 190
value = 0
ctrl = 1
;--------------------------------
;失敗
[Statedef 4005]
type    = S
movetype= A
physics = N
anim = 4005

[State 4000]
type = PlaySnd
trigger1 = time = 0
value = s4000,5
channel = 0


[State 1000, 0]
type = TargetBind
trigger1 = time = 0
pos = 60,0

[State -1]
Type = NotHitBy
Trigger1 = 1
Value = SAC, NT, ST, HT ,NA, SA, HA ,NP, SP, HP
Time = 1

[State 1000, 0]
type = ScreenBound
trigger1 = 1
value = 1

[State 2021]
type = VelSet
trigger1 = 1
x = 0
y = 0


[State 1000, 0]
type = Explod
trigger1 = time = 0
anim = 4010
ID = 4010
pos = 0,80
postype = left
sprpriority = 1
bindtime = 1
removetime = 38
scale = 0.5,0.5

[State 1000, 0]
type = Explod
trigger1 = time = 0
anim = 4017
ID = 4017
pos = 0,80
postype = left
sprpriority = 2
bindtime = 1
removetime = 38
scale = 0.5,0.5



[State 1000, 0]
type = Explod
trigger1 = time = 0
anim = 4011
ID = 4011
pos = 220,150
postype = left
sprpriority = 1
vfacing = 1
bindtime = 1
removetime = 38
scale = 0.52,0.5

[State 1000, 0]
type = TargetState
trigger1 = time = 0
value = 4009

[State 2020, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
;相手側の投げられモーション1
[Statedef 4007]
type     = A
movetype = H
physics  = N
velset   = 0,0

[State 1000, 0]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State -1]
Type = NotHitBy
Trigger1 = 1
Value = SAC, NT, ST, HT ,NA, SA, HA ,NP, SP, HP
Time = 1

[State 1020, 制御した相手のアニメ変更]
type = ChangeAnim
Trigger1 = Time = 0
value = 5000
[State 1020, 制御した相手のアニメ変更]
type = ChangeAnim
Trigger1 = animtime = 0
value = 5005
persistent = 0



;---------------------------------------------------------------------------
;相手側の投げられモーション2
[Statedef 4008]
type     = A
movetype = H
physics  = N
velset   = 0,0
poweradd = 0

[State 1000, 0]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 2028]
type = ChangeAnim
Trigger1 = Time = 0
value = 0

[State 2028]
type = ChangeAnim
Trigger1 = Time = 8
value = 5010

[State 2028]
type = ChangeAnim
Trigger1 = Time = 13
value = 5011

[State 2028]
type = ChangeAnim
Trigger1 = Time = 18
value = 5012

[State -1]
Type = NotHitBy
Trigger1 = 1
Value = SAC, NT, ST, HT ,NA, SA, HA ,NP, SP, HP
Time = 1

;---------------------------------------------------------------------------
;相手側の投げられモーション3
[Statedef 4009]
type     = A
movetype = H
physics  = N
anim = 0
velset   = 0,0
poweradd = 0

[State 1000, 0]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State -1]
Type = NotHitBy
Trigger1 = 1
Value = SAC, NT, ST, HT ,NA, SA, HA ,NP, SP, HP
Time = 1

[State 2029]
type = SelfState
trigger1 = time > 40
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;相手側の投げられモーション4
[Statedef 4010]
type     = A
movetype = H
physics  = N
anim = 5061
velset   = -3,-3
poweradd = 0

[State 1000, 0]
type = LifeAdd
trigger1 = time = 0
value = -5
ID = -1
kill = 1

[State 1000, 0]
type = VelAdd
trigger1 = time > 0
y = 0.4

[State 1000, 0]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State -1]
Type = NotHitBy
Trigger1 = 1
Value = SAC, NT, ST, HT ,NA, SA, HA ,NP, SP, HP
Time = 1

[State 2030]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100


;---------------------------------------------------------------------------
;相手側の投げられモーション5
[Statedef 4011]
type     = A
movetype = H
physics  = N
anim = 5017
velset   = 0,0
poweradd = 0

[State 1000, 0]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State -1]
Type = NotHitBy
Trigger1 = 1
Value = SAC, NT, ST, HT ,NA, SA, HA ,NP, SP, HP
Time = 1


;---------------------------------------------------------------------------
;相手側の投げられモーション6
[Statedef 4012]
type     = A
movetype = H
physics  = N
anim = 5300
velset   = 0,0
poweradd = 0

[State 2030]
type = SelfState
Trigger1 = time > 200
value = 0
ctrl = 1











;===========================================================================
;ｻﾃｨﾎﾟﾛｼﾞｱﾋﾞｰﾄﾙ(Start)
[Statedef 3200]
type    = S
movetype= A
physics = N
juggle = 0
anim = 3200
ctrl = 0
velset = 0,0
poweradd = -1000*(!var(56) && var(19) < 1)
sprpriority = -1

[state 3200,カットイン]
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

[state 3200,暗転]
type=superpause
trigger1=time=1
pos=-20,-75
anim=s6000
sound=s4999,0
poweradd=-1000
time=45
darken=0
p2defmul=1

[State 3200,0]
type = PlaySnd
trigger1 = time = 0
value = 3200,0

[State 3200, PowerSet (OriCom Simul)]
type = PowerSet
triggerall = TeamMode = Simul
triggerall = RoundState = 2
triggerall = !var(56) || (fvar(13) = [0,1])
triggerall = var(19) >= 1
trigger1 = time = 0
value = Ifelse(Power > Ceil(var(57)/10), Power-Ceil(var(57)/10), 0)
ignorehitpause = 1
persistent = 0

[State 3200, Turn]
type = Turn
triggerall = !var(59) || PrevStateNo < 6000
triggerall = var(19) < 1
trigger1 = time = 0
trigger1 = P2Dist X < -5

[State 3200, NotHitBy]
type = NotHitBy
trigger1 = time <= 51
value = SCA
time = 1

[State 3200, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 3200, Hold]
type = ReversalDef
trigger1 = time = 0
reversal.attr = SCA, NA, SA, HA, AA
pausetime = 6,10
numhits = 0
sparkno = S(Ifelse((var(58) && Helper(30000),var(12)), 6511, 3205))
sparkxy = 0,0
hitsound = -1,-1
P1StateNo = 3201

[State 3200, StatetypeSet]
type = StatetypeSet
trigger1 = AnimElemTime(10) = 0
movetype = I

[State 3200, CtrlSet]
type = CtrlSet
trigger1 = AnimElemTime(13) = 0
value = 1

[State 3200, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;ｻﾃｨﾎﾟﾛｼﾞｱﾋﾞｰﾄﾙ(Hold)
[Statedef 3201]
type    = S
movetype= A
physics = N
juggle = 4*(var(19) < 1)
anim = 3201 + (EnemyNear(0),HitDefAttr = C,AA,AP)
ctrl = 0
velset = 0,0
sprpriority = -1

[State 3201, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 3201, Pause]
type = Pause
trigger1 = AnimElemTime(1) = 0
time = 25+5*(var(58) && Helper(30000),var(12))
movetime = 20+5*(var(58) && Helper(30000),var(12))
anim = -1
pos = 10, -30

[State 3201, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 3210

;---------------------------------------------------------------------------
;ｻﾃｨﾎﾟﾛｼﾞｱﾋﾞｰﾄﾙ(Attack 1-6)
[Statedef 3210]
type    = S
movetype= A
physics = N
anim = 3210
ctrl = 0
velset = 0,0
juggle = 4*(var(19) < 1)
sprpriority = -1

[State 3210, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 3210, Width]
type = Width
trigger1 = time = 0 && BackEdgeDist < 50
trigger1 = P2StateType = A && P2BodyDist X < -10 && P2BodyDist X > -60
edge = 50, 0

[State 3210, NotHitBy]
type = NotHitBy
triggerall = !MoveContact && !MoveReversed
trigger1 = time < 10
value = SCA, NA,SA,NT,ST
time = 1

[State 3210, Turn]
type = Turn
trigger1 = time = 0
trigger1 = P2Dist X < -5

[State 3210, Time Adjust]
type = ChangeAnim
triggerall = !MoveContact && !MoveReversed
trigger1 = time < 10
trigger1 = AnimElemTime(5) = 0
value = 3210
elem= 4

[State 3210, Moving Turn]
type = PosAdd
trigger1 = time = 0 && BackEdgeDist >= 30
trigger1 = P2Dist X < 5
x = -20

[State 3210, Moving0]
type = PosAdd
triggerall = EnemyNear(0),Vel X <= 0
trigger1 = time = 0
x = 24 + 12*(FrontEdgeDist > 50 && P2BodyDist X > 25)

[State 3210, Moving1a]
type = PosAdd
triggerall = EnemyNear(0),Vel X <= 0
trigger1 = AnimElemTime(14) = 0
x = 9

[State 3210, Moving1b]
type = PosAdd
triggerall = FrontEdgeDist > 38 && (P2BodyDist X > 27 || P2StateType = A)
trigger1 = AnimElemTime(14) = 0
x = Ifelse(P2BodyDist X > 48, P2BodyDist X - 30, 18)

[State 3210, Moving2]
type = PosAdd
trigger1 = AnimElemTime(30) = 0
x = 10

[State 3210, Moving3]
type = PosAdd
trigger1 = AnimElemTime(37) = 0
x = 30

[State 3210, Moving4]
type = PosAdd
trigger1 = AnimTime = 0
x = -5

[State 3210, HitBack for Air]
type = VelSet
triggerall = P2StateType = A && EnemyNear(0),BackEdgeBodyDist < 15
triggerall = FrontEdgeDist < 70 || (AnimElemTime(17) > 0 && FrontEdgeDist < 90)
trigger1 = AnimElemTime(6) = 0 && (MoveHit = [1,3])
trigger2 = AnimElemTime(19) = 0 && (MoveHit = [1,3])
trigger3 = AnimElemTime(25) = 0 && (MoveHit = [1,3])
trigger4 = AnimElemTime(35) = 0 && (MoveHit = [1,3])
trigger5 = AnimElemTime(42) = 0 && (MoveHit = [1,3])
trigger6 = AnimElemTime(51) = 0 && (MoveHit = [1,5])
x = -2.2

[State 3210, HitBack Stop]
type = VelSet
triggerall = P2StateType = A && EnemyNear(0),BackEdgeBodyDist < 15
triggerall = Vel X < 0
trigger1 = AnimElemTime(37) < 0 && MoveHit > 25
trigger2 = AnimElemTime(37) >= 0 && MoveHit > 35
trigger3 = AnimElemTime(37) >= 0 && FrontEdgeDist >= 85
x = 0

[State 3210, Pos Adjust]
type = PosAdd
triggerall = P2StateType = S && EnemyNear(0),BackEdgeBodyDist < 15
triggerall = AnimElemTime(51) >= 0
trigger1 = FrontEdgeDist = [70,80]
x = FrontEdgeDist - 70

[State 3210, Pos Adjust for Air]
type = PosAdd
triggerall = P2StateType = A && EnemyNear(0),BackEdgeBodyDist < 15
triggerall = AnimElemTime(51) >= 0
trigger1 = FrontEdgeDist = [85,95]
x = FrontEdgeDist - 85

[State 3210, TargetBind1]
type = TargetBind
triggerall = P2StateType = S && EnemyNear(0),BackEdgeBodyDist >= 15
triggerall = P2BodyDist X < 25
trigger1 = AnimElemTime(3) = 1
trigger2 = AnimElemTime(18) = 1
pos = 40, 0
ignorehitpause = 0

[State 3210, TargetBind2]
type = TargetBind
triggerall = P2StateType = S && EnemyNear(0),BackEdgeBodyDist >= 15
triggerall = P2BodyDist X < 25
trigger1 = AnimElemTime(41) = 1
pos = 50, 0
ignorehitpause = 0

[State 3210, TargetBind3]
type = TargetBind
triggerall = P2StateType = S && EnemyNear(0),BackEdgeBodyDist >= 15
triggerall = P2BodyDist X < 35
trigger1 = AnimElemTime(24) = 1
trigger2 = AnimElemTime(34) = 1
trigger3 = AnimElemTime(50) = 1
pos = 60, 0
ignorehitpause = 0

[State 3210, PlaySnd1]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = 3210, random%2

[State 3210, PlaySnd2]
type = PlaySnd
trigger1 = AnimElemTime(17) = 0
value = 0, 0

[State 3210, PlaySnd3-4]
type = PlaySnd
trigger1 = AnimElemTime(23) = 0
trigger2 = AnimElemTime(33) = 0
value = 0, 3

[State 3210, PlaySnd5]
type = PlaySnd
trigger1 = AnimElemTime(40) = 0
value = 0, 0

[State 3210, PlaySnd6]
type = PlaySnd
trigger1 = AnimElemTime(49) = 0
value = 0, 3

[State 3210, HitDef1]
type = HitDef
triggerall = var(35) != 2
trigger1 = AnimElemTime(3) = 0
attr = S, HA
animtype = Heavy
damage = 60, 6
priority = 7, Hit
guardflag = M
pausetime = 4+7*(P2StateType = A)+20*(var(58) && Helper(30000),var(12)),5+15*(P2StateType = S)+20*(var(58) && Helper(30000),var(12))
guard.pausetime = 8,8
numhits = (fvar(20) = 1)
sparkno = S6102
guard.sparkno = S6125
sparkxy = -Ceil((20-.2*(P2BodyDist X))*Const(size.xscale)), Ceil((-90+.7*(P2Dist Y)+25*(P2StateType = C))*Const(size.yscale))
hitsound = S5, 5
guardsound = S120, 0
ground.type = High
yaccel = .7
ground.SlideTime = 12
ground.HitTime = 25
ground.velocity = -3.5
air.velocity = -2.76,-11.8
ground.cornerpush.veloff = -5.6*(FrontEdgeBodyDist < 60)
air.cornerpush.veloff = 0
forcestand = 1
air.fall = 0
getpower = 0,0
givepower = 0,0
envshake.time = 12*(var(58) && Helper(30000),var(12))
envshake.ampl = 4*(var(58) && Helper(30000),var(12))
kill = 0

[State 3210, HitDef2]
type = HitDef
triggerall = var(35) != 2
trigger1 = AnimElemTime(18) = 0
attr = S, HA
animtype = Medium
damage = 50, 5
priority = 7, Hit
guardflag = M
pausetime = 4,5+7*(P2StateType = S)
numhits = (fvar(20) = 1)
sparkno = S6100
guard.sparkno = S6125
sparkxy = -Ceil((20-.2*(P2BodyDist X))*Const(size.xscale)), Ceil((-70+.8*(P2Dist Y)+25*(P2StateType = C))*Const(size.yscale))
hitsound = S5, 1
guardsound = S120, 0
ground.type = Low
yaccel = .7
ground.SlideTime = 12
ground.HitTime = 15
ground.velocity = 0
air.velocity = -2.76,-11.8
ground.cornerpush.veloff = -5.6
air.cornerpush.veloff = 0
forcestand = 1
air.fall = 0
getpower = 0,0
givepower = 0,0
envshake.time = 10*(var(58) && Helper(30000),var(12))
envshake.ampl = 3*(var(58) && Helper(30000),var(12))
kill = 0

[State 3210, HitDef3]
type = HitDef
triggerall = var(35) != 2
trigger1 = AnimElemTime(24) = 0
attr = S, HA
animtype = Medium
damage = 50, 4
priority = 7, Hit
guardflag = M
pausetime = 1,2+8*(P2StateType = S)+6*(P2StateType = A && EnemyNear(0),BackEdgeBodyDist < 15)
numhits = (fvar(20) = 1)
sparkno = S6100
guard.sparkno = S6125
sparkxy = -Ceil((40-.4*(P2BodyDist X))*Const(size.xscale)), Ceil((-90+.7*(P2Dist Y)+15*(P2StateType = C))*Const(size.yscale))
hitsound = S5,1 
guardsound = S120, 0
ground.type = High
yaccel = .7
ground.SlideTime = 12
ground.HitTime = 15
ground.velocity = 0
air.velocity = -2.76,-11.8
ground.cornerpush.veloff = -5.6
air.cornerpush.veloff = 0
forcestand = 1
air.fall = 0
getpower = 0,0
givepower = 0,0
envshake.time = 10*(var(58) && Helper(30000),var(12))
envshake.ampl = 3*(var(58) && Helper(30000),var(12))
kill = 0

[State 3210, HitDef4]
type = HitDef
triggerall = var(35) != 2
trigger1 = AnimElemTime(34) = 0
attr = S, HA
animtype = Heavy
damage = 80, 8
priority = 7, Hit
guardflag = M
pausetime = 1,2+8*(P2StateType = S)+6*(P2StateType = A && EnemyNear(0),BackEdgeBodyDist < 15)
numhits = (fvar(20) = 1)
sparkno = S6102
guard.sparkno = S6125
sparkxy = -Ceil((40-.4*(P2BodyDist X))*Const(size.xscale)), Ceil((-60+.8*(P2Dist Y)+15*(P2StateType = C))*Const(size.yscale))
hitsound = S5, 3
guardsound = S120, 0
ground.type = Low
yaccel = .7
ground.SlideTime = 12
ground.HitTime = 25
ground.velocity = 0
air.velocity = -2.76,-11.8
ground.cornerpush.veloff = -5.6
air.cornerpush.veloff = 0
forcestand = 1
air.fall = 0
getpower = 0,0
givepower = 0,0
envshake.time = 10*(var(58) && Helper(30000),var(12))
envshake.ampl = 3*(var(58) && Helper(30000),var(12))
kill = 0

[State 3210, HitDef5]
type = HitDef
triggerall = var(35) != 2
trigger1 = AnimElemTime(41) = 0
attr = S, HA
animtype = Heavy
damage = 80, 8
priority = 7, Hit
guardflag = M
pausetime = 1,2+14*(P2StateType = S)+6*(P2StateType = A && EnemyNear(0),BackEdgeBodyDist < 15)
numhits = (fvar(20) = 1)
sparkno = S6102
guard.sparkno = S6125
sparkxy = -Ceil((40-.4*(P2BodyDist X))*Const(size.xscale)), Ceil((-90+.8*(P2Dist Y)+15*(P2StateType = C))*Const(size.yscale))
hitsound = S5, 5
guardsound = S120, 0
ground.type = High
yaccel = .7
ground.SlideTime = 12
ground.HitTime = 20
ground.velocity = 0
air.velocity = -2.76,-11.8
ground.cornerpush.veloff = -5.6
air.cornerpush.veloff = 0
forcestand = 1
air.fall = 0
getpower = 0,0
givepower = 0,0
envshake.time = 10*(var(58) && Helper(30000),var(12))
envshake.ampl = 3*(var(58) && Helper(30000),var(12))
kill = 0

[State 3210, HitDef6]
type = HitDef
triggerall = var(35) != 2
trigger1 = AnimElemTime(50) = 0
attr = S, HA
animtype = Medium
damage = 100, 9
priority = 7, Hit
guardflag = M
pausetime = 4,5+19*(P2StateType = S)+6*(P2StateType = A && EnemyNear(0),BackEdgeBodyDist < 15)
numhits = (fvar(20) = 1)
sparkno = S6103
guard.sparkno = S6125
sparkxy = -Ceil((40-.4*(P2BodyDist X))*Const(size.xscale)), Ceil((-95+.8*(P2Dist Y)+15*(P2StateType = C))*Const(size.yscale))
hitsound = S5, 4
guardsound = S120, 0
ground.type = High
yaccel = .7
ground.SlideTime = 12
ground.HitTime = 20
ground.velocity = 0
air.velocity = -2.76,-11.8
ground.cornerpush.veloff = -2
forcestand = 1
air.fall = 0
getpower = 0,0
givepower = 0,0
envshake.time = 10*(var(58) && Helper(30000),var(12))
envshake.ampl = 3*(var(58) && Helper(30000),var(12))
kill = 0

[State 3210, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 3211

;---------------------------------------------------------------------------
;ｻﾃｨﾎﾟﾛｼﾞｱﾋﾞｰﾄﾙ(Finish)
[Statedef 3211]
type    = S
movetype= A
physics = N
anim = 3211
ctrl = 0
velset = 0,0
juggle = 4*(var(19) < 1)
sprpriority = -1

[State 3211, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
statetype = A

[State 3211, VelSet1]
type = VelSet
trigger1 = AnimElemTime(5) = 0
x = Ifelse(!(FrontEdgeBodyDist < 40 && EnemyNear(0),BackEdgeBodyDist < 5), 6.0, 0.8)
y = -6.8

[State 3211, VelSet2]
type = VelSet
trigger1 = AnimElemTime(9) = 0
x = Ifelse(!(FrontEdgeBodyDist < 100 && EnemyNear(0),BackEdgeBodyDist < 5), 2.0, 0.8)

[State 3211, Gravity]
type = VelAdd
trigger1 = AnimElemTime(9) >= 0
y = Const(Movement.Yaccel)+.4

[State 3211, Explod]
type = Explod
trigger1 = AnimElemTime(6) = 0
id = 3200
anim = 1102
pos = 0, 0
scale = Const(size.xscale)*.9,Const(size.yscale)
ontop = 1
bindtime = -1
removeongethit = 1
ignorehitpause = 0

[State 3211, HitDef7]
type = HitDef
triggerall = var(35) != 2
trigger1 = AnimElemTime(8) = 0
attr = A, HA
damage = 110, 10
animtype = Up
guardflag = M
hitflag = MAF
priority = 7, Hit
pausetime = 8+12*(var(58) && Helper(30000),var(12) && P2MoveType = H),8+12*(var(58) && Helper(30000),var(12) && P2MoveType = H)
guard.pausetime = 8,8
numhits = (fvar(20) = 1)
sparkno = S6104
guard.sparkno = S6125
sparkxy = -Ceil((40-.4*(P2BodyDist X))*Const(size.xscale)), Ceil((-70+.8*(P2Dist Y)+20*(P2StateType = C))*Const(size.yscale))
hitsound = S5, 5
guardsound = S120, 0
ground.type = High
yaccel = .9
ground.SlideTime = 11
ground.HitTime = 15
ground.velocity = -5.6, -14.8
guard.velocity = -4
air.type = High
air.velocity = -5.6,-14.8
airguard.velocity = -3,-6
air.HitTime = 15
airguard.velocity = -3
ground.cornerpush.veloff = -13.2
forcestand = 1
fall = 1
fall.recover = 0
getpower = 0,0
givepower = 0,0
envshake.time = 15*(var(58) && Helper(30000),var(12))
envshake.ampl = 5*(var(58) && Helper(30000),var(12))

[State 3211, ChangeState]
type = ChangeState
trigger1 = time > 10
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 1190
;===========================================================================

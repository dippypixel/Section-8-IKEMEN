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

[state 3010,在りし日のジョージ]
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
value=3001,random%2
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
poweradd=-1000
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
trigger1=animelemtime(33)=0
value=3100,2

[state 3100,ガード認識距離]
type=attackdist
trigger1=1
value=0

[state 3100,ビーム]
type=projectile
trigger1=animelemtime(33)=-4
attr=s,hp
damage=413,413
getpower=0,0
animtype=back
pausetime=0,30
guard.dist=0
offset=63,-70
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
trigger1=animelemtime(33)>=0
value=0

[state 3100,終了]
type=changestate
triggerall=animelemtime(41)>=0
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

[state 4010,藍色の波紋疾走]
type=playsnd
trigger1=time=0
value=4000,2
channel=0

[state 4010,対象ステート変更]
type=targetstate
trigger1=animelemtime(13)>=0
trigger1=time%3=0
value=4021
id=4000

[state 4010,ダメージ]
type=targetlifeadd
trigger1=animelemtime(13)>=0
trigger1=time%3=0
value=-floor(7*const(data.attack)*fvar(0)*fvar(1)*fvar(39)/100)
id=4000
kill=0

[state 4010,被ダメゲージ増加]
type=targetpoweradd
trigger1=animelemtime(13)>=0
trigger1=time%3=0
value=6
id=3000

[state 4010,ヒット数]
type=hitadd
trigger1=animelemtime(13)>=0
trigger1=time%3=0
value=numtarget(4000)

[state 4000,ヒット数]
type=varadd
triggerall=var(1)
trigger1=animelemtime(13)>=0
trigger1=time%3=0
var(3)=1

[state 4010,疑似ヒット音]
type=playsnd
trigger1=animelemtime(13)>=0
trigger1=time%3=0
value=5,5
volume=0
channel=1

[state 4010,疑似ヒットスパーク]
type=explod
trigger1=animelemtime(13)>=0
trigger1=time%3=0
anim=6103
pos=target(4000),const(size.mid.pos.x),target(4000),const(size.mid.pos.y)
postype=p2
random=100,100
ontop=1
ownpal=1

[state 4010,流れ弾]
type=projectile
trigger1=animelemtime(13)>=0
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

[state 4011,無意味だわ]
type=playsnd
trigger1=time=3
value=4000,1

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
y=0.5

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
y=0.5

[state 4021,落下]
type=selfstate
trigger1=pos y>=0
trigger1=vel y>0
value=5100

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
sprpriority = -1

[State 3000, Superpause]
type = SuperPause
trigger1 = time = 1
time = 30
movetime = 30
anim = -1
sound = S4999,0
pos = 0,0
darken = 0
p2defmul = 1
poweradd = -1000
unhittable = 0
persistent = 0

[State 8000, Super]
type = Helper
trigger1 = time = 1
id = 8000
name = "Super"
pos = ceil(12*const(size.xscale)),ceil(-75*const(size.yscale))
postype = P1
stateno = 8000
helpertype = normal
keyctrl = 0
ownpal = 1
pausemovetime = 999999
supermovetime = 999999
persistent = 0

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
trigger1 = time = 34
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
sparkxy = -20,-65
hitsound = S5, 5
guardsound=s6,0
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
guardsound=s6,0
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
guardsound=s6,0
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
guardsound=s6,0
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
sparkxy = -15,-55
hitsound = S5, 5
guardsound=s6,0
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
sparkxy = -16,-60
hitsound = S5, 4
guardsound=s6,0
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
sparkxy = -10,-64
hitsound = S5, 5
guardsound=s6,0
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
value = 1195
;===========================================================================


;Super Aja
[statedef 3300]
type=s
movetype=a
physics=s
velset=0,0
anim=3300
ctrl=0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = 3300,0

[State 3000, Superpause]
type = SuperPause
trigger1 = time = 1
time = 30
movetime = 30
anim = -1
sound = S4999,0
pos = 0,0
darken = 0
p2defmul = 1
poweradd = -1000
unhittable = 0
persistent = 0

[State 8000, Super]
type = Helper
trigger1 = time = 1
id = 8000
name = "Super"
pos = ceil(-33*const(size.xscale)),ceil(-63*const(size.yscale))
postype = P1
stateno = 8000
helpertype = normal
keyctrl = 0
ownpal = 1
pausemovetime = 999999
supermovetime = 999999
persistent = 0

[State 0, Helper]
type = Helper
trigger1 = time = 32 && !numhelper(3301)
name = "Super Aja"
ID = 3301
stateno = 3301
facing = 1
postype = p1
pos = 0,0
ownpal = 1

[State 0, Helper]
type = Helper
trigger1 = time = 71
helpertype = normal ;player
name = "Beam"
ID = 3302
stateno = 3302
pos = -5,-15
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0
size.xscale = .75
size.yscale = .75
;size.ground.back = 
;size.ground.front = 
;size.air.back = 
;size.air.front = 
;size.height = 
;size.proj.doscale = 
;size.head.pos = , 
;size.mid.pos = , 
;size.shadowoffset = 
ignorehitpause = 1
persistent = 0

[State 0, hit]
type = hitdef
triggerall = anim = 3300
triggerall = (!movecontact && !movereversed)
trigger1 = time = 76
attr = S, HP
damage = 155,0
priority = 7,Hit
hitflag = MAF
animtype = hard
pausetime = 0,0
sparkno=s6104
guard.sparkno=s6125
sparkxy = -14,-45
hitsound=s5,1
guardsound=s6,0
getpower = 40,0
givepower = 20,0
ground.slidetime = 16
ground.hittime = 16
ground.type = trip
ground.velocity = 0,-4.45
air.type = Low
air.velocity = -5,ifelse(var(40)<12,-4+(var(40)*.42),0)
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.kill = 0
p2facing = 1
fall = 1
air.fall = 1
ID = 3310

[state 3000,命中]
type=changestate
triggerall=time=78
trigger1=movehit
trigger1=numtarget(3310)
value=3310

[state 3000,失敗]
type=changestate
trigger1=animtime=0
value=0
ctrl=1

;Super Aja After Hit
[statedef 3310]
type=s
movetype=a
physics=s
velset=0,0
anim=3310
ctrl=0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = 3300,1

[State 0, Helper]
type = Helper
trigger1 = time = 9 && !numhelper(3311)
name = "Super Aja After Hit"
ID = 3311
stateno = 3311
facing = 1
postype = p1
pos = 0,0
ownpal = 1

[state 3000,失敗]
type=changestate
trigger1=animtime=0
value=0
ctrl=1

[Statedef 10750 - Stylish Cancel]
type     = S
movetype = I
physics  = S
anim     = 720
;velset   = 0,0
ctrl     = 0

[State 0, explod]
type = explod
trigger1 = time = 0
anim = 6001
id = 7100
pos = ceil(-30*const(size.xscale)),ceil(-92*const(size.yscale))
postype = p1
scale = .3,.5
sprpriority = 3
pausemovetime = 999999
supermovetime = 999999

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
stateno = 10755
keyctrl = 0
ownpal = 1
supermovetime = 9999
pausemovetime = 9999

[State 20000]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "moji"
ID = 756
pos = 0, -75
postype = p1
facing = facing
stateno = 10756
keyctrl = 0
ownpal = 1
supermovetime = 99999
pausemovetime = 99999
size.xscale = .5
size.yscale = .5
ignorehitpause = 0

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

;---------------------------------------------------------------------------
;?????
[Statedef 10756]
type    = S
physics = N
anim = 20026
ctrl = 0
sprpriority = 3
velset = 0,0

[State 100, 2]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 0, scale]
type = angledraw
trigger1 = time < 10
scale = .2+time*.08,.2+time*.08

[State 0, scale]
type = angledraw
trigger1 = time >= 10
scale = .85+time*.01,.85+time*.01

[State 820, ??]
type = destroyself
trigger1 = time >= 31
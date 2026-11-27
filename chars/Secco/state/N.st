;立弱
[statedef 200]
type=s
movetype=a
physics=s
velset=0,0
ctrl=0
anim=200

[state 200,素振り音]
type=playsnd
trigger1=animelemtime(3)=0
value=1,0

[state 200,ヒット定義]
type=hitdef
trigger1=animelemtime(3)=0
trigger2=var(0)&16
attr=s,na
damage=28
guardflag=ma
pausetime=7,7
animtype=light
sparkno=s6100
guard.sparkno=s6125
sparkxy=-12,-44
hitsound=s5,0
guardsound=s6,0
ground.type=high
ground.slidetime=13
ground.hittime=13
air.hittime=13
ground.velocity=-4
air.velocity=-1.4,-3

[state 200,状態キャンセル]
type=ctrlset
trigger1=time=8
value=1

[state 200,終了]
type=changestate
trigger1=animtime=0
value=0
ctrl=1

;---------------------------------------------------------------------------
;立中
[statedef 210]
type=s
movetype=a
physics=s
poweradd=65
ctrl=0
velset=0,0
anim=210

[state 210,素振り音]
type=playsnd
trigger1=animelemtime(4)=0
value=1,1

[state 210,声]
type=playsnd
trigger1=animelemtime(3)=0
value=0,0
channel=0

[state 210,ヒット定義]
type=hitdef
trigger1=animelemtime(4)=0
trigger2=var(0)&16
attr=s,na
animtype=medium
damage=56
guardflag=ma
pausetime=9,9
sparkno=s6101
guard.sparkno=s6125
sparkxy=-10,-70
hitsound=s5,1
guardsound=s6,0
ground.type=high
ground.slidetime=16
ground.hittime=16
air.hittime=16
ground.velocity=-5.5
air.velocity=-2.5,-4

[state 210,終了]
type=changestate
trigger1=animtime=0
value=0
ctrl=1

;---------------------------------------------------------------------------
;立強
[statedef 220]
type=s
movetype=a
physics=s
poweradd=65
ctrl=0
velset=0,0
anim=220

[state 220,素振り音]
type=playsnd
trigger1=animelemtime(4)=0
value=1,2

[state 220,声]
type=playsnd
trigger1=animelemtime(2)=0
value=0,1
channel=0

[state 220,軸位置移動]
type=posadd
trigger1=animelemtime(4)=0
x=12

[state 220,ヒット定義]
type=hitdef
trigger1=animelemtime(4)=0
trigger2=var(0)&16
attr=s,na
animtype=medium
damage=91
guardflag=ma
pausetime=9,9
sparkno=s6102
guard.sparkno=s6125
sparkxy=-12,-93
hitsound=s5,2
guardsound=s6,0
ground.type=low
ground.slidetime=21
ground.hittime=21
air.hittime=21
ground.velocity=-6
air.velocity=-2.2,-3.2

[state 52,着地音]
type=explod
trigger1=animelem = 7
anim = 6127
ID = 6127
pos = 0, 0
postype = p1
scale = 1, 1
ownpal = 1
sprpriority = 3

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 7
value = 52,0 

[state 220,終了]
type=changestate
trigger1=animtime=0
value=0
ctrl=1

;---------------------------------------------------------------------------
;6強
[statedef 230]
type=a
movetype=a
physics=n
poweradd=22
ctrl=0
velset=1.5,-2
anim=230

[state 230,重力]
type=veladd
trigger1=1
y=0.1

[state 230,素振り音]
type=playsnd
trigger1=animelemtime(6)=0
value=1,2

[state 230,ヒット定義]
type=hitdef
trigger1=animelemtime(6)=0
trigger2=var(0)&16
attr=a,na
guardflag=ha
animtype=hard
damage=63
pausetime=13,13
sparkno=s6102
guard.sparkno=s6125
sparkxy=-20,-62
hitsound=s5,2
guardsound=s6,0
ground.type=high
ground.slidetime=17
ground.hittime=17
air.hittime=17
ground.velocity=-5
air.velocity=-2.5,-3.5

[state 230,着地]
type=changestate
trigger1=pos y>=0
trigger1=vel y>0
value=52

;---------------------------------------------------------------------------
;ダッシュ弱
[statedef 250]
type=a
movetype=a
physics=n
poweradd=22
ctrl=0
velset=3,-2
anim=230

[state 250,重力]
type=veladd
trigger1=1
y=0.1

[state 250,素振り音]
type=playsnd
trigger1=animelemtime(6)=0
value=1,2

[state 250,声]
type=playsnd
trigger1=animelemtime(6)=0
value=0,3
channel=0

[state 250,ヒット定義]
type=hitdef
trigger1=animelemtime(6)=0
trigger2=var(0)&16
attr=a,na
guardflag=ha
animtype=hard
damage=70
pausetime=9,9
sparkno=s6102
guard.sparkno=s6125
sparkxy=-20,-62
hitsound=s5,0
guardsound=s6,0
ground.type=high
ground.slidetime=11
ground.hittime=11
air.hittime=11
ground.velocity=-2.5,-2
air.velocity=-2.5,-2
fall=1

[state 250,着地]
type=changestate
trigger1=pos y>=0
trigger1=vel y>0
value=52

;---------------------------------------------------------------------------
;ダッシュ中
[statedef 260]
type=a
movetype=a
physics=n
poweradd=22
ctrl=0
velset=3,-2
anim=230

[state 260,重力]
type=veladd
trigger1=1
y=0.1

[state 260,素振り音]
type=playsnd
trigger1=animelemtime(6)=0
value=1,2

[state 260,声]
type=playsnd
trigger1=animelemtime(6)=0
value=0,3
channel=0

[state 260,ヒット定義]
type=hitdef
trigger1=animelemtime(6)=0
trigger2=var(0)&16
attr=a,na
guardflag=ha
animtype=hard
damage=70
pausetime=11,11
sparkno=s6102
guard.sparkno=s6125
sparkxy=-20,-62
hitsound=s5,1
guardsound=s6,0
ground.type=high
ground.slidetime=14
ground.hittime=14
air.hittime=14
ground.velocity=-2,-3.5
air.velocity=-2,-3.5
fall=1

[state 260,着地]
type=changestate
trigger1=pos y>=0
trigger1=vel y>0
value=52

;---------------------------------------------------------------------------
;ダッシュ強
[statedef 270]
type=a
movetype=a
physics=n
poweradd=22
ctrl=0
velset=3,-2
anim=230

[state 270,重力]
type=veladd
trigger1=1
y=0.1

[state 270,素振り音]
type=playsnd
trigger1=animelemtime(6)=0
value=1,2

[state 270,声]
type=playsnd
trigger1=animelemtime(6)=0
value=0,3
channel=0

[state 270,ヒット定義]
type=hitdef
trigger1=animelemtime(6)=0
trigger2=var(0)&16
attr=a,na
guardflag=ha
animtype=hard
damage=70
pausetime=13,13
sparkno=s6102
guard.sparkno=s6125
sparkxy=-20,-62
hitsound=s5,2
guardsound=s6,0
ground.type=high
ground.slidetime=17
ground.hittime=17
air.hittime=17
ground.velocity=-3,-1
air.velocity=-3,-1
fall=1

[state 270,着地]
type=changestate
trigger1=pos y>=0
trigger1=vel y>0
value=52

;===========================================================================
;2弱
[statedef 400]
type=c
movetype=a
physics=c
poweradd=15
ctrl=0
anim=400

[state 400,素振り音]
type=playsnd
trigger1=animelemtime(3)=0
value=1,0

[state 400,ヒット定義]
type=hitdef
trigger1=animelemtime(3)=0
trigger2=var(0)&16
attr=c,na
damage=28
animtype=light
guardflag=ma
pausetime=7,7
sparkno=s6100
guard.sparkno=s6125
sparkxy=-12,-63
hitsound=s5,0
guardsound=s6,0
ground.type=low
ground.slidetime=13
ground.hittime=13
air.hittime=13
ground.velocity=-4
air.velocity=-1.5,-3

[state 400,状態キャンセル]
type=ctrlset
trigger1=time=8
value=1

[state 400,終了]
type=changestate
trigger1=animtime=0
value=11
ctrl=1

;---------------------------------------------------------------------------
;2中
[statedef 410]
type=c
movetype=a
physics=c
poweradd=50
ctrl=0
anim=410

[state 410,素振り音]
type=playsnd
trigger1=animelemtime(3)=0
value=1,1

[state 410,ヒット定義]
type=hitdef
trigger1 = hitcount < 1
trigger1 = moveguarded < 1
trigger2=var(0)&16
attr=c,na
damage=56
animtype=hard
guardflag=l
pausetime=9,9
sparkno=s6101
guard.sparkno=s6125
sparkxy=-12,-7
hitsound=s5,1
guardsound=s6,0
ground.type=trip
ground.slidetime=16
ground.hittime=16
air.hittime=16
ground.velocity=0,-4
air.velocity=-1,-4

[state 410,終了]
type=changestate
trigger1=animtime=0
value=11
ctrl=1

;---------------------------------------------------------------------------
;2強
[statedef 420]
type=c
movetype=a
physics=c
poweradd=70
ctrl=0
anim=420

[state 420,素振り音]
type=playsnd
trigger1=animelemtime(5)=0
value=1,2

[state 420,声]
type=playsnd
trigger1=animelemtime(3)=0
value=0,3
channel=0

[state 420,ヒット定義]
type=hitdef
trigger1=animelemtime(5)=0
trigger2=var(0)&16
attr=c,na
damage=91
animtype=up
guardflag=ma
pausetime=9,9
sparkno=s6102
guard.sparkno=s6125
sparkxy=-12,-63
hitsound=s5,2
guardsound=s6,0
ground.slidetime=21
ground.hittime=21
air.hittime=21
ground.velocity=-2.5,-6
air.velocity=-1.2,-6
fall = 1

[state 420,終了]
type=changestate
trigger1=animtime=0
value=11
ctrl=1

;---------------------------------------------------------------------------
;===========================================================================
;J弱
[statedef 600]
type=a
movetype=a
physics=a
poweradd=11
ctrl=0
anim=600

[state 600,素振り音]
type=playsnd
trigger1=animelemtime(2)=0
value=1,0

[state 600,ヒット定義]
type=hitdef
trigger1=animelemtime(2)=0
trigger2=var(0)&16
attr=a,na
damage=35
guardflag=ha
pausetime=9,9
sparkno=s6100
guard.sparkno=s6125
sparkxy=-12,-30
hitsound=s5,0
guardsound=s6,0
ground.type=high
ground.slidetime=21
ground.hittime=21
air.hittime=21
ground.velocity=-4
air.velocity=-1.3,-3

;---------------------------------------------------------------------------
;J中
[statedef 610]
type=a
movetype=a
physics=a
poweradd=65
ctrl=0
anim=610

[state 610,素振り音]
type=playsnd
trigger1=animelemtime(2)=0
value=1,1

[state 610,ヒット定義]
type=hitdef
trigger1=animelemtime(2)=0
trigger2=var(0)&16
attr=a,na
damage=70
guardflag=ha
pausetime=9,9
sparkno=s6101
guard.sparkno=s6125
sparkxy=-10,-55
hitsound=s5,1
guardsound=s6,0
animtype=med
ground.type=high
ground.slidetime=21
ground.hittime=21
air.hittime=21
ground.velocity=-5
air.velocity=-3,-4

;---------------------------------------------------------------------------
;J強
[statedef 620]
type=a
movetype=a
physics=a
poweradd=65
ctrl=0
anim=620

[state 620,素振り音]
type=playsnd
trigger1=animelemtime(5)=0
value=1,2

[state 620,ヒット定義]
type=hitdef
triggerall = hitcount < 1
triggerall = moveguarded < 1
trigger1=animelemtime(4)=0
trigger2=animelemtime(5)=0
trigger3=animelemtime(6)=0
trigger4=var(0)&16
attr=a,na
damage=98
guardflag=ha
pausetime=9,9
sparkno=s6102
guard.sparkno=s6125
sparkxy=-14,-45
hitsound=s5,2
guardsound=s6,0
animtype=med
ground.type=high
ground.slidetime=21
ground.hittime=21
air.hittime=21
ground.velocity=-7
air.velocity=-3,-8

;===========================================================================
;通常投げ:掴み
[statedef 800]
type=s
movetype=a
physics=s
velset=0,0
ctrl=0
anim=800

[state 800,つかみ判定]
type=hitdef
trigger1=time=0
attr=s,nt
hitflag=m-
priority=1,miss
hitsound=s800,0
p1facing=1
p2facing=1
p1stateno=810
p2stateno=820
guard.dist=0
numhits=0
id=800

[state 800,つかみ失敗]
type=changestate
trigger1=animtime=0
value=ifelse(command="holdfwd",230,220)

;---------------------------------------------------------------------------
;通常投げ:成功
[statedef 810]
type=s
movetype=a
physics=s
anim=810
velset=0,0
poweradd=60

[state 810,振り向き]
type=turn
triggerall=time=0
trigger1=command="holdback"

[state 810,こっちを向かせる]
type=targetfacing
trigger1=animelemtime(8)<0
value=-1
id=800

[state 810,対象の位置]
type=targetbind
trigger1=animelemtime(8)<0
pos=70,0
id=800

[state 810,幅を増やす]
type=width
trigger1=animelemtime(8)<0
edge=60,0

[state 810,波紋ッ！]
type=playsnd
trigger1=time=0
value=810,0
channel=0

[state 810,ダメージ]
type=targetlifeadd
trigger1=animelemtime(8)=0
value=-floor(84*const(data.attack)*fvar(0)*fvar(1)*fvar(39)/100)
id=800

[state 810,ヒット数]
type=hitadd
trigger1=animelemtime(8)=0
value=1

[state 810,疑似ヒット音]
type=playsnd
trigger1=animelemtime(8)=0
value=5,5

[state 810,疑似ヒットスパーク]
type=explod
trigger1=animelemtime(8)=0
anim=6104
pos=-40,-80
postype=p2
ontop=1
ownpal=1

[state 810,吹っ飛び]
type=targetvelset
trigger1=animelemtime(8)=0
x=-5
y=-6
id=800

[state 810,巻き込み]
type=hitdef
trigger1=animelemtime(8)=0
trigger2=var(0)&16
attr=s,na
guardflag=ma
animtype=back
damage=84
hitsound=s5,5
guardsound=s6,0
ground.slidetime=20
guard.slidetime=20
ground.hittime=20
air.hittime=20
guard.ctrltime=20
yaccel=0.3
ground.velocity=-5,-6
air.velocity=-5,-6
ground.cornerpush.veloff=0
p2facing=1
fall=1
fall.recover=0
nochainid=800
guard.kill=0
numhits=1
givepower=30,15

[state 810,終了]
type=changestate
trigger1=animtime=0
value=0
ctrl=1

[state 810,投げ抜けのチャンス]
type=explod
trigger1=time<5
anim=6166
id=800
pos=0,-125
postype=p2
ontop=1
ownpal=1

[state 810,投げ抜け:対象側]
type=targetstate
triggerall=numexplod(800)
trigger1=target(800),command="z"
trigger1=target(800),command="holdfwd"||target(800),command="holdback"
value=830
id=800

[state 810,投げ抜け:自分側]
type=changestate
triggerall=numexplod(800)
trigger1=target(800),command="z"
trigger1=target(800),command="holdfwd"||target(800),command="holdback"
value=830

;---------------------------------------------------------------------------
;通常投げ:対象側
[statedef 820]
type=a
movetype=h
physics=n
velset=0,0
poweradd=53

[state 820,無敵]
type=nothitby
trigger1=1
value=sca

[state 820,対象のアニメ変更1]
type=changeanim2
trigger1=time=0
value=820

[state 820,対象のアニメ変更2]
type=changeanim
trigger1=!gethitvar(isbound)
value=ifelse(selfanimexist(5035),5035,5030)
persistent=0

[state 820,重力]
type=veladd
trigger1=!gethitvar(isbound)
y=0.3

[state 820,倒れる]
type=selfstate
trigger1=pos y>=0
trigger1=vel y>0
value=5100

;---------------------------------------------------------------------------
;通常投げ:投げ抜け
[statedef 830]
type=a
movetype=i
physics=n
anim=5210
velset=-2,-5

[state 830,無敵]
type=nothitby
trigger1=1
value=sca

[state 830,重力]
type=veladd
trigger1=1
y=0.3

[state 830,着地]
type=selfstate
trigger1=time>35
value=52

;===========================================================================

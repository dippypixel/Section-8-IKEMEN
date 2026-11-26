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
sparkxy=-10,-76
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
trigger1=animelemtime(7)=0
value=1,2

[state 220,声]
type=playsnd
trigger1=animelemtime(2)=0
value=0,1
channel=0

[state 220,軸位置移動]
type=posadd
trigger1=animelemtime(7)=0
x=12

[state 220,ヒット定義]
type=hitdef
trigger1=animelemtime(7)=0
trigger2=var(0)&16
attr=s,na
animtype=medium
damage=91
guardflag=ma
pausetime=9,9
sparkno=s6102
guard.sparkno=s6125
sparkxy=-10,-60
hitsound=s5,2
guardsound=s6,0
ground.type=low
ground.slidetime=21
ground.hittime=21
air.hittime=21
ground.velocity=-6
air.velocity=-2.2,-3.2

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
sparkxy=-10,-42
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
trigger1=animelemtime(4)=0
value=1,1

[state 410,ヒット定義]
type=hitdef
trigger1=animelemtime(4)=0
trigger2=var(0)&16
attr=c,na
damage=56
animtype=medium
guardflag=l
pausetime=9,9
sparkno=s6101
guard.sparkno=s6125
sparkxy=-5,-10
hitsound=s5,1
guardsound=s6,0
ground.type=low
ground.slidetime=16
ground.hittime=16
air.hittime=16
ground.velocity=-4
air.velocity=-3,-4

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
trigger1=animelemtime(4)=0
trigger2=animelemtime(5)=0
trigger3=animelemtime(6)=0
trigger4=animelemtime(7)=0
trigger5=animelemtime(8)=0
trigger6=animelemtime(9)=0
trigger7=var(0)&16
attr=c,na
damage=30
guardflag=ma
pausetime=9,9
sparkno=s6102
guard.sparkno=s6125
sparkxy=0,-120
hitsound=s5,2
guardsound=s6,0
ground.slidetime=21
ground.hittime=21
air.hittime=21
ground.velocity=-4.5,0
air.velocity=-3.2,0

[state 420,終了]
type=changestate
trigger1=animtime=0
value=11
ctrl=1

;---------------------------------------------------------------------------
;3中
[statedef 430]
type=c
movetype=a
physics=c
poweradd=22
ctrl=0
anim=430

[state 430,スライディング音]
type=playsnd
trigger1=animelemtime(3)=0
value=1,2

[state 430,声]
type=playsnd
trigger1=animelemtime(3)=0
value=0,2
channel=0

[state 430,滑り込み]
type=velset
trigger1=animelemtime(3)=0
x=10

[state 430,ヒット定義]
type=hitdef
trigger1=animelemtime(4)=0
trigger2=var(0)&16
attr=c,na
damage=42
animtype=medium
guardflag=l
pausetime=11,11
sparkno=s6101
guard.sparkno=s6125
sparkxy=-10,-8
hitsound=s5,1
guardsound=s6,0
ground.type=low
ground.slidetime=14
ground.hittime=14
air.hittime=14
ground.velocity=-5
air.velocity=-2,-3

[state 430,終了]
type=changestate
trigger1=animtime=0
value=11
ctrl=1

;---------------------------------------------------------------------------
;3強
[statedef 440]
type=c
movetype=a
physics=c
poweradd=22
ctrl=0
anim=440

[state 440,スライディング音]
type=playsnd
trigger1=animelemtime(4)=0
value=1,2

[state 440,声]
type=playsnd
trigger1=animelemtime(4)=0
value=0,2
channel=0

[state 440,滑り込み]
type=velset
trigger1=animelemtime(4)=0
x=15

[state 440,ヒット定義]
type=hitdef
trigger1=animelemtime(6)=0
trigger2=var(0)&16
attr=c,na
damage=70
animtype=hard
guardflag=l
pausetime=13,13
sparkno=s6102
guard.sparkno=s6125
sparkxy=-10,-8
hitsound=s5,2
guardsound=s6,0
ground.type=trip
ground.slidetime=17
ground.hittime=17
air.hittime=17
ground.velocity=-5
air.velocity=-2,-3

[state 440,終了]
type=changestate
trigger1=animtime=0
value=11
ctrl=1

;---------------------------------------------------------------------------
;ダッシュ2弱
[statedef 450]
type=c
movetype=a
physics=c
poweradd=22
ctrl=0
anim=450

[state 450,スライディング音]
type=playsnd
trigger1=animelemtime(3)=0
value=1,2

[state 450,滑り込み]
type=velset
trigger1=animelemtime(3)=0
x=15

[state 450,ヒット定義]
type=hitdef
trigger1=animelemtime(4)=0
trigger2=var(0)&16
attr=c,na
damage=70
animtype=hard
guardflag=l
pausetime=9,9
sparkno=s6102
guard.sparkno=s6125
sparkxy=-10,-8
hitsound=s5,0
guardsound=s6,0
ground.type=low
ground.slidetime=11
ground.hittime=11
air.hittime=11
ground.velocity=-5
air.velocity=-2,-3

[state 450,終了]
type=changestate
trigger1=animtime=0
value=11
ctrl=1

;---------------------------------------------------------------------------
;ダッシュ2中
[statedef 460]
type=c
movetype=a
physics=c
poweradd=22
ctrl=0
anim=450

[state 460,スライディング音]
type=playsnd
trigger1=animelemtime(3)=0
value=1,2

[state 460,滑り込み]
type=velset
trigger1=animelemtime(3)=0
x=15

[state 460,ヒット定義]
type=hitdef
trigger1=animelemtime(4)=0
trigger2=var(0)&16
attr=c,na
damage=70
animtype=hard
guardflag=l
pausetime=11,11
sparkno=s6101
guard.sparkno=s6125
sparkxy=-10,-8
hitsound=s5,1
guardsound=s6,0
ground.type=low
ground.slidetime=14
ground.hittime=14
air.hittime=14
ground.velocity=-5
air.velocity=-2,-3

[state 460,終了]
type=changestate
trigger1=animtime=0
value=11
ctrl=1

;---------------------------------------------------------------------------
;ダッシュ2強
[statedef 470]
type=c
movetype=a
physics=c
poweradd=22
ctrl=0
anim=450

[state 470,スライディング音]
type=playsnd
trigger1=animelemtime(3)=0
value=1,2

[state 470,滑り込み]
type=velset
trigger1=animelemtime(3)=0
x=15

[state 470,ヒット定義]
type=hitdef
trigger1=animelemtime(4)=0
trigger2=var(0)&16
attr=c,na
damage=70
animtype=hard
guardflag=l
pausetime=13,13
sparkno=s6102
guard.sparkno=s6125
sparkxy=-10,-8
hitsound=s5,2
guardsound=s6,0
ground.type=trip
ground.slidetime=17
ground.hittime=17
air.hittime=17
ground.velocity=-5
air.velocity=-2,-3

[state 470,終了]
type=changestate
trigger1=animtime=0
value=11
ctrl=1

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
trigger1=animelemtime(5)=0
value=1,0

[state 600,ヒット定義]
type=hitdef
trigger1=animelemtime(3)=0
trigger2=var(0)&16
attr=a,na
damage=35
guardflag=ha
pausetime=9,9
sparkno=s6100
guard.sparkno=s6125
sparkxy=-10,-58
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
trigger1=animelemtime(5)=0
value=1,1

[state 610,ヒット定義]
type=hitdef
trigger1=animelemtime(3)=0
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
trigger1=animelemtime(5)=0
trigger2=var(0)&16
attr=a,na
damage=98
guardflag=ha
pausetime=9,9
sparkno=s6102
guard.sparkno=s6125
sparkxy=-10,-40
hitsound=s5,2
guardsound=s6,0
animtype=med
ground.type=high
ground.slidetime=21
ground.hittime=21
air.hittime=21
ground.velocity=-5
air.velocity=-3,-4

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
trigger1=animelemtime(13)<0
value=-1
id=800

[state 810,対象の位置]
type=targetbind
trigger1=animelemtime(13)<0
pos=80,0
id=800


[state 810,幅を増やす]
type=width
trigger1=animelemtime(13)<0
edge=60,0

[state 810,くらえいッ！]
type=playsnd
trigger1=time=0
value=0,3
channel=0

[state 810,ダメージ]
type=targetlifeadd
trigger1=animelemtime(3)=0
trigger2=animelemtime(4)=0
trigger3=animelemtime(5)=0
trigger4=animelemtime(6)=0
trigger5=animelemtime(7)=0
trigger6=animelemtime(8)=0
trigger7=animelemtime(9)=0
trigger8=animelemtime(10)=0
trigger9=animelemtime(11)=0
trigger10=animelemtime(12)=0
trigger11=animelemtime(13)=0
value=-floor(7*const(data.attack)*fvar(0)*fvar(1)*fvar(39)/100)
id=800

[state 810,ヒット数]
type=hitadd
trigger1=animelemtime(3)=0
trigger2=animelemtime(4)=0
trigger3=animelemtime(5)=0
trigger4=animelemtime(6)=0
trigger5=animelemtime(7)=0
trigger6=animelemtime(8)=0
trigger7=animelemtime(9)=0
trigger8=animelemtime(10)=0
trigger9=animelemtime(11)=0
trigger10=animelemtime(12)=0
trigger11=animelemtime(13)=0
value=1

[state 810,疑似ヒット音]
type=playsnd
trigger1=animelemtime(3)=0
value=5,112

[state 810,疑似ヒットスパーク]
type=explod
trigger1=animelemtime(3)=0
trigger2=animelemtime(4)=0
trigger3=animelemtime(5)=0
trigger4=animelemtime(6)=0
trigger5=animelemtime(7)=0
trigger6=animelemtime(8)=0
trigger7=animelemtime(9)=0
trigger8=animelemtime(10)=0
trigger9=animelemtime(11)=0
trigger10=animelemtime(12)=0
trigger11=animelemtime(13)=0
anim=6115
pos=-40,-80
postype=p2
ontop=1
ownpal=1


[state 810,吹っ飛び]
type=targetvelset
trigger1=animelemtime(13)=0
x=-5
y=-6
id=800

[state 810,巻き込み]
type=hitdef
trigger1=animelemtime(3)=0
trigger2=animelemtime(4)=0
trigger3=animelemtime(5)=0
trigger4=animelemtime(6)=0
trigger5=animelemtime(7)=0
trigger6=animelemtime(8)=0
trigger7=animelemtime(9)=0
trigger8=animelemtime(10)=0
trigger9=animelemtime(11)=0
trigger10=animelemtime(12)=0
trigger11=animelemtime(13)=0
trigger12=var(0)&16
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
palfx.time = 60
palfx.add = 48,48,48
palfx.mul = 256,256,256
palfx.sinadd = 64,64,64,4
palfx.invertall = 1
palfx.color = 0
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

[state 820,対象の色変更]
type=palfx
trigger1=time=0
palfx.time = 60
palfx.add = 48,48,48
palfx.mul = 256,256,256
palfx.sinadd = 64,64,64,4
palfx.invertall = 1
palfx.color = 0

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
;立S
[statedef 300]
type=s
movetype=a
physics=s
poweradd=65
ctrl=0
velset=0,0
anim=300

[state 300,声]
type=playsnd
trigger1=animelemtime(2)=0
value=0,2
channel=0

[state 300,素振り音]
type=playsnd
trigger1=animelemtime(12)=0
value=1000,0

[state 300,クラッカー]
type=helper
trigger1=animelemtime(12)=0
helpertype=normal
stateno=301
id=1000
name="Cracker"

[state 300,前進]
type=velset
trigger1=animelemtime(11)=0
x=6

[state 300,ヒット定義]
type=hitdef
trigger1=animelemtime(12)=0
trigger2=animelemtime(12)=3
trigger3=animelemtime(12)=6
trigger4=animelemtime(12)=9
trigger5=var(0)&16
attr=s,sa
animtype=medium
damage=ifelse(hitcount,14,63),7
guardflag=ma
pausetime=5,5
sparkno=s6103
guard.sparkno=s6125
sparkxy=-10,-81
hitsound=s5,4
guardsound=s6,0
ground.type=low
ground.slidetime=27
ground.hittime=27
air.hittime=27
guard.hittime=19
ground.velocity=-2.2,0
air.velocity=-2.2,-3.2
guard.kill=0

[state 300,コンボ補正開始]
type=varset
triggerall=!var(1)
trigger1=movehit
var(1)=enemynear,gethitvar(hitcount)
ignorehitpause=1

[state 300,終了]
type=changestate
trigger1=animtime=0
value=0
ctrl=1

;^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
;立Sクラッカー
[statedef 301]
type=s
movetype=a
physics=s
anim=1003
sprpriority=2
ctrl=0

[state 301,固定]
type=bindtoroot
trigger1=1
facing=1
pos=103,-81

[state 301,終了]
type=destroyself
triggerall=ishelper
trigger1=root,animelemtime(13)=0
trigger2=root,stateno!=300

;---------------------------------------------------------------------------
;6S
[statedef 310]
type=s
movetype=a
physics=s
poweradd=65
ctrl=0
velset=0,0
anim=310

[state 310,素振り音]
type=playsnd
trigger1=animelemtime(8)=0
value=1000,0

[state 310,声]
type=playsnd
trigger1=animelemtime(6)=0
value=0,3
channel=0

[state 310,クラッカー]
type=helper
trigger1=animelemtime(8)=0
helpertype=normal
stateno=311
id=1000
name="Cracker"

[state 310,ヒット定義]
type=hitdef
trigger1=animelemtime(8)=0
trigger2=animelemtime(8)=3
trigger3=animelemtime(8)=6
trigger4=var(0)&16
attr=s,sa
animtype=medium
damage=ifelse(hitcount,14,63),7
guardflag=ma
pausetime=5,5
sparkno=s6103
guard.sparkno=s6125
sparkxy=-10,-140
hitsound=s5,4
guardsound=s6,0
ground.type=low
ground.slidetime=18
ground.hittime=18
air.hittime=18
ground.velocity=-2.2,-6.2
air.velocity=-2.2,-6.2
fall=1
guard.kill=0

[state 310,コンボ補正開始]
type=varset
triggerall=!var(1)
trigger1=movehit
var(1)=enemynear,gethitvar(hitcount)
ignorehitpause=1

[state 310,終了]
type=changestate
trigger1=animtime=0
value=0
ctrl=1

;^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
;6Sクラッカー
[statedef 311]
type=s
movetype=a
physics=s
anim=1003
sprpriority=2
ctrl=0

[state 311,固定]
type=bindtoroot
trigger1=1
facing=1
pos=33,-140

[state 311,終了]
type=destroyself
triggerall=ishelper
trigger1=root,animelemtime(10)=0
trigger2=root,stateno!=310

;---------------------------------------------------------------------------
;DS
[statedef 350]
type=s
movetype=a
physics=n
poweradd=65
ctrl=0
velset=5,0
anim=350

[state 350,素振り音]
type=playsnd
trigger1=animelemtime(6)=0
value=1000,0

[state 350,クラッカー]
type=helper
trigger1=animelemtime(5)=0
helpertype=normal
stateno=351
id=1000
name="Cracker"

[state 350,ブレーキ]
type=velmul
trigger1=1
x=0.96

[state 350,停止]
type=velset
trigger1=animelemtime(7)=0
x=0

[state 350,ヒット定義]
type=hitdef
trigger1=animelemtime(6)=0
trigger2=animelemtime(6)=3
trigger3=animelemtime(6)=6
trigger4=animelemtime(6)=9
trigger5=animelemtime(6)=12
trigger6=animelemtime(6)=15
trigger7=var(0)&16
attr=s,sa
animtype=medium
damage=ifelse(hitcount,14,63),7
guardflag=ma
pausetime=5,5
sparkno=s6103
guard.sparkno=s6125
sparkxy=-10,-81
hitsound=s5,4
guardsound=s6,0
ground.type=low
ground.slidetime=27
ground.hittime=27
air.hittime=27
ground.velocity=-2.2,0
air.velocity=-2.2,-3.2
guard.kill=0

[state 350,コンボ補正開始]
type=varset
triggerall=!var(1)
trigger1=movehit
var(1)=enemynear,gethitvar(hitcount)
ignorehitpause=1

[state 350,終了]
type=changestate
trigger1=animtime=0
value=0
ctrl=1

;^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
;DSクラッカー
[statedef 351]
type=s
movetype=a
physics=s
anim=1003
sprpriority=2
ctrl=0

[state 351,固定]
type=bindtoroot
trigger1=1
facing=1
pos=103,-81

[state 351,終了]
type=destroyself
triggerall=ishelper
trigger1=root,animelemtime(7)=0
trigger2=root,stateno!=350

;---------------------------------------------------------------------------
;2S
[statedef 500]
type=s
movetype=a
physics=s
poweradd=65
ctrl=0
velset=0,0
anim=500

[state 500,声]
type=playsnd
trigger1=animelemtime(2)=0
value=0,1
channel=0

[state 500,素振り音]
type=playsnd
trigger1=animelemtime(9)=0
value=1000,0

[state 500,クラッカー]
type=helper
trigger1=animelemtime(9)=0
helpertype=normal
stateno=501
id=1000
name="Cracker"

[state 500,ヒット定義]
type=hitdef
trigger1=animelemtime(9)=0
trigger2=animelemtime(9)=3
trigger3=var(0)&16
attr=c,sa
animtype=medium
damage=ifelse(hitcount,14,63),7
guardflag=l
pausetime=5,5
sparkno=s6103
guard.sparkno=s6125
sparkxy=-10,-9
hitsound=s5,4
guardsound=s6,0
ground.type=trip
ground.slidetime=18
ground.hittime=18
air.hittime=18
ground.velocity=-2.2,-2.2
air.velocity=-2.2,-2.2
guard.kill=0

[state 500,コンボ補正開始]
type=varset
triggerall=!var(1)
trigger1=movehit
var(1)=enemynear,gethitvar(hitcount)
ignorehitpause=1

[state 500,終了]
type=changestate
trigger1=animtime=0
value=0
ctrl=1

;^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
;2Sクラッカー
[statedef 501]
type=s
movetype=a
physics=s
anim=1002
sprpriority=2
ctrl=0

[state 501,固定]
type=bindtoroot
trigger1=1
facing=1
pos=75,-9

[state 501,終了]
type=destroyself
triggerall=ishelper
trigger1=root,animelemtime(11)=0
trigger2=root,stateno!=500

;---------------------------------------------------------------------------
;JS
[statedef 700]
type=a
movetype=a
physics=a
poweradd=20
ctrl=0
anim=700

[state 700,素振り音]
type=playsnd
trigger1=animelemtime(5)=0
value=1000,0

[state 700,声]
type=playsnd
trigger1=animelemtime(4)=0
value=0,0
channel=0

[state 700,クラッカー]
type=helper
trigger1=animelemtime(5)=0
helpertype=normal
stateno=701
id=1000
name="Cracker"

[state 700,ヒット定義]
type=hitdef
trigger1=animelemtime(5)=0
trigger2=animelemtime(5)=3
trigger3=animelemtime(5)=6
trigger4=var(0)&16
attr=a,sa
damage=ifelse(hitcount,14,63),7
guardflag=ha
pausetime=5,5
sparkno=s6103
guard.sparkno=s6125
sparkxy=-10,-81
hitsound=s5,4
guardsound=s6,0
ground.type=low
ground.slidetime=18
ground.hittime=18
air.hittime=18
ground.velocity=-2.2,0
air.velocity=-2.2,-3.2
guard.kill=0

[state 700,コンボ補正開始]
type=varset
triggerall=!var(1)
trigger1=hitcount>1
trigger1=movehit
var(1)=enemynear,gethitvar(hitcount)
ignorehitpause=1

;^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
;JSクラッカー
[statedef 701]
type=s
movetype=a
physics=s
anim=1003
sprpriority=2
ctrl=0

[state 701,固定]
type=bindtoroot
trigger1=1
facing=1
pos=50,-52

[state 701,終了]
type=destroyself
triggerall=ishelper
trigger1=root,animelemtime(7)=0
trigger2=root,stateno!=700

;===========================================================================
;コマンド挑発
[statedef 1950]
type=s
movetype=i
physics=s
ctrl=0
anim=197
velset=0,0
sprpriority=2

[state 1950,ドイツの科学は世界一ィ]
type=playsnd
trigger1=time=0
value=2210,0
channel=0

[state 1950,終了]
type=changestate
trigger1=animtime=0
value=0
ctrl=1
;---------------------------------------------------------------------------
[statedef 1951]
type=s
movetype=i
physics=s
ctrl=0
anim=197
velset=0,0
sprpriority=2

[state 1950,アヒィ]
type=playsnd
trigger1=time=0
value=2211,random%2
channel=0

[state 1950,終了]
type=changestate
trigger1=animtime=0
value=0
ctrl=1

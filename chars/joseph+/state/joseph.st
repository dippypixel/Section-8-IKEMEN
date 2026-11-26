;勝利ポーズ分岐
[statedef 180]
type=s

[state 180,to be continued...]
type=explod
triggerall=!matchover
trigger1=time=0
anim=6054
id=6054
pos=4,206
postype=left
removetime=-1
bindtime=-1
ontop=1
ownpal=1

[state 180,WIN]
type=helper
triggerall=matchover
trigger1=time=0
helpertype=normal
name="cutin"
id=6050
pos=0,0
postype=back
facing=1
stateno=6050
keyctrl=0
ownpal=0

[state 180,汎用]
type=changestate
trigger1=time=0
value=181+(random%2)

;---------------------------------------------------------------------------
;勝利ポーズ1
[statedef 181]
type=s
ctrl=0
anim=181
velset=0,0

[State 195]
type = playsnd
triggerall = anim = 181
trigger1 = animelem = 5
trigger2 = animelem = 12
value = 1003,100

[state 181,勝利ポーズ]
type=assertspecial
trigger1=time<150
trigger2=numhelper(6050)
flag=roundnotover

[state 181,またまたやらせていただきましたァ～ン]
type=playsnd
trigger1=time=0
value=181,0
channel=0

;---------------------------------------------------------------------------
;勝利ポーズ2
[statedef 182]
type=s
ctrl=0
anim=181
velset=0,0

[State 195]
type = playsnd
triggerall = anim = 181
trigger1 = animelem = 5
trigger2 = animelem = 12
value = 1003,100

[state 182,勝利ポーズ]
type=assertspecial
trigger1=time<240
trigger2=numhelper(6050)
flag=roundnotover

[state 182,相手が勝ち誇ったとき、既にそいつは敗北している]
type=playsnd
trigger1=time=0
value=182,0
channel=0

;===========================================================================
;イントロ分岐
[statedef 190]
type=s
ctrl=0
velset=0,0

[state 190,初期ゲージ]
type=powerset
trigger1=roundno=1
trigger1=power<1000
value=1000

[state 190,板割り]
type=changestate
triggerall=time=0
trigger1=enemy,name="Joseph Joestar"
trigger2=enemy,authorname="Men'sClub"
trigger3=enemy,authorname="Nimame"
value=1900

[state 190,板割り]
type=changestate
triggerall=time=0
trigger1=enemy,name="Kars"
value=1901

[state 190,板割り]
type=changestate
triggerall=time=0
trigger1=enemy,name="Stroheim"
value=1902

[state 190,板割り]
type=changestate
triggerall=time=0
trigger1=enemy,name="Caesar"
trigger2=enemy,name="Caesar Anthonio Zeppeli"
value=1903

[state 190,板割り]
type=changestate
triggerall=time=0
trigger1=enemy,name="Elizabeth Joestar"
value=1904

[state 190,板割り]
type=changestate
triggerall=time=0
trigger1=enemy,name="Chun-Li"
trigger2=enemy,name="Mai"
trigger3=enemy,name="Mai Shiranui"
trigger4=enemy,name="CFJ_Xiaoyu"
trigger5=enemy,name="Cammy"
trigger6=enemy,name="Sakura Kasugano"
trigger7=enemy,name="MIDLER"
trigger8=enemy,name="mariah"
trigger9=enemy,name="MAMIYA"
trigger10=enemy,name="Asuka Kazama"
trigger11=enemy,name="CFJ_JuriHan"
trigger12=enemy,name="Karin Kanzuki"
trigger13=enemy,name="Jolyne"
trigger14=enemy,name="Yamagishi Yukako"
trigger15=enemy,name="CvS_AsukaTAG"
value=1905

[state 190,板割り]
type=changestate
triggerall=time=0
trigger1=enemy,name="Santana"
value=1918

[state 190,汎用]
type=changestate
trigger1=time=0
value=191+(random%2)

;---------------------------------------------------------------------------
;イントロ
[statedef 191]
type=s
ctrl=0
anim=2006
velset=0,0

[state 191,イントロ]
type=assertspecial
trigger1=1
flag=intro

[State 195]
type = playsnd
triggerall = anim = 2006
trigger1 = animelem = 32
trigger2 = animelem = 39
value = 1003,100

[state 191,ボイス]
type=playsnd
trigger1=time=1
value=191, 0
channel=0

[state 191,ボイス]
type=playsnd
trigger1=time=142
value=1200, 0
channel=0

[state 191,ボイス]
type=playsnd
trigger1=time=205
value=0, 2
channel=0

[state 191,アニメ変更]
type=changeanim
trigger1=roundstate=0
value=anim

[state 191,ステート変更]
type=changestate
trigger1=animtime=0
value=0

;Intro 2
[statedef 192]
type=s
ctrl=0
anim=195
velset=0,0

[State 195]
type = playsnd
triggerall = anim = 195
trigger1 = animelem = 5
trigger2 = animelem = 12
value = 1003,100

[state 191,イントロ]
type=assertspecial
trigger1=1
flag=intro

[state 191,ボイス]
type=playsnd
trigger1=time=40
value=10005,random%2
channel=0

[state 191,アニメ変更]
type=changeanim
trigger1=roundstate=0
value=anim

[state 191,ステート変更]
type=changestate
trigger1=animtime=0
value=0

;---------------------------------------------------------------------------
;Mirror Match Intro
[statedef 1900]
type=s
ctrl=0
anim=2000
velset=0,0

[state 191,イントロ]
type=assertspecial
trigger1=1
flag=intro

[state 191,ボイス]
type=playsnd
trigger1=time=40
value= 10002, (random % 2)
channel=0

[state 191,アニメ変更]
type=changeanim
trigger1=roundstate=0
value=anim

[state 191,ステート変更]
type=changestate
trigger1=animtime=0
value=0

;---------------------------------------------------------------------------
;Kars Intro
[statedef 1901]
type=s
ctrl=0
anim=2001
velset=0,0

[state 191,イントロ]
type=assertspecial
trigger1=1
flag=intro

[state 191,ボイス]
type=playsnd
trigger1=time=40
value= 10001,0
channel=0

[state 191,アニメ変更]
type=changeanim
trigger1=roundstate=0
value=anim

[state 191,ステート変更]
type=changestate
trigger1=animtime=0
value=0

;---------------------------------------------------------------------------
;Storheim Intro
[statedef 1902]
type=s
ctrl=0
anim=2002
velset=0,0

[state 191,イントロ]
type=assertspecial
trigger1=1
flag=intro

[State 195]
type = playsnd
triggerall = anim = 2002
trigger1 = animelem = 5
trigger2 = animelem = 12
value = 1003,100

[state 191,ボイス]
type=playsnd
trigger1=time=40
value=10003, 0
channel=0

[state 191,アニメ変更]
type=changeanim
trigger1=roundstate=0
value=anim

[state 191,ステート変更]
type=changestate
trigger1=animtime=0
value=0

;---------------------------------------------------------------------------
;Caesar Intro
[statedef 1903]
type=s
ctrl=0
anim=2003
velset=0,0

[state 191,イントロ]
type=assertspecial
trigger1=1
flag=intro

[State 195]
type = playsnd
triggerall = anim = 2003
trigger1 = animelem = 5
trigger2 = animelem = 12
value = 1003,100

[state 191,ボイス]
type=playsnd
trigger1=time=40
value=10003, 1
channel=0

[state 191,アニメ変更]
type=changeanim
trigger1=roundstate=0
value=anim

[state 191,ステート変更]
type=changestate
trigger1=animtime=0
value=0

;---------------------------------------------------------------------------
;Lisa Lisa Intro
[statedef 1904]
type=s
ctrl=0
anim=2004
velset=0,0

[state 191,イントロ]
type=assertspecial
trigger1=1
flag=intro

[State 195]
type = playsnd
triggerall = anim = 2004
trigger1 = animelem = 5
trigger2 = animelem = 12
value = 1003,100

[state 191,ボイス]
type=playsnd
trigger1=time=40
value=10003, 2
channel=0

[state 191,アニメ変更]
type=changeanim
trigger1=roundstate=0
value=anim

[state 191,ステート変更]
type=changestate
trigger1=animtime=0
value=0

;---------------------------------------------------------------------------
;Gals Intro
[statedef 1905]
type=s
ctrl=0
anim=2005
velset=0,0

[state 191,イントロ]
type=assertspecial
trigger1=1
flag=intro

[State 195]
type = playsnd
triggerall = anim = 2005
trigger1 = animelem = 5
trigger2 = animelem = 12
value = 1003,100

[state 191,ボイス]
type=playsnd
trigger1=time=40
value=10003, 3
channel=0

[state 191,アニメ変更]
type=changeanim
trigger1=roundstate=0
value=anim

[state 191,ステート変更]
type=changestate
trigger1=animtime=0
value=0

;---------------------------------------------------------------------------
;Santana Intro
[statedef 1918]
type=s
ctrl=0
anim=2007
velset=0,0

[state 191,イントロ]
type=assertspecial
trigger1=1
flag=intro

[State 195]
type = playsnd
triggerall = anim = 2007
trigger1 = animelem = 5
trigger2 = animelem = 12
value = 1003,100

[state 191,ボイス]
type=playsnd
trigger1=time=15
value=10006, 0
channel=0

[state 191,アニメ変更]
type=changeanim
trigger1=roundstate=0
value=anim

[state 191,ステート変更]
type=changestate
trigger1=animtime=0
value=0

;===========================================================================
;挑発
[statedef 195]
type=s
movetype=i
physics=s
ctrl=0
anim=195
velset=0,0
sprpriority=2

[state 195,ハッピーうれピーよろピくねー]
type=playsnd
trigger1=time=0
value=195,(random % 2)
channel=0

[State 195]
type = playsnd
triggerall = anim = 195
trigger1 = animelem = 5
trigger2 = animelem = 12
value = 1003,100

[state 195,終了]
type=changestate
trigger1=animtime=0
value=0
ctrl=1

;---------------------------------------------------------------------------
;次にお前は…
[statedef 196]
type=s
movetype=i
physics=s
ctrl=0
anim=196
velset=0,0
sprpriority=2

[state 196,次にお前は]
type=playsnd
trigger1=animelemtime(3)=0
value=196,0
channel=0

[state 196,やれやれだぜ]
type=playsnd
triggerall=animelemtime(18)=0
trigger1=enemy,name="jotaro"
trigger2=enemy,name="kujo jotaro"
trigger3=enemy,name="Jotaro Kujo"
trigger4=enemy,name="Kujo Jotaro (Part4)"
trigger5=enemy,name="sol"
trigger6=enemy,name="order-Sol=Badguy"
value=197,0
channel=0

[state 196,レロレロ]
type=playsnd
triggerall=animelemtime(18)=0
trigger1=enemy,name="Noriaki Kakyoin"
trigger2=enemy,name="kakyoin2"
trigger3=enemy,name="new_kakyoin"
value=197,1
channel=0

[state 196,チッチッチッ]
type=playsnd
triggerall=animelemtime(18)=0
trigger1=enemy,name="AVDOL"
value=197,2
channel=0

[state 196,ぶった切ってやる]
type=playsnd
triggerall=animelemtime(18)=0
trigger1=enemy,name="J.P Polnareff"
trigger2=enemy,name="Polnareff"
value=197,3
channel=0

[state 196,…と言う]
type=playsnd
trigger1=animelemtime(31)=0
value=196,1
channel=0

[state 196,終了]
type=changestate
trigger1=animtime=0
value=0
ctrl=1

;===========================================================================
;立ちアドガ
[statedef 160]
type=s
movetype=i
physics=s
ctrl=0
anim=150

[state 160,ヘルパー]
type=helper
trigger1=time=0
name="push"
id=162
pos=40,0
postype=p2
facing=-1
stateno=162

[state 160,エフェクト]
type=explod
trigger1=time=0
anim=6126
pos=0,-60
postype=p1
ontop=1
ownpal=1

[state 160,効果音]
type=playsnd
trigger1=time=0
value=160,0

[state 160,そんなもんかぁ？]
type=playsnd
trigger1=time=0
value=160,1
channel=0

[state 160,終了]
type=changestate
value=151
trigger1=1

;---------------------------------------------------------------------------
;しゃがみアドガ
[statedef 161]
type=c
movetype=i
physics=c
ctrl=0
anim=152

[state 161,ヘルパー]
type=helper
trigger1=time=0
name="push"
id=162
pos=40,0
postype=p2
facing=-1
stateno=162

[state 161,エフェクト]
type=explod
trigger1=time=0
anim=6126
pos=0,-40
postype=p1
ontop=1
ownpal=1

[state 161,効果音]
type=playsnd
trigger1=time=0
value=160,0

[state 161,そんなもんかぁ？]
type=playsnd
trigger1=time=0
value=160,1
channel=0

[state 161,終了]
type=changestate
value=153
trigger1=1

;---------------------------------------------------------------------------
;押し出し用ヘルパー
[statedef 162]
type=s
movetype=i
physics=n
velset=0,0
anim=162

[state 162,押し出し判定]
type=playerpush
trigger1=1
value=1

[state 162,無敵]
type=nothitby
trigger1=1
value=sca

[state 162,前進]
type=velset
trigger1=time=0
x=20

[state 162,減速]
type=veladd
trigger1=time>0
x=-1

[state 162,終了]
type=destroyself
triggerall=ishelper
trigger1=time=15

;===========================================================================
;回り込み
[statedef 900]
type=s
movetype=i
physics=s
anim=900
ctrl=0
sprpriority=-1

[state 900,こっちだよ～]
type=playsnd
trigger1=time=0
value=900,0
channel=0

[state 900,投げ以外無敵]
type=hitby
trigger1=animelemtime(7)<0
trigger2=vel x
;value=sca,nt
value=sca,at

[state 900,残像]
type=afterimage
trigger1=animelemtime(6)=0
time=-animtime
palbright=0,0,0
palpostbright=-25,0,0
palcontrast=256,256,256
paladd=0,0,0
palmul=1,1,1
length=4
trans=none
timegap=2
framegap=2

[state 900,滑る]
type=velset
trigger1=animelemno(0)=6
x=5

[state 900,すり抜け]
type=playerpush
trigger1=1
value=0

[state 900,終了]
type=changestate
trigger1=animtime=0
value=0
anim=0
ctrl=1

;===========================================================================
;画面から出たときに走ってくる
[statedef 60]
type=s
movetype=i
phisics=s
ctrl=0
anim=100

[state 60,終了]
type=changestate
trigger1=backedgebodydist>40
value=0
anim=0
ctrl=1

[state 60,振り返る]
type=turn
trigger1=facing*pos x>160

[state 60,画面のすぐそばまで瞬間移動]
type=posset
trigger1=facing*pos x<-180
x=-facing*180
y=0

[state 60,走る]
type=velset
trigger1=1
x=const(velocity.run.fwd.x)
y=0

[state 60,カメラ固定]
type=screenbound
trigger1=1
value=0

[state 60,すり抜け]
type=playerpush
trigger1=1
value=0

[state 60,無敵]
type=nothitby
trigger1=1
value=sca

;===========================================================================
;敵用:壁まで吹っ飛ぶ(ヒットシェイク)
[statedef 5600]
type=a
movetype=h
physics=n
ctrl=0
vel=0,0

[state 5600,アニメ変更]
type=changeanim2
trigger1=1
value=5410

[state 5600,硬直]
type=posfreeze
trigger1=1

[state 5600,吹っ飛び開始]
type=changestate
trigger1=hitshakeover
value=5601

;---------------------------------------------------------------------------
;敵用:壁まで吹っ飛ぶ
[statedef 5601]
type=a
movetype=h
physics=n
ctrl=0

[state 5601,喰らい重力]
type=veladd
trigger1=1
y=gethitvar(yaccel)

[state 5601,喰らい速度]
type=hitvelset
trigger1=time=0
x=1
y=1

[state 5601,吹っ飛びすぎる場合はカメラ固定]
type=screenbound
trigger1=time>40
value=0

[state 5601,壁にぶつかって落下へ]
type=changestate
trigger1=backedgebodydist<10
trigger2=frontedgebodydist<10
value=5602

[state 5601,壁まで飛ばずに落下]
type=selfstate
trigger1=pos y>=0
trigger1=vel y>0
value=5100

;---------------------------------------------------------------------------
;敵用:壁にぶつかって落下
[statedef 5602]
type=a
movetype=h
physics=n

[state 5602,反転]
type=turn
trigger1=backedgebodydist<frontedgebodydist
trigger1=time=0

[state 5602,壁ぶつかったときの速度]
type=velset
trigger1=time=0
x=-1
y=-5

[state 5602,壁にぶつかるエフェクト]
type=explod
trigger1=time=0
anim=f72
pos=0,floor(screenpos y)-50
facing=-facing
postype=front
ontop=1
ownpal=1

[state 5602,壁にぶつかる音]
type=playsnd
trigger1=time=0
value=f7,2

[state 5602,アニメ変更]
type=changeanim2
trigger1=time=0
value=5411

[state 5602,重力]
type=veladd
trigger1=1
y=0.4

[state 5602,地面に落下(終了)]
type=selfstate
trigger1=pos y>=0
trigger1=vel y>0
value=5100

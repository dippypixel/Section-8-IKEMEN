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

[state 181,勝利ポーズ]
type=assertspecial
trigger1 = Time = [0,650]
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

[state 182,勝利ポーズ]
type=assertspecial
trigger1 = Time = [0,650]
flag=roundnotover

[state 182,相手が勝ち誇ったとき、既にそいつは敗北している]
type=playsnd
trigger1=time=0
value=182,random%4
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

[state 190,対ジョセフ]
type=changestate
triggerall=time=0
trigger1=enemy,name="JOJO"
trigger2=enemy,name="Joseph"
trigger3=enemy,name="Joseph Joestar"
trigger4=enemy,name="Young Joseph +"
value=1910

[state 190,対カーズ]
type=changestate
triggerall=time=0
trigger1=enemy,name="kars"
trigger2=enemy,name="karsJJJ"
value=1920

[state 190,汎用]
type=changestate
trigger1=time=0
value=191

;---------------------------------------------------------------------------
;イントロ
[statedef 191]
type=s
ctrl=0
anim=182
velset=0,0

[state 191,イントロ]
type=assertspecial
trigger1=1
flag=intro

[state 191,ボイス]
type=playsnd
trigger1=time=40
value=191,random%2
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
;イントロジョセフ
[Statedef 1910]
type = S
ctrl = 0
anim = 182
velset = 0,0

[state 1910,ボイス]
type=playsnd
trigger1=time=0
value=1910,0
channel=0

[State 191, Cloth]
type = Helper
trigger1 = anim = 182 && AnimElem = 7
ID = 8800
stateno = 8800
postype = p1
pos = 0,0
name = "mant"
ownpal = 1

[State 810, 1]
type = helper
trigger1 = var(12)
trigger1 = animelem = 1
stateno = 7500
pos = -36,10
ownpal = 1

[State 190, 2]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 190, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;---------------------------------------------------------------------------
;イントロカーズ
[Statedef 1920]
type = S
ctrl = 0
anim = 830
velset = 0,0

[state 1920,ボイス]
type=playsnd
trigger1=time=0
value=1920,0
channel=0

[State 1920, Chair]
type=explod
trigger1=roundstate=0
trigger2=roundstate=1
anim=831
ID=831
postype=p1
scale=1,1
pos=0,0
sprpriority=-1
bindtime=-1
removetime=-1
shadow=-1

[State 1920]
type=RemoveExplod
trigger1=time=650

[State 1920, 4]
type = ChangeAnim
trigger1 = Time = 200
value = 182

[state 1920,ボイス]
type=playsnd
trigger1=anim =182 && animelem =1
value=191,0
channel=0

[State 1920, Cloth]
type = Helper
trigger1 = anim = 182 && AnimElem = 7
ID = 8800
stateno = 8800
postype = p1
pos = 0,0
name = "mant"
ownpal = 1

[State 810, 1]
type = helper
trigger1 = var(12)
trigger1 = animelem = 1
stateno = 7500
pos = -36,10
ownpal = 1

[State 1920, 2]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 1920, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;---------------------------------------------------------------------------
;マント
[Statedef 8800]
ctrl = 0
anim = 183
sprpriority = -1
velset = -1.5,0

[State 8200, Transparency]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256-(time*8),time*8

[State 8200, Velocity]
type = VelAdd
trigger1 = 1
y = .1

[State 8200, Destroy]
type = DestroySelf
trigger1 = time = 32

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;イントロ(板割り)
[statedef 10190]
type=s
ctrl=0
anim=10190
velset=0,0

[state 10190,アニメ変更]
type=changeanim
trigger1=roundstate=0
value=anim

[state 10190,声]
type=playsnd
trigger1=animelemtime(2)=0
value=0,3
channel=0

[state 10190,イントロ]
type=assertspecial
trigger1=1
flag=intro

[state 10190,板]
type=explod
trigger1=roundstate!=0
persistent=0
anim=10191
postype=p1
pos=270,-90
velocity=-4.2,-7
accel=0,0.32
removetime=48
ownpal=1

[state 10190,板が割れる]
type=explod
trigger1=animelemtime(1)=49
anim=10192
postype=p1
pos=70,-70
velocity=2,-4
accel=0,0.32
removetime=35
ownpal=1

[state 10190,音]
type=playsnd
trigger1=animelemtime(1)=48
value=5,2

[state 10190,終了]
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
value=195,random%2
channel=0

[state 195,終了]
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

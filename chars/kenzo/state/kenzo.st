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
value=181+(random%3)

;---------------------------------------------------------------------------
;勝利ポーズ1　植物の様なものが出る
[statedef 181]
type=s
ctrl=0
anim=181
velset=0,0

[state 182,勝利ポーズ]
type=assertspecial
trigger1 = Time = [0,600]
trigger2=numhelper(6050)
flag=roundnotover

[state 181,わしの攻撃は]
type=playsnd
trigger1=time=0
value=181,random%4
channel=0


;---------------------------------------------------------------------------
;勝利ポーズ2 植物なしそれ以外はstate181と一緒
[statedef 182]
type=s
ctrl=0
anim=181
velset=0,0

[state 182,勝利ポーズ]
type=assertspecial
trigger1 = Time = [0,600]
trigger2=numhelper(6050)
flag=roundnotover

[state 181,わしの攻撃は]
type=playsnd
trigger1=time=0
value=181,random%2
channel=0

;---------------------------------------------------------------------------
;勝利ポーズ3　諸手上げ
[statedef 183]
type=s
ctrl=0
anim=182
velset=0,0

[state 183,勝利ポーズ]
type=assertspecial
trigger1 = Time = [0,300]
trigger2=numhelper(6050)
flag=roundnotover

[state 183,またまたやらせていただきましたァ～ン]
type=playsnd
trigger1=time=0
value=182,0
channel=0

;---------------------------------------------------------------------------
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

[state 190,対プッチ]
type=changestate
triggerall=time=0
trigger1=enemy,name="pucci"
value=1910

[state 190,相方プッチ]
type=changestate
triggerall=time=0
trigger1=partner,name="pucci"
value=1911

[state 190,対天国DIO]
type=changestate
triggerall=time=0
trigger1=enemy,name="DIO" && enemy,AuthorName = "Heal_The_World"
value=1912

[state 190,対承太郎]
type=changestate
triggerall=time=0
trigger1=enemy,name="Jotaro Kujo"
trigger2=enemy,name="jotaro" 
trigger3=enemy,name="Kujo Jotaro (Part4)"
value=1913

[state 190,汎用]
type=changestate
trigger1=time=0
value=191

;---------------------------------------------------------------------------
;イントロ
[statedef 191]
type=s
ctrl=0
anim=191+(random%2)
velset=0,0

[state 191,イントロ]
type=assertspecial
trigger1=1
flag=intro

[state 191,ボイス]
type=playsnd
trigger1=time=0
trigger1=anim = 191
value=191,random%2
channel=0

[state 191,ボイス]
type=playsnd
trigger1=time=0
trigger1=anim = 192
value=190,random%2
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
;イントロ,対プッチ
[statedef 1910]
type=s
ctrl=0
anim=1910
velset=0,0

[state 1910,イントロ]
type=assertspecial
trigger1=1
flag=intro

[state 191,ボイス]
type=playsnd
trigger1=time=0
value=192,0
channel=0

[state 1910,アニメ変更]
type=changeanim
trigger1=roundstate=0
value=anim

[state 1910,ステート変更]
type=changestate
trigger1=animtime=0
value=0

;---------------------------------------------------------------------------
;イントロ,相方プッチ
[statedef 1911]
type=s
ctrl=0
anim=1910
velset=0,0

[state 1911,イントロ]
type=assertspecial
trigger1=1
flag=intro

[state 191,ボイス]
type=playsnd
trigger1=time=0
value=192,1
channel=0

[state 1911,アニメ変更]
type=changeanim
trigger1=roundstate=0
value=anim

[state 1911,ステート変更]
type=changestate
trigger1=animtime=0
value=0

;---------------------------------------------------------------------------
;イントロ,対天国DIO
[statedef 1912]
type=s
ctrl=0
anim=191
velset=0,0

[state 1912,イントロ]
type=assertspecial
trigger1=1
flag=intro

[state 191,ボイス]
type=playsnd
trigger1=time=0
value=192,2
channel=0

[state 1912,アニメ変更]
type=changeanim
trigger1=roundstate=0
value=anim

[state 1912,ステート変更]
type=changestate
trigger1=animtime=0
value=0

;---------------------------------------------------------------------------
;イントロ,対承太郎
[statedef 1913]
type=s
ctrl=0
anim=191
velset=0,0

[state 1913,イントロ]
type=assertspecial
trigger1=1
flag=intro

[state 1913,ボイス]
type=playsnd
trigger1=time=0
value=192,3
channel=0

[state 1913,アニメ変更]
type=changeanim
trigger1=roundstate=0
value=anim

[state 1913,ステート変更]
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

[state 1200 , ゲージ増加]
type=poweradd
trigger1 = numhelper(10023) = 0
trigger1 = time = 0
value = 1000
persistent = 0
ignorehitpause = 1

[state 1200 , 風水ゲージ増加]
type = varadd
trigger1 = numhelper(10023) != 0
trigger1 = time = 0
trigger1 = var(58) < 8
v=58
value = 2
persistent = 0
ignorehitpause = 1

[state 195,おまえはすでに]
type=playsnd
trigger1=time=0
value=195,random%2
channel=0

[state 195,終了]
type=changestate
trigger1=animtime=0
value=0
ctrl=1

;---------------------------------------------------------------------------
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
trigger1=animelemtime(11)<0
trigger2=vel x
;value=sca,nt
value=sca,at

[state 900,滑る]
type=velset
trigger1=1
x=3

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

;-------------------------------------------------
;風水ゲージ
[Statedef 8000]
type = S
sprpriority = -2
anim = 99999

;---------------------------------------------------------------------------
;古い風水ゲージを撤去する
[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(58)<1
ID = 8001

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(58)<2
ID = 8002

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(58)<3
ID = 8003

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(58)<4
ID = 8004

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(58)<5
ID = 8005

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(58)<6
ID = 8006

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(58)<7
ID = 8007

[State 20026, 0]
type = RemoveExplod
trigger1 = root,var(58)<8
ID = 8008

[State 8000, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(58) = 0
trigger1 = !NumExplod(8000)
trigger1 = 1
anim = ifelse(facing=1,8000,8020)
id = 8000
pos = 50,219;50,40
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 8000, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(58) = 1
trigger1 = !NumExplod(8001)
trigger1 = 1
anim = ifelse(facing=1,8001,8021)
id = 8001
pos = 50,219;50,40
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 8000, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(58) = 2
trigger1 = !NumExplod(8002)
trigger1 = 1
anim = ifelse(facing=1,8002,8022)
id = 8002
pos = 50,219;50,40
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 8000, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(58) = 3
trigger1 = !NumExplod(8003)
trigger1 = 1
anim = ifelse(facing=1,8003,8023)
id = 8003
pos = 50,219;50,40
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 8000, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(58) = 4
trigger1 = !NumExplod(8004)
trigger1 = 1
anim = ifelse(facing=1,8004,8024)
id = 8004
pos = 50,219;50,40
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 8000, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(58) = 5
trigger1 = !NumExplod(8005)
trigger1 = 1
anim = ifelse(facing=1,8005,8025)
id = 8005
pos = 50,219;50,40
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 8000, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(58) = 6
trigger1 = !NumExplod(8006)
trigger1 = 1
anim = ifelse(facing=1,8006,8026)
id = 8006
pos = 50,219;50,40
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5


[State 8000, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(58) = 7
trigger1 = !NumExplod(8007)
trigger1 = 1
anim = ifelse(facing=1,8007,8027)
id = 8007
pos = 50,219;50,40
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 8000, 0]
type = Explod
triggerall = teamside = 1
triggerall = roundstate = 2
triggerall = root,var(58) = 8
trigger1 = !NumExplod(8008)
trigger1 = 1
anim = ifelse(facing=1,8008,8028)
id = 8008
pos = 50,219;50,40
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 8000, 0];以下2p用
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(58) = 0
trigger1 = !NumExplod(8000)
trigger1 = 1
anim = ifelse(facing=1,8020,8000)
id = 8000
pos = 50,219;50,40
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 8000, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(58) = 1
trigger1 = !NumExplod(8001)
trigger1 = 1
anim = ifelse(facing=1,8021,8001)
id = 8001
pos = 50,219;50,40
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 8000, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(58) = 2
trigger1 = !NumExplod(8002)
trigger1 = 1
anim = ifelse(facing=1,8022,8002)
id = 8002
pos = 50,219;50,40
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 8000, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(58) = 3
trigger1 = !NumExplod(8003)
trigger1 = 1
anim = ifelse(facing=1,8023,8003)
id = 8003
pos = 50,219;50,40
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 8000, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(58) = 4
trigger1 = !NumExplod(8004)
trigger1 = 1
anim = ifelse(facing=1,8024,8004)
id = 8004
pos = 50,219;50,40
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 8000, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(58) = 5
trigger1 = !NumExplod(8005)
trigger1 = 1
anim = ifelse(facing=1,8025,8005)
id = 8005
pos = 50,219;50,40
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 8000, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(58) = 6
trigger1 = !NumExplod(8006)
trigger1 = 1
anim = ifelse(facing=1,8026,8006)
id = 8006
pos = 50,219;50,40
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5


[State 8000, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(58) = 7
trigger1 = !NumExplod(8007)
trigger1 = 1
anim = ifelse(facing=1,8027,8007)
id = 8007
pos = 50,219;50,40
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 8000, 0]
type = Explod
triggerall = teamside = 2
triggerall = roundstate = 2
triggerall = root,var(58) = 8
trigger1 = !NumExplod(8008)
trigger1 = 1
anim = ifelse(facing=1,8028,8008)
id = 8008
pos = 50,219;50,40
bindtime = 999999999999999
pausemovetime = 999999999999999
sprpriority = -3
postype = Back
ownpal = 1
scale = .5, .5

[State 230, 2]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 8000, 0]
type = DestroySelf
trigger1 = roundstate != 2

;============================
;飛び道具・眼鏡
[statedef 8010]
type    = A
physics = N
movetype= A
ctrl    = 0
velset  = 5,0
anim    = 8010
sprpriority = 3

[State 8010, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 8011, 1]
type = Hitdef
trigger1 = time >= 2
attr = S, HP
hitflag = MAF
guardflag = MA
animtype = light
air.animtype = back
fall.animtype = back
priority = 5,Hit
damage = 3,1
pausetime = 0,5
guard.pausetime = 0,5
sparkno=s6100
guard.sparkno=s6125
sparkxy=-0,0
hitsound=s5,0
guardsound=s6,0
ground.type = Low
air.type = Low
ground.slidetime = 0
ground.hittime = 0
air.hittime = 0
guard.ctrltime = 10
ground.velocity = -1
guard.velocity = -1
air.velocity = -1,-1
airguard.velocity = -1,-1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
getpower = 0,0
givepower = 10,0
persistent = 1
air.fall = 1
fall.recover = 1
yaccel = .35
kill = 0

[State 8010,2]
type = hitoverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = 8020;
time = 1

[State 8010,2]
type = changestate
trigger1 = movecontact = 1;
trigger2 = frontedgebodydist < -10;
value = 8020;

;============================
;飛び道具・金具
[statedef 8011]
type    = A
physics = N
movetype= A
ctrl    = 0
velset  = 7,3
anim    = 8011
sprpriority = 3

[State 8011, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 8011, 1]
type = Hitdef
trigger1 = time >= 2
attr = S, HP
hitflag = MAF
guardflag = MA
animtype = light
air.animtype = back
fall.animtype = back
priority = 5,Hit
damage = 3,1
pausetime = 0,10
guard.pausetime = 0,10
sparkno=s6100
guard.sparkno=s6125
sparkxy=-0,0
hitsound=s5,0
guardsound=s6,0
ground.type = Low
air.type = Low
ground.slidetime = 17
ground.hittime = 17
air.hittime = 17
guard.ctrltime = 17
ground.velocity = -1
guard.velocity = -1
air.velocity = -1,-1
airguard.velocity = -1,-1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
getpower = 0,0
givepower = 10,0
persistent = 1
air.fall = 1
fall.recover = 1
yaccel = .35
kill = 0

[State 8010,2]
type = hitoverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = 8020;
time = 1

[State 8010,2]
type = changestate
trigger1 = movecontact = 1;
trigger2 = frontedgebodydist < -10;
value = 8020;


[Statedef 8020]
type = A
movetype = I
velset = 0,0;止めます
physics = N
anim = 99999

[State 1020]
type = destroyself
trigger1 = time = 0


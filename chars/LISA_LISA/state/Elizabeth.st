;勝利ポーズ分岐
[statedef 180]
type=s

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

[State 183,1] 
type = AssertSpecial
trigger1 = Time = [0,200]
flag = roundnotover

[State 810, 1]
type = helper
triggerall = !IsHelper
triggerall = !var(55) || (!var(56) && matchover)
trigger1 = time = 1
stateno = 6600
ID = 6600
pos = 0,100
name = "win"
pausemovetime = 99999999
supermovetime = 99999999

[state 181,私の力を見誤られては困る]
type=playsnd
trigger1=time=0
value=182,0
channel=0

;---------------------------------------------------------------------------
;勝利ポーズ2
[statedef 182]
type=s
ctrl=0
anim=181
velset=0,0

[State 183,1] 
type = AssertSpecial
trigger1 = Time = [0,500]
flag = roundnotover

[State 810, 1]
type = helper
triggerall = !IsHelper
triggerall = !var(55) || (!var(56) && matchover)
trigger1 = time = 1
stateno = 6600
ID = 6600
pos = 0,100
name = "win"
pausemovetime = 99999999
supermovetime = 99999999

[state 182,我々は勝たなくてはならない]
type=playsnd
trigger1=time=0
value=182,1
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
trigger2=enemy,name="Joseph Joestar"
trigger3=enemy,name="Young Joseph +"
value=1910

[state 190,対シーザー]
type=changestate
triggerall=time=0
trigger1=enemy,name="Caesar Anthonio Zeppeli"
trigger2=enemy,name="Caesar"
value=1911

[state 190,対その他波紋使い]
type=changestate
triggerall=time=0
trigger1=enemy,name="jonathan"
trigger2=enemy,name="zeppeli"
value=1913

[state 190,対柱の男]
type=changestate
triggerall=time=0
trigger1=enemy,name="Kars"
value=1920

[state 190,対その他吸血鬼]
type=changestate
triggerall=time=0
trigger1	=enemy,name="dio"	;DIO
trigger2	=enemy,name="DIO BRANDO"	;ハイDIO
trigger3	=enemy,name="final dio"	;ファイナルDIO
trigger4	=enemy,name="vanilla ice"	;ヴァニラ
trigger5	=enemy,name="vanillaice"	;ヴァニラ
trigger6	=enemy,name="Shadow Dio"	;影DIO
trigger7	=enemy,name="1st DIO"	;1部ディオ
value=1931

[state 190,対柱の男]
type=changestate
triggerall=time=0
trigger1=enemy,name="Joseph"
trigger2=enemy,name="Old Joseph"
value=1932

[state 190,対柱の男]
type=changestate
triggerall=time=0
trigger1=enemy,name="Hol Horse"
trigger2=enemy,name="Hol Horse & Boingo"
trigger3=enemy,name="HolHorse_ASB"
value=1933

[state 190,対柱の男]
type=changestate
triggerall=time=0
trigger1=enemy,name="Lisa Lisa"
value=1934

[state 190,対柱の男]
type=changestate
triggerall=time=0
trigger1=enemy,name="Wham"
trigger2=enemy,name="Wamuu"
value=1935

[state 190,対柱の男]
type=changestate
triggerall=time=0
trigger1=enemy,name="AC/DC"
trigger2=enemy,name="ACDC"
trigger3=enemy,name="Esidisi"
value=1936

[state 190,対柱の男]
type=changestate
triggerall=time=0
trigger1=enemy,name="Rudol von Stroheim"
trigger2=enemy,name="Stroheim"
value=1937

[state 190,対柱の男]
type=changestate
triggerall=time=0
trigger1=enemy,name="Robert E.O. Speedwagon"
trigger2=enemy,name="Speedwagon"
value=1938

[state 190,汎用]
type=changestate
trigger1=time=0
value=191

;---------------------------------------------------------------------------
;イントロ
[statedef 191]
type=s
ctrl=0
anim=195
velset=0,0

[state 191,イントロ]
type=assertspecial
trigger1=1
flag=intro

[state 191,ボイス]
type=playsnd
trigger1=time=0
value=191,0
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
;イントロジョセフ(トランプ放るローズ)
[Statedef 1910]
type = S
ctrl = 0
anim = 182
velset = 0,0
sprpriority = 2

[state 1910,イントロ]
type=assertspecial
trigger1=1
flag=intro

[state 1910,ボイス]
type=playsnd
trigger1=time=0
value=192,0
channel=0

[state 1910,アニメ変更]
type=changeanim
trigger1=roundstate=0
value=anim

[state 192,ステート変更]
type=changestate
trigger1=animtime=0
value=0

[State 1910, 0]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

[State 1910, 2]
type = Helper
trigger1 = AnimElem = 14
name = "Card"
ID = 183
pos = -40,-80
postype = p1
stateno = 1912
helpertype = normal
bindtime = -1
keyctrl = 0
ownpal = 1
persistent = 0
sprpriority = 3

;---------------------------------------------------------------------------
;イントロシーザー(トランプ放るローズ)
[Statedef 1911]
type = S
ctrl = 0
anim = 182
velset = 0,0
sprpriority = 2

[state 1911,イントロ]
type=assertspecial
trigger1=1
flag=intro

[state 1911,ボイス]
type=playsnd
trigger1=time=0
value=193,0
channel=0

[state 1911,アニメ変更]
type=changeanim
trigger1=roundstate=0
value=anim

[state 191,ステート変更]
type=changestate
trigger1=animtime=0
value=0

[State 1911, 0]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

[State 1911, 2]
type = Helper
trigger1 = AnimElem = 14
name = "Card"
pos = -40,-80
postype = p1
stateno = 1912
helpertype = normal
bindtime = -1
keyctrl = 0
ownpal = 1
persistent = 0
sprpriority = 3

;---------------------------------------------------------------------------
;イントロ波紋使い(トランプ放るローズ)
[Statedef 1913]
type = S
ctrl = 0
anim = 182
velset = 0,0
sprpriority = 2

[state 1913,イントロ]
type=assertspecial
trigger1=1
flag=intro

[state 1913,ボイス]
type=playsnd
trigger1=time=0
value=1913,0
channel=0

[state 1913,アニメ変更]
type=changeanim
trigger1=roundstate=0
value=anim

[state 1913,ステート変更]
type=changestate
trigger1=animtime=0
value=0

[State 1913, 0]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

[State 1913, 2]
type = Helper
trigger1 = AnimElem = 14
name = "Card"
ID = 183
pos = -40,-80
postype = p1
stateno = 1912
helpertype = normal
bindtime = -1
keyctrl = 0
ownpal = 1
persistent = 0
sprpriority = 3

;---------------------------------------------------------------------------
;イントロ波紋戦士(トランプ)
[Statedef 1912]
type = A
ctrl = 0
anim = 183
velset = -1,-2
sprpriority = 10

[State 1912, 0]
type = PosSet
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
y = 0

[State 1912, 1]
type = Veladd
trigger1 = time >= 3
y = .2

[State 1912, 2]
type = VelSet
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
x = 0
y = 0

[State 1912, 3]
type = ChangeAnim
trigger1 = time >= 44
value = 184

[State 1912]
type = DestroySelf
trigger1 = time = 150

;---------------------------------------------------------------------------
;イントロ,対柱の男
[statedef 1920]
type=s
ctrl=0
anim=171
velset=0,0

[state 1920,イントロ]
type=assertspecial
trigger1=1
flag=intro

[state 1920,ボイス]
type=playsnd
trigger1=time=0
value=194,0
channel=0

[state 1920,アニメ変更]
type=changeanim
trigger1=roundstate=0
value=anim

[state 1920,ステート変更]
type=changestate
trigger1=animtime=0
value=0

;---------------------------------------------------------------------------
;イントロ,対吸血鬼
[statedef 1931]
type=s
ctrl=0
anim=171
velset=0,0

[state 1931,イントロ]
type=assertspecial
trigger1=1
flag=intro

[state 1931,ボイス]
type=playsnd
trigger1=time=40
value=1931,random%2
channel=0

[state 1931,アニメ変更]
type=changeanim
trigger1=roundstate=0
value=anim

[state 1931,ステート変更]
type=changestate
trigger1=animtime=0
value=0

;---------------------------------------------------------------------------
;イントロ,Old Joseph
[statedef 1932]
type = S
ctrl = 0
anim = 182
velset = 0,0
sprpriority = 2

[state 1910,イントロ]
type=assertspecial
trigger1=1
flag=intro

[state 1910,ボイス]
type=playsnd
trigger1=time=0
value=1932,0
channel=0

[state 1910,アニメ変更]
type=changeanim
trigger1=roundstate=0
value=anim

[state 192,ステート変更]
type=changestate
trigger1=animtime=0
value=0

[State 1910, 0]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

[State 1910, 2]
type = Helper
trigger1 = AnimElem = 14
name = "Card"
ID = 183
pos = -40,-80
postype = p1
stateno = 1912
helpertype = normal
bindtime = -1
keyctrl = 0
ownpal = 1
persistent = 0
sprpriority = 3

;---------------------------------------------------------------------------
;イントロ,Hol Horse
[statedef 1933]
type = S
ctrl = 0
anim = 182
velset = 0,0
sprpriority = 2

[state 1910,イントロ]
type=assertspecial
trigger1=1
flag=intro

[state 1910,ボイス]
type=playsnd
trigger1=time=0
value=1933,0
channel=0

[state 1910,アニメ変更]
type=changeanim
trigger1=roundstate=0
value=anim

[state 192,ステート変更]
type=changestate
trigger1=animtime=0
value=0

[State 1910, 0]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

[State 1910, 2]
type = Helper
trigger1 = AnimElem = 14
name = "Card"
ID = 183
pos = -40,-80
postype = p1
stateno = 1912
helpertype = normal
bindtime = -1
keyctrl = 0
ownpal = 1
persistent = 0
sprpriority = 3


;---------------------------------------------------------------------------
;イントロ,Mirror Match
[statedef 1934]
type = S
ctrl = 0
anim = 182
velset = 0,0
sprpriority = 2

[state 1910,イントロ]
type=assertspecial
trigger1=1
flag=intro

[state 1910,ボイス]
type=playsnd
trigger1=time=0
value=1934,random%2
channel=0

[state 1910,アニメ変更]
type=changeanim
trigger1=roundstate=0
value=anim

[state 192,ステート変更]
type=changestate
trigger1=animtime=0
value=0

[State 1910, 0]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

[State 1910, 2]
type = Helper
trigger1 = AnimElem = 14
name = "Card"
ID = 183
pos = -40,-80
postype = p1
stateno = 1912
helpertype = normal
bindtime = -1
keyctrl = 0
ownpal = 1
persistent = 0
sprpriority = 3

;---------------------------------------------------------------------------
;イントロ,Wamuu
[statedef 1935]
type = S
ctrl = 0
anim = 182
velset = 0,0
sprpriority = 2

[state 1910,イントロ]
type=assertspecial
trigger1=1
flag=intro

[state 1910,ボイス]
type=playsnd
trigger1=time=0
value=1935,0
channel=0

[state 1910,アニメ変更]
type=changeanim
trigger1=roundstate=0
value=anim

[state 192,ステート変更]
type=changestate
trigger1=animtime=0
value=0

[State 1910, 0]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

[State 1910, 2]
type = Helper
trigger1 = AnimElem = 14
name = "Card"
ID = 183
pos = -40,-80
postype = p1
stateno = 1912
helpertype = normal
bindtime = -1
keyctrl = 0
ownpal = 1
persistent = 0
sprpriority = 3

;---------------------------------------------------------------------------
;イントロ,Esidisi
[statedef 1936]
type = S
ctrl = 0
anim = 182
velset = 0,0
sprpriority = 2

[state 1910,イントロ]
type=assertspecial
trigger1=1
flag=intro

[state 1910,ボイス]
type=playsnd
trigger1=time=0
value=1936,0
channel=0

[state 1910,アニメ変更]
type=changeanim
trigger1=roundstate=0
value=anim

[state 192,ステート変更]
type=changestate
trigger1=animtime=0
value=0

[State 1910, 0]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

[State 1910, 2]
type = Helper
trigger1 = AnimElem = 14
name = "Card"
ID = 183
pos = -40,-80
postype = p1
stateno = 1912
helpertype = normal
bindtime = -1
keyctrl = 0
ownpal = 1
persistent = 0
sprpriority = 3

;---------------------------------------------------------------------------
;イントロ,Storheim
[statedef 1937]
type = S
ctrl = 0
anim = 182
velset = 0,0
sprpriority = 2

[state 1910,イントロ]
type=assertspecial
trigger1=1
flag=intro

[state 1910,ボイス]
type=playsnd
trigger1=time=0
value=1937,0
channel=0

[state 1910,アニメ変更]
type=changeanim
trigger1=roundstate=0
value=anim

[state 192,ステート変更]
type=changestate
trigger1=animtime=0
value=0

[State 1910, 0]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

[State 1910, 2]
type = Helper
trigger1 = AnimElem = 14
name = "Card"
ID = 183
pos = -40,-80
postype = p1
stateno = 1912
helpertype = normal
bindtime = -1
keyctrl = 0
ownpal = 1
persistent = 0
sprpriority = 3

;---------------------------------------------------------------------------
;イントロ,Speedwagon
[statedef 1938]
type = S
ctrl = 0
anim = 182
velset = 0,0
sprpriority = 2

[state 1910,イントロ]
type=assertspecial
trigger1=1
flag=intro

[state 1910,ボイス]
type=playsnd
trigger1=time=0
value=1938,0
channel=0

[state 1910,アニメ変更]
type=changeanim
trigger1=roundstate=0
value=anim

[state 192,ステート変更]
type=changestate
trigger1=animtime=0
value=0

[State 1910, 0]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

[State 1910, 2]
type = Helper
trigger1 = AnimElem = 14
name = "Card"
ID = 183
pos = -40,-80
postype = p1
stateno = 1912
helpertype = normal
bindtime = -1
keyctrl = 0
ownpal = 1
persistent = 0
sprpriority = 3

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

[state 195,挑発]
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
trigger1=animelemtime(7)=0
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

[state 900,滑る]
type=velset
trigger1=animelemno(0)=6
x=5

[state 900,すり抜け]
type=playerpush
trigger1=1
value=0

[state 3003]
type = helper
trigger1 = time = 0
name = "Mflag"
helpertype = normal
stateno = 901
id = 301
pos = 0,0
postype = p1
ownpal = 1
keyctrl = 0


[state 0, helper]
type = helper
trigger1 = time = 12
helpertype = normal
name = "Image"
stateno = 901
id = 301
pos = 25,0
postype = p1
ownpal = 1
keyctrl = 0
pausemovetime = 1

[state 900,終了]
type=changestate
trigger1=animtime=0
value=0
anim=0
ctrl=1

;---------------------------------------------------------------------------
;回り込みフラグヘルパー

[Statedef 901]
type    = S
movetype= I
physics = S
anim = 900
velset = 0,0
ctrl = 0
sprpriority = -3

[State 0, nhb]
type = nothitby
trigger1 = 1
value = SCA

[State 0, push]
type = playerpush
trigger1 = 1
value = 0

[State 0, assert]
type = assertspecial
trigger1 = !(time%2)
flag = Invisible

[State 810, Throw Sound]
type = Playerpush
trigger1 = 1
value = 0

[State 810, Throw Sound]
type = nothitby
trigger1 = 1
value = ,AA,AP
time = 1

[state 900,滑る]
type=velset
trigger1=animelemno(0)=6
x=5

[State 810, StateChange]
type = DestroySelf
trigger1 = root,stateno != 900

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


[Statedef 8500]
type = S
sprpriority = 0
anim = 6900

[State 0, var]
type = parentvarset
trigger1 = 1
var(41) = 1

[State 0, anim]
type = changeanim
triggerall = root,var(49) = !10000
triggerall = root,var(41)
trigger1 = anim != root,anim
trigger2 = anim = root,anim
trigger2 = animelemno(0) != parent,animelemno(0)
value = root,anim
elem = root,animelemno(0)

[State 0, anim]
type = changeanim
triggerall = root,var(49) = 10000
triggerall = root,var(41)
trigger1 = anim != helper(1),anim
trigger2 = anim = helper(1),anim
trigger2 = animelemno(0) != parent,animelemno(0)
value = helper(1),anim
elem = helper(1),animelemno(0)

[State 10001 固定]
type = BindToParent
triggerall = root,var(49) = !10000
trigger1 = 1
time = 1
pos = 0,1

[State 10001 固定]
type = BindToParent
triggerall = root,var(49) = 10000
trigger1 = 1
time = 1
pos = -10,1

[State 100, 2]
type = turn
trigger1 = facing != root,facing

[State 10000]
type = NotHitBy
trigger1 = 1
value = SCA

[State 230, 2]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 230, 2]
type = assertspecial
trigger1 = root,life >= 300
trigger2 = root,stateno != [120,155]
trigger2 = root,stateno != [5000,5900]
trigger2 = root,movetype = H
flag = invisible

[State 1020, Blink Yellow]
type = PalFX
trigger1 = 1
time = 1
add = 255,0,0
mul = 256,256,256
sinadd = 50,0,0,100
color = 256

[State 0, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 128,256

[State -2, ゴゴゴ補正]
type=varset
trigger1 = root,life < 300
fvar(8) = 1.2

;ゴゴゴ目線
[State -2]
type = helper
triggerall = root,alive
triggerall = root,life < 300
trigger1 = roundstate = 2 
trigger1 = numhelper(8510) = 0
stateno = 8515
id = 8510
pos = -50,-20
pausemovetime = 999999
supermovetime = 999999
sprpriority = 1
postype = back
ownpal = 1
size.xscale = .6
size.yscale = .6
persistent = 0

[State 230, 2]
type = assertspecial
trigger1 = (root,stateno != [5000,5199]) && root,movetype = H && root,time
flag = invisible

[State 20026, 0]
type = DestroySelf
trigger1 = roundstate != 2
trigger2 = !root,alive
;-------------------------------------------------
;ゴゴゴ目線
[Statedef 8515]
type = S
sprpriority = 8
anim = 6900

[State 0, explod]
type = explod
trigger1 = teamside = 1
trigger1 = time = 1
anim = 8510
id = 8510
pos = -50,170
postype = left
bindtime = -1
scale = .33,.33
sprpriority = 10
pausemovetime = 999999
supermovetime = 999999

[State 0, explod]
type = modifyexplod
trigger1 = teamside = 1
trigger1 = numexplod(8510)
trigger1 = time <= 20
pos = ceil(-160+(time*10)),170
postype = left
id = 8510

[State 0, explod]
type = modifyexplod
trigger1 = teamside = 1
trigger1 = numexplod(8510)
trigger1 = time = 22
pos = 65,170
postype = left
id = 8510

[State 0, explod]
type = explod
trigger1 = teamside = 2
trigger1 = time = 1
anim = 8515
id = 8515
pos = -50,170
postype = right
bindtime = -1
scale = .33,.33
sprpriority = 10
pausemovetime = 999999
supermovetime = 999999

[State 0, explod]
type = modifyexplod
trigger1 = teamside = 2
trigger1 = numexplod(8515)
trigger1 = time <= 20
pos = ceil(160-(time*10)),170
postype = right
id = 8515

[State 0, explod]
type = modifyexplod
trigger1 = teamside = 2
trigger1 = numexplod(8515)
trigger1 = time = 22
pos = -65,170
postype = right
id = 8515

[State 0, pos]
type = playsnd
trigger1 = time = 1
value = 8500,10

[State 0, pos]
type = playsnd
trigger1 = time = 1
value = 8500,random%2

[State 230, 2]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 20026, 0]
type = DestroySelf
trigger1 = time = 100
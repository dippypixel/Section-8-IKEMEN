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

[state 180,シーザー死亡]
type=changestate
triggerall = time=0
triggerall = roundno >= 2
triggerall = partner, alive = 0
trigger1 = partner, name = "Caesar Anthonio Zeppeli"
trigger2 = partner, name = "Caesar"
value=1810

[state 180,汎用]
type=changestate
trigger1=time=0
value=181+(random%3)

;---------------------------------------------------------------------------
;勝利ポーズ1
[statedef 181]
type=s
ctrl=0
anim=181
velset=0,0

[state 181,勝利ポーズ]
type=assertspecial
trigger1=time<150
trigger2=numhelper(6050)
flag=roundnotover

[state 181,私の力を見誤られては困る]
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
trigger1=time<240
trigger2=numhelper(6050)
flag=roundnotover

[state 182,我々は勝たなくてはならない]
type=playsnd
trigger1=time=0
value=182,0
channel=0
;---------------------------------------------------------------------------
; 勝ちポーズ3
[Statedef 183]
type = S
ctrl = 0
anim = 188
velset = 0,0
sprpriority = 1

[State 183, 0]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

[State 183,1] 
type = AssertSpecial
trigger1 = Time = [0,200]
flag = roundnotover

[State 183,派手な方に決めようかしら]
type = PlaySnd
trigger1 = time = 0
value = 183, 0

[State 1830,そうですかぁ]
type = PlaySnd
trigger1 = time = 142
value = 183, 1

[State 183, 2]
type = Helper
trigger1 = AnimElem = 3
name = "FoolCard"
pos = 0,0
postype = p1
stateno = 1830
helpertype = normal
bindtime = -1
keyctrl = 0
ownpal = 1
persistent = 0
sprpriority = 3

;---------------------------------------------------------------------------
; 勝ちポーズ3(デカいカード)
[Statedef 1830]
type = S
ctrl = 0
anim = 189
velset = 0,0
sprpriority = 2

[State 1830]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

[State 1830]
type = ChangeAnim
trigger1 = time = 82
value = 4020
[State 1830]
type = posadd
trigger1 = time = 82
y = -60

[State 1830]
type = DestroySelf
trigger1 = time = 98

;---------------------------------------------------------------------------
;勝利ポーズシーザー死亡
[statedef 1810]
type=s
ctrl=0
anim=173
velset=0,0

[State 183,1] 
type = AssertSpecial
trigger1 = Time = [0,500]
flag = roundnotover

[state 181,タバコ逆さだぜ]
type=playsnd
trigger1=time=0
value=1800,0

[state 181,シーザー…]
type=playsnd
trigger1=time=300
value=1800,1

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

[state 190,対ストレイツォ]
type=changestate
triggerall=time=0
trigger1=enemy,name="Straizo"
value=1930

[state 190,対その他吸血鬼]
type=changestate
triggerall=time=0
trigger1	=enemy,name="dio"	;DIO
trigger2	=enemy,name="DIO BRANDO"	;ハイDIO
trigger3	=enemy,name="final dio"	;ファイナルDIO
trigger4	=enemy,name="wantixen"	;ワンチェン
trigger5	=enemy,name="nukesaku"	;ヌケサク
trigger6	=enemy,name="Sion Eltnam Atlasia [Vampire]"	;Vシオン
trigger7	=enemy,name="Sion TATARI"	;Vシオン
trigger8	=enemy,name="Sion_TATARI"	;Vシオン
trigger9	=enemy,name="raigu's Alucard"	;アルカード
trigger10	=enemy,name="Arcueid Brunestud"	;アルク
trigger11	=enemy,name="Arcueid_Brunestud"	;アルク
trigger12	=enemy,name="W ARCUEID"	;アルク＆ワルク
trigger13	=enemy,name="vanilla ice"	;ヴァニラ
trigger14	=enemy,name="vanillaice"	;ヴァニラ
trigger15	=enemy,name="Yumiduka_Satsuki"	;さつき
trigger16	=enemy,name="Sakuya Izayoi"	;シャドウ咲夜
trigger17	=enemy,authorname="isamusi"
trigger18	=enemy,name="SLAYER"	;スレイヤー
trigger19	=enemy,name="Dark Arcueid"	;ダークアルク
trigger20	=enemy,name="Dark Arcueid mk2"	;ダークアルクmk2
trigger21	=enemy,name="Demitri"	;デミトリ
trigger22	=enemy,name="Demitri-Ex"	;デミトリ
trigger23	=enemy,name="03ria-red"	;03RIA-紅
trigger24	=enemy,name="Final_Sakuya"	;ファイナル咲夜
trigger25	=enemy,name="Flandre_Scarlet"	;フラン
trigger26	=enemy,name="mora"	;モーラ
trigger27	=enemy,name="Remilia Scarlet"	;レミリア
trigger28	=enemy,name="Remilia_Scarlet"	;レミリア
trigger29	=enemy,name="Michael_Roa_Valdamjong"	;ロア
trigger30	=enemy,name="RaveEx"	;ロードレイヴナス
trigger31	=enemy,name="warakia"	;ワラキア
trigger32	=enemy,name="Warachia"	;ワラキア
trigger33	=enemy,name="Warakia"	;ワラキア
trigger34	=enemy,name="Red Arcueid"	;ワルク
trigger35	=enemy,name="Red_Arcueid"	;ワルク
trigger36	=enemy,name="WARCUEID"	;ワルク
trigger37	=enemy,name="Izayoi Sakuya Brando"	;咲夜ブランドー
trigger38	=enemy,name="Shadow Dio"	;影DIO
trigger39	=enemy,name="Sakuya Shadow Brando"	;影ブランドー
trigger40	=enemy,name="Inferis Chaos"	;教授
trigger41	=enemy,name="Nrvnqsr_Chaos"	;教授
trigger42	=enemy,name="a"	;旦那
trigger43	=enemy,name="alucard"	;旦那
trigger44	=enemy,name="Akaitsuki"	;朱い月
trigger45	=enemy,name="raigu's dracula"	;若本伯爵
trigger46	=enemy,name="Araki Hirohiko"	;荒木
trigger47	=enemy,name="satsuki EX"	;覚醒さつき
trigger48	=enemy,name="Reimu_Scarlet"	;霊夢･スカーレット
trigger49	=enemy,name="Mukuro"	;骸
trigger50	=enemy,name="1st DIO"	;1部ディオ
value=1931

[state 190,対その他吸血鬼]
type=changestate
triggerall=time=0
trigger1	=enemy,name="Saber_Alter"	;セイバーオルタ
trigger2	=enemy,name="Saber"     	;セイバー
trigger3	=enemy,name="Rin_Tohsaka"	;遠坂凛
trigger4	=enemy,name="emiya"     	;アーチャー
trigger5	=enemy,name="rider-fsd" 	;ライダー
trigger6	=enemy,name="rider"	 	;ライダー
trigger7	=enemy,name="lancer-fsd"	;ランサー
trigger8	=enemy,name="Matou Sakura"	;桜
trigger9	=enemy,name="gilgamesh"  	;俺様
trigger10	=enemy,name="4th_Archer"	;ギル様
value=1932

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
trigger1=time=40
value=191,random%5
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
trigger1=time=40
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
trigger1=time=40
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
trigger1=time=40
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
trigger1=time=40
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
;イントロ,対ストレイツォ
[statedef 1930]
type=s
ctrl=0
anim=171
velset=0,0

[state 1930,イントロ]
type=assertspecial
trigger1=1
flag=intro

[state 1930,ボイス]
type=playsnd
trigger1=time=40
value=1900,0
channel=0

[state 1930,アニメ変更]
type=changeanim
trigger1=roundstate=0
value=anim

[state 1930,ステート変更]
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
;イントロ,対fate勢
[statedef 1932]
type=s
ctrl=0
anim=172
velset=0,0

[state 1932,イントロ]
type=assertspecial
trigger1=1
flag=intro

[state 1932,ボイス]
type=playsnd
trigger1=time=40
value=199,0
channel=0

[State 1932, 2]
type = Helper
trigger1 = time =200
name = "FoolCard"
pos = 0,0
postype = p1
stateno = 1830
helpertype = normal
bindtime = -1
keyctrl = 0
ownpal = 1
persistent = 0
sprpriority = 3


[state 1932,アニメ変更]
type=changeanim
trigger1=roundstate=0
value=anim

[state 1932,ステート変更]
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

[state 195,挑発]
type=playsnd
trigger1=time=0
value=195,random%4
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

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

[state 181,所詮この程度]
type=playsnd
trigger1=time=0
value=181,0
channel=0

;---------------------------------------------------------------------------
;勝利ポーズ2
[statedef 182]
type=s
ctrl=0
anim=182
velset=0,0

[state 182,勝利ポーズ]
type=assertspecial
trigger1=time<150
trigger2=numhelper(6050)
flag=roundnotover

[state 182,予告通り]
type=playsnd
trigger1=time=0
value=182,0
channel=0

;---------------------------------------------------------------------------
;勝利ポーズ3
[statedef 183]
type=s
ctrl=0
anim=183
velset=0,0

[state 183,勝利ポーズ]
type=assertspecial
trigger1=time<250
trigger2=numhelper(6050)
flag=roundnotover

[state 183,ほぅ生きていたな]
type=playsnd
trigger1=time=0
value=183,0
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

[state 190,対DIO]
type=changestate
triggerall=time=0
trigger1	=enemy,name="dio"		;DIO
trigger2	=enemy,name="DIO BRANDO"	;ハイDIO
trigger3	=enemy,name="final dio"		;ファイナルDIO
trigger4	=enemy,name="Shadow Dio"	;影DIO
trigger5	=enemy,name="1st DIO"		;1部ディオ
value=1910

[state 190,汎用]
type=changestate
trigger1=time=0
value=191

;---------------------------------------------------------------------------
;イントロ
[statedef 191]
type=s
ctrl=0
anim=191
velset=0,0

[state 191,イントロ]
type=assertspecial
trigger1=1
flag=intro

[state 191,ボイス仗助]
type=playsnd
triggerall=time=40
trigger1	=enemy,name="ASB_JOSUKE"
trigger2	=enemy,name="josuke"
value=1911,0
channel=0

[state 191,ボイス対康一]
type=playsnd
triggerall=time=40
trigger1	=enemy,name="hirose koiti"
value=1912,0
channel=0

[state 191,ボイス汎用]
type=playsnd
triggerall	=enemy,name!="ASB_JOSUKE"
triggerall	=enemy,name!="josuke"
triggerall	=enemy,name!="hirose koiti"
trigger1=time=40
value=191,random%2
channel=0


[state 191,その他スタンド使い]
type=null;playsnd
triggerall	=enemy,name="ASB_JOSUKE"
triggerall	=enemy,name="josuke"
trigger1=time=40
value=1913,0
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
;イントロDIO
[Statedef 1910]
type=s
ctrl=0
anim=1910
velset=0,0

[state 191,イントロ]
type=assertspecial
trigger1=1
flag=intro

[state 191,ボイス]
type=playsnd
trigger1=time=40
value=1910,0
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

[state 195,挑発]
type=playsnd
trigger1=time=0
value=195,0;random%4
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
;---------------------------------------------------------------------------
[Statedef 40005];飛び道具検出用ヘルパー
type = A
ctrl = 0
anim = 36400
movetype = I
physics = N
sprpriority = 1

;保険等---------------------
[State 40005]
type = SelfState
trigger1 = !IsHelper
Value = 0
[State 40005]
type = assertspecial
trigger1 = 1
flag = invisible
[State 40005]
type = NotHitBy
value = SCA
trigger1 = 1
;----------------------------

[State 40005];スイッチリセット
type = parentvarset
trigger1 = 1
var(47)=0

[State 40005, 検出P];相手projが存在するときスイッチON
type = parentvarset
triggerall = NumEnemy
trigger1 = Enemy(0),numproj > 0
trigger2 = Enemy(numenemy=2),numproj > 0
var(47)=1

[State 40005, 検出H];相手ヘルパーが攻撃判定を持つときスイッチON
type = parentvarset
triggerall = NumEnemy
trigger1 = playerIDexist(ID-1)=1 ;このヘルパーの１つ前のプレイヤーIDが存在するとき。
trigger1 = (playerID(ID-1),hitdefattr = SCA,AA,AT,AP || playerID(ID-1),movetype = A) && playerID(ID-1),teamside != root,teamside && playerID(ID-1),ishelper
trigger2 = playerIDexist(ID-2)=1 ;このヘルパーの２つ前のプレイヤーIDが存在するとき。以下同様
trigger2 = (playerID(ID-2),hitdefattr = SCA,AA,AT,AP || playerID(ID-2),movetype = A) && playerID(ID-2),teamside != root,teamside && playerID(ID-2),ishelper
trigger3 = playerIDexist(ID-3)=1
trigger3 = (playerID(ID-3),hitdefattr = SCA,AA,AT,AP || playerID(ID-3),movetype = A) && playerID(ID-3),teamside != root,teamside && playerID(ID-3),ishelper
trigger4 = playerIDexist(ID-4)=1
trigger4 = (playerID(ID-4),hitdefattr = SCA,AA,AT,AP || playerID(ID-4),movetype = A) && playerID(ID-4),teamside != root,teamside && playerID(ID-4),ishelper
trigger5 = playerIDexist(ID-5)=1
trigger5 = (playerID(ID-5),hitdefattr = SCA,AA,AT,AP || playerID(ID-5),movetype = A) && playerID(ID-5),teamside != root,teamside && playerID(ID-5),ishelper
trigger6 = playerIDexist(ID-6)=1
trigger6 = (playerID(ID-6),hitdefattr = SCA,AA,AT,AP || playerID(ID-6),movetype = A) && playerID(ID-6),teamside != root,teamside && playerID(ID-6),ishelper
trigger7 = playerIDexist(ID-7)=1
trigger7 = (playerID(ID-7),hitdefattr = SCA,AA,AT,AP || playerID(ID-7),movetype = A) && playerID(ID-7),teamside != root,teamside && playerID(ID-7),ishelper
trigger8 = playerIDexist(ID-8)=1
trigger8 = (playerID(ID-8),hitdefattr = SCA,AA,AT,AP || playerID(ID-8),movetype = A) && playerID(ID-8),teamside != root,teamside && playerID(ID-8),ishelper
trigger9 = playerIDexist(ID-9)=1
trigger9 = (playerID(ID-9),hitdefattr = SCA,AA,AT,AP || playerID(ID-9),movetype = A) && playerID(ID-9),teamside != root,teamside && playerID(ID-9),ishelper
trigger10= playerIDexist(ID-10)=1
trigger10= (playerID(ID-10),hitdefattr = SCA,AA,AT,AP || playerID(ID-10),movetype = A) && playerID(ID-10),teamside != root,teamside && playerID(ID-10),ishelper
trigger11= playerIDexist(ID-11)=1
trigger11= (playerID(ID-11),hitdefattr = SCA,AA,AT,AP || playerID(ID-11),movetype = A) && playerID(ID-11),teamside != root,teamside && playerID(ID-11),ishelper
trigger12= playerIDexist(ID-12)=1
trigger12= (playerID(ID-12),hitdefattr = SCA,AA,AT,AP || playerID(ID-12),movetype = A) && playerID(ID-12),teamside != root,teamside && playerID(ID-12),ishelper
trigger13= playerIDexist(ID-13)=1
trigger13= (playerID(ID-13),hitdefattr = SCA,AA,AT,AP || playerID(ID-13),movetype = A) && playerID(ID-13),teamside != root,teamside && playerID(ID-13),ishelper
trigger14= playerIDexist(ID-14)=1
trigger14= (playerID(ID-14),hitdefattr = SCA,AA,AT,AP || playerID(ID-14),movetype = A) && playerID(ID-14),teamside != root,teamside && playerID(ID-14),ishelper
trigger15= playerIDexist(ID-15)=1
trigger15= (playerID(ID-15),hitdefattr = SCA,AA,AT,AP || playerID(ID-15),movetype = A) && playerID(ID-15),teamside != root,teamside && playerID(ID-15),ishelper
trigger16= playerIDexist(ID-16)=1
trigger16= (playerID(ID-16),hitdefattr = SCA,AA,AT,AP || playerID(ID-16),movetype = A) && playerID(ID-16),teamside != root,teamside && playerID(ID-16),ishelper
trigger17= playerIDexist(ID-17)=1
trigger17= (playerID(ID-17),hitdefattr = SCA,AA,AT,AP || playerID(ID-17),movetype = A) && playerID(ID-17),teamside != root,teamside && playerID(ID-17),ishelper
trigger18= playerIDexist(ID-18)=1
trigger18= (playerID(ID-18),hitdefattr = SCA,AA,AT,AP || playerID(ID-18),movetype = A) && playerID(ID-18),teamside != root,teamside && playerID(ID-18),ishelper
trigger19= playerIDexist(ID-19)=1
trigger19= (playerID(ID-19),hitdefattr = SCA,AA,AT,AP || playerID(ID-19),movetype = A) && playerID(ID-19),teamside != root,teamside && playerID(ID-19),ishelper
trigger20= playerIDexist(ID-20)=1
trigger20= (playerID(ID-20),hitdefattr = SCA,AA,AT,AP || playerID(ID-20),movetype = A) && playerID(ID-20),teamside != root,teamside && playerID(ID-20),ishelper
var(47)=ceil(playerID(ID-1),p2bodydist x)

[State 40005];検出にかからなかったら消滅
type = destroyself
trigger1 = root,var(47)=0
;-------------------------------------------------------------------------
;AI起動用ヘルパー
[Statedef 50000]
anim=36400;なにも表示しないｱﾆﾒでもいいけど入れなくても全然問題ない
ctrl=0

[State 10000,間違いで本体が来たら立ちへ移行]
type=selfstate
trigger1=!ishelper
value=0

[State 40005]
type = assertspecial
trigger1 = 1
flag = invisible

[State 40005]
type = NotHitBy
value = SCA
trigger1 = 1
;----------------------------------------------------------------------------------
; AIフラグセット
;----------------------------------------------------------------------------------
[State 10000,プレイヤー判定]
type=varset
trigger1=command="up"&&root,command="up"
trigger2=command="down"&&root,command="down"
trigger3=command="back"&&root,command="back"
trigger4=command="fwd"&&root,command="fwd"
trigger5=command="a"&&root,command="a"
trigger6=command="b"&&root,command="b"
trigger7=command="c"&&root,command="c"
trigger8=command="x"&&root,command="x"
trigger9=command="y"&&root,command="y"
trigger10=command="z"&&root,command="z"
trigger11=command="start"&&root,command="start"
var(59)=-1

[State 10000,ﾌﾗｸﾞON]
type=parentvarset
triggerall=var(59)!=-1
trigger1=root,command="up"
trigger2=root,command="down"
trigger3=root,command="back"
trigger4=root,command="fwd"
trigger5=root,command="a"
trigger6=root,command="b"
trigger7=root,command="c"
trigger8=root,command="x"
trigger9=root,command="y"
trigger10=root,command="z"
trigger11=root,command="start"
var(59)=1
;----------------------------------------------------------------------------------
; 暗転計測
;----------------------------------------------------------------------------------
[State -1]
type = VarSet
trigger1 = root,var(59) > 0
trigger1 = enemynear,time = 1
v = 15
value = 0
ignorehitpause = 1

[State -1]
type = VarAdd
trigger1 = root,var(59)
v = 15
value = 1
ignorehitpause = 1
;----------------------------------------------------------------------------------
; ガードしている時間の計測(ガーキャン条件用)
;----------------------------------------------------------------------------------
[State -1]
type = Varadd
trigger1 = root,var(59)
trigger1 = (root,stateno = [150,153]); || root,stateno = 710
var(16) = 1
ignorehitpause = 1

[State -1]
type = Varset
trigger1 = root,stateno != [150,153]
;trigger1 = root,stateno != 710
var(16) = 0
ignorehitpause = 1
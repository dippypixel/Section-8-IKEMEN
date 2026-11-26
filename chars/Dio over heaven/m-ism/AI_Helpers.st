;===========================================<AI_Helper>==============================================
[Statedef 9741]
ctrl=0

[State -2,消失]
type=DestroySelf
triggerall=isHelper
trigger1=roundstate!=[1,2]

[State 9741,間違いで本体が来たら立ちへ移行]
type=selfstate
trigger1=!ishelper
value=0

[State 9741,プレイヤー判定]
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

[State 9741,立ったら消失]
Type = DestroySelf
triggerAll = isHelper
Trigger1 = root,var(59)||var(59)=-1
trigger2=command="up"&&root,command="up"
trigger3=command="down"&&root,command="down"
trigger4=command="back"&&root,command="back"
trigger5=command="fwd"&&root,command="fwd"
trigger6=command="a"&&root,command="a"
trigger7=command="b"&&root,command="b"
trigger8=command="c"&&root,command="c"
trigger9=command="x"&&root,command="x"
trigger10=command="y"&&root,command="y"
trigger11=command="z"&&root,command="z"
trigger12=command="start"&&root,command="start"

[State 9741,ﾌﾗｸﾞON]
type=varset
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

;===========================================================================
;AI hadou-check helper
;飛び道具対策ヘルパー55555（suparpause,pause無視）
;var(0):飛び道具対策変数１　相手攻撃判断＆カウントダウン用
;var(1):飛び道具対策変数２　反応までのカウントアップ用
;var(2):飛び道具の後ろ側をガードするための変数
;var(3)~var(53):ヘルパーリダイレクト用
;var(54):最大ループ回数設定
;var(55):55555,55559ループカウント用
;var(56):55557ループカウント用
;var(57):リダイレクト変数のうち、現在の最高の値
;var(58):結果から状況判断
;var(59):対策テスト用

;fvar(0)~fvar(x):ｘ速度など。確率変動に使う

;※var(3+var(55))が、「現在調査中のＩＤ用変数」

;全員共通のループステート１
[Statedef 55555]
type=A
movetype=I
physics=N
ctrl=0
anim=0
sprpriority=0
velset=0,0

[State -2];ループ回数設定
type=varset
trigger1=!var(54)
var(54)=40

[State -2];カウンタ
type=varadd
trigger1=prevstateno!=55555
trigger1=prevstateno!=55557
fvar(7)=1

[State -2];カウンタ
type=varset
trigger1=fvar(7)>=3
fvar(7)=0

[State -2];フラグ
type=varset
trigger1=numhelper(33333)
fvar(8)=ifelse(enemy,numhelper!=fvar(9) || !fvar(7) || helper(33333),var(26)=3,1,0)

;ＩＤ探索ステートへ
[State -2]
type=ChangeState
triggerall=!numhelper(55556);このＦの中でまだＩＤ予測をしていない（失敗していない）
trigger1=var(56)!=-1||prevstateno=55559;このＦの中でまだＩＤ探索に失敗していない
trigger1=!playerIDexist(var(3+var(55)));変数が現在使用中ではない
value=55557

;透明化
[State -2]
type=assertspecial
trigger1=1
flag=noshadow
flag2=invisible
ignorehitpause=1

;無敵化
[State -2]
type=Nothitby
trigger1=1
value=SCA

;本体と敵との中間に配置
[State -2]
type=posset
trigger1=1
x=(root,pos x+enemynear,pos x)/2.0

;本体と同じ向き
[State -2]
type=turn
trigger1=facing!=root,facing

;本体の近くに飛び道具があるなら警戒
[State 55555]
type=varset
trigger1=playerIDExist(var(3+var(55)))
trigger1=playerID(var(3+var(55))),movetype=A
trigger1=abs(root,pos y-playerID(var(3+var(55))),pos y)<200
trigger1=abs(playerID(var(3+var(55))),pos x-root,pos x)<=200
var(2)=5


;ＩＤ用変数の最高値記録
[State 55555]
type=varset
trigger1=var(57)<var(3+var(55))
var(57)=var(3+var(55))

;ループバック
[State 55555]
type=Changestate
trigger1=!numhelper(55556)	;何か見つかった１
trigger1=var(56)!=-1		;何か見つかった２
trigger1=var(55)<var(54)	;ループが指定回数未満
trigger1=var(55):=var(55)+1||1	;インクリメント（ループカウンタ増加処理）
value=55555


;カウンタ初期化
[State -2]
type=VarSet
trigger1=1
var(55)=0

;inguarddist系反応判断用
[State -2]
type=VarAdd
trigger1=var(0)>0
var(0)=-1

;inguarddist系反応判断用
[State -2]
type=VarSet
trigger1=!enemynear,ctrl&&enemynear,stateno>=200
trigger2=inguarddist
trigger3=root,inguarddist
var(0)=15

;inguarddist系反応判断用
[State -2]
type=VarAdd
trigger1=var(0)
var(1)=1

;inguarddist系反応判断用
[State -2]
type=Varset
trigger1=!var(0)
var(1)=0


;飛び道具の裏側対策
[State -2]
type=Varadd
trigger1=var(2)>0
var(2)=-1

;飛び道具の裏側対策
[State -2]
type=varset
triggerall=root,inguarddist
trigger1=enemynear,movetype!=A
trigger2=P2Dist x>enemynear,Const(size.attack.dist)
var(2)=20


;飛び道具の裏側対策。一時的に裏側に配置
[State -2]
type=posset
trigger1=1
x=root,pos x-facing*80

;飛び道具の裏側対策
[State -2]
type=varset
trigger1=inguarddist
trigger1=fvar(0)>1
trigger1=enemynear,Const(size.proj.attack.dist)<=100
var(2)=5

;コンボ用変数みたいなもの
[State 55555 対策テスト]
type=varset
trigger1=1
var(59)=0

;終了したらキャラ別対策判断用のステートへ
[State -2]
type=ChangeState
trigger1=1
value=55559



;ＩＤ予測ヘルパー用ステート
[Statedef 55556]
anim=0
ctrl=0

;即消える
[State 55556]
type=destroyself
trigger1=ishelper
trigger1=1



;ループステート
[Statedef 55557]
anim=0
ctrl=0


;開始値を最高値に合わせる
[State -2]
type=varset
trigger1=prevstateno!=55557;
var(3+var(55))=var(57)+1

;ループカウンタ増加
[State -2]
type=varadd
var(56)=1
trigger1=var(56)!=-1

;ループカウンタ初期化
[State -2]
type=Varset
trigger1=prevstateno!=55557
var(56)=0

;ふるいにかける。１つでも該当するなら次へ
[State -2]
type=varadd
;指定IDが存在しない
trigger1=!playerIDExist(var(3+var(55)))
;飛び道具と思わしくない、長時間存在しているヘルパー
trigger2=playerIDExist(var(3+var(55)))
trigger2=playerID(var(3+var(55))),movetype!=A&&!(playerID(var(3+var(55))),hitdefattr=SCA,AA,AP,AT)
trigger2=playerID(var(3+var(55))),time>200
;エリアオーバー1
trigger3=playerIDExist(var(3+var(55)))
trigger3=abs(playerID(var(3+var(55))),Screenpos x)>500
;エリアオーバー2
trigger4=playerIDExist(var(3+var(55)))
trigger4=abs(playerID(var(3+var(55))),pos y)>500
;味方の
trigger5=playerIDExist(var(3+var(55)))
trigger5=teamside=playerID(var(3+var(55))),teamside
var(3+var(55))=1

[state -2];id確認用。一定回数繰り返して当たりがこなかったら、中止して次に備える
type=Helper
trigger1=var(56)>10
trigger1=var(56):=-1
trigger1=!numhelper(55556)
trigger1=fvar(8)
helpertype=normal
name="id_check"
ID=55556
pos=0, 0
postype=right
facing=1
stateno=55556
ownpal=1
supermovetime=99999
pausemovetime=99999

;変数の値を今出したばかりのヘルパーのものに
[State -2]
type=varset
trigger1=var(56)=-1
trigger1=numhelper(55556)
var(3+var(55))=helper(55556),id

;ヘルパーが無ければ初期値に戻す
[State -2]
type=varset
trigger1=var(56)=-1
trigger1=!numhelper(55556)
var(3+var(55))=var(57)+1

;ループバック
[State -2]
type=ChangeState
value=55557
triggerall=var(56)!=-1
trigger1=!playerIDExist(var(3+var(55)))
trigger2=playerIDExist(var(3+var(55)))
trigger2=playerID(var(3+var(55))),movetype!=A&&!(playerID(var(3+var(55))),hitdefattr=SCA,AA,AP,AT)
trigger2=playerID(var(3+var(55))),time>200
trigger3=playerIDExist(var(3+var(55)))
trigger3=abs(playerID(var(3+var(55))),Screenpos x)>500
trigger4=playerIDExist(var(3+var(55)))
trigger4=abs(playerID(var(3+var(55))),pos y)>500
trigger5=playerIDExist(var(3+var(55)))
trigger5=teamside=playerID(var(3+var(55))),teamside

;終わったら戻る
[State -2]
type=ChangeState
value=55555
trigger1=1



;飛び道具対策ステート
[Statedef 55559]
anim=0
ctrl=0

;１Ｆ経ったらまたＩＤ取得から
[State 55559]
type=CHangeState
trigger1=time>0
value=55555



;変数の値に該当するヘルパーが存在しないならここでループカウンタ増加させてまた初めから
[State 55559]
type=CHangeState
trigger1=!playerIDExist(var(3+var(55)))
trigger1=var(55)<var(54)-1
trigger1=var(55):=var(55)+1
value=55559

;判断用変数初期化
[State 55555]
type=varset
trigger1=prevstateno!=55559
var(58)=0


[State 55555 地上波動]
type=varadd
trigger1=playerIDExist(var(3+var(55)))
trigger1=!(var(58)&2**0)
trigger1=playerID(var(3+var(55))),hitdefattr = SCA,AA,AP
trigger1=playerID(var(3+var(55))),pos y+playerID(var(3+var(55))),vel y*10=[-100,60]
trigger1=abs(playerID(var(3+var(55))),vel x)>=1
trigger1=playerID(var(3+var(55))),facing*(root,pos x-playerID(var(3+var(55))),pos x)>-100
trigger1=fvar(0):=playerID(var(3+var(55))),vel x||1
var(58)=2**0

[State 55555 空中波動]
type=varadd
trigger1=playerIDExist(var(3+var(55)))
trigger1=!(var(58)&2**1)
trigger1=playerID(var(3+var(55))),hitdefattr = SCA,AA,AP
trigger1=playerID(var(3+var(55))),pos y+playerID(var(3+var(55))),vel y*20<60
trigger1=abs(playerID(var(3+var(55))),vel x)>=1
trigger1=playerID(var(3+var(55))),facing*(root,pos x-playerID(var(3+var(55))),pos x)>-100
trigger1=fvar(1):=playerID(var(3+var(55))),vel y
var(58)=2**1

[State 55555];設置
type=varadd
trigger1=playerIDExist(var(3+var(55)))
trigger1=!(var(58)&2**2)
trigger1=playerID(var(3+var(55))),hitdefattr = SCA,AA,AP
trigger1=playerID(var(3+var(55))),pos y>-140
trigger1=playerID(var(3+var(55))),vel x<3
trigger1=playerID(var(3+var(55))),time>=40
trigger1=(root,pos x-playerID(var(3+var(55))),pos x)>80
var(58)=2**2

[State 55555 地上波動　ゾッとするぜ]
type=varadd
trigger1=playerIDExist(var(3+var(55)))
trigger1=!(var(58)&2**3)
trigger1=playerID(var(3+var(55))),hitdefattr = SCA,AA,AP
trigger1=playerID(var(3+var(55))),pos y+playerID(var(3+var(55))),vel y*10=[-100,60]
trigger1=abs(playerID(var(3+var(55))),vel x)>=1
trigger1=playerID(var(3+var(55))),facing*(root,pos x-playerID(var(3+var(55))),pos x)-playerID(var(3+var(55))),vel x*13<=70
trigger1=playerID(var(3+var(55))),facing*(root,pos x-playerID(var(3+var(55))),pos x)-playerID(var(3+var(55))),vel x*13>=50
trigger1=fvar(0):=playerID(var(3+var(55))),vel x||1
var(58)=2**3

[State 55555 地上波動　避け行動]
type=varadd
trigger1=playerIDExist(var(3+var(55)))
trigger1=!(var(58)&2**4)
trigger1=playerID(var(3+var(55))),hitdefattr = SCA,AA,AP
trigger1=playerID(var(3+var(55))),pos y+playerID(var(3+var(55))),vel y*10=[-100,60]
trigger1=abs(playerID(var(3+var(55))),vel x)>=1
trigger1=playerID(var(3+var(55))),facing*(root,pos x-playerID(var(3+var(55))),pos x)-playerID(var(3+var(55))),vel x*6<=10
trigger1=playerID(var(3+var(55))),facing*(root,pos x-playerID(var(3+var(55))),pos x)-playerID(var(3+var(55))),vel x*6>=-10
trigger1=fvar(0):=playerID(var(3+var(55))),vel x||1
var(58)=2**4

[State 55555 地上波動　撃ち返し]
type=varadd
trigger1=playerIDExist(var(3+var(55)))
trigger1=!(var(58)&2**5)
trigger1=playerID(var(3+var(55))),hitdefattr = SCA,AA,AP
trigger1=playerID(var(3+var(55))),pos y+playerID(var(3+var(55))),vel y*10=[-100,60]
trigger1=abs(playerID(var(3+var(55))),vel x)>=1
trigger1=playerID(var(3+var(55))),facing*(root,pos x-playerID(var(3+var(55))),pos x)>0
trigger1=playerID(var(3+var(55))),facing*(root,pos x-playerID(var(3+var(55))),pos x)-playerID(var(3+var(55))),vel x*13>=100
trigger1=fvar(0):=playerID(var(3+var(55))),vel x||1
var(58)=2**5

[State 55555 空中波動 避け行動]
type=varadd
trigger1=playerIDExist(var(3+var(55)))
trigger1=!(var(58)&2**7)
trigger1=playerID(var(3+var(55))),hitdefattr = SCA,AA,AP
trigger1=playerID(var(3+var(55))),pos y+playerID(var(3+var(55))),vel y*10>=-80
trigger1=abs(playerID(var(3+var(55))),vel x)>=1
trigger1=playerID(var(3+var(55))),facing*(root,pos x-playerID(var(3+var(55))),pos x)>-50
trigger1=playerID(var(3+var(55))),facing*(root,pos x-playerID(var(3+var(55))),pos x)-playerID(var(3+var(55))),vel x*6<=0
trigger1=fvar(0):=playerID(var(3+var(55))),vel x||1
trigger1=fvar(1):=playerID(var(3+var(55))),vel y||1
var(58)=2**7

[State 55555 地上波動 通りすぎ]
type=varadd
trigger1=playerIDExist(var(3+var(55)))
trigger1=!(var(58)&2**9)
trigger1=playerID(var(3+var(55))),hitdefattr = SCA,AA,AP
trigger1=playerID(var(3+var(55))),pos y+playerID(var(3+var(55))),vel y*10=[-100,60]
trigger1=abs(playerID(var(3+var(55))),vel x)>=1
trigger1=playerID(var(3+var(55))),facing*(root,pos x-playerID(var(3+var(55))),pos x)-playerID(var(3+var(55))),vel x*6-root,vel x*6<0
trigger1=fvar(0):=playerID(var(3+var(55))),vel x||1
var(58)=2**9

[State 55555 近すぎ]
type=varadd
trigger1=playerIDExist(var(3+var(55)))
trigger1=!(var(58)&2**10)
trigger1=playerID(var(3+var(55))),hitdefattr = SCA,AA,AP
trigger1=playerID(var(3+var(55))),pos y-root,pos y=[-120,120]
trigger1=playerID(var(3+var(55))),facing*(root,pos x-playerID(var(3+var(55))),pos x)=[-120,120]
var(58)=2**10

[State 55555 近すぎ(地上)]
type=varadd
trigger1=playerIDExist(var(3+var(55)))
trigger1=!(var(58)&2**11)
trigger1=playerID(var(3+var(55))),hitdefattr = SC,AA,AP
trigger1=playerID(var(3+var(55))),pos y-root,pos y=[-120,120]
trigger1=playerID(var(3+var(55))),facing*(root,pos x-playerID(var(3+var(55))),pos x)=[-120,120]
var(58)=2**11

[State 55555 近すぎ(空中)]
type=varadd
trigger1=playerIDExist(var(3+var(55)))
trigger1=!(var(58)&2**12)
trigger1=playerID(var(3+var(55))),hitdefattr = A,AA,AP
trigger1=playerID(var(3+var(55))),pos y-root,pos y=[-120,120]
trigger1=playerID(var(3+var(55))),facing*(root,pos x-playerID(var(3+var(55))),pos x)=[-120,120]
var(58)=2**12

[State 55555 近すぎ（パニッシュメント用]
type=varadd
trigger1=playerIDExist(var(3+var(55)))
trigger1=!(var(58)&2**13)
trigger1=playerID(var(3+var(55))),hitdefattr = SCA,AA,AP
trigger1=playerID(var(3+var(55))),pos y-root,pos y=[-90,90]
trigger1=playerID(var(3+var(55))),facing*(root,pos x-playerID(var(3+var(55))),pos x)=[-30,30]
trigger1=abs(playerID(var(3+var(55))),vel x)>=1
var(58)=2**13

[State 55555 なにかあるなら]
type=varadd
trigger1=playerIDExist(var(3+var(55)))
trigger1=!(var(58)&2**20)
trigger1=playerID(var(3+var(55))),hitdefattr = SCA,AA,AP
var(58)=2**20

[State 55555 前方になにかあるなら]
type=varadd
trigger1=playerIDExist(var(3+var(55)))
trigger1=!(var(58)&2**21)
trigger1=playerID(var(3+var(55))),hitdefattr = SCA,AA,AP
trigger1=playerID(var(3+var(55))),pos y-root,pos y=[-160,160]
trigger1=abs(playerID(var(3+var(55))),vel x)>=1
trigger1=playerID(var(3+var(55))),facing*(root,pos x-playerID(var(3+var(55))),pos x)>=0
var(58)=2**21

[State 55555 後方になにかあるなら]
type=varadd
trigger1=playerIDExist(var(3+var(55)))
trigger1=!(var(58)&2**22)
trigger1=playerID(var(3+var(55))),hitdefattr = SCA,AA,AP
trigger1=playerID(var(3+var(55))),pos y-root,pos y=[-160,160]
trigger1=abs(playerID(var(3+var(55))),vel x)>=1
trigger1=playerID(var(3+var(55))),facing*(root,pos x-playerID(var(3+var(55))),pos x)<0
var(58)=2**22

[State 55555 判定無し含め）なにかあるなら]
type=varadd
trigger1=playerIDExist(var(3+var(55)))
trigger1=!(var(58)&2**23)
trigger1=playerID(var(3+var(55))),movetype = A || playerID(var(3+var(55))),hitdefattr = SCA,AA,AP
var(58)=2**23

[State 55555 判定無しのみ）なにかあるなら]
type=varadd
trigger1=playerIDExist(var(3+var(55)))
trigger1=!(var(58)&2**24)
trigger1=playerID(var(3+var(55))),movetype = A && !(playerID(var(3+var(55))),hitdefattr = SCA,AA,AP)
var(58)=2**24


;ループカウンタ増加、初めに戻る
[State 55559]
type=CHangeState
trigger1=var(55)<var(54)
trigger1=var(55):=var(55)+1||1
value=55559


[State -2 デバッグ用]
type=displayToClipboard
trigger1=1
ignorehitpause=1
text=" var(2)=%d var(4)=%d var(3)=%d var(5)=%d var(6)=%d"
params=var(2),var(4),var(3),var(5),var(6)

[State -2 デバッグ用]
type=AppendToClipboard
trigger1=1
ignorehitpause=1
text=" \nvar(7)=%d var(59)=%d var(55)=%d var(54)=%d var(58)=%d"
params=var(7),var(59),var(55),var(54),var(58)


[State 55555];カウンタ初期化
type=varset
trigger1=1
var(55)=0

[State 55555];カウンタ初期化
type=varset
trigger1=1
var(56)=0

[State -2];直前のヘルパー数
type=varset
trigger1=1
fvar(9)=enemy,numhelper

;===========================================================================
[Statedef 22222];ステージ右端検出用
Type = A
Ctrl = 0
Anim = 0
Velset = -10,0
Movetype = I
Physics = N
Sprpriority = 1

[State -2,消失]
type=DestroySelf
triggerall=isHelper
trigger1=roundstate!=[1,2]

[State 22222]
type = assertspecial
trigger1 = 1
flag = invisible

[State 22222]
type = NotHitBy
value = SCA
trigger1 = 1

[State 22222,間違いで本体が来たら立ちへ移行]
type=selfstate
trigger1=!ishelper
value=0

[State 22222]
type = Projectile
Trigger1 = time = 0
velocity = 10,0
projID = 2222
projhits = 9999
projpriority = 9999
projanim = 0
offset = 0,0
projstagebound = 0
Projedgebound = 100000
projremove = 0
Projremovetime = -1
supermovetime = 9999
pausemovetime = 9999

[State 22222]
type = velset
Trigger1 = Root,NumProjID(2222) = 0
Trigger1 = time > 0
x = 0
y = 0

;///// var(0) 猶予 /////
;リセット
[State 22222]
Type = VarSet
triggerall = ishelper
trigger1 = 1
var(0)= 0
IgnoreHitPause= 1

;猶予
[State 22222]
Type = null
triggerall= ishelper
triggerall= RoundState=2
triggerall= enemy,teammode = single || enemy,teammode = turns
triggerall= p2movetype = A || p2stateno >= 200 || enemynear,hitdefattr = SCA,AA,AT,AP
triggerall= enemynear,stateno != var(53)
triggerall= enemynear,stateno != var(54)
triggerall= enemynear,stateno != var(55)
triggerall= enemynear,stateno != var(56)
triggerall= enemynear,stateno != var(57)
triggerall= enemynear,stateno != var(58)
triggerall= enemynear,stateno != var(59)
trigger1 = p2stateno = var(1)
trigger1 = var(0) := var(2) - enemynear,time
trigger2 = p2stateno = var(3)
trigger2 = var(0) := var(4) - enemynear,time
trigger3 = p2stateno = var(5)
trigger3 = var(0) := var(6) - enemynear,time
trigger4 = p2stateno = var(7)
trigger4 = var(0) := var(8) - enemynear,time
trigger5 = p2stateno = var(9)
trigger5 = var(0) := var(10) - enemynear,time
trigger6 = p2stateno = var(11)
trigger6 = var(0) := var(12) - enemynear,time
trigger7 = p2stateno = var(13)
trigger7 = var(0) := var(14) - enemynear,time
trigger8 = p2stateno = var(15)
trigger8 = var(0) := var(16) - enemynear,time
trigger9 = p2stateno = var(17)
trigger9 = var(0) := var(18) - enemynear,time
trigger10 = p2stateno = var(19)
trigger10 = var(0) := var(20) - enemynear,time
trigger11 = p2stateno = var(21)
trigger11 = var(0) := var(22) - enemynear,time
trigger12 = p2stateno = var(23)
trigger12 = var(0) := var(24) - enemynear,time
trigger13 = p2stateno = var(25)
trigger13 = var(0) := var(26) - enemynear,time
trigger14 = p2stateno = var(27)
trigger14 = var(0) := var(28) - enemynear,time
trigger15 = p2stateno = var(29)
trigger15 = var(0) := var(30) - enemynear,time
trigger16 = p2stateno = var(31)
trigger16 = var(0) := var(32) - enemynear,time
trigger17 = p2stateno = var(33)
trigger17 = var(0) := var(34) - enemynear,time
trigger18 = p2stateno = var(35)
trigger18 = var(0) := var(36) - enemynear,time
trigger19 = p2stateno = var(37)
trigger19 = var(0) := var(38) - enemynear,time
trigger20 = p2stateno = var(39)
trigger20 = var(0) := var(40) - enemynear,time
trigger21 = p2stateno = var(41)
trigger21 = var(0) := var(42) - enemynear,time
trigger22 = p2stateno = var(43)
trigger22 = var(0) := var(44) - enemynear,time
trigger23 = p2stateno = var(45)
trigger23 = var(0) := var(46) - enemynear,time
trigger24 = p2stateno = var(47)
trigger24 = var(0) := var(48) - enemynear,time
trigger25 = p2stateno = var(49)
trigger25 = var(0) := var(50) - enemynear,time
IgnoreHitPause= 1

;///// var(1)~var(50) フラグ /////
[State 22222]
Type = VarSet
triggerall= ishelper
triggerall= RoundState=2
triggerall= enemy,teammode = single || enemy,teammode = turns	
trigger1= enemynear,movetype=A
trigger1= enemynear,movecontact=1
trigger1= enemynear,hitdefattr=SCA,AA
trigger1= enemynear,stateno != var(1) || enemynear,time < var(2)
trigger1= enemynear,stateno != var(3)
trigger1= enemynear,stateno != var(5)
trigger1= enemynear,stateno != var(7)
trigger1= enemynear,stateno != var(9)
trigger1= enemynear,stateno != var(11)
trigger1= enemynear,stateno != var(13)
trigger1= enemynear,stateno != var(15)
trigger1= enemynear,stateno != var(17)
trigger1= enemynear,stateno != var(19)
trigger1= enemynear,stateno != var(21)
trigger1= enemynear,stateno != var(23)
trigger1= enemynear,stateno != var(25)
trigger1= enemynear,stateno != var(27)
trigger1= enemynear,stateno != var(29)
trigger1= enemynear,stateno != var(31)
trigger1= enemynear,stateno != var(33)
trigger1= enemynear,stateno != var(35)
trigger1= enemynear,stateno != var(37)
trigger1= enemynear,stateno != var(39)
trigger1= enemynear,stateno != var(41)
trigger1= enemynear,stateno != var(43)
trigger1= enemynear,stateno != var(45)
trigger1= enemynear,stateno != var(47)
trigger1= enemynear,stateno != var(49)
trigger1= !var(1)
trigger1= var(2) := enemynear,time
var(1)= enemynear,stateno
IgnoreHitPause= 1

[State 22222]
Type = VarSet
triggerall= ishelper
triggerall= RoundState=2
triggerall= enemy,teammode = single || enemy,teammode = turns	
trigger1= enemynear,movetype=A
trigger1= enemynear,movecontact=1
trigger1= enemynear,hitdefattr=SCA,AA
trigger1= enemynear,stateno != var(1)
trigger1= enemynear,stateno != var(3) || enemynear,time < var(4)
trigger1= enemynear,stateno != var(5)
trigger1= enemynear,stateno != var(7)
trigger1= enemynear,stateno != var(9)
trigger1= enemynear,stateno != var(11)
trigger1= enemynear,stateno != var(13)
trigger1= enemynear,stateno != var(15)
trigger1= enemynear,stateno != var(17)
trigger1= enemynear,stateno != var(19)
trigger1= enemynear,stateno != var(21)
trigger1= enemynear,stateno != var(23)
trigger1= enemynear,stateno != var(25)
trigger1= enemynear,stateno != var(27)
trigger1= enemynear,stateno != var(29)
trigger1= enemynear,stateno != var(31)
trigger1= enemynear,stateno != var(33)
trigger1= enemynear,stateno != var(35)
trigger1= enemynear,stateno != var(37)
trigger1= enemynear,stateno != var(39)
trigger1= enemynear,stateno != var(41)
trigger1= enemynear,stateno != var(43)
trigger1= enemynear,stateno != var(45)
trigger1= enemynear,stateno != var(47)
trigger1= enemynear,stateno != var(49)
trigger1= !var(3)
trigger1= var(4) := enemynear,time
var(3)= enemynear,stateno
IgnoreHitPause= 1

[State 22222]
Type = VarSet
triggerall= ishelper
triggerall= RoundState=2
triggerall= enemy,teammode = single || enemy,teammode = turns	
trigger1= enemynear,movetype=A
trigger1= enemynear,movecontact=1
trigger1= enemynear,hitdefattr=SCA,AA
trigger1= enemynear,stateno != var(1)
trigger1= enemynear,stateno != var(3)
trigger1= enemynear,stateno != var(5) || enemynear,time < var(6)
trigger1= enemynear,stateno != var(7)
trigger1= enemynear,stateno != var(9)
trigger1= enemynear,stateno != var(11)
trigger1= enemynear,stateno != var(13)
trigger1= enemynear,stateno != var(15)
trigger1= enemynear,stateno != var(17)
trigger1= enemynear,stateno != var(19)
trigger1= enemynear,stateno != var(21)
trigger1= enemynear,stateno != var(23)
trigger1= enemynear,stateno != var(25)
trigger1= enemynear,stateno != var(27)
trigger1= enemynear,stateno != var(29)
trigger1= enemynear,stateno != var(31)
trigger1= enemynear,stateno != var(33)
trigger1= enemynear,stateno != var(35)
trigger1= enemynear,stateno != var(37)
trigger1= enemynear,stateno != var(39)
trigger1= enemynear,stateno != var(41)
trigger1= enemynear,stateno != var(43)
trigger1= enemynear,stateno != var(45)
trigger1= enemynear,stateno != var(47)
trigger1= enemynear,stateno != var(49)
trigger1= !var(5)
trigger1= var(6) := enemynear,time
var(5)= enemynear,stateno
IgnoreHitPause= 1

[State 22222]
Type = VarSet
triggerall= ishelper
triggerall= RoundState=2
triggerall= enemy,teammode = single || enemy,teammode = turns	
trigger1= enemynear,movetype=A
trigger1= enemynear,movecontact=1
trigger1= enemynear,hitdefattr=SCA,AA
trigger1= enemynear,stateno != var(1)
trigger1= enemynear,stateno != var(3)
trigger1= enemynear,stateno != var(5)
trigger1= enemynear,stateno != var(7) || enemynear,time < var(8)
trigger1= enemynear,stateno != var(9)
trigger1= enemynear,stateno != var(11)
trigger1= enemynear,stateno != var(13)
trigger1= enemynear,stateno != var(15)
trigger1= enemynear,stateno != var(17)
trigger1= enemynear,stateno != var(19)
trigger1= enemynear,stateno != var(21)
trigger1= enemynear,stateno != var(23)
trigger1= enemynear,stateno != var(25)
trigger1= enemynear,stateno != var(27)
trigger1= enemynear,stateno != var(29)
trigger1= enemynear,stateno != var(31)
trigger1= enemynear,stateno != var(33)
trigger1= enemynear,stateno != var(35)
trigger1= enemynear,stateno != var(37)
trigger1= enemynear,stateno != var(39)
trigger1= enemynear,stateno != var(41)
trigger1= enemynear,stateno != var(43)
trigger1= enemynear,stateno != var(45)
trigger1= enemynear,stateno != var(47)
trigger1= enemynear,stateno != var(49)
trigger1= !var(7)
trigger1= var(8) := enemynear,time
var(7)= enemynear,stateno
IgnoreHitPause= 1

[State 22222]
Type = VarSet
triggerall= ishelper
triggerall= RoundState=2
triggerall= enemy,teammode = single || enemy,teammode = turns	
trigger1= enemynear,movetype=A
trigger1= enemynear,movecontact=1
trigger1= enemynear,hitdefattr=SCA,AA
trigger1= enemynear,stateno != var(1)
trigger1= enemynear,stateno != var(3)
trigger1= enemynear,stateno != var(5)
trigger1= enemynear,stateno != var(7)
trigger1= enemynear,stateno != var(9) || enemynear,time < var(10)
trigger1= enemynear,stateno != var(11)
trigger1= enemynear,stateno != var(13)
trigger1= enemynear,stateno != var(15)
trigger1= enemynear,stateno != var(17)
trigger1= enemynear,stateno != var(19)
trigger1= enemynear,stateno != var(21)
trigger1= enemynear,stateno != var(23)
trigger1= enemynear,stateno != var(25)
trigger1= enemynear,stateno != var(27)
trigger1= enemynear,stateno != var(29)
trigger1= enemynear,stateno != var(31)
trigger1= enemynear,stateno != var(33)
trigger1= enemynear,stateno != var(35)
trigger1= enemynear,stateno != var(37)
trigger1= enemynear,stateno != var(39)
trigger1= enemynear,stateno != var(41)
trigger1= enemynear,stateno != var(43)
trigger1= enemynear,stateno != var(45)
trigger1= enemynear,stateno != var(47)
trigger1= enemynear,stateno != var(49)
trigger1= !var(9)
trigger1= var(10) := enemynear,time
var(9)= enemynear,stateno
IgnoreHitPause= 1

[State 22222]
Type = VarSet
triggerall= ishelper
triggerall= RoundState=2
triggerall= enemy,teammode = single || enemy,teammode = turns	
trigger1= enemynear,movetype=A
trigger1= enemynear,movecontact=1
trigger1= enemynear,hitdefattr=SCA,AA
trigger1= enemynear,stateno != var(1)
trigger1= enemynear,stateno != var(3)
trigger1= enemynear,stateno != var(5)
trigger1= enemynear,stateno != var(7)
trigger1= enemynear,stateno != var(9)
trigger1= enemynear,stateno != var(11) || enemynear,time < var(12)
trigger1= enemynear,stateno != var(13)
trigger1= enemynear,stateno != var(15)
trigger1= enemynear,stateno != var(17)
trigger1= enemynear,stateno != var(19)
trigger1= enemynear,stateno != var(21)
trigger1= enemynear,stateno != var(23)
trigger1= enemynear,stateno != var(25)
trigger1= enemynear,stateno != var(27)
trigger1= enemynear,stateno != var(29)
trigger1= enemynear,stateno != var(31)
trigger1= enemynear,stateno != var(33)
trigger1= enemynear,stateno != var(35)
trigger1= enemynear,stateno != var(37)
trigger1= enemynear,stateno != var(39)
trigger1= enemynear,stateno != var(41)
trigger1= enemynear,stateno != var(43)
trigger1= enemynear,stateno != var(45)
trigger1= enemynear,stateno != var(47)
trigger1= enemynear,stateno != var(49)
trigger1= !var(11)
trigger1= var(12) := enemynear,time
var(11)= enemynear,stateno
IgnoreHitPause= 1

[State 22222]
Type = VarSet
triggerall= ishelper
triggerall= RoundState=2
triggerall= enemy,teammode = single || enemy,teammode = turns	
trigger1= enemynear,movetype=A
trigger1= enemynear,movecontact=1
trigger1= enemynear,hitdefattr=SCA,AA
trigger1= enemynear,stateno != var(1)
trigger1= enemynear,stateno != var(3)
trigger1= enemynear,stateno != var(5)
trigger1= enemynear,stateno != var(7)
trigger1= enemynear,stateno != var(9)
trigger1= enemynear,stateno != var(11)
trigger1= enemynear,stateno != var(13) || enemynear,time < var(14)
trigger1= enemynear,stateno != var(15)
trigger1= enemynear,stateno != var(17)
trigger1= enemynear,stateno != var(19)
trigger1= enemynear,stateno != var(21)
trigger1= enemynear,stateno != var(23)
trigger1= enemynear,stateno != var(25)
trigger1= enemynear,stateno != var(27)
trigger1= enemynear,stateno != var(29)
trigger1= enemynear,stateno != var(31)
trigger1= enemynear,stateno != var(33)
trigger1= enemynear,stateno != var(35)
trigger1= enemynear,stateno != var(37)
trigger1= enemynear,stateno != var(39)
trigger1= enemynear,stateno != var(41)
trigger1= enemynear,stateno != var(43)
trigger1= enemynear,stateno != var(45)
trigger1= enemynear,stateno != var(47)
trigger1= enemynear,stateno != var(49)
trigger1= !var(13)
trigger1= var(14) := enemynear,time
var(13)= enemynear,stateno
IgnoreHitPause= 1

[State 22222]
Type = VarSet
triggerall= ishelper
triggerall= RoundState=2
triggerall= enemy,teammode = single || enemy,teammode = turns	
trigger1= enemynear,movetype=A
trigger1= enemynear,movecontact=1
trigger1= enemynear,hitdefattr=SCA,AA
trigger1= enemynear,stateno != var(1)
trigger1= enemynear,stateno != var(3)
trigger1= enemynear,stateno != var(5)
trigger1= enemynear,stateno != var(7)
trigger1= enemynear,stateno != var(9)
trigger1= enemynear,stateno != var(11)
trigger1= enemynear,stateno != var(13)
trigger1= enemynear,stateno != var(15) || enemynear,time < var(16)
trigger1= enemynear,stateno != var(17)
trigger1= enemynear,stateno != var(19)
trigger1= enemynear,stateno != var(21)
trigger1= enemynear,stateno != var(23)
trigger1= enemynear,stateno != var(25)
trigger1= enemynear,stateno != var(27)
trigger1= enemynear,stateno != var(29)
trigger1= enemynear,stateno != var(31)
trigger1= enemynear,stateno != var(33)
trigger1= enemynear,stateno != var(35)
trigger1= enemynear,stateno != var(37)
trigger1= enemynear,stateno != var(39)
trigger1= enemynear,stateno != var(41)
trigger1= enemynear,stateno != var(43)
trigger1= enemynear,stateno != var(45)
trigger1= enemynear,stateno != var(47)
trigger1= enemynear,stateno != var(49)
trigger1= !var(15)
trigger1= var(16) := enemynear,time
var(15)= enemynear,stateno
IgnoreHitPause= 1

[State 22222]
Type = VarSet
triggerall= ishelper
triggerall= RoundState=2
triggerall= enemy,teammode = single || enemy,teammode = turns	
trigger1= enemynear,movetype=A
trigger1= enemynear,movecontact=1
trigger1= enemynear,hitdefattr=SCA,AA
trigger1= enemynear,stateno != var(1)
trigger1= enemynear,stateno != var(3)
trigger1= enemynear,stateno != var(5)
trigger1= enemynear,stateno != var(7)
trigger1= enemynear,stateno != var(9)
trigger1= enemynear,stateno != var(11)
trigger1= enemynear,stateno != var(13)
trigger1= enemynear,stateno != var(15)
trigger1= enemynear,stateno != var(17) || enemynear,time < var(18)
trigger1= enemynear,stateno != var(19)
trigger1= enemynear,stateno != var(21)
trigger1= enemynear,stateno != var(23)
trigger1= enemynear,stateno != var(25)
trigger1= enemynear,stateno != var(27)
trigger1= enemynear,stateno != var(29)
trigger1= enemynear,stateno != var(31)
trigger1= enemynear,stateno != var(33)
trigger1= enemynear,stateno != var(35)
trigger1= enemynear,stateno != var(37)
trigger1= enemynear,stateno != var(39)
trigger1= enemynear,stateno != var(41)
trigger1= enemynear,stateno != var(43)
trigger1= enemynear,stateno != var(45)
trigger1= enemynear,stateno != var(47)
trigger1= enemynear,stateno != var(49)
trigger1= !var(17)
trigger1= var(18) := enemynear,time
var(17)= enemynear,stateno
IgnoreHitPause= 1

[State 22222]
Type = VarSet
triggerall= ishelper
triggerall= RoundState=2
triggerall= enemy,teammode = single || enemy,teammode = turns	
trigger1= enemynear,movetype=A
trigger1= enemynear,movecontact=1
trigger1= enemynear,hitdefattr=SCA,AA
trigger1= enemynear,stateno != var(1)
trigger1= enemynear,stateno != var(3)
trigger1= enemynear,stateno != var(5)
trigger1= enemynear,stateno != var(7)
trigger1= enemynear,stateno != var(9)
trigger1= enemynear,stateno != var(11)
trigger1= enemynear,stateno != var(13)
trigger1= enemynear,stateno != var(15)
trigger1= enemynear,stateno != var(17)
trigger1= enemynear,stateno != var(19) || enemynear,time < var(20)
trigger1= enemynear,stateno != var(21)
trigger1= enemynear,stateno != var(23)
trigger1= enemynear,stateno != var(25)
trigger1= enemynear,stateno != var(27)
trigger1= enemynear,stateno != var(29)
trigger1= enemynear,stateno != var(31)
trigger1= enemynear,stateno != var(33)
trigger1= enemynear,stateno != var(35)
trigger1= enemynear,stateno != var(37)
trigger1= enemynear,stateno != var(39)
trigger1= enemynear,stateno != var(41)
trigger1= enemynear,stateno != var(43)
trigger1= enemynear,stateno != var(45)
trigger1= enemynear,stateno != var(47)
trigger1= enemynear,stateno != var(49)
trigger1= !var(19)
trigger1= var(20) := enemynear,time
var(19)= enemynear,stateno
IgnoreHitPause= 1

[State 22222]
Type = VarSet
triggerall= ishelper
triggerall= RoundState=2
triggerall= enemy,teammode = single || enemy,teammode = turns	
trigger1= enemynear,movetype=A
trigger1= enemynear,movecontact=1
trigger1= enemynear,hitdefattr=SCA,AA
trigger1= enemynear,stateno != var(1)
trigger1= enemynear,stateno != var(3)
trigger1= enemynear,stateno != var(5)
trigger1= enemynear,stateno != var(7)
trigger1= enemynear,stateno != var(9)
trigger1= enemynear,stateno != var(11)
trigger1= enemynear,stateno != var(13)
trigger1= enemynear,stateno != var(15)
trigger1= enemynear,stateno != var(17)
trigger1= enemynear,stateno != var(19)
trigger1= enemynear,stateno != var(21) || enemynear,time < var(22)
trigger1= enemynear,stateno != var(23)
trigger1= enemynear,stateno != var(25)
trigger1= enemynear,stateno != var(27)
trigger1= enemynear,stateno != var(29)
trigger1= enemynear,stateno != var(31)
trigger1= enemynear,stateno != var(33)
trigger1= enemynear,stateno != var(35)
trigger1= enemynear,stateno != var(37)
trigger1= enemynear,stateno != var(39)
trigger1= enemynear,stateno != var(41)
trigger1= enemynear,stateno != var(43)
trigger1= enemynear,stateno != var(45)
trigger1= enemynear,stateno != var(47)
trigger1= enemynear,stateno != var(49)
trigger1= !var(21)
trigger1= var(22) := enemynear,time
var(21)= enemynear,stateno
IgnoreHitPause= 1

[State 22222]
Type = VarSet
triggerall= ishelper
triggerall= RoundState=2
triggerall= enemy,teammode = single || enemy,teammode = turns	
trigger1= enemynear,movetype=A
trigger1= enemynear,movecontact=1
trigger1= enemynear,hitdefattr=SCA,AA
trigger1= enemynear,stateno != var(1)
trigger1= enemynear,stateno != var(3)
trigger1= enemynear,stateno != var(5)
trigger1= enemynear,stateno != var(7)
trigger1= enemynear,stateno != var(9)
trigger1= enemynear,stateno != var(11)
trigger1= enemynear,stateno != var(13)
trigger1= enemynear,stateno != var(15)
trigger1= enemynear,stateno != var(17)
trigger1= enemynear,stateno != var(19)
trigger1= enemynear,stateno != var(21)
trigger1= enemynear,stateno != var(23) || enemynear,time < var(24)
trigger1= enemynear,stateno != var(25)
trigger1= enemynear,stateno != var(27)
trigger1= enemynear,stateno != var(29)
trigger1= enemynear,stateno != var(31)
trigger1= enemynear,stateno != var(33)
trigger1= enemynear,stateno != var(35)
trigger1= enemynear,stateno != var(37)
trigger1= enemynear,stateno != var(39)
trigger1= enemynear,stateno != var(41)
trigger1= enemynear,stateno != var(43)
trigger1= enemynear,stateno != var(45)
trigger1= enemynear,stateno != var(47)
trigger1= enemynear,stateno != var(49)
trigger1= !var(23)
trigger1= var(24) := enemynear,time
var(23)= enemynear,stateno
IgnoreHitPause= 1

[State 22222]
Type = VarSet
triggerall= ishelper
triggerall= RoundState=2
triggerall= enemy,teammode = single || enemy,teammode = turns	
trigger1= enemynear,movetype=A
trigger1= enemynear,movecontact=1
trigger1= enemynear,hitdefattr=SCA,AA
trigger1= enemynear,stateno != var(1)
trigger1= enemynear,stateno != var(3)
trigger1= enemynear,stateno != var(5)
trigger1= enemynear,stateno != var(7)
trigger1= enemynear,stateno != var(9)
trigger1= enemynear,stateno != var(11)
trigger1= enemynear,stateno != var(13)
trigger1= enemynear,stateno != var(15)
trigger1= enemynear,stateno != var(17)
trigger1= enemynear,stateno != var(19)
trigger1= enemynear,stateno != var(21)
trigger1= enemynear,stateno != var(23)
trigger1= enemynear,stateno != var(25) || enemynear,time < var(26)
trigger1= enemynear,stateno != var(27)
trigger1= enemynear,stateno != var(29)
trigger1= enemynear,stateno != var(31)
trigger1= enemynear,stateno != var(33)
trigger1= enemynear,stateno != var(35)
trigger1= enemynear,stateno != var(37)
trigger1= enemynear,stateno != var(39)
trigger1= enemynear,stateno != var(41)
trigger1= enemynear,stateno != var(43)
trigger1= enemynear,stateno != var(45)
trigger1= enemynear,stateno != var(47)
trigger1= enemynear,stateno != var(49)
trigger1= !var(25)
trigger1= var(26) := enemynear,time
var(25)= enemynear,stateno
IgnoreHitPause= 1

[State 22222]
Type = VarSet
triggerall= ishelper
triggerall= RoundState=2
triggerall= enemy,teammode = single || enemy,teammode = turns	
trigger1= enemynear,movetype=A
trigger1= enemynear,movecontact=1
trigger1= enemynear,hitdefattr=SCA,AA
trigger1= enemynear,stateno != var(1)
trigger1= enemynear,stateno != var(3)
trigger1= enemynear,stateno != var(5)
trigger1= enemynear,stateno != var(7)
trigger1= enemynear,stateno != var(9)
trigger1= enemynear,stateno != var(11)
trigger1= enemynear,stateno != var(13)
trigger1= enemynear,stateno != var(15)
trigger1= enemynear,stateno != var(17)
trigger1= enemynear,stateno != var(19)
trigger1= enemynear,stateno != var(21)
trigger1= enemynear,stateno != var(23)
trigger1= enemynear,stateno != var(25)
trigger1= enemynear,stateno != var(27) || enemynear,time < var(28)
trigger1= enemynear,stateno != var(29)
trigger1= enemynear,stateno != var(31)
trigger1= enemynear,stateno != var(33)
trigger1= enemynear,stateno != var(35)
trigger1= enemynear,stateno != var(37)
trigger1= enemynear,stateno != var(39)
trigger1= enemynear,stateno != var(41)
trigger1= enemynear,stateno != var(43)
trigger1= enemynear,stateno != var(45)
trigger1= enemynear,stateno != var(47)
trigger1= enemynear,stateno != var(49)
trigger1= !var(27)
trigger1= var(28) := enemynear,time
var(27)= enemynear,stateno
IgnoreHitPause= 1

[State 22222]
Type = VarSet
triggerall= ishelper
triggerall= RoundState=2
triggerall= enemy,teammode = single || enemy,teammode = turns	
trigger1= enemynear,movetype=A
trigger1= enemynear,movecontact=1
trigger1= enemynear,hitdefattr=SCA,AA
trigger1= enemynear,stateno != var(1)
trigger1= enemynear,stateno != var(3)
trigger1= enemynear,stateno != var(5)
trigger1= enemynear,stateno != var(7)
trigger1= enemynear,stateno != var(9)
trigger1= enemynear,stateno != var(11)
trigger1= enemynear,stateno != var(13)
trigger1= enemynear,stateno != var(15)
trigger1= enemynear,stateno != var(17)
trigger1= enemynear,stateno != var(19)
trigger1= enemynear,stateno != var(21)
trigger1= enemynear,stateno != var(23)
trigger1= enemynear,stateno != var(25)
trigger1= enemynear,stateno != var(27)
trigger1= enemynear,stateno != var(29) || enemynear,time < var(30)
trigger1= enemynear,stateno != var(31)
trigger1= enemynear,stateno != var(33)
trigger1= enemynear,stateno != var(35)
trigger1= enemynear,stateno != var(37)
trigger1= enemynear,stateno != var(39)
trigger1= enemynear,stateno != var(41)
trigger1= enemynear,stateno != var(43)
trigger1= enemynear,stateno != var(45)
trigger1= enemynear,stateno != var(47)
trigger1= enemynear,stateno != var(49)
trigger1= !var(29)
trigger1= var(30) := enemynear,time
var(29)= enemynear,stateno
IgnoreHitPause= 1

[State 22222]
Type = VarSet
triggerall= ishelper
triggerall= RoundState=2
triggerall= enemy,teammode = single || enemy,teammode = turns	
trigger1= enemynear,movetype=A
trigger1= enemynear,movecontact=1
trigger1= enemynear,hitdefattr=SCA,AA
trigger1= enemynear,stateno != var(1)
trigger1= enemynear,stateno != var(3)
trigger1= enemynear,stateno != var(5)
trigger1= enemynear,stateno != var(7)
trigger1= enemynear,stateno != var(9)
trigger1= enemynear,stateno != var(11)
trigger1= enemynear,stateno != var(13)
trigger1= enemynear,stateno != var(15)
trigger1= enemynear,stateno != var(17)
trigger1= enemynear,stateno != var(19)
trigger1= enemynear,stateno != var(21)
trigger1= enemynear,stateno != var(23)
trigger1= enemynear,stateno != var(25)
trigger1= enemynear,stateno != var(27)
trigger1= enemynear,stateno != var(29)
trigger1= enemynear,stateno != var(31) || enemynear,time < var(32)
trigger1= enemynear,stateno != var(33)
trigger1= enemynear,stateno != var(35)
trigger1= enemynear,stateno != var(37)
trigger1= enemynear,stateno != var(39)
trigger1= enemynear,stateno != var(41)
trigger1= enemynear,stateno != var(43)
trigger1= enemynear,stateno != var(45)
trigger1= enemynear,stateno != var(47)
trigger1= enemynear,stateno != var(49)
trigger1= !var(31)
trigger1= var(32) := enemynear,time
var(31)= enemynear,stateno
IgnoreHitPause= 1

[State 22222]
Type = VarSet
triggerall= ishelper
triggerall= RoundState=2
triggerall= enemy,teammode = single || enemy,teammode = turns	
trigger1= enemynear,movetype=A
trigger1= enemynear,movecontact=1
trigger1= enemynear,hitdefattr=SCA,AA
trigger1= enemynear,stateno != var(1)
trigger1= enemynear,stateno != var(3)
trigger1= enemynear,stateno != var(5)
trigger1= enemynear,stateno != var(7)
trigger1= enemynear,stateno != var(9)
trigger1= enemynear,stateno != var(11)
trigger1= enemynear,stateno != var(13)
trigger1= enemynear,stateno != var(15)
trigger1= enemynear,stateno != var(17)
trigger1= enemynear,stateno != var(19)
trigger1= enemynear,stateno != var(21)
trigger1= enemynear,stateno != var(23)
trigger1= enemynear,stateno != var(25)
trigger1= enemynear,stateno != var(27)
trigger1= enemynear,stateno != var(29)
trigger1= enemynear,stateno != var(31)
trigger1= enemynear,stateno != var(33) || enemynear,time < var(34)
trigger1= enemynear,stateno != var(35)
trigger1= enemynear,stateno != var(37)
trigger1= enemynear,stateno != var(39)
trigger1= enemynear,stateno != var(41)
trigger1= enemynear,stateno != var(43)
trigger1= enemynear,stateno != var(45)
trigger1= enemynear,stateno != var(47)
trigger1= enemynear,stateno != var(49)
trigger1= !var(33)
trigger1= var(34) := enemynear,time
var(33)= enemynear,stateno
IgnoreHitPause= 1

[State 22222]
Type = VarSet
triggerall= ishelper
triggerall= RoundState=2
triggerall= enemy,teammode = single || enemy,teammode = turns	
trigger1= enemynear,movetype=A
trigger1= enemynear,movecontact=1
trigger1= enemynear,hitdefattr=SCA,AA
trigger1= enemynear,stateno != var(1)
trigger1= enemynear,stateno != var(3)
trigger1= enemynear,stateno != var(5)
trigger1= enemynear,stateno != var(7)
trigger1= enemynear,stateno != var(9)
trigger1= enemynear,stateno != var(11)
trigger1= enemynear,stateno != var(13)
trigger1= enemynear,stateno != var(15)
trigger1= enemynear,stateno != var(17)
trigger1= enemynear,stateno != var(19)
trigger1= enemynear,stateno != var(21)
trigger1= enemynear,stateno != var(23)
trigger1= enemynear,stateno != var(25)
trigger1= enemynear,stateno != var(27)
trigger1= enemynear,stateno != var(29)
trigger1= enemynear,stateno != var(31)
trigger1= enemynear,stateno != var(33)
trigger1= enemynear,stateno != var(35) || enemynear,time < var(36)
trigger1= enemynear,stateno != var(37)
trigger1= enemynear,stateno != var(39)
trigger1= enemynear,stateno != var(41)
trigger1= enemynear,stateno != var(43)
trigger1= enemynear,stateno != var(45)
trigger1= enemynear,stateno != var(47)
trigger1= enemynear,stateno != var(49)
trigger1= !var(35)
trigger1= var(36) := enemynear,time
var(35)= enemynear,stateno
IgnoreHitPause= 1

[State 22222]
Type = VarSet
triggerall= ishelper
triggerall= RoundState=2
triggerall= enemy,teammode = single || enemy,teammode = turns	
trigger1= enemynear,movetype=A
trigger1= enemynear,movecontact=1
trigger1= enemynear,hitdefattr=SCA,AA
trigger1= enemynear,stateno != var(1)
trigger1= enemynear,stateno != var(3)
trigger1= enemynear,stateno != var(5)
trigger1= enemynear,stateno != var(7)
trigger1= enemynear,stateno != var(9)
trigger1= enemynear,stateno != var(11)
trigger1= enemynear,stateno != var(13)
trigger1= enemynear,stateno != var(15)
trigger1= enemynear,stateno != var(17)
trigger1= enemynear,stateno != var(19)
trigger1= enemynear,stateno != var(21)
trigger1= enemynear,stateno != var(23)
trigger1= enemynear,stateno != var(25)
trigger1= enemynear,stateno != var(27)
trigger1= enemynear,stateno != var(29)
trigger1= enemynear,stateno != var(31)
trigger1= enemynear,stateno != var(33)
trigger1= enemynear,stateno != var(35)
trigger1= enemynear,stateno != var(37) || enemynear,time < var(38)
trigger1= enemynear,stateno != var(39)
trigger1= enemynear,stateno != var(41)
trigger1= enemynear,stateno != var(43)
trigger1= enemynear,stateno != var(45)
trigger1= enemynear,stateno != var(47)
trigger1= enemynear,stateno != var(49)
trigger1= !var(37)
trigger1= var(38) := enemynear,time
var(37)= enemynear,stateno
IgnoreHitPause= 1

[State 22222]
Type = VarSet
triggerall= ishelper
triggerall= RoundState=2
triggerall= enemy,teammode = single || enemy,teammode = turns	
trigger1= enemynear,movetype=A
trigger1= enemynear,movecontact=1
trigger1= enemynear,hitdefattr=SCA,AA
trigger1= enemynear,stateno != var(1)
trigger1= enemynear,stateno != var(3)
trigger1= enemynear,stateno != var(5)
trigger1= enemynear,stateno != var(7)
trigger1= enemynear,stateno != var(9)
trigger1= enemynear,stateno != var(11)
trigger1= enemynear,stateno != var(13)
trigger1= enemynear,stateno != var(15)
trigger1= enemynear,stateno != var(17)
trigger1= enemynear,stateno != var(19)
trigger1= enemynear,stateno != var(21)
trigger1= enemynear,stateno != var(23)
trigger1= enemynear,stateno != var(25)
trigger1= enemynear,stateno != var(27)
trigger1= enemynear,stateno != var(29)
trigger1= enemynear,stateno != var(31)
trigger1= enemynear,stateno != var(33)
trigger1= enemynear,stateno != var(35)
trigger1= enemynear,stateno != var(37)
trigger1= enemynear,stateno != var(39) || enemynear,time < var(40)
trigger1= enemynear,stateno != var(41)
trigger1= enemynear,stateno != var(43)
trigger1= enemynear,stateno != var(45)
trigger1= enemynear,stateno != var(47)
trigger1= enemynear,stateno != var(49)
trigger1= !var(39)
trigger1= var(40) := enemynear,time
var(39)= enemynear,stateno
IgnoreHitPause= 1

[State 22222]
Type = VarSet
triggerall= ishelper
triggerall= RoundState=2
triggerall= enemy,teammode = single || enemy,teammode = turns	
trigger1= enemynear,movetype=A
trigger1= enemynear,movecontact=1
trigger1= enemynear,hitdefattr=SCA,AA
trigger1= enemynear,stateno != var(1)
trigger1= enemynear,stateno != var(3)
trigger1= enemynear,stateno != var(5)
trigger1= enemynear,stateno != var(7)
trigger1= enemynear,stateno != var(9)
trigger1= enemynear,stateno != var(11)
trigger1= enemynear,stateno != var(13)
trigger1= enemynear,stateno != var(15)
trigger1= enemynear,stateno != var(17)
trigger1= enemynear,stateno != var(19)
trigger1= enemynear,stateno != var(21)
trigger1= enemynear,stateno != var(23)
trigger1= enemynear,stateno != var(25)
trigger1= enemynear,stateno != var(27)
trigger1= enemynear,stateno != var(29)
trigger1= enemynear,stateno != var(31)
trigger1= enemynear,stateno != var(33)
trigger1= enemynear,stateno != var(35)
trigger1= enemynear,stateno != var(37)
trigger1= enemynear,stateno != var(39)
trigger1= enemynear,stateno != var(41) || enemynear,time < var(42)
trigger1= enemynear,stateno != var(43)
trigger1= enemynear,stateno != var(45)
trigger1= enemynear,stateno != var(47)
trigger1= enemynear,stateno != var(49)
trigger1= !var(41)
trigger1= var(42) := enemynear,time
var(41)= enemynear,stateno
IgnoreHitPause= 1

[State 22222]
Type = VarSet
triggerall= ishelper
triggerall= RoundState=2
triggerall= enemy,teammode = single || enemy,teammode = turns	
trigger1= enemynear,movetype=A
trigger1= enemynear,movecontact=1
trigger1= enemynear,hitdefattr=SCA,AA
trigger1= enemynear,stateno != var(1)
trigger1= enemynear,stateno != var(3)
trigger1= enemynear,stateno != var(5)
trigger1= enemynear,stateno != var(7)
trigger1= enemynear,stateno != var(9)
trigger1= enemynear,stateno != var(11)
trigger1= enemynear,stateno != var(13)
trigger1= enemynear,stateno != var(15)
trigger1= enemynear,stateno != var(17)
trigger1= enemynear,stateno != var(19)
trigger1= enemynear,stateno != var(21)
trigger1= enemynear,stateno != var(23)
trigger1= enemynear,stateno != var(25)
trigger1= enemynear,stateno != var(27)
trigger1= enemynear,stateno != var(29)
trigger1= enemynear,stateno != var(31)
trigger1= enemynear,stateno != var(33)
trigger1= enemynear,stateno != var(35)
trigger1= enemynear,stateno != var(37)
trigger1= enemynear,stateno != var(39)
trigger1= enemynear,stateno != var(41)
trigger1= enemynear,stateno != var(43) || enemynear,time < var(44)
trigger1= enemynear,stateno != var(45)
trigger1= enemynear,stateno != var(47)
trigger1= enemynear,stateno != var(49)
trigger1= !var(43)
trigger1= var(44) := enemynear,time
var(43)= enemynear,stateno
IgnoreHitPause= 1

[State 22222]
Type = VarSet
triggerall= ishelper
triggerall= RoundState=2
triggerall= enemy,teammode = single || enemy,teammode = turns	
trigger1= enemynear,movetype=A
trigger1= enemynear,movecontact=1
trigger1= enemynear,hitdefattr=SCA,AA
trigger1= enemynear,stateno != var(1)
trigger1= enemynear,stateno != var(3)
trigger1= enemynear,stateno != var(5)
trigger1= enemynear,stateno != var(7)
trigger1= enemynear,stateno != var(9)
trigger1= enemynear,stateno != var(11)
trigger1= enemynear,stateno != var(13)
trigger1= enemynear,stateno != var(15)
trigger1= enemynear,stateno != var(17)
trigger1= enemynear,stateno != var(19)
trigger1= enemynear,stateno != var(21)
trigger1= enemynear,stateno != var(23)
trigger1= enemynear,stateno != var(25)
trigger1= enemynear,stateno != var(27)
trigger1= enemynear,stateno != var(29)
trigger1= enemynear,stateno != var(31)
trigger1= enemynear,stateno != var(33)
trigger1= enemynear,stateno != var(35)
trigger1= enemynear,stateno != var(37)
trigger1= enemynear,stateno != var(39)
trigger1= enemynear,stateno != var(41)
trigger1= enemynear,stateno != var(43)
trigger1= enemynear,stateno != var(45) || enemynear,time < var(46)
trigger1= enemynear,stateno != var(47)
trigger1= enemynear,stateno != var(49)
trigger1= !var(45)
trigger1= var(46) := enemynear,time
var(45)= enemynear,stateno
IgnoreHitPause= 1

[State 22222]
Type = VarSet
triggerall= ishelper
triggerall= RoundState=2
triggerall= enemy,teammode = single || enemy,teammode = turns	
trigger1= enemynear,movetype=A
trigger1= enemynear,movecontact=1
trigger1= enemynear,hitdefattr=SCA,AA
trigger1= enemynear,stateno != var(1)
trigger1= enemynear,stateno != var(3)
trigger1= enemynear,stateno != var(5)
trigger1= enemynear,stateno != var(7)
trigger1= enemynear,stateno != var(9)
trigger1= enemynear,stateno != var(11)
trigger1= enemynear,stateno != var(13)
trigger1= enemynear,stateno != var(15)
trigger1= enemynear,stateno != var(17)
trigger1= enemynear,stateno != var(19)
trigger1= enemynear,stateno != var(21)
trigger1= enemynear,stateno != var(23)
trigger1= enemynear,stateno != var(25)
trigger1= enemynear,stateno != var(27)
trigger1= enemynear,stateno != var(29)
trigger1= enemynear,stateno != var(31)
trigger1= enemynear,stateno != var(33)
trigger1= enemynear,stateno != var(35)
trigger1= enemynear,stateno != var(37)
trigger1= enemynear,stateno != var(39)
trigger1= enemynear,stateno != var(41)
trigger1= enemynear,stateno != var(43)
trigger1= enemynear,stateno != var(45)
trigger1= enemynear,stateno != var(47) || enemynear,time < var(48)
trigger1= enemynear,stateno != var(49)
trigger1= !var(47)
trigger1= var(48) := enemynear,time
var(47)= enemynear,stateno
IgnoreHitPause= 1

[State 22222]
Type = VarSet
triggerall= ishelper
triggerall= RoundState=2
triggerall= enemy,teammode = single || enemy,teammode = turns	
trigger1= enemynear,movetype=A
trigger1= enemynear,movecontact=1
trigger1= enemynear,hitdefattr=SCA,AA
trigger1= enemynear,stateno != var(1)
trigger1= enemynear,stateno != var(3)
trigger1= enemynear,stateno != var(5)
trigger1= enemynear,stateno != var(7)
trigger1= enemynear,stateno != var(9)
trigger1= enemynear,stateno != var(11)
trigger1= enemynear,stateno != var(13)
trigger1= enemynear,stateno != var(15)
trigger1= enemynear,stateno != var(17)
trigger1= enemynear,stateno != var(19)
trigger1= enemynear,stateno != var(21)
trigger1= enemynear,stateno != var(23)
trigger1= enemynear,stateno != var(25)
trigger1= enemynear,stateno != var(27)
trigger1= enemynear,stateno != var(29)
trigger1= enemynear,stateno != var(31)
trigger1= enemynear,stateno != var(33)
trigger1= enemynear,stateno != var(35)
trigger1= enemynear,stateno != var(37)
trigger1= enemynear,stateno != var(39)
trigger1= enemynear,stateno != var(41)
trigger1= enemynear,stateno != var(43)
trigger1= enemynear,stateno != var(45)
trigger1= enemynear,stateno != var(47)
trigger1= enemynear,stateno != var(49) || enemynear,time < var(50)
trigger1= !var(49)
trigger1= var(50) := enemynear,time
var(49)= enemynear,stateno
IgnoreHitPause= 1

;///// var(51) ブラックリスト格納用 /////
;発動
[State 22222]
Type = VarSet
triggerall = ishelper
triggerall = !var(51)
triggerall = roundstate = 2
triggerall = numhelper(55555)
trigger1 = !root,inguarddist || (!enemy,numproj && !(helper(55555),var(58)&2**21))
trigger1 = (root,inguarddist || p2movetype = A) && enemynear,p2dist x >= 0 && var(0) > 0
trigger1 = root,movetype != H && root,time = 1
trigger1 = var(52) := enemynear,stateno
var(51)= root,stateno
IgnoreHitPause= 1
;モーション終了
[State 33333]
Type = VarSet
triggerall = ishelper
triggerall = var(51)
triggerall = roundstate = 2
triggerall = root,movetype != H
triggerall = root,time = 1
trigger1 = root,prevstateno = var(51)
var(51)= 0
IgnoreHitPause= 1

;///// var(52) 発動時点での相手ステート /////
[State 33333]
Type = VarSet
triggerall= ishelper
trigger1= !var(51)
var(52)= 0
IgnoreHitPause= 1

;///// var(53)~var(59) ブラックリスト /////
[State 22222]
Type = VarSet
triggerall = ishelper
triggerall = var(51)
triggerall = var(53)
triggerall = var(54)
triggerall = var(55)
triggerall = var(56)
triggerall = var(57)
triggerall = var(58)
triggerall = var(52) != var(53)
triggerall = var(52) != var(54)
triggerall = var(52) != var(55)
triggerall = var(52) != var(56)
triggerall = var(52) != var(57)
triggerall = var(52) != var(58)
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = root,time = 1
trigger1 = root,prevstateno = var(51)
trigger1 = root,movetype = H
var(59)= var(52)
IgnoreHitPause= 1
[State 22222]
Type = VarSet
triggerall = ishelper
triggerall = var(51)
triggerall = var(53)
triggerall = var(54)
triggerall = var(55)
triggerall = var(56)
triggerall = var(57)
triggerall = var(52) != var(53)
triggerall = var(52) != var(54)
triggerall = var(52) != var(55)
triggerall = var(52) != var(56)
triggerall = var(52) != var(57)
triggerall = !var(58)
triggerall = roundstate = 2
triggerall = root,time = 1
trigger1 = root,prevstateno = var(51)
trigger1 = root,movetype = H
var(58)= var(52)
IgnoreHitPause= 1
[State 22222]
Type = VarSet
triggerall = ishelper
triggerall = var(51)
triggerall = var(53)
triggerall = var(54)
triggerall = var(55)
triggerall = var(56)
triggerall = var(52) != var(53)
triggerall = var(52) != var(54)
triggerall = var(52) != var(55)
triggerall = var(52) != var(56)
triggerall = !var(57)
triggerall = roundstate = 2
triggerall = root,time = 1
trigger1 = root,prevstateno = var(51)
trigger1 = root,movetype = H
var(57)= var(52)
IgnoreHitPause= 1
[State 22222]
Type = VarSet
triggerall = ishelper
triggerall = var(51)
triggerall = var(53)
triggerall = var(54)
triggerall = var(55)
triggerall = var(52) != var(53)
triggerall = var(52) != var(54)
triggerall = var(52) != var(55)
triggerall = !var(56)
triggerall = roundstate = 2
triggerall = root,time = 1
trigger1 = root,prevstateno = var(51)
trigger1 = root,movetype = H
var(56)= var(52)
IgnoreHitPause= 1
[State 22222]
Type = VarSet
triggerall = ishelper
triggerall = var(51)
triggerall = var(53)
triggerall = var(54)
triggerall = var(52) != var(53)
triggerall = var(52) != var(54)
triggerall = !var(55)
triggerall = roundstate = 2
triggerall = root,time = 1
trigger1 = root,prevstateno = var(51)
trigger1 = root,movetype = H
var(55)= var(52)
IgnoreHitPause= 1
[State 22222]
Type = VarSet
triggerall = ishelper
triggerall = var(51)
triggerall = var(53)
triggerall = var(52) != var(53)
triggerall = !var(54)
triggerall = roundstate = 2
triggerall = root,time = 1
trigger1 = root,prevstateno = var(51)
trigger1 = root,movetype = H
var(54)= var(52)
IgnoreHitPause= 1
[State 22222]
Type = VarSet
triggerall = ishelper
triggerall = var(51)
triggerall = !var(53)
triggerall = roundstate = 2
triggerall = root,time = 1
trigger1 = root,prevstateno = var(51)
trigger1 = root,movetype = H
var(53)= var(52)
IgnoreHitPause= 1

;///// fvar(0) すかし判定 /////
[State 22222]
Type = VarSet
triggerall= ishelper
trigger1= 1
fvar(0)= 0
IgnoreHitPause= 1

[State 22222]
Type = VarSet
triggerall= ishelper
triggerall= fvar(1) > 0
triggerall= fvar(2) > 0
triggerall= fvar(3) > 0
triggerall= enemynear,stateno = fvar(1)
triggerall= enemynear,anim != fvar(2) || enemynear,animelemno(0) > fvar(3) || enemynear,movecontact
triggerall= !enemynear,vel x
triggerall= !enemynear,vel y
triggerall= !enemynear,animtime >= -20
trigger1= fvar(1) != fvar(6)
trigger1= fvar(1) != fvar(7)
trigger1= fvar(1) != fvar(8)
trigger1= fvar(1) != fvar(9)
trigger1= fvar(1) != fvar(10)
trigger1= fvar(1) != fvar(11)
trigger1= fvar(1) != fvar(12)
fvar(0)= 1
IgnoreHitPause= 1

;///// fvar(1) すかし(stateno) /////
[State 22222]
Type = VarSet
triggerall= ishelper
trigger1= enemynear,stateno != fvar(1)
fvar(1)= 0
IgnoreHitPause= 1

[State 22222]
Type = VarSet
triggerall= ishelper
trigger1= enemynear,hitdefattr = SCA,AA,AT,AP
trigger2= fvar(34)
fvar(1)= enemynear,stateno
IgnoreHitPause= 1

;///// fvar(2) すかし(anim) /////
[State 22222]
Type = VarSet
triggerall= ishelper
trigger1= !fvar(1)
fvar(2)= 0
IgnoreHitPause= 1

[State 22222]
Type = VarSet
triggerall= ishelper
trigger1= fvar(1)
trigger1= !fvar(2)
fvar(2)= enemynear,anim
IgnoreHitPause= 1

;///// fvar(3) すかし(animelemno) /////
[State 22222]
Type = VarSet
triggerall= ishelper
trigger1= !fvar(1)
fvar(3)= 0
IgnoreHitPause= 1

[State 22222]
Type = VarSet
triggerall= ishelper
trigger1= fvar(1)
trigger1= !fvar(3)
fvar(3)= enemynear,animelemno(0)
IgnoreHitPause= 1

;///// fvar(4) ブラックリスト格納用 /////
;発動
[State 22222]
Type = VarSet
triggerall = ishelper
triggerall = !fvar(4)
triggerall = roundstate = 2
triggerall = numhelper(55555)
trigger1 = !root,inguarddist || (!enemy,numproj && !(helper(55555),var(58)&2**21))
trigger1 = (root,inguarddist || p2movetype = A) && enemynear,p2dist x >= 0 && fvar(0) > 0
trigger1 = root,movetype != H && root,time = 1
trigger1 = fvar(5) := enemynear,stateno
fvar(4)= root,stateno
IgnoreHitPause= 1
;モーション終了
[State 33333]
Type = VarSet
triggerall = ishelper
triggerall = fvar(4)
triggerall = roundstate = 2
triggerall = root,movetype != H
triggerall = root,time = 1
trigger1 = root,prevstateno = fvar(4)
fvar(4)= 0
IgnoreHitPause= 1

;///// fvar(5) 発動時点での相手ステート /////
[State 33333]
Type = VarSet
triggerall= ishelper
trigger1= !fvar(4)
fvar(5)= 0
IgnoreHitPause= 1

;///// fvar(6)~fvar(12) ブラックリスト /////
[State 22222]
Type = VarSet
triggerall = ishelper
triggerall = fvar(4)
triggerall = fvar(6)
triggerall = fvar(7)
triggerall = fvar(8)
triggerall = fvar(9)
triggerall = fvar(10)
triggerall = fvar(11)
triggerall = fvar(5) != fvar(6)
triggerall = fvar(5) != fvar(7)
triggerall = fvar(5) != fvar(8)
triggerall = fvar(5) != fvar(9)
triggerall = fvar(5) != fvar(10)
triggerall = fvar(5) != fvar(11)
triggerall = !fvar(12)
triggerall = roundstate = 2
triggerall = root,time = 1
trigger1 = root,prevstateno = fvar(4)
trigger1 = root,movetype = H
fvar(12)= fvar(5)
IgnoreHitPause= 1
[State 22222]
Type = VarSet
triggerall = ishelper
triggerall = fvar(4)
triggerall = fvar(6)
triggerall = fvar(7)
triggerall = fvar(8)
triggerall = fvar(9)
triggerall = fvar(10)
triggerall = fvar(5) != fvar(6)
triggerall = fvar(5) != fvar(7)
triggerall = fvar(5) != fvar(8)
triggerall = fvar(5) != fvar(9)
triggerall = fvar(5) != fvar(10)
triggerall = !fvar(11)
triggerall = roundstate = 2
triggerall = root,time = 1
trigger1 = root,prevstateno = fvar(4)
trigger1 = root,movetype = H
fvar(11)= fvar(5)
IgnoreHitPause= 1
[State 22222]
Type = VarSet
triggerall = ishelper
triggerall = fvar(4)
triggerall = fvar(6)
triggerall = fvar(7)
triggerall = fvar(8)
triggerall = fvar(9)
triggerall = fvar(5) != fvar(6)
triggerall = fvar(5) != fvar(7)
triggerall = fvar(5) != fvar(8)
triggerall = fvar(5) != fvar(9)
triggerall = !fvar(10)
triggerall = roundstate = 2
triggerall = root,time = 1
trigger1 = root,prevstateno = fvar(4)
trigger1 = root,movetype = H
fvar(10)= fvar(5)
IgnoreHitPause= 1
[State 22222]
Type = VarSet
triggerall = ishelper
triggerall = fvar(4)
triggerall = fvar(6)
triggerall = fvar(7)
triggerall = fvar(8)
triggerall = fvar(5) != fvar(6)
triggerall = fvar(5) != fvar(7)
triggerall = fvar(5) != fvar(8)
triggerall = !fvar(9)
triggerall = roundstate = 2
triggerall = root,time = 1
trigger1 = root,prevstateno = fvar(4)
trigger1 = root,movetype = H
fvar(9)= fvar(5)
IgnoreHitPause= 1
[State 22222]
Type = VarSet
triggerall = ishelper
triggerall = fvar(4)
triggerall = fvar(6)
triggerall = fvar(7)
triggerall = fvar(5) != fvar(6)
triggerall = fvar(5) != fvar(7)
triggerall = !fvar(6)
triggerall = roundstate = 2
triggerall = root,time = 1
trigger1 = root,prevstateno = fvar(4)
trigger1 = root,movetype = H
fvar(6)= fvar(5)
IgnoreHitPause= 1
[State 22222]
Type = VarSet
triggerall = ishelper
triggerall = fvar(4)
triggerall = fvar(6)
triggerall = fvar(5) != fvar(6)
triggerall = !fvar(7)
triggerall = roundstate = 2
triggerall = root,time = 1
trigger1 = root,prevstateno = fvar(4)
trigger1 = root,movetype = H
fvar(7)= fvar(5)
IgnoreHitPause= 1
[State 22222]
Type = VarSet
triggerall = ishelper
triggerall = fvar(4)
triggerall = !fvar(6)
triggerall = roundstate = 2
triggerall = root,time = 1
trigger1 = root,prevstateno = fvar(4)
trigger1 = root,movetype = H
fvar(6)= fvar(5)
IgnoreHitPause= 1

;///// fvar(20) 汎用コンボfacing /////
[State 22222]
type = VarSet
trigger1 = 1
fvar(20) = -(root,facing)*(enemynear,facing)
ignorehitpause = 1

;///// fvar(21) 汎用コンボ相手摩擦係数 /////
[State 22222]
Type = VarSet
Trigger1 = 1
fvar(21) = ifelse(p2statetype=C,(enemynear,const(movement.crouch.friction)),(enemynear,const(movement.stand.friction)))
IgnoreHitPause = 1

;///// fvar(22) 直前の攻撃ステート /////
[State 22222]
Type = VarSet
Trigger1 = root,movetype = A
Trigger1 = root,time = 1
fvar(22) = root,stateno
IgnoreHitPause = 1

;///// fvar(23) 相手画面端判定 /////
[State 22222]
Type = VarSet
Trigger1 = 1
fvar(23) = ifelse(enemynear,backedgedist > 1 && enemynear,frontedgebodydist > 1,1,0)
IgnoreHitPause = 1

;///// fvar(24) hitshaketime /////
[State 22222]
Type = VarSet
Trigger1 = 1
fvar(24) = enemynear,gethitvar(hitshaketime)
IgnoreHitPause = 1

;///// fvar(25) hittime /////
[State 22222]
Type = VarSet
Trigger1 = 1
fvar(25) = enemynear,gethitvar(hittime)
IgnoreHitPause = 1

;///// fvar(26) jojo-hitstop-out /////
[State 22222]
Type = VarSet
Trigger1 = 1
fvar(26) = (root,var(24) = 1)
IgnoreHitPause = 1

;///// fvar(30) HP差分 /////
[State 22222]
Type = VarSet
triggerall = ishelper
trigger1 = 1
fvar(30)= fvar(31)-root,life
IgnoreHitPause= 1

;///// fvar(31) 直前のHP /////
[State 22222]
Type = VarSet
triggerall = ishelper
trigger1 = 1
fvar(31)= root,life
IgnoreHitPause= 1

;///// fvar(32) 敵HP差分 /////
[State 22222]
Type = VarSet
triggerall = ishelper
trigger1 = 1
fvar(32)= fvar(33)-enemynear,life
IgnoreHitPause= 1

;///// fvar(33) 直前の敵HP /////
[State 22222]
Type = VarSet
triggerall = ishelper
trigger1 = 1
fvar(33)= enemynear,life
IgnoreHitPause= 1

;///// fvar(34) 飛び道具が射出された瞬間 /////
[State 22222]
Type = VarSet
triggerall = ishelper
triggerall = numenemy
triggerall = numhelper(55555)
trigger1 = 1
fvar(34)= ifelse(!fvar(35) && (enemy,numproj || helper(55555),var(58)&2**23),1,0)
IgnoreHitPause= 1

;///// fvar(35) 直前の飛び道具状況 /////
[State 22222]
Type = VarSet
triggerall = ishelper
triggerall = numenemy
triggerall = numhelper(55555)
trigger1 = 1
fvar(35)= ifelse(enemy,numproj || helper(55555),var(58)&2**23,1,0)
IgnoreHitPause= 1

;///// fvar(36) 敵パワー差分 /////
[State 22222]
Type = VarSet
triggerall = ishelper
trigger1 = 1
fvar(36)= enemynear,power-fvar(37)
IgnoreHitPause= 1

;///// fvar(37) 直前の敵パワー値 /////
[State 22222]
Type = VarSet
triggerall = ishelper
trigger1 = 1
fvar(37)= enemynear,power
IgnoreHitPause= 1


[State -2 デバッグ用]
type=displayToClipboard
trigger1=1
ignorehitpause=1
text="var(0)=%d"
params=var(0)

[State -2 デバッグ用]
type=AppendToClipboard
trigger1=1
ignorehitpause=1
text="\nvar(51)=%d, var(52)=%d, var(53)=%d, var(54)=%d, var(55)=%d"
params=var(51), var(52), var(53), var(54), var(55)

;===========================================================================
[Statedef 33333];ステージ左端検出用
Type = A
Ctrl = 0
Anim = 0
Velset = -10,0
Movetype = I
Physics = N
Sprpriority = 1

[State -2,消失]
type=DestroySelf
triggerall=isHelper
trigger1=roundstate!=[1,2]

[State 33333]
type = assertspecial
trigger1 = 1
flag = invisible

[State 33333]
type = NotHitBy
value = SCA
trigger1 = 1

[State 33333,間違いで本体が来たら立ちへ移行]
type=selfstate
trigger1=!ishelper
value=0

[State 33333]
type = Projectile
Trigger1 = time = 0
velocity = -10,0
projID = 3333
projhits = 9999
projpriority = 9999
projanim = 0
offset = 0,0
projstagebound = 0
Projedgebound = 100000
projremove = 0
Projremovetime = -1
supermovetime = 9999
pausemovetime = 9999

[State 33333]
type = velset
Trigger1 = Root,NumProjID(3333) = 0
Trigger1 = time > 0
x = 0
y = 0

;///// var(0) 時止め可能判定 /////
[State 33333]
type = VarSet
trigger1=1
var(0) = 0

[State 33333]
type = VarSet
;パートナーがいないとき
trigger1=!numpartner
;パートナーがいて、敵が１体いるとき
trigger2=numpartner
trigger2=numenemy=1
;パートナーが投げてない
trigger2=!(partner,fvar(39)=5&&partner,authorname="warusaki3"&&(partner,stateno=[900,901]))
;パートナーが投げてない(承太郎)
trigger2=!(partner,authorname="warusaki3"&&partner,name="Jotaro Kujo"&&(partner,stateno=1351||partner,stateno=3301||partner,stateno=3351))
;パートナーが投げてない(ＤＩＯ)
trigger2=!(partner,authorname="warusaki3"&&partner,name="dio"&&partner,stateno=1401)
trigger2=!(partner,authorname="warusaki3"&&partner,name="dio"&&((partner,stateno=[3301,3302])||(partner,stateno=[3351,3352])||partner,stateno=3501||partner,stateno=3551||(partner,stateno=[3601,3602])||(partner,stateno=[3651,3653])))
;パートナーが投げてない(ＦＤＩＯ)
trigger2=!(partner,authorname="warusaki3"&&partner,name="final dio"&&(partner,stateno=3501||partner,stateno=3551))
;パートナーが投げてない(影ＤＩＯ)
trigger2=!(partner,authorname="warusaki3"&&partner,name="shadow dio"&&(partner,stateno=1101||partner,stateno=1151||partner,stateno=3001||partner,stateno=3251||partner,stateno=3451||partner,stateno=3501))
;パートナーが投げられてない
trigger2=!(partner,fvar(39)=5&&partner,authorname="warusaki3"&&gametime=partner,var(30))
;敵０が投げてない
trigger2=!(enemy(0),fvar(39)=5&&enemy(0),authorname="warusaki3"&&(enemy(0),stateno=[900,901]))
;敵０が投げてない(承太郎)
trigger2=!(enemy(0),authorname="warusaki3"&&enemy(0),name="Jotaro Kujo"&&(enemy(0),stateno=1351||enemy(0),stateno=3301||enemy(0),stateno=3351))
;敵０が投げてない(ＤＩＯ)
trigger2=!(enemy(0),authorname="warusaki3"&&enemy(0),name="dio"&&enemy(0),stateno=1401)
trigger2=!(enemy(0),authorname="warusaki3"&&enemy(0),name="dio"&&((enemy(0),stateno=[3301,3302])||(enemy(0),stateno=[3351,3352])||enemy(0),stateno=3501||enemy(0),stateno=3551||(enemy(0),stateno=[3601,3602])||(enemy(0),stateno=[3651,3653])))
;敵０が投げてない(ＦＤＩＯ)
trigger2=!(enemy(0),authorname="warusaki3"&&enemy(0),name="final dio"&&(enemy(0),stateno=3501||enemy(0),stateno=3551))
;敵０が投げてない(影ＤＩＯ)
trigger2=!(enemy(0),authorname="warusaki3"&&enemy(0),name="shadow dio"&&(enemy(0),stateno=1101||enemy(0),stateno=1151||enemy(0),stateno=3001||enemy(0),stateno=3251||enemy(0),stateno=3451||enemy(0),stateno=3501))
;敵０が投げられてない
trigger2=!(enemy(0),fvar(39)=5&&enemy(0),authorname="warusaki3"&&gametime=enemy(0),var(30))
;パートナーがいて、敵が２体いるとき
trigger3=numpartner
trigger3=numenemy=2
;パートナーが投げてない
trigger3=!(partner,fvar(39)=5&&partner,authorname="warusaki3"&&(partner,stateno=[900,901]))
;パートナーが投げてない(承太郎)
trigger3=!(partner,authorname="warusaki3"&&partner,name="Jotaro Kujo"&&(partner,stateno=1351||partner,stateno=3301||partner,stateno=3351))
;パートナーが投げてない(ＤＩＯ)
trigger3=!(partner,authorname="warusaki3"&&partner,name="dio"&&(partner,stateno=1401||(partner,stateno=[3301,3302])||(partner,stateno=[3351,3352])||partner,stateno=3501||partner,stateno=3551||(partner,stateno=[3601,3602])||(partner,stateno=[3651,3653])))
trigger3=!(partner,authorname="warusaki3"&&partner,name="dio"&&(partner,stateno=1401||(partner,stateno=[3301,3302])||(partner,stateno=[3351,3352])||partner,stateno=3501||partner,stateno=3551||(partner,stateno=[3601,3602])||(partner,stateno=[3651,3653])))
;パートナーが投げてない(ＦＤＩＯ)
trigger3=!(partner,authorname="warusaki3"&&partner,name="final dio"&&(partner,stateno=3501||partner,stateno=3551))
;パートナーが投げてない(影ＤＩＯ)
trigger3=!(partner,authorname="warusaki3"&&partner,name="shadow dio"&&(partner,stateno=1101||partner,stateno=1151||partner,stateno=3001||partner,stateno=3251||partner,stateno=3451||partner,stateno=3501))
;パートナーが投げられてない
trigger3=!(partner,fvar(39)=5&&partner,authorname="warusaki3"&&gametime=partner,var(30))
;敵０が投げてない
trigger3=!(enemy(0),fvar(39)=5&&enemy(0),authorname="warusaki3"&&(enemy(0),stateno=[900,901]))
;敵０が投げてない(承太郎)
trigger3=!(enemy(0),authorname="warusaki3"&&enemy(0),name="Jotaro Kujo"&&(enemy(0),stateno=1351||enemy(0),stateno=3301||enemy(0),stateno=3351))
;敵０が投げてない(ＤＩＯ)
trigger3=!(enemy(0),authorname="warusaki3"&&enemy(0),name="dio"&&enemy(0),stateno=1401)
trigger3=!(enemy(0),authorname="warusaki3"&&enemy(0),name="dio"&&((enemy(0),stateno=[3301,3302])||(enemy(0),stateno=[3351,3352])||enemy(0),stateno=3501||enemy(0),stateno=3551||(enemy(0),stateno=[3601,3602])||(enemy(0),stateno=[3651,3653])))
;敵０が投げてない(ＦＤＩＯ)
trigger3=!(enemy(0),authorname="warusaki3"&&enemy(0),name="final dio"&&(enemy(0),stateno=3501||enemy(0),stateno=3551))
;敵０が投げてない(影ＤＩＯ)
trigger3=!(enemy(0),authorname="warusaki3"&&enemy(0),name="shadow dio"&&(enemy(0),stateno=1101||enemy(0),stateno=1151||enemy(0),stateno=3001||enemy(0),stateno=3251||enemy(0),stateno=3451||enemy(0),stateno=3501))
;敵０が投げられてない
trigger3=!(enemy(0),fvar(39)=5&&enemy(0),authorname="warusaki3"&&gametime=enemy(0),var(30))
;敵１が投げてない
trigger3=!(enemy(1),fvar(39)=5&&enemy(1),authorname="warusaki3"&&(enemy(1),stateno=[900,901]))
;敵１が投げてない(承太郎)
trigger3=!(enemy(1),authorname="warusaki3"&&enemy(1),name="Jotaro Kujo"&&(enemy(1),stateno=1351||enemy(1),stateno=3301||enemy(1),stateno=3351))
;敵１が投げてない(ＤＩＯ)
trigger3=!(enemy(1),authorname="warusaki3"&&enemy(1),name="dio"&&enemy(1),stateno=1401)
trigger3=!(enemy(1),authorname="warusaki3"&&enemy(1),name="dio"&&((enemy(1),stateno=[3301,3302])||(enemy(1),stateno=[3351,3352])||enemy(1),stateno=3501||enemy(1),stateno=3551||(enemy(1),stateno=[3601,3602])||(enemy(1),stateno=[3651,3653])))
;敵１が投げてない(ＦＤＩＯ)
trigger3=!(enemy(1),authorname="warusaki3"&&enemy(1),name="final dio"&&(enemy(1),stateno=3501||enemy(1),stateno=3551))
;敵１が投げてない(影ＤＩＯ)
trigger3=!(enemy(1),authorname="warusaki3"&&enemy(1),name="shadow dio"&&(enemy(1),stateno=1101||enemy(1),stateno=1151||enemy(1),stateno=3001||enemy(1),stateno=3251||enemy(1),stateno=3451||enemy(1),stateno=3501))
;敵１が投げられてない
trigger3=!(enemy(1),fvar(39)=5&&enemy(1),authorname="warusaki3"&&gametime=enemy(1),var(30))
var(0) = 1

;///// var(1) 固定乱数 /////
[State 33333]
type = VarSet
triggerall= ishelper
trigger1= 1
var(1)= random
ignorehitpause= 1

;///// var(10) ガード不可フラグ /////
;リセット
[State 33333]
Type = VarSet
triggerall= ishelper
triggerall= roundstate=2
trigger1= 1
var(10)= 0
IgnoreHitPause= 1

;相手が立ガ不可(下段)攻撃中
[State 33333]
Type = VarSet
triggerall= ishelper
triggerall= roundstate=2
trigger1= enemynear,movetype=A
trigger1= enemynear,stateno=var(11)
var(10)= 2**0
IgnoreHitPause= 1

;相手が屈ガ不可(中段)攻撃中
[State 33333]
Type = VarSet
triggerall= ishelper
triggerall= roundstate=2
trigger1= enemynear,movetype=A
trigger1= enemynear,stateno=var(12)
var(10)= 2**1
IgnoreHitPause= 1

;相手が空ガ不可攻撃中
[State 33333]
Type = VarSet
triggerall= ishelper
triggerall= roundstate=2
trigger1= enemynear,movetype=A
trigger1= enemynear,stateno=var(13)
var(10)= 2**2
IgnoreHitPause= 1

;相手が認識不可攻撃中
[State 33333]
Type = VarSet
triggerall= ishelper
triggerall= roundstate=2
trigger1= enemynear,movetype=A
trigger1= enemynear,stateno=var(14)
var(10)= 2**3
IgnoreHitPause= 1

;相手が詳細不明攻撃中(対応は認識不可攻撃と同じ)
[State 33333]
Type = VarSet
triggerall= ishelper
triggerall= roundstate=2
trigger1= enemynear,movetype=A
trigger1= enemynear,stateno=var(15) || enemynear,stateno=var(16) || enemynear,stateno=var(17)
var(10)= 2**3
IgnoreHitPause= 1

;///// var(11) 立ちガード不可攻撃(下段) /////
[State 33333]
Type = VarSet
triggerall= ishelper
triggerall= roundstate=2
triggerall= root,stateno!=[120,155]
triggerall= root,movetype=H && root,time=1
triggerall= enemynear,statetype!=C
trigger1= root,prevstateno=130
trigger2= root,prevstateno=[150,151]
var(11)= enemynear,stateno
IgnoreHitPause= 1

;///// var(12) 屈みガード不可攻撃(中段) /////
[State 33333]
Type = VarSet
triggerall= ishelper
triggerall= roundstate=2
triggerall= root,stateno!=[120,155]
triggerall= root,movetype=H && root,time=1
triggerall= enemynear,statetype!=A
trigger1= root,prevstateno=131
trigger2= root,prevstateno=[152,153]
var(12)= enemynear,stateno
ignorehitpause= 1

;///// var(13) 空中ガード不可攻撃 /////
[State 33333]
Type = VarSet
triggerall= ishelper
triggerall= RoundState=2
triggerall= root,stateno!=[120,155]
triggerall= root,movetype=H && root,time=1
trigger1= root,prevstateno=132
trigger2= root,prevstateno=[154,155]
var(13)= enemynear,stateno
IgnoreHitPause= 1

;///// var(14) 認識不可攻撃 /////
[State 33333]
Type = VarSet
triggerall= ishelper
triggerall= RoundState=2
triggerall= root,stateno!=[120,155]
triggerall= root,prevstateno!=[120,155]
triggerall= root,prevstateno<200
triggerall= root,movetype=H && root,time=1
trigger1= enemynear,movetype=A
trigger1= root,p2dist x>enemy,Const(size.attack.dist)
var(14)= enemynear,stateno
IgnoreHitPause= 1

;///// var(15) 詳細不明攻撃 /////
[State 33333]
Type = VarSet
triggerall= ishelper
triggerall= RoundState=2
triggerall= root,stateno!=[120,155]
triggerall= root,prevstateno!=[120,155]
triggerall= root,prevstateno<200
triggerall= root,movetype=H && root,time=1
trigger1= enemynear,movetype=A
trigger1= enemynear,stateno != var(11)
trigger1= enemynear,stateno != var(12)
trigger1= enemynear,stateno != var(13)
trigger1= enemynear,stateno != var(14)
trigger1= enemynear,stateno != var(15)
trigger1= enemynear,stateno != var(16)
trigger1= enemynear,stateno != var(17)
var(15)= enemynear,stateno
IgnoreHitPause= 1

;///// var(16) 詳細不明攻撃 /////
[State 33333]
Type = VarSet
triggerall= ishelper
triggerall= RoundState=2
triggerall= root,stateno!=[120,155]
triggerall= root,prevstateno!=[120,155]
triggerall= root,prevstateno<200
triggerall= root,movetype=H && root,time=1
trigger1= enemynear,movetype=A
trigger1= enemynear,stateno != var(11)
trigger1= enemynear,stateno != var(12)
trigger1= enemynear,stateno != var(13)
trigger1= enemynear,stateno != var(14)
trigger1= enemynear,stateno != var(15)
trigger1= enemynear,stateno != var(16)
trigger1= enemynear,stateno != var(17)
var(16)= enemynear,stateno
IgnoreHitPause= 1

;///// var(17) 詳細不明攻撃 /////
[State 33333]
Type = VarSet
triggerall= ishelper
triggerall= RoundState=2
triggerall= root,stateno!=[120,155]
triggerall= root,prevstateno!=[120,155]
triggerall= root,prevstateno<200
triggerall= root,movetype=H && root,time=1
trigger1= enemynear,movetype=A
trigger1= enemynear,stateno != var(11)
trigger1= enemynear,stateno != var(12)
trigger1= enemynear,stateno != var(13)
trigger1= enemynear,stateno != var(14)
trigger1= enemynear,stateno != var(15)
trigger1= enemynear,stateno != var(16)
trigger1= enemynear,stateno != var(17)
var(17)= enemynear,stateno
IgnoreHitPause= 1

;///// var(18) ガー不疑惑 /////
[State 33333]
Type = VarSet
triggerall= ishelper
triggerall= RoundState=2
triggerall= root,stateno!=[120,155]
triggerall= root,movetype=H && root,time=1
trigger1= enemynear,movetype=A
trigger1= enemynear,stateno >= 1000
trigger1= root,prevstateno=[120,155]
var(18)= enemynear,stateno
IgnoreHitPause= 1

;///// var(20) スカフラグ /////
;リセット
[State 33333]
Type = VarSet
triggerall= ishelper
triggerall= roundstate=2
trigger1= enemynear,stateno!=var(20)
trigger2= var(22)>=180
trigger3= root,stateno=var(21) && root,movetype=A
var(20)= 0
IgnoreHitPause= 1

;(通常)攻撃をスカしたら
[State 33333]
Type = VarSet
triggerall= ishelper
triggerall= roundstate=2
triggerall= root,animtime=-1 || root,ctrl
triggerall= !root,var(41)
trigger1= root,stateno=[200,699]
trigger1= root,stateno!=var(21)
var(20)= enemynear,stateno
IgnoreHitPause= 1

;///// var(21) ヒット攻撃ステート /////
;リセット
[State 33333]
Type = VarSet
triggerall= ishelper
triggerall= roundstate=2
trigger1= root,movetype!=A
var(21)= 0
IgnoreHitPause= 1

[State 33333]
Type = VarSet
triggerall= ishelper
triggerall= roundstate=2
triggerall= root,movetype=A
trigger1= root,var(41)
var(21)= root,stateno
IgnoreHitPause= 1

;///// var(22) スカタイマー(念の為) /////
;リセット
[State 33333]
Type = VarSet
triggerall= ishelper
triggerall= roundstate=2
trigger1= !var(20)
var(22)= 0
IgnoreHitPause= 1

[State 33333]
Type = VarAdd
triggerall= ishelper
triggerall= roundstate=2
trigger1= var(20)
var(22)= 1
IgnoreHitPause= 1

;///// var(23) チェックメイトコンボフラグ /////
;リセット
[State 33333]
Type = VarSet
triggerall= ishelper
trigger1= roundstate != 2
var(23)= 0
IgnoreHitPause= 1

;発動
[State 33333]
Type = VarAdd
triggerall= ishelper
triggerall= roundstate = 2
trigger1= root,stateno = 3050 && root,time = 1
var(23)= 1
IgnoreHitPause= 1

;リセット
[State 33333]
Type = VarSet
triggerall= ishelper
triggerall= root,stateno != 3050
;ナイフ消滅
trigger1 = !numhelper(7500)
trigger1 = !var(27) || root,p2statetype = L
;避けられた
trigger2 = numhelper(7500)
trigger2 = helper(7500),p2dist x < -50
trigger2 = root,p2movetype != H
;ガードされた
trigger3 = root,p2stateno = [120,155]
;ジャンプした
trigger4 = root,statetype = A
;死ねィ！した
trigger5 = root,stateno = 1250
;ワープした
trigger6 = root,stateno = 1200
;落下が始まった
trigger7 = root,statetype != A
trigger7 = enemynear,vel y > 0
var(23)= 0
IgnoreHitPause= 1

;///// var(24) ムダムダカウント /////
;リセット
[State 33333]
Type = VarSet
triggerall= ishelper
triggerall= roundstate=2
trigger1= enemynear,movetype != H
trigger1= enemynear,stateno != [120,155]
trigger1= enemynear,ctrl || enemynear,anim < 200 || enemynear,stateno < 200
trigger2= root,movetype = H
trigger3= roundstate != 2
var(24)= 0
IgnoreHitPause= 1

[State 33333]
Type = VarAdd
triggerall= ishelper
triggerall= roundstate=2
trigger1= root,stateno = 1000
trigger1= root,time = 1
var(24)= 1
IgnoreHitPause= 1

;///// var(30) ガードフラグ /////
;立ガード
[State 33333]
type = StateTypeSet
triggerall= !(var(10)&2**0) || enemynear,statetype = A
trigger1 = root,statetype = C && enemynear,hitdefattr = A,AA
trigger2 = root,statetype = C && enemynear,hitdefattr = S,AA && enemynear,time >= 13
trigger3 = root,statetype = C && (enemynear,statetype = A)
trigger3 = enemy,numproj || !(enemy,hitdefattr = SCA,AA)
var(30)= 0
IgnoreHitPause= 1

;屈ガード
[State 33333]
Type = VarSet
triggerall= !(var(10)&2**1) || enemynear,statetype = C
trigger1 = root,statetype = S && (enemynear,hitdefattr = C,AA || enemynear,hitdefattr = SCA,AP)
trigger2 = root,statetype = S && enemynear,hitdefattr = S,AA && enemynear,time < 13
trigger3 = root,statetype = S && (enemynear,statetype = C || enemynear,statetype = S)
trigger3 = enemy,numproj || !(enemy,hitdefattr = SCA,AA)
var(30)= 1
IgnoreHitPause= 1

;立ガード
[State 33333]
type=statetypeset
trigger1 = root,statetype = C && (enemynear,statetype != C)
trigger1 = var(10)&2**1
var(30)= 0
IgnoreHitPause= 1

;屈ガード
[State 33333]
type=statetypeset
trigger1 = root,statetype = S && (enemynear,statetype != A)
trigger1 = var(10)&2**0
var(30)= 1
IgnoreHitPause= 1

;///// var(35) ガード無視 /////
;リセット
[State 33333]
Type = VarSet
triggerall = ishelper
trigger1 = roundstate != 2
trigger2 = p2movetype != A && !root,inguarddist && !enemy,numproj
trigger3 = enemynear,p2dist x < 0
var(35)= 0
IgnoreHitPause= 1

[State 33333]
Type = VarSet
triggerall = ishelper
trigger1 = numhelper(22222)
trigger1 = numhelper(55555)
trigger1 = helper(22222),var(0) <= 0
trigger1 = !(helper(55555),var(58)&2**10) || !(helper(55555),var(58)&2**21)
trigger1 = p2movetype = A || root,inguarddist || enemy,numproj || (helper(55555),var(58)&2**10)
trigger1 = root,ctrl || root,movetype = I
trigger1 = !enemy,numproj || !root,inguarddist || root,statetype = A || enemynear,p2dist x < 0
trigger1 = (p2stateno != [200,699]) || enemynear,p2dist x < 0
trigger1 = !(enemynear,hitdefattr = SCA,AA,AT,AP) || enemynear,p2dist x < 0
trigger1 = p2stateno < 3000 || p2movetype != A || !root,inguarddist
trigger1 = root,var(59) != 3
trigger1 = enemynear,stateno != var(36)
trigger1 = enemynear,stateno != fvar(2)
trigger1 = enemynear,stateno != fvar(3)
trigger1 = enemynear,stateno != fvar(4)
trigger2 = root,time >= 300 || enemynear,time >= 300
trigger3 = (root,life*1.0/root,lifemax) < (enemynear,life*1.0/enemynear,lifemax)
trigger3 = fvar(37) >= 90-(p2life-root,life>=333)*10-(p2life-root,life>=500)*10
var(35)= 1
IgnoreHitPause= 1

;///// var(36) ガード無視裏目 /////
;リセット
[State 33333]
Type = VarSet
triggerall = ishelper
trigger1 = roundstate != 2
var(36)= 0
IgnoreHitPause= 1

[State 33333]
Type = VarSet;VarAdd
triggerall = ishelper
trigger1 = var(35)
trigger1 = root,movetype = H
trigger1 = root,time = 1
trigger1 = root,stateno != [120,155]
trigger1 = root,prevstateno != [120,155]
trigger1 = root,prevstateno != [5000,5999]
trigger1 = fvar(39)!=2
var(36)= enemynear,stateno;1
IgnoreHitPause= 1

;///// var(37) 起き上がり認識(相手) /////
;リセット
[State 33333]
Type = VarSet
triggerall = ishelper
trigger1 = roundstate != 2
var(37)= 0
IgnoreHitPause= 1

[State 33333]
Type = VarAdd
triggerall = ishelper
triggerall = p2stateno != 5120
trigger1 = var(37) > 0
var(37)= -1
IgnoreHitPause= 1

[State 33333]
Type = VarSet
triggerall = ishelper
trigger1 = p2stateno = 5120
var(37)= 12
IgnoreHitPause= 1

;///// var(55) 空中受身警戒レベル /////
;リセット
[State 33333]
Type = VarSet
triggerall = ishelper
trigger1 = roundstate != 2
var(55)= 0
IgnoreHitPause= 1

;発動
[State 33333]
Type = VarAdd
triggerall = ishelper
triggerall = roundstate = 2
triggerall = root,time = 1
trigger1 = root,stateno = 5210
var(55)= 1
IgnoreHitPause= 1

;モーション終了
[State 33333]
Type = VarAdd
triggerall = ishelper
triggerall = roundstate = 2
triggerall = root,time = 1
trigger1 = root,stateno = 52
trigger1 = root,prevstateno != 5040
var(55)= -1
IgnoreHitPause= 1

;///// var(56) ラン警戒レベル /////
;リセット
[State 33333]
Type = VarSet
triggerall = ishelper
trigger1 = roundstate != 2
var(56)= 0
IgnoreHitPause= 1

;発動
[State 33333]
Type = VarAdd
triggerall = ishelper
triggerall = roundstate = 2
triggerall = root,time = 1
trigger1 = root,stateno = 101
var(56)= 1
IgnoreHitPause= 1

;モーション終了
[State 33333]
Type = VarAdd
triggerall = ishelper
triggerall = roundstate = 2
triggerall = root,stateno = 101
trigger1 = !root,var(49) && root,AnimElemTime(7) = 1
trigger2 = root,var(49) && root,AnimElemTime(10) = 1
var(56)= -1
IgnoreHitPause= 1

;キャンセル
[State 33333]
Type = VarAdd
triggerall = ishelper
triggerall = roundstate = 2
triggerall = root,movetype = A || (root,stateno = [40,49])
triggerall = root,time = 1
trigger1 = root,prevstateno = 101
var(56)= -1
IgnoreHitPause= 1

;///// var(57) スティンギーアイズ警戒レベル /////
;リセット
[State 33333]
Type = VarSet
triggerall = ishelper
trigger1 = roundstate != 2
var(57)= 0
IgnoreHitPause= 1

;発動
[State 33333]
Type = VarAdd
triggerall = ishelper
triggerall = roundstate = 2
triggerall = root,time = 1
trigger1 = root,stateno = 1300
var(57)= 1
IgnoreHitPause= 1

;モーション終了
[State 33333]
Type = VarAdd
triggerall = ishelper
triggerall = roundstate = 2
triggerall = root,animtime = -1
trigger1 = root,stateno = 1300
var(57)= -1
IgnoreHitPause= 1

;キャンセル
[State 33333]
Type = VarAdd
triggerall = ishelper
triggerall = roundstate = 2
triggerall = root,movetype = A
triggerall = root,time = 1
trigger1 = root,prevstateno = 1300
var(57)= -1
IgnoreHitPause= 1

;///// var(58) ワープ警戒レベル /////
;リセット
[State 33333]
Type = VarSet
triggerall = ishelper
trigger1 = roundstate != 2
var(58)= 0
IgnoreHitPause= 1

;発動
[State 33333]
Type = VarAdd
triggerall = ishelper
triggerall = roundstate = 2
triggerall = root,time = 1
trigger1 = root,stateno = 1200
var(58)= 1
IgnoreHitPause= 1

;モーション終了
[State 33333]
Type = VarAdd
triggerall = ishelper
triggerall = roundstate = 2
triggerall = root,animtime = -1
trigger1 = root,stateno = 1200
var(58)= -1
IgnoreHitPause= 1

;キャンセル
[State 33333]
Type = VarAdd
triggerall = ishelper
triggerall = roundstate = 2
triggerall = root,movetype = A
triggerall = root,time = 1
trigger1 = root,prevstateno = 1200
var(58)= -1
IgnoreHitPause= 1

;///// var(59) 挑発警戒レベル /////
;リセット
[State 33333]
Type = VarSet
triggerall = ishelper
trigger1 = roundstate != 2
var(59)= 0
IgnoreHitPause= 1

;発動
[State 33333]
Type = VarAdd
triggerall = ishelper
triggerall = roundstate = 2
triggerall = root,time = 1
trigger1 = root,stateno = 195
var(59)= 1
IgnoreHitPause= 1

;モーション終了
[State 33333]
Type = VarAdd
triggerall = ishelper
triggerall = roundstate = 2
triggerall = root,animtime = -1
trigger1 = root,stateno = 195
var(59)= -1
IgnoreHitPause= 1

;キャンセル
[State 33333]
Type = VarAdd
triggerall = ishelper
triggerall = roundstate = 2
triggerall = root,movetype = A
triggerall = root,time = 1
trigger1 = root,prevstateno = 195
var(59)= -1
IgnoreHitPause= 1

;///// fvar(0) 飛び道具ヒットカウント /////
;リセット
[State 33333]
Type = VarSet
triggerall = ishelper
trigger1 = roundstate != 2
fvar(0)= 0
IgnoreHitPause= 1

[State 33333]
Type = VarAdd
triggerall = ishelper
trigger1 = numhelper(55555)
trigger1 = enemy,numproj || helper(55555),var(58)&2**20
trigger1 = root,movetype = H
trigger1 = root,time = 1
trigger1 = root,prevstateno != [150,155]
trigger1 = root,prevstateno != [5000,5999]
trigger2 = enemy,projcontacttime(0) = 1
trigger2 = root,movetype = H
trigger2 = root,prevstateno != [150,155]
trigger2 = root,prevstateno != [5000,5999]
fvar(0)= 1
IgnoreHitPause= 1

;///// fvar(2) ガード無視裏目(補助) /////
;リセット
[State 33333]
Type = VarSet
triggerall = ishelper
trigger1 = roundstate != 2
fvar(2)= 0
IgnoreHitPause= 1

[State 33333]
Type = VarSet;VarAdd
triggerall = ishelper
trigger1 = !fvar(2)
trigger1 = var(35)
trigger1 = root,movetype = H
trigger1 = root,time = 1
trigger1 = root,stateno != [120,155]
trigger1 = root,prevstateno != [120,155]
trigger1 = root,prevstateno != [5000,5999]
trigger1 = fvar(39)!=2
fvar(2)= enemynear,stateno;1
IgnoreHitPause= 1

;///// fvar(3) ガード無視裏目(補助) /////
;リセット
[State 33333]
Type = VarSet
triggerall = ishelper
trigger1 = roundstate != 2
fvar(3)= 0
IgnoreHitPause= 1

[State 33333]
Type = VarSet;VarAdd
triggerall = ishelper
trigger1 = !fvar(3)
trigger1 = enemynear,stateno!=fvar(2)
trigger1 = var(35)
trigger1 = root,movetype = H
trigger1 = root,time = 1
trigger1 = root,stateno != [120,155]
trigger1 = root,prevstateno != [120,155]
trigger1 = root,prevstateno != [5000,5999]
trigger1 = fvar(39)!=2
fvar(3)= enemynear,stateno;1
IgnoreHitPause= 1

;///// fvar(4) ガード無視裏目(補助) /////
;リセット
[State 33333]
Type = VarSet
triggerall = ishelper
trigger1 = roundstate != 2
fvar(4)= 0
IgnoreHitPause= 1

[State 33333]
Type = VarSet;VarAdd
triggerall = ishelper
trigger1 = !fvar(4)
trigger1 = enemynear,stateno!=fvar(2)
trigger1 = enemynear,stateno!=fvar(3)
trigger1 = var(35)
trigger1 = root,movetype = H
trigger1 = root,time = 1
trigger1 = root,stateno != [120,155]
trigger1 = root,prevstateno != [120,155]
trigger1 = root,prevstateno != [5000,5999]
trigger1 = fvar(39)!=2
fvar(4)= enemynear,stateno;1
IgnoreHitPause= 1

;///// fvar(5) 手出し厳禁(スカ) /////
[State 33333]
Type = VarSet
triggerall= ishelper
trigger1= 1
fvar(5)= 0
IgnoreHitPause= 1

[State 33333]
Type = VarSet
triggerall= ishelper
trigger1= enemynear,stateno = fvar(7) && fvar(7)>0
fvar(5)= 1
IgnoreHitPause= 1

;///// fvar(6) ブラックリスト格納用 /////
;発動
[State 33333]
Type = VarSet
triggerall = ishelper
triggerall = !fvar(6)
triggerall = roundstate = 2
trigger1 = !enemynear,ctrl && enemynear,stateno>=1000
trigger1 = root,movetype = A && root,statetype != A
trigger1 = numhelper(10000)
trigger1 = root,hitdefattr = SCA,AA,AT,AP || helper(10000),hitdefattr = SCA,AA,AT,AP
trigger1 = fvar(7) := enemynear,stateno
fvar(6)= root,stateno
IgnoreHitPause= 1
;終了
[State 33333]
Type = VarSet
triggerall = ishelper
triggerall = roundstate = 2
trigger1 = root,stateno = fvar(6)
trigger1 = numhelper(10000)
trigger1 = root,var(41) || helper(10000),var(41) || enemynear,movetype = H
trigger2 = root,prevstateno = fvar(6)
trigger2 = root,movetype != I && root,time = 1
fvar(6)= 0
IgnoreHitPause= 1

;///// fvar(7) 発動時点での相手ステート /////
[State 33333]
Type = VarSet
triggerall= ishelper
trigger1= !fvar(6)
fvar(7)= 0
IgnoreHitPause= 1

;///// fvar(8) 手出し厳禁(相手ガード) /////
;発動
[State 33333]
Type = VarSet
triggerall = ishelper
triggerall = roundstate = 2
trigger1 = enemynear,stateno = [120,155]
trigger1 = (root,movetype = A || root,stateno = 100) && root,time = 1
fvar(8)= root,stateno
IgnoreHitPause= 1
;モーション終了
[State 33333]
Type = VarSet
triggerall = ishelper
triggerall = fvar(8)
triggerall = roundstate = 2
triggerall = !(root,movetype = A || root,stateno = 100)
triggerall = root,movetype != H
triggerall = root,time = 1
trigger1 = root,prevstateno = fvar(8)
fvar(8)= 0
IgnoreHitPause= 1

;///// fvar(9) 手出し厳禁(相手ガード)フラグ /////
;リセット
[State 33333]
Type = VarSet
triggerall = ishelper
triggerall = roundstate != 2
trigger1 = 1
fvar(9)= 0
IgnoreHitPause= 1
;セット
[State 33333]
Type = VarSet
triggerall = ishelper
triggerall = !fvar(9)
triggerall = fvar(8)
triggerall = roundstate = 2
triggerall = root,time = 1
trigger1 = root,prevstateno = fvar(8)
trigger1 = root,movetype = H
fvar(9)= 1
IgnoreHitPause= 1

;///// fvar(10) 手出し厳禁(通常) /////
[State 33333]
Type = VarSet
triggerall= ishelper
trigger1= 1
fvar(10)= 0
IgnoreHitPause= 1

[State 33333]
Type = VarSet
triggerall= ishelper
trigger1= enemynear,stateno = fvar(13) && fvar(13)>0
trigger2= enemynear,stateno = fvar(14) && fvar(14)>0
trigger3= enemynear,stateno = fvar(15) && fvar(15)>0
trigger4= enemynear,stateno = fvar(16) && fvar(16)>0
trigger5= enemynear,stateno = fvar(17) && fvar(17)>0
trigger6= enemynear,stateno = fvar(18) && fvar(18)>0
trigger7= enemynear,stateno = fvar(19) && fvar(19)>0
fvar(10)= 1
IgnoreHitPause= 1

;///// fvar(11) ブラックリスト格納用 /////
;発動
[State 33333]
Type = VarSet
triggerall = ishelper
triggerall = !fvar(11)
triggerall = roundstate = 2
triggerall = numhelper(55555)
trigger1 = !enemynear,ctrl && enemynear,stateno>=200 && enemynear,anim>=200
trigger1 = root,movetype = A && root,time = 1
trigger1 = root,stateno < 1000
trigger1 = fvar(12) := enemynear,stateno
fvar(11)= root,stateno
IgnoreHitPause= 1
;モーション終了
[State 33333]
Type = VarSet
triggerall = ishelper
triggerall = fvar(11)
triggerall = roundstate = 2
triggerall = root,movetype != H
triggerall = root,time = 1
trigger1 = root,prevstateno = fvar(11)
fvar(11)= 0
IgnoreHitPause= 1

;///// fvar(12) 発動時点での相手ステート /////
[State 33333]
Type = VarSet
triggerall= ishelper
trigger1= !fvar(11)
fvar(12)= 0
IgnoreHitPause= 1

;///// fvar(13)~fvar(19) ブラックリスト /////
[State 33333]
Type = VarSet
triggerall = ishelper
triggerall = fvar(11)
triggerall = fvar(13)
triggerall = fvar(14)
triggerall = fvar(15)
triggerall = fvar(16)
triggerall = fvar(17)
triggerall = fvar(18)
triggerall = fvar(12) != fvar(13)
triggerall = fvar(12) != fvar(14)
triggerall = fvar(12) != fvar(15)
triggerall = fvar(12) != fvar(16)
triggerall = fvar(12) != fvar(17)
triggerall = fvar(12) != fvar(18)
triggerall = !fvar(19)
triggerall = roundstate = 2
triggerall = root,time = 1
trigger1 = root,prevstateno = fvar(11)
trigger1 = root,movetype = H
fvar(19)= fvar(12)
IgnoreHitPause= 1
[State 33333]
Type = VarSet
triggerall = ishelper
triggerall = fvar(11)
triggerall = fvar(13)
triggerall = fvar(14)
triggerall = fvar(15)
triggerall = fvar(16)
triggerall = fvar(17)
triggerall = fvar(12) != fvar(13)
triggerall = fvar(12) != fvar(14)
triggerall = fvar(12) != fvar(15)
triggerall = fvar(12) != fvar(16)
triggerall = fvar(12) != fvar(17)
triggerall = !fvar(18)
triggerall = roundstate = 2
triggerall = root,time = 1
trigger1 = root,prevstateno = fvar(11)
trigger1 = root,movetype = H
fvar(18)= fvar(12)
IgnoreHitPause= 1
[State 33333]
Type = VarSet
triggerall = ishelper
triggerall = fvar(11)
triggerall = fvar(13)
triggerall = fvar(14)
triggerall = fvar(15)
triggerall = fvar(16)
triggerall = fvar(12) != fvar(13)
triggerall = fvar(12) != fvar(14)
triggerall = fvar(12) != fvar(15)
triggerall = fvar(12) != fvar(16)
triggerall = !fvar(17)
triggerall = roundstate = 2
triggerall = root,time = 1
trigger1 = root,prevstateno = fvar(11)
trigger1 = root,movetype = H
fvar(17)= fvar(12)
IgnoreHitPause= 1
[State 33333]
Type = VarSet
triggerall = ishelper
triggerall = fvar(11)
triggerall = fvar(13)
triggerall = fvar(14)
triggerall = fvar(15)
triggerall = fvar(12) != fvar(13)
triggerall = fvar(12) != fvar(14)
triggerall = fvar(12) != fvar(15)
triggerall = !fvar(16)
triggerall = roundstate = 2
triggerall = root,time = 1
trigger1 = root,prevstateno = fvar(11)
trigger1 = root,movetype = H
fvar(16)= fvar(12)
IgnoreHitPause= 1
[State 33333]
Type = VarSet
triggerall = ishelper
triggerall = fvar(11)
triggerall = fvar(13)
triggerall = fvar(14)
triggerall = fvar(12) != fvar(13)
triggerall = fvar(12) != fvar(14)
triggerall = !fvar(15)
triggerall = roundstate = 2
triggerall = root,time = 1
trigger1 = root,prevstateno = fvar(11)
trigger1 = root,movetype = H
fvar(15)= fvar(12)
IgnoreHitPause= 1
[State 33333]
Type = VarSet
triggerall = ishelper
triggerall = fvar(11)
triggerall = fvar(13)
triggerall = fvar(12) != fvar(13)
triggerall = !fvar(14)
triggerall = roundstate = 2
triggerall = root,time = 1
trigger1 = root,prevstateno = fvar(11)
trigger1 = root,movetype = H
fvar(14)= fvar(12)
IgnoreHitPause= 1
[State 33333]
Type = VarSet
triggerall = ishelper
triggerall = fvar(11)
triggerall = !fvar(13)
triggerall = roundstate = 2
triggerall = root,time = 1
trigger1 = root,prevstateno = fvar(11)
trigger1 = root,movetype = H
fvar(13)= fvar(12)
IgnoreHitPause= 1

;///// fvar(20) 手出し厳禁(必殺) /////
[State 33333]
Type = VarSet
triggerall= ishelper
trigger1= 1
fvar(20)= 0
IgnoreHitPause= 1

[State 33333]
Type = VarSet
triggerall= ishelper
trigger1= enemynear,stateno = fvar(23) && fvar(23)>0
trigger2= enemynear,stateno = fvar(24) && fvar(24)>0
trigger3= enemynear,stateno = fvar(25) && fvar(25)>0
trigger4= enemynear,stateno = fvar(26) && fvar(26)>0
trigger5= enemynear,stateno = fvar(27) && fvar(27)>0
trigger6= enemynear,stateno = fvar(28) && fvar(28)>0
trigger7= enemynear,stateno = fvar(29) && fvar(29)>0
fvar(20)= 1
IgnoreHitPause= 1

;///// fvar(21) ブラックリスト格納用 /////
;発動
[State 33333]
Type = VarSet
triggerall = ishelper
triggerall = !fvar(21)
triggerall = roundstate = 2
triggerall = numhelper(55555)
trigger1 = !enemynear,ctrl && enemynear,stateno>=200 && enemynear,anim>=200
trigger1 = root,movetype = A && root,time = 1
trigger1 = root,stateno >= 1000
trigger1 = fvar(22) := enemynear,stateno
fvar(21)= root,stateno
IgnoreHitPause= 1
;モーション終了
[State 33333]
Type = VarSet
triggerall = ishelper
triggerall = fvar(21)
triggerall = roundstate = 2
triggerall = root,movetype != H
triggerall = root,time = 1
trigger1 = root,prevstateno = fvar(21)
fvar(21)= 0
IgnoreHitPause= 1

;///// fvar(22) 発動時点での相手ステート /////
[State 33333]
Type = VarSet
triggerall= ishelper
trigger1= !fvar(21)
fvar(22)= 0
IgnoreHitPause= 1

;///// fvar(23)~fvar(29) ブラックリスト /////
[State 33333]
Type = VarSet
triggerall = ishelper
triggerall = fvar(21)
triggerall = fvar(23)
triggerall = fvar(24)
triggerall = fvar(25)
triggerall = fvar(26)
triggerall = fvar(27)
triggerall = fvar(28)
triggerall = fvar(22) != fvar(23)
triggerall = fvar(22) != fvar(24)
triggerall = fvar(22) != fvar(25)
triggerall = fvar(22) != fvar(26)
triggerall = fvar(22) != fvar(27)
triggerall = fvar(22) != fvar(28)
triggerall = !fvar(29)
triggerall = roundstate = 2
triggerall = root,time = 1
trigger1 = root,prevstateno = fvar(21)
trigger1 = root,movetype = H
fvar(29)= fvar(22)
IgnoreHitPause= 1
[State 33333]
Type = VarSet
triggerall = ishelper
triggerall = fvar(21)
triggerall = fvar(23)
triggerall = fvar(24)
triggerall = fvar(25)
triggerall = fvar(26)
triggerall = fvar(27)
triggerall = fvar(22) != fvar(23)
triggerall = fvar(22) != fvar(24)
triggerall = fvar(22) != fvar(25)
triggerall = fvar(22) != fvar(26)
triggerall = fvar(22) != fvar(27)
triggerall = !fvar(28)
triggerall = roundstate = 2
triggerall = root,time = 1
trigger1 = root,prevstateno = fvar(21)
trigger1 = root,movetype = H
fvar(28)= fvar(22)
IgnoreHitPause= 1
[State 33333]
Type = VarSet
triggerall = ishelper
triggerall = fvar(21)
triggerall = fvar(23)
triggerall = fvar(24)
triggerall = fvar(25)
triggerall = fvar(26)
triggerall = fvar(22) != fvar(23)
triggerall = fvar(22) != fvar(24)
triggerall = fvar(22) != fvar(25)
triggerall = fvar(22) != fvar(26)
triggerall = !fvar(27)
triggerall = roundstate = 2
triggerall = root,time = 1
trigger1 = root,prevstateno = fvar(21)
trigger1 = root,movetype = H
fvar(27)= fvar(22)
IgnoreHitPause= 1
[State 33333]
Type = VarSet
triggerall = ishelper
triggerall = fvar(21)
triggerall = fvar(23)
triggerall = fvar(24)
triggerall = fvar(25)
triggerall = fvar(22) != fvar(23)
triggerall = fvar(22) != fvar(24)
triggerall = fvar(22) != fvar(25)
triggerall = !fvar(26)
triggerall = roundstate = 2
triggerall = root,time = 1
trigger1 = root,prevstateno = fvar(21)
trigger1 = root,movetype = H
fvar(26)= fvar(22)
IgnoreHitPause= 1
[State 33333]
Type = VarSet
triggerall = ishelper
triggerall = fvar(21)
triggerall = fvar(23)
triggerall = fvar(24)
triggerall = fvar(22) != fvar(23)
triggerall = fvar(22) != fvar(24)
triggerall = !fvar(25)
triggerall = roundstate = 2
triggerall = root,time = 1
trigger1 = root,prevstateno = fvar(21)
trigger1 = root,movetype = H
fvar(25)= fvar(22)
IgnoreHitPause= 1
[State 33333]
Type = VarSet
triggerall = ishelper
triggerall = fvar(21)
triggerall = fvar(23)
triggerall = fvar(22) != fvar(23)
triggerall = !fvar(24)
triggerall = roundstate = 2
triggerall = root,time = 1
trigger1 = root,prevstateno = fvar(21)
trigger1 = root,movetype = H
fvar(24)= fvar(22)
IgnoreHitPause= 1
[State 33333]
Type = VarSet
triggerall = ishelper
triggerall = fvar(21)
triggerall = !fvar(23)
triggerall = roundstate = 2
triggerall = root,time = 1
trigger1 = root,prevstateno = fvar(21)
trigger1 = root,movetype = H
fvar(23)= fvar(22)
IgnoreHitPause= 1

;///// fvar(30) C.Lv /////
[State 33333]
Type = VarSet
triggerall= ishelper
trigger1= RoundState != 2
fvar(30)= 0
IgnoreHitPause= 1

[State 33333]
Type = VarAdd
triggerall= ishelper
triggerall= RoundState = 2
trigger1= fvar(39) = 1
trigger1= root,movetype = H
trigger1= root,stateno != [120,155]
fvar(30)= ifelse(p2stateno>=3000,3,ifelse(p2stateno>=1000,2,1))
IgnoreHitPause= 1

;///// fvar(34) 直前の攻撃/////
;リセット
[State 33333]
Type = VarSet
triggerall= ishelper
trigger1 = roundstate != 2
fvar(34)= 0
IgnoreHitPause= 1

;リセット
[State 33333]
Type = VarSet
triggerall= ishelper
trigger1 = fvar(35) >= 180
fvar(34)= 0
IgnoreHitPause= 1

[State 33333]
Type = VarSet
triggerall= ishelper
triggerall= roundstate = 2
trigger1= root,movetype = A
trigger1= root,time = 1
fvar(34)= root,stateno
IgnoreHitPause= 1

;///// fvar(35) attacktime /////
;リセット
[State 33333]
Type = VarSet
triggerall= ishelper
trigger1= RoundState != 2
trigger2= root,movetype = A
fvar(35)= 0
IgnoreHitPause= 1

[State 33333]
Type = VarAdd
triggerall= ishelper
trigger1= RoundState = 2
trigger1= root,movetype = I || (root,stateno = [120,155])
trigger1= fvar(35) < 600
fvar(35)= 1
IgnoreHitPause= 1

;///// fvar(36) attackswitch /////
;リセット
[State 33333]
Type = VarSet
triggerall= ishelper
trigger1= 1
fvar(36)= 0
IgnoreHitPause= 1

[State 33333]
Type = VarSet
triggerall= ishelper
trigger1= root,var(59) != 3
trigger2= fvar(35) >= 90
trigger3= enemynear,vel x || enemynear,vel y || (enemynear,stateno >= 200 && enemynear,anim >= 200)
trigger3= fvar(35) >= 70
trigger4= !enemynear,ctrl
trigger4= fvar(35) >= 50
trigger5= enemynear,inguarddist || (p2stateno = [120,155])
trigger5= fvar(35) >= 30
trigger6= p2statetype = A
trigger6= fvar(35) >= 10
trigger7= (root,life*1.0/root,lifemax) < (enemynear,life*1.0/enemynear,lifemax)
trigger7= fvar(37) >= 70-(p2life-root,life>=333)*10-(p2life-root,life>=500)*10
trigger8= root,life >= root,lifemax
trigger9= (root,stateno = 0 || root,anim = 0) && root,time >= 30
trigger10= root,life >= root,lifemax*.7 && fvar(30) = 0
trigger11= root,life >= root,p2life
trigger11= random < 200*(1+(root,life>=700)+(root,life>=500)+(root,life>=333))
trigger12= root,life < root,p2life
trigger12= random < 100*(1+(root,life>=700)+(root,life>=500)+(root,life>=333))
trigger13= !fvar(30)
fvar(36)= 1
IgnoreHitPause= 1

;///// fvar(37) roundtime /////
;リセット
[State 33333]
Type = VarSet
triggerall= ishelper
trigger1= roundstate != 2
trigger2= root,stateno = 5900
fvar(37)= 0
IgnoreHitPause= 1

[State 33333]
Type = VarAdd
triggerall= ishelper
trigger1= roundstate = 2
trigger1= root,stateno != 5900
fvar(37)= (1.0/60)
IgnoreHitPause= 1

;///// fvar(38) A.Lv /////
[State 33333]
Type = VarSet
triggerall= ishelper
triggerall= RoundState = 2
trigger1= 1
fvar(38)= 1+fvar(30)
IgnoreHitPause= 1

[State 33333]
Type = VarSet
triggerall= ishelper
triggerall= RoundState = 2
trigger1= root,var(59) = 2
fvar(38)= 1
IgnoreHitPause= 1

;///// fvar(39) 直前のmovetype /////
[State 33333]
Type = VarSet
triggerall= ishelper
triggerall= RoundState = 2
trigger1= 1
fvar(39)= ifelse(root,movetype = I,0,ifelse(root,movetype = A,1,2))
IgnoreHitPause= 1

;///// var(6) ストレス /////
;リセット
[State 33333]
Type = VarSet
triggerall = ishelper
trigger1 = roundstate != 2
trigger2 = root,movehit = 1 || root,projhittime(0) = 1
trigger2 = root,p2movetype = H
var(6)= 0
IgnoreHitPause= 1

;ガードストレス(var(6)%1000
[State 33333]
Type = VarAdd
triggerall = ishelper
trigger1 = root,stateno = [120,155]
trigger1 = !var(6) || var(6)%1000+1 < 1000
var(6)= 1
IgnoreHitPause= 1

;ライフストレス(var(6)/1000
[State 33333]
Type = VarAdd
triggerall = ishelper
trigger1 = numhelper(22222)
trigger1 = helper(22222),fvar(30) > 0
trigger1 = !var(6) || var(6)/1000+ceil(helper(22222),fvar(30)) < 1000
var(6)= ceil(helper(22222),fvar(30)) * 1000
IgnoreHitPause= 1

;///// var(7) ガード時間 /////
;リセット
[State 33333]
Type = VarSet
triggerall= ishelper
trigger1= roundstate != 2
trigger2= root,movetype = A
trigger3= root,movetype = H
var(7)= 0
IgnoreHitPause= 1

[State 33333]
Type = VarAdd
triggerall= ishelper
trigger1= root,stateno = [120,140]
var(7)= 1
IgnoreHitPause= 1

;///// var(8) ガード時間超過フラグ /////
;リセット
[State 33333]
Type = VarSet
triggerall= ishelper
trigger1= 1
var(8)= 0
IgnoreHitPause= 1

[State 33333]
Type = VarSet
triggerall= ishelper
trigger1= var(7) >= 180-random%60+random%60-(root,p2bodydist x<160)*30-(root,p2bodydist x<140)*30-(root,p2bodydist x<120)*30-(random<10)*30
var(8)= 1
IgnoreHitPause= 1

;///// var(9) 攻撃許可フラグ /////
;リセット
[State 33333]
Type = VarSet
triggerall= ishelper
triggerall= roundstate=2
trigger1= 1
var(9)= 0
IgnoreHitPause= 1

;相手打撃用（相手の打撃が妨げにならない
[State 33333]
Type = VarAdd
triggerall= ishelper
triggerall= roundstate=2
triggerall= numhelper(55555)
triggerall= numhelper(22222)
;基本
trigger1= enemynear,movetype!=A && (!root,inguarddist || !enemy,numproj)
;背後
trigger2= enemynear,p2dist x<0
;すかし
trigger3= helper(22222),fvar(0)
;防御不可攻撃
trigger4= enemynear,stateno=var(18)
;防御無視
trigger5= var(35)
;防御するものがない（ワープ、溜め中etc
trigger6= enemynear,movetype=A
trigger6= enemynear,time>=30
trigger6= !(enemynear,hitdefattr=SCA,AA,AP)
trigger6= !enemy,numproj
trigger6= !(helper(55555),var(58)&2**20)
;反応速度
trigger7= enemynear,time<(7+(root,var(59)=2)*23)+(root,life>=500||root,var(59)=3)*7+(root,life>=333||root,var(59)=3)*7+random%(7+(root,var(59)=2)*23)-random%(7+(root,var(59)=2)*23)
trigger7= enemynear,stateno<3000
trigger7= enemynear,prevstateno<1000
trigger7= enemynear,movetype=A
trigger7= root,stateno!=[120,139]
trigger7= random<900-(root,life<700||root,var(59)=3)*200-(root,life<500||root,var(59)=3)*200-(root,life<333||root,var(59)=3)*200 || root,var(59)=2
var(9)= 2**0
IgnoreHitPause= 1

;相手飛び道具用（相手の通常飛び道具を警戒し、時間差発動型の飛び道具を無視する
[State 33333]
Type = VarAdd
triggerall= ishelper
triggerall= roundstate=2
triggerall= numhelper(55555)
triggerall= numhelper(22222)
;相手が超必で飛び道具と思われるものを発射するステートでない（全画面攻撃など
trigger1= !(enemynear,movetype=A && enemynear,stateno>=3000 && root,inguarddist && !(enemynear,hitdefattr = SCA,AA,AT) && (enemy,numproj || helper(55555),var(58)&2**21 || enemynear,time < 30))
;相手が必殺で飛び道具と思われるものを発射するステートでない
trigger1= !(enemynear,movetype=A && enemynear,stateno>=1000 && root,inguarddist && !(enemynear,hitdefattr = SCA,AA,AT) && (enemy,numproj || helper(55555),var(58)&2**21)) || enemynear,p2dist x<0
;相手が飛び道具と思われるものを発射していない
trigger1= (!enemy,numproj && !(helper(55555),var(58)&2**21)) || enemynear,p2dist x<0
var(9)= 2**1
IgnoreHitPause= 1

;相手回避or当身用（相手が回避or当身中でない
[State 33333]
Type = VarAdd
triggerall= ishelper
triggerall= roundstate=2
triggerall= numhelper(22222)
trigger1= enemynear,movetype!=I
trigger2= enemynear,ctrl
trigger3= enemynear,stateno>=3000
trigger4= enemynear,movetype=I && (enemynear,stateno<200 || enemynear,anim<200)
trigger5= enemynear,statetype=A
trigger6= enemynear,time>=60
trigger7= helper(22222),fvar(32)<0;HP回復
trigger8= helper(22222),fvar(36)>0;パワー回復
;反応速度
trigger9= enemynear,time<(7+(root,var(59)=2)*23)+(root,life>=500||root,var(59)=3)*7+(root,life>=333||root,var(59)=3)*7+random%(7+(root,var(59)=2)*23)-random%(7+(root,var(59)=2)*23)
trigger9= enemynear,stateno<3000
trigger9= enemynear,prevstateno<1000
trigger9= enemynear,movetype=A
trigger9= root,stateno!=[120,139]
trigger9= random<900-(root,life<700||root,var(59)=3)*200-(root,life<500||root,var(59)=3)*200-(root,life<333||root,var(59)=3)*200 || root,var(59)=2
var(9)= 2**2
IgnoreHitPause= 1

;空中攻撃用
[State 33333]
Type = VarAdd
triggerall= ishelper
triggerall= roundstate=2
triggerall= numhelper(55555)
triggerall= numhelper(22222)
;相手が攻撃中でない（飛び道具orヘルパー攻撃は無視）
trigger1= enemynear,movetype!=A
;相手が自分の背後
trigger2= root,p2dist x<0
;自分が相手の背後
trigger3= enemynear,p2dist x<0
;空ガ不可
trigger4= var(10)&2**2
;防御不可攻撃
trigger5= enemynear,stateno=var(18)
;防御無視
trigger6= var(35)
;飛び道具通りすぎ
trigger7= helper(55555),var(58)&2**9
;相手が投げ技中
trigger8= enemynear,hitdefattr=SCA,AT
;すかし
trigger9= helper(22222),fvar(0)
trigger9= enemynear,stateno<1000 || !(enemynear,hitdefattr=SCA,AA)
;相手が空中且つ、自分が防御中でない
trigger10= enemynear,statetype=A
trigger10= root,stateno!=132
;防御するものがない（ワープ、溜め中etc
trigger11= enemynear,movetype=A
trigger11= enemynear,time>=30
trigger11= !(enemynear,hitdefattr=SCA,AA,AP)
trigger11= !enemy,numproj
trigger11= !(helper(55555),var(58)&2**20)
var(9)= 2**3
IgnoreHitPause= 1

;カウンター用反応速度
[State 33333]
Type = VarAdd
triggerall= ishelper
triggerall= roundstate=2
trigger1= enemynear,time>=(10+(root,life>=333)*10+(root,life>=666)*10+random%(10+(root,life>=333)*10+(root,life>=666)*10)-random%(10+(root,life>=333)*10+(root,life>=666)*10))*(1+(root,var(59)=2))
trigger2= root,var(59)=3
trigger3= root,power>=5000 || enemynear,stateno>=3000 || var(6)%1000 >= 180 || var(6)/1000 >= 333
trigger3= root,var(59)!=2 || (root,life<root,p2life && random<500)
trigger3= random<100
trigger4= root,power>=3000 || enemynear,stateno>=1000 || root,p2life-root,life>=333 || root,life<333 || var(6)%1000 >= 120 || var(6)/1000 >= 222
trigger4= root,var(59)!=2 || (root,life<root,p2life && random<500)
trigger4= random<100
trigger5= (root,statetype=A && root,p2statetype!=A) || (root,statetype!=A && root,p2statetype=A) || root,life<root,p2life || root,life<666 || var(6)%1000 >= 60 || var(6)/1000 >= 111
trigger5= root,var(59)!=2 || (root,life<root,p2life && random<500)
trigger5= random<100
trigger6= enemynear,movetype=A
trigger6= root,var(59)!=2 || (root,life<root,p2life && random<500)
trigger6= random<100
trigger7= enemynear,movetype!=A
var(9)= 2**4
IgnoreHitPause= 1

;///// fvar(1) コンボテスト用 /////
[State 33333]
type = VarSet
triggerall= ishelper
trigger1= 1
fvar(1)= 0
ignorehitpause= 1

;///// その他 /////
;デバッグ用
[State -2 デバッグ用]
type=displayToClipboard
trigger1=1
ignorehitpause=1
text="var(11)=%d var(12)=%d var(13)=%d"
params=var(11),var(12),var(13)

[State -2 デバッグ用]
type=AppendToClipboard
trigger1=1
ignorehitpause=1
text=" \nvar(50)=%d var(51)=%d var(52)=%d"
params=var(50),var(51),var(52)

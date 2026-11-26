;-| ボタンリマップ（ボタンコンフィグ）|---------------------------------------- 第１部

[Remap]
x = x      ;Ｘボタンの入力判定を実際に押すボタンに割り当てる。
y = y      ;Ｙボタン　　　　　　　　　〃
z = z      ;Ｚボタン　　　　　　　　　〃
a = a      ;Ａボタン　　　　　　　　　〃
b = b      ;Ｂボタン　　　　　　　　　〃
c = c      ;Ｃボタン　　　　　　　　　〃
s = s      ;スタートボタン　　　　　　〃

;-| デフォルト設定 |----------------------------------------------------------- 第２部

[Defaults]
command.time = 15  ;標準のコマンド入力受付時間。
                   ;各コマンドで省略している場合に有効。
                   ;このパラメータを消した場合、デフォルトは１フレームになる。
                   ;（　M.U.G.E.Nでの１フレーム　＝　１／６０秒　）

command.buffer.time = 1  ;標準のコマンド入力記憶時間。
                         ;入力した直後にコマンドを記憶し、
                         ;指を離してもコマンドが成功している状態を
                         ;ここで設定した時間の分維持する。
                         ;１～３０フレームまでの間で設定可能。
                         ;デフォルトは１フレーム。

;============================================================================== 第３部
; コマンド定義パート（入力キーを設定する）
;==============================================================================
;-| AI |-----------------------------------------------------------------
[Command]
name = "AI0"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time = 0
[Command]
name = "AI1"
command = b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b
time = 0
[Command]
name = "AI2"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = 0
[Command]
name = "AI3"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0
[Command]
name = "AI4"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0
[Command]
name = "AI5"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI6"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = 0
[Command]
name = "AI7"
command = F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F
time = 0
[Command]
name = "AI8"
command = D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D
time = 0
[Command]
name = "AI9"
command = B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B
time = 0
[Command]
name = "AI10"
command = U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U
time = 0
[Command]
name = "AI11"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time = 0
[Command]
name = "AI12"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = 0
[Command]
name = "AI13"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0
[Command]
name = "AI14"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0
[Command]
name = "AI15"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI16"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = 0
[Command]
name = "AI17"
command = a,B,c,x,y,z,s,B,D,F,U,a,b,c,x,y,z,s,s
time = 0
[Command]
name = "AI18"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time = 0
[Command]
name = "AI19"
command = b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b
time = 0
[Command]
name = "AI20"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = 0
[Command]
name = "AI21"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0
[Command]
name = "AI22"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0
[Command]
name = "AI23"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI24"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = 0
[Command]
name = "AI25"
command = F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F
time = 0
[Command]
name = "AI26"
command = D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D
time = 0
[Command]
name = "AI27"
command = B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B
time = 0
[Command]
name = "AI28"
command = U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U
time = 0
[Command]
name = "AI29"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time = 0
[Command]
name = "AI30"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = 0
[Command]
name = "AI31"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0
[Command]
name = "AI32"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0
[Command]
name = "AI33"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI34"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = 0
[Command]
name = "AI35"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI36"
command = z,z,z,z,z,z,a,a,a,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI37"
command = z,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,z,z,z
time = 0
[Command]
name = "AI38"
command = z,z,z,z,z,a,a,a,z,z,z,z,z,a,a,a,z,z,z
time = 0
[Command]
name = "AI39"
command = z,z,z,z,z,a,a,a,z,z,z,z,z,z,a,a,z,z,z
time = 0
[Command]
name = "AI40"
command = z,z,z,z,a,a,a,z,z,z,z,a,z,z,a,a,z,z,z
time = 0
[Command]
name = "AI41"
command = z,z,z,a,z,z,z,z,z,z,z,z,z,a,a,z,z,z,z
time = 0
[Command]
name = "AI42"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI43"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,a,a,z
time = 0
[Command]
name = "AI44"
command = z,z,a,a,a,a,z,z,z,z,z,z,z,z,z,a,a,a,z
time = 0
[Command]
name = "AI45"
command = z,z,z,z,z,z,a,a,z,z,z,z,z,a,a,a,a,z,z
time = 0
[Command]
name = "AI46"
command = z,z,z,z,z,z,z,z,a,a,a,a,a,a,z,z,z,z,z
time = 0
[Command]
name = "AI47"
command = z,z,z,a,a,a,a,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI48"
command = z,z,z,z,z,a,a,a,z,z,z,a,a,a,z,z,a,z,a
time = 0
[Command]
name = "AI49"
command = z,z,z,z,a,a,a,z,z,z,z,z,a,a,a,z,z,z,z
time = 0
[Command]
name = "AI50"
command = z,z,z,a,a,z,z,z,z,z,z,z,z,z,a,a,z,z,z
time = 0

[command]
name="fwd"
command=F
time=1
[command]
name="back"
command=B
time=1
[command]
name="up"
command=U
time=1
[command]
name="down"
command=D
time=1

;-| 超必殺技 |-----------------------------------------------------------------

;※名前が同じならば、違うコマンドでも同じステートの技を出す事が可能。
[Command]
name = "kou_xy"
command = ~B, D, DB, x+y

[Command]
name = "upper_yz"
command = ~D, DB, B, y+z

[Command]
name = "upper_xy"
command = ~D, DB, B, x+y

[Command]
name = "TripleKFPalm"
command = ~D, DF, F, D, DF, F, x
time = 20

[Command]
name = "TripleKFPalm"
command = ~D, DF, F, D, DF, F, y
time = 20

[Command]
name = "SmashKFUpper"
command = ~D, DB, B, D, DB, B, x;~F, D, DF, F, D, DF, x
time = 20

[Command]
name = "SmashKFUpper"
command = ~D, DB, B, D, DB, B, y;~F, D, DF, F, D, DF, y
time = 20

;------------------------------------------------------------------------------
;-| 必殺技 |-------------------------------------------------------------------

[Command]
name = "kou_x"
command = ~B, D, DB, x

[Command]
name = "kou_y"
command = ~B, D, DB, y

[Command]
name = "kou_z"
command = ~B, D, DB, z

[Command]
name = "upper_x"
command = ~F, D, DF, x

[Command]
name = "upper_y"
command = ~F, D, DF, y

[Command]
name = "upper_xy"
command = ~F, D, DF, x+y

[Command]
name = "upper_z"
command = ~F, D, DF, z

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_z"
command = ~D, DF, F, z

[Command]
name = "QCF_xy"
command = ~D, DF, F, x+y

[Command]
name = "QCF_yz"
command = ~D, DF, F, y+z

[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
command = ~D, DB, B, y

[Command]
name = "QCB_xy"
command = ~D, DB, B, x+y

[Command]
name = "heart_c"
command = ~DF, x

[Command]
name = "FF_ab"
command = F, F, a+b

[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b


[Command]
name = "FF_x"
command = F, F, x
;---------------------------
;(「板投げ」用にコマンドを追加してます)
[Command]
name = "board"
command = ~D, DF, F, a

[Command]
name = "board"
command = ~D, DF, F, b

;------------------------------------------------------------------------------
;-| キー２回連続入力 |---------------------------------------------------------

[Command]
name = "FF"       ;必須コマンド名
command = F, F
time = 10

[Command]
name = "BB"       ;必須コマンド名
command = B, B
time = 10

;------------------------------------------------------------------------------
;-| 同時押し |-----------------------------------------------------------------

[Command]
name = "recovery" ;必須コマンド名
command = x+y
time = 1

[Command]
name = "x+y+z"
command = x+y+z

[Command]
name = "z+a"
command = z+a
time = 1

[Command]
name = "x+a"
command = x+a
time = 1

[Command]
name = "y+a"
command = y+a
time = 1

[Command]
name = "b+a"
command = b+a
time = 1
;------------------------------------------------------------------------------
;-| 方向キー＋ボタン |---------------------------------------------------------

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;------------------------------------------------------------------------------
;-| ボタン単発 |---------------------------------------------------------------

[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

;---------------------------
;(「パワー溜め」用にコマンドを追加してます)
[Command]
name = "hold_c"
command = /c

;------------------------------------------------------------------------------
;-| 方向キー |-----------------------------------------------------------------

[Command]
name = "holdfwd"   ;必須コマンド名
command = /$F
time = 1

[Command]
name = "holdback"  ;必須コマンド名
command = /$B
time = 1

[Command]
name = "holdup"    ;必須コマンド名
command = /$U
time = 1

[Command]
name = "holddown"  ;必須コマンド名
command = /$D
time = 1

;============================================================================== 第４部
; ステートエントリーパート（技などを出せるようにするための条件を設定）
;==============================================================================
;------------------------------------------------------------------------------
; コマンド名と入力するコマンドを設定しただけじゃ意味が無いので、ここから
;「実際に入力したコマンドでどの番号のステートをどういう条件で出せるか」
; を決めなければならない。
;
; ステートコントローラ「ChangeState」しか使わないけど、
; そんなに難しくないのでトリガーを覚えてたらすぐ出来る。
;
; ここさえ押さえておけば簡単なトリガー設定の流れは覚えられるかと。
;
; エントリーの順番にはある程度の法則があるけど、
; おまけフォルダの「小ネタ.txt」を参照。（波動拳が暴発ﾅﾝﾀﾗｶﾝﾀﾗ）
;
; ChangeStateなどステートコントローラの基本的な設置例は
; おまけフォルダの「テンプレート.txt」を参照。
;------------------------------------------------------------------------------
; ■準常時監視ステート（－１）■
; コマンドファイル（のステートエントリーパート）に必要な項目です。
; 絶対に消してはいけないので要注意。
;
; 通常の食らい状態以外の「P2StateNo」や「TargetState」等で制御された、
; 作成者が任意に指定した相手側の食らいステートに限り、
; 登録したステートコントローラが有効にはなりません。
;------------------------------------------------------------------------------

[Statedef -1] ;←この行は絶対に消さないでね。必須項目です。

;==============================================================================
; 超必殺技
;==============================================================================
[State -1, カウンターsp]
type = ChangeState
value = 1210
triggerall = var(59) != 1 && Roundstate = 2
triggerall = numhelper(1001) = 0
triggerall = numhelper(1003) = 0
triggerall = numhelper(3102) = 0
triggerall = numhelper(1004) = 0
triggerall = numhelper(3013) = 0
triggerall = command = "kou_xy"
trigger1 = ctrl
trigger2 = (stateno = 240) && time > 7
trigger3 = (stateno = 410) && time > 11
trigger4 = (stateno = 440) && time > 13
;------------------------------------------------------------------------------

[State -1, スマッシュカンフーアッパー];ゲージレベル１
type = ChangeState
value = 3050
triggerall = var(59) != 1 && Roundstate = 2
triggerall = command = "SmashKFUpper"  ;「SmashKFUpper」の名前のコマンドが入力されたら
triggerall = power >= 11000             ;パワーゲージがレベル１以上溜まっている時（※）
triggerall = statetype != A            ;「空中」ではない時
trigger1 = ctrl                        ;コントロールが可能な場合
trigger2 = hitdefattr = SC, NA, SA, HA ;自分の「HitDefの一部の攻撃属性」が出ている時（テンプレート参照）
trigger2 = stateno != [3050,3100)      ;現在のステートが「3050以上、3100未満」の間のどれかな場合
trigger2 = movecontact                 ;攻撃が相手に触れている時（ヒット・ガード両方）
trigger3 = (StateNo = 1300) && (Time = [12,38]) ;ちょっとこ丸が追加

[State -1,接触空気弾屈];ゲージレベル１
type = ChangeState
value = 3300
triggerall = var(59) != 1 && Roundstate = 2
triggerall = command = "upper_yz"
triggerall = power >= 1000
triggerall = numhelper(1001) = 0
triggerall = numhelper(1003) = 0
triggerall = numhelper(3102) = 0
triggerall = numhelper(1004) = 0
triggerall = numhelper(3013) = 0
triggerall = statetype = C
trigger1 = (stateno = 410) && time > 11
trigger2 = (stateno = 442) && time > 17

[State -1,接触空気弾];ゲージレベル１
type = ChangeState
value = 3200
triggerall = var(59) != 1 && Roundstate = 2
triggerall = command = "upper_yz"
triggerall = power >= 1000
triggerall = numhelper(1001) = 0
triggerall = numhelper(1003) = 0
triggerall = numhelper(3102) = 0
triggerall = numhelper(1004) = 0
triggerall = numhelper(3013) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger3 = (stateno = 240) && time > 7

[State -1,空気弾];ゲージレベル１
type = ChangeState
value = 3100
triggerall = var(59) != 1 && Roundstate = 2
triggerall = command = "upper_xy"
triggerall = power >= 1000
triggerall = numhelper(1001) = 0
triggerall = numhelper(1003) = 0
triggerall = numhelper(3102) = 0
triggerall = numhelper(1004) = 0
triggerall = numhelper(3013) = 0
trigger1 = statetype = S
trigger1 = ctrl

[State -1, 空気弾 ポーズ]
type = ChangeState
value = 3104
triggerall = var(59) != 1 && Roundstate = 2
triggerall = numhelper(1001) = 0
triggerall = numhelper(3102) = 1
triggerall = helper(3102),anim = 3102
trigger1 = command = "QCF_x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = command = "QCF_y"
trigger2 = statetype = S
trigger2 = ctrl
trigger3 = command = "QCF_z"
trigger3 = statetype = S
trigger3 = ctrl
;------------------------------------------------------------------------------
[State -1, 美那子さん];ゲージレベル１
type = ChangeState
value = 3000
triggerall = var(59) != 1 && Roundstate = 2
triggerall = command = "QCF_xy"
triggerall = power >= 1000
triggerall = numhelper(1001) = 0
triggerall = numhelper(1003) = 0
triggerall = numhelper(1004) = 0
triggerall = numhelper(3102) = 0
triggerall = numhelper(3013) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = movecontact
trigger3 = (StateNo = 1300) && (Time = [12,38]) ;ちょっとこ丸が追加
trigger4 = (stateno = 240) && time > 7
trigger5 = (stateno = 410) && time > 11
;------------------------------------------------------------------------------

[State -1, 美那子さんvar2];ゲージレベル１
type = ChangeState
value = 3010
triggerall = var(59) != 1 && Roundstate = 2
triggerall = command = "QCF_yz"
triggerall = power >= 1000
triggerall = numhelper(1001) = 0
triggerall = numhelper(1003) = 0
triggerall = numhelper(1004) = 0
triggerall = numhelper(3102) = 0
triggerall = numhelper(3013) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = movecontact
trigger3 = (StateNo = 1300) && (Time = [12,38]) ;ちょっとこ丸が追加
trigger4 = (stateno = 240) && time > 5

[State -1, キラークィーン ポーズ]
type = ChangeState
value = 3012
triggerall = var(59) != 1 && Roundstate = 2
triggerall = numhelper(1001) = 0
triggerall = numhelper(3013) = 1
triggerall = statetype != A
trigger1 = command = "QCF_x"
trigger1 = ctrl
trigger2 = command = "QCF_y"
trigger2 = ctrl
trigger3 = command = "QCF_z"
trigger3 = ctrl
;==============================================================================
; 必殺技
;==============================================================================
;------------------------------------------------------------------------------
; 変数の使い方の例。
;
; カンフーマンの「地上で必殺技が出せる状況」や、
; 通常技から必殺技へ繋ぐ時の「キャンセル」の部分を設定している。
; 地上で成功すれば、『変数の例２』のステートコントローラで設定した
; 変数が実行され、それ以外なら『変数の例１』でリセットする、という処理。
;
; 個人的にはこの方法はオススメしない。kfmcでの方法を推薦します。

[State -1, 変数の例１];必殺技の発生条件リセット
type = VarSet
trigger1 = 1
var(1) = 0 ;変数用パラメータの記述方法その１（その２は「板投げ」のステートにて）

[State -1, 変数の例２];必殺技の発生条件をチェック
type = VarSet
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;[Statedef 440]（足払いのステート）ではない時
trigger2 = movecontact
var(1) = 1
;------------------------------------------------------------------------------

[State -1, 親父1];ゲージ消費
type = ChangeState
value = 1120
triggerall = var(59) != 1 && Roundstate = 2
triggerall = command = "holdfwd"
triggerall = command = "c"
triggerall = numhelper(1101) = 0
trigger1 = var(1)

[State -1, 親父2]
type = ChangeState
value = 1100
triggerall = var(59) != 1 && Roundstate = 2
triggerall = command = "c"
triggerall = command = "holdback"
triggerall = numhelper(1101) = 0
trigger1 = var(1)

[State -1, 親父3]
type = ChangeState
value = 1110
triggerall = var(59) != 1 && Roundstate = 2
triggerall = command = "c"
triggerall = numhelper(1101) = 0
trigger1 = var(1)

;------------------------------------------------------------------------------

[State -1, 対空];ゲージ消費
type = ChangeState
value = 450
triggerall = var(59) != 1 && Roundstate = 2
triggerall = command = "upper_x"
triggerall = numhelper(1001) = 0
trigger1 = var(1)
trigger2 = (stateno = 442) && time > 17
trigger3 = (stateno = 250) && time > 15

[State -1, 対空2]
type = ChangeState
value = 452
triggerall = var(59) != 1 && Roundstate = 2
triggerall = command = "upper_y"
triggerall = numhelper(1001) = 0
trigger1 = var(1)
trigger2 = (stateno = 442) && time > 17
trigger3 = (stateno = 250) && time > 15

[State -1, 対空3]
type = ChangeState
value = 454
triggerall = var(59) != 1 && Roundstate = 2
triggerall = command = "upper_z"
triggerall = numhelper(1001) = 0
trigger1 = var(1)
trigger2 = (stateno = 442) && time > 17
trigger3 = (stateno = 250) && time > 15

;------------------------------------------------------------------------------

[State -1, キラークィーン]
type = ChangeState
value = 1000
triggerall = var(59) != 1 && Roundstate = 2
triggerall = numhelper(1001) = 0
triggerall = numhelper(1003) = 0
triggerall = numhelper(3102) = 0
triggerall = numhelper(1004) = 0
triggerall = numhelper(3013) = 0
triggerall = command = "QCF_x"
trigger1 = var(1)
trigger2 = (stateno = 240) && time > 7
trigger3 = (stateno = 410) && time > 11
trigger4 = (stateno = 440) && time > 13

[State -1, キラークィーン中]
type = ChangeState
value = 1006
triggerall = var(59) != 1 && Roundstate = 2
triggerall = command = "QCF_y"
triggerall = numhelper(1001) = 0
triggerall = numhelper(1003) = 0
triggerall = numhelper(3102) = 0
triggerall = numhelper(1004) = 0
triggerall = numhelper(3013) = 0
trigger1 = var(1)
trigger2 = (stateno = 240) && time > 7
trigger3 = (stateno = 410) && time > 11
trigger4 = (stateno = 440) && time > 13

[State -1, キラークィーン強]
type = ChangeState
value = 1008
triggerall = var(59) != 1 && Roundstate = 2
triggerall = command = "QCF_z"
triggerall = numhelper(1001) = 0
triggerall = numhelper(1003) = 0
triggerall = numhelper(3102) = 0
triggerall = numhelper(1004) = 0
triggerall = numhelper(3013) = 0
trigger1 = var(1)
trigger2 = (stateno = 240) && time > 7
trigger3 = (stateno = 410) && time > 11
trigger4 = (stateno = 440) && time > 13

[State -1, キラークィーン ポーズ]
type = ChangeState
value = 1005
triggerall = var(59) != 1 && Roundstate = 2
triggerall = numhelper(1001) = 0
triggerall = numhelper(1003) = 1
triggerall = command = "QCF_x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 1000

[State -1, キラークィーン ポーズ2]
type = ChangeState
value = 1005
triggerall = var(59) != 1 && Roundstate = 2
triggerall = numhelper(1001) = 0
triggerall = numhelper(1003) = 1
triggerall = command = "QCF_y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 1000

[State -1, キラークィーン ポーズ3]
type = ChangeState
value = 1005
triggerall = var(59) != 1 && Roundstate = 2
triggerall = numhelper(1001) = 0
triggerall = numhelper(1003) = 1
triggerall = command = "QCF_z"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 1000
;---------------------------------------------------------------------------
;ガーキャン
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1800
triggerall = var(59) != 1 && Roundstate = 2
triggerall = var(49) != 10000
triggerall = numhelper(1001) = 0
triggerall = numhelper(2) = 0
triggerall = statetype != A
trigger1 = command = "QCF_x" || command = "QCF_y" || command = "QCF_z"
trigger1 = (stateno = [150,153])

;------------------------------------------------------------------------------
[State -1, 屈シアハ]
type = ChangeState
value = 1300
triggerall = var(59) != 1 && Roundstate = 2
triggerall = power >= 500
triggerall = command = "x"
triggerall = command = "holdfwd"
triggerall = command = "holddown"
triggerall = numhelper(1001) = 0
triggerall = numhelper(1301) = 0
triggerall = numhelper(1304) = 0
trigger1 = statetype != A
trigger1 = ctrl

[State -1, 立ちシアハ]
type = ChangeState
value = 1303
triggerall = var(59) != 1 && Roundstate = 2
triggerall = power >= 500
triggerall = command = "FF_x"
triggerall = numhelper(1001) = 0
triggerall = numhelper(1301) = 0
triggerall = numhelper(1304) = 0
trigger1 = statetype != A
trigger1 = ctrl
;-----------------------------------------------------------------------------
;==============================================================================
; 移動関連
;==============================================================================
;------------------------------------------------------------------------------

[State -1, 走る]
type = ChangeState
value = 100
triggerall = var(59) != 1 && Roundstate = 2
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, バックステップ]
type = ChangeState
value = 105
triggerall = var(59) != 1 && Roundstate = 2
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;==============================================================================
; 特殊技
;==============================================================================
;------------------------------------------------------------------------------

[State -1, カンフースルー];投げ技
type = ChangeState
value = 800
triggerall = var(59) != 1 && Roundstate = 2
triggerall = command = "z"
triggerall = statetype = S
triggerall = ctrl
triggerall = NumHelper(1001) = 0 
triggerall = NumHelper(1003) = 0 
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H
;------------------------------------------------------------------------------

[State -1, パワー溜め];ちょっとこ丸が追加した技
type = ChangeState
value = 700
triggerall = command = "hold_c"
triggerall = power > 99999 ;ゲージが満タンの時は出せない
trigger1 = statetype != A && ctrl

[State -1, シールド];ちょっとこ丸が追加した技
type = ChangeState
value = 701
triggerall = power > 99999 ;ゲージが満タンの時は出せない
triggerall = command = "z"
trigger1 = ctrl
;---------------------------------------------------------------------------
;アドバンシング（立ち）
[State -1, Run Back]
type = ChangeState
triggerall = var(59) != 1 && Roundstate = 2
triggerall = var(49) != 10000
triggerall = numhelper(4010) = 0
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
trigger1 = command = "x+y+z" || command = "b" || command = "z"
trigger1 = statetype = S
trigger1 = stateno = 150 || stateno = 151
trigger1 = prevstateno != 4000 && prevstateno != 4005
ignorehitpause = 1
value = 4100

;---------------------------------------------------------------------------
;アドバンシング（しゃがみ）
[State -1, Run Back]
type = ChangeState
triggerall = var(59) != 1 && Roundstate = 2
triggerall = var(49) != 10000
triggerall = numhelper(4010) = 0
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
trigger1 = command = "x+y+z" || command = "b" || command = "z"
trigger1 = statetype = C
trigger1 = stateno = 152 || stateno = 153
trigger1 = prevstateno != 4000 && prevstateno != 4005
value = 4105
;------------------------------------------------------------------------------

[State -1, 回り込み]
type = ChangeState
triggerall = var(59) != 1 && Roundstate = 2
triggerall = var(10) = 0
triggerall = Alive
triggerall = var(49) != 10000
trigger1 = statetype != A && ctrl
trigger1 = command = "b"
value = 799
;==============================================================================
; 通常攻撃技
;==============================================================================
;------------------------------------------------------------------------------

[State -1, 立ち弱パンチ]
type = ChangeState
value = 200
triggerall = var(59) != 1 && Roundstate = 2
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6

[State -1, 立ち強パンチ]
type = ChangeState
value = 210
triggerall = var(59) != 1 && Roundstate = 2
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5

[State -1, 前立ち強]
type = ChangeState
value = 250
triggerall = var(59) != 1 && Roundstate = 2
triggerall = command = "z"
triggerall = command = "holdfwd"
triggerall = numhelper(1001) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5

[State -1, 立ち強]
type = ChangeState
value = 240
triggerall = var(59) != 1 && Roundstate = 2
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = numhelper(1001) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5

;------------------------------------------------------------------------------

[State -1, 挑発]
type = ChangeState
value = 195
triggerall = var(59) != 1 && Roundstate = 2
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;------------------------------------------------------------------------------

[State -1, しゃがみ弱パンチ]
type = ChangeState
value = 400
triggerall = var(59) != 1 && Roundstate = 2
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200

[State -1, しゃがみ強パンチ]
type = ChangeState
value = 410
triggerall = var(59) != 1 && Roundstate = 2
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = numhelper(1001) = 0
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

[State -1, しゃがみ強2]
type = ChangeState
value = 440
triggerall = var(59) != 1 && Roundstate = 2
triggerall = command = "z"
triggerall = command = "holdfwd"
triggerall = command = "holddown"
triggerall = numhelper(1001) = 0
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

[State -1, しゃがみ強]
type = ChangeState
value = 442
triggerall = var(59) != 1 && Roundstate = 2
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = numhelper(1001) = 0
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;------------------------------------------------------------------------------

[State -1, ジャンプ弱パンチ]
type = ChangeState
value = 600
triggerall = var(59) != 1 && Roundstate = 2
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, ジャンプ強パンチ]
type = ChangeState
value = 610
triggerall = var(59) != 1 && Roundstate = 2
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, ジャンプ強]
type = ChangeState
value = 640
triggerall = var(59) != 1 && Roundstate = 2
triggerall = command = "z"
triggerall = numhelper(1001) = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630
trigger2 = movecontact













;==============================================================================
;------------------------------------------------------------------------------
;AI
;------------------------------------------------------------------------------
;==============================================================================
[State -1, カウンターsp]
type = ChangeState
value = 1210
triggerall = var(59) = 1 && Roundstate = 2
triggerall = numhelper(1001) = 0
triggerall = numhelper(1003) = 0
triggerall = numhelper(3102) = 0
triggerall = numhelper(1004) = 0
triggerall = numhelper(3013) = 0
triggerall = P2BodyDist X = [-5,50]
triggerall = (EnemyNear,Movetype != A)||(EnemyNear,HitDefAttr = SC, AA, AT, AP)||(EnemyNear,HitDefAttr = A, AT, AP)||(EnemyNear,facing <=0)||(p2dist X != [-70,70])
triggerall = EnemyNear,HitDefAttr = SCA, NA, SA, HA
triggerall = enemynear,statetype != A
triggerall = enemynear,animtime <= -6
triggerall = Statetype != A
trigger1 = ctrl || stateno = 11
trigger1 = Random<=var(58)*45
trigger2 = (stateno = 240) && time > 7
trigger2 = Random<=var(58)*20
trigger3 = (stateno = 410) && time > 11
trigger3 = Random<=var(58)*25
trigger4 = (stateno = 440) && time > 13
trigger4 = Random<=var(58)*30

;------------------------------------------------------------------------------
[State -1, カウンターsp]
type = ChangeState
value = 1200
triggerall = var(59) = 1 && Roundstate = 2
triggerall = numhelper(1001) = 0
triggerall = numhelper(1003) = 0
triggerall = numhelper(3102) = 0
triggerall = numhelper(1004) = 0
triggerall = numhelper(3013) = 0
triggerall = P2BodyDist X = [-5,50]
triggerall = (EnemyNear,Movetype != A)||(EnemyNear,HitDefAttr = SC, AA, AT, AP)||(EnemyNear,HitDefAttr = A, AT, AP)||(EnemyNear,facing <=0)||(p2dist X != [-70,70])
triggerall = EnemyNear,HitDefAttr = SCA, NA, SA, HA
triggerall = enemynear,statetype != A
triggerall = enemynear,animtime <= -6
triggerall = Statetype != A
trigger1 = ctrl || stateno = 11
trigger1 = Random<=var(58)*55
trigger2 = (stateno = 240) && time > 7
trigger2 = Random<=var(58)*30
trigger3 = (stateno = 410) && time > 11
trigger3 = Random<=var(58)*35
trigger4 = (stateno = 440) && time > 13
trigger4 = Random<=var(58)*35

;------------------------------------------------------------------------------
;==============================================================================
;ガード・切り替えし
;==============================================================================
[State -1, 対空3]
type = ChangeState
value = 454
triggerall = var(59) != 1 && Roundstate = 2
triggerall = numhelper(1001) = 0
TriggerAll = EnemyNear,StateType != L
TriggerAll = EnemyNear,MoveType != H
TriggerAll = !InGuardDist
TriggerAll = P2BodyDist X = [35,75]
TriggerAll = P2BodyDist Y >= -180
TriggerAll = EnemyNear,StateType=A
TriggerAll = Ctrl||stateno = 11
Trigger1 = Random <= var(58)*50

;------------------------------------------------------------------------------
[State -1, 美那子さん];ゲージレベル１
type = ChangeState
value = 3000
triggerall = var(59) = 1 && Roundstate = 2
triggerall = power >= 1000
triggerall = numhelper(1001) = 0
triggerall = numhelper(1003) = 0
triggerall = numhelper(1004) = 0
triggerall = numhelper(3102) = 0
triggerall = numhelper(3013) = 0
triggerall = EnemyNear,statetype != L
TriggerAll = P2BodyDist X=[-5,90]
TriggerAll = P2BodyDist Y>=-120
triggerall = statetype != A
TriggerAll = Ctrl||stateno=100||stateno=11
TriggerAll = EnemyNear,MoveType=A
TriggerAll = Random<=var(58)*60||var(58)>9
TriggerAll = EnemyNear,AnimTime<=-(8)||var(58)<7
TriggerAll = Enemynear,Time>=30||(!Time&&var(58)>9)||var(58)>10
Trigger1 = Enemynear,Time>=50||var(58)>9
Trigger2 = (PrevStateNo=[5000,5270])
Trigger3 = (PrevStateNo=[120,159])

;ガーキャン
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1800
triggerall = var(59) = 1 && Roundstate = 2
triggerall = var(49) != 10000
triggerall = numhelper(1001) = 0
triggerall = numhelper(2) = 0
triggerall = statetype != A
trigger1 = p2bodydist X <= 60
trigger1 = EnemyNear,statetype != C
trigger1 = (stateno = [150,153])
trigger1 = random <= var(58)*60

[State -1]
Type = ChangeState
Value = 120
TriggerAll=var(59)=1
TriggerAll=StateNo!=[120,155]
TriggerAll=Ctrl||stateno=11||stateno=100
TriggerAll=inguarddist
Trigger1 = Random<=var(58)*60||var(58)>9
Trigger2 = P2BodyDist X>90||EnemyNear,Time>50
Trigger2 = Random<=var(58)*150

[State -1,しゃがみ(ｶﾞｰﾄﾞ切替も兼ねてる)]
Type = ChangeState
value = 11
Ctrl = 0
TriggerAll=RoundState=2
TriggerAll=var(59)=1
TriggerAll=StateType != A
TriggerAll=fvar(38)=1
TriggerAll=StateNo=0
TriggerAll=Ctrl
Trigger1 = Random <= var(58)*20||var(58)>9

[State -1,しゃがみ解除(ｶﾞｰﾄﾞ切替も兼ねてる)]
Type = ChangeState
value = 0
Ctrl = 1
TriggerAll=RoundState=2
TriggerAll=var(59)=1
TriggerAll=StateType != A
TriggerAll=fvar(38)=2
TriggerAll=StateNo = 11
Trigger1 = Random <= var(58)*20||var(58)>9

;==============================================================================
; 超必殺技
;==============================================================================
;------------------------------------------------------------------------------

[State -1, スマッシュカンフーアッパー];ゲージレベル１
type = ChangeState
value = 3050
triggerall = var(59) = 1 && Roundstate = 2
triggerall = command = "SmashKFUpper"  ;「SmashKFUpper」の名前のコマンドが入力されたら
triggerall = power >= 11000             ;パワーゲージがレベル１以上溜まっている時（※）
triggerall = statetype != A            ;「空中」ではない時
trigger1 = ctrl                        ;コントロールが可能な場合
trigger2 = hitdefattr = SC, NA, SA, HA ;自分の「HitDefの一部の攻撃属性」が出ている時（テンプレート参照）
trigger2 = stateno != [3050,3100)      ;現在のステートが「3050以上、3100未満」の間のどれかな場合
trigger2 = movecontact                 ;攻撃が相手に触れている時（ヒット・ガード両方）
trigger3 = (StateNo = 1300) && (Time = [12,38]) ;ちょっとこ丸が追加

[State -1,接触空気弾屈];ゲージレベル１
type = ChangeState
value = 3300
triggerall = var(59) = 1 && Roundstate = 2
triggerall = power >= 1000
triggerall = numhelper(1001) = 0
triggerall = numhelper(1003) = 0
triggerall = numhelper(3102) = 0
triggerall = numhelper(1004) = 0
triggerall = numhelper(3013) = 0
triggerall = EnemyNear,statetype != L
triggerall = statetype != A
trigger1 = (stateno = 410) 
trigger1 = Helper(241),movecontact && time > 11
trigger1 = random <= var(58)*15
trigger1 = (stateno = 442)
trigger2 = Helper(241),movecontact && time > 17
trigger2 = random <= var(58)*20

[State -1,接触空気弾];ゲージレベル１
type = ChangeState
value = 3200
triggerall = var(59) = 1 && Roundstate = 2
triggerall = power >= 1000
triggerall = numhelper(1001) = 0
triggerall = numhelper(1003) = 0
triggerall = numhelper(3102) = 0
triggerall = numhelper(1004) = 0
triggerall = numhelper(3013) = 0
triggerall = EnemyNear,statetype != L
trigger1 = statetype = S
trigger1 = ctrl || stateno = 100
trigger1 = p2bodydist X >= 120
trigger1 = random <= var(58)*12
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = EnemyNear,movetype = H
trigger2 = random <= var(58)*15
trigger3 = (stateno = 442)
trigger3 = Helper(241),movecontact && time > 7
trigger3 = random <= var(58)*20

[State -1,空気弾];ゲージレベル１
type = ChangeState
value = 3100
triggerall = var(59) = 1 && Roundstate = 2
triggerall = power >= 1000
triggerall = numhelper(1001) = 0
triggerall = numhelper(1003) = 0
triggerall = numhelper(3102) = 0
triggerall = numhelper(1004) = 0
triggerall = numhelper(3013) = 0
trigger1 = statetype = S
trigger1 = p2bodydist X >= 100
trigger1 = ctrl || stateno = 100
trigger1 = random <= var(58)*8

[State -1, 空気弾 ポーズ]
type = ChangeState
value = 3104
triggerall = var(59) = 1 && Roundstate = 2
triggerall = numhelper(1001) = 0
triggerall = numhelper(3102) = 1
triggerall = helper(3102),anim = 3102
trigger1 = statetype = S
trigger1 = ctrl || stateno = 100
trigger1 = time > 20
trigger1 = random <= var(58)*18

;------------------------------------------------------------------------------
[State -1, 美那子さん];ゲージレベル１
type = ChangeState
value = 3000
triggerall = var(59) = 1 && Roundstate = 2
triggerall = power >= 1000
triggerall = numhelper(1001) = 0
triggerall = numhelper(1003) = 0
triggerall = numhelper(1004) = 0
triggerall = numhelper(3102) = 0
triggerall = numhelper(3013) = 0
TriggerAll = !inguarddist
triggerall = statetype != A
triggerall = EnemyNear,statetype != L
triggerall = EnemyNear,statetype != A
trigger1 = hitdefattr = SC, NA, SA, HA
trigger1 = stateno != [3000,3050)
trigger1 = movehit
trigger1 = random <= var(58)*25
trigger2 = (stateno = 240) 
trigger2 = Helper(241),movehit && time > 7
trigger2 = random <= var(58)*10
trigger3 = (stateno = 410) 
trigger3 = Helper(241),movehit && time > 11
trigger3 = random <= var(58)*15

;------------------------------------------------------------------------------

[State -1, 美那子さんvar2];ゲージレベル１
type = ChangeState
value = 3010
triggerall = var(59) = 1 && Roundstate = 2
triggerall = power >= 1000
triggerall = numhelper(1001) = 0
triggerall = numhelper(1003) = 0
triggerall = numhelper(1004) = 0
triggerall = numhelper(3102) = 0
triggerall = numhelper(3013) = 0
triggerall = statetype != A
TriggerAll = !inguarddist
triggerall = EnemyNear,statetype != L
triggerall = EnemyNear,statetype != A
trigger1 = ctrl || stateno = 100
trigger1 = p2bodydist X = [0,75]
trigger1 = random <= var(58)*5
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050]
trigger2 = movecontact
trigger2 = random <= var(58)*25
trigger3 = (StateNo = 1300) && (Time = [12,38]) ;ちょっとこ丸が追加
trigger3 = EnemyNear,movetype = H
trigger3 = random <= var(58)*35
trigger4 = (stateno = 240) 
trigger4 = Helper(241),movecontact && time > 5
trigger4 = random <= var(58)*35

[State -1, キラークィーン ポーズ]
type = ChangeState
value = 3012
triggerall = var(59) = 1 && Roundstate = 2
triggerall = numhelper(1001) = 0
triggerall = numhelper(3013) = 1
triggerall = statetype != A
TriggerAll = !inguarddist
triggerall = EnemyNear,statetype != L
Triggerall = EnemyNear,StateNo!=[120,159]
triggerall = ctrl || stateno = 11 || stateno = 100
trigger1 = EnemyNear,movetype = A
trigger1 = random <= var(58)*85
trigger2 = !EnemyNear,ctrl
trigger2 = random <= var(58)*40
trigger3 = time > 120
trigger3 = random <= var(58)*55
trigger4 = EnemyNear,movetype = H
trigger4 = random <= var(58)*60 

;==============================================================================
; 必殺技
;==============================================================================
;------------------------------------------------------------------------------
; 変数の使い方の例。
;
; カンフーマンの「地上で必殺技が出せる状況」や、
; 通常技から必殺技へ繋ぐ時の「キャンセル」の部分を設定している。
; 地上で成功すれば、『変数の例２』のステートコントローラで設定した
; 変数が実行され、それ以外なら『変数の例１』でリセットする、という処理。
;
; 個人的にはこの方法はオススメしない。kfmcでの方法を推薦します。

[State -1, 変数の例１];必殺技の発生条件リセット
type = VarSet
trigger1 = 1
var(1) = 0 ;変数用パラメータの記述方法その１（その２は「板投げ」のステートにて）

[State -1, 変数の例２];必殺技の発生条件をチェック
type = VarSet
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;[Statedef 440]（足払いのステート）ではない時
trigger2 = movecontact
var(1) = 1

[State -1]
type = varset
trigger1 = RoundState = 1
trigger2 = stateno = 1005
trigger3 = numhelper(1003) = 0
trigger4 = var(55)>=1
trigger4 = time > 40 ;緊急処理 
v = 55
value = 0

[State -1]
type = varset
triggerall = var(59) = 1 && Roundstate = 2
trigger1 = movecontact = 1
trigger1 = stateno = [1000,1009]
var(54) = 1

;------------------------------------------------------------------------------

[State -1, 親父1];ゲージ消費
type = ChangeState
value = 1120
triggerall = var(59) = 1 && Roundstate = 2
triggerall = numhelper(1101) = 0
TriggerAll= !inguarddist
trigger1 = statetype != A
trigger1 = EnemyNear,statetype != L
trigger1 = EnemyNear,movetype != H
trigger1 = EnemyNear,statetype = A
trigger1 = p2bodydist Y >= -180
trigger1 = p2bodydist X = [10,65] 
trigger1 = random <= var(58)*40

;[State -1, 親父2]
;type = ChangeState
;value = 1100
;triggerall = var(59) = 1 && Roundstate = 2
;triggerall = command = "c"
;triggerall = command = "holdback"
;triggerall = numhelper(1101) = 0
;trigger1 = var(1)

[State -1, 親父3]
type = ChangeState
value = 1110
triggerall = var(59) = 1 && Roundstate = 2
triggerall = numhelper(1101) = 0
triggerall = statetype != A
TriggerAll= !inguarddist
trigger1 = stateno = 200
trigger1 = movecontact
trigger1 = random <= var(58)*25
trigger2 = stateno = 210
trigger1 = movecontact
trigger1 = random <= var(58)*45

;------------------------------------------------------------------------------
[State -1, 対空];ゲージ消費
type = ChangeState
value = 450
triggerall = var(59) != 1 && Roundstate = 2
triggerall = P2bodydist X = [30,75]
triggerall = numhelper(1001) = 0
TriggerAll= !inguarddist
triggerall = EnemyNear,statetype != C
trigger1 = stateno = 200 || stateno = 210 || stateno = 400
trigger1 = movecontact
trigger1 = random <= var(58)*30
trigger2 = (stateno = 442) && time > 17
trigger2 = (EnemyNear,Movetype = H && EnemyNear,Stateno != [120,159]) 
trigger2 = random <= var(58)*35
trigger3 = (stateno = 250) && time > 15
trigger3 = (EnemyNear,Movetype = H && EnemyNear,Stateno != [120,159]) 
trigger3 = random <= var(58)*35

[State -1, 対空2]
type = null;ChangeState
value = 452
triggerall = var(59) != 1 && Roundstate = 2
triggerall = command = "upper_y"
triggerall = numhelper(1001) = 0
trigger1 = var(1)
trigger2 = (stateno = 442) && time > 17
trigger3 = (stateno = 250) && time > 15

[State -1, 対空3]
type = null;ChangeState
value = 454
triggerall = var(59) != 1 && Roundstate = 2
triggerall = command = "upper_z"
triggerall = numhelper(1001) = 0
trigger1 = var(1)
trigger2 = (stateno = 442) && time > 17
trigger3 = (stateno = 250) && time > 15

;------------------------------------------------------------------------------
State -1, キラークィーン]
type = ChangeState
value = 1000
triggerall = var(59) = 1 && Roundstate = 2
triggerall = numhelper(1001) = 0
triggerall = numhelper(1003) = 0
triggerall = numhelper(3102) = 0
triggerall = numhelper(1004) = 0
triggerall = numhelper(3013) = 0
TriggerAll= !inguarddist
triggerall = EnemyNear,statetype != C
trigger1 = stateno = 200 || stateno = 210 || stateno = 400
trigger1 = MoveGuarded
trigger1 = random <= var(58)*25
trigger2 = (stateno = 240) 
trigger2 = Helper(241),Movecontact && time > 7
trigger2 = random <= var(58)*60
trigger3 = (stateno = 410) 
trigger3 = Helper(241),MoveGuarded && time > 11
trigger3 = random <= var(58)*55
trigger4 = (stateno = 440) 
trigger4 = Helper(241),MoveGuarded && time > 13
trigger4 = random <= var(58)*60

[State -1, キラークィーン中]
type = ChangeState
value = 1006
triggerall = var(59) = 1 && Roundstate = 2
triggerall = numhelper(1001) = 0
triggerall = numhelper(1003) = 0
triggerall = numhelper(3102) = 0
triggerall = numhelper(1004) = 0
triggerall = numhelper(3013) = 0
triggerall = statetype != A
TriggerAll= !inguarddist
triggerall = EnemyNear,statetype != C
trigger1 = Ctrl || stateno = 11 || stateno = 100
trigger1 = p2bodydist X = [70,110]
trigger1 = p2bodydist Y >= -100
trigger1 = random <= var(58)*25 

[State -1, キラークィーン強]
type = ChangeState
value = 1008
triggerall = var(59) = 1 && Roundstate = 2
triggerall = numhelper(1001) = 0
triggerall = numhelper(1003) = 0
triggerall = numhelper(3102) = 0
triggerall = numhelper(1004) = 0
triggerall = numhelper(3013) = 0
triggerall = statetype != A
TriggerAll= !inguarddist
triggerall = EnemyNear,statetype != C
trigger1 = stateno = 200 || stateno = 210 || stateno = 400
trigger1 = movehit
trigger1 = random <= var(58)*15
trigger2 = (stateno = 240) 
trigger2 = Helper(241),movehit && time > 7
trigger2 = random <= var(58)*40
trigger3 = (stateno = 410) 
trigger3 = Helper(241),movehit && time > 11
trigger3 = random <= var(58)*50
trigger4 = (stateno = 440) 
trigger4 = Helper(241),movehit && time > 13
trigger4 = random <= var(58)*60

[State -1, キラークィーン 起爆]
type = ChangeState
value = 1005
triggerall = var(59) = 1 && Roundstate = 2
triggerall = numhelper(1001) = 0
triggerall = numhelper(1003) = 1
triggerall = statetype != A
TriggerAll = !inguarddist
Triggerall = EnemyNear,StateNo!=[120,159]
triggerall = EnemyNear,statetype != L
triggerall = ctrl || stateno = 11 || stateno = 100
trigger1 = EnemyNear,movetype = A
trigger1 = random <= var(58)*70
trigger2 = !EnemyNear,ctrl
trigger2 = random <= var(58)*75
trigger3 = time > 80
trigger3 = random <= var(58)*35
trigger4 = EnemyNear,movetype = H
trigger4 = random <= var(58)*60 

;------------------------------------------------------------------------------
[State -1, 屈シアハ]
type = ChangeState
value = 1300
triggerall = var(59) = 1 && Roundstate = 2
triggerall = power >= 500
TriggerAll = !inguarddist
triggerall = numhelper(1001) = 0
triggerall = numhelper(1301) = 0
triggerall = numhelper(1304) = 0
trigger1 = EnemyNear,statetype != L
trigger1 = statetype != A
trigger1 = ctrl || stateno = 11
trigger1 = EnemyNear,statetype != A
trigger1 = p2bodydist X = [50,95]
trigger1 = random <= var(58)*25

[State -1, 立ちシアハ]
type = ChangeState
value = 1303
triggerall = var(59) = 1 && Roundstate = 2
triggerall = power >= 500
TriggerAll = !inguarddist
triggerall = numhelper(1001) = 0
triggerall = numhelper(1301) = 0
triggerall = numhelper(1304) = 0
trigger1 = EnemyNear,statetype != C
trigger1 = EnemyNear,statetype != L
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger1 = EnemyNear,statetype != A
trigger1 = p2bodydist X = [60,95]
trigger1 = random <= var(58)*30

;-----------------------------------------------------------------------------
;==============================================================================
; 移動関連
;==============================================================================
;------------------------------------------------------------------------------

[State -1, 走る]
type = ChangeState
value = 100
triggerall = var(59) = 1 && Roundstate = 2
triggerall = statetype != A
triggerall = ctrl
triggerall = stateno != 100
triggerall = stateno != 105
TriggerAll= !inguarddist
trigger1 = p2bodydist X >= 130
trigger1 = EnemyNear,statetype != L
trigger1 = EnemyNear,movetype != H
trigger1 = random <= var(58)*30

[State -1, バックステップ]
type = ChangeState
value = 105
triggerall = var(59) = 1 && Roundstate = 2
triggerall = statetype != A
triggerall = ctrl
triggerall = stateno != 100
triggerall = stateno != 105
TriggerAll= !inguarddist
trigger1 = p2bodydist X = [0,60]
trigger1 = BackEdgeBodyDist >= 40
trigger1 = EnemyNear,statetype != L
trigger1 = EnemyNear,movetype != H
trigger1 = random <= var(58)*10
trigger2 = p2bodydist X = [0,50]
trigger2 = BackEdgeBodyDist >= 40
trigger2 = EnemyNear,statetype = L
trigger2 = random <= var(58)*90

[State -1,ストップ]
type = Changestate
value = 0
ctrl = 1
triggerall = var(59) = 1 
triggerall = stateno = 105
trigger1 = BackEdgeBodyDist <= 20
trigger2 = random <= var(58)*20
trigger3 = roundstate = 3

;==============================================================================
; 特殊技
;==============================================================================
;------------------------------------------------------------------------------

[State -1, カンフースルー];投げ技
type = ChangeState
value = 800
triggerall = var(59) = 1 && Roundstate = 2
TriggerAll= !inguarddist
triggerall = statetype = S
triggerall = ctrl
triggerall = NumHelper(1001) = 0 
triggerall = NumHelper(1003) = 0 
trigger1 = p2bodydist X < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger1 = random <= var(58)*95

;------------------------------------------------------------------------------

[State -1, パワー溜め];ちょっとこ丸が追加した技
type = ChangeState
value = 700
triggerall = command = "hold_c"
triggerall = power > 99999 ;ゲージが満タンの時は出せない
trigger1 = statetype != A && ctrl

[State -1, シールド];ちょっとこ丸が追加した技
type = ChangeState
value = 701
triggerall = power > 99999 ;ゲージが満タンの時は出せない
triggerall = command = "z"
trigger1 = ctrl
;---------------------------------------------------------------------------
;アドバンシング（立ち）
[State -1, Run Back]
type = ChangeState
triggerall = var(59) = 1 && Roundstate = 2
triggerall = var(49) != 10000
triggerall = numhelper(4010) = 0
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
trigger1 = command = "x+y+z" || command = "b" || command = "z"
trigger1 = statetype = S
trigger1 = stateno = 150 || stateno = 151
trigger1 = prevstateno != 4000 && prevstateno != 4005
ignorehitpause = 1
value = 4100

;---------------------------------------------------------------------------
;アドバンシング（しゃがみ）
[State -1, Run Back]
type = ChangeState
triggerall = var(59) = 1 && Roundstate = 2
triggerall = var(49) != 10000
triggerall = numhelper(4010) = 0
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
trigger1 = command = "x+y+z" || command = "b" || command = "z"
trigger1 = statetype = C
trigger1 = stateno = 152 || stateno = 153
trigger1 = prevstateno != 4000 && prevstateno != 4005
value = 4105
;------------------------------------------------------------------------------

[State -1, 回り込み]
type = ChangeState
value = 799
triggerall = var(59) = 1 && Roundstate = 2
triggerall = var(10) = 0
triggerall = Alive
triggerall = var(49) != 10000
TriggerAll=StateType != A
TriggerAll=Ctrl||stateno=100
TriggerAll=P2BodyDist X>90+(70)||(EnemyNear,AnimTime<=-(20)&&!EnemyNear,Ctrl)
TriggerAll=EnemyNear,HitDefAttr=SC, NA, SA, HA
TriggerAll=InGuardDist
TriggerAll=Random<=var(58)*60||var(58)>9
TriggerAll=EnemyNear,Time>=30||(!Time&&var(58)>9)||var(58)>10||EnemyNear,Ctrl
Trigger1 = EnemyNear,Time>=50||var(58)>9
Trigger2 = PrevStateNo = [5000,5270]
Trigger3 = (PrevStateNo = [120,159])
Trigger4 = EnemyNear,Ctrl

;==============================================================================
; 通常攻撃技
;==============================================================================
;------------------------------------------------------------------------------
[State -1, 立ち強パンチ]
type = ChangeState
value = 210
triggerall = var(59) = 1 && Roundstate = 2
TriggerAll= !inguarddist
triggerall = EnemyNear,statetype != L
triggerall = statetype != A
triggerall = EnemyNear,statetype != A
trigger1 = ctrl || stateno = 100
trigger1 = p2bodydist X = [0,45]
trigger1 = random <= var(58)*98
trigger2 = (stateno = 200) && time > 5
trigger2 = p2bodydist X < 25
trigger2 = random <= var(58)*95

[State -1, 立ち弱パンチ]
type = ChangeState
value = 200
triggerall = var(59) = 1 && Roundstate = 2
TriggerAll= !inguarddist
triggerall = EnemyNear,statetype != L
triggerall = statetype != A
trigger1 = ctrl || stateno = 100
trigger1 = p2bodydist X = [0,60]
trigger1 = EnemyNear,statetype != C
trigger1 = random <= var(58)*98
trigger2 = stateno = 200
trigger2 = time > 6 && movecontact
trigger2 = p2bodydist X = [25,50] 
trigger2 = random <= var(58)*80

[State -1, 前立ち強]
type = ChangeState
value = 250
triggerall = var(59) = 1 && Roundstate = 2
TriggerAll= !inguarddist
triggerall = numhelper(1001) = 0
triggerall = EnemyNear,statetype != L
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = 11
trigger1 = p2bodydist X = [45,75]
trigger1 = random <= var(58)*35
trigger2 = (stateno = 200) && time > 5
trigger2 = p2bodydist X = [45,75]
trigger2 = random <= var(58)*35

[State -1, 立ち強]
type = ChangeState
value = 240
triggerall = var(59) = 1 && Roundstate = 2
TriggerAll= !inguarddist
triggerall = numhelper(1001) = 0
triggerall = EnemyNear,statetype != L
triggerall = statetype != A
trigger1 = ctrl || stateno = 100
trigger1 = prevstateno = 240
trigger1 = p2bodydist X = [45,95]
trigger1 = random <= var(58)*55
trigger2 = (stateno = 200) 
trigger2 = movecontact && time > 5
trigger2 = p2bodydist X = [60,85]
trigger2 = random <= var(58)*85
trigger3 = ctrl || stateno = 100
trigger3 = p2bodydist X = [55,110]
trigger3 = EnemyNear,movetype = H
trigger3 = random <= var(58)*45

;------------------------------------------------------------------------------

[State -1, 挑発]
type = ChangeState
value = 195
triggerall = var(59) = 1 && Roundstate = 2
TriggerAll= !inguarddist
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = (life - P2life) >= 550
trigger1 = random <= (11 - var(58))*2

;------------------------------------------------------------------------------

[State -1, しゃがみ弱パンチ]
type = ChangeState
value = 400
triggerall = var(59) = 1 && Roundstate = 2
TriggerAll= !inguarddist
triggerall = statetype != A
triggerall = EnemyNear,statetype != L
trigger1 = ctrl || stateno = 11 
trigger1 = EnemyNear,statetype != A
trigger1 = p2bodydist X = [0,55]
trigger1 = random <= var(58)*90
trigger2 = stateno = 200
trigger2 = movecontact
trigger2 = EnemyNear,statetype = S
trigger2 = p2bodydist X = [0,35]
trigger2 = random <= var(58)*95

[State -1, しゃがみ強パンチ]
type = ChangeState
value = 410
triggerall = var(59) = 1 && Roundstate = 2
TriggerAll= !inguarddist
triggerall = numhelper(1001) = 0
triggerall = statetype != A
triggerall = EnemyNear,statetype != L
trigger1 = ctrl || stateno = 11 
trigger1 = EnemyNear,statetype != A
trigger1 = p2bodydist X = [56,60]
trigger1 = random <= var(58)*85
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (movecontact && time > 5)
trigger2 = EnemyNear,statetype != A
trigger2 = p2bodydist X = [21,30]
trigger2 = random <= var(58)*90

[State -1, しゃがみ強]
type = ChangeState
value = 442
triggerall = var(59) = 1 && Roundstate = 2
TriggerAll= !inguarddist
triggerall = numhelper(1001) = 0
triggerall = statetype != A
triggerall = EnemyNear,statetype != L
trigger1 = ctrl || stateno = 11 || stateno = 100
trigger1 = EnemyNear,statetype != L
trigger1 = EnemyNear,movetype != H
trigger1 = p2bodydist Y >= -160
trigger1 = p2bodydist X = [0,45] 
trigger1 = random <= var(58)*75
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (movecontact && time > 5)
trigger2 = p2bodydist X = [35,40]
trigger2 = random <= var(58)*90
trigger3 = ctrl
trigger3 = prevstateno = 442
trigger3 = EnemyNear,movetype = H
trigger3 = p2bodydist Y >= -120
trigger3 = p2bodydist X = [5,50] 
trigger3 = random <= var(58)*70

[State -1, しゃがみ強2]
type = ChangeState
value = 440
triggerall = var(59) = 1 && Roundstate = 2
TriggerAll= !inguarddist
triggerall = numhelper(1001) = 0
triggerall = statetype != A
trigger1 = EnemyNear,statetype != L
trigger1 = ctrl || stateno = 11 
trigger1 = EnemyNear,statetype != A
trigger1 = p2bodydist X = [25,65]
trigger1 = random <= var(58)*30
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (movecontact && time > 5)
trigger2 = p2bodydist X > 60
trigger2 = random <= var(58)*70 

;------------------------------------------------------------------------------

[State -1, ジャンプ弱パンチ]
type = ChangeState
value = 600
triggerall = var(59) = 1 && Roundstate = 2
TriggerAll= !inguarddist
triggerall = statetype = A
triggerall = EnemyNear,statetype != L
trigger1 = ctrl
trigger1 = P2bodydist X = [0,35]
trigger1 = P2bodydist Y = [-40,40]
trigger1 = random <= var(58)*95

[State -1, ジャンプ強パンチ]
type = ChangeState
value = 610
triggerall = var(59) = 1 && Roundstate = 2
triggerall = command = "y"
TriggerAll= !inguarddist
triggerall = EnemyNear,statetype != L
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = P2bodydist X = [0,35]
trigger1 = P2bodydist Y = [-40,40]

[State -1, ジャンプ強]
type = ChangeState
value = 640
triggerall = var(59) = 1 && Roundstate = 2
TriggerAll= !inguarddist
triggerall = numhelper(1001) = 0
triggerall = statetype = A
triggerall = EnemyNear,statetype != L
trigger1 = ctrl
trigger1 = P2bodydist X = [35,50]
trigger1 = P2bodydist Y = [-50,60]
trigger1 = random <= var(58)*65
trigger2 = stateno = 600 || stateno = 630
trigger2 = movecontact
trigger2 = random <= var(58)*95



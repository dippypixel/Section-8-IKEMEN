

[Remap]
x = x      ;Ｘボタンの入力判定を実際に押すボタンに割り当てる。
y = y      ;Ｙボタン　　　　　　　　　〃
z = z      ;Ｚボタン　　　　　　　　　〃
a = a      ;Ａボタン　　　　　　　　　〃
b = b      ;Ｂボタン　　　　　　　　　〃
c = c      ;Ｃボタン　　　　　　　　　〃
s = s      ;スタートボタン　　　　　　〃



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



[Command]
name = "metalica_xy"
command = ~F, D, DF, x+y
time = 20
[Command]
name = "metalica_yz"
command = ~F, D, DF, y+z
time = 20
[Command]
name = "metalica_xz"
command = ~F, D, DF, x+z
time = 20


[Command]
name = "Aerosmith_xy"
command =~D,DB, B, x+y
time = 20
[Command]
name = "Aerosmith_yz"
command =~D,DB, B, y+z
time = 20
[Command]
name = "Aerosmith_xz"
command =~D,DB, B, x+z
time = 20


[Command]
name = "mes_xy"
command = ~D, DF, F, x+y
time = 20
[Command]
name = "mes_yz"
command = ~D, DF, F, y+z
time = 20
[Command]
name = "mes_xz"
command = ~D, DF, F, x+z
time = 20



;------------------------------------------------------------------------------
;-| 必殺技 |-------------------------------------------------------------------

[Command]
name = "metalica_x"
command = ~F, D, DF, x

[Command]
name = "metalica_y"
command = ~F, D, DF, y

[Command]
name = "metalica_z"
command = ~F, D, DF, z



[Command]
name = "mes_x"
command = ~D, DF, F, x

[Command]
name = "mes_y"
command = ~D, DF, F, y

[Command]
name = "mes_z"
command = ~D, DF, F, z



[Command]
name = "It_dies_x"
command = ~D, DB, B, x

[Command]
name = "It_dies_y"
command = ~D, DB, B, y

[Command]
name = "It_dies_z"
command = ~D, DB, B, z








[Command]
name = "F_z"
command = F, z

[Command]
name = "F_y"
command = F, y

[Command]
name = "F_x"
command = F, x


;------------------------------------------------------------------------------

[Command]
name = "Mjump"
command =$D,~$U; $D,~1U
time = 20

[Command]
name = "Ljump"
command = $D,$U
time = 15

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
command = x+a
time = 1




[Command]
name = "x+y+z"
command = x+y+z
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



;------------------------------------------------------------------------------
;-| 方向キー |-----------------------------------------------------------------

[Command]
name = "holdfwd" ;必須コマンド名
command = /$F
time = 1

[Command]
name = "holdback";必須コマンド名
command = /$B
time = 1

[Command]
name = "holdup"  ;必須コマンド名
command = /$U
time = 1

[Command]
name = "holdupF"
command = /$UF
time = 1

[Command]
name = "holdupB"
command = /$UB
time = 1


[Command]
name = "holddown"  ;必須コマンド名
command = /$D
time = 1

;============================================================================== 第４部

;------------------------------------------------------------------------------

[Statedef -1] ;←この行は絶対に消さないでね。必須項目です。


;------------------------------------------------------------------------------
;スーパーコンボ
;------------------------------------------------------------------------------

[State -1,（超必殺）エアロスミス（ノーマル）]
type = ChangeState
value = 3500
triggerall = command = "Aerosmith_xy"|| command = "Aerosmith_yz"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3400,3550)
trigger2 = movecontact


[State -1,（超必殺）エアロスミス（掴み）]
type = ChangeState
value = 3400
triggerall = command = "Aerosmith_xz"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3400,3550)
trigger2 = movecontact



[State -1, （超必殺）頭を切り落とす]
type = ChangeState
value = 3000
triggerall = command = "metalica_xy"||command = "metalica_yz"||command = "metalica_xz"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = movecontact




[State -1, （超必殺）ナイフス XY]
type = ChangeState
value = 3100
triggerall = command = "mes_xy"
triggerall = power >= 1000
triggerall = NumHelper(1711) = 0
triggerall = NumProjID(1711) = 0
trigger1 = statetype = S
trigger1 =  var(20)=0
trigger2 = stateno != [3100,3300)
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = (stateno = 3100)
trigger2 = (time > 9) || (movecontact && time > 5)
trigger3 = StateNo  = 0

[State -1, （超必殺）ナイフス XZ]
type = ChangeState
value = 3200
triggerall = command = "mes_xz"
triggerall = power >= 1000
triggerall = NumHelper(1711) = 0
triggerall = NumProjID(1711) = 0
trigger1 = statetype = S
trigger1 =  var(20)=0
trigger2 = stateno != [3100,3300)
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = (stateno = 3200)
trigger2 = (time > 9) || (movecontact && time > 5)
trigger3 = StateNo  = 0

[State -1, （超必殺）ナイフス YZ]
type = ChangeState
value = 3300
triggerall = command = "mes_yz"
triggerall = power >= 1000
triggerall = NumHelper(1711) = 0
triggerall = NumProjID(1711) = 0
trigger1 = statetype = S
trigger1 =  var(20)=0
trigger2 = stateno != [3100,3300)
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = (stateno = 3300)
trigger2 = (time > 9) || (movecontact && time > 5)
trigger3 = StateNo  = 0

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

[State -1, 変数の例２]
type = VarSet
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 
trigger2 = movecontact
var(1) = 1

;------------------------------------------------------------------------------
;必殺技
;------------------------------------------------------------------------------



[State -1, （必殺）「殺り方」はできている]
type = ChangeState
value = 1100
triggerall = command ="metalica_x"||command ="metalica_y"||command ="metalica_z"
trigger1 = var(1)
trigger1 = var(12) = 0


;------------------------------------------------------------------------------



[State -1, （必殺）メス]
type = ChangeState
value = 1300
triggerall = command = "mes_x" ||command = "mes_y"||command = "mes_z"
triggerall = var(12) = 1
triggerall = NumHelper(1711) = 0 
triggerall = NumProjID(1711) = 0
trigger1 = var(1)

[State -1, （必殺）ナイフ]
type = ChangeState
value = 1200
triggerall = command = "mes_x" ||command = "mes_y"||command = "mes_z"
triggerall = var(12) = 0
trigger1 = var(1)
;------------------------------------------------------------------------------


[State -1,（必殺）死んでもらう]
type = ChangeState
value = 1310  
triggerall = command = "It_dies_x"||command = "It_dies_y"||command = "It_dies_z"
trigger1 = var(1)



;------------------------------------------------------------------------------
;------------------------------------------------------------------------------



[State -1, 矛盾]
type = ChangeState
value = 1020
triggerall = command = "F_z"
Trigger1 = enemy,stateno != 1025
Trigger1 = enemy,stateno != 1026
Trigger1 = enemy,stateno != 1027
Trigger1 = enemy,stateno != 1028
trigger1 = var(1) ;上で設定した変数が有効になった時

[State -1, 前弱攻撃]
type = ChangeState
value = 1000
triggerall = command = "F_x"
trigger1 = var(1)

[State -1, 前中攻撃]
type = ChangeState
value = 1010
triggerall = command = "F_y"
trigger1 = var(1)



;==============================================================================
; 移動関連
;==============================================================================
;------------------------------------------------------------------------------

[State -1, 走る]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, バックステップ]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;==============================================================================
; 特殊技
;==============================================================================
;------------------------------------------------------------------------------
;回り込み
[State -1]
type = ChangeState
value = 650
triggerall = command = "c"
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = statetype != A && ctrl



;------------------------------------------------------------------------------


;==============================================================================
; 通常攻撃技
;==============================================================================
;------------------------------------------------------------------------------

[State -1,立ち弱攻撃]
type = changestate
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl =1
trigger2 = stateno = 200
trigger2 = time > 6


[State -1, 立ち中攻撃]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5



[State -1, 立ち強攻撃]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 210) && time > 6
;------------------------------------------------------------------------------

[State -1, 挑発]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;------------------------------------------------------------------------------

[State -1, しゃがみ弱攻撃]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

[State -1, しゃがみ中攻撃]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) 
trigger2 = (time > 9) || (movecontact && time > 5)


[State -1, しゃがみ強攻撃]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) 
trigger2 = (time > 9) || (movecontact && time > 5)

;------------------------------------------------------------------------------

[State -1, ジャンプ弱攻撃]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 7

[State -1, ジャンプ中攻撃]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact


[State -1, ジャンプ強攻撃]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 610
trigger2 = movecontact

;------------------------------------------------------------------------------
;スタンドモード
[State -1, スタンドＯＮ]
type = ChangeState
value = 1600
triggerall = var(12) = 0
triggerall = command = "a" && command != "x" && command != "y" && command != "z"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [100,105]

[State -1, スタンドＯＮ（座り）]
type = ChangeState
value = 1610
triggerall = var(12) = 0
triggerall = command = "a" && command != "x" && command != "y" && command != "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = [100,105]


;スタンドモード解除
[State -1, スタンドＯＦＦ]
type = ChangeState
value = 1601
triggerall = var(12) = 1
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [100,105]


[State -1, スタンドＯＦＦ（座り）]
type = ChangeState
value = 1611
triggerall = var(12) = 1
triggerall = command = "a"
triggerall = command = "holddown"

trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = [100,105]
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------

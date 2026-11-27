

[Remap]
x = x      ;Ｘボタンの入力判定を実際に押すボタンに割り当てる。
y = y      ;Ｙボタン　　　　　　　　　〃
z = z      ;Ｚボタン　　　　　　　　　〃
a = a      ;Ａボタン　　　　　　　　　〃
b = b      ;Ｂボタン　　　　　　　　　〃
c = c      ;Ｃボタン　　　　　　　　　〃
s = s      ;スタートボタン　　　　　　〃


;コマンドの入力受付のデフォルト設定の変更
[Defaults]
;入力受付時間のデフォルト設定（1～）
command.time = 15
;コマンドを入力してキーを離した後の効果持続時間（1～30）
command.buffer.time = 1

;---|AI Commands|-----------------------------------------------------------
[Command]
Name = "AI_00"
Command = a, a
Time = 0
[Command]
Name = "AI_01"
Command = a, b
Time = 0
[Command]
Name = "AI_02"
Command = a, c
Time = 0
[Command]
Name = "AI_03"
Command = a, x
Time = 0
[Command]
Name = "AI_04"
Command = a, y
Time = 0
[Command]
Name = "AI_05"
Command = a, z
Time = 0
[Command]
Name = "AI_06"
Command = a, s
Time = 0
[Command]
Name = "AI_07"
Command = b, a
Time = 0
[Command]
Name = "AI_08"
Command = b, b
Time = 0
[Command]
Name = "AI_09"
Command = b, c
Time = 0
[Command]
Name = "AI_10"
Command = b, x
Time = 0
[Command]
Name = "AI_11"
Command = b, y
Time = 0
[Command]
Name = "AI_12"
Command = b, z
Time = 0
[Command]
Name = "AI_13"
Command = b, s
Time = 0
[Command]
Name = "AI_14"
Command = c, a
Time = 0
[Command]
Name = "AI_15"
Command = c, b
Time = 0
[Command]
Name = "AI_16"
Command = c, c
Time = 0
[Command]
Name = "AI_17"
Command = c, x
Time = 0
[Command]
Name = "AI_18"
Command = c, y
Time = 0
[Command]
Name = "AI_19"
Command = c, z
Time = 0
[Command]
Name = "AI_20"
Command = c, s
Time = 0
[Command]
Name = "AI_21"
Command = x, a
Time = 0
[Command]
Name = "AI_22"
Command = x, b
Time = 0
[Command]
Name = "AI_23"
Command = x, c
Time = 0
[Command]
Name = "AI_24"
Command = x, x
Time = 0
[Command]
Name = "AI_25"
Command = x, y
Time = 0
[Command]
Name = "AI_26"
Command = x, z
Time = 0
[Command]
Name = "AI_27"
Command = x, s
Time = 0
[Command]
Name = "AI_28"
Command = y, a
Time = 0
[Command]
Name = "AI_29"
Command = y, b
Time = 0
[Command]
Name = "AI_30"
Command = y, c
Time = 0
[Command]
Name = "AI_31"
Command = y, x
Time = 0
[Command]
Name = "AI_32"
Command = y, y
Time = 0
[Command]
Name = "AI_33"
Command = y, z
Time = 0
[Command]
Name = "AI_34"
Command = y, s
Time = 0
[Command]
Name = "AI_35"
Command = s, a
Time = 0
[Command]
Name = "AI_36"
Command = s, b
Time = 0
[Command]
Name = "AI_37"
Command = s, c
Time = 0
[Command]
Name = "AI_38"
Command = s, x
Time = 0
[Command]
Name = "AI_39"
Command = s, y
Time = 0
[Command]
Name = "AI_40"
Command = s, z
Time = 0
[Command]
Name = "AI_41"
Command = s, s
Time = 0
[Command]
Name = "AI_42"
Command = U, U
Time = 0
[Command]
Name = "AI_43"
Command = U, F
Time = 0
[Command]
Name = "AI_44"
Command = U, D
Time = 0
[Command]
Name = "AI_45"
Command = U, B
Time = 0
[Command]
Name = "AI_46"
Command = F, U
Time = 0
[Command]
Name = "AI_47"
Command = F, F
Time = 0
[Command]
Name = "AI_48"
Command = F, D
Time = 0
[Command]
Name = "AI_49"
Command = F, B
Time = 0

;-| 超必殺技 |-----------------------------------------------------------
;※名前が同じならば、違うコマンドでも同じステートの技を出す事が可能。
[Command]
name = "モンキーなんだよー"
command = ~F, D, DF, x+y
time = 18

[Command]
name = "モンキーなんだよー"
command = ~F, D, DF, y+z
time = 18

[Command]
name = "モンキーなんだよー"
command = ~F, D, DF, z+x
time = 18

[Command]
name = "モンキーなんだよー"
command = ~F, D, DF, x+y+z
time = 18

[Command]
name = "モンキーなんだよー"
command = ~F, D, DF, b
time = 18

[Command]
name = "モンキーなんだよー"
command = ~F, D, DF, ~b
time = 18
;------------------------------------------------------------------------
[Command]
name = "Eye"
command = ~D, DF, F, x+y
time = 18

[Command]
name = "Eye"
command = ~D, DF, F, y+z
time = 18

[Command]
name = "Eye"
command = ~D, DF, F, z+x
time = 18

[Command]
name = "Eye"
command = ~D, DF, F, x+y+z
time = 18

[Command]
name = "Eye"
command = ~D, DF, F, b
time = 18

[Command]
name = "Eye"
command = ~D, DF, F, ~b
time = 18
;--------------
[Command]
name = "Eye2"
command = ~D, DF, F, x+y
time = 18

[Command]
name = "Eye3"
command = ~D, DF, F, y+z
time = 18

[Command]
name = "Eye4"
command = ~D, DF, F, z+x
time = 18

[Command]
name = "Eye5"
command = ~D, DF, F, x+y+z
time = 18

[Command]
name = "Eye6"
command = ~D, DF, F, b
time = 18

[Command]
name = "必殺空裂眼刺驚"
command = ~F, z, y, x, D
time = 30

-------------------------------------------------------------------------
[Command]
name = "reitou"
command = ~D, DB, B, x+y
time = 18

[Command]
name = "reitou"
command = ~D, DB, B, y+z
time = 18

[Command]
name = "reitou"
command = ~D, DB, B, z+x
time = 18

[Command]
name = "reitou"
command = ~D, DB, B, x+y+z
time = 18

[Command]
name = "reitou"
command = ~D, DB, B, b
time = 18

[Command]
name = "reitou"
command = ~D, DB, B, ~b
time = 18
;-| 必殺技 |------------------------------------------------------------
[Command]
name = "Counter"
command = ~B, D, DB, x

[Command]
name = "Counter"
command = ~B, D, DB, y

[Command]
name = "Projcounter"
command = ~B, D, DB, z

[Command]
name = "Counter"
command = ~B, D, DB, b

[Command]
name = "kika"
command = ~F, D, DF, x

[Command]
name = "kika"
command = ~F, D, DF, y

[Command]
name = "kika"
command = ~F, D, DF, z

[Command]
name = "kika"
command = ~F, D, DF, b

[Command]
name = "kika2"
command = F, D, DF, x

[Command]
name = "kika2"
command = F, D, DF, y

[Command]
name = "kika2"
command = F, D, DF, z

[Command]
name = "kika2"
command = F, D, DF, b

[Command]
name = "MudaMuda-x"
command = ~D, DF, F, x

[Command]
name = "MudaMuda-y"
command = ~D, DF, F, y

[Command]
name = "MudaMuda-z"
command = ~D, DF, F, z

[Command]
name = "MudaMuda-z"
command = ~D, DF, F, b

[Command]
name = "nazimuzo"
command = ~D, DB, B, x

[Command]
name = "nazimuzo"
command = ~D, DB, B, y

[Command]
name = "nazimuzo"
command = ~D, DB, B, z

[Command]
name = "nazimuzob"
command = ~D, DB, B, b

[Command]
name = "WRRRYYYY"
command = ~D, D,  x

[Command]
name = "WRRRYYYY"
command = ~D, D,  y

[Command]
name = "WRRRYYYY"
command = ~D, D,  z

[Command]
name = "WRRRYYYY"
command = ~D, D,  b

[Command]
name = "WRRRYYYY"
command = D, U

[Command]
name = "WRRRYYYY"
command = D, UF

[Command]
name = "WRRRYYYY"
command = D, UB

[Command]
name = "D.z"
command = ~F, F,  z

[Command]
name = "空裂眼刺驚"
command = ~F, z, y, x, F
time = 30

;-| スペース用 |---------------------------------------------------
[Command]
name = "rrr"
command = /$x+y,D
time = 1

[Command]
name = "rrr2"
command = /$y+z,D
time = 1

[Command]
name = "rrr3"
command = /$z+x,D
time = 1

[Command]
name = "rrr4"
command = /$x+y+z,D
time = 1

[Command]
name = "rrr5"
command = /$b,D
time = 1
;-| キー２回連続入力 |---------------------------------------------------
[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "FF2"
command = ~F
time = 1

[Command]
name = "BB"
command = B, B
time = 10
;-| 同時押し |-----------------------------------------------------------
[Command]
name = "recovery"
command = x+y
time = 1

;-| 方向キー＋ボタン |---------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| ボタン単発 |---------------------------------------------------------
[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "b"
command = x+z+y
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
;-| 方向キー |-----------------------------------------------------------
[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup"    ;必須コマンド名。おしっぱなし、789が。
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1

[Command]
name = "holdb"
command = /$b
time = 1

[Command]
name = "holdx+y"
command = /$x+y
time = 1

[Command]
name = "holdy+z"
command = /$y+z
time = 1

[Command]
name = "holdx+z"
command = /$x+z
time = 1

[Command]
name = "holdx+y+z"
command = /$x+y+z
time = 1

[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "holdc"
command = /c
time = 1

[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "U"
command = UF
time = 1

[Command]
name = "U"
command = UB
time = 1

[Command]
name = "U"
command = U
time = 1

[command]
name = "F"
command = F
time = 1

[command]
name = "B"
command = B
time = 1

[command]
name = "D"
command = D
time = 1

[Statedef -1]
;========================================================================
; 超必殺技
;========================================================================
;空烈眼刺驚
[State -1, Taunt]
type = ChangeState
value = 3618
TriggerAll = Var(59)<=0
triggerall = command = "必殺空裂眼刺驚"
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = ctrl || stateno = 40 || (stateno = 100 && time >= 4) || stateno = 101 || (stateno = 105 && time >= 4)
trigger2 = StateNo = 200
trigger3 = StateNo = 210
trigger4 = StateNo = 240
trigger5 = StateNo = 400
trigger6 = StateNo = 410
trigger7 = StateNo = 440
ignorehitpause = 0
;------------------------------------------------------------------------
[State -1, モンキーなんだよー];ゲージレベル１
type = ChangeState
value = 30003
TriggerAll = Var(59)<=0
triggerall = command = "モンキーなんだよー"
triggerall = var(58) = 1
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
;------------------------------------------------------------------------
[State -1, 空裂眼刺驚s];ゲージレベル１
type = ChangeState
value = 312323
TriggerAll = Var(59)<=0
triggerall = power >= 1000
trigger1 = stateno = 30011
trigger1 = command = "rrr"
trigger2 = stateno = 30012
trigger2 = command = "rrr2"
trigger3 = stateno = 30013
trigger3 = command = "rrr3"
trigger4 = stateno = 30014
trigger4 = command = "rrr4"
trigger5 = stateno = 30015
trigger5 = command = "rrr5"

[State -1, 空裂眼刺驚];ゲージレベル１
type = ChangeState
value = 30001
TriggerAll = Var(59)<=0
triggerall = command = "Eye"
triggerall = var(58) = 0
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3050,3100)
trigger2 = movecontact
trigger3 = (StateNo = 1300) && (Time = [12,38])

[State -1, 空裂眼刺驚2]
type = ChangeState
value = 30002
TriggerAll = Var(59)<=0
triggerall = command = "a"
trigger1 = stateno = 30001
trigger1 = stateno = 30001
trigger1 = NumHelper(3100) = 0

[State -1, 空裂眼刺驚2];ゲージレベル１
type = ChangeState
value = 30011
TriggerAll = Var(59)<=0
triggerall = command = "Eye2"
triggerall = var(58) = 1
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl

[State -1, 空裂眼刺驚3];ゲージレベル１
type = ChangeState
value = 30012
TriggerAll = Var(59)<=0
triggerall = command = "Eye3"
triggerall = var(58) = 1
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl

[State -1, 空裂眼刺驚4];ゲージレベル１
type = ChangeState
value = 30013
TriggerAll = Var(59)<=0
triggerall = command = "Eye4"
triggerall = var(58) = 1
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl

[State -1, 空裂眼刺驚5];ゲージレベル１
type = ChangeState
value = 30014
TriggerAll = Var(59)<=0
triggerall = command = "Eye5"
triggerall = var(58) = 1
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl

[State -1, 空裂眼刺驚6];ゲージレベル１
type = ChangeState
value = 30015
TriggerAll = Var(59)<=0
triggerall = command = "Eye6"
triggerall = var(58) = 1
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
;----------------------------------------------------------------------
[State -1, 死の忘却];ゲージレベル１
type = ChangeState
value = 30000
TriggerAll = Var(59)<=0
triggerall = command = "reitou"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
;========================================================================
; 必殺技
;========================================================================
[State -1, 変数の例１]
type = VarSet
trigger1 = 1
var(1) = 0

[State -1, 変数の例２]
type = VarSet
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440;足払いのステートではない時
trigger2 = movecontact
var(1) = 1
;------------------------------------------------------------------------
;空烈眼刺驚
[State -1, Taunt]
type = ChangeState
value = 1618
TriggerAll = Var(59)<=0
triggerall = command = "空裂眼刺驚"
triggerall = statetype != A
trigger1 = ctrl || stateno = 40 || (stateno = 100 && time >= 4) || stateno = 101 || (stateno = 105 && time >= 4)
trigger2 = StateNo = 200
trigger3 = StateNo = 210
trigger4 = StateNo = 240
trigger5 = StateNo = 400
trigger6 = StateNo = 410
trigger7 = StateNo = 440
ignorehitpause = 0

;------------------------------------------------------------------------
[State -1, 気化冷凍法]
type = ChangeState
value = 1400
TriggerAll = Var(59)<=0
triggerall = command = "kika"
triggerall = stateno != 441
trigger1 = var(1) && stateno != 440
trigger2 = stateno = 440 && time >= 18 && movecontact

[State -1, 気化冷凍法]
type = ChangeState
value = 1400
TriggerAll = Var(59)<=0
triggerall = command = "kika2"
trigger1 = movecontact && stateno = 441
;------------------------------------------------------------------------
[State -1, 無駄無駄強]
type = ChangeState
value = 1020
TriggerAll = Var(59)<=0
triggerall = command = "MudaMuda-z"
trigger1 = var(1)

[State -1, 無駄無駄弱]
type = ChangeState
value = 1000
TriggerAll = Var(59)<=0
triggerall = command = "MudaMuda-x"
trigger1 = var(1)

[State -1, 無駄無駄中]
type = ChangeState
value = 1010
TriggerAll = Var(59)<=0
triggerall = command = "MudaMuda-y"
trigger1 = var(1)
trigger1 = stateno != 410
trigger2 = var(7) = 1
trigger2 = stateno = 410
;------------------------------------------------------------------------
[State -1, カウンター気化]
type = ChangeState
value = 1200
TriggerAll = Var(59)<=0
triggerall = command = "Counter"
trigger1 = var(1)
;------------------------------------------------------------------------
[State -1, 飛び道具カウンター]
type = ChangeState
value = 1300
TriggerAll = Var(59)<=0
triggerall = command = "Projcounter"
trigger1 = var(1)
;-----------------------------------------------------------------------
[State -1, なじむぞっ]
type = ChangeState
value = 1100
TriggerAll = Var(59)<=0
triggerall = command = "nazimuzo"
trigger1 = stateno = 200 && (time >= 4)
trigger2 = stateno = 210 && (time >= 11)
trigger3 = stateno = 240 && (time >= 4)
trigger4 = stateno = 400 && (time >= 3)
trigger5 = stateno = 410 && (time >= 10)
trigger6 = stateno = 440 && (time >= 12)
trigger7 = stateno = 441 && (time >= 12)
trigger8 = stateno = 1000 && (time >= 10)
trigger9 = stateno = 1010 && (time >= 16)
trigger10= stateno = 1020 && (time >= 23)
trigger11= stateno = 1001 && (time >= 4)
trigger12= stateno = 1002 && (time >= 8)
trigger12= 1 || var(30) := -1
trigger13= stateno = 1011 && (time >= 18)
trigger14= stateno = 1012 && (time >= 23)
trigger14= 1 || var(30) := -1
trigger15= stateno = 1021 && (time >= 10)
trigger16= stateno = 1022 && (time >= 26)
trigger16= 1 || var(30) := -1
trigger17= stateno = 1618 && (time > 48)
trigger18= stateno = 1220 && anim = 901
trigger19= ctrl
trigger19= statetype != A

[State -1, なじむぞっ]
type = ChangeState
value = 1100
TriggerAll = Var(59)<=0
triggerall = command = "nazimuzob"
trigger1 = stateno = 200 && (time >= 4)
trigger2 = stateno = 210 && (time >= 11)
trigger3 = stateno = 240 && (time >= 4)
trigger4 = stateno = 400 && (time >= 3)
trigger5 = stateno = 410 && (time >= 10)
trigger6 = stateno = 440 && (time >= 12)
trigger7 = stateno = 441 && (time >= 12)
trigger8 = stateno = 1000 && (time >= 10)
trigger9 = stateno = 1010 && (time >= 16)
trigger10= stateno = 1020 && (time >= 23)
trigger11= stateno = 1001 && (time >= 4)
trigger12= stateno = 1002 && (time >= 8)
trigger12= 1 || var(30) := -1
trigger13= stateno = 1011 && (time >= 18)
trigger14= stateno = 1012 && (time >= 23)
trigger14= 1 || var(30) := -1
trigger15= stateno = 1021 && (time >= 10)
trigger16= stateno = 1022 && (time >= 26)
trigger16= 1 || var(30) := -1
trigger17= stateno = 1618 && (time > 48)
trigger18= stateno = 1220 && anim = 901
trigger18= power < 2000
trigger19= ctrl
trigger19= statetype != A

[State -1, なじむぞっ];空中
type = null;ChangeState
value = 1100321
TriggerAll = Var(59)<=0
triggerall = command = "nazimuzo"
trigger1 = statetype = A
trigger1 = palno >= 7
;------------------------------------------------------------------------
[State -1, WRRRYYYY]
type = ChangeState
value = 1548
TriggerAll = Var(59)<=0
triggerall = command = "WRRRYYYY"
triggerall = var(38) = 0
trigger1 = var(1)
trigger2 = stateno = 440 && (time > 12)
trigger2 = var(11) = 0
trigger2 = movecontact
trigger3 = stateno = 440 && (time > 5)
trigger3 = var(11) >= 1
trigger3 = movecontact
;trigger1 = ctrl
;trigger2 = var(1)
;trigger2 = stateno = 240
;trigger2 = var(8) = 1
;trigger3 = var(1)
;trigger3 = stateno = 440

[State -1, ダッシュ立ち強]
type = ChangeState
value = 100
TriggerAll = Var(59)<=0
triggerall = command = "D.z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = 1 || var(14) := 1
trigger2 = (stateno = 200) && time > 5
trigger2 = 1 || var(14) := 1
trigger3 = (stateno = 230) && time > 6
trigger3 = 1 || var(14) := 1
;========================================================================
; 移動関連
;========================================================================
[State -1, 走る]
type = ChangeState
value = 100
TriggerAll = Var(59)<=0
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, バックステップ]
type = ChangeState
value = 105
TriggerAll = Var(59)<=0
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;========================================================================
; 特殊技
;========================================================================
[State -1, 投げ技]
type = ChangeState
value = 800
TriggerAll = Var(59)<=0
triggerall = command = "z"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
;trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

[State -1, 投げ技]
type = ChangeState
value = 800
TriggerAll = Var(59)<=0
triggerall = command = "z"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = stateno = 240

[State -1, 回り込み]
type = ChangeState
TriggerAll = Var(59)<=0
triggerall = ctrl
triggerall = command = "b"
trigger1 = statetype != A
value = 702
;========================================================================
; 通常攻撃技
;========================================================================
[State -1, 立ち弱]
type = ChangeState
value = 200
TriggerAll = Var(59)<=0
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6
trigger3 = stateno = 100 ;ダッシュ
trigger3 = time >= 4
trigger4 = stateno = 105 ;ダッシュ
trigger5 = time >= 3
trigger5 = stateno = 400

[State -1, 立ち強]
type = ChangeState
value = 210
TriggerAll = Var(59)<=0
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6
trigger4 = stateno = 100 ;ダッシュ
trigger4 = time >= 4
trigger5 = stateno = 105 ;ダッシュ

[State -1, 立ち中]
type = ChangeState
value = 240
TriggerAll = Var(59)<=0
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6
trigger4 = stateno = 100 ;ダッシュ
trigger4 = time >= 4
trigger5 = stateno = 105 ;ダッシュ
;------------------------------------------------------------------------
[State -1, 気化冷凍モード突入]
type = ChangeState
value = 300082
TriggerAll = Var(59)<=0
triggerall = command = "a"
triggerall = var(25) = 0
triggerall = statetype != A
triggerall = power >= 1
trigger1 = var(1)
trigger2 = stateno = 440 && (time > 12)
trigger2 = var(11) = 0
trigger2 = movecontact
trigger3 = stateno = 440 && (time > 5)
trigger3 = var(11) > 0
trigger3 = movecontact

[State -1, 気化冷凍モード終了]
type = ChangeState
value = 300088
triggerall = statetype != A
trigger1 = command = "a"
trigger1 = power >= 1
trigger1 = ctrl
trigger1 = var(25) = 1
Trigger1 = Var(59)<=0
trigger2 = var(25) = 3
trigger2 = ctrl
Trigger3 = Var(59)
trigger3 = var(25) = 3
trigger3 = stateno = 22
Trigger4 = Var(59)
trigger4 = var(25) = 3
trigger4 = stateno = 23
Trigger5 = Var(59)
trigger5 = var(25) = 3
trigger5 = stateno = 24
;------------------------------------------------------------------------
[State -1, 挑発]
type = ChangeState
value = 195
TriggerAll = Var(59)<=0
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = stateno != 196
----------------------------------------------------
[State -1, しゃがみ弱パンチ]
type = ChangeState
value = 400
TriggerAll = Var(59)<=0
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 100 ;ダッシュ
trigger2 = time >= 4
trigger3 = stateno = 105 ;ダッシュ

[State -1, しゃがみ強パンチ]
type = ChangeState
value = 410
TriggerAll = Var(59)<=0
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl || (stateno = 400 && movecontact)
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)
trigger3 = stateno = 100 ;ダッシュ
trigger3 = time >= 4
trigger4 = stateno = 105 ;ダッシュ

[State -1, しゃがみ強キック]
type = ChangeState
value = 440
TriggerAll = Var(59)<=0
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = command != "holdfwd"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)
trigger3 = stateno = 100 ;ダッシュ
trigger3 = time >= 4
trigger4 = stateno = 105 ;ダッシュ
trigger5 = stateno = 400 && var(1)

[State -1, しゃがみ強キック]
type = ChangeState
value = 441
TriggerAll = Var(59)<=0
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = command = "holdfwd"
trigger1 = statetype = C
trigger1 = ctrl || (stateno = 400 && movecontact)
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)
trigger3 = stateno = 100 ;ダッシュ
trigger3 = time >= 4
trigger4 = stateno = 105 ;ダッシュ
;------------------------------------------------------------------------
[State -1, ジャンプ弱]
type = ChangeState
value = 600
TriggerAll = Var(59)<=0
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, ジャンプ強]
type = ChangeState
value = 610
TriggerAll = Var(59)<=0
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, ジャンプ中]
type = ChangeState
value = 640
TriggerAll = Var(59)<=0
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
;--------------------------------------------------------------------------
;アドバンシング（立ち）
[State -1, Run Back]
type = ChangeState
TriggerAll = Var(59)<=0
triggerall = command = "b" || command = "z"
trigger1 = statetype = S
trigger1 = stateno = 150 || stateno = 151
trigger1 = prevstateno != 4000 && prevstateno != 4005
ignorehitpause = 1
value = 4000
;---------------------------------------------------------------------------
;アドバンシング（しゃがみ）
[State -1, Run Back]
type = ChangeState
TriggerAll = Var(59)<=0
triggerall = command = "b" || command = "z"
trigger1 = statetype = C
trigger1 = stateno = 152 || stateno = 153
trigger1 = prevstateno != 4000 && prevstateno != 4005
value = 4005
;---------------------------------------------------------------------------
;ガーキャン
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1800
TriggerAll = Var(59)<=0
triggerall = numhelper(4010) = 0
trigger1 = command = "MudaMuda-z" || command = "MudaMuda-y" || command = "MudaMuda-x"
triggerall = var(2) = 0
triggerall = statetype != A
trigger1 = (stateno = [150,153])
;AI--------------------------------------------------------------------------

;AI Command Check
[State -1, AI Command]
Type = VarSet
TriggerAll = Var(59)=0 && !isHelper
trigger1 = command = "AI_01" || command = "AI_02" || command = "AI_03" || command = "AI_04"
trigger2 = command = "AI_05" || command = "AI_06" || command = "AI_07" || command = "AI_08"
trigger3 = command = "AI_09" || command = "AI_10" || command = "AI_11" || command = "AI_12"
trigger4 = command = "AI_13" || command = "AI_14" || command = "AI_15" || command = "AI_16"
trigger5 = command = "AI_17" || command = "AI_18" || command = "AI_19" || command = "AI_20"
Trigger6 = Command = "AI_21" || Command = "AI_22" || Command = "AI_23" || Command = "AI_24"
Trigger7 = Command = "AI_24" || Command = "AI_26" || Command = "AI_27" || Command = "AI_28"
Trigger8 = Command = "AI_29" || Command = "AI_30" || Command = "AI_31" || Command = "AI_32"
Trigger9 = Command = "AI_33" || Command = "AI_34" || Command = "AI_35" || Command = "AI_36"
Trigger10 = Command = "AI_37" || Command = "AI_38" || Command = "AI_39" || Command = "AI_40"
Trigger11 = Command = "AI_41" || Command = "AI_42" || Command = "AI_43" || Command = "AI_44"
Trigger12 = Command = "AI_45" || Command = "AI_46" || Command = "AI_47" || Command = "AI_48"
Trigger13 = Command = "AI_49" || Command = "AI_00"
Trigger14 = !IsHelper
Trigger14 = NumHelper(123321) = 1
Trigger14 = Helper(123321),var(59)
;Trigger15 = 1 || var(43) := 1;AI即起動スイッチ

V = 59
Value = 1
IgnoreHitPause = 1

;-------------------------------------------------------------------------

;===========================================================================================
;AIサポート用ヘルパー(起動)
;===========================================================================================

;画面端検出ヘルパー
[state -3, 画面右端検出用ヘルパー]
type  = helper
trigger1 = !NumHelper(21000)
helpertype = normal
name = "migihasi"
PosType = left 
stateno = 21000
ID = 21000
facing = -1
pos=160,9999
pausemovetime  = 2147483647
supermovetime  = 2147483647
persistent = 0
ignorehitpause = 1
keyctrl = 0
ownpal = 1

[State -3, 念のため↓も付けておく]
type=changestate
trigger1= ishelper
trigger1= ishelper(21000)
trigger1= stateno !=21000
value=21000

[state -3, 画面左端検出用ヘルパー]
type = helper
trigger1 = !NumHelper(25000)
helpertype = normal
name = "hidarihasi"
PosType = left
stateno = 25000
ID = 25000
facing = 1
pos=160,9999
pausemovetime  = 2147483647
supermovetime  = 2147483647
persistent = 0
ignorehitpause = 1
keyctrl = 0
ownpal = 1

[state -3, めくりガード用ヘルパー]
type = helper
trigger1 = !NumHelper(55005)
helpertype = normal
name = "mekuri"
PosType = left
stateno = 55005
ID = 55005
facing = 1
pos=160,9999
pausemovetime  = 2147483647
supermovetime  = 2147483647
persistent = 0
ignorehitpause = 1
keyctrl = 0
ownpal = 1

[State -3, 念のため↓も付けておく]
type=changestate
trigger1= ishelper
trigger1= ishelper(25000)
trigger1= stateno !=25000
value=25000

;---------------------------------------------------------------------------
;飛び道具感知ヘルパー
;---------------------------------------------------------------------------
[State -3, asas];相手のprojもしくはhelperが増えた瞬間ヘルパー呼び出し
type=helper
triggerall = !ishelper
triggerall = !NumHelper(50005)
triggerall = NumEnemy
triggerall = NumHelper(21000)
trigger1 = helper(21000),var(20) <= 0 ; 以下,監視で代入しといた値より相手のprojやhelperが大きい時
trigger1 = Enemy(0),numproj > 0 ;
trigger2 = helper(21000),var(21)< Enemy(0),numhelper ;
trigger3 = helper(21000),var(22) <= 0 ;
trigger3 = Enemy(numenemy=2),numproj > 0 ;
trigger4 = helper(21000),var(23) < Enemy(numenemy=2),numhelper ;
helpertype=normal
name = "P-H"
stateno = 50005
ID = 50005
pos = 0,9999
keyctrl = 0
pausemovetime = 2147483647
supermovetime = 2147483647
persistent = 0

;念のため↓も付けておく
[State -3, 関係無いステートに行かないように]
type=changestate
trigger1= ishelper(50005)
trigger1= stateno!=50005
value=50005

[State -3, AI起動用ヘルパー]
type = helper
trigger1 = !NumHelper(123321)
trigger1 = roundstate = 2
trigger1 = alive
trigger1 = var(59) = 0
Trigger1 = PrevStateNo=5900||(PrevStateNo=[190,199])
Trigger1 = ctrl && stateno = 0
helpertype = normal
name = "AI"
stateno = 123321
ID = 123321
pos = 9999,9999
keyctrl = 1
pausemovetime=2147483647
supermovetime=2147483647
persistent = 0

;念のため↓も付けておく
[State -3, 関係無いステートに行かないように]
type=changestate
trigger1 = ishelper(123321)
trigger1 = stateno != 123321
value = 123321
;------------------------------------------------------------------------------------------
;ガチャガチャ
[State -3, tag]
type = varset
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = var(57) = 1
triggerall = life < 600
trigger1 = 1
var(59) = 0

;タッグ用生死判別
[State -3, tag]
type = varset
trigger1 = NumEnemy >= 0
var(51) = IfElse((!EnemyNear,Alive && NumEnemy = 2),1,0)

;コンボルートリセット
[State -3, tag]
type = varset
trigger1 = var(50) = 0
trigger1 = var(52) != 0
var(52) = 0

;コンボルートリセット
[State -3, tag]
type = varadd
trigger1 = var(50) != 0
trigger1 = 1
var(52) = 1

;コンボルートリセット
[State -3, tag]
type = varset
trigger1 = gametime = 0
trigger2 = var(50) = 2
trigger2 = var(52) = 120
trigger3 = var(50) = 4
trigger3 = var(52) = 120
trigger4 = var(50) = [5,24]
trigger4 = var(52) = 400
trigger5 = var(50) = [5,24]
trigger5 = enemynear(var(51)),movetype != H
trigger6 = var(50) = [25,26]
trigger6 = var(52) = 120
trigger7 = var(50) = [27,30]
trigger7 = var(52) = 400
trigger8 = var(50) = [31,32]
trigger8 = var(52) = 400
trigger9 = var(50) = 33
trigger9 = var(52) = 400
trigger10 = var(50) = 34
trigger10 = var(52) = 40
trigger11 = movetype = H
var(50) = 0

;気化冷凍モードリセット
[State -3, tag]
type = varadd
trigger1 = var(49) != 0
trigger1 = var(25) = 1
var(49) = 1

[State -3, tag]
type = DisplayToClipboard
trigger1 = 1
text = "var(59) = %d var(57) = %d var(50) = %d\nP2Bodydist x = %f P2Bodydist y = %f"
params = var(59),var(57),var(50),P2Bodydist x,P2Bodydist y
;---------------------------------------------------------------------------
;開幕行動
;---------------------------------------------------------------------------
[State 105, AI]
type=changestate
triggerall = Var(59) = 1 && RoundState = 2
triggerall = var(43) = 1
triggerall = Ctrl = 1
trigger1 = random < 250
trigger1 = 1 || var(43) := 0
value=107

[State 105, AI]
type=changestate
triggerall = Var(59) = 1 && RoundState = 2
triggerall = var(43) = 1
triggerall = Ctrl = 1
trigger1 = random < 333
trigger1 = 1 || var(43) := 0
value=101

[State 105, AI]
type=changestate
triggerall = Var(59) = 1 && RoundState = 2
triggerall = var(43) = 1
triggerall = Ctrl = 1
trigger1 = random < 500
trigger1 = 1 || var(43) := 0
value=441

[State 105, AI]
type=changestate
triggerall = Var(59) = 1 && RoundState = 2
triggerall = var(43) = 1
triggerall = Ctrl = 1
trigger1 = random < 1000
trigger1 = 1 || var(43) := 0
value=1200
;---------------------------------------------------------------------------
;倒しきり
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;切り返し
;---------------------------------------------------------------------------
;死の忘却
[State -1, Light Kung Fu Knee]
type = ChangeState
value = 30000
triggerall = Var(59) = 1 && roundstate = 2
triggerall = var(57) >= 5
triggerall = statetype != A
triggerall = power >= 2000
triggerall = ctrl
TriggerAll = P2BodyDist X = [-5,96]
TriggerAll = EnemyNear(Var(51)),MoveType = A
TriggerAll = EnemyNear(Var(51)),stateType != A
TriggerAll = Random <= Var(57)*10+(power)*0.1+(roundno != 1)*100+(1200-life)*0.25 || var(57) >= 10
TriggerAll = EnemyNear(Var(51)),AnimTime <= -18 || Var(57) < 7
TriggerAll = EnemyNear(Var(51)),Time >= 30 || (!Time && var(57) > 9) || Var(57) > 10
TriggerAll = ctrl
Trigger1 = EnemyNear(Var(51)),Time>=50 || Var(57) > 10
Trigger2 = (PrevStateNo=[5000,5270])
Trigger3 = (PrevStateNo=[120,159])
;---------------------------------------------------------------------------
;コンボ
;---------------------------------------------------------------------------

;空烈眼刺驚
[State -1, Taunt]
type = ChangeState
value = 312323
triggerall = Var(59) = 1 && RoundState = 2
triggerall = Var(50) = 31
trigger1 = stateno = 30011 && (time >= 5)
trigger1 = enemynear(var(51)),vel Y >= 0
trigger1 = P2BodyDist Y >= -65-(enemynear(var(51)),vel y)*2
trigger1 = 1 || var(50) := 0

[State 20, 4];倒し切りコン
type = ChangeState
triggerall = Var(59) = 1 && RoundState = 2
trigger1 = var(50) = 31
trigger1 = stateno = 210 && (movehit >= 2)
trigger1 = 1 || var(50) := 31
value = 1000

[State 20, 4];倒し切りコン
type = ChangeState
triggerall = Var(59) = 1 && RoundState = 2
trigger1 = var(50) = 31
trigger1 = stateno = 200 && (movehit >= 3)
trigger1 = 1 || var(50) := 31
value = 210

[State 20, 4];倒し切りコン2
type = ChangeState
triggerall = Var(59) = 1 && RoundState = 2
triggerall = var(50) = 19
triggerall = stateno = 400 && (movehit >= 1)
triggerall = enemynear(var(51)),statetype != A
triggerall = power >= 2000+(var(25) = 1)*1000
trigger1 = enemynear(var(51)),life <= 250
trigger1 = 1 || var(50) := 31
trigger2 = (power >= 5000) && (random < 333+(power-5000)*0.1554) && (movehit = 1)
trigger2 = 1 || var(50) := 31
trigger3 = facing*(helper(21000+(facing=-1)*4000),pos x-pos x) <= 100
trigger3 = enemynear(var(51)),life <= 375
trigger3 = 1 || var(50) := 31
value = 200

[State 20, 4];倒し切りコン
type = ChangeState
triggerall = Var(59) = 1 && RoundState = 2
trigger1 = var(50) = 32
trigger1 = stateno = 240 && (movehit >= 6)
trigger1 = 1 || var(50) := 0
value = 3618

[State 20, 4];倒し切りコン
type = ChangeState
triggerall = Var(59) = 1 && RoundState = 2
trigger1 = var(50) = 32
trigger1 = stateno = 200 && (movehit >= 3)
trigger1 = 1 || var(50) := 32
value = 240

[State 20, 4];倒し切りコン1
type = ChangeState
triggerall = Var(59) = 1 && RoundState = 2
triggerall = var(50) = 19
triggerall = stateno = 400 && (movehit >= 1)
triggerall = enemynear(var(51)),statetype != A
triggerall = power >= 2000+(var(25) = 1)*500
trigger1 = enemynear(var(51)),life <= 150
trigger1 = 1 || var(50) := 32
trigger2 = (power >= 5000) && (random < 333) && (movehit = 1)
trigger2 = 1 || var(50) := 32
value = 200

[State 20, 4]
type = ChangeState
triggerall = Var(59) = 1 && RoundState = 2
triggerall = var(50) = [4,24]
triggerall = stateno != 1000
triggerall = stateno != 1001
triggerall = stateno != 1010
triggerall = stateno != 1011
triggerall = stateno != 1020
triggerall = stateno != 1021
triggerall = movehit >= 1
trigger1 = var(25) = 3
trigger1 = 1 || var(50) := 0
trigger2 = var(25) = 1
trigger2 = power <= 300
trigger2 = 1 || var(50) := 0
value = 1100

[State 20, 4];画面端1ゲージ受け身狩りコンボ
type = ChangeState
triggerall = Var(59) = 1 && RoundState = 2
triggerall = var(50) = 29
trigger1 = stateno = 240 && (movehit >= 2)
trigger1 = 1 || var(50) := 0
value = 1100

[State 20, 4];画面端1ゲージ受け身狩りコンボ
type = ChangeState
triggerall = Var(59) = 1 && RoundState = 2
triggerall = var(50) = 29
trigger1 = stateno = 200 && (movehit >= 3)
value = 240

[State 20, 4];画面端1ゲージ受け身狩りコンボ
type = ChangeState
triggerall = Var(59) = 1 && RoundState = 2
triggerall = var(50) = 28
trigger1 = stateno = 200 && movehit
value = 23

[State 20, 4];画面端1ゲージ受け身狩りコンボ
type = ChangeState
triggerall = Var(59) = 1 && RoundState = 2
triggerall = var(50) = 28
trigger1 = stateno = 200 && moveguarded
trigger1 = 1 || var(50) := 0
value = 1000

[State 20, 4];画面端1ゲージ受け身狩りコンボ
type = ChangeState
triggerall = Var(59) = 1 && RoundState = 2
triggerall = var(50) = 28
trigger1 = stateno = 200 && !movecontact
trigger1 = enemynear(var(51)),movetype = H
trigger1 = enemynear(var(51)),ctrl = 0
trigger1 = enemynear(var(51)),pos y > -70
trigger1 = animtime = 0
trigger1 = 1 || var(50) := 30
value = 23

[State 20, 4];画面端1ゲージ受け身狩りコンボ
type = ChangeState
triggerall = Var(59) = 1 && RoundState = 2
triggerall = var(50) = 28
trigger1 = stateno = 200 && !movecontact
trigger1 = animtime = 0
trigger1 = 1 || var(50) := 0
trigger1 = 1 || var(49) := var(49)+1
value = 107

[State 20, 4];画面端1ゲージ受け身狩りコンボ
type = Varset
triggerall = Var(59) = 1 && RoundState = 2
triggerall = var(50) = 27
triggerall = stateno = 640 && (time > 6)
trigger1= movecontact
var(50) = 28

[State 20, 4];画面端1ゲージ受け身狩りコンボ
type = Varset
triggerall = Var(59) = 1 && RoundState = 2
triggerall = var(50) = 27
triggerall = stateno = 640 && (time > 6)
trigger1= !movecontact
var(50) = 0

[State 20, 4];画面端1ゲージ受け身狩りコンボ
type = VarSet
triggerall = Var(59) = 1 && RoundState = 2
triggerall = var(50) = 27
triggerall = statetype = A
triggerall= pos y > -30
triggerall= vel y > 0
trigger1 = enemynear(var(51)),movetype = H
trigger1 = ctrl
trigger1 = 1 || var(49) := var(49)+1
var(50) = 0

[State 20, 4];画面端1ゲージ受け身狩りコンボ
type = ChangeState
triggerall = Var(59) = 1 && RoundState = 2
triggerall = var(50) = 27
triggerall = statetype = A
triggerall= enemynear(var(51)),stateno = 5210 && (enemynear(var(51)),time = 13)
trigger1 = ctrl
trigger1 = 1 || var(50) := 27
value = 640

[State 20, 4];画面端1ゲージ受け身狩りコンボ
type = ChangeState
triggerall = Var(59) = 1 && RoundState = 2
triggerall = var(50) = 27
triggerall = stateno = 240 && (movehit = 6)
trigger1 = enemynear(var(51)),movetype = H
trigger1 = 1 || var(50) := 27
value = 3618

[State 20, 4];画面端1ゲージ受け身狩りコンボ
type = ChangeState
triggerall = Var(59) = 1 && RoundState = 2
triggerall = var(50) = 27
triggerall = stateno = 200 && (movehit = 3)
trigger1 = enemynear(var(51)),movetype = H
trigger1 = 1 || var(50) := 27
value = 240

[State 20, 4];画面端1ゲージ受け身狩りコンボ
type = ChangeState
triggerall = Var(59) = 1 && RoundState = 2
triggerall = var(50) = 19
triggerall = var(49) <= 3
triggerall = stateno = 400 && (movehit = 1)
trigger1 = enemynear(var(51)),movetype = H
trigger1 = power >= 1500
trigger1 = facing*(helper(21000+(facing=-1)*4000),pos x-pos x) <= 100
trigger1 = 1 || var(50) := 27
value = 200

[State -1, なじむぞっ];受け身狩り
type = ChangeState
value = 1100
triggerall = Var(59) = 1 && RoundState = 2
triggerall= P2BodyDist X =[-10,55]
triggerall= enemynear(var(51)),pos y > -85
triggerall= enemynear(var(51)),stateno = 5210 && (enemynear(var(51)),time = [9,12])
trigger1 = stateno = 200 && (time >= 4)
trigger1 = 1 || var(50) := 0
trigger2 = stateno = 210 && (time >= 11)
trigger2 = 1 || var(50) := 0
trigger3 = stateno = 240 && (time >= 4)
trigger3 = 1 || var(50) := 0
trigger4 = stateno = 400 && (time >= 3)
trigger4 = 1 || var(50) := 0
trigger5 = stateno = 410 && (time >= 10)
trigger5 = 1 || var(50) := 0
trigger6 = stateno = 440 && (time >= 12)
trigger6 = 1 || var(50) := 0
trigger7 = stateno = 441 && (time >= 12)
trigger7 = 1 || var(50) := 0
trigger8 = stateno = 1000 && (time >= 10)
trigger8 = 1 || var(50) := 0
trigger9 = stateno = 1010 && (time >= 16)
trigger9 = 1 || var(50) := 0
trigger10= stateno = 1020 && (time >= 23)
trigger10 = 1 || var(50) := 0
trigger11= stateno = 1001 && (time >= 4)
trigger11 = 1 || var(50) := 0
trigger12= stateno = 1002 && (time >= 8)
trigger12 = 1 || var(50) := 0
trigger12= 1 || var(30) := -1
trigger13= stateno = 1011 && (time >= 18)
trigger13 = 1 || var(50) := 0
trigger14= stateno = 1012 && (time >= 23)
trigger14 = 1 || var(50) := 0
trigger14= 1 || var(30) := -1
trigger15= stateno = 1021 && (time >= 10)
trigger15 = 1 || var(50) := 0
trigger16= stateno = 1022 && (time >= 26)
trigger16 = 1 || var(50) := 0
trigger16= 1 || var(30) := -1
trigger17= stateno = 1618 && (time > 48)
trigger17 = 1 || var(50) := 0
trigger18= ctrl
trigger18= statetype != A
trigger18 = 1 || var(50) := 0

[State 20, 4]
type = ChangeState
triggerall = Var(59) = 1 && RoundState = 2
trigger1 = stateno = 200 && (movehit >= 4)
trigger1 = var(50) = 24
trigger1 = 1 || var(50) := 0
value = 1000

[State 20, 4]
type = ChangeState
triggerall = Var(59) = 1 && RoundState = 2
triggerall = enemynear(var(51)),pos y >= -40
trigger1 = stateno = 200 && (movehit >= 4)
trigger1 = var(50) = 23
trigger1 = enemynear(var(51)),movetype = H
trigger1 = 1 || var(50) := 24
value = 200

[State 20, 4]
type = ChangeState
triggerall = Var(59) = 1 && RoundState = 2
trigger1 = stateno = 210 && (movehit >= 1)
trigger1 = var(50) = 22
trigger1 = enemynear(var(51)),movetype = H
trigger1 = 1 || var(50) := 22
value = 1010

[State 20, 4]
type = ChangeState
triggerall = Var(59) = 1 && RoundState = 2
triggerall = enemynear(var(51)),pos y >= -55
trigger1 = stateno = 200 && (movehit >= 7)
trigger1 = var(50) = 21
trigger1 = enemynear(var(51)),movetype = H
trigger1 = 1 || var(50) := 22
value = 210

[State 20, 4]
type = ChangeState
triggerall = Var(59) = 1 && RoundState = 2
trigger1 = stateno = 1021 && animtime = 0
trigger1 = var(50) = 20
trigger1 = enemynear(var(51)),movetype = H
trigger1 = 1 || var(50) := 20
trigger2 = stateno = 200 && animtime = 0
trigger2 = var(50) = 21
trigger2 = enemynear(var(51)),movetype = H
trigger2 = 1 || var(50) := 21
trigger3 = stateno = 200 && animtime = 0
trigger3 = var(50) = 23
trigger3 = enemynear(var(51)),movetype = H
trigger3 = 1 || var(50) := 23
value = 23

[State 20, 4]
type = ChangeState
triggerall = Var(59) = 1 && RoundState = 2
triggerall = var(50) = 20
triggerall = stateno = 240 && (movehit >= 1)
trigger1 = enemynear(var(51)),movetype = H
trigger1 = 1 || var(50) := 20
value = 1020

[State 20, 4]
type = ChangeState
triggerall = Var(59) = 1 && RoundState = 2
triggerall = var(50) = 19
triggerall = stateno = 200 && (movehit >= 4)
trigger1 = enemynear(var(51)),movetype = H
trigger1 = 1 || var(50) := 20
value = 240

[State 20, 4]
type = ChangeState
triggerall = var(50) = 19
triggerall = stateno = 400 && (movehit = 1)
trigger1 = enemynear(var(51)),movetype = H
trigger1 = random <= 499
trigger1 = 1 || var(50) := 19
value = 200

[State 20, 4]
type = ChangeState
triggerall = Var(59) = 1 && RoundState = 2
triggerall = var(50) = 19
triggerall = stateno = 400 && (movehit >= 1)
trigger1 = enemynear(var(51)),movetype = H
trigger1 = 1 || var(50) := 5
value = 441

[State 20, 4]
type = ChangeState
triggerall = Var(59) = 1 && RoundState = 2
triggerall = var(50) = 18
triggerall = stateno = 1548 && (time = 16)
trigger1 = enemynear(var(51)),movetype = H
value = 640

[State 20, 4]
type = ChangeState
triggerall = Var(59) = 1 && RoundState = 2
triggerall = stateno = 240 && (movehit >= 1) && (var(11) > 0)
trigger1 = time >= 1
value = 1548

[State 20, 4]
type = ChangeState
triggerall = Var(59) = 1 && RoundState = 2
triggerall = var(50) = 18
triggerall = stateno = 200 && (movehit >= 8) && (var(11) > 0)
trigger1 = time >= 1
value = 240

[State -1, なじむぞっ]
type = ChangeState
value = 400
triggerall = Var(59) = 1 && RoundState = 2
triggerall = stateno = 400 && (var(11) = 0) && (movehit >= 4)
Trigger1 = Var(50) = 0
trigger1 = 1 || var(50) := 18

[State -1, なじむぞっ]
type = ChangeState
value = 1000
triggerall = Var(59) = 1 && RoundState = 2
triggerall = stateno = 200 && (movehit >= 4)
Trigger1 = Var(50) = 17
trigger1 = 1 || var(50) := 0

[State -1, なじむぞっ]
type = ChangeState
value = 200
triggerall = Var(59) = 1 && RoundState = 2
triggerall = stateno = 200 && (movehit >= 3)
triggerall = enemynear(var(51)),pos y >= -40
Trigger1 = Var(50) = 16
trigger1 = 1 || var(50) := 17

[State -1, なじむぞっ]
type = ChangeState
value = 1010
triggerall = Var(59) = 1 && RoundState = 2
triggerall = stateno = 210 && (movehit >= 2)
Trigger1 = Var(50) = 15
trigger1 = 1 || var(50) := 16

[State -1, なじむぞっ]
type = ChangeState
value = 210
triggerall = Var(59) = 1 && RoundState = 2
triggerall = stateno = 200 && (movehit >= 3)
Trigger1 = Var(50) = 15
trigger1 = 1 || var(50) := 15

[State -1, なじむぞっ]
type = ChangeState
value = 600
triggerall = Var(59) = 1 && RoundState = 2
trigger1 = stateno = 1548 && (time >= 16)
trigger1 = var(50) = 15
trigger1 = 1 || var(50) := 15

[State -1, なじむぞっ]
type = ChangeState
value = 1548
triggerall = Var(59) = 1 && RoundState = 2
trigger1 = stateno = 440 && (movehit >= 1) && (var(11) > 0)
trigger1 = 1 || var(50) := 15

[State -1, なじむぞっ]
type = ChangeState
value = 440
triggerall = Var(59) = 1 && RoundState = 2
trigger1 = stateno = 400 && movehit && (var(11) > 0)
trigger1 = 1 || var(50) := 14

[State -1, なじむぞっ]
type = ChangeState
value = 1000
triggerall = Var(59) = 1 && RoundState = 2
trigger1 = stateno = 200 && (movehit > 5)
trigger1 = var(50) = 13
trigger1 = 1 || var(50) := 0

[State -1, なじむぞっ]
type = ChangeState
value = 200
triggerall = Var(59) = 1 && RoundState = 2
triggerall = stateno = 200 && (movehit >= 3)
triggerall = enemynear(var(51)),pos y >= -40
trigger1 = var(50) = 12
trigger1 = 1 || var(50) := 13

[State -1, なじむぞっ]
type = ChangeState
value = 1010
triggerall = Var(59) = 1 && RoundState = 2
trigger1 = stateno = 410 && (movehit > 4)
trigger1 = var(50) = 11
trigger1 = 1 || var(50) := 11

[State -1, なじむぞっ]
type = ChangeState
value = 410
triggerall = Var(59) = 1 && RoundState = 2
trigger1 = stateno = 400 && (movehit > 2)
trigger1 = var(50) = 11
trigger1 = 1 || var(50) := 11

[State -1, なじむぞっ]
type = ChangeState
value = 1000
triggerall = Var(59) = 1 && RoundState = 2
trigger1 = stateno = 200 && (movehit > 5)
trigger1 = var(50) = 8
trigger1 = 1 || var(50) := 0
trigger2 = stateno = 210 && (movehit > 5)
trigger2 = var(50) = 10
trigger2 = 1 || var(50) := 0

[State -1, なじむぞっ]
type = ChangeState
value = 200
triggerall = Var(59) = 1 && RoundState = 2
triggerall = stateno = 200 && (movehit >= 3)
triggerall = enemynear(var(51)),pos y >= -40
triggerall = var(50) = 7
trigger1 = 1 || var(50) := 8

[State -1, なじむぞっ]
type = ChangeState
value = 1010
triggerall = Var(59) = 1 && RoundState = 2
triggerall = stateno = 410 && (movehit >= 1)
triggerall = var(50) = 6
trigger1 = 1 || var(50) := 6

[State -1, なじむぞっ]
type = ChangeState
value = 1010
triggerall = Var(59) = 1 && RoundState = 2
triggerall = stateno = 210 && (movehit >= 1)
triggerall = var(50) = 5
trigger1 = 1 || var(50) := 5

[State -1, なじむぞっ]
type = ChangeState
value = 210
triggerall = Var(59) = 1 && RoundState = 2
triggerall = stateno = 200 && (movehit >= 6)
trigger1 = var(50) = 5
trigger1 = 1 || var(50) := 5
trigger2 = var(50) = 10
trigger2 = 1 || var(50) := 10

[State -1, なじむぞっ]
type = ChangeState
value = 640
triggerall = Var(59) = 1 && RoundState = 2
trigger1 = stateno = 1548 && time = 16
trigger1 = random < 499
trigger1 = var(50) = 5
trigger1 = 1 || var(50) := 9
trigger2 = stateno = 50 && time >= 3
trigger2 = var(50) = 5
trigger2 = 1 || var(50) := 5
trigger3 = stateno = 1548 && time = 16
trigger3 = var(50) = 9
trigger3 = 1 || var(50) := 10

[State -1, なじむぞっ]
type = ChangeState
value = 1548
triggerall = Var(59) = 1 && RoundState = 2
trigger1 = stateno = 441 && (movehit > 2)
trigger1 = random < 499
trigger1 = 1 || var(50) := 5
trigger2 = var(50) = 9
trigger2 = stateno = 410 && movehit
trigger2 = 1 || var(50) := 9

[State -1, なじむぞっ]
type = ChangeState
value = 1020
triggerall = Var(59) = 1 && RoundState = 2
trigger1 = stateno = 441 && (movehit > 2)
trigger1 = 1 || var(50) := 11
;---------------------------------------------------------------------------
;ガードからの繋ぎ var(50) = 4
;---------------------------------------------------------------------------

[State -1, なじむぞっ]
type = ChangeState
value = 1400
triggerall = Var(59) = 1 && RoundState = 2
triggerall = stateno = 441 && moveguarded
triggerall = random < 499
Trigger1 = P2BodyDist x < 70
Trigger1 = Var(50) = 4
trigger1 = 1 || var(50) := 0

[State -1, なじむぞっ]
type = ChangeState
value = 1000
triggerall = Var(59) = 1 && RoundState = 2
triggerall = stateno = 441 && moveguarded
Trigger1 = P2BodyDist x < 40
Trigger1 = Var(50) = 4
trigger1 = 1 || var(50) := 0

[State -1, なじむぞっ]
type = ChangeState
value = 1010
triggerall = Var(59) = 1 && RoundState = 2
triggerall = stateno = 441 && moveguarded
Trigger1 = P2BodyDist x < 55
Trigger1 = Var(50) = 4
trigger1 = 1 || var(50) := 0

[State -1, なじむぞっ]
type = ChangeState
value = 1000
triggerall = Var(59) = 1 && RoundState = 2
triggerall = stateno = 240 && (moveguarded > 2)
Trigger1 = Var(50) = 4
trigger1 = 1 || var(50) := 0

[State -1, 前屈強へ]
type = ChangeState
value = 440
triggerall = Var(59) = 1 && RoundState = 2
triggerall = var(57) >= 5
trigger1 = var(50) = 4
trigger1 = stateno = 400 && (var(11) > 0)
trigger1 = P2BodyDist X <= 140
trigger1 = 1 || var(50) := 0

[State -1, 前屈強へ]
type = ChangeState
value = 441
triggerall = Var(59) = 1 && RoundState = 2
triggerall = var(57) >= 5
trigger1 = random <= 599
trigger1 = var(50) = 4
trigger1 = stateno = 21
trigger1 = ctrl
trigger1 = enemynear,GetHitVar(ctrltime) <= 12
trigger1 = P2BodyDist X <= 140
trigger1 = 1 || var(50) := 0

[State -1, 投げへ]
type = ChangeState
value = 400
triggerall = Var(59) = 1 && RoundState = 2
triggerall = var(57) >= 5
triggerall = var(50) = 4
triggerall = ctrl
triggerall = random <= 333
triggerall = enemynear,GetHitVar(ctrltime) = 0
triggerall = enemynear,Movetype = H
triggerall = P2BodyDist X <= 5
trigger1 = stateno = 21
trigger1 = 1 || var(50) := 0

[State -1, 屈弱へ]
type = ChangeState
value = 400
triggerall = Var(59) = 1 && RoundState = 2
triggerall = var(57) >= 5
trigger1 = var(50) = 4
trigger1 = stateno = 21
trigger1 = ctrl
;trigger1 = random <= 333
;trigger1 = enemynear,GetHitVar(ctrltime) <= 3
trigger1 = P2BodyDist X <= 77
trigger1 = 1 || var(50) := 0

[State -1, まず歩く]
type = ChangeState
value = 21
triggerall = Var(59) = 1 && RoundState = 2
triggerall = var(57) >= 5
trigger1 = random <= 799
trigger1 = var(50) = 4
trigger1 = ctrl

[State -1, まず走る]
type = ChangeState
value = 101
triggerall = Var(59) = 1 && RoundState = 2
triggerall = var(57) >= 5
trigger1 = random <= 500
trigger1 = var(50) = 4
trigger1 = ctrl

[State -1, 詐欺飛びへ]
type = ChangeState
value = 62
triggerall = Var(59) = 1 && RoundState = 2
triggerall = var(57) >= 5
trigger1 = random <= 99
trigger1 = var(50) = 4
trigger1 = ctrl
trigger1 = 1 || var(50) := 0

[State -1, まず小ジャン]
type = ChangeState
value = 63
triggerall = Var(59) = 1 && RoundState = 2
triggerall = var(57) >= 5
trigger1 = var(50) = 4
trigger1 = ctrl
trigger1 = 1 || var(50) := 0
;---------------------------------------------------------------------------
;ガード
;---------------------------------------------------------------------------

[State -3];被起き攻め時ガード警戒
Type = VarAdd
triggerall = !ishelper
TriggerAll = NumEnemy
triggerall = var(59)>=1
trigger1 = var(47) > 0
var(47) = -2
IgNoreHitPause = 1

[State -3];被起き攻め時ガード警戒
Type = VarSet
triggerall = !ishelper
TriggerAll = NumEnemy
triggerall = var(59)>=1
trigger1 = var(47) < 0
var(47) = 0
IgNoreHitPause = 1

[State -3];連続ガード時ガード警戒
Type = VarSet
triggerall = !ishelper
TriggerAll = NumEnemy
triggerall = var(59)>=1
trigger1 = prevstateno = [120,155]
trigger1 = stateno != [120,155]
trigger1 = var(48) = 0
var(48) = 25
IgNoreHitPause = 1

[State -3];連続ガード時ガード警戒
Type = VarAdd
triggerall = !ishelper
TriggerAll = NumEnemy
triggerall = var(59)>=1
trigger1 = var(48) > 0
var(48) = -1
IgNoreHitPause = 1

[State -3];しゃがみ
Type = VarSet
triggerall = !ishelper
TriggerAll = NumEnemy
triggerall = var(59)>=1
triggerall = statetype != A&&MoveType != H
Triggerall = InGuardDist
trigger1 = p2Stateno=Helper(25000),var(20)
trigger2 = p2Stateno=Helper(25000),var(21)
trigger3 = p2Stateno=Helper(25000),var(22)
trigger4 = p2Stateno=Helper(25000),var(23)
trigger5 = p2Stateno=Helper(25000),var(24)
v = 53
value = 1
IgNoreHitPause = 1

[State -3];立ち
Type = VarSet
triggerall = !ishelper
TriggerAll = NumEnemy
triggerall = var(59)>=1
triggerall = statetype != A&&MoveType != H
Triggerall = InGuardDist
trigger1 = p2Stateno=Helper(25000),var(10)
trigger2 = p2Stateno=Helper(25000),var(11)
trigger3 = p2Stateno=Helper(25000),var(12)
trigger4 = p2Stateno=Helper(25000),var(13)
trigger5 = p2Stateno=Helper(25000),var(14)
v = 53
value = 2
IgNoreHitPause = 1

[State -3];しゃがみ
Type = VarSet
triggerall = !ishelper
TriggerAll = NumEnemy
TriggerAll = Var(59) = 1 && roundstate = 2
triggerall = statetype != A
Triggerall = EnemyNear(Var(51)),statetype != A
trigger1 = p2statetype=C
trigger2 = p2statetype=S
trigger2 = EnemyNear(Var(51)),time < 15
v = 53
value = 1
IgNoreHitPause = 1

[State -3];立ち
Type = VarSet
triggerall = !ishelper
TriggerAll = NumEnemy
TriggerAll = Var(59) = 1 && roundstate = 2
triggerall = statetype != A
trigger1 = p2statetype =A
trigger2 = p2statetype=S
trigger2 = stateno=[120,155]
trigger2 = EnemyNear(Var(51)),time >= 15;発生の遅い攻撃に対して切り替える
trigger2 = EnemyNear(Var(51)),moveguarded=0
trigger2 = EnemyNear(Var(51)),movetype=A
;Trigger3 = EnemyNear(Var(51)),NumProj > 0 || (EnemyNear(Var(51)),NumHelper > 0&&EnemyNear(Var(51)),HitDefAttr = SCA,AP)
v = 53
value = 2
IgNoreHitPause = 1

[State -1,立ちガード]
Type = ChangeState
Value = 120
TriggerAll = NumHelper(55005)
TriggerAll = InGuardDist || ( (Helper(55005),Var(40)) && (EnemyNear(var(51)),P2Dist X<0) && (random <= 499) )|| (Helper(55005),Var(41)) ||(enemynear(var(51)),movetype = A && !inguarddist && P2BodyDist X <= 50)
TriggerAll = Var(59) = 1 && roundstate = 2
TriggerAll = StateNo!=[120,155]
TriggerAll = !(StateNo = 1548 && time < 16)
TriggerAll = Ctrl||Stateno=0||stateno=11||(stateno=[19,22])||stateno = 1548||(stateno=[40,69])
triggerall = !(EnemyNear(Var(51)),HitDefAttr = SCA,AT)
Trigger1 = Random <= var(57)*60-(life = [0,600])*15-(var(57) < 8)*20+var(48)*50+(var(47)>0)*80 || var(57) >= 10
Trigger2 = P2BodyDist X > 90 || EnemyNear(Var(51)),Time>50
Trigger2 = Random <= var(57)*150-(life = [0,600])*35-(var(57) < 8)*40+var(48)*80+(var(47)>0)*120
Trigger3 = !IsHelper
trigger3 = Helper(51000),inguarddist
trigger3 = Random <= var(57)*100+var(48)*60+(var(47)>0)*100
Trigger4 = numhelper(50005) >= 1
Trigger4 = helper(50005),var(0) = [-10+(var(48)>0)*60+(var(47)>0)*40,10+(var(48)>0)*60+(var(47)>0)*40]

;アドバンシング（立ち）
[State -1, Run Back]
type = ChangeState
TriggerAll = Var(59) = 1 && roundstate = 2
triggerall = statetype = S
triggerall = stateno = 150 || stateno = 151
triggerall = prevstateno != 4000 && prevstateno != 4005
triggerall = var(57) >= 4
trigger1 = P2BodyDist X <= 50
trigger1 = random <= 30
trigger2 = BackEdgeBodyDist < 30
trigger2 = random <= 100
ignorehitpause = 1
value = 4000

;アドバンシング（しゃがみ）
[State -1, Run Back]
type = ChangeState
TriggerAll = Var(59) = 1 && roundstate = 2
triggerall = statetype = C
triggerall = stateno = 152 || stateno = 153
triggerall = prevstateno != 4000 && prevstateno != 4005
triggerall = var(57) >= 4
trigger1 = P2BodyDist X <= 50
trigger1 = random <= 30
trigger2 = BackEdgeBodyDist < 30
trigger2 = random <= 100
value = 4005
;---------------------------------------------------------------------------
;対空、起き攻め
;---------------------------------------------------------------------------
[State 100, AI];対空１　潜り
type=changestate
triggerall = Var(59) = 1 && RoundState = 2
triggerall = Ctrl = 1
triggerall = var(57) >= 5
triggerall = Statetype != A
triggerall = P2bodydist Y <= -40
triggerall = var(47) = 0
triggerall = var(48) = 0
trigger1 = P2BodyDist X = [10,30]
trigger1 = enemynear(var(51)),statetype = A
trigger1 = enemynear(var(51)),stateno = [40,59]
trigger1 = enemynear(var(51)),facing != facing
value=101

[State 100, AI];対空２　屈中
type=changestate
value = 410
triggerall = Var(59) = 1 && RoundState = 2
triggerall = P2BodyDist X = [0,30]
triggerall = enemynear(var(51)),statetype = A
triggerall = enemynear(var(51)),movetype != H
triggerall = var(50) != 2
triggerall = var(57) >= 5
triggerall = P2bodydist Y <= -40
triggerall = var(47) = 0
triggerall = var(48) = 0
trigger1 = statetype != A
trigger1 = ctrl || (stateno = 400 && movecontact)
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)
trigger3 = stateno = 105 ;ダッシュ

;---------------------------------------------------------------------------
;立ち回り
;---------------------------------------------------------------------------
[State 105, AI]
type=changestate
triggerall = Var(59) = 1 && RoundState = 2
triggerall = BackEdgeBodyDist > 40
triggerall = random = [0,40]
triggerall = Ctrl = 1
triggerall = Statetype != A
triggerall = var(50) != 2
triggerall = var(50) != 4
triggerall = stateno != 22
triggerall = var(47) = 0
triggerall = var(48) = 0
trigger1 = P2BodyDist X <= 72-(enemynear(var(51)),vel X)*3
trigger1 = enemynear(var(51)),Ctrl = 1
trigger1 = !(enemynear(var(51)),movetype = A && enemynear(var(51)),time >= 3)
trigger2 = P2BodyDist X <= 72-(enemynear(var(51)),vel X)*3
trigger2 = enemynear(var(51)),stateno = [5110,5120]
trigger3 = P2BodyDist X <= 72-(enemynear(var(51)),vel X)*3
trigger3 = enemynear(var(51)),statetype = A && enemynear(var(51)),vel Y >= 0
trigger4 = P2BodyDist X <= 72-(enemynear(var(51)),vel X)*3
trigger4 = enemynear(var(51)),movetype = I && enemynear(var(51)),vel X != 0
trigger5 = P2BodyDist X <= 72-(enemynear(var(51)),vel X)*3
trigger5 = enemynear(var(51)),movetype != A && enemynear(var(51)),vel X >= 4
trigger6 = P2BodyDist X >= 69
trigger6 = enemynear(var(51)),movetype != A && enemynear(var(51)),vel X >= 6
trigger7 = P2BodyDist X >= 69
trigger7 = enemynear(var(51)),movetype = A && enemynear(var(51)),time >= 3
trigger7 = var(56) = 0
value=107

[State 100, AI]
type=changestate
triggerall = Var(59) = 1 && RoundState = 2
triggerall = random = [0,50+(life = [0,600])*250]
triggerall = Ctrl = 1
triggerall = stateno != 22
triggerall = Statetype != A
triggerall = var(50) != 2
triggerall = var(50) != 4
triggerall = var(47) = 0
triggerall = var(48) = 0
trigger1 = P2BodyDist X >= 100
trigger1 = enemynear(var(51)),Ctrl = 0
trigger1 = enemynear(var(51)),movetype != A && enemynear(var(51)),time >= 3
trigger2 = P2BodyDist X >= 100
trigger2 = enemynear(var(51)),Ctrl = 1
trigger2 = random = [0,500]
trigger2 = enemynear(var(51)),movetype != A
trigger3 = P2BodyDist X >= 160
trigger3 = enemynear(var(51)),Ctrl = 1
trigger3 = var(56) = 0
trigger4 = P2BodyDist X = [57,62]
trigger4 = enemynear(var(51)),movetype != A
trigger4 = enemynear(var(51)),vel X < 6
trigger5 = P2BodyDist X = [60,70]
trigger5 = enemynear(var(51)),movetype != A
trigger5 = stateno = 0 && animelem = 6
trigger6 = P2BodyDist X = [30,80)
trigger6 = enemynear(var(51)),movetype != A
trigger6 = enemynear(var(51)),statetype != A
trigger6 = enemynear(var(51)),vel x < -1
trigger6 = random < 300
value=101

[State 100, AI]
type=changestate
triggerall = Var(59) = 1 && RoundState = 2
triggerall = Statetype != A
triggerall = stateno != 22
triggerall = enemynear(var(51)),stateno = 100
triggerall = P2BodyDist X = [15,50+(enemynear(var(51)),vel x)*2]
triggerall = var(50) != 4
triggerall = var(47) = 0
triggerall = var(48) = 0
trigger1 = Ctrl = 1
trigger2 = stateno = 101
trigger3 = stateno = 107
trigger4 = EnemyNear(Var(51)),HitDefAttr = SCA,AT && enemynear(var(51)),time >= 3
value=60

[State 100, AI]
type=changestate
triggerall = Var(59) = 1 && RoundState = 2
triggerall = stateno != 22
triggerall = Statetype != A
triggerall = enemynear(var(51)),movetype = I
triggerall = enemynear(var(51)),statetype != A
triggerall = P2BodyDist X >= 40
triggerall = var(50) != 4
triggerall = var(47) = 0
triggerall = var(48) = 0
trigger1 = stateno = 101
trigger1 = random <= 25
value=61

[State 100, AI]
type=changestate
triggerall = Var(59) = 1 && RoundState = 2
triggerall = stateno != 22
triggerall = Statetype != A
triggerall = enemynear(var(51)),stateno != 100 && enemynear(var(51)),vel x >= 6.5
triggerall = enemynear(var(51)),stateno != 2100 && enemynear(var(51)),stateno != 10100
triggerall = P2BodyDist X = [0,50+(enemynear(var(51)),vel x)*2]
triggerall = enemynear(var(51)),movetype = A
triggerall = var(50) != 2
triggerall = var(50) != 4
trigger1 = Ctrl = 1
value=702

[State 100, AI]
type=changestate
triggerall = Var(59) = 1 && RoundState = 2
triggerall = stateno != 22
triggerall = Ctrl = 1
triggerall = Statetype != A
triggerall = var(50) != 4
trigger1 = 1;P2BodyDist X != [77,99]
value=21
;---------------------------------------------------------------------------
;地上立ち回り技 CNS 21ステートにも
;---------------------------------------------------------------------------
;空烈眼刺驚
[State -1, Taunt]
type = ChangeState
value = 312323
triggerall = Var(59) = 1 && RoundState = 2
triggerall = Var(50) != 31
trigger1 = stateno = 30011 && (time >= 5)
trigger1 = vel Y >= 0
trigger1 = P2BodyDist Y >= -60-(enemynear(var(51)),vel y)*2

;---------------------------------------------------------------------------
;空中立ち回り技
;---------------------------------------------------------------------------
[State -1, ジャンプ強];詐欺飛び
type = ChangeState
value = 600
triggerall = Var(59) = 1 && RoundState = 2
triggerall = statetype = A
triggerall = ctrl
trigger1 = var(50) = 3
trigger1 = 1 || var(50) := 0

[State -1, ジャンプ強];WRRRYYYY
type = ChangeState
value = 600
triggerall = Var(59) = 1 && RoundState = 2
triggerall = statetype = A
triggerall = var(50) = 25
trigger1 = var(37) = 0
trigger1 = ctrl
trigger1 = stateno = 1548
trigger1 = P2BodyDist X <= 100
trigger1 = 1 || var(50) := 0

[State -1, ジャンプ強]
type = ChangeState
value = 640
triggerall = Var(59) = 1 && RoundState = 2
triggerall = statetype = A
triggerall = var(50) = 26
triggerall = ctrl
triggerall = P2Dist X = [-5,5]
triggerall = P2BodyDist Y <= 150
trigger1 = vel Y > 0
trigger1 = 1 || var(50) := 0
trigger2 = vel Y <= 0
trigger2 = enemynear(var(51)),statetype = A
trigger2 = 1 || var(50) := 0

[State -1, ジャンプ強];WRRRYYYY
type = ChangeState
value = 600
triggerall = Var(59) = 1 && RoundState = 2
triggerall = statetype = A
triggerall = var(50) != 5
triggerall = var(50) != 9
triggerall = var(50) != 25
triggerall = var(50) != 26
triggerall = var(50) != 27
trigger1 = var(37) = 0
trigger1 = ctrl
trigger1 = stateno = 1548
trigger1 = P2BodyDist X <= 100

[State -1, ジャンプ強];相手がS状態
type = ChangeState
value = 600
triggerall = Var(59) = 1 && RoundState = 2
triggerall = statetype = A
triggerall = enemynear(var(51)),statetype = S
triggerall = ctrl
triggerall = vel y > 0
triggerall = P2BodyDist X >= 0
triggerall = var(50) != 5
triggerall = var(50) != 9
triggerall = var(50) != 25
triggerall = var(50) != 26
triggerall = var(50) != 27
trigger1 = P2BodyDist X <= 30+vel x && vel x > 0
trigger1 = P2BodyDist Y <= 62
trigger2 = P2BodyDist X <= 30+vel x && enemynear(var(51)),vel x >= 0
trigger2 = P2BodyDist Y <= 62
trigger3 = P2BodyDist X <= 20+vel x
trigger3 = P2BodyDist Y <= 62

[State -1, ジャンプ強];相手がC状態
type = ChangeState
value = 600
triggerall = Var(59) = 1 && RoundState = 2
triggerall = statetype = A
triggerall = enemynear(var(51)),statetype = C
triggerall = ctrl
triggerall = vel y > 0
triggerall = P2BodyDist X >= 0
triggerall = var(50) != 5
triggerall = var(50) != 9
triggerall = var(50) != 25
triggerall = var(50) != 26
triggerall = var(50) != 27
trigger1 = P2BodyDist X <= 30+vel x
trigger1 = P2BodyDist Y <= 40
trigger2 = P2BodyDist X <= 30+vel x
trigger2 = P2BodyDist Y <= 40

[State -1, ジャンプ強];相手がA状態
type = ChangeState
value = 600
triggerall = Var(59) = 1 && RoundState = 2
triggerall = statetype = A
triggerall = enemynear(var(51)),statetype = A
triggerall = ctrl
triggerall = P2BodyDist X >= 0
triggerall = var(50) != 5
triggerall = var(50) != 9
triggerall = var(50) != 25
triggerall = var(50) != 26
triggerall = var(50) != 27
trigger1 = P2BodyDist X <= 30+vel x && vel x > 0
trigger1 = P2BodyDist Y <= 20
trigger2 = P2BodyDist X <= 30+vel x && enemynear(var(51)),vel x >= 0
trigger2 = P2BodyDist Y <= 25
trigger3 = P2BodyDist X <= 20+vel x
trigger3 = P2BodyDist Y <= 20

[State -1, ジャンプ強];相手がS状態
type = ChangeState
value = 640
triggerall = Var(59) = 1 && RoundState = 2
triggerall = statetype = A
triggerall = enemynear(var(51)),statetype = S
triggerall = ctrl
triggerall = vel y > 0
triggerall = enemynear(var(51)),stateno != 1250976765
triggerall = P2BodyDist X >= 0
triggerall = var(50) != 5
triggerall = var(50) != 9
triggerall = var(50) != 25
triggerall = var(50) != 26
triggerall = var(50) != 27
trigger1 = P2BodyDist X <= 60+vel x && vel x > 0
trigger1 = P2BodyDist Y <= 72
trigger2 = P2BodyDist X <= 60+vel x && enemynear(var(51)),vel x >= 0
trigger2 = P2BodyDist Y <= 72
trigger3 = P2BodyDist X <= 40+vel x
trigger3 = P2BodyDist Y <= 72

[State -1, ジャンプ強];相手がS状態
type = ChangeState
value = 640
triggerall = Var(59) = 1 && RoundState = 2
triggerall = statetype = A
triggerall = enemynear(var(51)),statetype = S
triggerall = ctrl
triggerall = vel y > 0
triggerall = enemynear(var(51)),stateno = 1250976765
triggerall = var(50) != 5
triggerall = var(50) != 9
triggerall = var(50) != 25
triggerall = var(50) != 26
triggerall = var(50) != 27
trigger1 = P2BodyDist X <= 60+vel x && vel x > 0
trigger1 = P2BodyDist Y <= 72
trigger2 = P2BodyDist X <= 60+vel x && enemynear(var(51)),vel x >= 0
trigger2 = P2BodyDist Y <= 72
trigger3 = P2BodyDist X <= 40+vel x
trigger3 = P2BodyDist Y <= 72

[State -1, ジャンプ強];相手がC状態
type = ChangeState
value = 640
triggerall = Var(59) = 1 && RoundState = 2
triggerall = statetype = A
triggerall = enemynear(var(51)),statetype = C
triggerall = ctrl
triggerall = vel y > 0
triggerall = P2BodyDist X >= 0
triggerall = var(50) != 5
triggerall = var(50) != 9
triggerall = var(50) != 25
triggerall = var(50) != 26
triggerall = var(50) != 27
trigger1 = P2BodyDist X <= 60+vel x
trigger1 = P2BodyDist Y <= 50
trigger2 = P2BodyDist X <= 60+vel x
trigger2 = P2BodyDist Y <= 50

[State -1, ジャンプ強];相手がA状態
type = ChangeState
value = 640
triggerall = Var(59) = 1 && RoundState = 2
triggerall = statetype = A
triggerall = enemynear(var(51)),statetype = A
triggerall = ctrl
triggerall = P2BodyDist X >= 0
triggerall = var(50) != 5
triggerall = var(50) != 9
triggerall = var(50) != 25
triggerall = var(50) != 26
triggerall = var(50) != 27
trigger1 = P2BodyDist X <= 60+vel x && vel x > 0
trigger1 = P2BodyDist Y <= 30
trigger2 = P2BodyDist X <= 60+vel x && enemynear(var(51)),vel x >= 0
trigger2 = P2BodyDist Y <= 60
trigger3 = P2BodyDist X <= 40+vel x
trigger3 = P2BodyDist Y <= 30


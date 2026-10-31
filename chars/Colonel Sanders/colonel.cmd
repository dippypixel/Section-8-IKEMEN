;------------------------------------------------------------------------------
;超必殺技
;------------------------------------------------------------------------------

;居合い
[Command]
name = "iai"
command = ~D,DF,F,D,DF,F,x
time = 32

[Command]
name = "iai"
command = ~D,DF,F,D,DF,F,y
time = 32

;ツイスター
[Command]
name = "twister"
command = ~D,DB,B,D,DB,B,a
time = 32

[Command]
name = "twister"
command = ~D,DB,B,D,DB,B,b
time = 32

;プレッシャーフライヤー
[Command]
name = "pressure-fryer"
command = ~D,DB,B,D,DB,B,x
time = 32

[Command]
name = "pressure-fryer"
command = ~D,DB,B,D,DB,B,y
time = 32

;カーネル３ダース
[Command]
name = "colonel-3-dozen"
command = ~D,DF,F,D,DF,F,a
time = 32

[Command]
name = "colonel-3-dozen"
command = ~D,DF,F,D,DF,F,b
time = 32

;ホールピース
[Command]
name = "whole-piece"
command = ~D,DB,B,D,DB,B,a+b
time = 32

;瞬斬
[Command]
name = "raging-colonel"
command = ~D,DF,F,D,DF,F,x+y
time = 32

;------------------------------------------------------------------------------
;必殺技
;------------------------------------------------------------------------------

;ウイング or リブ
[Command]
name = "wing-or-rib"
command = ~F,D,DF,x
time = 18

[Command]
name = "wing-or-rib"
command = ~F,D,DF,y
time = 18

[Command]
name = "wing-or-rib-rage"
command = ~F,D,DF,x+y
time = 18

;ドラム or サイ
[Command]
name = "drum-or-thigh"
command = ~D,DF,F,x
time = 18

[Command]
name = "drum-or-thigh"
command = ~D,DF,F,y
time = 18

;キール
[Command]
name = "keel"
command = ~D,DB,B,x
time = 18

[Command]
name = "keel"
command = ~D,DB,B,y
time = 18

;投キール
[Command]
name = "keel2"
command = ~D,DF,F,a
time = 18

[Command]
name = "keel2"
command = ~D,DF,F,b
time = 18

;------------------------------------------------------------------------------
;特殊技
;------------------------------------------------------------------------------

;大ジャンプ
[Command]
name = "super_jump"
command = $D, $U
time = 15

;------------------------------------------------------------------------------
;キー２回連続入力
;------------------------------------------------------------------------------

[Command]
name = "FF"       ;必須コマンド名
command = F,F
time = 10

[Command]
name = "BB"       ;必須コマンド名
command = B,B
time = 10

;------------------------------------------------------------------------------
;同時押し
;------------------------------------------------------------------------------

[Command]
name = "recovery" ;必須コマンド名
command = a+b
time = 1

[Command]
name = "recovery" ;必須コマンド名
command = x+y
time = 1

;------------------------------------------------------------------------------
;方向キー＋ボタン
;------------------------------------------------------------------------------

;[Command]
;name = "fwd_a"
;command = /F,a

;------------------------------------------------------------------------------
;レバガチャ
;------------------------------------------------------------------------------

[Command]
name = "gacha"
command = x
time = 1

[Command]
name = "gacha"
command = y
time = 1

[Command]
name = "gacha"
command = z
time = 1

[Command]
name = "gacha"
command = a
time = 1

[Command]
name = "gacha"
command = b
time = 1

[Command]
name = "gacha"
command = c
time = 1

[Command]
name = "gacha"
command = F
time = 1

[Command]
name = "gacha"
command = D
time = 1

[Command]
name = "gacha"
command = B
time = 1

[Command]
name = "gacha"
command = U
time = 1

;------------------------------------------------------------------------------
;ボタン単発
;------------------------------------------------------------------------------

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
name = "s"
command = s
time = 1

[Command]
name = "start"
command = s
time = 1

[Command]
name = "hold_x"
command = /x
time = 1
[Command]
name = "hold_y"
command = /y
time = 1
[Command]
name = "hold_z"
command = /z
time = 1
[Command]
name = "hold_a"
command = /a
time = 1
[Command]
name = "hold_b"
command = /b
time = 1
[Command]
name = "hold_c"
command = /c
time = 1
[Command]
name = "hold_s"
command = /s
time = 1

[Command]
name = "rlsx"
command = ~x
time = 1
[Command]
name = "rlsy"
command = ~y
time = 1
[Command]
name = "rlsz"
command = ~z
time = 1
[Command]
name = "rlsa"
command = ~a
time = 1
[Command]
name = "rlsb"
command = ~b
time = 1
[Command]
name = "rlsc"
command = ~c
time = 1

;------------------------------------------------------------------------------
;方向キー
;------------------------------------------------------------------------------

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

[Command]
name = "rlsfwd"
command = ~$F
time = 1
[Command]
name = "rlsback"
command = ~$B
time = 1
[Command]
name = "rlsup"
command = ~$U
time = 1
[Command]
name = "rlsdown"
command = ~$D
time = 1

[Command]
name = "fwd" ;Required (do not remove)
command = $F
time = 1
[Command]
name = "downfwd"
command = $DF
time = 1
[Command]
name = "down" ;Required (do not remove)
command = $D
time = 1
[Command]
name = "downback"
command = $DB
time = 1
[Command]
name = "back" ;Required (do not remove)
command = $B
time = 1
[Command]
name = "upback"
command = $UB
time = 1
[Command]
name = "up" ;Required (do not remove)
command = $U
time = 1
[Command]
name = "upfwd"
command = $UF
time = 1

;==============================================================================
[Statedef -1]
;==============================================================================
;------------------------------------------------------------------------------
;超必殺技
;------------------------------------------------------------------------------

[State -1, ホールピース]
type = ChangeState
triggerall = !var(53)||(var(53)&&sysfvar(4)=0)
triggerall = (var(0) < 1) && RoundState = 2
;triggerall = (var(34) <= 0) && (var(35) <= 0)
triggerall = (command = "whole-piece")
triggerall = (Power > 2999)
trigger1 = (StateType != A) && (Ctrl)
value = 3200

[State -1, レイジングカーネル]
type = ChangeState
triggerall = !var(53)||(var(53)&&sysfvar(4)=0)
triggerall = (var(0) < 1) && RoundState = 2
;triggerall = (var(34) <= 0) && (var(35) <= 0)
triggerall = (command = "raging-colonel")
triggerall = (Power > 1999)
trigger1 = (StateType != A) && (Ctrl)
value = 3600

[State -1, 居合い]
type = ChangeState
triggerall = !var(53)||(var(53)&&sysfvar(4)=0)
triggerall = (var(0) < 1) && RoundState = 2
;triggerall = (var(34) <= 0) && (var(35) <= 0)
triggerall = (command = "iai")
triggerall = (Power > 999)
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 410) && (MoveContact)
value = 3000

[State -1, ツイスター]
type = ChangeState
triggerall = !var(53)||(var(53)&&sysfvar(4)=0)
triggerall = (var(0) < 1) && RoundState = 2
;triggerall = (var(34) <= 0) && (var(35) <= 0)
triggerall = (command = "twister")
triggerall = (Power > 999)
trigger1 = (StateType != A) && (Ctrl)
value = 3300

[State -1, プレッシャーフライヤー]
type = ChangeState
triggerall = !var(53)||(var(53)&&sysfvar(4)=0)
triggerall = (var(0) < 1) && RoundState = 2
;triggerall = (var(34) <= 0) && (var(35) <= 0)
triggerall = (command = "pressure-fryer")
triggerall = (!NumHelper(3400))
triggerall = (Power > 999)
trigger1 = (StateType != A) && (Ctrl)
value = 3400

[State -1, カーネル3ダース]
type = ChangeState
triggerall = !var(53)||(var(53)&&sysfvar(4)=0)
triggerall = (var(0) < 1) && RoundState = 2
;triggerall = (var(34) <= 0) && (var(35) <= 0)
triggerall = (command = "colonel-3-dozen")
triggerall = (Power > 1999)
trigger1 = (StateType != A) && (Ctrl)
value = 3500

;------------------------------------------------------------------------------
;レイジ必殺技
;------------------------------------------------------------------------------

[State -1, ウイング]
type = ChangeState
triggerall = !var(53)||(var(53)&&sysfvar(4)=0)
triggerall = (command = "wing-or-rib-rage")
triggerall = (var(0) < 1) && RoundState = 2
triggerall = numhelper(8995)
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = [200,499]) && (MoveContact)
;trigger3 = (StateNo = 1000) && (MoveContact)
value = 1070

;------------------------------------------------------------------------------
;必殺技
;------------------------------------------------------------------------------

[State -1, ウイング]
type = ChangeState
triggerall = !var(53)||(var(53)&&sysfvar(4)=0)
triggerall = (command = "wing-or-rib")
triggerall = (var(0) < 1) && RoundState = 2
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = [200,499]) && (MoveContact)
trigger3 = (StateNo = 1000) && (MoveContact)
value = 1010

[State -1, ドラム]
type = ChangeState
triggerall = !var(53)||(var(53)&&sysfvar(4)=0)
triggerall = (command = "drum-or-thigh")
triggerall = (var(0) < 1) && RoundState = 2
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = [200,499]) && (MoveContact)
value = 1000

[State -1, リブ]
type = ChangeState
triggerall = !var(53)||(var(53)&&sysfvar(4)=0)
triggerall = (command = "drum-or-thigh");(command = "wing-or-rib")
triggerall = (var(0) < 1) && RoundState = 2
trigger1 = (StateType = A) && (Ctrl)
trigger2 = (StateNo = [600,699]) && (MoveContact)
trigger3 = (StateNo = 1011) && (Time > 10)
value = 1030

[State -1, サイ]
type = ChangeState
triggerall = !var(53)||(var(53)&&sysfvar(4)=0)
triggerall = (command = "keel2");(command = "drum-or-thigh")
triggerall = (var(0) < 1) && RoundState = 2
trigger1 = (StateType = A) && (Ctrl)
trigger2 = (StateNo = [600,699]) && (MoveContact)
trigger3 = (StateNo = 1011) && (Time > 10)
value = 1020


[State -1, キール]
type = ChangeState
triggerall = !var(53)||(var(53)&&sysfvar(4)=0)
triggerall = (command = "keel")
triggerall = (var(0) < 1) && RoundState = 2
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = [200,499]) && (MoveContact)
value = 1040

[State -1, 投キール]
type = ChangeState
triggerall = !var(53)||(var(53)&&sysfvar(4)=0)
triggerall = (command = "keel2")
triggerall = (var(0) < 1) && RoundState = 2
triggerall = !numhelper(1055)
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = [200,499]) && (MoveContact)
value = 1050

;------------------------------------------------------------------------------
;特殊技
;------------------------------------------------------------------------------

;-------------------------------------------------------------------------
[State -1, Power Charge]
type = ChangeState
value = 6070
triggerall = !var(53)||(var(53)&&sysfvar(4)=0)
trigger1 = (command = "hold_b" && command = "hold_y") || (command = "hold_c")
trigger1 = !AILevel&&RoundState = 2 && StateType != A && (!NumHelper(3400))
trigger1 = power < const(data.power) && power < PowerMax
trigger1 = (ctrl && (StateNo != [100,105])) || ((StateNo = [100,105]) && (Anim = 101 || Anim = 106))

[State -1, 投げ]
type = ChangeState
triggerall = !var(53)||(var(53)&&sysfvar(4)=0)
triggerall = (command = "holdfwd") || (command = "holdback")
triggerall = (command != "holddown")
triggerall = (command = "x" && command = "y")
triggerall = (var(0) < 1) && RoundState = 2
triggerall = (StateNo != 100)
triggerall = (StateNo != 105)
trigger1 = (command = "holdfwd") || (command = "holdback")
trigger1 = (StateType != A)
trigger1 = (Ctrl)
;trigger1 = (P2BodyDist X < 8)
;trigger1 = (P2StateType != A)
;trigger1 = (P2MoveType != H)
value = 800

[State -1, 後退]
type = ChangeState
triggerall = !var(53)||(var(53)&&sysfvar(4)=0)
triggerall = (RoundState = 2) && (Alive)
triggerall = (var(0) < 1)
trigger1 = (((command = "a") && (command = "x")) || (command = "z")) && (command = "holdback") && (StateType != A) && (Ctrl)
value = 710

[State -1, 回り込み]
type = ChangeState
triggerall = !var(53)||(var(53)&&sysfvar(4)=0)
triggerall = (RoundState = 2) && (Alive)
triggerall = (var(0) < 1)
trigger1 = (((command = "a") && (command = "x")) || (command = "z"))  && (StateType != A) && (Ctrl)
value = 700

;------------------------------------------------------------------------------
; 移動関連
;------------------------------------------------------------------------------

[State -1, 走る]
type = ChangeState
triggerall = !var(53)||(var(53)&&sysfvar(4)=0)
triggerall = (StateNo != [100,105])
triggerall = (var(0) < 1) && RoundState = 2
trigger1 = (command = "FF") && (StateType = S) && (Ctrl)
value = 100

[State -1, 後ろに走る]
type = ChangeState
triggerall = !var(53)||(var(53)&&sysfvar(4)=0)
triggerall = (StateNo != [100,105])
triggerall = (var(0) < 1) && RoundState = 2
trigger1 = (command = "BB") && (StateType = S) && (Ctrl)
value = 105

[State -1, スーパージャンプ]
type = ChangeState
triggerall = !var(53)||(var(53)&&sysfvar(4)=0)
triggerall = (var(0) < 1) && RoundState = 2
trigger1 = (command = "super_jump") && (StateType != A) && (Ctrl)
value = 10003

;------------------------------------------------------------------------------

[State -1, しゃがみ強パンチキャンセルジャンプ]
type = ChangeState
triggerall = !var(53)||(var(53)&&sysfvar(4)=0)
triggerall = (var(0) < 1) && RoundState = 2
trigger1 = (command = "holdup") && (StateNo = 410) && (MoveHit)
value = 10003

;------------------------------------------------------------------------------
; 通常攻撃
;------------------------------------------------------------------------------

[State -1, 立ち弱パンチ]
type = ChangeState
triggerall = !var(53)||(var(53)&&sysfvar(4)=0)
triggerall = (command = "x") && (command != "holddown")
triggerall = (var(0) < 1) && RoundState = 2
trigger1 = (StateType = S) && (Ctrl)
;trigger2 = (StateNo = 200) && (MoveContact)
value = 200

[State -1, 立ち強パンチ]
type = ChangeState
triggerall = !var(53)||(var(53)&&sysfvar(4)=0)
triggerall = (command = "y") && (command != "holddown")
triggerall = (var(0) < 1) && RoundState = 2
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && (MoveContact)
trigger3 = (StateNo = 230) && (MoveContact)
trigger4 = (StateNo = 400) && (MoveContact)
trigger5 = (StateNo = 430) && (MoveContact)
value = 210

[State -1, 立ち弱キック]
type = ChangeState
triggerall = !var(53)||(var(53)&&sysfvar(4)=0)
triggerall = (command = "a") && (command != "holddown")
triggerall = (var(0) < 1) && RoundState = 2
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && (MoveContact)
trigger3 = (StateNo = 400) && (MoveContact)
value = 230

[State -1, 立ち強キック]
type = ChangeState
triggerall = !var(53)||(var(53)&&sysfvar(4)=0)
triggerall = (command = "b") && (command != "holddown")
triggerall = (var(0) < 1) && RoundState = 2
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && (MoveContact)
trigger3 = (StateNo = 230) && (MoveContact)
trigger4 = (StateNo = 400) && (MoveContact)
trigger5 = (StateNo = 430) && (MoveContact)
trigger6 = (StateNo = [210,229]) && (MoveContact)
trigger7 = (StateNo = [410,429]) && (MoveContact)
value = 240

;------------------------------------------------------------------------------

[State -1, しゃがみ弱パンチ]
type = ChangeState
triggerall = !var(53)||(var(53)&&sysfvar(4)=0)
triggerall = (command = "x") && (command = "holddown")
triggerall = (var(0) < 1) && RoundState = 2
trigger1 = (StateType = C) && (Ctrl)
;trigger2 = (StateNo = 400) && (MoveContact)
value = 400

[State -1, しゃがみ強パンチ]
type = ChangeState
triggerall = !var(53)||(var(53)&&sysfvar(4)=0)
triggerall = (command = "y") && (command = "holddown")
triggerall = (var(0) < 1) && RoundState = 2
trigger1 = (StateType = C) && (Ctrl)
trigger2 = (StateNo = 200) && (MoveContact)
trigger3 = (StateNo = 230) && (MoveContact)
trigger4 = (StateNo = 400) && (MoveContact)
trigger5 = (StateNo = 430) && (MoveContact)
value = 410

[State -1, しゃがみ弱キック]
type = ChangeState
triggerall = !var(53)||(var(53)&&sysfvar(4)=0)
triggerall = (command = "a") && (command = "holddown")
triggerall = (var(0) < 1) && RoundState = 2
trigger1 = (StateType = C) && (Ctrl)
trigger2 = (StateNo = 200) && (MoveContact)
trigger3 = (StateNo = 400) && (MoveContact)
value = 430

[State -1, しゃがみ強キック]
type = ChangeState
triggerall = !var(53)||(var(53)&&sysfvar(4)=0)
triggerall = (command = "b") && (command = "holddown")
triggerall = (var(0) < 1) && RoundState = 2
trigger1 = (StateType = C) && (Ctrl)
trigger2 = (StateNo = 200) && (MoveContact)
trigger3 = (StateNo = 230) && (MoveContact)
trigger4 = (StateNo = 400) && (MoveContact)
trigger5 = (StateNo = 430) && (MoveContact)
trigger6 = (StateNo = [210,229]) && (MoveContact)
trigger7 = (StateNo = [410,429]) && (MoveContact)
value = 440

;------------------------------------------------------------------------------

[State -1, ジャンプ弱パンチ]
type = ChangeState
triggerall = !var(53)||(var(53)&&sysfvar(4)=0)
triggerall = (command = "x")
triggerall = (var(0) < 1) && RoundState = 2
trigger1 = (StateType = A) && (Ctrl)
trigger2 = (var(35) = 1) && (StateNo = 600 || StateNo = 630) && (MoveContact)
value = 600

[State -1, ジャンプ強パンチ]
type = ChangeState
triggerall = !var(53)||(var(53)&&sysfvar(4)=0)
triggerall = (command = "y")
triggerall = (var(0) < 1) && RoundState = 2
trigger1 = (StateType = A) && (Ctrl)
trigger2 = (StateNo = 600 || StateNo = 630) && (MoveContact)
trigger3 = (var(35) = 1) && (StateNo = 640) && (MoveContact)
value = 610

[State -1, ジャンプ弱キック]
type = ChangeState
triggerall = !var(53)||(var(53)&&sysfvar(4)=0)
triggerall = (command = "a")
triggerall = (var(0) < 1) && RoundState = 2
trigger1 = (StateType = A) && (Ctrl)
trigger2 = (var(35) = 1) && (StateNo = 600 || StateNo = 630) && (MoveContact)
value = 630

[State -1, ジャンプ強キック]
type = ChangeState
triggerall = !var(53)||(var(53)&&sysfvar(4)=0)
triggerall = (command = "b")
triggerall = (var(0) < 1) && RoundState = 2
trigger1 = (StateType = A) && (Ctrl)
trigger2 = (StateNo = 600 || StateNo = 630) && (MoveContact)
trigger3 = (var(35) = 1) && (StateNo = 610) && (MoveContact)
value = 640

;------------------------------------------------------------------------------
;挑発
;------------------------------------------------------------------------------

[State -1, 挑発]
type = ChangeState
triggerall = !var(53)||(var(53)&&sysfvar(4)=0)
triggerall = (command = "start")
triggerall = (var(0) < 1) && RoundState = 2
trigger1 = (StateType != A) && (Ctrl)
value = 195

;------------------------------------------------------------------------------
;ブロッキングリセット
;------------------------------------------------------------------------------

[State -1, Reset Parry]
type = HitOverride
trigger1 = !Ctrl && (StateNo != [6080,6082])
trigger2 = MoveType = A || (MoveType = H && (StateNo != [120,155]))
trigger3 = !AILevel
trigger3 = command = "back" || command = "up" || (StateType = A && command = "down")
slot = 0
time = 0

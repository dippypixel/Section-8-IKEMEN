[Remap]
x = x      ;Ｘボタンの入力判定を実際に押すボタンに割り当てる。
y = y      ;Ｙボタン　　　　　　　　　〃
z = z      ;Ｚボタン　　　　　　　　　〃
a = a      ;Ａボタン　　　　　　　　　〃
b = b      ;Ｂボタン　　　　　　　　　〃
c = c      ;Ｃボタン　　　　　　　　　〃
s = s      ;スタートボタン　　　　　　〃

;-| 超必殺技 |-----------------------------------------------------------------
[Command]
name = "6246aa"
command = ~D, B, F, x+y
time = 20
[Command]
name = "6246aa"
command = ~D, B, F, x+z
time = 20
[Command]
name = "6246aa"
command = ~D, B, F, y+z
time = 20

[Command]
name = "236aa"
command = ~D,DF,F,x+y
time = 16
[Command]
name = "236aa"
command = ~D,DF,F,y+z
time = 16
[Command]
name = "236aa"
command = ~D,DF,F,x+z
time = 16

[Command]
name = "214aa"
command = ~D,DB,B,x+y
time = 16
[Command]
name = "214aa"
command = ~D,DB,B,y+z
time = 16
[Command]
name = "214aa"
command = ~D,DB,B,x+z
time = 16

;-| 必殺技 |-------------------------------------------------------------------
[Command]
name = "63214x"
command = ~F,DF,D,DB,B,x
time = 22
[Command]
name = "63214y"
command = ~F,DF,D,DB,B,y
time = 22
[Command]
name = "63214z"
command = ~F,DF,D,DB,B,z
time = 22

[Command]
name = "41236x"
command = ~D,DF,F,x
time = 22
[Command]
name = "41236y"
command = ~D,DF,F,y
time = 22
[Command]
name = "41236z"
command = ~D,DF,F,z
time = 22

[Command]
name = "236x"
command = ~D,DF,F,x
time = 12
[Command]
name = "236x"
command = ~D,DF,F,~x
time = 12

[Command]
name = "236y"
command = ~D,DF,F,y
time = 12
[Command]
name = "236y"
command = ~D,DF,F,~y
time = 12

[Command]
name = "236z"
command = ~D,DF,F,z
time = 12
[Command]
name = "236z"
command = ~D,DF,F,~z
time = 12

[Command]
name = "236a"
command = ~D,DF,F,a
time = 12
[Command]
name = "236a"
command = ~D,DF,F,~a
time = 12


[Command]
name = "214x"
command = ~D,DB,B,x
time = 12
[Command]
name = "214x"
command = ~D,DB,B,~x
time = 12

[Command]
name = "214y"
command = ~D,DB,B,y
time = 12
[Command]
name = "214y"
command = ~D,DB,B,~y
time = 12

[Command]
name = "214z"
command = ~D,DB,B,z
time = 12
[Command]
name = "214z"
command = ~D,DB,B,~z
time = 12

[Command]
name = "22x"
command = ~D, D, x
time = 15
[Command]
name = "22y"
command = ~D, D, y
time = 15
[Command]
name = "22z"
command = ~D, D, z
time = 15
[Command]
name = "fly"
command = U, U
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
command = a+b
time = 1

[Command]
name = "recovery" ;必須コマンド名
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

[Statedef -1] ;←この行は絶対に消さないでね。必須項目です。

;==============================================================================
; 超必殺技
;==============================================================================
;・・・・・・・
;はもんしっそう
[State -1, 1000]
type = ChangeState
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = command = "c";"214aa"
triggerall = power > 3000
trigger1 = ctrl || (stateno = 100 && time > 3)
trigger2 = (stateno = 200||stateno = 210||stateno = 220||stateno = 400||stateno = 410) && var(4)
value = 3000

;
[State -1, 1000]
type = ChangeState
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = command = "236aa"
triggerall = power > 1000
trigger1 = ctrl || (stateno = 100 && time > 3)
trigger2 = (stateno = 200||stateno = 210||stateno = 220||stateno = 400||stateno = 410) && var(4)
value = 3200

;光の流法・輝彩滑刀
[State -1, 1000]
type = ChangeState
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = command = "214aa"
triggerall = power >= 1000
trigger1 = ctrl || (stateno = 100 && time > 3)
trigger2 = (stateno = 200||stateno = 210||stateno = 220||stateno = 400||stateno = 410) && var(4)
value = 3100

;==============================================================================
; 必殺技
;==============================================================================
;光の流法・輝彩滑刀
[State -1, 1000]
type = ChangeState
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = command = "214x" || command = "214y" || command = "214z"
trigger1 = ctrl || (stateno = 100 && time > 3)
trigger2 = (stateno = 200||stateno = 210||stateno = 220||stateno = 400||stateno = 410) && var(4)
value = 1000

;バラ肉にしちまえ～ッ
[State -1, 1000]
type = ChangeState
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = command = "22x" || command = "22y"
triggerall = (var(58) >= 15 && !var(5))
trigger1 = ctrl || (stateno = 100 && time > 3)
trigger2 = (stateno = 200||stateno = 210||stateno = 220||stateno = 400||stateno = 410) && var(4)
value = 1100

;バラ肉にしちまえ～ッ
[State -1, 1000]
type = ChangeState
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = command = "22z"
triggerall = (var(58) >= 15 && !var(5))
trigger1 = ctrl || (stateno = 100 && time > 3)
trigger2 = (stateno = 200||stateno = 210||stateno = 220||stateno = 400||stateno = 410) && var(4)
value = 1101

;フェザーシュート(ground)
[State -1, 1000]
type = ChangeState
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = command = "41236x" || command = "41236y" || command = "41236z"
trigger1 = ctrl || (stateno = 100 && time > 3)
trigger2 = (stateno = 200||stateno = 210||stateno = 220||stateno = 400||stateno = 410) && var(4)
value = 1200

;フェザーシュート(Air)
[State -1, 1000]
type = ChangeState
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = command = "41236x" || command = "41236y" || command = "41236z"
trigger1 = ctrl || (stateno = 110 && time > 10)
trigger2 = (stateno = 600||stateno = 610||stateno = 620)
value = 1250

;==============================================================================
; 移動関連
;==============================================================================
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

[State -1, 空ダ]
type = ChangeState
value = 110
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = (stateno = 50 && ctrl)

;==============================================================================
; 特殊技
;==============================================================================
;投げ
[State -1, 1000]
type = ChangeState
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = command = "a"
trigger1 = ctrl || (stateno = 100 && time > 3)
value = 800

;空投げ
[State -1, 1000]
type = ChangeState
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = command = "a"
trigger1 = ctrl || (stateno = 110 && time > 10)
value = 850

;ガーキャン
[State -1, 1000]
type = ChangeState
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = command = "236a"
triggerall = power >= 1000
trigger1 = (stateno = [150,152])
trigger1 = time > 0
value = 700

[State -1, 1000]
type = ChangeState
     value = 115
triggerall = command = "b"
triggerall = command != "holddown"
  trigger1 = Statetype = S
  trigger1 = Ctrl
  trigger1 = Stateno != 110		
  trigger1 = Stateno != [150,151]
  ignorehitpause = 9

[State -1, 6c]
type = ChangeState
value = 221
triggerall = command = "z" && command = "holdfwd"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200||stateno = 210||stateno = 220||stateno = 400||stateno = 410) && var(4)

;==============================================================================
; 通常攻撃技
;==============================================================================
[State -1, 立ちa]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && time > 3)
trigger2 = (stateno = 200||stateno = 400||stateno = 600||stateno = 610) && var(4)

[State -1, 立ちb]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && time > 3)
trigger2 = (stateno = 200||stateno = 220||stateno = 400) && var(4)

[State -1, 立ちc]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && time > 3)
trigger2 = (stateno = 410) && var(4)

[State -1, 屈c]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && time > 3)
trigger2 = (stateno = 200||stateno = 210||stateno = 400||stateno = 600||stateno = 610 ) && var(4)

[State -1, 屈c]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && time > 3)
trigger2 = (stateno = 200||stateno = 400) && var(4)

[State -1, 屈c]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && time > 3)

[State -1, ジャンプa]
type = ChangeState
value = 600
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl || (stateno = 110 && time > 10)

[State -1, ジャンプb]
type = ChangeState
value = 610
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl || (stateno = 110 && time > 10)
trigger2 = (stateno = 600) && var(4)

[State -1, ジャンプc]
type = ChangeState
value = 620
triggerall = command = "z"
triggerall = statetype = A
trigger1 = ctrl || (stateno = 110 && time > 10)

;------------------------------------------------------------------------------
[State -1, 挑発]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Volar]
type = ChangeState
value = 910
triggerall = command = "fly"
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Volar
[State -1, Volar]
type = ChangeState
value = 907
triggerall = command = "fly"
trigger1 = statetype != A
trigger1 = ctrl = 1
;Estado de vuelo
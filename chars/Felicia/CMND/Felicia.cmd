;-| 超必殺技 |--------------------------------------------------------
;ここには超必殺技を記述してください、同じ名前を「name =」欄に書けますが
;コマンドは絶対に違ったものにしてください。
;カンフーマンは弱パンチと強パンチで技が出せるように同じ名前のコマンドで
;内容が弱と強になっています。
;「time=20」と書くことで「コマンドを20フレーム以内に入力」と設定できます。
[Command]
name = "ダンシング"
command = ~D, DF, F, x+z

[Command]
name = "ダンシング"
command = ~D, DF, F, y+z

[Command]
name = "ダンシング"
command = ~D, DF, F, x+y

[Command]
name = "HyperSandSplash"
command = ~D, DF, F, a+b

[Command]
name = "HyperSandSplash"
command = ~D, DF, F, a+c

[Command]
name = "HyperSandSplash"
command = ~D, DF, F, b+c

[Command]
name = "へるぷみ"
command = ~D, DB, B, a+b

[Command]
name = "へるぷみ"
command = ~D, DB, B, a+c

[Command]
name = "へるぷみ"
command = ~D, DB, B, b+c

;-| 必殺技 |------------------------------------------------------
[Command]
name = "ヘル"
command = ~F, $D, B, a

[Command]
name = "ヘル"
command = ~F, $D, B, b

[Command]
name = "ヘル"
command = ~F, $D, B, c


[Command]
name = "弱デルタ"
command = ~F, D, DF,  a

[Command]
name = "強デルタ"
command = ~F, D, DF,  b

[Command]
name = "強デルタ"
command = ~F, D, DF,  c


[Command]
name = "弱スパイク"
command = ~F, D, DF,  x

[Command]
name = "強スパイク"
command = ~F, D, DF,  y

[Command]
name = "強スパイク"
command = ~F, D, DF,  z

[Command]
name = "弱ローリング"
command = ~D, DF, F, x

[Command]
name = "強ローリング"
command = ~D, DF, F, y

[Command]
name = "強ローリング"
command = ~D, DF, F, z

[Command]
name = "Sand Splash"
command = D, DF, F, a
time = 20

[Command]
name = "Sand Splash"
command = D, DF, F, b
time = 20

[Command]
name = "Sand Splash"
command = D, DF, F, c
time = 20



[Command]
name = "ヘル"
command = ~F, $D, B, ~a
time = 10
buffer.time = 10

[Command]
name = "ヘル"
command = ~F, $D, B, ~b
time = 10
buffer.time = 10

[Command]
name = "ヘル"
command = ~F, $D, B, ~c
time = 10
buffer.time = 10


[Command]
name = "弱デルタ"
command = ~F, D, DF,  ~a
time = 10
buffer.time = 10

[Command]
name = "強デルタ"
command = ~F, D, DF,  ~b
time = 10
buffer.time = 10

[Command]
name = "強デルタ"
command = ~F, D, DF,  ~c
time = 10
buffer.time = 10


[Command]
name = "弱スパイク"
command = ~F, D, DF,  ~x
time = 10
buffer.time = 10

[Command]
name = "強スパイク"
command = ~F, D, DF,  ~y
time = 10
buffer.time = 10

[Command]
name = "強スパイク"
command = ~F, D, DF,  ~z
time = 10
buffer.time = 10

[Command]
name = "弱ローリング"
command = ~D, DF, F, ~x
time = 10
buffer.time = 10

[Command]
name = "強ローリング"
command = ~D, DF, F, ~y
time = 10
buffer.time = 10

[Command]
name = "強ローリング"
command = ~D, DF, F, ~z
time = 10
buffer.time = 10

[Command]
name = "Sand Splash"
command = ~D, DF, F, ~a
time = 10
buffer.time = 10

[Command]
name = "Sand Splash"
command = ~D, DF, F, ~b
time = 10
buffer.time = 10

[Command]
name = "Sand Splash"
command = ~D, DF, F, ~c
time = 10
buffer.time = 10



;-| ２回押し技 |-----------------------------------------------------------
[Command]
name = "FF"     
command = F, F
time = 10

[Command]
name = "BB"     
command = B, B
time = 10

;-| ２・３個の同時押し技 |-----------------------------------------------
[Command]
name = "recovery"
command = x+y
time = 1

;-| 方向とボタンで出す技 |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command] 
name = "highjump"
command = $D, $U
time = 9

;-| Press Dir |-------------------------------------------------------------
[Command]
name = "pressback"
command = $B

[Command]
name = "pressfwd"
command = $F


;-| ボタン設定（いじらない）|---------------------------------------------------------
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

;-| 押しっぱなし設定（いじらない）-------------------------------------------------------
[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup" 
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1

[Command]
name = "holdupback"
command = /BU
time = 1
buffer.time = 1

[Command]
name = "holdback2"
command = /B
time = 1


[Command]
name = "holddownfwd"
command = /DF
time = 1
buffer.time = 1



[Command]
name = "RecoveryRoll"
command = ~B, DB, D, a

[Command]
name = "RecoveryRoll"
command = ~B, DB, D, b

[Command]
name = "RecoveryRoll"
command = ~B, DB, D, c

[Command]
name = "RecoveryRoll"
command = ~B, DB, D, x

[Command]
name = "RecoveryRoll"
command = ~B, DB, D, y

[Command]
name = "RecoveryRoll"
command = ~B, DB, D, z


; 下の記述↓は絶対に消さないでください。
[Statedef -1]

;===========================================================================


;===========================================================================

;---------------------------------------------------------------------------
;プリーズヘルプミー
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 2100
triggerall = command = "へるぷみ"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = StateNo = [200,251]
trigger3 = StateNo = [400,450]
trigger4 = StateNo = 1000
trigger5 = StateNo = 1050
trigger6 = StateNo = 1300

;---------------------------------------------------------------------------
;ダンシングフラッシュ
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 2050
triggerall = command = "HyperSandSplash"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = StateNo = [200,251]
trigger3 = StateNo = [400,450]
trigger4 = StateNo = 1000
trigger5 = StateNo = 1050
trigger6 = StateNo = 1300

;---------------------------------------------------------------------------
;ダンシングフラッシュ
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 2000
triggerall = command = "ダンシング"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = StateNo = [200,251]
trigger3 = StateNo = [400,450]
trigger4 = StateNo = 1000
trigger5 = StateNo = 1050
trigger6 = StateNo = 1300


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;ヘルキャット
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1400
triggerall = command = "ヘル"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = StateNo = [200,251]
trigger3 = StateNo = [400,450]
;---------------------------------------------------------------------------
;空中強デルタキック
[State -1, Jump Strong Punch]
type = ChangeState
value = 1212
triggerall = command = "強デルタ"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = StateNo = [600,650]
;---------------------------------------------------------------------------
;強デルタキック
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1210
triggerall = command = "強デルタ"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = StateNo = [200,251]
trigger3 = StateNo = [400,450]
;---------------------------------------------------------------------------
;空中弱デルタキック
[State -1, Jump Strong Punch]
type = ChangeState
value = 1201
triggerall = command = "弱デルタ"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = StateNo = [600,650]
;---------------------------------------------------------------------------
;弱デルタキック
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1200
triggerall = command = "弱デルタ"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = StateNo = [200,251]
trigger3 = StateNo = [400,450]
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;弱キャットスパイク
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1100
triggerall = command = "弱スパイク"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = StateNo = [200,251]
trigger3 = StateNo = [400,450]
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;強キャットスパイク
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1150
triggerall = command = "強スパイク"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = StateNo = [200,251]
trigger3 = StateNo = [400,450]

;---------------------------------------------------------------------------
;Sand Splash
[State -1, Sand Splash]
type = ChangeState
value = 1300
triggerall = command = "Sand Splash"
triggerall = stateno != 191
triggerall = stateno != 192
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = [200,251]
trigger3 = StateNo = [400,450]

;---------------------------------------------------------------------------
;弱ローリングバックラー
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1000
triggerall = command = "弱ローリング"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = StateNo = [200,251]
trigger3 = StateNo = [400,450]

;---------------------------------------------------------------------------
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1050
triggerall = command = "強ローリング"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = StateNo = [200,251]
trigger3 = StateNo = [400,450]


;---------------------------------------------------------------------------
;投げ
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
trigger1 = command = "z" && (command = "holdfwd" || command = "holdback")
trigger1 = p2bodydist x < 18 && enemynear,movetype != H
trigger1 = statetype = S && ctrl

;---------------------------------------------------------------------------
;投げ
[State -1, Kung Fu Throw]
type = ChangeState
value = 820
trigger1 = command = "c" && (command = "holdfwd" || command = "holdback")
trigger1 = p2bodydist x < 18 && enemynear,movetype != H
trigger1 = statetype = S && ctrl

; 空中投げ1
[State -1]
type = ChangeState
value = 830
trigger1 = command = "z" && (command = "holdfwd" || command = "holdback")
trigger1 = p2bodydist x < 20 && abs(p2bodydist y) < 20 && enemynear,movetype != H
trigger1 = statetype = A && ctrl

;===========================================================================
;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = stateno != 105
triggerall = stateno != 100
triggerall = stateno != 106
triggerall = statetype = S
triggerall = ctrl
trigger1 = (command = "holdback2" && command = "recovery") || (StateType != A && command = "BB")
trigger1 = statetype = S && ctrl

;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = stateno != 105
triggerall = stateno != 100
triggerall = stateno != 106
triggerall = statetype = S
triggerall = ctrl
trigger1 = (command = "recovery") || (StateType != A && command = "FF")
trigger1 = statetype = S && ctrl

; 立ち強K
[State -1]
type = ChangeState
value = 251
triggerall = command = "c" && command = "holdback" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 440 && movecontact

;===========================================================================
; 立ち弱P 
[State -1]
type = ChangeState
value = 200
triggerall = command = "x" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 200 && animelem = 3,> 0
trigger3 = stateno = 230 && animelem = 4,> 0
trigger4 = stateno = 400 && animelem = 3,> 0
trigger5 = stateno = 430 && animelem = 4,> 0

; 立ち中P
[State -1]
type = ChangeState
value = 210
triggerall = command = "y" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact

; 立ち強P
[State -1]
type = ChangeState
value = 220
triggerall = command = "z" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 440 && movecontact

; 立ち弱K
[State -1]
type = ChangeState
value = 230
triggerall = command = "a" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact

; 立ち中K
[State -1]
type = ChangeState
value = 240
triggerall = command = "b" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 410 && movecontact
trigger7 = stateno = 430 && movecontact

; 立ち強K
[State -1]
type = ChangeState
value = 250
triggerall = command = "c" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 440 && movecontact

[State -1]
type = ChangeState
value = 250
triggerall = statetype != A
triggerall = command = "holddownfwd"
triggerall = command = "c"
trigger1 = ctrl
 
; しゃがみ弱P 
[State -1]
type = ChangeState
value = 400
triggerall = command = "x" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 200 && animelem = 3,> 0
trigger3 = stateno = 230 && animelem = 4,> 0
trigger4 = stateno = 400 && animelem = 3,> 0
trigger5 = stateno = 430 && animelem = 4,> 0

; しゃがみ中P
[State -1]
type = ChangeState
value = 410
triggerall = command = "y" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact

; しゃがみ強P
[State -1]
type = ChangeState
value = 420
triggerall = command = "z" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 440 && movecontact

; しゃがみ弱K
[State -1]
type = ChangeState
value = 430
triggerall = command = "a" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact

; しゃがみ中K
[State -1]
type = ChangeState
value = 440
triggerall = command = "b" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 410 && movecontact
trigger7 = stateno = 430 && movecontact

; しゃがみ強K
[State -1]
type = ChangeState
value = 450
triggerall = command = "c" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 440 && movecontact
 
; ジャンプ弱P 
[State -1]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A && ctrl

; ジャンプ中P
[State -1]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 630 && movecontact
trigger4 = stateno = 710 && movecontact

; ジャンプ強P
[State -1]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 640 && movecontact
trigger6 = stateno = 710 && movecontact
trigger7 = stateno = 720 && movecontact

; ジャンプ弱K
[State -1]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact

; ジャンプ中K
[State -1]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 710 && movecontact

; ジャンプ強K
[State -1]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 640 && movecontact
trigger6 = stateno = 710 && movecontact
trigger7 = stateno = 720 && movecontact
;---------------------------------------------------------------------------
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl


;---------------------------------------------------------------------------
[State -1, Super Jump]
type = ChangeState
value = 99
triggerall = statetype != A
trigger1 = command = "highjump"
trigger1 = ctrl
trigger2 = command = "highjump" || command = "holdup"
trigger2 = MoveHit
trigger2 = Stateno = 250  && movehit

; アドバンシングガード 
[State -1]
type = VarSet
triggerall = roundstate = 2 && !var(59)
triggerall = !numhelper(8060)
triggerall = (command = "x" && command = "y") || (command = "x" && command = "z") || (command = "y" && command = "z") 
trigger1 = stateno = 150
trigger2 = stateno = 152
trigger3 = stateno = 154
var(12) = 1
ignorehitpause = 1

;---------------------------------------------------------------------------
; Wall Cling
[State -1, Wall Cling]
type = ChangeState
value = 750
triggerall = (stateno = 50) && (Pos Y < -70)
triggerall = (StateType = A) && (MoveType != H)
trigger1 = (command = "holdupback") && (BackEdgeDist <= 2)

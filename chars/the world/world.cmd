
[Remap]
x = y
y = z
z = a
a = x
b = b
c = c
s = s

;-| 超必殺技 |--------------------------------------------------------
[Command]
name = "プッツンムダ"
command = ~D, DB, B, a+x
time = 30
[Command]
name = "プッツンムダ"
command = ~D, DB, B, x+y
time = 30
[Command]
name = "プッツンムダ"
command = ~D, DB, B, y+a
time = 30

[Command]
name = "チェックメイトだッ！"
command = ~D, DF, F, a+x
time = 30
[Command]
name = "チェックメイトだッ！"
command = ~D, DF, F, x+y
time = 30
[Command]
name = "チェックメイトだッ！"
command = ~D, DF, F, y+a
time = 30

[Command]
name = "ザ・ワールド！ 時よ止まれ！"
command = ~F, y, a, F, b
time = 45
[Command]
name = "ザ・ワールド！ 時よ止まれ！"
command = ~F, y, a, F, b
time = 50
[Command]
name = "ザ・ワールド！ 時よ止まれ！"
command = ~F, y, a, F, b
time = 55

[Command]
name = "時は動き出す" 
command = a+x+y
time = 10

[Command]
name = "ローラーだッ！"
command =~D, DF, F, D, DF, F, b
time = 30

;-| 必殺技 |------------------------------------------------------
[Command]
name = "弱ここだッ！"
command = ~F, D, DF, a
time = 20

[Command]
name = "中ここだッ！"
command = ~F, D, DF, x
time = 20

[Command]
name = "強ここだッ！"
command = ~F, D, DF, y
time = 20

[Command]
name = "弱ムダムダ"
command = ~D, DF, F, a
time = 12

[Command]
name = "中ムダムダ"
command = ~D, DF, F, x
time = 12

[Command]
name = "強ムダムダ"
command = ~D, DF, F, y
time = 12

[Command]
name = "弱ムダァッ！"
command = ~D, DB, B, a
time = 12

[Command]
name = "中ムダァッ！"
command = ~D, DB, B, x
time = 12

[Command]
name = "強ムダァッ！"
command = ~D, DB, B, y
time = 12

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
;[Command]
;name = "down_a"
;command = /$D,a
;time = 1

;[Command]
;name = "down_b"
;command = /$D,b
;time = 1

;-| ボタン設定（いじらない）|---------------------------------------------------------
[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

;[Command]
;name = "c"
;command = c
;time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

;[Command]
;name = "z"
;command = z
;time = 1

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

----------------------------------;AI
[command]
name = "CPU1"
command = D, D, D, D, D, D, D, D
time = 1
[command]
name = "CPU2"
command = D, D, D, D, D, D, D, F
time = 1
[command]
name = "CPU3"
command = D, D, D, D, D, D, D, B
time = 1
[command]
name = "CPU4"
command = D, D, D, D, D, D, D, U
time = 1
[command]
name = "CPU5"
command = F, F, F, F, F, F, F, F
time = 1
[command]
name = "CPU6"
command = F, F, F, F, F, F, F, D
time = 1
[command]
name = "CPU7"
command = F, F, F, F, F, F, F, B
time = 1
[command]
name = "CPU8"
command = F, F, F, F, F, F, F, U
time = 1
[command]
name = "CPU9"
command = B, B, B, B, B, B, B, B
time = 1
[command]
name = "CPU10"
command = B, B, B, B, B, B, B, F
time = 1
[command]
name = "CPU11"
command = B, B, B, B, B, B, B, D
time = 1
[command]
name = "CPU12"
command = B, B, B, B, B, B, B, U
time = 1
[command]
name = "CPU13"
command = U, U, U, U, U, U, U, U
time = 1
[command]
name = "CPU14"
command = U, U, U, U, U, U, U, D
time = 1
[command]
name = "CPU15"
command = U, U, U, U, U, U, U, F
time = 1
[command]
name = "CPU16"
command = U, U, U, U, U, U, U, B
time = 1
[command]
name = "CPU17"
command = a, a, a, a, a, a, a, a
time = 1
[command]
name = "CPU18"
command = a, a, a, a, a, a, a, b
time = 1
[command]
name = "CPU19"
command = a, a, a, a, a, a, a, c
time = 1
[command]
name = "CPU20"
command = x, x, x, x, x, x, x, x
time = 1

; 下の記述↓は絶対に消さないでください。
[Statedef -1]

;===========================================================================
;チェックメイトだッ！
[State -1]
type = ChangeState
value = ifelse((statetype = S || statetype = C),2000,2100)
triggerall = command = "チェックメイトだッ！"
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = (stateno = 200) || (stateno = 210) || (stateno = 220)
trigger2 = movecontact = 1
trigger3 = (stateno = 300) || (stateno = 310) || (stateno = 320)
trigger3 = movecontact = 1
trigger4 = (stateno = 400) || (stateno = 410) || (stateno = 420)
trigger4 = movecontact = 1

;---------------------------------------------------------------------------
;プッツンムダ
[State -1]
type = ChangeState
value = ifelse((statetype = S || statetype = C),2200,2210)
triggerall = command = "プッツンムダ"
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = (stateno = 200) || (stateno = 210) || (stateno = 220)
trigger2 = movecontact = 1
trigger3 = (stateno = 300) || (stateno = 310) || (stateno = 320)
trigger3 = movecontact = 1
trigger4 = (stateno = 400) || (stateno = 410) || (stateno = 420)
trigger4 = movecontact = 1

;---------------------------------------------------------------------------
;ザ・ワールド！ 時よ止まれ！
[State -1]
type = ChangeState
value = 3000+var(8)
triggerall = command = "ザ・ワールド！ 時よ止まれ！"
triggerall = power >= 3000
triggerall = var(5) = 0
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) || (stateno = 210) || (stateno = 220)
trigger2 = movecontact = 1 || movecontact = 0
trigger3 = (stateno = 300) || (stateno = 310) || (stateno = 320)
trigger3 = movecontact = 1 || movecontact = 0
trigger4 = (stateno = 400) || (stateno = 410) || (stateno = 420)
trigger4 = movecontact = 1 || movecontact = 0

;---------------------------------------------------------------------------
;ローラーだッ！
[State -1]
type = ChangeState
value = 3100
triggerall = numhelper(3015) = 0
triggerall = numhelper(3000) = 0
triggerall = numhelper(3100) = 0
triggerall = command = "ローラーだッ！"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl

;===========================================================================
;弱ムダムダ
[State -1]
type = ChangeState
value = ifelse((statetype = S || statetype = C),1000,1100)
triggerall = command = "弱ムダムダ"
trigger1 = ctrl
trigger1 = statetype = S || statetype = A
trigger2 = (stateno = 200) || (stateno = 210) || (stateno = 220)
trigger2 = movecontact = 1
trigger3 = (stateno = 300) || (stateno = 310) || (stateno = 320)
trigger3 = movecontact = 1
trigger4 = (stateno = 400) || (stateno = 410) || (stateno = 420)
trigger4 = movecontact = 1

;---------------------------------------------------------------------------
;中ムダムダ
[State -1]
type = ChangeState
value = ifelse((statetype = S || statetype = C),1010,1110)
triggerall = command = "中ムダムダ"
trigger1 = ctrl
trigger1 = statetype = S || statetype = A
trigger2 = (stateno = 200) || (stateno = 210) || (stateno = 220)
trigger2 = movecontact = 1
trigger3 = (stateno = 300) || (stateno = 310) || (stateno = 320)
trigger3 = movecontact = 1
trigger4 = (stateno = 400) || (stateno = 410) || (stateno = 420)
trigger4 = movecontact = 1

;---------------------------------------------------------------------------
;強ムダムダ
[State -1]
type = ChangeState
value = ifelse((statetype = S || statetype = C),1020,1120)
triggerall = command = "強ムダムダ"
trigger1 = ctrl
trigger1 = statetype = S || statetype = A
trigger2 = (stateno = 200) || (stateno = 210) || (stateno = 220)
trigger2 = movecontact = 1
trigger3 = (stateno = 300) || (stateno = 310) || (stateno = 320)
trigger3 = movecontact = 1
trigger4 = (stateno = 400) || (stateno = 410) || (stateno = 420)
trigger4 = movecontact = 1

;---------------------------------------------------------------------------
;弱ムダァッ！
[State -1]
type = ChangeState
value = 1300
triggerall = command = "弱ムダァッ！"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) || (stateno = 210) || (stateno = 220)
trigger2 = movecontact = 1
trigger3 = (stateno = 300) || (stateno = 310) || (stateno = 320)
trigger3 = movecontact = 1
trigger4 = (stateno = 400) || (stateno = 410) || (stateno = 420)
trigger4 = movecontact = 1
;---------------------------------------------------------------------------
;中ムダァッ！！
[State -1]
type = ChangeState
value = 1310
triggerall = command = "中ムダァッ！"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) || (stateno = 210) || (stateno = 220)
trigger2 = movecontact = 1
trigger3 = (stateno = 300) || (stateno = 310) || (stateno = 320)
trigger3 = movecontact = 1
trigger4 = (stateno = 400) || (stateno = 410) || (stateno = 420)
trigger4 = movecontact = 1
;---------------------------------------------------------------------------
;強ムダァッ！
[State -1]
type = ChangeState
value = 1320
triggerall = command = "強ムダァッ！"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) || (stateno = 210) || (stateno = 220)
trigger2 = movecontact = 1
trigger3 = (stateno = 300) || (stateno = 310) || (stateno = 320)
trigger3 = movecontact = 1
trigger4 = (stateno = 400) || (stateno = 410) || (stateno = 420)
trigger4 = movecontact = 1

;---------------------------------------------------------------------------
;弱ここだッ！
[State -1]
type = ChangeState
value = 1400
triggerall = command = "弱ここだッ！"
trigger1 = statetype != A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;中ここだッ！
[State -1]
type = ChangeState
value = 1410
triggerall = command = "中ここだッ！"
trigger1 = statetype != A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;強ここだッ！
[State -1]
type = ChangeState
value = 1420
triggerall = command = "強ここだッ！"
trigger1 = statetype != A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;投げ
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = var(5) = 0
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;===========================================================================
;---------------------------------------------------------------------------
;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact = 1
trigger3 = (stateno = 200) && time >= 12
;---------------------------------------------------------------------------
;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact = 1

;---------------------------------------------------------------------------
;立ち強キック
[State -1, Stand Light Kick]
type = ChangeState
value = 220
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) || (stateno = 210) || (stateno = 310)
trigger2 = movecontact = 1
;---------------------------------------------------------------------------
;しゃがみ弱キック
[State -1, Crouching Light Punch]
type = ChangeState
value = 300
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 300) && movecontact = 1 && time >= 8

;---------------------------------------------------------------------------
;しゃがみ中パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 310
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 300) && movecontact = 1

;---------------------------------------------------------------------------
;しゃがみ強パンチ
[State -1, Crouching Light Kick]
type = ChangeState
value = 320
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 210) || (stateno = 300) || (stateno = 310)
trigger2 = movecontact = 1

;---------------------------------------------------------------------------
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 400
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中中パンチ
[State -1, Jump Strong Punch]
type = ChangeState
value = 410
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movecontact

;---------------------------------------------------------------------------
;空中強パンチ
[State -1, Jump Light Kick]
type = ChangeState
value = 420
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 410)
trigger2 = movecontact

;---------------------------------------------------------------------------
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;回り込み
[State -1, Taunt]
type = ChangeState
value = 900
triggerall = command = "b"
trigger1 = statetype != A
trigger1 = ctrl


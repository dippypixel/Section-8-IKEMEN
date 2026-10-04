;---------------------------------------------------------------------------
;リマップ
;---------------------------------------------------------------------------
;[Remap]
;x = x
;y = y
;z = z
;a = a
;b = b
;c = c
;s = s

;---------------------------------------------------------------------------
;デフォルト設定
;---------------------------------------------------------------------------
[Defaults]
command.time = 1
command.buffer.time = 1

;---------------------------------------------------------------------------
;ファイナルメモリーコマンド
;---------------------------------------------------------------------------
[Command]
name = "c236236"
command = ~c, D, DF, F, D, DF, F
time = 40

;---------------------------------------------------------------------------
;エタニースペシャルコマンド
;---------------------------------------------------------------------------
[Command]
name = "236236a"
command = ~D, DF, F, D, DF, F, a
time = 30

[Command]
name = "236236b"
command = ~D, DF, F, D, DF, F, b
time = 30

[Command]
name = "236236c"
command = ~D, DF, F, D, DF, F, c
time = 30

[Command]
name = "214214a"
command = ~D, DB, B, D, DB, B, a
time = 30

[Command]
name = "214214b"
command = ~D, DB, B, D, DB, B, b
time = 30

[Command]
name = "214214c"
command = ~D, DB, B, D, DB, B, c
time = 30

;---------------------------------------------------------------------------
;スキルコマンド
;---------------------------------------------------------------------------
[Command]
name = "236a"
command = ~D, DF, F, a
time = 15

[Command]
name = "236b"
command = ~D, DF, F, b
time = 15

[Command]
name = "236c"
command = ~D, DF, F, c
time = 15

[Command]
name = "236z"
command = ~D, DF, F, z
time = 15

[Command]
name = "623a"
command = ~F, D, DF, a
time = 25

[Command]
name = "623b"
command = ~F, D, DF, b
time = 25

[Command]
name = "623c"
command = ~F, D, DF, c
time = 25

[Command]
name = "214a"
command = ~D, DB, B, a
time = 15

[Command]
name = "214b"
command = ~D, DB, B, b
time = 15

[Command]
name = "214c"
command = ~D, DB, B, c
time = 15

[Command]
name = "41236a"
command = ~B, DB, DF, a
time = 25

[Command]
name = "41236b"
command = ~B, DB, DF, b
time = 25

[Command]
name = "41236c"
command = ~B, DB, DF, c
time = 25

[Command]
name = "22c"
command = ~D, D, c
time = 15

;---------------------------------------------------------------------------
;その他
;---------------------------------------------------------------------------
[Command]
name = "recovery"	;必須コマンド
command = a

[Command]
name = "recovery"
command = b

[Command]
name = "recovery"
command = c

[Command]
name = "recovery"
command = x

[Command]
name = "recovery"
command = y

[Command]
name = "recovery"
command = z

[Command]
name = "FF"		;必須コマンド
command = F, F
time = 10

[Command]
name = "BB"		;必須コマンド
command = B, B
time = 10

[Command]
name = "FF_2"
command = F, F
time = 15

[Command]
name = "BB_2"
command = B, B
time = 15

;---------------------------------------------------------------------------
;ボタン単発
;---------------------------------------------------------------------------
[Command]
name = "a"
command = a

[Command]
name = "b"
command = b

[Command]
name = "c"
command = c

[Command]
name = "x"
command = x

[Command]
name = "y"
command = y

[Command]
name = "z"
command = z

[Command]
name = "start"
command = s

[Command]
name = "SS"
command = s, s
time = 15

;---------------------------------------------------------------------------
;方向キー
;---------------------------------------------------------------------------
[Command]
name = "holdfwd"	;必須コマンド
command = /$F

[Command]
name = "holdback"	;必須コマンド
command = /$B

[Command]
name = "holdup"		;必須コマンド
command = /$U

[Command]
name = "holddown"	;必須コマンド
command = /$D

[Command]
name = "fwd"
command = F

[Command]
name = "back"
command = B

[Command]
name = "up"
command = U

[command]
name = "down"
command = D

;---------------------------------------------------------------------------
[Statedef -1]
;---------------------------------------------------------------------------
;ファイナルメモリー
;---------------------------------------------------------------------------
[State -1, 超級だおー電影弾]
type = ChangeState
value = 3000
triggerall = var(59) = 0
triggerall = command = "c236236"
triggerall = power >= 3000
triggerall = 3*Life <= LifeMax || palno >= 7
triggerall = StateType != A
trigger1 = ctrl || var(7) = 1
trigger2 = (Stateno = [200, 320]) || Stateno = 320
trigger3 = Stateno = 1430 || Stateno = 1440 || (Stateno = 1460 && time >= 8)

;---------------------------------------------------------------------------
;エタニースペシャル
;---------------------------------------------------------------------------
[State -1, くろいあくまだおー(Lv1)]
type = ChangeState
value = 2000
triggerall = var(59) = 0
triggerall = StateType != A
triggerall = command = "236236a"
triggerall = power >= 1000
trigger1 = ctrl || var(7) = 1
trigger2 = (Stateno = [200, 420]) && (var(20) = [1, 3])
trigger3 = Stateno = 1460 && time >= 8

[State -1, くろいあくまだおー(Lv2)]
type = ChangeState
value = 2000 + 10*(power >= 2000)
triggerall = var(59) = 0
triggerall = StateType != A
triggerall = command = "236236b"
triggerall = power >= 1000
trigger1 = ctrl || var(7) = 1
trigger2 = (Stateno = [200, 420]) && (var(20) = [1, 3])
trigger3 = Stateno = 1460 && time >= 8

[State -1, くろいあくまだおー(Lv3)]
type = ChangeState
value = 2000 + 10*(power >= 2000) + 10*(power >= 3000)
triggerall = var(59) = 0
triggerall = StateType != A
triggerall = command = "236236c"
triggerall = power >= 1000
trigger1 = ctrl || var(7) = 1
trigger2 = (Stateno = [200, 420]) && (var(20) = [1, 3])
trigger3 = Stateno = 1460 && time >= 8

[State -1, びーむーだおー(Lv1)]
type = ChangeState
value = 2100
triggerall = var(59) = 0
triggerall = StateType != A
triggerall = command = "214214a"
triggerall = power >= 1000
trigger1 = ctrl || var(7) = 1
trigger2 = (Stateno = [200, 420]) && (var(20) = [1, 3])
trigger3 = Stateno = 1460 && time >= 8

[State -1, びーむーだおー(Lv2)]
type = ChangeState
value = 2100 + 10*(power >= 2000)
triggerall = var(59) = 0
triggerall = StateType != A
triggerall = command = "214214b"
triggerall = power >= 1000
trigger1 = ctrl || var(7) = 1
trigger2 = (Stateno = [200, 420]) && (var(20) = [1, 3])
trigger3 = Stateno = 1460 && time >= 8

[State -1, びーむーだおー(Lv3)]
type = ChangeState
value = 2100 + 10*(power >= 2000) + 10*(power >= 3000)
triggerall = var(59) = 0
triggerall = StateType != A
triggerall = command = "214214c"
triggerall = power >= 1000
trigger1 = ctrl || var(7) = 1
trigger2 = (Stateno = [200, 420]) && (var(20) = [1, 3])
trigger3 = Stateno = 1460 && time >= 8

;---------------------------------------------------------------------------
;必殺技
;---------------------------------------------------------------------------
[State -1, ころがるんだお～(弱)]
type = ChangeState
value = 1300
triggerall = var(59) = 0
triggerall = StateType != A
triggerall = command = "41236a"
triggerall = var(40) >= 1
trigger1 = ctrl || var(7) = 1
trigger2 = (Stateno = [200, 420]) && (var(20) = [1, 3])
trigger3 = (Stateno = [1430, 1440]) && (var(20) = [1, 3])
trigger4 = Stateno = 1460 && time >= 8

[State -1, ころがるんだお～(中)]
type = ChangeState
value = 1310
triggerall = var(59) = 0
triggerall = StateType != A
triggerall = command = "41236b"
triggerall = var(40) >= 1
trigger1 = ctrl || var(7) = 1
trigger2 = (Stateno = [200, 420]) && (var(20) = [1, 3])
trigger3 = (Stateno = [1430, 1440]) && (var(20) = [1, 3])
trigger4 = Stateno = 1460 && time >= 8

[State -1, ころがるんだお～(RF)]
type = ChangeState
value = 1310 + 10*(fvar(4) >= 2)
triggerall = var(59) = 0
triggerall = StateType != A
triggerall = command = "41236c"
triggerall = var(40) >= 1
trigger1 = ctrl || var(7) = 1
trigger2 = (Stateno = [200, 420]) && (var(20) = [1, 3])
trigger3 = (Stateno = [1430, 1440]) && (var(20) = [1, 3])
trigger4 = Stateno = 1460 && time >= 8

[State -1, なゆきちゃんキックだおー(弱)]
type = ChangeState
value = 1200
triggerall = var(59) = 0
triggerall = StateType != A
triggerall = command = "623a"
triggerall = var(40) >= 2
trigger1 = ctrl || var(7) = 1
trigger2 = (Stateno = [200, 420]) && (var(20) = [1, 3])
trigger3 = (Stateno = [1430, 1440]) && (var(20) = [1, 3])
trigger4 = Stateno = 1460 && time >= 8

[State -1, なゆきちゃんキックだおー(中)]
type = ChangeState
value = 1210
triggerall = var(59) = 0
triggerall = StateType != A
triggerall = command = "623b"
triggerall = var(40) >= 2
trigger1 = ctrl || var(7) = 1
trigger2 = (Stateno = [200, 420]) && (var(20) = [1, 3])
trigger3 = (Stateno = [1430, 1440]) && (var(20) = [1, 3])
trigger4 = Stateno = 1460 && time >= 8

[State -1,なゆきちゃんキックだおー(RF)]
type = ChangeState
value = 1210 + 10*(fvar(4) >= 2)
triggerall = var(59) = 0
triggerall = StateType != A
triggerall = command = "623c"
triggerall = var(40) >= 2
trigger1 = ctrl || var(7) = 1
trigger2 = (Stateno = [200, 420]) && (var(20) = [1, 3])
trigger3 = (Stateno = [1430, 1440]) && (var(20) = [1, 3])
trigger4 = Stateno = 1460 && time >= 8

[State -1, けろぴーはここ(弱)]
type = ChangeState
value = 1100
triggerall = var(59) = 0
triggerall = StateType != A
triggerall = command = "236a"
trigger1 = ctrl || var(7) = 1
trigger2 = (Stateno = [200, 420]) && (var(20) = [1, 3])
trigger3 = (Stateno = [1430, 1440]) && (var(20) = [1, 3])
trigger4 = Stateno = 1460 && time >= 8

[State -1, けろぴーはここ(中)]
type = ChangeState
value = 1110
triggerall = var(59) = 0
triggerall = StateType != A
triggerall = command = "236b"
trigger1 = ctrl || var(7) = 1
trigger2 = (Stateno = [200, 420]) && (var(20) = [1, 3])
trigger3 = (Stateno = [1430, 1440]) && (var(20) = [1, 3])
trigger4 = Stateno = 1460 && time >= 8

[State -1, けろぴーはここ(RF)]
type = ChangeState
value = 1110 + 10*(fvar(4) >= 2)
triggerall = var(59) = 0
triggerall = StateType != A
triggerall = command = "236c"
trigger1 = ctrl || var(7) = 1
trigger2 = (Stateno = [200, 420]) && (var(20) = [1, 3])
trigger3 = (Stateno = [1430, 1440]) && (var(20) = [1, 3])
trigger4 = Stateno = 1460 && time >= 8

[State -1, けろぴーはここ(フェイント)]
type = ChangeState
value = 1140
triggerall = var(59) = 0
triggerall = StateType != A
triggerall = command = "236z"
trigger1 = ctrl || var(7) = 1
trigger2 = (Stateno = [200, 420]) && (var(20) = [1, 3])
trigger3 = (Stateno = [1430, 1440]) && (var(20) = [1, 3])
trigger4 = Stateno = 1460 && time >= 8

[State -1, イチゴジャムおいしい]
type = ChangeState
value = 1000
triggerall = var(59) = 0
triggerall = StateType != A
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = var(40) < 9
trigger1 = ctrl || var(7) = 1
trigger2 = (Stateno = [200, 420]) && (var(20) = [1, 3])
trigger3 = (Stateno = [1430, 1440]) && (var(20) = [1, 3])
trigger4 = Stateno = 1460 && time >= 8

[State -1, フェイントジャム]
type = ChangeState
value = 1050
triggerall = var(59) = 0
triggerall = StateType != A
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = var(40) < 9
trigger1 = ctrl || var(7) = 1
trigger2 = (Stateno = [200, 420]) && (var(20) = [1, 3])
trigger3 = (Stateno = [1430, 1440]) && (var(20) = [1, 3])
trigger4 = Stateno = 1460 && time >= 8

[State -1, くー]
type = ChangeState
value = 1400
triggerall = var(59) = 0
triggerall = StateType != A
triggerall = command = "214a" || command = "214b" || command = "214c"
triggerall = var(40) >= 1
trigger1 = ctrl || var(7) = 1
trigger2 = (Stateno = [200, 420]) && (var(20) = [1, 3])
trigger3 = (Stateno = [1300, 1311]) && (var(20) = [1, 3])
trigger4 = Stateno = 1430 && (var(20) = [1, 3])
trigger5 = Stateno = 1440 && (var(20) = [1, 3]) && var(40) >= 7
trigger6 = Stateno = 1460 && time >= 8 && var(40) >= 7

;---------------------------------------------------------------------------
;くー派生
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
triggerall = var(59) = 0
triggerall = Stateno = 1400
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(9) < 0
trigger1 = command = "623a" && var(40) >= 1
value = 1200

[State -1]
type = ChangeState
triggerall = var(59) = 0
triggerall = Stateno = 1400
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(9) < 0
trigger1 = command = "236a" || command = "236b"
value = 1100

[State -1]
type = ChangeState
triggerall = var(59) = 0
triggerall = Stateno = 1400
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(9) < 0
trigger1 = command = "236z"
value = 1110

[State -1]
type = ChangeState
triggerall = var(59) = 0
triggerall = Stateno = 1400
trigger1 = var(40) < 9
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(9) < 0
trigger1 = command = "z" && command = "holddown"
value = 1050

[State -1]
type = ChangeState
triggerall = var(59) = 0
triggerall = Stateno = 1400
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(9) < 0
trigger1 = command = "FF"
value = 100

[State -1]
type = ChangeState
triggerall = var(59) = 0
triggerall = Stateno = 1400
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(9) < 0
trigger1 = command = "BB"
value = 105

[State -1]
type = ChangeState
triggerall = var(59) = 0
triggerall = Stateno = 1400
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(9) < 0
trigger1 = command = "a"
value = 1410

[State -1]
type = ChangeState
triggerall = var(59) = 0
triggerall = Stateno = 1400
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(9) < 0
trigger1 = command = "b"
value = 1420

[State -1]
type = ChangeState
triggerall = var(59) = 0
triggerall = Stateno = 1400
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(9) < 0
trigger1 = command = "c" && command != "holddown"
value = 1430

[State -1]
type = ChangeState
triggerall = var(59) = 0
triggerall = Stateno = 1400
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(9) < 0
trigger1 = command = "c"
value = 1440

[State -1]
type = ChangeState
triggerall = var(59) = 0
triggerall = Stateno = 1400
trigger1 = var(40) < 9
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(9) < 0
trigger1 = command = "z" && command != "holdfwd" && command != "holdback"
value = 1450

[State -1]
type = ChangeState
triggerall = var(59) = 0
triggerall = Stateno = 1400
trigger1 = var(40) >= 9
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(9) < 0
trigger1 = command = "z" && command != "holdfwd" && command != "holdback"
value = 1455

[State -1]
type = ChangeState
triggerall = var(59) = 0
triggerall = Stateno = 1400
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(9) < 0
trigger1 = command = "z"
value = 1460

;---------------------------------------------------------------------------
;ローリング移動派生
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
triggerall = var(59) = 0
triggerall = Stateno = 1460
trigger1 = time >= 8
trigger1 = command = "a"
value = 1410

[State -1]
type = ChangeState
triggerall = var(59) = 0
triggerall = Stateno = 1460
trigger1 = time >= 8
trigger1 = command = "b"
value = 1420

[State -1]
type = ChangeState
triggerall = var(59) = 0
triggerall = Stateno = 1460
trigger1 = time >= 8
trigger1 = command = "c" && command != "holddown"
value = 1430

[State -1]
type = ChangeState
triggerall = var(59) = 0
triggerall = Stateno = 1460
trigger1 = time >= 8
trigger1 = command = "c"
value = 1440

[State -1]
type = ChangeState
triggerall = var(59) = 0
triggerall = Stateno = 1460
trigger1 = var(40) >= 9
trigger1 = time >= 8
trigger1 = command = "z"
value = 1455

;---------------------------------------------------------------------------
;移動関連
;---------------------------------------------------------------------------
[State -1, フロントステップ]
type = ChangeState
value = 100
triggerall = var(59) = 0
triggerall = StateType != A
triggerall = Stateno != [100, 106]
triggerall = command != "holddown"
triggerall = command = "FF"
trigger1 = ctrl

[State -1, バックステップ]
type = ChangeState
value = 105
triggerall = var(59) = 0
triggerall = StateType != A
triggerall = Stateno != [100, 106]
triggerall = command != "holddown"
triggerall = command = "BB"
trigger1 = ctrl

[State -1, 空中前ダッシュ]
type = ChangeState
value = 110
triggerall = var(59) = 0
triggerall = StateType = A
triggerall = command != "holddown" && command != "holdup"
triggerall = var(5) < 1 + (var(40) >= 3) + (var(40) >= 8)
trigger1 = ctrl && command = "FF"
trigger2 = (Stateno = [400, 420]) && (var(20) = [1, 3]) && (command = "FF" || command = "FF_2")
trigger3 = (Stateno = 110 || Stateno = 115) && AnimElemTime(6) >= 0 && (command = "FF" || command = "FF_2")
trigger3 = ceil(p2Dist X) >= 0
trigger4 = Stateno = 110 && AnimElemTime(6) >= 0 && (command = "BB" || command = "BB_2")
trigger4 = ceil(p2Dist X) < 0
trigger5 = Stateno = 3030 && (command = "FF" || command = "FF_2") && time = [20, 46]

[State -1, 空中後ダッシュ]
type = ChangeState
value = 115
triggerall = var(59) = 0
triggerall = StateType = A
triggerall = command != "holddown" && command != "holdup"
triggerall = var(5) < 1 + (var(40) >= 3) + (var(40) >= 8)
trigger1 = ctrl && command = "BB"
trigger2 = Stateno = 215 && (var(20) = [1, 3]) && (command = "BB" || command = "BB_2")
trigger3 = (Stateno = [400, 420]) && (var(20) = [1, 3]) && (command = "BB" || command = "BB_2")
trigger4 = (Stateno = 110 || Stateno = 115) && AnimElemTime(6) >= 0 && (command = "BB" || command = "BB_2")
trigger4 = ceil(p2Dist X) >= 0
trigger5 = Stateno = 110 && AnimElemTime(6) >= 0 && (command = "FF" || command = "FF_2")
trigger5 = ceil(p2Dist X) < 0
trigger6 = Stateno = 3030 && (command = "BB" || command = "BB_2") && time = [20, 46]

[State -1, 空中ジャンプ]
type = ChangeState
value = 45
triggerall = var(59) = 0
triggerall = StateType = A
triggerall = var(4) < 1
triggerall = var(6) = 1
trigger1 = ctrl

[State -1, 地上ジャンプキャンセル]
type = ChangeState
value = 40
triggerall = var(59) = 0
triggerall = command = "up" || command = "holdup"
triggerall = StateType != A
trigger1 = (Stateno = [200, 210]) && (var(20) = [1, 3])
trigger2 = Stateno = 220 && (var(20) = [1, 3]) && var(40) >= 7
trigger3 = (Stateno = [300, 320]) && (var(20) = [1, 3])

[State -1, 空中ジャンプキャンセル]
type = ChangeState
value = 45
triggerall = var(59) = 0
triggerall = command = "up" || command = "holdup"
triggerall = StateType = A
triggerall = var(4) < 1
trigger1 = (Stateno = [400, 420]) && (var(20) = [1, 3])

[State -1, インスタントチャージ]
type = ChangeState
value = 800 + 10*(StateType = A)
triggerall = var(59) = 0
triggerall = command = "22c"
triggerall = fvar(4) >= 2
trigger1 = (Stateno = 110 || Stateno = 115) && (var(20) = [1, 3])
trigger2 = (Stateno = [200, 440]) && (var(20) = [1, 3])
trigger3 = (Stateno = [1200, 1223]) && (var(20) = [1, 3])
trigger4 = (Stateno = [1300, 1321]) && (var(20) = [1, 3])
trigger5 = (Stateno = [1410, 1440]) && (var(20) = [1, 3])
trigger6 = Stateno = 1465
trigger7 = Stateno = 3030 && time = [20, 46]

[State -1, フリッカーインスタントチャージ]
type = ChangeState
value = 800 + 10*(StateType = A)
triggerall = var(59) = 0
triggerall = var(13) = 1
triggerall = fvar(4) >= 2
trigger1 = Stateno = [1100, 1120]

[State -1, 地上投げ]
type = ChangeState
value = 500
triggerall = var(59) = 0
triggerall = command = "c"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = StateType = S
triggerall = MoveType = I
triggerall = p2BodyDist X < 20
triggerall = EnemyNear,MoveType != H
triggerall = EnemyNear,StateType != A
triggerall = EnemyNear,Stateno != [150, 155]
trigger1 = ctrl

[State -1, 空中投げ]
type = ChangeState
value = 520
triggerall = var(59) = 0
triggerall = command = "c"
triggerall = command = "holdfwd"
triggerall = StateType = A
triggerall = p2BodyDist X < 20
triggerall = EnemyNear,StateType = A
triggerall = EnemyNear,Stateno != [150, 155]
trigger1 = ctrl

;---------------------------------------------------------------------------
;特殊技
;---------------------------------------------------------------------------
[State -1, 遠中追撃]
type = ChangeState
value = 430
triggerall = var(59) = 0
triggerall = var(40) >= 5
triggerall = command = "c"
triggerall = StateType = A
trigger1 = Stateno = 215 && AnimElemTime(7) >= 0

[State -1, なゆリープ]
type = ChangeState
value = 440
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = StateType != A
triggerall = var(40) >= 2
trigger1 = ctrl || var(7) = 1
trigger2 = (Stateno = [200, 210]) || Stateno = 300
trigger2 = var(20) = [1, 3]

;---------------------------------------------------------------------------
;通常技
;---------------------------------------------------------------------------
[State -1, 立弱]
type = ChangeState
value = 200
triggerall = var(59) = 0
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = StateType != A
trigger1 = ctrl || var(7) = 1
trigger2 = Stateno = 200 && (var(20) = [1, 3])
trigger3 = Stateno = 300 && (var(20) = [1, 3])

[State -1, 近中]
type = ChangeState
value = 210
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = StateType != A
trigger1 = ctrl || var(7) = 1
trigger1 = p2BodyDist X <= 30
trigger2 = Stateno = 200 && (var(20) = [1, 3])
trigger3 = Stateno = 300 && (var(20) = [1, 3])

[State -1, 遠中]
type = ChangeState
value = 215
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = StateType != A
trigger1 = ctrl || var(7) = 1
trigger1 = p2BodyDist X > 30 && command != "holddown"
trigger2 = Stateno = 210 && var(20) = [1, 3]
trigger2 = command != "holddown" || var(40) < 1
trigger3 = Stateno = 310 && AnimElemTime(3) >= 0 && var(40) >= 2 

[State -1, 立強]
type = ChangeState
value = 220
triggerall = var(59) = 0
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = StateType != A
trigger1 = ctrl || var(7) = 1
trigger2 = (Stateno = [200, 210]) && (var(20) = [1, 3])
trigger3 = (Stateno = [218, 219]) && (var(20) = [1, 3])
trigger4 = (Stateno = [300, 310]) && (var(20) = [1, 3])

[State -1, 屈弱]
type = ChangeState
value = 300
triggerall = var(59) = 0
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = StateType != A
trigger1 = ctrl || var(7) = 1
trigger2 = Stateno = 200 && (var(20) = [1, 3])
trigger3 = Stateno = 300 && (var(20) = [1, 3])

[State -1, 屈中]
type = ChangeState
value = 310
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = StateType != A
trigger1 = ctrl || var(7) = 1
trigger2 = Stateno = 200 && (var(20) = [1, 3])
trigger3 = Stateno = 210 && (var(20) = [1, 3]) && var(40) >= 1
trigger4 = Stateno = 300 && (var(20) = [1, 3])

[State -1, 屈強]
type = ChangeState
value = 320
triggerall = var(59) = 0
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = StateType != A
trigger1 = ctrl || var(7) = 1
trigger2 = (Stateno = [200, 210]) && (var(20) = [1, 3])
trigger3 = (Stateno = [218, 219]) && (var(20) = [1, 3])
trigger4 = (Stateno = [300, 310]) && (var(20) = [1, 3])

[State -1, J弱]
type = ChangeState
value = 400
triggerall = var(59) = 0
triggerall = command = "a"
triggerall = StateType = A
trigger1 = ctrl || var(7) = 1
trigger2 = Stateno = 400 && (var(20) = [1, 3])
trigger3 = Stateno = 100 && StateType = A
trigger4 = (Stateno = 110 || Stateno = 115) && AnimElemTime(6) >= 0

[State -1, J中]
type = ChangeState
value = 410
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = StateType = A
trigger1 = ctrl || var(7) = 1
trigger2 = Stateno = 400 && (var(20) = [1, 3])
trigger3 = Stateno = 100 && StateType = A
trigger4 = (Stateno = 110 || Stateno = 115) && AnimElemTime(6) >= 0

[State -1, J強]
type = ChangeState
value = 420
triggerall = var(59) = 0
triggerall = command = "c"
triggerall = StateType = A
trigger1 = ctrl || var(7) = 1
trigger2 = (Stateno = [400, 410]) && (var(20) = [1, 3])
trigger3 = Stateno = 100 && StateType = A
trigger4 = (Stateno = 110 || Stateno = 115) && AnimElemTime(6) >= 0

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
;-| 超必殺技 |--------------------------------------------------------
;ここには超必殺技を記述してください、同じ名前を「name =」欄に書けますが
;コマンドは絶対に違ったものにしてください。
;カンフーマンは弱パンチと強パンチで技が出せるように同じ名前のコマンドで
;内容が弱と強になっています。
;「time=20」と書くことで「コマンドを20フレーム以内に入力」と設定できます。

[Command]
name = "幻覚"
command = ~$F,DF,D,$B,x+y
time=30

[Command]
name = "幻覚"
command = ~$F,DF,D,$B,y+z
time=30

[Command]
name = "幻覚"
command = ~$F,DF,D,$B,z+x
time=30

[Command]
name = "幻覚"
command = ~$F,DF,D,$B,b
time=30

[Command]
name = "幻覚"
command = /B,c,x+y
time=10

[Command]
name = "幻覚"
command = /B,c,y+z
time=10

[Command]
name = "幻覚"
command = /B,c,z+x
time=10

[Command]
name = "幻覚"
command = /B,c,b
time=10

[Command]
name = "TripleKFPalm"
command = ~D, DF, F, x+y
time = 20

[Command] 
name = "TripleKFPalm"   ;Same name as above
command = ~D, DF, F, y+z
time = 20

[Command] 
name = "TripleKFPalm"   ;Same name as above
command = ~D, DF, F, z+x
time = 20

[Command] 
name = "TripleKFPalm"   ;Same name as above
command = ~D, DF, F, b
time = 20

[Command] 
name = "TripleKFPalm"
command = /F,c,x+y
time=10

[Command] 
name = "TripleKFPalm"
command = /F,c,y+z
time=10

[Command] 
name = "TripleKFPalm"
command = /F,c,z+x
time=10

[Command] 
name = "TripleKFPalm"
command = /F,c,b
time=10

[Command]
name = "C-MOON"
command = /B,c,x+y+z
time = 20

[Command]
name = "C-MOON"
command = ~D, DB, B, x+y+z
time = 20

[Command]
name = "C-MOON"
command = /B,c,c
time = 20

[Command]
name = "nesp"
command = ~D, DB, B, x+y
time = 20

[Command]
name = "nesp"
command = ~D, DB, B, x+y
time = 20

[Command]
name = "nesp"
command = ~D, DB, B, y+z
time = 20

[Command]
name = "nesp"
command = ~D, DB, B, x+z
time = 20

[Command]
name = "nesp"
command = ~D, DB, B, b
time = 20

[Command]
name = "nesp"
command = /B,c,x+y
time=10

[Command]
name = "nesp"
command = /B,c,y+z
time=10

[Command]
name = "nesp"
command = /B,c,z+x
time=10

[Command]
name = "nesp"
command = /B,c,b
time=10

[Command]
name = "デム"
command = ~D, B, a
time = 20

[Command]
name = "デム"
command = /B,c,a
time=10

[Command]
name = "S出現必殺"
command = ~D, DF, F, a
time = 20

[Command]
name = "S出現必殺"
command = /F,c,a
time=10

;-| 必殺技 |-----------------------------------------------------
[Command]
name = "お前に命令するッ！"
command = ~$B,DB,D,$F,x
time=30

[Command]
name = "お前に命令するッ！！"
command = ~$B,DB,D,$F,y
time=30

[Command]
name = "お前に命令するッ！！！"
command = ~$B,DB,D,$F,z
time=30

[Command]
name = "お前に命令するッ！"
command = /F,c,x
time=10

[Command]
name = "お前に命令するッ！！"
command = /F,c,y
time=10

[Command]
name = "お前に命令するッ！！！"
command = /F,c,z
time=10

[Command]
name = "morattazo"
command = ~F, D, DF, x

[Command]
name = "morattazo"
command = ~F, D, DF, y

[Command]
name = "morattazo"
command = ~F, D, DF, z

[Command]
name = "henrin_x"
command = ~B, D, DB, x

[Command]
name = "henrin_y"
command = ~B, D, DB, y

[Command]
name = "henrin_z"
command = ~B, D, DB, z

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_x"
command = /F,c,x
time=10

[Command]
name = "QCF_x"
command = D,$F,x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_y"
command = D,$F,y

[Command]
name = "QCF_y"
command = /F,c,y
time=10

[Command]
name = "nekko_x"
command = ~D, DB, B, x

[Command]
name = "nekko_y"
command = ~D, DB, B, y

[Command]
name = "nekko_b"
command = ~D, DB, B, z

[Command]
name = "nekko_x"
command = /B,c,x
time=10

[Command]
name = "nekko_y"
command = /B,c,y
time=10

[Command]
name = "nekko_b"
command = /B,c,z
time=10

[Command]
name = "QCB_b"
command = ~D, DF, F, z

[Command]
name = "QCB_b"
command = /F,c,z
time=10

[Command]
name = "QCB_b"
command = D,$F,z

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
name = "BB_a"
command = B, B, a

[Command]
name = "DD_x"
command = D, D, x

[Command]
name = "DD_y"
command = D, D, y

[Command]
name = "DD_z"
command = D, D, z

[Command]
name = "DD_z"
command = D, D, b

[Command]
name = "DD_a"
command = D, D, a

;※※※※※※※※※※※※※※※※※※※※ハイジャンプコマンド
;下をちょっと押して上を押す、と言う意味。
[Command]
name = "jump"    
command = D,$U
time = 10

;※※※※※※※※※※※※※※※※※※※※前避け
;前を押しながらＡ＋Ｂ、という意味
[Command]
name = "away-f"    
command = /F,a+b
time = 10

;※※※※※※※※※※※※※※※※※※※※前避け
;後を押しながらＡ＋Ｂ、という意味
[Command]
name = "away-b"    
command = /B,a+b
time = 10

;前を押しながら攻撃ボタン２つ押し　遠隔操作
[Command]
name = "Remotecontrol"    
command = /F,x+z
time = 10

[Command]
name = "Remotecontrol"    
command = /F,y+z
time = 10

[Command]
name = "Remotecontrol"    
command = /F,x+y
time = 10

[Command]
name = "Remotecontrol"    
command = /F,b
time = 10

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
name = "holda"
command = /$a
time = 1

;-| 空中ジャンプ関連 |---------------------------------------------------------

[Command]
name = "up"
command = $U
time = 1

[Command]
name = "upc"
command = ~$U ;$上を放したとき
time = 1

;-| ボタン設定（いじらない）|---------------------------------------------------------
[Command]
name = "a"
command = a
time = 1

[Command]
name = "z"
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
name = "b"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

;-| 押しっぱなし設定（いじらない）-------------------------------------------------------
[Command];→
name = "holdfwd"
command = /$F
time = 1

[Command];←
name = "holdback"
command = /$B
time = 1

[Command];↑
name = "holdup" 
command = /$U
time = 1

[Command];↓
name = "holddown"
command = /$D
time = 1

[Command];┐
name = "holdfwdup"
command = /$F+U
time = 1

[Command];┌
name = "holdbackup"
command = /$B+U
time = 1

[Command];┘
name = "holdfwddown"
command = /$F+D
time = 1

[Command];└
name = "holdbackdown"
command = /$B+D
time = 1

[Command]
name = "holda"
command = /$a
time = 1

[Command]
name = "holdb"
command = /$z
time = 1

[Command]
name = "holdx"
command = /$x
time = 1

[Command]
name = "holdy"
command = /$y
time = 1

[Command]
name = "holdz"
command = /b
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

; 下の記述↓は絶対に消さないでください。
[Statedef -1]

;===========================================================================
;運営の夜明け
[State -1, Stand Strong Punch]
type = Helper;ChangeState
;value = 3500
TriggerAll = Var(59)<=0
triggerall = NumHelper(3500) = 0 
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(2) = 0 
triggerall = Numhelper(1) = 0 || ( Numhelper(1) && Helper(1),movetype = I )
triggerall = var(49) != 10000
triggerall = var(3) = 1
triggerall = command = "C-MOON"
triggerall = NumHelper(1001) = 0
triggerall = power >= 1000 
trigger1 = statetype != A
trigger1 = ctrl
stateno = 3500
id = 3500
name = "Dawn of Destiny"
postype = p1
pos = facing*(ifelse(var(29) = 1,helper(1),pos x-pos x,0)),0
pausemovetime = 30
supermovetime = 50

;運営の夜明け
[State -1, Stand Strong Punch]
type = Helper;ChangeState
;value = 3502
TriggerAll = Var(59)<=0
triggerall = NumHelper(3500) = 0
triggerall = Numhelper(1) = 0 || ( Numhelper(1) && Helper(1),movetype = I )
triggerall = var(49) != 10000
triggerall = var(3) = 1
triggerall = command = "C-MOON"
triggerall = power >= 2000 
trigger1 = stateno = 200 && time >= 7
trigger2 = stateno = 210 && time >= 5
trigger3 = stateno = 215 && time >= 7+(prevstateno = 100)*5
trigger4 = stateno = 400 && time >= 4
trigger5 = stateno = 412 && time >= 7
trigger6 = stateno = 445 && time >= 9
trigger7 = stateno = 242 && time >= 14
trigger8 = NumHelper(1900) >= 1 
trigger8 = ctrl
trigger8 = statetype != A
trigger9 = NumHelper(2) >= 1
trigger9 = ctrl
trigger9 = statetype != A
trigger10 = NumHelper(1001) >= 1
trigger10 = ctrl
trigger10 = statetype != A
trigger11 = stateno = 6666 && time >= 4
trigger12 = stateno = 1250 && time >= 18
trigger13 = stateno = 31110 && time >= 19
trigger14 = stateno = 31120 && time >= 23
trigger15 = stateno = 31130 && time >= 25
trigger16 = stateno = 31200 && time >= 6
trigger17 = stateno = 33200 && time >= 19
trigger18 = stateno = 33201 && time >= 4
trigger19 = stateno = 33500 && time >= 1
stateno = 3502
id = 3500
name = "Dawn of Destiny"
postype = p1
pos = facing*(ifelse(var(29) = 1,helper(1),pos x-pos x,0)),0
pausemovetime = 30
supermovetime = 50

;運営の夜明け S　
[State -1, Stand Strong Punch]
type = Helper;ChangeState
;value = 3500
TriggerAll = Var(59)<=0
triggerall = NumHelper(3500) = 0
triggerall = power >= 1000
triggerall = Numhelper(1) = 0 || ( Numhelper(1) && Helper(1),movetype = I )
triggerall = var(49) = 10000
triggerall = var(3) = 1
triggerall = command = "C-MOON"
trigger1 = statetype != A
trigger1 = ctrl
stateno = 3500
id = 3500
name = "Dawn of Destiny"
pausemovetime = 30
supermovetime = 50
postype = p1
pos = facing*(ifelse(var(29) = 1,helper(1),pos x-pos x,0)),0

;運営の夜明け S　
[State -1, Stand Strong Punch]
type = Helper;ChangeState
;value = 3502
TriggerAll = Var(59)<=0
triggerall = NumHelper(3500) = 0
triggerall = Numhelper(1) = 0 || ( Numhelper(1) && Helper(1),movetype = I )
triggerall = var(49) = 10000
triggerall = var(3) = 1
triggerall = power >= 2000 
triggerall = command = "C-MOON"
trigger1 = stateno = 30200 && time >= 7
trigger2 = stateno = 30210 && time >= 5
trigger3 = stateno = 30240 && time >= 11
trigger4 = stateno = 30400 && time >= 5
trigger5 = stateno = 30411 && time >= 7
trigger6 = stateno = 30440 && time >= 10
trigger7 = stateno = 32000 && time >= 19
trigger8 = stateno = 32010 && time >= 36
trigger9 = stateno = 32100 && time >= 43
trigger10 = stateno = 31210 && time >= 6
trigger11 = stateno = 33000 && time >= 19
trigger12 = stateno = 33001 && time >= 1
trigger13 = stateno = 33500 && time >= 1
trigger14 = stateno = 31100 && time >= 12
trigger15 = stateno = 31212 && time >= 1
stateno = 3502
id = 3500
name = "Dawn of Destiny"
postype = p1
pos = facing*(ifelse(var(29) = 1,helper(1),pos x-pos x,0)),0
pausemovetime = 30
supermovetime = 50

;新月の重力
[State -1, Stand Strong Punch]
type = ChangeState
value = 2500
TriggerAll = Var(59)<=0
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(2) = 0 
triggerall = var(49) != 10000
triggerall = var(3) = 0
triggerall = command = "C-MOON"
triggerall = NumHelper(1001) = 0
triggerall = power >= 2000 
trigger1 = statetype != A
trigger1 = ctrl

;新月の重力
[State -1, Stand Strong Punch]
type = ChangeState
value = 2505
TriggerAll = Var(59)<=0
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(2) = 0 
triggerall = var(49) != 10000
triggerall = var(3) = 0
triggerall = command = "C-MOON"
;triggerall = NumHelper(1001) = 0
triggerall = power >= 2000 
trigger1 = stateno = 200 && time >= 7
trigger2 = stateno = 210 && time >= 5
trigger3 = stateno = 215 && time >= 7+(prevstateno = 100)*5
trigger4 = stateno = 400 && time >= 4
trigger5 = stateno = 410 && time >= 7
trigger6 = stateno = 440 && time >= 12
trigger7 = stateno = 6666 && time >= 4
trigger8 = ctrl
trigger9 = stateno = 240 && time >= 8

;新月の重力
[State -1, Stand Strong Punch]
type = ChangeState
value = 2505
TriggerAll = Var(59)<=0
triggerall = var(49) != 10000
triggerall = var(3) = 0
triggerall = command = "C-MOON"
triggerall = power >= 2000
trigger1 = stateno = 3000 && movehit
trigger1 = anim = 11103 && (animelemtime(5) >= 0)
trigger2 = stateno = 3150
trigger2 = anim = 1000
trigger3 = stateno = 3150
trigger3 = anim = 100 && animelemtime(3) >= 0

;新月の重力
[State -1, Stand Strong Punch]
type = ChangeState
value = 2505
TriggerAll = Var(59)<=0
triggerall = var(49) != 10000
triggerall = var(3) = 0
triggerall = command = "C-MOON"
triggerall = stateno = 2201
triggerall = power >= 2000
trigger1 = anim = 12001 && (animelemtime(1) >= 245)

;新月の重力 S　
[State -1, Stand Strong Punch]
type = ChangeState
value = 2500
TriggerAll = Var(59)<=0
triggerall = power >= 2000
triggerall = var(49) = 10000
triggerall = var(3) = 0
triggerall = command = "C-MOON"
trigger1 = statetype = S
trigger1 = ctrl

;新月の重力 S　
[State -1, Stand Strong Punch]
type = ChangeState
value = 2505
TriggerAll = Var(59)<=0
triggerall = power >= 2000
triggerall = var(49) = 10000
triggerall = var(3) = 0
triggerall = command = "C-MOON"
trigger1 = (stateno = 10200) && time >= 4
trigger2 = (stateno = 10205) && time >= 6
trigger3 = (stateno = 10210) && time >= 7
trigger4 = (stateno = 10215) && time >= 7
trigger5 = (stateno = 10400) && time >= 5
trigger6 = (stateno = 10410) && time >= 7
trigger7 = (stateno = 11000) && time >= 6
trigger8 = (stateno = 11010) && time >= 6
trigger9 = (stateno = 11040) && time >= 6
trigger10 = (stateno = 10240) && time >= 7
trigger11 = (stateno = 10440) && time >= 8
trigger12 = (stateno = 11001) && time >= 1
trigger13 = (stateno = 6600) && !movehit && (time >= 1)
trigger14 = (stateno = 6600) && movehit && (anim = 13012)
trigger15 = (stateno = 6600) && movehit && (animelemtime(2) >= 0) && (anim = 13010)
trigger16 = (stateno = 11100) && time >= 7
trigger17 = (stateno = 11110) && time >= 11
trigger18 = (stateno = 11140) && time >= 15
trigger19 = (stateno = 11200) && time >= 3
trigger20 = (stateno = 11220) && time >= 12
trigger21 = (stateno = 13150) && (animelemtime(3) >= 0)

;新月の重力 S
[State -1, Stand Strong Punch]
type = ChangeState
value = 2505
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000
triggerall = var(3) = 0
triggerall = command = "C-MOON"
triggerall = stateno = 13000 && movehit
triggerall = power >= 2000
trigger1 = anim = 11101 && (animelemtime(12) >= 0)

;新月の重力 S
[State -1, Stand Strong Punch]
type = ChangeState
value = 2505
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000
triggerall = var(3) = 0
triggerall = command = "C-MOON"
triggerall = stateno = 12200
triggerall = power >= 2000
trigger1 = time >= 225

[State -1, 2200];夢の中の幻覚
type = ChangeState
TriggerAll = Var(59)<=0
triggerall = NumHelper(1900) = 0
triggerall = NumHelper(2) = 0
triggerall = NumHelper(1001) = 0
triggerall = numexplod(12220) = 0
triggerall = helper(1),numexplod(12220) = 0
triggerall = var(3) = 0
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = command = "幻覚"
triggerall = power >= 3000
triggerall = !var(49)
trigger1 = ctrl
trigger2 = stateno = 3900 && time < 7
value = 2200

[State -1, 2200];夢の中の幻覚
type = ChangeState
TriggerAll = Var(59)<=0
triggerall = numexplod(12220) = 0
triggerall = helper(1),numexplod(12220) = 0
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = command = "幻覚"
triggerall = power >= 3000
triggerall = var(3) = 0
trigger1 = var(49) = 10000 && !var(29)
trigger1 = ctrl
value = 12200
;---------------------------------------------------------------------------------------------

;「二手」遅れたようだな・・・・・・ S
[State -1, Stand Strong Punch]
type = ChangeState
value = 47000
TriggerAll = Var(59)<=0
triggerall = command = "nesp" || command = "TripleKFPalm"
triggerall = power >= 1000
;triggerall = var(49) = 10000
triggerall = var(3) = 2
triggerall = var(20) = 0
trigger1 = ctrl
trigger2 = stateno = [40200,40699]

;---------------------------------------------------------------------------
;決着はついた！
[State -1, Stand Strong Punch]
type = ChangeState
value = 33200
TriggerAll = Var(59)<=0
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(2) = 0 
triggerall = NumHelper(1001) = 0 
triggerall = var(49) = 0  ;スタンドoffの時
triggerall = var(3) = 1
triggerall = command = "TripleKFPalm"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && (time > 6)
trigger3 = stateno = 210 && (time > 5)
trigger4 = stateno = 242 && (time > 13)
trigger5 = stateno = 215 && (time > 6)
trigger6 = stateno = 400 && (time > 3)
trigger7 = stateno = 412 && (time > 6)
trigger8 = stateno = 445 && (time > 8)

;---------------------------------------------------------------------------
;決着はついた！ S　
[State -1, Stand Strong Punch]
type = ChangeState
value = 33000
TriggerAll = Var(59)<=0
triggerall = power >= 1000
triggerall = var(49) = 10000
triggerall = var(3) = 1
triggerall = command = "TripleKFPalm"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 30200 && (time > 4)
trigger3 = stateno = 30210 && (time > 7)
trigger4 = stateno = 30240 && (time > 10)
trigger5 = stateno = 30400 && (time > 4)
trigger6 = stateno = 30411 && (time > 6)
trigger7 = stateno = 30440 && (time > 9)
trigger8 = stateno = 30220 && (time > 3)
trigger9 = stateno = 30255 && (time > 6)
trigger10 = stateno = 30270 && (time > 11)
trigger11 = stateno = 30420 && (time > 4)
trigger12 = stateno = 30450 && (time > 6)
trigger13 = stateno = 30470 && (time > 9)

;---------------------------------------------------------------------------
;自分の肉体までも・・・
[State -1, Stand Strong Punch]
type = ChangeState
value = 33500
TriggerAll = Var(59)<=0
triggerall = command != "C-MOON"
triggerall = power >= 1000
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(2) = 0 
triggerall = var(49) != 10000
triggerall = var(3) = 1
triggerall = command = "nesp"
triggerall = command != "holddown"
triggerall = NumHelper(1001) = 0 
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && (time > 6)
trigger3 = stateno = 210 && (time > 5)
trigger4 = stateno = 242 && (time > 13)
trigger5 = stateno = 215 && (time > 6)
trigger6 = stateno = 400 && (time > 3)
trigger7 = stateno = 412 && (time > 6)
trigger8 = stateno = 445 && (time > 8)

;自分の肉体までも・・・ S
[State -1, Stand Strong Punch]
type = ChangeState
value = 33500
TriggerAll = Var(59)<=0
triggerall = command != "C-MOON"
triggerall = power >= 1000
triggerall = NumHelper(1001) = 0 
triggerall = NumHelper(2) = 0 
triggerall = var(49) = 10000
triggerall = var(3) = 1
triggerall = command = "nesp"
triggerall = command != "holddown"
triggerall = helper(1),movetype != H
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 30200 && (time > 4)
trigger3 = stateno = 30210 && (time > 7)
trigger4 = stateno = 30240 && (time > 10)
trigger5 = stateno = 30400 && (time > 4)
trigger6 = stateno = 30411 && (time > 6)
trigger7 = stateno = 30440 && (time > 9)
trigger8 = stateno = 30220 && (time > 3)
trigger9 = stateno = 30255 && (time > 6)
trigger10 = stateno = 30270 && (time > 11)
trigger11 = stateno = 30420 && (time > 4)
trigger12 = stateno = 30450 && (time > 6)
trigger13 = stateno = 30470 && (time > 9)
;---------------------------------------------------------------------------
;スデニ
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 3000
TriggerAll = Var(59)<=0
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(2) = 0 
triggerall = NumHelper(1001) = 0 
triggerall = var(3) = 0
triggerall = var(49) = 0  ;スタンドoffの時
triggerall = command = "TripleKFPalm"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && time >= 7
trigger3 = stateno = 210 && time >= 5
trigger4 = stateno = 215 && time >= 7+(prevstateno = 100)*5
trigger5 = stateno = 400 && time >= 4
trigger6 = stateno = 410 && time >= 7
trigger7 = stateno = 440 && time >= 12
trigger8 = stateno = 3900 && time < 7

;スデニ S　
[State -1, Stand Strong Punch]
type = ChangeState
value = 13000
TriggerAll = Var(59)<=0
triggerall = power >= 1000
triggerall = var(49) = 10000
triggerall = var(3) = 0
triggerall = command = "TripleKFPalm"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 4
trigger3 = (stateno = 10205) && time >= 6
trigger4 = (stateno = 10210) && time >= 7
trigger5 = (stateno = 10215) && time >= 7
trigger6 = (stateno = 10400) && time >= 5
trigger7 = (stateno = 10410) && time >= 7
trigger8 = (stateno = 11000) && time >= 6
trigger9 = (stateno = 11010) && time >= 6
trigger10 = (stateno = 11040) && time >= 6
;---------------------------------------------------------------------------
;どこへ行かれるのですか
[State -1, Stand Strong Punch]
type = ChangeState
value = 3150
TriggerAll = Var(59)<=0
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(2) = 0 
triggerall = var(49) != 10000
triggerall = var(3) = 0
triggerall = command = "nesp"
triggerall = command != "holddown"
triggerall = NumHelper(1001) = 0 
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && time >= 7
trigger3 = stateno = 210 && time >= 5
trigger4 = stateno = 215 && time >= 7+(prevstateno = 100)*5
trigger5 = stateno = 400 && time >= 4
trigger6 = stateno = 410 && time >= 7
trigger7 = stateno = 440 && time >= 12
trigger8 = stateno = 3900 && time < 7

;どこへ行かれるのですか Sp son
[State -1, Stand Strong Punch]
type = ChangeState
value = 13150
TriggerAll = Var(59)<=0
triggerall = NumHelper(1001) = 0 
triggerall = NumHelper(2) = 0 
triggerall = var(49) = 10000
triggerall = var(3) = 0
triggerall = command = "nesp"
triggerall = command != "holddown"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 4
trigger3 = (stateno = 10205) && time >= 6
trigger4 = (stateno = 10210) && time >= 7
trigger5 = (stateno = 10215) && time >= 7
trigger6 = (stateno = 10400) && time >= 5
trigger7 = (stateno = 10410) && time >= 7
trigger8 = (stateno = 11000) && time >= 6
trigger9 = (stateno = 11010) && time >= 6
trigger10 = (stateno = 11040) && time >= 6

;------------------------------------------------------------------------------

[State -1, デム];スタンドoff
type = ChangeState
value = 3900+(var(3) = 2)*4000
TriggerAll = Var(59)<=0
triggerall = var(43) = 0  
triggerall = numhelper(4657) = 0
triggerall = numhelper(3910) = 0  || (var(3) != 2)
triggerall = command = "デム" || ( var(3) = 2 &&  command = "S出現必殺")
triggerall = power >= 1000
triggerall = var(49) = 0  ;スタンドoffの時
;triggerall = var(7) = 0
triggerall = NumHelper(2) = 0 
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1001) = 0 
triggerall = NumHelper(1600) = 0 
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 180 ;挑発
trigger3 = (stateno = 200) && time > 5
trigger4 = (stateno = 210) && time > 5
trigger5 = (stateno = 400) 
trigger5 = movecontact
trigger6 = (stateno = 410) 
trigger6 = movecontact
trigger7 = (stateno = 215) && time >= 7
trigger8 = (stateno = 242) && time >= 14
trigger9 = (stateno = 412) && time >= 7
trigger10 = (stateno = 244) && time >= 5
trigger11 = (stateno = 414) && time >= 5
trigger12 = (stateno = 447) && time >= 5

[State -1, デム];スタンドon
type = ChangeState
value = 3900+(var(3) = 2)*4000
TriggerAll = Var(59)<=0
triggerall = var(43) = 0  
triggerall = numhelper(4657) = 0
triggerall = numhelper(3910) = 0  || (var(3) != 2)
triggerall = command = "デム" || ( var(3) = 2 &&  command = "S出現必殺")
triggerall = power >= 1000
triggerall = var(49) = 10000  ;スタンドonの時
triggerall = NumHelper(2) = 0 
triggerall = NumHelper(1001) = 0 
triggerall = helper(1),numexplod(543221) = 0
triggerall = helper(1),movetype != H
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA ;立ちしゃがみの通常攻撃(引き寄せも含む)
trigger2 = movecontact
trigger2 = !(stateno = [43000,43009])
trigger3 = stateno = 180   ;挑発
trigger4 = stateno = 44000

;---------------------------------------------------------------------------
;十字架を指に突き刺した・・・
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 6666
TriggerAll = Var(59)<=0
triggerall = var(49) != 10000
triggerall = statetype != A
triggerall = ctrl
trigger1 = command = "henrin_x"
trigger2 = command = "henrin_y"
trigger3 = command = "henrin_z"
trigger4 = stateno = 3900 && time < 7

;十字架を指に突き刺した・・・
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 6666
TriggerAll = Var(59)<=0
triggerall = var(49) != 10000
triggerall = statetype != A
triggerall= (stateno = [200,299]) || (stateno = [400,499])
triggerall = movecontact
trigger1 = command = "henrin_x"
trigger2 = command = "henrin_y"
trigger3 = command = "henrin_z"
trigger4 = stateno = 3900 && time < 7

;十字架を指に突き刺した・・・
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 6666
TriggerAll = Var(59)<=0
triggerall = var(49) != 10000
triggerall = statetype != A
triggerall= (stateno = 242) || (stateno = 412) || (stateno = [400,499])
triggerall = helper(243),movecontact || helper(413),movecontact
trigger1 = command = "henrin_x"
trigger2 = command = "henrin_y"
trigger3 = command = "henrin_z"
trigger4 = stateno = 3900 && time < 7

;モラッタゾッ！
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 6600
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000
triggerall = var(3) = 0
triggerall = statetype != A
triggerall = ctrl
trigger1 = command = "morattazo"

;モラッタゾッ！
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 6600
TriggerAll = Var(59)<=0
triggerall = (var(49) = 10000) || (numhelper(5656))
triggerall = var(3) = 0
triggerall = statetype != A
triggerall= (stateno = [10200,10299]) || (stateno = [10400,10499])
triggerall = movecontact
trigger1 = command = "morattazo"
;--------------------------------------------------------------------------------
;脳にくらって
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 32200
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000
triggerall = var(3) = 1
triggerall = statetype != A
triggerall = command = "morattazo"
trigger1 = ctrl
trigger2 = stateno = 30200 && (time > 4)
trigger3 = stateno = 30210 && (time > 7)
trigger4 = stateno = 30240 && (time > 10)
trigger5 = stateno = 30400 && (time > 4)
trigger6 = stateno = 30411 && (time > 6)
trigger7 = stateno = 30440 && (time > 9)
trigger8 = stateno = 30220 && (time > 3)
trigger9 = stateno = 30255 && (time > 6)
trigger10 = stateno = 30270 && (time > 11)
trigger11 = stateno = 30420 && (time > 4)
trigger12 = stateno = 30450 && (time > 6)
trigger13 = stateno = 30470 && (time > 9)

;---------------------------------------------------------------------------
;お前に命令するッ！！
[State -1, Stand Strong Punch]
type = ChangeState
value = 1230
TriggerAll = Var(59)<=0
triggerall = var(3) = 0
triggerall = numhelper(11201) = 0
triggerall = numhelper(1232) = 0
triggerall = var(49) != 10000
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "お前に命令するッ！"
trigger2 = command = "お前に命令するッ！！"
trigger3 = command = "お前に命令するッ！！！"

;お前に命令するッ！！
[State -1, Stand Strong Punch]
type = ChangeState
value = 1230
TriggerAll = Var(59)<=0
triggerall = var(3) = 0
triggerall = numhelper(11201) = 0
triggerall = numhelper(1232) = 0
triggerall = var(49) != 10000
triggerall = command != "holddown"
triggerall = stateno = 3900 && time < 7
trigger1 = command = "お前に命令するッ！"
trigger2 = command = "お前に命令するッ！！"
trigger3 = command = "お前に命令するッ！！！"

;---------------------------------------------------------------------------

;これを待っていたッ
[State -1, Stand Strong Punch]
type = ChangeState
value = 1250
TriggerAll = Var(59)<=0
triggerall = var(3) = 1
triggerall = var(49) != 10000
triggerall = command != "holddown"
triggerall = (command = "お前に命令するッ！") || (command = "お前に命令するッ！！") || (command = "お前に命令するッ！！！")
trigger1 = stateno = 3900 && time < 7
trigger2 = statetype = S
trigger2 = ctrl
trigger3 = stateno = 200 && (time > 6)
trigger4 = stateno = 210 && (time >= 14)
trigger5 = stateno = 242 && (time >= 27)
trigger6 = stateno = 215 && (time >= 15)
trigger7 = stateno = 400 && (time > 3)
trigger8 = stateno = 412 && (time >= 20)

;---------------------------------------------------------------------------
;『幻覚だ』見ていたのは！！ 弱
[State -1, Stand Strong Punch]
type = ChangeState
value = 1100
TriggerAll = Var(59)<=0
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = var(49) != 10000
triggerall = command = "nekko_x"
triggerall = command != "holddown"
triggerall = var(3) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 1000) && time > 5
trigger3 = (stateno = 1003) && time > 5
trigger4 = (stateno = 1005) && time > 5
trigger5 = (stateno = [200,299]) || (stateno = [400,499])
trigger5 = movecontact
trigger5 = helper(6600),var(0) = 0
trigger6 = stateno = 3900 && time < 7

;『幻覚だ』見ていたのは！！ 弱s
[State -1, Stand Strong Punch]
type = ChangeState
value = 11100
TriggerAll = Var(59)<=0
triggerall = var(3) = 0
triggerall = (var(49) = 10000) || (numhelper(5656))
triggerall = command = "nekko_x"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [10200,10270]) && time > 5
trigger2 = movecontact
trigger3 = (stateno = [10400,10470]) && time > 5
trigger3 = movecontact
trigger4 = (stateno = 11010) && time > 5
trigger5 = (stateno = 11040) && time > 5
trigger6 = (stateno = 11800) && time > 5
;---------------------------------------------------------------------------
;『幻覚だ』見ていたのは！！ 中
[State -1, Stand Strong Punch]
type = ChangeState
value = 1103
TriggerAll = Var(59)<=0
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = var(49) != 10000
triggerall = command = "nekko_y"
triggerall = command != "holddown"
triggerall = var(3) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 1000) && time > 5
trigger3 = (stateno = 1003) && time > 5
trigger4 = (stateno = 1005) && time > 5
trigger5 = (stateno = [200,299]) || (stateno = [400,499])
trigger5 = movecontact
trigger5 = helper(6600),var(0) = 0
trigger6 = stateno = 3900 && time < 7

;『幻覚だ』見ていたのは！！ 中s
[State -1, Stand Strong Punch]
type = ChangeState
value = 11110
TriggerAll = Var(59)<=0
triggerall = var(3) = 0
triggerall = numhelper(11101) = 0
triggerall = (var(49) = 10000) || (numhelper(5656))
triggerall = command = "nekko_y"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [10200,10270]) && time > 5
trigger2 = movecontact
trigger3 = (stateno = [10400,10470]) && time > 5
trigger3 = movecontact
trigger4 = (stateno = 11010) && time > 5
trigger5 = (stateno = 11040) && time > 5
trigger6 = (stateno = 11800) && time > 5
;---------------------------------------------------------------------------
;;『幻覚だ』見ていたのは！！ 強
[State -1, Stand Strong Punch]
type = ChangeState
value = 1105
TriggerAll = Var(59)<=0
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0
triggerall = var(49) != 10000
triggerall = command = "nekko_b"
triggerall = command != "holddown"
triggerall = var(3) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 1000) && time > 5
trigger3 = (stateno = 1003) && time > 5
trigger4 = (stateno = 1005) && time > 5
trigger5 = (stateno = [200,299]) || (stateno = [400,499])
trigger5 = movecontact
trigger5 = helper(6600),var(0) = 0
trigger6 = stateno = 3900 && time < 7

;『幻覚だ』見ていたのは！！ 強s
[State -1, Stand Strong Punch]
type = ChangeState
value = 11140
TriggerAll = Var(59)<=0
triggerall = var(3) = 0
triggerall = numhelper(11101) = 0
triggerall = (var(49) = 10000) || (numhelper(5656))
triggerall = command = "nekko_b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [10200,10270]) && time > 5
trigger2 = movecontact
trigger3 = (stateno = [10400,10470]) && time > 5
trigger3 = movecontact
trigger4 = (stateno = 11010) && time > 5
trigger5 = (stateno = 11040) && time > 5
trigger6 = (stateno = 11800) && time > 5

;;『幻覚だ』見ていたのは！！ スタンド発現必殺技
[State -1, Stand Strong Punch]
type = ChangeState
value = 11123
TriggerAll = Var(59)<=0
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = NumHelper(4321) = 0 
triggerall = var(49) != 10000
triggerall = command = "S出現必殺"
triggerall = command != "holddown"
triggerall = var(3) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = movecontact
trigger3 = (stateno = 6666) && time > 4
trigger4 = stateno = [100,105]
trigger4 = anim != 108
;-------------------------------------------------------------------------------
;これでお前は「両腕」を失ったァアアーーーッ
[State -1, Stand Strong Punch]
type = ChangeState
value = 32100
TriggerAll = Var(59)<=0
triggerall = command != "C-MOON"
triggerall = var(49) = 10000
triggerall = var(3) = 1
triggerall = (command = "nekko_x") || (command = "nekko_y") || (command = "nekko_b")
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 30200 && (time > 4)
trigger3 = stateno = 30210 && (time > 7)
trigger4 = stateno = 30240 && (time > 10)
trigger5 = stateno = 30400 && (time > 4)
trigger6 = stateno = 30411 && (time > 6)
trigger7 = stateno = 30440 && (time > 9)
trigger8 = stateno = 30220 && (time > 3)
trigger9 = stateno = 30255 && (time > 6)
trigger10 = stateno = 30270 && (time > 11)
trigger11 = stateno = 30420 && (time > 4)
trigger12 = stateno = 30450 && (time > 6)
trigger13 = stateno = 30470 && (time > 9)
;-----------------------------------------------------------------------------
;ヒッコンデロ！(弱)
[State -1, Stand Strong Punch]
type = ChangeState
value = 31110
TriggerAll = Var(59)<=0
triggerall = command != "C-MOON"
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = var(3) = 1 
triggerall = var(49) != 10000
triggerall = command = "nekko_x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && (time > 6)
trigger3 = stateno = 210 && (time >= 14)
trigger4 = stateno = 242 && (time >= 27)
trigger5 = stateno = 215 && (time >= 15)
trigger6 = stateno = 400 && (time > 3)
trigger7 = stateno = 412 && (time >= 20)
trigger8 = stateno = 3900 && time < 7
trigger9 = stateno = 445 && (time >= 9)
;-----------------------------------------------------------------------------
;ヒッコンデロ！(中)
[State -1, Stand Strong Punch]
type = ChangeState
value = 31120
TriggerAll = Var(59)<=0
triggerall = command != "C-MOON"
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = var(3) = 1 
triggerall = var(49) != 10000
triggerall = command = "nekko_y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && (time > 6)
trigger3 = stateno = 210 && (time >= 14)
trigger4 = stateno = 242 && (time >= 27)
trigger5 = stateno = 215 && (time >= 15)
trigger6 = stateno = 400 && (time > 3)
trigger7 = stateno = 412 && (time >= 20)
trigger8 = stateno = 3900 && time < 7
trigger9 = stateno = 445 && (time >= 9)
;-----------------------------------------------------------------------------
;ヒッコンデロ！(強)
[State -1, Stand Strong Punch]
type = ChangeState
value = 31130
TriggerAll = Var(59)<=0
triggerall = command != "C-MOON"
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = var(3) = 1 
triggerall = var(49) != 10000
triggerall = command = "nekko_b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && (time > 6)
trigger3 = stateno = 210 && (time >= 14)
trigger4 = stateno = 242 && (time >= 27)
trigger5 = stateno = 215 && (time >= 15)
trigger6 = stateno = 400 && (time > 3)
trigger7 = stateno = 412 && (time >= 20)
trigger8 = stateno = 3900 && time < 7
trigger9 = stateno = 445 && (time >= 9)

;ヒッコンデロ！ スタンド発現必殺技
[State -1, Stand Strong Punch]
type = ChangeState
value = 31100
TriggerAll = Var(59)<=0
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = var(49) != 10000
triggerall = command = "S出現必殺"
triggerall = command != "holddown"
triggerall = var(3) = 1
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && (time > 6)
trigger3 = stateno = 210 && (time > 4)
trigger4 = stateno = 242 && (time > 13)
trigger5 = stateno = 215 && (time > 6)
trigger6 = stateno = 400 && (time > 3)
trigger7 = stateno = 412 && (time > 6)
trigger8 = (stateno = 6666) && time > 4
trigger9 = stateno = 445 && (time >= 9)
;---------------------------------------------------------------------------
;パンチは必ず一発だけだ
[State -1, Stand Strong Punch]
type = ChangeState
value = 32000
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000
triggerall = var(3) = 1
triggerall = (command = "QCF_x") || (command = "QCF_y")
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 30200 && (time > 4)
trigger3 = stateno = 30210 && (time > 7)
trigger4 = stateno = 30240 && (time > 10)
trigger5 = stateno = 30400 && (time > 4)
trigger6 = stateno = 30411 && (time > 6)
trigger7 = stateno = 30440 && (time > 9)
trigger8 = stateno = 30220 && (time > 3)
trigger9 = stateno = 30255 && (time > 6)
trigger10 = stateno = 30270 && (time > 11)
trigger11 = stateno = 30420 && (time > 4)
trigger12 = stateno = 30450 && (time > 6)
trigger13 = stateno = 30470 && (time > 9)

;パンチは必ず一発だけだ　ガー不
[State -1, Stand Strong Punch]
type = ChangeState
value = 32010
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000
triggerall = var(3) = 1
triggerall = command = "QCB_b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 30200 && (time > 4)
trigger3 = stateno = 30210 && (time > 7)
trigger4 = stateno = 30240 && (time > 10)
trigger5 = stateno = 30400 && (time > 4)
trigger6 = stateno = 30411 && (time > 6)
trigger7 = stateno = 30440 && (time > 9)
trigger8 = stateno = 30220 && (time > 3)
trigger9 = stateno = 30255 && (time > 6)
trigger10 = stateno = 30270 && (time > 11)
trigger11 = stateno = 30420 && (time > 4)
trigger12 = stateno = 30450 && (time > 6)
trigger13 = stateno = 30470 && (time > 9)
;---------------------------------------------------------------------------

;時は加速する　前端
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 40040
TriggerAll = Var(59)<=0
triggerall = command = "FF_a"
triggerall = P2BodyDist x >= 0
triggerall = var(49) = 10000
triggerall = var(3) = 2
trigger1 = ctrl
trigger2 = movetype = H
trigger3 = stateno = [100,109]
trigger4 = stateno = [40200,40699]
trigger4 = stateno != 40250
trigger5 = stateno = 47000

;時は加速する　前端
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 40040
TriggerAll = Var(59)<=0
triggerall = command = "BB_a"
triggerall = P2BodyDist x < 0
triggerall = var(49) = 10000
triggerall = var(3) = 2
trigger1 = ctrl
trigger2 = movetype = H
trigger3 = stateno = [100,109]
trigger4 = stateno = [40200,40699]
trigger4 = stateno != 40250
trigger5 = stateno = 47000

;時は加速する　後端
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 40050
TriggerAll = Var(59)<=0
triggerall = command = "BB_a"
triggerall = P2BodyDist x >= 0
triggerall = var(49) = 10000
triggerall = var(3) = 2
trigger1 = ctrl
trigger2 = movetype = H
trigger3 = stateno = [100,109]
trigger4 = stateno = [40200,40699]
trigger4 = stateno != 40250
trigger5 = stateno = 47000

;時は加速する　後端
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 40050
TriggerAll = Var(59)<=0
triggerall = command = "FF_a"
triggerall = P2BodyDist x < 0
triggerall = var(49) = 10000
triggerall = var(3) = 2
trigger1 = ctrl
trigger2 = movetype = H
trigger3 = stateno = [100,109]
trigger4 = stateno = [40200,40699]
trigger4 = stateno != 40250
trigger5 = stateno = 47000

;時は加速する　前
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 40000
TriggerAll = Var(59)<=0
triggerall = command = "a"
triggerall = command = "holdfwd"
triggerall = var(49) = 10000
triggerall = var(3) = 2
trigger1 = ctrl
trigger2 = movetype = H
trigger3 = stateno = [40200,40699]
trigger3 = stateno != 40250
trigger4 = stateno = 47000

;時は加速する　下
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 40020
TriggerAll = Var(59)<=0
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = var(49) = 10000
triggerall = var(3) = 2
trigger1 = ctrl
trigger2 = movetype = H
trigger3 = stateno = [40200,40699]
trigger3 = stateno != 40250
trigger4 = stateno = 47000

;時は加速する　上
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 40030
TriggerAll = Var(59)<=0
triggerall = command = "a"
triggerall = command = "holdup"
triggerall = var(49) = 10000
triggerall = var(3) = 2
trigger1 = ctrl
trigger2 = movetype = H
trigger3 = stateno = [40200,40699]
trigger3 = stateno != 40250
trigger4 = stateno = 47000

;時は加速する　後
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 40010
TriggerAll = Var(59)<=0
triggerall = command = "a"
triggerall = var(49) = 10000
triggerall = var(3) = 2
trigger1 = ctrl
trigger1 = command = "holdback"
trigger2 = movetype = H
trigger3 = stateno = [40200,40699]
trigger3 = stateno != 40250
trigger4 = stateno = 47000

;時は加速する　後
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 40010
TriggerAll = Var(59)<=0
triggerall = command = "a"
triggerall = var(49) = 10000
triggerall = var(3) = 2
trigger1 = ctrl
trigger2 = movetype = H
trigger3 = stateno = [40200,40699]
trigger3 = stateno != 40250
trigger4 = stateno = 47000
;--------------------------------------------------------------------------
;ウシャー（弱）
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1000
TriggerAll = Var(59)<=0
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = command = "QCF_x"
triggerall = var(49) != 10000
triggerall = var(3) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = movecontact
trigger2 = helper(6600),var(0) = 0
trigger3 = stateno = 3900 && time < 7

;C-MOON ウシャー（弱）
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 31000
TriggerAll = Var(59)<=0
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = command = "QCF_x"
triggerall = var(49) != 10000
triggerall = var(3) = 1
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = 1 || var(9) := 0
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = movecontact
trigger2 = 1 || var(9) := 0
trigger3 = stateno = 242
trigger3 = helper(243),movecontact
trigger3 = 1 || var(9) := 0
trigger4 = stateno = 412
trigger4 = helper(413),movecontact
trigger4 = 1 || var(9) := 0

;C-MOON ウシャー（中）
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 31000
TriggerAll = Var(59)<=0
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = command = "QCF_y"
triggerall = var(49) != 10000
triggerall = var(3) = 1
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = 1 || var(9) := 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = movecontact
trigger2 = 1 || var(9) := 1
trigger3 = stateno = 242
trigger3 = helper(243),movecontact
trigger3 = 1 || var(9) := 1
trigger4 = stateno = 412
trigger4 = helper(413),movecontact
trigger4 = 1 || var(9) := 1

;C-MOON ウシャー（強）
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 31000
TriggerAll = Var(59)<=0
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = command = "QCB_b"
triggerall = var(49) != 10000
triggerall = var(3) = 1
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = 1 || var(9) := 2
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = movecontact
trigger2 = 1 || var(9) := 2
trigger3 = stateno = 242
trigger3 = helper(243),movecontact
trigger3 = 1 || var(9) := 2
trigger4 = stateno = 412
trigger4 = helper(413),movecontact
trigger4 = 1 || var(9) := 2

;C-MOON 空中ウシャー
[State -1, Stand Strong Punch]
type = ChangeState
value = 41000
TriggerAll = Var(59)<=0
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = numhelper(1001) = 0
triggerall = numhelper(41050) = 0
triggerall = NumHelper(2) = 0 
triggerall = var(49) != 10000
triggerall = var(3) = 1
triggerall = (command = "QCF_x") || (command = "QCF_y") || (command = "QCB_b")
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 645) && time > 6

;ウシャー　s
[State -1, Stand Strong Punch]
type = ChangeState
value = 11000
TriggerAll = Var(59)<=0
triggerall = (var(49) = 10000) || (numhelper(5656))
triggerall = command = "QCF_x"
triggerall = command != "holddown"
triggerall = var(3) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [10200,10270]) && time > 5
trigger2 = movecontact
trigger3 = (stateno = [10400,10470]) && time > 5
trigger3 = movecontact

;空中ウシャー　s
[State -1, Stand Strong Punch]
type = ChangeState
value = 11002
TriggerAll = Var(59)<=0
triggerall = (var(49) = 10000) || (numhelper(5656))
triggerall = var(3) = 0
triggerall = command = "QCF_x"
triggerall = command != "holddown"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 10600) && time > 5
trigger2 = movecontact
trigger3 = (stateno = 10610) && time > 5
trigger3 = movecontact
trigger4 = (stateno = 10640) && time > 5
trigger4 = movecontact
trigger5 = (stateno = 10670) && time > 5
trigger5 = movecontact

;空中ウシャー　s
[State -1, Stand Strong Punch]
type = ChangeState
value = 11002
TriggerAll = Var(59)<=0
triggerall = (var(49) = 10000) || (numhelper(5656))
triggerall = var(3) = 0
triggerall = command = "QCF_y"
triggerall = command != "holddown"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 10600) && time > 5
trigger2 = movecontact
trigger3 = (stateno = 10610) && time > 5
trigger3 = movecontact
trigger4 = (stateno = 10640) && time > 5
trigger4 = movecontact
trigger5 = (stateno = 10670) && time > 5
trigger5 = movecontact

;空中ウシャー　s
[State -1, Stand Strong Punch]
type = ChangeState
value = 11002
TriggerAll = Var(59)<=0
triggerall = (var(49) = 10000) || (numhelper(5656))
triggerall = var(3) = 0
triggerall = command = "QCB_b"
triggerall = command != "holddown"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 10600) && time > 5
trigger2 = movecontact
trigger3 = (stateno = 10610) && time > 5
trigger3 = movecontact
trigger4 = (stateno = 10640) && time > 5
trigger4 = movecontact
trigger5 = (stateno = 10670) && time > 5
trigger5 = movecontact

;---------------------------------------------------------------------------
;ウシャー（中）
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1003
TriggerAll = Var(59)<=0
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = var(3) = 0
triggerall = command = "QCF_y"
triggerall = var(49) != 10000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = movecontact
trigger2 = helper(6600),var(0) = 0
trigger3 = stateno = 3900 && time < 7

;ウシャー S　中
[State -1, Stand Strong Punch]
type = ChangeState
value = 11010
TriggerAll = Var(59)<=0
triggerall = (var(49) = 10000) || (numhelper(5656))
triggerall = command = "QCF_y"
triggerall = command != "holddown"
triggerall = var(3) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [10200,10270]) && time > 5
trigger2 = movecontact
trigger3 = (stateno = [10400,10470]) && time > 5
trigger3 = movecontact
;---------------------------------------------------------------------------
;ウシャー（強）
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1005
TriggerAll = Var(59)<=0
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = var(3) = 0
triggerall = command = "QCB_b"
triggerall = var(49) != 10000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = movecontact
trigger2 = helper(6600),var(0) = 0
trigger3 = stateno = 3900 && time < 7

;ウシャー S　強
[State -1, Stand Strong Punch]
type = ChangeState
value = 11040
TriggerAll = Var(59)<=0
triggerall = (var(49) = 10000) || (numhelper(5656))
triggerall = var(3) = 0
triggerall = command = "QCB_b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [10200,10270]) && time > 5
trigger2 = movecontact
trigger3 = (stateno = [10400,10470]) && time > 5
trigger3 = movecontact
;----------------------------------------------------------------------------------
;『運命』はここで終わりだッ！
[State -1, Stand Strong Punch]
type = ChangeState
value = 42100
TriggerAll = Var(59)<=0
triggerall = command = "DD_x"
triggerall = var(49) = 0
triggerall = var(3) = 2
triggerall = Statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && time > 7
trigger3 = stateno = 210 && time > 5
trigger4 = stateno = 215 && time > 5
trigger5 = stateno = 244 && time > 5
trigger6 = stateno = 400 && time > 4
trigger7 = stateno = 414 && time > 4
trigger8 = stateno = 447 && time > 5
;----------------------------------------------------------------------------------
;『運命』はここで終わりだッ！ s
[State -1, Stand Strong Punch]
type = ChangeState
value = 42000
TriggerAll = Var(59)<=0
triggerall = command = "DD_x"
triggerall = var(49) = 10000
triggerall = var(3) = 2
trigger1 = ctrl
trigger2 = stateno = [40200,40699]
trigger2 = stateno != 40250
trigger3 = stateno = [40000,40099]
;----------------------------------------------------------------------------------
;飛んでくる・・・・・・
[State -1, Stand Strong Punch]
type = ChangeState
value = 43100
TriggerAll = Var(59)<=0
triggerall = command = "DD_y"
triggerall = var(49) = 0
triggerall = var(3) = 2
triggerall = Statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && time > 7
trigger3 = stateno = 210 && time > 5
trigger4 = stateno = 215 && time > 5
trigger5 = stateno = 244 && time > 5
trigger6 = stateno = 400 && time > 4
trigger7 = stateno = 414 && time > 4
trigger8 = stateno = 447 && time > 5
;----------------------------------------------------------------------------------
;飛んでくる・・・・・・ s
[State -1, Stand Strong Punch]
type = ChangeState
value = 43000
TriggerAll = Var(59)<=0
triggerall = command = "DD_y"
triggerall = var(49) = 10000
triggerall = var(3) = 2
trigger1 = ctrl
trigger2 = stateno = [40200,40699]
trigger2 = stateno != 40250
trigger3 = stateno = [40000,40099]
;----------------------------------------------------------------------------------
;ナイフがッ！
[State -1, Stand Strong Punch]
type = ChangeState
value = 44100
TriggerAll = Var(59)<=0
triggerall = command = "DD_z"
triggerall = var(49) = 0
triggerall = var(3) = 2
triggerall = Statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && time > 7
trigger3 = stateno = 210 && time > 5
trigger4 = stateno = 215 && time > 5
trigger5 = stateno = 244 && time > 5
trigger6 = stateno = 400 && time > 4
trigger7 = stateno = 414 && time > 4
trigger8 = stateno = 447 && time > 5
;----------------------------------------------------------------------------------
;ナイフがッ！ s
[State -1, Stand Strong Punch]
type = ChangeState
value = 44000
TriggerAll = Var(59)<=0
triggerall = command = "DD_z"
triggerall = var(49) = 10000
triggerall = var(3) = 2
trigger1 = ctrl
trigger2 = stateno = [40200,40699]
trigger3 = stateno = [40000,40099]
;----------------------------------------------------------------------------------
;私の肉体が『基本』だ Soff
[State -1, Stand Strong Punch]
type = ChangeState
value = 31200
TriggerAll = Var(59)<=0
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = (command = "DD_x") || (command = "DD_y") || (command = "DD_z")
triggerall = var(49) != 10000
triggerall = var(3) = 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && (time > 6)
trigger3 = stateno = 210 && (time > 4)
trigger4 = stateno = 242 && (time > 13)
trigger5 = stateno = 215 && (time > 13)
trigger6 = stateno = 400 && (time > 3)
trigger7 = stateno = 412 && (time > 6)
trigger8 = stateno = 3900 && time < 7

;私の肉体が『基本』だ Son
[State -1, Stand Strong Punch]
type = ChangeState
value = 31210
TriggerAll = Var(59)<=0
triggerall = numhelper(4321) = 0
triggerall = (command = "DD_x") || (command = "DD_y") || (command = "DD_z")
triggerall = var(49) = 10000
triggerall = var(3) = 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 30200 && (time > 4)
trigger3 = stateno = 30210 && (time > 7)
trigger4 = stateno = 30240 && (time > 11)
trigger5 = stateno = 30400 && (time > 4)
trigger6 = stateno = 30411 && (time > 6)
trigger7 = stateno = 30440 && (time > 9)
trigger8 = stateno = 30220 && (time > 3)
trigger9 = stateno = 30255 && (time > 6)
trigger10 = stateno = 30270 && (time > 11)
trigger11 = stateno = 30420 && (time > 4)
trigger12 = stateno = 30450 && (time > 6)
trigger13 = stateno = 30470 && (time > 9)
;---------------------------------------------------------------------------
;ガーキャン
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1800+(var(3) = 1)*30000+(var(3) = 2)*(42100-1800)
TriggerAll = Var(59)<=0
triggerall = var(49) != 10000
triggerall = NumHelper(1900) = 0 
triggerall = numhelper(1001) = 0
triggerall = numhelper(2) = 0
triggerall = statetype != A
;triggerall = var(7) = 0
trigger1 = command = "morattazo"
trigger1 = (stateno = [150,153])
;---------------------------------------------------------------------------
;ガーキャンS
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 11800+(var(3) = 1)*20090+(var(3) = 2)*(42000-11800)
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000
triggerall = statetype != A
trigger1 = command = "morattazo"
trigger1 = (stateno = [150,153])
;===========================================================================
;---------------------------------------------------------------------------
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
TriggerAll = Var(59)<=0
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;空中ダッシュ（空ダ）
[State -1, Run Fwd]
type = ChangeState
value = 110
TriggerAll = Var(59)<=0
triggerall = var(29) = 0
triggerall = animelemtime(3) >= 0
triggerall = stateno = 50 || stateno = 10822
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = var(49) = 10000
trigger1 = var(3) = 1
trigger1 = (var(0)&2)
trigger1 = ctrl

;空中ダッシュ（空ダ）
[State -1, Run Fwd]
type = ChangeState
value = 110
TriggerAll = Var(59)<=0
triggerall = var(29) = 1
triggerall = animelemtime(3) >= 0
triggerall = stateno = 50 || stateno = 10822
triggerall = command = "FF"
triggerall = statetype = A
triggerall = var(49) = 10000
triggerall = var(3) = 1
triggerall = ctrl
trigger1 = (var(0)&2)
;trigger2 = (var(0)&2)

;---------------------------------------------------------------------------
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
TriggerAll = Var(59)<=0
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;空中ダッシュ（空ダ）
[State -1, Run Fwd]
type = ChangeState
value = 115
TriggerAll = Var(59)<=0
triggerall = var(29) = 0
triggerall = animelemtime(3) >= 0
triggerall = stateno = 50 || stateno = 10822
trigger1 = command = "BB"
trigger1 = statetype = A
trigger1 = var(49) = 10000
trigger1 = var(3) = 1
trigger1 = (var(0)&2)
trigger1 = ctrl

;空中ダッシュ（空ダ）
[State -1, Run Fwd]
type = ChangeState
value = 115
TriggerAll = Var(59)<=0
triggerall = var(29) = 1
triggerall = animelemtime(3) >= 0
triggerall = stateno = 50 || stateno = 10822
triggerall = command = "BB"
triggerall = statetype = A
triggerall = var(49) = 10000
triggerall = var(3) = 1
triggerall = ctrl
trigger1 = (var(0)&2)
;---------------------------------------------------------------------------
;ハイジャンプ
[State -1, Run Back]
type = ChangeState
value = 40
TriggerAll = Var(59)<=0
triggerall = command = "jump"
triggerall = var(3) = 1
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = 1 || var(0) := (var(0)|8)
trigger2 = stateno = 200 && (time > 6)
trigger2 = 1 || var(0) := (var(0)|8)
trigger3 = stateno = 210 && (time > 4)
trigger3 = 1 || var(0) := (var(0)|8)
trigger4 = stateno = 242 && (time > 13)
trigger4 = 1 || var(0) := (var(0)|8)
trigger5 = stateno = 215 && (time > 13)
trigger5 = 1 || var(0) := (var(0)|8)
trigger6 = stateno = 400 && (time > 3)
trigger6 = 1 || var(0) := (var(0)|8)
trigger7 = stateno = 412 && (time > 6)
trigger7 = 1 || var(0) := (var(0)|8)
trigger8 = stateno = 3900 && time < 7
trigger8 = 1 || var(0) := (var(0)|8)
trigger9 = stateno = 30200 && (time > 4)
trigger9 = 1 || var(0) := (var(0)|8)
trigger10 = stateno = 30210 && (time > 7)
trigger10 = 1 || var(0) := (var(0)|8)
trigger11 = stateno = 30240 && (time > 11)
trigger11 = 1 || var(0) := (var(0)|8)
trigger12 = stateno = 30400 && (time > 4)
trigger12 = 1 || var(0) := (var(0)|8)
trigger13 = stateno = 30411 && (time > 6)
trigger13 = 1 || var(0) := (var(0)|8)
trigger14 = stateno = 30440 && (time > 9)
trigger14 = 1 || var(0) := (var(0)|8)
trigger15 = stateno = 445 && (time > 9)
trigger15 = 1 || var(0) := (var(0)|8)
trigger16 = stateno = 30220 && (time > 3)
trigger16 = 1 || var(0) := (var(0)|8)
trigger17 = stateno = 30255 && (time > 6)
trigger17 = 1 || var(0) := (var(0)|8)
trigger18 = stateno = 30270 && (time > 11)
trigger18 = 1 || var(0) := (var(0)|8)
trigger19 = stateno = 30420 && (time > 4)
trigger19 = 1 || var(0) := (var(0)|8)
trigger20 = stateno = 30450 && (time > 6)
trigger20 = 1 || var(0) := (var(0)|8)
trigger21 = stateno = 30470 && (time > 9)
trigger21 = 1 || var(0) := (var(0)|8)

;---------------------------------------------------------------------------
;投げ on
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
TriggerAll = Var(59)<=0
triggerall = command != "C-MOON"
triggerall = var(49) = 10000
triggerall = command = "b"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 25
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 35
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H
;---------------------------------------------------------------------------
;投げ
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
TriggerAll = Var(59)<=0
triggerall = command != "C-MOON"
triggerall = var(49) = 0
;triggerall = var(7) = 0
triggerall = command = "b"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1001) = 0 
triggerall = NumHelper(2) = 0
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 13
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 18
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H
trigger3 = command = "holdfwd"
trigger3 = var(49) = 10009
trigger3 = (p2statetype = S) || (p2statetype = C)
trigger3 = p2movetype != H
;------------------------------------------------------------------------------

[State -1, 回り込み]
type = ChangeState
TriggerAll = Var(59)<=0
triggerall = var(10) = 0
triggerall = command != "C-MOON"
triggerall = (RoundState = 2) && (Alive)
triggerall = var(49) != 10000
triggerall = statetype != A && ctrl
trigger1 = command = "z"
trigger2 = command = "x+y+z"
value = 30
;---------------------------------------------------------------------------
;アドバンシング（立ち）
[State -1, Run Back]
type = ChangeState
TriggerAll = Var(59)<=0
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
TriggerAll = Var(59)<=0
triggerall = var(49) != 10000
triggerall = numhelper(4010) = 0
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
trigger1 = command = "x+y+z" || command = "b" || command = "z"
trigger1 = statetype = C
trigger1 = stateno = 152 || stateno = 153
trigger1 = prevstateno != 4000 && prevstateno != 4005
value = 4105
;---------------------------------------------------------------------------
;アドバンシング（立ち）S
[State -1, Run Back]
type = ChangeState
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000
triggerall = numhelper(4010) = 0
trigger1 = command = "x+y+z" || command = "b" || command = "z"
trigger1 = statetype = S
trigger1 = stateno = 150 || stateno = 151
trigger1 = prevstateno != 4000 && prevstateno != 4005
ignorehitpause = 1
value = 14000

;---------------------------------------------------------------------------
;アドバンシング（しゃがみ）S
[State -1, Run Back]
type = ChangeState
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000
triggerall = numhelper(4010) = 0
trigger1 = command = "x+y+z" || command = "b" || command = "z"
trigger1 = statetype = C
trigger1 = stateno = 152 || stateno = 153
trigger1 = prevstateno != 4000 && prevstateno != 4005
value = 14005

;---------------------------------------------------------------------------
[State -1,3段ジャンプ]
type = ChangeState
value = 42
TriggerAll = Var(59)<=0
;triggerall = !Ishelper	     ;プレイヤーがヘルパーでないとき
triggerall = var(49) = 10000 ;スタンドモードのとき
triggerall = (var(0)&4)      ;3段ｼﾞｬﾝﾌﾟ可能の時。(var(0)&4)は3段ｼﾞｬﾝﾌﾟした瞬間０になり、着地すると１になる
triggerall = var(29) = 1
triggerall = animelemtime(6) >= 0
triggerall = command = "up";"holdup"
triggerall = stateno = 50 || stateno = 10822;&& time >= 25
trigger1 = ctrl
triggerall = command != "upc"

[State -1,2段ジャンプ]
type = ChangeState
value = 41
TriggerAll = Var(59)<=0
;triggerall = !Ishelper	     ;プレイヤーがヘルパーでないとき
triggerall = var(49) = 10000 ;スタンドモードのとき
triggerall = (var(0)&2)      ;2段ｼﾞｬﾝﾌﾟ可能の時。(var(0)&2)は2段ｼﾞｬﾝﾌﾟした瞬間０になり、着地すると１になる
triggerall = animelemtime(6) >= 0
triggerall = command = "up";"holdup"
triggerall = stateno = 50 || stateno = 10822;&& time >= 25
trigger1 = ctrl
triggerall = command != "upc"

;===========================================================================
; 通常攻撃技
;---------------------------------------------------------------------------

;遠隔　弱弱弱　立ち強　s
[State -1, Stand Strong Punch]
type = ChangeState
value = 10240
TriggerAll = Var(59)<=0
triggerall = command != "C-MOON"
triggerall = var(29) = 1
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = numhelper(4321) = 0
trigger1 = stateno = 10200 && prevstateno = 10200 && (time >= 4 || movecontact)

;遠隔　弱弱弱　屈み強　s
[State -1, Stand Strong Punch]
type = ChangeState
value = 10440
TriggerAll = Var(59)<=0
triggerall = command != "C-MOON"
triggerall = var(29) = 1
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = numhelper(4321) = 0
trigger1 = stateno = 10400 && prevstateno = 10400 && (time >= 5 || movecontact)

;遠隔　弱弱弱　屈み強　s
[State -1, Stand Strong Punch]
type = ChangeState
value = 30440
TriggerAll = Var(59)<=0
triggerall = command != "C-MOON"
triggerall = var(29) = 1
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = numhelper(4321) = 0
trigger1 = stateno = 30400 && prevstateno = 30400 && (time >= 5 || movecontact)

;遠隔　中中中　屈み強　s
[State -1, Stand Strong Punch]
type = ChangeState
value = 10440
TriggerAll = Var(59)<=0
triggerall = command != "C-MOON"
triggerall = var(29) = 1
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = numhelper(4321) = 0
trigger1 = stateno = 10410 && prevstateno = 10410 && (time >= 7 || movecontact)

;遠隔　中弱中　屈み強　s
[State -1, Stand Strong Punch]
type = ChangeState
value = 10440
TriggerAll = Var(59)<=0
triggerall = command != "C-MOON"
triggerall = var(29) = 1
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = numhelper(4321) = 0
trigger1 = stateno = 10400 && prevstateno = 10410 && (time >= 5 || movecontact)
;---------------------------------------------------------------------------

;発現立ち弱　C-MOON
[State -1, Stand Strong Punch]
type = ChangeState
value = 30220
TriggerAll = Var(59)<=0
triggerall = command != "C-MOON"
triggerall = var(49) != 10000
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = NumHelper(4321) = 0 
triggerall = var(3) = 1
triggerall = command = "x+a"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [100,105]

;発現前立ち弱 
[State -1, Stand Strong Punch]
type = ChangeState
value = 10225
TriggerAll = Var(59)<=0
triggerall = command != "C-MOON"
triggerall = var(49) != 10000
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = NumHelper(4321) = 0 
triggerall = var(3) = 0
triggerall = command = "x+a"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [100,105]
trigger2 = anim != 108

;発現立ち弱　
[State -1, Stand Strong Punch]
type = ChangeState
value = 10220
TriggerAll = Var(59)<=0
triggerall = command != "C-MOON"
triggerall = var(49) != 10000
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = NumHelper(4321) = 0 
triggerall = var(3) = 0
triggerall = command = "x+a"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [100,105]
trigger2 = anim != 108

;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
TriggerAll = Var(59)<=0
triggerall = command != "C-MOON"
triggerall = NumHelper(2) = 0 
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = var(49) != 10000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [100,105]
trigger2 = anim != 108
trigger3 = stateno = 400 && time > 4

;立ち弱パンチ2
[State -1, Stand Light Punch]
type = ChangeState
value = 200
TriggerAll = Var(59)<=0
triggerall = command != "C-MOON"
triggerall = NumHelper(2) = 1
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = var(49) != 10000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = anim != 108
trigger2 = stateno = [100,105]
trigger3 = stateno = 400 && time > 4

;前立ち弱 S　WS
[State -1, Stand Strong Punch]
type = ChangeState
value = 10205
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000
triggerall = command = "x"
triggerall = var(3) = 0
;triggerall = command != "y"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = numhelper(4321) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 10200) && time > 5
trigger3 = (stateno = 10220) && time > 5
trigger4 = stateno = [100,105]
trigger4 = anim != 108

;立ち弱　s　WS
[State -1, Stand Strong Punch]
type = ChangeState
value = 10200
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000
triggerall = var(3) = 0
triggerall = command = "x"
triggerall = command != "holdfwd"
triggerall = command != "holddown"
triggerall = numhelper(4321) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 10200) && time > 5
trigger2 = (stateno = 10220) && time > 5
trigger3 = stateno = [100,105]
trigger3 = anim != 108

;立ち弱　s　CM
[State -1, Stand Strong Punch]
type = ChangeState
value = 30200
TriggerAll = Var(59)<=0
triggerall = command != "C-MOON"
triggerall = var(49) = 10000
triggerall = var(3) = 1
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = numhelper(4321) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 30220) && time > 9
trigger3 = stateno = 100 || (stateno = 105 && (var(29) = 0))
trigger3 = anim != 108
trigger4 = stateno = 30400 && time >= 4

;立ち弱　s MIH
[State -1, Stand Strong Punch]
type = ChangeState
value = 40200
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = var(3) = 2
triggerall = statetype != A
triggerall = var(19) = 0
trigger1 = (ctrl) || (stateno = [100,105])

;連立ち弱　s MIH
[State -1, Stand Strong Punch]
type = ChangeState
value = 40201
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = var(3) = 2
triggerall = statetype != A
triggerall = var(19) = [1,15]
trigger1 = ctrl
trigger2 = (stateno = 40200) || (stateno = 40202)
trigger2 = time > 1
trigger3 = (stateno = 40210) || (stateno = 40212)
trigger3 = time > 2
trigger4 = (stateno = 40240) || (stateno = 40242)
trigger4 = time > 3
trigger5 = (stateno = 40400) || (stateno = 40402)
trigger5 = time > 1
trigger6 = (stateno = 40410) || (stateno = 40412)
trigger6 = time > 2
trigger7 = (stateno = 40440) || (stateno = 40442)
trigger8 = time > 3

;連連立ち弱　s MIH
[State -1, Stand Strong Punch]
type = ChangeState
value = 40202
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = var(3) = 2
triggerall = statetype != A
triggerall = var(19) = [26,40]
trigger1 = ctrl
trigger2 = stateno = 40201
trigger2 = time > 1
trigger3 = stateno = 40211
trigger3 = time > 2
trigger4 = stateno = 40241
trigger4 = time > 3
trigger5 = stateno = 40401
trigger5 = time > 1
trigger6 = stateno = 40411
trigger6 = time > 2
trigger7 = stateno = 40441
trigger7 = time > 3
;---------------------------------------------------------------------------

;発現前立ち中
[State -1, Stand Strong Punch]
type = ChangeState
value = 30255
TriggerAll = Var(59)<=0
triggerall = command != "C-MOON"
triggerall = var(49) != 10000
triggerall = var(3) = 1
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = NumHelper(4321) = 0 
triggerall = command = "y+a"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [100,105]

;発現前立ち中
[State -1, Stand Strong Punch]
type = ChangeState
value = 10255
TriggerAll = Var(59)<=0
triggerall = command != "C-MOON"
triggerall = var(49) != 10000
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = NumHelper(4321) = 0 
triggerall = command = "y+a"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = var(3) = 0
trigger1 = ctrl
trigger2 = stateno = [100,105]

;発現立ち中　
[State -1, Stand Strong Punch]
type = ChangeState
value = 10250
TriggerAll = Var(59)<=0
triggerall = command != "C-MOON"
triggerall = var(49) != 10000
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = NumHelper(4321) = 0 
triggerall = command = "y+a"
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = var(3) = 0
trigger1 = ctrl
trigger2 = stateno = [100,105]

;前立中攻撃（本体）
[State -1, Taunt]
type = ChangeState
value = 215
TriggerAll = Var(59)<=0
triggerall = command != "C-MOON"
triggerall = var(49) != 10000
triggerall = roundstate = 2
triggerall = command = "y"
triggerall = command != "holddown" && command = "holdfwd"
triggerall = statetype != A
trigger1 = ctrl
ignorehitpause = 0

;立ち中
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
TriggerAll = Var(59)<=0
triggerall = command != "C-MOON"
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = var(49) != 10000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [100,105]
trigger2 = anim != 108

;前立ち中 S　WS
[State -1, Stand Strong Punch]
type = ChangeState
value = 10215
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000
triggerall = var(3) = 0
triggerall = command = "y"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = numhelper(4321) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 10200) && time > 5
trigger3 = (stateno = 10205) && time > 5
trigger4 = (stateno = 10210) && time > 6
trigger5 = (stateno = 10220) && time > 5
trigger6 = (stateno = 10225) && time > 5
trigger7 = (stateno = 10250) && time > 5
trigger8 = stateno = [100,105]

;立ち中　s　WS
[State -1, Stand Strong Punch]
type = ChangeState
value = 10210
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000
triggerall = var(3) = 0
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = numhelper(4321) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 10200) && time > 5
trigger3 = (stateno = 10205) && time > 5
trigger4 = (stateno = 10220) && time > 5
trigger5 = (stateno = 10225) && time > 5
trigger6 = stateno = [100,105]

;立ち中　s　CM
[State -1, Stand Strong Punch]
type = ChangeState
value = 30210
TriggerAll = Var(59)<=0
triggerall = command != "C-MOON"
triggerall = var(49) = 10000
triggerall = var(3) = 1
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = numhelper(4321) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 30200) && time >= 4
trigger3 = (stateno = [100,104]) || (stateno = 105 && (var(29) = 0)) || (stateno = 106)
trigger4 = stateno = 30400 && time >= 4

;立ち中　s MIH
[State -1, Stand Strong Punch]
type = ChangeState
value = 40210
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = var(3) = 2
triggerall = statetype != A
triggerall = var(19) = 0
trigger1 = (ctrl) || (stateno = [100,105])

;連立ち中　s MIH
[State -1, Stand Strong Punch]
type = ChangeState
value = 40211
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = var(3) = 2
triggerall = statetype != A
triggerall = var(19) = [1,15]
trigger1 = ctrl
trigger2 = (stateno = 40200) || (stateno = 40202)
trigger2 = time > 1
trigger3 = (stateno = 40210) || (stateno = 40212)
trigger3 = time > 2
trigger4 = (stateno = 40240) || (stateno = 40242)
trigger4 = time > 3
trigger5 = (stateno = 40400) || (stateno = 40402)
trigger5 = time > 1
trigger6 = (stateno = 40410) || (stateno = 40412)
trigger6 = time > 2
trigger7 = (stateno = 40440) || (stateno = 40442)
trigger8 = time > 3

;連連立ち中　s MIH
[State -1, Stand Strong Punch]
type = ChangeState
value = 40212
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = var(3) = 2
triggerall = statetype != A
triggerall = var(19) = [26,40]
trigger1 = ctrl
trigger2 = stateno = 40201
trigger2 = time > 1
trigger3 = stateno = 40211
trigger3 = time > 2
trigger4 = stateno = 40241
trigger4 = time > 3
trigger5 = stateno = 40401
trigger5 = time > 1
trigger6 = stateno = 40411
trigger6 = time > 2
trigger7 = stateno = 40441
trigger7 = time > 3
;---------------------------------------------------------------------------
;発現立ち強　C-MOON
[State -1, Stand Strong Punch]
type = ChangeState
value = 30270
TriggerAll = Var(59)<=0
triggerall = command != "C-MOON"
triggerall = var(49) != 10000
triggerall = var(3) = 1
triggerall = NumHelper(1900) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = NumHelper(4321) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = command = "z+a"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [100,105]

;発現立ち強　
[State -1, Stand Strong Punch]
type = ChangeState
value = 10270
TriggerAll = Var(59)<=0
triggerall = command != "C-MOON"
triggerall = var(49) != 10000
;triggerall = var(7) = 0
triggerall = NumHelper(1900) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = NumHelper(4321) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = command = "z+a"
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = var(3) = 0
trigger1 = ctrl
trigger2 = stateno = [100,105]

;立ち強　WS
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
TriggerAll = Var(59)<=0
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = var(3) = 0
triggerall = var(49) != 10000
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = stateno = [100,105]
trigger3 = anim != 108
trigger4 = (stateno = 400) && time > 3
trigger5 = (stateno = 410) && time > 6

;立ち強　CM
[State -1, Standing Strong Kick]
type = ChangeState
value = 242
TriggerAll = Var(59)<=0
triggerall = command != "C-MOON"
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = var(3) = 1
triggerall = var(49) != 10000
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 210) && time > 6
trigger4 = stateno = [100,105]
trigger5 = (stateno = 400) && time > 4
trigger6 = (stateno = 215) && time > 5
trigger7 = (stateno = 412) && time > 6

;立ち強　MIH
[State -1, Standing Strong Kick]
type = ChangeState
value = 244
TriggerAll = Var(59)<=0
triggerall = var(3) = 2
triggerall = var(49) != 10000
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 210) && time > 6
trigger4 = stateno = [100,105]
trigger5 = (stateno = 400) && time > 4
trigger6 = (stateno = 215) && time > 5
trigger7 = (stateno = 414) && time > 4

;立ち強
[State -1, Standing Strong Kick]
type = ChangeState
value = 210+(command = "holdfwd")*5
TriggerAll = Var(59)<=0
triggerall = command != "C-MOON"
triggerall = NumHelper(1900) = 0
triggerall = NumHelper(1600) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) != 0 
;triggerall = var(7) = 0
triggerall = var(49) != 10000
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [100,105]
trigger2 = anim != 108

;立ち強
[State -1, Standing Strong Kick]
type = ChangeState
value = 210+(command = "holdfwd")*5
TriggerAll = Var(59)<=0
triggerall = command != "C-MOON"
triggerall = NumHelper(1900) = 0
triggerall = NumHelper(1600) = 0 
triggerall = numhelper(1001) != 0
triggerall = NumHelper(2) = 0 
;triggerall = var(7) = 0
triggerall = var(49) != 10000
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [100,105]
trigger2 = anim != 108

;立ち強
[State -1, Standing Strong Kick]
type = ChangeState
value = 210+(command = "holdfwd")*5
TriggerAll = Var(59)<=0
triggerall = command != "C-MOON"
triggerall = NumHelper(1900) = 0
triggerall = NumHelper(1600) != 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
;triggerall = var(7) = 0
triggerall = var(49) != 10000
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [100,105]
trigger2 = anim != 108

;立ち強
[State -1, Standing Strong Kick]
type = ChangeState
value = 210+(command = "holdfwd")*5
TriggerAll = Var(59)<=0
triggerall = command != "C-MOON"
triggerall = NumHelper(1900) != 0
triggerall = NumHelper(1600) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
;triggerall = var(7) = 0
triggerall = var(49) != 10000
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [100,105]
trigger2 = anim != 108

;立ち強　s WS
[State -1, Stand Strong Punch]
type = ChangeState
value = 10240
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = numhelper(4321) = 0
triggerall = var(3) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 10200) && time > 5
trigger3 = movecontact
trigger3 = (stateno = 10210) && time > 5
trigger4 = (stateno = 10205) && time > 5
trigger5 = (stateno = 10215) && time > 5
trigger6 = (stateno = 10220) && time > 5
trigger7 = (stateno = 10225) && time > 5
trigger8 = (stateno = 10250) && time > 5
trigger9 = (stateno = 10255) && time > 5
trigger10 = stateno = [100,105]

;立ち強　s CM
[State -1, Stand Strong Punch]
type = ChangeState
value = 30240
TriggerAll = Var(59)<=0
triggerall = command != "C-MOON"
triggerall = var(49) = 10000
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = numhelper(4321) = 0
triggerall = var(3) = 1
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 30200) && time > 4
trigger3 = (stateno = 30210) && time > 7
trigger4 = (stateno = 30400) && time > 5
trigger5 = (stateno = 30411) && time > 7
trigger6 = (stateno = [100,104]) || (stateno = 105 && (var(29) = 0)) || (stateno = 106)

;立ち強　s MIH
[State -1, Stand Strong Punch]
type = ChangeState
value = 40240
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = var(3) = 2
triggerall = statetype != A
triggerall = var(19) = 0
trigger1 = (ctrl) || (stateno = [100,105])

;連立ち強　s MIH
[State -1, Stand Strong Punch]
type = ChangeState
value = 40241
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = var(3) = 2
triggerall = statetype != A
triggerall = var(19) = [1,15]
trigger1 = ctrl
trigger2 = (stateno = 40200) || (stateno = 40202)
trigger2 = time > 1
trigger3 = (stateno = 40210) || (stateno = 40212)
trigger3 = time > 2
trigger4 = (stateno = 40240) || (stateno = 40242)
trigger4 = time > 3
trigger5 = (stateno = 40400) || (stateno = 40402)
trigger5 = time > 1
trigger6 = (stateno = 40410) || (stateno = 40412)
trigger6 = time > 2
trigger7 = (stateno = 40440) || (stateno = 40442)
trigger8 = time > 3

;連連立ち強　s MIH
[State -1, Stand Strong Punch]
type = ChangeState
value = 40242
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = var(3) = 2
triggerall = statetype != A
triggerall = var(19) = [26,40]
trigger1 = ctrl
trigger2 = stateno = 40201
trigger2 = time > 1
trigger3 = stateno = 40211
trigger3 = time > 2
trigger4 = stateno = 40241
trigger4 = time > 3
trigger5 = stateno = 40401
trigger5 = time > 1
trigger6 = stateno = 40411
trigger6 = time > 2
trigger7 = stateno = 40441
trigger7 = time > 3
;---------------------------------------------------------------------------
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
TriggerAll = Var(59)<=0
triggerall = command = "start"
triggerall = var(3) != 2
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = stateno != 195
trigger1 = ifelse(var(29) = 1,helper(1),anim != 181,1)

;挑発
[State -1, Taunt]
type = ChangeState
value = 40195
TriggerAll = Var(59)<=0
triggerall = command = "start"
triggerall = var(3) = 2
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;発現しゃがみ弱　C-MOON
[State -1, Stand Strong Punch]
type = ChangeState
value = 30420
TriggerAll = Var(59)<=0
triggerall = command != "C-MOON"
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = var(49) != 10000
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = NumHelper(4321) = 0 
triggerall = command = "x+a"
triggerall = command = "holddown"
triggerall = statetype != A
triggerall = var(3) = 1
trigger1 = ctrl
trigger2 = stateno = [100,105]

;発現しゃがみ弱　
[State -1, Stand Strong Punch]
type = ChangeState
value = 10420
TriggerAll = Var(59)<=0
triggerall = command != "C-MOON"
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = var(49) != 10000
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = NumHelper(4321) = 0 
triggerall = command = "x+a"
triggerall = command = "holddown"
triggerall = statetype != A
triggerall = var(3) = 0
trigger1 = ctrl
trigger2 = stateno = [100,105]

;しゃがみ弱
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
TriggerAll = Var(59)<=0
triggerall = command != "C-MOON"
triggerall = var(49) != 10000
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = [100,105]
trigger2 = anim != 108
trigger3 = stateno = 400 && time >= 3

;しゃがみ弱 S WS
[State -1, Crouching Light Punch]
type = ChangeState
value = 10400
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000
triggerall = var(3) = 0
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = numhelper(4321) = 0
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = [100,105]

;しゃがみ弱 S　CM
[State -1, Crouching Light Punch]
type = ChangeState
value = 30400
TriggerAll = Var(59)<=0
triggerall = command != "C-MOON"
triggerall = var(49) = 10000
triggerall = var(3) = 1
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = numhelper(4321) = 0
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = [100,104]) || (stateno = 105 && (var(29) = 0)) || (stateno = 106)
trigger3 = stateno = 30400 && time >= 4

;しゃがみ弱　s MIH
[State -1, Stand Strong Punch]
type = ChangeState
value = 40400
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = var(3) = 2
triggerall = var(19) = 0
triggerall = statetype != A
trigger1 = (ctrl) || (stateno = [100,105])

;連しゃがみ弱　s MIH
[State -1, Stand Strong Punch]
type = ChangeState
value = 40401
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = var(3) = 2
triggerall = var(19) = [1,15]
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 40200) || (stateno = 40202)
trigger2 = time > 1
trigger3 = (stateno = 40210) || (stateno = 40212)
trigger3 = time > 2
trigger4 = (stateno = 40240) || (stateno = 40242)
trigger4 = time > 3
trigger5 = (stateno = 40400) || (stateno = 40402)
trigger5 = time > 1
trigger6 = (stateno = 40410) || (stateno = 40412)
trigger6 = time > 2
trigger7 = (stateno = 40440) || (stateno = 40442)
trigger8 = time > 3

;連連しゃがみ弱　s MIH
[State -1, Stand Strong Punch]
type = ChangeState
value = 40402
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = var(3) = 2
triggerall = var(19) = [26,40]
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 40201
trigger2 = time > 1
trigger3 = stateno = 40211
trigger3 = time > 2
trigger4 = stateno = 40241
trigger4 = time > 3
trigger5 = stateno = 40401
trigger5 = time > 1
trigger6 = stateno = 40411
trigger6 = time > 2
trigger7 = stateno = 40441
trigger7 = time > 3

;しゃがみ弱 S 省略版　WS
[State -1, Crouching Light Punch]
type = ChangeState
value = 10400
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000
triggerall = var(3) = 0
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = numhelper(4321) = 0
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = [100,105]
;---------------------------------------------------------------------------
;発現しゃがみ中 C-MOON
[State -1, Stand Strong Punch]
type = ChangeState
value = 30450
TriggerAll = Var(59)<=0
triggerall = command != "C-MOON"
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = NumHelper(4321) = 0 
triggerall = var(49) != 10000
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = command = "y+a"
triggerall = command = "holddown"
triggerall = statetype != A
triggerall = var(3) = 1
trigger1 = ctrl
trigger2 = stateno = [100,105]

;発現しゃがみ中
[State -1, Stand Strong Punch]
type = ChangeState
value = 10450
TriggerAll = Var(59)<=0
triggerall = command != "C-MOON"
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = NumHelper(4321) = 0 
triggerall = var(49) != 10000
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = command = "y+a"
triggerall = command = "holddown"
triggerall = statetype != A
triggerall = var(3) = 0
trigger1 = ctrl
trigger2 = stateno = [100,105]

;しゃがみ中 WS
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
TriggerAll = Var(59)<=0
triggerall = NumHelper(1900) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = var(3) = 0
;triggerall = var(7) = 0
triggerall = var(49) != 10000
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) && time > 3
trigger3 = stateno = [100,105]
trigger3 = anim != 108

;しゃがみ中 MIH
[State -1, Crouching Strong Punch]
type = ChangeState
value = 414
TriggerAll = Var(59)<=0
triggerall = var(3) = 2
triggerall = var(49) != 10000
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) && time > 3
trigger3 = stateno = [100,105]

;しゃがみ弱 CM
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
TriggerAll = Var(59)<=0
triggerall = command != "C-MOON"
triggerall = var(49) != 10000
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = NumHelper(2) = 1
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = [100,105]
trigger2 = anim != 108
trigger3 = stateno = 400 && time >= 3

;しゃがみ中
[State -1, Crouching Strong Punch]
type = ChangeState
value = 412
TriggerAll = Var(59)<=0
triggerall = command != "C-MOON"
triggerall = NumHelper(1900) = 0 
triggerall = numhelper(1001) = 0
triggerall = var(3) = 1
triggerall = NumHelper(2) = 0 
;triggerall = var(7) = 0
triggerall = var(49) != 10000
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) && time > 4
trigger3 = stateno = [100,105]
trigger4 = (stateno = 200) && time > 6

;しゃがみ中S WS
[State -1, Crouching Strong Punch]
type = ChangeState
value = 10410
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = numhelper(4321) = 0
triggerall = var(3) = 0
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = [100,105]
trigger3 = stateno = 10400 && movecontact
trigger4 = stateno = 10420 && movecontact

;しゃがみ中S CM
[State -1, Crouching Strong Punch]
type = ChangeState
value = 30411
TriggerAll = Var(59)<=0
triggerall = command != "C-MOON"
triggerall = var(49) = 10000
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = numhelper(4321) = 0
triggerall = var(3) = 1
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = [100,104]) || (stateno = 105 && (var(29) = 0)) || (stateno = 106)
trigger3 = stateno = 30400 && time > 5
trigger4 = stateno = 30200 && time > 4

;しゃがみ中S MIH
[State -1, Crouching Strong Punch]
type = ChangeState
value = 40410
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = var(3) = 2
triggerall = statetype != A
triggerall = var(19) = 0
trigger1 = (ctrl) || (stateno = [100,105])

;連しゃがみ中S MIH
[State -1, Crouching Strong Punch]
type = ChangeState
value = 40411
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = var(3) = 2
triggerall = statetype != A
triggerall = var(19) = [1,15]
trigger1 = ctrl
trigger2 = (stateno = 40200) || (stateno = 40202)
trigger2 = time > 1
trigger3 = (stateno = 40210) || (stateno = 40212)
trigger3 = time > 2
trigger4 = (stateno = 40240) || (stateno = 40242)
trigger4 = time > 3
trigger5 = (stateno = 40400) || (stateno = 40402)
trigger5 = time > 1
trigger6 = (stateno = 40410) || (stateno = 40412)
trigger6 = time > 2
trigger7 = (stateno = 40440) || (stateno = 40442)
trigger8 = time > 3

;連連しゃがみ中S MIH
[State -1, Crouching Strong Punch]
type = ChangeState
value = 40412
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = var(3) = 2
triggerall = statetype != A
triggerall = var(19) = [26,40]
trigger1 = ctrl
trigger2 = stateno = 40201
trigger2 = time > 1
trigger3 = stateno = 40211
trigger3 = time > 2
trigger4 = stateno = 40241
trigger4 = time > 3
trigger5 = stateno = 40401
trigger5 = time > 1
trigger6 = stateno = 40411
trigger6 = time > 2
trigger7 = stateno = 40441
trigger7 = time > 3

;---------------------------------------------------------------------------
;発現しゃがみ強　C-MOON
[State -1, Stand Strong Punch]
type = ChangeState
value = 30470
TriggerAll = Var(59)<=0
triggerall = command != "C-MOON"
triggerall = NumHelper(1900) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = NumHelper(4321) = 0 
triggerall = var(49) != 10000
triggerall = command = "z+a"
triggerall = command = "holddown"
triggerall = var(3) = 1
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = [100,105]

;発現しゃがみ強　
[State -1, Stand Strong Punch]
type = ChangeState
value = 10470
TriggerAll = Var(59)<=0
triggerall = command != "C-MOON"
triggerall = NumHelper(1900) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = NumHelper(4321) = 0 
triggerall = var(49) != 10000
triggerall = command = "z+a"
triggerall = command = "holddown"
triggerall = var(3) = 0
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = [100,105]

;しゃがみ強 WS
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
TriggerAll = Var(59)<=0
triggerall = NumHelper(1900) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = var(49) != 10000
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = var(3) = 0
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = (time > 9) || (movecontact && time > 5)
trigger3 = stateno = [100,105]
trigger3 = anim != 108

;しゃがみ強 CM
[State -1, Crouching Strong Kick]
type = ChangeState
value = 445
TriggerAll = Var(59)<=0
triggerall = command != "C-MOON"
triggerall = NumHelper(1900) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = var(49) != 10000
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = var(3) = 1
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = (time > 3)

;しゃがみ中 MIH
[State -1, Crouching Strong Punch]
type = ChangeState
value = 447
TriggerAll = Var(59)<=0
triggerall = var(3) = 2
triggerall = var(49) != 10000
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) && time > 3
trigger3 = (stateno = 414) && time > 4
trigger4 = stateno = [100,105]

;しゃがみ強
[State -1, Crouching Strong Kick]
type = ChangeState
value = 400
TriggerAll = Var(59)<=0
triggerall = command != "C-MOON"
triggerall = NumHelper(1900) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 1
triggerall = var(49) != 10000
triggerall = command = "b"
triggerall = command = "holddown"
;triggerall = var(7) = 0
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = [100,105]
trigger2 = anim != 108
trigger3 = stateno = 400 && time >= 3

;しゃがみ強
[State -1, Crouching Strong Kick]
type = ChangeState
value = 400
TriggerAll = Var(59)<=0
triggerall = command != "C-MOON"
triggerall = NumHelper(1900) = 0 
triggerall = numhelper(1001) = 1
triggerall = NumHelper(2) = 0
triggerall = var(49) != 10000
triggerall = (command = "b") || (command = "y")
triggerall = command = "holddown"
;triggerall = var(7) = 0
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = [100,105]
trigger2 = anim != 108
trigger3 = stateno = 400 && time >= 3

;しゃがみ強S　WS
[State -1, Crouching Strong Kick]
type = ChangeState
value = 10440
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = numhelper(4321) = 0
triggerall = var(3) = 0
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = [100,105]
trigger3 = stateno = 10400 && movecontact
trigger4 = stateno = 10410 && movecontact
trigger5 = stateno = 10420 && movecontact
trigger6 = stateno = 10450 && movecontact

;しゃがみ強S　CM
[State -1, Crouching Strong Punch]
type = ChangeState
value = 30440
TriggerAll = Var(59)<=0
triggerall = command != "C-MOON"
triggerall = var(49) = 10000
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = numhelper(4321) = 0
triggerall = var(3) = 1
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = [100,104]) || (stateno = 105 && (var(29) = 0)) || (stateno = 106) || (stateno = 106)
trigger3 = stateno = 30400 && time > 5
trigger4 = stateno = 30200 && time > 4
trigger5 = stateno = 30411 && time > 7
trigger6 = stateno = 30210 && time > 7

;しゃがみ強S MIH
[State -1, Crouching Strong Punch]
type = ChangeState
value = 40440
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = var(3) = 2
triggerall = statetype != A
triggerall = var(19) = 0
trigger1 = (ctrl) || (stateno = [100,105])

;連しゃがみ強S MIH
[State -1, Crouching Strong Punch]
type = ChangeState
value = 40441
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = var(3) = 2
triggerall = statetype != A
triggerall = var(19) = [1,15]
trigger1 = ctrl
trigger2 = (stateno = 40200) || (stateno = 40202)
trigger2 = time > 1
trigger3 = (stateno = 40210) || (stateno = 40212)
trigger3 = time > 2
trigger4 = (stateno = 40240) || (stateno = 40242)
trigger4 = time > 3
trigger5 = (stateno = 40400) || (stateno = 40402)
trigger5 = time > 1
trigger6 = (stateno = 40410) || (stateno = 40412)
trigger6 = time > 2
trigger7 = (stateno = 40440) || (stateno = 40442)
trigger8 = time > 3

;連連しゃがみ強S MIH
[State -1, Crouching Strong Punch]
type = ChangeState
value = 40442
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = var(3) = 2
triggerall = statetype != A
triggerall = var(19) = [26,40]
trigger1 = ctrl
trigger2 = stateno = 40201
trigger2 = time > 1
trigger3 = stateno = 40211
trigger3 = time > 2
trigger4 = stateno = 40241
trigger4 = time > 3
trigger5 = stateno = 40401
trigger5 = time > 1
trigger6 = stateno = 40411
trigger6 = time > 2
trigger7 = stateno = 40441
trigger7 = time > 3
;---------------------------------------------------------------------------
;発現空中弱 C-MOON
[State -1, Stand Strong Punch]
type = ChangeState
value = 30620
TriggerAll = Var(59)<=0
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = var(49) != 10000
triggerall = NumHelper(2) = 0 
triggerall = NumHelper(4321) = 0 
triggerall = numhelper(1001) = 0
triggerall = command = "x+a"
triggerall = statetype = A
triggerall = var(3) = 1
trigger1 = ctrl

;発現空中弱
[State -1, Stand Strong Punch]
type = ChangeState
value = 10620
TriggerAll = Var(59)<=0
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = var(49) != 10000
triggerall = NumHelper(2) = 0 
triggerall = NumHelper(4321) = 0 
triggerall = numhelper(1001) = 0
triggerall = command = "x+a"
triggerall = statetype = A
triggerall = var(3) = 0
trigger1 = ctrl

;空中弱
[State -1, Jump Light Punch]
type = ChangeState
value = 600
TriggerAll = Var(59)<=0
triggerall = var(49) != 10000
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;空中弱S WS
[State -1, Jump Light Punch]
type = ChangeState
value = 10600
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000
triggerall = command = "x"
triggerall = numhelper(4321) = 0
triggerall = var(3) = 0
trigger1 = statetype = A
trigger1 = ctrl

;空中弱S CM
[State -1, Jump Light Punch]
type = ChangeState
value = 30601
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000
triggerall = command = "x"
triggerall = numhelper(4321) = 0
triggerall = var(3) = 1
triggerall = !(stateno = 110 && time < 8)
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = var(29) = 1
trigger2 = stateno = 105 && !(anim = 30107)

;空中弱S MIH
[State -1, Jump Strong Punch]
type = ChangeState
value = 40600
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000
triggerall = command = "x"
triggerall = var(3) = 2
triggerall = statetype = A
triggerall = var(19) = 0
trigger1 = ctrl

;連空中弱S MIH
[State -1, Jump Strong Punch]
type = ChangeState
value = 40601
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000
triggerall = command = "x"
triggerall = var(3) = 2
triggerall = statetype = A
triggerall = var(19) = [1,15]
trigger1 = ctrl
trigger2 = (stateno = 40600) || (stateno = 40602)
trigger2 = time > 1
trigger3 = (stateno = 40610) || (stateno = 40612)
trigger3 = time > 2
trigger4 = (stateno = 40640) || (stateno = 40642)
trigger4 = time > 3

;連連空中弱S MIH
[State -1, Jump Strong Punch]
type = ChangeState
value = 40602
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000
triggerall = command = "x"
triggerall = var(3) = 2
triggerall = statetype = A
triggerall = var(19) = [26,40]
trigger1 = ctrl
trigger2 = stateno = 40601
trigger2 = time > 1
trigger3 = stateno = 40611
trigger3 = time > 2
trigger4 = stateno = 40641
trigger4 = time > 3

;空中弱S 省略版 WS
[State -1, Jump Light Punch]
type = ChangeState
value = 10600
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000
triggerall = command = "z"
triggerall = numhelper(4321) = 0
triggerall = var(3) = 0
trigger1 = statetype = A
trigger1 = ctrl

;空中弱S 省略版 CM
[State -1, Jump Light Punch]
type = ChangeState
value = 30601
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000
triggerall = command = "z"
triggerall = numhelper(4321) = 0
triggerall = var(3) = 1
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = var(29) = 1
trigger2 = stateno = 105 && !(anim = 30107)
;---------------------------------------------------------------------------
;発現空中中 C-MOON
[State -1, Stand Strong Punch]
type = ChangeState
value = 30650
TriggerAll = Var(59)<=0
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = NumHelper(2) = 0 
triggerall = NumHelper(4321) = 0 
triggerall = var(49) != 10000
triggerall = numhelper(1001) = 0
triggerall = command = "y+a"
triggerall = statetype = A
triggerall = var(3) = 1
trigger1 = ctrl

;発現空中中
[State -1, Stand Strong Punch]
type = ChangeState
value = 10650
TriggerAll = Var(59)<=0
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = NumHelper(2) = 0 
triggerall = NumHelper(4321) = 0 
triggerall = var(49) != 10000
triggerall = numhelper(1001) = 0
triggerall = command = "y+a"
triggerall = statetype = A
triggerall = var(3) = 0
trigger1 = ctrl

;前空中中攻撃（本体）
[State -1, Taunt]
type = ChangeState
value = 615
TriggerAll = Var(59)<=0
triggerall = var(49) != 10000
triggerall = roundstate = 2
triggerall = command = "y"
triggerall = command != "holddown" && command = "holdfwd"
trigger1 = statetype = A
trigger1 = ctrl
ignorehitpause = 0

;空中中
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
TriggerAll = Var(59)<=0
triggerall = var(49) != 10000
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;空中中S WS
[State -1, Jump Strong Punch]
type = ChangeState
value = 10610
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000
triggerall = command = "y"
triggerall = numhelper(4321) = 0
triggerall = var(3) = 0
trigger1 = statetype = A
trigger1 = ctrl

;空中中S CM
[State -1, Jump Strong Punch]
type = ChangeState
value = 30611
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000
triggerall = command = "y"
triggerall = numhelper(4321) = 0
triggerall = var(3) = 1
triggerall = !(stateno = 110 && time < 8)
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = var(29) = 1
trigger2 = stateno = 105 && !(anim = 30107)

;空中中S MIH
[State -1, Jump Strong Punch]
type = ChangeState
value = 40610
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000
triggerall = command = "y"
triggerall = var(3) = 2
triggerall = statetype = A
triggerall = var(19) = 0
trigger1 = ctrl

;連空中中S MIH
[State -1, Jump Strong Punch]
type = ChangeState
value = 40611
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000
triggerall = command = "y"
triggerall = var(3) = 2
triggerall = statetype = A
triggerall = var(19) = [1,15]
trigger1 = ctrl
trigger2 = (stateno = 40600) || (stateno = 40602)
trigger2 = time > 1
trigger3 = (stateno = 40610) || (stateno = 40612)
trigger3 = time > 2
trigger4 = (stateno = 40640) || (stateno = 40642)
trigger4 = time > 3

;連連空中中S MIH
[State -1, Jump Strong Punch]
type = ChangeState
value = 40612
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000
triggerall = command = "y"
triggerall = var(3) = 2
triggerall = statetype = A
triggerall = var(19) = [26,40]
trigger1 = ctrl
trigger2 = stateno = 40601
trigger2 = time > 1
trigger3 = stateno = 40611
trigger3 = time > 2
trigger4 = stateno = 40641
trigger4 = time > 3
;---------------------------------------------------------------------------
;発現空中強
[State -1, Stand Strong Punch]
type = ChangeState
value = 30670
TriggerAll = Var(59)<=0
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = NumHelper(2) = 0 
triggerall = NumHelper(4321) = 0 
triggerall = var(49) != 10000
triggerall = numhelper(1001) = 0
triggerall = command = "z+a"
triggerall = statetype = A
triggerall = var(3) = 1
trigger1 = ctrl

;発現空中強
[State -1, Stand Strong Punch]
type = ChangeState
value = 10670
TriggerAll = Var(59)<=0
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = NumHelper(2) = 0 
triggerall = NumHelper(4321) = 0 
triggerall = var(49) != 10000
triggerall = numhelper(1001) = 0
triggerall = command = "z+a"
triggerall = statetype = A
triggerall = var(3) = 0
trigger1 = ctrl

;空中強 WS
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
TriggerAll = Var(59)<=0
triggerall = NumHelper(1900) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = var(49) != 10000
triggerall = command = "b"
triggerall = var(3) = 0
trigger1 = statetype = A
trigger1 = ctrl

;空中強 CM
[State -1, Jump Strong Kick]
type = ChangeState
value = 645
TriggerAll = Var(59)<=0
triggerall = NumHelper(1900) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = var(49) != 10000
triggerall = command = "b"
triggerall = var(3) = 1
trigger1 = statetype = A
trigger1 = ctrl

;空中強 MIH
[State -1, Jump Strong Kick]
type = ChangeState
value = 647
TriggerAll = Var(59)<=0
triggerall = var(49) != 10000
triggerall = command = "b"
triggerall = var(3) = 2
trigger1 = statetype = A
trigger1 = ctrl

;空中中
[State -1, Jump Strong Kick]
type = ChangeState
value = 610+(command = "holdfwd")*5
TriggerAll = Var(59)<=0
triggerall = NumHelper(1900) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 1 
triggerall = var(49) != 10000
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;空中中
[State -1, Jump Strong Kick]
type = ChangeState
value = 610+(command = "holdfwd")*5
TriggerAll = Var(59)<=0
triggerall = NumHelper(1900) = 0 
triggerall = numhelper(1001) = 1
triggerall = NumHelper(2) = 0 
triggerall = var(49) != 10000
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;空中中
[State -1, Jump Strong Kick]
type = ChangeState
value = 610+(command = "holdfwd")*5
TriggerAll = Var(59)<=0
triggerall = NumHelper(1900) = 1 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = var(49) != 10000
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;空中強S WS
[State -1, Jump Strong Punch]
type = ChangeState
value = 10640
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000
triggerall = command = "b"
triggerall = numhelper(4321) = 0
triggerall = var(3) = 0
trigger1 = statetype = A
trigger1 = ctrl

;空中強S CM
[State -1, Jump Strong Punch]
type = ChangeState
value = 30641
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000
triggerall = command = "b"
triggerall = numhelper(4321) = 0
triggerall = var(3) = 1
triggerall = !(stateno = 110 && time < 8)
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = var(29) = 1
trigger2 = stateno = 105 && !(anim = 30107)

;空中強S MIH
[State -1, Jump Strong Punch]
type = ChangeState
value = 40640
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000
triggerall = command = "b"
triggerall = var(3) = 2
triggerall = statetype = A
triggerall = var(19) = 0
trigger1 = ctrl

;連空中強S MIH
[State -1, Jump Strong Punch]
type = ChangeState
value = 40641
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000
triggerall = command = "b"
triggerall = var(3) = 2
triggerall = statetype = A
triggerall = var(19) = [1,15]
trigger1 = ctrl
trigger2 = (stateno = 40600) || (stateno = 40602)
trigger2 = time > 1
trigger3 = (stateno = 40610) || (stateno = 40612)
trigger3 = time > 2
trigger4 = (stateno = 40640) || (stateno = 40642)
trigger4 = time > 3

;連連空中強S MIH
[State -1, Jump Strong Punch]
type = ChangeState
value = 40642
TriggerAll = Var(59)<=0
triggerall = var(49) = 10000
triggerall = command = "b"
triggerall = var(3) = 2
triggerall = statetype = A
triggerall = var(19) = [26,40]
trigger1 = ctrl
trigger2 = stateno = 40601
trigger2 = time > 1
trigger3 = stateno = 40611
trigger3 = time > 2
trigger4 = stateno = 40641
trigger4 = time > 3

;===========================================================================
;スタンド発現（立ち）
[State -1, Taunt]
type = ChangeState
value = 10820
TriggerAll = Var(59)<=0
triggerall = NumHelper(1600) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = NumHelper(4321) = 0 
triggerall = !var(49)
;triggerall = var(7) = 0;スタンド発現可のとき
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = statetype = S;!= A    ;S, C, A(立ち、しゃがみ、空中
triggerall = stateno != 16010
trigger1 = NumHelper(2) = 0 ;SFがでてないとき
trigger1 = ctrl
ignorehitpause = 0

;スタンド発現（しゃがみ）
[State -1, Taunt]
type = ChangeState
value = 16001
TriggerAll = Var(59)<=0
triggerall = NumHelper(1600) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = NumHelper(4321) = 0 
triggerall = !var(49)
;triggerall = var(7) = 0
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = statetype = C
triggerall = stateno != 16010
trigger1 = ctrl
ignorehitpause = 0

;スタンド発現（空中）
[State -1, Taunt]
type = ChangeState
value = 16002
TriggerAll = Var(59)<=0
triggerall = NumHelper(1600) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = NumHelper(4321) = 0 
triggerall = !var(49)
triggerall = stateno != 31040
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl
ignorehitpause = 0
;---------------------------------------------------------------------------

;スタンド解除（立ち）
[State -1, Taunt]
type = ChangeState
value = 830
TriggerAll = Var(59)<=0
triggerall = var(44) = 0
triggerall = var(3) != 2
triggerall = var(49) = 10000
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = statetype = S
triggerall = helper(1),numexplod(543221) = 0
triggerall = helper(1),movetype != H
trigger1 = helper(1),stateno != 54321
trigger1 = ctrl
ignorehitpause = 0

;スタンド解除（しゃがみ）
[State -1, Taunt]
type = ChangeState
value = 16004
TriggerAll = Var(59)<=0
triggerall = var(44) = 0
triggerall = var(3) != 2
triggerall = var(49) = 10000
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = statetype = C
triggerall = helper(1),numexplod(543221) = 0
triggerall = helper(1),movetype != H
trigger1 = helper(1),stateno != 54321
trigger1 = ctrl
ignorehitpause = 0

;スタンド解除（空中）
[State -1, Taunt]
type = ChangeState
value = 16005
TriggerAll = Var(59)<=0
triggerall = var(44) = 0
triggerall = var(3) != 2
triggerall = var(49) = 10000
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = statetype = A
triggerall = helper(1),numexplod(543221) = 0
triggerall = helper(1),movetype != H
triggerall = stateno != 31040
trigger1 = helper(1),stateno != 54321
trigger1 = ctrl
ignorehitpause = 0

;-------------------------------------先行入力-----------------------------------------
[State 200, 先行入力]
type = VarSet
TriggerAll = Var(59)<=0
triggerall = var(3) = 1
triggerall = time > 0
triggerall = command = "jump"
triggerall = var(2) = 0
triggerall = 1 || var(0) := (var(0)|8)
trigger1 = stateno = 200
trigger2 = stateno = 210
trigger3 = stateno = 215
trigger4 = stateno = 242
trigger5 = stateno = 400
trigger6 = stateno = 412
trigger7 = stateno = 445
var(2) = 40

[State 200, 先行入力]
type = VarSet
TriggerAll = Var(59)<=0
triggerall = command != "C-MOON"
triggerall = var(2) = 0
triggerall = var(3) = 1
triggerall = time > 4
triggerall = command = "nekko_b"
triggerall = command != "holddown"
trigger1 = stateno = 210
trigger2 = stateno = 215
trigger3 = stateno = 242
trigger3 = time > 8
trigger4 = stateno = 412
trigger4 = time > 6
var(2) = 31130

[State 200, 先行入力]
type = VarSet
TriggerAll = Var(59)<=0
triggerall = command != "C-MOON"
triggerall = var(3) = 1
triggerall = time > 4
triggerall = command = "nekko_y"
triggerall = command != "holddown"
triggerall = var(2) = 0
trigger1 = stateno = 210
trigger2 = stateno = 215
trigger3 = stateno = 242
trigger3 = time > 8
trigger4 = stateno = 412
trigger4 = time > 6
var(2) = 31120

[State 200, 先行入力]
type = VarSet
TriggerAll = Var(59)<=0
triggerall = command != "C-MOON"
triggerall = var(3) = 1
triggerall = time > 4
triggerall = command = "nekko_x"
triggerall = command != "holddown"
triggerall = var(2) = 0
trigger1 = stateno = 210
trigger2 = stateno = 215
trigger3 = stateno = 242
trigger3 = time > 8
trigger4 = stateno = 412
trigger4 = time > 6
var(2) = 31110

[State 200, 先行入力]
type = VarSet
TriggerAll = Var(59)<=0
triggerall = command != "C-MOON"
triggerall = stateno = 30240
trigger1 = time > 0
trigger1 = (command = "QCF_x") || (command = "QCF_y")
trigger1 = var(2) = 0
var(2) = 32000

[State 200, 先行入力]
type = VarSet
TriggerAll = Var(59)<=0
triggerall = command != "C-MOON"
triggerall = stateno = 30240
trigger1 = time > 0
trigger1 = command = "QCB_b"
trigger1 = var(2) = 0
var(2) = 32010

[State 200, 先行入力]
type = VarSet
TriggerAll = Var(59)<=0
triggerall = command != "C-MOON"
triggerall = stateno = 30240
trigger1 = time > 0
trigger1 = (command = "nekko_x") || (command = "nekko_y") || (command = "nekko_b")
trigger1 = var(2) = 0
var(2) = 32100

[State 200, 先行入力]
type = VarSet
TriggerAll = Var(59)<=0
triggerall = command != "C-MOON"
triggerall = stateno = 30240
triggerall = power >= 1000
trigger1 = time > 0
trigger1 = command = "TripleKFPalm"
trigger1 = var(2) = 0
var(2) = 33000

[State 200, 先行入力]
type = VarSet
TriggerAll = Var(59)<=0
triggerall = command != "C-MOON"
triggerall = command = "FF"
triggerall = var(2) = 0
trigger1 = stateno = 31100
trigger1 = time > 21
trigger2 = stateno = 31110
trigger2 = time > 50
trigger3 = stateno = 31120
trigger3 = time > 59
trigger4 = stateno = 31130
trigger4 = time > 79
var(2) = 100

[State 200, 先行入力]
type = VarSet
TriggerAll = Var(59)<=0
triggerall = command != "C-MOON"
triggerall = stateno = 240
trigger1 = time > 0
trigger1 = (command = "お前に命令するッ！") || (command = "お前に命令するッ！！") || (command = "お前に命令するッ！！！")
trigger1 = var(2) = 0
var(2) = 1230

[State 200, 先行入力]
type = VarSet
TriggerAll = Var(59)<=0
triggerall = command != "C-MOON"
triggerall = stateno = 400
trigger1 = time > 0
trigger1 = (command = "henrin_x") || (command = "henrin_y") || (command = "henrin_z")
trigger1 = var(2) = 0
var(2) = 6666

[State 1400, 先行入力]
type = VarSet
TriggerAll = Var(59)<=0
triggerall = command != "C-MOON"
triggerall = stateno = 6666
trigger1 = command = "S出現必殺"
trigger1 = command != "holddown"
var(2) = (var(3) = 0)*11123+(var(3) = 1)*31100
;--------------------------------------------------------------------------------------
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
;Trigger15 = 1 || var(54) := 1;AI即起動スイッチ

V = 59
Value = 1
IgnoreHitPause = 1

;-------------------------------------------------------------------------

;===========================================================================================
;AIサポート用ヘルパー(起動)　他
;===========================================================================================

[state -2];ステージ右端検出
type=Helper
triggerall=!ishelper
trigger1=!numhelper(55001)
helpertype=normal
name="right_edge"
ID=55001
pos=0, 0
postype=right
facing=1
stateno=55001
ownpal=1
supermovetime=99999
pausemovetime=99999

[state -2];ステージ左端検出
type=Helper
triggerall=!ishelper
trigger1=!numhelper(55002)
helpertype=normal
name="left_edge"
ID=55002
pos=0, 0
postype=left
facing=-1
stateno=55002
ownpal=1
supermovetime=99999
pausemovetime=99999

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

[State -1, ];相手のprojもしくはhelperが増えた瞬間ヘルパー呼び出し
type=helper
triggerall = !ishelper
triggerall = !NumHelper(55003)
triggerall = NumHelper(55001)
triggerall = NumEnemy
trigger1 = helper(55001),var(2) <= 0 ; 以下,監視で代入しといた値より相手のprojやhelperが大きい時
trigger1 = Enemy(0),numproj > 0 ;
trigger2 = helper(55001),var(3)< Enemy(0),numhelper ;
trigger3 = helper(55001),var(4) <= 0 ;
trigger3 = Enemy(numenemy=2),numproj > 0 ;
trigger4 = helper(55001),var(5) < Enemy(numenemy=2),numhelper ;
helpertype=normal
name = "P-H"
stateno = 55003
ID = 55003
pos = 0,9999
keyctrl = 1
pausemovetime = 2147483647
supermovetime = 2147483647
persistent = 0

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

[State -3, 一応]
type=changestate
trigger1 = ishelper(123321)
trigger1 = stateno != 123321
value = 123321

;タッグ用生死判別
[State -3, tag]
type = varset
trigger1 = NumEnemy >= 0
trigger1 = RoundState = 2
var(53) = IfElse((!EnemyNear,Alive && NumEnemy = 2),1,0)

;コンボルートリセット
[State -3, tag]
type = varset
trigger1 = gametime = 0
trigger2 = movetype = H
trigger3 = enemynear(var(53)),movetype != H
trigger3 = var(52) > 22
trigger3 = var(52) <= 99
trigger4 = P2BodyDist x >= 90
trigger4 = var(52) = [13,22]
trigger5 = P2BodyDist x < 0
trigger5 = var(52) = [13,22]
trigger6 = helper(55002),var(31) >= 60
trigger6 = stateno != 100
trigger6 = var(52) = 34
trigger7 = enemynear(var(53)),movetype != H
trigger7 = var(52) >= 105
var(52) = 0

[State -3, AI]
type = varset
trigger1 = numhelper(55002) && helper(55002),var(32) = 1
trigger1 = roundstate = 2
var(57) = 0+(life <= 950)+(life <= 750)+(life <= 500)

[State -3, tag]
type = DisplayToClipboard
trigger1 = 1
text = "%d";var(59) = %d var(57) = %d helper(55002),var(52) = %d\npower = %d,
params = var(53);var(59),var(57),var(52),power,

[State -3, tag]
type = null;DisplayToClipboard
trigger1 = 1
text = "var = %d,%d,%d,%d,%d"
params = var(19),helper(235711),var(2),helper(55002),var(15),helper(55002),var(8),helper(55002),var(9)
;---------------------------------------------------------------------------
;11 メイド・イン・ヘブン
;---------------------------------------------------------------------------

;「二手」遅れたようだな・・・・・・ S
[State -1, Stand Strong Punch]
type = ChangeState
value = 47000
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = power >= 1000
triggerall = var(3) = 2
triggerall = var(57) = 3
triggerall = var(20) = 0
triggerall = P2BodyDist X <= 75+enemynear(var(53)),vel x
triggerall = P2BodyDist X > -20
triggerall = P2Statetype != A
triggerall = enemynear(var(53)),vel x > 0
triggerall = enemynear(var(53)),time > 0
triggerall = P2MoveType != H
triggerall = random <= 14
trigger1 = ctrl
trigger2 = stateno = [40200,40699]

;///コンボ

;飛んでくる・・・・・・ s
[State -1, Stand Strong Punch]
type = ChangeState
value = 43000
TriggerAll = Var(59)=1 && RoundState = 2
TriggerAll = movehit
TriggerAll = var(52) = 105
TriggerAll = helper(235711),var(0) = 4
TriggerAll = helper(235711),var(1) = 4
TriggerAll = helper(235711),var(2) = 4
TriggerAll = helper(235711),var(3) = 4
TriggerAll = helper(235711),var(4) = 4
TriggerAll = helper(235711),var(5) = 4
triggerall = var(49) = 10000
triggerall = var(3) = 2
trigger1 = ctrl
trigger1 = 1 || var(52) := 100
trigger2 = stateno = [40200,40699]
trigger2 = stateno != 40250
trigger2 = 1 || var(52) := 100
trigger3 = stateno = [40000,40099]
trigger3 = 1 || var(52) := 100

;立ち弱　s MIH
[State -1, Stand Strong Punch]
type = ChangeState
value = 40200
TriggerAll = Var(59)=1 && RoundState = 2
TriggerAll = movehit = 3
TriggerAll = helper(235711),var(0) = 4
triggerall = var(49) = 10000
triggerall = var(57) = 0
triggerall = var(3) = 2
triggerall = statetype != A
triggerall = var(19) = 0
trigger1 = (ctrl) || (stateno = [100,105])

;連立ち弱　s MIH
[State -1, Stand Strong Punch]
type = ChangeState
value = 40201
TriggerAll = Var(59)=1 && RoundState = 2
TriggerAll = movehit = 3
TriggerAll = helper(235711),var(0) = 4
triggerall = var(49) = 10000
triggerall = var(57) = 0
triggerall = var(3) = 2
triggerall = statetype != A
triggerall = var(19) = [1,15]
trigger1 = ctrl
trigger2 = (stateno = 40200) || (stateno = 40202)
trigger2 = time > 1
trigger3 = (stateno = 40210) || (stateno = 40212)
trigger3 = time > 2
trigger4 = (stateno = 40240) || (stateno = 40242)
trigger4 = time > 3
trigger5 = (stateno = 40400) || (stateno = 40402)
trigger5 = time > 1
trigger6 = (stateno = 40410) || (stateno = 40412)
trigger6 = time > 2
trigger7 = (stateno = 40440) || (stateno = 40442)
trigger8 = time > 3

;連連立ち弱　s MIH
[State -1, Stand Strong Punch]
type = ChangeState
value = 40202
TriggerAll = Var(59)=1 && RoundState = 2
TriggerAll = movehit = 3
TriggerAll = helper(235711),var(0) = 4
triggerall = var(49) = 10000
triggerall = var(57) = 0
triggerall = var(3) = 2
triggerall = statetype != A
triggerall = var(19) = [26,40]
trigger1 = ctrl
trigger2 = stateno = 40201
trigger2 = time > 1
trigger3 = stateno = 40211
trigger3 = time > 2
trigger4 = stateno = 40241
trigger4 = time > 3
trigger5 = stateno = 40401
trigger5 = time > 1
trigger6 = stateno = 40411
trigger6 = time > 2
trigger7 = stateno = 40441
trigger7 = time > 3

;立ち弱　s MIH
[State -1, Stand Strong Punch]
type = ChangeState
value = 40200
TriggerAll = Var(59)=1 && RoundState = 2
TriggerAll = movehit = 3
TriggerAll = var(52) = 105
TriggerAll = helper(235711),var(0) <= 3
triggerall = var(49) = 10000
triggerall = var(3) = 2
triggerall = statetype != A
triggerall = var(19) = 0
trigger1 = (ctrl) || (stateno = [100,105])

;連立ち弱　s MIH
[State -1, Stand Strong Punch]
type = ChangeState
value = 40201
TriggerAll = Var(59)=1 && RoundState = 2
TriggerAll = movehit = 3
TriggerAll = var(52) = 105
TriggerAll = helper(235711),var(0) <= 3
triggerall = var(49) = 10000
triggerall = var(3) = 2
triggerall = statetype != A
triggerall = var(19) = [1,15]
trigger1 = ctrl
trigger2 = (stateno = 40200) || (stateno = 40202)
trigger2 = time > 1
trigger3 = (stateno = 40210) || (stateno = 40212)
trigger3 = time > 2
trigger4 = (stateno = 40240) || (stateno = 40242)
trigger4 = time > 3
trigger5 = (stateno = 40400) || (stateno = 40402)
trigger5 = time > 1
trigger6 = (stateno = 40410) || (stateno = 40412)
trigger6 = time > 2
trigger7 = (stateno = 40440) || (stateno = 40442)
trigger8 = time > 3

;連連立ち弱　s MIH
[State -1, Stand Strong Punch]
type = ChangeState
value = 40202
TriggerAll = Var(59)=1 && RoundState = 2
TriggerAll = movehit = 3
TriggerAll = var(52) = 105
TriggerAll = helper(235711),var(0) <= 3
triggerall = var(49) = 10000
triggerall = var(3) = 2
triggerall = statetype != A
triggerall = var(19) = [26,40]
trigger1 = ctrl
trigger2 = stateno = 40201
trigger2 = time > 1
trigger3 = stateno = 40211
trigger3 = time > 2
trigger4 = stateno = 40241
trigger4 = time > 3
trigger5 = stateno = 40401
trigger5 = time > 1
trigger6 = stateno = 40411
trigger6 = time > 2
trigger7 = stateno = 40441
trigger7 = time > 3

;立ち中　s MIH
[State -1, Stand Strong Punch]
type = ChangeState
value = 40210
TriggerAll = Var(59)=1 && RoundState = 2
TriggerAll = movehit = 3
TriggerAll = var(52) = 105
TriggerAll = helper(235711),var(1) = 4
triggerall = var(49) = 10000
triggerall = var(57) = 1
triggerall = var(3) = 2
triggerall = statetype != A
triggerall = var(19) = 0
triggerall = random <= 1000-((3-var(57)) >= 3)*1000
trigger1 = (ctrl) || (stateno = [100,105])

;連立ち中　s MIH
[State -1, Stand Strong Punch]
type = ChangeState
value = 40211
TriggerAll = Var(59)=1 && RoundState = 2
TriggerAll = movehit = 3
TriggerAll = var(52) = 105
TriggerAll = helper(235711),var(1) = 4
triggerall = var(49) = 10000
triggerall = var(57) = 1
triggerall = var(3) = 2
triggerall = statetype != A
triggerall = var(19) = [1,15]
triggerall = random <= 1000-((3-var(57)) >= 3)*1000
trigger1 = ctrl
trigger2 = (stateno = 40200) || (stateno = 40202)
trigger2 = time > 1
trigger3 = (stateno = 40210) || (stateno = 40212)
trigger3 = time > 2
trigger4 = (stateno = 40240) || (stateno = 40242)
trigger4 = time > 3
trigger5 = (stateno = 40400) || (stateno = 40402)
trigger5 = time > 1
trigger6 = (stateno = 40410) || (stateno = 40412)
trigger6 = time > 2
trigger7 = (stateno = 40440) || (stateno = 40442)
trigger8 = time > 3

;連連立ち中　s MIH
[State -1, Stand Strong Punch]
type = ChangeState
value = 40212
TriggerAll = Var(59)=1 && RoundState = 2
TriggerAll = movehit = 3
TriggerAll = var(52) = 105
TriggerAll = helper(235711),var(1) = 4
triggerall = var(49) = 10000
triggerall = var(57) = 1
triggerall = var(3) = 2
triggerall = statetype != A
triggerall = var(19) = [26,40]
triggerall = random <= 1000-((3-var(57)) >= 3)*1000
trigger1 = ctrl
trigger2 = stateno = 40201
trigger2 = time > 1
trigger3 = stateno = 40211
trigger3 = time > 2
trigger4 = stateno = 40241
trigger4 = time > 3
trigger5 = stateno = 40401
trigger5 = time > 1
trigger6 = stateno = 40411
trigger6 = time > 2
trigger7 = stateno = 40441
trigger7 = time > 3

;立ち中　s MIH
[State -1, Stand Strong Punch]
type = ChangeState
value = 40210
TriggerAll = Var(59)=1 && RoundState = 2
TriggerAll = movehit = 3
TriggerAll = var(52) = 105
TriggerAll = helper(235711),var(1) <= 3
triggerall = var(49) = 10000
triggerall = var(3) = 2
triggerall = statetype != A
triggerall = var(19) = 0
triggerall = random <= 1000-((3-var(57)) >= 3)*1000
trigger1 = (ctrl) || (stateno = [100,105])

;連立ち中　s MIH
[State -1, Stand Strong Punch]
type = ChangeState
value = 40211
TriggerAll = Var(59)=1 && RoundState = 2
TriggerAll = movehit = 3
TriggerAll = var(52) = 105
TriggerAll = helper(235711),var(1) <= 3
triggerall = var(49) = 10000
triggerall = var(3) = 2
triggerall = statetype != A
triggerall = var(19) = [1,15]
triggerall = random <= 1000-((3-var(57)) >= 3)*1000
trigger1 = ctrl
trigger2 = (stateno = 40200) || (stateno = 40202)
trigger2 = time > 1
trigger3 = (stateno = 40210) || (stateno = 40212)
trigger3 = time > 2
trigger4 = (stateno = 40240) || (stateno = 40242)
trigger4 = time > 3
trigger5 = (stateno = 40400) || (stateno = 40402)
trigger5 = time > 1
trigger6 = (stateno = 40410) || (stateno = 40412)
trigger6 = time > 2
trigger7 = (stateno = 40440) || (stateno = 40442)
trigger8 = time > 3

;連連立ち中　s MIH
[State -1, Stand Strong Punch]
type = ChangeState
value = 40212
TriggerAll = Var(59)=1 && RoundState = 2
TriggerAll = movehit = 3
TriggerAll = var(52) = 105
TriggerAll = helper(235711),var(1) <= 3
triggerall = var(49) = 10000
triggerall = var(3) = 2
triggerall = statetype != A
triggerall = var(19) = [26,40]
triggerall = random <= 1000-((3-var(57)) >= 3)*1000
trigger1 = ctrl
trigger2 = stateno = 40201
trigger2 = time > 1
trigger3 = stateno = 40211
trigger3 = time > 2
trigger4 = stateno = 40241
trigger4 = time > 3
trigger5 = stateno = 40401
trigger5 = time > 1
trigger6 = stateno = 40411
trigger6 = time > 2
trigger7 = stateno = 40441
trigger7 = time > 3

;立ち強　s MIH
[State -1, Stand Strong Punch]
type = ChangeState
value = 40240
TriggerAll = Var(59)=1 && RoundState = 2
TriggerAll = movehit = 3
TriggerAll = var(52) = 105
TriggerAll = helper(235711),var(2) <= 3
triggerall = var(49) = 10000
triggerall = var(3) = 2
triggerall = statetype != A
triggerall = var(19) = 0
triggerall = random <= 1000-((3-var(57)) >= 2)*1000
trigger1 = (ctrl) || (stateno = [100,105])

;連立ち強　s MIH
[State -1, Stand Strong Punch]
type = ChangeState
value = 40241
TriggerAll = Var(59)=1 && RoundState = 2
TriggerAll = movehit = 3
TriggerAll = var(52) = 105
TriggerAll = helper(235711),var(2) <= 3
triggerall = var(49) = 10000
triggerall = var(3) = 2
triggerall = statetype != A
triggerall = var(19) = [1,15]
triggerall = random <= 1000-((3-var(57)) >= 2)*1000
trigger1 = ctrl
trigger2 = (stateno = 40200) || (stateno = 40202)
trigger2 = time > 1
trigger3 = (stateno = 40210) || (stateno = 40212)
trigger3 = time > 2
trigger4 = (stateno = 40240) || (stateno = 40242)
trigger4 = time > 3
trigger5 = (stateno = 40400) || (stateno = 40402)
trigger5 = time > 1
trigger6 = (stateno = 40410) || (stateno = 40412)
trigger6 = time > 2
trigger7 = (stateno = 40440) || (stateno = 40442)
trigger8 = time > 3

;連連立ち強　s MIH
[State -1, Stand Strong Punch]
type = ChangeState
value = 40242
TriggerAll = Var(59)=1 && RoundState = 2
TriggerAll = movehit = 3
TriggerAll = var(52) = 105
TriggerAll = helper(235711),var(2) <= 3
triggerall = var(49) = 10000
triggerall = var(3) = 2
triggerall = statetype != A
triggerall = var(19) = [26,40]
triggerall = random <= 1000-((3-var(57)) >= 2)*1000
trigger1 = ctrl
trigger2 = stateno = 40201
trigger2 = time > 1
trigger3 = stateno = 40211
trigger3 = time > 2
trigger4 = stateno = 40241
trigger4 = time > 3
trigger5 = stateno = 40401
trigger5 = time > 1
trigger6 = stateno = 40411
trigger6 = time > 2
trigger7 = stateno = 40441
trigger7 = time > 3

;しゃがみ弱　s MIH
[State -1, Stand Strong Punch]
type = ChangeState
value = 40400
TriggerAll = Var(59)=1 && RoundState = 2
TriggerAll = movehit = 3
TriggerAll = var(52) = 105
TriggerAll = helper(235711),var(3) <= 3
triggerall = var(49) = 10000
triggerall = var(3) = 2
triggerall = var(19) = 0
triggerall = statetype != A
triggerall = random <= 1000-((3-var(57)) >= 2)*1000
trigger1 = (ctrl) || (stateno = [100,105])

;連しゃがみ弱　s MIH
[State -1, Stand Strong Punch]
type = ChangeState
value = 40401
TriggerAll = Var(59)=1 && RoundState = 2
TriggerAll = movehit = 3
TriggerAll = var(52) = 105
TriggerAll = helper(235711),var(3) <= 3
triggerall = var(49) = 10000
triggerall = var(3) = 2
triggerall = var(19) = [1,15]
triggerall = statetype != A
triggerall = random <= 1000-((3-var(57)) >= 2)*1000
trigger1 = ctrl
trigger2 = (stateno = 40200) || (stateno = 40202)
trigger2 = time > 1
trigger3 = (stateno = 40210) || (stateno = 40212)
trigger3 = time > 2
trigger4 = (stateno = 40240) || (stateno = 40242)
trigger4 = time > 3
trigger5 = (stateno = 40400) || (stateno = 40402)
trigger5 = time > 1
trigger6 = (stateno = 40410) || (stateno = 40412)
trigger6 = time > 2
trigger7 = (stateno = 40440) || (stateno = 40442)
trigger8 = time > 3

;連連しゃがみ弱　s MIH
[State -1, Stand Strong Punch]
type = ChangeState
value = 40402
TriggerAll = Var(59)=1 && RoundState = 2
TriggerAll = movehit = 3
TriggerAll = var(52) = 105
TriggerAll = helper(235711),var(3) <= 3
triggerall = var(49) = 10000
triggerall = var(3) = 2
triggerall = var(19) = [26,40]
triggerall = statetype != A
triggerall = random <= 1000-((3-var(57)) >= 2)*1000
trigger1 = ctrl
trigger2 = stateno = 40201
trigger2 = time > 1
trigger3 = stateno = 40211
trigger3 = time > 2
trigger4 = stateno = 40241
trigger4 = time > 3
trigger5 = stateno = 40401
trigger5 = time > 1
trigger6 = stateno = 40411
trigger6 = time > 2
trigger7 = stateno = 40441
trigger7 = time > 3

;しゃがみ中S MIH
[State -1, Crouching Strong Punch]
type = ChangeState
value = 40410
TriggerAll = Var(59)=1 && RoundState = 2
TriggerAll = movehit = 3
TriggerAll = var(52) = 105
TriggerAll = helper(235711),var(4) <= 3
triggerall = var(49) = 10000
triggerall = var(3) = 2
triggerall = statetype != A
triggerall = var(19) = 0
triggerall = random <= 1000-((3-var(57)) >= 2)*1000
trigger1 = (ctrl) || (stateno = [100,105])

;連しゃがみ中S MIH
[State -1, Crouching Strong Punch]
type = ChangeState
value = 40411
TriggerAll = Var(59)=1 && RoundState = 2
TriggerAll = movehit = 3
TriggerAll = var(52) = 105
TriggerAll = helper(235711),var(4) <= 3
triggerall = var(49) = 10000
triggerall = var(3) = 2
triggerall = statetype != A
triggerall = var(19) = [1,15]
triggerall = random <= 1000-((3-var(57)) >= 2)*1000
trigger1 = ctrl
trigger2 = (stateno = 40200) || (stateno = 40202)
trigger2 = time > 1
trigger3 = (stateno = 40210) || (stateno = 40212)
trigger3 = time > 2
trigger4 = (stateno = 40240) || (stateno = 40242)
trigger4 = time > 3
trigger5 = (stateno = 40400) || (stateno = 40402)
trigger5 = time > 1
trigger6 = (stateno = 40410) || (stateno = 40412)
trigger6 = time > 2
trigger7 = (stateno = 40440) || (stateno = 40442)
trigger8 = time > 3

;連連しゃがみ中S MIH
[State -1, Crouching Strong Punch]
type = ChangeState
value = 40412
TriggerAll = Var(59)=1 && RoundState = 2
TriggerAll = movehit = 3
TriggerAll = var(52) = 105
TriggerAll = helper(235711),var(4) <= 3
triggerall = var(49) = 10000
triggerall = var(3) = 2
triggerall = statetype != A
triggerall = var(19) = [26,40]
triggerall = random <= 1000-((3-var(57)) >= 2)*1000
trigger1 = ctrl
trigger2 = stateno = 40201
trigger2 = time > 1
trigger3 = stateno = 40211
trigger3 = time > 2
trigger4 = stateno = 40241
trigger4 = time > 3
trigger5 = stateno = 40401
trigger5 = time > 1
trigger6 = stateno = 40411
trigger6 = time > 2
trigger7 = stateno = 40441
trigger7 = time > 3

;しゃがみ強S MIH
[State -1, Crouching Strong Punch]
type = ChangeState
value = 40440
TriggerAll = Var(59)=1 && RoundState = 2
TriggerAll = movehit = 3
TriggerAll = var(52) = 105
TriggerAll = helper(235711),var(5) <= 3
triggerall = var(49) = 10000
triggerall = var(3) = 2
triggerall = statetype != A
triggerall = var(19) = 0
triggerall = random <= 1000-((3-var(57)) >= 2)*1000
trigger1 = (ctrl) || (stateno = [100,105])

;連しゃがみ強S MIH
[State -1, Crouching Strong Punch]
type = ChangeState
value = 40441
TriggerAll = Var(59)=1 && RoundState = 2
TriggerAll = movehit = 3
TriggerAll = var(52) = 105
TriggerAll = helper(235711),var(5) <= 3
triggerall = var(49) = 10000
triggerall = var(3) = 2
triggerall = statetype != A
triggerall = var(19) = [1,15]
triggerall = random <= 1000-((3-var(57)) >= 2)*1000
trigger1 = ctrl
trigger2 = (stateno = 40200) || (stateno = 40202)
trigger2 = time > 1
trigger3 = (stateno = 40210) || (stateno = 40212)
trigger3 = time > 2
trigger4 = (stateno = 40240) || (stateno = 40242)
trigger4 = time > 3
trigger5 = (stateno = 40400) || (stateno = 40402)
trigger5 = time > 1
trigger6 = (stateno = 40410) || (stateno = 40412)
trigger6 = time > 2
trigger7 = (stateno = 40440) || (stateno = 40442)
trigger8 = time > 3

;連連しゃがみ強S MIH
[State -1, Crouching Strong Punch]
type = ChangeState
value = 40442
TriggerAll = Var(59)=1 && RoundState = 2
TriggerAll = movehit = 3
TriggerAll = var(52) = 105
TriggerAll = helper(235711),var(5) <= 3
triggerall = var(49) = 10000
triggerall = var(3) = 2
triggerall = statetype != A
triggerall = var(19) = [26,40]
triggerall = random <= 1000-((3-var(57)) >= 2)*1000
trigger1 = ctrl
trigger2 = stateno = 40201
trigger2 = time > 1
trigger3 = stateno = 40211
trigger3 = time > 2
trigger4 = stateno = 40241
trigger4 = time > 3
trigger5 = stateno = 40401
trigger5 = time > 1
trigger6 = stateno = 40411
trigger6 = time > 2
trigger7 = stateno = 40441
trigger7 = time > 3

;///始動攻撃、飛び道具
[State -1, var]
type = varset
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) = 10000
triggerall = var(3) = 2
triggerall = enemynear(var(53)),movetype = H
triggerall = enemynear(var(53)),statetype != A
triggerall = random <= 1000-((3-var(57)) >= 2)*1000
trigger1 = (stateno = [40200,40699]) && movehit
var(52) = 105

[State -1, 立弱]
type = ChangeState
value = 40202
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) = 10000
triggerall = var(3) = 2
triggerall = statetype != A
triggerall = var(19) = [26,40]
triggerall = var(52) = 104
;triggerall = random <= 1000
trigger1 = stateno = 40201 && time >= 3
trigger1 = 1 || var(52) := 105

[State -1, 立弱];2
type = ChangeState
value = 40201
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) = 10000
triggerall = var(3) = 2
triggerall = statetype != A
triggerall = var(19) = [1,15]
triggerall = var(52) = 104
;triggerall = random <= 1000
trigger1 = (stateno = 40200) && time >= 3

[State -1, 立弱];1
type = ChangeState
value = 40200
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) = 10000
triggerall = var(3) = 2
triggerall = var(52) <= 101
triggerall = statetype != A
triggerall = var(19) = 0
;triggerall = random <= 1000
trigger1 = enemynear(var(53)),movetype = H
trigger1 = enemynear(var(53)),statetype != A
trigger1 = P2BodyDist x >= 100
trigger1 = (ctrl) || (stateno = [100,105])
trigger1 = 1 || var(52) := 104
trigger2 = enemynear(var(53)),movetype != H
trigger2 = enemynear(var(53)),statetype != A
trigger2 = P2BodyDist x <= 60
trigger2 = random <= 9+(var(52) = 1)*60
trigger2 = (ctrl) || (stateno = [100,105])
trigger2 = 1 || var(52) := 104

[State -1, タンデム];因果を未来へもっていくことはできないッ
type = ChangeState
value = 3900+(var(3) = 2)*4000
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) = 10000
triggerall = var(3) = 2
triggerall = var(43) = 0  
triggerall = numhelper(4657) = 0
triggerall = numhelper(3910) = 0  || (var(3) != 2)
triggerall = power >= 1000
triggerall = var(49) = 10000  ;スタンドonの時
triggerall = NumHelper(2) = 0 
triggerall = NumHelper(1001) = 0 
triggerall = helper(1),numexplod(543221) = 0
triggerall = helper(1),movetype != H
triggerall = enemynear(var(53)),statetype != A
triggerall = enemynear(var(53)),statetype != L
triggerall = enemynear(var(53)),movetype = H || enemynear(var(53)),ctrl = 0
triggerall = statetype != A
triggerall = random <= 1000-((3-var(57)) >= 1)*997+(power/(1000*(3-var(57))+((3-var(57)) = 0)))-((3-var(57)) >= 2)*9999
trigger1 = ctrl
trigger2 = (stateno = [40200,40699]) && movehit

[State -1, 飛んでくる];木の弾力！
type = ChangeState
value = 43000
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) = 10000
triggerall = var(3) = 2
TriggerAll = var(52) = 103
trigger1 = stateno = 50 && time >= 12

[State -1, ジャンプ];なに・・・まさか・・・
type = ChangeState
value = 70
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) = 10000
triggerall = var(3) = 2
triggerall = random <= 1000-(3-var(57))*330
triggerall = statetype != A
trigger1 = enemynear(var(53)),statetype = A
trigger1 = enemynear(var(53)),vel y < 0
trigger1 = random <= 99
trigger1 = p2bodydist X >= 35
trigger1 = ctrl
trigger1 = (numhelper(235711) = 0)  ||  helper(235711),var(10) = 0
trigger1 = 1 || var(52) := 103

[State -1, 『運命』はここで終わりだッ！];やつはどこだ？
type = ChangeState
value = 42000
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) = 10000
triggerall = var(3) = 2
triggerall = random <= 1000-(3-var(57))*310
trigger1 = enemynear(var(53)),statetype != A
trigger1 = enemynear(var(53)),statetype != L
trigger1 = random <= 99
trigger1 = p2bodydist X >= 35
trigger1 = ctrl

[State -1, 投げ];からの投げ
type = ChangeState
value = 800+(random <= 749)*(40050 - 800)
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) = 10000
triggerall = statetype != A
triggerall = ctrl
triggerall = stateno != 100
triggerall = var(3) = 2
trigger1 = var(57) >= 2
trigger1 = p2bodydist X < 35
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger1 = 1 || var(52) := 100

[State -1, 時は加速する];いつの間に目の前にッ！
type = ChangeState
value = 40000+(random <= 749)*50
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) = 10000
triggerall = var(3) = 2
triggerall = statetype != A
triggerall = random <= 1000-(var(57) <= 1)*1000
trigger1 = ctrl
trigger1 = enemynear(var(53)),movetype != H
trigger1 = enemynear(var(53)),statetype != A
trigger1 = enemynear(var(53)),statetype != L
trigger1 = random <= 10
trigger1 = 1 || var(52) := 102

[State -1, ナイフがッ！];飛び道具
type = ChangeState
value = 44000
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) = 10000
triggerall = var(3) = 2
triggerall = random <= 1000-(3-var(57))*300
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = P2BodyDist x >= 150
trigger1 = random <= 20

;///Sonになろう
[State -1, スタンド発現];からのSon
type = ChangeState
value = 16002
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = NumHelper(1600) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = NumHelper(4321) = 0 
triggerall = !var(49)
triggerall = stateno != 31040
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = var(3) = 2
trigger1 = ctrl
ignorehitpause = 0

[State -1, ジャンプ];後ろジャンプ逃げ
type = ChangeState
value = 70
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = !var(49)
triggerall = statetype != A
triggerall = var(3) = 2
trigger1 = ctrl
trigger1 = P2BodyDist x = [(enemynear(var(53)),movetype = A)*70,200)
trigger1 = 1 || var(52) := 101
ignorehitpause = 0

[State -1, スタンド発現];遠かったら
type = ChangeState
value = 10820
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = NumHelper(1600) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = NumHelper(4321) = 0 
triggerall = !var(49)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = stateno != 16010
triggerall = var(3) = 2
trigger1 = NumHelper(2) = 0 ;SFがでてないとき
trigger1 = ctrl
trigger1 = P2BodyDist x >= 200
trigger1 = !(numhelper(55003) && helper(55003),var(0) = 1)
ignorehitpause = 0
;///
[State -1, 前ダ];さすがに遠いので前ダ
type = ChangeState
value = 100
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = Statetype != A
triggerall = ctrl
TriggerAll = !(numhelper(55003) && helper(55003),var(0) = 1)
triggerall = enemynear(var(53)),movetype != A
triggerall = (var(52) = 100) || (var(52) <= 5)
triggerall = enemynear(var(53)),vel x < enemynear(var(53)),const(velocity.run.fwd.x)
triggerall = helper(55002),var(18) != 1
trigger1 = P2BodyDist X > 200+(var(49) = 10000)*20
trigger1 = var(3) = 2
trigger1 = 1 || var(52) := 4

[State -1, 歩き];遠ければ前に移動
type = ChangeState
value = 21
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = (var(52) = 100) || (var(52) <= 5)
trigger1 = Statetype != A
trigger1 = var(3) = 2
trigger1 = ctrl
trigger1 = P2BodyDist X > 125+(var(49) = 10000)*20
trigger1 = 1 || var(52) := 1

[State -1, 歩き];バクダからそのまま後退
type = ChangeState
value = 21
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = Statetype != A
triggerall = ctrl
triggerall = (var(52) = 100) || (var(52) <= 5)
trigger1 = var(3) = 2
Trigger1 = var(52) = 3
trigger1 = P2BodyDist X <= 170+(var(49) = 10000)*20
trigger1 = 1 || var(52) := 3

[State -1, 歩き];遠ければ前に移動
type = ChangeState
value = 21
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = ctrl
triggerall = (var(52) = 100) || (var(52) <= 5)
trigger1 = Statetype != A
trigger1 = var(3) = 2
trigger1 = 1 || var(52) := 1

[State -1, 時は加速する];くらい逃げ
type = ChangeState
value = 40050-(helper(55001),var(1) <= 150)*10
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) = 10000
triggerall = var(3) = 2
triggerall = random <= 1000-((3-var(57)) = 1)*950-((3-var(57)) >= 2)*998
trigger1 = movetype = H
trigger1 = random <= 699

[State -1, var];MIHフラグ　
type = VarSet
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(3) = 2
trigger1 = var(52) < 100
trigger1 = var(52) != 1
trigger1 = var(52) != 3
trigger1 = var(52) != 4
var(52) = 100
;---------------------------------------------------------------------------
;4 開幕行動
;---------------------------------------------------------------------------

[State -1, 前立中];攻め　
type = ChangeState
value = 215
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) != 10000
triggerall = statetype != A
trigger1 = ctrl
trigger1 = var(54) = 1
trigger1 = random < 333
trigger1 = 1 || var(54) := 0

[State -1, 前ダ];突進　
type = ChangeState
value = 100
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) != 10000
triggerall = statetype != A
trigger1 = ctrl
trigger1 = var(54) = 1
trigger1 = random < 333
trigger1 = 1 || var(54) := 0
trigger1 = 1 || var(52) := 7

[State -1, 後ろ歩き];ガード警戒　
type = ChangeState
value = 21
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = statetype != A
trigger1 = ctrl
trigger1 = var(54) = 1
trigger1 = 1 || var(54) := 0
trigger1 = 1 || var(52) := 3

;---------------------------------------------------------------------------
;10 倒しきり　なし
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;3 切り返し
;---------------------------------------------------------------------------
;////
;Soff
;屈弱
;////

[State -1, ];切り返し
type = ChangeState
value = 400
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = Statetype != A
triggerall = ctrl
triggerall = var(49) = 0
TriggerAll = !(numhelper(55003) && helper(55003),var(0) = 1)
triggerall = enemynear(var(53)),movetype != H
triggerall = enemynear(var(53)),statetype != A
triggerall = enemynear(var(53)),statetype != L
triggerall = enemynear(var(53)),ctrl = 0
TriggerAll = var(52) <= 12
triggerall = helper(55002),var(18) != 1
trigger1 = helper(55002),var(25) = 1
trigger1 = P2BodyDist X <= 44

;////
;ホワイトスネイク
;////

;しゃがみ弱 S WS
[State -1, Crouching Light Punch]
type = ChangeState
value = 10400
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) = 10000
triggerall = var(3) = 0
triggerall = numhelper(4321) = 0
triggerall = Statetype != A
triggerall = ctrl
TriggerAll = !(numhelper(55003) && helper(55003),var(0) = 1)
triggerall = enemynear(var(53)),movetype != H
triggerall = enemynear(var(53)),statetype != A
triggerall = enemynear(var(53)),statetype != L
triggerall = enemynear(var(53)),ctrl = 0
TriggerAll = var(52) <= 12
triggerall = helper(55002),var(18) != 1
trigger1 = helper(55002),var(25) = 1
trigger1 = P2BodyDist X <= 55

;////
;C-MOON
;////

;立ち弱　s　CM
[State -1, Stand Strong Punch]
type = ChangeState
value = 30200
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) = 10000
triggerall = var(3) = 1
triggerall = numhelper(4321) = 0
triggerall = statetype != A
triggerall = ctrl
TriggerAll = !(numhelper(55003) && helper(55003),var(0) = 1)
triggerall = enemynear(var(53)),movetype != H
triggerall = enemynear(var(53)),statetype != A
triggerall = enemynear(var(53)),statetype != L
triggerall = enemynear(var(53)),ctrl = 0
TriggerAll = var(52) <= 12
triggerall = helper(55002),var(18) != 1
trigger1 = helper(55002),var(25) = 1
trigger1 = P2BodyDist X <= 83

[State -1, 私の肉体が『基本』だ]
type = ChangeState
value = 31200
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = var(49) != 10000
triggerall = var(3) = 1
triggerall = P2BodyDist X <= 125+enemynear(var(53)),vel x
triggerall = P2BodyDist X > 30
triggerall = P2Statetype = S
triggerall = enemynear(var(53)),vel x > 0
triggerall = enemynear(var(53)),time > 4
triggerall = P2MoveType != H
TriggerAll = var(52) != 10
triggerall = (var(52) <= 12)
triggerall = random < 333
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && (time > 6)
trigger3 = stateno = 210 && (time > 4)
trigger4 = stateno = 242 && (time > 13)
trigger5 = stateno = 215 && (time > 13)
trigger6 = stateno = 400 && (time > 3)
trigger7 = stateno = 412 && (time > 6)
trigger8 = stateno = 3900 && time < 7

[State -1, 私の肉体が『基本』だ]
type = ChangeState
value = 31210
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = numhelper(4321) = 0
triggerall = var(49) = 10000
triggerall = var(3) = 1
triggerall = P2BodyDist X <= 125+enemynear(var(53)),vel x
triggerall = P2BodyDist X > 30
triggerall = P2Statetype = S
triggerall = enemynear(var(53)),vel x > 0
triggerall = enemynear(var(53)),time > 4
triggerall = P2MoveType != H
TriggerAll = var(52) != 10
triggerall = (var(52) <= 12)
triggerall = random <= 249
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 30200 && (time > 4)
trigger3 = stateno = 30210 && (time > 7)
trigger4 = stateno = 30240 && (time > 11)
trigger5 = stateno = 30400 && (time > 4)
trigger6 = stateno = 30411 && (time > 6)
trigger7 = stateno = 30440 && (time > 9)
trigger8 = stateno = 30220 && (time > 3)
trigger9 = stateno = 30255 && (time > 6)
trigger10 = stateno = 30270 && (time > 11)
trigger11 = stateno = 30420 && (time > 4)
trigger12 = stateno = 30450 && (time > 6)
trigger13 = stateno = 30470 && (time > 9)

;自分の肉体までも・・・
[State -1, Stand Strong Punch]
type = ChangeState
value = 33500
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = power >= 1000
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(2) = 0 
triggerall = var(49) != 10000
triggerall = var(3) = 1
triggerall = NumHelper(1001) = 0 
triggerall = P2BodyDist X <= 125+enemynear(var(53)),vel x
triggerall = P2BodyDist X > 30
triggerall = P2Statetype = S
triggerall = enemynear(var(53)),vel x > 0
triggerall = enemynear(var(53)),time > 4
triggerall = P2MoveType != H
triggerall = ((random <= 499)*(power >= 4000) + (random <= 249)*(power >= 1500)*(var(58) = 1) + (random <= 499)*(var(58) = 1)*helper(55002),var(18)) > 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && (time > 6)
trigger3 = stateno = 210 && (time > 5)
trigger4 = stateno = 242 && (time > 13)
trigger5 = stateno = 215 && (time > 6)
trigger6 = stateno = 400 && (time > 3)
trigger7 = stateno = 412 && (time > 6)
trigger8 = stateno = 445 && (time > 8)

;自分の肉体までも・・・ S
[State -1, Stand Strong Punch]
type = ChangeState
value = 33500
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = power >= 1000
triggerall = NumHelper(1001) = 0 
triggerall = NumHelper(2) = 0 
triggerall = var(49) = 10000
triggerall = var(3) = 1
triggerall = helper(1),movetype != H
triggerall = P2BodyDist X <= 125+enemynear(var(53)),vel x
triggerall = P2BodyDist X > 30
triggerall = P2Statetype = S
triggerall = enemynear(var(53)),vel x > 0
triggerall = enemynear(var(53)),time > 4
triggerall = P2MoveType != H
triggerall = ((random <= 499)*(power >= 4000) + (random <= 249)*(power >= 1500)*(var(58) = 1) + (random <= 499)*(var(58) = 1)*helper(55002),var(18)) > 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 30200 && (time > 4)
trigger3 = stateno = 30210 && (time > 7)
trigger4 = stateno = 30240 && (time > 10)
trigger5 = stateno = 30400 && (time > 4)
trigger6 = stateno = 30411 && (time > 6)
trigger7 = stateno = 30440 && (time > 9)
trigger8 = stateno = 30220 && (time > 3)
trigger9 = stateno = 30255 && (time > 6)
trigger10 = stateno = 30270 && (time > 11)
trigger11 = stateno = 30420 && (time > 4)
trigger12 = stateno = 30450 && (time > 6)
trigger13 = stateno = 30470 && (time > 9)

;---------------------------------------------------------------------------
;8 コンボ　3ゲージでスパコン→進化（AI性格0の場合）　1ゲージでスパコンし、進化しない（AI性格1の場合）
;---------------------------------------------------------------------------
;スパコン類
;WS Soff
[State -1, スデニ]
type = ChangeState
value = 3000
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(2) = 0 
triggerall = NumHelper(1001) = 0 
triggerall = var(3) = 0
triggerall = var(49) = 0  ;スタンドoffの時
triggerall = power >= 1000+(var(58) = 0)*2000
triggerall = stateno = 410  || stateno = 210 || stateno = 215
triggerall = movehit  || helper(241),movehit
triggerall = (numhelper(6600) && helper(6600),anim = 14006 && (helper(6600),animelemtime(2) >= 100)) || (numhelper(6600) = 0) || (numhelper(6600) && helper(6600),anim != 14006)
trigger1 = helper(55001),var(0) <= 150
trigger1 = 1 || var(52) := 0
trigger2 = helper(55001),var(0) > 150
trigger2 = var(52) = 24
trigger2 = 1 || var(52) := 0
;WS Son
[State -1, スデニ]
type = ChangeState
value = 13000
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = power >= 1000+(var(58) = 0)*2000
triggerall = var(49) = 10000
triggerall = var(3) = 0
triggerall = (stateno = 10440) || ((P2BodyDist x > 65 - 2*8) && (stateno = 10410))
triggerall = movehit
;triggerall = (numhelper(6600) && helper(6600),anim = 14006 && (helper(6600),animelemtime(2) >= 100)) || (numhelper(6600) = 0) || (numhelper(6600) && helper(6600),anim != 14006)
trigger1 = var(52) = 30 || ((P2BodyDist x > 65 - 2*8) && (stateno = 10410))
trigger1 = 1 || var(52) := 0
;CM Soff　なし
;CM Son
[State -1, パン一]
type = ChangeState
value = 33000
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) = 10000
triggerall = var(3) = 1
triggerall = power >= 1000+(var(58) = 0)*2000
triggerall = stateno = 30240 && (time > 10)
triggerall = movehit
trigger1 = helper(55001),var(0) <= 150
trigger1 = var(29) = 0
trigger1 = var(52) = 33
trigger1 = 1 || var(52) := 0
trigger2 = FrontEdgeBodyDist <= 150
trigger2 = var(29) = 1
trigger2 = var(52) = 33
trigger2 = 1 || var(52) := 0
trigger3 = helper(55001),var(0) > 150
trigger3 = var(29) = 0
trigger3 = var(52) = 32
trigger3 = 1 || var(52) := 0
trigger4 = FrontEdgeBodyDist > 150
trigger4 = var(29) = 1
trigger4 = var(52) = 33
trigger4 = 1 || var(52) := 0

;進化類
;新月の重力
[State -1, 新月の重力]
type = ChangeState
value = 2505
TriggerAll = Var(59)=1; && RoundState = 2
triggerall = var(49) != 10000
triggerall = var(3) = 0
triggerall = var(58) = 0
triggerall = power >= 2000
trigger1 = stateno = 3000 && movehit
trigger1 = anim = 11103 && (animelemtime(5) >= 10)
trigger2 = stateno = 3150
trigger2 = anim = 1000
trigger3 = stateno = 3150
trigger3 = anim = 100 && animelemtime(3) >= 0

[State -1, 新月の重力]
type = ChangeState
value = 2505
TriggerAll = Var(59)=1; && RoundState = 2
triggerall = var(49) = 10000
triggerall = var(3) = 0
triggerall = var(58) = 0
triggerall = stateno = 13000 && movehit
triggerall = power >= 2000
trigger1 = anim = 11101 && (animelemtime(12) >= 10)
;運命の夜明け
[State -1, 運命の夜明け]
type = Helper;ChangeState
;value = 3502
TriggerAll = Var(59)=1; && RoundState = 2
triggerall = NumHelper(3500) = 0
triggerall = Numhelper(1) = 0 || ( Numhelper(1) && Helper(1),movetype = I )
triggerall = var(49) != 10000
triggerall = var(3) = 1
triggerall = power >= 2000 
triggerall = var(58) = 0
trigger1 = stateno = 33201 && (time >= 5); && (movehit)
stateno = 3502
id = 3500
name = "Dawn of Destiny"
postype = p1
pos = facing*(ifelse(var(29) = 1,helper(1),pos x-pos x,0)),0
pausemovetime = 30
supermovetime = 50

[State -1, 運命の夜明け]
type = Helper;ChangeState
;value = 3502
TriggerAll = Var(59)=1; && RoundState = 2
triggerall = NumHelper(3500) = 0
triggerall = Numhelper(1) = 0 || ( Numhelper(1) && Helper(1),movetype = I )
triggerall = var(49) = 10000
triggerall = var(3) = 1
triggerall = power >= 2000 
triggerall = var(58) = 0
trigger1 = stateno = 33001 && (time >= 5); && (movehit)
stateno = 3502
id = 3500
name = "Dawn of Destiny"
postype = p1
pos = facing*(ifelse(var(29) = 1,helper(1),pos x-pos x,0)),0
pausemovetime = 30
supermovetime = 50

;////
;Soff
;WS
;A （画面端でない）屈弱>屈中>立強>命令>空中>屈弱>屈中>十字架>S発現>派生
;B （画面端）屈弱>屈中>十字架
;C （画面端）投げ>前立中>十字架
;-ABC-

[State -1, 前立中];投げから
type = ChangeState
value = 215
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) != 10000
triggerall = var(52) <= 22
triggerall = helper(55001),var(0) <= 150
triggerall = var(3) = 0
trigger1 = helper(55002),var(1) = 801 || helper(55002),var(2) = 801 || helper(55002),var(3) = 801 || helper(55002),var(4) = 801
trigger1 = helper(55002),var(28) >= 13
trigger1 = 1 || var(52) := 0

[State -1, スタンド発現必殺技];キャンセルS発現
type = ChangeState
value = 11123
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = NumHelper(4321) = 0 
triggerall = var(49) != 10000
triggerall = var(3) = 0
trigger1 = (stateno = 6666) && time > 4
trigger1 = var(52) = 24
trigger1 = 1 || var(52) := 24

[State -1, 十字架];キャンセル十字架
type = ChangeState
value = 6666
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = NumHelper(1900) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = var(3) = 0
triggerall = var(49) != 10000
triggerall = movehit >= 1
trigger1 = (stateno = 410)
trigger1 = var(52) = 24
trigger2 = var(52) = 25
trigger2 = (stateno = 410)
trigger2 = 1 || var(52) := 24
trigger3 = var(52) <= 22
trigger3 = (stateno = 215)
trigger3 = 1 || var(52) := 24
trigger4 = var(52) <= 22
trigger4 = (stateno = 210)
trigger4 = 1 || var(52) := 24

[State -1, 屈中];キャンセル屈中
type = ChangeState
value = 410
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = NumHelper(1900) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = var(3) = 0
triggerall = var(49) != 10000
triggerall = (stateno = 400) && time > 3
triggerall = var(52) = 24
trigger1 = movehit >= 1

[State -1, 屈弱];屈弱
type = ChangeState
value = 400
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) != 10000
triggerall = ctrl
triggerall = var(52) = 24
trigger1 = statetype != A
trigger1 = helper(55002),var(1) = 52 || helper(55002),var(2) = 52 || helper(55002),var(3) = 52 || helper(55002),var(4) = 52
trigger1 = helper(55002),var(1) = 610 || helper(55002),var(2) = 610 || helper(55002),var(3) = 610 || helper(55002),var(4) = 610

[State -1, ジャンプ中];ジャンプ中
type = ChangeState
value = 610
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) != 10000
triggerall = ctrl
triggerall = var(52) = 23
trigger1 = statetype = A
trigger1 = pos y > -55
trigger1 = vel y > 0
trigger1 = 1 || var(52) := 24

[State -1, ジャンプ];前ジャンプ
type = ChangeState
value = 70
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = statetype != A
triggerall = ctrl
triggerall = var(52) = 23
trigger1 = helper(55002),var(1) = 1230 || helper(55002),var(2) = 1230 || helper(55002),var(3) = 1230 || helper(55002),var(4) = 1230

[State -1, お前に命令するッ！];命令
type = ChangeState
value = 1230
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(3) = 0
triggerall = numhelper(11201) = 0
triggerall = numhelper(1232) = 0
triggerall = var(49) != 10000
triggerall = statetype != A
triggerall = ctrl
;triggerall = helper(1001),stateno = 241
triggerall = var(52) = 23
triggerall = helper(55002),var(27) > 2
trigger1 = helper(1001),stateno = 1006;helper(55002),var(1) = 240 || helper(55002),var(2) = 240 || helper(55002),var(3) = 240 || helper(55002),var(4) = 240

[State -1, 立強];キャンセル立強
type = ChangeState
value = 240
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = var(3) = 0
triggerall = var(49) != 10000
triggerall = time > 9
triggerall = var(52) = 23
trigger1 = (stateno = 410) && (time > 6) && ((helper(241),movehit) || (movehit))

[State -1, 屈弱];まだ入るなら屈弱もう一回
type = ChangeState
value = 400
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) != 10000
triggerall = enemynear(var(53)),statetype != A
triggerall = movehit >= 1
triggerall = var(52) <= 22
triggerall = stateno = 400 && time >= 3
triggerall = P2BodyDist X <= 17
triggerall = var(3) = 0
triggerall = NumHelper(1900) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
trigger1 = 1 || var(52) := 23

[State -1, 屈中];キャンセル屈中
type = ChangeState
value = 410
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = NumHelper(1900) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = var(3) = 0
triggerall = var(49) != 10000
triggerall = (stateno = 400) && time > 3
triggerall = var(52) <= 23
triggerall = movehit >= 1
triggerall = enemynear(var(53)),statetype != A
trigger1 = helper(55001),var(0) >= 220
trigger1 = 1 || var(52) := 23;A
trigger2 = helper(55001),var(0) < 220
trigger2 = 1 || var(52) := 25;B

;CM
;（画面端でない）屈弱>屈中>立強>ウシャー強>回り込み>屈弱*n>十字架>S発現>立弱
;（画面端）屈弱>屈中>立強>十字架>S発現>立弱
;空中ウシャー>銃>立弱>立強>S発現
;ジャンプ強>空中ウシャー

;立ち中　s　CM
[State -1, Stand Strong Punch]
type = ChangeState
value = 30210
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) = 10000
triggerall = var(3) = 1
triggerall = numhelper(4321) = 0
trigger1 = statetype != A
trigger1 = stateno = 30200 && !movehit && (time > 4)
trigger1 = helper(55002),var(1) = 31100 || helper(55002),var(2) = 31100 || helper(55002),var(3) = 31100 || helper(55002),var(4) = 31100
trigger1 = 1 || var(52) := 32

;立ち弱　s　CM
[State -1, Stand Strong Punch]
type = ChangeState
value = 30200
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) = 10000
triggerall = var(3) = 1
triggerall = numhelper(4321) = 0
triggerall = var(52) = 27
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = helper(55002),var(1) = 31100 || helper(55002),var(2) = 31100 || helper(55002),var(3) = 31100 || helper(55002),var(4) = 31100
trigger1 = 1 || var(52) := 0

;立ち弱　s　CM
[State -1, Stand Strong Punch]
type = ChangeState
value = 30200
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) = 10000
triggerall = var(3) = 1
triggerall = numhelper(4321) = 0
triggerall = var(52) = 31
trigger1 = helper(55002),var(30) >= 10
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = 1 || var(52) := 0

[State -1, S発現];キャンセルS発現
type = ChangeState
value = 31100
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = var(49) != 10000
triggerall = var(52) = 27 || var(52) = 31
triggerall = var(3) = 1
trigger1 = (stateno = 6666) && time > 4
trigger1 = movehit >= 1
trigger2 = var(52) = 31
trigger2 = stateno = 242
trigger2 = helper(243),movecontact >= 5
trigger2 = p2Bodydist Y <= -70

[State -1, 十字架];キャンセル十字架　コンボル―トB用
type = ChangeState
value = 6666
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) != 10000
triggerall = statetype != A
trigger1 = var(52) = 28
trigger1 = stateno = 242
trigger1 = helper(243),movecontact
trigger1 = 1 || var(52) := 27
trigger2 = var(52) = 31
trigger2 = stateno = 242
trigger2 = helper(243),movecontact >= 5
trigger2 = p2Bodydist Y > -70
trigger2 = 1 || var(52) := 31

[State -1, 十字架];キャンセル十字架
type = ChangeState
value = 6666
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) != 10000
triggerall = statetype != A
triggerall = var(52) = 27
triggerall = numhelper(1001) && helper(1001),stateno = 31050 && (helper(1001),time >= 162)
trigger1 = movehit >= 1
trigger1= stateno = 400
trigger2 = ctrl

[State -1, 屈弱];コパン連打
type = ChangeState
value = 400
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) != 10000
triggerall = var(52) = 27
triggerall = P2Bodydist x <= 40
triggerall = numhelper(1001) && helper(1001),stateno = 31050
trigger1 = ctrl
trigger2 = stateno = 400 && movehit >= 3

[State -1, 回り込み];回り込み
type = ChangeState
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(10) = 0
triggerall = (RoundState = 2) && (Alive)
triggerall = var(49) != 10000
triggerall = statetype != A && ctrl
;triggerall = stateno = 21
triggerall = var(52) = 26
trigger1 = P2Bodydist x <= 30
trigger1 = P2Bodydist x >= 0
trigger1 = 1 || var(52) := 27
value = 30

[State -1, 歩き];近づいて
type = ChangeState
value = 21
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(3) = 1
triggerall = var(52) = 26
triggerall = ctrl
trigger1 = helper(55002),var(1) = 31000 || helper(55002),var(2) = 31000 || helper(55002),var(3) = 31000 || helper(55002),var(4) = 31000
trigger2 = helper(55002),var(1) = 21 || helper(55002),var(2) = 21 || helper(55002),var(3) = 21 || helper(55002),var(4) = 21
trigger3 = stateno = 31000

[State -1, C-MOON ウシャー];キャンセルウシャー
type = ChangeState
value = 31000
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = var(49) != 10000
triggerall = var(3) = 1
trigger1 = var(52) = 26
trigger1 = stateno = 242
trigger1 = helper(243),movecontact
trigger1 = 1 || var(9) := 2

[State -1, 立強];キャンセル立強
type = ChangeState
value = 242
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(2) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = var(3) = 1
triggerall = var(49) != 10000
triggerall = helper(413),stateno = 413 && (helper(413),movehit >= 2)
trigger1 = var(52) = 26
trigger2 = var(52) = 28

[State -1, 立強];キャンセル立強
type = ChangeState
value = 242
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(2) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = var(3) = 1
triggerall = var(49) != 10000
triggerall = stateno = 210  ||  stateno = 215
triggerall = var(52) <= 22
triggerall = movehit
trigger1 = helper(55001),var(0) >= 220
trigger1 = 1 || var(52) := 26;A
trigger2 = helper(55001),var(0) < 220
trigger2 = 1 || var(52) := 28;B

[State -1, 屈中];キャンセル屈中
type = ChangeState
value = 412
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = NumHelper(1900) = 0 
triggerall = numhelper(1001) = 0
triggerall = var(3) = 1
triggerall = NumHelper(2) = 0 
triggerall = var(49) != 10000
triggerall = (stateno = 400) && time > 4
triggerall = movehit
triggerall = var(52) <= 22
trigger1 = helper(55001),var(0) >= 220
trigger1 = 1 || var(52) := 26;A
trigger2 = helper(55001),var(0) < 220
trigger2 = 1 || var(52) := 28;B

[State -1, 立強];キャンセル立強
type = ChangeState
value = 242
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(3) = 1
triggerall = var(49) != 10000
trigger1 = var(52) = 31
trigger1 = stateno = 200 && (movehit >= 4)

[State -1, 立弱];からの立弱
type = ChangeState
value = 200
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(3) = 1
triggerall = var(49) != 10000
trigger1 = var(52) = 31
trigger1 = Ctrl
trigger1 = helper(55002),var(29) >= 30
trigger1 = helper(55002),var(1) = 215 || helper(55002),var(2) = 215 || helper(55002),var(3) = 215 || helper(55002),var(4) = 215

[State -1, 前立中];添えるだけ前立中
type = ChangeState
value = 215
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(3) = 1
triggerall = var(49) != 10000
trigger1 = Ctrl
trigger1 = var(52) = 31
trigger1 = numhelper(41050) && helper(41050),stateno = 41050 && helper(41050),time >= 87 && helper(41050),time <= 99
trigger1 = Statetype != A

[State -1, 歩き];前歩き
type = ChangeState
value = 21
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(3) = 1
triggerall = Statetype != A
triggerall = Ctrl
triggerall = var(52) = 31
trigger1 = var(49) != 10000
trigger1 = numhelper(41050) && helper(41050),stateno = 41050
trigger1 = 1 || var(52) := 31
trigger2 = var(49) = 10000

[State -1, var];フラグ
type = VarSet
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(3) = 1
triggerall = var(49) != 10000
trigger1 = var(52) <= 22
trigger1 = numhelper(41050) && helper(41050),stateno = 41050 && helper(41050),movehit
var(52) = 31

;////
;ホワイトスネイク
;屈弱>屈強>幻覚中>ダッシュ屈中>屈強>モラッタゾ
;立強>幻覚強>派生
;////

[State -1, ウシャー];キャンセルウシャー
type = ChangeState
value = 11102
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(3) = 0
triggerall = numhelper(11101) = 0
triggerall = (var(49) = 10000) || (numhelper(5656))
trigger1 = var(52) <= 22
trigger1 = stateno = 10640
trigger1 = movehit >= 1
trigger1 = 1 || var(52) := 0

[State -1, 『幻覚だ』見ていたのは！！];キャンセル幻覚
type = ChangeState
value = 11110
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(3) = 0
triggerall = numhelper(11101) = 0
triggerall = (var(49) = 10000) || (numhelper(5656))
triggerall = statetype != A
trigger1 = var(52) <= 22
trigger1 = stateno = 10240 && time > 5
trigger1 = movehit >= 10
trigger1 = 1 || var(52) := 30

[State -1, 『幻覚だ』見ていたのは！！];キャンセル幻覚
type = ChangeState
value = 11110
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(3) = 0
triggerall = numhelper(11101) = 0
triggerall = (var(49) = 10000) || (numhelper(5656))
triggerall = statetype != A
trigger1 = stateno = 10440 && time > 5
trigger1 = var(52) = 30 || (var(52) <= 22)
trigger1 = movehit >= 4
trigger1 = 1 || var(52) := 30
trigger2 = var(52) = 29
trigger2 = P2BodyDist x > 65 - 2*8
trigger2 = stateno = 10410 && (movehit >= 4)
trigger2 = 1 || var(52) := 30

[State -1, しゃがみ強];キャンセル屈強 距離65以内の場合 2:吹っ飛び速度 7:発生
type = ChangeState
value = 10440
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) = 10000
triggerall = numhelper(4321) = 0
triggerall = var(3) = 0
triggerall = var(52) = 29
trigger1 = P2BodyDist x <= 65 - 2*8
trigger1 = stateno = 10410 && (movehit >= 4)
trigger1 = 1 || var(52) := 30

[State -1, しゃがみ中];からの屈中
type = ChangeState
value = 10410
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) = 10000
triggerall = numhelper(4321) = 0
triggerall = var(3) = 0
trigger1 = stateno = [100,105]
trigger1 = time >= 10
trigger1 = var(52) = 29

[State -1, 前ダ];からのダッシュ
type = ChangeState
value = 100
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(3) = 0
triggerall = (var(49) = 10000) || (numhelper(5656))
triggerall = statetype != A
trigger1 = helper(55002),var(1) = 11110 || helper(55002),var(2) = 11110 || helper(55002),var(3) = 11110 || helper(55002),var(4) = 11110
trigger1 = ctrl
trigger1 = var(52) = 29

[State -1, 『幻覚だ』見ていたのは！！];キャンセル幻覚
type = ChangeState
value = 11110
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(3) = 0
triggerall = numhelper(11101) = 0
triggerall = (var(49) = 10000) || (numhelper(5656))
triggerall = statetype != A
trigger1 = stateno = 10440 && time > 5
trigger1 = var(52) = 29
trigger1 = movehit >= 10

[State -1, しゃがみ強];キャンセル屈強
type = ChangeState
value = 10440
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) = 10000
triggerall = numhelper(4321) = 0
triggerall = var(3) = 0
triggerall = var(52) <= 22
trigger1 = stateno = 10400 && (movehit >= 3)
trigger1 = 1 || var(52) := 29

;////
;C-MOON
;屈弱>立弱>立中>立強>裏返る（相手が空中かつ裏返っているなら脳）>(画面端で)立中
;////

[State -1, 立ち中];からの立中
type = ChangeState
value = 30210
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) = 10000
triggerall = var(3) = 1
triggerall = numhelper(4321) = 0
triggerall = var(52) = 32
trigger1 = helper(55002),var(1) = 32000 || helper(55002),var(2) = 32000 || helper(55002),var(3) = 32000 || helper(55002),var(4) = 32000
trigger1 = ctrl
trigger1 = statetype != A
trigger1 = 1 || var(52) := 33

[State -1, var];フラグ消去
type = varSet
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) = 10000
triggerall = var(3) = 1
triggerall = var(52) = 32
trigger1 = P2bodydist x > 150
trigger2 = stateno = 32200
var(52) = 0

[State -1, 裏返るか脳];キャンセル裏返る　もしくは脳
type = ChangeState
value = 32000+(enemynear(var(53)),statetype = A && numhelper(31506))*200
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) = 10000
triggerall = var(3) = 1
triggerall = numhelper(4321) = 0
triggerall = var(52) = 32 || var(52) = 33
triggerall = stateno = 30240 && time >= 11
triggerall = movehit >= 1
trigger1 = helper(55001),var(0) > 150
trigger1 = var(29) = 0
trigger1 = 1 || var(52) := 0
trigger2 = helper(55001),var(0) <= 150
trigger2 = var(29) = 0
trigger3 = FrontEdgeBodyDist > 150
trigger3 = var(29) = 1
trigger3 = 1 || var(52) := 0
trigger4 = FrontEdgeBodyDist <= 150
trigger4 = var(29) = 1

[State -1, 立ち強];キャンセル立強
type = ChangeState
value = 30240
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) = 10000
triggerall = var(3) = 1
triggerall = numhelper(4321) = 0
triggerall = var(52) = 32 || var(52) = 33
trigger1 = stateno = 30210 && time >= 7
trigger1 = movehit >= 6

[State -1, 立ち中];キャンセル立中
type = ChangeState
value = 30210
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) = 10000
triggerall = var(3) = 1
triggerall = numhelper(4321) = 0
triggerall = var(52) <= 22 || var(52) = 32
trigger1 = stateno = 30200 && time >= 4
trigger1 = movehit >= 6
trigger1 = 1 || var(52) := 32

[State -1, 立ち弱];キャンセル立弱
type = ChangeState
value = 30200
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) = 10000
triggerall = var(3) = 1
triggerall = numhelper(4321) = 0
triggerall = var(52) <= 22
trigger1 = stateno = 30400 && time >= 4
trigger1 = movehit
trigger1 = 1 || var(52) := 32

;---------------------------------------------------------------------------
;7 ガードからの繋ぎ
;---------------------------------------------------------------------------
;////
;Soff
;A 屈弱＞屈弱＞前立中
;B 屈弱＞微歩き＞投げ
;C 屈弱＞屈弱＞屈中＞(WS)十字架＞S発現必殺技＞ランダム
;　　　　　　　　　＞(CM)立強＞ハイジャンプ
;D 前立中＞前立中＞(WS)十字架＞S発現必殺技
;　　　　　　　　＞(CM)立強＞ハイジャンプ
;E 前立中＞前立中＞立中
;////

[State -1, しゃがみ弱];近かったら屈弱
type = ChangeState
value = 400
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) != 10000
triggerall = stateno = 400 && moveguarded
triggerall = P2BodyDist X <= 25
trigger1 = (var(52) <= 12)
trigger1 = time >= 3

[State -1, var];行動を決める 屈弱
type = null
TriggerAll = var(59)=1 && RoundState = 2
triggerall = var(49) != 10000
triggerall = stateno = 400 && moveguarded
triggerall = var(52) <= 12
trigger1 = random <= 499
trigger1 = P2BodyDist X > 20
trigger1 = 1 || var(52) := 13
trigger2 = P2BodyDist X <= 20
trigger2 = random <= 200
trigger2 = 1 || var(52) := 13
trigger3 = P2BodyDist X <= 20
trigger3 = random <= 749
trigger3 = 1 || var(52) := 14
trigger4 = 1 || var(52) := 15
ignorehitpause = 1

[State -1, var];行動を決める 前立中
type = null
TriggerAll = var(59)=1 && RoundState = 2
triggerall = var(49) != 10000
triggerall = stateno = 215 && moveguarded
triggerall = var(52) <= 12
trigger1 = 1 || var(52) := 18
ignorehitpause = 1
;d,eルートは直前に決める

;-A-
[State -1, しゃがみ弱];前立中
type = ChangeState
value = 215
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) != 10000
triggerall = helper(55002),var(1) = 400 || helper(55002),var(2) = 400 || helper(55002),var(3) = 400 || helper(55002),var(4) = 400
triggerall = ctrl
triggerall = Statetype != A
trigger1 = var(52) = 13
trigger1 = 1 || var(52) := 0
;-B-

[State -1, var];投げれなかったよ
type = varset
TriggerAll = Var(59)=1 && RoundState = 2
trigger1 = var(52) = 14
trigger1 = anim = 20 && animelem = 4
var(52) = 0

[State -1, 投げ];投げる
type = ChangeState
value = 800
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) = 0
triggerall = statetype != A
triggerall = ctrl
triggerall = stateno != 100
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1001) = 0 
triggerall = NumHelper(2) = 0
trigger1 = var(52) = 14
trigger1 = p2bodydist X < 13
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger1 = 1 || var(52) := 0

[State -1, しゃがみ弱];から歩いて
type = ChangeState
value = 21
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) != 10000
triggerall = helper(55002),var(1) = 400 || helper(55002),var(2) = 400 || helper(55002),var(3) = 400 || helper(55002),var(4) = 400
triggerall = Statetype != A
triggerall = ctrl
trigger1 = var(52) = 14
;-c(WS)-
[State -1, スタンド発現必殺技];キャンセルS発現
type = ChangeState
value = 11123
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = NumHelper(4321) = 0 
triggerall = var(49) != 10000
triggerall = var(3) = 0
trigger1 = (stateno = 6666) && time > 4
trigger1 = var(52) = 15

[State -1, 十字架を指に突き刺した・・・];キャンセル十字架
type = ChangeState
value = 6666
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) != 10000
triggerall = statetype != A
triggerall= stateno = 410
triggerall= var(3) = 0
trigger1 = movecontact
trigger1 = var(52) = 15

[State -1, var];キャンセルできなかったよ
type = varset
TriggerAll = Var(59)=1 && RoundState = 2
trigger1 = (stateno = 400) && time > 9
trigger1 = var(52) = 15
var(52) = 0

[State -1, しゃがみ中];屈中
type = ChangeState
value = 410
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = NumHelper(1900) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = var(3) = 0
triggerall = var(49) != 10000
trigger1 = (stateno = 400) && time > 3
trigger1 = var(52) = 15
;-c(CM)-
[State -1, ハイジャンプ];キャンセルハイジャン逃げ
type = ChangeState
value = 70
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(3) = 1
trigger1 = stateno = 242 && (time > 13)
trigger1 = var(52) = 15
trigger1 = 1 || var(0) := (var(0)|8)
trigger1 = 1 || var(52) := 12

[State -1, 立ち強];キャンセル立強
type = ChangeState
value = 242
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = var(3) = 1
triggerall = var(49) != 10000
trigger1 = (stateno = 412)
trigger1 = animelemtime(6) >= 5
trigger1 = var(52) = 15

[State -1, しゃがみ中];屈中
type = ChangeState
value = 412
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = NumHelper(1900) = 0 
triggerall = numhelper(1001) = 0
triggerall = var(3) = 1
triggerall = NumHelper(2) = 0 
triggerall = var(49) != 10000
trigger1 = (stateno = 400) && time > 4
trigger1 = var(52) = 15
;-d-
[State -1, 十字架を指に突き刺した・・・];キャンセル十字架
type = ChangeState
value = 6666
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) != 10000
triggerall = statetype != A
triggerall= stateno = 215
triggerall= var(3) = 0
trigger1 = movecontact
trigger1 = var(52) = 16
trigger1 = 1 || var(52) := 15

[State -1, 立ち強];キャンセル立強
type = ChangeState
value = 242
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = var(3) = 1
triggerall = var(49) != 10000
trigger1 = (stateno = 215)
trigger1 = time > 8
trigger1 = var(52) = 16
trigger1 = 1 || var(52) := 15

[State -1, 前立中];もう一回前立中
type = ChangeState
value = 215
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) != 10000
triggerall = helper(55002),var(1) = 215 || helper(55002),var(2) = 215 || helper(55002),var(3) = 215 || helper(55002),var(4) = 215
triggerall = ctrl
triggerall = Statetype != A
triggerall = var(52) = 18
trigger1 = P2BodyDist X <= 40
trigger1 = random <= 499
trigger1 = 1 || var(52) := 17
trigger2 = 1 || var(52) := 16
;-e-
[State -1, 立中];キャンセル立中
type = ChangeState
value = 210
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) != 10000
triggerall = helper(55002),var(1) = 215 || helper(55002),var(2) = 215 || helper(55002),var(3) = 215 || helper(55002),var(4) = 215
triggerall = ctrl
triggerall = Statetype != A
trigger1 = var(52) = 17
trigger1 = 1 || var(52) := 0

;////
;ホワイトスネイク
;A　屈弱＞微歩き＞投げ
;B　屈弱＞屈強＞「幻覚」だ＞ランダム
;C　屈強＞「幻覚」だ
;D　発現屈強＞「幻覚」だ
;////

[State -1, var];行動を決める 屈弱
type = null
TriggerAll = var(59)=1 && RoundState = 2
triggerall = var(49) = 10000
triggerall = stateno = 10400 && moveguarded
triggerall = var(52) <= 12
trigger1 = P2BodyDist X <= 28
trigger1 = random <= 749
trigger1 = 1 || var(52) := 19
trigger2 = 1 || var(52) := 20
ignorehitpause = 1

;-A-
[State -1, var];投げれなかったよ
type = varset
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(52) = 19
trigger1 = anim = 10020 && helper(1),animelemtime(4) >= 0
trigger2 = anim = 10022 && animelemtime(4) >= 0
var(52) = 0

[State -1, 投げ];投げる
type = ChangeState
value = 800
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) = 10000
triggerall = command = "b"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = var(52) = 19
trigger1 = p2bodydist X < 25
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger1 = 1 || var(52) := 0

[State -1, しゃがみ弱];から歩いて
type = ChangeState
value = 21
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) = 10000
triggerall = helper(55002),var(1) = 10400 || helper(55002),var(2) = 10400 || helper(55002),var(3) = 10400 || helper(55002),var(4) = 10400
triggerall = Statetype != A
triggerall = ctrl
trigger1 = var(52) = 19
;-B-
[State -1, var];キャンセルできなかったよ
type = varset
TriggerAll = Var(59)=1 && RoundState = 2
trigger1 = (stateno = 10440) && time > 24
trigger1 = !movecontact
trigger1 = var(52) = 20
var(52) = 0

[State -1, 『幻覚だ』見ていたのは！！ 中s];キャンセル幻覚
type = ChangeState
value = 11110
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(3) = 0
triggerall = numhelper(11101) = 0
triggerall = (var(49) = 10000) || (numhelper(5656))
triggerall = statetype != A
trigger1 = stateno = 10440 && time > 5
trigger1 = movecontact = 5
trigger1 = var(52) = 20
trigger2 = stateno = 10440 && time > 5;-c-
trigger2 = P2BodyDist x > 5
trigger2 = moveguarded = 5
trigger2 = var(52) <= 12
trigger2 = 1 || var(52) := 20
trigger3 = stateno = 10470 && time > 5;-d-
trigger3 = P2BodyDist x > 5
trigger3 = moveguarded = 5
trigger3 = var(52) <= 12
trigger3 = 1 || var(52) := 20

[State -1, しゃがみ強S];キャンセル屈中
type = ChangeState
value = 10440
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) = 10000
triggerall = numhelper(4321) = 0
triggerall = var(3) = 0
trigger1 = var(52) = 20
trigger1 = stateno = 10400 && movecontact

;////
;C-MOON
;A　屈弱＞屈弱＞立弱
;B　屈弱＞微歩き＞投げ
;C　立弱＞立中＞立強＞裏返る
;D　立弱＞立中＞立強＞脳に食らって
;E　立弱＞立中＞両腕
;F　屈中＞立強
;G　屈中＞両腕
;H　発現屈中＞立強
;I　発現屈中＞両腕
;////

[State -1, しゃがみ弱];近かったら屈弱
type = ChangeState
value = 30400
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) != 10000
triggerall = stateno = 30400 && moveguarded
triggerall = P2BodyDist X <= 40
trigger1 = (var(52) <= 12)

[State -1, var];行動を決める 屈弱
type = null
TriggerAll = var(59)=1 && RoundState = 2
triggerall = var(49) = 10000
triggerall = stateno = 30400 && moveguarded
triggerall = var(52) <= 12
trigger1 = P2BodyDist X <= 28
trigger1 = random <= 749
trigger1 = 1 || var(52) := 21
trigger2 = 1 || var(52) := 22
ignorehitpause = 1

;-A-
[State -1, 立弱];キャンセル立弱
type = ChangeState
value = 30200
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) = 10000
triggerall = stateno = 30400 && moveguarded >= 5
;triggerall = ctrl
triggerall = Statetype != A
trigger1 = var(52) = 21
trigger1 = 1 || var(52) := 0

;-B-
[State -1, var];投げれなかったよ
type = varset
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(52) = 22
trigger1 = anim = 30020 && helper(1),animelemtime(4) >= 0
trigger2 = anim = 30022 && animelemtime(4) >= 0
var(52) = 0

[State -1, 投げ];投げる
type = ChangeState
value = 800
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) = 10000
triggerall = command = "b"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = var(52) = 22
trigger1 = p2bodydist X < 25
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger1 = 1 || var(52) := 0

[State -1, しゃがみ弱];から歩いて
type = ChangeState
value = 21
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) = 10000
triggerall = helper(55002),var(1) = 30400 || helper(55002),var(2) = 30400 || helper(55002),var(3) = 30400 || helper(55002),var(4) = 30400
triggerall = Statetype != A
triggerall = ctrl
trigger1 = var(52) = 22
;-CDE-
[State -1, パンチは必ず一発だけだ];キャンセルパン一
type = ChangeState
value = 32000
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) = 10000
triggerall = var(3) = 1
triggerall = numhelper(4321) = 0
trigger1 = stateno = 30240 && (time > 10)
trigger1 = moveguarded >= 4
trigger1 = random <= 849

[State -1, 脳];キャンセル脳
type = ChangeState
value = 32200
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) = 10000
triggerall = var(3) = 1
triggerall = numhelper(4321) = 0
trigger1 = stateno = 30240 && (time > 10)
trigger1 = moveguarded >= 4

[State -1, 立ち強];キャンセル立強
type = ChangeState
value = 30240
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) = 10000
triggerall = var(3) = 1
triggerall = numhelper(4321) = 0
trigger1 = (stateno = 30210)
trigger1 = moveguarded >= 4
trigger1 = random <= 749

[State -1, 両腕];キャンセル両腕
type = ChangeState
value = 32100
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) = 10000
triggerall = var(3) = 1
triggerall = numhelper(4321) = 0
trigger1 = stateno = 30210
trigger1 = moveguarded >= 4

[State -1, 立ち中];キャンセル立中
type = ChangeState
value = 30210
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) = 10000
triggerall = var(3) = 1
triggerall = numhelper(4321) = 0
triggerall = (stateno = 30200)
trigger1 = moveguarded >= 4
trigger2 = time >= 12
;-FGHI-
[State -1, 立ち強];キャンセル立強
type = ChangeState
value = 30240
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) = 10000
triggerall = var(3) = 1
triggerall = numhelper(4321) = 0
trigger1 = P2BodyDist x > 15
trigger1 = (stateno = 30411) || (stateno = 30450)
trigger1 = moveguarded >= 4
trigger1 = random <= 749

[State -1, 両腕];キャンセル両腕
type = ChangeState
value = 32100
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) = 10000
triggerall = var(3) = 1
triggerall = numhelper(4321) = 0
trigger1 = P2BodyDist x > 5
trigger1 = (stateno = 30411) || (stateno = 30450)
trigger1 = moveguarded >= 4

;---------------------------------------------------------------------------
;2 ガード
;---------------------------------------------------------------------------

[State -1, ガード];屈みガードフラグ（基本これ）
type = VarSet
TriggerAll = Var(59) = 1 && roundstate = 2
triggerall = Statetype != A
triggerall = enemynear(var(53)),movetype = A
triggerall = enemynear(var(53)),movecontact = 0
triggerall = helper(55002),var(15) != 1
trigger1 = enemynear(var(53)),statetype != A
trigger2 = helper(55002),var(16) = 1 && random <= 333
var(55) = 0
ignorehitpause = 1

[State -1, ガード];立ちガードフラグ
type = VarSet
TriggerAll = Var(59) = 1 && roundstate = 2
triggerall = Statetype != A
triggerall = enemynear(var(53)),movetype = A
triggerall = enemynear(var(53)),movecontact = 0
triggerall = helper(55002),var(16) != 1
trigger1 = enemynear(var(53)),statetype = A
trigger2 = enemynear(var(53)),statetype = S
trigger2 = enemynear(var(53)),time >= 17
trigger3 = helper(55002),var(15) = 1 && random <= 333
var(55) = 1
ignorehitpause = 1

[State -1, ガード];ガード移行
type = ChangeState
value = 120
TriggerAll = Var(59) = 1 && roundstate = 2
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = ctrl || stateno = [50,70]
triggerall = stateno != [120,155]
triggerall = helper(55002),var(25) != 1
triggerall = random <= 1000-(var(3) = 2 && (3-var(57)) = 3)*999-(var(3) = 2 && (3-var(57)) = 2)*990-(var(3) = 2 && (3-var(57)) = 1)*400
trigger1 = random <= 749+(stateno = 21 && var(53) = 3)*250-(statetype = A)*350-(helper(55002),var(1) = 52)*350-(helper(55002),var(2) = 52)*350
trigger1 = p2movetype = A || InGuardDist
trigger2 = p2movetype = A || InGuardDist || (numhelper(55003) && helper(55003),var(0) = 1)
trigger2 = P2BodyDist X >= 90 || statetype = A
trigger3 = helper(55002),var(18) = 1
trigger3 = P2BodyDist X < 90

[State -1, 回り込み]
type = ChangeState
TriggerAll = Var(59) = 1 && roundstate = 2
triggerall = var(10) = 0
triggerall = (RoundState = 2) && (Alive)
triggerall = var(49) != 10000
triggerall = statetype != A && ctrl
trigger1 = helper(55001),var(1) <= 60
trigger1 = random < 33+(enemynear(var(53)),Statetype = A)*333
value = 30

;アドバンシング（立ち）
[State -1, Run Back]
type = ChangeState
TriggerAll = Var(59) = 1 && roundstate = 2
triggerall = var(49) != 10000
triggerall = numhelper(4010) = 0
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = random < 33+(var(3) = 2)*999-(var(3) = 2 && (3-var(57)) = 3)*999-(var(3) = 2 && (3-var(57)) = 2)*666-(var(3) = 2 && (3-var(57)) = 1)*333
trigger1 = time <= 5
trigger1 = statetype = S
trigger1 = stateno = 150 || stateno = 151
trigger1 = prevstateno != 4000 && prevstateno != 4005
ignorehitpause = 1
value = 4100

;アドバンシング（しゃがみ）
[State -1, Run Back]
type = ChangeState
TriggerAll = Var(59) = 1 && roundstate = 2
triggerall = var(49) != 10000
triggerall = numhelper(4010) = 0
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = random < 33+(var(3) = 2)*999-(var(3) = 2 && (3-var(57)) = 3)*999-(var(3) = 2 && (3-var(57)) = 2)*666-(var(3) = 2 && (3-var(57)) = 1)*333
trigger1 = time <= 5
trigger1 = statetype = C
trigger1 = stateno = 152 || stateno = 153
trigger1 = prevstateno != 4000 && prevstateno != 4005
value = 4105

;アドバンシング（立ち）S
[State -1, Run Back]
type = ChangeState
TriggerAll = Var(59) = 1 && roundstate = 2
triggerall = var(49) = 10000
triggerall = numhelper(4010) = 0
triggerall = random < 33+(var(3) = 2)*999-(var(3) = 2 && (3-var(57)) = 3)*999-(var(3) = 2 && (3-var(57)) = 2)*666-(var(3) = 2 && (3-var(57)) = 1)*333
trigger1 = time <= 5
trigger1 = statetype = S
trigger1 = stateno = 150 || stateno = 151
trigger1 = prevstateno != 4000 && prevstateno != 4005
ignorehitpause = 1
value = 14000

;アドバンシング（しゃがみ）S
[State -1, Run Back]
type = ChangeState
TriggerAll = Var(59) = 1 && roundstate = 2
triggerall = var(49) = 10000
triggerall = numhelper(4010) = 0
triggerall = random < 33+(var(3) = 2)*999-(var(3) = 2 && (3-var(57)) = 3)*999-(var(3) = 2 && (3-var(57)) = 2)*666-(var(3) = 2 && (3-var(57)) = 1)*333
trigger1 = time <= 5
trigger1 = statetype = C
trigger1 = stateno = 152 || stateno = 153
trigger1 = prevstateno != 4000 && prevstateno != 4005
value = 14005

;---------------------------------------------------------------------------
;5 対空　かなり余裕がある場合のみ
;---------------------------------------------------------------------------

;////
;Soff
;発現屈強(WS)発現屈中(CM)
;基本
;////

[State -1, 私の肉体が『基本』だ]
type = ChangeState
value = 31200
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = var(49) != 10000
triggerall = var(3) = 1
triggerall = helper(55002),var(26) >= 25
triggerall = P2BodyDist X <= 95+enemynear(var(53)),vel x
triggerall = P2BodyDist X > -10
triggerall = P2BodyDist Y >= -150+enemynear(var(53)),vel y
triggerall = P2BodyDist Y < -70+enemynear(var(53)),vel y
triggerall = P2MoveType != H
TriggerAll = var(52) != 10
triggerall = (var(52) <= 12)
triggerall = random < 333
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && (time > 6)
trigger3 = stateno = 210 && (time > 4)
trigger4 = stateno = 242 && (time > 13)
trigger5 = stateno = 215 && (time > 13)
trigger6 = stateno = 400 && (time > 3)
trigger7 = stateno = 412 && (time > 6)
trigger8 = stateno = 3900 && time < 7

[State -1, 発現しゃがみ強];対空
type = ChangeState
value = 10470
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = NumHelper(1900) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = NumHelper(4321) = 0 
triggerall = var(49) != 10000
triggerall = var(3) = 0
triggerall = P2Statetype = A
triggerall = helper(55002),var(26) >= 25
triggerall = P2BodyDist X <= 60+enemynear(var(53)),vel x
triggerall = P2BodyDist X > -10
triggerall = P2BodyDist Y >= -110+enemynear(var(53)),vel y
triggerall = P2BodyDist Y < -70+enemynear(var(53)),vel y
triggerall = P2MoveType != H
TriggerAll = var(52) != 10
triggerall = (var(52) <= 12)
trigger1 = statetype != A
trigger1 = ctrl

[State -1, 発現しゃがみ中];対空
type = ChangeState
value = 30450
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = NumHelper(4321) = 0 
triggerall = var(49) != 10000
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = statetype != A
triggerall = var(3) = 1
triggerall = helper(55002),var(26) >= 25
triggerall = P2BodyDist X <= 50+enemynear(var(53)),vel x
triggerall = P2BodyDist X > -10
triggerall = P2BodyDist Y >= -120+enemynear(var(53)),vel y
triggerall = P2BodyDist Y < -70+enemynear(var(53)),vel y
triggerall = P2MoveType != H
TriggerAll = var(52) != 10
triggerall = (var(52) <= 12)
trigger1 = ctrl
trigger2 = stateno = [100,105]

;////
;ホワイトスネイク
;屈強
;////

[State -1, モラッタゾッ！];対空
type = ChangeState
value = 6600
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) = 10000
triggerall = var(3) = 0
triggerall = NumHelper(4321) = 0 
triggerall = helper(55002),var(26) >= 25
triggerall = P2BodyDist X <= 60+enemynear(var(53)),vel x
triggerall = P2BodyDist X > -10
triggerall = P2BodyDist Y >= -200+enemynear(var(53)),vel y
triggerall = P2BodyDist Y < -100+enemynear(var(53)),vel y
triggerall = P2MoveType != H
TriggerAll = var(52) != 10
triggerall = (var(52) <= 12)
triggerall = random <= 749
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [100,105]

[State -1, しゃがみ強S];対空
type = ChangeState
value = 10440
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) = 10000
triggerall = numhelper(4321) = 0
triggerall = var(3) = 0
triggerall = helper(55002),var(26) >= 25
triggerall = P2BodyDist X <= 60+enemynear(var(53)),vel x
triggerall = P2BodyDist X > -10
triggerall = P2BodyDist Y >= -120+enemynear(var(53)),vel y
triggerall = P2BodyDist Y < -70+enemynear(var(53)),vel y
triggerall = P2MoveType != H
TriggerAll = var(52) != 10
triggerall = (var(52) <= 12)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [100,105]

;////
;C-MOON
;両腕
;屈中
;基本
;////

[State -1, 私の肉体が『基本』だ];対空
type = ChangeState
value = 31210
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = numhelper(4321) = 0
triggerall = var(49) = 10000
triggerall = var(3) = 1
triggerall = helper(55002),var(26) >= 25
triggerall = P2BodyDist X <= 85+enemynear(var(53)),vel x
triggerall = P2BodyDist X > -10
triggerall = P2BodyDist Y >= -150+enemynear(var(53)),vel y
triggerall = P2BodyDist Y < -70+enemynear(var(53)),vel y
triggerall = P2MoveType != H
TriggerAll = var(52) != 10
triggerall = (var(52) <= 12)
triggerall = random <= 124
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 30200 && (time > 4)
trigger3 = stateno = 30210 && (time > 7)
trigger4 = stateno = 30240 && (time > 11)
trigger5 = stateno = 30400 && (time > 4)
trigger6 = stateno = 30411 && (time > 6)
trigger7 = stateno = 30440 && (time > 9)
trigger8 = stateno = 30220 && (time > 3)
trigger9 = stateno = 30255 && (time > 6)
trigger10 = stateno = 30270 && (time > 11)
trigger11 = stateno = 30420 && (time > 4)
trigger12 = stateno = 30450 && (time > 6)
trigger13 = stateno = 30470 && (time > 9)

[State -1, 両腕];対空
type = ChangeState
value = 32100
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) = 10000
triggerall = numhelper(4321) = 0
triggerall = var(3) = 1
triggerall = helper(55002),var(26) >= 25
triggerall = P2BodyDist X <= 50+enemynear(var(53)),vel x
triggerall = P2BodyDist X > -10
triggerall = P2BodyDist Y >= -120+enemynear(var(53)),vel y
triggerall = P2BodyDist Y < -70+enemynear(var(53)),vel y
triggerall = P2MoveType != H
TriggerAll = var(52) != 10
triggerall = (var(52) <= 12)
trigger1 = statetype != A
trigger1 = random <= 333
trigger1 = ctrl

[State -1, しゃがみ中S];対空
type = ChangeState
value = 30411
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) = 10000
triggerall = numhelper(4321) = 0
triggerall = var(3) = 1
triggerall = helper(55002),var(26) >= 25
triggerall = P2BodyDist X <= 50+enemynear(var(53)),vel x
triggerall = P2BodyDist X > -10
triggerall = P2BodyDist Y >= -120+enemynear(var(53)),vel y
triggerall = P2BodyDist Y < -70+enemynear(var(53)),vel y
triggerall = P2MoveType != H
TriggerAll = var(52) != 10
triggerall = (var(52) <= 12)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [100,104]) || (stateno = 105 && (var(29) = 0)) || (stateno = 106)

;---------------------------------------------------------------------------
;9 起き攻め
;---------------------------------------------------------------------------
;ダッシュ>ジャンプ>ジャンプ強
[State -1, var];起き攻めフラグ
type = varset
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(52) != 34
triggerall = enemynear(var(53)),statetype = L
triggerall = ctrl
trigger1 = helper(55002),var(1) = 11200 || helper(55002),var(2) = 11200 || helper(55002),var(3) = 11200 || helper(55002),var(4) = 11200
trigger2 = helper(55002),var(1) = 11220 || helper(55002),var(2) = 11220 || helper(55002),var(3) = 11220 || helper(55002),var(4) = 11220
trigger3 = helper(55002),var(1) = 11241 || helper(55002),var(2) = 11241 || helper(55002),var(3) = 11241 || helper(55002),var(4) = 11241
trigger4 = helper(55002),var(1) = 3000 || helper(55002),var(2) = 3000 || helper(55002),var(3) = 3000 || helper(55002),var(4) = 3000
trigger5 = helper(55002),var(1) = 13000 || helper(55002),var(2) = 13000 || helper(55002),var(3) = 13000 || helper(55002),var(4) = 13000
trigger6 = helper(55002),var(1) = 32000 || helper(55002),var(2) = 32000 || helper(55002),var(3) = 32000 || helper(55002),var(4) = 32000
trigger7 = helper(55002),var(1) = 33001 || helper(55002),var(2) = 33001 || helper(55002),var(3) = 33001 || helper(55002),var(4) = 33001
trigger8 = helper(55002),var(1) = 33201 || helper(55002),var(2) = 33201 || helper(55002),var(3) = 33201 || helper(55002),var(4) = 33201
trigger9 = helper(55002),var(1) = 30440 || helper(55002),var(2) = 30440 || helper(55002),var(3) = 30440 || helper(55002),var(4) = 30400
var(52) = 34

[State -1, ジャンプ強];Soff
type = ChangeState
value = 640+(var(3) = 1)*5
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(52) = 34
triggerall = stateno = 50 && time >= 3+(var(3) = 1)
triggerall = NumHelper(1900) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = var(49) != 10000
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = 1 || var(52) := 0

[State -1, ジャンプ強];ホワイトスネイク
type = ChangeState
value = 10640
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) = 10000
triggerall = numhelper(4321) = 0
triggerall = var(3) = 0
triggerall = var(52) = 34
triggerall = stateno = 50 && time >= 3
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = 1 || var(52) := 0

[State -1, ジャンプ強];C-MOON
type = ChangeState
value = 30641
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) = 10000
triggerall = numhelper(4321) = 0
triggerall = var(3) = 1
triggerall = !(stateno = 110 && time < 8)
triggerall = var(52) = 34
triggerall = stateno = 50 && time >= 2
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = 1 || var(52) := 0

[State -1, var];失敗
type = varset
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(52) = 34
trigger1 = stateno = 52
var(52) = 0

[State -1, ジャンプ];起き上がったら前小ジャンプ
type = ChangeState
value = 70
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(52) = 34
triggerall = enemynear(var(53)),statetype = L
triggerall = enemynear(var(53)),stateno = 5120
trigger1 = statetype != A
trigger1 = ctrl || (stateno = 100 && (time >= 5))

[State -1, 歩き];近かったら歩き
type = ChangeState
value = 21
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(52) = 34
trigger1 = statetype != A
trigger1 = P2BodyDist x < 35
trigger1 = ctrl

[State -1, 前ダ];まずダッシュ
type = ChangeState
value = 100
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(52) = 34
trigger1 = statetype != A
trigger1 = P2BodyDist x >= 35
trigger1 = ctrl
;---------------------------------------------------------------------------
;6 始動攻撃、飛び道具
;---------------------------------------------------------------------------

;////
;Soff
;WSならたまにカエル、CMなら銃
;遠かったらジャンプ強、近かったらジャンプ中
;////

[State -1, しゃがみ弱];近かったら
type = ChangeState
value = 400
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) != 10000
triggerall = enemynear(var(53)),movetype != A
triggerall = enemynear(var(53)),statetype != A
triggerall = enemynear(var(53)),statetype != L
triggerall = P2BodyDist X <= 40
triggerall = random <= 749
triggerall = var(52) != 10
triggerall = (var(52) <= 12)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [100,105]

[State -1, 前立中];遠かったら
type = ChangeState
value = 215
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) != 10000
triggerall = enemynear(var(53)),movetype != A
triggerall = enemynear(var(53)),statetype != A
triggerall = enemynear(var(53)),statetype != L
triggerall = statetype != A
triggerall = P2BodyDist X <= 100
triggerall = random <= 199
triggerall = var(52) != 10
triggerall = (var(52) <= 12)
trigger1 = ctrl
ignorehitpause = 0

[State -1, しゃがみ弱];var(52) = 6,7から
type = ChangeState
value = 400
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) != 10000
triggerall = var(52) = 6 || var(52) = 7
triggerall = P2BodyDist X <= 80
triggerall = (var(52) <= 12)
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = 1 || var(52) := 0
trigger2 = stateno = [100,105]
trigger2 = 1 || var(52) := 0

[State -1, しゃがみ弱];var(52) = 10から
type = ChangeState
value = 400
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) != 10000
triggerall = var(52) = 10
triggerall = enemynear(var(53)),pos y > -5
triggerall = P2BodyDist X <= 80
triggerall = (var(52) <= 12)
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = 1 || var(52) := 0
trigger2 = stateno = [100,105]
trigger2 = 1 || var(52) := 0

[State -1, 空中];ジャンプ、近かったら　空対空
type = ChangeState
value = 600
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = NumHelper(1900) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = var(49) != 10000
triggerall = var(3) = 0
triggerall = statetype = A
triggerall = enemynear(var(53)),statetype = A
triggerall = ctrl
triggerall = (var(52) <= 12)
trigger1 = P2BodyDist X > -5
trigger1 = random < 749
trigger1 = P2BodyDist X < 20
trigger1 = P2BodyDist Y = [-20,20]
trigger2 = var(52) = 8
trigger2 = P2BodyDist X < 30
trigger2 = P2BodyDist Y = [-30,30]
trigger2 = 1 || var(52) := 0

[State -1, 空中];ジャンプ、遠かったら　空対空
type = ChangeState
value = 615
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = NumHelper(1900) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = var(49) != 10000
triggerall = var(3) = 0
triggerall = statetype = A
triggerall = enemynear(var(53)),statetype = A
triggerall = ctrl
triggerall = helper(55002),var(1) != 615
triggerall = (var(52) <= 12)
trigger1 = P2BodyDist X > -5
trigger1 = random < 749
trigger1 = P2BodyDist X < 50
trigger1 = P2BodyDist Y = [-25,25]
trigger2 = var(52) = 8
trigger2 = P2BodyDist X < 75
trigger2 = P2BodyDist Y = [-40,40]
trigger2 = 1 || var(52) := 0

[State -1, 空強WS];ジャンプ 空対地
type = ChangeState
value = 610
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = NumHelper(1900) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = var(49) != 10000
triggerall = var(3) = 0
triggerall = statetype = A
triggerall = enemynear(var(53)),statetype != A
triggerall = ctrl
triggerall = vel y > 1
triggerall = (var(52) <= 12)
trigger1 = P2BodyDist X > -5
trigger1 = random < 749
trigger1 = P2BodyDist X < 25
trigger2 = var(52) = 8
trigger2 = P2BodyDist X < 20
trigger2 = 1 || var(52) := 0

[State -1, 空強WS];ジャンプ 空対地
type = ChangeState
value = 640
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = NumHelper(1900) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = var(49) != 10000
triggerall = var(3) = 0
triggerall = statetype = A
triggerall = enemynear(var(53)),statetype != A
triggerall = ctrl
triggerall = vel y > -3
triggerall = (var(52) <= 12)
trigger1 = P2BodyDist X > -5
trigger1 = random < 749
trigger1 = P2BodyDist X < 85
trigger2 = var(52) = 8
trigger2 = P2BodyDist X < 100
trigger2 = 1 || var(52) := 0

[State -1, 空強CM];ジャンプ 空対地
type = ChangeState
value = 645
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = NumHelper(1900) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = var(49) != 10000
triggerall = var(3) = 0
triggerall = statetype = A
triggerall = enemynear(var(53)),statetype != A
triggerall = ctrl
triggerall = vel y > -3
triggerall = (var(52) <= 12)
trigger1 = P2BodyDist X > -5
trigger1 = random < 749
trigger1 = P2BodyDist X < 70
trigger2 = var(52) = 8  || var(52) = 12
trigger2 = P2BodyDist X < 85
trigger2 = 1 || var(52) := 0

[State -1, 空中ウシャー];ジャンプ
type = ChangeState
value = 41000
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = numhelper(1001) = 0
triggerall = numhelper(41050) = 0
triggerall = NumHelper(2) = 0 
triggerall = var(49) != 10000
triggerall = var(3) = 1
triggerall = statetype = A
triggerall = ctrl
triggerall = P2BodyDist Y = [-100,100]
triggerall = (var(52) <= 12)
triggerall = (stateno = 31040&& time >= 15)  || (stateno = 50&& time >= 15) || (stateno != 31040 && stateno != 50)
trigger1 = P2BodyDist X > -5
trigger1 = random < 33
trigger1 = P2BodyDist X < 100
trigger2 = var(52) = 8  || var(52) = 12
trigger2 = P2BodyDist X < 110
trigger2 = 1 || var(52) := 0

[State -1, 手に入った！];遠距離攻撃
type = ChangeState
value = 1250
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(3) = 1
triggerall = var(49) != 10000
triggerall = P2BodyDist X >= 150
triggerall = random <= 99
triggerall = var(52) != 10
triggerall = (var(52) <= 12)
trigger1 = statetype != A
trigger1 = ctrl

[State -1, お前に命令するッ！];遠距離攻撃
type = ChangeState
value = 1230
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(3) = 0
triggerall = numhelper(11201) = 0
triggerall = numhelper(1232) = 0
triggerall = var(49) != 10000
triggerall = P2BodyDist X >= 150
triggerall = random <= 44
triggerall = var(52) != 10
triggerall = (var(52) <= 12)
trigger1 = statetype != A
trigger1 = ctrl

;////
;ホワイトスネイク
;屈弱、ダッシュ屈弱、立強
;遠かったらジャンプ中、近かったらジャンプ強
;////

[State -1, しゃがみ弱];近かったら
type = ChangeState
value = 10400
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) = 10000
triggerall = var(3) = 0
triggerall = enemynear(var(53)),movetype != A
triggerall = enemynear(var(53)),statetype != A
triggerall = enemynear(var(53)),statetype != L
triggerall = P2BodyDist X <= 40
triggerall = random <= 749
triggerall = var(52) != 10
triggerall = (var(52) <= 12)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [100,105]

[State -1, 立ち強];遠かったら
type = ChangeState
value = 10240
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) = 10000
triggerall = numhelper(4321) = 0
triggerall = var(3) = 0
triggerall = enemynear(var(53)),movetype != A
triggerall = enemynear(var(53)),statetype != A
triggerall = enemynear(var(53)),statetype != L
triggerall = statetype != A
triggerall = P2BodyDist X <= 70
triggerall = random <= 199
triggerall = var(52) != 10
triggerall = (var(52) <= 12)
trigger1 = ctrl
ignorehitpause = 0

[State -1, しゃがみ弱];var(52) = 6,7から
type = ChangeState
value = 10400
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) = 10000
triggerall = var(3) = 0
triggerall = var(52) = 6 || var(52) = 7
triggerall = P2BodyDist X <= 80
triggerall = (var(52) <= 12)
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = 1 || var(52) := 0
trigger2 = stateno = [100,105]
trigger2 = 1 || var(52) := 0

[State -1, しゃがみ弱];var(52) = 10から
type = ChangeState
value = 10400
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) = 10000
triggerall = var(3) = 0
triggerall = var(52) = 10
triggerall = enemynear(var(53)),pos y > -5
triggerall = P2BodyDist X <= 80
triggerall = (var(52) <= 12)
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = 1 || var(52) := 0
trigger2 = stateno = [100,105]
trigger2 = 1 || var(52) := 0

[State -1, 空中];ジャンプ　空対空
type = ChangeState
value = 10640
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) = 10000
triggerall = numhelper(4321) = 0
triggerall = var(3) = 0
triggerall = statetype = A
triggerall = enemynear(var(53)),statetype = A
triggerall = ctrl
triggerall = (var(52) <= 12)
trigger1 = random < 749
trigger1 = P2BodyDist X < 70
trigger1 = P2BodyDist Y = [-20,20]
trigger2 = var(52) = 8
trigger2 = P2BodyDist X < 90
trigger2 = P2BodyDist Y = [-30,30]
trigger2 = 1 || var(52) := 0

[State -1, 空中];ジャンプ　空対地
type = ChangeState
value = 10600
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = numhelper(4321) = 0
triggerall = var(49) = 10000
triggerall = var(3) = 0
triggerall = statetype = A
triggerall = enemynear(var(53)),statetype != A
triggerall = ctrl
triggerall = vel y > -3
triggerall = (var(52) <= 12)
trigger1 = random < 749
trigger1 = P2BodyDist X < 40
trigger2 = var(52) = 8
trigger2 = P2BodyDist X < 50
trigger2 = 1 || var(52) := 0

;////
;C-MOON
;屈弱、立弱、ダッシュ立弱
;空対空でジャンプ弱、遠かったら中、空対地でジャンプ強
;////

[State -1, しゃがみ弱];かなり近かったら
type = ChangeState
value = 30400
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) = 10000
triggerall = var(3) = 1
triggerall = numhelper(4321) = 0
triggerall = enemynear(var(53)),movetype != A
triggerall = enemynear(var(53)),statetype != A
triggerall = enemynear(var(53)),statetype != L
triggerall = P2BodyDist X <= 50
triggerall = var(52) != 10
triggerall = (var(52) <= 12)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [100,104]) || (stateno = 105 && (var(29) = 0)) || (stateno = 106)

[State -1, 立弱];近かったら
type = ChangeState
value = 30200
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) = 10000
triggerall = var(3) = 1
triggerall = numhelper(4321) = 0
triggerall = enemynear(var(53)),movetype != A
triggerall = enemynear(var(53)),statetype = S
triggerall = enemynear(var(53)),statetype != L
triggerall = P2BodyDist X <= 80
triggerall = var(52) != 10
triggerall = (var(52) <= 12)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100 || (stateno = 105 && (var(29) = 0))
trigger2 = anim != 108
trigger3 = stateno = 30400 && time >= 4

[State -1, 立中];遠かったら
type = ChangeState
value = 30210
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) = 10000
triggerall = var(3) = 1
triggerall = numhelper(4321) = 0
triggerall = enemynear(var(53)),movetype != A
triggerall = enemynear(var(53)),statetype != A
triggerall = enemynear(var(53)),statetype != L
triggerall = P2BodyDist X <= 100
triggerall = statetype != A
triggerall = random <= 199
triggerall = var(52) != 10
triggerall = (var(52) <= 12)
trigger1 = ctrl
trigger2 = (stateno = [100,104]) || (stateno = 105 && (var(29) = 0)) || (stateno = 106)

[State -1, 立弱];var(52) = 6,7から
type = ChangeState
value = 30200
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) = 10000
triggerall = var(3) = 1
triggerall = numhelper(4321) = 0
triggerall = var(52) = 6 || var(52) = 7
triggerall = P2BodyDist X <= 80
triggerall = var(52) != 10
triggerall = (var(52) <= 12)
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = 1 || var(52) := 0
trigger2 = stateno = [100,105]
trigger2 = 1 || var(52) := 0

[State -1, 立弱];var(52) = 10から
type = ChangeState
value = 30200
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) = 10000
triggerall = var(3) = 1
triggerall = numhelper(4321) = 0
triggerall = var(52) = 10
triggerall = enemynear(var(53)),pos y > -5
triggerall = P2BodyDist X <= 80
triggerall = (var(52) <= 12)
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = 1 || var(52) := 0
trigger2 = stateno = [100,105]
trigger2 = 1 || var(52) := 0

[State -1, 空中];var(52) = 11から　相手が立状態
type = ChangeState
value = 30611
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) = 10000
triggerall = numhelper(4321) = 0
triggerall = var(3) = 1
triggerall = !(stateno = 110 && time < 8)
triggerall = statetype = A
triggerall = ctrl
triggerall = var(52) = 11
triggerall = enemynear(var(53)),statetype != C
triggerall = (var(52) <= 12)
trigger1 = P2BodyDist X <= 125
trigger1 = 1 || var(52) := 0

[State -1, 空中];var(52) = 11から　相手が屈状態
type = ChangeState
value = 30641
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) = 10000
triggerall = numhelper(4321) = 0
triggerall = var(3) = 1
triggerall = !(stateno = 110 && time < 8)
triggerall = statetype = A
triggerall = ctrl
triggerall = var(52) = 11
triggerall = enemynear(var(53)),statetype = C
triggerall = (var(52) <= 12)
triggerall = vel y > -3
trigger1 = P2BodyDist X <= 125
trigger1 = 1 || var(52) := 0

[State -1, 空中];var(52) = 12から　相手が地上
type = ChangeState
value = 30641
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) = 10000
triggerall = numhelper(4321) = 0
triggerall = var(3) = 1
triggerall = !(stateno = 110 && time < 8)
triggerall = statetype = A
triggerall = ctrl
triggerall = var(52) = 12
triggerall = enemynear(var(53)),statetype != A
triggerall = (var(52) <= 12)
triggerall = vel y > -3
trigger1 = P2BodyDist X <= 100
trigger1 = 1 || var(52) := 0

[State -1, 空弱];ジャンプ、近かったら　空対空
type = ChangeState
value = 30601
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) = 10000
triggerall = numhelper(4321) = 0
triggerall = var(3) = 1
triggerall = !(stateno = 110 && time < 8)
triggerall = statetype = A
triggerall = enemynear(var(53)),statetype = A
triggerall = ctrl
triggerall = (var(52) <= 12)
trigger1 = P2BodyDist X > -5
trigger1 = random < 749
trigger1 = P2BodyDist X < 60
trigger1 = P2BodyDist Y = [-20,20]
trigger2 = var(52) = 8
trigger2 = P2BodyDist X < 75
trigger2 = P2BodyDist Y = [-30,30]
trigger2 = 1 || var(52) := 0

[State -1, 空中];ジャンプ、遠かったら　空対空
type = ChangeState
value = 30611
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) = 10000
triggerall = numhelper(4321) = 0
triggerall = var(3) = 1
triggerall = !(stateno = 110 && time < 8)
triggerall = statetype = A
triggerall = enemynear(var(53)),statetype = A
triggerall = ctrl
triggerall = (var(52) <= 12)
trigger1 = P2BodyDist X > -5
trigger1 = random < 749
trigger1 = P2BodyDist X < 90
trigger1 = P2BodyDist Y = [-20,20]
trigger2 = var(52) = 8
trigger2 = P2BodyDist X < 105
trigger2 = P2BodyDist Y = [-30,30]
trigger2 = 1 || var(52) := 0

[State -1, 空強];ジャンプ　空対地
type = ChangeState
value = 30641
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(49) = 10000
triggerall = numhelper(4321) = 0
triggerall = var(3) = 1
triggerall = !(stateno = 110 && time < 8)
triggerall = statetype = A
triggerall = enemynear(var(53)),statetype != A
triggerall = ctrl
triggerall = (var(52) <= 12)
trigger1 = P2BodyDist X > -5
trigger1 = random < 749
trigger1 = P2BodyDist X < 20
trigger2 = var(52) = 8
trigger2 = P2BodyDist X < 30
trigger2 = 1 || var(52) := 0

;---------------------------------------------------------------------------
;1 立ち回り 遠隔操作解除は-2state
;---------------------------------------------------------------------------
;////
;Soff
;基本的にリーチが短いので110くらい距離をとり、ダッシュ屈弱や前立中で攻める感じ
;////

[State -1, ダッシュ];ジャンプ攻撃Hitから
type = ChangeState
value = 100
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = Statetype != A
triggerall = ctrl
triggerall = enemynear(var(53)),movetype = H
triggerall = enemynear(var(53)),statetype != A
triggerall = enemynear(var(53)),statetype != L
triggerall = (var(52) <= 12)
triggerall = P2BodyDist X > 60+(var(49) = 10000)*20
triggerall = P2BodyDist X < 190+(var(49) = 10000)*20
trigger1 = (helper(55002),var(1) = [600,699]) || (helper(55002),var(2) = [600,699]) || (helper(55002),var(3) = [600,699]) || (helper(55002),var(4) = [600,699])
trigger1 = 1 || var(52) := 6
trigger2 = (helper(55002),var(1) = [600,699]) || (helper(55002),var(2) = [10600,10699]) || (helper(55002),var(3) = [10600,10699]) || (helper(55002),var(4) = [10600,10699])
trigger2 = 1 || var(52) := 6
trigger3 = (helper(55002),var(1) = [600,699]) || (helper(55002),var(2) = [30600,30699]) || (helper(55002),var(3) = [30600,30699]) || (helper(55002),var(4) = [30600,30699])
trigger3 = 1 || var(52) := 6

[State -1, Soff];遠ければランダムでSoff
type = ChangeState
value = 830
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(44) = 0
triggerall = var(3) != 2
triggerall = var(49) = 10000
triggerall = var(29) = 0
triggerall = statetype != A
triggerall = helper(1),numexplod(543221) = 0
triggerall = helper(1),movetype != H
TriggerAll = !(numhelper(55003) && helper(55003),var(0) = 1)
triggerall = random <= 10
TriggerAll = var(52) != 10
triggerall = helper(55002),var(18) != 1
triggerall = (var(52) <= 12)
trigger1 = P2BodyDist X > 160+(var(49) = 10000)*20
trigger1 = helper(1),stateno != 54321
trigger1 = ctrl

[State -1, Son];遠ければランダムでSon
type = ChangeState
value = 10820
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = NumHelper(1600) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = NumHelper(4321) = 0 
triggerall = !var(49)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = stateno != 16010
TriggerAll = !(numhelper(55003) && helper(55003),var(0) = 1)
triggerall = random <= 50
TriggerAll = var(52) != 10
triggerall = helper(55002),var(18) != 1
triggerall = (var(52) <= 12)
trigger1 = P2BodyDist X > 160+(var(49) = 10000)*20
trigger1 = NumHelper(2) = 0
trigger1 = ctrl

[State -1, ハイジャンプ];困ったらハイジャンプ
type = ChangeState
value = 70
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(3) = 1
triggerall = var(52) != 10
triggerall = (var(52) <= 12)
trigger1 = P2BodyDist X > 60
trigger1 = random <= 33
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = !(var(0)&8)
trigger1 = 1 || var(0) := (var(0)|8)
trigger1 = 1 || var(52) := 12

[State -1, 空ダ];var(52) = 11からの低ダ（遠隔操作でない）
type = ChangeState
value = 110
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(29) = 0
triggerall = animelemtime(3) >= 1
triggerall = stateno = 50
TriggerAll = var(52) = 11
trigger1 = statetype = A
trigger1 = var(49) = 10000
trigger1 = var(3) = 1
trigger1 = (var(0)&2)
trigger1 = ctrl

[State -1, 空ダ];var(52) = 11からの低ダ（遠隔操作）
type = ChangeState
value = 110
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(29) = 1
triggerall = animelemtime(3) >= 1
triggerall = stateno = 50
TriggerAll = var(52) = 11
triggerall = statetype = A
triggerall = var(49) = 10000
triggerall = var(3) = 1
triggerall = ctrl
trigger1 = (var(0)&2)

[State -1, ジャンプ];遠いので低空ダッシュのためにジャンプ
type = ChangeState
value = 70
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = Statetype != A
triggerall = ctrl || (stateno = 100 && time >5)
TriggerAll = !(numhelper(55003) && helper(55003),var(0) = 1)
triggerall = random <= 700
triggerall = var(3) = 1 && var(49) = 10000
triggerall = enemynear(var(53)),movetype != A
triggerall = enemynear(var(53)),vel x < enemynear(var(53)),const(velocity.run.fwd.x)
triggerall = enemynear(var(53)),movetype != H
triggerall = enemynear(var(53)),statetype != A
triggerall = enemynear(var(53)),statetype != L
TriggerAll = var(52) != 10
triggerall = helper(55002),var(18) != 1
triggerall = (var(52) <= 12)
trigger1 = P2BodyDist X >= 170
trigger1 = P2BodyDist X <= 185+(var(29) = 1)*50
trigger1 = 1 || var(52) := 11

[State -1, ダッシュ];潜ったけどちょっと遠いぜ
type = ChangeState
value = 100
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = Statetype != A
triggerall = ctrl
triggerall = var(52) = 10
trigger1 = P2BodyDist X > 50+(var(49) = 10000)*20
trigger1 = 1 || var(52) := 10

[State -1, ダッシュ];潜るぜ
type = ChangeState
value = 100
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = Statetype != A
triggerall = ctrl
TriggerAll = !(numhelper(55003) && helper(55003),var(0) = 1)
triggerall = random <= 749
triggerall = enemynear(var(53)),movetype != H
triggerall = (enemynear(var(53)),movetype != A) || ((enemynear(var(53)),movetype = A) && (enemynear(var(53)),time > 10))
triggerall = enemynear(var(53)),statetype = A
triggerall = P2BodyDist Y < -75
triggerall = var(52) != 9 && var(52) != 10
triggerall = helper(55002),var(18) != 1
triggerall = (var(52) <= 12)
trigger1 = P2BodyDist X <= 70+(var(49) = 10000)*20
trigger1 = enemynear(var(53)),vel y < 0
trigger1 = 1 || var(52) := 9
trigger2 = P2BodyDist X <= 40+(var(49) = 10000)*20
trigger2 = 1 || var(52) := 9

[State -1, ジャンプ];攻めるぜ
type = ChangeState
value = 70
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = Statetype != A
triggerall = ctrl || (stateno = 100 && time >5)
TriggerAll = !(numhelper(55003) && helper(55003),var(0) = 1)
triggerall = random <= 35
triggerall = enemynear(var(53)),movetype != A
triggerall = enemynear(var(53)),vel x < enemynear(var(53)),const(velocity.run.fwd.x)
triggerall = enemynear(var(53)),movetype != H
triggerall = enemynear(var(53)),statetype != A
triggerall = enemynear(var(53)),statetype != L
TriggerAll = var(52) != 10
triggerall = helper(55002),var(18) != 1
triggerall = (var(52) <= 12)
trigger1 = P2BodyDist X <= 140+(var(49) = 10000)*20
trigger1 = P2BodyDist X > 30+(var(49) = 10000)*20
trigger1 = 1 || var(52) := 8

[State -1, ダッシュ];攻めるぜ
type = ChangeState
value = 100
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = Statetype != A
triggerall = ctrl
TriggerAll = !(numhelper(55003) && helper(55003),var(0) = 1)
triggerall = random <= 35
triggerall = enemynear(var(53)),vel x < enemynear(var(53)),const(velocity.run.fwd.x)
triggerall = enemynear(var(53)),movetype != H
triggerall = enemynear(var(53)),statetype != A
triggerall = enemynear(var(53)),statetype != L
TriggerAll = var(52) != 10
triggerall = helper(55002),var(18) != 1
triggerall = (var(52) <= 12)
trigger1 = enemynear(var(53)),movetype != A
trigger1 = P2BodyDist X <= 123+(var(49) = 10000)*20
trigger1 = P2BodyDist X > 60+(var(49) = 10000)*20
trigger1 = 1 || var(52) := 7
trigger2 = helper(55002),var(25) = 1
trigger2 = P2BodyDist X > 60+(var(49) = 10000)*20
trigger2 = 1 || var(52) := 7

[State -1, ダッシュ];チャンスタイム
type = ChangeState
value = 100
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = Statetype != A
triggerall = ctrl
TriggerAll = !(numhelper(55003) && helper(55003),var(0) = 1)
triggerall = !(enemynear(var(53)),stateno = [0,150])
triggerall = enemynear(var(53)),time >= 15
triggerall = enemynear(var(53)),movetype != A
triggerall = enemynear(var(53)),statetype != A
triggerall = enemynear(var(53)),statetype != L
TriggerAll = var(52) != 10
triggerall = helper(55002),var(18) != 1
triggerall = (var(52) <= 12)
trigger1 = P2BodyDist X > 60+(var(49) = 10000)*20
trigger1 = P2BodyDist X < 190+(var(49) = 10000)*20
trigger1 = 1 || var(52) := 6

[State -1, ジャンプ];遠いとランダムでバックジャンプ
type = ChangeState
value = 70
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = Statetype != A
triggerall = ctrl
TriggerAll = !(numhelper(55003) && helper(55003),var(0) = 1)
triggerall = random <= 200-(helper(55002),var(2) = 52)*200-(helper(55002),var(3) = 52)*200-(helper(55002),var(4) = 52)*200
TriggerAll = var(52) != 10
triggerall = helper(55002),var(18) != 1
triggerall = (var(52) <= 12)
trigger1 = P2BodyDist X > 160+(var(49) = 10000)*20
trigger1 = 1 || var(52) := 5

[State -1, 前ダ];さすがに遠いので前ダ
type = ChangeState
value = 100
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = Statetype != A
triggerall = ctrl
TriggerAll = !(numhelper(55003) && helper(55003),var(0) = 1)
triggerall = enemynear(var(53)),movetype != A
TriggerAll = var(52) != 10
triggerall = enemynear(var(53)),vel x < enemynear(var(53)),const(velocity.run.fwd.x)
triggerall = helper(55002),var(18) != 1
triggerall = (var(52) <= 12)
trigger1 = P2BodyDist X > 200+(var(49) = 10000)*20
trigger1 = 1 || var(52) := 4

[State -1, 歩き];バクダからそのまま後退
type = ChangeState
value = 21
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = Statetype != A
triggerall = ctrl
TriggerAll = var(52) != 10
triggerall = (var(52) <= 12)
triggerall = enemynear(var(53)),movetype != H
Trigger1 = (helper(55001),var(1) <= 40) || (var(29) = 1 && (BackEdgeDist <= 40))
trigger1 = P2BodyDist X <= 60+(var(49) = 10000)*20
trigger1 = 1 || var(52) := 3
Trigger2 = var(52) = 2
Trigger2 = helper(55002),var(1) = 106
trigger2 = 1 || var(52) := 3
trigger3 = P2BodyDist X < 35+(var(49) = 10000)*20
trigger3 = 1 || var(52) := 3

[State -1, 歩き];遠ければ前に移動
type = ChangeState
value = 21
TriggerAll = Var(59)=1 && RoundState = 2
TriggerAll = var(52) != 10
triggerall = (var(52) <= 12)
Trigger1 = !(var(52) = 3 && P2BodyDist X <= 170+(var(49) = 10000)*20)
trigger1 = Statetype != A
trigger1 = ctrl
trigger1 = P2BodyDist X > 125+(var(49) = 10000)*20
trigger1 = 1 || var(52) := 1

[State -1, バクダ];近いので後退
type = ChangeState
value = 105
TriggerAll = Var(59)=1 && RoundState = 2
TriggerAll = (helper(55001),var(1) > 50) && (var(29) != 1)
TriggerAll = !(numhelper(55003) && helper(55003),var(0) = 1)
triggerall = enemynear(var(53)),movetype != A
triggerall = enemynear(var(53)),movetype != H
TriggerAll = var(52) != 10
triggerall = enemynear(var(53)),vel x < enemynear(var(53)),const(velocity.run.fwd.x)
triggerall = helper(55002),var(18) != 1
triggerall = (var(52) <= 12)
trigger1 = Statetype != A
trigger1 = ctrl
trigger1 = P2BodyDist X <= 60+(var(49) = 10000)*20
trigger1 = P2BodyDist X > 35+(var(49) = 10000)*20
trigger1 = 1 || var(52) := 2

[State -1, 歩き];バクダからそのまま後退
type = ChangeState
value = 21
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = Statetype != A
triggerall = ctrl
TriggerAll = var(52) != 10
triggerall = (var(52) <= 12)
triggerall = enemynear(var(53)),movetype != H
Trigger1 = var(52) = 3
trigger1 = P2BodyDist X <= 170+(var(49) = 10000)*20
trigger1 = 1 || var(52) := 3

[State -1, 歩き];遠ければ前に移動
type = ChangeState
value = 21
TriggerAll = Var(59)=1 && RoundState = 2
triggerall = var(52) = 1
triggerall = ctrl
TriggerAll = var(52) != 10
triggerall = (var(52) <= 12)
trigger1 = Statetype != A
trigger1 = 1 || var(52) := 1

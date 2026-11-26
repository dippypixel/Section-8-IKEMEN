;-| 超必殺技 |--------------------------------------------------------
;ここには超必殺技を記述してください、同じ名前を「name =」欄に書けますが
;コマンドは絶対に違ったものにしてください。
;カンフーマンは弱パンチと強パンチで技が出せるように同じ名前のコマンドで
;内容が弱と強になっています。
;「time=20」と書くことで「コマンドを20フレーム以内に入力」と設定できます。
[Command]
name = "AI0"
command = a,a,a
time = 0
[Command]
name = "AI1"
command = b,b,b
time = 0
[Command]
name = "AI2"
command = c,c,c
time = 0
[Command]
name = "AI3"
command = x,x,x
time = 0
[Command]
name = "AI4"
command = y,y,y
time = 0
[Command]
name = "AI5"
command = z,z,z
time = 0
[Command]
name = "AI6"
command = s,s,s
time = 0
[Command]
name = "AI7"
command = F,F,F
time = 0
[Command]
name = "AI8"
command = D,D,D,D
time = 0
[Command]
name = "AI9"
command = B,B,B,B
time = 0
[Command]
name = "AI10"
command = U,U,U,U
time = 0
[Command]
name = "AI11"
command = a,a,a,a
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

;===================<DEFAULT VALUES>===================
[Defaults]
command.time=15
command.buffer.time=1


;===================<SINGLE BUTTON>===================
[Command]
name="a"
command=a
time=1
[Command]
name="b"
command=b
time=1
[Command]
name="c"
command=c
time=1
[Command]
name="x"
command=x
time=1
[Command]
name="y"
command=y
time=1
[Command]
name="z"
command=z
time=1
[Command]
name="start"
command=s
time=1


;===================<HOLD DIR>===================
[Command]
name="holdfwd"
command=/$F
time=1
[Command]
name="holdback"
command=/$B
time=1
[Command]
name="holdup"
command=/$U
time=1
[Command]
name="holddown"
command=/$D
time=1


;===================<HOLD BUTTON>===================
[Command]
name="holda"
command=/a
time=1
[Command]
name="holdb"
command=/b
time=1
[Command]
name="holdc"
command=/c
time=1
[Command]
name="holdx"
command=/x
time=1
[Command]
name="holdy"
command=/y
time=1
[Command]
name="holdz"
command=/z
time=1
[Command]
name="holdstart"
command=/s
time=1
[command]
name="fwd"
command=F
time=0
[command]
name="back"
command=B
time=0
[command]
name="up"
command=U
time=0
[command]
name="down"
command=D
time=0

;---------------------------------------------------------------------------

[command]
name = "Parry"
command = F

[Command]
name = "owari"
command = ~B, D, DB, x+y

[Command]
name = "mudamudamudamuda"
command = ~B, DB, D, DF, F, x+y

[Command]
name = "ryaku3"
command = ~B, DB, D, DF, F, b

[Command]
name = "TripleKFPalm"
command = ~D, DF, F, x+y
time = 20

[Command] 
name = "TripleKFPalm"   ;Same name as above
command = ~D, DF, F, x+y
time = 20

[Command]
name = "nesp"
command = ~D, DB, B, x+y
time = 20

[Command]
name = "デム"
command = ~D, B, a
time = 20

[Command]
name="warudo"
command=c+z
time=30
;-| 必殺技 |-----------------------------------------------------
[Command]
name = "mudakick"
command = ~B, DB, D, DF, F, x

[Command]
name = "mudakick"
command = ~B, DB, D, DF, F, y

[Command]
name = "mudakick"
command = ~B, DB, D, DF, F, z

[Command]
name = "syutugen"
command = ~D, DF, F, a

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
name = "ryaku1"
command = ~D, DF, F, b

[Command]
name = "ryaku2"
command = ~D, DB, B, b

[Command]
name = "flower_f"
command = ~D, DF, F, c

[Command]
name = "flower_b"
command = ~D, DB, B, c

[Command]
name = "FDDF_x"
command = ~F, D, DF, x

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_xy"
command = ~D, DF, F, x+y

[Command]
name = "nekko_x"
command = ~F, D, DF, x

[Command]
name = "nekko_y"
command = ~F, D, DF, y

[Command]
name = "nekko_b"
command = ~F, D, DF, z

[Command]
name = "upper_x"
command = ~F, D, DF, x

[Command]
name = "upper_y"
command = ~F, D, DF, y

[Command]
name = "upper_z"
command = ~F, D, DF, z

[Command]
name = "fish_x"
command = ~D, DB, B, x

[Command]
name = "fish_y"
command = ~D, DB, B, y

[Command]
name = "fish_b"
command = ~D, DB, B, z

[Command]
name = "QCB_a"
command = ~D, DF, F, a

[Command]
name = "QCB_b"
command = ~D, DF, F, z

[Command]
name = "FF_ab"
command = F, F, a+b

[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b

;※※※※※※※※※※※※※※※※※※※※ハイジャンプコマンド
;下をちょっと押して上を押す、と言う意味。
[Command]
name = "jump"    
command = ~D,$U
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

; 下の記述↓は絶対に消さないでください。
[Statedef -1]

;var(59) = AI variable
;var(50) = Difficulty variable

[State -1, AI ON] ; Turn the AI on when
Type = VarSet
TriggerAll = Var(59) < 1; it is not on yet and
TriggerAll = RoundState=2 ; the fight has started and is not over yet and
Trigger1 = AILevel>0 ; the computer is playing the character
v = 59
value= 1 ; value of 1 will mean the AI is on
Ignorehitpause=1

[State -1, AI OFF] ; Turn the AI off when
Type=VarSet
Trigger1=var(59)>0 ; it is on and
Trigger1=RoundState!=2 ; the round is not started yet or is already over
Trigger2=!IsHelper ; OR if we are a player, but
Trigger2=AILevel=0 ; the computer is not in control
v=59
value=0 ; value of 0 will mean the AI is off. values other than 0 and 1 are not used in this example, we have only one AI mode, the normal one.
Ignorehitpause=1

[State -1]
Type=VarSet
Trigger1=1
var(50)=(AILevel=1)*3+(AILevel=2)*7+(AILevel=3)*16+(AILevel=4)*30+(AILevel=5)*58+(AILevel=6)*90+ (AILevel=7)*150+(AILevel=8)*300

[State -1, Parry]
type=hitoverride
triggerall = var(59)<1&&roundstate=2&&statetype=S
triggerall=command="Parry"
triggerall = power>=100
trigger1=ctrl||stateno=7700
trigger1=var(21):=1
trigger2=(stateno=[150,153])
trigger2=var(28):=-1
attr=SA,AA,AP
stateno=7700
slot=0
time=ifelse((stateno=[150,153]),4,8)
;===========================================================================
;無駄無駄無駄無駄　
[State -1, Stand Strong Punch]
type = ChangeState
value = 17000
triggerall = !var(59)
triggerall = NumHelper(8014) = 0 
triggerall = NumHelper(8010) = 0 
triggerall = power >= 2000
triggerall = var(49) = 10000
triggerall = command = "mudamudamudamuda" || command = "ryaku3"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (anim = 10200) && time > 5
trigger2 = movecontact
trigger3 = (anim = 10210) && time > 5
trigger3 = movecontact
trigger4 = (anim = 10205) && time > 5
trigger4 = movecontact
trigger5 = (anim = 10215) && time > 5
trigger5 = movecontact
trigger6 = (anim = 10220) && time > 5
trigger6 = movecontact
trigger7 = (anim = 10225) && time > 5
trigger7 = movecontact
trigger8 = (anim = 10250) && time > 5
trigger8 = movecontact
trigger9 = (anim = 10255) && time > 5
trigger9 = movecontact

;Time Stop
[State -1, Time Stop]
type = ChangeState
value = 3200
triggerall = var(49) = 10000 = 0
triggerall = command = "warudo"
triggerall = power>=500
trigger1 = (statetype = s) && ctrl
trigger2 = StateNo = 200 && Movecontact
trigger3 = StateNo = 230 && Movecontact
trigger4 = StateNo = 400 && Movecontact
trigger5 = StateNo = 430 && Movecontact
trigger6 = StateNo = 210 && Movecontact
trigger7 = StateNo = 211 && Movecontact
trigger8 = StateNo = 240 && Movecontact
trigger9 = StateNo = 241 && Movecontact
trigger10 = StateNo = 220 && Movecontact
trigger11 = StateNo = 410 && Movecontact
trigger12 = StateNo = 450 && Movecontact
trigger13 = StateNo = 250 && Movecontact

;Time Stop
[State -1, Time Stop]
type = ChangeState
value = 32000
triggerall = var(49) = 10000 
triggerall = command = "warudo"
triggerall = power>=500
trigger1 = (statetype = s) && ctrl
trigger2 = StateNo = 200 && Movecontact
trigger3 = StateNo = 230 && Movecontact
trigger4 = StateNo = 400 && Movecontact
trigger5 = StateNo = 430 && Movecontact
trigger6 = StateNo = 210 && Movecontact
trigger7 = StateNo = 211 && Movecontact
trigger8 = StateNo = 240 && Movecontact
trigger9 = StateNo = 241 && Movecontact
trigger10 = StateNo = 220 && Movecontact
trigger11 = StateNo = 410 && Movecontact
trigger12 = StateNo = 450 && Movecontact
trigger13 = StateNo = 250 && Movecontact

;---------------------------------------------------------------------------
;無駄無駄ラッシュ（ゲージレベル１）
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 3000
triggerall = !var(59)
triggerall = NumHelper(10000) = 0 
triggerall = var(49) = 0  ;スタンドoffの時
triggerall = command = "TripleKFPalm" || command = "ryaku1"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact

;無駄無駄ラッシュ S　
[State -1, Stand Strong Punch]
type = ChangeState
value = 13000
triggerall = !var(59)
triggerall = power >= 1000
triggerall = var(49) = 10000
triggerall = command = "TripleKFPalm" || command = "ryaku1"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (anim = 10200) && time > 5
trigger2 = movecontact
trigger3 = (anim = 10210) && time > 5
trigger3 = movecontact
trigger4 = (anim = 10205) && time > 5
trigger4 = movecontact
trigger5 = (anim = 10215) && time > 5
trigger5 = movecontact
trigger6 = (anim = 10280) && time > 18
trigger6 = movecontact

;無駄無駄ラッシュ S　空中　
[State -1, Stand Strong Punch]
type = ChangeState
value = 13500
triggerall = var(59)<=0&& RoundState = 2 
triggerall = power >= 1000
triggerall = var(49) = 10000
triggerall = command = "TripleKFPalm" || command = "ryaku1"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (anim = 10600) && movecontact
trigger3 = (anim = 10610) && movecontact
trigger4 = (anim = 10640) && movecontact
trigger5 = stateno = 11901 && time >= 5
;---------------------------------------------------------------------------
;終わりが無いのが終わりON時
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 99999
triggerall = !var(59)
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = PalNo != 12
triggerall = power >= 3000
triggerall = life <= 500
trigger1 = command = "owari"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;木の根 Sp
[State -1, Stand Strong Punch]
type = ChangeState
value = 3150
triggerall = !var(59)
triggerall = NumHelper(10000) = 0
triggerall = var(49) != 10000
triggerall = command = "nesp" || command = "ryaku2"
triggerall = command != "holddown"
triggerall = power >= 3000
trigger1 = statetype = S
trigger1 = ctrl

;真実を堪能させてやる
[State -1, Stand Strong Punch]
type = ChangeState
value = 13150
triggerall = !var(59)
triggerall = power >= 1000
triggerall = NumHelper(1001) = 0 
triggerall = numhelper(11101) = 0
triggerall = NumHelper(10000) = 0 
triggerall = var(49) = 10000
triggerall = command = "nesp" || command = "ryaku2"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 10280) && time > 18
trigger2 = movecontact
;------------------------------------------------------------------------------
[State -1, デム];スタンドoff
type = ChangeState
value = 3900
triggerall = !var(59)
triggerall = numhelper(4657) = 0
triggerall = var(46) = 0
triggerall = command = "デム"
triggerall = power >= 1000
triggerall = var(49) = 0  ;スタンドoffの時
triggerall = NumHelper(10000) = 0
triggerall = PalNo != 12
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 180 ;挑発
trigger3 = (stateno = 200) && time > 5
trigger4 = (stateno = 210) && time > 5
trigger5 = (stateno = 400) 
trigger5 = movecontact
trigger6 = (stateno = 410) 
trigger6 = movecontact

[State -1, デム];スタンドon
type = ChangeState
value = 3900
triggerall = !var(59)
triggerall = var(46) = 0  
triggerall = numhelper(4657) = 0
triggerall = command = "デム"
triggerall = power >= 1000
triggerall = var(49) = 10000  ;スタンドonの時
triggerall = NumHelper(10000) = 0 
triggerall = NumHelper(1001) = 0 
triggerall = PalNo != 12
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA ;立ちしゃがみの通常攻撃(引き寄せも含む)
trigger2 = movecontact
trigger3 = stateno = 180   ;挑発
;---------------------------------------------------------------------------
;弱ヘビ
[State -1, magic]
type = null;Helper
stateno = 2000
id = 2000
pos = 20,-floor(screenpos y)+60-floor(8*const(size.yscale))*9
postype = p1
triggerall = NumHelper(2000) = 0 
trigger1 = command = "x" 

;中ヘビ
[State -1, magic]
type = null;Helper
stateno = 2010
id = 2010
pos = ifelse(frontedgebodydist<=130,frontedgebodydist,130),-floor(screenpos y)+60-floor(8*const(size.yscale))*9
postype = p1
triggerall = NumHelper(2010) = 0 
trigger1 = command = "y" 

;強ヘビ
[State -1, magic]
type = null;Helper
stateno = 2020
id = 2020
pos = ifelse(frontedgebodydist<=240,frontedgebodydist,240),-floor(screenpos y)+60-floor(8*const(size.yscale))*9
postype = p1
triggerall = NumHelper(2020) = 0 
trigger1 = command = "b" 
;---------------------------------------------------------------------------
;レクイエムの片鱗
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1700
triggerall = !var(59)
triggerall = NumHelper(10000) = 0
triggerall = var(49) != 10000
trigger1 = command = "henrin_x"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = command = "henrin_y"
trigger2 = statetype != A
trigger2 = ctrl
trigger3 = command = "henrin_z"
trigger3 = statetype != A
trigger3 = ctrl

[State -1, Light Kung Fu Palm]
type = ChangeState
value = 11700
triggerall = !var(59)
triggerall = var(49) = 10000
trigger1 = command = "henrin_x"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = command = "henrin_y"
trigger2 = statetype != A
trigger2 = ctrl
trigger3 = command = "henrin_z"
trigger3 = statetype != A
trigger3 = ctrl

;ドコヘモムカウコトハナイ… ON時
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 16666
triggerall = var(49) = 10000
triggerall = power >= 500
triggerall = PalNo != 12
trigger1 = command = "c"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = command = "c"
trigger2 = statetype != A
trigger2 = ctrl
trigger3 = command = "c"
trigger3 = statetype != A
trigger3 = ctrl

;ドコヘモムカウコトハナイ… ON時 空中
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 17777
triggerall = !var(59)
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = power >= 500
triggerall = PalNo != 12
trigger1 = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = command = "c"
trigger2 = statetype = A
trigger2 = ctrl
trigger3 = command = "c"
trigger3 = statetype = A
trigger3 = ctrl
;---------------------------------------------------------------------------
;感覚の暴走　s
;[State -1, Stand Strong Punch]
;type = ChangeState
;value = 11300
;triggerall = var(49) = 10000
;triggerall = command = "FDDF_x"
;triggerall = command != "holddown"
;trigger1 = statetype = S
;trigger1 = ctrl
;trigger2 = (stateno = 10200) && time > 5
;trigger2 = movecontact
;---------------------------------------------------------------------------
;木の根 弱　
[State -1, Stand Strong Punch]
type = ChangeState
value = 1100
triggerall = !var(59)
triggerall = numhelper(11101) = 0
;triggerall = NumHelper(10000) = 0
triggerall = var(49) != 10000
triggerall = command = "nekko_x"|| command = "nekko_y" || command = "nekko_b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;導いてやろう 弱　s
[State -1, Stand Strong Punch]
type = ChangeState
value = 11100
triggerall = !var(59)
triggerall = numhelper(11101) = 0
triggerall = var(49) = 10000
triggerall = command = "nekko_x"|| command = "nekko_y" || command = "nekko_b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;trigger2 = (stateno = 10280) && time > 8 && movecontact
;trigger3 = (stateno = 10420) && time >= 5
;trigger4 = (stateno = 10450) && time >= 15
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;木の根 弱　Air
[State -1, Stand Strong Punch]
type = ChangeState
value = 1140
triggerall = !var(59)
triggerall = numhelper(11101) = 0
triggerall = NumHelper(10000) = 0
triggerall = var(49) != 10000
triggerall = command = "nekko_x"|| command = "nekko_y" || command = "nekko_b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 11901 && time >= 5

;---------------------------------------------------------------------------
;跪けいッ　off
[State -1, Stand Strong Punch]
type = ChangeState
value = 1600
triggerall = !var(59)
triggerall = numhelper(10000) = 0
triggerall = var(49) != 10000
triggerall = command != "holddown"
trigger1 = command = "fish_x" || command = "fish_y" || command = "fish_b"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;サソリ 弱　s
[State -1, Stand Strong Punch]
type = ChangeState
value = 11200
triggerall = !var(59)
trigger1 = numhelper(11201) = 0
triggerall = var(49) = 10000
triggerall = command = "fish_x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;サソリ s air　弱
[State -1, Stand Strong Punch]
type = ChangeState
value = 11250
triggerall = !var(59)
triggerall = prevstateno != [11250,11270]
triggerall = numhelper(11201) = 0
triggerall = var(49) = 10000
triggerall = command = "fish_x" 
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 11901 && time >= 5
;---------------------------------------------------------------------------
;サソリ 中　s
[State -1, Stand Strong Punch]
type = ChangeState
value = 11200
triggerall = !var(59)
trigger1 = numhelper(11201) = 0
triggerall = var(49) = 10000
triggerall = command = "fish_y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;サソリ s air　中
[State -1, Stand Strong Punch]
type = ChangeState
value = 11260
triggerall = !var(59)
triggerall = prevstateno != [11250,11270]
triggerall = numhelper(11201) = 0
triggerall = var(49) = 10000
triggerall = command = "fish_y" 
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 11901 && time >= 5
;---------------------------------------------------------------------------
;サソリ 強　s
[State -1, Stand Strong Punch]
type = ChangeState
value = 11200
triggerall = !var(59)
trigger1 = numhelper(11201) = 0
triggerall = var(49) = 10000
triggerall = command = "fish_b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;サソリ s air　強
[State -1, Stand Strong Punch]
type = ChangeState
value = 11270
triggerall = !var(59)
triggerall = prevstateno != [11250,11270]
triggerall = numhelper(11201) = 0
triggerall = var(49) = 10000
triggerall = command = "fish_b" 
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 11901 && time >= 5
;---------------------------------------------------------------------------
;無駄無駄　kick Soff
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1400
triggerall = !var(59)
triggerall = numhelper(10000) = 0
triggerall = command = "mudakick"
triggerall = var(49) != 10000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact
;
;無駄無駄　kick Son
[State -1, Stand Strong Punch]
type = ChangeState
value = 11400
triggerall = !var(59)
triggerall = var(49) = 10000
triggerall = command = "mudakick"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (anim = 10200) && time > 5
trigger2 = movecontact
trigger3 = (anim = 10210) && time > 5
trigger3 = movecontact
trigger4 = (anim = 10205) && time > 5
trigger4 = movecontact
trigger5 = (anim = 10215) && time > 5
trigger5 = movecontact
trigger6 = (anim = 10250) && time > 5
trigger6 = movecontact
trigger7 = (anim = 10280) && time > 18
trigger7 = movecontact
trigger8 = (anim = 10400) && time >= 5
trigger8 = movecontact
trigger9 = (anim = 10410) && time >= 5
trigger9 = movecontact
trigger10 = (anim = 10420) && time >= 5
trigger10 = movecontact
trigger11 = (anim = 10450) && time >= 5
trigger11 = movecontact

;---------------------------------------------------------------------------
;無駄無駄（弱）
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1000
triggerall = !var(59)
triggerall = numhelper(10000) = 0
triggerall = command = "QCF_x" || command = "QCF_y" || command = "QCB_b"
triggerall = var(49) != 10000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;無駄無駄　s
[State -1, Stand Strong Punch]
type = ChangeState
value = 11000
triggerall = !var(59)
triggerall = var(49) = 10000
triggerall = command = "QCF_x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (anim = 10200) && time > 5
trigger2 = movecontact
trigger3 = (anim = 10210) && time > 5
trigger3 = movecontact
trigger4 = (anim = 10205) && time > 5
trigger4 = movecontact
trigger5 = (anim = 10215) && time > 5
trigger5 = movecontact
trigger6 = (anim = 10250) && time > 5
trigger6 = movecontact
trigger7 = (anim = 10280) && time > 18
trigger7 = movecontact
trigger8 = (anim = 10400) && time >= 5
trigger8 = movecontact
trigger9 = (anim = 10410) && time >= 5
trigger9 = movecontact
trigger10 = (anim = 10420) && time >= 5
trigger10 = movecontact
trigger11 = (anim = 10450) && time >= 5
trigger11 = movecontact
;---------------------------------------------------------------------------

;無駄無駄 S　中
[State -1, Stand Strong Punch]
type = ChangeState
value = 11010
triggerall = !var(59)
triggerall = var(49) = 10000
triggerall = command = "QCF_y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (anim = 10200) && time > 5
trigger2 = movecontact
trigger3 = (anim = 10210) && time > 5
trigger3 = movecontact
trigger4 = (anim = 10205) && time > 5
trigger4 = movecontact
trigger5 = (anim = 10215) && time > 5
trigger5 = movecontact
trigger6 = (anim = 10250) && time > 5
trigger6 = movecontact
trigger7 = (anim = 10280) && time > 18
trigger7 = movecontact
trigger8 = (anim = 10400) && time >= 5
trigger8 = movecontact
trigger9 = (anim = 10410) && time >= 5
trigger9 = movecontact
trigger10 = (anim = 10420) && time >= 5
trigger10 = movecontact
trigger11 = (anim = 10450) && time >= 5
trigger11 = movecontact
;---------------------------------------------------------------------------

;無駄無駄 S　強
[State -1, Stand Strong Punch]
type = ChangeState
value = 11040
triggerall = !var(59)
triggerall = var(49) = 10000
triggerall = command = "QCB_b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (anim = 10200) && time > 5
trigger2 = movecontact
trigger3 = (anim = 10210) && time > 5
trigger3 = movecontact
trigger4 = (anim = 10205) && time > 5
trigger4 = movecontact
trigger5 = (anim = 10215) && time > 5
trigger5 = movecontact
trigger6 = (anim = 10250) && time > 5
trigger6 = movecontact
trigger7 = (anim = 10280) && time > 18
trigger7 = movecontact
trigger8 = (anim = 10400) && time >= 5
trigger8 = movecontact
trigger9 = (anim = 10410) && time >= 5
trigger9 = movecontact
trigger10 = (anim = 10420) && time >= 5
trigger10 = movecontact
trigger11 = (anim = 10450) && time >= 5
trigger11 = movecontact
;---------------------------------------------------------------------------
;無駄無駄 S　空中
[State -1, Stand Strong Punch]
type = ChangeState
value = 11500
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = command = "QCF_x" || command = "QCF_y" || command = "QCB_b"
triggerall = command != "holddown"
triggerall = var(32) = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (anim = 10600) && time > 5
trigger2 = movecontact
trigger3 = (anim = 10610) && time > 4
trigger3 = movecontact
trigger4 = (anim = 10640) && time > 5
trigger4 = movecontact
trigger5 = stateno = 11901 && time >= 5

;---------------------------------------------------------------------------
;機は熟した 　
[State -1, Stand Strong Punch]
type = ChangeState
value = 1900
triggerall = var(59)<=0&& RoundState = 2 
triggerall = numhelper(10000) = 0
triggerall = var(49) != 10000
triggerall = statetype = A
triggerall = power != powermax
triggerall = command = "QCF_x" || command = "QCF_y" || command = "QCB_b"
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 640) && movecontact

;機は熟した S
[State -1, Stand Strong Punch]
type = ChangeState
value = 11900
triggerall = !var(59)
triggerall = var(49) = 10000
triggerall = statetype = A
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = power != powermax
trigger1 = ctrl
trigger2 = (anim = 10600) && movecontact
trigger3 = (anim = 10610) && movecontact
trigger4 = (anim = 10640) && movecontact
trigger5 = stateno = 11901 && time >= 5
;---------------------------------------------------------------------------
;ガーキャン
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1800
triggerall = !var(59)
triggerall = var(49) != 10000
triggerall = numhelper(10000) = 0
triggerall = statetype != A
trigger1 = command = "upper_x" || command = "upper_y" || command = "upper_z"
trigger1 = (stateno = 151 || stateno = 153)
;---------------------------------------------------------------------------
;ガーキャンS
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 11800
triggerall = !var(59)
triggerall = var(49) = 10000
triggerall = statetype != A
trigger1 = command = "upper_x" || command = "upper_y" || command = "upper_z"
trigger1 = (stateno = 151 || stateno = 153)
;===========================================================================
;---------------------------------------------------------------------------
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = !var(59)
triggerall = stateno != 10000
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = !var(59)
triggerall = stateno != 10000
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;投げ on
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = !var(59)
triggerall = var(49) = 10000
triggerall = (command = "holdfwd" || command = "holdback") && command = "b"
triggerall = ctrl
triggerall = stateno != 100
triggerall = statetype != A
triggerall = P2bodydist X = [-const(size.ground.front),22]
trigger1 = p2statetype = S || p2statetype = C
trigger1 = p2movetype != H
;---------------------------------------------------------------------------
;投げ
[State -1, Kung Fu Throw]
type = ChangeState
value = 900
triggerall = !var(59)
triggerall = var(49) = 0
triggerall = (command = "holdfwd" || command = "holdback") && command = "b"
triggerall = ctrl
triggerall = stateno != 100
triggerall = statetype != A
triggerall = NumHelper(10000) = 0 
triggerall = NumHelper(2) = 0 
triggerall = P2bodydist X = [-const(size.ground.front),22]
trigger1 = p2statetype = S || p2statetype = C
trigger1 = p2movetype != H
;---------------------------------------------------------------------------
[State -1, 回り込み]
type = ChangeState
triggerall = !var(59)
triggerall = var(10) = 0
triggerall = (RoundState = 2) && (Alive)
triggerall = var(49) != 10000
triggerall = statetype != A && ctrl
triggerall = NumHelper(29) = 0 
trigger1 = command = "z"
trigger2 = command = "x+y+z"
value = 30


[State -1, 回り込み]
type = ChangeState
triggerall = !var(59)
triggerall = var(10) = 0
triggerall = (RoundState = 2) && (Alive)
triggerall = var(49) = 10000
triggerall = statetype != A && ctrl
triggerall = NumHelper(29) = 0 
trigger1 = command = "z"
trigger2 = command = "x+y+z"
value = 10030
;===========================================================================
[State -1, 擬似プッツンキャンセル]
type = ChangeState 
triggerall = !var(59)
triggerall = statetype != A
triggerall = power >= 1000
triggerall = command = "c"
trigger1 = statetype != A
trigger1 = hitdefattr = SC, NA ;立ちしゃがみの通常攻撃(引き寄せも含む)
trigger2 = stateno = 195   ;挑発
trigger3 = stateno = 1000 || stateno = 1003 || stateno = 1005
trigger4 = stateno = 1100 || stateno = 1103 || stateno = 1105
trigger5 = stateno = 11000 || stateno = 11010 || stateno = 11040
trigger6 = stateno = 11100 || stateno = 11110 || stateno = 11140
trigger7 = stateno = 240
trigger8 = stateno = 1600
trigger9 = stateno = 6666
trigger10 = stateno = 10440
trigger11 = stateno = 11004
trigger12 = stateno = 11200
value = 1500
;---------------------------------------------------------------------------
;アドバンシング（立ち）
[State -1, Run Back]
type = ChangeState
triggerall = !var(59)
triggerall = var(49) != 10000
triggerall = numhelper(4010) = 0
triggerall = numhelper(1001) = 0
triggerall = NumHelper(10000) = 0 
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
triggerall = !var(59)
triggerall = var(49) != 10000
triggerall = numhelper(4010) = 0
triggerall = numhelper(1001) = 0
triggerall = NumHelper(10000) = 0 
trigger1 = command = "x+y+z" || command = "b" || command = "z"
trigger1 = statetype = C
trigger1 = stateno = 152 || stateno = 153
trigger1 = prevstateno != 4000 && prevstateno != 4005
value = 4105
;---------------------------------------------------------------------------
;アドバンシング（立ち）S
[State -1, Run Back]
type = ChangeState
triggerall = !var(59)
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
triggerall = !var(59)
triggerall = var(49) = 10000
triggerall = numhelper(4010) = 0
trigger1 = command = "x+y+z" || command = "b" || command = "z"
trigger1 = statetype = C
trigger1 = stateno = 152 || stateno = 153
trigger1 = prevstateno != 4000 && prevstateno != 4005
value = 14005
;---------------------------------------------------------------------------
[State -1, 空中ダッシュ]
type = ChangeState
triggerall = !var(59)
triggerall = var(49) = 10000
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = !var(18)
triggerall = stateno != 116
triggerall = command = "FF"
trigger1 = ctrl 
trigger2 = stateno = 11901 && time >= 5
value = 116
;---------------------------------------------------------------------------
[State -1, 空中バックダッシュ]
type = ChangeState
triggerall = !var(59)
triggerall = var(49) = 10000
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = !var(18)
triggerall = stateno != 117
triggerall = command = "BB"
trigger1 = ctrl
trigger2 = stateno = 132
trigger3 = stateno = 11901 && time >= 5
value = 117
;---------------------------------------------------------------------------
[State -1,2段ジャンプ]
type = ChangeState
value = 41
triggerall = !var(59)
;triggerall = !Ishelper	     ;プレイヤーがヘルパーでないとき
triggerall = var(49) = 10000 ;スタンドモードのとき
triggerall = var(4) = 1      ;2段ｼﾞｬﾝﾌﾟ可能の時。var(4)は2段ｼﾞｬﾝﾌﾟした瞬間０になり、着地すると１になる
triggerall = command = "up";"holdup"
triggerall = stateno = 50 || stateno = 10822;&& time >= 25
trigger1 = ctrl
triggerall = command != "upc"
;===========================================================================
;スタンド出現攻撃
[State -1, Stand Strong Punch]
type = ChangeState
value = 10280
triggerall = var(59)<=0&& RoundState = 2 
triggerall = numhelper(10000) = 0
triggerall = var(49) != 10000
triggerall = command = "syutugen"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 105

;スタンド出現攻撃B
[State -1, Stand Strong Punch]
type = ChangeState
value = 10280
triggerall = var(59)<=0&& RoundState = 2 
triggerall = numhelper(10000) = 0
triggerall = var(49) != 10000
triggerall = command = "syutugen"
triggerall = statetype != A
trigger1 = stateno = 200 && time > 4
trigger2 = stateno = 210 && time > 5
trigger3 = stateno = 400 && time > 4
trigger4 = stateno = 410 && time > 5
trigger5 = stateno = 440 && time > 7
;===========================================================================
; 通常攻撃技
;---------------------------------------------------------------------------
;発現前立ち弱 
[State -1, Stand Strong Punch]
type = ChangeState
value = 10225
triggerall = var(49) != 10000
triggerall = numhelper(10000) = 0
triggerall = command = "x+a"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = PalNo != 11 || fvar(1) = 80
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 210) && time > 5
trigger4 = (stateno = 400) && time > 5
trigger5 = (stateno = 410) && time > 5

;発現立ち弱　
[State -1, Stand Strong Punch]
type = ChangeState
value = 10225
triggerall = !var(59)
triggerall = var(49) != 10000
triggerall = numhelper(10000) = 0
triggerall = command = "x+a"
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = PalNo != 11 || fvar(1) = 80
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 210) && time > 5
trigger4 = (stateno = 400) && time > 5
trigger5 = (stateno = 410) && time > 5

;---------------------------------------------------------------------------

;発現前立ち中
[State -1, Stand Strong Punch]
type = ChangeState
value = 10255
triggerall = var(49) != 10000
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(10000) = 0 
triggerall = command = "y+a"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = PalNo != 11 || fvar(1) = 80
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 210) && time > 5
trigger4 = (stateno = 400) && time > 5
trigger5 = (stateno = 410) && time > 5

;発現立ち中　
[State -1, Stand Strong Punch]
type = ChangeState
value = 10250
triggerall = var(49) != 10000
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(10000) = 0 
triggerall = command = "y+a"
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = PalNo != 11 || fvar(1) = 80
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 210) && time > 5
trigger4 = (stateno = 400) && time > 5
trigger5 = (stateno = 410) && time > 5
;---------------------------------------------------------------------------
;発現立ち強　
[State -1, Stand Strong Punch]
type = ChangeState
value = 10270
triggerall = var(49) != 10000
triggerall = NumHelper(1900) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(10000) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = command = "z+a"
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = PalNo != 11 || fvar(1) = 80
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 210) && time > 5
trigger4 = (stateno = 400) && time > 5
trigger5 = (stateno = 410) && time > 5

;---------------------------------------------------------------------------
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = !var(59)
triggerall = command = "start"
triggerall = NumHelper(1001) = 0 
triggerall = numhelper(11101) = 0
triggerall = NumHelper(10000) = 0 
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;発現しゃがみ弱　
[State -1, Stand Strong Punch]
type = ChangeState
value = 10420
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = var(49) != 10000
triggerall = numhelper(1001) = 0
triggerall = NumHelper(10000) = 0 
triggerall = command = "x+a"
triggerall = command = "holddown"
triggerall = statetype != A
triggerall = PalNo != 11 || fvar(1) = 80
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 210) && time > 5
trigger4 = (stateno = 400) && time > 5
trigger5 = (stateno = 410) && time > 5
;---------------------------------------------------------------------------
;発現しゃがみ中
[State -1, Stand Strong Punch]
type = ChangeState
value = 10450
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = var(49) != 10000
triggerall = numhelper(1001) = 0
triggerall = NumHelper(10000) = 0 
triggerall = command = "y+a"
triggerall = command = "holddown"
triggerall = statetype != A
triggerall = PalNo != 11 || fvar(1) = 80
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 210) && time > 5
trigger4 = (stateno = 400) && time > 5
trigger5 = (stateno = 410) && time > 5

;---------------------------------------------------------------------------
;発現空中弱
[State -1, Stand Strong Punch]
type = ChangeState
value = 10620
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = var(49) != 10000
triggerall = NumHelper(10000) = 0 
triggerall = numhelper(1001) = 0
triggerall = command = "x+a"
triggerall = statetype = A
triggerall = PalNo != 11 || fvar(1) = 80
trigger1 = ctrl
;---------------------------------------------------------------------------
;発現空中中
[State -1, Stand Strong Punch]
type = ChangeState
value = 10650
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = NumHelper(10000) = 0 
triggerall = var(49) != 10000
triggerall = numhelper(1001) = 0
triggerall = command = "y+a"
triggerall = statetype = A
triggerall = PalNo != 11 || fvar(1) = 80
trigger1 = ctrl
;---------------------------------------------------------------------------
;発現空中強
[State -1, Stand Strong Punch]
type = ChangeState
value = 10670
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = NumHelper(10000) = 0 
triggerall = var(49) != 10000
triggerall = numhelper(1001) = 0
triggerall = command = "z+a"
triggerall = statetype = A
triggerall = PalNo != 11 || fvar(1) = 80
trigger1 = ctrl

;==============================================================================
; Son通常攻撃
;==============================================================================

[State -1, 4強]
type = ChangeState
value = 321
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = var(49) = 10000
triggerall = command = "b"
triggerall = command = "holdback"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = prevstateno = 300
trigger1 = stateno = 310
trigger1 = time >= 15 || movecontact

[State -1, 弱弱弱]
type = ChangeState
value = 320
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = var(49) = 10000
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = command = "x"
trigger1 = stateno = 300 && prevstateno = 300
trigger1 = time >= 6 || movecontact

[State -1, 立強]
type = ChangeState
value = 320
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = var(49) = 10000
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = command = "b"
trigger1 = ctrl
trigger2 = stateno = [100,105]
trigger3 = stateno = 310
trigger3 = time >= 15 || movecontact
trigger4 = stateno = [500,519]
trigger4 = time >= 7 || movecontact
trigger5 = stateno = 300
trigger5 = time >= 9 || movecontact

[State -1, 立弱]
type = ChangeState
value = 300
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = var(49) = 10000
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = prevstateno != [100,105]
trigger2 = stateno = 300
trigger2 = time >= 9 || movecontact
trigger3 = stateno = 500
trigger3 = time >= 7
trigger4 = stateno = 510
trigger4 = time >= 15
trigger5 = stateno = [100,105]

[State -1, D立中]
type = ChangeState
value = 311
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = var(49) = 10000
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = stateno = [100,105]

[State -1, 弱弱中中]
type = ChangeState
value = 315
triggerall = !var(59)
triggerall = stateno != [100,105]
triggerall = roundstate = 2
triggerall = var(49) = 10000
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = stateno = 310
trigger1 = time >= 15 || movecontact

[State -1, 立中]
type = ChangeState
value = 310
triggerall = !var(59)
triggerall = stateno != [100,105]
triggerall = roundstate = 2
triggerall = var(49) = 10000
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 300
trigger2 = time >= 9 || movecontact

;------------------------------------------------------------------------------
[State -1, 屈弱]
type = ChangeState
value = 500
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = var(49) = 10000
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 500
trigger2 = time >= 12
trigger3 = stateno = [100,105]

[State -1, 屈中]
type = ChangeState
value = 510
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = var(49) = 10000
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [100,105]
trigger3 = stateno = 500
trigger3 = time >= 5
trigger4 = stateno = 300
trigger4 = time >= 9 || movecontact

[State -1, 屈強]
type = ChangeState
value = 520
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = var(49) = 10000
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [100,105]
trigger3 = stateno = 500
trigger3 = time >= 5
trigger4 = stateno = 510
trigger4 = time >= 7
trigger5 = stateno = 310
trigger5 = time >= 15 || movecontact
trigger6 = stateno = 300
trigger6 = time >= 9 || movecontact

;------------------------------------------------------------------------------
[State -1, ジャンプ弱]
type = ChangeState
value = 700
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = var(49) = 10000
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl

[State -1, ジャンプ中]
type = ChangeState
value = 710
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = var(49) = 10000
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl

[State -1, ジャンプ強]
type = ChangeState
value = 720
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = var(49) = 10000
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl

;==============================================================================
; Soff通常攻撃
;==============================================================================
[State -1, 立弱]
type = ChangeState
value = 200
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = var(1) = 0
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [100,105]
trigger3 = stateno = 200
trigger3 = time >= 6

[State -1, 立中]
type = ChangeState
value = 210
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = var(1) = 0
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [400,405]
trigger2 = movecontact
trigger3 = stateno = [100,105]

[State -1, 立強]
type = ChangeState
value = 220
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = var(1) = 0
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = time >= 6 || movecontact
trigger3 = stateno = [100,105]

;------------------------------------------------------------------------------
[State -1, 屈弱]
type = ChangeState
value = 400
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = var(1) = 0
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = time >= 6
trigger3 = stateno = [100,105]
trigger4 = stateno = 200
trigger4 = time >= 6 || movecontact

[State -1, 屈中]
type = ChangeState
value = 410
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = var(1) = 0
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [100,105]

[State -1, 屈強]
type = ChangeState
value = 420
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = var(1) = 0
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [100,105]

;------------------------------------------------------------------------------

[State -1, ジャンプ弱]
type = ChangeState
value = 600
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = var(1) = 0
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl

[State -1, ジャンプ中]
type = ChangeState
value = 610
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = var(1) = 0
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl

[State -1, ジャンプ強]
type = ChangeState
value = 620
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = var(1) = 0
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl

;===========================================================================
;スタンド発現（立ち）
[State -1, Taunt]
type = ChangeState
value = 10820
triggerall = !var(59)
triggerall = NumHelper(1600) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(10000) = 0 
triggerall = !var(49)
triggerall = var(7) = 0;スタンド発現可のとき
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = statetype = S;!= A    ;S, C, A(立ち、しゃがみ、空中
triggerall = PalNo != 11 || fvar(1) = 80
trigger1 = NumHelper(2) = 0 ;SFがでてないとき
trigger1 = ctrl
ignorehitpause = 0

;スタンド発現（しゃがみ）
[State -1, Taunt]
type = ChangeState
value = 16001
triggerall = !var(59)
triggerall = NumHelper(1600) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(10000) = 0 
triggerall = !var(49)
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = statetype = C
triggerall = PalNo != 11 || fvar(1) = 80
trigger1 = ctrl
ignorehitpause = 0

;スタンド発現（空中）
[State -1, Taunt]
type = ChangeState
value = 16002
triggerall = !var(59)
triggerall = NumHelper(1600) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(10000) = 0 
triggerall = !var(49)
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = statetype = A
triggerall = PalNo != 11 || fvar(1) = 80
trigger1 = ctrl
ignorehitpause = 0
;---------------------------------------------------------------------------
;スタンド解除（立ち）
[State -1, Taunt]
type = ChangeState
value = 830
triggerall = !var(59)
triggerall = NumHelper(5656) = 0 
triggerall = var(47) = 0
triggerall = var(49) = 10000
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = statetype = S
triggerall = PalNo != 12
trigger1 = ctrl
ignorehitpause = 0

;スタンド解除（しゃがみ）
[State -1, Taunt]
type = ChangeState
value = 16004
triggerall = !var(59)
triggerall = NumHelper(5656) = 0 
triggerall = var(47) = 0
triggerall = var(49) = 10000
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = statetype = C
triggerall = PalNo != 12
trigger1 = ctrl
ignorehitpause = 0

;スタンド解除（空中）
[State -1, Taunt]
type = ChangeState
value = 16005
triggerall = !var(59)
triggerall = NumHelper(5656) = 0 
triggerall = var(47) = 0
triggerall = var(49) = 10000
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = statetype = A
triggerall = PalNo != 12
trigger1 = ctrl
ignorehitpause = 0


;------------------------------------------------------------------
[state -1]
type = varset
triggerall = !var(59)
triggerall = RoundState = [1,2]
triggerall = enemynear,life > 0
trigger1 = (Command = "AI0")||(Command = "AI1")||(Command = "AI2")||(Command = "AI3")||(Command = "AI4")
trigger2 = (Command = "AI5")||(Command = "AI6")||(Command = "AI7")||(Command = "AI8")||(Command = "AI9")
trigger3 = (Command = "AI10")||(Command = "AI11")||(Command = "AI12")||(Command = "AI13")||(Command = "AI14")
trigger4 = (Command = "AI15")||(Command = "AI16")||(Command = "AI17")||(Command = "AI18")||(Command = "AI19")
trigger5 = (Command = "AI20")
Trigger6 = NumHelper(30000) != 0
Trigger6 = Helper(30000),var(59)
ignorehitpause = 1
var(59)=1

[State -3]
type = VarSet
triggerall = var(59)    = 1
trigger1 = roundstate = [0,1]
trigger2   = roundstate  = 4
trigger3   = win
trigger4   = lose
trigger5  = drawgame
trigger6   = !alive
ignorehitpause = 1
var(59) = -1


[State -1]
type = VarSet
trigger1 = var(59)    = -1
trigger1 = roundstate = 2 && enemynear,life > 0
trigger1 = ctrl
ignorehitpause = 1
var(59) = 1


[State -3]
Type = Helper
Trigger1 = NumHelper(30000) = 0 && !Var(59)
Trigger1 = RoundState = 2 && alive && StateNo = 0
Trigger1 = PrevStateNo = 5900 || PrevStateNo = [190,199]
StateNo = 30000
PosType = P1
Pos = 0, 0
KeyCtrl = 1
Ownpal = 1
ID = 30000
IgnoreHitPause = 1
SuperMoveTime = 9999
PauseMoveTime = 9999

[State -3]
type=changestate
trigger1= ishelper(30000)
trigger1= stateno!=30000
value=30000

;============================================================================

[State ] ; Burst
type=changestate
value=16666
triggerall = var(49) = 10000
triggerall=var(59)&&alive&&roundstate=2
triggerall=alive&&stateno=[5000,5210]
triggerall=((power>=5))
triggerall = p2bodydist x < 100
trigger1 = helper(123456),var(1)
trigger1 = stateno=[5000,5210]
trigger1 = var(54) <= 0 && random<25
trigger2 = !helper(123456),var(1)
trigger2 = (var(58) > 0 && var(58)%111=0) || (var(58)=[650, 672]) || var(58)=[200, 240]
trigger2 = random<power/42
trigger3 = !helper(123456),var(1)
trigger3 = random<power/100 || (enemy,ctrl=0 && random<power/42)

[State ] ; Burst
type=changestate
value=99999
triggerall = var(49) = 10000
triggerall=var(59)&&alive&&roundstate=2
triggerall=alive&&stateno=[5000,5210]
triggerall=((power>=4000))
triggerall = p2bodydist x < 100
trigger1 = helper(123456),var(1)
trigger1 = stateno=[5000,5210]
trigger1 = var(54) <= 0 && random<25
trigger2 = !helper(123456),var(1)
trigger2 = (var(58) > 0 && var(58)%111=0) || (var(58)=[650, 672]) || var(58)=[200, 240]
trigger2 = random<power/42
trigger3 = !helper(123456),var(1)
trigger3 = random<power/100 || (enemy,ctrl=0 && random<power/42)

[State ] ; Burst
type=changestate
value=32000
triggerall = var(49) = 10000 
triggerall=var(59)&&alive&&roundstate=2
triggerall=alive&&stateno=[5000,5210]
triggerall=((power>=5000))
triggerall = p2bodydist x < 100
trigger1 = helper(123456),var(1)
trigger1 = stateno=[5000,5210]
trigger1 = var(54) <= 0 && random<25
trigger2 = !helper(123456),var(1)
trigger2 = (var(58) > 0 && var(58)%111=0) || (var(58)=[650, 672]) || var(58)=[200, 240]
trigger2 = random<power/42
trigger3 = !helper(123456),var(1)
trigger3 = random<power/100 || (enemy,ctrl=0 && random<power/42)


[State ] ; Burst
type=changestate
value=3200
triggerall = var(49) = 10000 = 0
triggerall=var(59)&&alive&&roundstate=2
triggerall=alive&&stateno=[5000,5210]
triggerall=((power>=5000))
triggerall = p2bodydist x < 100
trigger1 = helper(123456),var(1)
trigger1 = stateno=[5000,5210]
trigger1 = var(54) <= 0 && random<25
trigger2 = !helper(123456),var(1)
trigger2 = (var(58) > 0 && var(58)%111=0) || (var(58)=[650, 672]) || var(58)=[200, 240]
trigger2 = random<power/42
trigger3 = !helper(123456),var(1)
trigger3 = random<power/100 || (enemy,ctrl=0 && random<power/42)

;-------------------------------------------------------------------
[State -1, AI]
Type = ChangeState
TriggerAll = var(59)
trigger1 = stateno = [120,139] 
trigger1 = stateno = [150,159]
Trigger1 =p2statetype != A || p2statetype = A
trigger1 = p2movetype != A || p2movetype = I
Value = 140


[state -1];???
type = ChangeState
value = 120
triggerall = alive
triggerall = var(59)
triggerall = random <= 850*var(59)
trigger1   = ctrl || stateno = 21
trigger1   = p2movetype    = A
trigger1   = enemynear,hitdefattr = SCA, AA, AP
trigger1   = p2bodydist x >= 0
trigger1   = inguarddist
trigger2   = ctrl || stateno = 21
trigger2   = enemynear,movetype = A
trigger2   = enemy,numhelper > 0 || enemy,numproj > 0
trigger2   = inguarddist
trigger3   = ctrl || stateno = 21
trigger3   = enemynear,movetype = A
trigger3   = enemynear,hitdefattr = SCA, AA, AP
trigger3   = p2bodydist x  < 0
trigger4   = stateno       = 100
trigger4   = p2movetype    = A
trigger4   = enemynear,hitdefattr = SCA, AA, AP
trigger4   = inguarddist
trigger5   = stateno       = 100
trigger5   = enemynear,movetype = A
trigger5   = enemy,numhelper > 0 || enemy,numproj > 0
trigger5   = inguarddist

[State -1, Run Back]
type = ChangeState
triggerall = var(59)
triggerall = var(49) != 10000
triggerall = numhelper(4010) = 0
triggerall = numhelper(1001) = 0
triggerall = NumHelper(10000) = 0 
trigger1 = random <= var(59)*500
trigger1 = statetype = S
trigger1 = stateno = 150 || stateno = 151
trigger1 = prevstateno != 4000 && prevstateno != 4005
ignorehitpause = 1
value = 4100


[State -1, Run Back]
type = ChangeState
triggerall = var(59)
triggerall = var(49) != 10000
triggerall = numhelper(4010) = 0
triggerall = numhelper(1001) = 0
triggerall = NumHelper(10000) = 0 
trigger1 = random <= var(59)*500
trigger1 = statetype = C
trigger1 = stateno = 152 || stateno = 153
trigger1 = prevstateno != 4000 && prevstateno != 4005
value = 4105

[State -1, Run Back]
type = ChangeState
triggerall = var(59)
triggerall = var(49) = 10000
triggerall = numhelper(4010) = 0
trigger1 = random <= var(59)*500
trigger1 = statetype = S
trigger1 = stateno = 150 || stateno = 151
trigger1 = prevstateno != 4000 && prevstateno != 4005
ignorehitpause = 1
value = 14000


[State -1, Run Back]
type = ChangeState
triggerall = var(59)
triggerall = var(49) = 10000
triggerall = numhelper(4010) = 0
trigger1 = random <= var(59)*500
trigger1 = statetype = C
trigger1 = stateno = 152 || stateno = 153
trigger1 = prevstateno != 4000 && prevstateno != 4005
value = 14005

[State -1]
type = ChangeState
value = 900
triggerall = NumHelper(10000) = 0 
triggerall = NumHelper(2) = 0 
TriggerAll = var(59)
triggerall = var(49) = 0
TriggerAll = (RoundState = 2) && Alive
TriggerAll = statetype != A
triggerall = stateno != 100
triggerAll = p2bodydist X <= 15
triggerAll = (p2statetype != A) || (p2statetype = C)
triggerAll = p2movetype != H
triggerall = random <= 700*var(59)
trigger1 = ctrl
trigger2 = ctrl
Trigger2 = p2StateNo = [120,159]

[State -1]
type = ChangeState
value = 800
TriggerAll = var(59)
triggerall = var(49) = 10000
TriggerAll = (RoundState = 2) && Alive
TriggerAll = statetype != A
triggerall = stateno != 100
triggerAll = p2bodydist X <= 15
triggerAll = (p2statetype != A) || (p2statetype = C)
triggerAll = p2movetype != H
triggerall = random <= 700*var(59)
trigger1 = ctrl
trigger2 = ctrl
Trigger2 = p2StateNo = [120,159]

;---------------------------------------------------------------------
;Stand off
;triggerall = var(49) = 0

[state -1]
type = changestate
value = 400
triggerall = var(49) = 0
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != A && p2statetype != L
triggerall = p2bodydist x <= 30
triggerall = random <= var(59)*700
trigger1 = ctrl || stateno = 100 || stateno = 105

[state -1]
type = changestate
value = 3150
triggerall = var(49) = 0
triggerall = life <= 500
triggerall = power >= 1000
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = p2movetype = A && p2movetype != H
triggerall = p2bodydist x <= 40
triggerall = random <= var(59)*700
trigger1 = ctrl


[state -1]
type = changestate
value = 1600
triggerall = numhelper(10000) = 0
triggerall = var(49) = 0
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = p2bodydist x > 50
triggerall = random <= var(59)*700
trigger1 = ctrl 


[state -1]
type = changestate
value = 1100
triggerall = var(49) = 0
triggerall = var(59)
triggerall = roundstate = 2
triggerall = p2statetype != A && p2statetype != L
triggerall = statetype != A
triggerall = p2bodydist x > 100
triggerall = random <= var(59)*100
trigger1 = ctrl 

[state -1]
type = changestate
value = 10820
triggerall = NumHelper(1600) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(10000) = 0 
triggerall = var(49) = 0
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = movetype != H
triggerall = p2bodydist x > 40
triggerall = random <= var(59)*300
trigger1 = ctrl 



[state -1]
type = changestate
value = 610
triggerall = var(49) = 0
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = p2statetype != L
triggerall = p2bodydist x <= 50
trigger1 = ctrl


[state -1]
type = changestate
value = 1000
triggerall = numhelper(10000) = 0
triggerall = var(49) = 0
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype = A && p2statetype != L
triggerall = p2movetype = H
triggerall = random <= var(59)*700
triggerall = p2dist y + enemynear,vel y + 0.5*enemynear,gethitvar(yaccel) = [-100,-50]
trigger1 = ctrl

[state -1]
type = changestate
value = 3000
triggerall = power >= 1000
triggerall = numhelper(10000) = 0
triggerall = var(49) = 0
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype = A && p2statetype != L
triggerall = p2movetype = H
triggerall = random <= var(59)*700
triggerall = p2dist y + enemynear,vel y + 0.5*enemynear,gethitvar(yaccel) = [-100,-50]
trigger1 = ctrl

[state -1]
type = changestate
value = 1100
triggerall = numhelper(10000)
triggerall = var(49) = 0
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype = A && p2statetype != L
triggerall = p2movetype = H
triggerall = p2bodydist x > 40
triggerall = random <= var(59)*700
triggerall = p2dist y + enemynear,vel y + 0.5*enemynear,gethitvar(yaccel) = [-100,-50]
trigger1 = ctrl

[state -1]
type = changestate
value = 200
triggerall = numhelper(10000)
triggerall = var(49) = 0
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype = A && p2statetype != L
triggerall = p2movetype = H
triggerall = p2bodydist x <= 40
triggerall = random <= var(59)*700
triggerall = p2dist y + enemynear,vel y + 0.5*enemynear,gethitvar(yaccel) = [-100,-50]
trigger1 = ctrl

;--------------------------------------------------------------------



[state -1]
type = changestate
value = 400
triggerall = NumHelper(10000)
triggerall = var(49) = 0
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != A && p2statetype != L
triggerall = p2bodydist x <= 25
triggerall = random <= var(59)*800
trigger1 = stateno = 400 && movecontact
trigger1 = time >= 6

[state -1]
type = changestate
value = 200
triggerall = var(49) = 0
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = random <= var(59)*800
trigger1 = stateno = 200 && movecontact
trigger1 = time >= 6


[state -1]
type = changestate
value = 1000
triggerall = numhelper(10000) = 0
triggerall = var(49) = 0
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != A && p2statetype != L
triggerall = random <= var(59)*700
trigger1 = stateno = 400 && movecontact
trigger1 = time >= 6

[state -1]
type = changestate
value = 3900
triggerall = var(59)
triggerall = numhelper(4657) = 0
triggerall = var(46) = 0
triggerall = power >= 1000
triggerall = var(49) = 0  ;スタンドoffの時
triggerall = NumHelper(10000) = 0
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != A && p2statetype != L
triggerall = p2movetype = H
triggerall = random <= var(59)*800
trigger1 = stateno = 400 && movehit

[state -1]
type = changestate
value = 3000
triggerall = numhelper(10000) = 0
triggerall = power >= 1000
triggerall = var(49) = 0
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != A && p2statetype != L
triggerall = p2movetype = H
triggerall = random <= var(59)*500
trigger1 = stateno = 400 && movehit
trigger1 = time >= 6

;---------------------------------------------------------------------
;Stand on
;triggerall = var(49) = 10000

;Stand on
;triggerall = var(49) = 10000


[state -1]
type = changestate
value = 99999
triggerall = var(49) = 10000
triggerall = life <= 20000
triggerall = power >= 100
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = p2movetype = A && p2movetype != H
triggerall = p2bodydist x <= 40
triggerall = random <= var(59)*800
trigger1 = ctrl

[state -1]
type = changestate
value = 500
triggerall = var(49) = 10000
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != A && p2statetype != L
triggerall = p2bodydist x <= 30
triggerall = random <= var(59)*700
trigger1 = ctrl || stateno = 100 || stateno = 100

[state -1]
type = changestate
value = 11200
triggerall = var(49) = 10000
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = p2bodydist x > 50
triggerall = random <= var(59)*700
trigger1 = ctrl

[state -1]
type = changestate
value = 13150
triggerall = power >= 1000
triggerall = var(49) = 10000
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = p2bodydist x = [50,200]
triggerall = random <= var(59)*200
trigger1 = ctrl

[state -1]
type = changestate
value = 11100
triggerall = var(49) = 10000
triggerall = numhelper(11101) = 0
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype = L
triggerall = p2bodydist x >= 30
triggerall = random <= var(59)*700
trigger1 = ctrl



[state -1]
type = changestate
value = 830
triggerall = NumHelper(5656) = 0
triggerall = var(49) = 10000
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = movetype != H
triggerall = p2bodydist x > 40
triggerall = random <= var(59)*100
trigger1 = ctrl 


[state -1]
type = changestate
value = 11500
triggerall = var(49) = 10000
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = p2statetype != L
triggerall = p2bodydist x <= 45
triggerall = random <= var(59)*700
trigger1 = ctrl

[state -1]
type = changestate
value = 11040
triggerall = var(49) = 10000
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype = A && p2statetype != L
triggerall = p2movetype = H
triggerall = random <= var(59)*700
triggerall = p2dist y + enemynear,vel y + 0.5*enemynear,gethitvar(yaccel) = [-100,-50]
trigger1 = ctrl


;---------------------------------------------------------------------


[state -1]
type = changestate
value = 500
triggerall = var(49) = 10000
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != A && p2statetype != L
triggerall = p2bodydist x <= 25
triggerall = random <= var(59)*800
trigger1 = stateno = 500 && movecontact
trigger1 = time >= 6

[state -1]
type = changestate
value = 510
triggerall = var(49) = 10000
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != A && p2statetype != L
triggerall = p2bodydist x > 25
triggerall = random <= var(59)*800
trigger1 = stateno = 500 && movecontact

[state -1]
type = changestate
value = ifelse(random <= 500,520,320)
triggerall = var(49) = 10000
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != A && p2statetype != L
triggerall = random <= var(59)*800
trigger1 = stateno = 510 && movecontact

[state -1]
type = changestate
value = 11040
triggerall = var(49) = 10000
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = p2movetype = H
triggerall = random <= var(59)*800
trigger1 = stateno = 520 && movehit



[state -1]
type = changestate
value = 17000
triggerall = power >= 2000
triggerall = NumHelper(8014) = 0 
triggerall = NumHelper(8010) = 0 
triggerall = var(49) = 10000
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = p2movetype = H
triggerall = random <= var(59)*500
trigger1 = stateno = 320 && movehit

[State -1, デム];スタンドon
type = ChangeState
value = 3900
triggerall = var(59)
triggerall = var(46) = 0  
triggerall = numhelper(4657) = 0
triggerall = power >= 1000
triggerall = var(49) = 10000  ;スタンドonの時
triggerall = NumHelper(10000) = 0 
triggerall = NumHelper(1001) = 0 
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != A && p2statetype != L
triggerall = p2movetype = H
triggerall = random <= var(59)*700
trigger1 = stateno = 320 && movehit

[state -1]
type = changestate
value = 1500
triggerall = power >= 1000
triggerall = var(49) = 10000
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != A && p2statetype != L
triggerall = p2movetype = H
triggerall = random <= var(59)*500
trigger1 = stateno = 320 && movehit


[state -1]
type = changestate
value = 11040
triggerall = var(49) = 10000
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != A && p2statetype != L
triggerall = p2movetype = H
triggerall = random <= var(59)*800
trigger1 = stateno = 1500 && time = 30

[state -1]
type = changestate
value = 13000
triggerall = power >= 1000
triggerall = var(49) = 10000
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != A && p2statetype != L
triggerall = p2movetype = H
triggerall = random <= var(59)*400
trigger1 = stateno = 1500 && time = 30
;---------------------------------------------------------------------

[State -3, RUN]
type = ChangeState
value = 100
triggerall = var(59)
triggerall = Random <= 800*var(59)
triggerall = RoundState = 2  && Alive
triggerall = statetype != A
triggerall = !inguarddist
triggerall = ctrl || (stateno = [20,22]) || (stateno = [120,149])
trigger1 = p2bodydist x >= 240
trigger1 = Random <= 400*var(59)
trigger2 = p2bodydist x = [120,240]
trigger2 = Random <= 200*var(59)
trigger3 = p2bodydist x = [60,120]
trigger3 = Random <= 100*var(59)

[State -3,d]
type = ChangeState
value = 100
triggerall = var(59)
triggerall = roundstate = 2  && Alive
triggerall = statetype != A
triggerall = frontedgebodydist >= 90
triggerall = enemynear,movetype != A
Triggerall = EnemyNear,StateType != L
triggerall = ctrl
triggerall = prevstateno != 100
triggerall = prevstateno != 101
triggerall = prevstateno != 102
triggerall = !inguarddist
trigger1 = p2bodydist x = [240,290]
trigger1 = random <= (var(59))*400
trigger2 = p2bodydist x = [120,240]
trigger2 = random <= (var(59))*230
trigger3 = p2bodydist x > 270
trigger3 = random <= (var(59))*350
trigger4 = enemynear,statetype = A && enemynear,movetype = H
trigger4 = p2bodydist x > 120
trigger4 = random <= (var(59))*500

;???????
[State -3,bs]
Type = ChangeState
value = 105
triggerall = var(59) 
triggerall = roundstate = 2  && Alive
triggerall = statetype != A
triggerall = enemynear,movetype != A
triggerall = enemynear,movetype != H
triggerall = stateno != 104
triggerall = prevstateno != 104
triggerall = ctrl || stateno = 20 || stateno = 21
triggerall = backedgedist > 40
trigger1 = enemynear,statetype != A
trigger1 = enemynear,statetype != L
trigger1 = p2bodydist x <= 90
trigger1 = !numtarget
trigger1 = random <= var(59)*150


[State -3,bs]
Type = ChangeState
value = 105
triggerall = var(59) 
triggerall = roundstate = 2  && Alive
triggerall = statetype != A
triggerall = enemynear,statetype = L
triggerall = enemynear,movetype != A
triggerall = stateno != 105
triggerall = prevstateno != 105
triggerall = ctrl
triggerall = p2bodydist x <= 40
trigger1 = random <= Var(20)*150


[State -3, FRoll]
type = ChangeState
value = ifelse(var(49) = 10000,10030,30)
triggerall = NumHelper(29) = 0 
triggerall = var(59)
triggerall = RoundState = 2 && enemynear,life > 0
triggerall = Random <= 600*var(59)
triggerall = statetype != A
triggerall = enemynear,MoveType != H
triggerall = InGuardDist
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || stateno = 115 || (stateno = [120,149])
trigger1 = P2bodydist X >= 125
trigger1 =Enemy,Numproj != 0
trigger2 = (enemynear,AnimTime <= -35 && !enemynear,Ctrl)
trigger2 = Enemy,Numproj != 0


[State -3, FRoll]
type = ChangeState
value = ifelse(var(49) = 10000,10030,30)
triggerall = NumHelper(29) = 0 
triggerall = var(59)
triggerall = RoundState = 2 && enemynear,life > 0
triggerall = Random <= 200*var(59)
triggerall = statetype != A
triggerall = enemynear,statetype != L
triggerall = enemynear,movetype != H
triggerall = enemynear,StateNo >= 200
triggerall =!enemynear,HitDefAttr = SCA, AT
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || stateno = 115 || (stateno = [120,149])
trigger1 = BackEdgeBodyDist >= 40 && enemynear,statetype = A
trigger1 = (P2Dist X = [-15,15]) && (enemynear,Pos Y = [-100,-60])
trigger1 = enemynear,Vel Y > 0

;??
[State -3, FRoll]
type = ChangeState
value = ifelse(var(49) = 10000,10030,30)
triggerall = NumHelper(29) = 0 
triggerall = var(59)
triggerall = RoundState = 2 && enemynear,life > 0
triggerall = enemynear,time >= 50
triggerall = Random <= 200*var(59)
triggerall = statetype != A
triggerall = enemynear,statetype != L
triggerall = enemynear,movetype != H
triggerall = enemynear,StateNo >= 200
triggerall =!enemynear,HitDefAttr = SCA, AT
triggerall = enemynear,facing != facing
triggerall = InGuardDist
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || stateno = 115 || (stateno = [120,149])
trigger1 = p2bodydist X = [0,150]
trigger1 = enemynear,animtime <= -30


[State -3, FRoll]
type = ChangeState
value = ifelse(var(49) = 10000,10030,30)
triggerall = NumHelper(29) = 0 
triggerall = var(59)
triggerall = Random <= 500*var(59)
triggerall = RoundState = 2 && enemynear,life > 0
triggerall = statetype != A
triggerall = enemynear,statetype != A
triggerall = enemynear,statetype != L
triggerall = enemynear,movetype != H
triggerall = enemynear,facing != facing
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || stateno = 115 || (stateno = [120,149])
trigger1 = p2bodydist X = [-5,100]
trigger1 = Random <= 100*var(59)
trigger2 = p2bodydist X > 100
trigger2 = Random <= 50*var(59)

[State -3, FRoll]
type = ChangeState
value = ifelse(var(49) = 10000,10030,30)
triggerall = NumHelper(29) = 0 
triggerall = var(59)
triggerall = Random <= 500*var(59)
triggerall = RoundState = 2 && enemynear,life > 0
triggerall = movetype = H
triggerall = enemynear,statetype != A
triggerall = enemynear,statetype != L
triggerall = enemynear,movetype != H
triggerall = (PrevStateNo=[5000,5270])
triggerall = enemynear,facing != facing
triggerall = ctrl
trigger1 = p2bodydist X = [-5,100]
trigger1 = Random <= 100*var(59)
trigger2 = p2bodydist X > 100
trigger2 = Random <= 50*var(59)



;Forward jump
[State -1,]
type = ChangeState
value = 39
triggerall =  Var(59)
triggerall = roundstate = 2
triggerall = p2bodydist x = [90,130]
triggerall = random <= 300*Var(59)
trigger1 = statetype != A
trigger1 = p2statetype != L
trigger1 = ctrl 

;Forward jump
[State -1,]
type = ChangeState
value = 39
triggerall =  Var(59)
triggerall = roundstate = 2
triggerall = p2bodydist x = [20,130]
triggerall = random <= 800*Var(59)
trigger1 = statetype != A
trigger1 = p2movetype = H
trigger1 = p2statetype != L
trigger1 = ctrl 

[State -1]
Type= changestate
triggerall = var(49) = 10000 = 0
Triggerall= Inguarddist ; Guard when in guard distance
Triggerall=var(59)>0; and the AI is on
Triggerall=ctrl; and we have control
Trigger1 = random< (var(50)*2+(AiLevel>=3)*30); chance is higher than for attacking, but not by too much.
value=120

[State -1]; The engine will still guard by through pressing the back button, we need to disable that.
Type=Assertspecial
triggerall = var(49) = 10000 = 0
Triggerall=StateNo!=[120,160]
Trigger1=var(59)>0
flag=noairguard
flag2=nocrouchguard
flag3=nostandguard
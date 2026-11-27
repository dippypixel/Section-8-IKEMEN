
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


[Command]
name = "AI off"
command = ~U,F,D,B
time = 300

[Command]
name = "AI off"
command = ~F,D,B,U
time = 300

[Command]
name = "AI off"
command = ~D,B,U,F
time = 300

[Command]
name = "AI off"
command = ~B,U,F,D
time = 300

[Command]
name = "AI off"
command = ~U,B,D,F
time = 300

[Command]
name = "AI off"
command = ~B,D,F,U
time = 300

[Command]
name = "AI off"
command = ~D,F,U,B
time = 300

[Command]
name = "AI off"
command = ~F,U,B,D
time = 300

[Command]
name = "AI off"
command = ~U,UF,F,DF,D,DB,B
time = 300

[Command]
name = "AI off"
command = ~F,DF,D,DB,B,UB,U
time = 300

[Command]
name = "AI off"
command = ~D,DB,B,UB,U,UF,F
time = 300

[Command]
name = "AI off"
command = ~B,UB,U,UF,F,DF,D
time = 300

[Command]
name = "AI off"
command = ~U,UB,B,DB,D,DF,F
time = 300

[Command]
name = "AI off"
command = ~B,DB,D,DF,F,UF,U
time = 300

[Command]
name = "AI off"
command = ~D,DF,F,UF,U,UB,B
time = 300

[Command]
name = "AI off"
command = ~F,UF,U,UB,B,DB,D
time = 300
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
name = "holddownF"
command = /$DF
time = 1


[Command]
name = "holddown"  ;必須コマンド名
command = /$D
time = 1

;============================================================================== 第４部

;------------------------------------------------------------------------------

[Statedef -1] ;←この行は絶対に消さないでね。必須項目です。

[State -3,AI起動ヘルパー]
Type = Helper
;Trigger1 = var(59) != 0
trigger1 = roundstate = 2
Trigger1 = NumHelper(99999) = 0
ID = 99999
PosType = p1
Pos = 0,0
facing = -1
StateNo = 99999
Ownpal = 1
Size.XScale = 0
Size.YScale = 0
pausemovetime = 2147483647
supermovetime = 2147483647
IgnoreHitPause = 1

[state -2,右ステージ端判定]
type=Helper
triggerall=!ishelper
triggerall=roundstate>1
triggerall=!numhelper(99997)
trigger1=var(59)!=0
trigger2=name="test"
helpertype=normal
name="right_edge"
ID=99997
pos=0, 0
postype=right
facing=1
stateno=99997
ownpal=1
pausemovetime = 2147483647
supermovetime = 2147483647
IgnoreHitPause = 1

[state -2,左ステージ端判定]
type=Helper
triggerall=!ishelper
triggerall=roundstate>1
triggerall=!numhelper(99998)
trigger1=var(59)!=0
trigger2=name="test"
helpertype=normal
name="left_edge"
ID=99998
pos=0, 0
postype=left
facing=-1
stateno=99998
ownpal=1
pausemovetime = 2147483647*(numprojID(30002)>0)
supermovetime = 2147483647*(numprojID(30002)>0)
IgnoreHitPause = 1

;------------------------------------------------------------------------------
;AI
;------------------------------------------------------------------------------

[State -1,（超必殺）エアロスミス（掴み）]
type = ChangeState
value = 3400
triggerall = power >= 2000
triggerall = var(59)
TriggerAll = playerID(var(49)),Alive
TriggerAll = RoundState=2 && (playerID(var(49)),movetype=H || helper(99999),var(35)!=6)
TriggerAll = StateType != A
TriggerAll = playerID(var(49)),StateType = S
TriggerAll = (!InGuardDist&&helper(99999),var(0)=0) || (helper(99999),var(0) = 1)
triggerall = frontedgebodydist >= 140
triggerall = helper(99999),var(55) >= 9 || life < playerID(var(49)),life
triggerall = helper(99999),var(32)
triggerAll = floor(facing*playerID(var(49)),pos x) < 55
trigger1 = (power >= powermax%40 && life > lifemax%35) || (life <= lifemax%35)
trigger1 = (life <= lifemax%55 || (life > lifemax%55 && random < 450)) 
trigger1 = random < 200
trigger1 = p2bodydist x = [0,75]
trigger1 = stateno = 410 && movehit = 1
trigger2 = (stateno = 220 && (p2bodydist x = [0,65])) || (stateno = 410 && (p2bodydist x = [0,75]))
trigger2 = movehit
trigger2 = vel x < 0 || (var(59) <= 2)
trigger3 = random < 50+floor((lifemax-life)/2)
trigger3 = var(58) = -1
trigger3 = stateno = 1000 || stateno = 410
trigger3 = movehit = 6
trigger4 = p2bodydist x = [0,75]
trigger4 = random < helper(99999),var(46)**2*10
trigger4 = ctrl || stateno = 21

[State -1,（超必殺）エアロスミス（ノーマル）]
type = ChangeState
value = 3500
triggerall = power >= 2000
triggerall = var(59)
TriggerAll = playerID(var(49)),Alive
TriggerAll = RoundState=2 && (playerID(var(49)),movetype=H || helper(99999),var(35)!=6)
TriggerAll = StateType != A
TriggerAll = playerID(var(49)),StateType != L
TriggerAll = (!InGuardDist&&helper(99999),var(0)=0) || (helper(99999),var(0) = 1)
triggerAll = (numhelper(3520) = 0 && numhelper (3510) = 0)
triggerAll = stateno != [3400,3550)
triggerall = helper(99999),var(32)
trigger1 = ctrl||stateno=101||stateno=1
trigger1 = numprojID(1120) > 0
trigger1 = helper(99999),var(48) = 0
trigger2 = ctrl||stateno=101||stateno=1
trigger2 = random < 350-(power<4000)*200
trigger2 = var(12) = 0
trigger2 = playerID(var(49)),stateno = [1025,1027]
trigger3 = numprojID(3200) >= 8
trigger3 = projhittime(3200) = 0
trigger3 = floor(facing*playerID(var(49)),pos x) > -30
trigger3 = ctrl||stateno=101||stateno=1
trigger4 = p2bodydist x > 150
trigger4 = playerID(var(49)),stateno = [5070,5110]
trigger4 = random < 300-(power<4000)*150
trigger4 = ctrl||stateno=101||stateno=1

[State -1, （超必殺）ナイフス XY]
type = ChangeState
value = 3100
triggerall = var(59)
TriggerAll = RoundState=2 && (playerID(var(49)),movetype=H || helper(99999),var(35)!=6)
TriggerAll = playerID(var(49)),Alive
triggerall = power >= 1000
triggerall = NumHelper(1711) = 0
triggerall = NumProjID(1711) = 0
triggerall =  var(20)=0
TriggerAll = StateType != A
triggerall = stateno != 400
triggerall = stateno != 1000
TriggerAll = (!InGuardDist&&helper(99999),var(0)=0) || (helper(99999),var(0) = 1)
triggerAll = stateno != [3100,3300]
triggerall = helper(99999),var(51) = 0
triggerall = prevstateno != 400
triggerall = prevstateno != 1000
triggerall = helper(99999),var(32)
Trigger1 = playerID(var(49)),StateType != L; && playerID(var(49)),StateNo != 5071
trigger1 = projhittime(1200) = 0
trigger1 = ctrl||stateno=101||stateno=1
trigger1 = stateno != [1600,1601]
trigger1 = (NumHelper(3510) > 0 && fvar(30) = [0,80]) || NumHelper(3520) > 0
trigger1 = p2bodydist x = [0,100]
trigger2 = ctrl||stateno=101||stateno=1
trigger2 = power >= powermax/5
Trigger2 = (playerID(var(49)),StateNo=5120 && playerID(var(49)),time<=-11)
Trigger2 = playerID(var(49)),StateType != S && playerID(var(49)),StateType != C
trigger2 = p2bodydist x > 100
trigger2 = var(59) = 1 && random < (floor(50+((p2bodydist X)/5)))
trigger3 = stateno =  220 && moveguarded = 1
trigger3 = var(59) = 5
trigger3 = random < 300 || (var(12) = 1 && random < 800)
trigger4 = ctrl||stateno=101||stateno=1
trigger4 = power < 2000 && p2bodydist x < 60
trigger4 = numprojID(1120) > 0
trigger4 = helper(99999),var(48) = 0


[State -1, （超必殺）ナイフス XZ]
type = ChangeState
value = 3200
triggerall = var(59)
TriggerAll = RoundState=2 && (playerID(var(49)),movetype=H || helper(99999),var(35)!=6)
TriggerAll = playerID(var(49)),Alive
triggerall = power >= 1000
triggerall = NumProjID(3200) <= 7
TriggerAll = StateType != A
triggerAll = stateno != [3100,3300]
;triggerall = helper(99999),var(32)
triggerall = helper(99999),var(51) = 0 || helper(99999),var(25) = 11
triggerall = (random < helper(99999),var(25)**2*(6+(power>4000)*4)) || helper(99999),var(25) = 11
;trigger1 = playerID(var(49)),statetype !=A 
trigger1 = stateno = 220 && movehit = 1
;trigger1 = power >= powermax%30 || helper(99999),var(25) = 11
trigger2 = power >= powermax/5 || helper(99999),var(25) = 11
Trigger2 = playerID(var(49)),StateNo=5110|| (playerID(var(49)),StateNo=5120 && playerID(var(49)),time<=-9) || (stateno=420 && movehit=1) || helper(99999),var(25) = 11
trigger2 = ctrl||stateno=101||stateno=1 || (stateno = 420 && movehit=1)
;trigger3 = (helper(3100),moveguarded = [1,10]) || (helper(3300),moveguarded = [1,10])
;trigger3 = ctrl || stateno = 101



[State -1, （超必殺）ナイフス YZ]
type = ChangeState
value = 3300
triggerall = var(59)
TriggerAll = RoundState=2 && (playerID(var(49)),movetype=H || helper(99999),var(35)!=6)
TriggerAll = playerID(var(49)),Alive
triggerall = power >= 1000
triggerall = NumProjID(1711) = 0
triggerall = NumProjID(1712) = 0
triggerall =  var(20)=0
triggerAll = stateno != [3100,3300]
TriggerAll = StateType != A
triggerall = NumHelper(3300) = 0
triggerall = helper(99999),var(32)
triggerall = projhittime(1200) = 0
trigger1 = playerID(var(49)),stateno = [1025,1027]
trigger1 = p2bodydist X >= 100
trigger1 = ctrl||stateno=101||stateno=1
trigger2 = helper(99999),var(51) = 0
Trigger2 = playerID(var(49)),StateType != L
trigger2 = ctrl||stateno=101||stateno=1
trigger2 = (NumHelper(3510) > 0 && fvar(31) = 2)  || NumHelper(3520) > 0
Trigger2 = playerID(var(49)),movetype = H || p2bodydist x > 220
trigger2 = p2bodydist X > 100
trigger3 = ctrl||stateno=101||stateno=1
trigger3 = power < 2000 && p2bodydist x >= 60
trigger3 = numprojID(1120) > 0
trigger3 = helper(99999),var(48) = 0

[State -1, AVG]
type = ChangeState
triggerall = var(59)
triggerall = statetype != A
Triggerall = helper(99999),var(53) = 1
triggerall = prevstateno != [710,711]
trigger1 = stateno = [150,153]
value = 710

[State -1 回り込み]
type = ChangeState
value = 650
triggerall = var(59)
TriggerAll = playerID(var(49)),Alive
TriggerAll = RoundState=2 && (playerID(var(49)),movetype=H || helper(99999),var(35)!=6)
TriggerAll = StateType != A
TriggerAll = ctrl||stateno=101||stateno=1 || (stateno = [120,132])
triggerall = var(50) = 0 || (var(57) = [30,40])
triggerall = helper(99999),var(32)
Trigger1 = InGuardDist
trigger1 = BackEdgeBodyDist <= 20
trigger1 = var(57) < 10 && (p2bodydist x = [0,60])
trigger1 = (playerID(var(49)),Stateno = [5070,5120]) ||(var(55) >= 750 && random < 700)
trigger2 = (var(57) = [30,40]) && (p2bodydist x = [0,90])
trigger2 = (playerID(var(49)),Stateno = [5070,5120]) || (var(55) >= 480 && random < 850)
Trigger2 = InGuardDist
trigger3 = var(55) > 700
trigger3 = playerID(var(49)),movetype = A
trigger3 = random < 300
trigger4 = p2bodydist X > 50
trigger4 = playerID(var(49)),animtime < -140
trigger4 = playerID(var(49)),movetype = A
trigger4 = ((numhelper(3510)=0 || numhelper(3510)>0&&fvar(31) = 1)&&NumHelper(3520)=0&&power>=2000&&var(59)=5)||(power<2000)

[State -1, （超必殺）「殺り方」or頭を切り飛ばす]
type = ChangeState
value = 3000-(var(12)=0&&(power<2000||(random>=(100-(power<3000)*50)*power/10)))*1900
triggerall = power >= 2000 || var(12) = 0
triggerall = var(59)
TriggerAll = playerID(var(49)),Alive
TriggerAll = StateType != A
triggerall = stateno != [3000,3050)
TriggerAll = RoundState = 2
triggerall = InGuardDist
;triggerall = playerID(var(49)),movetype = A || (power>=2000 && var(12)=1)
triggerall = helper(99999),var(50) = 0 || helper(99999),var(35) >= 5
triggerall = ctrl||stateno=101||stateno=1||(power>=2000&&var(1)=1)
triggerall = (p2bodydist X = [-50,85]) || (power>=2000 && var(12)=1)
triggerall = p2bodydist Y = [-155,0]
triggerall = playerID(var(49)),stateno != helper(99999),var(31)
trigger1 = var(55) > (helper(99999),var(35))*(150+(life<playerID(var(49)),life)*150) || random < 35*helper(99999),var(35) || helper(99999),var(35)=6
trigger2 = helper(99999),var(0) = 1
trigger3 = prevstateno = 5120
trigger3 = var(55) > (10-helper(99999),var(35))*15
trigger4 = helper(99999),var(35) >= 5

[State -1, 超必ぶっぱ ナイフ]
type = ChangeState
value = 3300-(var(59)<=2)*200
triggerall = var(59)
TriggerAll = RoundState=2
TriggerAll = playerID(var(49)),Alive
TriggerAll = playerID(var(49)),StateType != L
triggerall = power >= 1000
triggerall = NumHelper(1711) = 0
triggerall = NumProjID(1711) = 0
triggerall =  var(20)=0
TriggerAll = StateType != A
triggerAll = stateno != [3100,3300]
triggerall = helper(99999),var(51) = 0
triggerall = prevstateno != 400
triggerall = prevstateno != 1000
triggerall = helper(99999),var(32)
Triggerall = helper(99999),var(49)=0
triggerall = ctrl || stateno = 21 || stateno = 101
trigger1 = projhittime(1200) = 0
trigger1 = !((p2dist X = [100,120]) && var(14) = 60)
trigger1 = !((p2dist X = [160,180]) && var(14) = 120)
trigger1 = !((p2dist X = [220,240]) && var(14) = 180)
trigger1 = random < (helper(99999),var(46)*35)

[State -1, 超必ぶっぱ エアロ]
type = ChangeState
value = 3500
triggerall = var(59)
TriggerAll = RoundState=2
TriggerAll = StateType != A
TriggerAll = playerID(var(49)),StateType != L
triggerall = NumHelper(3510) = 0
triggerall = NumHelper(3520) = 0
TriggerAll = playerID(var(49)),Alive
triggerall = var(59) = 5
triggerall = power >= 2000
triggerall = helper(99999),var(46) != 0
triggerall = ctrl || stateno = 21 || stateno = 101
Triggerall = helper(99999),var(49)=0
trigger1 = random < (helper(99999),var(46)*35)

[State -1, 死んでもらう]
type = ChangeState
value = 1310
triggerall = var(59)
TriggerAll = playerID(var(49)),Alive
TriggerAll = RoundState=2 && (playerID(var(49)),movetype=H || helper(99999),var(35)!=6)
TriggerAll = StateType != A
TriggerAll = playerID(var(49)),StateType != L
TriggerAll = (!InGuardDist&&helper(99999),var(0)=0) || (helper(99999),var(0) = 1)
triggerall = movehit||(movecontact&&(helper(99999),var(27)>=2&&playerID(var(49)),StateType=A||helper(99999),var(27)>=3))||prevstateno=420
triggerall = helper(99999),var(32)
trigger1 = playerID(var(49)),statetype != A
trigger1 = var(16) := ifelse(p2dist X<70,4,2)
trigger1 = stateno = 220
trigger1 = var(57) != [30,40]
trigger2 = playerID(var(49)),statetype = A && p2dist X <= 140
trigger2 = var(16) := ifelse(p2dist X<70,4,3)
trigger2 = stateno = 220
trigger2 = var(57) != [30,40]
trigger3 = playerID(var(49)),statetype = A && p2dist X > 140
trigger3 = var(16) := 2
trigger3 = stateno = 220
trigger3 = var(57) != [30,40]
trigger4 = stateno = 410
trigger4 = var(16) := 4
trigger5 = stateno = 200
trigger5 = playerID(var(49)),statetype = A
trigger5 = (var(56) = [8,9])
trigger5 = var(16) := 4
trigger6 = stateno = 200
trigger6 = p2bodydist X > 20 || moveguarded
trigger6 = var(16) := 4
trigger7 = stateno = 420
trigger7 = var(53) = 5
trigger7 = var(16) := 4
trigger8 = prevstateno = 420 && !movehit
trigger8 = playerID(var(49)),stateno = [1025,1027]
trigger8 = var(16) := 4


[State -1, （必殺）ナイフ]
type = ChangeState
value = 1200
triggerall = var(12) = 0
triggerall = var(59)
TriggerAll = playerID(var(49)),Alive
TriggerAll = RoundState=2 && (playerID(var(49)),movetype=H || helper(99999),var(35)!=6)
TriggerAll = StateType != A
TriggerAll = playerID(var(49)),StateType != L
TriggerAll = (!InGuardDist&&helper(99999),var(0)=0) || (helper(99999),var(0) = 1)
triggerAll = playerID(var(49)),statetype != A
triggerall = helper(99999),var(32)
trigger1 = stateno = 220
trigger1 = helper(99999),var(27)>=0
trigger1 = movehit
trigger1 = p2dist X = [70,100]
trigger1 = var(14) := 60
trigger2 = stateno = 220
trigger2 = helper(99999),var(27)>=0
trigger2 = movehit
trigger2 = p2dist X = [130,160]
trigger2 = var(14) := 120
trigger3 = stateno = 220
trigger3 = helper(99999),var(27)>0
trigger3 = moveguarded
trigger3 = p2dist X = [70,129]
trigger3 = var(14) := 60
trigger4 = stateno = 220
trigger4 = helper(99999),var(27)>0
trigger4 = moveguarded
trigger4 = p2dist X = [130,160]
trigger4 = var(14) := 120

[State -1, （必殺）ナイフ 起き攻め]
type = ChangeState
value = 1200
triggerall = var(12) = 0
triggerall = var(59)
TriggerAll = playerID(var(49)),Alive
TriggerAll = RoundState=2
TriggerAll = StateType != A
TriggerAll = (!InGuardDist&&helper(99999),var(0)=0) || (helper(99999),var(0) = 1)
TriggerAll = playerID(var(49)),StateNo = 5120|| playerID(var(49)),StateNo = 5110 || projhittime(1200) = 15
triggerall = PlayerID(var(49)),animtime<=-10; || playerID(var(49)),StateNo != 5120
triggerall = helper(99999),var(54)!=-1
triggerAll = helper(99999),var(28)>0
triggerall = ctrl||stateno=101||stateno=1
trigger1 = p2dist X = [100,120]
trigger1 = var(14) :=60
trigger2 = p2dist X = [160,180]
trigger2 = var(14) :=120
trigger3 = p2dist X = [220,240]
trigger3 = var(14) :=180

[State -1, スタンドＯＮ]
type = ChangeState
value = 1600
triggerall = var(59)
triggerall = var(12) = 0
TriggerAll = playerID(var(49)),Alive
TriggerAll = RoundState=2 && (playerID(var(49)),movetype=H || helper(99999),var(35)!=6)
;TriggerAll = StateType != A
TriggerAll = (!InGuardDist&&helper(99999),var(0)=0) || (helper(99999),var(0) = 1)
trigeerall = var(57) != [30,40]
triggerall = helper(99999),var(32)
triggerall = ctrl
triggerall = (playerID(var(49)),Stateno = [5070,5120])
triggerall = helper(99999),var(35) != 6
;trigger1 = backedgebodydist < 120
trigger1 = prevstateno = 3200
trigger1 = random < 150
trigger2 = numprojID(3200) >= 10
trigger2 = p2bodydist x > 160
trigger2 = random < 250

[State -1, （必殺）メス]
type = ChangeState
value = 1300
triggerall = var(59)
triggerall = var(12) = 1
TriggerAll = playerID(var(49)),Alive
TriggerAll = RoundState=2 && (playerID(var(49)),movetype=H || helper(99999),var(35)!=6)
TriggerAll = StateType != A
TriggerAll = playerID(var(49)),StateType != L
TriggerAll = (!InGuardDist&&helper(99999),var(0)=0) || (helper(99999),var(0) = 1)
triggerall = NumHelper(1711) = 0 
triggerall = NumProjID(1711) = 0
triggerall = p2bodydist X >= 90
triggerall = helper(99999),var(32)
trigger1 = ctrl||stateno=101||stateno=1
trigger1 = (p2bodydist X >= 180 && playerID(var(49)),StateType = A)|| (p2bodydist X >= 90 && playerID(var(49)),StateType != A)
trigger1 = var(57) = [30,40]
trigger2 = NumHelper(3100) > 0
trigger2 = ctrl||stateno=101||stateno=1 || (stateno = 220 && movecontact)
trigger3 = numprojID(3200) >= 8
trigger3 = var(57) = [30,40]
trigger3 = ctrl||stateno=101||stateno=1

[State -1, スタンドＯＦＦ]
type = ChangeState
value = 1601
triggerall = var(59)
triggerall = var(12) = 1
TriggerAll = playerID(var(49)),Alive
TriggerAll = RoundState=2 && (playerID(var(49)),movetype=H || helper(99999),var(35)!=6)
TriggerAll = StateType != A
TriggerAll = (!InGuardDist&&helper(99999),var(0)=0) || (helper(99999),var(0) = 1)
triggerAll = var(57) != [30,40]
triggerall = helper(99999),var(54) = 0 || (playerID(var(49)),stateno = [1025,1027])
triggerall = helper(99999),var(32)
trigger1 = ctrl
trigger1 = playerID(var(49)),stateno = [1025,1027]
trigger2 = ctrl||stateno=101||stateno=1
trigger2 = playerID(var(49)),stateno = [5110,5120]
trigger2 = random < 130
trigger3 = helper(99999),var(55) < 7

[State -1, 崩し矛盾]
type = ChangeState
value = 1020
triggerall = var(59)
TriggerAll = playerID(var(49)),Alive
TriggerAll = RoundState=2 && (playerID(var(49)),movetype=H || helper(99999),var(35)!=6)
TriggerAll = StateType != A
TriggerAll = playerID(var(49)),StateType != L
triggerall = playerID(var(49)),stateno != [1025,1027]
triggerall = numprojID(1712) = 0
triggerall = var(56) != 9
triggerall = helper(99999),var(32)
trigger1 = p2bodydist x = [0,15]
trigger1 = stateno = 200 || stateno = 400
trigger1 = moveguarded = 1
trigger2 = ctrl || stateno = 101
trigger2 = random < helper(99999),var(55)*25
trigger2 = playerID(var(49)),stateno = [120,155]
trigger2 = p2bodydist x = [0,23]

[State -1, 崩し死んでもらう]
type = ChangeState
value = 1310
triggerall = var(59)
TriggerAll = playerID(var(49)),Alive
TriggerAll = RoundState=2 && (playerID(var(49)),movetype=H || helper(99999),var(35)!=6)
TriggerAll = StateType != A
TriggerAll = playerID(var(49)),StateType != L
triggerall = playerID(var(49)),stateno != [1025,1027]
triggerall = helper(99999),var(32)
trigger1 = helper(99999),var(27) = 4
trigger1 = var(1) = 1 && !ctrl
trigger1 = moveguarded
trigger1 = var(16) := ifelse(p2dist X<80,4,2)

[State -1, 死んでもらうor6中]
type = ChangeState
value = ifelse(playerID(var(49)),backedgebodydist>=150&&var(59)=2,1010,1310)
triggerall = var(59)
TriggerAll = playerID(var(49)),Alive
TriggerAll = RoundState=2 && (playerID(var(49)),movetype=H || helper(99999),var(35)!=6)
TriggerAll = StateType != A
TriggerAll = playerID(var(49)),StateType != L
TriggerAll = (!InGuardDist&&helper(99999),var(0)=0) || (helper(99999),var(0) = 1)
triggerall = helper(99999),var(27) != 0
triggerall = helper(99999),var(32)
trigger1 = ctrl
trigger1 = playerID(var(49)),stateno = [1025,1027]
trigger1 = var(53) = 6

[State -1, 立ち強攻撃]
type = ChangeState
value = 220
triggerall = var(59)
TriggerAll = playerID(var(49)),Alive
TriggerAll = RoundState=2 && (playerID(var(49)),movetype=H || helper(99999),var(35)!=6)
TriggerAll = StateType != A
TriggerAll = playerID(var(49)),StateType != L
triggerall = playerID(var(49)),stateno != [5110,5120]
triggerall = playerID(var(49)),stateno != 5071
TriggerAll = (!InGuardDist&&helper(99999),var(0)=0) || (helper(99999),var(0) = 1)
triggerall = p2bodydist Y >= -95
triggerall = (playerID(var(49)),vel y>0 && playerID(var(49)),statetype=A) || playerID(var(49)),statetype!=A || (stateno=210 && time>6)
triggerall = helper(99999),var(32)
triggerall = !(helper(99997),var(8) > 19 && inguarddist)
trigger1 = random < 80+20*(var(57) < 10)
trigger1 = p2bodydist X = [80,115]
trigger1 = ctrl||stateno=101||stateno=1
trigger2 = var(57) = [30,40]
trigger2 = var(59) = 1 && numprojID(1712) = 0 && random < 200
trigger2 = p2bodydist X = [80,115]
trigger2 = ctrl||stateno=101||stateno=1
trigger3 = prevstateno = 1000
trigger3 = playerID(var(49)),movetype = H
trigger3 = playerID(var(49)),statetype = A
trigger3 = ctrl||stateno=101||stateno=1
trigger4 = playerID(var(49)),stateno = [1025,1027]
trigger4 = (p2bodydist X=[90,115]) || stateno=21 || playerID(var(49)),time>30; || stateno=0
trigger4 = ctrl||stateno=101||stateno=21
trigger5 = (stateno = 210 && time > 6) && movehit

[State -1, ジャンプorしゃがみ強]
type = ChangeState
value = ifelse((var(53)=5 && p2bodydist X<=75),420,41) 
triggerall = var(59)
TriggerAll = playerID(var(49)),Alive
TriggerAll = RoundState=2 && (playerID(var(49)),movetype=H || helper(99999),var(35)!=6)
TriggerAll = StateType != A
TriggerAll =(!InGuardDist&&helper(99999),var(0)=0)|| (helper(99999),var(0) = 1)
TriggerAll = (numhelper(3510)>0 && fvar(30)<-15) || ((numhelper(3510)=0 || numhelper(3510)>0&&fvar(31) = 1) && NumHelper(3520)=0)
TriggerAll = ctrl||stateno=101||stateno=1
triggerall = stateno != 41
triggerall = p2bodydist x = [0,24]
triggerall = helper(99999),var(32)
trigger1 = NumHelper(3300) = 0
trigger1 = var(12) = 0
trigger1 = var(56) != 8
trigger1 = playerID(var(49)),stateno = [1025,1027]

[State -1, しゃがみ中攻撃]
type = ChangeState
value = 410
triggerall = var(59)
TriggerAll = playerID(var(49)),Alive
TriggerAll = RoundState=2 && (playerID(var(49)),movetype=H || helper(99999),var(35)!=6)
TriggerAll = StateType != A
TriggerAll = playerID(var(49)),StateType != L
TriggerAll = (!InGuardDist&&helper(99999),var(0)=0) || (helper(99999),var(0) = 1)
triggerall = (p2bodydist x = [0,75])
triggerall = ctrl||stateno=101||stateno=21
triggerall = helper(99999),var(32)
Trigger1 = playerID(var(49)),MoveType = H
trigger1 = playerID(var(49)),statetype != A
Trigger1 = var(56) = 0
trigger1 = p2bodydist X > 30
trigger1 = prevstateno = 400 && movehit
;trigger2 = (p2bodydist x = [0,69])
;trigger2 = vel x < 0
;trigger2 = prevstateno = 400 && movehit
trigger2 = playerID(var(49)),statetype != A
trigger2 = var(58) = -1
trigger2 = helper(99999),var(29) = 3
trigger2 = prevstateno = 400 && movehit
trigger3 = prevstateno = 400
trigger3 = playerID(var(49)),StateType = A
trigger3 = movehit
trigger3 = frontedgebodydist > 60

[State -1, しゃがみ強攻撃]
type = ChangeState
value = 420
triggerall = var(59)
TriggerAll = playerID(var(49)),Alive
TriggerAll = RoundState=2 && (playerID(var(49)),movetype=H || helper(99999),var(35)!=6)
TriggerAll = StateType != A
TriggerAll = playerID(var(49)),StateType != L
triggerall = playerID(var(49)),statetype != A
TriggerAll = (!InGuardDist&&helper(99999),var(0)=0) || (helper(99999),var(0) = 1)
triggerall = (p2bodydist x = [0,75])
triggerall = ctrl||stateno=101||stateno=1
triggerall = helper(99999),var(32)
trigger1 = playerID(var(49)),stateno = [1025,1027]
trigger1 = var(53) = 5

[State -1, 小パンがスカった]
type = ChangeState
value = -var(58);（仮）
triggerall = var(59)
TriggerAll = playerID(var(49)),Alive
TriggerAll = RoundState=2 && (playerID(var(49)),movetype=H || helper(99999),var(35)!=6)
TriggerAll = StateType != A
TriggerAll = playerID(var(49)),StateType != L
triggerall = helper(99999),var(32)
triggerall = (numhelper(3510)=0 || numhelper(3510)>0&&fvar(31) = 1) && numhelper(3520) = 0

triggerall = ctrl||stateno=101||stateno=1
triggerall = random < helper(99999),var(47)*50
triggerall = !(helper(99997),var(8) > 19 && inguarddist)

trigger1 = playerID(var(49)),stateno = [120,153]
trigger1 = p2bodydist x = [0,34]
trigger1 = !inguarddist
trigger1 = var(58) := -1020
trigger2 = inguarddist
trigger2 = power >= 2000 || var(12) = 0
trigger2 = random < 100*helper(99999),var(35)
trigger2 = var(58) := -3000+(power<2000||(var(12)=0 && random>=(100-(power<3000)*50)*power/10))*1900
;(仮）
trigger3 = p2bodydist x > 35
trigger3 = var(58) := -650


[State -1, 矛盾]
type = ChangeState
value = 1020
triggerall = var(59)
TriggerAll = playerID(var(49)),Alive
TriggerAll = RoundState=2 && (playerID(var(49)),movetype=H || helper(99999),var(35)!=6)
TriggerAll = StateType != A
TriggerAll = playerID(var(49)),StateType != L
triggerall = helper(99999),var(32)
triggerall = (p2bodydist x = [0,34])
triggerall = playerID(var(49)),stateno != [1025,1027]
triggerall = (numhelper(3510)=0 || numhelper(3510)>0&&fvar(31) = 1) && numhelper(3520) = 0
triggerall = var(57) < 30
triggerall = numprojID(1712) = 0
triggerall = var(56) != 9
triggerall = !(helper(99997),var(8) > 19 && inguarddist)
trigger1 = ctrl||stateno=101||stateno=1
Trigger1 = playerID(var(49)),MoveType = H
trigger1 = var(58) <= 0
trigger1 = random < 350
trigger1 = prevstateno = 1000 || (stateno = 400 && movehit)
trigger2 = var(56) > 27
trigger2 = ctrl||stateno=101||stateno=1 || stateno = 101 
trigger2 = p2bodydist x = [0,25]
trigger3 = stateno = 200 && movehit
trigger3 = p2bodydist x = [0,19]
Trigger3 = playerID(var(49)),MoveType = H
trigger3 = var(56) != 9
trigger3 = playerID(var(49)),StateType = A
trigger4 = stateno = 400 && movehit
trigger4 = playerID(var(49)),StateType = A
trigger4 = p2bodydist x = [0,20]

[State -1, 立ち中攻撃]
type = ChangeState
value = 210
triggerall = var(59)
TriggerAll = playerID(var(49)),Alive
TriggerAll = RoundState=2 && (playerID(var(49)),movetype=H || helper(99999),var(35)!=6)
TriggerAll = StateType != A
TriggerAll = playerID(var(49)),StateType != L
TriggerAll = (!InGuardDist&&helper(99999),var(0)=0) || (helper(99999),var(0) = 1)
triggerall = p2bodydist Y >= -80
triggerall = p2bodydist x < 90
triggerall = helper(99999),var(32)
triggerall = ctrl || stateno = 101 || stateno = 21
trigger1 = random < 20*helper(99999),var(55)
trigger1 = p2bodydist x > 70 || playerID(var(49)),movetype = H
trigger1 = projhittime(1200) = 0
trigger1 = helper(99999),var(49) = 0
trigger2 = playerID(var(49)),movetype = H
Trigger2 = playerID(var(49)),StateType = A
trigger2 = numprojID(3030) > 0 || numprojID(1711) > 0 || numhelper(1171) > 0

[State -1, ジャンプ コンボ]
type = ChangeState
value = 41
triggerall = var(59)
TriggerAll = playerID(var(49)),Alive
TriggerAll = RoundState=2 && (playerID(var(49)),movetype=H || helper(99999),var(35)!=6)
TriggerAll = StateType != A
;TriggerAll = playerID(var(49)),MoveType=H || (playerID(var(49)),statetype=C&&(playerID(var(49)),stateno=[120,155]))
triggerall = helper(99999),var(32)
;TriggerAll = (numhelper(3510)=0 || numhelper(3510)>0&&fvar(31) = 1) || (playerID(var(49)),statetype=C&&(playerID(var(49)),stateno=[120,155]))
Triggerall = helper(99999),var(49)=3 || (playerID(var(49)),stateno = [120,155])
triggerall = stateno != 41
trigger1 = var(58) > 0 || (random<200+200*(p2bodydist x >45)+200*(playerID(var(49)),statetype=C)&&(playerID(var(49)),stateno=[120,155]))
trigger1 = ctrl || stateno = 101
trigger1 = playerID(var(49)),statetype != A
trigger1 = (p2bodydist x = [30,70-30*(projcontacttime(3511)>0||projcontacttime(3512)>0||projcontacttime(3513)>0)]) || helper(99999),var(49)=3
trigger1 = numprojID(1120) = 0

[State -1, 前弱攻撃]
type = ChangeState
value = 1000
triggerall = var(59)
TriggerAll = playerID(var(49)),Alive
TriggerAll = RoundState=2 && (playerID(var(49)),movetype=H || helper(99999),var(35)!=6)
TriggerAll = StateType != A
TriggerAll = (!InGuardDist&&helper(99999),var(0)=0)||((helper(99999),var(0) = 1))
triggerall = p2bodydist x = [0,23]
Triggerall = helper(99999),var(49)=2
TriggerAll = playerID(var(49)),MoveType=H
triggerall = helper(99999),var(32)
trigger1 = stateno = 400 && movehit && animelemtime(2) >= 0 && animelemtime(3) < 0
trigger1 = var(58) > 0
trigger2 = var(56) != 8
trigger2 = var(56) < 10 && stateno = 101
trigger2 = var(58) != -1

[State -1, 前中攻撃]
type = ChangeState
value = 1010
triggerall = var(59)
TriggerAll = playerID(var(49)),Alive
TriggerAll = RoundState=2 && (playerID(var(49)),movetype=H || helper(99999),var(35)!=6)
TriggerAll = StateType != A
TriggerAll = playerID(var(49)),StateType != L
TriggerAll = (!InGuardDist&&helper(99999),var(0)=0) || (helper(99999),var(0) = 1)
triggerall = !helper(99999),var(32)
trigger1 = stateno = 220 && moveguarded
trigger1 = p2dist Y > 50
trigger1 = p2bodydist x = [0,75]
Trigger2 = playerID(var(49)),MoveType = H
trigger2 = p2bodydist x = [0,75]
trigger2 = ctrl||stateno=101||stateno=1
Trigger2 = var(56) = 0
trigger2 = p2bodydist X > 30;40
trigger2 = (prevstateno = 400 && moveguarded); || (stateno = 400 && moveguarded)

[State -1,立ち弱攻撃]
type = changestate
value = 200
triggerall = var(59)
TriggerAll = playerID(var(49)),Alive
TriggerAll = RoundState=2 && (playerID(var(49)),movetype=H || helper(99999),var(35)!=6)
TriggerAll = StateType = S
TriggerAll = StateType != A
triggerall = stateno != 101
TriggerAll = playerID(var(49)),StateType != L
triggerall = helper(99999),var(32)
triggerall = !(helper(99997),var(8) > 19 && inguarddist)
trigger1 = var(56) < 10
trigger1 = var(57) < 30
trigger1 = ctrl||stateno=101||stateno=1
trigger1 = p2bodydist x = [0,29]
trigger1 = p2bodydist Y < 30
trigger1 = playerID(var(49)),stateno != [1025,1027]
Trigger1 = playerID(var(49)),StateType = A
Trigger1 = (var(56) = [8,9]) || p2dist Y = [-85,-35]

[State -1, ジャンプ中攻撃]
type = ChangeState
value = 610
triggerall = var(59)
TriggerAll = RoundState=2 && (playerID(var(49)),movetype=H || helper(99999),var(35)!=6)
TriggerAll = playerID(var(49)),Alive
triggerall = statetype = A
;TriggerAll = playerID(var(49)),MoveType=H
;TriggerAll =(!InGuardDist&&helper(99999),var(0)=0)|| (helper(99999),var(0) = 1)
triggerall = helper(99999),var(32)
trigger1 = ctrl
trigger1 = playerID(var(49)),stateno = [1025,1027]
trigger1 = stateno = 50
trigger1 = vel Y >= 0
trigger1 = helper(99999),var(49) = -1 || NumHelper(3100) > 0
trigger2 = ctrl
trigger2 = stateno = 50
;trigger2 = time = 1
trigger2 = helper(99999),var(49) != -1 || (playerID(var(49)),stateno = [120,155]) || playerID(var(49)),MoveType!=H

[State -1, ジャンプ強攻撃]
type = ChangeState
value = 620
triggerall = var(59)
TriggerAll = RoundState=2 && (playerID(var(49)),movetype=H || helper(99999),var(35)!=6)
TriggerAll = playerID(var(49)),Alive
triggerall = statetype = A
;TriggerAll = playerID(var(49)),MoveType=H
;TriggerAll =(!InGuardDist&&helper(99999),var(0)=0)|| (helper(99999),var(0) = 1)
triggerall = helper(99999),var(32)
trigger1 = stateno = 610; && movecontact
trigger1 = movehit && time >= 5 ||(movecontact&&p2bodydist y <= 15)
trigger1 = helper(99999),var(49) = -1
trigger2 = stateno = 610 && movecontact
trigger2 = playerID(var(49)),gethitvar(hittime) < 5||(movehit&&animelemtime(7) = 2)||(movecontact&&p2bodydist y <= 15)
;trigger2 = helper(99999),var(49) = 1

[State -1, 走る コンボ]
type = ChangeState
value = 101
triggerall = var(59)
TriggerAll = playerID(var(49)),Alive
TriggerAll = RoundState=2 && (playerID(var(49)),movetype=H || helper(99999),var(35)!=6)
TriggerAll = StateType != A
triggerall = stateno != 101
triggerall = stateno != 21
TriggerAll = playerID(var(49)),StateType != L
triggerall = helper(99999),var(32)
triggerall = !(helper(99997),var(8) > 19 && inguarddist)
triggerall = ctrl
trigger1 = var(52) = 2
Trigger2 = playerID(var(49)),StateType != A && playerID(var(49)),MoveType = H
trigger2 = var(56) = 1
trigger2 = var(58) != -1
trigger2 = prevstateno = 400
trigger2 = p2bodydist X > 20 || helper(99999),var(29) = 2 || vel x < 0 || helper(99999),var(29) >= 6

[State -1, しゃがみ弱攻撃]
type = ChangeState
value = 400
triggerall = var(59)
TriggerAll = playerID(var(49)),Alive
TriggerAll = RoundState=2 && (playerID(var(49)),movetype=H || helper(99999),var(35)!=6)
TriggerAll = StateType != A
TriggerAll = playerID(var(49)),StateType != L
triggerall = playerID(var(49)),statetype != A
triggerall = helper(99999),var(32)
triggerall = ctrl||stateno=101||stateno=1
triggerall = playerID(var(49)),stateno != [1025,1027]
triggerall = !(inguarddist && helper(99999),var(35) >= 5)
triggerall = numprojID(1120) = 0
triggerall = !(helper(99997),var(8) > 19 && inguarddist)
trigger1 = (abs(p2bodydist x) = [0,30]) || (abs(p2bodydist x) = [0,75]) && stateno = 101 && var(56) = 0 && (time >= 10||playerID(var(49)),movetype != H)
trigger1 = var(56) = 0
Trigger1 = playerID(var(49)),MoveType != H
Trigger2 = playerID(var(49)),MoveType = H
trigger2 = stateno = 101 || abs(p2bodydist x) = [0,30]
trigger2 = abs(p2bodydist x) = [0,40]
;trigger3 = helper(99999),var(49)=1
;Trigger3 = playerID(var(49)),MoveType = H

;---------------------------------------------

[State -1, 走る]
type = ChangeState
value = 101
triggerall = var(59)
TriggerAll = playerID(var(49)),Alive
TriggerAll = RoundState=2
TriggerAll = StateType != A
TriggerAll = playerID(var(49)),StateType != L
;triggerall = helper(99999),var(32)
TriggerAll = ctrl
triggerall = stateno != 101
triggerall = stateno != 21
;TriggerAll = playerID(var(49)),StateType != A || (playerID(var(49)),MoveType !=H && playerID(var(49)),StateType = A && p2bodydist x > 50)
;triggerall = (numhelper(3510)=0 || numhelper(3510)>0&&fvar(31) = 1) || NumHelper(3520) = 0
triggerall = var(56) != 9
trigger1 = (var(57) = [10,20]) || playerID(var(49)),MoveType = H || numproj>0
trigger1 = (var(58)!=0 && (playerID(var(49)),stateno!=[120,155]) && playerID(var(49)),movetype!=H)||(var(58)!=0 && var(58)!=-1 && ((playerID(var(49)),stateno=[120,155]) || playerID(var(49)),movetype=H))
trigger1 = p2bodydist X >= 10 && stateno != 13
trigger2 = var(56)
trigger2 = p2bodydist X > 15
trigger3 = var(52) = 1
trigger4 = var(57) < 10
trigger4 = p2bodydist X > 150
trigger5 = (facing = helper(3520),facing) || (facing = helper(3510),facing)
trigger5 = projhittime(3511)>0||projhittime(3512)>0||projhittime(3513)>0
trigger6 = numhelper(1711)>0||numhelper(1712)>0
trigger6 = p2bodydist x >= 30

[State -1, 歩く]
type = ChangeState
value = 21
triggerall = var(59)
TriggerAll = playerID(var(49)),Alive
TriggerAll = RoundState=2
TriggerAll = StateType != A
TriggerAll =(!InGuardDist&&helper(99999),var(0)=0)|| (helper(99999),var(0) = 1)
TriggerAll = ctrl
triggerall = stateno != 21
triggerall = stateno != 101
triggerall = var(52) = 0
triggerall = helper(99999),var(32)
triggerall = helper(99997),var(1) > 50 || helper(99998),var(1) > 50
triggerall = helper(99997),var(2) > 30 || helper(99998),var(2) > 30
trigger1 = playerID(var(49)),StateType = L
trigger1 = p2dist X < 110;後
trigger2 = playerID(var(49)),StateType = L
trigger2 = p2dist X = [115,135];前
trigger3 = playerID(var(49)),StateType = L
trigger3 = p2dist X = [145,165];後
trigger4 = playerID(var(49)),StateType = L
trigger4 = p2dist X = [175,195];前
trigger5 = playerID(var(49)),StateType = L
trigger5 = p2dist X = [205,229];後
trigger6 = playerID(var(49)),StateType = L
trigger6 = p2dist X > 230;前
trigger7 = var(57) = [30,40]
trigger7 = (p2bodydist x = [0,100]) && BackEdgeBodyDist > 0;後
trigger8 = playerID(var(49)),StateType != L
trigger8 = var(57) < 10
trigger8 = p2bodydist x != [70,115]

[State -1, バックステップ]
type = ChangeState
value = 105
triggerall = var(59)
TriggerAll = playerID(var(49)),Alive
TriggerAll = RoundState=2
TriggerAll = StateType != A
;TriggerAll =(!InGuardDist&&helper(99999),var(0)=0)|| (helper(99999),var(0) = 1)
TriggerAll = ctrl||stateno=101||stateno=1
triggerall = helper(99997),var(2) > 160 || helper(99998),var(2) > 160
triggerall = numprojID(1120) = 0
triggerall = var(52) = 0
triggerall = helper(99999),var(32)
trigger1 = var(57) < 10
trigger1 = !(playerID(var(49)),StateType = A && playerID(var(49)),movetype = H)
trigger1 = (p2bodydist x = [0,49])
trigger2 = var(57) < 10
trigger2 = playerID(var(49)),Stateno = [5110,5120]
trigger2 = (p2bodydist x = [0,80])
trigger3 = var(57) = [30,40]
trigger3 = (playerID(var(49)),Stateno = [5070,5120]) || (p2bodydist x = [0,140])
trigger4 = prevstateno = 1010
trigger4 = playerID(var(49)),StateType = A
trigger5 = numprojID(3200)
trigger5 = var(57) = [30,40]
trigger5 = BackEdgeBodyDist > 60
trigger6 = random < 10*((10-helper(99999),var(55))**2)

[State -1, バックステップ]
type = ChangeState
value = 105
triggerall = var(59)
TriggerAll = playerID(var(49)),Alive
TriggerAll = RoundState=2
TriggerAll = StateType != A
TriggerAll = ctrl||stateno=101||stateno=1
triggerall = prevstateno != 400
triggerall = var(52) = 0
triggerall = helper(99997),var(2) > 160 || helper(99998),var(2) > 160
triggerall = helper(99999),var(32)
trigger1 = backedgebodydist >= 60
trigger1 = p2bodydist x < 90
trigger1 = playerID(var(49)),stateno = [1025,1027]
trigger1 = var(59)<3 && backedgebodydist >= 120 && power >= 1000
trigger1 = NumHelper(3300) = 0
trigger1 = var(12) = 0
trigger1 = var(56) != 8
trigger2 = var(57) = [30,40]
trigger2 = p2bodydist x = [0,119]
trigger2 = backedgebodydist >= 80

[State -1 回り込み]
type = ChangeState
value = 650
triggerall = var(59)
TriggerAll = playerID(var(49)),Alive
TriggerAll = RoundState=2
TriggerAll = StateType != A
TriggerAll = ctrl||stateno=101||stateno=21
triggerall = helper(99997),var(1) >= 170 || helper(99998),var(1) >= 170
triggerall = helper(99999),var(32)
trigger1 = helper(99997),var(3) > 20 || helper(99998),var(3) > 20
trigger1 = random < 400;（仮）
trigger1 = p2dist x = [0,230]
trigger1 = playerID(var(49)),movetype = A
trigger1 = !PlayerID(var(49)),HitDefAttr=,NT,ST,HT && playerID(var(49)),animtime < -30
trigger2 = playerID(var(49)),statetype = L
trigger2 = (p2bodydist x = [0,70]) || (helper(99997),var(2) <= 60 || helper(99998),var(2) <= 60)
trigger2 = backedgebodydist < 30 && (helper(99997),var(2) <= 60 || helper(99998),var(2) <= 60)
trigger3 = inguarddist
trigger3 = random<var(55)/20; || (helper(99999),var(0)=1 && PlayerID(var(49)),animtime<-4 && !PlayerID(var(49)),HitDefAttr=,NT,ST,HT)

[State -1, ガード]
Type = ChangeState
Value = 120
TriggerAll = Var(59)
TriggerAll = PlayerID(var(49)),Alive
TriggerAll = ctrl||stateno=101||stateno=1 || stateno = [13,15]
triggerall = helper(99999),var(45)
Triggerall = helper(99999),var(0)=0
;triggerall = PlayerID(var(49)),movetype != H
Trigger1 = InGuardDist
Trigger1 =! PlayerID(var(49)),HitDefAttr = ,NT,ST,HT
Trigger2 = Enemy,NumHelper > 0 || Enemy,NumProj > 0
Trigger2 = InGuardDist
Trigger3 = NumHelper(99999) > 0
trigger3 = helper(99999),var(52) = 1
Trigger3 = ((Helper(99999),Var(40))&&(PlayerID(var(49)),P2Dist X<0))|| (Helper(99999),Var(41))

[State -1, 矛盾でトドメさした]
Type = ChangeState
Value = 220
TriggerAll = Var(59)
triggerall = statetype !=A && statetype !=L
TriggerAll = ctrl
Trigger1 = playerID(var(49)),stateno = [1025,1027]
trigger1 = roundstate = 3

;------------------------------------------------------------------------------
;スーパーコンボ
;------------------------------------------------------------------------------

[State -1,（超必殺）エアロスミス（ノーマル）]
type = ChangeState
value = 3500
triggerall = var(59)<=0
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
triggerall = var(59)<=0
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
triggerall = var(59)<=0
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
triggerall = var(59)<=0
triggerall = command = "mes_xy"
triggerall = power >= 1000
triggerall = NumHelper(1711) = 0
triggerall = NumProjID(1711) = 0
triggerall =  var(20)=0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno != [3100,3300)
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = (time > 9) || (movecontact && time > 5)

[State -1, （超必殺）ナイフス XZ]
type = ChangeState
value = 3200
triggerall = var(59)<=0
triggerall = command = "mes_xz"
triggerall = power >= 1000
triggerall = NumHelper(1711) = 0
triggerall = NumProjID(1711) = 0
triggerall =  var(20)=0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno != [3100,3300)
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = (time > 9) || (movecontact && time > 5)

[State -1, （超必殺）ナイフス YZ]
type = ChangeState
value = 3300
triggerall = var(59)<=0
triggerall = command = "mes_yz"
triggerall = power >= 1000
triggerall = NumHelper(1711) = 0
triggerall = NumProjID(1711) = 0
triggerall =  var(20)=0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno != [3100,3300)
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = (time > 9) || (movecontact && time > 5)

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
triggerall = var(59)<=0
triggerall = command ="metalica_x"||command ="metalica_y"||command ="metalica_z"
;trigger1 = var(1)
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = var(12) = 0



;------------------------------------------------------------------------------



[State -1, （必殺）メス]
type = ChangeState
value = 1300
triggerall = var(59)<=0
triggerall = command = "mes_x" ||command = "mes_y"||command = "mes_z"
triggerall = var(12) = 1
triggerall = NumHelper(1711) = 0 
triggerall = NumProjID(1711) = 0
;trigger1 = ctrl
trigger1 = var(1)

[State -1, （必殺）ナイフ]
type = ChangeState
value = 1200
triggerall = var(59)<=0
triggerall = command = "mes_x" ||command = "mes_y"||command = "mes_z"
triggerall = var(12) = 0
trigger1 = var(1)
;------------------------------------------------------------------------------


[State -1,（必殺）死んでもらう]
type = ChangeState
value = 1310  
triggerall = var(59)<=0
triggerall = command = "It_dies_x"||command = "It_dies_y"||command = "It_dies_z"
trigger1 = var(1)



;------------------------------------------------------------------------------
;------------------------------------------------------------------------------



[State -1, 矛盾]
type = ChangeState
value = 1020
triggerall = var(59)<=0
triggerall = statetype = S || stateno > 200
;triggerall = command = "F_z"
triggerall = command = "z"
triggerall = command = "holdfwd"
triggerall = command != "holddownF"
Trigger1 = enemy,stateno != 1025
Trigger1 = enemy,stateno != 1026
Trigger1 = enemy,stateno != 1027
Trigger1 = enemy,stateno != 1028
trigger1 = var(1) ;上で設定した変数が有効になった時

[State -1, 前弱攻撃]
type = ChangeState
value = 1000
triggerall = var(59)<=0
triggerall = statetype = S || stateno > 200
;triggerall = command = "F_x"
triggerall = command = "x"
triggerall = command = "holdfwd"
triggerall = command != "holddownF"
trigger1 = var(1)

[State -1, 前中攻撃]
type = ChangeState
value = 1010
triggerall = var(59)<=0
triggerall = statetype = S || stateno > 200
;triggerall = command = "F_y"
triggerall = command = "y"
triggerall = command = "holdfwd"
triggerall = command != "holddownF"
trigger1 = var(1)



;==============================================================================
; 移動関連
;==============================================================================
;------------------------------------------------------------------------------

[State -1, 走る]
type = ChangeState
value = 100
triggerall = var(59)<=0
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, バックステップ]
type = ChangeState
value = 105
triggerall = var(59)<=0
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
triggerall = var(59)<=0
triggerall = command = "c"
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = statetype != A && ctrl



;------------------------------------------------------------------------------

[State -1, AVG]
type = ChangeState
triggerall = var(59) <= 0
triggerall = statetype != A
triggerall = command = "x+y+z" || command = "b"
triggerall = prevstateno != [710,711]
trigger1 = stateno = [150,153]
value = 710
;==============================================================================
; 通常攻撃技
;==============================================================================
;------------------------------------------------------------------------------

[State -1,立ち弱攻撃]
type = changestate
value = 200
triggerall = var(59)<=0
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl =1
trigger2 = stateno = 200
trigger2 = time > 6


[State -1, 立ち中攻撃]
type = ChangeState
value = 210
triggerall = var(59)<=0
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5



[State -1, 立ち強攻撃]
type = ChangeState
value = 220
triggerall = var(59)<=0
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
triggerall = var(59)<=0
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;------------------------------------------------------------------------------

[State -1, しゃがみ弱攻撃]
type = ChangeState
value = 400
triggerall = var(59)<=0
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

[State -1, しゃがみ中攻撃]
type = ChangeState
value = 410
triggerall = var(59)<=0
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) 
trigger2 = (time > 9) || (movecontact && time > 5)


[State -1, しゃがみ強攻撃]
type = ChangeState
value = 420
triggerall = var(59)<=0
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
triggerall = var(59)<=0
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 7

[State -1, ジャンプ中攻撃]
type = ChangeState
value = 610
triggerall = var(59)<=0
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact


[State -1, ジャンプ強攻撃]
type = ChangeState
value = 620
triggerall = var(59)<=0
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
triggerall = var(59)<=0
triggerall = var(12) = 0
triggerall = command = "a" && command != "x" && command != "y" && command != "z"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [100,105]

[State -1, スタンドＯＮ（座り）]
type = ChangeState
value = 1610
triggerall = var(59)<=0
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
triggerall = var(59)<=0
triggerall = var(12) = 1
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [100,105]


[State -1, スタンドＯＦＦ（座り）]
type = ChangeState
value = 1611
triggerall = var(59)<=0
triggerall = var(12) = 1
triggerall = command = "a"
triggerall = command = "holddown"

trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = [100,105]

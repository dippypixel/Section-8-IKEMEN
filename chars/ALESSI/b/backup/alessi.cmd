
;=====================================================================
;  CMD File For "alessi"	                               Made By H"
;          
;=====================================================================
; 
;   
;
;
;=====================================================================
; Definition of the Commands
;=====================================================================
 
;-| Super Motions |---------------------------------------------------
[Command]
name = "ushi-ushi-ushi!"
command = ~D, DB, B, x+y

[Command]
name = "ushi-ushi-ushi!"
command = ~D, DB, B, x+z

[Command]
name = "ushi-ushi-ushi!"
command = ~D, DB, B, y+z

[Command]
name = "zetsubo-dane!"
command = ~D, DF, F, x+y

[Command]
name = "zetsubo-dane!"
command = ~D, DF, F, x+z

[Command]
name = "zetsubo-dane!"
command = ~D, DF, F, y+z

[Command]
name = "tandem"
command = ~D, DB, B, a

;-| Special Motions |-------------------------------------------------
[Command]
name = "hati-no-su-da!_x"
command = ~B, DB, D, DF, F, x
Time = 20

[Command]
name = "hati-no-su-da!_y"
command = ~B, DB, D, DF, F, y

[Command]
name = "hati-no-su-da!_z"
command = ~B, DB, D, DF, F, z

[Command]
name = "gakintyo-ga!_x"
command = ~F, DF, D, DB, B, x

[Command]
name = "gakintyo-ga!_y"
command = ~F, DF, D, DB, B, y

[Command]
name = "gakintyo-ga!_z"
command = ~F, DF, D, DB, B, z

[Command]
name = "gakintyo-ga!"
command = ~D, DF, F, a

[Command]
name = "GuardCancel"
command = ~D, DF, F, x

[Command]
name = "GuardCancel"
command = ~D, DF, F, y

[Command]
name = "GuardCancel"
command = ~D, DF, F, z

;-| Double Tap |------------------------------------------------------
[Command]
name = "FF";Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB";Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery";Required (do not remove)
command = x+z
time = 1

[Command]
name = "recovery";Required (do not remove)
command = y+z
time = 1

[Command]
name = "xyz"
command = x+y+z
time = 1

;-| Dir + Button |----------------------------------------------------
[Command]
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "fwd_z"
command = /F,z
time = 1

[Command]
name = "back_z"
command = /B,z
time = 1

;-| Single Button |---------------------------------------------------
[Command]
name = "x"
command = x
time = 1

[Command]
name = "a"
command = a
time = 1

[Command]
name = "y"
command = y
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
name = "z"
command = z
time = 1

[Command]
name = "s"
command = s
time = 1

[Command]
name = "U"
command = /U
time = 1

[Command]
name = "D"
command = /D
time = 1

[Command]
name = "B"
command = /B
time = 1

[Command]
name = "F"
command = /F
time = 1

[Command]
name = "UB"
command = /UB
time = 1

[Command]
name = "UF"
command = /UF
time = 1

[Command]
name = "DB"
command = /DB
time = 1

[Command]
name = "DF"
command = /DF
time = 1

;----------------------------- ボタン連打
[Command]
name = "random1"
command = x
time = 1

[Command]
name = "random2"
command = y
time = 1

[Command]
name = "random3"
command = z
time = 1

;-| Hold Button |-----------------------------------------------------
[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_y"
command = /y
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
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_s"
command = /s
time = 1

;-| Hold Dir |--------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup";Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Command]
name = "holdupfwd"
command = /UF
time = 1

;=====================================================================
; State Entry for Commands
;=====================================================================

[Statedef -1]

;=====================================================================
; CPU Function
;=====================================================================
;
;=====================================================================
; Super Arts
;=====================================================================
;
;---------------------------------------------------------------------
; ウシウシウシッ！
[State -1]
type = ChangeState
value = 3000
triggerall = Command = "ushi-ushi-ushi!" && StateType != A && Power >= 1000 
triggerall = Var(24)=0 && Var(35)=0
trigger1 =  ctrl || stateno = 100
trigger2 = MoveContact && (StateNo = 200 && AnimElemNo(0) >= 2)
trigger3 = MoveContact && (StateNo = 210 && AnimElemNo(0) >= 3)
trigger4 = MoveContact && (StateNo = 220 && AnimElemNo(0) >= 3)
trigger5 = MoveContact && (StateNo = 400 && AnimElemNo(0) >= 2)
trigger6 = MoveContact && (StateNo = 410 && AnimElemNo(0) >= 2)

;---------------------------------------------------------------------
; 絶望ォォォだねッ！
[State -1]
type = ChangeState
value = 3100
triggerall = Command = "zetsubo-dane!" && StateType != A && Power >= 1000 
triggerall = Var(24)=0 && Var(35)=0
trigger1 =  ctrl || stateno = 100
trigger2 = MoveContact && (StateNo = 200 && AnimElemNo(0) >= 2)
trigger3 = MoveContact && (StateNo = 210 && AnimElemNo(0) >= 3)
trigger4 = MoveContact && (StateNo = 220 && AnimElemNo(0) >= 3)
trigger5 = MoveContact && (StateNo = 400 && AnimElemNo(0) >= 2)
trigger6 = MoveContact && (StateNo = 410 && AnimElemNo(0) >= 2)

;---------------------------------------------------------------------
; タンデムアタック
[State -1]
type = ChangeState
value = 6000
triggerall = Command = "tandem" && StateType != A && Power >= 1000 
triggerall = Var(24)=0 && Var(35)=0
trigger1 =  ctrl || stateno = 100
trigger2 = MoveContact && (StateNo = 200 && AnimElemNo(0) >= 2)
trigger3 = MoveContact && (StateNo = 210 && AnimElemNo(0) >= 3)
trigger4 = MoveContact && (StateNo = 220 && AnimElemNo(0) >= 3)
trigger5 = MoveContact && (StateNo = 400 && AnimElemNo(0) >= 2)
trigger6 = MoveContact && (StateNo = 410 && AnimElemNo(0) >= 2)

;=====================================================================
; Special Arts 
;=====================================================================

;---------------------------------------------------------------------
; 蜂の巣だッ！・弱
[State -1]
type = ChangeState
value = 1000
triggerall = Command = "hati-no-su-da!_x" && StateType != A
trigger1 =  ctrl || stateno = 6010 || (stateno = 100 && AnimElemNo(0) >= 2)
trigger2 = MoveContact && (StateNo = 200 && AnimElemNo(0) >= 2) && Var(35)=0
trigger3 = MoveContact && (StateNo = 210 && AnimElemNo(0) >= 3) && Var(35)=0
trigger4 = MoveContact && (StateNo = 220 && AnimElemNo(0) >= 3) && Var(35)=0
trigger5 = MoveContact && (StateNo = 400 && AnimElemNo(0) >= 2) && Var(35)=0
trigger6 = MoveContact && (StateNo = 410 && AnimElemNo(0) >= 2) && Var(35)=0

;---------------------------------------------------------------------
; 蜂の巣だッ！・中
[State -1]
type = ChangeState
value = 1005
triggerall = Command = "hati-no-su-da!_y" && StateType != A
trigger1 =  ctrl || stateno = 6010 || (stateno = 100 && AnimElemNo(0) >= 2)
trigger2 = MoveContact && (StateNo = 200 && AnimElemNo(0) >= 2) && Var(35)=0
trigger3 = MoveContact && (StateNo = 210 && AnimElemNo(0) >= 3) && Var(35)=0
trigger4 = MoveContact && (StateNo = 220 && AnimElemNo(0) >= 3) && Var(35)=0
trigger5 = MoveContact && (StateNo = 400 && AnimElemNo(0) >= 2) && Var(35)=0
trigger6 = MoveContact && (StateNo = 410 && AnimElemNo(0) >= 2) && Var(35)=0

;---------------------------------------------------------------------
; 蜂の巣だッ！・強
[State -1]
type = ChangeState
value = 1006
triggerall = Command = "hati-no-su-da!_z" && StateType != A
trigger1 =  ctrl || stateno = 6010 || (stateno = 100 && AnimElemNo(0) >= 2)
trigger2 = MoveContact && (StateNo = 200 && AnimElemNo(0) >= 2) && Var(35)=0
trigger3 = MoveContact && (StateNo = 210 && AnimElemNo(0) >= 3) && Var(35)=0
trigger4 = MoveContact && (StateNo = 220 && AnimElemNo(0) >= 3) && Var(35)=0
trigger5 = MoveContact && (StateNo = 400 && AnimElemNo(0) >= 2) && Var(35)=0
trigger6 = MoveContact && (StateNo = 410 && AnimElemNo(0) >= 2) && Var(35)=0

;---------------------------------------------------------------------
; カッサバイてやるッ！
[State -1]
type = ChangeState
value = IfElse((Var(18) > 60 && Var(18) < 240),1100,IfElse((Var(18) > 240 && Var(18) < 420),1110,1120))
triggerall = StateType != A && Var(17) = 0 && Var(18) > 60 && Var(11)= 1 && !Numhelper(9200)
trigger1 =  ctrl || stateno = 6010 || (stateno = 100 && AnimElemNo(0) >= 2)
trigger2 = MoveContact && (StateNo = 200 && AnimElemNo(0) >= 2) && Var(35)=0
trigger3 = MoveContact && (StateNo = 210 && AnimElemNo(0) >= 3) && Var(35)=0
trigger4 = MoveContact && (StateNo = 220 && AnimElemNo(0) >= 3) && Var(35)=0
trigger5 = MoveContact && (StateNo = 400 && AnimElemNo(0) >= 2) && Var(35)=0
trigger6 = MoveContact && (StateNo = 410 && AnimElemNo(0) >= 2) && Var(35)=0

;---------------------------------------------------------------------
; ガキんちょがッ！・弱
[State -1]
type = ChangeState
value = IfElse(Var(11)=1,1200,1300)
triggerall = Command = "gakintyo-ga!_x" && StateType != A && Var(24)=0 && Var(33)=0
trigger1 =  ctrl || (stateno = 100 && AnimElemNo(0) >= 2)
trigger2 = MoveContact && (StateNo = 200 && AnimElemNo(0) >= 2)
trigger3 = MoveContact && (StateNo = 210 && AnimElemNo(0) >= 3)
trigger4 = MoveContact && (StateNo = 220 && AnimElemNo(0) >= 3)
trigger5 = MoveContact && (StateNo = 400 && AnimElemNo(0) >= 2)
trigger6 = MoveContact && (StateNo = 410 && AnimElemNo(0) >= 2)

;---------------------------------------------------------------------
; ガキんちょがッ！・中
[State -1]
type = ChangeState
value = IfElse(Var(11)=1,1210,1300)
triggerall = Command = "gakintyo-ga!_y" && StateType != A && Var(24)=0 && Var(33)=0
trigger1 =  ctrl || (stateno = 100 && AnimElemNo(0) >= 2)
trigger2 = MoveContact && (StateNo = 200 && AnimElemNo(0) >= 2)
trigger3 = MoveContact && (StateNo = 210 && AnimElemNo(0) >= 3)
trigger4 = MoveContact && (StateNo = 220 && AnimElemNo(0) >= 3)
trigger5 = MoveContact && (StateNo = 400 && AnimElemNo(0) >= 2)
trigger6 = MoveContact && (StateNo = 410 && AnimElemNo(0) >= 2)

;---------------------------------------------------------------------
; ガキんちょがッ！・強
[State -1]
type = ChangeState
value = IfElse(Var(11)=1,1220,1300)
triggerall = Command = "gakintyo-ga!_z" && StateType != A && Var(24)=0 && Var(33)=0
trigger1 =  ctrl || (stateno = 100 && AnimElemNo(0) >= 2)
trigger2 = MoveContact && (StateNo = 200 && AnimElemNo(0) >= 2)
trigger3 = MoveContact && (StateNo = 210 && AnimElemNo(0) >= 3)
trigger4 = MoveContact && (StateNo = 220 && AnimElemNo(0) >= 3)
trigger5 = MoveContact && (StateNo = 400 && AnimElemNo(0) >= 2)
trigger6 = MoveContact && (StateNo = 410 && AnimElemNo(0) >= 2)

;=====================================================================
; Basic Animation
;=====================================================================

;---------------------------------------------------------------------
;RunFwd
[State -1]
type = ChangeState
value = 100
trigger1 = Command = "FF" && StateType = S && Ctrl = 1 && StateNo != 100 && StateNo != 101

;---------------------------------------------------------------------
;RunBack
[State -1]
type = ChangeState
value = 105
trigger1 = Command = "BB" && StateType = S && Ctrl = 1

;=====================================================================
; 2/3 Buttons
;=====================================================================
;
;=====================================================================
; Basic Throws
;=====================================================================

;---------------------------------------------------------------------
; 投げ
[State -1]
type = ChangeState
value = 800
triggerall = StateNo != 100 && StateNo != 4000 && StateType = S && Ctrl = 1 && Var(24)=0
triggerall = P2MoveType != H && !P2StateType = A
trigger1 = Command = "fwd_z" && P2BodyDist X < 8
trigger2 = Command = "back_z" && P2BodyDist X < 20

;---------------------------------------------------------------------
; Special Attacks , Moves and so on.
;---------------------------------------------------------------------
;---------------------------------------------------------------------
; 回り込み
[State -1]
type = ChangeState
value = 4000
triggerall = statetype != A && Var(11)= 0
triggerall = command = "xyz"
trigger1 = (ctrl || stateno = 100 || stateno = 101)

;---------------------------------------------------------------------
; アドバンシングガード
[State -1]
type = ChangeState
value = IfElse(StateType = S,4200,4210)
triggerall = command = "xyz" && var(33) = 0
trigger1 = statetype != A
trigger1 = StateNo = [150,153]
ignorehitpause = 1

;---------------------------------------------------------------------
; ガードキャンセル
[State -1]
type = ChangeState
value = 4100
triggerall = command = "GuardCancel"
triggerall = statetype != A
trigger1 = StateNo = [150,153]
ignorehitpause = 1

;---------------------------------------------------------------------
; スタンド出現攻撃
[State -1]
type = ChangeState
value = 4300+Var(33)*50
trigger1 = var(11) = 0 && !isHelper(9100) && !isHelper(1350) && Var(24)=0 && !Numhelper(9200)
trigger1 = command = "gakintyo-ga!"
trigger1 = statetype != A  &&  (ctrl || (stateno = 100 && AnimElemNo(0) >= 2))

;=====================================================================
; Dir + Button
;=====================================================================
;---------------------------------------------------------------------
[State -1]
type = ChangeState
value = 300
triggerall = Command = "fwd_y" && !Command = "holddown" && var(11) = 1
trigger1 = StateType = S && Ctrl

;=====================================================================
; Taunts
;=====================================================================

;---------------------------------------------------------------------
; 挑発
[State -1]
type = ChangeState
value = 195
triggerall = command = "s"
trigger1 = StateType = S && (stateno = 6010 || Ctrl)

;=====================================================================
; Basic Arts
;=====================================================================

;---------------------------------------------------------------------
; 立ち弱攻撃
[State -1]
type = ChangeState
value = IfElse(((P2BodyDist X >= 25 || (stateno = 100 && AnimElem= 2,>0)) && Var(11)= 1 && !Numhelper(9200)),201,IfElse((stateno = 100 && AnimElem= 2,>0 && Var(24)!= 0),220,200))
triggerall = Command = "x" && (!Command = "holddown" || Command = "holddown" && Var(11)= 1 && stateno = 100 && AnimElem= 2,>0)
trigger1 = StateType = S && (ctrl || stateno = 6010 || (stateno = 100 && AnimElem= 2,>0))
trigger2 = MoveContact && (StateNo = 200 && AnimElemNo(0) >= 3) && Var(35)=0
trigger3 = MoveContact && (StateNo = 400 && AnimElemNo(0) >= 3) && Var(35)=0
trigger4 = MoveContact && Var(11)= 0 && (StateNo = 410 && AnimElemNo(0) >= 2) && Var(35)=0

;---------------------------------------------------------------------
; 立ち中攻撃
[State -1]
type = ChangeState
value = IfElse(((P2BodyDist X >= 35 || (stateno = 100 && AnimElem= 2,>0)) && Var(11)= 1 && !Numhelper(9200)),211,IfElse((stateno = 100 && AnimElem= 2,>0 && Var(24)!= 0),220,210))
triggerall = Command = "y" && (!Command = "holddown" || Command = "holddown" && Var(11)= 1 && stateno = 100 && AnimElem= 2,>0)
trigger1 = StateType = S && (ctrl || stateno = 6010 || (stateno = 100 && AnimElem= 2,>0))

;---------------------------------------------------------------------
; 立ち強攻撃
[State -1]
type = ChangeState
value = IfElse(((Var(24)!= 0 || (Var(24)= 0 && P2BodyDist X >= 45) || (stateno = 100 && AnimElem= 2,>0)) && Var(11)= 1 && !Numhelper(9200)),221,220)
triggerall = Command = "z" && (!Command = "holddown" || Command = "holddown" && Var(11)= 1 && stateno = 100 && AnimElem= 2,>0) 
trigger1 = StateType = S && (ctrl || stateno = 6010 || (stateno = 100 && AnimElem= 2,>0))
trigger2 = MoveContact && (StateNo = 200 && AnimElemNo(0) >= 3) && Var(35)=0
trigger3 = MoveContact && (StateNo = 400 && AnimElemNo(0) >= 3) && Var(35)=0

;---------------------------------------------------------------------
; しゃがみ弱攻撃
[State -1]
type = ChangeState
value = IfElse((P2BodyDist X >= 25 && stateno != 100 && Var(11)= 1 && !Numhelper(9200)),401,400)
triggerall = Command = "x" && Command = "holddown" 
trigger1 = (StateType = C && ctrl ||stateno = 6010 ||  stateno = 100 && AnimElem= 2,>0 && Var(11)= 0) 
trigger2 = MoveContact && (StateNo = 200 && AnimElemNo(0) >= 3) && Var(35)=0
trigger3 = MoveContact && (StateNo = 400 && AnimElemNo(0) >= 3) && Var(35)=0
trigger4 = MoveContact && (StateNo = 410 && AnimElemNo(0) >= 2) && Var(35)=0

;---------------------------------------------------------------------
; しゃがみ中攻撃
[State -1]
type = ChangeState
value = IfElse((P2BodyDist X >= 25 && stateno != 100 && Var(11)= 1 && !Numhelper(9200)),411,IfElse(Var(24)!= 0,400,410))
triggerall = Command = "y" && Command = "holddown"
trigger1 = (StateType = C && ctrl || stateno = 6010 || stateno = 100 && AnimElem= 2,>0 && Var(11)= 0)
trigger2 = MoveContact && (StateNo = 200 && AnimElemNo(0) >= 3) && Var(35)=0
trigger3 = MoveContact && (StateNo = 400 && AnimElemNo(0) >= 3) && Var(35)=0

;---------------------------------------------------------------------
; しゃがみ強攻撃
[State -1]
type = ChangeState
value = IfElse(((stateno = 100 && AnimElem= 2,>0) && Var(11)= 0 && !Numhelper(9200)),410,IfElse((Var(24)!= 0 && Var(11)= 0),400,420))
triggerall = Command = "z" && Command = "holddown" 
trigger1 = (StateType = C && ctrl || stateno = 6010 || stateno = 100 && AnimElem= 2,>0 && Var(11)= 0)

;---------------------------------------------------------------------
; ジャンプ弱攻撃
[State -1]
type = ChangeState
value = 600
trigger1 = Command = "x" && StateType = A && Ctrl && !Numhelper(9200)

;---------------------------------------------------------------------
; ジャンプ中攻撃
[State -1]
type = ChangeState
value = 610
trigger1 = Command = "y" && StateType = A && Ctrl && !Numhelper(9200)

;---------------------------------------------------------------------
; ジャンプ強攻撃
[State -1]
type = ChangeState
value = 620
trigger1 = Command = "z" && StateType = A && Ctrl && !Numhelper(9200)

;---------------------------------------------------------------------
; スタンドモードON
[State -1]
type = ChangeState
value = ifelse(statetype = S,9000,9001)
trigger1 = var(11) = 0 && !isHelper(9100) && !isHelper(1350) 
trigger1 = command = "a"
trigger1 = statetype != A  && stateno != 9000 && (ctrl || (stateno = 100 && AnimElemNo(0) >= 2))

;---------------------------------------------------------------------
; スタンドモードOFF
[State -1]
type = ChangeState
value = ifelse(statetype = S,9010,9011)
trigger1 = var(11) = 1 && !isHelper(9100) && !isHelper(1350) 
trigger1 = command = "a"
trigger1 = statetype != A && stateno != 9010 && (ctrl || (stateno = 100 && AnimElemNo(0) >= 2))

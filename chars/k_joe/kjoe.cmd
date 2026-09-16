; Crazy Joe goes for it!

;-| Button Remapping |-----------------------------------------------------
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

[Defaults]
command.time = 16
command.buffer.time = 2

;-| Super |-----------------------------------------------------------
[Command]
name = "hcb_k"
command = ~F, D, B, a
time = 16
[Command]
name = "hcb_k"
command = ~F, D, B, b
time = 16
[Command]
name = "hcb_k"
command = ~F, D, B, c
time = 16

[Command]
name = "2qcb_p"
command = D, B, D, B, x
time = 24
[Command]
name = "2qcb_p"
command = D, B, D, B, y
time = 24
[Command]
name = "2qcb_p"
command = D, B, D, B, z
time = 24

[Command]
name = "2qcf_2p"
command = D, F, D, F, x+y
time = 24
[Command]
name = "2qcf_2p"
command = D, F, D, F, z
time = 24

[Command]
name = "2qcf_p"
command = D, F, D, F, x
time = 24
[Command]
name = "2qcf_p"
command = D, F, D, F, y
time = 24
[Command]
name = "2qcf_p"
command = D, F, D, F, z
time = 24

[Command]
name = "2qcf_k"
command = D, F, D, F, a
time = 24
[Command]
name = "2qcf_k"
command = D, F, D, F, b
time = 24
[Command]
name = "2qcf_k"
command = D, F, D, F, c
time = 24

;-| Special |-----------------------------------------------------------
[Command]
name = "qcb_k"
command = ~D, DB, B, a
time = 15
[Command]
name = "qcb_k"
command = ~D, DB, B, b
time = 15
[Command]
name = "qcb_k"
command = ~D, DB, B, c
time = 15

[Command]
name = "qcb_p"
command = ~D, DB, B, x
time = 15
[Command]
name = "qcb_p"
command = ~D, DB, B, y
time = 15
[Command]
name = "qcb_p"
command = ~D, DB, B, z
time = 15

[Command]
name = "dp_k"
command = ~F, D, DF, a
time = 15
[Command]
name = "dp_k"
command = ~F, D, DF, b
time = 15
[Command]
name = "dp_k"
command = ~F, D, DF, c
time = 15

[Command]
name = "qcf_p"
command = ~D, DF, F, x
time = 15
[Command]
name = "qcf_p"
command = ~D, DF, F, y
time = 15
[Command]
name = "qcf_p"
command = ~D, DF, F, z
time = 15

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10
[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| Recovery |-------------------------------------------------------------
[Command]
name = "recovery" ;Required (do not remove)
command = a
time = 1
[Command]
name = "recovery" ;Required (do not remove)
command = b
time = 1
[Command]
name = "recovery" ;Required (do not remove)
command = c
time = 1
[Command]
name = "recovery" ;Required (do not remove)
command = x
time = 1
[Command]
name = "recovery" ;Required (do not remove)
command = y
time = 1
[Command]
name = "recovery" ;Required (do not remove)
command = z
time = 1

;-| Single Button |---------------------------------------------------------
[Command]
name = "fwd"
command = $F
time = 1
buffer.time = 1
[Command]
name = "down"
command = $D
time = 1
buffer.time = 1
[Command]
name = "back"
command = $B
time = 1
buffer.time = 1
[Command]
name = "up"
command = $U
time = 1
buffer.time = 1
[Command]
name = "a"
command = a
time = 1
buffer.time = 1
[Command]
name = "b"
command = b
time = 1
buffer.time = 1
[Command]
name = "c"
command = c
time = 1
buffer.time = 1
[Command]
name = "x"
command = x
time = 1
buffer.time = 1
[Command]
name = "y"
command = y
time = 1
buffer.time = 1
[Command]
name = "z"
command = z
time = 1
buffer.time = 1
[Command]
name = "start"
command = s
time = 1
buffer.time = 1

;-| Hold Button |-----------------------------------------------------------
[Command]
name = "hold_x"
command = /$x
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
command = /$a
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

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1
[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1
[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1
[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Statedef -1]
;===========================================================================
;---------------------------------------------------------------------------
[State 0, AI Checks Hittable]
type = VarSet
trigger1 = Var(15)
v = 16
value = 1
[State 0, AI Checks Hittable]
type = VarSet
triggerall = Var(15)
trigger1 = EnemyNear,StateNo = [5100,5120]
trigger2 = EnemyNear,PrevStateNo = [5100,5120]
trigger3 = EnemyNear,StateType = L
trigger4 = P2BodyDist X > 128 && EnemyNear,MoveType = H
v = 16
value = 0
[State 0, AI Guard]
Type = ChangeState
Value = 120
triggerall = Var(15) != 0 && (Ctrl || (StateNo = 100 || StateNo = 101))
trigger1 = Var(15) && (Var(15)**3)*2*0.9 > random && RoundState = 2 
trigger1 = !(enemynear,hitdefattr=SCA,AT) && inguarddist
trigger1 = (stateno!=[120,155])

;===========================================================================
;---------------------------------------------------------------------------
[State -1, Jump Cancel]
Type = ChangeState
value = ifelse(statetype = A,45,40)
triggerall = statetype != A || statetype = A && var(2) = 1
triggerall = (StateNo = [100,101]) || (StateNo = [200,800)) && MoveHit = 1
trigger1 = command = "holdup" && !Var(15)
trigger2 = Var(15) && (Var(15)**3)*2*0.4 > random && RoundState = 2 ; AI goes to air rave
trigger2 = StateNo = 215 & MoveHit
trigger3 = Var(15) && (Var(15)**3)*2*0.9 > random && RoundState = 2 ; AI does a double jump combo
trigger3 = StateNo = 710 & MoveHit && Var(2)
trigger4 = Var(15) && (Var(15)**3)*2*0.4 > random && RoundState = 2 ; AI tries to longjump
trigger4 = StateNo = 100 && P2BodyDist X > 96 && EnemyNear,MoveType = A

;---------------------------------------------------------------------------
; Dash Fwd
[State -1, Dash Fwd]
type = ChangeState
value = 100
triggerall = ctrl && StateNo != 101
triggerall = statetype != A
trigger1 = command = "FF" && command != "holddown" && !Var(15)
trigger2 = Var(15) && (Var(15)**3)*2*0.7 > random && RoundState = 2 ; AI tries to close the gap
trigger2 = P2BodyDist X > 8 && Var(16) && StateNo != 120

;---------------------------------------------------------------------------
; Dash Back
[State -1, Dash Back]
type = ChangeState
value = 105
triggerall = ctrl
triggerall = statetype != A
trigger1 = command = "BB" && command != "holddown" && !Var(15)
trigger2 = Var(15) && (Var(15)**3)*2*0.9 > random && RoundState = 2 ; AI backs off
trigger2 = !Var(16) && P2BodyDist X < 32 && !NumHelper(1210)

;---------------------------------------------------------------------------
; Dodge
[State -1, Dodge]
type = ChangeState
value = 110
triggerall = ctrl
triggerall = statetype != A
trigger1 = command = "x" && command = "a" && !Var(15)
trigger2 = Var(15) && (Var(15)**3)*2*0.9 > random && RoundState = 2 
trigger2 = !(enemynear,hitdefattr=SCA,AT) && inguarddist
trigger2 = P2BodyDist X < 96 && EnemyNear,Time <= 1

;===========================================================================
;---------------------------------------------------------------------------
; 2QCB+P
[State -1, 2QCB+P]
type = ChangeState
value = 2300-(Var(45)*100)
triggerall = statetype != A
triggerall = power >= 1000
triggerall = !Var(31)
triggerall = ctrl || (StateNo = [100,101]) || (StateNo = [200,800)) && MoveContact || (StateNo = [1000,2000)) && MoveContact
trigger1 = command = "2qcb_p" && !Var(15)
trigger2 = Var(15) && (Var(15)**3)*2*0.5 > random && RoundState = 2 ; AI chains from f+lp
trigger2 = StateNo = 205 && MoveHit = 1 && EnemyNear,StateType != A

;---------------------------------------------------------------------------
; 2QCF+K
[State -1, 2QCF+K]
type = ChangeState
value = 2100+(Var(45)*10)
;triggerall = statetype != A
triggerall = power >= 1000
triggerall = ctrl || (StateNo = [100,101]) || (StateNo = [200,800)) && MoveContact || (StateNo = [1000,2000)) && MoveContact
trigger1 = command = "2qcf_k" && !Var(15)
trigger2 = Var(15) && (Var(15)**3)*2*0.2 > random && RoundState = 2 ; AI chains from dp+k
trigger2 = Anim = 1100 && AnimElemNo(0) = 5 && MoveHit
trigger3 = Var(15) && (Var(15)**3)*2*0.9 > random && RoundState = 2 ; AI chains from a.HK
trigger3 = MoveHit && StateNo = 1305

;---------------------------------------------------------------------------
; 2QCF+2P
[State -1, 2QCF+2P]
type = ChangeState
value = 2050
triggerall = statetype != A
triggerall = power >= 2000
triggerall = ctrl || (StateNo = [100,101]) || (StateNo = [200,800)) && MoveContact || (StateNo = [1000,2000)) && MoveContact
trigger1 = command = "2qcf_2p" && !Var(15)
trigger2 = Var(15) && (Var(15)**3)*2*0.3 > random && RoundState = 2 ; AI chains from qcb+p
trigger2 = Anim = 1003 && AnimElemNo(0) = 5 && EnemyNear,MoveType = H

;---------------------------------------------------------------------------
; 2QCF+P
[State -1, 2QCF+P]
type = ChangeState
value = 2000
triggerall = statetype != A
triggerall = power >= 1000
triggerall = ctrl || (StateNo = [100,101]) || (StateNo = [200,800)) && MoveContact || (StateNo = [1000,2000)) && MoveContact
trigger1 = command = "2qcf_p" && !Var(15)
trigger2 = Var(15) && (Var(15)**3)*2*0.9 > random && RoundState = 2 ; AI chains from qcb+p
trigger2 = Anim = 1003 && AnimElemNo(0) = 5 && EnemyNear,MoveType = H

;===========================================================================
;---------------------------------------------------------------------------
; HCB+K
[State -1, HCB+K]
type = ChangeState
value = 1400+(Var(45)*1000)
triggerall = statetype != A
triggerall = !Var(45) || Var(45) && Power >= 1000
triggerall = ctrl || (StateNo = [100,101]) || StateNo = 40 ;(StateNo = [200,800)) && MoveContact || (StateNo = [1000,2000)) && MoveContact
trigger1 = command = "hcb_k" && !Var(15)
trigger2 = Var(15) && (Var(15)**3)*2*0.9 > random && RoundState = 2 ; AI tries to grab
trigger2 = Var(16) && (p2stateno != [40,52]) && p2bodydist X < 8 && p2movetype != H && (p2statetype = S || p2statetype = C)

;---------------------------------------------------------------------------
; QCF+P
[State -1, QCF+P]
type = ChangeState
value = ifelse(statetype = A,1205,1200)
;triggerall = statetype != A
triggerall = !NumHelper(1210) && !Var(30)
triggerall = ctrl || (StateNo = [100,101]) || (StateNo = [200,800)) && MoveContact
trigger1 = command = "qcf_p" && !Var(15)
trigger2 = Var(15) && (Var(15)**3)*2*0.9 > random && RoundState = 2 ; AI chains from f+HK
trigger2 = MoveHit && StateNo = 315
trigger3 = Var(15) && (Var(15)**3)*2*0.4 > random && RoundState = 2 ; AI throws out
trigger3 = !Var(16)

;---------------------------------------------------------------------------
; DP+K
[State -1, DP+K]
type = ChangeState
value = 1100
triggerall = statetype != A
triggerall = ctrl || (StateNo = [100,101]) || (StateNo = [200,800)) && MoveContact
trigger1 = command = "dp_k" && !Var(15)
trigger2 = Var(15) && (Var(15)**3)*2*0.6 > random && RoundState = 2 ; AI counters
trigger2 = (enemynear,hitdefattr=SCA,AA) && inguarddist && p2bodydist X < 96

;---------------------------------------------------------------------------
; QCB+K
[State -1, QCB+K]
type = ChangeState
value = ifelse(statetype = A,1305,1300)
triggerall = statetype != A && Var(45) || statetype = A
triggerall = !(StateNo = 305 && statetype = A)
triggerall = ctrl || (StateNo = [100,101]) || (StateNo = [200,800)) && MoveContact
trigger1 = command = "qcb_k" && !Var(15)
trigger2 = Var(15) && (Var(15)**3)*2*0.6 > random && RoundState = 2 ; AI chains from a.HK
trigger2 = MoveHit && StateNo = 710 && !Var(2)
trigger3 = Var(15) && (Var(15)**3)*2*0.3 > random && RoundState = 2 ; AI throws out
trigger3 = EnemyNear,MoveType = A && StateType = A && (P2BodyDist X = [32,128])

;---------------------------------------------------------------------------
; QCB+P
[State -1, QCB+P]
type = ChangeState
value = ifelse(statetype = A,1020,1000)
;triggerall = statetype != A
triggerall = !(StateNo = 305 && statetype = A)
triggerall = ctrl || (StateNo = [100,101]) || (StateNo = [200,800)) && MoveContact
trigger1 = command = "qcb_p" && !Var(15)
trigger2 = Var(15) && (Var(15)**3)*2*0.3 > random && RoundState = 2 ; AI chains from f+LP
trigger2 = MoveHit && StateNo = 205 && EnemyNear,StateType = S
trigger3 = Var(15) && (Var(15)**3)*2*0.9 > random && RoundState = 2 ; AI tries to zone
trigger3 = StateType = A && EnemyNear,StateType = A
trigger3 = EnemyNear,MoveType = A && (P2BodyDist X = [48,120])
trigger4 = Var(15) && (Var(15)**3)*2*0.9 > random && RoundState = 2 ; AI chains from f+HK
trigger4 = MoveGuarded && StateNo = 315

;===========================================================================
;---------------------------------------------------------------------------
[State -1, Throw]
type = ChangeState
value = 800
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = p2stateno != [40,52]
triggerall = p2bodydist X < 8 && p2movetype != H
triggerall = p2statetype = S || p2statetype = C
trigger1 = (command = "holdfwd" || command = "holdback") && (command = "y" || command = "b" || command = "z" || command = "c") && Var(15) = 0
trigger2 = Var(15) && (Var(15)**3)*2*0.9 > random && RoundState = 2 ; AI tries to grab
trigger2 = Var(16)

;===========================================================================
;---------------------------------------------------------------------------
; S f+LP
[State -1, S f+LP]
type = ChangeState
value = 205
triggerall = statetype != A
triggerall = !Var(24)
triggerall = ctrl || (StateNo = [100,101]) || (StateNo = [200,800)) && (StateNo != [510,515]) && MoveContact
trigger1 = (command = "x" || command = "z") && command != "holddown" && command = "holdfwd" && !Var(15)
trigger2 = Var(15) && (Var(15)**3)*2*0.9 > random && RoundState = 2 ; AI chains from HK
trigger2 = MoveHit && StateNo = 310

;---------------------------------------------------------------------------
; S LP
[State -1, S LP]
type = ChangeState
value = 200
triggerall = statetype != A
triggerall = !Var(20)
triggerall = ctrl || (StateNo = [100,101]) || (StateNo = 200 || StateNo = 300 || StateNo = 400 || StateNo = 500) && MoveContact
trigger1 = (command = "x" || command = "z") && command != "holddown" && !Var(15)
trigger2 = Var(15) && (Var(15)**3)*2*0.6 > random && RoundState = 2 ; AI tries to start a combo
trigger2 = P2BodyDist X < 32 && Abs(P2Dist Y) < 64 && EnemyNear,MoveType != A  && Var(16)

;---------------------------------------------------------------------------
; S f+LK
[State -1, S f+LK]
type = ChangeState
value = 305
triggerall = statetype != A
triggerall = !Var(26) && !Var(45)
triggerall = ctrl || (StateNo = [100,101]) || (StateNo = [200,800)) && (StateNo != [510,515]) && MoveContact
trigger1 = (command = "a" || command = "c") && command != "holddown" && command = "holdfwd" && !Var(15)
;trigger2 = Var(15) && (Var(15)**3)*2*0.9 > random && RoundState = 2 ; AI chains from HK
;trigger2 = MoveHit && StateNo = 310

;---------------------------------------------------------------------------
; S LK
[State -1, S LK]
type = ChangeState
value = 300
triggerall = statetype != A
triggerall = !Var(22)
triggerall = ctrl || (StateNo = [100,101]) || (StateNo = 200 || StateNo = 300 || StateNo = 400 || StateNo = 500) && MoveContact
trigger1 = (command = "a" || command = "c") && command != "holddown" && !Var(15)
trigger2 = Var(15) && (Var(15)**3)*2*0.9 > random && RoundState = 2 ; AI chains from LP
trigger2 = MoveHit && StateNo = 200

;---------------------------------------------------------------------------
; S f+HP
[State -1, S f+HP]
type = ChangeState
value = 215
triggerall = statetype != A
triggerall = !Var(25)
triggerall = ctrl || (StateNo = [100,101]) || (StateNo = [200,800)) && (StateNo != [510,515]) && MoveContact
trigger1 = (command = "y" || command = "z") && command != "holddown" && command = "holdfwd" && !Var(15)
trigger2 = Var(15) && (Var(15)**3)*2*0.9 > random && RoundState = 2 ; AI chains from f+LP
trigger2 = MoveHit && StateNo = 205 && P2BodyDist X < 48

;---------------------------------------------------------------------------
; S HP
[State -1, S HP]
type = ChangeState
value = 210
triggerall = statetype != A
triggerall = !Var(21)
triggerall = ctrl || (StateNo = [100,101]) || (StateNo = [200,800)) && (StateNo != [510,515]) && MoveContact
trigger1 = (command = "y" || command = "z") && command != "holddown" && !Var(15)
trigger2 = Var(15) && (Var(15)**3)*2*0.9 > random && RoundState = 2 ; AI chains from LK
trigger2 = MoveHit && (StateNo = 200 || StateNo = 300)

;---------------------------------------------------------------------------
; S f+HK
[State -1, S f+HK]
type = ChangeState
value = 315
triggerall = statetype != A
triggerall = !Var(27)
triggerall = ctrl || (StateNo = [100,101]) || (StateNo = [200,800)) && (StateNo != [510,515]) && MoveContact
trigger1 = (command = "b" || command = "c") && command != "holddown" && command = "holdfwd" && !Var(15)
trigger2 = Var(15) && (Var(15)**3)*2*0.9 > random && RoundState = 2 ; AI chains from f+HP
trigger2 = MoveHit && StateNo = 215
trigger3 = Var(15) && (Var(15)**3)*2*0.9 > random && RoundState = 2 ; AI tries to overhead
trigger3 = MoveGuarded && EnemyNear,StateType = C

;---------------------------------------------------------------------------
; S HK
[State -1, S HK]
type = ChangeState
value = 310
triggerall = statetype != A
triggerall = !Var(23)
triggerall = ctrl || (StateNo = [100,101]) || (StateNo = [200,800)) && (StateNo != [510,515]) && MoveContact
trigger1 = (command = "b" || command = "c") && command != "holddown" && !Var(15)
trigger2 = Var(15) && (Var(15)**3)*2*0.9 > random && RoundState = 2 ; AI chains from HP
trigger2 = MoveHit && (StateNo = 210 || StateNo = 410)

;===========================================================================
;---------------------------------------------------------------------------
; C LP
[State -1, C LP]
type = ChangeState
value = 400
triggerall = statetype != A
triggerall = !Var(20)
triggerall = ctrl || (StateNo = [100,101]) || (StateNo = 200 || StateNo = 300 || StateNo = 400 || StateNo = 500) && MoveContact
trigger1 = (command = "x" || command = "z") && command = "holddown" && !Var(15)
trigger2 = Var(15) && (Var(15)**3)*2*0.9 > random && RoundState = 2 ; AI chains from LK
trigger2 = MoveHit && StateNo = 500

;---------------------------------------------------------------------------
; C LK
[State -1, C LK]
type = ChangeState
value = 500
triggerall = statetype != A
triggerall = !Var(22)
triggerall = ctrl || (StateNo = [100,101]) || (StateNo = 200 || StateNo = 300 || StateNo = 400 || StateNo = 500) && MoveContact
trigger1 = (command = "a" || command = "c") && command = "holddown" && !Var(15)
trigger2 = Var(15) && (Var(15)**3)*2*0.4 > random && RoundState = 2 ; AI tries to start a combo
trigger2 = P2BodyDist X < 32 && EnemyNear,StateType = S && Var(16)

;---------------------------------------------------------------------------
; C HP
[State -1, C HP]
type = ChangeState
value = 410
triggerall = statetype != A
triggerall = !Var(21)
triggerall = ctrl || (StateNo = [100,101]) || (StateNo = [200,800)) && (StateNo != [510,515]) && MoveContact
trigger1 = (command = "y" || command = "z") && command = "holddown" && !Var(15)
trigger2 = Var(15) && (Var(15)**3)*2*0.9 > random && RoundState = 2 ; AI chains from LP
trigger2 = MoveHit && (StateNo = 400 || StateNo = 500)

;---------------------------------------------------------------------------
; C f+HK
[State -1, C f+HK]
type = ChangeState
value = 515
triggerall = statetype != A
triggerall = !Var(27)
triggerall = ctrl || (StateNo = [100,101]) || (StateNo = [200,800)) && MoveContact
trigger1 = (command = "b" || command = "c") && command = "holddown" && command = "holdfwd" && !Var(15)

;---------------------------------------------------------------------------
; C HK
[State -1, C HK]
type = ChangeState
value = 510
triggerall = statetype != A
triggerall = !Var(23)
triggerall = ctrl || (StateNo = [100,101]) || (StateNo = [200,800)) && (StateNo != [510,515]) && MoveContact
trigger1 = (command = "b" || command = "c") && command = "holddown" && !Var(15)

;===========================================================================
;---------------------------------------------------------------------------
; A LP
[State -1, A LP]
type = ChangeState
value = 600
triggerall = statetype = A
triggerall = !Var(20)
triggerall = ctrl || StateNo = 700 && MoveContact
trigger1 = (command = "x" || command = "z") && !Var(15)
trigger2 = Var(15) && (Var(15)**3)*2*0.9 > random && RoundState = 2 ; AI is in the air i guess
trigger2 = Abs(P2BodyDist X) + Abs(P2Dist Y) < 64 && Ctrl

;---------------------------------------------------------------------------
; A LK
[State -1, A LK]
type = ChangeState
value = 700
triggerall = statetype = A
triggerall = !Var(21)
triggerall = ctrl || StateNo = 600 && MoveContact
trigger1 = (command = "a" || command = "c") && !Var(15)
trigger2 = Var(15) && (Var(15)**3)*2*0.9 > random && RoundState = 2 ; AI chains from LP
trigger2 = MoveHit && StateNo = 600

;---------------------------------------------------------------------------
; A HP
[State -1, A HP]
type = ChangeState
value = 610
triggerall = statetype = A
triggerall = !Var(22)
triggerall = ctrl || (StateNo = [600,800)) && MoveContact
trigger1 = (command = "y" || command = "z") && !Var(15)
trigger2 = Var(15) && (Var(15)**3)*2*0.9 > random && RoundState = 2 ; AI chains from LK
trigger2 = MoveHit && StateNo = 700

;---------------------------------------------------------------------------
; A HK
[State -1, A HK]
type = ChangeState
value = 710
triggerall = statetype = A
triggerall = !Var(23)
triggerall = ctrl || (StateNo = [600,800)) && MoveContact
trigger1 = (command = "b" || command = "c") && !Var(15)
trigger2 = Var(15) && (Var(15)**3)*2*0.9 > random && RoundState = 2 ; AI chains from HP
trigger2 = MoveHit && StateNo = 610

;===========================================================================
;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = ctrl 
triggerall = statetype != A
trigger1 = command = "start" && !Var(15)
trigger2 = Var(15) && (Var(15)**3)*2*0.9 > random && RoundState = 2 ; AI is silly
trigger2 = P2BodyDist X <= 32 && EnemyNear,Life <= 5
trigger3 = Var(15) && (Var(15)**3)*2*0.5 > random ; AI is boasting
trigger3 = (Life >= 990 || Life <= 10) && RoundState > 2 && PrevStateNo != 195
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
name = "2qcb_2p"
command = D, B, D, B, x+y
time = 24
[Command]
name = "2qcb_2p"
command = D, B, D, B, z
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
name = "2qcf_2k"
command = D, F, D, F, a+b
time = 24
[Command]
name = "2qcf_2k"
command = D, F, D, F, c
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

[Command]
name = "hcb_k"
command = ~F, D, B, a
time = 18
[Command]
name = "hcb_k"
command = ~F, D, B, b
time = 18
[Command]
name = "hcb_k"
command = ~F, D, B, c
time = 18

;-| Special |-----------------------------------------------------------
[Command]
name = "dd_2k"
command = ~D, D, a+b
time = 15
[Command]
name = "dd_2k"
command = ~D, D, c
time = 15

[Command]
name = "dd_k"
command = ~D, D, a
time = 15
[Command]
name = "dd_k"
command = ~D, D, b
time = 15
[Command]
name = "dd_k"
command = ~D, D, c
time = 15

[Command]
name = "qcf_2k"
command = ~D, DF, F, a+b
time = 15
[Command]
name = "qcf_2k"
command = ~D, DF, F, c
time = 15

[Command]
name = "qcf_k"
command = ~D, DF, F, a
time = 15
[Command]
name = "qcf_k"
command = ~D, DF, F, b
time = 15
[Command]
name = "qcf_k"
command = ~D, DF, F, c
time = 15

[Command]
name = "qcb_2p"
command = ~D, DB, B, x+y
time = 15
[Command]
name = "qcb_2p"
command = ~D, DB, B, z
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
name = "dp_2p"
command = ~F, D, DF, x+y
time = 15
[Command]
name = "dp_2p"
command = ~F, D, DF, z
time = 15

[Command]
name = "dp_p"
command = ~F, D, DF, x
time = 15
[Command]
name = "dp_p"
command = ~F, D, DF, y
time = 15
[Command]
name = "dp_p"
command = ~F, D, DF, z
time = 15

[Command]
name = "qcf_2p"
command = ~D, DF, F, x+y
time = 15
[Command]
name = "qcf_2p"
command = ~D, DF, F, z
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
[State 0, VarSet]
type = VarSet
trigger1 = Var(15)
v = 16
value = 1
[State 0, VarSet]
type = VarSet
triggerall = Var(15)
trigger1 = EnemyNear,StateNo = [5100,5120]
trigger2 = EnemyNear,PrevStateNo = [5100,5120]
trigger3 = EnemyNear,StateType = L
trigger4 = (EnemyNear,StateNo = [1220,1221]) && EnemyNear,MoveType = H
trigger5 = (EnemyNear,StateNo = [1320,1321]) && EnemyNear,MoveType = H
trigger6 = EnemyNear,StateNo = 2020 && EnemyNear,MoveType = H
trigger7 = P2BodyDist X > 128 && EnemyNear,MoveType = H
trigger8 = EnemyNear,StateNo = 2410
v = 16
value = 0

;===========================================================================
;---------------------------------------------------------------------------
[State 0, AI Guard]
Type = ChangeState
Value = 120
triggerall = Var(15) != 0 && (Ctrl || (StateNo = 100 || StateNo = 101))
trigger1 = Var(15) && (Var(15)**3)*2*0.9 > random && RoundState = 2 
trigger1 = !(enemynear,hitdefattr=SCA,AT) && inguarddist
trigger1 = (stateno!=[120,155])

;===========================================================================
;---------------------------------------------------------------------------
; Dash Fwd
[State -1, Dash Fwd]
type = ChangeState
value = 100
triggerall = ctrl && StateNo != 101
triggerall = statetype != A
trigger1 = command = "FF" && command != "holddown"
trigger2 = Var(15) && (Var(15)**3)*2*0.7 > random && RoundState = 2 ; AI tries to close the gap
trigger2 = P2BodyDist X > 8 && Var(16)

;---------------------------------------------------------------------------
; Dash Back
[State -1, Dash Back]
type = ChangeState
value = 105
triggerall = ctrl
triggerall = statetype != A
trigger1 = command = "BB" && command != "holddown"
trigger2 = Var(15) && (Var(15)**3)*2*0.9 > random && RoundState = 2 ; AI backs off
trigger2 = !Var(16) && P2BodyDist X < 32

;---------------------------------------------------------------------------
; AirDash Fwd
[State -1, AirDash Fwd]
type = ChangeState
value = 110
triggerall = statetype = A
triggerall = ctrl
triggerall = Var(2) = 1
trigger1 = command = "FF" && !Var(15)
trigger2 = Var(15) && (Var(15)**3)*2*0.9 > random && RoundState = 2 ; AI tries to close the gap
trigger2 = P2BodyDist X > 32 && Pos Y < -48

;---------------------------------------------------------------------------
; AirDash Back
[State -1, AirDash Back]
type = ChangeState
value = 115
triggerall = statetype = A
triggerall = ctrl
triggerall = Var(2) = 1
trigger1 = command = "BB" && !Var(15)

;---------------------------------------------------------------------------
[State -1, Jump Cancel]
Type = ChangeState
value = ifelse(statetype = A,45,40)
triggerall = statetype != A || statetype = A && var(2) = 1
triggerall = (StateNo = [100,101]) || (StateNo = [200,799]) && MoveHit = 1
trigger1 = command = "holdup" && !Var(15)
trigger2 = Var(15) && (Var(15)**3)*2*0.9 > random && RoundState = 2 ; AI goes for the air combo
trigger2 = (StateNo = 210 || StateNo = 310) && MoveHit && EnemyNear,StateType = A && !Var(12) && P2BodyDist X <= 48
trigger3 = Var(15) && (Var(15)**3)*2*0.9 > random && RoundState = 2 ; AI does the double jump combo
trigger3 = (StateNo = 610 && Var(50) || StateNo = 710 && !Var(50) && Var(2)) && MoveHit
trigger4 = Var(15) && (Var(15)**3)*2*0.9 > random && RoundState = 2 ; AI tries to jump over
trigger4 = StateNo = 100 && EnemyNear,MoveType = A

;===========================================================================
;---------------------------------------------------------------------------
; 2QCB+2P ALT
[State -1, 2QCB+2P ALT]
type = ChangeState
value = 2500
triggerall = statetype != A
triggerall = Power >= 2000
triggerall = Var(50)
triggerall = ctrl || (StateNo = [200,800)) && MoveContact || (StateNo = 1040 || StateNo = 1100 || StateNo = 1150) && MoveContact
trigger1 = command = "2qcb_2p" && !Var(15)
trigger2 = Var(15) && (Var(15)**3)*2*0.3 > random && RoundState = 2 ; AI throws out
trigger2 = EnemyNear,MoveType = A && (P2BodyDist X = [32,96])

;---------------------------------------------------------------------------
; 2QCF+P ALT
[State -1, 2QCF+P ALT]
type = ChangeState
value = 2400
triggerall = statetype != A
triggerall = Power >= 1000
triggerall = Var(50)
triggerall = ctrl || (StateNo = [200,800)) && MoveContact || (StateNo = 1040 || StateNo = 1100 || StateNo = 1150) && MoveContact
trigger1 = command = "2qcf_p" && !Var(15)
trigger2 = Var(15) && (Var(15)**3)*2*0.9 > random && RoundState = 2 ; AI tries to counter
trigger2 = EnemyNear,MoveType = A && (P2BodyDist X = [-8,8])
trigger3 = Var(15) && (Var(15)**3)*2*0.9 > random && RoundState = 2 ; AI tries to anti-air
trigger3 = EnemyNear,StateType = A && EnemyNear,MoveType != H && (P2BodyDist X = [-8,8])
trigger4 = Var(15) && (Var(15)**3)*2*0.2 > random && RoundState = 2 ; AI combos
trigger4 = EnemyNear,StateType = A && (P2BodyDist X = [-8,8])

;---------------------------------------------------------------------------
; 2QCF+P
[State -1, 2QCF+P]
type = ChangeState
value = 2200
triggerall = statetype != A
triggerall = Power >= 1000
triggerall = !Var(50)
triggerall = ctrl || (StateNo = [200,800)) && MoveContact || (StateNo = 1040 || StateNo = 1100 || StateNo = 1150) && MoveContact
trigger1 = command = "2qcf_p" && !Var(15)
trigger2 = Var(15) && (Var(15)**3)*2*0.9 > random && RoundState = 2 ; AI tries to counter
trigger2 = Var(42) || (P2BodyDist X = [0,128])
trigger2 = EnemyNear,StateType != A
trigger2 = EnemyNear,MoveType = A && Var(41) || EnemyNear,MoveType != A
trigger2 = Var(43) && (EnemyNear,StateNo = [120,180)) || EnemyNear,MoveType = A

;---------------------------------------------------------------------------
; 2QCF+2K
[State -1, 2QCF+2K]
type = ChangeState
value = 2150 + Var(50) * 20
triggerall = statetype != A
triggerall = Power >= 2000
triggerall = ctrl || (StateNo = [200,800)) && MoveContact || (StateNo = 1040 || StateNo = 1100 || StateNo = 1150) && MoveContact
trigger1 = command = "2qcf_2k" && !Var(15)
trigger2 = Var(15) && (Var(15)**3)*2*0.2 > random && RoundState = 2 ; AI tries to counter
trigger2 = EnemyNear,MoveType = A && EnemyNear,StateType != A && P2BodyDist X = [64,128]

;---------------------------------------------------------------------------
; 2QCF+K
[State -1, 2QCF+K]
type = ChangeState
value = 2100 + Var(50) * 20
triggerall = statetype != A
triggerall = Power >= 1000
triggerall = ctrl || (StateNo = [200,800)) && MoveContact || (StateNo = 1040 || StateNo = 1100 || StateNo = 1150) && MoveContact
trigger1 = command = "2qcf_k" && !Var(15)
trigger2 = Var(15) && (Var(15)**3)*2*0.4 > random && RoundState = 2 ; AI tries to counter
trigger2 = EnemyNear,MoveType = A && EnemyNear,StateType != A && P2BodyDist X > 96

;---------------------------------------------------------------------------
; HCB+K ALT
[State -1, HCB+K ALT]
type = ChangeState
value = 2300
triggerall = statetype != A
triggerall = Power >= 1000
triggerall = Var(50)
triggerall = ctrl ;|| (StateNo = [200,800)) && MoveContact
trigger1 = command = "hcb_k" && !Var(15)
trigger2 = Var(15) && (Var(15)**3)*2*0.5 > random && RoundState = 2 ; AI tries to grab
trigger2 = (P2BodyDist X = [0,8]) && (EnemyNear,StateNo != [5100,5120]) && EnemyNear,MoveType != H && Var(16)
trigger2 = EnemyNear,StateType != A

;---------------------------------------------------------------------------
; HCB+K
[State -1, HCB+K]
type = ChangeState
value = 2000
;triggerall = statetype != A
triggerall = Power >= 1000
triggerall = !Var(50)
triggerall = ctrl ;|| (StateNo = [200,800)) && MoveContact
trigger1 = command = "hcb_k" && !Var(15)
trigger2 = Var(15) && (Var(15)**3)*2*0.5 > random && RoundState = 2 ; AI tries to grab
trigger2 = (P2BodyDist X = [0,8]) && (EnemyNear,StateNo != [5100,5120]) && EnemyNear,MoveType != H && Var(16)
trigger2 = EnemyNear,StateType != A && StateType != A

;===========================================================================
;---------------------------------------------------------------------------
; DP+2P
[State -1, DP+2P]
type = ChangeState
value = 1255
triggerall = statetype != A
triggerall = !Var(50) && Var(43) || Var(50) && Power >= 1000
triggerall = ctrl || (StateNo = [200,800)) && MoveContact
trigger1 = command = "dp_2p" && !Var(15)
trigger2 = Var(15) && (Var(15)**3)*2*0.5 > random && RoundState = 2 ; AI does a ground combo
trigger2 = MoveHit && StateNo = 210 && EnemyNear,StateType = A
trigger2 = !Var(50) && (Var(41) + Var(42) + Var(43) + Var(44)) < 3

;---------------------------------------------------------------------------
; DP+P
[State -1, DP+P]
type = ChangeState
value = 1205
triggerall = statetype != A
triggerall = ctrl || (StateNo = [200,800)) && MoveContact
trigger1 = command = "dp_p" && !Var(15)
trigger2 = Var(15) && (Var(15)**3)*2*0.5 > random && RoundState = 2 ; AI does a ground combo
trigger2 = MoveHit && StateNo = 210 && EnemyNear,StateType = A
trigger3 = Var(15) && (Var(15)**3)*2*0.9 > random && RoundState = 2 ; AI does a ground combo
trigger3 = MoveHit && StateNo = 215 && EnemyNear,StateType = A

;---------------------------------------------------------------------------
; QCF+2K
[State -1, QCF+2K]
type = ChangeState
value = 1050
triggerall = statetype != A
triggerall = Var(50) && Power >= 1000
triggerall = ctrl || (StateNo = [200,800)) && MoveContact
trigger1 = command = "qcf_2k" && !Var(15)

;---------------------------------------------------------------------------
; QCF+K (Release)
[State -1, QCF+K (Release)]
type = ChangeState
value = 1010 + Var(50) * 30
triggerall = statetype != A
triggerall = !Var(50) && Var(42) || Var(50) && Var(30) >= 72
triggerall = ctrl || (StateNo = [200,800)) && MoveContact
trigger1 = command = "qcf_k" && !Var(15)
trigger2 = Var(15) && (Var(15)**3)*2*0.9 > random && RoundState = 2 ; AI unleashes the beast
trigger2 = MoveHit && StateNo = 310 && Var(50)

;---------------------------------------------------------------------------
; QCF+K
[State -1, QCF+K]
type = ChangeState
value = 1000 + Var(50) * 30
triggerall = statetype != A
triggerall = !Var(50) && !Var(42) || Var(50) && Var(30) <= 72
triggerall = ctrl || (StateNo = [200,800)) && MoveContact
trigger1 = command = "qcf_k" && !Var(15)
trigger2 = Var(15) && (Var(15)**3)*2*0.9 > random && RoundState = 2 ; AI charges up
trigger2 = (EnemyNear,MoveType != A) && P2BodyDist X > 56
trigger3 = Var(15) && (Var(15)**3)*2*0.9 > random && RoundState = 2 ; AI charges up
trigger3 = !Var(16)

;---------------------------------------------------------------------------
; QCB+2P
[State -1, QCB+2P]
type = ChangeState
value = 1350
triggerall = statetype != A
triggerall = !Var(50) && Var(43) || Var(50) && Power >= 1000
triggerall = ctrl || (StateNo = [200,800)) && MoveContact
trigger1 = command = "qcb_2p" && !Var(15)

;---------------------------------------------------------------------------
; QCB+P
[State -1, QCB+P]
type = ChangeState
value = 1300
triggerall = statetype != A
triggerall = ctrl || (StateNo = [200,800)) && MoveContact
trigger1 = command = "qcb_p" && !Var(15)
trigger2 = Var(15) && (Var(15)**3)*2*0.9 > random && RoundState = 2 ; AI tries to counter
trigger2 = EnemyNear,MoveType = A && EnemyNear,StateType = A && (P2BodyDist X = [16,80])
trigger3 = Var(15) && (Var(15)**3)*2*0.5 > random && RoundState = 2 ; AI does a ground combo
trigger3 = MoveHit && StateNo = 210 && EnemyNear,StateType = A && P2Dist Y < -96
trigger4 = Var(15) && (Var(15)**3)*2*0.9 > random && RoundState = 2 ; AI tries to charge gems
trigger4 = MoveHit && StateNo = 310 && EnemyNear,StateType = A && !Var(50) && !Var(43)

;---------------------------------------------------------------------------
; QCF+2P
[State -1, QCF+2P]
type = ChangeState
value = 1250
triggerall = statetype != A
triggerall = !Var(50) && Var(43) || Var(50) && Power >= 1000
triggerall = ctrl || (StateNo = [200,800)) && MoveContact
trigger1 = command = "qcf_2p" && !Var(15)

;---------------------------------------------------------------------------
; QCF+P
[State -1, QCF+P]
type = ChangeState
value = 1200
triggerall = statetype != A
triggerall = ctrl || (StateNo = [200,800)) && MoveContact
trigger1 = command = "qcf_p" && !Var(15)

;---------------------------------------------------------------------------
; DD+2K
[State -1, DD+2K]
type = ChangeState
value = 1150
triggerall = statetype != A
triggerall = !Var(50) && Var(41) || Var(50) && Power >= 1000
triggerall = ctrl || (StateNo = [200,800)) && MoveContact
trigger1 = command = "dd_2k" && !Var(15)

;---------------------------------------------------------------------------
; DD+K
[State -1, DD+K]
type = ChangeState
value = 1100
triggerall = statetype != A
triggerall = ctrl || (StateNo = [200,800)) && MoveContact
trigger1 = command = "dd_k" && !Var(15)
trigger2 = Var(15) && (Var(15)**3)*2*0.9 > random && RoundState = 2 ; AI tries to counter
trigger2 = EnemyNear,MoveType = A && P2BodyDist X < 80 && EnemyNear,StateType != A && EnemyNear,Time < 4
trigger3 = Var(15) && (Var(15)**3)*2*0.9 > random && RoundState = 2 ; AI tries to build up
trigger3 = (StateNo = 210 || StateNo = 310 || StateNo = 410) && MoveHit && EnemyNear,StateType != A
trigger3 = !Var(41) && (Var(42) + Var(43) + Var(44) >= 2) && !Var(50)

;===========================================================================
;---------------------------------------------------------------------------
; A Throw
[State -1, A Throw]
type = ChangeState
value = 850
triggerall = statetype = A
triggerall = ctrl || (StateNo = [200,800)) && MoveContact && Var(50)
trigger1 = command = "x" && command = "a" && !Var(15)
trigger2 = Var(15) && (Var(15)**3)*2*0.9 > random && RoundState = 2 ; AI does that thing
trigger2 = MoveContact && StateNo = 610 && !(Var(50) && !Var(2))

;---------------------------------------------------------------------------
; S Throw
[State -1, S Throw]
type = ChangeState
value = 800
triggerall = statetype != A
triggerall = ctrl || (StateNo = [100,101])
trigger1 = command = "x" && command = "a" && !Var(15)
trigger2 = Var(15) && (Var(15)**3)*2*0.5 > random && RoundState = 2 ; AI tries to grab
trigger2 = (P2BodyDist X = [0,8]) && Var(16) && EnemyNear,MoveType != H && EnemyNear,PrevStateNo != 5120
trigger2 = EnemyNear,StateType != A

;===========================================================================
;---------------------------------------------------------------------------
; A LP
[State -1, A LP]
type = ChangeState
value = 600
triggerall = statetype = A
triggerall = !Var(20)
triggerall = ctrl || (StateNo = [200,800)) && MoveContact
trigger1 = command = "x" && !Var(15)
trigger2 = Var(15) && (Var(15)**3)*2*0.9 > random && RoundState = 2 ; AI chains from LK
trigger2 = MoveContact && StateNo = 700 && !(Var(50) && !Var(2))

;---------------------------------------------------------------------------
; A HP
[State -1, A HP]
type = ChangeState
value = 610
triggerall = statetype = A
triggerall = !Var(22)
triggerall = ctrl || (StateNo = [200,800)) && MoveContact
trigger1 = command = "y" && !Var(15)
trigger2 = Var(15) && (Var(15)**3)*2*0.9 > random && RoundState = 2 ; AI chains from HK
trigger2 = MoveContact && StateNo = 710 && (Var(50) || !Var(2))

;---------------------------------------------------------------------------
; A LK
[State -1, A LK]
type = ChangeState
value = 700
triggerall = statetype = A
triggerall = !Var(21)
triggerall = ctrl || (StateNo = [200,800)) && MoveContact
trigger1 = command = "a" && !Var(15)
trigger2 = Var(15) && (Var(15)**3)*2*0.9 > random && RoundState = 2 ; AI chains from double jump
trigger2 = PrevStateNo = 45

;---------------------------------------------------------------------------
; A HK
[State -1, A HK]
type = ChangeState
value = 710
triggerall = statetype = A
triggerall = !Var(23)
triggerall = ctrl || (StateNo = [200,800)) && MoveContact
trigger1 = command = "b" && !Var(15)
trigger2 = Var(15) && (Var(15)**3)*2*0.6 > random && RoundState = 2 ; AI comes in
trigger2 = Vel Y >= 0 && EnemyNear,StateType != A
trigger3 = Var(15) && (Var(15)**3)*2*0.9 > random && RoundState = 2 ; AI chains from LP
trigger3 = MoveContact && StateNo = 600 
trigger4 = Var(15) && (Var(15)**3)*2*0.9 > random && RoundState = 2 ; AI chains from LK
trigger4 = MoveContact && StateNo = 700 && (Var(50) && !Var(2))

;===========================================================================
;---------------------------------------------------------------------------
; C LP
[State -1, C LP]
type = ChangeState
value = 400
triggerall = statetype != A
triggerall = !Var(25)
triggerall = ctrl || (StateNo = [100,101]) || (StateNo = [200,800)) && MoveContact
trigger1 = command = "x" && command = "holddown" && !Var(15)

;---------------------------------------------------------------------------
; C HP
[State -1, C HP]
type = ChangeState
value = 410
triggerall = statetype != A
triggerall = !Var(27)
triggerall = ctrl || (StateNo = [100,101]) || (StateNo = [200,800)) && MoveContact
trigger1 = command = "y" && command = "holddown" && !Var(15)

;---------------------------------------------------------------------------
; C LK
[State -1, C LK]
type = ChangeState
value = 500
triggerall = statetype != A
triggerall = !Var(26)
triggerall = ctrl || (StateNo = [100,101]) || (StateNo = [200,800)) && MoveContact
trigger1 = command = "a" && command = "holddown" && !Var(15)
trigger2 = Var(15) && (Var(15)**3)*2*0.4 > random && RoundState = 2 ; AI tries to hit low
trigger2 = MoveType != A && P2BodyDist X < 32 && EnemyNear,StateType != A && (EnemyNear,StateNo != [5100,5120])
trigger3 = Var(15) && (Var(15)**3)*2*0.9 > random && RoundState = 2 ; AI tries to hit low
trigger3 = MoveGuarded && EnemyNear,StateType = S

;---------------------------------------------------------------------------
; C HK
[State -1, C HK]
type = ChangeState
value = 510
triggerall = statetype != A
triggerall = !Var(28)
triggerall = ctrl || (StateNo = [100,101]) || (StateNo = [200,800)) && MoveContact
trigger1 = command = "b" && command != "holdfwd" && command = "holddown" && !Var(15)
trigger2 = Var(15) && (Var(15)**3)*2*0.9 > random && RoundState = 2 ; AI chains from HP
trigger2 = MoveHit && (StateNo = 210 || StateNo = 410) && EnemyNear,StateType != A

;---------------------------------------------------------------------------
; df+HK
[State -1, df+HK]
type = ChangeState
value = 515
triggerall = statetype != A
triggerall = !Var(29)
triggerall = ctrl || (StateNo = [100,101]) || (StateNo = [200,800)) && MoveContact
trigger1 = command = "b" && command = "holdfwd" && command = "holddown" && !Var(15)

;===========================================================================
;---------------------------------------------------------------------------
; f+LP
[State -1, f+LP]
type = ChangeState
value = 205 + Var(50)*10
triggerall = statetype != A
triggerall = !Var(24)
triggerall = ctrl || (StateNo = [100,101]) || (StateNo = [200,800)) && MoveContact
trigger1 = command = "x" && command = "holdfwd" && command != "holddown" && !Var(15)
trigger2 = Var(15) && (Var(15)**3)*2*0.9 > random && RoundState = 2 ; AI chains from HP
trigger2 = MoveHit && StateNo = 210 && !Var(44) && EnemyNear,StateType = A

;---------------------------------------------------------------------------
; S LP
[State -1, S LP]
type = ChangeState
value = 200
triggerall = statetype != A
triggerall = !Var(20)
triggerall = ctrl || (StateNo = [100,101]) || (StateNo = [200,800)) && MoveContact
trigger1 = command = "x" && command != "holddown" && !Var(15)
trigger2 = Var(15) && (Var(15)**3)*2*0.9 > random && RoundState = 2 ; AI chains from LK
trigger2 = MoveHit && (StateNo = 300 || StateNo = 500)
trigger3 = Var(15) && (Var(15)**3)*2*0.9 > random && RoundState = 2 ; AI does a ground combo
trigger3 = P2BodyDist X < 16 && !Var(12)
trigger4 = Var(15) && (Var(15)**3)*2*0.9 > random && RoundState = 2 ; AI does a ground combo
trigger4 = P2BodyDist X < 16 && (Abs(P2Dist Y) = [16,64])

;---------------------------------------------------------------------------
; S HP
[State -1, S HP]
type = ChangeState
value = 210
triggerall = statetype != A
triggerall = !Var(22)
triggerall = ctrl || (StateNo = [100,101]) || (StateNo = [200,800)) && MoveContact
trigger1 = command = "y" && command != "holddown" && !Var(15)
trigger2 = Var(15) && (Var(15)**3)*2*0.9 > random && RoundState = 2 ; AI tries to overhead
trigger2 = MoveGuarded && EnemyNear,StateType = C
trigger3 = Var(15) && (Var(15)**3)*2*0.9 > random && RoundState = 2 ; AI chains from LP
trigger3 = MoveHit && (StateNo = 200 || StateNo = 400)
trigger4 = Var(15) && (Var(15)**3)*2*0.9 > random && RoundState = 2 ; AI does a ground combo
trigger4 = MoveHit && StateNo = 200 && EnemyNear,StateType = A

;---------------------------------------------------------------------------
; S LK
[State -1, S LK]
type = ChangeState
value = 300
triggerall = statetype != A
triggerall = !Var(21)
triggerall = ctrl || (StateNo = [100,101]) || (StateNo = [200,800)) && MoveContact
trigger1 = command = "a" && command != "holddown" && !Var(15)
trigger2 = Var(15) && (Var(15)**3)*2*0.4 > random && RoundState = 2 ; AI tries to start a combo
trigger2 = P2BodyDist X < 32 && EnemyNear,StateType != A && (EnemyNear,StateNo != [5100,5120])

;---------------------------------------------------------------------------
; S HK
[State -1, S HK]
type = ChangeState
value = 310
triggerall = statetype != A
triggerall = !Var(23)
triggerall = ctrl || (StateNo = [100,101]) || (StateNo = [200,800)) && MoveContact
trigger1 = command = "b" && command != "holddown" && !Var(15)
trigger2 = Var(15) && (Var(15)**3)*2*0.9 > random && RoundState = 2 ; AI chains from c.HK
trigger2 = MoveHit && StateNo = 510

;===========================================================================
;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = ifelse(command="holddown",666,195)
triggerall = ctrl 
triggerall = statetype != A
trigger1 = command = "start" && !Var(15)
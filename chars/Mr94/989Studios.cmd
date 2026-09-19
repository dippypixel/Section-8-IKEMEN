; The CMD file. 
	 
; Button Remapping 

[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s
 
; Default Values 

[Defaults]
command.time = 15
command.buffer.time = 2

;-| Single Button |---------------------------------------------------------
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

[Command]
name = "up" ;Required (do not remove)
command = U
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

;-| Hold Button |-----------------------------------------------------------
[Command]
name = "hold_a"
command = /a
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
name = "hold_x"
command = /x
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
name = "hold_start"
command = /s
time = 1

;-| Ultra Motions |------------------------------------------------------
[Command]
name = "2qcf_2k"
command = ~D, DF, F, D, DF, F, a+b
time = 20
[Command]
name = "2qcf_2k"
command = ~D, DF, F, D, DF, F, b+c
time = 20
[Command]
name = "2qcf_2k"
command = ~D, DF, F, D, DF, F, c+a
time = 20

[Command]
name = "2qcf_2p"
command = ~D, DF, F, D, DF, F, x+y
time = 20
[Command]
name = "2qcf_2p"
command = ~D, DF, F, D, DF, F, y+z
time = 20
[Command]
name = "2qcf_2p"
command = ~D, DF, F, D, DF, F, z+x
time = 20

[Command]
name = "2qcb_2k"
command = ~D, DB, B, D, DB, B, a+b
time = 20
[Command]
name = "2qcb_2k"
command = ~D, DB, B, D, DB, B, b+c
time = 20
[Command]
name = "2qcb_2k"
command = ~D, DB, B, D, DB, B, c+a
time = 20

[Command]
name = "2qcb_2p"
command = ~D, DB, B, D, DB, B, x+y
time = 20
[Command]
name = "2qcb_2p"
command = ~D, DB, B, D, DB, B, y+z
time = 20
[Command]
name = "2qcb_2p"
command = ~D, DB, B, D, DB, B, z+x
time = 20


;-| Super Motions |------------------------------------------------------
[Command]
name = "2qcf_a"
command = ~D, DF, F, D, DF, F, a
time = 20
[Command]
name = "2qcf_b"
command = ~D, DF, F, D, DF, F, b
time = 20
[Command]
name = "2qcf_c"
command = ~D, DF, F, D, DF, F, c
time = 20

[Command]
name = "2qcf_x"
command = ~D, DF, F, D, DF, F, x
time = 20
[Command]
name = "2qcf_y"
command = ~D, DF, F, D, DF, F, y
time = 20
[Command]
name = "2qcf_z"
command = ~D, DF, F, D, DF, F, z
time = 20

[Command]
name = "2qcb_a"
command = ~D, DB, B, D, DB, B, a
time = 20
[Command]
name = "2qcb_b"
command = ~D, DB, B, D, DB, B, b
time = 20
[Command]
name = "2qcb_c"
command = ~D, DB, B, D, DB, B, c
time = 20

[Command]
name = "2qcb_x"
command = ~D, DB, B, D, DB, B, x
time = 20
[Command]
name = "2qcb_y"
command = ~D, DB, B, D, DB, B, y
time = 20
[Command]
name = "2qcb_z"
command = ~D, DB, B, D, DB, B, z
time = 20

;-| EX Special Motions |-----------------------------------------------------

[Command]
name = "qcb_2p"
command = ~D, DB, B, x+y
time = 15
[Command]
name = "qcb_2p"
command = ~D, DB, B, y+z
time = 15
[Command]
name = "qcb_2p"
command = ~D, DB, B, x+z
time = 15

[Command]
name = "qcf_2p"
command = ~D, DF, F, x+y
time = 15
[Command]
name = "qcf_2p"
command = ~D, DF, F, y+z
time = 15
[Command]
name = "qcf_2p"
command = ~D, DF, F, x+z
time = 15

[Command]
name = "qcb_2k"
command = ~D, DB, B, a+b
time = 15
[Command]
name = "qcb_2k"
command = ~D, DB, B, b+c
time = 15
[Command]
name = "qcb_2k"
command = ~D, DB, B, a+b
time = 15

[Command]
name = "qcf_2k"
command = ~D, DF, F, a+b
time = 15
[Command]
name = "qcf_2k"
command = ~D, DF, F, b+c
time = 15
[Command]
name = "qcf_2k"
command = ~D, DF, F, a+c
time = 15

[Command]
name = "dd_2k"
command = ~D, D, a+b
time = 15
[Command]
name = "dd_2k"
command = ~D, D, b+c
time = 15
[Command]
name = "dd_2k"
command = ~D, D, c+a
time = 15

[Command]
name = "dd_2p"
command = ~D, D, x+y
time = 15
[Command]
name = "dd_2p"
command = ~D, D, y+z
time = 15
[Command]
name = "dd_2p"
command = ~D, D, z+x
time = 15

;-| Special Motions |-----------------------------------------------------

[Command]
name = "qcb_x"
command = ~D, DB, B, x
time = 15
[Command]
name = "qcb_y"
command = ~D, DB, B, y
time = 15
[Command]
name = "qcb_z"
command = ~D, DB, B, z
time = 15

[Command]
name = "qcf_x"
command = ~D, DF, F, x
time = 15
[Command]
name = "qcf_y"
command = ~D, DF, F, y
time = 15
[Command]
name = "qcf_z"
command = ~D, DF, F, z
time = 15

[Command]
name = "qcb_a"
command = ~D, DB, B, a
time = 15
[Command]
name = "qcb_b"
command = ~D, DB, B, b
time = 15
[Command]
name = "qcb_c"
command = ~D, DB, B, c
time = 15

[Command]
name = "qcf_a"
command = ~D, DF, F, a
time = 15
[Command]
name = "qcf_b"
command = ~D, DF, F, b
time = 15
[Command]
name = "qcf_c"
command = ~D, DF, F, c
time = 15

[Command]
name = "dd_a"
command = ~D, D, a
time = 15
[Command]
name = "dd_b"
command = ~D, D, b
time = 15
[Command]
name = "dd_c"
command = ~D, D, c
time = 15

[Command]
name = "dd_x"
command = ~D, D, x
time = 15
[Command]
name = "dd_y"
command = ~D, D, y
time = 15
[Command]
name = "dd_z"
command = ~D, D, z
time = 15

[Command]
name = "ff_a"
command = ~F, F, a
time = 15
[Command]
name = "ff_b"
command = ~F, F, b
time = 15
[Command]
name = "ff_c"
command = ~F, F, c
time = 15

[Command]
name = "ff_x"
command = ~F, F, x
time = 15
[Command]
name = "ff_y"
command = ~F, F, y
time = 15
[Command]
name = "ff_z"
command = ~F, F, z
time = 15

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery"
command = x+a
time = 1

[Command]
name = "throw"
command = y+b
time = 1

[Command]
name = "xfactor"
command = z+c
time = 1

[Command]
name = "hijump"
command = ~$D, $U
time = 18

[Command]
name = "chargedhijump"
command = ~13$D, $U
  

;-------------------------------------------------------------------------
[statedef -1]

; Super - Hiso Hiso
[State -1, Super - Hiso Hiso]
type = ChangeState
value = 2000
triggerall = statetype != A
triggerall = command = "2qcf_x"
triggerall = RoundState = 2
triggerall = Power >= 1000
triggerall = Var(12) < 2
triggerall = StateNo != 2000
trigger1 = ctrl
trigger2 = StateNo = [200,1999]
trigger2 = MoveContact || ProjHit = 1, < 24
trigger3 = StateNo = [2000,2999]
trigger3 = MoveHit

; Super - Pika Pika
[State -1, Super - Pika Pika]
type = ChangeState
value = 2020
triggerall = statetype != A
triggerall = command = "2qcf_z"
triggerall = RoundState = 2
triggerall = Power >= 2000
triggerall = Var(12) < 1
triggerall = StateNo != 2020
trigger1 = ctrl
trigger2 = StateNo = [200,1999]
trigger2 = MoveContact || ProjHit = 1, < 24
trigger3 = StateNo = [2000,2999]
trigger3 = MoveHit

; Super - Shari Shari
[State -1, Super - Shari Shari]
type = ChangeState
value = 2300
triggerall = statetype != A
triggerall = command = "2qcb_a"
triggerall = RoundState = 2
triggerall = Power >= 1000
triggerall = Var(12) < 2
triggerall = StateNo != 2300
trigger1 = ctrl
trigger2 = StateNo = [200,1999]
trigger2 = MoveContact || ProjHit = 1, < 24
trigger3 = StateNo = [2000,2999]
trigger3 = MoveHit

; Super - Bara Bara
[State -1, Super - Bara Bara]
type = ChangeState
value = 2310
triggerall = statetype != A
triggerall = command = "2qcb_b"
triggerall = RoundState = 2
triggerall = Power >= 1000
triggerall = Var(12) < 2
triggerall = StateNo != 2310
trigger1 = ctrl
trigger2 = StateNo = [200,1999]
trigger2 = MoveContact || ProjHit = 1, < 24
trigger3 = StateNo = [2000,2999]
trigger3 = MoveHit

; Super - Kama Kama
[State -1, Super - Kama Kama]
type = ChangeState
value = 2320
triggerall = statetype != A
triggerall = command = "2qcb_c"
triggerall = RoundState = 2
triggerall = Power >= 2000
triggerall = Var(12) < 1
triggerall = StateNo != 2320
trigger1 = ctrl
trigger2 = StateNo = [200,1999]
trigger2 = MoveContact || ProjHit = 1, < 24
trigger3 = StateNo = [2000,2999]
trigger3 = MoveHit

; Super - Sube Sube
[State -1, Super - Sube Sube]
type = ChangeState
value = 2200
triggerall = statetype != A
triggerall = command = "2qcf_a"
triggerall = RoundState = 2
triggerall = Power >= 1000
triggerall = Var(12) < 2
triggerall = StateNo != 2200
trigger1 = ctrl
trigger2 = StateNo = [200,1999]
trigger2 = MoveContact || ProjHit = 1, < 24
trigger3 = StateNo = [2000,2999]
trigger3 = MoveHit

; Super - Suke Suke
[State -1, Super - Suke Suke]
type = ChangeState
value = 2210
triggerall = statetype != A
triggerall = command = "2qcf_b"
triggerall = RoundState = 2
triggerall = Power >= 1000
triggerall = Var(12) < 2
triggerall = StateNo != 2210
trigger1 = ctrl
trigger2 = StateNo = [200,1999]
trigger2 = MoveContact || ProjHit = 1, < 24
trigger3 = StateNo = [2000,2999]
trigger3 = MoveHit

;---------------------------------------------------------------------------
[State -1, -----]
type = Null
trigger1 = Time = 666
;---------------------------------------------------------------------------
; Striker - Maxima EX
[State -1, Striker - Maxima EX]
type = ChangeState
value = 1960
triggerall = statetype != A
triggerall = command = "dd_2p" || command = "dd_2p" || command = "dd_2p"
triggerall = NumHelper(10100) <= 0
triggerall = RoundState = 2
triggerall = Power >= 500
triggerall = Var(30) != 0
trigger1 = ctrl
trigger2 = StateNo = [200,599]
trigger2 = MoveContact

; Striker - Kula EX
[State -1, Striker - Kula EX]
type = ChangeState
value = 1950
triggerall = statetype != A
triggerall = command = "dd_2k" || command = "dd_2k" || command = "dd_2k"
triggerall = NumHelper(10000) <= 0
triggerall = RoundState = 2
triggerall = Power >= 500
triggerall = Var(40) != 0
trigger1 = ctrl
trigger2 = StateNo = [200,599]
trigger2 = MoveContact

; Striker - Maxima
[State -1, Striker - Maxima]
type = ChangeState
value = 1910
triggerall = statetype != A
triggerall = command = "dd_x" || command = "dd_y" || command = "dd_z"
triggerall = NumHelper(10100) <= 0
triggerall = Var(30) != 0
trigger1 = ctrl
trigger2 = StateNo = [200,599]
trigger2 = MoveContact

; Striker - Kula
[State -1, Striker - Kula]
type = ChangeState
value = 1900
triggerall = statetype != A
triggerall = command = "dd_a" || command = "dd_b" || command = "dd_c"
triggerall = NumHelper(10000) <= 0
triggerall = Var(40) != 0
trigger1 = ctrl
trigger2 = StateNo = [200,599]
trigger2 = MoveContact

;---------------------------------------------------------------------------
[State -1, -----]
type = Null
trigger1 = Time = 666
;---------------------------------------------------------------------------

[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S && ctrl

[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S && ctrl

[State -1, Dodge]
type = ChangeState
value = ifelse(command="holdback",115,110)
trigger1 = command = "recovery"
trigger1 = statetype != A && ctrl

;---------------------------------------------------------------------------
; X Factor Off
[State -1, X-Factor Off]
type = ChangeState
value = 3001
triggerall = statetype != A
triggerall = Var(20) = 1
triggerall = ctrl
;trigger1 = command = "xfactor"
trigger1 = Var(21) <= 0
trigger2 = RoundState != 2
;trigger2 = StateNo = [200,2999]

;---------------------------------------------------------------------------
; X Factor
[State -1, X-Factor On]
type = ChangeState
value = 3000
triggerall = command = "xfactor"
triggerall = statetype != A
;triggerall = Var(21) >= 500
triggerall = Power >= 1000
triggerall = RoundState = 2
triggerall = Var(20) = 0
triggerall = Var(22) != 0
trigger1 = ctrl
trigger2 = StateNo = [200,2999]
trigger3 = StateNo = [120,159];Mato Mato L

;---------------------------------------------------------------------------
; Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "throw"
triggerall = statetype != A
triggerall = RoundState = 2
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, -----]
type = Null
trigger1 = Time = 666
;---------------------------------------------------------------------------
; Ushi Ushi EX
[State -1, Ushi Ushi EX]
type = ChangeState
value = 1250
triggerall = statetype != A
triggerall = command = "qcf_2k"
triggerall = Power >= 500
trigger1 = ctrl
trigger2 = StateNo = [200,599]
trigger2 = MoveContact

; Ushi Ushi
[State -1, Ushi Ushi]
type = ChangeState
value = 1200
triggerall = statetype != A
triggerall = command = "qcf_a" || command = "qcf_b" || command = "qcf_c"
trigger1 = ctrl
trigger2 = StateNo = [200,599]
trigger2 = MoveContact

; Moku Moku
[State -1, Moku Moku]
type = ChangeState
value = 1100
triggerall = statetype != A
triggerall = command = "qcf_x" || command = "qcf_y" || command = "qcf_z"
trigger1 = ctrl
trigger2 = StateNo = [200,599]
trigger2 = MoveContact

; Mato Mato EX
[State -1, Mato Mato EX]
type = ChangeState
value = 1350
triggerall = statetype != A
triggerall = command = "qcb_2p"
triggerall = Power >= 500
trigger1 = ctrl

; Mato Mato L
[State -1, Mato Mato L]
type = ChangeState
value = 1300
triggerall = statetype != A
triggerall = command = "qcb_x"
trigger1 = ctrl

; Mato Mato M
[State -1, Mato Mato M]
type = ChangeState
value = 1302
triggerall = statetype != A
triggerall = command = "qcb_y"
trigger1 = ctrl

; Mato Mato H
[State -1, Mato Mato H]
type = ChangeState
value = 1304
triggerall = statetype != A
triggerall = command = "qcb_z"
trigger1 = ctrl

; Nikyu Nikyu EX Aireal
[State -1, Nikyu Nikyu EX Aireal]
type = ChangeState
value = 1051
triggerall = statetype = A
triggerall = Power >= 500
triggerall = RoundState = 2
triggerall = command = "qcb_2k"
trigger1 = ctrl
trigger2 = StateNo = [600,799]
trigger2 = MoveContact

; Nikyu Nikyu EX
[State -1, Nikyu Nikyu EX]
type = ChangeState
value = 1050
triggerall = statetype != A
triggerall = Power >= 500
triggerall = RoundState = 2
triggerall = command = "qcb_2k"
trigger1 = ctrl
trigger2 = StateNo = [200,599]
trigger2 = MoveContact

; Nikyu Nikyu Aireal
[State -1, Nikyu Nikyu Aireal]
type = ChangeState
value = 1002
triggerall = statetype = A
triggerall = command = "qcb_a" || command = "qcb_b" || command = "qcb_c"
trigger1 = ctrl
trigger2 = StateNo = [600,799]
trigger2 = MoveContact

; Nikyu Nikyu
[State -1, Nikyu Nikyu]
type = ChangeState
value = 1000
triggerall = statetype != A
triggerall = command = "qcb_a" || command = "qcb_b" || command = "qcb_c"
trigger1 = ctrl
trigger2 = StateNo = [200,599]
trigger2 = MoveContact

;---------------------------------------------------------------------------
[State -1, -----]
type = Null
trigger1 = Time = 666
;---------------------------------------------------------------------------
; Dashing Punch
[State -1, Dash Punch]
type = ChangeState
value = 290
triggerall = statetype != A
trigger1 = command = "x" || command = "y" || command = "z"
trigger1 = StateNo = [100,101]
trigger2 = command = "ff_x" || command = "ff_y" || command = "ff_z"
trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 300 || StateNo = 310 || StateNo = 400 || StateNo = 410 || StateNo = 500 || StateNo = 510

;---------------------------------------------------------------------------
; Dashing Kick
[State -1, Dash Kick]
type = ChangeState
value = 390
triggerall = statetype != A
trigger1 = ctrl
trigger1 = command = "ff_a" || command = "ff_b" || command = "ff_c"
trigger2 = command = "a" || command = "b" || command = "c"
trigger2 = StateNo = [100,101]
trigger3 = command = "ff_a" || command = "ff_b" || command = "ff_c"
trigger3 = StateNo = 200 || StateNo = 210 || StateNo = 300 || StateNo = 310 || StateNo = 400 || StateNo = 410 || StateNo = 500 || StateNo = 510

;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, S L P]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = StateNo = 200 || StateNo = 300 || StateNo = 400 || StateNo = 500
trigger2 = MoveContact

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, S M P]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = StateNo = 200 || StateNo = 300 || StateNo = 400 || StateNo = 500
trigger2 = MoveContact

;---------------------------------------------------------------------------
; Stand Heavy Punch
[State -1, S H P]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 300 || StateNo = 310 || StateNo = 400 || StateNo = 410 || StateNo = 500 || StateNo = 510
trigger2 = MoveContact

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, S L K]
type = ChangeState
value = 300
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = StateNo = 200 || StateNo = 300 || StateNo = 400 || StateNo = 500
trigger2 = MoveContact

;---------------------------------------------------------------------------
; Stand Medium Kick
[State -1, S M K]
type = ChangeState
value = 310
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = StateNo = 200 || StateNo = 300 || StateNo = 400 || StateNo = 500
trigger2 = MoveContact

;---------------------------------------------------------------------------
; Stand Heavy Kick
[State -1, S H K]
type = ChangeState
value = 320
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 300 || StateNo = 310 || StateNo = 400 || StateNo = 410 || StateNo = 500 || StateNo = 510
trigger2 = MoveContact

;---------------------------------------------------------------------------
; Crouch Light Punch
[State -1, C L P]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = StateNo = 200 || StateNo = 300 || StateNo = 400 || StateNo = 500
trigger2 = MoveContact

;---------------------------------------------------------------------------
; Crouch Medium Punch
[State -1, C M P]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = StateNo = 200 || StateNo = 300 || StateNo = 400 || StateNo = 500
trigger2 = MoveContact

;---------------------------------------------------------------------------
; Crouch Heavy Punch
[State -1, C H P]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 300 || StateNo = 310 || StateNo = 400 || StateNo = 410 || StateNo = 500 || StateNo = 510
trigger2 = MoveContact

;---------------------------------------------------------------------------
; Crouch Light Kick
[State -1, C L K]
type = ChangeState
value = 500
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = StateNo = 200 || StateNo = 300 || StateNo = 400 || StateNo = 500
trigger2 = MoveContact

;---------------------------------------------------------------------------
; Crouch Medium Kick
[State -1, C M K]
type = ChangeState
value = 510
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = StateNo = 200 || StateNo = 300 || StateNo = 400 || StateNo = 500
trigger2 = MoveContact

;---------------------------------------------------------------------------
; Crouch Heavy Kick
[State -1, C H K]
type = ChangeState
value = 520
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 300 || StateNo = 310 || StateNo = 400 || StateNo = 410 || StateNo = 500 || StateNo = 510
trigger2 = MoveContact

;---------------------------------------------------------------------------
; Aireal Light Punch
[State -1, A L P]
type = ChangeState
value = 600
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 600 || StateNo = 700
trigger2 = MoveContact

;---------------------------------------------------------------------------
; Aireal Medium Punch
[State -1, A M P]
type = ChangeState
value = 610
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 600 || StateNo = 700
trigger2 = MoveContact

;---------------------------------------------------------------------------
; Aireal Heavy Punch
[State -1, A H P]
type = ChangeState
value = 620
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 600 || StateNo = 610 || StateNo = 700 || StateNo = 710
trigger2 = MoveContact

;---------------------------------------------------------------------------
; Aireal Light Kick
[State -1, A L K]
type = ChangeState
value = 700
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 600 || StateNo = 700
trigger2 = MoveContact

;---------------------------------------------------------------------------
; Aireal Medium Kick
[State -1, A M K]
type = ChangeState
value = 710
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 600 || StateNo = 700
trigger2 = MoveContact

;---------------------------------------------------------------------------
; Aireal Heavy Kick
[State -1, A H K]
type = ChangeState
value = ifelse(command="holdback",721,720)
triggerall = command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 600 || StateNo = 610 || StateNo = 700 || StateNo = 710
trigger2 = MoveContact

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 160
triggerall = command = "start"
triggerall = stateno != 160
trigger1 = statetype != A
trigger1 = ctrl

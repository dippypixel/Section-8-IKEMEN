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
name = "2qcf_k"
command = ~D, DF, F, D, DF, F, a
time = 20
[Command]
name = "2qcf_k"
command = ~D, DF, F, D, DF, F, b
time = 20
[Command]
name = "2qcf_k"
command = ~D, DF, F, D, DF, F, c
time = 20

[Command]
name = "2qcf_p"
command = ~D, DF, F, D, DF, F, x
time = 20
[Command]
name = "2qcf_p"
command = ~D, DF, F, D, DF, F, y
time = 20
[Command]
name = "2qcf_p"
command = ~D, DF, F, D, DF, F, z
time = 20

[Command]
name = "2qcb_k"
command = ~D, DB, B, D, DB, B, a
time = 20
[Command]
name = "2qcb_k"
command = ~D, DB, B, D, DB, B, b
time = 20
[Command]
name = "2qcb_k"
command = ~D, DB, B, D, DB, B, c
time = 20

[Command]
name = "2qcb_p"
command = ~D, DB, B, D, DB, B, x
time = 20
[Command]
name = "2qcb_p"
command = ~D, DB, B, D, DB, B, y
time = 20
[Command]
name = "2qcb_p"
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
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "hop"
command = D,D
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
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

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "hijump"
command = ~$D, $U
time = 18

[Command]
name = "chargedhijump"
command = ~13$D, $U

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| CPU |--------------------------------------------------------------
; Note that if you make any changes to the basic one-button or recovery
; commands, you'll need to make the same changes to their matching commands here
; and/or in the XOR VarSet controller.  That includes things like, for example:
;  * changing the recovery command to use a different combination of buttons.
;  * renaming the b button command as "d", or the start button command as "s".
;  * switching the button names around, e.g. so button y triggers "a" and button a triggers "y".
;  * having more than one way to trigger the same command name.
; If you understand how the XOR method works, the proper changes should be obvious.
; If you don't understand it, then simply disable the lines in the XOR VarSet
; controller that correspond to the commands you've altered.

[Command]
name = "a2"
command = a
time = 1

[Command]
name = "b2"
command = b
time = 1

[Command]
name = "c2"
command = c
time = 1

[Command]
name = "x2"
command = x
time = 1

[Command]
name = "y2"
command = y
time = 1

[Command]
name = "z2"
command = z
time = 1

[Command]
name = "start2"
command = s
time = 1

[Command]
name = "holdfwd2"
command = /$F
time = 1

[Command]
name = "holdback2"
command = /$B
time = 1

[Command]
name = "holdup2"
command = /$U
time = 1

[Command]
name = "holddown2"
command = /$D
time = 1

[Command]
name = "hold_a2"
command = /a
time = 1

[Command]
name = "hold_b2"
command = /b
time = 1

[Command]
name = "hold_c2"
command = /c
time = 1

[Command]
name = "hold_x2"
command = /x
time = 1

[Command]
name = "hold_y2"
command = /y
time = 1

[Command]
name = "hold_z2"
command = /z
time = 1

[Command]
name = "hold_start2"
command = /s
time = 1

[Command]
name = "recovery2"
command = x+a
time = 1

[Command]
name = "recovery2";Required (do not remove)
command = c
time = 1
;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1, Label]           ;Change Label to any name you want to use to
;                               ;identify the state with.
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = command_name
;   . . .  (any additional triggers)
;
; - new_state_number is the number of the state to change to
; - command_name is the name of the command (from the section above)
; - Useful triggers to know:
;   - statetype
;       S, C or A : current state-type of player (stand, crouch, air)
;   - ctrl
;       0 or 1 : 1 if player has control. Unless "interrupting" another
;                move, you'll want ctrl = 1
;   - stateno
;       number of state player is in - useful for "move interrupts"
;   - movecontact
;       0 or 1 : 1 if player's last attack touched the opponent
;                useful for "move interrupts"
;
; Note: The order of state entry is important.
;   State entry with a certain command must come before another state
;   entry with a command that is the subset of the first.
;   For example, command "fwd_a" must be listed before "a", and
;   "fwd_ab" should come before both of the others.
;
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.


; Don't remove the following line. It's required by the CMD standard.

[Statedef -1]

;[State AI, AI Upperkick]
;Type = ChangeState
;Value = 1000
;triggerall = StateType != A && P2StateType != L && AILevel != 0
;trigger1 = p2dist x <= 192 && random < 25 && ctrl
;trigger2 = StateNo = 200 || StateNo = 205 || StateNo = 210 || StateNo = 215 || StateNo = 225 || StateNo = 226 || StateNo = 400 || StateNo = 410 || StateNo = 420 || StateNo = 425
;trigger2 = random < 50 && MoveHit

[State AI, AI Taunt]
type = ChangeState
value = 195
trigger1 = RoundState > 2
trigger1 = StateType != A
trigger1 = ctrl
trigger1 = AILevel != 0

[State AI, AI Just Stop]
Type = ChangeState
Value = 2600
triggerall = AILevel != 0
triggerall = StateType != A
triggerall = enemynear,MoveType = A
triggerall = Power >= 1000
triggerall = RoundState = 2
trigger1 = !(enemynear,hitdefattr=SCA,AT)
trigger1 = inguarddist
trigger1 = random > 450
trigger1 = ctrl

[State AI, AI Stellar]
Type = ChangeState
Value = 2200
triggerall = Power >= 1000
triggerall = RoundState = 2
triggerall = AILevel != 0
triggerall = p2bodydist x < 32
triggerall = p2bodydist y < 64
triggerall = enemynear,StateNo != [5110,5120]
trigger1 = random < 5
trigger1 = ctrl
trigger2 = random < 50
trigger2 = ctrl
trigger2 = enemynear,MoveType = H
trigger3 = StateNo = [200,1999]
trigger3 = StateNo != [800,899]
trigger3 = StateNo != [1300,1399]
trigger3 = random < 100
trigger3 = MoveHit

[State AI, AI Burrito or Israel's Son]
Type = ChangeState
Value = ifelse(enemynear,StateType!=A&&Random<500,2300,2000)
triggerall = Power >= 2000
triggerall = Statetype != A
triggerall = RoundState = 2
triggerall = AILevel != 0
trigger1 = random < 5
trigger1 = ctrl
trigger2 = random < 100
trigger2 = ctrl
trigger2 = p2dist x > 96
trigger2 = enemynear,MoveType = A

[State AI, AI Around The World or Pure Massacre]
Type = ChangeState
Value = ifelse(Power>=2000&&Random<400,2700,2500)
triggerall = Power >= 1000
triggerall = RoundState = 2
triggerall = AILevel != 0
triggerall = StateType != A
triggerall = enemynear,StateNo != [5110,5120]
trigger1 = random < 5
trigger1 = ctrl
trigger2 = random < 50
trigger2 = ctrl
trigger2 = enemynear,MoveType = H
trigger2 = enemynear,Pos Y <= -16 && enemynear,Pos Y > -64
trigger3 = StateNo = [200,1999]
trigger3 = StateNo != [800,899]
trigger3 = StateNo != [1300,1399]
trigger3 = random < 100
trigger3 = MoveHit
trigger4 = random < 300
trigger4 = ctrl
trigger4 = p2dist x > 96
trigger4 = enemynear,MoveType = A

[State AI, AI Super Bitch]
Type = ChangeState
Value = 2400
triggerall = Power >= 1000
triggerall = RoundState = 2
triggerall = AILevel != 0
triggerall = enemynear,StateNo != [5110,5120]
triggerall = p2dist x < 200
trigger1 = random < 5
trigger1 = ctrl
trigger2 = random < 50
trigger2 = ctrl
trigger2 = enemynear,MoveType = H
trigger3 = StateNo = [200,1999]
trigger3 = StateNo != [800,899]
trigger3 = StateNo != [1300,1399]
trigger3 = random < 100
trigger3 = MoveHit
trigger4 = random < 250
trigger4 = ctrl
trigger4 = p2dist x > 96
trigger4 = enemynear,MoveType = A

[State AI, AI Over Your Shoulder EX]
type = ChangeState
value = 1450
triggerall = AILevel != 0
triggerall = StateType != A
triggerall = enemynear,StateNo != [5110,5120]
triggerall = Power >= 1000
triggerall = p2dist x < 100
triggerall = p2dist y < 64
trigger1 = ctrl
trigger1 = random < 50
trigger2 = ctrl
trigger2 = random < 150
trigger2 = enemynear,MoveType = H
trigger3 = StateNo = 220 || StateNo = 320 || StateNo = 290
trigger3 = MoveHit
trigger3 = random < 100

[State AI, AI Over Your Shoulder]
type = ChangeState
value = 1400
triggerall = AILevel != 0
triggerall = enemynear,StateNo != [5110,5120]
trigger1 = ctrl
trigger1 = random < 50
trigger1 = p2dist x > 48
trigger1 = p2dist y < 64
trigger2 = ctrl
trigger2 = random < 150
trigger2 = enemynear,MoveType = H
trigger3 = StateNo = 220 || StateNo = 320 || StateNo = 290 || StateNo = 390
trigger3 = MoveHit
trigger3 = random < 100

[State AI, AI Tornado or Harassed]
type = ChangeState
value = ifelse(random<500,ifelse(power>=1000&&random<200,1250,1200),ifelse(power>=1000&&random<200,1350,1300))
triggerall = StateType != A
triggerall = AILevel != 0
trigger1 = ctrl
trigger1 = random < 50
trigger2 = ctrl
trigger2 = random < 150
trigger2 = enemynear,MoveType = H
trigger3 = StateNo = [200,799]
trigger3 = MoveHit
trigger3 = random < 100

[State AI, AI Gunslinger or EX]
Type = ChangeState
Value = ifelse(power>=1000&&random<200,1050,1000)
triggerall = StateType != A
triggerall = AILevel != 0
trigger1 = ctrl
trigger1 = random < 50
trigger1 = p2dist x > 64
trigger2 = StateNo = [200,799]
trigger2 = MoveHit
trigger2 = random < 50

[State AI, AI Dodge]
Type = ChangeState
Value = ifelse(random<500,110,115)
triggerall = StateType != A
triggerall = AILevel != 0
triggerall = ctrl
triggerall = enemynear,MoveType != H
trigger1 = Random < 100
trigger1 = p2dist x < 64
trigger2 = !(enemynear,hitdefattr=SCA,AT)
trigger2 = inguarddist
trigger2 = random < 250
trigger2 = ctrl

[State AI, AI Retreat]
Type = ChangeState
Value = 105
triggerall = StateType != A
triggerall = AILevel != 0
triggerall = ctrl
triggerall = enemynear,MoveType != H
trigger1 = Random < 100
trigger1 = p2dist x < 64

[State AI, AI Run]
Type = ChangeState
Value = 100
triggerall = StateType != A
triggerall = AILevel != 0
triggerall = ctrl
trigger1 = Random < 100
trigger1 = p2dist x > 80

[State AI, AI Jump]
Type = ChangeState
Value = 40
triggerall = StateType != A
triggerall = AILevel != 0
triggerall = ctrl
triggerall = enemynear,StateType = A
triggerall = enemynear,Pos Y < -40
trigger1 = Random < 100
trigger2 = enemynear,MoveType = H
trigger2 = Random < 500

[State AI, AI A Throw]
Type = ChangeState
Value = 870
triggerall = StateType = A
triggerall = AILevel != 0
triggerall = ctrl
trigger1 = p2dist x <= 48
trigger1 = p2dist y <= 32
trigger1 = random < 750
trigger1 = enemynear,StateType = A
trigger1 = enemynear,MoveType != H

[State AI, AI S Throw]
Type = ChangeState
Value = 800
triggerall = StateType != A
triggerall = AILevel != 0
triggerall = ctrl
trigger1 = p2dist x <= 48
trigger1 = random < 750
trigger1 = enemynear,StateType != A
trigger1 = enemynear,MoveType != H

[State AI, AI A H]
Type = ChangeState
Value = ifelse(random<500,720,ifelse(random<500,620,1500))
triggerall = StateType = A
triggerall = AILevel != 0
trigger1 = p2dist x <= 96
trigger1 = random < 200
trigger1 = ctrl
trigger2 = StateNo = 610 ||StateNo = 710
trigger2 = random > 900
trigger2 = MoveContact

[State AI, AI A M]
Type = ChangeState
Value = ifelse(random<500,710,610)
triggerall = StateType = A
triggerall = AILevel != 0
trigger1 = p2dist x <= 64
trigger1 = random < 150
trigger1 = ctrl
trigger2 = StateNo = 600 || StateNo = 700
trigger2 = random > 750
trigger2 = MoveContact

[State AI, AI A L]
Type = ChangeState
Value = ifelse(random<500,700,600)
triggerall = StateType = A
triggerall = AILevel != 0
trigger1 = p2dist x <= 64
trigger1 = random < 100
trigger1 = ctrl
trigger2 = StateNo = 600 || StateNo = 700
trigger2 = random < 500
trigger2 = MoveContact

[State AI, AI Charge]
Type = ChangeState
Value = ifelse(random<500,290,390)
triggerall = StateType != A
triggerall = AILevel != 0
trigger1 = p2dist x <= 64
trigger1 = random < 500
trigger1 = StateNo = 100
trigger2 = StateNo = 210 ||StateNo = 310 || StateNo = 410 || StateNo = 510
trigger2 = random < 300
trigger2 = MoveContact

[State AI, AI S H]
Type = ChangeState
Value = ifelse(random<500,ifelse(random<500,220,320),ifelse(random<500,420,520))
triggerall = StateType != A
triggerall = AILevel != 0
trigger1 = p2dist x <= 96
trigger1 = random < 200
trigger1 = ctrl
trigger2 = StateNo = 210 ||StateNo = 310 || StateNo = 410 || StateNo = 510
trigger2 = random > 900
trigger2 = MoveContact

[State AI, AI S M]
Type = ChangeState
Value = ifelse(random<500,ifelse(random<500,210,310),ifelse(random<500,410,510))
triggerall = StateType != A
triggerall = AILevel != 0
trigger1 = p2dist x <= 80
trigger1 = random < 150
trigger1 = ctrl
trigger2 = StateNo = 200 || StateNo = 300 || StateNo = 400 || StateNo = 500
trigger2 = random > 750
trigger2 = MoveContact

[State AI, AI S L]
Type = ChangeState
Value = ifelse(random<500,ifelse(random<500,200,300),ifelse(random<500,400,500))
triggerall = StateType != A
triggerall = AILevel != 0
trigger1 = p2dist x <= 64
trigger1 = random < 100
trigger1 = ctrl
trigger2 = StateNo = 200 || StateNo = 300 || StateNo = 400 || StateNo = 500
trigger2 = random < 500
trigger2 = MoveContact

;---------------------------------------------------------------------------
[State -1, -----]
type = Null
trigger1 = Time = 666

;---------------------------------------------------------------------------
; Israel's Son
[State -1, Israel's Son]
type = ChangeState
value = 2000
triggerall = command = "2qcf_2p"
triggerall = Power >= 2000
triggerall = statetype != A
triggerall = RoundState = 2
trigger1 = ctrl
trigger2 = StateNo = [200,1999]
trigger2 = StateNo != [800,899]
trigger2 = StateNo != [1300,1399]
trigger2 = MoveHit

;---------------------------------------------------------------------------
; Super Bitch
[State -1, Super Bitch]
type = ChangeState
value = 2400
triggerall = command = "2qcf_p"
triggerall = Power >= 1000
;triggerall = statetype = A
triggerall = RoundState = 2
trigger1 = ctrl
trigger2 = StateNo = [200,1999]
trigger2 = StateNo != [800,899]
trigger2 = StateNo != [1300,1399]
trigger2 = MoveHit

;---------------------------------------------------------------------------
; Burrito
[State -1, Burrito]
type = ChangeState
value = 2300
triggerall = command = "2qcb_2p"
triggerall = Power >= 2000
triggerall = statetype != A
triggerall = RoundState = 2
trigger1 = ctrl
trigger2 = StateNo = [200,1999]
trigger2 = StateNo != [800,899]
trigger2 = StateNo != [1300,1399]
trigger2 = MoveHit

;---------------------------------------------------------------------------
; Just Stop
[State -1, Just Stop]
type = ChangeState
value = 2600
triggerall = command = "2qcb_p"
triggerall = Power >= 1000
triggerall = statetype != A
triggerall = RoundState = 2
trigger1 = ctrl
;trigger2 = StateNo = [200,1999]
;trigger2 = MoveContact

;---------------------------------------------------------------------------
; Pure Massacre
[State -1, Pure Massacre]
type = ChangeState
value = 2700
triggerall = command = "2qcf_2k"
triggerall = Power >= 2000
triggerall = statetype != A
triggerall = RoundState = 2
trigger1 = ctrl
trigger2 = StateNo = [200,1999]
trigger2 = StateNo != [800,899]
trigger2 = StateNo != [1300,1399]
trigger2 = MoveHit

;---------------------------------------------------------------------------
; Around The World
[State -1, Around The World]
type = ChangeState
value = 2500
triggerall = command = "2qcf_k"
triggerall = Power >= 1000
triggerall = statetype != A
triggerall = RoundState = 2
trigger1 = ctrl
trigger2 = StateNo = [200,1999]
trigger2 = StateNo != [800,899]
trigger2 = StateNo != [1300,1399]
trigger2 = MoveHit

;---------------------------------------------------------------------------
; Even Flow
[State -1, Even Flow]
type = ChangeState
value = 2100
triggerall = command = "2qcb_2k"
triggerall = Power >= 2000
;triggerall = statetype != A
triggerall = RoundState = 2
trigger1 = ctrl
trigger2 = StateNo = [200,1999]
trigger2 = StateNo != [800,899]
trigger2 = StateNo != [1300,1399]
trigger2 = MoveHit

;---------------------------------------------------------------------------
; Stellar
[State -1, Stellar]
type = ChangeState
value = 2200
triggerall = command = "2qcb_k"
triggerall = Power >= 1000
;triggerall = statetype != A
triggerall = RoundState = 2
trigger1 = ctrl
trigger2 = StateNo = [200,1999]
trigger2 = StateNo != [800,899]
trigger2 = StateNo != [1300,1399]
trigger2 = MoveHit

;---------------------------------------------------------------------------
[State -1, -----]
type = Null
trigger1 = Time = 666

;---------------------------------------------------------------------------
; Over Your Shoulder EX
[State -1, Over Your Shoulder EX]
type = ChangeState
value = 1450
triggerall = command = "qcb_2p"
triggerall = statetype != A
triggerall = Power >= 1000
triggerall = RoundState = 2
trigger1 = ctrl
trigger2 = StateNo = [200,799]
trigger2 = MoveHit

;---------------------------------------------------------------------------
; Harassed EX
[State -1, Harassed EX]
type = ChangeState
value = 1350
triggerall = command = "qcf_2k"
triggerall = statetype != A
triggerall = Power >= 1000
triggerall = RoundState = 2
trigger1 = ctrl
trigger2 = StateNo = [200,799]
trigger2 = MoveHit

;---------------------------------------------------------------------------
; Texas Tornado EX
[State -1, Texas Tornado EX]
type = ChangeState
value = 1250
triggerall = command = "qcb_2k"
triggerall = statetype != A
triggerall = Power >= 1000
triggerall = RoundState = 2
trigger1 = ctrl
trigger2 = StateNo = [200,799]
trigger2 = MoveHit

;---------------------------------------------------------------------------
; Gunslinger EX
[State -1, Gunslinger EX]
type = ChangeState
value = 1050
triggerall = command = "qcf_2p"
triggerall = statetype != A
triggerall = Power >= 1000
triggerall = RoundState = 2
trigger1 = ctrl
trigger2 = StateNo = [200,799]
trigger2 = MoveHit

;---------------------------------------------------------------------------
[State -1, -----]
type = Null
trigger1 = Time = 666

;---------------------------------------------------------------------------
; Over Your Shoulder
[State -1, Over Your Shoulder]
type = ChangeState
value = 1400
triggerall = command = "qcb_x" || command = "qcb_y" || command = "qcb_z"
;triggerall = statetype != A
trigger1 = ctrl
trigger2 = StateNo = [200,799]
trigger2 = MoveHit

;---------------------------------------------------------------------------
; Harassed
[State -1, Harassed]
type = ChangeState
value = 1300
triggerall = command = "qcf_a" || command = "qcf_b" || command = "qcf_c"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = StateNo = [200,799]
trigger2 = MoveHit

;---------------------------------------------------------------------------
; Texas Tornado
[State -1, Texas Tornado]
type = ChangeState
value = ifelse(StateType != A,1200,1210)
triggerall = command = "qcb_a" || command = "qcb_b" || command = "qcb_c"
;triggerall = statetype != A
trigger1 = ctrl
trigger2 = StateNo = [200,799]
trigger2 = MoveHit

;---------------------------------------------------------------------------
; Gunslinger
[State -1, Gunslinger]
type = ChangeState
value = 1000
triggerall = command = "qcf_x" || command = "qcf_y" || command = "qcf_z"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = StateNo = [200,799]
trigger2 = MoveHit

;---------------------------------------------------------------------------
[State -1, -----]
type = Null
trigger1 = Time = 666
;---------------------------------------------------------------------------
; Driven Under (Live)
[State -1, Driven Under (Live)]
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
; Driven Under
[State -1, Driven Under]
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
trigger3 = StateNo = [120,159]

;---------------------------------------------------------------------------
[State -1, -----]
type = Null
trigger1 = Time = 666
;---------------------------------------------------------------------------
;Throw
[State -1, Throw]
type = ChangeState
value = ifelse(StateType = A,870,800)
triggerall = command = "throw"
;triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Roll Cancel
[State -1, Roll Cancel]
type = ChangeState
value = 119
triggerall = command = "recovery"
triggerall = StateType != A
triggerall = Power >= 500
trigger1 = StateNo = [150,153]
;---------------------------------------------------------------------------
;Roll Fwd
[State -1, Roll Fwd]
type = ChangeState
value = 110
triggerall = command = "recovery"
triggerall = command != "holdback"
triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Roll Back
[State -1, Roll Back]
type = ChangeState
value = 115
triggerall = command = "recovery"
triggerall = command = "holdback"
triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

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
[State -1, Stoned]
type = ChangeState
value = 1500
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 600 || StateNo = 610 || StateNo = 700 || StateNo = 710
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
value = 720
triggerall = command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 600 || StateNo = 610 || StateNo = 700 || StateNo = 710
trigger2 = MoveContact

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
triggerall = stateno != 195
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 101

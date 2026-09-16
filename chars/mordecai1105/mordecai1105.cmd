; The CMD file.
;
; Two parts: 1. Command definition and  2. State entry
; (state entry is after the commands def section)
;
; 1. Command definition
; ---------------------
; Note: The commands are CASE-SENSITIVE, and so are the command names.
; The eight directions are:
;   B, DB, D, DF, F, UF, U, UB     (all CAPS)
;   corresponding to back, down-back, down, downforward, etc.
; The six buttons are:
;   a, b, c, x, y, z               (all lower case)
;   In default key config, abc are are the bottom, and xyz are on the
;   top row. For 2 button characters, we recommend you use a and b.
;   For 6 button characters, use abc for kicks and xyz for punches.
;
; Each [Command] section defines a command that you can use for
; state entry, as well as in the CNS file.
; The command section should look like:
;
;   [Command]
;   name = some_name
;   command = the_command
;   time = time (optional -- defaults to 15 if omitted)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas.
;   Directions and buttons can be preceded by special characters:
;   slash (/) - means the key must be held down
;          egs. command = /D       ;hold the down direction
;               command = /DB, a   ;hold down-back while you press a
;   tilde (~) - to detect key releases
;          egs. command = ~a       ;release the a button
;               command = ~D, F, a ;release down, press fwd, then a
;          If you want to detect "charge moves", you can specify
;          the time the key must be held down for (in game-ticks)
;          egs. command = ~30a     ;hold a for at least 30 ticks, then release
;   dollar ($) - Direction-only: detect as 4-way
;          egs. command = $D       ;will detect if D, DB or DF is held
;               command = $B       ;will detect if B, DB or UB is held
;   plus (+) - Buttons only: simultaneous press
;          egs. command = a+b      ;press a and b at the same time
;               command = x+y+z    ;press x, y and z at the same time
;   You can combine them:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;   It's recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This matches the way most
;   popular fighting games implement their command detection.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. Defaults to 15
;   if omitted
;
; If you have two or more commands with the same name, all of them will
; work. You can use it to allow multiple motions for the same move.
;
; Some common commands examples are given below.
;
; [Command] ;Quarter circle forward + x
; name = "QCF_x"
; command = ~D, DF, F, x
;
; [Command] ;Half circle back + a
; name = "HCB_a"
; command = ~F, DF, D, DB, B, a
;
; [Command] ;Two quarter circles forward + y
; name = "2QCF_y"
; command = ~D, DF, F, D, DF, F, y
;
; [Command] ;Tap b rapidly
; name = "5b"
; command = b, b, b, b, b
; time = 30
;
; [Command] ;Charge back, then forward + z
; name = "charge_B_F_z"
; command = ~60$B, F, z
; time = 10
; 
; [Command] ;Charge down, then up + c
; name = "charge_D_U_c"
; command = ~60$D, U, c
; time = 10
; 

;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 30

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1

 [Command]
name = "cpu1"
command = U, U, U, U, F, B, B, F
time = 0
[Command]
name = "cpu2"
command = U, U, U, D, F, B, B, F
time = 0
[Command]
name = "cpu3"
command = U, U, D, D, F, B, B, F
time = 0
[Command]
name = "cpu4"
command = U, D, D, D, F, B, B, F
time = 0
[Command]
name = "cpu5"
command = D, D, D, D, F, B, B, F
time = 0
[Command]
name = "cpu6"
command = D, D, D, U, F, B, B, F
time = 0
[Command]
name = "cpu7"
command = D, D, U, U, F, B, B, F
time = 0
[Command]
name = "cpu8"
command = D, U, U, U, F, B, B, F
time = 0
[Command]
name = "cpu9"
command = U, D, U, U, F, B, B, F
time = 0
[Command]
name = "cpu10"
command = U, U, D, U, F, B, B, F
time = 0
[Command]
name = "cpu11"
command = D, U, U, D, F, B, B, F
time = 0
[Command]
name = "cpu12"
command = U, D, D, U, F, B, B, F
time = 0
[Command]
name = "cpu13"
command = D, U, D, U, F, B, B, F
time = 0
[Command]
name = "cpu14"
command = U, D, U, D, F, B, B, F
time = 0
[Command]
name = "cpu15"
command = F, F, F, F, F, B, B, F
time = 0
[Command]
name = "cpu16"
command = B, B, B, B, F, B, B, F
time = 0
[Command]
name = "cpu17"
command = F, B, F, F, F, B, B, F
time = 0
[Command]
name = "cpu18"
command = F, F, B, F, F, B, B, F
time = 0
[Command]
name = "cpu19"
command = B, F, F, F, F, B, B, F
time = 0
[Command]
name = "cpu20"
command = F, F, F, B, F, B, B, F
time = 0
[Command]
name = "cpu21"
command = F, B, B, F, F, B, B, F
time = 0
[Command]
name = "cpu22"
command = B, F, F, B, F, B, B, F
time = 0
[Command]
name = "cpu23"
command = F, B, F, B, F, B, B, F
time = 0
[Command]
name = "cpu24"
command = B, F, B, F, F, B, B, F
time = 0
[Command]
name = "cpu25"
command = D, F, D, F, F, B, B, F
time = 0
[Command]
name = "cpu26"
command = D, B, D, B, F, B, B, F
time = 0
[Command]
name = "cpu27"
command = D, B, D, F, F, B, B, F
time = 0
[Command]
name = "cpu28"
command = D, F, D, B, F, B, B, F
time = 0
[Command]
name = "cpu29"
command = U, F, D, B, F, B, B, F
time = 0
[Command]
name = "cpu30"
command = U, B, D, F, F, B, B, F
time = 0
[Command]
name = "cpu31"
command = B, D, F, U, F, B, B, F
time = 0
[Command]
name = "cpu32"
command = F, D, B, U, F, B, B, F
time = 0
[Command]
name = "cpu33"
command = U, U, U, U, F, B, B, F
time = 0
[Command]
name = "cpu34"
command = U, U, U, D, F, B, B, F
time = 0
[Command]
name = "cpu35"
command = U, U, D, D, F, B, B, F
time = 0
[Command]
name = "cpu36"
command = U, D, D, D, F, B, B, F
time = 0
[Command]
name = "cpu37"
command = D, D, D, D, F, B, B, F
time = 0
[Command]
name = "cpu38"
command = D, D, D, U, F, B, B, F
time = 0
[Command]
name = "cpu39"
command = D, D, U, U, F, B, B, F
time = 0

;-| Super Motions |--------------------------------------------------------
[Command]
name = "FINISHER"
command = D, DF, F, D, DF, F, s
time = 35

[Command]
name = "Society Laser"
command = D, DF, F, x+y
time = 30

[Command]
name = "Lantern Hammer"
command = F, DF, D, DF, F, x+a
time = 30

[Command]
name = "The Power"
command = D, DF, F, a+b
time = 30

[Command]
name = "Skeet Shot"
command = F, B, D, x, z
time = 40

;-| Special Motions |------------------------------------------------------
[Command]
name = "Pops"
command = B, F, B, a
time = 20

[Command]
name = "Muscle Man"
command = B, F, B, b
time = 20

[Command]
name = "Benson"
command = B, F, B, c
time = 20

[Command]
name = "Zankou"
command = B, DB, B, y
time = 20

[Command]
name = "Tumble"
command = D, DF, F
time = 20

[Command]
name = "Cyclone"
command = B, F, z
time = 20

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "Hi Jump"     ;Required (do not remove)
command = D, U
time = 10

[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery" ;Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "recovery"
command = x+z
time = 1

[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "recovery"
command = b+c
time = 1

[Command]
name = "recovery"
command = a+c
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "back_x"
command = /$B,x
time = 1

[Command]
name = "back_y"
command = /$B,y
time = 1

[Command]
name = "back_z"
command = /$B,z
time = 1

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_z"
command = /$D,z
time = 1

[Command]
name = "fwd_x"
command = /$F,x
time = 1

[Command]
name = "fwd_y"
command = /$F,y
time = 1

[Command]
name = "fwd_z"
command = /$F,z
time = 1

[Command]
name = "up_x"
command = /$U,x
time = 1

[Command]
name = "up_y"
command = /$U,y
time = 1

[Command]
name = "up_z"
command = /$U,z
time = 1

[Command]
name = "back_a"
command = /$B,a
time = 1

[Command]
name = "back_b"
command = /$B,b
time = 1

[Command]
name = "back_c"
command = /$B,c
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_c"
command = /$D,c
time = 1

[Command]
name = "fwd_a"
command = /$F,a
time = 1

[Command]
name = "fwd_b"
command = /$F,b
time = 1

[Command]
name = "fwd_c"
command = /$F,c
time = 1

[Command]
name = "up_a"
command = /$U,a
time = 1

[Command]
name = "up_b"
command = /$U,b
time = 1

[Command]
name = "up_c"
command = /$U,c
time = 1

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
name = "s"
command = s
time = 1

;-| Single Dir |------------------------------------------------------------
[Command]
name = "fwd" ;Required (do not remove)
command = $F
time = 1

[Command]
name = "downfwd"
command = $DF
time = 1

[Command]
name = "down" ;Required (do not remove)
command = $D
time = 1

[Command]
name = "downback"
command = $DB
time = 1

[Command]
name = "back" ;Required (do not remove)
command = $B
time = 1

[Command]
name = "upback"
command = $UB
time = 1

[Command]
name = "up" ;Required (do not remove)
command = $U
time = 1

[Command]
name = "upfwd"
command = $UF
time = 1

;-| Hold Button |--------------------------------------------------------------
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
name = "hold_s"
command = /s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd" ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holddownfwd"
command = /$DF
time = 1

[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1

[Command]
name = "holddownback"
command = /$DB
time = 1

[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdupback"
command = /$UB
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holdupfwd"
command = /$UF
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

;===========================================================================
;---------------------------------------------------------------------------

;AI Activation
[State -1, AI Deactivation]
type = VarSet
trigger1 = roundstate = 1
trigger2 = roundstate = 3
trigger3 = roundstate = 4
trigger4 = var(7) = 1
trigger4 = random > 970
v = 7
value = 0

;AI Activation
[State -1, AI Activation]
type = VarSet
triggerall = roundstate = 2
trigger1 = command = "cpu1"
trigger2 = command = "cpu2"
trigger3 = command = "cpu3"
trigger4 = command = "cpu4"
trigger5 = command = "cpu5"
trigger6 = command = "cpu6"
trigger7 = command = "cpu7"
trigger8 = command = "cpu8"
trigger9 = command = "cpu9"
trigger10 = command = "cpu10"
trigger11 = command = "cpu11"
trigger12 = command = "cpu12"
trigger13 = command = "cpu13"
trigger14 = command = "cpu14"
trigger15 = command = "cpu15"
trigger16 = command = "cpu16"
trigger17 = command = "cpu17"
trigger18 = command = "cpu18"
trigger19 = command = "cpu19"
trigger20 = command = "cpu20"
trigger21 = command = "cpu21"
trigger22 = command = "cpu22"
trigger23 = command = "cpu23"
trigger24 = command = "cpu24"
trigger25 = command = "cpu25"
trigger26 = command = "cpu26"
trigger27 = command = "cpu27"
trigger28 = command = "cpu28"
trigger29 = command = "cpu29"
trigger30 = command = "cpu30"
trigger31 = command = "cpu31"
trigger32 = command = "cpu32"
trigger33 = command = "cpu33"
trigger34 = command = "cpu34"
trigger35 = command = "cpu35"
trigger36 = command = "cpu36"
trigger37 = command = "cpu37"
trigger38 = command = "cpu38"
trigger39 = command = "cpu39"
v = 7
value = 1

;---------------------------------------------------------------------------
; Assist - Pops
[State -1, Assist - Pops]
type = ChangeState
value = 1000
triggerall = ctrl
triggerall = numhelper(1001) = 0
triggerall = statetype != A
trigger1 = command = "Pops"
trigger2 = var(7) = 1
trigger2 = random > 999

;---------------------------------------------------------------------------
; Assist - Muscle Man
[State -1, Assist - Muscle Man]
type = ChangeState
value = 1002
triggerall = ctrl
triggerall = numhelper(1001) = 0
triggerall = statetype != A
trigger1 = command = "Muscle Man"
trigger2 = var(7) = 1
trigger2 = random > 999

;---------------------------------------------------------------------------
; Assist - Benson
[State -1, Assist - Benson]
type = ChangeState
value = 1005
triggerall = ctrl
triggerall = numhelper(1001) = 0
triggerall = statetype != A
trigger1 = command = "Benson"
trigger2 = var(7) = 1
trigger2 = random > 999

;---------------------------------------------------------------------------
; Zankou
[State -1, Zankou]
type = ChangeState
value = 1007
triggerall = ctrl
triggerall = statetype != A
trigger1 = command = "Zankou"
trigger2 = var(7) = 1
trigger2 = random > 999

;---------------------------------------------------------------------------
; Tumble
[State -1, Tumble]
type = ChangeState
value = 1008
triggerall = ctrl
triggerall = statetype = A
trigger1 = command = "Tumble"
trigger2 = var(7) = 1
trigger2 = random > 999

;---------------------------------------------------------------------------
; Cyclone
[State -1, Cyclone]
type = ChangeState
value = 1010
triggerall = command = "Cyclone"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = p2bodydist X < 10
triggerall = (p2statetype = S) || (p2statetype = C)
triggerall = p2movetype != H
trigger1 = ctrl
trigger2 = var(7) = 1
trigger2 = random > 999

;---------------------------------------------------------------------------
; Society Laser
[State -1, Hyper - Society Laser]
type = ChangeState
value = 6000
triggerall = ctrl
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = command = "Society Laser"
trigger2 = var(7) = 1
trigger2 = random > 999

;---------------------------------------------------------------------------
; Lantern Hammer
[State -1, Hyper - Lantern Hammer]
type = ChangeState
value = 6001
triggerall = ctrl
triggerall = statetype != A
triggerall = power >= 1000
triggerall = numhelper(10000) = 0
trigger1 = command = "Lantern Hammer"
trigger2 = var(7) = 1
trigger2 = random > 999

;---------------------------------------------------------------------------
; The Power
[State -1, Hyper - The Power]
type = ChangeState
value = 6002
triggerall = ctrl
triggerall = statetype != A
triggerall = power >= 2000
trigger1 = command = "The Power"
trigger2 = var(7) = 1
trigger2 = random > 999

;---------------------------------------------------------------------------
; Skeet Shot
[State -1, Hyper - Skeet Shot]
type = ChangeState
value = 6003
triggerall = ctrl
triggerall = statetype != A
triggerall = power >= 2000
trigger1 = command = "Skeet Shot"
trigger2 = var(7) = 1
trigger2 = random > 999

;---------------------------------------------------------------------------
[State -1, FINISHER]
type = ChangeState
value = 20000
triggerall = ctrl
triggerall = statetype = S || statetype = C
triggerall = power >= 5000
triggerall = life <= lifemax / 4
trigger1 = command = "FINISHER"
trigger2 = var(7) = 1
trigger2 = random > 999

;===========================================================================
;---------------------------------------------------------------------------
; Hi Jump
[State -1, Hi Jump]
type = ChangeState
value = 53
triggerall = command = "Hi Jump"
triggerall = ctrl
triggerall = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = var(7) = 1
trigger2 = stateno = 440
trigger2 = movehit = 1

;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 5120
trigger2 = command = "holdfwd"

;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 5120
trigger2 = command = "holdback"

;---------------------------------------------------------------------------
; Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "y" || command = "z"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;===========================================================================

;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "s"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------

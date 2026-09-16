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
;   time = time (optional)
;   buffer.time = time (optional)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas. Each of these
;   buttons or directions is referred to as a "symbol".
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
;   greater-than (>) - means there must be no other keys pressed or released
;                      between the previous and the current symbol.
;          egs. command = a, >~a   ;press a and release it without having hit
;                                  ;or released any other keys in between
;   You can combine the symbols:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;
;   Note: Successive direction symbols are always expanded in a manner similar
;         to this example:
;           command = F, F
;         is expanded when MUGEN reads it, to become equivalent to:
;           command = F, >~F, >F
;
;   It is recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This makes the command easier
;   to do.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. The default
;   value for this is set in the [Defaults] section below. A typical
;   value is 15.
;
; - buffer.time (optional)
;   Time that the command will be buffered for. If the command is done
;   successfully, then it will be valid for this time. The simplest
;   case is to set this to 1. That means that the command is valid
;   only in the same tick it is performed. With a higher value, such
;   as 3 or 4, you can get a "looser" feel to the command. The result
;   is that combos can become easier to do because you can perform
;   the command early. Attacks just as you regain control (eg. from
;   getting up) also become easier to do. The side effect of this is
;   that the command is continuously asserted, so it will seem as if
;   you had performed the move rapidly in succession during the valid
;   time. To understand this, try setting buffer.time to 30 and hit
;   a fast attack, such as KFM's light punch.
;   The default value for this is set in the [Defaults] section below.
;   This parameter does not affect hold-only commands (eg. /F). It
;   will be assumed to be 1 for those commands.
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
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1


;-| Super Motions |--------------------------------------------------------
;The following two have the same name, but different motion.
;Either one will be detected by a "command = Blind Rage" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
;
[Command]
name = "Blind Rage"
command = ~D, DF, F, D, DF, F, x
time = 20

[Command]
name = "Blind Rage"   ;Same name as above
command = ~D, DF, F, D, DF, F, y
time = 20

[Command]
name = "Blind Rage"   ;Same name as above
command = ~D, DF, F, D, DF, F, z
time = 20

[Command]
name = "Souls of the Punished"
command = ~D, DB, B, D, DB, B, x;~F, D, DF, F, D, DF, x
time = 20

[Command]
name = "Souls of the Punished"   ;Same name as above
command = ~D, DB, B, D, DB, B, y;~F, D, DF, F, D, DF, y
time = 20

[Command]
name = "Souls of the Punished"   ;Same name as above
command = ~D, DB, B, D, DB, B, z;~F, D, DF, F, D, DF, y
time = 20

[Command]
name = "Release the Teeth Guy!"
command = ~D, DF, F, D, DF, F, a
time = 20

[Command]
name = "Release the Teeth Guy!"   ;Same name as above
command = ~D, DF, F, D, DF, F, b
time = 20

[Command]
name = "Release the Teeth Guy!"
command = ~D, DF, F, D, DF, F, c
time = 20

[Command]
name = "Punishment Day"
command = ~D, DB, B, D, DB, B, a
time = 20

[Command]
name = "Punishment Day"   ;Same name as above
command = ~D, DB, B, D, DB, B, b
time = 20

[Command]
name = "Punishment Day"
command = ~D, DB, B, D, DB, B, c
time = 20

;-| Special Motions |------------------------------------------------------
[Command]
name = "The Dance"
command = ~D, DF, F, x

[Command]
name = "The Dance"
command = ~D, DF, F, y

[Command]
name = "The Dance"
command = ~D, DF, F, z

[Command]
name = "Gunshot"
command = ~D, DB, B, x

[Command]
name = "Gunshot"
command = ~D, DB, B, y

[Command]
name = "Gunshot"
command = ~D, DB, B, z

[Command]
name = "Saber Swing F"
command = ~D, DF, F, a

[Command]
name = "Saber Swing T"
command = ~D, DF, F, b

[Command]
name = "Saber Swing U"
command = ~D, DF, F, c

[Command]
name = "Wall Launch"
command = ~D, DB, B, a

[Command]
name = "Wall Launch"
command = ~D, DB, B, b

[Command]
name = "Wall Launch"
command = ~D, DB, B, c

;-| Super Jump |-----------------------------------------------------------
[Command]
name = "Super Jump";Required (do not remove)
command = D, U
time = 20

;-| Double Tap |-----------------------------------------------------------
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
name = "recovery";Required (do not remove)
command = x+y
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
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
name = "start"
command = s
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
; Blind Rage
[State -1, Blind Rage]
type = ChangeState
value = 3000
triggerall = !var(59)
triggerall = command = "Blind Rage"
triggerall = power >= 1000
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = [200,250]
trigger2 = movecontact

;---------------------------------------------------------------------------
; Souls of the Punished
[State -1, Souls of the Punished]
type = ChangeState
value = 3010
triggerall = !var(59)
triggerall = command = "Souls of the Punished"
triggerall = power >= 1000
triggerall = !NumHelper(3011)
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Release the Teeth Guy!
[State -1, Release the Teeth Guy!]
type = ChangeState
value = 3020
triggerall = !var(59)
triggerall = command = "Release the Teeth Guy!"
triggerall = power >= 2000
triggerall = !NumHelper(3021)
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Punishment Day
[State -1, Punishment Day]
type = ChangeState
value = 3030
triggerall = !var(59)
triggerall = command = "Punishment Day"
triggerall = power >= 3000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = stateno = [200,250]
trigger2 = movecontact

;===========================================================================
;---------------------------------------------------------------------------
;The Dance
[State -1, The Dance]
type = ChangeState
value = 1000
triggerall = !var(59)
triggerall = command = "The Dance"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 210 || stateno = 220 || stateno = 230 || stateno = 240 || stateno = 250
trigger2 = movecontact

;---------------------------------------------------------------------------
;Gunshot
[State -1, Gunshot]
type = ChangeState
value = 1010
triggerall = !var(59)
triggerall = command = "Gunshot"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Gunshot (air)
[State -1, Gunshot (air)]
type = ChangeState
value = 1011
triggerall = !var(59)
triggerall = command = "Gunshot"
triggerall = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Saber Swing (Fwd)
[State -1, Saber Swing (Fwd)]
type = ChangeState
value = 1020
triggerall = !var(59)
triggerall = command = "Saber Swing F"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 220 || stateno = 250
trigger2 = movecontact
trigger3 = stateno = 1000 && movecontact

;---------------------------------------------------------------------------
;Saber Swing (Trip)
[State -1, Saber Swing (Trip)]
type = ChangeState
value = 1022
triggerall = !var(59)
triggerall = command = "Saber Swing T"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Saber Swing (Up)
[State -1, Saber Swing (Up)]
type = ChangeState
value = 1024
triggerall = !var(59)
triggerall = command = "Saber Swing U"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Wall Launch
[State -1, Wall Launch]
type = ChangeState
value = 1030
triggerall = !var(59)
triggerall = command = "Wall Launch"
triggerall = backedgebodydist < frontedgebodydist - 25
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = ctrl
triggerall = statetype = S
triggerall = P2BodyDist X <= 25
triggerall = !var(59)
triggerall = command = "holdfwd" || command = "holdback"
trigger1 = command = "x" && command = "y"
trigger2 = command = "y" && command = "z"
trigger3 = command = "x" && command = "z"

;===========================================================================

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = !var(59)
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = !var(59)
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 400 || stateno = 430
trigger2 = movecontact

;---------------------------------------------------------------------------
;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = !var(59)
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 ||  stateno = 230 || stateno = 240 || stateno = 400 || stateno = 430
trigger2 = movecontact

;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = !var(59)
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 210 || stateno = 230 || stateno = 240 || stateno = 400 || stateno = 430
trigger2 = movecontact

;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = !var(59)
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 400 || stateno = 430
trigger2 = movecontact

;---------------------------------------------------------------------------
;Stand Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = !var(59)
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 210 || stateno = 230 || stateno = 400 || stateno = 430
trigger2 = movecontact

;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = !var(59)
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 210 || stateno = 230 || stateno = 240 || stateno = 400 || stateno = 410 || stateno = 430 
trigger2 = movecontact

;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = !var(59)
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 210 || stateno = 230
trigger2 = movecontact

;---------------------------------------------------------------------------
;Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = !var(59)
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 230 || stateno = 400 || stateno = 430
trigger2 = movecontact

;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = !var(59)
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 210 || stateno = 230 || stateno = 400 || stateno = 410 || stateno = 430 || stateno = 440
trigger2 = movecontact
trigger3 = stateno = 1000 && time > 20
trigger3 = movecontact

;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = !var(59)
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 230 || stateno = 400
trigger2 = movecontact

;---------------------------------------------------------------------------
;Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = !var(59)
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 230 || stateno = 400 || stateno = 430
trigger2 = movecontact

;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = !var(59)
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 210 || stateno = 230 || stateno = 240 || stateno = 400 || stateno = 410 || stateno = 430 || stateno = 440
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = !var(59)
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 630
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = !var(59)
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 || stateno = 640
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = !var(59)
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 610 || stateno = 630 || stateno = 640
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = !var(59)
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = !var(59)
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 610 || stateno = 630
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = !var(59)
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600  || stateno = 610 || stateno = 630 || stateno = 640
trigger2 = movecontact

;---------------------------------------------------------------------------
;Super Jump
;‹ó’†Žãƒpƒ“ƒ`
[State -1, Super Jump]
type = ChangeState
value = 4001
triggerall = !var(59)
trigger1 = command = "Super Jump"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = Command = "holdup"
trigger2 = stateno = 420 && MoveHit
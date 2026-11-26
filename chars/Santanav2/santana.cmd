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
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
;
[Command]
name = "none"
command = D, F, D, F, F, F, F, D, a, x, a, D
time = 1

;-| Special Motions |------------------------------------------------------
[Command]
name = "blocking"
command = $F,x
time = 3

[Command]
name = "blocking" ;Same name as above (buttons in opposite order)
command = x,$F
time = 3

[Command]
name = "upper_x"
command = ~F, D, DF, x

[Command]
name = "upper_y"
command = ~F, D, DF, y

[Command]
name = "Plant Flesh"
command = D, DF, F, a ;~F, D, DF, x+y

[Command]
name = "Rib Attackx"
command = ~D,DF,F,x

[Command]
name = "Rib Attacky"
command = ~D,DF,F,y

[Command]
name = "Rib Attackz"
command = ~D,DF,F,z

[Command]
name = "Machine Gunx"
command = ~D, B, x

[Command]
name = "Machine Guny"
command = ~D, B, y

[Command]
name = "Machine Gunz"
command = ~D, B, z

[Command]
name = "QCF_xy"
command = ~D, DF, F, x+y

[command]
name = "Rib Attack 2x"
command = c
time = 25

[command]
name = "Rib Attack 2y"
command = c
time = 25

[command]
name = "Rib Attack 2z"
command = c
time = 25

[Command]
name = "Counter"
command = ~D, B, a


[Command]
name = "QCB_xy"
command = ~D, DB, B, x+y

[Command]
name = "QCF_a"
command = ~D, DF, F, a

[Command]
name = "QCF_b"
command = ~D, DF, F, b

[Command]
name = "QCF_ab"
command = ~D, DF, F, a+b

[Command]
name = "Absorsion Super"
command = F,DF,D,D,a

[Command]
name = "Absorsion Super - Simple"
command = D, DF, F, b

[Command]
name = "Super Rib Attack"
command = B, DB, D, D, a

[Command]
name = "Super Rib Attack - Simple"
command = D, DB, B, b

[Command]
name = "Tacklex"
command = B, F, x

[Command]
name = "Tackley"
command = B, F, y

[Command]
name = "Tacklez"
command = B, F, z

[Command]
name = "FF_b"
command = F, F, b

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
command = x+y+z
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

[State -1, ?[???v?b?c?“?L???“?Z??]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114]))
triggerall = stateno != 230 
triggerall = stateno != 195
triggerall = stateno != 194
triggerall = stateno != 231
triggerall = stateno != 1052
triggerall = stateno != 1210
triggerall = stateno != 1211
triggerall = stateno != 750
triggerall = power >= 650
triggerall = !IShelper
triggerall = command = "a" 
triggerall = !var(0)
triggerall = statetype != A 
trigger1 = stateno = 195
trigger2 = stateno = [200,532]
trigger3 = stateno = [1000,1550] 
trigger4 = stateno = 840
value = 750
ignorehitpause = 1

;===========================================================================
;---------------------------------------------------------------------------
;===========================================================================
;This is not a move, but it sets up var(1) to be 1 if conditions are right
;for a combo into a special move (used below).
;Since a lot of special moves rely on the same conditions, this reduces
;redundant logic.
[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(1) = 0

[State -1, Combo condition Check]
type = VarSet
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact
trigger3 = stateno = 1310 || stateno = 1330 ;From blocking
var(1) = 1

;---------------------------------------------------------------------------
[State -1, Absorsion Super]
type = ChangeState
value = 1600
triggerall = command = "Absorsion Super";"Absorsion Super"
triggerall = power >= 330
trigger1 = var(1) ;Use combo condition (above)

[State -1, Absorsion Super - Simple]
type = ChangeState
value = 1600
triggerall = command = "Absorsion Super - Simple";"Absorsion Super" - Simple
triggerall = power >= 330
trigger1 = var(1) ;Use combo condition (above)
;-------------------------------------------------------------------------
[State -1, Super Rib Attack]
type = ChangeState
value = 1700
triggerall = command = "Super Rib Attack"
triggerall = power >= 1400
trigger1 = var(1) ;Use combo condition (above)

[State -1, Super Rib Attack - Simple]
type = ChangeState
value = 1700
triggerall = command = "Super Rib Attack - Simple"
triggerall = power >= 1400
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
[State -1, Tackle]
type = ChangeState
value = 1050
triggerall = command = "Tacklex"| command ="Tackley"|| command ="Tacklez"
triggerall = power >= 1400
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
[State -1, Rib Attack]
type = ChangeState
value = 1000
triggerall = command = "Rib Attackx"|| command = "Rib Attacky"|| command = "Rib Attackz"
triggerall = power >=150
trigger1 = var(1) ;Use combo condition (above)
;---------------------------------------------------------------------------
[State -1, Machine Gun]
type = ChangeState
value = 1010
triggerall = command = "Machine Gunx"|| command = "Machine Guny" || command = "Machine Gunz"
triggerall = power >=220
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
[State -1, Plant Flesh]
type = ChangeState
value = 1052
triggerall = !numhelper (1666)
triggerall = !numhelper (1667)
triggerall = command = "Plant Flesh"
triggerall = power >= 300
trigger1 = var(1) ;Use combo condition (above)
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[State -1, Rib Attack 2]
type = ChangeState
value = 1200
triggerall = !numhelper(1201)
triggerall = command = "Rib Attack 2x"|| command = "Rib Attack 2y" || command = "Rib Attack 2z"
triggerall = power >=200
trigger1 = var(1) ;Use combo condition (above)
trigger2 = stateno = 1000


;---------------------------------------------------------------------------
[State -1, Counter]
type = ChangeState
value = 1210
triggerall = command = "Counter"
triggerall = power >= 280
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = !command = "b"
triggerall = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = 200 && (prevstateno != [100,105]) && animelemtime(4) >= 0
trigger3 = StateNo = 210 && (prevstateno != [100,105]) && animelemtime(4) >= 0
trigger4 = StateNo = 220 && (prevstateno != [100,105]) && animelemtime(4) >= 0
trigger5 = StateNo = 400 && (prevstateno != [100,105]) && animelemtime(4) >= 0
trigger6 = StateNo = 410 && (prevstateno != [100,105]) && animelemtime(4) >= 0
trigger7 = StateNo = 420 && (prevstateno != [100,105]) && animelemtime(4) >= 0
ignorehitpause = 1
;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Dodge]
type = ChangeState
value = 800
triggerall = !command = "FF"
triggerall = !movetype = A
triggerall = command = "b"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100 ;????
trigger2 = time >= 4

;;==========================================================================
[State -1]
type = ChangeState
value = 810
triggerall = !var(59)
triggerall = !var(0) || (var(0) = 1 && var(2)) || (var(0) = 3 && var(2))
triggerall = roundstate = 2
triggerall = command = "recovery" || command = "b"
triggerall = prevstateno != [810,811]
trigger1 = stateno = 150 || stateno = 151 || stateno = 152 || stateno = 153
ignorehitpause = 0

;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Attack]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl || (stateno = 100 && time >= 4) || (stateno = 105 && time >= 4)
trigger2 = stateno = 200
trigger2 = time > 6
trigger2 = (stateno = 200||stateno = 400||stateno = 600||stateno = 610)
;---------------------------------------------------------------------------
;Stand Medium Punch
[State -1, Stand Medium Attack]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl || (stateno = 100 && time >= 4) || (stateno = 105 && time >= 4)
trigger2 = (stateno = 230) && time > 6
trigger2 = (stateno = 200||stateno = 400||stateno = 600||stateno = 610)
trigger3 = stateno = 200
trigger3 = movecontact = 1
;==========================================================================
[State -1, Stand Strong Attack]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl || (stateno = 100 && time >= 4) || (stateno = 105 && time >= 4)
trigger2 = stateno = 200
trigger2 = time > 6
trigger2 = (stateno = 210||stateno = 410||stateno = 600||stateno = 610)
trigger3 = stateno = 200 
trigger3 = movecontact = 1 && time > 31
trigger4 = stateno = 210
trigger4 = movecontact = 1
;---------------------------------------------------------------------------
[State -1, going inside the enemy idk how to call this]
type = ChangeState
value = 230
triggerall = !var(24)
triggerall = !numhelper(235)
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = power >= 150
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 7
;---------------------------------------------------------------------------
;Tauntx
[State -1, Taunt]
type = ChangeState
value = 196
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Attacks

[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = statetype = C
trigger1 = ctrl || (stateno = 100 && time >= 4) || (stateno = 105 && time >= 4)
trigger2 = (stateno = 200||stateno = 400||stateno = 600||stateno = 610)

;---------------------------------------------------------------------------
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = statetype = C
trigger1 = ctrl || (stateno = 100 && time >= 4) || (stateno = 105 && time >= 4)
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)
trigger2 = (stateno = 200||stateno = 400||stateno = 600||stateno = 610)

;==========================================================================
[State -1, Crouching Strong Attack]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = statetype = C
trigger1 = ctrl || (stateno = 100 && time >= 4) || (stateno = 105 && time >= 4)
trigger2 = (stateno = 400) || (stateno = 410)
trigger2 = (time > 9) || (movecontact && time > 5)
trigger2 = (stateno = 210||stateno = 410||stateno = 600||stateno = 610)
;===========================================================================
;Jumping Attacks

;---------------------------------------------------------------------------
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1350 ;Air blocking

;==========================================================================
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
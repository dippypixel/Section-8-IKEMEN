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
command.buffer.time = 2

;-| Super Motions |--------------------------------------------------------
[Command]
name = "StandCombo"
command = ~D,DB,B, a

[Command]
name = "TripleKFPalm"
command = ~D,DF,F, x+y

[Command]
name = "TripleKFPalm"
command = ~D,DF,F, y+z

[Command]
name = "TripleKFPalm"
command = ~D,DF,F, x+z

[Command]
name = "TripleKFPalm"
command = ~D,DF,F, b

[Command]
name = "SmashKFUpper"
command = ~D,DB,B, x+y

[Command]
name = "SmashKFUpper"
command = ~D,DB,B, y+z

[Command]
name = "SmashKFUpper"
command = ~D,DB,B, x+z

[Command]
name = "SmashKFUpper"
command = ~D,DB,B, b

;-| Special Motions |------------------------------------------------------
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
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_z"
command = ~D, DF, F, z

[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
command = ~D, DB, B, y

[Command]
name = "QCB_z"
command = ~D, DB, B, z

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

[Command]
name = "recovery";Required (do not remove)
command = y+z
time = 1

[Command]
name = "recovery";Required (do not remove)
command = x+z
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

[Command]
name = "xyz"
command = x+y+z
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

;---------------------------------------------------------------------------
;Stand Combo
[State -1, Stand Combo]
type = ChangeState
value = 4000
triggerall = !var(0) && !var(41) && helper(1250),stateno = 10000
triggerall = command = "StandCombo"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,4999]
trigger2 = movecontact

;---------------------------------------------------------------------------
;Smash Kung Fu Upper (uses one super bar)
;スマッシュ・カンフー・ウッパー（ゲージレベル１）
[State -1, Smash Kung Fu Upper]
type = ChangeState
value = 3050
triggerall = !var(0) && !var(41) && helper(1250),stateno = 10000
triggerall = command = "SmashKFUpper"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,4999]
trigger2 = movecontact

;---------------------------------------------------------------------------
;Triple Kung Fu Palm (uses one super bar)
;三烈カンフー突き手（ゲージレベル１）
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 3000
triggerall = !var(0) && !var(41) && helper(1250),stateno = 10000
triggerall = command = "TripleKFPalm"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,4999]
trigger2 = movecontact

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
var(1) = 1

;---------------------------------------------------------------------------
;Fast Kung Fu Knee (1/3 super bar)

[State -1, Fast Kung Fu Knee]
type = ChangeState
value = 1070
triggerall = command = "upper_z"
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Light Kung Fu Knee

[State -1, Light Kung Fu Knee]
type = ChangeState
value = 1050
triggerall = command = "upper_x"
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Strong Kung Fu Knee

[State -1, Strong Kung Fu Knee]
type = ChangeState
value = 1060
triggerall = command = "upper_y"
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Fast Kung Fu Palm (1/3 super bar)

[State -1, Fast Kung Fu Palm]
type = ChangeState
value = 1020
triggerall = !var(0)
triggerall = command = "QCF_z"
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Light Kung Fu Palm

[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1000
triggerall = !var(0)
triggerall = command = "QCF_x"
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Strong Kung Fu Palm

[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1010
triggerall = !var(0)
triggerall = command = "QCF_y"
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Fast Kung Fu Upper (1/3 super bar)

[State -1, Fast Kung Fu Upper]
type = ChangeState
value = 1120
triggerall = !var(0)
triggerall = command = "QCB_z"
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Light Kung Fu Upper

[State -1, Light Kung Fu Upper]
type = ChangeState
value = 1100
triggerall = !var(0)
triggerall = command = "QCB_x"
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Strong Kung Fu Upper

[State -1, Strong Kung Fu Upper]
type = ChangeState
value = 1110
triggerall = !var(0)
triggerall = command = "QCB_y"
trigger1 = var(1) ;Use combo condition (above)

;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd

[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = !var(0) && !var(41)
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = stateno != [100,105]

;---------------------------------------------------------------------------
;Run Back

[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = !var(0) && !var(41)
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = stateno != [100,105]

;---------------------------------------------------------------------------
;Kung Fu Throw

[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = command = "z" && !var(41)
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;===========================================================================
;---------------------------------------------------------------------------
;Push
[State -1, Push]
type = Helper
trigger1 = command = "b" || command = "xyz"
trigger1 = stateno = [150,159]
helpertype = normal
name = "Pusher"
ID = 9999
stateno = 9999
pos = 0,-50
postype = p1
facing = 1
ownpal = 1

;---------------------------------------------------------------------------
;Dodge
[State -1, Dodge]
type = ChangeState
value = 300
triggerall = !var(0) && !var(41)
triggerall = command = "b" || command = "xyz"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand Light Punch

[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = !var(0)
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && animelemtime(4) > 0 && !var(41)
trigger3 = stateno = 400 && animelemtime(3) > 0 && !var(41)

;---------------------------------------------------------------------------
;Stand Strong Punch

[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = !var(0)
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && animelemtime(3) > 0 && !var(41)
trigger3 = stateno = 400 && animelemtime(2) > 0 && !var(41)

;---------------------------------------------------------------------------
;Standing Strong Kick

[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = !var(0)
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && animelemtime(3) > 0 && !var(41)
trigger3 = stateno = 400 && animelemtime(2) > 0 && !var(41)

;---------------------------------------------------------------------------
;Taunt

[State -1, Taunt]
type = ChangeState
value = 195
triggerall = !var(0) && !var(41)
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Punch

[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = !var(0)
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C || (statetype = S && var(41))
trigger1 = ctrl
trigger2 = stateno = 200 && animelemtime(4) > 0 && !var(41)
trigger3 = stateno = 400 && animelemtime(3) > 0 && !var(41)

;---------------------------------------------------------------------------
;Crouching Strong Punch

[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C || (statetype = S && var(41))
trigger1 = ctrl
trigger2 = stateno = 200 && animelemtime(3) > 0 && !var(41)
trigger3 = stateno = 400 && animelemtime(2) > 0 && !var(41)

;---------------------------------------------------------------------------
;Crouching Strong Kick

[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = !var(0)
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C || (statetype = S && var(41))
trigger1 = ctrl
trigger2 = stateno = 200 && animelemtime(3) > 0 && !var(41)
trigger3 = stateno = 400 && animelemtime(2) > 0 && !var(41)

;---------------------------------------------------------------------------
;Jump Light Punch

[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x" && !var(41)
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Strong Punch

[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y" && !var(41)
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Strong Kick

[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = !var(0)
triggerall = command = "z" && !var(41)
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand Call

[State -1, Stand Call]
type = ChangeState
value = 1200
triggerall = !var(0) && !ishelper && !var(41) && helper(1250),stateno=10000
triggerall = command = "a"
trigger1 = var(1)
trigger2 = statetype = A
trigger2 = ctrl || ((stateno = [600,699]) && movecontact)
trigger3 = statetype != A
trigger3 = ctrl || ((stateno = [1000,1020]) && movecontact)
trigger4 = statetype != A
trigger4 = ctrl || ((stateno = [1100,1120]) && movecontact)
trigger5 = statetype = A
trigger5 = ctrl || ((stateno = [1050,1075]) && movecontact)

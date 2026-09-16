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
name = "TripleKFPalm"
command = ~D, DF, F, D, DF, F, x
time = 20

[Command]
name = "TripleKFPalm"   ;Same name as above
command = ~D, DF, F, D, DF, F, y
time = 20

[Command]
name = "SmashKFUpper"
command = ~D, DB, B, D, DB, B, x;~F, D, DF, F, D, DF, x
time = 20

[Command]
name = "SmashKFUpper"   ;Same name as above
command = ~D, DB, B, D, DB, B, y;~F, D, DF, F, D, DF, y
time = 20

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
name = "upper_xy"
command = ~F, D, DF, x+y

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
name = "QCF_xy"
command = ~D, DF, F, x+y

[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
command = ~D, DB, B, y

[Command]
name = "QCB_xy"
command = ~D, DB, B, x+y
[Command]
name = "QCB_xy"
command = ~D, DB, B, z+y
[Command]
name = "QCB_xy"
command = ~D, DB, B, x+z




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
name = "FF_ab"
command = F, F, a+b

[Command]
name = "FF_a"
command = F, F, a

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

[Command]
name = "holda"
command = /a
time = 1
 
[Command]
name = "holdb"
command = /b
time = 1
 
[Command]
name = "holdc"
command = /c
time = 1
 
[Command]
name = "holdx"
command = /x
time = 1
 
[Command]
name = "holdy"
command = /y
time = 1
 
[Command]
name = "holdz"
command = /z
time = 1
 
[Command]
name = "holdstart"
command = /s
time = 1
 
[Command]
name = "fwd"
command = F
time = 1
 
[Command]
name = "back"
command = B
time = 1
 
[Command]
name = "up"
command = U
time = 1
 
[Command]
name = "down"
command = D
time = 1
 
[Command]
name = "dfwd"
command = DF
time = 1
 
[Command]
name = "dback"
command = DB
time = 1
 
[Command]
name = "ufwd"
command = UF
time = 1
 
[Command]
name = "uback"
command = UB
time = 1

[Command]
name = "SuperJump"
command = $D, $U

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

;==============================================================================================
;==============================================================================================
;================================<EXPLODsive Buffering System>=================================
;====================================<by JustMorphPointman>====================================
;==============================================================================================
;==============================================================================================

;This is an explod-based buffering system, designed to overcome several different errors and bugs
;related to MUGEN's default method of processing commands, as well as offering creators more control
;over how the commands of their character should work. It is designed to be easy to use, understand,
;and install. For more information, including instructions on how to add this to a character, as
;well as how to customize it and add new commands, please visit http://mugenguild.com/forum/msg.2366951

;==============================================================================================
;========================<QUICK REFERENCE GUIDE TO THE EXPLOD ID #'s>==========================
;==============================================================================================

;BASIC DIRECTIONAL INPUTS (these are primarily used to detect directional releases, but also can
;be used outside of the Buffering system code block to detect when a specific direction is currently
;being input or held down)

;Down:										90000002
;Down-right:									90000003
;Right:										90000006
;Up-right:									90000009
;Up:										90000008
;Up-left:									90000007
;Left:										90000004
;Down-left:									90000001


;BUTTON PRESS
;x:										90000200
;y:										90000210
;z:										90000220
;a:										90000230
;b:										90000240
;c:										90000250
;start:										90000195


;BUTTON RELEASE
;x:										90000205
;y:										90000215
;z:										90000225
;a:										90000235
;b:										90000245
;c:										90000255
;start:										90000196


;SYSTEM MOTIONS
;Down (3 ticks):				(D with a 3 tick buffer)	90000012
;Down-right (3 ticks):				(DR with a 3 tick buffer)	90000013
;Right (3 ticks):				(R with a 3 tick buffer)	90000016
;Up-right (3 ticks):				(UR with a 3 tick buffer)	90000019
;Up (3 ticks):					(U with a 3 tick buffer)	90000018
;Up-left (3 ticks):				(UL with a 3 tick buffer)	90000017
;Left (3 ticks):				(L with a 3 tick buffer)	90000014
;Down-left (3 ticks):				(DL with a 3 tick buffer)	90000011

;Down (3 ticks + HitPause):			(D w/ 3 tick buffer + HitPause)	90000022
;Down-right (3 ticks + HitPause):		(DR w/ 3 tick buffer + HitPause)90000023
;Right (3 ticks + HitPause):			(R w/ 3 tick buffer + HitPause)	90000026
;Up-right (3 ticks + HitPause):			(UR w/ 3 tick buffer + HitPause)90000029
;Up (3 ticks + HitPause):			(U w/ 3 tick buffer + HitPause)	90000028
;Up-left (3 ticks + HitPause):			(UL w/ 3 tick buffer + HitPause)90000027
;Left (3 ticks + HitPause):			(L w/ 3 tick buffer + HitPause)	90000024
;Down-left (3 ticks + HitPause):		(DL w/ 3 tick buffer + HitPause)90000021

;R, R:						(F, F)				90001016
;L, L:						(B, B)				90001064
;D, U:						(D, U)				90000408
;U, U:						(U, U)				90000518
;D, D:						(D, D)				90000562
;R, DR, D					(F, DF, D)			90007502
;L, DL, D					(B, DB, D)			90007552


;SPECIAL MOTIONS
;D, DR, R:					(QCF)				90010006
;D, DL, L:					(QCB)				90010104
;R, D, DR:					(F, D, DF)			90010203
;L, D, DL:					(B, D, DB)			90010301
;L, DL, D, DR, R:				(HCF)				90010406
;R, DR, D, DL, L:				(HCB)				90010504
;(charge) L, R:					([charge] B, F)			90010606
;(charge) R, L:					([charge] F, B)			90010704
;(charge) D, U:					([charge] D, U)			90010808
;L, D, R, U:					(360)				90011008
;L, U, R, D:					(360)				90011102
;D, R, U, L:					(360)				90011204
;D, L, U, R:					(360)				90011306
;R, D, L, U:					(360)				90011408
;R, U, L, D:					(360)				90011502
;U, R, D, L:					(360)				90011604
;U, L, D, R:					(360)				90011706
;R, D, L, R:					(HCB, F)			90012016
;L, D, R, L:					(HCF, B)			90012114
;R, L, R:					(F, B, F)			90012216
;L, R, L:					(B, F, B)			90012314
;D, DR, R, UR:					(QCF, UF)			90012409
;D, DL, L, UL:					(QCB, UB)			90012507
;D, D:						([special] D, D)		90012602


;SUPER MOTIONS
;D, DR, R, D, DR, R:				(QCFx2)				90030016
;D, DL, L, D, DL, L:				(QCBx2)				90030114
;L, DL, D, DR, R, L, DL, D, DR, R:		(HCFx2)				90030416
;R, DR, D, DL, L, R, DR, D, DL, L:		(HCBx2)				90030514
;(charge) L, R, L, R:				([charge] B, F, B, F)		90030616
;(charge) R, L, R, L:				([charge] F, B, F, B)		90030714
;(charge) DL, DR, DL, UR:			([charge] DB, DF, DB, UF)	90030809
;(charge) DR, DL, DR, UL:			([charge] DF, DB, DF, UB)	90030907
;L, D, R, U, L, D, R, U:			(720)				90031018
;L, U, R, D, L, U, R, D:			(720)				90031112
;D, R, U, L, D, R, U, L:			(720)				90031214
;D, L, U, R, D, L, U, R:			(720)				90031316
;R, D, L, U, R, D, L, U:			(720)				90031418
;R, U, L, D, R, U, L, D:			(720)				90031512
;U, R, D, L, U, R, D, L:			(720)				90031614
;U, L, D, R, U, L, D, R:			(720)				90031716
;R, L, D, R:					(F, HCF)			90032016
;L, R, D, L:					(B, HCB)			90032114
;D, DR, R, D, L:				(QCF, HCB)			90032204
;D, DL, L, D, R:				(QCB, HCF)			90032306
;D, DR, R, DR, L:				(QCF, DF, B)			90032404
;D, DL, L, DL, R:				(QCB, DB, F)			90032506
;D, D, D:					(D, D, D)			90032602


;SUPER MOTIONS (button inputs)
;x, x, F, a, z:					(Shun Goku Satsu)		94000220



;==============================================================================================
;===================================<DIRECTIONAL COMMANDS>=====================================
;==============================================================================================

;==============================================================================================
;These are required for the system to function; they are active whenever the specified direction
;is currently being input, and disappear as soon as they are released (via a series of RemoveExplods
;at the bottom of the Buffering system code block). They are used by the system to detect directional
;releases, but can also be used outside of the Buffering system code block to detect when a specific
;direction is being input or held down.
;==============================================================================================

[State -1, Release Down Detector]
type = Explod
;make sure explod doesn't already exist
triggerAll = !NumExplod(90000002)
;check to make sure Helper exists, and that the entity running this code isn't the helper, and that
;the AI isn't active. Only a human player should be making explods!
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
;If either of these explods exist, then down/up inputs have been reversed (this is usually caused
;by an attack of some sort, such as Thanos's Mind Gem super). We can easily flip left/right commands,
;but for down/up inputs, we must have two sets of triggers. This is the first set, which only activate
;if the explods don't exist, so we can just check the inputs normally.
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
;explod will be created if down is input
trigger1 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
;no other directions may be input, otherwise it wouldn't be a down input!
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
;These sets of triggers, however, only are used if one of the direction input reversal explods exist.
;We treat "down" inputs as "up", and vice-versa; "down-right" is treated as "up-right", and so on.
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger2 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
anim = 9741
ID = 90000002
;these explods are only removed via a RemoveExplod, so their RemoveTime is set to -1 (aka infinite)
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release Down-Right Detector]
type = Explod
triggerAll = !NumExplod(90000003)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger1 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger1 = Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger2 = Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
anim = 9741
ID = 90000003
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release Right Detector]
type = Explod
triggerAll = !NumExplod(90000006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger1 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown" && Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
anim = 9741
ID = 90000006
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release Up-Right Detector]
type = Explod
triggerAll = !NumExplod(90000009)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger1 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger1 = Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger2 = Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
anim = 9741
ID = 90000009
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release Up Detector]
type = Explod
triggerAll = !NumExplod(90000008)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger2 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
anim = 9741
ID = 90000008
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release Up-Left Detector]
type = Explod
triggerAll = !NumExplod(90000007)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger1 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger2 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
anim = 9741
ID = 90000007
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release Left Detector]
type = Explod
triggerAll = !NumExplod(90000004)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger1 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown" && Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
anim = 9741
ID = 90000004
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release Down-Left Detector]
type = Explod
triggerAll = !NumExplod(90000001)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger1 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger2 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
anim = 9741
ID = 90000001
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1



;==============================================================================================
;==========================================<BUTTONS>===========================================
;==============================================================================================

[State -1, Press x]
type = Explod
;if there already exists a "press x" explod, and the player is in HitPauseTime, then we don't need another!
trigger1 = !HitPauseTime || !NumExplod(90000200)
trigger1 = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "x"
anim = 9741
ID = 90000200
;the removeTime, pauseMoveTime, and superMoveTime all must be the same value. This represents the
;amount of time (in ticks) that this individual input is "active"; in other words, it's the window
;of time the player has to input the next input in sequence (or if it's the final input of a command,
;the amount of time that command will last, if the character cannot currently perform the move in
;question). We use "10" as the default value for most directional inputs, because it's generally the
;standard amount of time for most games
;We use "3" for button inputs, which is what many modern games use, but there's a lot of variance
;there.

;We also include " + ifElse(HitPauseTime, HitPauseTime - 1, 0)" to the RemoveTime/PauseMoveTime/SuperMoveTime
;in order to keep the command alive during hit pause. This goes on all button press commands, as well as
;the final directional input of any system, special, or super command.
;For more information on what the removeTime (and pauseMoveTime, et. al.) represents, see the comments for
;the "Right, Right" command
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1

[State -1, Press y]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000210)
trigger1 = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "y"
anim = 9741
ID = 90000210
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1

[State -1, Press z]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000220)
trigger1 = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "z"
anim = 9741
ID = 90000220
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1

[State -1, Press a]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000230)
trigger1 = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "a"
anim = 9741
ID = 90000230
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1

[State -1, Press b]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000240)
trigger1 = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "b"
anim = 9741
ID = 90000240
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1

[State -1, Press c]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000250)
trigger1 = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "c"
anim = 9741
ID = 90000250
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1

[State -1, Press start]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000195)
trigger1 = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "start"
anim = 9741
ID = 90000195
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;These explods are used to detect button releases, much in the same way that the directional
;detectors work. These are required for the system, but it's easier to use MUGEN's standard
;"holda" / "holdx" / etc. for situations where you need to detect a held button input, rather than
;making use of these like you would the release direction detectors.
;==============================================================================================
[State -1, Release x Detector]
type = Explod
triggerAll = !NumExplod(90000201)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "x" || Helper(90000005), command = "holdx"
anim = 9741
ID = 90000201
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release y Detector]
type = Explod
triggerAll = !NumExplod(90000211)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "y" || Helper(90000005), command = "holdy"
anim = 9741
ID = 90000211
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release z Detector]
type = Explod
triggerAll = !NumExplod(90000221)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "z" || Helper(90000005), command = "holdz"
anim = 9741
ID = 90000221
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release a Detector]
type = Explod
triggerAll = !NumExplod(90000231)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "a" || Helper(90000005), command = "holda"
anim = 9741
ID = 90000231
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release b Detector]
type = Explod
triggerAll = !NumExplod(90000241)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "b" || Helper(90000005), command = "holdb"
anim = 9741
ID = 90000241
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release c Detector]
type = Explod
triggerAll = !NumExplod(90000251)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "c" || Helper(90000005), command = "holdc"
anim = 9741
ID = 90000251
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release start Detector]
type = Explod
triggerAll = !NumExplod(90000194)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "start"
anim = 9741
ID = 90000194
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1



;==============================================================================================
;Take note of the RemoveTimes on these: release button inputs don't persist through hitpause!
;==============================================================================================

[State -1, Release x]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000205)
triggerAll = NumExplod(90000201)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "x" && Helper(90000005), command != "holdx"
anim = 9741
ID = 90000205
removeTime = 3
pauseMoveTime = 3
superMoveTime = 3
ignoreHitPause = 1

[State -1, Release y]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000215)
triggerAll = NumExplod(90000211)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "y" && Helper(90000005), command != "holdy"
anim = 9741
ID = 90000215
removeTime = 3
pauseMoveTime = 3
superMoveTime = 3
ignoreHitPause = 1

[State -1, Release z]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000225)
triggerAll = NumExplod(90000221)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "z" && Helper(90000005), command != "holdz"
anim = 9741
ID = 90000225
removeTime = 3
pauseMoveTime = 3
superMoveTime = 3
ignoreHitPause = 1

[State -1, Release a]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000235)
triggerAll = NumExplod(90000231)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "a" && Helper(90000005), command != "holda"
anim = 9741
ID = 90000235
removeTime = 3
pauseMoveTime = 3
superMoveTime = 3
ignoreHitPause = 1

[State -1, Release b]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000245)
triggerAll = NumExplod(90000241)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "b" && Helper(90000005), command != "holdb"
anim = 9741
ID = 90000245
removeTime = 3
pauseMoveTime = 3
superMoveTime = 3
ignoreHitPause = 1

[State -1, Release c]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000255)
triggerAll = NumExplod(90000251)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "c" && Helper(90000005), command != "holdc"
anim = 9741
ID = 90000255
removeTime = 3
pauseMoveTime = 3
superMoveTime = 3
ignoreHitPause = 1

[State -1, Release start]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000196)
triggerAll = NumExplod(90000194)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "start" && Helper(90000005), command != "holdstart"
anim = 9741
ID = 90000196
removeTime = 3
pauseMoveTime = 3
superMoveTime = 3
ignoreHitPause = 1



;==============================================================================================
;=============================<DIRECTIONAL INPUTS (3 TICK BUFFER)>=============================
;==============================================================================================

;==============================================================================================
;These activate whenever the direction in question is input, and persist for three ticks. Useful
;if you need to use only a single directional input, but also want it to last longer than one tick.
;==============================================================================================

;======================================<DOWN (3 TICKS)>========================================
[State -1, Down (3 ticks)]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 9741
ID = 90000012
removeTime = 3
pauseMoveTime = 3
superMoveTime = 3
ignoreHitPause = 1



;===================================<DOWN-RIGHT (3 TICKS)>=====================================
[State -1, Down-Right (3 ticks)]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 9741
ID = 90000013
removeTime = 3
pauseMoveTime = 3
superMoveTime = 3
ignoreHitPause = 1



;======================================<RIGHT (3 TICKS)>=======================================
[State -1, Right (3 ticks)]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 9741
ID = 90000016
removeTime = 3
pauseMoveTime = 3
superMoveTime = 3
ignoreHitPause = 1



;=====================================<UP-RIGHT (3 TICKS)>=====================================
[State -1, Up-Right (3 ticks)]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 9741
ID = 90000019
removeTime = 3
pauseMoveTime = 3
superMoveTime = 3
ignoreHitPause = 1



;========================================<UP (3 TICKS)>========================================
[State -1, Up (3 ticks)]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down" && Helper(90000005), command != "back"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "back"
anim = 9741
ID = 90000018
removeTime = 3
pauseMoveTime = 3
superMoveTime = 3
ignoreHitPause = 1



;=====================================<UP-LEFT (3 TICKS)>======================================
[State -1, Up-Left (3 ticks)]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
anim = 9741
ID = 90000017
removeTime = 3
pauseMoveTime = 3
superMoveTime = 3
ignoreHitPause = 1



;=======================================<LEFT 3 TICKS>=========================================
[State -1, Left (3 ticks)]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 9741
ID = 90000014
removeTime = 3
pauseMoveTime = 3
superMoveTime = 3
ignoreHitPause = 1



;====================================<DOWN-LEFT 3 TICKS>=======================================
[State -1, Down-Left (3 ticks)]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 9741
ID = 90000011
removeTime = 3
pauseMoveTime = 3
superMoveTime = 3
ignoreHitPause = 1



;==============================================================================================
;=====================<DIRECTIONAL INPUTS (3 TICK BUFFER + HITPAUSE TIME)>=====================
;==============================================================================================

;==============================================================================================
;These are almost identical to the explods directly above this, except these will persist through
;a HitPause, and will only activate if the direction in question is being either held or input on
;the same tick that any button is input. These can be used to replicate the command behavior of Capcom
;games for crouching and command normal moves. For more information, please see [INSERT LINK].
;==============================================================================================

;==============================<DOWN (3 TICKS + HITPAUSE TIME)>================================
[State -1, Down (3 ticks + HitPauseTime)]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
triggerAll = Helper(90000005), command = "x" || Helper(90000005), command = "y" || Helper(90000005), command = "z" || Helper(90000005), command = "a"  || Helper(90000005), command = "b" || Helper(90000005), command = "c" || Helper(90000005), command = "start"
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = (Helper(90000005), command = "down" || Helper(90000005), command = "holddown") && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd" && Helper(90000005), command != "holdback" && Helper(90000005), command != "holdup" && Helper(90000005), command != "holdfwd"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = (Helper(90000005), command = "up" || Helper(90000005), command = "holdup") && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd" && Helper(90000005), command != "holdback" && Helper(90000005), command != "holddown" && Helper(90000005), command != "holdfwd"
anim = 9741
ID = 90000022
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1




;===========================<DOWN-RIGHT (3 TICKS + HITPAUSE TIME)>=============================
[State -1, Down-Right (3 ticks + HitPauseTime)]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
triggerAll = Helper(90000005), command = "x" || Helper(90000005), command = "y" || Helper(90000005), command = "z" || Helper(90000005), command = "a"  || Helper(90000005), command = "b" || Helper(90000005), command = "c" || Helper(90000005), command = "start"
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = (Helper(90000005), command = "dfwd" || (Helper(90000005), command = "holddown" && Helper(90000005), command = "holdfwd")) && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "holdback" && Helper(90000005), command != "holdup"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = (Helper(90000005), command = "ufwd" || (Helper(90000005), command = "holdup" && Helper(90000005), command = "holdfwd")) && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "holdback" && Helper(90000005), command != "holddown"
anim = 9741
ID = 90000023
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================<RIGHT (3 TICKS + HITPAUSE TIME)>===============================
[State -1, Right (3 ticks + HitPauseTime)]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
triggerAll = Helper(90000005), command = "x" || Helper(90000005), command = "y" || Helper(90000005), command = "z" || Helper(90000005), command = "a"  || Helper(90000005), command = "b" || Helper(90000005), command = "c" || Helper(90000005), command = "start"
trigger1 = (Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd") && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down" && Helper(90000005), command != "holdback" && Helper(90000005), command != "holdup" && Helper(90000005), command != "holddown"
anim = 9741
ID = 90000026
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;=============================<UP-RIGHT (3 TICKS + HITPAUSE TIME)>=============================
[State -1, Up-Right (3 ticks + HitPauseTime)]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
triggerAll = Helper(90000005), command = "x" || Helper(90000005), command = "y" || Helper(90000005), command = "z" || Helper(90000005), command = "a"  || Helper(90000005), command = "b" || Helper(90000005), command = "c" || Helper(90000005), command = "start"
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = (Helper(90000005), command = "ufwd" || (Helper(90000005), command = "holdup" && Helper(90000005), command = "holdfwd")) && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "holdback" && Helper(90000005), command != "holddown"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = (Helper(90000005), command = "dfwd" || (Helper(90000005), command = "holddown" && Helper(90000005), command = "holdfwd")) && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "holdback" && Helper(90000005), command != "holdup"
anim = 9741
ID = 90000029
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;================================<UP (3 TICKS + HITPAUSE TIME)>================================
[State -1, Up (3 ticks + HitPauseTime)]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
triggerAll = Helper(90000005), command = "x" || Helper(90000005), command = "y" || Helper(90000005), command = "z" || Helper(90000005), command = "a"  || Helper(90000005), command = "b" || Helper(90000005), command = "c" || Helper(90000005), command = "start"
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = (Helper(90000005), command = "up" || Helper(90000005), command = "holdup") && Helper(90000005), command != "fwd" && Helper(90000005), command != "down" && Helper(90000005), command != "back" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "holddown" && Helper(90000005), command != "holdback"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = (Helper(90000005), command = "down" || Helper(90000005), command = "holddown") && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "back" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "holdup" && Helper(90000005), command != "holdback"
anim = 9741
ID = 90000028
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;=============================<UP-LEFT (3 TICKS + HITPAUSE TIME)>==============================
[State -1, Up-Left (3 ticks + HitPauseTime)]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
triggerAll = Helper(90000005), command = "x" || Helper(90000005), command = "y" || Helper(90000005), command = "z" || Helper(90000005), command = "a"  || Helper(90000005), command = "b" || Helper(90000005), command = "c" || Helper(90000005), command = "start"
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = (Helper(90000005), command = "uback" || (Helper(90000005), command = "holdup" && Helper(90000005), command = "holdback")) && Helper(90000005), command != "fwd" && Helper(90000005), command != "down" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "holddown"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = (Helper(90000005), command = "dback" || (Helper(90000005), command = "holddown" && Helper(90000005), command = "holdback")) && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "holdup"
anim = 9741
ID = 90000027
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;===============================<LEFT 3 TICKS + HITPAUSE TIME>=================================
[State -1, Left (3 ticks + HitPauseTime)]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
triggerAll = Helper(90000005), command = "x" || Helper(90000005), command = "y" || Helper(90000005), command = "z" || Helper(90000005), command = "a"  || Helper(90000005), command = "b" || Helper(90000005), command = "c" || Helper(90000005), command = "start"
trigger1 = (Helper(90000005), command = "back" || Helper(90000005), command = "holdback") && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "holdup" && Helper(90000005), command != "holddown"
anim = 9741
ID = 90000024
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;============================<DOWN-LEFT 3 TICKS + HITPAUSE TIME>===============================
[State -1, Down-Left (3 ticks + HitPauseTime)]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
triggerAll = Helper(90000005), command = "x" || Helper(90000005), command = "y" || Helper(90000005), command = "z" || Helper(90000005), command = "a"  || Helper(90000005), command = "b" || Helper(90000005), command = "c" || Helper(90000005), command = "start"
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = (Helper(90000005), command = "dback" || (Helper(90000005), command = "holddown" && Helper(90000005), command = "holdback")) && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "holdup"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = (Helper(90000005), command = "uback" || (Helper(90000005), command = "holdup" && Helper(90000005), command = "holdback")) && Helper(90000005), command != "fwd" && Helper(90000005), command != "down" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "holddown"
anim = 9741
ID = 900000021
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;Reminder: because this system is based on absolute directions (left/right) instead of relative
;directions (forward/backward), all commands must have a mirrored command as well (unless they are
;performed solely with up and/or down!) In other words, two different versions of each individual
;command must be defined in this system: one assuming the character is facing the right, and one
;for the left.
;==============================================================================================

;==============================================================================================
;================================<FORWARD, FORWARD/BACK, BACK>=================================
;==============================================================================================

;==============================================================================================
;Dash/run commands in SNK typically have release directions as their first inputs. In other words,
;in most SNK games, you can dash/run by holding forward or back for however long you like, and then
;quickly releasing the stick and returning to neutral, then quickly inputting forward/back again.
;In most Capcom games, this will not work. We have the dash/run commands in this system set up to
;follow Capcom's example.

;Different games have different input windows for dash commands. KOF gives you a 7 tick window between
;each the first and second forward/back commands, and the final input has a buffer time of 3 ticks.
;CPS2 Capcom games (under the normal speed setting) have an input window of 7 ticks for the consecutive
;forward/back commands, and the final input has a buffer time of 2 ticks. In SFIII, both the input
;window and the buffer time is 7 ticks. The default values in this system are 10 for the input window
;and 3 for the buffer time, to match up with the other commands (but feel free to change those values
;to suit your personal preference!)
;==============================================================================================

;=======================================<RIGHT, RIGHT>=========================================
[State -1, R, R: 1st Right]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 9741
ID = 90001006
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, R, R: Neutral]
type = Explod
triggerAll = NumExplod(90000006) && NumExplod(90001006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
;make sure no directional input is being performed
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd"
trigger1 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown" && Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
anim = 9741
ID = 90001005
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

;We remove the neutral explod if any non-right input is detected, or if the 1st right explod does not exist
;in most Capcom games, a dash command will be cancelled mid-input if any direction other than forward/back
;and neutral are input. But SNK games give you more leeway: as long as you have inputting forward/back, and
;have returned the stick to neutral, you can input any other directional command and still get a dash as long
;as you input another forward/back command. If you want to replicate this behavior, simply delete the first trigger
;of this RemoveExplod sctrl (you will still need the second trigger, though).
[State -1, Remove R, R: Neutral]
type = RemoveExplod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = NumExplod(90000002) || NumExplod(90000003) || NumExplod(90000009) || NumExplod(90000008) || NumExplod(90000007) || NumExplod(90000004) || NumExplod(90000001)
trigger2 = !NumExplod(90001006)
ID = 90001005
ignoreHitPause = 1

[State -1, R, R: 2nd Right]
type = Explod
;we check to see if the user has input right recently, and has returned the stick to neutral
triggerAll = NumExplod(90001005) && NumExplod(90001006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 9741
ID = 90001016
;see the button explods above for an explanation of this ifElse statement. This statement only goes on the final
;input of any command, and should not go anywhere else in the command!
;We also are using a non-standard removeTime for this input, as dash commands in most games are only active
;for a short period of time (around 1-3 ticks).
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1

[State -1, R, R: 2nd Right (10 ticks)]
type = Explod
;this one is used for Kung Fu Knee
triggerAll = NumExplod(90001005) && NumExplod(90001006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 9741
ID = 90001026
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;Now for the reversed command:
;==============================================================================================

;=======================================<LEFT, LEFT>=========================================
[State -1, L, L: 1st Left]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 9741
ID = 90001054
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, L, L: Neutral]
type = Explod
triggerAll = NumExplod(90000004) && NumExplod(90001054)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "back" && Helper(90000005), command != "holdback"
trigger1 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown" && Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
anim = 9741
ID = 90001055
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, Remove L, L: Neutral]
type = RemoveExplod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = NumExplod(90000002) || NumExplod(90000003) || NumExplod(90000006) || NumExplod(90000009) || NumExplod(90000008) || NumExplod(90000007) || NumExplod(90000001)
trigger2 = !NumExplod(90001054)
ID = 90001055
ignoreHitPause = 1

[State -1, L, L: 2nd Left]
type = Explod
triggerAll = NumExplod(90001055) && NumExplod(90001054)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 9741
ID = 90001064
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1

[State -1, L, L: 2nd Left (10 ticks)]
type = Explod
triggerAll = NumExplod(90001055) && NumExplod(90001054)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 9741
ID = 90001074
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;===================================<DOWN, UP (SUPER JUMP)>====================================
;==============================================================================================

;==============================================================================================
;Super jump commands can be done with any down directional input, followed by any up directional
;==============================================================================================

;=======================================<DOWN, UP>=========================================
[State -1, D, U: Down]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" || Helper(90000005), command = "dfwd" || Helper(90000005), command = "dback"
trigger1 = Helper(90000005), command != "up"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" || Helper(90000005), command = "ufwd" || Helper(90000005), command = "uback"
trigger2 = Helper(90000005), command != "down"
anim = 9741
ID = 90000402
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, U: Up]
type = Explod
triggerAll = NumExplod(90000402)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" || Helper(90000005), command = "ufwd" || Helper(90000005), command = "uback"
trigger1 = Helper(90000005), command != "down"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "dfwd" || Helper(90000005), command = "dback"
trigger2 = Helper(90000005), command != "up"
anim = 9741
ID = 90000408
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;=====================================<UP, UP/DOWN, DOWN>======================================
;==============================================================================================

;==============================================================================================
;Pretty similar to the Forward, Forward/Back, Back commands, only we don't need to worry about
;the player's facing or anything, since all the inputs are either down or up!

;Also of note is that any up/down direction may be used to activate this command (i.e., a UF, UF
;will still be considered a U, U command).
;==============================================================================================

;=======================================<UP, UP>=========================================
[State -1, U, U: 1st Up]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" || Helper(90000005), command = "ufwd" || Helper(90000005), command = "uback"
trigger1 = Helper(90000005), command != "down"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "dfwd" || Helper(90000005), command = "dback"
trigger2 = Helper(90000005), command != "up"
anim = 9741
ID = 90000508
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, U, U: Neutral]
type = Explod
triggerAll = (NumExplod(90000007) || NumExplod(90000008) || NumExplod(90000009)) && NumExplod(90000508)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
trigger1 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown" && Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd"
anim = 9741
ID = 90000505
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, Remove U, U: Neutral]
type = RemoveExplod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = NumExplod(90000004) || NumExplod(90000001) || NumExplod(90000002) || NumExplod(90000003) || NumExplod(90000006)
trigger2 = !NumExplod(90000508)
ID = 90000505
ignoreHitPause = 1

[State -1, U, U: 2nd Up]
type = Explod
triggerAll = NumExplod(90000505) && NumExplod(90000508)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" || Helper(90000005), command = "ufwd" || Helper(90000005), command = "uback"
trigger1 = Helper(90000005), command != "down"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "dfwd" || Helper(90000005), command = "dback"
trigger2 = Helper(90000005), command != "up"
anim = 9741
ID = 90000518
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;=========================================<DOWN,DOWN>==========================================
[State -1, D, D: 1st Down]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" || Helper(90000005), command = "dfwd" || Helper(90000005), command = "dback"
trigger1 = Helper(90000005), command != "up"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" || Helper(90000005), command = "ufwd" || Helper(90000005), command = "uback"
trigger2 = Helper(90000005), command != "down"
anim = 9741
ID = 90000552
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, D: Neutral]
type = Explod
triggerAll = (NumExplod(90000001) || NumExplod(90000002) || NumExplod(90000003)) && NumExplod(90000552)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
anim = 9741
ID = 90000555
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, Remove D, D: Neutral]
type = RemoveExplod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = NumExplod(90000004) || NumExplod(90000007) || NumExplod(90000008) || NumExplod(90000009) || NumExplod(90000006)
trigger2 = !NumExplod(90000552)
ID = 90000555
ignoreHitPause = 1

[State -1, D, D: 2nd Down]
type = Explod
triggerAll = NumExplod(90000555) && NumExplod(90000552)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" || Helper(90000005), command = "dfwd" || Helper(90000005), command = "dback"
trigger1 = Helper(90000005), command != "up"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" || Helper(90000005), command = "ufwd" || Helper(90000005), command = "uback"
trigger2 = Helper(90000005), command != "down"
anim = 9741
ID = 90000562
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;===================================<QUARTER CIRCLE DOWN>======================================
;==============================================================================================

;==============================================================================================
;This is the SFA2 style Zero Counter command. This is the first command in the system that uses
;a release directional input. However, this command works somewhat differently from the way pretty
;much every other command in this system works, so we're gonna avoid getting deep into discussion
;about anything here. Please see the following command (quarter-circle forward/back) for a basic
;look at how most release inputs work in this system.
;==============================================================================================


;================================<RIGHT, DOWN-RIGHT, DOWN>=====================================
[State -1, R, DR, D: Release Right]
type = Explod
;check to see if the Release Right Detector explod exists. If it exists and down is no longer being
;input, that means it was released!
triggerAll = NumExplod(90000006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
;if right isn't currently being input by the user, then right was released!
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd"
;... but if right is currently being input by the user, AND there's another direction being input,
;then right is still considered to have been released.
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 9741
ID = 90007506
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, R, DR, D: Down-Right]
type = Explod
;the "Right" explod needs to exist before the next command in sequence is allowed
triggerAll = NumExplod(90007506)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 9741
ID = 90007503
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, R, DR, D: Down]
type = Explod
triggerAll = NumExplod(90007503)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 9741
ID = 90007502
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;=================================<LEFT, DOWN-LEFT, DOWN>======================================
[State -1, L, DL, D: Release Left]
type = Explod
triggerAll = NumExplod(90000004)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "back" && Helper(90000005), command != "holdback"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 9741
ID = 90007554
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, L, DL, D: Down-Left]
type = Explod
triggerAll = NumExplod(90007554)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 9741
ID = 90007551
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, L, DL, D: Down]
type = Explod
triggerAll = NumExplod(90007551)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 9741
ID = 90007552
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;===============================<QUARTER CIRCLE FORWARD/BACK>==================================
;==============================================================================================

;==============================================================================================
;The vast majority of all commands in fighting games allow the first input of any command to be
;a release input, so that you're allowed to hold the direction that the command starts with for
;however long you want, then input the rest of the command, and still get the move. This is why
;in MUGEN, people typically write all their character's commands as starting with a release input;
;however, things are a bit more complicated outside of MUGEN (and thus, more complicated in this
;buffer too). In most games, the window of time a player has to input the next command in sequence
;after performing a release input is shorter than the window of time they have to input the next
;command after a press input. For example, in Street Fighter III, if you want to perform a quarter-
;circle forward motion, and you press (or hold) the "down" direction, you will have 10 ticks to
;input "down-forward" and continue the command. But if instead you were to hold the "down" direction
;down for a few seconds before releasing it, you will have only 5 ticks to input "down-forward" to
;continue entering the command.

;The way this is translated to the EXPLODsive Buffering system is this: we have two separate explods
;for the first input of every command that uses a release directional input. One explod is created
;whenever the first input is entered, and has a RemoveTime of 10 (which is the same amount of time
;that most other directional explods use in this system); one other explod is also created whenever
;the direction of the first input is released: this has a RemoveTime of 5, which is generally what
;commercial fighting games use.

;Do note that not every game gives players the same input windows for every single command: for
;example, in Street Fighter Alpha 3 (on normal speed), press directional inputs all have a 10 tick
;input window, but the input window for the release directional input in a quarter-circle motion is
;6, while the input window for the release directional input in a forward, down, down-forward motion
;is only 4! There's a whole bunch of variance here, sometimes in the same game, and so it's best to check
;the source game of the character you're making (if applicable) to try and get an idea of what RemoveTime
;will be best for each of your commands.
;==============================================================================================

;================================<DOWN, DOWN-RIGHT, RIGHT>=====================================

;Since this is the press directional input for the first input, it has a RemoveTime of 10
[State -1, D, DR, R: Press Down]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 9741
ID = 90010002
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

;And since this is the release directional input for the first input, it has a RemoveTime of only 5!
[State -1, D, DR, R: Release Down]
type = Explod
triggerAll = NumExplod(90000002)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
trigger2 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger3 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger3 = Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
trigger4 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger4 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger4 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
anim = 9741
ID = 90010052
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, D, DR, R: Down-Right]
type = Explod
;Remember, we have to check to see if either the "press down" or "release down" explods exist!
triggerAll = NumExplod(90010002) || NumExplod(90010052)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 9741
ID = 90010003
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, DR, R: Right]
type = Explod
triggerAll = NumExplod(90010003)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 9741
ID = 90010006
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;=================================<DOWN, DOWN-LEFT, LEFT>======================================
[State -1, D, DL, L: Press Down]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 9741
ID = 90010102
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, DL, L: Release Down]
type = Explod
triggerAll = NumExplod(90000002)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
trigger2 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger3 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger3 = Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
trigger4 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger4 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger4 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
anim = 9741
ID = 90010152
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, D, DL, L: Down-Left]
type = Explod
triggerAll = NumExplod(90010102) || NumExplod(90010152)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 9741
ID = 90010101
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, DL, L: Left]
type = Explod
triggerAll = NumExplod(90010101)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 9741
ID = 90010104
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;===========================<DOUBLE QUARTER CIRCLE FORWARD/BACK>===============================
;==============================================================================================

;==============================================================================================
;This command is mostly identical to the QCF/QCB commands, but with different ID's; there are some
;important differences, however. Instead of repeating the entire first QCF/QCB command, we just
;(mostly) use the ones we already defined above!

;We do repeat the forward/backward input from the first QCF/QCB, though. This is because the final
;explod of the QCF/QCB command will persist through hitpause, which is not true for the QCFx2
;command: otherwise, you'd be able to input a QCF during a long hitpause, wait for the hitpause to
;end, and then input another QCF and still get a QCFx2 motion, and that's not how things are supposed
;to work!

;Also, do note that Capcom games use a command shortcut for QCFx2/QCBx2 motions; a D, DF, F, D, DF
;will work just as well as a D, DF, F, D, DF, F motion; if you want to replicate this behavior, all
;you have to do is check to see if either the repsective "DF/DB" or the "F/B" explods exist in the
;triggers for that move's ChangeState.
;==============================================================================================

;===========================<DOUBLE DOWN, DOWN-RIGHT, RIGHT>===============================
;this is almost identical to the D, DR, R: Right explod; the only difference is that it has a
;RemoveTime of 10 (with no additional ifElse statements), because it shouldn't persist through hitpause!
[State -1, D, DR, R, D, DR, R: 1st Right]
type = Explod
triggerAll = NumExplod(90010003)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 9741
ID = 90030006
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, DR, R, D, DR, R: 2nd Down]
type = Explod
triggerAll = NumExplod(90030006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 9741
ID = 90030002
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, DR, R, D, DR, R: 2nd Down-Right]
type = Explod
triggerAll = NumExplod(90030002)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 9741
ID = 90030003
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, DR, R, D, DR, R: 2nd Right]
type = Explod
triggerAll = NumExplod(90030003)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 9741
ID = 90030016
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1


;===========================<DOUBLE DOWN, DOWN-LEFT, LEFT>===============================
[State -1, D, DL, L, D, DL, L: 1st Left]
type = Explod
triggerAll = NumExplod(90010101)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 9741
ID = 90030104
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, DL, L, D, DL, L: 2nd Down]
type = Explod
triggerAll = NumExplod(90030104)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 9741
ID = 90030102
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, DL, L, D, DL, L: 2nd Down-Left]
type = Explod
triggerAll = NumExplod(90030102)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 9741
ID = 90030101
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, DL, L, D, DL, L: 2nd Left]
type = Explod
triggerAll = NumExplod(90030101)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 9741
ID = 90030114
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;=====<QUARTER CIRCLE FORWARD, HALF CIRCLE BACK/QUARTER CIRCLE BACK, HALF CIRCLE FORWARD>======
;==============================================================================================

;==============================================================================================
;This is a command used mostly by SNK, and it has a few quirks compared to how Capcom approaches
;commands. For half-circle motions, SNK only checks for the cardinal inputs (i.e., the non-diagonal
;directions) to see if the user has successfully complated the move, and gives those cardinal inputs
;an extra-long input window (in KOF '98, for example, it's 16, compared to the 10 tick input window for
;normal commands) to compensate for the loss of the diagonal inputs.

;For the default EXPLODsive Buffering system, however, we have opted to allow diagonal inputs in
;these SNK-style half-circle commands, but to make them optional (because, to be quite honest, ignoring
;diagonal inputs entirely is pretty dumb!). What this ends up looking like is that the command can be
;completed only using cardinal inputs, but any diagonal inputs will still be cheked: any diagonal
;input will keep the command "alive" even if the cardinal input preceeding it has exhausted its input
;window.

;The way that translates to this explod system is that (for half-circle motions) we allow the user
;to skip the diagonal inputs: the "down" explod in a HCF command could be created if the "back"
;explod exists, e.g., instead of requiring the "down-back" explod to exist. However, we must also
;allow the "back" explod to be created if the "down-back" explod exists: this makes it so the diagonal
;inputs aren't just a waste of time; they will keep the command alive even if the previous cardinal
;direction explod has expired, which is exactly the same behavior that KOF has.

;To replicate the same behavior that SNK games use, simply delete the diagonal input explods, and increase
;the RemoveTime on each of the cardinal input explods.

;A final note: as with the QCFx2/QCBx2 commands, we use the parts of the earlier QCF/QCB command block
;instead of just repeating that code.
;==============================================================================================

;===============<DOWN, DOWN-RIGHT, RIGHT, DOWN-RIGHT, DOWN, DOWN-LEFT, LEFT>===================
[State -1, D, DR, R, DR, D, DL, L: Right]
type = Explod
triggerAll = NumExplod(90010003)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 9741
ID = 90032206
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, DR, R, DR, D, DL, L: Down-Right]
type = Explod
triggerAll = NumExplod(90032206)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 9741
ID = 90032203
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, DR, R, DR, D, DL, L: Down]
type = Explod
triggerAll = NumExplod(90032203) || NumExplod(90032206)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 9741
ID = 90032202
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, DR, R, DR, D, DL, L: Down-Left]
type = Explod
triggerAll = NumExplod(90032202)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 9741
ID = 90032201
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, DR, R, DR, D, DL, L: Left]
type = Explod
triggerAll = NumExplod(90032201) || NumExplod(90032202)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 9741
ID = 90032204
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;================<DOWN, DOWN-LEFT, LEFT, DOWN-LEFT, DOWN, DOWN-RIGHT, RIGHT>===================
[State -1, D, DL, L, DL, D, DR, R: Left]
type = Explod
triggerAll = NumExplod(90010101)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 9741
ID = 90032304
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, DL, L, DL, D, DR, R: Down-Left]
type = Explod
triggerAll = NumExplod(90032304)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 9741
ID = 90032301
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, DL, L, DL, D, DR, R: Down]
type = Explod
triggerAll = NumExplod(90032301) || NumExplod(90032304)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 9741
ID = 90032302
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, DL, L, DL, D, DR, R: Down-Right]
type = Explod
triggerAll = NumExplod(90032302)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 9741
ID = 90032303
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, DL, L, DL, D, DR, R: Right]
type = Explod
triggerAll = NumExplod(90032303) || NumExplod(90032302)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 9741
ID = 90032306
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;=====<QUARTER CIRCLE FORWARD, DOWN-FORWARD, BACK/QUARTER CIRCLE BACK, DOWN-BACK, FORWARD>=====
;==============================================================================================

;==============================================================================================
;This is very, very similar to the preceding command, but it is a distinct command with its own
;quirks! This is typically used for Terry's Power Geyser super, among a few other moves. What
;makes this different from the QCF, HCB/QCB, HCF command is that although this command is officially
;referred to in move lists as "QCF, DF, B/QCB, DB, F", in KOF games, this command can (usually) skip
;straight from the starting QCF/QCB and proceed directly to the final input of the command (the
;command would here be rendered as "QCF, B"/"QCB, F"). But this can sometimes be weird: in KOF 2002
;this can only be done if  that final input in the QCF/QCB part of the command is held for at least
;two ticks (KOF 2002 is the first game in the series where the player only needs to enter an individual
;input for only one frame and still complete a command; previous games required the inputs to be held
;for at least two). In the Fatal Fury series, however, generally this either uses a motion that is
;actually "QCF, DF, B / QCB, DB, F" motion, or sometimes even a QCF, HCB/QCB, HCF motion. Point is,
;there's a ton of variance here!

;As with the previous command, we have opted to modify this for the default EXPLODsive Buffering system,
;in order to keep it relatively simple and tried to change the manner in which the command worked into
;something that made more sense (to us, at least). We have it set up so that this command can skip straight
;from the starting QCF/QCB and proceed directly to the final input of the command (the command would here
;be rendered as "QCF, B"/"QCB, F"). It also can be performed using a QCF, HCB/QCB, HCF motion, with
;the additional quirk that the user can proceed immediately to the final input of the command no matter
;where they are in the half circle motion. So, for example, the user could perform QCB, DB, D, F, and
;still get the move. What this ends up looking like translated to MUGEN code is that, for instance, the
;explod representing QCF, DF, B: DB is allowed to be created if an explod exists representing "D", or "DF",
;or even "F".

;As with the the QCF, HCB / QCB, HCF command, this can be made to accurate to the source game(s)
;by removing some or all of the non-diagonal (and also the "down") explods.
;==============================================================================================

;========================<DOWN, DOWN-RIGHT, RIGHT, DOWN-RIGHT, LEFT>===========================
[State -1, D, DR, R, DR, L: Right]
type = Explod
triggerAll = NumExplod(90010003)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 9741
ID = 90032406
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, DR, R, DR, L: Down-Right]
type = Explod
triggerAll = NumExplod(90032406)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 9741
ID = 90032403
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, DR, R, DR, L: Down]
type = Explod
;the Down explod will be created if either (or both) the Right or Down-Right explods exist
triggerAll = NumExplod(90032406) || NumExplod(90032403)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 9741
ID = 90032402
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, DR, R, DR, L: Down-Left]
type = Explod
;the Down-Left explod will be created if the Right, Down-Right, or Down explods exist
triggerAll = NumExplod(90032406) || NumExplod(90032403) || NumExplod(90032402)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 9741
ID = 90032401
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, DR, R, DR, L: Left]
type = Explod
;the Left explod will be created if the Right, Down-Right, Down, or Down-Left explods exist
triggerAll = NumExplod(90032406) || NumExplod(90032403) || NumExplod(90032402) || NumExplod(90032401)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 9741
ID = 90032404
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;=========================<DOWN, DOWN-LEFT, LEFT, DOWN-LEFT, RIGHT>============================
[State -1, D, DL, L, DL, R: Left]
type = Explod
triggerAll = NumExplod(90010101)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 9741
ID = 90032504
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, DL, L, DL, R: Down-Left]
type = Explod
triggerAll = NumExplod(90032504)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 9741
ID = 90032501
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, DL, L, DL, R: Down]
type = Explod
triggerAll = NumExplod(90032504) || NumExplod(90032501)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 9741
ID = 90032502
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, DL, L, DL, R: Down-Right]
type = Explod
triggerAll = NumExplod(90032504) || NumExplod(90032501) || NumExplod(90032502)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 9741
ID = 90032503
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, DL, L, DL, R: Right]
type = Explod
triggerAll = NumExplod(90032504) || NumExplod(90032501) || NumExplod(90032502) || NumExplod(90032503)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 9741
ID = 90032506
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;============<QUARTER CIRCLE FORWARD, UP-FORWARD/QUARTER CIRCLE BACK, UP-BACK>=================
;==============================================================================================

;==============================================================================================
;Also known as a "Tiger Knee" motion. Works much the same way the double quarter circle motions
;work.
;==============================================================================================

;===========================<DOWN, DOWN-RIGHT, RIGHT, UP-RIGHT>================================
[State -1, D, DR, R, UR: Right]
type = Explod
triggerAll = NumExplod(90010003)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 9741
ID = 90012406
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, DR, R, UR: Up-Right]
type = Explod
triggerAll = NumExplod(90012406)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 9741
ID = 90012409
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;=============================<DOWN, DOWN-LEFT, LEFT, UP-LEFT>=================================
[State -1, D, DL, L, UL: Left]
type = Explod
triggerAll = NumExplod(90010101)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 9741
ID = 90012504
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, DL, L, UL: Up-Left]
type = Explod
triggerAll = NumExplod(90012504)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
anim = 9741
ID = 90012507
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;====================<FORWARD, DOWN, DOWN-FORWARD/BACK, DOWN, DOWN-BACK>=======================
;==============================================================================================

;==============================================================================================
;Nothing special here, just the standard dragon punch motion!
;==============================================================================================

;================================<RIGHT, DOWN, DOWN-RIGHT>=====================================
[State -1, R, D, DR: Press Right]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 9741
ID = 90010206
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, R, D, DR: Release Right]
type = Explod
triggerAll = NumExplod(90000006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 9741
ID = 90010256
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, R, D, DR: Down]
type = Explod
triggerAll = NumExplod(90010206) || NumExplod(90010256)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 9741
ID = 90010202
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, R, D, DR: Down-Right]
type = Explod
triggerAll = NumExplod(90010202)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 9741
ID = 90010203
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;=================================<LEFT, DOWN, DOWN-LEFT>======================================
[State -1, L, D, DL: Press Left]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 9741
ID = 90010304
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, L, D, DL: Release Left]
type = Explod
triggerAll = NumExplod(90000004)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "back" && Helper(90000005), command != "holdback"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 9741
ID = 90010354
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, L, D, DL: Down]
type = Explod
triggerAll = NumExplod(90010304) || NumExplod(90010354)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 9741
ID = 90010302
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, L, D, DL: Down-Left]
type = Explod
triggerAll = NumExplod(90010302)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 9741
ID = 90010301
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;=================================<HALF CIRCLE FORWARD/BACK>===================================
;==============================================================================================

;==============================================================================================
;As mentioned earlier, SNK games have command shortcuts for half-circle moves, allowing the user
;to only input cardinal directions and still complete the command. We have opted to use Capcom's
;method for the standard half circle comands here, but these can very easily be modified to use
;the SNK method!
;==============================================================================================

;========================<LEFT, DOWN-LEFT, DOWN, DOWN-RIGHT, RIGHT>============================
[State -1, L, DL, D, DR, R: Press Left]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 9741
ID = 90010404
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, L, DL, D, DR, R: Release Left]
type = Explod
triggerAll = NumExplod(90000004)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "back" && Helper(90000005), command != "holdback"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 9741
ID = 90010454
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, L, DL, D, DR, R: Down-Left]
type = Explod
triggerAll = NumExplod(90010404) || NumExplod(90010454)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 9741
ID = 90010401
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, L, DL, D, DR, R: Down]
type = Explod
triggerAll = NumExplod(90010401)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 9741
ID = 90010402
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, L, DL, D, DR, R: Down-Right]
type = Explod
triggerAll = NumExplod(90010402)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 9741
ID = 90010403
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, L, DL, D, DR, R: Right]
type = Explod
triggerAll = NumExplod(90010403)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 9741
ID = 90010406
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;========================<RIGHT, DOWN-RIGHT, DOWN, DOWN-LEFT, LEFT>============================
[State -1, R, DR, D, DL, L: Press Right]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 9741
ID = 90010506
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1


[State -1, R, DR, D, DL, L: Release Right]
type = Explod
triggerAll = NumExplod(90000006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 9741
ID = 90010556
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, R, DR, D, DL, L: Down-Right]
type = Explod
triggerAll = NumExplod(90010506) || NumExplod(90010556)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 9741
ID = 90010503
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, R, DR, D, DL, L: Down]
type = Explod
triggerAll = NumExplod(90010503)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 9741
ID = 90010502
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, R, DR, D, DL, L: Down-Left]
type = Explod
triggerAll = NumExplod(90010502)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 9741
ID = 90010501
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, R, DR, D, DL, L: Left]
type = Explod
triggerAll = NumExplod(90010501)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 9741
ID = 90010504
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;==============================<DOUBLE HALF CIRCLE FORWARD/BACK>===============================
;==============================================================================================

;==============================================================================================
;The double half circle motions use the exact same principles that the double quarter circle motions
;used: they're dependent on the standard half circle motions to reduce clutter and unnecessary
;duplication of code.
;==============================================================================================

;=====================<DOUBLE LEFT, DOWN-LEFT, DOWN, DOWN-RIGHT, RIGHT>========================
[State -1, L, DL, D, DR, R, L, DL, D, DR, R: 1st Right]
type = Explod
triggerAll = NumExplod(90010403)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 9741
ID = 90030406
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, L, DL, D, DR, R, L, DL, D, DR, R: 2nd Left]
type = Explod
triggerAll = NumExplod(90030406)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 9741
ID = 90030404
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, L, DL, D, DR, R, L, DL, D, DR, R: 2nd Down-Left]
type = Explod
triggerAll = NumExplod(90030404)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 9741
ID = 90030401
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, L, DL, D, DR, R, L, DL, D, DR, R: 2nd Down]
type = Explod
triggerAll = NumExplod(90030401)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 9741
ID = 90030402
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, L, DL, D, DR, R, L, DL, D, DR, R: 2nd Down-Right]
type = Explod
triggerAll = NumExplod(90030402)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 9741
ID = 90030403
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, L, DL, D, DR, R, L, DL, D, DR, R: 2nd Right]
type = Explod
triggerAll = NumExplod(90030403)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 9741
ID = 90030416
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;========================<DOUBLE RIGHT, DOWN-RIGHT, DOWN, DOWN-LEFT, LEFT>============================
[State -1, R, DR, D, DL, L, R, DR, D, DL, L: Left]
type = Explod
triggerAll = NumExplod(90010501)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 9741
ID = 90030504
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, R, DR, D, DL, L, R, DR, D, DL, L: 2nd Right]
type = Explod
triggerAll = NumExplod(90030504)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 9741
ID = 90030506
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, R, DR, D, DL, L, R, DR, D, DL, L: 2nd Down-Right]
type = Explod
triggerAll = NumExplod(90030506)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 9741
ID = 90030503
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, R, DR, D, DL, L, R, DR, D, DL, L: 2nd Down]
type = Explod
triggerAll = NumExplod(90030503)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 9741
ID = 90030502
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, R, DR, D, DL, L, R, DR, D, DL, L: 2nd Down-Left]
type = Explod
triggerAll = NumExplod(90030502)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 9741
ID = 90030501
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, R, DR, D, DL, L, R, DR, D, DL, L: 2nd Left]
type = Explod
triggerAll = NumExplod(90030501)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 9741
ID = 90030514
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;===================<HALF CIRCLE FORWARD, BACK/HALF CIRCLE BACK, FORWARD>======================
;==============================================================================================

;==============================================================================================
;This command is used generally by SNK for characters with command throws; much like SNK half-circle
;commands, a player can skip the diagonal inputs and still complete the move.
;==============================================================================================

;====================<RIGHT, DOWN-RIGHT, DOWN, DOWN-LEFT, LEFT, RIGHT>=========================
[State -1, R, DR, D, DL, L, R: Press 1st Right]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 9741
ID = 90012006
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, R, DR, D, DL, L, R: Release 1st Right]
type = Explod
triggerAll = NumExplod(90000006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 9741
ID = 90012056
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, R, DR, D, DL, L, R: Down-Right]
type = Explod
triggerAll = NumExplod(90012006) || NumExplod(90012056)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 9741
ID = 90012003
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, R, DR, D, DL, L, R: Down]
type = Explod
triggerAll = NumExplod(90012003) || NumExplod(90012006) || NumExplod(90012056)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 9741
ID = 90012002
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, R, DR, D, DL, L, R: Down-Left]
type = Explod
triggerAll = NumExplod(90012002)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 9741
ID = 90012001
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, R, DR, D, DL, L, R: Left]
type = Explod
triggerAll = NumExplod(90012001) || NumExplod(90012002)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 9741
ID = 90012004
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, R, DR, D, DL, L, R: 2nd Right]
type = Explod
triggerAll = NumExplod(90012004)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 9741
ID = 90012016
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;=====================<LEFT, DOWN-LEFT, DOWN, DOWN-RIGHT, RIGHT, LEFT>=========================
[State -1, L, DL, D, DR, R, L: Press 1st Left]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 9741
ID = 90012104
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, L, DL, D, DR, R, L: Release 1st Left]
type = Explod
triggerAll = NumExplod(90000004)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "back" && Helper(90000005), command != "holdback"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 9741
ID = 90012154
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, L, DL, D, DR, R, L: Down-Left]
type = Explod
triggerAll = NumExplod(90012104) || NumExplod(90012154)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 9741
ID = 90012101
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, L, DL, D, DR, R, L: Down]
type = Explod
triggerAll = NumExplod(90012101) || NumExplod(90012104) || NumExplod(90012154)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 9741
ID = 90012102
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, L, DL, D, DR, R, L: Down-Right]
type = Explod
triggerAll = NumExplod(90012102)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 9741
ID = 90012103
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, L, DL, D, DR, R, L: Right]
type = Explod
triggerAll = NumExplod(90012103) || NumExplod(90012102)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 9741
ID = 90012106
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, L, DL, D, DR, R, L: 2nd Left]
type = Explod
triggerAll = NumExplod(90012106)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 9741
ID = 90012114
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;========================<FORWARD, BACK, FORWARD/BACK, FORWARD, BACK>==========================
;==============================================================================================

;==============================================================================================
;The Zanretsuken motion, used mostly in Art of Fighting characters. Despite looking somewhat similar
;to a dash command, the first forward/back input can be a release motion, and there's no need to return
;the stick to neutral.
;==============================================================================================

;====================================<RIGHT, LEFT, RIGHT>======================================
[State -1, R, L, R: Press 1st Right]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 9741
ID = 90012206
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, R, L, R: Release 1st Right]
type = Explod
triggerAll = NumExplod(90000006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 9741
ID = 90012256
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, R, L, R: Left]
type = Explod
triggerAll = NumExplod(90012206) || NumExplod(90012256)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 9741
ID = 90012204
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, R, L, R: 2nd Right]
type = Explod
triggerAll = NumExplod(90012204)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 9741
ID = 90012216
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;====================================<LEFT, RIGHT, LEFT>=======================================
[State -1, L, R, L: Press 1st Left]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 9741
ID = 90012304
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, L, R, L: Release 1st Left]
type = Explod
triggerAll = NumExplod(90000004)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "back" && Helper(90000005), command != "holdback"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 9741
ID = 90012354
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, L, R, L: Right]
type = Explod
triggerAll = NumExplod(90012304) || NumExplod(90012354)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 9741
ID = 90012306
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, L, R, L: 2nd Left]
type = Explod
triggerAll = NumExplod(90012306)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 9741
ID = 90012314
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;==================================<(SPECIAL) DOWN, DOWN >=====================================
;==============================================================================================

;==============================================================================================
;This explod is for the special move variant of the D, D motion; the only difference between this
;and the one above is that this has a RemoveTime of 10, like every other special move, since it's
;designed to be used for special moves (as opposed to the earlier D, D command, which was for air
;dashing).
;==============================================================================================

[State -1, (special) D, D: 2nd Down]
type = Explod
triggerAll = NumExplod(90000555) && NumExplod(90000552)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" || Helper(90000005), command = "dfwd" || Helper(90000005), command = "dback"
trigger1 = Helper(90000005), command != "up"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" || Helper(90000005), command = "ufwd" || Helper(90000005), command = "uback"
trigger2 = Helper(90000005), command != "down"
anim = 9741
ID = 90012602
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;====================================<DOWN, DOWN, DOWN>========================================
;==============================================================================================

;==============================================================================================
;And this is just extending the principle futher, to a third down input! This is typically used
;as a super command.
;==============================================================================================

[State -1, D, D, D: 2nd Neutral]
type = Explod
triggerAll = (NumExplod(90000001) || NumExplod(90000002) || NumExplod(90000003)) && NumExplod(90012602)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
anim = 9741
ID = 90032605
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, Remove D, D, D: 2nd Neutral]
type = RemoveExplod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = NumExplod(90000004) || NumExplod(90000007) || NumExplod(90000008) || NumExplod(90000009) || NumExplod(90000006)
trigger2 = !NumExplod(90012602)
ID = 90032605
ignoreHitPause = 1

[State -1, D, D, D: 3rd Down]
type = Explod
triggerAll = NumExplod(90032605) && NumExplod(90012602)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "down" || Helper(90000005), command = "dfwd" || Helper(90000005), command = "dback"
trigger1 = Helper(90000005), command != "up"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" || Helper(90000005), command = "ufwd" || Helper(90000005), command = "uback"
trigger2 = Helper(90000005), command != "down"
anim = 9741
ID = 90032602
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;===================<FORWARD, HALF CIRCLE FORWARD/BACK, HALF CIRCLE BACK>======================
;==============================================================================================

;==============================================================================================
;A super motion used mostly by SNK; uses the modified SNK half-circle rules defined earlier.
;==============================================================================================

;=====================<RIGHT, LEFT, DOWN-LEFT, DOWN, DOWN-RIGHT, RIGHT>========================
[State -1, R, L, DL, D, DR, R: Press 1st Right]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 9741
ID = 90032006
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, R, L, DL, D, DR, R: Release 1st Right]
type = Explod
triggerAll = NumExplod(90000006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 9741
ID = 90032056
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, R, L, DL, D, DR, R: Left]
type = Explod
triggerAll = NumExplod(90032006) || NumExplod(90032056)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 9741
ID = 90032004
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, R, L, DL, D, DR, R: Down-Left]
type = Explod
triggerAll = NumExplod(90032004)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 9741
ID = 90032001
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, R, L, DL, D, DR, R: Down]
type = Explod
triggerAll = NumExplod(90032001) || NumExplod(90032004)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 9741
ID = 90032002
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, R, L, DL, D, DR, R: Down-Right]
type = Explod
triggerAll = NumExplod(90032002)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 9741
ID = 90032003
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, R, L, DL, D, DR, R: 2nd Right]
type = Explod
triggerAll = NumExplod(90032003) || NumExplod(90032002)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 9741
ID = 90032016
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==================<LEFT, RIGHT, DOWN-RIGHT, DOWN, DOWN-LEFT, LEFT>======================
[State -1, L, R, DR, D, DL, L: Press 1st Left]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 9741
ID = 90032104
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, L, R, DR, D, DL, L: 1st Left]
type = Explod
triggerAll = NumExplod(90000004)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "back" && Helper(90000005), command != "holdback"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 9741
ID = 90032154
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, L, R, DR, D, DL, L: Right]
type = Explod
triggerAll = NumExplod(90032104) || NumExplod(90032154)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 9741
ID = 90032106
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, L, R, DR, D, DL, L: Down-Right]
type = Explod
triggerAll = NumExplod(90032106)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 9741
ID = 90032103
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, L, R, DR, D, DL, L: Down]
type = Explod
triggerAll = NumExplod(90032103) || NumExplod(90032106)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 9741
ID = 90032102
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, L, R, DR, D, DL, L: Down-Left]
type = Explod
triggerAll = NumExplod(90032102)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 9741
ID = 90032101
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, L, R, DR, D, DL, L: 2nd Left]
type = Explod
triggerAll = NumExplod(90032101) || NumExplod(90032102)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 9741
ID = 90032114
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1



;==============================================================================================
;===========================<SHUN GOKU SATSU/x, x, FORWARD, a, z>==============================
;==============================================================================================

;==============================================================================================
;This move to demonstrates how button press commands work: note that we use unique button press explods
;here because we need to keep track of what order the buttons have been pressed in, and because
;unlike the regular button inputs, which only stay active for a fairly brief period of time, the
;button inputs for the Shun Goku Satsu motion stay active for the same period of time that all other
;directional commands do.
;==============================================================================================

;This is the 2nd x input for this move, but it goes above the 1st x input because otherwise, a single
;press of x would activate both explods! Placing it above the 1st means that x must be input twice, each
;on separate ticks.
[State -1, x, x, F, a, z: 2nd x]
type = Explod
triggerAll = NumExplod(94000200)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "x"
anim = 9741
ID = 94000201
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, x, x, F, a, z: 1st x]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "x"
anim = 9741
ID = 94000200
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1


;This forward input is a little bit tricky and weird. We have it patterned after SFA and other CPS2 games
;here, where it behaves a little differently compared to how most games (including SFA itself) operate
;for moves done in or inputted while in the air (see http://mugenguild.com/forum/msg.2366955 for a discussion
;about how most games operate). In CPS2 games, if you jump over an opponent while inputting this command,
;"forward" won't have flipped directions until you land. This is in contrast to how the move behaves in SFIII
;and elsewhere. Remove the "StateType != A" in the triggers below to have it work like SFIII/most other games.

;An additional item of interest here is that directional inputs in (most) games's command supers accept diagonals
;in place of cardinal directional inputs; i.e., "LP, LP, DF, LK, HP" would still activate an SGS in SFA2. Weirdly
;enough, though diagonals are allowed in SFA2, SFIII, and the Darkstalkers series, SFA3 only allows a cardinal input!
;SNK games also only allow cardinal inputs. We however have opted to follow Capcom's (usual) method and allow diagonals.
[State -1, x, x, F, a, z: Forward]
type = Explod
triggerAll = NumExplod(94000201)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = ifElse(P2dist x < 0 && StateType != A, Facing = -1, Facing = 1)
trigger1 = (Helper(90000005), command = "fwd" || Helper(90000005), command = "dfwd" || Helper(90000005), command = "ufwd") && Helper(90000005), command != "back"
trigger2 = ifElse(P2dist x < 0 && StateType != A, Facing = 1, Facing = -1)
trigger2 = (Helper(90000005), command = "back" || Helper(90000005), command = "dback" || Helper(90000005), command = "uback") && Helper(90000005), command != "fwd"
anim = 9741
ID = 94000006
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, x, x, F, a, z: a]
type = Explod
triggerAll = NumExplod(94000006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "a"
anim = 9741
ID = 94000230
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, x, x, F, a, z: z]
type = Explod
triggerAll = NumExplod(94000230)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "z"
anim = 9741
ID = 94000220
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;===============================<REMOVE DIRECTIONAL DETECTORS>=================================
;==============================================================================================

;==============================================================================================
;This block of RemoveExplods gets rid of any active release detector explods; if the direction in
;question isn't currently being input, or if the direction is being input but other directions are
;also being input, then the detector explod is removed, having served its purpose as a detector.
;This must go at the very bottom of the entire EXPLODsive Buffering system code!
;==============================================================================================

[State -1, Remove Down Detector]
type = RemoveExplod
triggerAll = NumExplod(90000002)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
trigger2 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger3 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger3 = Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
trigger4 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger4 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger4 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
id = 90000002
ignoreHitPause = 1

[State -1, Remove Down-Right Detector]
type = RemoveExplod
triggerAll = NumExplod(90000003)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = (Helper(90000005), command != "down" && Helper(90000005), command != "holddown") || (Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd")
trigger2 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger3 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger3 = (Helper(90000005), command != "up" && Helper(90000005), command != "holdup") || (Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd")
trigger4 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger4 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger4 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger4 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
id = 90000003
ignoreHitPause = 1

[State -1, Remove Right Detector]
type = RemoveExplod
triggerAll = NumExplod(90000006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
id = 90000006
ignoreHitPause = 1

[State -1, Remove Up-Right Detector]
type = RemoveExplod
triggerAll = NumExplod(90000009)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = (Helper(90000005), command != "up" && Helper(90000005), command != "holdup") || (Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd")
trigger2 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger3 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger3 = (Helper(90000005), command != "down" && Helper(90000005), command != "holddown") || (Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd")
trigger4 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger4 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger4 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger4 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
id = 90000009
ignoreHitPause = 1

[State -1, Remove Up Detector]
type = RemoveExplod
triggerAll = NumExplod(90000008)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
trigger2 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger3 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger3 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
trigger4 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger4 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger4 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
id = 90000008
ignoreHitPause = 1

[State -1, Remove Up-Left Detector]
type = RemoveExplod
triggerAll = NumExplod(90000007)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = (Helper(90000005), command != "up" && Helper(90000005), command != "holdup") || (Helper(90000005), command != "back" && Helper(90000005), command != "holdback")
trigger2 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger3 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger3 = (Helper(90000005), command != "down" && Helper(90000005), command != "holddown") || (Helper(90000005), command != "back" && Helper(90000005), command != "holdback")
trigger4 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger4 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger4 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger4 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
id = 90000007
ignoreHitPause = 1

[State -1, Remove Left Detector]
type = RemoveExplod
triggerAll = NumExplod(90000004)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "back" && Helper(90000005), command != "holdback"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
id = 90000004
ignoreHitPause = 1

[State -1, Remove Down-Left Detector]
type = RemoveExplod
triggerAll = NumExplod(90000001)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = (Helper(90000005), command != "down" && Helper(90000005), command != "holddown") || (Helper(90000005), command != "back" && Helper(90000005), command != "holdback")
trigger2 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger3 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger3 = (Helper(90000005), command != "up" && Helper(90000005), command != "holdup") || (Helper(90000005), command != "back" && Helper(90000005), command != "holdback")
trigger4 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger4 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger4 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger4 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
id = 90000001
ignoreHitPause = 1

;==============================================================================================
;==============================<REMOVE RELEASE BUTTON DETECTORS>===============================
;==============================================================================================

;==============================================================================================
;Same principle here as with the directional release detector explods.
;==============================================================================================

[State -1, Remove x Detector]
type = RemoveExplod
triggerAll = NumExplod(90000201)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "x" && Helper(90000005), command != "holdx"
ID = 90000201
ignoreHitPause = 1

[State -1, Remove y Detector]
type = RemoveExplod
triggerAll = NumExplod(90000211)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "y" && Helper(90000005), command != "holdy"
ID = 90000211
ignoreHitPause = 1

[State -1, Remove z Detector]
type = RemoveExplod
triggerAll = NumExplod(90000221)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "z" && Helper(90000005), command != "holdz"
ID = 90000221
ignoreHitPause = 1

[State -1, Remove a Detector]
type = RemoveExplod
triggerAll = NumExplod(90000231)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "a" && Helper(90000005), command != "holda"
ID = 90000231
ignoreHitPause = 1

[State -1, Remove b Detector]
type = RemoveExplod
triggerAll = NumExplod(90000241)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "b" && Helper(90000005), command != "holdb"
ID = 90000241
ignoreHitPause = 1

[State -1, Remove c Detector]
type = RemoveExplod
triggerAll = NumExplod(90000251)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "c" && Helper(90000005), command != "holdc"
ID = 90000251
ignoreHitPause = 1

[State -1, Remove start Detector]
type = RemoveExplod
triggerAll = NumExplod(90000194)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "start" && Helper(90000005), command != "holdstart"
ID = 90000194
ignoreHitPause = 1

;===========================================================================
;---------------------------------------------------------------------------
;Smash Kung Fu Upper (uses one super bar)
[State -1, Smash Kung Fu Upper]
type = ChangeState
value = 3050
triggerall = command = "SmashKFUpper"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3050,3100)
trigger2 = movecontact
trigger3 = stateno = 1310 || stateno = 1330 ;From blocking

;---------------------------------------------------------------------------
;Triple Kung Fu Palm (uses one super bar)
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 3000
triggerall = command = "TripleKFPalm"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = movecontact
trigger3 = stateno = 1310 || stateno = 1330 ;From blocking

;--------------------------------------------------------------------------
; Super Jump
[State -1, Super Jump]
type = ChangeState
value = 4000
triggerall = !AILevel
triggerall = command = "SuperJump"
trigger1 = statetype != A
trigger1 = ctrl

;===========================================================================
; Air Dashes 

[State -1, Air Dash Forward]
type = ChangeState
value = 110
triggerall = !AILevel
triggerall = command = "FF"
trigger1 = statetype = A
trigger1 = (ctrl && stateno != 105) || (stateno = 105 && time > 2)

[State -1, Air Dash Back]
type = ChangeState
value = 111
triggerall = !AILevel
triggerall = command = "BB"
trigger1 = statetype = A
trigger1 = (ctrl && stateno != 105) || (stateno = 105 && time > 2)

;---------------------------------------------------------------------------
; Ground Dashes

[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = !AILevel
triggerAll = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90001016)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90001064))
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Run Back]
type = ChangeState
value = 105
triggerall = !AILevel
triggerAll = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90001064)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90001016))
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; EX Moves

[State -1, EX Kung Fu Palm]
type = ChangeState
value = 1010
triggerall = !AILevel
triggerall = ifElse(Facing = 1, NumExplod(90010006),NumExplod(90010104))
triggerAll = (ifElse(NumExplod(90000200), 1, 0) + ifElse(NumExplod(90000210), 1, 0) + ifElse(NumExplod(90000220), 1, 0) >= 2) || (ifElse(NumExplod(90000205), 1, 0) + ifElse(NumExplod(90000215), 1, 0) + ifElse(NumExplod(90000225), 1, 0) >= 2)
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100,101]) || (stateno = [110,115])
trigger2 = (stateno = 200 && movecontact) || (stateno = 400 && movecontact)
trigger3 = (stateno = 210 && movecontact) || (stateno = 410 && movecontact)
trigger4 = (stateno = 220 && movecontact) || (stateno = 420 && movecontact)
trigger5 = (stateno = 500 && movecontact)
trigger1 = (power > 2000)
;---------------------------------------------------------------------------
; Kung Fu Palm

[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1000
triggerall = !AILevel
triggerall = ifElse(Facing = 1, NumExplod(90010006),NumExplod(90010104))
triggerall = (numexplod(90000220) || numexplod(90000225))
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100,101]) || (stateno = [110,115])
trigger2 = (stateno = 200 && movecontact) || (stateno = 400 && movecontact)
trigger3 = (stateno = 210 && movecontact) || (stateno = 410 && movecontact)
trigger4 = (stateno = 220 && movecontact) || (stateno = 420 && movecontact)
trigger5 = (stateno = 500 && movecontact)

[State -1, Medium Kung Fu Palm]
type = ChangeState
value = 1000
triggerall = !AILevel
triggerall = ifElse(Facing = 1, NumExplod(90010006),NumExplod(90010104))
triggerall = (numexplod(90000210) || numexplod(90000215))
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100,101]) || (stateno = [110,115])
trigger2 = (stateno = 200 && movecontact) || (stateno = 400 && movecontact)
trigger3 = (stateno = 210 && movecontact) || (stateno = 410 && movecontact)
trigger4 = (stateno = 220 && movecontact) || (stateno = 420 && movecontact)
trigger5 = (stateno = 500 && movecontact)

[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1000
triggerall = !AILevel
triggerall = ifElse(Facing = 1, NumExplod(90010006),NumExplod(90010104))
triggerall = (numexplod(90000200) || numexplod(90000205))
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100,101]) || (stateno = [110,115])
trigger2 = (stateno = 200 && movecontact) || (stateno = 400 && movecontact)
trigger3 = (stateno = 210 && movecontact) || (stateno = 410 && movecontact)
trigger4 = (stateno = 220 && movecontact) || (stateno = 420 && movecontact)
trigger5 = (stateno = 500 && movecontact)
[State -1, Hyper Combo 1 - Normal]
type = ChangeState
value = 3000
triggerall = command = "TripleKFPalm"  ; Reemplazando "Hyper1" por el nuevo comando
triggerall = power >= 3000
triggerall = statetype = S
triggerall = ctrl
trigger1 = var(0) != 9  ; Solo para paletas distintas de 9

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;--------------------------------------------------------------------------

[State -1, Power Charge]
type = ChangeState
value = 950
triggerall = !AILevel
triggerall = (numexplod(90000230) || command = "a") && (numexplod(90000240) || command = "b")
triggerall = power < powermax
triggerall = !numhelper(3000)
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100,101])

[State -1, Roll Fwd]
type = ChangeState
value = 900
triggerall = !AILevel
triggerall = (numexplod(90000230) || command = "a") && command = "holdfwd"
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100,101])

[State -1, Roll Back]
type = ChangeState
value = 901
triggerall = !AILevel
triggerall = (numexplod(90000230) || command = "a") && command = "holdback"
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100,101])

[State -1, Dodge]
type = ChangeState
value = 902
triggerall = !AILevel
triggerall = (numexplod(90000230) || command = "a")
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100,101])

;---------------------------------------------------------------------------
;Kung Fu Throw
[State -1, Throw Attempt]
type = ChangeState
value = 800
triggerall = !AILevel
triggerall = (numexplod(90000240) || command = "b")
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100,101])

;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = !AILevel
triggerall = (numexplod(90000200) || command = "x")
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno = [100,101])
trigger2 = stateno = 200
trigger2 = movecontact

;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = !AILevel
triggerall = (numexplod(90000210) || command = "y")
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno = [100,101])
trigger2 = (stateno = 200 && movecontact) || (stateno = 400 && movecontact)

;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Strong Attack]
type = ChangeState
value = 220
triggerall = !AILevel
triggerall = (numexplod(90000220) || command = "z")
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno = [100,101])
trigger2 = (stateno = 200 && movecontact) || (stateno = 400 && movecontact)
trigger3 = (stateno = 210 && movecontact) || (stateno = 410 && movecontact)

;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = !AILevel
triggerall = (numexplod(90000200) || command = "x")
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno = [100,101])
trigger2 = (stateno = 400 && movecontact)

;---------------------------------------------------------------------------
;Crouching Strong Punch

[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = !AILevel
triggerall = (numexplod(90000210) || command = "y")
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno = [100,101])
trigger2 = (stateno = 200 && movecontact) || (stateno = 400 && movecontact)

;---------------------------------------------------------------------------
;Crouching Strong Punch

[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = !AILevel
triggerall = (numexplod(90000220) || command = "z")
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno = [100,101])
trigger2 = (stateno = 200 && movecontact) || (stateno = 400 && movecontact)
trigger3 = (stateno = 210 && movecontact) || (stateno = 410 && movecontact)

;---------------------------------------------------------------------------
; Launcher 

[State -1, Launcher]
type = ChangeState
value = 500
triggerall = !AILevel
triggerall = (numexplod(90000250) || command = "c")
trigger1 = statetype != A
trigger1 = ctrl || (stateno = [100,101])
trigger2 = (stateno = 200 && movecontact) || (stateno = 400 && movecontact)
trigger3 = (stateno = 210 && movecontact) || (stateno = 410 && movecontact)
trigger4 = (stateno = 220 && movecontact) || (stateno = 420 && movecontact)

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = !AILevel
triggerall = (numexplod(90000200) || command = "x")
trigger1 = (statetype = A && ctrl) || (stateno = [110,115])
trigger2 = stateno = 600 && movecontact

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = !AILevel
triggerall = (numexplod(90000210) || command = "y")
trigger1 = (statetype = A && ctrl) || (stateno = [110,115])
trigger2 = stateno = 600 && movecontact

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = !AILevel
triggerall = (numexplod(90000220) || command = "z")
trigger1 = (statetype = A && ctrl) || (stateno = [110,115])
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact

;---------------------------------------------------------------------------
;Jump Special Punch
[State -1, Jump Special Punch]
type = ChangeState
value = 700
triggerall = !AILevel
triggerall = (numexplod(90000250) || command = "c")
trigger1 = (statetype = A && ctrl) || (stateno = [110,115])
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 620 && movecontact


;AI
[State -1, AI_300]
type = ChangeState
value = 300
triggerall = stateno = 220 && movecontact
trigger1 = AILevel > 0
trigger1 = var(56) = 300
ignorehitpause = 1

[State -1, AI ON]
type = VarSet
trigger1 = AILevel
v = 59
value = 1
[State -1, AI LP]
type = ChangeState
value = 200
triggerall = var(59)
triggerall = ctrl
triggerall = statetype = S
triggerall = Pos Y = 0
triggerall = P2BodyDist X < 40
trigger1 = random < 500

[State -1, AI MP]
type = ChangeState
value = 210
triggerall = var(59)
triggerall = StateNo = 200
triggerall = MoveContact
triggerall = statetype = S
trigger1 = random < 900

[State -1, AI HP]
type = ChangeState
value = 220
triggerall = var(59)
triggerall = StateNo = 210
triggerall = MoveContact
triggerall = statetype = S
trigger1 = random < 900

[State -1, AI Run]
type = ChangeState
value = 100
triggerall = var(59)
triggerall = ctrl
triggerall = statetype = S
triggerall = Pos Y = 0
trigger1 = P2Dist X > 80
trigger1 = random < 100
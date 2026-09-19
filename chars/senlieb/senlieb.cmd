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

;-| Hold Button |----------------------------------------------------------
; Please define Anim 74140108 in your AIR file if AND ONLY IF you place these
; 7 Hold Button commands immediately after the 11 Single Button and Hold Dir
; commands at the very top of your CMD list, as demonstrated here.
; In this version of the AI code, these commands are only used by the XOR
; method, and thus are optional.  But there remains a possibility that a
; future version of the helper method might be helped by having these
; commands placed here, and Anim 74140108 would then be used to indicate
; that a partner character has a compatible CMD.

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

;--- None of your own command definitions should be above this line. ---

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
name = "holda2"
command = /a
time = 1

[Command]
name = "holdb2"
command = /b
time = 1

[Command]
name = "holdc2"
command = /c
time = 1

[Command]
name = "holdx2"
command = /x
time = 1

[Command]
name = "holdy2"
command = /y
time = 1

[Command]
name = "holdz2"
command = /z
time = 1

[Command]
name = "holdstart2"
command = /s
time = 1

[Command]
name = "recovery2"
command = x+y
time = 1

;-| Super Motions |--------------------------------------------------------
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
;
[Command]
name = "QCFQCF_P"
command = ~D, F, D, F, x
time = 20

[Command]
name = "QCFQCF_P"
command = ~D, F, D, F, y
time = 20

[Command]
name = "QCFQCF_P"
command = ~D, F, D, F, z
time = 20

[Command]
name = "QCFQCF_P"
command = ~D, DF, F, D, DF, F, x
time = 20

[Command]
name = "QCFQCF_P"
command = ~D, DF, F, D, DF, F, y
time = 20

[Command]
name = "QCFQCF_P"
command = ~D, DF, F, D, DF, F, z
time = 20

[Command]
name = "QCBQCB_P"
command = ~D, B, D, B, x
time = 20

[Command]
name = "QCBQCB_P"
command = ~D, B, D, B, y
time = 20

[Command]
name = "QCBQCB_P"
command = ~D, B, D, B, z
time = 20

[Command]
name = "QCBQCB_P"
command = ~D, DB, B, D, DB, B, x
time = 20

[Command]
name = "QCBQCB_P"
command = ~D, DB, B, D, DB, B, y
time = 20

[Command]
name = "QCBQCB_P"
command = ~D, DB, B, D, DB, B, z
time = 20

[Command]
name = "QCFQCF_K"
command = ~D, F, D, F, a
time = 20

[Command]
name = "QCFQCF_K"
command = ~D, F, D, F, b
time = 20

[Command]
name = "QCFQCF_K"
command = ~D, F, D, F, c
time = 20

[Command]
name = "QCFQCF_K"
command = ~D, DF, F, D, DF, F, a
time = 20

[Command]
name = "QCFQCF_K"
command = ~D, DF, F, D, DF, F, b
time = 20

[Command]
name = "QCFQCF_K"
command = ~D, DF, F, D, DF, F, c
time = 20

[Command]
name = "QCBQCB_K"
command = ~D, B, D, B, a
time = 20

[Command]
name = "QCBQCB_K"
command = ~D, B, D, B, b
time = 20

[Command]
name = "QCBQCB_K"
command = ~D, B, D, B, c
time = 20

[Command]
name = "QCBQCB_K"
command = ~D, DB, B, D, DB, B, a
time = 20

[Command]
name = "QCBQCB_K"
command = ~D, DB, B, D, DB, B, b
time = 20

[Command]
name = "QCBQCB_K"
command = ~D, DB, B, D, DB, B, c
time = 20

[Command]
name = "CBFBF_P"
command = ~20$B, $F, B, F, x
time = 25

[Command]
name = "CBFBF_P"
command = ~20$B, $F, B, F, y
time = 25

[Command]
name = "CBFBF_P"
command = ~20$B, $F, B, F, z
time = 25

;-| Special Motions |------------------------------------------------------
[Command]
name = "HCB_x"
command = ~F, D, B, x

[Command]
name = "HCB_x"
command = ~F, DF, D, DB, B, x

[Command]
name = "HCB_y"
command = ~F, D, B, y

[Command]
name = "HCB_y"
command = ~F, DF, D, DB, B, y

[Command]
name = "HCF_x"
command = ~B, D, F, x

[Command]
name = "HCF_x"
command = ~B, DB, D, DF, F, x

[Command]
name = "HCF_y"
command = ~B, D, F, y

[Command]
name = "HCF_y"
command = ~B, DB, D, DF, F, y

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
name = "rupper_x"
command = ~B, D, DB, x

[Command]
name = "rupper_y"
command = ~B, D, DB, y

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
name = "QCB_z"
command = ~D, DB, B, z

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
name = "QCF_c"
command = ~D, DF, F, c

[Command]
name = "QCB_a"
command = ~D, DB, B, a

[Command]
name = "QCB_b"
command = ~D, DB, B, b

[Command]
name = "QCB_c"
command = ~D, DB, B, c

[Command]
name = "QCB_ab"
command = ~D, DB, B, a+b

[Command]
name = "QCB_ab"
command = ~D, DB, B, b+c

[Command]
name = "QCB_ab"
command = ~D, DB, B, a+c

[Command]
name = "QCF_ab"
command = ~D, DF, F, a+b

[Command]
name = "QCF_ab"
command = ~D, DF, F, b+c

[Command]
name = "QCF_ab"
command = ~D, DF, F, a+c

[Command]
name = "FF_ab"
command = F, F, a+b

[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b

[Command]
name = "CBF_x"
command = ~20$B, $F, x
time = 8

[Command]
name = "CBF_y"
command = ~20$B, $F, y
time = 8

[Command]
name = "CBF_z"
command = ~20$B, $F, z
time = 8

[Command]
name = "CBF_xy"
command = ~20$B, $F, x+y
time = 8

[Command]
name = "CBF_xy"
command = ~20$B, $F, y+z
time = 8

[Command]
name = "CBF_xy"
command = ~20$B, $F, x+z
time = 8

[Command]
name = "CFB_x"
command = ~20$F, $B, x
time = 8

[Command]
name = "CFB_y"
command = ~20$F, $B, y
time = 8

[Command]
name = "CFB_z"
command = ~20$F, $B, z
time = 8

[Command]
name = "CFB_xy"
command = ~20$F, $B, x+y
time = 8

[Command]
name = "CFB_xy"
command = ~20$F, $B, y+z
time = 8

[Command]
name = "CFB_xy"
command = ~20$F, $B, x+z
time = 8

[Command]
name = "CBF_a"
command = ~20$B, $F, a
time = 8

[Command]
name = "CBF_b"
command = ~20$B, $F, b
time = 8

[Command]
name = "CBF_c"
command = ~20$B, $F, c
time = 8

[Command]
name = "CBF_ab"
command = ~20$B, $F, a+b
time = 8

[Command]
name = "CBF_ab"
command = ~20$B, $F, b+c
time = 8

[Command]
name = "CBF_ab"
command = ~20$B, $F, a+c
time = 8

[Command]
name = "CFB_a"
command = ~20$F, $B, a
time = 8

[Command]
name = "CFB_b"
command = ~20$F, $B, b
time = 8

[Command]
name = "CFB_c"
command = ~20$F, $B, c
time = 8

[Command]
name = "CFB_ab"
command = ~20$F, $B, a+b
time = 8

[Command]
name = "CFB_ab"
command = ~20$F, $B, b+c
time = 8

[Command]
name = "CFB_ab"
command = ~20$F, $B, a+c
time = 8

[Command]
name = "CDU_x"
command = ~20$D, $U, x
time = 10
[Command]
name = "CDU_y"
command = ~20$D, $U, y
time = 10
[Command]
name = "CDU_z"
command = ~20$D, $U, z
time = 10
[Command]
name = "CDU_xy"
command = ~20$D, $U, x+y
time = 10
[Command]
name = "CDU_xy"
command = ~20$D, $U, y+z
time = 10
[Command]
name = "CDU_xy"
command = ~20$D, $U, x+z
time = 10

[Command]
name = "stompa"
command = ~20a

[Command]
name = "stompb"
command = ~20b
time = 1

[Command]
name = "stompc"
command = ~20c
time = 1

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
name = "SupahJump"
;command = ~$D, $U
command = ~$D, $U
time = 5
buffer.time = 2

[Command]
name = "ChargedSupahJump"
;command = ~$D, $U
command = ~12$D, $U
time = 5
buffer.time = 2

[Command]
name = "upper_what"
command = ~15$D, $U, x
time = 10
[Command]
name = "upper_what"
command = ~15$D, $U, y
time = 10
[Command]
name = "upper_what"
command = ~15$D, $U, z
time = 10
[Command]
name = "upper_what"
command = ~15$D, $U, a
time = 10
[Command]
name = "upper_what"
command = ~15$D, $U, b
time = 10
[Command]
name = "upper_what"
command = ~15$D, $U, c
time = 10


;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "lplk"
command = x+a
time = 1

[Command]
name = "lplk"
command = c
time = 1

[Command]
name = "hphk"
command = y+b
time = 1

[Command]
name = "hphk"
command = z
time = 1

[Command]
name = "tapu"
command = U
time = 1

[Command]
name = "tapd"
command = D
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

; The main purpose of having these next two controllers here at the top of
; StateDef -1 is to make sure the AI helper never changes to a different state,
; nor encounters any VarSets within State -1.
; But they also improve efficiency by preventing Mugen from wasting time
; processing the entire State -1 for the helper.
[State -1, AI Helper Check]
type = ChangeState
trigger1 = IsHelper(9741)
value = 9741

[State -1, AI Helper Check 2]
type = ChangeState
trigger1 = IsHelper(9742)
value = 9742

;===========================================================================
;This is not a move, but it sets up var(1) to be 1 if conditions are right
;for a combo into a special move (used below).
;Since a lot of special moves rely on the same conditions, this reduces
;redundant logic.
[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(9) = 0

[State -1, Combo condition Check]
type = VarSet
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = anim != 212
trigger2 = anim != 230
trigger2 = anim != 235
trigger2 = anim != 240
trigger2 = anim != 245
trigger2 = anim != 250
trigger2 = anim != 10230
trigger2 = anim != 10235
trigger2 = anim != 10240
trigger2 = anim != 10245
trigger2 = anim != 10250
trigger2 = stateno != 220
trigger2 = stateno != 225
trigger2 = stateno != 420
trigger2 = stateno != 450
trigger2 = movecontact
trigger3 = stateno = 40
trigger3 = animtime != 0
var(9) = 1


; AI-related stuff starts here

[State AI, RESET]
type = VarSet
trigger1 = 1;var(55)=0
;trigger2 = random >= (var(55)-8)*2
var(52) = 0
ignorehitpause = 1

[State AI, Consider backing off]
type = VarSet
triggerall = var(55)
triggerall = var(52) = 0 || random < 80+var(55)
triggerall = random < 200 + (123*(prevstateno = 440 && (p2stateno=[5070,5100]) ) )
triggerall = numenemy
triggerall = (p2stateno = [5110,5130]) || ((enemynear,time <= 10) && (enemynear,prevstateno = 5120))
triggerall = p2bodydist x <= 40
trigger1 = stateno != 40
trigger1 = ctrl
var(52) = ifelse(backedgebodydist <= 60, 41, 43 )
ignorehitpause = 1

[State AI, Consider S.X]
type = VarSet
triggerall = !(var(40) & floor(exp(1*ln(2)) + 0.5))
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (1*(var(55)*var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),33*const(size.xscale)-(4*movecontact)]
triggerall = p2dist y >= -75*const(size.yscale) - (enemynear,vel y*3)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -70*const(size.yscale)
triggerall = statetype != A
triggerall = ((time >= 7-var(55)) && (enemynear,time >= 7-var(55))) || random < 10
;triggerall = (enemynear,GetHitVar(hittime) >= 4 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 88 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 && movecontact) || (stateno = 210 && anim = 211 && movecontact)
var(52) = 200
ignorehitpause = 1

[State AI, Consider C.X]
type = VarSet
triggerall = !(var(40) & floor(exp(7*ln(2)) + 0.5))
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (1*(var(55)*var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),31*const(size.xscale)-(4*movecontact)]
triggerall = p2dist y >= -43*const(size.yscale) - (enemynear,vel y*3)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -40*const(size.yscale)
triggerall = statetype != A
triggerall = ((time >= 7-var(55)) && (enemynear,time >= 7-var(55))) || random < 10
;triggerall = (enemynear,GetHitVar(hittime) >= 4 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 88 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 && movecontact) || (stateno = 400 && movecontact)
var(52) = 400
ignorehitpause = 1

[State AI, Consider S.Y]
type = VarSet
triggerall = !(var(40) & floor(exp(2*ln(2)) + 0.5))
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (1*(var(55)*var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),ifelse(movecontact,42,70)*const(size.xscale)]
triggerall = p2dist y >= -70*const(size.yscale) - (enemynear,vel y*5)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -70*const(size.yscale)
triggerall = statetype != A
triggerall = ((time >= 7-var(55)) && (enemynear,time >= 7-var(55))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 7 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 88 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 && movecontact) || (stateno = 400 && movecontact)
var(52) = 210
ignorehitpause = 1

[State AI, Consider S.A]
type = VarSet
triggerall = !(var(40) & floor(exp(4*ln(2)) + 0.5))
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (1*(var(55)*var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),42*const(size.xscale)-(6*movecontact)]
triggerall = p2dist y >= -72*const(size.yscale) - (enemynear,vel y*3)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -70*const(size.yscale)
triggerall = statetype != A
triggerall = ((time >= 7-var(55)) && (enemynear,time >= 7-var(55))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 7 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 88 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 && movecontact)
var(52) = 230
ignorehitpause = 1

[State AI, Consider B.Y]
type = VarSet
triggerall = !(var(42) & floor(exp(0*ln(2)) + 0.5))
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (1*(var(55)*var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),45*const(size.xscale)]
triggerall = p2dist y >= -30*const(size.yscale) - (enemynear,vel y*8)
triggerall = statetype != A
triggerall = ((time >= 7-var(55)) && (enemynear,time >= 7-var(55))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= ifelse(movecontact,9,14) ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 88 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 && movecontact) || (stateno = 430 && movecontact) || (stateno = 240 && anim = 241 && movecontact) || (stateno = 400 && movecontact)
var(52) = 215
ignorehitpause = 1


[State AI, Consider C.Z]
type = VarSet
triggerall = !(var(40) & floor(exp(9*ln(2)) + 0.5))
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (1*(var(55)*var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),51*const(size.xscale)]
triggerall = p2dist y >= -72*const(size.yscale) - (enemynear,vel y*6)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -40*const(size.yscale)
triggerall = statetype != A
triggerall = ((time >= 7-var(55)) && (enemynear,time >= 7-var(55))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 8 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 88 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 && movecontact) || (stateno = 400 && movecontact) || (stateno = 430 && movecontact)
var(52) = 420
ignorehitpause = 1

[State AI, Consider C.Y]
type = VarSet
triggerall = !(var(40) & floor(exp(8*ln(2)) + 0.5))
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (1*(var(55)*var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),39*const(size.xscale)-(6*movecontact)]
triggerall = p2dist y >= -37*const(size.yscale) - (enemynear,vel y*4)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -30*const(size.yscale)
triggerall = statetype != A
triggerall = ((time >= 7-var(55)) && (enemynear,time >= 7-var(55))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 7 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 88 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 && movecontact) || (stateno = 400 && movecontact) || (stateno = 430 && movecontact)
var(52) = 410
ignorehitpause = 1

[State AI, Consider S.C]
type = VarSet
triggerall = !(var(40) & floor(exp(6*ln(2)) + 0.5))
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (1*(var(55)*var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),85*const(size.xscale)]
triggerall = p2dist y >= -90*const(size.yscale) - (enemynear,vel y*6)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -90*const(size.yscale)
triggerall = statetype != A
triggerall = ((time >= 7-var(55)) && (enemynear,time >= 7-var(55))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 10 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 88 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 && movecontact) || (stateno = 400 && movecontact) || (stateno = 430 && movecontact)
var(52) = 250
ignorehitpause = 1

[State AI, Consider C.B]
type = VarSet
triggerall = !(var(41) & floor(exp(1*ln(2)) + 0.5))
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (1*(var(55)*var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),86*const(size.xscale)]
triggerall = p2dist y >= -10*const(size.yscale) - (enemynear,vel y*4)
triggerall = statetype != A
triggerall = ((time >= 7-var(55)) && (enemynear,time >= 7-var(55))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 7 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 88 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 && movecontact) || (stateno = 400 && movecontact) || (stateno = 430 && movecontact)
var(52) = 440
ignorehitpause = 1

[State AI, Consider S.B]
type = VarSet
triggerall = !(var(40) & floor(exp(5*ln(2)) + 0.5))
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (1*(var(55)*var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),90*const(size.xscale)]
triggerall = p2dist y >= ifelse(p2bodydist x<=15,-45,-63)*const(size.yscale) - (enemynear,vel y*6)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -ifelse(p2bodydist x<=15,-45,-63)*const(size.yscale)
triggerall = statetype != A
triggerall = ((time >= 7-var(55)) && (enemynear,time >= 7-var(55))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 7 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 88 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 && movecontact) || (stateno = 400 && movecontact)
var(52) = 240
ignorehitpause = 1

[State AI, Consider C.C]
type = VarSet
triggerall = !(var(41) & floor(exp(2*ln(2)) + 0.5))
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (1*(var(55)*var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),93*const(size.xscale)]
triggerall = p2dist y >= -10*const(size.yscale) - (enemynear,vel y*7)
triggerall = statetype != A
triggerall = ((time >= 7-var(55)) && (enemynear,time >= 7-var(55))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 11 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 88 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 && movecontact) || (stateno = 400 && movecontact) || (stateno = 430 && movecontact)
var(52) = 450
ignorehitpause = 1

[State AI, Consider C.A]
type = VarSet
triggerall = !(var(41) & floor(exp(0*ln(2)) + 0.5))
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (1*(var(55)*var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),ifelse(movecontact,22,110)*const(size.xscale)-(6*movecontact)]
triggerall = p2dist y >= -10*const(size.yscale) - (enemynear,vel y*3)
triggerall = statetype != A
triggerall = ((time >= 7-var(55)) && (enemynear,time >= 7-var(55))) || random < 10
;triggerall = (enemynear,GetHitVar(hittime) >= 4 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 88 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 && movecontact) || (stateno = 400 && movecontact) || (stateno = 430 && movecontact)
var(52) = 430
ignorehitpause = 1

[State AI, Consider S.Z]
type = VarSet
triggerall = !(var(40) & floor(exp(3*ln(2)) + 0.5))
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (1*(var(55)*var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),ifelse(var(45)=1,104,112)*const(size.xscale)]
triggerall = p2dist y >= -37*const(size.yscale) - (enemynear,vel y*4)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -30*const(size.yscale)
triggerall = statetype != A
triggerall = ((time >= 7-var(55)) && (enemynear,time >= 7-var(55))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 12 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
triggerall = (numhelper(740) && helper(740),stateno!=2599)
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 88 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 && movecontact) || (stateno = 430 && movecontact) || (stateno = 400 && movecontact)
var(52) = 220
ignorehitpause = 1

[State AI, Consider F.Z]
type = VarSet
triggerall = !(var(42) & floor(exp(1*ln(2)) + 0.5))
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (1*(var(55)*var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),112*const(size.xscale)]
triggerall = p2dist y >= -70*const(size.yscale) - (enemynear,vel y*4)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -70*const(size.yscale)
triggerall = statetype != A
triggerall = ((time >= 7-var(55)) && (enemynear,time >= 7-var(55))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 14 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 88 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 && movecontact) || (stateno = 210 && anim = 211 && movecontact)  || (stateno = 430 && movecontact) || (stateno = 240 && anim = 241 && movecontact) || (stateno = 400 && movecontact)
var(52) = 225
ignorehitpause = 1


[State AI, J.X]
type = Varset
triggerall = !(var(41) & floor(exp(3*ln(2)) + 0.5))
triggerall = numenemy
triggerall = var(52) = 0 || random < 123
triggerall = var(55)
triggerall = p2bodydist x = [-36*const(size.xscale) +(vel x*9)+(enemynear,vel x*9),52*const(size.xscale) +(vel x*9)+(enemynear,vel x*9)]
triggerall = p2dist y >= -56*const(size.yscale) + (vel y*9)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <=  -58*const(size.yscale) + (vel y*10); - (enemynear,vel y*6)
triggerall = Statetype = A
;triggerall = p2stateno != [5100,5120]
triggerall = p2Statetype = A || vel y >= 0 || p2movetype = A
triggerall = (stateno != [120,169])
triggerall = random < (1*(var(55)*var(55)*var(55)))
triggerall = ((time >= 7-var(55)) && (enemynear,time >= 7-var(55))) || random < 10
trigger1 = ctrl || stateno = 110
var(52) = 600
ignorehitpause = 1

[State AI, J.Y]
type = Varset
triggerall = !(var(41) & floor(exp(4*ln(2)) + 0.5))
triggerall = numenemy
triggerall = var(52) = 0 || random < 123
triggerall = var(55)
triggerall = p2bodydist x = [-36*const(size.xscale) +(vel x*9)+(enemynear,vel x*9),62*const(size.xscale) +(vel x*9)+(enemynear,vel x*9)]
triggerall = p2dist y >= -59*const(size.yscale) + (vel y*9)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <=  -50*const(size.yscale) + (vel y*10); - (enemynear,vel y*6)
triggerall = Statetype = A
;triggerall = p2stateno != [5100,5120]
triggerall = p2Statetype = A || vel y >= 0 || p2movetype = A
triggerall = (stateno != [120,169])
triggerall = random < (1*(var(55)*var(55)*var(55)))
triggerall = ((time >= 7-var(55)) && (enemynear,time >= 7-var(55))) || random < 10
trigger1 = ctrl || stateno = 110
var(52) = 610
ignorehitpause = 1

[State AI, J.Z]
type = Varset
triggerall = !(var(41) & floor(exp(4*ln(2)) + 0.5))
triggerall = numenemy
triggerall = var(52) = 0 || random < 123
triggerall = var(55)
triggerall = p2bodydist x = [-36*const(size.xscale)+(enemynear,vel x*12),130*const(size.xscale)+(enemynear,vel x*12)]
triggerall = p2dist y >= -45*const(size.yscale)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <=  -45*const(size.yscale); - (enemynear,vel y*6)
triggerall = Statetype = A
triggerall = p2stateno != [5100,5120]
triggerall = p2Statetype = A || vel y >= 0 || p2movetype = A
triggerall = (stateno != [120,169])
triggerall = random < (0.5*(var(55)*var(55)*var(55)))
triggerall = ((time >= 7-var(55)) && (enemynear,time >= 7-var(55))) || random < 10
triggerall = (numhelper(740) && helper(740),stateno!=2599)
trigger1 = ctrl || stateno = 110
var(52) = 620
ignorehitpause = 1

[State AI, J.B]
type = Varset
triggerall = !(var(41) & floor(exp(6*ln(2)) + 0.5))
triggerall = numenemy
triggerall = var(52) = 0 || random < 123
triggerall = var(55)
triggerall = p2bodydist x = [-46*const(size.xscale) +(vel x*9)+(enemynear,vel x*9),63*const(size.xscale) +(vel x*9)+(enemynear,vel x*9)]
triggerall = p2dist y >= -74*const(size.yscale) + (vel y*9)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <=  -74*const(size.yscale) + (vel y*10); - (enemynear,vel y*6)
triggerall = Statetype = A
triggerall = p2stateno != [5100,5120]
triggerall = p2Statetype = A || vel y >= 0 || p2movetype = A
triggerall = (stateno != [120,169])
triggerall = random < (1*(var(55)*var(55)*var(55)))
triggerall = ((time >= 7-var(55)) && (enemynear,time >= 7-var(55))) || random < 10
trigger1 = ctrl || stateno = 110
var(52) = 640
ignorehitpause = 1

[State AI, J.C]
type = Varset
triggerall = !(var(41) & floor(exp(7*ln(2)) + 0.5))
triggerall = numenemy
triggerall = var(52) = 0 || random < 123
triggerall = var(55)
triggerall = p2bodydist x = [-36*const(size.xscale) +(vel x*9)+(enemynear,vel x*9),72*const(size.xscale) +(vel x*9)+(enemynear,vel x*9)]
triggerall = p2dist y >= -40*const(size.yscale) + (vel y*9)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <=  -40*const(size.yscale) + (vel y*10); - (enemynear,vel y*6)
triggerall = Statetype = A
;triggerall = p2stateno != [5100,5120]
triggerall = p2Statetype = A || vel y >= 0 || p2movetype = A
triggerall = (stateno != [120,169])
triggerall = random < (1*(var(55)*var(55)*var(55)))
triggerall = ((time >= 7-var(55)) && (enemynear,time >= 7-var(55))) || random < 10
trigger1 = ctrl || stateno = 110
var(52) = 650
ignorehitpause = 1

[State AI, J.A]
type = Varset
triggerall = !(var(41) & floor(exp(5*ln(2)) + 0.5))
triggerall = numenemy
triggerall = var(52) = 0 || random < 123
triggerall = var(55)
triggerall = p2bodydist x = [-50*const(size.xscale) +(vel x*5)+(enemynear,vel x*5),9*const(size.xscale) +(vel x*5)+(enemynear,vel x*5)]
triggerall = p2dist y >= -34*const(size.yscale) + (vel y*5)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <=  -9*const(size.yscale) + (vel y*5); - (enemynear,vel y*6)
triggerall = Statetype = A
triggerall = p2stateno != [5100,5120]
triggerall = p2Statetype = A || vel y >= 0 || p2movetype = A
triggerall = (stateno != [120,169])
triggerall = random < (1*(var(55)*var(55)*var(55)))
triggerall = ((time >= 7-var(55)) && (enemynear,time >= 7-var(55))) || random < 10
trigger1 = ctrl || stateno = 110
var(52) = 630
ignorehitpause = 1

[State AI, Consider psycho crushing]
type = VarSet
triggerall = var(45)=0
triggerall = !(var(42) & floor(exp(2*ln(2)) + 0.5))
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (0.9*(var(55)*var(55)*var(55))) * ifelse(movehit||p2statetype=C,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 128)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,-5),260*const(size.xscale)]
triggerall = p2dist y >= -70*const(size.yscale) - (enemynear,vel y*10)
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*9) + (enemynear, pos y) <= -9 ) || (p2stateno != [5030,5120])
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -70*const(size.yscale)
;triggerall = statetype != A
triggerall = ((time >= 7-var(55)) && (enemynear,time >= 7-var(55))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 11 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
triggerall = prevstateno != [1050,1070]
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = anim != 20
trigger1 = anim != 42
trigger1 = var(9)
trigger1 = (!moveguarded)
trigger2 = statetype = A
trigger2 = ctrl || ((stateno = [600,650]) && movehit)
var(52) = ifelse(p2bodydist x<=160*const(size.xscale),1050,ifelse(p2bodydist x<=220*const(size.xscale),1060,1070))
ignorehitpause = 1

[State AI, Consider scissor kicking]
type = VarSet
triggerall = var(45)=1
triggerall = !(var(42) & floor(exp(2*ln(2)) + 0.5))
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (0.9*(var(55)*var(55)*var(55))) * ifelse(movehit||p2statetype=C,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 128)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,-5),210*const(size.xscale)]
triggerall = p2dist y >= -80*const(size.yscale) - (enemynear,vel y*10)
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*12) + (enemynear, pos y) <= -9 ) || (p2stateno != [5030,5120])
;triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -70*const(size.yscale)
triggerall = statetype != A
triggerall = ((time >= 7-var(55)) && (enemynear,time >= 7-var(55))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 11 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
triggerall = prevstateno != [1600,1620]
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = anim != 20
trigger1 = anim != 42
trigger1 = var(9)
trigger1 = (!moveguarded) || (p2statetype = C)
var(52) = ifelse(p2bodydist x<=130*const(size.xscale),1050,ifelse(p2bodydist x<=170*const(size.xscale),1060,1070))
ignorehitpause = 1

[State AI, Consider a projectile]
type = VarSet
triggerall = var(45)=0
triggerall = !(var(42) & floor(exp(5*ln(2)) + 0.5))
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (0.6*(var(55)*var(55)*var(55))) * ifelse(movehit||p2statetype=C,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 32)
triggerall = p2stateno != [5080,5130]
;triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,5),200*const(size.xscale)]
triggerall = p2bodydist x >= 48
triggerall = p2dist y >= (-50-ifelse((enemynear,vel y>0),p2dist x,0))*const(size.yscale) - (enemynear,vel y*9)
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*9) + (enemynear, pos y) <= -9 ) || (p2stateno != [5030,5120])
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -80*const(size.yscale)
;triggerall = statetype != A
triggerall = ((time >= 7-var(55)) && (enemynear,time >= 7-var(55))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 9  ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
triggerall = prevstateno != [1000,1030]
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = anim != 20
trigger1 = anim != 42
trigger1 = var(9)
trigger1 = (!moveguarded)
trigger2 = statetype = A
trigger2 = ctrl || ((stateno = [600,650]) && movehit)
var(52) = ifelse(movehit,1020,1000 + (10*(random%3)))
ignorehitpause = 1

[State AI, Consider a projectile]
type = VarSet
triggerall = var(45)=1
triggerall = !(var(42) & floor(exp(5*ln(2)) + 0.5))
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (0.6*(var(55)*var(55)*var(55))) * ifelse(movehit||p2statetype=C,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 32)
triggerall = p2stateno != [5080,5130]
;triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,5),200*const(size.xscale)]
triggerall = p2bodydist x >= 48
triggerall = p2dist y >= -40 - (enemynear,vel y*9)
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*9) + (enemynear, pos y) <= -9 ) || (p2stateno != [5030,5120])
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -40*const(size.yscale)
triggerall = statetype != A
triggerall = ((time >= 7-var(55)) && (enemynear,time >= 7-var(55))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 14 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
triggerall = prevstateno != [1500,1530]
triggerall = (numhelper(740) && helper(740),stateno!=2599)
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = anim != 20
trigger1 = anim != 42
trigger1 = var(9)
trigger1 = (!moveguarded)
var(52) = 1000
ignorehitpause = 1

[State AI, Consider a projectile]
type = VarSet
triggerall = var(45)=1
triggerall = !(var(42) & floor(exp(5*ln(2)) + 0.5))
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (0.6*(var(55)*var(55)*var(55))) * ifelse(movehit||p2statetype=C,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 32)
triggerall = p2stateno != [5080,5130]
;triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,5),200*const(size.xscale)]
triggerall = p2bodydist x >= 48
triggerall = p2dist y >= -90 - (enemynear,vel y*9)
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*9) + (enemynear, pos y) <= -9 ) || (p2stateno != [5030,5120])
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -90*const(size.yscale)
triggerall = statetype != A
triggerall = ((time >= 7-var(55)) && (enemynear,time >= 7-var(55))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 14 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
triggerall = prevstateno != [1500,1530]
triggerall = (numhelper(740) && helper(740),stateno!=2599)
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = anim != 20
trigger1 = anim != 42
trigger1 = var(9)
trigger1 = (!moveguarded)
var(52) = 1010
ignorehitpause = 1

[State AI, Consider a projectile]
type = VarSet
triggerall = var(45)=1
triggerall = !(var(42) & floor(exp(5*ln(2)) + 0.5))
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (0.6*(var(55)*var(55)*var(55))) * ifelse(movehit||p2statetype=C,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 32)
triggerall = p2stateno != [5080,5130]
;triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,5),200*const(size.xscale)]
triggerall = p2bodydist x >= 48
triggerall = p2dist y >= -150 - (enemynear,vel y*9)
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*9) + (enemynear, pos y) <= -9 ) || (p2stateno != [5030,5120])
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -150*const(size.yscale)
triggerall = statetype != A
triggerall = ((time >= 7-var(55)) && (enemynear,time >= 7-var(55))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 14 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
triggerall = prevstateno != [1500,1530]
triggerall = (numhelper(740) && helper(740),stateno!=2599)
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = anim != 20
trigger1 = anim != 42
trigger1 = var(9)
trigger1 = (!moveguarded)
var(52) = 1020
ignorehitpause = 1

[State AI, Consider tossing your head]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (0.1*(var(55)*var(55)*var(55))) * ifelse(movehit||p2statetype=C,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0); || (random < 32)
triggerall = p2stateno != [5080,5130]
;triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,5),200*const(size.xscale)]
triggerall = p2bodydist x >= 48
triggerall = p2dist y >= (-50-ifelse((enemynear,vel y>0),p2dist x,0))*const(size.yscale) - (enemynear,vel y*9)
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*9) + (enemynear, pos y) <= -9 ) || (p2stateno != [5030,5120])
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -80*const(size.yscale)
;triggerall = statetype != A
triggerall = ((time >= 7-var(55)) && (enemynear,time >= 7-var(55))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 16 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
triggerall = prevstateno != [1000,1030]
triggerall = var(45) = 0
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = anim != 20
trigger1 = anim != 42
trigger1 = var(9)
trigger1 = (!moveguarded)
trigger2 = statetype = A
trigger2 = ctrl || ((stateno = [600,650]) && movehit)
var(52) = 730
ignorehitpause = 1

[State AI, Consider stomping]
type = VarSet
triggerall = !(var(42) & floor(exp(3*ln(2)) + 0.5))
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (0.6*(var(55)*var(55)*var(55))) * ifelse(movehit||p2statetype=C,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 128)
triggerall = p2stateno != [5110,5130]
triggerall = p2bodydist x = [ifelse(movecontact,-5,64),65*const(size.xscale)-(8*movecontact)]
triggerall = p2dist y >= -10*const(size.yscale); - (enemynear,vel y*10)
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*9) + (enemynear, pos y) <= -9 ) || (p2stateno != [5030,5120])
triggerall = statetype != A
triggerall = ((time >= 7-var(55)) && (enemynear,time >= 7-var(55))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 12 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
triggerall = prevstateno != [1100,1120]
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = anim != 20
trigger1 = anim != 42
trigger1 = var(9)
trigger1 = (!moveguarded) || (p2statetype = S)
var(52) = 1100
ignorehitpause = 1

[State AI, Consider stomping]
type = VarSet
triggerall = !(var(42) & floor(exp(3*ln(2)) + 0.5))
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (0.6*(var(55)*var(55)*var(55))) * ifelse(movehit||p2statetype=C,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 128)
triggerall = p2stateno != [5110,5130]
triggerall = p2bodydist x = [ifelse(movecontact,-5,64),105*const(size.xscale)-(8*movecontact)]
triggerall = p2dist y >= -10*const(size.yscale); - (enemynear,vel y*10)
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*14) + (enemynear, pos y) <= -14 ) || (p2stateno != [5030,5120])
triggerall = statetype != A
triggerall = ((time >= 7-var(55)) && (enemynear,time >= 7-var(55))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 19 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
triggerall = prevstateno != [1100,1120]
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = anim != 20
trigger1 = anim != 42
trigger1 = var(9)
trigger1 = (!moveguarded) || (p2statetype = S)
var(52) = 1110
ignorehitpause = 1

[State AI, Consider stomping]
type = VarSet
triggerall = !(var(42) & floor(exp(3*ln(2)) + 0.5))
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (0.6*(var(55)*var(55)*var(55))) * ifelse(movehit||p2statetype=C,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 128)
triggerall = p2stateno != [5110,5130]
triggerall = p2bodydist x = [ifelse(movecontact,-5,64),180*const(size.xscale)]
triggerall = p2dist y >= -10*const(size.yscale); - (enemynear,vel y*10)
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*17) + (enemynear, pos y) <= -9 ) || (p2stateno != [5030,5120])
triggerall = statetype != A
triggerall = ((time >= 7-var(55)) && (enemynear,time >= 7-var(55))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 22 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
triggerall = prevstateno != [1100,1120]
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = anim != 20
trigger1 = anim != 42
trigger1 = var(9)
trigger1 = (!moveguarded) || (p2statetype = S)
var(52) = 1120
ignorehitpause = 1

[State AI, Consider phoenix smashing 1]
type = VarSet
triggerall = var(45)=0
triggerall = !(var(42) & floor(exp(4*ln(2)) + 0.5))
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (0.4*(var(55)*var(55)*var(55))) * ifelse(movehit||p2statetype=C,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 64)
triggerall = p2stateno != [5080,5120]
triggerall = p2bodydist x = [-5,130*const(size.xscale)]
triggerall = p2dist y >= -5*const(size.yscale); - (enemynear,vel y*36)
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*36) + (enemynear, pos y) <= -36 ) || (p2stateno != [5030,5120])
triggerall = statetype != A
triggerall = ((time >= 7-var(55)) && (enemynear,time >= 7-var(55))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 36 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
triggerall = prevstateno != [1250,1280]
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = anim != 20
trigger1 = anim != 42
trigger1 = var(9)
trigger1 = (!movehit)
var(52) = 1250
ignorehitpause = 1

[State AI, Consider phoenix smashing 2]
type = VarSet
triggerall = var(45)=0
triggerall = !(var(42) & floor(exp(4*ln(2)) + 0.5))
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (0.4*(var(55)*var(55)*var(55))) * ifelse(movehit||p2statetype=C,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 64)
triggerall = p2stateno != [5080,5120]
triggerall = p2bodydist x = [25,190*const(size.xscale)]
triggerall = p2dist y >= -5*const(size.yscale); - (enemynear,vel y*36)
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*36) + (enemynear, pos y) <= -36 ) || (p2stateno != [5030,5120])
triggerall = statetype != A
triggerall = ((time >= 7-var(55)) && (enemynear,time >= 7-var(55))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 36 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
triggerall = prevstateno != [1250,1280]
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = anim != 20
trigger1 = anim != 42
trigger1 = var(9)
trigger1 = (!movehit)
var(52) = 1260
ignorehitpause = 1

[State AI, Consider phoenix smashing 3]
type = VarSet
triggerall = var(45)=0
triggerall = !(var(42) & floor(exp(4*ln(2)) + 0.5))
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (0.4*(var(55)*var(55)*var(55))) * ifelse(movehit||p2statetype=C,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 64)
triggerall = p2stateno != [5080,5120]
triggerall = p2bodydist x = [50,250*const(size.xscale)]
triggerall = p2dist y >= -5*const(size.yscale); - (enemynear,vel y*36)
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*36) + (enemynear, pos y) <= -36 ) || (p2stateno != [5030,5120])
triggerall = statetype != A
triggerall = ((time >= 7-var(55)) && (enemynear,time >= 7-var(55))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 36 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
triggerall = prevstateno != [1250,1280]
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = anim != 20
trigger1 = anim != 42
trigger1 = var(9)
trigger1 = (!movehit)
var(52) = 1270
ignorehitpause = 1

[State AI, Consider being Cool As Ice 1]
type = VarSet
triggerall = var(45)=1
triggerall = !(var(42) & floor(exp(4*ln(2)) + 0.5))
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (0.6*(var(55)*var(55)*var(55))) * ifelse(movehit||p2statetype=C,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0); || (random < 64)
triggerall = p2stateno != [5080,5120]
triggerall = p2bodydist x = [-5,80]
triggerall = p2dist y >= -80*const(size.yscale); - (enemynear,vel y*36)
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*36) + (enemynear, pos y) <= -36 ) || (p2stateno != [5030,5120])
triggerall = statetype != A
triggerall = ((time >= 7-var(55)) && (enemynear,time >= 7-var(55))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 16 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
triggerall = prevstateno != [1550,1590]
triggerall = (numhelper(740) && helper(740),stateno!=2599)
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = anim != 20
trigger1 = anim != 42
trigger1 = var(9)
trigger1 = (!movehit)
var(52) = 1250
ignorehitpause = 1

[State AI, Consider being Cool As Ice 2]
type = VarSet
triggerall = var(45)=1
triggerall = !(var(42) & floor(exp(4*ln(2)) + 0.5))
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (0.6*(var(55)*var(55)*var(55))) * ifelse(movehit||p2statetype=C,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0); || (random < 64)
triggerall = p2stateno != [5080,5120]
triggerall = p2bodydist x = [80,170]
triggerall = p2dist y >= -80*const(size.yscale); - (enemynear,vel y*36)
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*36) + (enemynear, pos y) <= -36 ) || (p2stateno != [5030,5120])
triggerall = statetype != A
triggerall = ((time >= 7-var(55)) && (enemynear,time >= 7-var(55))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 16 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
triggerall = prevstateno != [1550,1590]
triggerall = (numhelper(740) && helper(740),stateno!=2599)
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = anim != 20
trigger1 = anim != 42
trigger1 = var(9)
trigger1 = (!movehit)
var(52) = 1260
ignorehitpause = 1

[State AI, Consider being Cool As Ice 3]
type = VarSet
triggerall = var(45)=1
triggerall = !(var(42) & floor(exp(4*ln(2)) + 0.5))
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (0.6*(var(55)*var(55)*var(55))) * ifelse(movehit||p2statetype=C,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 32)
triggerall = p2stateno != [5080,5120]
triggerall = p2bodydist x = [170,280]
triggerall = p2dist y >= -80*const(size.yscale); - (enemynear,vel y*36)
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*36) + (enemynear, pos y) <= -36 ) || (p2stateno != [5030,5120])
triggerall = statetype != A
triggerall = ((time >= 7-var(55)) && (enemynear,time >= 7-var(55))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 16 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
triggerall = prevstateno != [1550,1590]
triggerall = (numhelper(740) && helper(740),stateno!=2599)
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = anim != 20
trigger1 = anim != 42
trigger1 = var(9)
trigger1 = (!movehit)
var(52) = 1270
ignorehitpause = 1

[State AI, Consider Throwing]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 900
triggerall = var(55)
triggerall = random < (15*(var(55)*var(55)))
triggerall = p2stateno != [5080,5130]
triggerall = abs(p2bodydist x) < 6
triggerall = statetype != A
triggerall = p2movetype != H
triggerall = p2statetype != A
triggerall = prevstateno != [800,830]
triggerall = enemynear,prevstateno != [5120,5129]
triggerall = var(8) = 0
trigger1 = stateno != 40
trigger1 = ctrl
var(52) = ifelse(power>=2000&&(p2movetype!=A||facing=enemynear,facing)&&random<128,3100,800)
ignorehitpause = 1

[State AI, Consider Air Throwing]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 900
triggerall = var(55)
triggerall = random < (15*(var(55)*var(55)))
triggerall = p2stateno != [5080,5130]
triggerall = abs(p2bodydist x) < 6
triggerall = abs(p2bodydist y) < 50
triggerall = statetype = A
triggerall = p2statetype = A
triggerall = prevstateno != [800,830]
triggerall = enemynear,prevstateno != [5120,5129]
trigger1 = stateno != 40
trigger1 = ctrl
var(52) = 830
ignorehitpause = 1

[State AI, Consider putting in the pork]
type = VarSet
triggerall = var(59) = 2 || var(59) = -1
triggerall = numenemy
triggerall = var(52) = 0 || random < 140+var(55)
triggerall = var(55)
triggerall = random < (0.4*(var(55)*var(55)*var(55))) * ifelse(movehit,2,1) + ((lifemax - life)/8)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 32)
triggerall = p2stateno != [5080,5130]
triggerall = p2statetype != L
triggerall = (p2bodydist x = [-5,60]); || (!movehit)
triggerall = p2dist y >= -20*const(size.yscale) - (enemynear,vel y*8)
;triggerall = p2statetype != A
;triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -20*const(size.yscale)
triggerall = statetype != A
triggerall = power >= 1000
triggerall =(p2movetype = H) || (enemynear, ctrl = 0) || (enemynear, statetype = A) || (random < 80)
triggerall = prevstateno != [3050,3052]
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*6) + (enemynear, pos y) <= -4 ) || (p2stateno != [5030,5120])
triggerall = ((time >= 7-var(55)) && (enemynear,time >= 7-var(55))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 7 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
trigger1 = ctrl || stateno = 100
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 250
trigger2 = var(9)
trigger2 = movehit
trigger3 = stateno = 1251
trigger3 = movehit
var(52) = 3150
ignorehitpause = 1

[State AI, Consider the Darkest of Days]
type = VarSet
triggerall = var(59) = 1 || var(59) = -1
triggerall = numenemy
triggerall = var(52) = 0 || random < 140+var(55)
triggerall = var(55)
triggerall = random < (0.4*(var(55)*var(55)*var(55))) * ifelse(movehit,2,1) + ((lifemax - life)/8)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0); || (random < 32)
triggerall = p2stateno != [5080,5130]
triggerall = p2statetype != L
triggerall = p2bodydist x >= 48 || movehit
;triggerall = (p2bodydist x = [30,140]); || (!movehit)
triggerall = p2dist y >= -60*const(size.yscale) - (enemynear,vel y*10)
;triggerall = p2statetype != A
;triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -20*const(size.yscale)
triggerall = statetype != A
triggerall = power >= 1000
triggerall = !numhelper(3000)
triggerall =(p2movetype = H) || (enemynear, ctrl = 0) || (enemynear, statetype = A) || (random < 80)
triggerall = prevstateno != [3050,3052]
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*6) + (enemynear, pos y) <= -4 ) || (p2stateno != [5030,5120])
triggerall = ((time >= 7-var(55)) && (enemynear,time >= 7-var(55))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 15 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
trigger1 = ctrl || stateno = 100
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 250
trigger2 = var(9)
trigger2 = movehit
trigger3 = stateno = 1251
trigger3 = movehit
var(52) = 3000
ignorehitpause = 1

[State AI, Consider enchanting your feet]
type = VarSet
triggerall = var(59) = 0 || var(59) = -1
triggerall = numenemy
triggerall = var(52) = 0 || random < 140+var(55)
triggerall = var(55)
triggerall = random < (0.4*(var(55)*var(55)*var(55))) * ifelse(movehit,2,1) + ((lifemax - life)/8)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0); || (random < 32)
triggerall = p2bodydist x >= 64 || movecontact
;triggerall = p2dist y >= -10*const(size.yscale) - (enemynear,vel y*15)
;triggerall = p2statetype != A
;triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -20*const(size.yscale)
triggerall = statetype != A
triggerall = power >= 1000
triggerall = !numhelper(3050)
triggerall =(p2movetype = H) || (enemynear, ctrl = 0) || (enemynear, statetype = A) || (random < 80)
triggerall = prevstateno != [3050,3052]
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*6) + (enemynear, pos y) <= -4 ) || (p2stateno != [5030,5120])
triggerall = ((time >= 7-var(55)) && (enemynear,time >= 7-var(55))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 10 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
trigger1 = ctrl || stateno = 100
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 250
trigger2 = var(9)
;trigger2 = movehit
trigger3 = stateno = 1251
trigger3 = movecontact
var(52) = 3050
ignorehitpause = 1

[State AI, Consider UP UP AND AWAY]
type = VarSet
triggerall = var(45)=0
triggerall = numenemy
triggerall = var(52) = 0 || random < 140+var(55)
triggerall = var(55)
triggerall = random < (0.4*(var(55)*var(55)*var(55))) * ifelse(movehit,2,1) + ((lifemax - life)/8)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 32)
triggerall = p2stateno != [5080,5130]
triggerall = p2statetype != L
triggerall = (p2bodydist x = [-5,50])
triggerall = p2dist y >= -10*const(size.yscale) - (enemynear,vel y*15)
triggerall = p2statetype != A
;triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -20*const(size.yscale)
triggerall = statetype != A
triggerall = power >= 2000
triggerall =(p2movetype = H) || (enemynear, ctrl = 0) || (enemynear, statetype = A) || (random < 80)
triggerall = prevstateno != [3050,3052]
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*6) + (enemynear, pos y) <= -4 ) || (p2stateno != [5030,5120])
triggerall = ((time >= 7-var(55)) && (enemynear,time >= 7-var(55))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 6 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
trigger1 = ctrl || stateno = 100
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 250
trigger2 = var(9)
trigger2 = movehit
trigger3 = stateno = 1251
trigger3 = movehit
var(52) = 3100
ignorehitpause = 1

[State AI, Consider Floating Head Syndrome]
type = VarSet
triggerall = var(45)=1
triggerall = numenemy
triggerall = var(52) = 0 || random < 140+var(55)
triggerall = var(55)
triggerall = random < (0.4*(var(55)*var(55)*var(55))) * ifelse(movehit,2,1) + ((lifemax - life)/8)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 32)
triggerall = p2stateno != [5080,5130]
triggerall = p2statetype != L
triggerall = p2statetype != A
;triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -20*const(size.yscale)
triggerall = statetype != A
triggerall = power >= 2000
triggerall =(p2movetype = H) || (enemynear, ctrl = 0) || (enemynear, statetype = A) || (random < 80)
triggerall = prevstateno != [3050,3052]
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*6) + (enemynear, pos y) <= -4 ) || (p2stateno != [5030,5120])
triggerall = ((time >= 7-var(55)) && (enemynear,time >= 7-var(55))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 9 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
triggerall = (numhelper(740) && helper(740),stateno!=2599)
trigger1 = ctrl || stateno = 100
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 250
trigger2 = var(9)
trigger2 = movehit
trigger3 = stateno = 1251
trigger3 = movehit
var(52) = 3100
ignorehitpause = 1

[State AI, Consider Psycho Crushing]
type = VarSet
;triggerall = var(45)=0
triggerall = numenemy
triggerall = var(52) = 0 || random < 140+var(55)
triggerall = var(55)
triggerall = random < (0.4*(var(55)*var(55)*var(55))) * ifelse(movehit,2,1) + ((lifemax - life)/8)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 64)
triggerall = p2stateno != [5080,5130]
triggerall = p2statetype != L
triggerall = (p2bodydist x = [-5,128]) || (var(45)=0)
triggerall = p2dist y >= -10*const(size.yscale) - (enemynear,vel y*20)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= ifelse(var(45)=0,-60,-10)*const(size.yscale)
;triggerall = statetype != A
triggerall = power >= 2000
triggerall =(p2movetype = H) || (enemynear, ctrl = 0) || (enemynear, statetype = A) || (random < 80)
triggerall = prevstateno != [3050,3052]
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*9) + (enemynear, pos y) <= -9 ) || (p2stateno != [5030,5120])
triggerall = ((time >= 7-var(55)) && (enemynear,time >= 7-var(55))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 20 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
trigger1 = ctrl || stateno = 100
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 250
trigger2 = var(9)
trigger2 = movehit
trigger3 = stateno = 1251
trigger3 = movehit
var(52) = 3200
ignorehitpause = 1

[State AI, Consider a super projectile]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) && (var(52)!=[3000,3300]) )
triggerall = var(55)
triggerall = random < (0.25*(var(55)*var(55)*var(55))) * ifelse(movehit||p2statetype=C,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 32)
triggerall = p2stateno != [5080,5130]
;triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,5),200*const(size.xscale)]
triggerall = p2bodydist x >= 48
triggerall = p2dist y >= (-50-ifelse((enemynear,vel y>0),p2dist x,0))*const(size.yscale) - (enemynear,vel y*9)
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*9) + (enemynear, pos y) <= -9 ) || (p2stateno != [5030,5120])
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -80*const(size.yscale)
;triggerall = statetype != A
triggerall = ((time >= 7-var(55)) && (enemynear,time >= 7-var(55))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 9  ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
triggerall = prevstateno != [1000,1030]
triggerall = power >= 350
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = anim != 20
trigger1 = anim != 42
trigger1 = var(9)
trigger1 = (!moveguarded)
trigger2 = var(45) = 0
trigger2 = statetype = A
trigger2 = ctrl || ((stateno = [600,650]) && movehit)
var(52) = 1030
ignorehitpause = 1

[State AI, Consider super scissor kicking]
type = VarSet
triggerall = var(45)=1
triggerall = !(var(42) & floor(exp(2*ln(2)) + 0.5))
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (0.7*(var(55)*var(55)*var(55))) * ifelse(movehit||p2statetype=C,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 128)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,-5),220*const(size.xscale)]
triggerall = p2dist y >= -80*const(size.yscale) - (enemynear,vel y*10)
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*12) + (enemynear, pos y) <= -9 ) || (p2stateno != [5030,5120])
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -32*const(size.yscale)
triggerall = statetype != A
triggerall = ((time >= 7-var(55)) && (enemynear,time >= 7-var(55))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 10 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
triggerall = prevstateno != [1600,1630]
triggerall = power >= 350
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = anim != 20
trigger1 = anim != 42
trigger1 = var(9)
trigger1 = (!moveguarded) || (p2statetype = C)
var(52) = 1080
ignorehitpause = 1

[State AI, Consider super phoenix smashing]
type = VarSet
triggerall = var(45) = 0
triggerall = !(var(42) & floor(exp(4*ln(2)) + 0.5))
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) && (var(52)!=[3000,3300]) )
triggerall = var(55)
triggerall = random < (0.3*(var(55)*var(55)*var(55))) * ifelse(movehit||p2statetype=C,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 64)
triggerall = p2stateno != [5080,5120]
triggerall = p2dist y >= -5*const(size.yscale); - (enemynear,vel y*36)
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*36) + (enemynear, pos y) <= -36 ) || (p2stateno != [5030,5120])
triggerall = statetype != A
triggerall = ((time >= 7-var(55)) && (enemynear,time >= 7-var(55))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 12 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
triggerall = prevstateno != [1250,1280]
triggerall = power >= 350
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = anim != 20
trigger1 = anim != 42
trigger1 = var(9)
trigger1 = (!movehit)
var(52) = 1280
ignorehitpause = 1

[State AI, Consider Advancing]
type = VarSet
triggerall = var(55)
triggerall = var(52) = 0 || random < 80+var(55)
triggerall = random < (33*var(55)) * ifelse(numhelper(3050),2,1)
triggerall = ((enemynear, ctrl = 0) && p2movetype != A) || (p2movetype = A && (enemynear, facing = facing))
triggerall = (p2stateno != [5080,5130]) || (p2bodydist x = [45,100])
triggerall = p2bodydist x >= 45
triggerall = statetype != A
;triggerall = p2movetype != H
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 100
trigger1 = ctrl
trigger1 = !moveguarded
var(52) = ifelse(p2movetype=H||random<100,42,1200 + (10*(random%3)))
ignorehitpause = 1

[State AI, Consider getting the head back]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 180
triggerall = var(55)
triggerall = var(45) > 0
triggerall = random < 100 + ((lifemax - life)/12)
triggerall = p2stateno = [5070,5120]
triggerall = p2bodydist x >= 80
trigger1 = ctrl
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 80
var(52) = 730
ignorehitpause = 1

[State AI, Consider Countering/Guard Canceling]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 55+var(55)
triggerall = var(55)
triggerall = random < (0.05*(var(55)*var(55)*var(55))) + ifelse(p2life - life<0,0,(p2life - life)/4)
triggerall = p2bodydist x = [-5,100]
triggerall = p2dist y >= -50
triggerall = statetype != A
triggerall = power >= 1000
triggerall = power < 2000 || random < 32 || power >= 3000
triggerall = time >= 7-var(55) || random < 10
triggerall = (enemynear,time >= 14-(var(55)*2)) || random < 10
trigger1 = stateno = 150 || stateno = 152
var(52) = 700
ignorehitpause = 1

[State AI, Guard S]
type = ChangeState
triggerall = stateno != 40
triggerall = random < (1*(var(55)*var(55)*var(55)))
triggerall = (var(55)) && (StateType != A) && (Ctrl) && (EnemyNear, Facing != Facing) && (var(50)<40)
triggerall = ((time >= 7-var(55)) && (enemynear,time >= 14-(var(55)*2)))
trigger1 = (P2StateType != C) && (((P2MoveType = A) && (inguarddist)) || (EnemyNear, NumProj > 0))
value = ifelse(random<50&&(stateno!=[120,159])&&(stateno!=[1200,1220]),1200 + (10*(random%3)),130)

[State AI, Guard L]
type = ChangeState
triggerall = stateno != 40
triggerall = random < (1*(var(55)*var(55)*var(55)))
triggerall = (var(55)) && (StateType != A) && (Ctrl) && (EnemyNear, Facing != Facing) && (var(50)<40)
triggerall = ((time >= 7-var(55)) && (enemynear,time >= 14-(var(55)*2)))
trigger1 = (P2StateType = C) && (((P2MoveType = A) && (inguarddist)) || (EnemyNear, NumProj > 0))
value = ifelse(random<50&&(stateno!=[120,159])&&(stateno!=[1200,1220]),1200 + (10*(random%3)),131)

[State AI, Is this fucker up?]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0; || random < 55+var(55)
triggerall = var(55)
triggerall = random < (0.8*(var(55)*var(55)*var(55)))
triggerall = stateno != [120,169]
triggerall = p2dist x = [-20,36]
triggerall = p2dist y <= -130
triggerall = statetype != A
triggerall = p2movetype != A || (facing != enemynear,facing) || (!inguarddist)
triggerall = time >= 7-var(55) || random < 10
trigger1 = ctrl
trigger1 = stateno != [10,40]
var(52) = ifelse(random<500&&frontedgebodydist <= 100,1200+((random%3)*10),41+random%3)
ignorehitpause = 1

; AI-related stuff ends here

;===========================================================================
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;Triple Kung Fu Palm (uses one super bar)
;三烈カンフー突き手（ゲージレベル１）
[State -1, Buzz Lightyear]
type = ChangeState
value = 3100
;triggerall = var(45)=0
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "QCBQCB_P",command = "QCFQCF_P")) || var(52) = 3100
triggerall = power >= 2000
triggerall = var(45) = 0 || (numhelper(740) && helper(740),stateno!=2599)
trigger1 = var(9)
trigger2 = (stateno = [1100,1120]) || (stateno = 1251)
trigger2 = movecontact

[State -1, Chasers]
type = ChangeState
value = 3000
;triggerall = var(45)=0
triggerall = var(59) = 1 || var(59) = -1
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "QCFQCF_P",command = "QCBQCB_P")) || var(52) = 3000
triggerall = power >= 1000
triggerall = !numhelper(3000)
trigger1 = var(9)
trigger2 = (stateno = [1100,1120]) || (stateno = 1251)
trigger2 = movecontact

[State -1, Char Dog]
type = ChangeState
value = 3150
;triggerall = var(45)=0
triggerall = var(59) = 2 || var(59) = -1
;triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "QCFQCF_K",command = "QCBQCB_K")) || var(52) = 3150
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "QCFQCF_P",command = "QCBQCB_P")) || var(52) = 3150
triggerall = power >= 1000
trigger1 = var(9)
trigger2 = (stateno = [1100,1120]) || (stateno = 1251)
trigger2 = movecontact

[State -1, BulletStorm lol]
type = ChangeState
value = 3050
triggerall = var(59) = 0 || var(59) = -1
;triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "QCBQCB_K",command = "QCFQCF_K")) || var(52) = 3050
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "QCFQCF_P",command = "QCBQCB_P")) || var(52) = 3050
triggerall = power >= 1000
triggerall = !numhelper(3050)
trigger1 = var(9)
trigger2 = (stateno = [1100,1120]) || (stateno = 1251)
trigger2 = movecontact

[State -1, Ultimate Psycho Crusher]
type = ChangeState
value = ifelse(var(45)=0,3200,3650)
;triggerall = var(45)=0
triggerall = (var(55)<5 && command = "CBFBF_P") || var(52) = 3200
triggerall = power >= 2000
triggerall = var(45) = 0 || (numhelper(740) && helper(740),stateno!=2599)
trigger1 = var(9)
trigger2 = (stateno = [1100,1120]) || (stateno = 1251)
trigger2 = movecontact
trigger3 = statetype = A
trigger3 = (ctrl) || ((stateno = [600,650]) && movecontact && stateno != 620)

;---------------------------------------------------------------------------
;Light Kung Fu Palm

;カンフー突き手（弱）
[State -1, EX FireBall]
type = ChangeState
value = ifelse(var(45)=0,1030,1530)
;triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "CBF_xy",command = "CFB_xy")) || var(52) = 1030
triggerall = (var(55)<5 && command = "CBF_xy") || var(52) = 1030
triggerall = !numhelper(1030)
triggerall = power >= 350
triggerall = var(45) = 0 || (numhelper(740) && helper(740),stateno!=2599)
trigger1 = var(9) ;Use combo condition (above)
trigger2 = var(45)=0
trigger2 = statetype = A
trigger2 = (ctrl) || ((stateno = [600,650]) && movecontact && stateno != 620)

[State -1, FireBall]
type = ChangeState
value = ifelse(var(45)=0,1000,1500)
;triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "CBF_x",command = "CFB_x")) || var(52) = 1000
triggerall = (var(55)<5 && command = "CBF_x") || var(52) = 1000
triggerall = !numhelper(1000)
triggerall = var(45) = 0 || (numhelper(740) && helper(740),stateno!=2599)
trigger1 = var(9) ;Use combo condition (above)
trigger2 = var(45)=0
trigger2 = statetype = A
trigger2 = (ctrl) || ((stateno = [600,650]) && movecontact && stateno != 620)

[State -1, FireBall]
type = ChangeState
value = ifelse(var(45)=0,1010,1510)
;triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "CBF_y",command = "CFB_y")) || var(52) = 1010
triggerall = (var(55)<5 && command = "CBF_y") || var(52) = 1010
triggerall = !numhelper(1000)
triggerall = var(45) = 0 || (numhelper(740) && helper(740),stateno!=2599)
trigger1 = var(9) ;Use combo condition (above)
trigger2 = var(45)=0
trigger2 = statetype = A
trigger2 = (ctrl) || ((stateno = [600,650]) && movecontact && stateno != 620)

[State -1, FireBall]
type = ChangeState
value = ifelse(var(45)=0,1020,1520)
;triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "CBF_z",command = "CFB_z")) || var(52) = 1020
triggerall = (var(55)<5 && command = "CBF_z") || var(52) = 1020
triggerall = !numhelper(1000)
triggerall = var(45) = 0 || (numhelper(740) && helper(740),stateno!=2599)
trigger1 = var(9) ;Use combo condition (above)
trigger2 = var(45)=0
trigger2 = statetype = A
trigger2 = (ctrl) || ((stateno = [600,650]) && movecontact && stateno != 620)

[State -1, EX Meteor Morph]
type = ChangeState
value = 1630
;triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "CBF_a",command = "CFB_a")) || var(52) = 1050
triggerall = (var(55)<5 && command = "CBF_ab") || var(52) = 1080
triggerall = var(45) = 1
triggerall = power >= 350
trigger1 = var(9) ;Use combo condition (above)

[State -1, Meteor Morph]
type = ChangeState
value = ifelse(var(45)=0,1050,1600)
;triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "CBF_a",command = "CFB_a")) || var(52) = 1050
triggerall = (var(55)<5 && command = "CBF_a") || var(52) = 1050
trigger1 = var(9) ;Use combo condition (above)
trigger2 = var(45)=0
trigger2 = statetype = A
trigger2 = (ctrl) || ((stateno = [600,650]) && movecontact && stateno != 620)

[State -1, Meteor Morph]
type = ChangeState
value = ifelse(var(45)=0,1060,1610)
;triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "CBF_b",command = "CFB_b")) || var(52) = 1060
triggerall = (var(55)<5 && command = "CBF_b") || var(52) = 1060
trigger1 = var(9) ;Use combo condition (above)
trigger2 = var(45)=0
trigger2 = statetype = A
trigger2 = (ctrl) || ((stateno = [600,650]) && movecontact && stateno != 620)

[State -1, Meteor Morph]
type = ChangeState
value = ifelse(var(45)=0,1070,1620)
;triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "CBF_c",command = "CFB_c")) || var(52) = 1070
triggerall = (var(55)<5 && command = "CBF_c") || var(52) = 1070
trigger1 = var(9) ;Use combo condition (above)
trigger2 = var(45)=0
trigger2 = statetype = A
trigger2 = (ctrl) || ((stateno = [600,650]) && movecontact && stateno != 620)

[State -1, Evasion Roll]
type = ChangeState
value = 1200
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "QCB_a",command = "QCF_a")) || var(52) = 1200
trigger1 = var(9) ;Use combo condition (above)

[State -1, Evasion Roll]
type = ChangeState
value = 1210
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "QCB_b",command = "QCF_b")) || var(52) = 1210
trigger1 = var(9) ;Use combo condition (above)

[State -1, Evasion Roll]
type = ChangeState
value = 1220
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "QCB_c",command = "QCF_c")) || var(52) = 1220
trigger1 = var(9) ;Use combo condition (above)

[State -1, EX Phoenix]
type = ChangeState
value = 1280
triggerall = var(45)=0
triggerall = (var(55)<5 && command = "CDU_xy") || var(52) = 1280
triggerall = power >= 350
trigger1 = var(9) ;Use combo condition (above)

[State -1, Phoenix]
type = ChangeState
value = ifelse(var(45)=0,1250,1550)
triggerall = (var(55)<5 && command = "CDU_x") || var(52) = 1250
triggerall = var(45) = 0 || (numhelper(740) && helper(740),stateno!=2599)
trigger1 = var(9) ;Use combo condition (above)

[State -1, Phoenix]
type = ChangeState
value = ifelse(var(45)=0,1260,1560)
triggerall = (var(55)<5 && command = "CDU_y") || var(52) = 1260
triggerall = var(45) = 0 || (numhelper(740) && helper(740),stateno!=2599)
trigger1 = var(9) ;Use combo condition (above)

[State -1, Phoenix]
type = ChangeState
value = ifelse(var(45)=0,1270,1570)
triggerall = (var(55)<5 && command = "CDU_z") || var(52) = 1270
triggerall = var(45) = 0 || (numhelper(740) && helper(740),stateno!=2599)
trigger1 = var(9) ;Use combo condition (above)

[State -1, Stomp]
type = ChangeState
value = 1100
triggerall = (var(55)<5 && command = "stompa") || var(52) = 1100
trigger1 = var(9) ;Use combo condition (above)

[State -1, Stomp]
type = ChangeState
value = 1110
triggerall = (var(55)<5 && command = "stompb") || var(52) = 1110
trigger1 = var(9) ;Use combo condition (above)

[State -1, Stomp]
type = ChangeState
value = 1120
triggerall = (var(55)<5 && command = "stompc") || var(52) = 1120
trigger1 = var(9) ;Use combo condition (above)

;===========================================================================
;---------------------------------------------------------------------------
[State -1, Head throw]
type = ChangeState
value = ifelse(var(45)=0,730,731)
;triggerall = var(45)=0
triggerall = (var(55)<5 && (command = "z" && command = "c")) || var(52) = 730
trigger1 = var(9) ;Use combo condition (above)

[State -1, Guard Counter]
type = ChangeState
value = 700
triggerall = var(45)=0
triggerall = (var(55)<5 && (command = "b" && command = "y")) || var(52) = 700
trigger1 = power >= 1000
trigger1 = statetype != A
trigger1 = stateno = [150,153]
;trigger1 = var(9) ;Use combo condition (above)

;Run Fwd
;ダッシュ
;[State -1, Run Fwd]
;type = ChangeState
;value = 100
;trigger1 = (command = "FF") || (var(52) = 100)
;trigger1 = statetype = S
;trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
;[State -1, Run Back]
;type = ChangeState
;value = 105
;trigger1 = (command = "BB") || (var(52) = 105)
;trigger1 = statetype = S
;trigger1 = ctrl || stateno = 100

;---------------------------------------------------------------------------
;Kung Fu Throw
;投げ
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = (command = "c" && (command = "holdfwd" || command = "holdback")) || var(52) = 800
;triggerall = ((command = "y" || command = "z") && (command = "holdfwd" || command = "holdback")) || var(52) = 800
triggerall = statetype != A
triggerall = ctrl
triggerall = stateno != 100
triggerall = var(8) <= 0
trigger1 = p2bodydist X < 8
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

[State -1, Kung Fu Throw]
type = ChangeState
value = 830
triggerall = (command = "c" && (command = "holdfwd" || command = "holdback")) || var(52) = 830
;triggerall = ((command = "y" || command = "z") && (command = "holdfwd" || command = "holdback")) || var(52) = 800
triggerall = statetype = A
triggerall = ctrl
trigger1 = p2bodydist X < 8
trigger1 = abs(p2bodydist y) < 50
trigger1 = (p2statetype = A)

[State -1, Overhead Punch]
type = ChangeState
value = 215
triggerall = (var(55)<5 && (command = "y" && command = "holdback" && command != "holddown")) || var(52) = 215
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 && (time > 7 || movecontact)) || (stateno = 400 && (time || movecontact)) || (stateno = 430 && var(0) = 0 && movecontact) || (stateno = 240 && movecontact && anim = 241) || (stateno = 210 && movecontact && anim = 211)
trigger3 = (stateno = 240 && movecontact && anim = 10241) || (stateno = 210 && movecontact && anim = 10211)

[State -1, Forward Punch]
type = ChangeState
value = 225
triggerall = (var(55)<5 && (command = "z" && command = "holdfwd" && command != "holddown")) || var(52) = 225
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 && (time > 7 || movecontact)) || (stateno = 400 && (time || movecontact)) || (stateno = 430 && var(0) = 0 && movecontact) || (stateno = 240 && movecontact && anim = 241) || (stateno = 210 && movecontact && anim = 211)
trigger3 = (stateno = 240 && movecontact && anim = 10241) || (stateno = 210 && movecontact && anim = 10211)

;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = (var(55)<5 && (command = "x" && command != "holddown")) || var(52) = 200
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 && (time > 7 || movecontact)) || (stateno = 210 && anim = 211 && movecontact)

[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = (var(55)<5 && (command = "y" && command != "holddown")) || var(52) = 210
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 && (time > 7 || movecontact)) || (stateno = 400 && (time > 7 || movecontact))

[State -1, Stand Hard Punch]
type = ChangeState
value = 220
triggerall = (var(55)<5 && (command = "z" && command != "holddown")) || var(52) = 220
triggerall = var(45) = 0 || (numhelper(740) && helper(740),stateno!=2599)
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 && (time > 7 || movecontact)) || (stateno = 400 && (time > 7 || movecontact))
trigger3 = var(45)
trigger3 = (stateno = 210 && movecontact) || (stateno = 240 && anim = 10241 && movecontact) || (stateno = 430 && var(0)=0 && movecontact)

[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = (var(55)<5 && (command = "a" && command != "holddown")) || var(52) = 230
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 && (time > 7 || movecontact)) || (stateno = 400 && (time > 7 || movecontact))

[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = (var(55)<5 && (command = "b" && command != "holddown")) || var(52) = 240
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 && (time > 7 || movecontact)) || (stateno = 400 && (time > 7 || movecontact))

[State -1, Stand Hard Kick]
type = ChangeState
value = 250
triggerall = (var(55)<5 && (command = "c" && command != "holddown")) || var(52) = 250
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 && (time > 7 || movecontact)) || (stateno = 400 && (time > 7 || movecontact))

;---------------------------------------------------------------------------
;Taunt
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = (command = "start") || var(52) = 195 || (var(58) = -2 && winko && !var(48))
triggerall = stateno != 195
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100


;---------------------------------------------------------------------------
;Crouching Light Punch
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = (var(55)<5 && (command = "x" && command = "holddown")) || var(52) = 400
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 && (time > 7 || movecontact)) || (stateno = 400 && (time > 7 || movecontact))

[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = (var(55)<5 && (command = "y" && command = "holddown")) || var(52) = 410
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 && (time > 7 || movecontact)) || (stateno = 400 && (time > 7 || movecontact))

[State -1, Crouching Hard Punch]
type = ChangeState
value = 420
triggerall = (var(55)<5 && (command = "z" && command = "holddown")) || var(52) = 420
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 && (time > 7 || movecontact)) || (stateno = 400 && (time > 7 || movecontact))

[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = (var(55)<5 && (command = "a" && command = "holddown")) || var(52) = 430
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 && (time > 7 || movecontact)) || (stateno = 400 && (time > 7 || movecontact)) || (stateno = 430 && prevstateno!= 430 && var(0) = 0 && movecontact)

[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = (var(55)<5 && (command = "b" && command = "holddown")) || var(52) = 440
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 && (time > 7 || movecontact)) || (stateno = 400 && (time > 7 || movecontact)) || (stateno = 430 && var(0) = 0 && movecontact)

[State -1, Crouching Hard Kick]
type = ChangeState
value = 450
triggerall = (var(55)<5 && (command = "c" && command = "holddown")) || var(52) = 450
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 && (time > 7 || movecontact)) || (stateno = 400 && (time > 7 || movecontact)) || (stateno = 430 && var(0) = 0 && movecontact)

[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = (var(55)<5 && command = "x") || var(52) = 600
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = (var(55)<5 && command = "y") || var(52) = 610
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump Hard Punch]
type = ChangeState
value = 620
triggerall = (var(55)<5 && command = "z") || var(52) = 620
triggerall = var(45) = 0 || (numhelper(740) && helper(740),stateno!=2599)
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = var(45) = 0
trigger2 = stateno = 600 || stateno = 610 || stateno = 630
trigger2 = movecontact

[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = (var(55)<5 && command = "a") || var(52) = 630
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = (var(55)<5 && command = "b") || var(52) = 640
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump Hard Kick]
type = ChangeState
value = 650
triggerall = (var(55)<5 && command = "c") || var(52) = 650
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Air combo lol]
type = ChangeState
value = 40
triggerall = (command = "holdup") || var(52) = [40,45]
trigger1 = var(55)
trigger1 = stateno != 40
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100

[State -1, Guilty gear shit right here]
type = ChangeState
value = 45
triggerall = (command = "holdup") || var(52) = [40,45]
triggerall = !(var(23) & floor(exp(0*ln(2)) + 0.5) )
trigger1 = stateno = 630
trigger1 = movecontact


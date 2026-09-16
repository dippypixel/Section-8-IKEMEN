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
name = "QCBHCF_K"
command = ~D, DB, B, DB, D, DF, F, a
time = 20

[Command]
name = "QCBHCF_K"
command = ~D, DB, B, DB, D, DF, F, b
time = 20

[Command]
name = "QCBHCF_K"
command = ~D, B, D, F, a
time = 20

[Command]
name = "QCBHCF_K"
command = ~D, B, D, F, b
time = 20

[Command]
name = "QCFHCB_K"
command = ~D, DF, F, DF, D, DB, B, a
time = 20

[Command]
name = "QCFHCB_K"
command = ~D, DF, F, DF, D, DB, B, b
time = 20

[Command]
name = "QCFHCB_K"
command = ~D, F, D, B, a
time = 20

[Command]
name = "QCFHCB_K"
command = ~D, F, D, B, b
time = 20


[Command]
name = "QCFx2P"
command = ~D, DF, F, D, DF, F, x
time = 20

[Command]
name = "QCFx2P"
command = ~D, DF, F, D, DF, F, y
time = 20

[Command]
name = "QCBx2P"
command = ~D, DB, B, D, DB, B, x;~F, D, DF, F, D, DF, x
time = 20

[Command]
name = "QCBx2P"
command = ~D, DB, B, D, DB, B, y;~F, D, DF, F, D, DF, y
time = 20

[Command]
name = "QCFx2K"
command = ~D, DF, F, D, DF, F, a
time = 20

[Command]
name = "QCFx2K"
command = ~D, DF, F, D, DF, F, b
time = 20

[Command]
name = "QCBx2K"
command = ~D, DB, B, D, DB, B, a
time = 20

[Command]
name = "QCBx2K"
command = ~D, DB, B, D, DB, B, b
time = 20



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
name = "QCF_a"
command = ~D, DF, F, a

[Command]
name = "QCF_b"
command = ~D, DF, F, b

[Command]
name = "QCB_a"
command = ~D, DB, B, a

[Command]
name = "QCB_b"
command = ~D, DB, B, b

[Command]
name = "HCB_a"
command = ~F, D, B, a

[Command]
name = "HCB_a"
command = ~F, DF, D, DB, B, a

[Command]
name = "HCB_b"
command = ~F, D, B, b

[Command]
name = "HCB_b"
command = ~F, DF, D, DB, B, b

[Command]
name = "HCF_a"
command = ~B, D, F, a

[Command]
name = "HCF_a"
command = ~B, DB, D, DF, F, a

[Command]
name = "HCF_b"
command = ~B, D, F, b

[Command]
name = "HCF_b"
command = ~B, DB, D, DF, F, b

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
trigger2 = anim != 200
trigger2 = anim != 210
trigger2 = anim != 215
trigger2 = anim != 230
trigger2 = anim != 240
trigger2 = anim != 245
trigger2 = stateno != 410 || numhelper(3050)
trigger2 = stateno != 440 || numhelper(3050)
trigger2 = stateno != 220 || numhelper(3050)
;trigger2 = stateno != 235
trigger2 = movecontact
trigger3 = stateno = 100
trigger4 = stateno = 1161
trigger4 = animelemtime(3) >= 0 || movecontact
var(9) = 1


; AI-related stuff starts here

[State AI, RESET]
type = VarSet
trigger1 = var(55)=0
trigger2 = random >= (var(55)-8)*2
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
var(52) = ifelse(backedgebodydist <= 60, 700, ifelse(random<500,43,705) )
ignorehitpause = 1

[State AI, Consider S.X]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (1*(var(55)*var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,-8),48-(9*movecontact)]
triggerall = p2dist y >= ifelse(p2bodydist x<=15,-68,-55) - (enemynear,vel y*5)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= ifelse(p2bodydist x<=15,-68,-55)
triggerall = statetype != A
triggerall = ((time >= 7-var(55)) && (enemynear,time >= 7-var(55))) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 88 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 && (anim = 201 || anim = 200) && (time > 8 || movecontact >= 2)) || (stateno = 230 && anim = 231 && movecontact >= 2) || (stateno = 210 && anim = 211 && movecontact >= 2) || (stateno = 400 && (time > 8 || movecontact >= 2))
trigger3 = numhelper(3050) && (stateno = 200 && (anim != 10202) && (time > 8 || movecontact)) || (stateno = 230 && anim = 10231 && movecontact) || (stateno = 210 && anim = 10211 && movecontact)
trigger4 = stateno = 1161
var(52) = 200
ignorehitpause = 1

[State AI, Consider S.Y]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (0.8*(var(55)*var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 32)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),66-(8*movecontact)]
triggerall = p2dist y >= ifelse(p2bodydist x<=19,-67,-42) - (enemynear,vel y*9)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= ifelse(p2bodydist x<=19,-67,-42)
triggerall = statetype != A
triggerall = ((time >= 7-var(55)) && (enemynear,time >= 7-var(55))) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 88 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 && (time > 8 || movecontact >= 2)) || (stateno = 230 && anim = 231 && movecontact >= 2) || (stateno = 210 && anim = 211 && movecontact >= 2) || (stateno = 400 && (time > 8 || movecontact >= 2))
trigger3 = numhelper(3050) && ((stateno = 200 || stateno = 230 || stateno = 430) && movecontact)
var(52) = 210
ignorehitpause = 1

[State AI, Consider S.A]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (1*(var(55)*var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,-5),64-(4*movecontact)]
triggerall = p2dist y >= ifelse(p2bodydist x<=15&&anim!=231&&anim!=400&&anim!=241,-39,-43) - (enemynear,vel y*5)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= ifelse(p2bodydist x<=15&&anim!=231&&anim!=400&&anim!=241,-39,-43)
triggerall = statetype != A
triggerall = ((time >= 7-var(55)) && (enemynear,time >= 7-var(55))) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 88 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 && movecontact >= 2) || (stateno = 230 && anim = 231 && movecontact >= 2) || (stateno = 210 && anim = 211 && movecontact >= 2) || (stateno = 400 && movecontact >= 2)
trigger3 = numhelper(3050) && ((stateno = 200 || stateno = 230 || stateno = 430) && movecontact)
trigger4 = stateno = 1161
var(52) = 230
ignorehitpause = 1

[State AI, Consider S.B]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (0.8*(var(55)*var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 32)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,-8),43-(8*movecontact)]
triggerall = p2dist y >= ifelse(p2bodydist x<=14&&anim!=230,0,-60) - (enemynear,vel y*9)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= ifelse(p2bodydist x<=14&&anim!=230,0,-60)
triggerall = statetype != A
triggerall = ((time >= 7-var(55)) && (enemynear,time >= 7-var(55))) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 88 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 && movecontact >= 2) || (stateno = 230 && movecontact >= 2) || (stateno = 210 && anim = 211 && movecontact >= 2)
trigger3 = numhelper(3050) && ((stateno = 200 || stateno = 230 || stateno = 210 || stateno = 400 || stateno = 430) && movecontact)
var(52) = 240
ignorehitpause = 1

[State AI, Consider C.X]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (1*(var(55)*var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,-5),36-(6*movecontact)]
triggerall = p2dist y >= -48 - (enemynear,vel y*7)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -48
triggerall = statetype != A
triggerall = ((time >= 7-var(55)) && (enemynear,time >= 7-var(55))) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 88 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 && (anim = 201 || anim = 10201) && movecontact >= 2) || (stateno = 400 && (time > 8 || movecontact >= 2))
trigger3 = stateno = 1161
var(52) = 400
ignorehitpause = 1

[State AI, Consider C.Y]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (0.35*(var(55)*var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,-10),41-(9*movecontact)]
triggerall = p2dist y >= -46 - (enemynear,vel y*10)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -23
triggerall = statetype != A
triggerall = ((time >= 7-var(55)) && (enemynear,time >= 7-var(55))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 11  ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 88 || p2movetype = H
trigger1 = ctrl || stateno = 100
;trigger2 = (stateno = 200 && movecontact >= 2) || (stateno = 230 && movecontact >= 2) || (stateno = 430 && movecontact >= 2)
trigger2 = (stateno = 200 && anim != 200 && movecontact >= 2) || (stateno = 230 && anim = 231 && movecontact >= 2) || (stateno = 400 && movecontact >= 2) || (stateno = 210 && anim = 211 && movecontact >= 2)
trigger3 = numhelper(3050) && ((stateno = 200 || stateno = 230 || stateno = 210 || stateno = 430) && movecontact)
var(52) = 410
ignorehitpause = 1

[State AI, Consider C.A]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (1*(var(55)*var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,-3),34-(4*movecontact)]
triggerall = p2dist y >= -14 - (enemynear,vel y*5)
triggerall = statetype != A
triggerall = ((time >= 7-var(55)) && (enemynear,time >= 7-var(55))) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 88 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 && anim != 200 && movecontact >= 2) || (stateno = 230 && anim = 231 && movecontact >= 2) || (stateno = 400 && movecontact >= 2) || (stateno = 210 && anim = 211 && movecontact >= 2)
trigger3 = numhelper(3050) && ((stateno = 200) && movecontact)
trigger4 = stateno = 1161
var(52) = 430
ignorehitpause = 1

[State AI, Consider C.B]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (1*(var(55)*var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,-10),51-(7*movecontact)]
triggerall = p2dist y >= -14 - (enemynear,vel y*8)
triggerall = statetype != A
triggerall = ((time >= 7-var(55)) && (enemynear,time >= 7-var(55))) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 88 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 && movecontact >= 2) || (stateno = 230 && movecontact >= 2) || (stateno = 430 && movecontact >= 2) || (stateno = 400 && movecontact >= 2) || (stateno = 210 && anim = 211 && movecontact >= 2)
trigger3 = numhelper(3050) && ((stateno = 210) && movecontact)
var(52) = 440
ignorehitpause = 1

[State AI, Consider F.LK]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (0.5*(var(55)*var(55)*var(55))) * ifelse(movehit||p2statetype=C,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 32)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),80-(18*movecontact)]
triggerall = p2dist y >= -40 - (enemynear,vel y*24)
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*24) + (enemynear, pos y) <= -24 ) || (p2stateno != [5030,5120])
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= 5
triggerall = statetype != A
triggerall = ((time >= 7-var(55)) && (enemynear,time >= 7-var(55))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 25  ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 88 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 && anim = 201 && movecontact >= 2) || (stateno = 230 && anim = 231 && movecontact >= 2) || (stateno = 210 && anim = 211 && movecontact >= 2) || (stateno = 240 && anim = 241 && movecontact >= 2)
trigger2 = (anim != 241 || (anim = 241 && animelemtime(8) > 2))
trigger2 = (!moveguarded) || (moveguarded && p2statetype = C)
trigger3 = (stateno = 400 || stateno = 430) && (movecontact >= 2)
var(52) = 235
ignorehitpause = 1

[State AI, Consider F.LP]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (0.6*(var(55)*var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 32)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),105-(11*movecontact)]
triggerall = p2dist y >= -40 - (enemynear,vel y*12)
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*11) + (enemynear, pos y) <= -11 ) || (p2stateno != [5030,5120])
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -35
triggerall = statetype != A
triggerall = ((time >= 7-var(55)) && (enemynear,time >= 7-var(55))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 14  ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 88 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 && anim = 201 && movecontact >= 2) || (stateno = 230 && anim = 231 && movecontact >= 2) || (stateno = 210 && anim = 211 && movecontact >= 2) || (stateno = 240 && anim = 241 && movecontact >= 2)
trigger2 = (anim != 241 || (anim = 241 && animelemtime(8) > 2))
trigger3 = (stateno = 400 || stateno = 430) && (movecontact >= 2)
var(52) = 205
ignorehitpause = 1

[State AI, Consider F.LP2]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (0.6*(var(55)*var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 32)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),65]
triggerall = p2dist y >= -40 - (enemynear,vel y*12)
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*11) + (enemynear, pos y) <= -11 ) || (p2stateno != [5030,5120])
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -50
triggerall = statetype != A
triggerall = ((time >= 7-var(55)) && (enemynear,time >= 7-var(55))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 10  ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
trigger1 = stateno = 205
trigger1 = (animelemtime(10) >= 0) || (movecontact)
trigger1 = animelemtime(12) < 0
var(52) = 206
ignorehitpause = 1

[State AI, Consider S.CD]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (0.5*(var(55)*var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 32)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),80-(22*movecontact)]
triggerall = p2dist y >= -50 - (enemynear,vel y*23)
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*23) + (enemynear, pos y) <= -23 ) || (p2stateno != [5030,5120])
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -55
triggerall = statetype != A
triggerall = ((time >= 7-var(55)) && (enemynear,time >= 7-var(55))) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 88 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = numhelper(3050) && ((stateno = 200 || stateno = 230 || stateno = 210 || stateno = 240 || stateno = 400 || stateno = 430 || stateno = 440) && movecontact >= 2)
var(52) = 220
ignorehitpause = 1

[State AI, Consider contraing]
type = VarSet
triggerall = roundstate = 2
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (1*(var(55)*var(55)*var(55)))
triggerall = p2stateno != [5080,5130]
triggerall = p2statetype != L
triggerall = p2bodydist x <= 64
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = ((time >= 7-var(55)) && (enemynear,time >= 7-var(55))) || random < 10
triggerall = var(0) = 0
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 88 || p2movetype = H
trigger1 = ctrl || stateno = 101 || stateno = 106
trigger1 = p2movetype = A
trigger1 = facing != enemynear, facing
trigger1 = inguarddist
trigger2 = var(9)
trigger2 = moveguarded
var(52) = ifelse(p2statetype=C,1150,1160)
ignorehitpause = 1


[State AI, J.X]
type = Varset
triggerall = numenemy
triggerall = var(52) = 0 || random < 123
triggerall = var(55)
triggerall = p2bodydist x = [-20+(vel x*6)+(enemynear,vel x*6),40+(vel x*6)+(enemynear,vel x*6)]
triggerall = p2dist y >= -65 + (vel y*6) ; - (enemynear,vel y*6)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <=  -65 + (vel y*6); - (enemynear,vel y*6)
triggerall = Statetype = A
triggerall = p2stateno != [5100,5120]
triggerall = p2Statetype = A || vel y >= 0 || p2movetype = A
triggerall = (stateno != [120,169])
triggerall = random < (1*(var(55)*var(55)*var(55)))
triggerall = ((time >= 7-var(55)) && (enemynear,time >= 7-var(55))) || random < 10
trigger1 = ctrl || stateno = 110
var(52) = 600
ignorehitpause = 1

[State AI, J.Y]
type = Varset
triggerall = numenemy
triggerall = var(52) = 0 || random < 123
triggerall = var(55)
triggerall = p2bodydist x = [-48+(vel x*7)+(enemynear,vel x*7),40+(vel x*7)+(enemynear,vel x*7)]
triggerall = p2dist y >= -45 + (vel y*7) ; - (enemynear,vel y*6)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <=  -30 + (vel y*6); - (enemynear,vel y*6)
triggerall = Statetype = A
triggerall = p2stateno != [5100,5120]
triggerall = p2Statetype = A || vel y >= 0 || p2movetype = A
triggerall = (stateno != [120,169])
triggerall = random < (1*(var(55)*var(55)*var(55)))
triggerall = ((time >= 7-var(55)) && (enemynear,time >= 7-var(55))) || random < 10
trigger1 = ctrl || stateno = 110
trigger2 = numhelper(3050) && ((stateno = 600 || stateno = 630 || stateno = 640) && movecontact)
var(52) = 610
ignorehitpause = 1

[State AI, J.A]
type = Varset
triggerall = numenemy
triggerall = var(52) = 0 || random < 123
triggerall = var(55)
triggerall = p2bodydist x = [-48+(vel x*4)+(enemynear,vel x*4),20+(vel x*4)+(enemynear,vel x*4)]
triggerall = p2dist y >= -13 + (vel y*4) ; - (enemynear,vel y*6)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <=  -13 + (vel y*4); - (enemynear,vel y*6)
triggerall = Statetype = A
triggerall = p2stateno != [5100,5120]
triggerall = p2Statetype = A || vel y >= 0 || p2movetype = A
triggerall = (stateno != [120,169])
triggerall = random < (1*(var(55)*var(55)*var(55)))
triggerall = ((time >= 7-var(55)) && (enemynear,time >= 7-var(55))) || random < 10
trigger1 = ctrl || stateno = 110
trigger2 = numhelper(3050) && ((stateno = 600) && movecontact)
var(52) = 630
ignorehitpause = 1

[State AI, J.B]
type = Varset
triggerall = numenemy
triggerall = var(52) = 0 || random < 123
triggerall = var(55)
triggerall = p2bodydist x = [-48+(vel x*7)+(enemynear,vel x*7),41+(vel x*7)+(enemynear,vel x*7)]
triggerall = p2dist y >= -30 + (vel y*7) ; - (enemynear,vel y*6)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <=  -30 + (vel y*7); - (enemynear,vel y*6)
triggerall = Statetype = A
triggerall = p2stateno != [5100,5120]
triggerall = p2Statetype = A || vel y >= 0 || p2movetype = A
triggerall = (stateno != [120,169])
triggerall = random < (1*(var(55)*var(55)*var(55)))
triggerall = ((time >= 7-var(55)) && (enemynear,time >= 7-var(55))) || random < 10
trigger1 = ctrl || stateno = 110
trigger2 = numhelper(3050) && ((stateno = 600 || stateno = 630) && movecontact)
var(52) = 640
ignorehitpause = 1

[State AI, J.CD]
type = Varset
triggerall = numenemy
triggerall = var(52) = 0 || random < 123
triggerall = var(55)
triggerall = p2bodydist x = [-48+(vel x*9)+(enemynear,vel x*9),45+(vel x*9)+(enemynear,vel x*9)]
triggerall = p2dist y >= -43 + (vel y*9) ; - (enemynear,vel y*6)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <=  -38 + (vel y*9); - (enemynear,vel y*6)
triggerall = Statetype = A
triggerall = p2stateno != [5100,5120]
triggerall = p2Statetype = A || vel y >= 0
triggerall = (stateno != [120,169])
triggerall = random < (0.5*(var(55)*var(55)*var(55)))
triggerall = ((time >= 7-var(55)) && (enemynear,time >= 7-var(55))) || random < 10
trigger1 = ctrl || stateno = 110
var(52) = 620
ignorehitpause = 1

[State AI, Consider breaking your neck]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,250]) && (var(52)!=[400,650]) )
triggerall = var(55)
triggerall = random < (0.6*(var(55)*var(55)*var(55))) * ifelse(movehit||p2statetype=A,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 123)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-10,-22),30-(13*(movecontact>=1))]
triggerall = p2dist y >= -64 - (enemynear,vel y*6)
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*12) + (enemynear, pos y) <= -17 ) || (p2stateno != [5030,5120])
;triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -30
triggerall = statetype != A
triggerall = ((time >= 7-var(55)) && (enemynear,time >= 7-var(55))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 5 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
triggerall = (prevstateno != [1200,1210])
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = var(9)
trigger1 = (anim != 241 || (anim = 241 && animelemtime(8) > 2))
trigger1 = !moveguarded
var(52) = 1200
ignorehitpause = 1

[State AI, Consider breaking your neck 2]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,250]) && (var(52)!=[400,650]) )
triggerall = var(55)
triggerall = random < (0.6*(var(55)*var(55)*var(55))) * ifelse(movehit||p2statetype=A,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 64)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-10,-15),60-(11*(movecontact>=1))]
triggerall = p2dist y >= -64 - (enemynear,vel y*14)
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*13) + (enemynear, pos y) <= -17 ) || (p2stateno != [5030,5120])
;triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -30
triggerall = statetype != A
triggerall = ((time >= 7-var(55)) && (enemynear,time >= 7-var(55))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 13 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
triggerall = (prevstateno != [1200,1210])
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = var(9)
trigger1 = (anim != 241 || (anim = 241 && animelemtime(8) > 2))
trigger1 = !moveguarded
var(52) = 1210
ignorehitpause = 1

[State AI, Consider tingling your spider senses]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,250]) && (var(52)!=[400,650]) )
triggerall = var(55)
triggerall = random < (0.6*(var(55)*var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 47)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),160-(17*(movecontact>=1))]
triggerall = p2dist y >= -60 - (enemynear,vel y*15)
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*17) + (enemynear, pos y) <= -17 ) || (p2stateno != [5030,5120])
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -30
;triggerall = statetype != A
triggerall = ((time >= 7-var(55)) && (enemynear,time >= 7-var(55))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 17  ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
triggerall = prevstateno != 646
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = var(9)
trigger1 = (anim != 241 || (anim = 241 && animelemtime(8) > 2))
trigger1 = !moveguarded
trigger2 = statetype = A
trigger2 = (ctrl) || ((stateno = [600,650]) && movehit)
var(52) = 1100
ignorehitpause = 1

[State AI, Consider tingling your spider senses 2]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,250]) && (var(52)!=[400,650]) )
triggerall = var(55)
triggerall = random < (0.6*(var(55)*var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 47)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),240-(17*(movecontact>=1))]
triggerall = p2dist y >= -80 - (enemynear,vel y*17)
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*17) + (enemynear, pos y) <= -17 ) || (p2stateno != [5030,5120])
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -49
;triggerall = statetype != A
triggerall = ((time >= 7-var(55)) && (enemynear,time >= 7-var(55))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 17  ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
triggerall = prevstateno != 646
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = var(9)
trigger1 = (anim != 241 || (anim = 241 && animelemtime(8) > 2))
trigger1 = !moveguarded
trigger2 = statetype = A
trigger2 = (ctrl) || ((stateno = [600,650]) && movehit)
var(52) = 1110
ignorehitpause = 1

[State AI, Consider pissing off Roger Waters]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,250]) && (var(52)!=[400,650]) )
triggerall = var(55)
triggerall = random < (0.6*(var(55)*var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 97) || (statetype = A)
triggerall = p2stateno != [5080,5130]
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*17) + (enemynear, pos y) <= -17 ) || (p2stateno != [5030,5120])
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -85
;triggerall = statetype != A
triggerall = p2bodydist x >= -5
triggerall = ((time >= 7-var(55)) && (enemynear,time >= 7-var(55))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 8 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
triggerall = prevstateno != [1000,1060]
triggerall = !numhelper(1000)
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = var(9)
trigger1 = (anim != 241 || (anim = 241 && animelemtime(8) > 2))
trigger2 = statetype = A
trigger2 = (ctrl) || ((stateno = [600,650]) && movecontact)
var(52) = ifelse(random<500||movehit,1010,1000)
ignorehitpause = 1
[State AI, Consider holding]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = p2movetype != A
;triggerall = !numhelper(3050) || random < 500
triggerall = p2bodydist x >= 15
trigger1 = stateno = [1000,1060]
trigger1 = p2statetype != A || p2statetype = L
trigger1 = (enemynear, ctrl = 1 && p2bodydist x >= 80) || (p2statetype=L) || (p2stateno=[120,169]) || (p2stateno = [5100,5120])
trigger2 = stateno = [1000,1060]
trigger2 = p2statetype = A
trigger2 = (p2dist y < -75 - p2bodydist x - (enemynear,vel y*3)) || (( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) > -78)
var(52) = 1001
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
var(52) = ifelse(power>=2000&&(p2movetype!=A||facing=enemynear,facing)&&random<128,3100,ifelse(random<500,830,800))
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
triggerall = prevstateno != [800,860]
triggerall = enemynear,prevstateno != [5120,5129]
trigger1 = stateno != 40
trigger1 = ctrl
var(52) = 860
ignorehitpause = 1

[State AI, Consider remixing disney music]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,250]) && (var(52)!=[400,650]) )
triggerall = var(55)
triggerall = random < (0.9*(var(55)*var(55)*var(55))) * ifelse(movehit||p2statetype=C,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 64)
triggerall = (p2bodydist x = [-15,6]) || (random<89)
triggerall = (p2dist y >= 20) || (random<89)
triggerall = statetype = A
triggerall = ((time >= 7-var(55)) && (enemynear,time >= 7-var(55))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 8 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
triggerall = !numhelper(1250)
triggerall = vel y + pos y <= -32
trigger1 = statetype = A
trigger1 = (ctrl) || ((stateno = [600,650]) && movehit)
var(52) = 1250
ignorehitpause = 1

[State AI, WHERE]
type = VarSet
triggerall = numenemy
triggerall = var(55)
triggerall = random < (1*(var(55)*var(55)*var(55)))
trigger1 = stateno = 1251
trigger1 = time = 1
var(52) = ifelse((p2movetype=A&&random<500)||p2dist x<0,1252,1251)
ignorehitpause = 1

[State AI, Consider watching some Van Damme]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 140+var(55)
triggerall = var(55)
triggerall = random < (0.4*(var(55)*var(55)*var(55))) * ifelse(movehit,2,1) + ((lifemax - life)/8)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0); || (random < 32)
triggerall = p2bodydist x >= 64 || movecontact
;triggerall = p2dist y >= -10*const(size.yscale) - (enemynear,vel y*15)
;triggerall = p2statetype != A
;triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -20*const(size.yscale)
;triggerall = statetype != A
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
trigger2 = (anim != 241 || (anim = 241 && animelemtime(8) > 2))
;trigger2 = movehit
trigger3 = (stateno = [600,640]) || (stateno = [1100,1110]) || (stateno = [1200,1210])
trigger3 = movecontact >= 2
var(52) = 3050
ignorehitpause = 1

[State AI, Consider messing around in Burger World]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 140+var(55)
triggerall = var(55)
triggerall = random < (0.4*(var(55)*var(55)*var(55))) * ifelse(movehit||p2statetype=C,2,1) + ((lifemax - life)/8)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0); || (random < 32)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x <= 58 || (p2movetype != H)
;triggerall = p2dist y >= -10*const(size.yscale) - (enemynear,vel y*15)
;triggerall = p2statetype != A
triggerall = (( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -80*const(size.yscale)) || (p2movetype != H)
triggerall = statetype != A
triggerall = power >= 1000
triggerall = !numhelper(3010)
triggerall = !numhelper(3013)
triggerall =(p2movetype = H) || (enemynear, ctrl = 0) || (enemynear, statetype = A) || (random < 80)
triggerall = prevstateno != [3050,3052]
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*6) + (enemynear, pos y) <= -4 ) || (p2stateno != [5030,5120])
triggerall = ((time >= 7-var(55)) && (enemynear,time >= 7-var(55))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 10 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
trigger1 = ctrl || stateno = 100
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 250
trigger2 = var(9)
trigger2 = (anim != 241 || (anim = 241 && animelemtime(8) > 2))
;trigger2 = movehit
trigger3 = (stateno = [1200,1210])
trigger3 = movehit >= 2
var(52) = ifelse((p2bodydist x >=128&&random<750)||movehit,3001,3000)
ignorehitpause = 1

[State AI, Consider playing Taking your opponent's balls]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 140+var(55)
triggerall = var(55)
triggerall = random < (0.5*(var(55)*var(55)*var(55))) * ifelse(movehit,2,1) + ((lifemax - life)/8)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 64)
triggerall = p2stateno != [5080,5130]
triggerall = enemynear,prevstateno != 5120
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),35-(11*movecontact)]
triggerall = p2dist y >= -44 - (enemynear,vel y*7)
triggerall = statetype != A
triggerall = power >= 2000
triggerall = (p2movetype = H) || (enemynear, ctrl = 0) || (enemynear, statetype = A) || (random < 80)
triggerall = prevstateno != [3000,3102]
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*5) + (enemynear, pos y) <= -5 ) || (p2stateno != [5030,5120])
triggerall = ((time >= 7-var(55)) && (enemynear,time >= 7-var(55))) || random < 10
trigger1 = ctrl || stateno = 100
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 250
trigger2 = var(9)
trigger3 = (stateno = [1200,1210])
trigger3 = movehit >= 2
;trigger2 = movehit
var(52) = 3100
ignorehitpause = 1

[State AI, Consider Warp Speed, Mr. Takei]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 140+var(55)
triggerall = var(55)
triggerall = random < (0.4*(var(55)*var(55)*var(55))) * ifelse(movehit,2,1) + ((lifemax - life)/8)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 64)
triggerall = p2stateno != [5080,5130]
;triggerall = (p2bodydist x = [-5,110]) || (!movehit)
triggerall = p2dist y >= -10 - (enemynear,vel y*5)
triggerall = statetype != A
triggerall = power >= 3000
triggerall =(p2movetype = H) || (enemynear, ctrl = 0) || (enemynear, statetype = A) || (random < 80)
triggerall = prevstateno != [3000,3352]
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*4) + (enemynear, pos y) <= -4 ) || (p2stateno != [5030,5120])
triggerall = ((time >= 7-var(55)) && (enemynear,time >= 7-var(55))) || random < 10
trigger1 = ctrl || stateno = 100
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 250
trigger2 = var(9)
trigger2 = movehit
trigger3 = (stateno = [1200,1210])
trigger3 = movehit >= 2
var(52) = 3200
ignorehitpause = 1

;[State AI, Consider the wrath of your bunghole]
;type = VarSet
;triggerall = numenemy
;triggerall = var(52) = 0 || random < 140+var(55)
;triggerall = var(55)
;triggerall = random < (0.5*(var(55)*var(55)*var(55))) * ifelse(movehit,2,1) + ((lifemax - life)/8)
;triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 32)
;triggerall = p2stateno != [5080,5130]
;triggerall = (p2bodydist x = [-5,110]); || (!movehit)
;triggerall = p2dist y >= -55 - (enemynear,vel y*6)
;triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -51
;triggerall = statetype != A
;triggerall = power >= 1000
;triggerall =(p2movetype = H) || (enemynear, ctrl = 0) || (enemynear, statetype = A) || (random < 80)
;triggerall = prevstateno != [3000,3002]
;triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*6) + (enemynear, pos y) <= -4 ) || (p2stateno != [5030,5120])
;triggerall = ((time >= 7-var(55)) && (enemynear,time >= 7-var(55))) || random < 10
;trigger1 = ctrl || stateno = 100
;trigger1 = stateno != 40
;trigger1 = stateno != 20 || random < 250
;trigger2 = var(9)
;trigger2 = movehit
;trigger3 = stateno = 1150 || stateno = 1160
;trigger3 = hitcount >= ifelse(stateno=1160,10,5) || movetype != A
;trigger3 = movehit
;var(52) = 3000
;ignorehitpause = 1


[State AI, Consider Advancing]
type = VarSet
triggerall = var(55)
triggerall = var(52) = 0 || random < 80+var(55)
triggerall = random < (33*var(55)) * ifelse(numhelper(3050),2,1)
triggerall = ((enemynear, ctrl = 0) && p2movetype != A) || (p2movetype = A && (enemynear, facing = facing))
triggerall = (p2stateno != [5080,5130]) || (p2bodydist x = [45,100])
triggerall = p2bodydist x >= 45
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 100
trigger1 = ctrl
trigger1 = !moveguarded
var(52) = ifelse(random<200&&stateno!=100,ifelse(random<500,700,41),100)
ignorehitpause = 1

[State AI, Consider Countering/Guard Canceling]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 55+var(55)
triggerall = var(55)
triggerall = random < (0.05*(var(55)*var(55)*var(55))) + ifelse(p2life - life<0,0,(p2life - life)/4)
;triggerall = p2bodydist x = [-5,60]
;triggerall = p2dist y >= -50
triggerall = statetype != A
triggerall = power >= 1000
triggerall = power < 2000 || random < 32 || power >= 3000
triggerall = time >= 7-var(55) || random < 10
triggerall = (enemynear,time >= 14-(var(55)*2)) || random < 10
trigger1 = stateno = 150 || stateno = 152
var(52) = ifelse((p2bodydist x = [-5,40])&&(p2dist y >= -50),710,ifelse(random<500&&frontedgedist > 64,700,705))
ignorehitpause = 1

[State -1, Just Taunt After Everythings Wrapped up]
type = VarSet
var(52) = ifelse(random<500,195,1950)
triggerall = (var(58) = -2 && winko && !var(48)) || (var(55) > 0 && winko && !var(48))
triggerall = stateno != 195
triggerall = stateno != 1950
;trigger1 = statetype != A
trigger1 = ctrl || stateno = 100

[State AI, Guard S]
type = ChangeState
triggerall = stateno != 40
triggerall = random < (1*(var(55)*var(55)*var(55)))
triggerall = (var(55)) && (StateType != A) && (Ctrl) && (EnemyNear, Facing != Facing) && (var(50)<40)
triggerall = ((time >= 7-var(55)) && (enemynear,time >= 14-(var(55)*2)))
trigger1 = (P2StateType != C) && (((P2MoveType = A) && (inguarddist)) || (EnemyNear, NumProj > 0))
value = ifelse(random<50&&(stateno!=[120,159])&&(prevstateno!=[700,705]),ifelse(random<123&&p2bodydist x<=68,1160,ifelse(random<500,700,705)),130)
;value = ifelse(random<50&&(stateno!=[120,159])&&(stateno!=[700,705]),ifelse(random<500,700,705),130)

[State AI, Guard L]
type = ChangeState
triggerall = stateno != 40
triggerall = random < (1*(var(55)*var(55)*var(55)))
triggerall = (var(55)) && (StateType != A) && (Ctrl) && (EnemyNear, Facing != Facing) && (var(50)<40)
triggerall = ((time >= 7-var(55)) && (enemynear,time >= 14-(var(55)*2)))
trigger1 = (P2StateType = C) && (((P2MoveType = A) && (inguarddist)) || (EnemyNear, NumProj > 0))
value = ifelse(random<50&&(stateno!=[120,159])&&(prevstateno!=[700,705]),ifelse(random<123&&p2bodydist x<=55,1150,ifelse(random<500,700,705)),131)
;value = ifelse(random<50&&(stateno!=[120,159])&&(stateno!=[700,705]),ifelse(random<500,700,705),131)

; AI-related stuff ends here

;===========================================================================
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;Triple Kung Fu Palm (uses one super bar)
;三烈カンフー突き手（ゲージレベル１）

[State -1, HI THERE MR. BUZZUT]
type = ChangeState
value = 3200
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "QCBHCF_K",command = "QCFHCB_K")) || var(52) = 3200
triggerall = power >= 3000
trigger1 = var(9)
trigger2 = stateno = 1200 || stateno = 1210
trigger2 = movecontact

[State -1, SCROTUM DISCOMFORT]
type = ChangeState
value = 3100
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "QCBx2K",command = "QCFx2K")) || var(52) = 3100
triggerall = power >= 2000
trigger1 = var(9)
trigger2 = stateno = 1200 || stateno = 1210
trigger2 = movecontact

[State -1, Jean Garry Diablo]
type = ChangeState
value = ifelse(statetype=A,3060,3050)
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "QCFx2K",command = "QCBx2K")) || var(52) = 3050
triggerall = power >= 1000
triggerall = !numhelper(3050)
trigger1 = var(9)
trigger2 = statetype = A
trigger2 = (ctrl) || ((stateno = [600,640]) && movecontact)
trigger3 = stateno = 1100 || stateno = 1110 || stateno = 1200 || stateno = 1210
trigger3 = movecontact

[State -1, Burger World]
type = ChangeState
value = 3000
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "QCFx2P",command = "QCBx2P")) || (var(52) = [3000,3001])
triggerall = power >= 1000
triggerall = !numhelper(3010)
triggerall = !numhelper(3013)
trigger1 = var(9)
trigger2 = stateno = 1200 || stateno = 1210
trigger2 = movecontact


;---------------------------------------------------------------------------
;Light Kung Fu Palm
;カンフー突き手（弱）
[State -1, 360' Kick]
type = ChangeState
value = 1200
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "HCF_a",command = "HCB_a")) || var(52) = 1200
trigger1 = var(9) ;Use combo condition (above)

[State -1, 360' Kick]
type = ChangeState
value = 1210
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "HCF_b",command = "HCB_b")) || var(52) = 1210
trigger1 = var(9) ;Use combo condition (above)

[State -1, Joe Kick]
type = ChangeState
value = 1100
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "QCB_a",command = "QCF_a")) || var(52) = 1100
trigger1 = var(9) ;Use combo condition (above)
trigger2 = statetype = A
trigger2 = (ctrl) || ((stateno = [600,640]) && movecontact)

[State -1, Joe Kick]
type = ChangeState
value = 1110
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "QCB_b",command = "QCF_b")) || var(52) = 1110
trigger1 = var(9) ;Use combo condition (above)
trigger2 = statetype = A
trigger2 = (ctrl) || ((stateno = [600,640]) && movecontact)

[State -1, Loogie]
type = ChangeState
value = ifelse(statetype=A,1050,1000)
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "QCF_x",command = "QCB_x")) || var(52) = 1000
triggerall = !numhelper(1000)
trigger1 = var(9) ;Use combo condition (above)
trigger2 = statetype = A
trigger2 = (ctrl) || ((stateno = [600,640]) && movecontact)

[State -1, Loogie]
type = ChangeState
value = ifelse(statetype=A,1060,1010)
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "QCF_y",command = "QCB_y")) || var(52) = 1010
triggerall = !numhelper(1000)
trigger1 = var(9) ;Use combo condition (above)
trigger2 = statetype = A
trigger2 = (ctrl) || ((stateno = [600,640]) && movecontact)

[State -1, Fakeout Punch]
type = ChangeState
value = 1150
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "QCB_x",command = "QCF_x")) || var(52) = 1150
triggerall = stateno != 1161
trigger1 = var(9) ;Use combo condition (above)

[State -1, Fakeout Punch]
type = ChangeState
value = 1160
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "QCB_y",command = "QCF_y")) || var(52) = 1160
triggerall = stateno != 1161
trigger1 = var(9) ;Use combo condition (above)

[State -1, Pogo]
type = ChangeState
value = 1250
triggerall = (var(55)<5 && command = "a"  && command = "b") || var(52) = 1250
triggerall = !numhelper(1250)
trigger1 = statetype = A
trigger1 = (ctrl) || ((stateno = [600,640]) && movecontact)

;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = (command = "FF") || (var(52) = 100)
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = (command = "BB") || (var(52) = 105)
trigger1 = statetype = S
trigger1 = ctrl || stateno = 100

;---------------------------------------------------------------------------
;Kung Fu Throw
;投げ
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = (command = "b" && (command = "holdfwd" || command = "holdback")) || var(52) = 800
triggerall = statetype != A
triggerall = ctrl
triggerall = stateno != 100
triggerall = var(8) <= 0
trigger1 = p2bodydist X < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

[State -1, Kung Fu Throw]
type = ChangeState
value = 830
triggerall = (command = "y" && (command = "holdfwd" || command = "holdback")) || var(52) = 830
triggerall = statetype != A
triggerall = ctrl
triggerall = stateno != 100
triggerall = var(8) <= 0
trigger1 = p2bodydist X < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

[State -1, Air Throw]
type = ChangeState
value = 860
triggerall = (command = "y" && (command = "holdfwd" || command = "holdback")) || var(52) = 860
;triggerall = ((command = "y" || command = "z") && (command = "holdfwd" || command = "holdback")) || var(52) = 800
triggerall = statetype = A
triggerall = ctrl
trigger1 = p2bodydist X < 8
trigger1 = abs(p2bodydist y) < 50
trigger1 = (p2statetype = A)
[State -1, Air Throw]
type = ChangeState
value = 861
triggerall = (command = "b" && (command = "holdfwd" || command = "holdback")) || var(52) = 860
;triggerall = ((command = "y" || command = "z") && (command = "holdfwd" || command = "holdback")) || var(52) = 800
triggerall = statetype = A
triggerall = ctrl
trigger1 = p2bodydist X < 8
trigger1 = abs(p2bodydist y) < 50
trigger1 = (p2statetype = A)


;---------------------------------------------------------------------------
;Stand Strong Punch
;立ち強パンチ
[State -1, Stand CD]
type = ChangeState
value = 220
triggerall = (var(55)<5 && (command = "hphk")) || var(52) = 220
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = numhelper(3050) && ((stateno = 200 || stateno = 230 || stateno = 210 || stateno = 240 || stateno = 400 || stateno = 430 || stateno = 440) && movecontact)
trigger3 = stateno = 1161
trigger3 = animelemtime(3) >= 0 || movecontact

[State -1, Guard Counter Attack]
type = ChangeState
value = 710
triggerall = (var(55)<5 && command = "hphk" ) || var(52) = 710
triggerall = statetype != A
trigger1 = stateno = [150,156]
trigger1 = power >= 1000

;---------------------------------------------------------------------------
;Stand Dodge
;立ち強パンチ
[State -1, Stand Dodge]
type = ChangeState
value = 700
triggerall = (var(55)<5 && (command = "lplk" && command != "holdback")) || var(52) = 700
triggerall = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = [150,156]
trigger2 = power >= 1000
trigger3 = var(9)
trigger3 = power >= 1000

;---------------------------------------------------------------------------
;Stand Dodge
;立ち強パンチ
[State -1, Stand Dodge]
type = ChangeState
value = 705
triggerall = (var(55)<5 && (command = "lplk" && command = "holdback")) || var(52) = 705
triggerall = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = [150,156]
trigger2 = power >= 1000
trigger3 = var(9)
trigger3 = power >= 1000

[State -1, Butt Scratcher]
type = ChangeState
value = 205
triggerall = (var(55)<5 && (command = "x" && command = "holdfwd" && command != "holddown")) || var(52) = 205
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 && anim = 201 && movecontact) || (stateno = 230 && anim = 231 && movecontact) || (stateno = 210 && anim = 211 && movecontact) || (stateno = 240 && anim = 241 && movecontact)
trigger3 = (stateno = 400 || stateno = 430) && (movecontact)
trigger4 = numhelper(3050) && ((stateno = 200 || stateno = 230 || stateno = 210 || stateno = 240 || stateno = 400 || stateno = 430 || stateno = 440) && movecontact)
trigger5 = stateno = 1161
trigger5 = animelemtime(3) >= 0 || movecontact

[State -1, Butt Scratcher 2]
type = ChangeState
value = 206
triggerall = (var(55)<5 && (command = "x")) || var(52) = 206
trigger1 = stateno = 205
trigger1 = (animelemtime(10) >= 0) || (movecontact)
trigger1 = animelemtime(12) < 0

[State -1, Mc Hammer's Revenge]
type = ChangeState
value = 235
triggerall = (var(55)<5 && (command = "a" && command = "holdfwd" && command != "holddown")) || var(52) = 235
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 && anim = 201 && movecontact) || (stateno = 230 && anim = 231 && movecontact) || (stateno = 210 && anim = 211 && movecontact) || (stateno = 240 && anim = 241 && movecontact)
trigger3 = (stateno = 400 || stateno = 430) && (movecontact)
trigger4 = numhelper(3050) && ((stateno = 200 || stateno = 230 || stateno = 210 || stateno = 240 || stateno = 400 || stateno = 430 || stateno = 440 || stateno = 205 || stateno = 206) && movecontact)
trigger5 = stateno = 1161
trigger5 = animelemtime(3) >= 0 || movecontact


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
trigger2 = (stateno = 200 && (anim = 201 || anim = 200) && (time > 8 || movecontact)) || (stateno = 230 && anim = 231 && movecontact) || (stateno = 210 && anim = 211 && movecontact) || (stateno = 400 && (time > 8 || movecontact))
trigger3 = numhelper(3050) && (stateno = 200 && (anim != 10202) && (time > 8 || movecontact)) || (stateno = 230 && anim = 10231 && movecontact) || (stateno = 210 && anim = 10211 && movecontact)
trigger4 = stateno = 1161
trigger4 = animelemtime(3) >= 0 || movecontact

;---------------------------------------------------------------------------
;Stand Strong Punch
;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = (var(55)<5 && (command = "y" && command != "holddown")) || var(52) = 210
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
;trigger2 = (stateno = 200 && anim = 201 && movecontact) || (stateno = 230 && anim = 231 && movecontact)
;trigger2 = (stateno = 200 && movecontact) || (stateno = 230 && anim = 231 && movecontact)
trigger2 = (stateno = 200 && (time > 8 || movecontact)) || (stateno = 230 && anim = 231 && movecontact) || (stateno = 210 && (anim = 211 || anim = 10211) && movecontact) || (stateno = 400 && (time > 8 || movecontact))
trigger3 = numhelper(3050) && ((stateno = 200 || stateno = 230 || stateno = 430) && movecontact)
trigger4 = stateno = 1161
trigger4 = animelemtime(3) >= 0 || movecontact

;[State -1, Alt. Strong Punch]
;type = ChangeState
;value = 215
;triggerall = (var(55)<5 && (command = "y" && command != "holddown")) || var(52) = 215
;trigger1 = stateno = 210
;trigger1 = anim = 210
;trigger1 = animelemtime(5) >= 0
;trigger1 = animelemtime(6) < 0

;---------------------------------------------------------------------------
;Stand Light Kick
;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = (var(55)<5 && (command = "a" && command != "holddown")) || var(52) = 230
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 && movecontact) || (stateno = 230 && (anim = 231 || anim = 10231) && movecontact) || (stateno = 210 && (anim = 211 || anim = 10211) && movecontact) || (stateno = 400 && movecontact)
trigger3 = numhelper(3050) && ((stateno = 400) && movecontact)
trigger4 = stateno = 1161
trigger4 = animelemtime(3) >= 0 || movecontact

;---------------------------------------------------------------------------
;Standing Strong Kick
;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = (var(55)<5 && (command = "b" && command != "holddown")) || var(52) = 240
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
;trigger2 = (stateno = 200 && anim = 201 && movecontact) || (stateno = 230 && anim = 231 && movecontact) || (stateno = 210 && anim = 211 && movecontact)
trigger2 = (stateno = 200 && movecontact) || (stateno = 230 && movecontact) || (stateno = 210 && anim = 211 && movecontact)
trigger3 = numhelper(3050) && ((stateno = 200 || stateno = 230 || stateno = 210 || stateno = 400 || stateno = 430) && movecontact)
trigger4 = stateno = 1161
trigger4 = animelemtime(3) >= 0 || movecontact

;---------------------------------------------------------------------------
;Taunt
;挑発
[State -1, Alt Taunt]
type = ChangeState
value = 1950
triggerall = (command = "holdfwd" && command = "start"); || var(52) = 1950 || (var(58) = -2 && winko && !var(48))
triggerall = stateno != 1950
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100

[State -1, Taunt]
type = ChangeState
value = 195
triggerall = (command = "start") || var(52) = 195; || (var(58) = -2 && winko && !var(48))
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
trigger2 = (stateno = 200 && anim = 201 && movecontact) || (stateno = 400 && (time > 8 || movecontact))
trigger3 = stateno = 1161
trigger3 = animelemtime(3) >= 0 || movecontact

;---------------------------------------------------------------------------
;Crouching Strong Punch
;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = (var(55)<5 && (command = "y" && command = "holddown")) || var(52) = 410
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
;trigger2 = (stateno = 200 && anim = 201 && movecontact) || (stateno = 230 && anim = 231 && movecontact) || (stateno = 430 && movecontact)
trigger2 = (stateno = 200 && anim != 200 && movecontact) || (stateno = 230 && anim = 231 && movecontact) || (stateno = 400 && movecontact) || (stateno = 210 && (anim = 211 || anim = 10211) && movecontact)
trigger3 = numhelper(3050) && ((stateno = 200 || stateno = 230 || stateno = 210 || stateno = 430) && movecontact)
trigger4 = stateno = 1161
trigger4 = animelemtime(3) >= 0 || movecontact

;---------------------------------------------------------------------------
;Crouching Light Kick
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = (var(55)<5 && (command = "a" && command = "holddown")) || var(52) = 430
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 && anim != 200 && movecontact) || (stateno = 230 && anim != 230 && movecontact) || (stateno = 400 && movecontact) || (stateno = 210 && (anim = 211 || anim = 10211) && movecontact)
trigger3 = numhelper(3050) && ((stateno = 200) && movecontact)
trigger4 = stateno = 1161
trigger4 = animelemtime(3) >= 0 || movecontact

;---------------------------------------------------------------------------
;Crouching Strong Kick
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = (var(55)<5 && (command = "b" && command = "holddown")) || var(52) = 440
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 && movecontact) || (stateno = 230 && movecontact) || (stateno = 430 && movecontact) || (stateno = 400 && movecontact) || (stateno = 210 && (anim = 211 || anim = 10211) && movecontact)
;trigger2 = (stateno = 200 && anim = 201 && movecontact) || (stateno = 230 && anim = 231 && movecontact) || (stateno = 430 && movecontact)
trigger3 = numhelper(3050) && ((stateno = 210) && movecontact)
trigger4 = stateno = 1161
trigger4 = animelemtime(3) >= 0 || movecontact

[State -1, Jump CD]
type = ChangeState
value = 620
triggerall = (var(55)<5 && command = "hphk") || var(52) = 620
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = numhelper(3050) && ((stateno = 600 || stateno = 630 || stateno = 610 || stateno = 640) && movecontact)


[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = (var(55)<5 && command = "x") || var(52) = 600
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = (var(55)<5 && command = "y") || var(52) = 610
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = numhelper(3050) && ((stateno = 600 || stateno = 630 || stateno = 640) && movecontact)

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = (var(55)<5 && command = "a") || var(52) = 630
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = numhelper(3050) && ((stateno = 600) && movecontact)

;---------------------------------------------------------------------------
;Jump Strong Kick
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = (var(55)<5 && command = "b") || var(52) = 640
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = numhelper(3050) && ((stateno = 600 || stateno = 630) && movecontact)

[State -1, Air combo lol]
type = ChangeState
value = ifelse(statetype=A,45,40)
triggerall = (command = "holdup") || var(52) = [40,45]
trigger1 = var(55)
trigger1 = stateno != 40
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 410
trigger3 = movehit
trigger3 = numhelper(3050)
trigger4 = stateno = 3060
trigger4 = ctrl
trigger5 = stateno = 1250
trigger5 = anim = 1251 || anim = 1252


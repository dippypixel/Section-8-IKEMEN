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
name = "QCFSup"
command = ~D, DF, F, x+y
[Command]
name = "QCFSup"
command = ~D, DF, F, y+z
[Command]
name = "QCFSup"
command = ~D, DF, F, x+z
[Command]
name = "QCBSup"
command = ~D, DB, B, x+y
[Command]
name = "QCBSup"
command = ~D, DB, B, y+z
[Command]
name = "QCBSup"
command = ~D, DB, B, x+z
[Command]
name = "QCFKiss"
command = ~D, DF, F, a+b
[Command]
name = "QCFKiss"
command = ~D, DF, F, b+c
[Command]
name = "QCFKiss"
command = ~D, DF, F, a+c
[Command]
name = "QCBKiss"
command = ~D, DB, B, a+b
[Command]
name = "QCBKiss"
command = ~D, DB, B, b+c
[Command]
name = "QCBKiss"
command = ~D, DB, B, a+c
[Command]
name = "QCBEat"
command = ~D, DB, B, b+y
[Command]
name = "QCFEat"
command = ~D, DF, F, b+y


;-| Special Motions |------------------------------------------------------
[Command]
name = "MegaPunch_x"
command = ~B, F, x
[Command]
name = "MegaPunch_y"
command = ~B, F, y
[Command]
name = "MegaPunch_z"
command = ~B, F, z
[Command]
name = "MegaPunch_fk"
command = ~B, F, x+y
[Command]
name = "MegaPunch_fk"
command = ~B, F, y+z
[Command]
name = "MegaPunch_fk"
command = ~B, F, x+z

[Command]
name = "r_MegaPunch_x"
command = ~F, B, x
[Command]
name = "r_MegaPunch_y"
command = ~F, B, y
[Command]
name = "r_MegaPunch_z"
command = ~F, B, z
[Command]
name = "r_MegaPunch_fk"
command = ~F, B, x+y
[Command]
name = "r_MegaPunch_fk"
command = ~F, B, y+z
[Command]
name = "r_MegaPunch_fk"
command = ~F, B, x+z

[Command]
name = "HCB_p"
command = ~F, D, B, x
[Command]
name = "HCB_p"
command = ~F, D, B, y
[Command]
name = "HCB_p"
command = ~F, D, B, z
[Command]
name = "HCB_p"
command = ~F, DF, D, DB, B, x
[Command]
name = "HCB_p"
command = ~F, DF, D, DB, B, y
[Command]
name = "HCB_p"
command = ~F, DF, D, DB, B, z

[Command]
name = "HCF_p"
command = ~B, D, F, x
[Command]
name = "HCF_p"
command = ~B, D, F, y
[Command]
name = "HCF_p"
command = ~B, D, F, z
[Command]
name = "HCF_p"
command = ~B, DB, D, DF, F, x
[Command]
name = "HCF_p"
command = ~B, DB, D, DF, F, y
[Command]
name = "HCF_p"
command = ~B, DB, D, DF, F, z

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

[Command]
name = "IceWall1"
command = ~D, U, x
[Command]
name = "IceWall2"
command = ~D, U, y
[Command]
name = "IceWall3"
command = ~D, U, z

[Command]
name = "AssSmack1"
command = ~D, U, a
[Command]
name = "AssSmack2"
command = ~D, U, b
[Command]
name = "AssSmack3"
command = ~D, U, c

[Command]
name = "QCF_k"
command = ~D, DF, F, a
[Command]
name = "QCF_k"
command = ~D, DF, F, b
[Command]
name = "QCF_k"
command = ~D, DF, F, c
[Command]
name = "QCB_k"
command = ~D, DB, B, a
[Command]
name = "QCB_k"
command = ~D, DB, B, b
[Command]
name = "QCB_k"
command = ~D, DB, B, c

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
name = "Dodge"
command = x+a
time = 1

[Command]
name = "CD"
command = y+b
time = 1

[Command]
name = "Cheetos"
command = z+c
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
trigger2 = movecontact
trigger3 = stateno = 40
var(9) = 1

[State -1, Go ballistic]
type = ChangeState
value = 730
triggerall = var(29) = -2
trigger1 = var(9) ;Use combo condition (above)

; AI-related stuff starts here

[State -1, Considerator Reset]
type = VarSet
trigger1 = 1
var(52) = 0

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
trigger2 = random < 50
trigger2 = stateno = [200,499]
trigger2 = moveguarded
var(52) = ifelse(random<500,42,48)

[State AI, Consider S.X]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (10*(var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),80*const(size.xscale)-(10*movecontact)]
triggerall = p2dist y >= ifelse(p2bodydist x<=20,-50,-55)*const(size.yscale) - (enemynear,vel y*ifelse(p2bodydist x<=20,4,5))
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= ifelse(p2bodydist x<=20,-50,-70)*const(size.yscale)
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 230
trigger2 = animtime >= -5 || movecontact
var(52) = 200
ignorehitpause = 1
[State AI, Consider S.Y]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (8*(var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),90*const(size.xscale)-(10*movecontact)]
triggerall = p2dist y >= ifelse(p2bodydist x<=8,-42,-50)*const(size.yscale) - (enemynear,vel y*ifelse(p2bodydist x<=8,8,5))
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= ifelse(p2bodydist x<=8,-42,-70)*const(size.yscale)
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || stateno = 400 || stateno = 230
trigger2 = animtime >= -5 || movecontact
var(52) = 210
ignorehitpause = 1
[State AI, Consider S.Z]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (6*(var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),120*const(size.xscale)-(25*movecontact)]
triggerall = p2dist y >= ifelse(p2bodydist x<=20,-33,-40)*const(size.yscale) - (enemynear,vel y*ifelse(p2bodydist x<=20,3,12))
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= ifelse(p2bodydist x<=20,-65,-60)*const(size.yscale)
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || stateno = 210 || stateno = 230 || stateno = 240 || stateno = 400 || stateno = 430 || stateno = 410 || stateno = 440
trigger2 = animtime >= -5 || movecontact
var(52) = 220
ignorehitpause = 1
[State AI, Consider S.A]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (10*(var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),50*const(size.xscale)-(10*movecontact)]
triggerall = p2dist y >= -30*const(size.yscale) - (enemynear,vel y*5)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -30*const(size.yscale)
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || stateno = 400
trigger2 = animtime >= -5 || movecontact
var(52) = 230
ignorehitpause = 1
[State AI, Consider S.B]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (8*(var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,-8),ifelse(var(47)=0,24,60)*const(size.xscale)-(15*movecontact)]
triggerall = p2dist y >= ifelse(var(47)=0,-133,-35)*const(size.yscale) - (enemynear,vel y*4)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= ifelse(var(47)=0,-40,-10)*const(size.yscale)
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || stateno = 210 || stateno = 230 || stateno = 400 || stateno = 430 || stateno = 410
trigger2 = animtime >= -5 || movecontact
var(52) = 240
ignorehitpause = 1
[State AI, Consider S.C]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (6*(var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),70*const(size.xscale)-(20*movecontact)]
triggerall = p2dist y >= -35*const(size.yscale) - (enemynear,vel y*10)
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || stateno = 210 || stateno = 230 || stateno = 240 || stateno = 400 || stateno = 430 || stateno = 410 || stateno = 440
trigger2 = animtime >= -5 || movecontact
var(52) = 250
ignorehitpause = 1

[State AI, Consider C.X]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (10*(var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),70*const(size.xscale)-(9*movecontact)]
triggerall = p2dist y >= -50*const(size.yscale) - (enemynear,vel y*5)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -50*const(size.yscale)
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 230 || stateno = 430
trigger2 = animtime >= -5 || movecontact
var(52) = 400
ignorehitpause = 1
[State AI, Consider C.Y]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (8*(var(55)*var(55))) * ifelse(movehit,2,1) * ifelse(prevstateno=1050,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,-15),35*const(size.xscale)-(4*movecontact)]
triggerall = p2dist y >= -111*const(size.yscale) - (enemynear,vel y*4)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -30*const(size.yscale)
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || stateno = 400 || stateno = 440 || stateno = 230
trigger2 = animtime >= -5 || movecontact
var(52) = 410
ignorehitpause = 1
[State AI, Consider C.Z]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (6*(var(55)*var(55))) * ifelse(movehit,2,1) * ifelse(prevstateno=1050,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,-20),40*const(size.xscale)-(3*movecontact)]
triggerall = p2dist y >= -130*const(size.yscale) - (enemynear,vel y*3)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -50*const(size.yscale)
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || stateno = 230 || stateno = 240 || stateno = 400 || stateno = 430 || stateno = 440 || stateno = 210
trigger2 = animtime >= -5 || movecontact
var(52) = 420
ignorehitpause = 1
[State AI, Consider C.A]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (10*(var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),60*const(size.xscale)-(9*movecontact)]
triggerall = p2dist y >= -15*const(size.yscale) - (enemynear,vel y*5)
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || stateno = 400
trigger2 = animtime >= -5 || movecontact
var(52) = 430
ignorehitpause = 1
[State AI, Consider C.B]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (8*(var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),70*const(size.xscale)-(9*movecontact)]
triggerall = p2dist y >= -10*const(size.yscale) - (enemynear,vel y*4)
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || stateno = 210 || stateno = 230 || stateno = 400 || stateno = 430
trigger2 = animtime >= -5 || movecontact
var(52) = 440
ignorehitpause = 1
[State AI, Consider C.C]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (6*(var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),85*const(size.xscale)-(18*movecontact)]
triggerall = p2dist y >= -18*const(size.yscale) - (enemynear,vel y*9)
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || stateno = 210 || stateno = 230 || stateno = 240 || stateno = 400 || stateno = 410 || stateno = 430 || stateno = 440
trigger2 = animtime >= -5 || movecontact
var(52) = 450
ignorehitpause = 1

[State AI, J.X]
type = Varset
triggerall = numenemy
triggerall = var(52) = 0 || random < 123
triggerall = var(55)
triggerall = p2bodydist x = [-38+(vel x*4)+(enemynear,vel x*4),69+(vel x*4)+(enemynear,vel x*4)]
triggerall = P2dist y = [-57+(vel y*4)+(enemynear,vel y*4),80+(vel y*4)+(enemynear,vel y*4)]
triggerall = Statetype = A
triggerall = p2stateno != [5100,5120]
triggerall = p2Statetype = A || p2movetype = A || vel y >= 0
triggerall = (stateno != [120,169])
triggerall = random < (5*(var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = time >= 7-var(55) || random < 10
trigger1 = ctrl
var(52) = 600
[State AI, J.Y]
type = Varset
triggerall = numenemy
triggerall = var(52) = 0 || random < 123
triggerall = var(55)
triggerall = p2bodydist x = [-38+(vel x*9)+(enemynear,vel x*9),69+(vel x*9)+(enemynear,vel x*9)]
triggerall = P2dist y = [-42+(vel y*9)+(enemynear,vel y*9),80+(vel y*9)+(enemynear,vel y*9)]
triggerall = Statetype = A
triggerall = p2stateno != [5100,5120]
triggerall = p2Statetype = A || vel y >= 0
triggerall = (stateno != [120,169])
triggerall = random < (5*(var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = time >= 7-var(55) || random < 10
trigger1 = ctrl
var(52) = 610
[State AI, J.Z]
type = Varset
triggerall = numenemy
triggerall = var(52) = 0 || random < 123
triggerall = var(55)
triggerall = p2bodydist x = [-40+(vel x*12)+(enemynear,vel x*12),68+(vel x*12)+(enemynear,vel x*12)]
triggerall = P2dist y = [-38+(vel y*12)+(enemynear,vel y*12),110+(vel y*12)+(enemynear,vel y*12)]
triggerall = Statetype = A
triggerall = p2stateno != [5100,5120]
triggerall = p2Statetype = A || vel y >= 0
triggerall = (stateno != [120,169])
triggerall = random < (5*(var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = time >= 7-var(55) || random < 10
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 610 || stateno = 630 || stateno = 640
trigger2 = movecontact
var(52) = 620
[State AI, J.A]
type = Varset
triggerall = numenemy
triggerall = var(52) = 0 || random < 123
triggerall = var(55)
triggerall = p2bodydist x = [-48+(vel x*6)+(enemynear,vel x*6),28+(vel x*6)+(enemynear,vel x*6)]
triggerall = P2dist y = [-47+(vel y*6)+(enemynear,vel y*6),90+(vel y*6)+(enemynear,vel y*6)]
triggerall = Statetype = A
triggerall = p2stateno != [5100,5120]
triggerall = p2Statetype = A || p2movetype = A || vel y >= 0 || random < 100
triggerall = (stateno != [120,169])
triggerall = random < (5*(var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = time >= 7-var(55) || random < 10
trigger1 = ctrl
var(52) = 630
[State AI, J.B]
type = Varset
triggerall = numenemy
triggerall = var(52) = 0 || random < 123
triggerall = var(55)
triggerall = p2bodydist x = [-48+(vel x*6)+(enemynear,vel x*6),28+(vel x*6)+(enemynear,vel x*6)]
triggerall = P2dist y = [-47+(vel y*6)+(enemynear,vel y*6),90+(vel y*6)+(enemynear,vel y*6)]
triggerall = Statetype = A
triggerall = p2stateno != [5100,5120]
triggerall = p2Statetype = A || vel y >= 0 || random < 100
triggerall = (stateno != [120,169])
triggerall = random < (5*(var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = time >= 7-var(55) || random < 10
trigger1 = ctrl
var(52) = 640
[State AI, J.C]
type = Varset
triggerall = numenemy
triggerall = var(52) = 0 || random < 123
triggerall = var(55)
triggerall = p2bodydist x = [-43+(vel x*11)+(enemynear,vel x*11),22+(vel x*11)+(enemynear,vel x*11)]
triggerall = P2dist y = [-35+(vel y*11)+(enemynear,vel y*11),100+(vel y*11)+(enemynear,vel y*11)]
triggerall = Statetype = A
triggerall = p2stateno != [5100,5120]
triggerall = p2Statetype = A || vel y >= 0
triggerall = (stateno != [120,169])
triggerall = random < (5*(var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = time >= 7-var(55) || random < 10
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 610 || stateno = 630 || stateno = 640
trigger2 = movecontact
var(52) = 650

[State AI, Consider Balrog Punching]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (2*(var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 250)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,10),200*const(size.xscale)-(25*(movecontact>=1))]
triggerall = p2dist y >= -40*const(size.yscale) - (enemynear,vel y*10)
triggerall = (p2bodydist x >= 120*const(size.xscale)-(25*(movecontact>=1))) || (stateno != [210,220]) || (var(55)<8) || (p2statetype=A) || (moveguarded) ; Linky
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= ifelse(var(47)=0,-50,-30)*const(size.yscale)
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = stateno != 100 || random < 50
trigger1 = var(9)
trigger1 = !moveguarded
var(52) = ifelse(p2bodydist x>=160-(25*(movecontact>=1))||random<250,1020,ifelse(p2bodydist x>=130-(25*(movecontact>=1))||random<250,1010,1000))
ignorehitpause = 1
[State AI, Consider Freezing]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (1.5*(var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 50)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x >= 100*const(size.xscale) || movehit
triggerall = p2dist y >= -88*const(size.yscale) - (enemynear,vel y*9)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -80*const(size.yscale)
triggerall = (p2bodydist x >= 120*const(size.xscale)-(25*(movecontact>=1))) || (stateno != [210,220]) || (var(55)<8) || (p2statetype=A) || (moveguarded) ; Linky
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
triggerall = !(var(43) & floor(exp(0*ln(2)) + 0.5) )
triggerall = p2stateno != 1105
triggerall = prevstateno != [1100,1110]
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = stateno != 100 || random < 60
trigger1 = var(9)
var(52) = ifelse(var(29)>1&&var(47)=0&&random<222,2000,ifelse(movehit,1120,1100+((random%3)*10)))
[State AI, Consider an Anti-air]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (2*(var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 250)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,10),35*const(size.xscale)-(25*(movecontact>=1))]
triggerall = p2dist y >= -190*const(size.yscale) - (enemynear,vel y*5)
;triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -55*const(size.yscale)
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
triggerall = !(var(43) & floor(exp(1*ln(2)) + 0.5) )
triggerall = p2stateno != 1105
triggerall = var(47) = 0
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = stateno != 100 || random < 50
trigger1 = var(9)
var(52) = 1200
ignorehitpause = 1
[State AI, Consider punching the fuck out]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || (random < 80+var(55))
;triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (3*(var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 100)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,10),42*const(size.xscale)-(25*(movecontact>=1))]
triggerall = p2statetype != A
;triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -55*const(size.yscale)
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
triggerall = var(47) = 0
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = stateno != 100 || random < 50
trigger1 = var(9)
var(52) = 1300
ignorehitpause = 1

[State AI, Consider Shaking The Ground]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (1.5*(var(55)*var(55))) * ifelse(moveguarded,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 50)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x >= 100*const(size.xscale) || moveguarded
triggerall = p2dist y >= -10*const(size.yscale) - (enemynear,vel y*30)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -80*const(size.yscale)
triggerall = (p2bodydist x >= 120*const(size.xscale)-(25*(movecontact>=1))) || (stateno != [210,220]) || (var(55)<8) || (p2statetype=A) || (moveguarded) ; Linky
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
triggerall = !(var(42) & floor(exp(2*ln(2)) + 0.5) )
triggerall = var(47) = 1
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = stateno != 100 || random < 60
trigger1 = var(9)
var(52) = ifelse(movehit,1200,1220)
[State AI, Consider Making a Fart Joke]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (1.5*(var(55)*var(55))) * ifelse((p2stateno=[5080,5120]),2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0)
triggerall = p2bodydist x >= 100*const(size.xscale) || moveguarded || (p2stateno = [5080,5130])
triggerall = (p2bodydist x >= 120*const(size.xscale)-(25*(movecontact>=1))) || (stateno != [210,220]) || (var(55)<8) || (p2statetype=A) || (moveguarded) ; Linky
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
triggerall = !numhelper(1400)
triggerall = var(47) = 1
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = stateno != 100 || random < 60
trigger1 = var(9)
var(52) = ifelse(var(29)>2&&random<123,2000,1400)
[State AI, Consider BA.A]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 55+var(55)
triggerall = var(55)
triggerall = random < (2*(var(55)*var(55))) + (100*(stateno=52)) + (350*(p2statetype=L||(p2dist y>-10&&enemynear,vel y>=0)))
triggerall = p2stateno != [5110,5120]
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2bodydist x = [-8,40]
triggerall = p2dist y >= -88 - (enemynear,vel y*24)
triggerall = (p2bodydist x >= 120*const(size.xscale)-(25*(movecontact>=1))) || (stateno != [210,220]) || (var(55)<8) || (p2statetype=A) || (moveguarded) ; Linky
triggerall = statetype != A
triggerall = !(var(42) & floor(exp(3*ln(2)) + 0.5) )
triggerall = time >= 7-var(55) || random < 10
triggerall = var(47) = 1
triggerall = prevstateno != [800,899]
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 100 || (p2movetype = H && p2statetype != S)
trigger1 = var(9)
trigger1 = ctrl || (moveguarded && p2statetype = C) || (movehit && p2statetype = A)
var(52) = 1350
ignorehitpause = 1
[State AI, Consider BA.B]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 55+var(55)
triggerall = var(55)
triggerall = random < (2*(var(55)*var(55))) + (100*(stateno=52)) + (350*(p2statetype=L||(p2dist y>-10&&enemynear,vel y>=0)))
triggerall = p2stateno != [5110,5120]
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2bodydist x = [55,110]
triggerall = p2dist y >= -88 - (enemynear,vel y*24)
triggerall = (p2bodydist x >= 120*const(size.xscale)-(25*(movecontact>=1))) || (stateno != [210,220]) || (var(55)<8) || (p2statetype=A) || (moveguarded) ; Linky
triggerall = statetype != A
triggerall = !(var(42) & floor(exp(3*ln(2)) + 0.5) )
triggerall = time >= 7-var(55) || random < 10
triggerall = var(47) = 1
triggerall = prevstateno != [800,899]
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 100 || (p2movetype = H && p2statetype != S)
trigger1 = var(9)
trigger1 = ctrl || (moveguarded && p2statetype = C) || (movehit && p2statetype = A)
var(52) = 1360
ignorehitpause = 1
[State AI, Consider BA.C]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 55+var(55)
triggerall = var(55)
triggerall = random < (2*(var(55)*var(55))) + (100*(stateno=52)) + (350*(p2statetype=L||(p2dist y>-10&&enemynear,vel y>=0)))
triggerall = p2stateno != [5110,5120]
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2bodydist x = [130,170]
triggerall = p2dist y >= -88 - (enemynear,vel y*24)
triggerall = (p2bodydist x >= 120*const(size.xscale)-(25*(movecontact>=1))) || (stateno != [210,220]) || (var(55)<8) || (p2statetype=A) || (moveguarded) ; Linky
triggerall = statetype != A
triggerall = !(var(42) & floor(exp(3*ln(2)) + 0.5) )
triggerall = time >= 7-var(55) || random < 10
triggerall = var(47) = 1
triggerall = prevstateno != [800,899]
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 100 || (p2movetype = H && p2statetype != S)
trigger1 = var(9)
trigger1 = ctrl || (moveguarded && p2statetype = C) || (movehit && p2statetype = A)
var(52) = 1370
ignorehitpause = 1


[State AI, Consider Ripping Off Sheeva]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,255]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (3*(var(55)*var(55))) * ifelse(movehit,3,1)
triggerall = random < 300 + ((lifemax - life)/16)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5140]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),60*const(size.xscale)-(11*(movecontact>=1))]
triggerall = p2dist y >= -40*const(size.yscale) - (enemynear,vel y*11)
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*11) + (enemynear, pos y) <= -11 ) || (p2stateno != [5030,5120])
triggerall = power >= 1000
triggerall = (p2movetype = H) || (enemynear, ctrl = 0) || (enemynear, statetype = A)
triggerall = p2stateno != [120,165]
triggerall = (prevstateno != [2000,3902]) || (stateno = [2000,3902])
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
triggerall = p2stateno != 3005
triggerall = (enemynear,GetHitVar(hittime) >= 8 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
triggerall = var(47) = 0
trigger1 = anim != 20
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = stateno != 410
trigger1 = var(9)
trigger1 = !moveguarded || random < 80
trigger2 = (stateno = [1000,1070]) && (movehit)
var(52) = 3000
ignorehitpause = 1
[State AI, Consider Beating the fuck out]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || (random < 80+var(55))
;triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,255]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (2*(var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = random < 300 + ((lifemax - life)/16)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 333)
triggerall = p2stateno != [5080,5140]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),45*const(size.xscale)-(11*(movecontact>=1))]
triggerall = p2statetype != A
triggerall = power >= 1000
triggerall = (p2movetype = H) || (enemynear, ctrl = 0) || (enemynear, statetype = A)
triggerall = p2stateno != [120,165]
triggerall = (prevstateno != [2000,3902]) || (stateno = [2000,3902])
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
triggerall = p2stateno != 3005
triggerall = (enemynear,GetHitVar(hittime) >= 8 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
triggerall = var(47) = 0
trigger1 = anim != 20
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = stateno != 410
trigger1 = var(9)
trigger1 = !moveguarded || random < 80
trigger2 = (stateno = [1000,1070]) && (movehit)
var(52) = 3100
ignorehitpause = 1
[State AI, Consider An Autocombo]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,255]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (3*(var(55)*var(55))) * ifelse(movehit,3,1)
triggerall = random < 300 + ((lifemax - life)/16)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 450)
triggerall = p2stateno != [5080,5140]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),130*const(size.xscale)-(11*(movecontact>=1))]
triggerall = p2dist y >= -25*const(size.yscale) - (enemynear,vel y*11)
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*11) + (enemynear, pos y) <= -11 ) || (p2stateno != [5030,5120])
triggerall = power >= 2000
triggerall = (p2movetype = H) || (enemynear, ctrl = 0) || (enemynear, statetype = A)
triggerall = p2stateno != [120,165]
triggerall = (prevstateno != [2000,3902]) || (stateno = [2000,3902])
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
triggerall = p2stateno != 3005
triggerall = (enemynear,GetHitVar(hittime) >= 8 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
triggerall = var(47) = 0
trigger1 = anim != 20
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = stateno != 410
trigger1 = var(9)
trigger1 = !moveguarded || random < 80
trigger2 = (stateno = [1000,1070]) && (movehit)
var(52) = 3050
ignorehitpause = 1
[State AI, Consider Pissing Off Shrek]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || (random < 99+var(55))
;triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,255]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (3*(var(55)*var(55))) * ifelse(movehit,3,1)
triggerall = random < 300 + ((lifemax - life)/16)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 850)
triggerall = p2stateno != [5080,5140]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),25*const(size.xscale)-(11*(movecontact>=1))]
triggerall = p2dist y >= -30*const(size.yscale) - (enemynear,vel y*3)
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*3) + (enemynear, pos y) <= -3 ) || (p2stateno != [5030,5120])
triggerall = power >= 1000
triggerall = (p2movetype = H) || (enemynear, ctrl = 0) || (enemynear, statetype = A)
triggerall = p2stateno != [120,165]
triggerall = (prevstateno != [2000,3902]) || (stateno = [2000,3902])
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
triggerall = p2stateno != 3005
triggerall = (enemynear,GetHitVar(hittime) >= 2 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
triggerall = var(47) = 1
trigger1 = anim != 20
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = stateno != 410
trigger1 = var(9)
;trigger1 = !moveguarded || random < 80
trigger2 = (stateno = [1000,1070]) && (movehit)
var(52) = 3050
ignorehitpause = 1
[State AI, Consider Drinking Your Own Piss]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,255]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (3*(var(55)*var(55))) * ifelse(movehit,3,1)
triggerall = random < 300 + ((lifemax - life)/16)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5140]
triggerall = p2bodydist x >= 100*const(size.xscale) || (movehit)
triggerall = p2dist y >= -40*const(size.yscale) - (enemynear,vel y*8)
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*8) + (enemynear, pos y) <= -11 ) || (p2stateno != [5030,5120])
triggerall = (p2bodydist x >= 120*const(size.xscale)-(25*(movecontact>=1))) || (stateno != [210,220]) || (var(55)<8) || (p2statetype=A) || (moveguarded) ; Linky
triggerall = power >= 1000
triggerall = (p2movetype = H) || (enemynear, ctrl = 0) || (enemynear, statetype = A)
triggerall = p2stateno != [120,165]
triggerall = (prevstateno != [2000,3902]) || (stateno = [2000,3902])
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
triggerall = p2stateno != 3005
triggerall = (enemynear,GetHitVar(hittime) >= 8 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
triggerall = var(47) = 1
trigger1 = anim != 20
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = stateno != 410
trigger1 = var(9)
trigger1 = !moveguarded || random < 80
trigger2 = (stateno = [1000,1070]) && (movehit)
var(52) = 3000
ignorehitpause = 1
[State AI, Consider Bouncing Like That Daikatana Weapon]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,255]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (3*(var(55)*var(55))) * ifelse(movehit,3,1)
triggerall = random < 300 + ((lifemax - life)/16)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5140]
;triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),70*const(size.xscale)-(11*(movecontact>=1))]
triggerall = p2dist y >= -80*const(size.yscale) - (enemynear,vel y*11)
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*11) + (enemynear, pos y) <= -11 ) || (p2stateno != [5030,5120])
triggerall = power >= 2000
triggerall = (p2movetype = H) || (enemynear, ctrl = 0) || (enemynear, statetype = A)
triggerall = p2stateno != [120,165]
triggerall = (prevstateno != [2000,3902]) || (stateno = [2000,3902])
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
triggerall = p2stateno != 3005
triggerall = (enemynear,GetHitVar(hittime) >= 8 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
triggerall = var(47) = 1
trigger1 = anim != 20
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = stateno != 410
trigger1 = var(9)
trigger1 = !moveguarded || random < 80
trigger2 = (stateno = [1000,1070]) && (movehit)
var(52) = 3250
ignorehitpause = 1

[State AI, Consider Eating Small People]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || (random < 99+var(55))
;triggerall = var(52) = 0 || ( (random < 99+var(55)) && (var(52)!=[200,255]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (4*(var(55)*var(55))) * ifelse(movecontact,3,1)
triggerall = random < 300 + ((lifemax - life)/16)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5140]
triggerall = enemynear,prevstateno != 5120
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),65*const(size.xscale)-(11*(movecontact>=1))]
triggerall = power >= 1000
;triggerall = (p2movetype = H) || (enemynear, ctrl = 0) || (enemynear, statetype = A)
triggerall = p2statetype != A
triggerall = (prevstateno != [2000,3902]) || (stateno = [2000,3902])
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
triggerall = p2stateno != 3005
triggerall = (enemynear,GetHitVar(hittime) >= 8 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
triggerall = enemynear,const(size.head.pos.y) >= -40
trigger1 = anim != 20
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = var(9)
;trigger1 = !moveguarded || random < 80
trigger2 = (stateno = [1000,1070]) && (movehit)
var(52) = 3300
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
triggerall = var(8) = 0
trigger1 = stateno != 40
trigger1 = ctrl
var(52) = ifelse(random<100&&var(47)=0,1300,800)
ignorehitpause = 1
[State -1, Consider an Air Throw]
type = Varset
triggerall = var(55)
triggerall = statetype = A
triggerall = ctrl || ((stateno = [600,650]) && movehit)
triggerall = p2bodydist X < 10
triggerall = abs(p2bodydist y) < 35
triggerall = (p2statetype = A)
triggerall = var(47) = 0
trigger1 = p2movetype != H || (random < 500) || p2movetype = A
trigger2 = (var(40) & floor(exp(7*ln(2)) + 0.5) ) && (var(40) & floor(exp(8*ln(2)) + 0.5) ) && (var(40) & floor(exp(9*ln(2)) + 0.5) )
var(52) = 830

[State AI, Consider Advancing]
type = VarSet
triggerall = var(55)
triggerall = var(52) = 0 || random < 80+var(55)
triggerall = random < (4*(var(55)*var(55)))
triggerall = ((enemynear, ctrl = 0) && p2movetype != A) || (p2movetype = A && (enemynear, facing = facing))
triggerall = (p2stateno != [5080,5130]) || (p2bodydist x = [45,100])
triggerall = p2bodydist x >= 45
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 100
trigger1 = ctrl
trigger1 = !moveguarded
var(52) = ifelse(random<200,41,47)
[State AI, Consider jumping in]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+var(55) + (100*(stateno = 640)) + (100*(stateno = 240))
triggerall = var(55)
triggerall = p2stateno != [5080,5130]
triggerall = statetype != A
triggerall = p2statetype = A && p2movetype = H
triggerall = (enemynear, pos y <= ifelse(p2bodydist x<=40*const(size.xscale),-140,-99))
trigger1 = ctrl || stateno = 100 || stateno = 40
trigger2 = stateno = 410 || stateno = 420 || stateno = 220 || stateno = 250
trigger2 = movehit
var(52) = ifelse(p2bodydist x>=20,ifelse(p2bodydist x>=160,44,41),42)
ignorehitpause = 1

[State AI, Consider Countering/Guard Canceling]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 55
triggerall = var(55)
triggerall = random < 10 + ifelse(p2life - life<0,0,(p2life - life)/4)
triggerall = random < (10*(var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = p2bodydist x = [-5,60]
triggerall = p2dist y >= -70
triggerall = statetype != A
triggerall = power >= 500
triggerall = power < 2500 || random < 150 || power >= 3500
trigger1 = stateno = 150 || stateno = 152
var(52) = 700
ignorehitpause = 1

[State AI, Consider HAH]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 55
triggerall = var(55)
triggerall = random < (10*(var(55)*var(55)))
triggerall = p2bodydist x = [-5,82]
triggerall = p2dist y >= -70
triggerall = p2movetype != A
triggerall = !(enemynear,ctrl)
trigger1 = stateno = 710
var(52) = 711
ignorehitpause = 1


[State AI, PUNCHOUT]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 55
triggerall = var(55)
triggerall = random < (12*(var(55)*var(55)))
trigger1 = stateno = 1310
trigger1 = time
trigger2 = stateno = 1311
trigger2 = animelemtime(6) >= 0
var(52) = ifelse(fvar(0) <= 210&&random<900,1311,ifelse(fvar(0) <= 190,1316,ifelse(fvar(0) <= 200,1315,1314)))
ignorehitpause = 1

[State AI, Guard S]
type = ChangeState
triggerall = stateno != 40
triggerall = random < 125*var(55)
triggerall = (var(55)) && (StateType != A) && (Ctrl) && (EnemyNear, Facing != Facing) && (var(50)<40)
trigger1 = (P2StateType != C) && (((P2MoveType = A) && (inguarddist)) || (EnemyNear, NumProj > 0))
value = ifelse(random<50&&p2bodydist x<=100&&(stateno!=[120,159]),710,130)

[State AI, Guard L]
type = ChangeState
triggerall = stateno != 40
triggerall = random < 125*var(55)
triggerall = (var(55)) && (StateType != A) && (Ctrl) && (EnemyNear, Facing != Facing) && (var(50)<40)
trigger1 = (P2StateType = C) && (((P2MoveType = A) && (inguarddist)) || (EnemyNear, NumProj > 0))
value = ifelse(random<50&&p2bodydist x<=100&&(stateno!=[120,159]),710,131)


; AI-related stuff ends here

;---------------------------------------------------------------------------
;Super Moves Moves
[State -1, Friggin' Ripoff of Sheeva]
type = ChangeState
value = ifelse(var(47)=0,3000,3150)
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "QCFSup",command = "QCBSup")) || var(52) = 3000
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = var(9) ;Use combo condition (above)
trigger2 = stateno = [1000,1070]
trigger2 = movecontact

[State -1, TO DA MOON]
type = ChangeState
value = 3100
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "QCBSup",command = "QCFSup")) || var(52) = 3100
triggerall = power >= 1000
triggerall = statetype != A
triggerall = var(47) = 0
trigger1 = var(9) ;Use combo condition (above)
trigger2 = stateno = [1000,1070]
trigger2 = movecontact

[State -1, Shrek Is Piss]
type = ChangeState
value = ifelse(var(47)=0,3200,3050)
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "QCFKiss",command = "QCBKiss")) || var(52) = 3050
triggerall = power >= ifelse(var(47)=1,1000,2000)
triggerall = statetype != A
;triggerall = var(47) = 1
trigger1 = var(9) ;Use combo condition (above)
trigger2 = stateno = [1000,1070]
trigger2 = movecontact

[State -1, INCEPTION]
type = ChangeState
value = 3250
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "QCBKiss",command = "QCFKiss")) || var(52) = 3250
triggerall = power >= 2000
triggerall = statetype != A
triggerall = var(47) = 1
trigger1 = var(9) ;Use combo condition (above)
trigger2 = stateno = [1000,1070]
trigger2 = movecontact

[State -1, Eat small people]
type = ChangeState
value = 3300
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "QCBEat",command = "QCFEat")) || var(52) = 3300
triggerall = power >= 1000
triggerall = statetype != A
triggerall = numenemy
triggerall = enemynear,const(size.head.pos.y) >= -40
trigger1 = var(9) ;Use combo condition (above)
trigger2 = stateno = [1000,1070]
trigger2 = movecontact

[State -1, Desperation Attack]
type = ChangeState
value = ifelse(var(47)=0,2000,2100)
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "QCFEat",command = "QCBEat")) || var(52) = 2000
triggerall = var(29) > 1
triggerall = statetype != A
;triggerall = var(47) = 1
trigger1 = var(9) ;Use combo condition (above)
trigger2 = stateno = [1000,1070]
trigger2 = movecontact


;---------------------------------------------------------------------------
;Special Moves
[State -1, Gotcha Grab]
type = ChangeState
value = 1300
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "HCB_p",command = "HCF_p")) || var(52) = 1300
triggerall = var(47) = 0
trigger1 = var(9) ;Use combo condition (above)

[State -1, Gotcha Grab - Punch]
type = ChangeState
value = 1311
triggerall = (command = "x" || command = "y" || command = "z") || var(52) = 1311
triggerall = fvar(0) < 240
trigger1 = stateno = 1310
trigger1 = time
trigger2 = stateno = 1311
trigger2 = animelemtime(6) >= 0

[State -1, Gotcha Grab - Uppercut]
type = ChangeState
value = 1314
triggerall = (command = "a") || var(52) = 1314
trigger1 = stateno = 1310
trigger1 = time
trigger2 = stateno = 1311
trigger2 = animelemtime(6) >= 0

[State -1, Gotcha Grab - Uppercut]
type = ChangeState
value = 1315
triggerall = (command = "b") || var(52) = 1315
trigger1 = stateno = 1310
trigger1 = time
trigger2 = stateno = 1311
trigger2 = animelemtime(6) >= 0

[State -1, Gotcha Grab - Uppercut]
type = ChangeState
value = 1316
triggerall = (command = "c") || var(52) = 1316
trigger1 = stateno = 1310
trigger1 = time
trigger2 = stateno = 1311
trigger2 = animelemtime(6) >= 0

[State -1, Ice Breath]
type = ChangeState
value = 1100 + ifelse(var(47)=1,50,0)
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "QCF_x",command = "QCB_x")) || var(52) = 1100
triggerall = !numhelper(1100)
triggerall = p2stateno != 1105 || p2movetype != H
trigger1 = var(9) ;Use combo condition (above)

[State -1, Ice Breath]
type = ChangeState
value = 1110 + ifelse(var(47)=1,50,0)
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "QCF_y",command = "QCB_y")) || var(52) = 1110
triggerall = !numhelper(1100)
triggerall = p2stateno != 1105 || p2movetype != H
trigger1 = var(9) ;Use combo condition (above)

[State -1, Ice Breath]
type = ChangeState
value = 1120 + ifelse(var(47)=1,50,0)
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "QCF_z",command = "QCB_z")) || var(52) = 1120
triggerall = !numhelper(1100)
triggerall = p2stateno != 1105 || p2movetype != H
trigger1 = var(9) ;Use combo condition (above)

[State -1, Fart Joke]
type = ChangeState
value = 1400
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "QCB_k",command = "QCF_k")) || var(52) = 1400
triggerall = !numhelper(1400)
triggerall = var(47)=1
trigger1 = var(9) ;Use combo condition (above)


[State -1, Mega Punch X]
type = ChangeState
value = 1000 + ifelse(var(47)=1,50,0)
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "MegaPunch_x",command = "r_MegaPunch_x")) || var(52) = 1000
trigger1 = var(9) ;Use combo condition (above)

[State -1, Mega Punch Y]
type = ChangeState
value = 1010 + ifelse(var(47)=1,40,0)
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "MegaPunch_y",command = "r_MegaPunch_y")) || var(52) = 1010
trigger1 = var(9) ;Use combo condition (above)

[State -1, Mega Punch Z]
type = ChangeState
value = 1020 + ifelse(var(47)=1,30,0)
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "MegaPunch_z",command = "r_MegaPunch_z")) || var(52) = 1020
trigger1 = var(9) ;Use combo condition (above)

[State -1, IceWall]
type = ChangeState
value = 1200 + ifelse(var(47)=1,50,0)
triggerall = (var(55)<5 && command = "IceWall1") || var(52) = 1200
triggerall = p2stateno != 1105 || p2movetype != H
triggerall = !(var(43) & floor(exp(1*ln(2)) + 0.5) )
trigger1 = var(9) ;Use combo condition (above)

[State -1, IceWall]
type = ChangeState
value = 1200 + ifelse(var(47)=1,60,0)
triggerall = (var(55)<5 && command = "IceWall2") || var(52) = 1210
triggerall = p2stateno != 1105 || p2movetype != H
triggerall = !(var(43) & floor(exp(1*ln(2)) + 0.5) )
trigger1 = var(9) ;Use combo condition (above)

[State -1, IceWall]
type = ChangeState
value = 1200 + ifelse(var(47)=1,70,0)
triggerall = (var(55)<5 && command = "IceWall3") || var(52) = 1220
triggerall = p2stateno != 1105 || p2movetype != H
triggerall = !(var(43) & floor(exp(1*ln(2)) + 0.5) )
trigger1 = var(9) ;Use combo condition (above)

[State -1, Ass Smack]
type = ChangeState
value = 1350
triggerall = (var(55)<5 && command = "AssSmack1") || var(52) = 1350
triggerall = var(47) = 1
trigger1 = var(9) ;Use combo condition (above)
[State -1, Ass Smack]
type = ChangeState
value = 1360
triggerall = (var(55)<5 && command = "AssSmack2") || var(52) = 1360
triggerall = var(47) = 1
trigger1 = var(9) ;Use combo condition (above)
[State -1, Ass Smack]
type = ChangeState
value = 1370
triggerall = (var(55)<5 && command = "AssSmack3") || var(52) = 1370
triggerall = var(47) = 1
trigger1 = var(9) ;Use combo condition (above)

[State -1, Dodge]
type = ChangeState
value = 710
triggerall = (var(55)<5 && command = "Dodge")  || var(52) = 710
trigger1 = var(9) ;Use combo condition (above)

[State -1, Dodge Attack]
type = ChangeState
value = 711
triggerall = (var(55)<5 && (command = "x" || command = "y" || command = "z" || command = "a" || command = "b" || command = "c"))  || var(52) = 711
trigger1 = stateno = 710
trigger1 = animelemtime(3) >= 0
trigger1 = animelemtime(8) < 0

[State -1, AKUMA]
type = ChangeState
value = 700
triggerall = (!var(55) && command = "CD")  || var(52) = 700
triggerall = power >= 500
triggerall = statetype != A
trigger1 = stateno = [150,154]

;---------------------------------------------------------------------------
;Kung Fu Throw
;“Š‚°
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = (command = "z" && (command = "holdfwd" || command = "holdback")) || var(52) = 800
triggerall = statetype != A
triggerall = ctrl
triggerall = stateno != 100
;triggerall = var(8) <= 0
trigger1 = p2bodydist X < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
;trigger1 = p2movetype != H
[State -1, Air Throw]
type = ChangeState
value = 830
triggerall = ((command = "z" || command = "c") && (command = "holdfwd" || command = "holdback")) || var(52) = 830
triggerall = statetype = A
triggerall = var(47) = 0
triggerall = p2bodydist X < 10
triggerall = abs(p2bodydist y) < 35
triggerall = (p2statetype = A)
trigger1 = ctrl
trigger2 = stateno = [600,650]
trigger2 = movehit
;trigger1 = p2movetype != H

;===========================================================================
;---------------------------------------------------------------------------
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = (var(55)<5 && (command = "x" && command != "holddown")) || var(52) = 200
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 230
trigger2 = animtime >= -5 || movecontact

[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = (var(55)<5 && (command = "y" && command != "holddown")) || var(52) = 210
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 400 || stateno = 230 || (stateno = 240 && prevstateno != 210)
trigger2 = animtime >= -5 || movecontact

[State -1, Stand Hard Punch]
type = ChangeState
value = 220
triggerall = (var(55)<5 && (command = "z" && command != "holddown")) || var(52) = 220
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 210 || stateno = 230 || stateno = 240 || stateno = 400 || stateno = 430 || stateno = 410 || stateno = 440
trigger2 = animtime >= -5 || movecontact

[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = (var(55)<5 && (command = "a" && command != "holddown")) || var(52) = 230
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 400
trigger2 = animtime >= -5 || movecontact

[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = (var(55)<5 && (command = "b" && command != "holddown")) || var(52) = 240
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 210 || stateno = 230 || stateno = 400 || stateno = 430 || stateno = 410
trigger2 = animtime >= -5 || movecontact

[State -1, Stand Hard Kick]
type = ChangeState
value = 250
triggerall = (var(55)<5 && (command = "c" && command != "holddown")) || var(52) = 250
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 210 || stateno = 230 || stateno = 240 || stateno = 400 || stateno = 430 || stateno = 410 || stateno = 440
trigger2 = animtime >= -5 || movecontact

;===========================================================================
;---------------------------------------------------------------------------
[State -1, Crouch Light Punch]
type = ChangeState
value = 400
triggerall = (var(55)<5 && (command = "x" && command = "holddown")) || var(52) = 400
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 230 || stateno = 430
trigger2 = animtime >= -5 || movecontact

[State -1, Crouch Medium Punch]
type = ChangeState
value = 410
triggerall = (var(55)<5 && (command = "y" && command = "holddown")) || var(52) = 410
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 400 || stateno = 440 || stateno = 230
trigger2 = animtime >= -5 || movecontact

[State -1, Crouch Hard Punch]
type = ChangeState
value = 420
triggerall = (var(55)<5 && (command = "z" && command = "holddown")) || var(52) = 420
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 230 || stateno = 240 || stateno = 400 || stateno = 430 || stateno = 440 || stateno = 210
trigger2 = animtime >= -5 || movecontact

[State -1, Crouch Light Kick]
type = ChangeState
value = 430
triggerall = (var(55)<5 && (command = "a" && command = "holddown")) || var(52) = 430
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 400
trigger2 = animtime >= -5 || movecontact

[State -1, Crouch Medium Kick]
type = ChangeState
value = 440
triggerall = (var(55)<5 && (command = "b" && command = "holddown")) || var(52) = 440
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 210 || stateno = 230 || stateno = 400 || stateno = 430
trigger2 = animtime >= -5 || movecontact

[State -1, Crouch Hard Kick]
type = ChangeState
value = 450
triggerall = (var(55)<5 && (command = "c" && command = "holddown")) || var(52) = 450
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 210 || stateno = 230 || stateno = 240 || stateno = 400 || stateno = 410 || stateno = 430 || stateno = 440
trigger2 = animtime >= -5 || movecontact

;---------------------------------------------------------------------------
;Taunt
;’§”­
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = (command = "start") || var(52) = 195 || (var(58) = -2 && winko && !var(48))
triggerall = stateno != 195
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100

;---------------------------------------------------------------------------
;Jump Light Punch
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
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 610 || stateno = 630 || stateno = 640
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
trigger2 = stateno = 600 || stateno = 610 || stateno = 630 || stateno = 640
trigger2 = movecontact

[State -1, Jump]
type = ChangeState
value = 40
triggerall = (var(55)<5 && command = "holdup") || (var(52) = [40,49])
triggerall = statetype != A
trigger1 = ctrl
trigger1 = var(55)
trigger2 = stateno = 410 || stateno = 420 || stateno = 220 || stateno = 250 || stateno = 711
trigger2 = movehit



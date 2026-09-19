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
name = "TripleKFPalm"
command = ~D, DF, F, D, DF, F, x
time = 20

[Command]
name = "TripleKFPalm"   ;Same name as above
command = ~D, DF, F, D, DF, F, y
time = 20

[Command]
name = "Claymore"
command = x+y+z

[Command]
name = "Claymore"
command = c

;[Command]
;name = "Claymore"
;command = ~F, DF, D, DB, B, x+y

;[Command]
;name = "Claymore"
;command = ~F, D, B, x+y

;[Command]
;name = "Claymore_r"
;command = ~B, DB, D, DF, F, x+y

;[Command]
;name = "Claymore_r"
;command = ~B, D, F, x+y

;[Command]
;name = "Claymore"
;command = ~F, DF, D, DB, B, z

;[Command]
;name = "Claymore"
;command = ~F, D, B, z

;[Command]
;name = "Claymore_r"
;command = ~B, DB, D, DF, F, z

;[Command]
;name = "Claymore_r"
;command = ~B, D, F, z


;-| Special Motions |------------------------------------------------------
[Command]
name = "Rufus"
command = ~F, D, DF, y

[Command]
name = "Rufus_r"
command = ~B, D, DB, y

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "DikBall"
command = ~B, DB, D, DF, F, y

[Command]
name = "DikBall"
command = ~B, D, F, y

[Command]
name = "DikBall_r"
command = ~F, DF, D, DB, B, y

[Command]
name = "DikBall_r"
command = ~F, D, B, y

[Command]
name = "RisingToss"
command = ~F, DF, D, DB, B, x

[Command]
name = "RisingToss"
command = ~F, D, B, x

[Command]
name = "RisingToss_r"
command = ~B, DB, D, DF, F, x

[Command]
name = "RisingToss_r"
command = ~B, D, F, x

[Command]
name = "ButtCargo"
command = ~D, DF, F, x

[Command]
name = "ButtCargo_r"
command = ~D, DB, B, x



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
name = "CD"
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
trigger2 = anim != 210 && (anim != 3200 || (anim = 3200 && animelemtime(6)>=0)) && anim != 3210 && (anim != 3400 || (anim = 3400 && animelemtime(5)>=3)) && anim != 3410
trigger2 = anim != 3205 && anim != 3405
trigger2 = (stateno != 410) || (stateno = 410 && animelemtime(6)>=0)
trigger2 = stateno != 420
trigger2 = movecontact
trigger3 = stateno = 100
var(9) = 1


; AI-related stuff starts here

[State AI, RESET]
type = VarSet
trigger1 = 1
var(52) = 0

[State AI, Consider backing off]
type = VarSet
triggerall = var(55)
triggerall = var(52) = 0 || random < 80+var(55)
triggerall = random < (8*(var(55)*var(55)*var(55)))
triggerall = random < 200 + (123*(prevstateno = 440 && (p2stateno=[5070,5100]) ) )
triggerall = numenemy
triggerall = (p2stateno = [5110,5130]) || ((enemynear,time <= 10) && (enemynear,prevstateno = 5120))
triggerall = p2bodydist x <= 40
trigger1 = stateno != 40
trigger1 = ctrl
var(52) = ifelse(backedgebodydist <= 60, 700, ifelse(random<500,43,705) )

[State AI, Consider S.P]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (7*(var(55)*var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),ifelse(var(25)>0,100,18)-(3*movecontact)]
triggerall = p2dist y >= ifelse(var(25)>0,-80,-70) - (enemynear,vel y*3)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= ifelse(var(25)>0,-80,-70)
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger1 = prevstateno != 1060
trigger2 = stateno = 200
trigger2 = var(25) <= 0
trigger2 = movecontact >= 2
var(52) = 200
ignorehitpause = 1

[State AI, Consider S.K]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (4*(var(55)*var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,-5),ifelse(anim=211||anim=3211,15,53)-(5*movecontact)]
triggerall = p2dist y >= -60 - (enemynear,vel y*5)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -60
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 && anim = 201) || (stateno = 210 && (anim = 211 || anim = 3211))
;trigger2 = var(25) <= 0
trigger2 = movecontact >= 2
var(52) = 210
ignorehitpause = 1

[State AI, Consider S.SL]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (4*(var(55)*var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,-5),110-(5*movecontact)]
triggerall = p2dist y >= -40 - (enemynear,vel y*11)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -40
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 && anim = 201) || (stateno = 210 && (anim = 211 || anim = 3211))
trigger2 = movecontact >= 2
var(52) = 205
ignorehitpause = 1

[State AI, Consider C.P]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (5*(var(55)*var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),ifelse(var(25)>0,80,24)-(3*movecontact)]
triggerall = p2dist y >= ifelse(var(25)>0,-9,-40) - (enemynear,vel y*4)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= ifelse(var(25)>0,-5,-40)
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger1 = prevstateno != 1060
trigger2 = stateno = 200 || stateno = 400
trigger2 = var(25) <= 0
trigger2 = movecontact >= 2
var(52) = 400
ignorehitpause = 1

[State AI, Consider C.K]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (4*(var(55)*var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,-10),33-(3*movecontact)]
triggerall = p2dist y >= -65 - (enemynear,vel y*7)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -40
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 || stateno = 400) || (stateno = 210 && anim != 210 && anim != 3210)
trigger2 = movecontact >= 2
var(52) = 410
ignorehitpause = 1

[State AI, Consider C.SL]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (4*(var(55)*var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,-10),ifelse(var(25)>0,110,33)-(3*movecontact)]
triggerall = p2dist y >= -20 - (enemynear,vel y*11)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -20
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 || stateno = 400) || (stateno = 210 && anim != 210 && anim != 3210)
trigger2 = movecontact >= 2
var(52) = 405
ignorehitpause = 1

[State AI, Consider C.SWEEP]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (2*(var(55)*var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),64-(8*movecontact)]
triggerall = p2dist y >= -10 - (enemynear,vel y*8)
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 || stateno = 400) || (stateno = 210 && anim != 210)
trigger2 = var(25) <= 0
trigger2 = movecontact >= 2
var(52) = 420
ignorehitpause = 1

[State AI, J.X]
type = Varset
triggerall = var(25) <= 0
triggerall = numenemy
triggerall = var(52) = 0 || random < 123
triggerall = var(55)
triggerall = p2bodydist x = [-30+(vel x*3)+(enemynear,vel x*3),14+(vel x*3)+(enemynear,vel x*3)]
triggerall = P2dist y = [-40+(vel y*3)+(enemynear,vel y*3),60+(vel y*3)+(enemynear,vel y*3)]
triggerall = Statetype = A
triggerall = p2stateno != [5100,5120]
triggerall = p2Statetype = A || vel y >= 0
triggerall = (stateno != [120,169])
triggerall = random < (1*(var(55)*var(55))) * ifelse(p2statetype=A,2,1)
triggerall = time >= 7-var(55) || random < 10
trigger1 = ctrl || stateno = 110
var(52) = 600


[State AI, J.Y]
type = Varset
triggerall = var(25) <= 0
triggerall = numenemy
triggerall = var(52) = 0 || random < 123
triggerall = var(55)
triggerall = p2bodydist x = [-48+(vel x*7)+(enemynear,vel x*7),48+(vel x*7)+(enemynear,vel x*7)]
triggerall = P2dist y = [-47+(vel y*7)+(enemynear,vel y*7),90+(vel y*7)+(enemynear,vel y*7)]
triggerall = Statetype = A
triggerall = p2stateno != [5100,5120]
triggerall = p2Statetype = A || vel y >= 0
triggerall = (stateno != [120,169])
triggerall = random < (5*(var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = time >= 7-var(55) || random < 10
trigger1 = ctrl || stateno = 110
var(52) = 610

[State AI, J.Z]
type = Varset
triggerall = var(25) <= 0
triggerall = numenemy
triggerall = var(52) = 0 || random < 123
triggerall = var(55)
triggerall = p2bodydist x <= -5+(vel x*7)+(enemynear,vel x*7)
triggerall = p2dist x >= -30+(vel x*7)+(enemynear,vel x*7)
triggerall = P2dist y >= 0-(enemynear,const(size.head.pos.y))+(vel y*7)+(enemynear,vel y*7)
;triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) < 0
triggerall = Statetype = A
triggerall = p2stateno != [5100,5120]
;triggerall = p2Statetype = A || vel y >= 0
triggerall = (stateno != [120,169]) || (random < 2)
triggerall = random < (2*(var(55)*var(55)))
triggerall = time >= 7-var(55) || random < 10
trigger1 = ctrl
var(52) = 620

[State AI, jump up from J.Z]
type = Varset
triggerall = var(25) <= 0
triggerall = numenemy
triggerall = var(52) = 0 || random < 123
;triggerall = var(55)
triggerall = movecontact
triggerall = Statetype = A
triggerall = !(var(23) & floor(exp(0*ln(2)) + 0.5) )
triggerall = random < (5*(var(55)*var(55)))
triggerall = time >= 7-var(55) || random < 10
triggerall = stateno = 620
trigger1 = vel y > 0
trigger1 = (pos y + vel y)*4 >= 0
trigger2 = vel y > 0
trigger2 = (vel y - p2dist y )*4 >= 0
var(52) = 47

[State AISW, J.Y]
type = Varset
triggerall = var(25) > 0
triggerall = numenemy
triggerall = var(52) = 0 || random < 123
triggerall = var(55)
triggerall = p2bodydist x = [-48+(vel x*7)+(enemynear,vel x*7),42+(vel x*7)+(enemynear,vel x*7)]
triggerall = P2dist y = [-27+(vel y*7)+(enemynear,vel y*7),125+(vel y*7)+(enemynear,vel y*7)]
triggerall = Statetype = A
triggerall = p2stateno != [5100,5120]
triggerall = p2Statetype = A || vel y >= 0 || p2movetype = A
triggerall = (stateno != [120,169])
triggerall = random < (3*(var(55)*var(55)*var(55)))
triggerall = time >= 7-var(55) || random < 10
trigger1 = ctrl || stateno = 110
var(52) = 610

[State AISW, J.X]
type = Varset
triggerall = var(25) > 0
triggerall = numenemy
triggerall = var(52) = 0 || random < 123
triggerall = var(55)
triggerall = p2bodydist x = [-40+(vel x*9)+(enemynear,vel x*9),100+(vel x*9)+(enemynear,vel x*9)]
triggerall = P2dist y = [-47+(vel y*9)+(enemynear,vel y*9),70+(vel y*9)+(enemynear,vel y*9)]
triggerall = Statetype = A
triggerall = p2stateno != [5100,5120]
triggerall = p2Statetype = A || vel y >= 0 || p2movetype = A
triggerall = (stateno != [120,169])
triggerall = random < (3*(var(55)*var(55)*var(55)))
triggerall = time >= 7-var(55) || random < 10
trigger1 = ctrl || stateno = 110
var(52) = 600

[State AISW, J.2]
type = Varset
triggerall = var(25) > 0
triggerall = numenemy
triggerall = var(52) = 0 || random < 123
triggerall = var(55)
triggerall = p2bodydist x = [0,100]
triggerall = P2dist y >= 64
triggerall = Statetype = A
triggerall = p2stateno != [5100,5120]
triggerall = p2Statetype != A && p2movetype != A
triggerall = (stateno != [120,169])
triggerall = random < (1*(var(55)*var(55)*var(55)))
triggerall = time >= 7-var(55) || random < 10
trigger1 = ctrl || stateno = 110
var(52) = 620

[State AI, Consider Headbutting]
type = VarSet
triggerall = var(25) <= 0
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (3*(var(55)*var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 450)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),ifelse(movehit,53,98)-(9*(movecontact>=1))]
triggerall = p2dist y >= -35 - (enemynear,vel y*9)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -40
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = var(9)
trigger1 = !moveguarded
trigger1 = prevstateno != 1150
trigger2 = stateno = 1060
var(52) = 1150
ignorehitpause = 1
[State AI, Consider holding]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
trigger1 = stateno = 1150
trigger1 = p2statetype != A || p2statetype = L
trigger1 = (enemynear, ctrl = 1) || (p2statetype=L) || (p2stateno=[120,169]) || (p2stateno = [5100,5120])
trigger2 = stateno = 1150
trigger2 = p2statetype = A
trigger2 = p2bodydist x != [ifelse(p2statetype!=A,-5,0),98-(9*movecontact)]
trigger2 = p2dist y < -40 - (enemynear,vel y*3)
var(52) = 1151
ignorehitpause = 1

[State AI, Consider Flashing]
type = VarSet
triggerall = var(25) <= 0
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (2*(var(55)*var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x >= 50 || movehit || random < 83
triggerall = p2dist y >= -70 - (enemynear,vel y*10)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -35
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
triggerall = !numhelper(1000)
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = var(9)
trigger1 = prevstateno != 1000
var(52) = 1000
ignorehitpause = 1

[State AI, Consider Being a dumbass]
type = VarSet
triggerall = var(25) <= 0
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (3*(var(55)*var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 80)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),63-(8*(movecontact>=1))]
triggerall = p2dist y >= -5
triggerall = p2statetype != A
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = var(9)
trigger1 = !moveguarded || (moveguarded && p2statetype = S)
trigger1 = prevstateno != 1100
var(52) = 1100
ignorehitpause = 1

[State AI, Consider a followup]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (8*(var(55)*var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = p2dist x < 0
triggerall = p2dist y >= -70 - (enemynear,vel y*5)
trigger1 = stateno = 810 || stateno = 1110
var(52) = 1115
ignorehitpause = 1
[State AI, Consider another]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (5*(var(55)*var(55)*var(55))) * ifelse(movehit,2,1)
trigger1 = stateno = 1115
trigger1 = movehit
var(52) = 1150
ignorehitpause = 1


[State AI, Consider Throwing Up]
type = VarSet
triggerall = var(25) <= 0
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (3*(var(55)*var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 450)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),20-(9*(movecontact>=1))]
triggerall = p2dist y >= -5
triggerall = p2statetype != A
triggerall = p2statetype != L
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = var(9)
trigger1 = prevstateno != 1150
var(52) = 1050
ignorehitpause = 1

[State AI, Consider Doing One of the less useful antiair moves]
type = VarSet
triggerall = var(25) <= 0
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (2*(var(55)*var(55)*var(55))) * ifelse(movehit||p2statetype=A,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 123)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,-11),ifelse(movehit,60,130)-(10*(movecontact>=1))]
triggerall = p2dist y >= -90 - (enemynear,vel y*10)
triggerall = (( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -70 ) || (!movehit)
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = var(9)
trigger1 = (!moveguarded) || (moveguarded && p2statetype = C)
trigger1 = prevstateno != 1201
trigger2 = stateno = 1060
var(52) = 1200
ignorehitpause = 1

[State AI, Consider Being The Only One]
type = VarSet
triggerall = numenemy
triggerall = var(25) <= 0
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,255]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (2*(var(55)*var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = random < 300 + ((lifemax - life)/16)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = (p2bodydist x = [ifelse(p2statetype!=A,-5,0),90*const(size.xscale)-(11*(movecontact>=1))]) || (!movehit)
triggerall = p2dist y >= -70*const(size.yscale) - (enemynear,vel y*11) || (!movehit)
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*11) + (enemynear, pos y) <= -11 ) || (p2stateno != [5030,5120]) || (!movehit)
triggerall = power >= 1000
triggerall = (p2movetype = H) || (enemynear, ctrl = 0) || (enemynear, statetype = A)
triggerall = (prevstateno != [2000,3902]) || (stateno = [2000,3902])
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 8 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025]) || (!movehit)
trigger1 = anim != 20
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = stateno != 410
trigger1 = var(9)
trigger2 = (stateno = 1150 || stateno = 1115)
var(52) = 3000
ignorehitpause = 1

[State AISWORD, Stabbing The Fucker]
type = VarSet
triggerall = var(25) > 0
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) ) || ifelse(p2bodydist x<=20,2,1)
triggerall = var(55)
triggerall = random < (3*(var(55)*var(55)*var(55))) * ifelse(movehit,2,1) * ifelse(p2bodydist x<=20,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 450)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-15,-50),52-(9*(movecontact>=1))]
triggerall = p2dist y >= -110 - (enemynear,vel y*7)
triggerall = p2statetype != A
triggerall = p2statetype != L
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = var(9)
trigger1 = prevstateno != 3320
var(52) = 1200
ignorehitpause = 1
[State AISWORD, Consider an overhead slash]
type = VarSet
triggerall = var(25) > 0
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (3*(var(55)*var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),100-(12*(movecontact>=1))]
triggerall = p2dist y >= -60 - (enemynear,vel y*12)
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = var(9)
trigger1 = !moveguarded
trigger1 = prevstateno != 3300
trigger2 = stateno = 1060
var(52) = 1050
ignorehitpause = 1
[State AISWORD, Consider Something Needlessly Elaborate]
type = VarSet
triggerall = var(25) > 0
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (2*(var(55)*var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 90)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,8),170-(14*(movecontact>=1))]
triggerall = p2dist y >= -60 - (enemynear,vel y*30)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -20
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = var(9)
trigger1 = !moveguarded
trigger1 = prevstateno != 3342
trigger2 = stateno = 1060
var(52) = 1100
ignorehitpause = 1
[State AISWORD, Consider Stinging]
type = VarSet
triggerall = var(25) > 0
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (3*(var(55)*var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,10),180-(12*(movecontact>=1))]
triggerall = p2dist y >= -50 - (enemynear,vel y*12)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -60
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = var(9)
trigger1 = !moveguarded
trigger1 = prevstateno != 3330
trigger2 = stateno = 1060
var(52) = 1150
ignorehitpause = 1
[State AISWORD, Consider THUNDER STRIKE]
type = VarSet
triggerall = var(25) > 0
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (2*(var(55)*var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x >= 50 || movehit || random < 83
triggerall = p2dist y >= -4 - (enemynear,vel y*15)
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 15 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025]) || (!movehit)
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = var(9)
trigger1 = prevstateno != 3310
var(52) = 1000
ignorehitpause = 1
[State AISWORD, Consider ending your sword tenure early]
type = VarSet
triggerall = (var(25) = [1,100]) || (movehit)
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (2*(var(55)*var(55)*var(55)))
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2dist y >= -50 - (enemynear,vel y* (16 + ceil(p2dist x/10) )  )
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -60
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
triggerall = p2stateno != [120,159]
triggerall = enemynear,anim != 21
triggerall = (enemynear,GetHitVar(hittime) >= 17 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = var(9)
trigger1 = !moveguarded
trigger1 = prevstateno != 3330
trigger2 = stateno = 1060
var(52) = 3350
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
triggerall = p2dist y >= -10
trigger1 = stateno != 40
trigger1 = ctrl
var(52) = ifelse(var(25)>0,1200,ifelse(random<500,1050,800))
ignorehitpause = 1

[State AI, Consider Advancing]
type = VarSet
triggerall = var(25) <= 0
triggerall = var(55)
triggerall = var(52) = 0 || random < 80+var(55)
triggerall = random < (33*var(55))
triggerall = ((enemynear, ctrl = 0) && p2movetype != A) || (p2movetype = A && (enemynear, facing = facing))
triggerall = (p2stateno != [5080,5190]) || (p2bodydist x = [45,100])
triggerall = p2bodydist x >= 45
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 100
trigger1 = ctrl
trigger1 = !moveguarded
var(52) = 700

[State AI, Consider Countering]
type = VarSet
triggerall = var(25) > 0
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (2*(var(55)*var(55)*var(55))) * ifelse(movehit||p2statetype=A,2,1)
triggerall = (enemynear, numproj > 0) || (p2movetype = A && EnemyNear, Facing != Facing) || (var(51)) || (inguarddist)
triggerall = p2dist y >= -40
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = var(9)
trigger1 = (!moveguarded) || (moveguarded && p2statetype = C)
trigger1 = prevstateno != 1201
var(52) = 700
ignorehitpause = 1

[State AI, Guard S]
type = ChangeState
triggerall = stateno != 40
triggerall = random < (15*(var(55)*var(55)))
triggerall = var(25) <= 0
triggerall = (var(55)) && (StateType != A) && (Ctrl) && (EnemyNear, Facing != Facing) && (var(50)<40)
trigger1 = (P2StateType != C) && (((P2MoveType = A) && (inguarddist)) || (EnemyNear, NumProj > 0))
value = ifelse(random<50&&(stateno!=[120,159])&&(stateno!=[700,705]),ifelse(random<500,700,705),130)

[State AI, Guard L]
type = ChangeState
triggerall = stateno != 40
triggerall = random < (15*(var(55)*var(55)))
triggerall = var(25) <= 0
triggerall = (var(55)) && (StateType != A) && (Ctrl) && (EnemyNear, Facing != Facing) && (var(50)<40)
trigger1 = (P2StateType = C) && (((P2MoveType = A) && (inguarddist)) || (EnemyNear, NumProj > 0))
value = ifelse(random<50&&(stateno!=[120,159])&&(stateno!=[700,705]),ifelse(random<500,700,705),131)

[State AI, Guard S]
type = ChangeState
triggerall = stateno != 40
triggerall = random < (15*(var(55)*var(55)))
triggerall = var(25) > 0
triggerall = (var(55)) && (StateType != A) && (Ctrl) && (EnemyNear, Facing != Facing) && (var(50)<40)
trigger1 = (P2StateType != C) && (((P2MoveType = A) && (inguarddist)) || (EnemyNear, NumProj > 0))
value = ifelse(random<50&&(stateno!=[120,159])&&(stateno!=[700,705]),3700,130)

[State AI, Guard L]
type = ChangeState
triggerall = stateno != 40
triggerall = random < (15*(var(55)*var(55)))
triggerall = var(25) > 0
triggerall = (var(55)) && (StateType != A) && (Ctrl) && (EnemyNear, Facing != Facing) && (var(50)<40)
trigger1 = (P2StateType = C) && (((P2MoveType = A) && (inguarddist)) || (EnemyNear, NumProj > 0))
value = ifelse(random<50&&(stateno!=[120,159])&&(stateno!=[700,705]),3700,131)


; AI-related stuff ends here

;---------------------------------------------------------------------------
;Triple Kung Fu Palm (uses one super bar)
;三烈カンフー突き手（ゲージレベル１）
[State -1, HERE WE ARE PRINCES OF THE UNIVERSE]
type = ChangeState
value = 3000
triggerall = (var(55)<5 && command = "Claymore") || var(52) = 3000
triggerall = power >= 1000
triggerall = var(25) <= 0
trigger1 = var(9) ;Use combo condition (above)
trigger2 = stateno = 1060
trigger2 = animelemtime(4) >= 6
trigger3 = (stateno = 1150 || stateno = 1115) && movecontact

[State -1, COUP DE GRACE]
type = ChangeState
value = 3350
triggerall = (var(55)<5 && command = "Claymore") || var(52) = 3350
triggerall = var(25) > 0
trigger1 = var(9) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Light Kung Fu Palm
;カンフー突き手（弱）
[State -1, Fireball]
type = ChangeState
value = ifelse(var(25)>0,3310,1000)
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "DikBall",command = "DikBall_r")) || var(52) = 1000
triggerall = !numhelper(1000)
trigger1 = var(9) ;Use combo condition (above)
trigger2 = stateno = 1060
trigger2 = animelemtime(6) >= 6

[State -1, Upward Toss]
type = ChangeState
value = ifelse(var(25)>0,3300,1050)
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "RisingToss",command = "RisingToss_r")) || var(52) = 1050
trigger1 = var(9) ;Use combo condition (above)
trigger2 = stateno = 1201
trigger2 = animelemtime(5) >= 0

[State -1, Dumbass]
type = ChangeState
value = ifelse(var(25)>0,3340,1100)
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "DikBall_r",command = "DikBall")) || var(52) = 1100
trigger1 = var(9) ;Use combo condition (above)

[State -1, followup]
type = ChangeState
value = 1115
triggerall = (var(55)<5 && command = "y") || var(52) = 1115
trigger1 = stateno = 1110
trigger1 = animelemtime(5) >= 6
trigger2 = stateno = 810
trigger2 = animelemtime(4) >= 6

[State -1, Headbutt]
type = ChangeState
value = ifelse(var(25)>0,3330,1150)
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "ButtCargo",command = "ButtCargo_r")) || var(52) = 1150
trigger1 = var(9) ;Use combo condition (above)
trigger2 = stateno = 1060
trigger2 = animelemtime(4) >= 6
trigger3 = stateno = 1115
trigger3 = animelemtime(3) >= 6 && movehit

[State -1, Rufus]
type = ChangeState
value = ifelse(var(25)>0,3320,1200)
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "Rufus",command = "Rufus_r")) || var(52) = 1200
trigger1 = var(9) ;Use combo condition (above)
trigger2 = stateno = 1060
trigger2 = animelemtime(4) >= 6
trigger3 = stateno = 1115
trigger3 = animelemtime(3) >= 6 && movehit

;---------------------------------------------------------------------------
;Kung Fu Throw
;投げ
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = (var(55)<5 && (command = "x" && command = "holdback" && command != "holddown")) || var(52) = 800
triggerall = statetype != A
triggerall = stateno != 100
triggerall = var(8) <= 0
trigger1 = ctrl


;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
;立ち弱パンチ
[State -1, Stand Slash]
type = ChangeState
value = 205
triggerall = (var(55)<5 && (command = "x" && (command = "holdfwd" || command = "holdback") && command != "holddown")) || var(52) = 205
triggerall = var(25)>0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 210 && (anim = 211 || anim = 212 || anim = 3211 || anim = 3212)
trigger2 = (time > 6) || (movecontact)

[State -1, Stand Punch]
type = ChangeState
value = 200
triggerall = (var(55)<5 && (command = "x" && command != "holddown")) || var(52) = 200
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && (anim != 3200)
trigger2 = (time > 6) || (movecontact)

[State -1, Stand Kick]
type = ChangeState
value = 210
triggerall = (var(55)<5 && (command = "y" && command != "holddown")) || var(52) = 210
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 && anim = 201) || (stateno = 210 && anim = 211) || (stateno = 210 && anim = 3211)
trigger2 = movecontact

[State -1, Roll F]
type = ChangeState
value = ifelse(var(25)<=0,700,3700)
triggerall = (var(55)<5 && (command = "z" && command != "holdback" && command != "holddown")) || var(52) = 700
triggerall = stateno != [700,705]
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [150,154]) || ((stateno = 200 || stateno = 400 || (stateno = 210 && anim != 210) ) && movecontact)
trigger2 = power >= 500

[State -1, Roll B]
type = ChangeState
value = ifelse(var(25)<=0,705,3700)
triggerall = (var(55)<5 && (command = "z" && command = "holdback" && command != "holddown")) || var(52) = 705
triggerall = stateno != [700,705]
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [150,154]) || ((stateno = 200 || stateno = 400 || (stateno = 210 && anim != 210) ) && movecontact)
trigger2 = power >= 500

[State -1, Counter]
type = ChangeState
value = 710
triggerall = (var(55)<5 && (command = "CD")) || var(52) = 710
triggerall = statetype != A
trigger1 = (stateno = [150,154])
trigger1 = power >= 500


;---------------------------------------------------------------------------
;Taunt
;挑発
;[State -1, Taunt]
;type = ChangeState
;value = 195
;triggerall = (command = "start") || var(52) = 195 || (var(58) = -2 && winko && !var(48))
;triggerall = stateno != 195
;trigger1 = statetype != A
;trigger1 = ctrl || stateno = 100

[State -1, Taunt]
type = PlaySnd
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
value = 195,random%3
channel = 0
lowpriority = 1
ignorehitpause = 1

;---------------------------------------------------------------------------
;Crouching Light Punch
;しゃがみ弱パンチ
[State -1, Crouching Slash]
type = ChangeState
value = 405
triggerall = (var(55)<5 && (command = "x" && (command = "holdfwd" || command = "holdback") && command = "holddown")) || var(52) = 405
triggerall = var(25)>0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 400) || (stateno = 210 && anim != 210)
trigger2 = (anim != 3200) && (anim != 3210) && (anim != 3400)
trigger2 = movecontact


[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = (var(55)<5 && (command = "x" && command = "holddown")) || var(52) = 400
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 400
trigger2 = (anim != 3200) && (anim != 3400)
trigger2 = (time > 6) || (movecontact)

[State -1, Crouching Kick]
type = ChangeState
value = 410
triggerall = (var(55)<5 && (command = "y" && command = "holddown")) || var(52) = 410
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 400) || (stateno = 210 && anim != 210)
trigger2 = (anim != 3200) && (anim != 3210) && (anim != 3400)
trigger2 = movecontact

[State -1, Crouching Sweep]
type = ChangeState
value = 420
triggerall = (var(55)<5 && (command = "z" && command = "holddown")) || var(52) = 420
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 400) || (stateno = 210 && anim != 210)
trigger2 = (anim != 3200) && (anim != 3210) && (anim != 3400)
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Light Punch
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = (var(55)<5 && command = "x") || var(52) = 600
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump Light Punch]
type = ChangeState
value = 610
triggerall = (var(55)<5 && command = "y") || var(52) = 610
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump Light Punch]
type = ChangeState
value = 620
triggerall = (var(55)<5 && command = "z") || var(52) = 620
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Guilty gear shit right here]
type = ChangeState
value = 45
triggerall = (command = "holdup") || var(52) = [40,47]
triggerall = !(var(23) & floor(exp(0*ln(2)) + 0.5) )
trigger1 = stateno = 620
trigger1 = movecontact


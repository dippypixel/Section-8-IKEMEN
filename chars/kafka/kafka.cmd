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

; These 11 Single Button and Hold Dir commands must be placed here at the top
; of the CMD, above all other commands, and in the standard order shown here,
; in order for the "Compatibly Partnered" version (9742) of the helper AI
; activation method to work with different partners in simul team mode.
; (When the partner is not compatible, then it's best to just use the regular
; version (9741) and rely on the XOR method for backup in case a human
; partner's input turns off the CPU partner's AI.)
;   (Now, even if you do not intend to give your character any custom AI, it
; would still be nice if you would place the commands at the top of your CMD,
; for the sake of other characters which do use this AI activation method.
; And then, define Anim 9741 in your AIR file to indicate to other characters
; that your character is compatible.
;   It may slightly increase the chances of faulty AI activation if the user
; is using characters with a poor implementation of the old humanly-impossible
; commands AI activation method when fighting against your character, but
; other than that, there's really no particular reason not to.  And you can
; change the names of the commands if you want.  For compatibility, all that
; really matters is the "command" and "time" parameters.)
;
; Please don't add any extra definitions for any of these 11 basic command
; names, nor for any of the 7 "hold[button]" command names that follow.
; For example, things like this should be avoided:
;	[Command]
;	name = "z"
;	command = y+b
;	time = 1
; There are several workarounds possible to achieve the same effect.  Please
; feel free to ask me about it if you have any uncertainty.
; Violating this rule would cause the KeyCtrl Helper method and/or the XORed
; Commands method to malfunction, and could also interfere with other future
; applications of this command order standard.
;
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

[Command]
name = "recovery"
command = x+y
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
name = "MiniMe"
command = ~D, DB, B, x+y
[Command]
name = "DrKa"
command = ~D, DF, F, a+b
[Command]
name = "r_DrKa"
command = ~D, DB, B, a+b
[Command]
name = "GeorgeLucas"
command = ~D, DF, F, x+y
[Command]
name = "MiniMe"
command = ~D, DB, B, z
[Command]
name = "DrKa"
command = ~D, DF, F, c
[Command]
name = "r_DrKa"
command = ~D, DB, B, c
[Command]
name = "GeorgeLucas"
command = ~D, DF, F, z

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
name = "Yoga"
command = ~B, F, x
[Command]
name = "Yoga2"
command = ~B, F, y

[Command]
name = "Vuvuzela"
command = ~D, DB, B, x
[Command]
name = "Vuvuzela"
command = ~D, DB, B, y
[Command]
name = "MagicCarpet"
command = ~D, DB, B, a
[Command]
name = "MagicCarpet"
command = ~D, DB, B, b
[Command]
name = "r_MagicCarpet"
command = ~D, DB, B, a
[Command]
name = "r_MagicCarpet"
command = ~D, DB, B, b
[Command]
name = "Batman"
command = ~D, DF, F, x
[Command]
name = "Batman"
command = ~D, DF, F, y
[Command]
name = "Counter"
command = ~D, DF, F, a
[Command]
name = "Counter2"
command = ~D, DF, F, b
[Command]
name = "r_Counter"
command = ~D, DF, F, a
[Command]
name = "r_Counter2"
command = ~D, DF, F, b

[Command]
name = "FirePress"
command = B, F, x


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
name = "COD"
command = x+y
time = 1

[Command]
name = "CD"
command = y+b
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

;===========================================================================
;---------------------------------------------------------------------------

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

; AI

[State -1, AI Consideration reset]
type = VarSet
trigger1 = 1
var(52) = 0
ignorehitpause = 1

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
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = (stateno != 240 || (stateno = 240 && animelemtime(11)>=0) )
trigger2 = (stateno != 230 || (stateno = 230 && animelemtime(8)>=0) )
trigger2 = movecontact
trigger3 = (stateno = 200 && animelemtime(4) >= 0) || (stateno = 400 && animelemtime(4) >= 0) || (stateno = 210 && anim = 210 && animelemtime(5) >= 0) || (stateno = 410 && animelemtime(5) >= 0) || (stateno = 440 && animelemtime(5) >= 0)
trigger4 = stateno = 251 || stateno = 256
trigger4 = time >= 6
var(1) = 1

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
var(52) = ifelse(random<500,43,105)

[State AI, Consider C.A]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (11*(var(55)*var(55))) * ifelse(movehit,2,1) * ifelse(moveguarded&&p2statetype=S,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 80)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),28-(6*movecontact)]
triggerall = p2dist y >= -20 - (enemynear,vel y*5)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -10
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 430 && animelemtime(5) >= 0)
trigger2 = movecontact
var(52) = 430
ignorehitpause = 1
[State AI, Consider S.X]
type = VarSet
triggerall = numhelper(300)
triggerall = helper(300),stateno = 300
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (10*(var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 40)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),93-(3*movecontact)]
triggerall = p2dist y >= -90 - (enemynear,vel y*3)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -80
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || stateno = 100
var(52) = 200
ignorehitpause = 1
[State AI, Consider S.Y]
type = VarSet
triggerall = numhelper(301)
triggerall = helper(301),stateno = 300
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (9*(var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 100)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),102-(6*(movecontact>=1))]
triggerall = p2dist y >= -102 - (enemynear,vel y*7)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= ifelse((p2bodydist x>45),-80,-11)
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200
trigger2 = time >= 8
var(52) = 210
ignorehitpause = 1
[State AI, Consider S.A]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (10*(var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 80)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),74-(6*movecontact)]
triggerall = p2dist y >= -90 - (enemynear,vel y*6)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -70
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 430 && animelemtime(5) >= 0)
trigger2 = movecontact
trigger3 = (stateno = 200 && animelemtime(4) >= 0) || (stateno = 400 && animelemtime(4) >= 0) || (stateno = 210 && anim = 210 && animelemtime(5) >= 0)
var(52) = 230
ignorehitpause = 1
[State AI, Consider S.B]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (7*(var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 80)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),74-(10*movecontact)]
triggerall = p2dist y >= -85 - (enemynear,vel y*10)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -55
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 430 && animelemtime(5) >= 0)
trigger2 = movecontact
var(52) = 240
ignorehitpause = 1
[State AI, Consider C.X]
type = VarSet
triggerall = numhelper(300)
triggerall = helper(300),stateno = 300
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (10*(var(55)*var(55))) * ifelse(movehit,2,1) * ifelse(moveguarded&&p2statetype=S,1.2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 40)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),84-(3*movecontact)]
triggerall = p2dist y >= -40 - (enemynear,vel y*3)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -10
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 430 && animelemtime(5) >= 0)
trigger2 = movecontact
var(52) = 400
ignorehitpause = 1
[State AI, Consider C.Y]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (9*(var(55)*var(55))) * ifelse(movehit,2,1) * ifelse(prevstateno=52||stateno=52,1.6,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 100)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),72-(6*(movecontact>=1))]
triggerall = p2dist y >= -111 - (enemynear,vel y*6)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -10
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 430 && animelemtime(5) >= 0) || (stateno = 230 && animelemtime(8) >= 0)
trigger2 = movecontact
trigger3 = (stateno = 200 && animelemtime(4) >= 0) || (stateno = 400 && animelemtime(4) >= 0) || (stateno = 210 && anim = 210 && animelemtime(5) >= 0)
var(52) = 410
ignorehitpause = 1
[State AI, Consider C.B]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (7*(var(55)*var(55))) * ifelse(movehit,2,1) * ifelse(moveguarded&&p2statetype=S,1.2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 100)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),108-(6*movecontact)]
triggerall = p2dist y >= -20 - (enemynear,vel y*5)
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 430 && animelemtime(5) >= 0) || (stateno = 230 && animelemtime(8) >= 0)
trigger2 = movecontact
trigger3 = (stateno = 200 && animelemtime(4) >= 0) || (stateno = 400 && animelemtime(4) >= 0) || (stateno = 210 && anim = 210 && animelemtime(5) >= 0)
var(52) = 440
ignorehitpause = 1

[State AI, Consider F.A]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (4*(var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 80)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),200-(4*movecontact)]
triggerall = p2dist y = [-120 - (enemynear,vel y*4),ifelse(p2statetype=A,21,240)]
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -100 + (abs(p2bodydist x-120)/7)
;triggerall = statetype != A
triggerall = (p2stateno != [120,154]) || (p2statetype = A)
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 230 && animelemtime(8)>=0) || stateno = 430 || (stateno = 210 && anim = 215) || (stateno = [600,640])
trigger2 = movecontact
trigger3 = (stateno = 200 && animelemtime(4) >= 0) || (stateno = 400 && animelemtime(4) >= 0) || (stateno = 210 && anim = 210 && animelemtime(6) >= 0) || (stateno = 410 && animelemtime(6) >= 0)
trigger4 = stateno = 256 && (time>=3)
var(52) = 250
ignorehitpause = 1
[State AI, Consider F.B]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (4*(var(55)*var(55))) * ifelse(movehit,2,1) * ifelse(moveguarded&&p2statetype=C,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),135-(13*movecontact)]
triggerall = p2dist y >= -85 - (enemynear,vel y*13)
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
triggerall = prevstateno != [255,256]
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 230 && animelemtime(8)>=0) || stateno = 430 || (stateno = 210 && anim = 215)
trigger2 = movecontact
trigger3 = (stateno = 200 && animelemtime(4) >= 0) || (stateno = 400 && animelemtime(4) >= 0) || (stateno = 210 && anim = 210 && animelemtime(6) >= 0) || (stateno = 410 && animelemtime(6) >= 0)
var(52) = 255
ignorehitpause = 1

[State AI, J.X]
type = Varset
triggerall = numenemy
triggerall = var(52) = 0 || random < 123
triggerall = var(55)
triggerall = p2bodydist x = [-28+(vel x*4)+(enemynear,vel x*4),42+(vel x*4)+(enemynear,vel x*4)]
triggerall = P2dist y = [-35+(vel y*4)+(enemynear,vel y*4),64+(vel y*4)+(enemynear,vel y*4)]
triggerall = Statetype = A
triggerall = p2stateno != [5100,5120]
triggerall = p2Statetype = A || vel y >= 0
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
triggerall = p2bodydist x = [-35+(vel x*4)+(enemynear,vel x*4),66+(vel x*4)+(enemynear,vel x*4)]
triggerall = P2dist y = [-57+(vel y*4)+(enemynear,vel y*4),80+(vel y*4)+(enemynear,vel y*4)]
triggerall = abs(p2bodydist x) >= 18 || p2statetype != A
triggerall = Statetype = A
triggerall = p2stateno != [5100,5120]
triggerall = p2Statetype = A || vel y >= 0
triggerall = (stateno != [120,169])
triggerall = random < (5*(var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = time >= 7-var(55) || random < 10
triggerall = helper(300),stateno != 322
triggerall = helper(301),stateno != 322
triggerall = helper(300),stateno != 305
triggerall = helper(301),stateno != 305
trigger1 = ctrl
var(52) = 610
[State AI, J.A]
type = Varset
triggerall = numenemy
triggerall = var(52) = 0 || random < 123
triggerall = var(55)
triggerall = p2bodydist x = [-27+(vel x*4)+(enemynear,vel x*4),27+(vel x*4)+(enemynear,vel x*4)]
triggerall = P2dist y = [-35+(vel y*4)+(enemynear,vel y*4),60+(vel y*4)+(enemynear,vel y*4)]
triggerall = Statetype = A
triggerall = p2stateno != [5100,5120]
triggerall = p2Statetype = A || vel y >= 0
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
triggerall = p2bodydist x = [-27+(vel x*4)+(enemynear,vel x*4),135+(vel x*4)+(enemynear,vel x*4)]
triggerall = P2dist y = [-88+(vel y*4)+(enemynear,vel y*4),90+(vel y*4)+(enemynear,vel y*4)]
triggerall = Statetype = A
triggerall = p2stateno != [5100,5120]
triggerall = p2Statetype = A || vel y >= 0
triggerall = (stateno != [120,169])
triggerall = random < (1*(var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = time >= 7-var(55) || random < 10
trigger1 = ctrl
var(52) = 640
[State AI, J.DK]
type = Varset
triggerall = p2stateno != [5100,5120]
triggerall = numenemy
triggerall = var(52) = 0 || random < 150
triggerall = var(55)
triggerall = random < 125 || movehit
triggerall = p2dist y > -40
triggerall = (p2bodydist x - p2bodydist y - (enemynear,vel y*12)) = [-40,50]
triggerall = p2bodydist x <= 230
triggerall = random < (5*(var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = time >= 7-var(55) || random < 10
triggerall = statetype = A
trigger1 = ctrl
trigger2 = random < (stateno/2)
trigger2 = stateno = 600
trigger2 = movehit
var(52) = 645

[State AI, Consider Blowing]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,255]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (2*(var(55)*var(55))) * ifelse(movehit,2,1) / ifelse(p2bodydist x >= 190,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0)
triggerall = p2stateno != [5080,5110]
triggerall = p2bodydist x >= 80 || (p2statetype = A && movehit)
triggerall = p2dist y >= -20 - (enemynear,vel y*25)
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*25) + (enemynear, pos y) <= -25 ) || (p2stateno != [5030,5120])
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = var(1)
var(52) = 1100
ignorehitpause = 1
[State AI, Consider Moving to bat country]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,255]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (2*(var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0)
triggerall = p2stateno != [5080,5110]
triggerall = p2bodydist x >= 100 || (p2statetype = A && movehit)
triggerall = p2dist y >= -20 - (enemynear,vel y*25)
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*25) + (enemynear, pos y) <= -25 ) || (p2stateno != [5030,5120])
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = var(1)
var(52) = 1200
ignorehitpause = 1
[State AI, Consider Carpet]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,255]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (1*(var(55)*var(55))) * ifelse(moveguarded,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 100)
triggerall = p2stateno != [5080,5110]
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = var(1)
var(52) = 1400
ignorehitpause = 1
[State AI, Consider Carpet Kicking]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (2*(var(55)*var(55)))
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [-8,200-(4*movecontact)]
triggerall = p2dist y = [-120 - (enemynear,vel y*4),35]
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -75
;triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno = 1400
trigger1 = time >= 12
var(52) = 1401
ignorehitpause = 1
[State AI, Consider Carpet bombing]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (2*(var(55)*var(55)))
triggerall = p2stateno != [5110,5130]
triggerall = p2bodydist x = [-35,115]
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno = 1400
trigger1 = time >= 12
var(52) = 1402
ignorehitpause = 1
[State AI, Consider Carpet shooting]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (2*(var(55)*var(55)))
triggerall = p2stateno != [5110,5130]
triggerall = p2dist y = [-25+(enemynear,vel y*12),25+(enemynear,vel y*12)-(enemynear,const(size.head.pos.y))]
triggerall = time >= 7-var(55) || random < 10
triggerall = !numhelper(1410)
trigger1 = stateno = 1400
trigger1 = time >= 12
var(52) = 1410
ignorehitpause = 1

[State AI, Consider Kafka Spamming]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,255]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (1*(var(55)*var(55))) * ifelse(movehit&&p2statetype=A,2,1) * ifelse(backedgedist<=100&&p2bodydist x<=60,2,1)
triggerall = random < 300 + ((lifemax - life)/16)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 100)
triggerall = p2stateno != [5080,5110]
triggerall = p2bodydist x >= 100 || (p2statetype = A && movehit)
triggerall = statetype != A
triggerall =(p2movetype = H) || (enemynear, ctrl = 0) || (enemynear, statetype = A)
triggerall = (p2stateno != [120,165])
triggerall = (prevstateno != [3000,3902]) || (stateno = [3000,3902])
triggerall = time >= 7-var(55) || random < 10
triggerall = power >= 1000
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = var(1)
var(52) = 3000
ignorehitpause = 1
[State AI, Consider hmmmmm]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || (random < 100+var(55) && (var(52)!=[200,640]))
triggerall = var(55)
triggerall = random < (12*(var(55)*var(55)))
triggerall = random < 300 + ((lifemax - life)/16)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0 && enemynear, animtime <= -10) || (random < 100)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x >= -35
triggerall = p2bodydist x <= ifelse(p2movetype=H,65,80)
triggerall = p2bodydist y + (enemynear,vel y*3) = [-45,20]
triggerall = power >= 1000
triggerall =(p2movetype = H) || (enemynear, ctrl = 0) || (enemynear, statetype = A)
triggerall = statetype != A
triggerall = (p2stateno != [120,165])
triggerall = (prevstateno != [3000,3902]) || (stateno = [3000,3902])
triggerall = time >= 7-var(55) || random < 10
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*10) + (enemynear, pos y) <= -10 ) || (p2stateno != [5030,5070])
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = var(1)
var(52) = 3100
ignorehitpause = 1
[State AI, Consider something rather uninspired]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || (random < 100+var(55) && (var(52)!=[600,640]))
triggerall = var(55)
triggerall = random < (10*(var(55)*var(55)))
triggerall = random < 300 + ((lifemax - life)/16)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0 && enemynear, animtime <= -10) || (random < 100)
triggerall = p2stateno != [5080,5130]
triggerall = p2dist y > -40
triggerall = (p2bodydist x - p2bodydist y - (enemynear,vel y*12)) = [-40,50]
triggerall = p2bodydist x <= ifelse(p2statetype=A,94,145)
triggerall = power >= 1000
triggerall =(p2movetype = H) || (enemynear, ctrl = 0) || (enemynear, statetype = A)
triggerall = (p2stateno != [120,165])
triggerall = (prevstateno != [3000,3902]) || (stateno = [3000,3902])
triggerall = time >= 7-var(55) || random < 10
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*30) + (enemynear, pos y) <= -30 ) || (p2stateno != [5030,5070])
triggerall = numhelper(300)
triggerall = numhelper(301)
triggerall = helper(300),stateno != 322
triggerall = helper(301),stateno != 322
triggerall = helper(300),stateno != 305
triggerall = helper(301),stateno != 305
triggerall = helper(300),stateno != 331
triggerall = helper(301),stateno != 331
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 || stateno = 640 || stateno = 645
trigger2 = movehit
var(52) = 3200
ignorehitpause = 1
[State AI, Consider Taking Notes From George Lucas]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || (random < 100+var(55) && (var(52)!=[200,640]))
triggerall = var(55)
triggerall = random < (12*(var(55)*var(55)))
triggerall = random < 300 + ((lifemax - life)/16)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0 && enemynear, animtime <= -22)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [-9,180 + ((enemynear,vel x*20)*((enemynear,backedgedist>=70)) )]
triggerall = p2bodydist y + (enemynear,vel y*20) = [-100,20]
triggerall = power >= 2000
triggerall =(p2movetype = H) || (enemynear, ctrl = 0) || (enemynear, statetype = A)
triggerall = statetype != A
triggerall = (p2stateno != [120,165])
triggerall = (prevstateno != [3000,3902]) || (stateno = [3000,3902])
triggerall = time >= 7-var(55) || random < 10
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*20) + (enemynear, pos y) <= -20 ) || (p2stateno != [5030,5070])
triggerall = (p2movetype != H) || (enemynear,gethitvar(hittime) >= 20) || (p2statetype=A)
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = var(1)
trigger1 = stateno != 440
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
var(52) = ifelse(random<500&&backedgedist>=25,830,800)
ignorehitpause = 1

[State AI, Consider Advancing]
type = VarSet
triggerall = var(55)
triggerall = var(52) = 0 || random < 80+var(55)
triggerall = random < (33*var(55))
triggerall = ((enemynear, ctrl = 0) && p2movetype != A) || (p2movetype = A && (enemynear, facing = facing))
triggerall = (p2stateno != [5080,5130]) || (p2bodydist x = [45,100])
triggerall = p2bodydist x >= 45
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 100
trigger1 = ctrl
trigger1 = !moveguarded
var(52) = ifelse(random<200,41,100)
[State AI, Consider Advancing mid-air]
type = VarSet
triggerall = var(55)
triggerall = var(52) = 0 || random < 80+var(55)
triggerall = random < (33*var(55))
triggerall = ((enemynear, ctrl = 0) && p2movetype != A) || (p2movetype = A && (enemynear, facing = facing))
triggerall = (p2stateno != [5080,5130])
triggerall = p2bodydist x >= 80
triggerall = p2bodydist y <= 100
triggerall = statetype = A
triggerall = time >= 7-var(55) || random < 10
triggerall = !(var(22) & floor(exp(1*ln(2)) + 0.5) )
trigger1 = ctrl
trigger1 = pos y <= -35 || vel y >= 0
var(52) = 110
[State AI, Consider jumping in]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+var(55) + (100*(stateno = 640)) + (100*(stateno = 240))
triggerall = var(55)
triggerall = p2stateno != [5080,5130]
triggerall = statetype != A || stateno = 640
triggerall = p2statetype = A && p2movetype = H
triggerall = (enemynear, pos y <= -45)
trigger1 = ctrl || stateno = 100 || stateno = 40
trigger2 = stateno = 240 || stateno = 640 || stateno = 1402 || stateno = 1403
trigger2 = !(var(22) & floor(exp(0*ln(2)) + 0.5) ) || statetype != A
trigger2 = movecontact
var(52) = ifelse(p2bodydist x>=20,ifelse(p2bodydist x>=160,44,41),42)
ignorehitpause = 1

[State AI, Guard S]
type = ChangeState
triggerall = stateno != 40
triggerall = random < 125*var(55)
triggerall = (var(55)) && (StateType != A) && (Ctrl) && (EnemyNear, Facing != Facing) && (var(50)<40)
trigger1 = (P2StateType != C) && (((P2MoveType = A) && (inguarddist)) || (EnemyNear, NumProj > 0))
value = ifelse(random<50&&p2bodydist x<=160&&(stateno!=[120,159]),1000,130)

[State AI, Guard L]
type = ChangeState
triggerall = stateno != 40
triggerall = random < 125*var(55)
triggerall = (var(55)) && (StateType != A) && (Ctrl) && (EnemyNear, Facing != Facing) && (var(50)<40)
trigger1 = (P2StateType = C) && (((P2MoveType = A) && (inguarddist)) || (EnemyNear, NumProj > 0))
value = ifelse(random<50&&(stateno!=[120,159]),ifelse(random<500&&p2bodydist x<=160,1000,1400),131)

;Strawbelly Combination
[State -1, How George Lucas thinks Star Wars Would End]
type = ChangeState
value = 3300
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "GeorgeLucas",command = "MiniMe")) || var(52) = 3300
triggerall = power >= 2000
triggerall = statetype != A
triggerall = numhelper(300)
triggerall = numhelper(301)
triggerall = helper(300),stateno != 322
triggerall = helper(301),stateno != 322
triggerall = helper(300),stateno != 305
triggerall = helper(301),stateno != 305
triggerall = helper(300),stateno != 331
triggerall = helper(301),stateno != 331
trigger1 = var(1) ;Use combo condition (above)
;trigger2 = stateno = 1020 || stateno = 1025 || stateno = 1200 || stateno = 1205 || (stateno = 1210 && animelemtime(14)>= 0)
;trigger2 = movecontact

;Strawbelly Combination
[State -1, Combo]
type = ChangeState
value = 3000
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "MiniMe",command = "GeorgeLucas")) || var(52) = 3000
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = var(1) ;Use combo condition (above)
;trigger2 = stateno = 1020 || stateno = 1025 || stateno = 1200 || stateno = 1205 || (stateno = 1210 && animelemtime(14)>= 0)
;trigger2 = movecontact

;Strawbelly Combination
[State -1, DrKa]
type = ChangeState
value = 3100
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "DrKa",command = "r_DrKa")) || var(52) = 3100
triggerall = power >= 1000
triggerall = statetype != A
triggerall = numhelper(300)
triggerall = numhelper(301)
triggerall = helper(300),stateno != 322
triggerall = helper(301),stateno != 322
triggerall = helper(300),stateno != 305
triggerall = helper(301),stateno != 305
triggerall = helper(300),stateno != 331
triggerall = helper(301),stateno != 331
trigger1 = var(1) ;Use combo condition (above)
;trigger2 = stateno = 1020 || stateno = 1025 || stateno = 1200 || stateno = 1205 || (stateno = 1210 && animelemtime(14)>= 0)
;trigger2 = movecontact

;Strawbelly Combination
[State -1, Air]
type = ChangeState
value = 3200
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "MiniMe",command = "GeorgeLucas")) || var(52) = 3200
triggerall = power >= 1000
triggerall = numhelper(300)
triggerall = numhelper(301)
triggerall = helper(300),stateno != 322
triggerall = helper(301),stateno != 322
triggerall = helper(300),stateno != 305
triggerall = helper(301),stateno != 305
triggerall = helper(300),stateno != 331
triggerall = helper(301),stateno != 331
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 || stateno = 640 || stateno = 645
trigger2 = movecontact


;---------------------------------------------------------------------------
;Cannonball Attack
[State -1, Vuvuzela]
type = ChangeState
value = 1100
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "Vuvuzela",command = "Batman")) || var(52) = 1100
trigger1 = var(1) ;Use combo condition (above)

[State -1, Batman]
type = ChangeState
value = 1200
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "Batman",command = "Vuvuzela")) || var(52) = 1200
triggerall = numhelper(300)
triggerall = numhelper(301)
triggerall = helper(300),stateno != 322
triggerall = helper(301),stateno != 322
triggerall = helper(300),stateno != 305
triggerall = helper(301),stateno != 305
triggerall = helper(300),stateno != 331
triggerall = helper(301),stateno != 331
trigger1 = var(1) ;Use combo condition (above)

[State -1, Carpet]
type = ChangeState
value = 1400
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "MagicCarpet",command = "r_MagicCarpet")) || var(52) = 1400
trigger1 = var(1) ;Use combo condition (above)
trigger2 = statetype = A
trigger2 = ctrl
trigger3 = stateno = [600,640]
trigger3 = movecontact

[State -1, Counter]
type = ChangeState
value = 1000
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "Counter",command = "r_Counter")) || var(52) = 1000
trigger1 = var(1) ;Use combo condition (above)
[State -1, Counter]
type = ChangeState
value = 1010
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "Counter2",command = "r_Counter2")) || var(52) = 1010
trigger1 = var(1) ;Use combo condition (above)

[State -1, Carpet Kick]
type = ChangeState
value = 250
triggerall = (!var(55) && (command = "a") ) || var(52) = 1401
trigger1 = stateno = 1400
trigger1 = animelemtime(5) >= 0
[State -1, Carpet Bomb]
type = ChangeState
value = 1402
triggerall = (!var(55) && (command = "b") ) || var(52) = 1402
trigger1 = stateno = 1400
trigger1 = animelemtime(5) >= 0
[State -1, Carpet Shoot]
type = Helper
triggerall = (!var(55) && (command = "y" || command = "x") ) || var(52) = 1410
triggerall = !numhelper(1410)
trigger1 = stateno = 1400
trigger1 = animelemtime(5) >= 0
helpertype = normal
name = "Mini"
ID = 1410
stateno = 1410
pos = -32,ceil(pos y)
postype = back
facing = 1
ownpal = 1

;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = (command = "FF") || var(52) = 100
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = (command = "BB")  || var(52) = 105
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = (command = "y" && (command = "holdfwd" || command = "holdback")) || var(52) = 800
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = var(8) = 0
trigger1 = p2bodydist X < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

[State -1, Kung Fu Throw]
type = ChangeState
value = 830
triggerall = (command = "b" && (command = "holdfwd" || command = "holdback")) || var(52) = 830
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = var(8) = 0
trigger1 = p2bodydist X < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

[State -1, AKUMA]
type = ChangeState
value = 700
triggerall = (command = "CD")  || var(52) = 700
triggerall = power >= 500
triggerall = statetype != A
trigger1 = stateno = [150,154]

;
[State -1, Stand Forward Kick]
type = ChangeState
value = 250
triggerall = (!var(55) && (command = "a" && command != "holddown" && command = "holdfwd")) || var(52) = 250
;trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 230 && animelemtime(8)>=0) || stateno = 430 || (stateno = 210 && anim = 215) || (stateno = [600,640])
trigger2 = movecontact
trigger3 = (stateno = 200 && animelemtime(4) >= 0) || (stateno = 400 && animelemtime(4) >= 0) || (stateno = 210 && anim = 210 && animelemtime(6) >= 0) || (stateno = 410 && animelemtime(6) >= 0)
trigger4 = stateno = 256 && (time>=3)

[State -1, Stand Forward Juggler]
type = ChangeState
value = 255
triggerall = (!var(55) && (command = "b" && command != "holddown" && command = "holdfwd")) || var(52) = 255
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 230 && animelemtime(8)>=0) || stateno = 430 || (stateno = 210 && anim = 215)
trigger2 = movecontact
trigger3 = (stateno = 200 && animelemtime(4) >= 0) || (stateno = 400 && animelemtime(4) >= 0) || (stateno = 210 && anim = 210 && animelemtime(6) >= 0) || (stateno = 410 && animelemtime(6) >= 0)

[State -1, Dive Kick]
type = ChangeState
value = 645
triggerall = (!var(55) && (command = "b" && command = "holddown")) || var(52) = 645
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact

;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = (command = "x" && command != "holddown") || var(52) = 200
;triggerall = numhelper(300)
;triggerall = helper(300),stateno = 300
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Stand Hard Punch]
type = ChangeState
value = 210
triggerall = (command = "y" && command != "holddown") || var(52) = 210
;triggerall = numhelper(301)
;triggerall = helper(301),stateno = 300
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time >= 8

[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = (command = "a" && command != "holddown") || var(52) = 230
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 430 && animelemtime(5) >= 0)
trigger2 = movecontact
trigger3 = (stateno = 200 && animelemtime(4) >= 0) || (stateno = 400 && animelemtime(4) >= 0) || (stateno = 210 && anim = 210 && animelemtime(5) >= 0)

[State -1, Stand Hard Kick]
type = ChangeState
value = 240
triggerall = (command = "b" && command != "holddown") || var(52) = 240
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 430 && animelemtime(5) >= 0)
trigger2 = movecontact

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = (command = "start")
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = (command = "x" && command = "holddown") || var(52) = 400
;triggerall = numhelper(300)
;triggerall = helper(300),stateno = 300
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 430 && animelemtime(5) >= 0)
trigger2 = movecontact

[State -1, Crouching Hard Punch]
type = ChangeState
value = 410
triggerall = (command = "y" && command = "holddown") || var(52) = 410
triggerall = numhelper(300)
triggerall = numhelper(301)
triggerall = helper(300),stateno != 322
triggerall = helper(301),stateno != 322
triggerall = helper(300),stateno != 305
triggerall = helper(301),stateno != 305
triggerall = helper(300),stateno != 331
triggerall = helper(301),stateno != 331
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 430) || (stateno = 230 && animelemtime(8) >= 0)
trigger2 = movecontact
trigger3 = (stateno = 200 && animelemtime(4) >= 0) || (stateno = 400 && animelemtime(4) >= 0) || (stateno = 210 && anim = 210 && animelemtime(5) >= 0)

[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = (command = "a" && command = "holddown") || var(52) = 430
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 430 && animelemtime(5) >= 0)
trigger2 = movecontact

[State -1, Crouching Hard Kick]
type = ChangeState
value = 440
triggerall = (command = "b" && command = "holddown") || var(52) = 440
triggerall = numhelper(300)
triggerall = numhelper(301)
triggerall = helper(300),stateno != 322
triggerall = helper(301),stateno != 322
triggerall = helper(300),stateno != 305
triggerall = helper(301),stateno != 305
triggerall = helper(300),stateno != 331
triggerall = helper(301),stateno != 331
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 430) || (stateno = 230 && animelemtime(8) >= 0)
trigger2 = movecontact
trigger3 = (stateno = 200 && animelemtime(4) >= 0) || (stateno = 400 && animelemtime(4) >= 0) || (stateno = 210 && anim = 210 && animelemtime(5) >= 0)

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = (!var(55) && (command = "x"))  || var(52) = 600
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump Hard Punch]
type = ChangeState
value = 610
triggerall = (!var(55) && (command = "y"))  || var(52) = 610
triggerall = numhelper(300)
triggerall = numhelper(301)
triggerall = helper(300),stateno != 322
triggerall = helper(301),stateno != 322
triggerall = helper(300),stateno != 305
triggerall = helper(301),stateno != 305
triggerall = helper(300),stateno != 331
triggerall = helper(301),stateno != 331
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = (!var(55) && (command = "a"))  || var(52) = 630
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump Hard Kick]
type = ChangeState
value = 640
triggerall = (!var(55) && (command = "b"))  || var(52) = 640
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump combo]
type = ChangeState
value = 40
triggerall = (command = "holdup") || (var(52) = [40,43])
trigger1 = statetype != A && ctrl
trigger1 = var(55)
trigger2 = stateno = 210
trigger2 = anim = 215
trigger2 = movehit



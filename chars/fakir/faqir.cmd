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
;[Command]
;name = "MiniMe"   ;Same name as above
;command = ~D, DB, B, D, DB, B, x
;time = 20
;[Command]
;name = "MiniMe"   ;Same name as above
;command = ~D, DB, B, D, DB, B, y
;time = 20
;[Command]
;name = "DrKa"   ;Same name as above
;command = ~D, DF, F, D, DF, F, a
;time = 20
;[Command]
;name = "DrKa"   ;Same name as above
;command = ~D, DF, F, D, DF, F, b
;time = 20
;[Command]
;name = "GeorgeLucas"   ;Same name as above
;command = ~D, DF, F, D, DF, F, x
;time = 20
;[Command]
;name = "GeorgeLucas"   ;Same name as above
;command = ~D, DF, F, D, DF, F, y
;time = 20
[Command]
name = "ArabMoney"
command = ~D, DB, B, D, DB, B, x+y
time = 20
[Command]
name = "ArabMoney"
command = ~D, DB, B, D, DB, B, z
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
name = "Carpet"
command = ~D, DF, F, a
[Command]
name = "Carpet2"
command = ~D, DF, F, b
[Command]
name = "CarpetEX"
command = ~D, DF, F, a+b
[Command]
name = "CarpetEX"
command = ~D, DF, F, c

[Command]
name = "Fire"
command = ~F, DB, D, DB, B, a
[Command]
name = "Fire"
command = ~F, DB, D, DB, B, b
[Command]
name = "Fire"
command = ~F, D, B, a
[Command]
name = "Fire"
command = ~F, D, B, b
[Command]
name = "FireEX"
command = ~F, DB, D, DB, B, a+b
[Command]
name = "FireEX"
command = ~F, DB, D, DB, B, c
[Command]
name = "FireEX"
command = ~F, D, B, a+b
[Command]
name = "FireEX"
command = ~F, D, B, c

[Command]
name = "DickTornado"
command = ~F, DB, D, DB, B, x
[Command]
name = "DickTornado"
command = ~F, DB, D, DB, B, y
[Command]
name = "DickTornado"
command = ~F, D, B, x
[Command]
name = "DickTornado"
command = ~F, D, B, y
[Command]
name = "DickTornadoEX"
command = ~F, DB, D, DB, B, x+y
[Command]
name = "DickTornadoEX"
command = ~F, DB, D, DB, B, z
[Command]
name = "DickTornadoEX"
command = ~F, D, B, x+y
[Command]
name = "DickTornadoEX"
command = ~F, D, B, z

[Command]
name = "Teleport1"
command = ~F, D, DF, x
[Command]
name = "Teleport2"
command = ~F, D, DF, y
[Command]
name = "Teleport3"
command = ~B, D, DB, x
[Command]
name = "Teleport4"
command = ~B, D, DB, y

[Command]
name = "TeleportEX"
command = ~F, D, DF, x+y
[Command]
name = "TeleportEX"
command = ~F, D, DF, z

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
trigger2 = (stateno != 210 || (stateno = 210 && anim = 210 && animelemtime(11)>=0) || (stateno = 210 && anim = 211) )
trigger2 = (stateno != 240 || (stateno = 240 && animelemtime(5)>=0) )
trigger2 = (stateno != 230 || (stateno = 230 && animelemtime(3)>=0) )
trigger2 = movecontact
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
var(52) = ifelse(random<500,ifelse(random<500,1420,1430),43)

[State AI, Consider S.A]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (10*(var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 80)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),15-(4*movecontact)]
triggerall = p2dist y >= -85 - (enemynear,vel y*4)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -70
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 4 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || stateno = 100
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
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),35-(6*movecontact)]
triggerall = p2dist y >= -64 - (enemynear,vel y*6)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -62
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 6 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 210 && anim = 211)
trigger2 = movehit
var(52) = 240
ignorehitpause = 1
[State AI, Consider C.X]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (10*(var(55)*var(55))) * ifelse(movehit,2,1) * ifelse(moveguarded&&p2statetype=S,1.2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 40)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),27-(2*movecontact)]
triggerall = p2dist y >= -30 - (enemynear,vel y*2)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -45
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 2 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || stateno = 100
var(52) = 400
ignorehitpause = 1
[State AI, Consider S.X]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (10*(var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 40)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),58-(4*movecontact)]
triggerall = p2dist y >= -70 - (enemynear,vel y*4)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -60
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 4 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 400)
trigger2 = movecontact
var(52) = 200
ignorehitpause = 1
[State AI, Consider S.Y]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (9*(var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 100)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),82-(10*(movecontact>=1))]
triggerall = p2dist y >= -90 - (enemynear,vel y*10)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= ifelse((p2bodydist x>15),-50,-52)
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 10 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 && anim = 201)
trigger2 = movecontact
var(52) = 210
ignorehitpause = 1
[State AI, Consider C.A]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (11*(var(55)*var(55))) * ifelse(movehit,2,1) * ifelse(moveguarded&&p2statetype=S,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 80)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),57-(6*movecontact)]
triggerall = p2dist y >= -20 - (enemynear,vel y*5)
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 6 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || stateno = 100
var(52) = 430
ignorehitpause = 1
[State AI, Consider C.Y]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (9*(var(55)*var(55))) * ifelse(movehit,2,1) * ifelse(prevstateno=52||stateno=52,1.6,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 100)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),42-(6*(movecontact>=1))]
triggerall = p2dist y >= -30 - (enemynear,vel y*6)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -38
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 6 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 400
trigger2 = movecontact
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
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),51-(6*movecontact)]
triggerall = p2dist y >= -50 - (enemynear,vel y*5)
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -42
triggerall = (enemynear,GetHitVar(hittime) >= 6 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 400 || (stateno = 210 && anim = 211)
trigger2 = movecontact
var(52) = 440
ignorehitpause = 1

[State AI, Consider F.X]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (5*(var(55)*var(55))) * ifelse(movehit,2,1) * ifelse(moveguarded&&p2statetype=S,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 100)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),59-(14*(movecontact>=1))]
triggerall = p2dist y >= -90 - (enemynear,vel y*14)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) <= -9)
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 14 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 && anim = 201) || (stateno = 210 && anim = 211) || (stateno = 230 && animelemtime(3)>= 0) || (stateno = 400) || (stateno = 410) || (stateno = 430)
trigger2 = movecontact
var(52) = 205
ignorehitpause = 1
[State AI, Consider B.X]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (5*(var(55)*var(55))) * ifelse(movehit,2,1) * ifelse(moveguarded&&p2statetype=C,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 350)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),38-(16*(movecontact>=1))]
triggerall = p2dist y >= -70 - (enemynear,vel y*16)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) <= -43)
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*16) + (enemynear, pos y) <= -16 ) || (p2stateno != [5030,5120])
triggerall = (enemynear,GetHitVar(hittime) >= 16 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 && anim = 201) || (stateno = 210 && anim = 211) || (stateno = 230 && animelemtime(3)>= 0) || (stateno = 400) || (stateno = 410) || (stateno = 430)
trigger2 = movecontact
var(52) = 206
ignorehitpause = 1

[State AI, J.X]
type = Varset
triggerall = numenemy
triggerall = var(52) = 0 || random < 123
triggerall = var(55)
triggerall = p2bodydist x = [-20+(vel x*4)+(enemynear,vel x*4),26+(vel x*4)+(enemynear,vel x*4)]
triggerall = P2dist y = [-50+(vel y*4)+(enemynear,vel y*4),52+(vel y*4)+(enemynear,vel y*4)]
triggerall = Statetype = A
triggerall = p2stateno != [5100,5120]
triggerall = p2Statetype = A || vel y >= 0 || p2movetype = A
triggerall = (stateno != [120,169])
triggerall = random < (8*(var(55)*var(55)))
triggerall = time >= 7-var(55) || random < 10
trigger1 = ctrl
var(52) = 600
[State AI, J.Y]
type = Varset
triggerall = numenemy
triggerall = var(52) = 0 || random < 123
triggerall = var(55)
triggerall = p2bodydist x = [-29+(vel x*7)+(enemynear,vel x*7),39+(vel x*7)+(enemynear,vel x*7)]
triggerall = P2dist y = [-47+(vel y*7)+(enemynear,vel y*7),68+(vel y*7)+(enemynear,vel y*7)]
triggerall = abs(p2bodydist x) >= 18 || p2statetype != A
triggerall = Statetype = A
triggerall = p2stateno != [5100,5120]
triggerall = p2Statetype = A || vel y >= 0
triggerall = (stateno != [120,169])
triggerall = random < (5*(var(55)*var(55)))
triggerall = time >= 7-var(55) || random < 10
trigger1 = ctrl
var(52) = 610
[State AI, J.A]
type = Varset
triggerall = numenemy
triggerall = var(52) = 0 || random < 123
triggerall = var(55)
triggerall = p2bodydist x = [-19+(vel x*4)+(enemynear,vel x*4),29+(vel x*4)+(enemynear,vel x*4)]
triggerall = P2dist y = [-35+(vel y*4)+(enemynear,vel y*4),67+(vel y*4)+(enemynear,vel y*4)]
triggerall = Statetype = A
triggerall = p2stateno != [5100,5120]
triggerall = p2Statetype = A || vel y >= 0 || p2movetype = A
triggerall = (stateno != [120,169])
triggerall = random < (10*(var(55)*var(55)))
triggerall = time >= 7-var(55) || random < 10
trigger1 = ctrl
var(52) = 630
[State AI, J.B]
type = Varset
triggerall = numenemy
triggerall = var(52) = 0 || random < 123
triggerall = var(55)
triggerall = p2bodydist x = [-60+(vel x*4)+(enemynear,vel x*4),20+(vel x*4)+(enemynear,vel x*4)]
triggerall = P2dist y = [-35+(vel y*4)+(enemynear,vel y*4),74+(vel y*4)+(enemynear,vel y*4)]
triggerall = Statetype = A
triggerall = p2stateno != [5100,5120]
triggerall = p2Statetype = A || vel y >= 0 || p2movetype = A
triggerall = (stateno != [120,169])
triggerall = random < (9*(var(55)*var(55)))
triggerall = time >= 7-var(55) || random < 10
trigger1 = ctrl
var(52) = 640

[State AI, Consider CD]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,255]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (1*(var(55)*var(55)))
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 50)
triggerall = p2stateno != [5080,5110]
triggerall = p2bodydist x <= 40 || inguarddist
triggerall = p2dist y >= -80 - (enemynear,vel y*14)
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*14) + (enemynear, pos y) <= -14 ) || (p2stateno != [5030,5120])
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 14 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = var(1)
trigger1 = stateno != 205 || (stateno = 205 && animelemtime(10) >= 0)
trigger1 = prevstateno != 1000
var(52) = 1000
ignorehitpause = 1
[State AI, Consider Carpet Flying]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,255]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (2*(var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0)
triggerall = p2stateno != [5080,5110]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),192-(6*(movecontact>=1))]
triggerall = p2dist y >= -90 - (enemynear,vel y*8)
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*8) + (enemynear, pos y) <= -8 ) || (p2stateno != [5030,5120])
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 8 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = var(1)
trigger1 = stateno != 205 || (stateno = 205 && animelemtime(10) >= 0)
var(52) = ifelse(p2bodydist x<=111-(32*(movehit>=1))&&random<500,1100,1110)
ignorehitpause = 1
[State AI, Consider FLYING AWAY]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,255]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (5*(var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0)
triggerall = p2stateno != [5080,5110]
triggerall = p2bodydist x = [-10,50]
triggerall = p2dist y >= -100
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno = 1100 || stateno = 1110
trigger1 = p2statetype = A || movecontact
var(52) = 1101
ignorehitpause = 1
[State AI, Consider Sucking Dick Tornadoes]
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
triggerall = (enemynear,GetHitVar(hittime) >= 25 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = var(1)
trigger1 = stateno != 205 || (stateno = 205 && animelemtime(10) >= 0)
trigger1 = prevstateno != 1200
var(52) = 1200
ignorehitpause = 1
[State AI, Consider Burning The Ground]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,255]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (2*(var(55)*var(55))) * ifelse(movehit,2,1) * ifelse(moveguarded&&p2statetype=S,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0)
triggerall = p2stateno != [5080,5110]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),70-(20*movecontact)]
triggerall = p2dist y >= -10 - (enemynear,vel y*20)
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*20) + (enemynear, pos y) <= -20 ) || (p2stateno != [5030,5120])
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 20 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = var(1)
trigger1 = stateno != 205 || (stateno = 205 && animelemtime(10) >= 0)
var(52) = 1300
ignorehitpause = 1
[State AI, Consider Telefragging]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,255]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (1*(var(55)*var(55))) * ifelse(moveguarded,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 100)
triggerall = p2stateno != [5080,5110]
triggerall = p2bodydist x = [12,212]
triggerall = p2bodydist x != [105,127]
triggerall = p2dist y >= -90 - (enemynear,vel y*8)
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*8) + (enemynear, pos y) <= -8 ) || (p2stateno != [5030,5120])
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 52 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = var(1)
trigger1 = stateno != 205 || (stateno = 205 && animelemtime(10) >= 0)
trigger1 = prevstateno != [1400,1430]
var(52) = ifelse(p2bodydist x<=106,1400,1410)
ignorehitpause = 1

[State AI, Consider inviting the victim to Twister]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || (random < 100+var(55) && (var(52)!=[200,640]))
triggerall = var(55)
triggerall = random < (12*(var(55)*var(55)))
triggerall = random < 300 + ((lifemax - life)/16)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0 && enemynear, animtime <= -10) || (random < 120)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x <= 80
triggerall = p2bodydist y + (enemynear,vel y*8) >= -90
triggerall = statetype != A
triggerall = power >= 1000
triggerall =(p2movetype = H) || (enemynear, ctrl = 0) || (enemynear, statetype = A)
triggerall = p2stateno != [120,165]
triggerall = (prevstateno != [3000,3902]) || (stateno = [3000,3902])
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*5) + (enemynear, pos y) <= -5 ) || (p2stateno != [5030,5120])
triggerall = time >= 7-var(55) || random < 10
trigger1 = var(1)
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 250
trigger1 = !moveguarded
trigger2 = (stateno = 1000 || stateno = 1100 || stateno = 1110) && (movehit)
trigger3 = stateno = 1102
var(52) = 2200
ignorehitpause = 1
[State AI, Consider doing a distance super]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || (random < 100+var(55) && (var(52)!=[200,640]))
triggerall = var(55)
triggerall = random < (9*(var(55)*var(55)))
triggerall = random < 250 + ((lifemax - life)/16)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0 && enemynear, animtime <= -10) || (random < 80)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist y + (enemynear,vel y*8) >= -60
triggerall = statetype != A
triggerall = power >= 1000
triggerall =(p2movetype = H) || (enemynear, ctrl = 0) || (enemynear, statetype = A)
triggerall = p2statetype = A || p2bodydist x <= 20
triggerall = p2stateno != [120,165]
triggerall = (prevstateno != [3000,3902]) || (stateno = [3000,3902])
triggerall = time >= 7-var(55) || random < 10
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*10) + (enemynear, pos y) <= -10 ) || (p2stateno != [5030,5070])
triggerall = !numhelper(3300)
trigger1 = var(1)
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 250
trigger1 = !moveguarded
trigger2 = (stateno = 1000 || stateno = 1100 || stateno = 1110) && (movehit)
trigger3 = stateno = 1102
var(52) = ifelse(random<500,2300,2400)
ignorehitpause = 1
[State AI, Consider getting arab money]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || (random < 100+var(55) && (var(52)!=[200,640]))
triggerall = var(55)
triggerall = random < (12*(var(55)*var(55)))
triggerall = random < 300 + ((lifemax - life)/16)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0 && enemynear, animtime <= -10) || (p2life <= 25)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist y + (enemynear,vel y*8) >= -50
triggerall = statetype != A
triggerall = power >= 2000
triggerall =(p2movetype = H) || (enemynear, ctrl = 0) || (enemynear, statetype = A)
triggerall = p2statetype = A || p2bodydist x <= 20
triggerall = p2stateno != [120,165]
triggerall = (prevstateno != [3000,3902]) || (stateno = [3000,3902])
triggerall = time >= 7-var(55) || random < 10
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*10) + (enemynear, pos y) <= -10 ) || (p2stateno != [5030,5070])
triggerall = !numhelper(3300)
trigger1 = var(1)
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 250
trigger1 = !moveguarded
trigger2 = (stateno = 1000 || stateno = 1100 || stateno = 1110) && (movehit)
trigger3 = stateno = 1102
var(52) = 3000
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
var(52) = ifelse(random<500,800,830)
ignorehitpause = 1
[State AI, Consider Advancing]
type = VarSet
triggerall = var(55)
triggerall = var(52) = 0 || random < 80+var(55)
triggerall = random < (3*(var(55)*var(55)))
triggerall = ((enemynear, ctrl = 0) && p2movetype != A) || (p2movetype = A && (enemynear, facing = facing))
triggerall = (p2stateno != [5080,5130]) || (p2bodydist x = [45,100])
triggerall = p2bodydist x >= 45
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 100
trigger1 = ctrl
trigger1 = !moveguarded
var(52) = ifelse(random<80,ifelse(random<500,1400,1410),ifelse(random<200,41,100))

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
value = 130

[State AI, Guard L]
type = ChangeState
triggerall = stateno != 40
triggerall = random < 125*var(55)
triggerall = (var(55)) && (StateType != A) && (Ctrl) && (EnemyNear, Facing != Facing) && (var(50)<40)
trigger1 = (P2StateType = C) && (((P2MoveType = A) && (inguarddist)) || (EnemyNear, NumProj > 0))
value = 131

[State -1, Arab Money]
type = ChangeState
value = 3000
triggerall = (!var(55) && command = "ArabMoney") || var(52) = 3000
triggerall = power >= 2000
trigger1 = var(1)
trigger2 = (stateno = 1000 || stateno = 1100 || stateno = 1110) && (movecontact)
trigger3 = stateno = 1102

[State -1, DickTornado]
type = ChangeState
value = 2200
triggerall = (!var(55) && command = "DickTornadoEX") || var(52) = 2200
triggerall = power >= 1000
trigger1 = var(1)
trigger2 = (stateno = 1000 || stateno = 1100 || stateno = 1110) && (movecontact)
trigger3 = stateno = 1102
[State -1, DickTornado]
type = ChangeState
value = 1200
triggerall = (!var(55) && command = "DickTornado") || var(52) = 1200
triggerall = !numprojid(1200)
trigger1 = var(1)
[State -1, FIRAH]
type = ChangeState
value = 2300
triggerall = (!var(55) && command = "FireEX") || var(52) = 2300
triggerall = power >= 1000
trigger1 = var(1)
trigger2 = (stateno = 1000 || stateno = 1100 || stateno = 1110) && (movecontact)
trigger3 = stateno = 1102
[State -1, FIRAH]
type = ChangeState
value = 1300
triggerall = (!var(55) && command = "Fire") || var(52) = 1300
trigger1 = var(1)

[State -1, Teleport]
type = ChangeState
value = 2400
triggerall = (!var(55) && command = "TeleportEX") || var(52) = 2400
triggerall = power >= 1000
trigger1 = var(1)
trigger2 = (stateno = 1000 || stateno = 1100 || stateno = 1110) && (movecontact)
trigger3 = stateno = 1102
[State -1, Teleport]
type = ChangeState
value = 1400
triggerall = (!var(55) && command = "Teleport1") || var(52) = 1400
trigger1 = var(1)
[State -1, Teleport]
type = ChangeState
value = 1410
triggerall = (!var(55) && command = "Teleport2") || var(52) = 1410
trigger1 = var(1)
[State -1, Teleport]
type = ChangeState
value = 1420
triggerall = (!var(55) && command = "Teleport3") || var(52) = 1420
trigger1 = var(1)
[State -1, Teleport]
type = ChangeState
value = 1430
triggerall = (!var(55) && command = "Teleport4") || var(52) = 1430
trigger1 = var(1)

[State -1, Carpet]
type = ChangeState
value = 1100
triggerall = (!var(55) && command = "Carpet") || var(52) = 1100
trigger1 = var(1)
[State -1, Carpet]
type = ChangeState
value = 1110
triggerall = (!var(55) && command = "Carpet2") || var(52) = 1110
trigger1 = var(1)
[State -1, FLY AWAY]
type = ChangeState
value = 1101
triggerall = stateno = 1100 || stateno = 1110
triggerall = animelemtime(4) > 0
triggerall = animelemtime(5) < 0
trigger1 = (!var(55) && (command = "a" || command = "b")) || var(52) = 1101
trigger2 = movehit
trigger2 = numtarget
trigger2 = target,gethitvar(hitcount) > 6

[State -1, CD]
type = ChangeState
value = 1000
triggerall = (!var(55) && command = "CD") || var(52) = 1000
trigger1 = var(1)

;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = (command = "FF") || var(52) = 100
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;[State -1, Run Back]
;type = ChangeState
;value = 105
;trigger1 = (command = "BB")  || var(52) = 105
;trigger1 = statetype = S
;trigger1 = ctrl

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
triggerall = (!var(55) && command = "CD")  || var(52) = 700
triggerall = power >= 500
triggerall = statetype != A
trigger1 = stateno = [150,154]

[State -1, Stand Forward Punch]
type = ChangeState
value = 205
triggerall = (var(55)<5 && (command = "x" && command != "holddown"  && command = "holdfwd")) || var(52) = 205
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 && anim = 201) || (stateno = 210 && anim = 211) || (stateno = 230 && animelemtime(3)>= 0) || (stateno = 400) || (stateno = 410) || (stateno = 430)
trigger2 = movecontact
[State -1, Stand Backward Punch]
type = ChangeState
value = 206
triggerall = (var(55)<5 && (command = "x" && command != "holddown"  && command = "holdback")) || var(52) = 206
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 && anim = 201) || (stateno = 210 && anim = 211) || (stateno = 230 && animelemtime(3)>= 0) || (stateno = 400) || (stateno = 410) || (stateno = 430)
trigger2 = movecontact

;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = (var(55)<5 && (command = "x" && command != "holddown")) || var(52) = 200
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 400)
trigger2 = movecontact

[State -1, Stand Hard Punch]
type = ChangeState
value = 210
triggerall = (var(55)<5 && (command = "y" && command != "holddown")) || var(52) = 210
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 && anim = 201)
trigger2 = movecontact

[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = (var(55)<5 && (command = "a" && command != "holddown")) || var(52) = 230
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Stand Hard Kick]
type = ChangeState
value = 240
triggerall = (var(55)<5 && (command = "b" && command != "holddown")) || var(52) = 240
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 && anim = 201) || (stateno = 210 && anim = 211)
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
triggerall = (var(55)<5 && (command = "x" && command = "holddown")) || var(52) = 400
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Crouching Hard Punch]
type = ChangeState
value = 410
triggerall = (var(55)<5 && (command = "y" && command = "holddown")) || var(52) = 410
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movecontact

[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = (var(55)<5 && (command = "a" && command = "holddown")) || var(52) = 430
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Crouching Hard Kick]
type = ChangeState
value = 440
triggerall = (var(55)<5 && (command = "b" && command = "holddown")) || var(52) = 440
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 400 || (stateno = 210 && anim = 211)
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = (var(55)<5 && (command = "x"))  || var(52) = 600
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump Hard Punch]
type = ChangeState
value = 610
triggerall = (var(55)<5 && (command = "y"))  || var(52) = 610
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = (var(55)<5 && (command = "a"))  || var(52) = 630
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump Hard Kick]
type = ChangeState
value = 640
triggerall = (var(55)<5 && (command = "b"))  || var(52) = 640
trigger1 = statetype = A
trigger1 = ctrl

;[State -1, Jump combo]
;type = ChangeState
;value = 40
;triggerall = (command = "holdup") || (var(52) = [40,43])
;trigger1 = statetype != A && ctrl
;trigger1 = var(55)
;trigger2 = stateno = 210
;trigger2 = anim = 215
;trigger2 = movehit



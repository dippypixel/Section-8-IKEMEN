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
;  Note that if you modify the button remapping scheme here, this character will
; still be able to correctly detect the basic commands of other characters
; complying with the basic command order specified below, as long as their
; buttons haven't been remapped.  But no character (not even one with the same
; remapping scheme, not even another instance of this character) will be able to
; correctly detect this character's commands.  This shouldn't ever result in any
; false positives, but it could delay correct positives, and could erroneously
; make the helper AI activation method trigger a false negative in team simul
; modes, in which case the XOR-ed commands method would be needed to provide
; backup.  But of course, this isn't an issue in any version of Mugen prior to
; version 2002.04.14.

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

; Here add matching commands for any moves that must never be used randomly
; by the computer, such as suicide moves and super moves, and add the pairs
; to the XOR VarSet controller in State -3.

; If you're desperate to make sure that the AI always gets turned on as soon
; as possible, you can add more equivalents for your own commands here too,
; and add to the XOR VarSet controller's triggers accordingly.

; And of course, if you've run out of unique command labels (Mugen allows
; 128), you can remove as many of these as you want.  You'll of course need
; to modify the XOR VarSet controller's triggers accordingly, but Mugen
; will let you know if you forget to do so. :)


;-| Super Motions |--------------------------------------------------------
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
;
[Command]
name = "Fata"
command = ~D, DF, F, D, DF, F, z
time = 20

[Command]
name = "Uwaraba"
command = ~D, DF, F, D, DF, F, x
time = 20

[Command]
name = "Uwaraba"
command = ~D, DF, F, D, DF, F, y
time = 20

[Command]
name = "Barakabama"
command = ~D, DB, B, D, DB, B, x
time = 20

[Command]
name = "Barakabama"
command = ~D, DB, B, D, DB, B, y
time = 20

[Command]
name = "Uninspired"
command = ~D, DB, B, D, DB, B, a
time = 20

[Command]
name = "Uninspired"
command = ~D, DB, B, D, DB, B, b
time = 20

[Command]
name = "Inspired"
command = ~D, DF, F, D, DF, F, a
time = 20

[Command]
name = "Inspired"
command = ~D, DF, F, D, DF, F, b
time = 20

[Command]
name = "Diehard"
command = ~D, DB, B, DB, D, DF, F, x
time = 20

[Command]
name = "Diehard"
command = ~D, DB, B, DB, D, DF, F, y
time = 20

[Command]
name = "Diehard"
command = ~D, B, D, F, x
time = 20

[Command]
name = "Diehard"
command = ~D, B, D, F, y
time = 20

[Command]
name = "r_Diehard"
command = ~D, DF, F, DF, D, DB, B, x
time = 20

[Command]
name = "r_Diehard"
command = ~D, DF, F, DF, D, DB, B, y
time = 20

[Command]
name = "r_Diehard"
command = ~D, F, D, B, x
time = 20

[Command]
name = "r_Diehard"
command = ~D, F, D, B, y
time = 20

[Command]
name = "Fata"
command = ~D, F, D, F, z
time = 20

[Command]
name = "r_Fata"
command = ~D, B, D, B, z
time = 20

[Command]
name = "r_Fata"
command = ~D, DB, B, D, DB, B, z
time = 20

[Command]
name = "Uwaraba"
command = ~D, F, D, F, x
time = 20

[Command]
name = "Uwaraba"
command = ~D, F, D, F, y
time = 20

[Command]
name = "Barakabama"
command = ~D, B, D, B, x
time = 20

[Command]
name = "Barakabama"
command = ~D, B, D, B, y
time = 20

[Command]
name = "Uninspired"
command = ~D, B, D, B, a
time = 20

[Command]
name = "Uninspired"
command = ~D, B, D, B, b
time = 20

;-| Special Motions |------------------------------------------------------
[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
command = ~D, DB, B, y

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
name = "QCF_x"
command = ~D, F, x

[Command]
name = "QCF_y"
command = ~D, F, y

[Command]
name = "QCB_x"
command = ~D, B, x

[Command]
name = "QCB_y"
command = ~D, B, y

[Command]
name = "QCF_a"
command = ~D, F, a

[Command]
name = "QCF_b"
command = ~D, F, b

[Command]
name = "QCB_a"
command = ~D, B, a

[Command]
name = "QCB_b"
command = ~D, B, b

[Command]
name = "SPK"
command = ~D, F, a
[Command]
name = "SPK"
command = ~D, F, b
[Command]
name = "SPK"
command = ~D, DF, F, a
[Command]
name = "SPK"
command = ~D, DF, F, b
[Command]
name = "SPK"
command = ~D, F, UF, a
[Command]
name = "SPK"
command = ~D, F, UF, b
[Command]
name = "SPK"
command = ~D, DF, F, UF, a
[Command]
name = "SPK"
command = ~D, DF, F, UF, b


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
name = "AFF"     ;Required (do not remove)
command = $F, ~F, F
time = 10

[Command]
name = "ABB"     ;Required (do not remove)
command = $B, ~B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "CD"
command = y+b
time = 1

[Command]
name = "CD"
command = z
time = 1

[Command]
name = "Roll"
command = a+x
time = 1

[Command]
name = "Roll"
command = c
time = 1

[Command]
name = "AFF"     ;Required (do not remove)
command = $F, ~F, F
time = 10

[Command]
name = "ABB"     ;Required (do not remove)
command = $B, ~B, B
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

; This is generally the best place to put most of your AI directives.  For
; example, this controller would only be executed when the CPU is in control:
;
; [State -1, Haha!]
; type = ChangeState
; trigger1 = var(0) ; (Or use "var(58)>0" if you've chosen not to
;                   ; use the Simplifier variable/controller.)
; trigger1 = ctrl
; trigger1 = StateType = S
; trigger1 = MoveType = I
; trigger1 = P2MoveType = H
; trigger1 = NumEnemy = 1
; trigger1 = Enemy,GetHitVar(HitTime) > 60
; trigger1 = PrevStateNo != 195
; trigger1 = Random < 99
; value = 195

; And of course, most human-only command-based ChangeStates also belong
; in State -1.  For example, this move would only be performable by a human:
;
; [State -1, Death Before Dishonor]
; type = ChangeState
; trigger1 = command = "suicide"
; trigger1 = !var(0) ; (Or use "var(58)<1" if you've chosen not to
;                    ; use the Simplifier variable/controller.)
; trigger1 = ctrl
; trigger1 = StateType != A
; trigger1 = MoveType = I
; value = {suicide state number}

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
trigger2 = stateno != 440
trigger2 = stateno != 260
trigger2 = movecontact
trigger3 = stateno = 40
trigger3 = animtime != 0
trigger4 = (stateno = 1402) && (movecontact)
var(9) = 1

[State -1, AI Consideration reset]
type = VarSet
trigger1 = stateno != 40
var(52) = 0
ignorehitpause = 1

; AI START

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
var(52) = ifelse(random<500,ifelse(random<500,1410,1400),105)

[State AI, Consider S.X]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (10*(var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),ifelse(anim=200,25,19)-(3*movecontact)]
triggerall = p2dist y >= -99 - (enemynear,vel y*3)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= ifelse(anim=200,-84,-100)
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200
trigger2 = movecontact >= 2
var(52) = 200
ignorehitpause = 1
[State AI, Consider S.Y]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (9*(var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),61-(25*(movecontact>=1))]
triggerall = p2dist y >= -99 - (enemynear,vel y*10)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -33
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || stateno = 430 || stateno = 400 || stateno = 410 || (stateno = 230 && anim = 230)
trigger2 = movecontact >= 2
var(52) = 210
ignorehitpause = 1
[State AI, Consider S.A]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+var(55)
triggerall = var(55)
triggerall = random < (9*(var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 90)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),52-(20*(movecontact>=1))]
triggerall = p2dist y >= ifelse((p2bodydist x>25),-99,-40) - (enemynear,vel y*9)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= ifelse((p2bodydist x>25),-86,-12)
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || stateno = 430 || (stateno = 230 && anim = 230) || (stateno = 210 && anim = 215)
trigger2 = movecontact >= 2
var(52) = 230
ignorehitpause = 1
[State AI, Consider S.B]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+var(55)
triggerall = var(55)
triggerall = random < (8*(var(55)*var(55))) * ifelse(movehit||p2statetype=L,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0)
triggerall = p2stateno != [5110,5120]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),72-(25*(movecontact>=1))]
triggerall = p2dist y >= -111 - (enemynear,vel y*12)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -10
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
triggerall = !numtarget(240)
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || stateno = 400 || stateno = 230 || stateno = 420 || (stateno = 210 && (anim = 215 || (anim = 210 && animelemtime(9) >= 0))) || stateno = 410
trigger2 = (stateno != 420 || animelemtime(9)>=0)
trigger2 = movecontact >= 2
var(52) = 240
ignorehitpause = 1

[State AI, Consider C.X]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+var(55)
triggerall = var(55)
triggerall = random < (9*(var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 100)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),22-(5*(movecontact>=1))]
triggerall = p2dist y >= -79 - (enemynear,vel y*4)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -50
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || stateno = 400
trigger2 = movecontact >= 2
var(52) = 400
ignorehitpause = 1
[State AI, Consider C.Y]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+var(55)
triggerall = var(55)
triggerall = random < (10*(var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 70)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),115-(10*(movecontact>=1))]
triggerall = p2dist y >= -89 - (enemynear,vel y*8)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -52
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || stateno = 400 || stateno = 430 || (stateno = 230 && anim = 230)
trigger2 = movecontact >= 2
var(52) = 410
ignorehitpause = 1
[State AI, Consider C.A]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+var(55)
triggerall = var(55)
triggerall = random < (10*(var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),45-(5*(movecontact>=1))]
triggerall = p2dist y >= -10 - (enemynear,vel y*5)
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || stateno = 430 || stateno = 400
trigger2 = movecontact >= 2
var(52) = 430
ignorehitpause = 1
[State AI, Consider C.B]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+var(55)
triggerall = var(55)
triggerall = random < (8*(var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),45-(25*(movecontact>=1))]
triggerall = p2dist y >= -10 - (enemynear,vel y*7)
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || stateno = 400 || (stateno = 230 && var(19)) || stateno = 430
trigger2 = movecontact >= 2
var(52) = 440
ignorehitpause = 1

[State AI, Consider CF.X]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+var(55)
triggerall = var(55)
triggerall = random < (5*(var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 100)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),55-(20*(movecontact>=1))]
triggerall = p2dist y >= -109 - (enemynear,vel y*8)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -47
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || (stateno = 230 && anim = 230) || stateno = 400 || stateno = 430 || stateno = 210 || stateno = 410
trigger2 = movecontact >= 2
var(52) = 420
ignorehitpause = 1
[State AI, Consider F.A]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < (80+var(55))  * ifelse(moveguarded,2,1)
triggerall = var(55)
triggerall = random < (4*(var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 80)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),70-(20*(movecontact>=1))]
triggerall = p2dist y >= -99 - (enemynear,vel y*7)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -50
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || (stateno = 230 && anim = 230) || stateno = 400 || stateno = 430 || stateno = 210 || stateno = 410 || stateno = 420
trigger2 = (stateno != 420 || animelemtime(9)>=0)
trigger2 = movecontact >= 2
var(52) = 250
ignorehitpause = 1
[State AI, Consider CD]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+var(55)
triggerall = var(55)
triggerall = random < (1*(var(55)*var(55))) * ifelse(moveguarded,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),74-(20*(movecontact>=1))]
triggerall = p2dist y >= -99 - (enemynear,vel y*25)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -55
triggerall = p2movetype != H || p2statetype != A || (p2stateno = [120,169])
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 410 || stateno = 420
trigger2 = (stateno != 420 || animelemtime(9)>=0)
trigger2 = movecontact >= 2
trigger3 = stateno = 200 || (stateno = 230 && anim = 230) || stateno = 400 || stateno = 430 || stateno = 210
trigger3 = moveguarded >= 2 && random < 100
var(52) = 260
ignorehitpause = 1

[State AI, J.X]
type = Varset
triggerall = numenemy
triggerall = var(52) = 0 || random < 123
triggerall = var(55)
triggerall = p2bodydist x = [-28+(vel x*4)+(enemynear,vel x*4),26+(vel x*4)+(enemynear,vel x*4)]
triggerall = P2dist y = [-51+(vel y*4)+(enemynear,vel y*4),60+(vel y*4)+(enemynear,vel y*4)]
triggerall = Statetype = A
triggerall = p2stateno != [5100,5120]
triggerall = p2Statetype = A || vel y >= 0
triggerall = (stateno != [120,169])
triggerall = random < (5*(var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = time >= 7-var(55) || random < 10
trigger1 = ctrl || stateno = 110
trigger2 = stateno = 600
trigger2 = prevstateno != 600
trigger2 = movecontact
var(52) = 600
[State AI, J.A]
type = Varset
triggerall = numenemy
triggerall = var(52) = 0 || random < 123
triggerall = var(55)
triggerall = p2bodydist x = [-28+(vel x*4)+(enemynear,vel x*4),28+(vel x*3)+(enemynear,vel x*4)]
triggerall = P2dist y = [-8+(vel y*4)+(enemynear,vel y*4),120+(vel y*3)+(enemynear,vel y*4)]
triggerall = Statetype = A
triggerall = p2stateno != [5100,5120]
triggerall = p2Statetype = A || vel y >= 0
triggerall = (stateno != [120,169])
triggerall = random < (5*(var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = time >= 7-var(55) || random < 10
trigger1 = ctrl || stateno = 110
trigger2 = stateno = 600 || stateno = 630
trigger2 = prevstateno != 630
trigger2 = movecontact
var(52) = 630
[State AI, J.Y]
type = Varset
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
trigger2 = stateno = 600 || stateno = 630
trigger2 = movecontact
var(52) = 610
[State AI, J.B]
type = Varset
triggerall = numenemy
triggerall = var(52) = 0 || random < 123
triggerall = var(55)
triggerall = p2bodydist x = [-27+(vel x*7)+(enemynear,vel x*7),60+(vel x*7)+(enemynear,vel x*7)]
triggerall = P2dist y = [-51+(vel y*7)+(enemynear,vel y*7),90+(vel y*7)+(enemynear,vel y*7)]
triggerall = Statetype = A
triggerall = p2stateno != [5100,5120]
triggerall = p2Statetype = A || vel y >= 0
triggerall = (stateno != [120,169])
triggerall = random < (5*(var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = time >= 7-var(55) || random < 10
trigger1 = ctrl || stateno = 110
trigger2 = stateno = 600 || stateno = 630
trigger2 = movecontact
var(52) = 640
[State AI, J.DICK]
type = Varset
triggerall = numenemy
triggerall = var(52) = 0 || random < 123
triggerall = var(55)
triggerall = p2bodydist x = [-25+(vel x*6)+(enemynear,vel x*6),5+(vel x*6)+(enemynear,vel x*6)]
triggerall = P2dist y = [-11+(vel y*6)+(enemynear,vel y*6),130+(vel y*6)+(enemynear,vel y*6)]
triggerall = Statetype = A
triggerall = p2stateno != [5110,5120]
triggerall = p2Statetype = A || vel y >= 0
triggerall = (stateno != [120,169])
triggerall = random < (5*(var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = time >= 7-var(55) || random < 10
triggerall = vel y + pos y <= -8
trigger1 = ctrl
trigger2 = stateno = [600,640]
trigger2 = movehit
var(52) = 660

[State AI, Consider Becoming a stock photo]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+var(55)
triggerall = var(55)
triggerall = random < (2*(var(55)*var(55))) * ifelse(movehit||p2movetype=A,2,1)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [-5,240]
triggerall = p2dist y = [-50+(enemynear,vel y*4),50+(enemynear,vel y*4)]
triggerall = p2Statetype = A || vel y >= 0 || random < 100
triggerall = statetype = A
triggerall = (stateno != [120,169])
triggerall = time >= 7-var(55) || random < 10
trigger1 = ctrl
trigger1 = pos y <= -35 || vel y >= 0 || random < 100 || stateno = 105
trigger2 = stateno = [600,640]
trigger2 = movecontact
var(52) = 1000
ignorehitpause = 1

[State AI, Consider Whatever]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (2*(var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 450)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),96-(25*(movecontact>=1))]
triggerall = p2dist y >= -70 - (enemynear,vel y*9)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -55
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = var(9)
trigger1 = stateno != 250 || movecontact >= 12
trigger1 = (stateno != 420 || animelemtime(9)>=0)
trigger1 = !moveguarded
var(52) = ifelse((random<500||(p2bodydist x<=35||p2statetype=A))&&p2bodydist x<=82-(25*(movecontact>=1)),1100,1110)
ignorehitpause = 1
[State AI, Consider Backanding]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (2*(var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),67-(25*(movecontact>=1))]
triggerall = p2dist y >= -90 - (enemynear,vel y*9)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -24
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
triggerall = !numtarget(1100)
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = var(9)
trigger1 = stateno != 250 || movecontact >= 12
trigger1 = (stateno != 200 && stateno != 400) || moveguarded
trigger1 = (stateno != 420 || animelemtime(9)>=0)
trigger1 = !moveguarded || p2statetype = C
var(52) = ifelse((random<500||movehit)&&p2bodydist x<=45-(25*(movecontact>=1))&&!moveguarded,1200,1210)
ignorehitpause = 1
[State AI, Consider Throwing A Projectile]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (2*(var(55)*var(55))) * ifelse(movehit&&p2bodydist x>=90,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0)
triggerall = (p2stateno != [5080,5130]) || (p2stateno = 5120 && p2bodydist x >= 120)
;triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),96-(8*(movecontact>=1))]
triggerall = p2dist y >= -90 - (enemynear,vel y*6)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -60
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
triggerall = prevstateno != [1300,1310]
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = var(9)
trigger1 = stateno != 250 || movecontact >= 12
trigger1 = (stateno != 420 || animelemtime(9)>=0)
trigger1 = !moveguarded
var(52) = ifelse(random<500,1300,1310)
ignorehitpause = 1
[State AI, Consider Backpedaling like a pussy]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (2*(var(55)*var(55))) * ifelse(moveguarded,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 850)
triggerall = enemynear, numproj = 0
triggerall = p2stateno != [5080,5130]
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
triggerall = prevstateno != [1400,1410]
triggerall = backedgedist >= 70
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*15) + (enemynear, pos y) <= -15 ) || (p2stateno != [5030,5120])
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 230 || stateno = 400 || stateno = 430 || stateno = 420
trigger2 = (stateno != 420 || animelemtime(9)>=0)
trigger2 = moveguarded
trigger2 = random < 100
trigger3 = (stateno = 210 && anim = 210) || stateno = 240 || stateno = 410
trigger3 = movecontact
var(52) = ifelse(random<500||movehit,1400,1410)
ignorehitpause = 1

[State AI, Consider uwarembaring]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || (random < 100+var(55) && (var(52)!=[200,640]))
triggerall = var(55)
triggerall = random < (12*(var(55)*var(55)))
triggerall = random < 300 + ((lifemax - life)/16)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0 && enemynear, animtime <= -10)
triggerall = p2stateno != [5110,5130]
triggerall = p2bodydist x = [-35,ifelse(statetype!=A,90,70)]
triggerall = p2bodydist y + (enemynear,vel y*3) = [-45,100]
triggerall = power >= 1000
triggerall =(p2movetype = H) || (enemynear, ctrl = 0) || (enemynear, statetype = A)
triggerall = (p2stateno != [120,165]) || (moveguarded && p2statetype = C)
triggerall = (prevstateno != [3000,3902]) || (stateno = [3000,3902])
triggerall = time >= 7-var(55) || random < 10
trigger1 = var(9)
trigger1 = stateno != 250 || movecontact >= 12
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 250
trigger1 = (stateno != 420 || animelemtime(9)>=0)
trigger2 = stateno = 1100 || stateno = 1110 || stateno = 1200 || stateno = 1210 || stateno = 1402 || stateno = 1403
trigger2 = movehit || (moveguarded && p2statetype = C)
trigger3 = statetype = A
trigger3 = ctrl || ((stateno = [600,640]) && movehit)
trigger4 = (stateno = 1300 || stateno = 1310) && (time >= 20)
var(52) = ifelse(statetype=A,3050,3000)
ignorehitpause = 1
[State AI, Consider voting barack obama once more]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || (random < 100+var(55) && (var(52)!=[200,640]))
triggerall = var(55)
triggerall = random < (12*(var(55)*var(55)))
triggerall = random < 300 + ((lifemax - life)/16)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0 && enemynear, animtime <= -10)
triggerall = p2stateno != 5120
triggerall = p2bodydist y + (enemynear,vel y*8) >= -60
triggerall = statetype != A
triggerall = power >= 1000
triggerall =(p2movetype = H) || (enemynear, ctrl = 0) || (enemynear, statetype = A)
triggerall = p2statetype = A || p2bodydist x <= 20
triggerall = p2stateno != [120,165]
triggerall = (prevstateno != [3000,3902]) || (stateno = [3000,3902])
triggerall = time >= 7-var(55) || random < 10
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*10) + (enemynear, pos y) <= -10 ) || (p2stateno != [5030,5070])
trigger1 = var(9)
trigger1 = stateno != 250 || movecontact >= 12
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 250
trigger1 = (stateno != 420 || animelemtime(9)>=0)
trigger2 = stateno = 1100 || stateno = 1110 || stateno = 1200 || stateno = 1210 || stateno = 1402 || stateno = 1403
trigger2 = movecontact
trigger3 = (stateno = 1300 || stateno = 1310) && (time >= 20)
var(52) = 3100
ignorehitpause = 1
[State AI, Consider cowardly kicking]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || (random < 100+var(55) && (var(52)!=[200,640]))
triggerall = var(55)
triggerall = random < (12*(var(55)*var(55)))
triggerall = random < (200 + ((lifemax - life)/16)) / ifelse(power>=2500,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0 && enemynear, animtime <= -10)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [-5,81]
triggerall = power >= 2000
triggerall =(p2movetype = H) || (enemynear, ctrl = 0) || (enemynear, statetype = A)
triggerall = (prevstateno != [3000,3902]) || (stateno = [3000,3902])
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*50) + (enemynear, pos y) <= -50 ) || (p2stateno != [5030,5120])
triggerall = time >= 7-var(55) || random < 10
trigger1 = var(9)
trigger1 = stateno != 250 || movecontact >= 12
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 250
trigger1 = stateno != 200 && stateno != 230 && stateno != 400 && stateno != 430 && stateno != 240
trigger1 = (stateno != 420 || animelemtime(9)>=0)
trigger1 = moveguarded
trigger2 = ((stateno = 1100 || stateno = 1110) && moveguarded && frontedgedist <= 90) || ((stateno = 1200 || stateno = 1210) && (movehit = [1,3]) && (frontedgedist >= 77)) || (stateno = 240 || stateno = 1403 && (movehit=[1,3]))
trigger3 = statetype = A
trigger3 = p2statetype != A
trigger3 = ctrl
var(52) = 3200
ignorehitpause = 1
[State AI, Consider dying hard]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || (random < 100+var(55) && (var(52)!=[200,640]))
triggerall = var(55)
triggerall = random < (12*(var(55)*var(55)))
triggerall = random < 300 + ((lifemax - life)/16)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0 && enemynear, animtime <= -10)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x <= 65
triggerall = p2bodydist y + (enemynear,vel y*3) >= -50
triggerall = statetype != A
triggerall = power >= 3000
triggerall =(p2movetype = H) || (enemynear, ctrl = 0) || (enemynear, statetype = A)
triggerall = p2stateno != [120,165]
triggerall = (prevstateno != [3000,3902]) || (stateno = [3000,3902])
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*16) + (enemynear, pos y) <= -16 ) || (p2stateno != [5030,5120])
triggerall = time >= 7-var(55) || random < 10
trigger1 = var(9)
trigger1 = stateno != 250 || movecontact >= 12
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 250
trigger1 = (stateno != 420 || animelemtime(9)>=0)
trigger2 = stateno = 1100 || stateno = 1110 || stateno = 1200 || stateno = 1210 || stateno = 1402 || stateno = 1403
trigger2 = movecontact
trigger3 = (stateno = 1300 || stateno = 1310) && (time >= 20)
var(52) = 3300
ignorehitpause = 1
[State AI, Consider anihilation]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || (random < 100+var(55) && (var(52)!=[200,640]))
triggerall = var(55)
triggerall = random < (12*(var(55)*var(55)))
triggerall = random < 300 + ((lifemax - life)/16)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0 && enemynear, animtime <= -10)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist y + (enemynear,vel y*3) >= -80
triggerall = statetype != A
triggerall = power >= 3000
triggerall = (p2life <= 500)
triggerall =(p2movetype = H) || (enemynear, ctrl = 0) || (enemynear, statetype = A)
triggerall = p2stateno != [120,165]
triggerall = (prevstateno != [3000,3902]) || (stateno = [3000,3902])
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*16) + (enemynear, pos y) <= -16 ) || (p2stateno != [5030,5120])
triggerall = time >= 7-var(55) || random < 10
;trigger1 = var(9)
trigger1 = ctrl
trigger1 = statetype != A
trigger1 = stateno != 250 || movecontact >= 12
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 250
trigger1 = (stateno != 420 || animelemtime(9)>=0)
;trigger2 = stateno = 1100 || stateno = 1110 || stateno = 1200 || stateno = 1210
;trigger2 = movecontact
;trigger3 = (stateno = 1300 || stateno = 1310) && (time >= 20)
var(52) = 3600
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


[State AI, AI(R) Throw]
type = Varset
triggerall = var(55)
triggerall = statetype = A
triggerall = ctrl
triggerall = random < (15*(var(55)*var(55)))
triggerall = prevstateno != 45
trigger1 = p2bodydist X < 14
trigger1 = abs(p2bodydist y) < 40
trigger1 = (p2statetype = A)
trigger1 = p2movetype != H
var(52) = 860

[State AI, Consider Countering/Guard Canceling]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 55+var(55)
triggerall = var(55)
triggerall = random < (2*var(55)) + ifelse(p2life - life<0,0,(p2life - life)/4)
;triggerall = p2bodydist x = [-5,60]
;triggerall = p2dist y >= -50
triggerall = statetype != A
triggerall = power >= 500
triggerall = power < 2500 || random < 150 || power >= 3500
triggerall = time >= 5-var(55) || random < 10
trigger1 = stateno = 150 || stateno = 152
var(52) = ifelse((p2bodydist x = [-5,60])&&(p2dist y >= -50),700,ifelse(random<500,710,711))
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

[State AI, Follow up with a slap]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+var(55)
triggerall = var(55)
triggerall = random < (8*(var(55)*var(55)))
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (animtime <= -4)
triggerall = p2stateno != [5080,5120]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),119]
triggerall = p2dist y >= -111 - (enemynear,vel y*4)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -50
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno = 1400 || stateno = 1410
trigger1 = animelemtime(5) >= 0
var(52) = 1402
ignorehitpause = 1
[State AI, Follow up with a kick]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+var(55)
triggerall = var(55)
triggerall = random < (8*(var(55)*var(55))) * ifelse(p2statetype=C,1.1,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (animtime <= -4)
triggerall = p2stateno != [5110,5120]
triggerall = (p2stateno != [120,169]) || (p2statetype = C)
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),112]
triggerall = p2dist y >= -111 - (enemynear,vel y*4)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -10
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
triggerall = !numtarget(240)
trigger1 = stateno = 1400 || stateno = 1410
trigger1 = animelemtime(5) >= 0
var(52) = 1403
ignorehitpause = 1
[State AI, Follow up with a wallslam]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+var(55)
triggerall = var(55)
triggerall = random < (8*(var(55)*var(55)))
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (animtime <= -9)
triggerall = p2stateno != [5080,5120]
triggerall = p2stateno != [120,169]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,25),220]
triggerall = p2dist y >= -115 - (enemynear,vel y*12)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -86
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
triggerall = !numtarget(1401)
trigger1 = stateno = 1400 || stateno = 1410
trigger1 = animelemtime(5) >= 0
var(52) = 1401
ignorehitpause = 1
[State AI, Follow up with a trip]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+var(55)
triggerall = var(55)
triggerall = random < (8*(var(55)*var(55))) * ifelse(p2statetype=S,1.1,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (animtime <= -9)
triggerall = p2stateno != [5110,5120]
triggerall = (p2stateno != [120,169]) || (p2statetype = S)
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),260]
triggerall = p2dist y >= -11 - (enemynear,vel y*12)
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
triggerall = !numtarget(240)
trigger1 = stateno = 1400 || stateno = 1410
trigger1 = animelemtime(5) >= 0
var(52) = 1404
ignorehitpause = 1

[State AI, Guard S]
type = ChangeState
triggerall = stateno != 40
triggerall = random < 125*var(55)
triggerall = (var(55)) && (StateType != A) && (Ctrl) && (EnemyNear, Facing != Facing) && (var(50)<40)
trigger1 = (P2StateType != C) && (((P2MoveType = A) && (inguarddist)) || (EnemyNear, NumProj > 0))
value = ifelse(random<50&&p2bodydist x<=100&&backedgedist >= 66&&(stateno!=[120,159]),1410,130)

[State AI, Guard L]
type = ChangeState
triggerall = stateno != 40
triggerall = random < 125*var(55)
triggerall = (var(55)) && (StateType != A) && (Ctrl) && (EnemyNear, Facing != Facing) && (var(50)<40)
trigger1 = (P2StateType = C) && (((P2MoveType = A) && (inguarddist)) || (EnemyNear, NumProj > 0))
value = ifelse(random<50&&p2bodydist x<=100&&backedgedist >= 66&&(stateno!=[120,159]),1400,131)

; AI END

;===========================================================================
;---------------------------------------------------------------------------
[State -1, Fatal Ko]
type = ChangeState
value = 3600
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "Fata",command = "r_Fata")) || var(52) = 3600
triggerall = power >= 3000
triggerall = (p2life <= 500)
trigger1 = statetype != A
trigger1 = ctrl
;trigger1 = var(9)
;trigger2 = stateno = 1100 || stateno = 1110 || stateno = 1200 || stateno = 1210 || stateno = 1402
;trigger2 = movecontact
;trigger3 = (stateno = 1300 || stateno = 1310) && (time >= 20)

[State -1, Die Hard]
type = ChangeState
value = 3300
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "Diehard",command = "r_Diehard")) || var(52) = 3300
triggerall = power >= 3000
trigger1 = var(9)
trigger2 = stateno = 1100 || stateno = 1110 || stateno = 1200 || stateno = 1210 || stateno = 1402 || stateno = 1403
trigger2 = movecontact
trigger3 = (stateno = 1300 || stateno = 1310) && (time >= 20)

[State -1, Uwareba]
type = ChangeState
value = 3000
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "Uwaraba",command = "Barakabama")) || var(52) = 3000
triggerall = power >= 1000
trigger1 = var(9)
trigger2 = stateno = 1100 || stateno = 1110 || stateno = 1200 || stateno = 1210 || stateno = 1402 || stateno = 1403
trigger2 = movecontact
trigger3 = (stateno = 1300 || stateno = 1310) && (time >= 20)

[State -1, Air Uwareba]
type = ChangeState
value = 3050
triggerall = (var(55)<5 && command = "Uwaraba") || var(52) = 3050
triggerall = power >= 1000
trigger1 = statetype = A
trigger1 = ctrl || ((stateno = [600,640]) && movecontact) || stateno = 110 || stateno = 115

[State -1, Barakabama]
type = ChangeState
value = 3100
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "Barakabama",command = "Uwaraba")) || var(52) = 3100
triggerall = power >= 1000
trigger1 = var(9)
trigger2 = stateno = 1100 || stateno = 1110 || stateno = 1200 || stateno = 1210 || stateno = 1402 || stateno = 1403
trigger2 = movecontact
trigger3 = (stateno = 1300 || stateno = 1310) && (time >= 20)

[State -1, That kick]
type = ChangeState
value = 3200
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "Uninspired",command = "Inspired")) || var(52) = 3200
triggerall = power >= 2000
trigger1 = var(9)
trigger2 = stateno = 1100 || stateno = 1110 || stateno = 1200 || stateno = 1210 || stateno = 1402 || stateno = 1403
trigger2 = movecontact
trigger3 = statetype = A
trigger3 = ctrl || ((stateno = [600,640]) && movecontact) || stateno = 110 || stateno = 115
trigger4 = (stateno = 1300 || stateno = 1310) && (time >= 20)

;===========================================================================
;---------------------------------------------------------------------------
; Stock Photo
[State -1, What]
type = ChangeState
value = 1100
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "QCF_a",command = "QCB_a")) || var(52) = 1100
trigger1 = var(9)

[State -1, What]
type = ChangeState
value = 1110
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "QCF_b",command = "QCB_b")) || var(52) = 1110
trigger1 = var(9)
trigger2 = stateno = 1402 && movecontact

[State -1, Backhander]
type = ChangeState
value = 1200
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "QCB_x",command = "QCF_x")) || var(52) = 1200
trigger1 = var(9)

[State -1, Backhander]
type = ChangeState
value = 1210
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "QCB_y",command = "QCF_y")) || var(52) = 1210
trigger1 = var(9)

[State -1, Stray Bullet]
type = ChangeState
value = 1300
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "QCF_x",command = "QCB_x")) || var(52) = 1300
trigger1 = var(9)

[State -1, Stray Bullet]
type = ChangeState
value = 1310
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "QCF_y",command = "QCB_y")) || var(52) = 1310
trigger1 = var(9)

[State -1, Meh]
type = ChangeState
value = 1400
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "QCB_a",command = "QCF_a")) || var(52) = 1400
trigger1 = var(9)
trigger1 = stateno != 1402

[State -1, Meh]
type = ChangeState
value = 1410
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "QCB_b",command = "QCF_b")) || var(52) = 1410
trigger1 = var(9)
trigger1 = stateno != 1402

[State -1, Follow up]
type = ChangeState
value = 1401
triggerall = (var(55)<5 && command = "y") || var(52) = 1401
trigger1 = stateno = 1400 || stateno = 1410
trigger1 = animelemtime(4) > 0
[State -1, Follow up]
type = ChangeState
value = 1404
triggerall = (var(55)<5 && command = "b") || var(52) = 1404
trigger1 = stateno = 1400 || stateno = 1410
trigger1 = animelemtime(4) > 0
[State -1, Follow up]
type = ChangeState
value = 1402
triggerall = (var(55)<5 && command = "x") || var(52) = 1402
trigger1 = stateno = 1400 || stateno = 1410
trigger1 = animelemtime(4) > 0
[State -1, Follow up]
type = ChangeState
value = 1403
triggerall = (var(55)<5 && command = "a") || var(52) = 1403
trigger1 = stateno = 1400 || stateno = 1410
trigger1 = animelemtime(4) > 0

[State -1, Stock Photo Attack]
type = ChangeState
value = 1000
triggerall = ((command = "SPK") && var(55)<5) || var(52) = 1000
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,640]
trigger2 = movecontact
trigger3 = stateno = 40

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
[State -1, Run Fwd]
type = ChangeState
value = 105
trigger1 = (command = "BB") || (var(52) = 105)
trigger1 = statetype = S
trigger1 = ctrl

[State -1, FLY AWAY]
type = ChangeState
value = 110
triggerall = !(var(22) & floor(exp(1*ln(2)) + 0.5) )
triggerall = (command = "AFF") || (var(52) = 110)
trigger1 = statetype = A
trigger1 = ctrl

[State -1, UGH]
type = ChangeState
value = 115
triggerall = !(var(22) & floor(exp(1*ln(2)) + 0.5) )
triggerall = (command = "ABB") || (var(52) = 115)
trigger1 = statetype = A
trigger1 = ctrl


;---------------------------------------------------------------------------
;Kung Fu Throw
;投げ
[State -1, Kung Fu Throw]
type = ChangeState
value = 830
triggerall = var(8) = 0
triggerall = (command = "y" && (command = "holdfwd" || command = "holdback")) || var(52) = 800
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = p2bodydist X < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = var(8) = 0
triggerall = (command = "b" && (command = "holdfwd" || command = "holdback")) || var(52) = 830
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = p2bodydist X < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

[State -1, Air Throw]
type = ChangeState
value = 860
triggerall = (command = "y" || command = "b") || var(52) = 860
triggerall = statetype = A
triggerall = ctrl
trigger1 = command = "holdfwd" || command = "holdback"
trigger1 = p2bodydist X < 25
trigger1 = abs(p2bodydist y) < 75
trigger1 = (p2statetype = A)
;trigger1 = p2movetype != H


[State -1, MY GOD OPPONENT WATCH OUT]
type = Helper
;triggerall = (command = "z") && (command = "holdback") || ((command = "x") && (command = "y") && command = "holdback")
triggerall = stateno = [150,169]
triggerall = power >= 1000
triggerall = !numhelper(700)
trigger1 = (command = "CD")  || var(52) = 700
helpertype = normal
name = "An hero"
ID = 700
stateno = 700
pos = 240,-240
postype = p2
facing = -1
ownpal = 1
size.xscale = .5
size.yscale = .5
ignorehitpause = 1

; CD
[State -1, Roll]
type = ChangeState
value = 710
triggerall = (var(55)<5 && command = "Roll" && command != "holddown") || var(52) = [710,711]
triggerall = statetype != A
trigger1 = ctrl || stateno = 100
trigger1 = stateno != [120,154]
trigger2 = power >= 500
trigger2 = (stateno = [120,154]) || (((stateno = [200,250]) || (stateno = [400,440])) && movecontact )

[State -1, Blue Danube]
type = ChangeState
value = 720
triggerall = (var(55)<5 && command = "Roll" && command = "holddown") || var(52) = [720,721]
triggerall = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 240 || stateno = 1403 || stateno = 1402
trigger2 = movehit

; CD
[State -1, BD]
type = ChangeState
value = 660
triggerall = (var(55)<5 && command = "CD") || var(52) = 660
;triggerall = !var(55) || !(var(40) & floor(exp(0*ln(2)) + 0.5) )
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,640]
trigger2 = movecontact

; CD
[State -1, CD]
type = ChangeState
value = 260
triggerall = (var(55)<5 && command = "CD") || var(52) = 260
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || (stateno = 230 && anim = 230) || stateno = 400 || stateno = 430 || stateno = 410 || stateno = 420
trigger2 = movecontact

; SLASH
[State -1, SLASH]
type = ChangeState
value = 250
triggerall = (var(55)<5 && (command = "a" && command = "holdfwd" && command != "holddown")) || var(52) = 250
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || (stateno = 230 && anim = 230) || stateno = 400 || stateno = 430 || stateno = 210 || stateno = 410 || stateno = 420
trigger2 = movecontact

; SLASH
[State -1, DABUR]
type = ChangeState
value = 420
triggerall = (var(55)<5 && (command = "x" && command = "holdfwd" && command = "holddown")) || var(52) = 420
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || (stateno = 230 && anim = 230) || stateno = 400 || stateno = 430 || stateno = 210 || stateno = 410
trigger2 = movecontact


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
trigger2 = stateno = 200
trigger2 = time > 6 || movecontact

[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = (var(55)<5 && (command = "y" && command != "holddown")) || var(52) = 210
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || stateno = 430 || stateno = 400 || stateno = 410 || (stateno = 230 && anim = 230)
trigger2 = movecontact

[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = (var(55)<5 && (command = "a" && command != "holddown")) || var(52) = 230
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || stateno = 430 || (stateno = 230 && anim = 230) || (stateno = 210 && anim = 215)
trigger2 = movecontact

[State -1, Stand Strong Kick]
type = ChangeState
value = 240
triggerall = (var(55)<5 && (command = "b" && command != "holddown")) || var(52) = 240
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || stateno = 400 || stateno = 230 || stateno = 420 || (stateno = 210 && (anim = 215 || (anim = 210 && animelemtime(9) >= 0))) || stateno = 410
trigger2 = movecontact

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


;===========================================================================
;---------------------------------------------------------------------------
[State -1, Crouch Light Punch]
type = ChangeState
value = 400
triggerall = (var(55)<5 && (command = "x" && command = "holddown")) || var(52) = 400
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || stateno = 400
trigger2 = time > 9 || movecontact

[State -1, Crouch Strong Punch]
type = ChangeState
value = 410
triggerall = (var(55)<5 && (command = "y" && command = "holddown")) || var(52) = 410
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || stateno = 400 || stateno = 430 || (stateno = 230 && anim = 230)
trigger2 = movecontact

[State -1, Crouch Light Kick]
type = ChangeState
value = 430
triggerall = (var(55)<5 && (command = "a" && command = "holddown")) || var(52) = 430
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || stateno = 430 || stateno = 400
trigger2 = movecontact

[State -1, Crouch Strong Kick]
type = ChangeState
value = 440
triggerall = (var(55)<5 && (command = "b" && command = "holddown")) || var(52) = 440
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || stateno = 400 || (stateno = 230 && anim = 230) || stateno = 430
trigger2 = movecontact

;===========================================================================
;---------------------------------------------------------------------------
[State -1, Air Light Punch]
type = ChangeState
value = 600
triggerall = (var(55)<5 && command = "x") || var(52) = 600
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact

[State -1, Air Strong Punch]
type = ChangeState
value = 610
triggerall = (var(55)<5 && command = "y") || var(52) = 610
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630
trigger2 = movecontact

[State -1, Air Light Kick]
type = ChangeState
value = 630
triggerall = (var(55)<5 && command = "a") || var(52) = 630
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630
trigger2 = movecontact

[State -1, Air Strong Kick]
type = ChangeState
value = 640
triggerall = (var(55)<5 && command = "b") || var(52) = 640
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630
trigger2 = movecontact

[State -1, Air combo lol]
type = ChangeState
value = 40
triggerall = (command = "holdup") || var(52) = [40,45]
trigger1 = var(55)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 240 || stateno = 1403 || stateno = 1402
trigger2 = movehit

[State -1, Guilty gear shit right here]
type = ChangeState
value = 45
triggerall = (command = "holdup") || var(52) = [40,45]
triggerall = !(var(22) & floor(exp(0*ln(2)) + 0.5) )
trigger1 = stateno = 640
trigger1 = movehit






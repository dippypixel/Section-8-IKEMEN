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
name = "ACTA"
command = a,c,U,a
time = 40
[Command]
name = "ACTAh"
command = a,c,U,a
time = 40
[Command]
name = "SGS"
command = ~x,x,F,y,z
time = 40
[Command]
name = "SuperF"
command = ~D, DF, F, D, DF, F, x
time = 20
[Command]
name = "SuperF"
command = ~D, DF, F, D, DF, F, y
time = 20
[Command]
name = "SuperF"
command = ~D, DF, F, D, DF, F, z
time = 20

[Command]
name = "SuperB"
command = ~D, DB, B, D, DB, B, x
time = 20
[Command]
name = "SuperB"
command = ~D, DB, B, D, DB, B, y
time = 20
[Command]
name = "SuperB"
command = ~D, DB, B, D, DB, B, z
time = 20

[Command]
name = "Blop"
command = ~F,B,F,D,U
time = 30

[Command]
name = "DMCA"
command = ~F,B,D,s
time = 20

;-| Special Motions |------------------------------------------------------
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
name = "cbf_x"
command = ~30$B, $F, x
time = 15
[Command]
name = "cbf_y"
command = ~30$B, $F, y
time = 15
[Command]
name = "cbf_z"
command = ~30$B, $F, z
time = 15
[Command]
name = "cfb_x"
command = ~30$F, $B, x
time = 15
[Command]
name = "cfb_y"
command = ~30$F, $B, y
time = 15
[Command]
name = "cfb_z"
command = ~30$F, $B, z
time = 15

[Command]
name = "du_x"
command = ~D, U, x
time = 15
[Command]
name = "du_y"
command = ~D, U, y
time = 15
[Command]
name = "du_z"
command = ~D, U, z
time = 15

[Command]
name = "hissyfit"
command = ~30z

[Command]
name = "spam"
command = z,z,z
time = 25

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
command = y+z
time = 1

[Command]
name = "Roll"
command = x+y
time = 1

[Command]
name = "FastForward"
command = x+y+z
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
trigger2 = stateno != 420 || (stateno = 420 && animelemtime(3) >= 0)
trigger2 = movecontact
trigger3 = stateno = 40
trigger3 = animtime != 0
trigger4 = stateno = 100 || stateno = 101
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
triggerall = random < (10*(var(55)*var(55))) * ifelse(movehit,2,1) * ifelse(numhelper(3300),1.13,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),30-(3*movecontact)]
triggerall = p2dist y >= ifelse((p2bodydist x>20),-90,-40) - (enemynear,vel y*9)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= ifelse((p2bodydist x>20),-83,-12)
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || (stateno = [100,101])
trigger2 = stateno = 200
trigger2 = movecontact >= 2
var(52) = 200
ignorehitpause = 1
[State AI, Consider S.Y]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (8*(var(55)*var(55))) * ifelse(movehit,2,1) * ifelse(numhelper(3300),1.13,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),71-(6*movecontact)]
triggerall = p2dist y >= ifelse((p2bodydist x>25),-40,-90) - (enemynear,vel y*9)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= ifelse((p2bodydist x>25),-30,-80)
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || (stateno = [100,101])
trigger2 = stateno = 200 || (stateno = 210 && anim = 211)
trigger2 = movecontact >= 2
var(52) = 210
ignorehitpause = 1
[State AI, Consider S.Z]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (6*(var(55)*var(55))) * ifelse(movehit,2,1) * ifelse(numhelper(3300),1.13,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),71-(8*movecontact)]
triggerall = p2dist y >= ifelse((p2bodydist x>15),-99,-80) - (enemynear,vel y*9)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= ifelse((p2bodydist x>15),-66,-60)
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || (stateno = [100,101])
trigger2 = stateno = 200 || stateno = 210 || (stateno = 220 && anim = 221) || stateno = 410 || stateno = 400
trigger2 = movecontact >= 2
var(52) = 220
ignorehitpause = 1

[State AI, Consider C.X]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (10*(var(55)*var(55))) * ifelse(movehit,2,1) * ifelse(numhelper(3300),1.13,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),35-(3*movecontact)]
triggerall = p2dist y >= -40 - (enemynear,vel y*9)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -30
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || (stateno = [100,101])
trigger2 = stateno = 200 || stateno = 400
trigger2 = movecontact >= 2
var(52) = 400
ignorehitpause = 1
[State AI, Consider C.Y]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (8*(var(55)*var(55))) * ifelse(movehit,2,1) * ifelse(numhelper(3300),1.13,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),35-(3*movecontact)]
triggerall = p2dist y >= -20 - (enemynear,vel y*9)
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || (stateno = [100,101])
trigger2 = stateno = 200 || (stateno = 210 && anim = 211) || stateno = 400 || stateno = 410
trigger2 = movecontact >= 2
var(52) = 410
ignorehitpause = 1
[State AI, Consider C.Z]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (6*(var(55)*var(55))) * ifelse(movehit,2,1) * ifelse(numhelper(3300),1.13,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),26-(3*movecontact)]
triggerall = p2dist y >= -80 - (enemynear,vel y*9)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -13
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || (stateno = [100,101])
trigger2 = stateno = 200 || stateno = 210 || (stateno = 220 && anim = 221) || stateno = 400 || stateno = 410
trigger2 = movecontact >= 2
var(52) = 420
ignorehitpause = 1

[State AI, Consider F.Y]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(var(55)*2)
triggerall = var(55)
triggerall = random < (6*(var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),71-(8*movecontact)]
triggerall = p2dist y >= -70 - (enemynear,vel y*9)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= ifelse((p2bodydist x>15),-66,-60)
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || (stateno = [100,101])
trigger2 = (stateno = 220 && anim = 221) || (stateno = 420 && animelemtime(3) >= 0)
trigger2 = movecontact >= 2
trigger3 = (stateno = 200 && anim = 200) || (stateno = 210 && anim = 211) || (stateno = 400)
trigger3 = moveguarded >= 2
trigger3 = p2statetype = C
var(52) = 215
ignorehitpause = 1

[State AI, J.A]
type = Varset
triggerall = numenemy
triggerall = var(52) = 0 || random < 123
triggerall = var(55)
triggerall = p2bodydist x = [-28+(vel x*4)+(enemynear,vel x*4),8+(vel x*3)+(enemynear,vel x*4)]
triggerall = P2dist y = [-38+(vel y*4)+(enemynear,vel y*4),30+(vel y*3)+(enemynear,vel y*4)]
triggerall = Statetype = A
triggerall = p2stateno != [5100,5120]
triggerall = p2Statetype = A || vel y >= 0
triggerall = (stateno != [120,169])
triggerall = random < (5*(var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = time >= 7-var(55) || random < 10
trigger1 = ctrl || stateno = 110
var(52) = 600
[State AI, J.B]
type = Varset
triggerall = numenemy
triggerall = var(52) = 0 || random < 123
triggerall = var(55)
triggerall = p2bodydist x = [-27+(vel x*7)+(enemynear,vel x*7),50+(vel x*7)+(enemynear,vel x*7)]
triggerall = P2dist y = [-21+(vel y*7)+(enemynear,vel y*7),90+(vel y*7)+(enemynear,vel y*7)]
triggerall = Statetype = A
triggerall = p2stateno != [5100,5120]
triggerall = p2Statetype = A || vel y >= 0
triggerall = (stateno != [120,169])
triggerall = random < (5*(var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = time >= 7-var(55) || random < 10
trigger1 = ctrl || stateno = 110
var(52) = 610
[State AI, J.C]
type = Varset
triggerall = numenemy
triggerall = var(52) = 0 || random < 123
triggerall = var(55)
triggerall = p2bodydist x = [-48+(vel x*7)+(enemynear,vel x*7),43+(vel x*7)+(enemynear,vel x*7)]
triggerall = P2dist y = [-47+(vel y*7)+(enemynear,vel y*7),90+(vel y*7)+(enemynear,vel y*7)]
triggerall = Statetype = A
triggerall = p2stateno != [5100,5120]
triggerall = p2Statetype = A || vel y >= 0
triggerall = (stateno != [120,169])
triggerall = random < (5*(var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = time >= 7-var(55) || random < 10
trigger1 = ctrl || stateno = 110
var(52) = 620

[State AI, Consider an Anti-Air]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (3*(var(55)*var(55))) * ifelse(movehit,2,1) || (stateno = 52 && random < 650)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 350)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -42
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,15,-5),20-(6*(movecontact>=1))-(p2dist y/2)]
triggerall = p2dist y >= -60 - (enemynear,vel y*4)
triggerall = statetype != A
triggerall = !(var(41) & floor(exp(2*ln(2)) + 0.5) )
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y) + (enemynear, pos y) <= -7 ) || (p2stateno != [5030,5120])
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 100 || p2movetype = H || p2movetype = A
trigger1 = ctrl || (stateno = [100,101])
trigger2 = var(9)
trigger2 = stateno != 215
trigger2 = movehit
var(52) = 1200
ignorehitpause = 1
[State AI, Consider an Anti-Air]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (3*(var(55)*var(55))) * ifelse(movehit,2,1) || (stateno = 52 && random < 650)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 350)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -42
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,15,-5),25-(6*(movecontact>=1))-(p2dist y/2)]
triggerall = p2dist y >= -80 - (enemynear,vel y*4)
triggerall = statetype != A
triggerall = !(var(41) & floor(exp(2*ln(2)) + 0.5) )
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y) + (enemynear, pos y) <= -7 ) || (p2stateno != [5030,5120])
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 100 || p2movetype = H || p2movetype = A
trigger1 = ctrl || (stateno = [100,101])
trigger2 = var(9)
trigger2 = stateno != 215
trigger2 = movehit
var(52) = 1210
ignorehitpause = 1
[State AI, Consider an Anti-Air]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (3*(var(55)*var(55))) * ifelse(movehit,2,1) || (stateno = 52 && random < 650)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 350)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -42
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,15,-5),30-(6*(movecontact>=1))-(p2dist y/2)]
triggerall = p2dist y >= -100 - (enemynear,vel y*4)
triggerall = statetype != A
triggerall = !(var(41) & floor(exp(2*ln(2)) + 0.5) )
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y) + (enemynear, pos y) <= -7 ) || (p2stateno != [5030,5120])
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 100 || p2movetype = H || p2movetype = A
trigger1 = ctrl || (stateno = [100,101])
trigger2 = var(9)
trigger2 = stateno != 215
trigger2 = movehit
var(52) = 1220
ignorehitpause = 1
[State AI, Consider Whatever]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (2*(var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 450)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),260-(7*(movecontact>=1))]
triggerall = p2dist y >= -70 - (enemynear,vel y*9)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -30
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = var(9)
trigger1 = stateno != 215 || (stateno = 215 && moveguarded)
trigger1 = anim != 20
trigger1 = anim != 100
trigger1 = !moveguarded
var(52) = ifelse((random<500&&p2bodydist x<=197),1300,ifelse(random<500&&p2bodydist x<=222,1310,1320))
ignorehitpause = 1
[State AI, Consider Throwing A Projectile]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (2*(var(55)*var(55))) * ifelse(movehit&&p2bodydist x>=70,2,1) * ifelse(numhelper(3300),1.13,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0)
triggerall = (p2stateno != [5080,5130]) || (p2stateno = 5120 && p2bodydist x >= 120)
;triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),96-(8*(movecontact>=1))]
triggerall = p2dist y >= -90 - (enemynear,vel y*6)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -40
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
triggerall = prevstateno != [1000,1120]
triggerall = !numprojid(1000)
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = var(9)
trigger1 = stateno != 215 || (stateno = 215 && moveguarded)
trigger1 = stateno != 250 || movecontact >= 12
trigger1 = (stateno != 420 || animelemtime(9)>=0)
trigger1 = !moveguarded
var(52) = 1000 + ((random%3)*10) + (((( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) >= -90)||random<500)*100)
ignorehitpause = 1
[State AI, Consider Spamming]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (1*(var(55)*var(55)))
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 100)
triggerall = p2stateno != [5080,5130]
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = var(9)
trigger1 = stateno != 215 || (stateno = 215 && moveguarded)
trigger1 = anim != 20
trigger1 = anim != 100
trigger1 = prevstateno != 1500
var(52) = 1500
ignorehitpause = 1
[State AI, Consider Throwing A Hissyfit]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 85+var(55)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (1*(var(55)*var(55))) * ifelse(movehit,2,1) * ifelse(life<=350,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 100)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),88-(6*(movecontact>=1))]
triggerall = p2dist y >= -70 - (enemynear,vel y*9)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -55
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
triggerall = life <= floor(power/2)
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = var(9)
trigger1 = stateno != 215
trigger1 = !moveguarded
var(52) = 1400
ignorehitpause = 1

[State AI, Consider Being An Asshole]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) )
triggerall = var(55) >= 8
;triggerall = random < (2*(var(55)*var(55))) * ifelse(movehit&&p2bodydist x>=70,2,1) * ifelse(numhelper(3300),1.13,1)
triggerall = !numprojid(1000)
triggerall = numhelper(3300)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0)
triggerall = (p2stateno != [5080,5130]) || (p2stateno = 5120 && p2bodydist x >= 120)
;triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),96-(8*(movecontact>=1))]
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = var(9)
trigger1 = stateno != 215 || (stateno = 215 && moveguarded)
trigger1 = stateno != 250 || movecontact >= 12
trigger1 = (stateno != 420 || animelemtime(9)>=0)
trigger1 = !moveguarded
var(52) = ifelse(random<500,ifelse(random<500,1110,1100),1020)
ignorehitpause = 1

[State AI, Consider smoking hipister crack]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || (random < 100+var(55) && (var(52)!=[200,640]))
triggerall = var(55)
triggerall = random < (12*(var(55)*var(55)))
triggerall = random < 300 + ((lifemax - life)/16)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0 && enemynear, animtime <= -10)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x <= 33
triggerall = p2bodydist y + (enemynear,vel y*3) >= -60
triggerall = statetype != A
triggerall = power >= 2000
triggerall =(p2movetype = H) || (enemynear, ctrl = 0) || (enemynear, statetype = A)
triggerall = p2stateno != [120,165]
triggerall = (prevstateno != [3000,3902]) || (stateno = [3000,3902])
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*8) + (enemynear, pos y) <= -8 ) || (p2stateno != [5030,5120])
triggerall = time >= 7-var(55) || random < 10
trigger1 = var(9)
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 250
trigger1 = !moveguarded
var(52) = 3100
ignorehitpause = 1
[State AI, Consider getting bigger guns]
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
triggerall = power >= 2000
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -85
triggerall =(p2movetype = H) || (enemynear, ctrl = 0) || (enemynear, statetype = A)
triggerall = p2statetype = A || p2bodydist x <= 20
triggerall = p2stateno != [120,165]
triggerall = (prevstateno != [3000,3902]) || (stateno = [3000,3902])
triggerall = time >= 7-var(55) || random < 10
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*10) + (enemynear, pos y) <= -10 ) || (p2stateno != [5030,5070])
triggerall = !numhelper(3300)
trigger1 = var(9)
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 250
trigger1 = !moveguarded
var(52) = 3000
ignorehitpause = 1
[State AI, Consider Fast Forwarding]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (1*(var(55)*var(55))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0)
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
triggerall = power >= 2000
triggerall = !numhelper(3300)
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = var(9)
trigger1 = stateno != 215 || (stateno = 215 && moveguarded)
trigger1 = anim != 20
trigger1 = anim != 100
var(52) = 3300
ignorehitpause = 1
[State AI, Consider Conquering The World]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (1*(var(55)*var(55)))
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0)
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
triggerall = power >= 2000
triggerall = !numhelper(3300)
triggerall = !numhelper(3200)
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = var(9)
trigger1 = stateno != 215 || (stateno = 215 && moveguarded)
trigger1 = anim != 20
trigger1 = anim != 100
var(52) = 3200
ignorehitpause = 1
[State AI, Consider Killing yourself]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || (random < 80+var(55))
triggerall = var(55)
triggerall = p2stateno != [5080,5120]
triggerall = random < (1*(var(55)*var(55)))
triggerall = statetype != A
triggerall = p2bodydist x <= 30
triggerall = p2bodydist y + (enemynear,vel y*3) >= -60
triggerall = time >= 7-var(55) || random < 10
triggerall = p2life >= life
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = var(9)
trigger1 = stateno != 215 || (stateno = 215 && moveguarded)
trigger1 = anim != 20
trigger1 = anim != 100
var(52) = 3400
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
var(52) = 800
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
[State AI, Consider Throwing a ring 1]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (1*(var(55)*var(55)))
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0)
triggerall = p2stateno != [5030,5109]
triggerall = p2bodydist x = [13,77]
triggerall = p2dist y >= -70 - (enemynear,vel y*9)
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
triggerall = !numhelper(720)
triggerall = !numhelper(3200)
triggerall = !numhelper(3300)
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = var(9)
trigger1 = anim != 20
trigger1 = anim != 100
trigger1 = !movehit
var(52) = 720
ignorehitpause = 1
[State AI, Consider Throwing a ring 2]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (1*(var(55)*var(55)))
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0)
triggerall = p2stateno != [5030,5109]
triggerall = p2bodydist x = [60,97]
triggerall = p2dist y >= -70 - (enemynear,vel y*9)
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
triggerall = !numhelper(720)
triggerall = !numhelper(3200)
triggerall = !numhelper(3300)
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = var(9)
trigger1 = anim != 20
trigger1 = anim != 100
trigger1 = !movehit
var(52) = 725
ignorehitpause = 1
[State AI, Consider Throwing a ring 3]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+var(55)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) )
triggerall = var(55)
triggerall = random < (1*(var(55)*var(55)))
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0)
triggerall = p2stateno != [5030,5109]
triggerall = p2bodydist x = [119,139]
triggerall = p2dist y >= -70 - (enemynear,vel y*9)
triggerall = statetype != A
triggerall = time >= 7-var(55) || random < 10
triggerall = !numhelper(720)
triggerall = !numhelper(3200)
triggerall = !numhelper(3300)
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = var(9)
trigger1 = anim != 20
trigger1 = anim != 100
trigger1 = !movehit
var(52) = 723
ignorehitpause = 1

[State AI, Guard S]
type = ChangeState
triggerall = stateno != 40
triggerall = random < 125*var(55)
triggerall = (var(55)) && (StateType != A) && (Ctrl) && (EnemyNear, Facing != Facing) && (var(50)<40)
trigger1 = (P2StateType != C) && (((P2MoveType = A) && (inguarddist)) || (EnemyNear, NumProj > 0))
value = ifelse(random<50&&(stateno!=[120,159])&&!numprojid(1000),1100+((random%3)*10),130)

[State AI, Guard L]
type = ChangeState
triggerall = stateno != 40
triggerall = random < 125*var(55)
triggerall = (var(55)) && (StateType != A) && (Ctrl) && (EnemyNear, Facing != Facing) && (var(50)<40)
trigger1 = (P2StateType = C) && (((P2MoveType = A) && (inguarddist)) || (EnemyNear, NumProj > 0))
value = ifelse(random<50&&(stateno!=[120,159])&&!numprojid(1000),1100+((random%3)*10),131)

; AI END

;===========================================================================
[State -1, SHOOT SHIT UP]
type = ChangeState
value = 3000
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "SuperF",command = "SuperB")) || var(52) = 3000
triggerall = power >= 2000
triggerall = !numhelper(3300)
trigger1 = var(9)
trigger2 = stateno = 1400
trigger2 = animelemtime(40) < 0
trigger2 = movecontact

[State -1, SHOOT SHIT UP]
type = ChangeState
value = 3100
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "SuperB",command = "SuperF")) || var(52) = 3100
triggerall = power >= 2000
triggerall = !numhelper(3300)
trigger1 = var(9)
trigger2 = stateno = 1400
trigger2 = animelemtime(40) < 0
trigger2 = movecontact

[State -1, BLOP]
type = ChangeState
value = 3200
triggerall = (var(55)<5 && command="Blop") || var(52) = 3200
triggerall = !numhelper(3200)
triggerall = power >= 2000
trigger1 = var(9)
trigger2 = stateno = 1400
trigger2 = animelemtime(40) < 0
trigger2 = movecontact

[State -1, DMCA]
type = ChangeState
value = 3400
triggerall = (var(55)<5 && command="DMCA") || var(52) = 3400
triggerall = !numhelper(3400)
trigger1 = var(9)
trigger2 = stateno = 1400
trigger2 = animelemtime(40) < 0
trigger2 = movecontact

[State -1, FAST FORWARD]
type = ChangeState
value = 3300
triggerall = (var(55)<5 && command="FastForward") || var(52) = 3300
triggerall = !numhelper(3300)
triggerall = power >= 2000
trigger1 = var(9)
trigger2 = stateno = 1400
trigger2 = animelemtime(40) < 0
trigger2 = movecontact

;---------------------------------------------------------------------------

[State -1, Shoot]
type = ChangeState
value = 1000
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "QCF_x",command = "QCB_x")) || var(52) = 1000
triggerall = !numprojid(1000)
trigger1 = var(9)
[State -1, Shoot]
type = ChangeState
value = 1010
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "QCF_y",command = "QCB_y")) || var(52) = 1010
triggerall = !numprojid(1000)
trigger1 = var(9)
[State -1, Shoot]
type = ChangeState
value = 1020
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "QCF_z",command = "QCB_z")) || var(52) = 1020
triggerall = !numprojid(1000)
trigger1 = var(9)

[State -1, Roll'n'Shoot]
type = ChangeState
value = 1100
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "QCB_x",command = "QCF_x")) || var(52) = 1100
triggerall = !numprojid(1000)
trigger1 = var(9)
[State -1, Roll'n'Shoot]
type = ChangeState
value = 1110
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "QCB_y",command = "QCF_y")) || var(52) = 1110
triggerall = !numprojid(1000)
trigger1 = var(9)
[State -1, Roll'n'Shoot]
type = ChangeState
value = 1120
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "QCB_z",command = "QCF_z")) || var(52) = 1120
triggerall = !numprojid(1000)
trigger1 = var(9)

[State -1, Bison]
type = ChangeState
value = 1300
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "cbf_x",command = "cfb_x")) || var(52) = 1300
trigger1 = var(9)
[State -1, Bison]
type = ChangeState
value = 1310
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "cbf_y",command = "cfb_y")) || var(52) = 1310
trigger1 = var(9)
[State -1, Bison]
type = ChangeState
value = 1320
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "cbf_z",command = "cfb_z")) || var(52) = 1320
trigger1 = var(9)
[State -1, Knee]
type = ChangeState
value = 1200
triggerall = (var(55)<5 && command="du_x") || var(52) = 1200
trigger1 = var(9)
[State -1, Knee]
type = ChangeState
value = 1210
triggerall = (var(55)<5 && command="du_y") || var(52) = 1210
trigger1 = var(9)
[State -1, Knee]
type = ChangeState
value = 1220
triggerall = (var(55)<5 && command="du_z") || var(52) = 1220
trigger1 = var(9)

[State -1, SPAM]
type = ChangeState
value = 1500
triggerall = (var(55)<5 && command="spam") || var(52) = 1500
trigger1 = var(9)
trigger2 = statetype != A
trigger2 = (stateno = [200,299]) || (stateno = [400,499])

[State -1, RAGE]
type = ChangeState
value = 1400
triggerall = (var(55)<5 && command="hissyfit") || var(52) = 1400
triggerall = life <= floor(power/2)
trigger1 = var(9)

;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = stateno != [100,101]
trigger1 = (command = "FF") || (var(52) = 100)
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 105
trigger1 = stateno != [100,101]
trigger1 = (command = "BB") || (var(52) = 105)
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Mike Dawson]
type = ChangeState
value = 720
triggerall = (var(55)<1 && (command = "a")) || (var(52) = [720,729])
triggerall = !numhelper(720)
trigger1 = statetype != A
trigger1 = ctrl || (stateno = [100,101])
trigger2 = (stateno = 200 && anim = 200) || (stateno = 210 && anim = 211) || (stateno = 220 && anim = 221) || (stateno = 400) || (stateno = 420)
trigger2 = movecontact
trigger3 = stateno = 40

;[State -1, Stand Roll]
;type = ChangeState
;value = 700
;triggerall = (var(55)<5 && (command = "Roll" && command != "holdback")) || var(52) = 700
;trigger1 = statetype != A
;trigger1 = ctrl || (stateno = [100,101])

;[State -1, Stand Roll]
;type = ChangeState
;value = 701
;triggerall = (var(55)<5 && (command = "Roll" && command = "holdback")) || var(52) = 701
;trigger1 = statetype != A
;trigger1 = ctrl || (stateno = [100,101])

;---------------------------------------------------------------------------
;Kung Fu Throw
;投げ
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = var(8) = 0
triggerall = (command = "z" && (command = "holdfwd" || command = "holdback")) || var(52) = 800
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != [100,101]
trigger1 = p2bodydist X < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

[State -1, Stand Overhead]
type = ChangeState
value = 215
triggerall = (var(55)<5 && (command = "y" && command != "holddown" && command = "holdback")) || var(52) = 215
trigger1 = statetype != A
trigger1 = ctrl || (stateno = [100,101])
trigger2 = (stateno = 200 && anim = 200) || (stateno = 210 && anim = 211) || (stateno = 220 && anim = 221) || (stateno = 400) || (stateno = 420)
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
trigger1 = ctrl || (stateno = [100,101])
trigger2 = stateno = 200
trigger2 = time > 7 || movecontact

[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = (var(55)<5 && (command = "y" && command != "holddown")) || var(52) = 210
trigger1 = statetype != A
trigger1 = ctrl || (stateno = [100,101])
trigger2 = stateno = 200 || (stateno = 210 && anim = 211)
trigger2 = movecontact

[State -1, Stand Hard Punch]
type = ChangeState
value = 220
triggerall = (var(55)<5 && (command = "z" && command != "holddown")) || var(52) = 220
trigger1 = statetype != A
trigger1 = ctrl || (stateno = [100,101])
trigger2 = stateno = 200 || stateno = 210 || (stateno = 220 && anim = 221) || stateno = 410 || stateno = 400
trigger2 = movecontact

[State -1, Stand Light Punch]
type = ChangeState
value = 400
triggerall = (var(55)<5 && (command = "x" && command = "holddown")) || var(52) = 400
trigger1 = statetype != A
trigger1 = ctrl || (stateno = [100,101])
trigger2 = stateno = 200 || stateno = 400
trigger2 = time > 7 || movecontact

[State -1, Stand Medium Punch]
type = ChangeState
value = 410
triggerall = (var(55)<5 && (command = "y" && command = "holddown")) || var(52) = 410
trigger1 = statetype != A
trigger1 = ctrl || (stateno = [100,101])
trigger2 = stateno = 200 || (stateno = 210 && anim = 211) || stateno = 400 || stateno = 410
trigger2 = movecontact

[State -1, Stand Hard Punch]
type = ChangeState
value = 420
triggerall = (var(55)<5 && (command = "z" && command = "holddown")) || var(52) = 420
trigger1 = statetype != A
trigger1 = ctrl || (stateno = [100,101])
trigger2 = stateno = 200 || stateno = 210 || (stateno = 220 && anim = 221) || stateno = 400 || stateno = 410
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
trigger1 = ctrl || (stateno = [100,101])

;===========================================================================
;---------------------------------------------------------------------------
[State -1, Air Light Punch]
type = ChangeState
value = 600
triggerall = (var(55)<5 && command = "x") || var(52) = 600
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Air Light Punch]
type = ChangeState
value = 610
triggerall = (var(55)<5 && command = "y") || var(52) = 610
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Air Light Punch]
type = ChangeState
value = 620
triggerall = (var(55)<5 && command = "z") || var(52) = 620
trigger1 = statetype = A
trigger1 = ctrl








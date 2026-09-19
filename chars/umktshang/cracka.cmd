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
name = "Uncaged"
command = ~D, DF, F, D, DF, F, x
time = 20

[Command]
name = "Uncaged"   ;Same name as above
command = ~D, DF, F, D, DF, F, y
time = 20

[Command]
name = "LolTouhou"
command = ~D, DB, B, DB, D, DF, F, x
time = 20

[Command]
name = "LolTouhou"
command = ~D, DB, B, DB, D, DF, F, y
time = 20

[Command]
name = "LolTouhou"
command = ~D, B, D, F, x
time = 20

[Command]
name = "LolTouhou"
command = ~D, B, D, F, y
time = 20

[Command]
name = "Mac"
command = ~D, DF, F, DF, D, DB, B, x+y
time = 20

[Command]
name = "Mac"
command = ~D, F, D, B, x+y
time = 20

[Command]
name = "SmashKFUpper"
command = ~D, DB, B, D, DB, B, x;~F, D, DF, F, D, DF, x
time = 20

[Command]
name = "SmashKFUpper"   ;Same name as above
command = ~D, DB, B, D, DB, B, y;~F, D, DF, F, D, DF, y
time = 20

[Command]
name = "Fireboi"
command = ~D, D, D, x+y
time = 20

[Command]
name = "Fabio"
command = ~D, D, D, a+b
time = 20

[Command]
name = "WarDestroyer"
command = ~F, B, F, U
time = 30

[Command]
name = "Fatality"
command = ~F, D, DF, y

[Command]
name = "DOCTADRE"
command = ~D, DB, B, y

;-| Special Motions |------------------------------------------------------
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
name = "FF_ab"
command = F, F, a+b

[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b

[Command]
name = "arise"
command = ~B, F, a

[Command]
name = "arise2"
command = ~B, F, b

[Command]
name = "antiair"
command = ~D, DF, F, a

[Command]
name = "antiair2"
command = ~D, DF, F, b

[Command]
name = "dragqueen"
command = ~D, DF, F, x

[Command]
name = "dragqueen2"
command = ~D, DF, F, y

[Command]
name = "hugeball"
command = ~B, B, F, x+y
time = 18

[Command]
name = "fireball"
command = ~B, B, F, x
time = 18

[Command]
name = "fireball2"
command = ~B, B, F, y
time = 18

[Command]
name = "chicken"
command = ~B, F, x

[Command]
name = "chicken2"
command = ~B, F, y

[Command]
name = "fasura1"
command = ~F, D, DF, x+a

[Command]
name = "fasura2"
command = ~F, D, DF, y+b

[Command]
name = "basura1"
command = ~B, D, DB, x+a

[Command]
name = "basura2"
command = ~B, D, DB, y+b

[Command]
name = "fuckup"
command = ~F, B, x+y

[Command]
name = "raiden"
command = D, U
time = 20

[Command]
name = "Eksit"
command = y+b
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
name = "Bitch"
command = B
time = 1

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

[State -1, KAMIKAZEEEE]
type = ChangeState
value = 14200
triggerall = roundstate = 2
triggerall = numhelper(3209)
triggerall = (helper(3209),stateno=3209)
triggerall = (helper(3209),fvar(0) >= 780)
triggerall = life <= 1
triggerall = var(19)
trigger1 = statetype != A
trigger1 = ctrl

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
trigger2 = stateno != 210 || (animelemtime(4) >= 0 || !var(19)) || ((movecontact != [1,4]) && var(19))
trigger2 = stateno != 410 || (movecontact != [1,4])
trigger2 = movecontact
var(9) = 1

[State -1, AI Consideration reset]
type = VarSet
trigger1 = 1
var(52) = 0
ignorehitpause = 1

; AI BEGIN

[State AI, Consider backing off]
type = VarSet
triggerall = var(55)
triggerall = var(52) = 0 || random < 80
triggerall = random < 200 + (123*(prevstateno = 440 && (p2stateno=[5070,5100]) ) )
triggerall = numenemy
triggerall = (p2stateno = [5110,5130]) || ((enemynear,time <= 10) && (enemynear,prevstateno = 5120))
triggerall = p2bodydist x <= 40
trigger1 = stateno != 40
trigger1 = ctrl
var(52) = ifelse(var(19),40,ifelse(backedgedist >= 33&&(random<500||frontedgedist <= 33),ifelse(random<500,1180,1170),ifelse(random<500,1160,1150)))

[State AI, Consider a safeguard]
type = VarSet
triggerall = var(55)
triggerall = var(52) = 0 || random < 80
triggerall = random < 80
triggerall = numenemy
trigger1 = var(9)
trigger1 = moveguarded
var(52) = ifelse(backedgedist >= 33&&(random<500||frontedgedist <= 33),ifelse(random<500,1180,1170),ifelse(random<500,1160,1150))

[State AI, Consider C.Y]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80
triggerall = var(55)
triggerall = random < 200 + (250*(movehit))
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),ifelse(!var(19),28,37)-(6*(movecontact>=1))]
triggerall = p2dist y >= -110 - (enemynear,vel y*4)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -40
triggerall = statetype != A
triggerall = !(var(40) & floor(exp(6*ln(2)) + 0.5) )
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || stateno = 400 || stateno = 430
trigger2 = movecontact
var(52) = 410
ignorehitpause = 1

[State AI, Consider S.X]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80
triggerall = var(55)
triggerall = random < 400 + (300*(movehit))
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),ifelse(!var(19),44,19)-(6*(movecontact>=1))]
triggerall = p2dist y >= -99 - (enemynear,vel y*4)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -70
triggerall = statetype != A
triggerall = !(var(40) & floor(exp(1*ln(2)) + 0.5) )
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200
trigger2 = moveguarded || (movehit || random < 100)
var(52) = 200
ignorehitpause = 1

[State AI, Consider S.Y]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80
triggerall = var(55)
triggerall = random < 200 + (200*(movehit))
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),ifelse(!var(19),110,33)-(6*(movecontact>=1))]
triggerall = p2dist y >= -119 - (enemynear,vel y*4)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -40
triggerall = statetype != A
triggerall = !(var(40) & floor(exp(2*ln(2)) + 0.5) )
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || stateno = 400 || stateno = 430
trigger2 = movecontact
var(52) = 210
ignorehitpause = 1

[State AI, Consider S.A]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 90
triggerall = var(55)
triggerall = random < 350 + (350*(movehit))
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),ifelse(!var(19),34,47)-(6*(movecontact>=1))]
triggerall = p2dist y >= -83 - (enemynear,vel y*4)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -61
triggerall = statetype != A
triggerall = !(var(40) & floor(exp(3*ln(2)) + 0.5) )
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || stateno = 430
trigger2 = movecontact
var(52) = 230
ignorehitpause = 1

[State AI, Consider S.B]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 90
triggerall = var(55)
triggerall = random < 350 + (350*(movehit))
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),ifelse(!var(19),30,39)-(6*(movecontact>=1))]
triggerall = p2dist y >= -83 - (enemynear,vel y*4)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -40
triggerall = statetype != A
triggerall = !(var(40) & floor(exp(4*ln(2)) + 0.5) )
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || stateno = 230 || stateno = 400
trigger2 = movecontact
var(52) = 240
ignorehitpause = 1

[State AI, Consider C.X]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80
triggerall = var(55)
triggerall = random < 200 + (200*(movehit))
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),23-(6*(movecontact>=1))]
triggerall = p2dist y >= -61 - (enemynear,vel y*4)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -30
triggerall = statetype != A
triggerall = !(var(40) & floor(exp(5*ln(2)) + 0.5) )
triggerall = !var(19)
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || stateno = 400
trigger2 = movecontact
var(52) = 400
ignorehitpause = 1

[State AI, Consider C.A]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 90
triggerall = var(55)
triggerall = random < 350 + (350*(movehit))
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),41-(6*(movecontact>=1))]
triggerall = p2dist y >= -30 - (enemynear,vel y*4)
triggerall = statetype != A
triggerall = !(var(40) & floor(exp(7*ln(2)) + 0.5) )
triggerall = !var(19)
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200
trigger2 = movecontact
var(52) = 430
ignorehitpause = 1

[State AI, Consider C.B]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 90
triggerall = var(55)
triggerall = random < 350 + (350*(movehit))
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),47-(6*(movecontact>=1))]
triggerall = p2dist y >= -30 - (enemynear,vel y*4)
triggerall = statetype != A
triggerall = !(var(40) & floor(exp(8*ln(2)) + 0.5) )
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || stateno = 230
trigger2 = movecontact
var(52) = 440
ignorehitpause = 1

[State AI, Consider Raving about being a Drag Queen]
type = VarSet
triggerall = var(52) = 0 || random < 80
triggerall = var(55)
triggerall = random < 100 + (250*(movehit))
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 100)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype=A,-10,15),80-(6*(movecontact>=1))]
triggerall = p2dist y >= -120 - (enemynear,vel y*4) || random < 120
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -55
triggerall = statetype != A
triggerall = !(var(42) & floor(exp(0*ln(2)) + 0.5) )
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y) + (enemynear, pos y) <= -8 ) || (p2stateno != [5030,5120])
triggerall = var(19)
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 100 || p2movetype = H
trigger1 = ctrl
trigger2 = var(9)
trigger2 = movecontact
var(52) = ifelse(random<500||p2movetype=H,11000,11010)
ignorehitpause = 1

[State AI, Consider Raving about being a Drag Queen]
type = VarSet
triggerall = var(52) = 0 || random < 80
triggerall = var(55)
triggerall = random < 100 + (250*(movehit)) + (150*(p2statetype=C))
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0)
triggerall = p2bodydist x = [ifelse(p2statetype=A||p2statetype=L,-10,15),70-(6*(movecontact>=1))]
triggerall = p2dist y >= -60 - (enemynear,vel y*4) || random < 120
triggerall = statetype != A
triggerall = !(var(42) & floor(exp(1*ln(2)) + 0.5) )
triggerall = var(19)
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 100 || p2movetype = H
trigger1 = ctrl
trigger2 = var(9)
trigger2 = movecontact
var(52) = ifelse(random<500||p2movetype=H,11050,11060)
ignorehitpause = 1

[State AI, Consider n fiery Anti-Air]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 70
triggerall = var(55)
triggerall = random < 380 - (100*(movehit))
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 350)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,15,-5),20-(6*(movecontact>=1))]
triggerall = statetype != A
triggerall = !(var(40) & floor(exp(9*ln(2)) + 0.5) )
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y) + (enemynear, pos y) <= -7 ) || (p2stateno != [5030,5120])
triggerall = var(19)
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 100 || p2movetype = H || p2movetype = A
trigger1 = ctrl || stateno = 100
trigger2 = var(9)
trigger2 = movehit
var(52) = 40
ignorehitpause = 1

[State AI, Consider Goro-Kicking]
type = VarSet
triggerall = var(52) = 0 || random < 80
triggerall = var(55)
triggerall = random < 100 + (250*(movehit)) || (stateno = 52 && random < 650)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-25,-5),ifelse(!var(19),133,90)-(6*(movecontact>=1))]
triggerall = p2dist y >= -95 - (enemynear,vel y*4) || random < 120
triggerall = statetype != A
triggerall = !(var(42) & floor(exp(ifelse(!var(19),0,2)*ln(2)) + 0.5) )
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y) + (enemynear, pos y) <= -8 ) || (p2stateno != [5030,5120])
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 100 || p2movetype = H
trigger1 = ctrl
trigger2 = var(9)
trigger2 = movecontact
var(52) = 1000
ignorehitpause = 1

[State AI, Consider Goro-Kicking 2]
type = VarSet
triggerall = var(52) = 0 || random < 80
triggerall = var(55)
triggerall = random < 100 + (250*(movehit)) || (stateno = 52 && random < 650)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,30),ifelse(!var(19),160,100)-(6*(movecontact>=1))]
triggerall = p2dist y >= -95 - (enemynear,vel y*4) || random < 120
triggerall = statetype != A
triggerall = !(var(42) & floor(exp(ifelse(!var(19),0,2)*ln(2)) + 0.5) )
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y) + (enemynear, pos y) <= -8 ) || (p2stateno != [5030,5120])
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 100 || p2movetype = H
trigger1 = ctrl
trigger2 = var(9)
trigger2 = movecontact
var(52) = 1010
ignorehitpause = 1

[State AI, Consider an Anti-Air]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 70
triggerall = var(55)
triggerall = random < 380 + (180*(movehit)) || (stateno = 52 && random < 650)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 350)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,15,-5),50-(6*(movecontact>=1))-(p2dist y/2)]
triggerall = statetype != A
triggerall = !(var(42) & floor(exp(1*ln(2)) + 0.5) )
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y) + (enemynear, pos y) <= -7 ) || (p2stateno != [5030,5120])
triggerall = !var(19)
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 100 || p2movetype = H || p2movetype = A
trigger1 = ctrl || stateno = 100
trigger2 = var(9)
trigger2 = movehit
var(52) = 1050
ignorehitpause = 1

[State AI, Consider an Anti-Air 2]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 70
triggerall = var(55)
triggerall = random < 380 + (180*(movehit)) || (stateno = 52 && random < 650)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 350)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,15,-5),60-(6*(movecontact>=1))-(p2dist y/1.5)]
triggerall = statetype != A
triggerall = !(var(42) & floor(exp(1*ln(2)) + 0.5) )
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y) + (enemynear, pos y) <= -7 ) || (p2stateno != [5030,5120])
triggerall = !var(19)
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 100 || p2movetype = H || p2movetype = A
trigger1 = ctrl || stateno = 100
trigger2 = var(9)
trigger2 = movehit
var(52) = 1050
ignorehitpause = 1

[State AI, Consider Fireball spamming]
type = VarSet
triggerall = var(52) = 0 || random < 80
triggerall = var(55)
triggerall = random < 100 + (100*(movehit)) + (100*(var(19))) || (stateno = 52 && random < 150)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x >= 80
triggerall = p2dist y >= -100 - (enemynear,vel y*4) || random < 80
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -90
triggerall = statetype != A
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y) + (enemynear, pos y) <= -16 ) || (p2stateno != [5030,5120])
triggerall = !numhelper(1100)
triggerall = !numhelper(3050)
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 100 || p2movetype = H
trigger1 = ctrl
trigger2 = var(9)
trigger2 = movecontact
var(52) = ifelse(random<100&&!numhelper(1105)&&!var(19),1105,ifelse(random<500,1100,1110))
ignorehitpause = 1

[State AI, Consider inducing rage]
type = VarSet
triggerall = var(52) = 0 || random < 80
triggerall = var(55)
triggerall = random < 20 + (p2bodydist x / 2) + (90*(numhelper(1100))) + (200*(numhelper(3050))) + (100*(p2movetype=H&&p2statetype=A)) || stateno = 410
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0)
triggerall = p2bodydist x >= 80 || stateno = 410
triggerall = statetype != A
triggerall = !(var(42) & floor(exp(2*ln(2)) + 0.5) )
triggerall = !var(19)
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 50 || p2movetype = H
trigger1 = ctrl
trigger2 = stateno = 410
trigger2 = movehit
var(52) = 1250
ignorehitpause = 1

[State AI, Consider teleporting into opponent]
type = VarSet
triggerall = var(52) = 0 || random < 80
triggerall = var(55)
triggerall = random < 100 + (p2bodydist x / 2)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (p2bodydist x >= 160 && random < 100)
triggerall = p2bodydist x >= 80
triggerall = p2bodydist y >= -50
triggerall = statetype != A
triggerall = p2stateno != 5120
triggerall = !(var(41) & floor(exp(9*ln(2)) + 0.5) )
triggerall = var(19)
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 50 || p2movetype = H || p2movetype = A
trigger1 = ctrl
var(52) = 11200
ignorehitpause = 1

[State AI, Consider Throwing]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 900
triggerall = var(55)
triggerall = random < 900
triggerall = p2stateno != [5080,5130]
triggerall = abs(p2bodydist x) < 6
triggerall = statetype != A
triggerall = p2movetype != H
triggerall = p2statetype != A
triggerall = prevstateno != 800
triggerall = var(8) = 0
trigger1 = stateno != 40
trigger1 = ctrl
var(52) = ifelse(random<500,830,800)
ignorehitpause = 1

[State AI, AI(R) Throw]
type = Varset
triggerall = var(55)
triggerall = statetype = A
triggerall = ctrl
trigger1 = p2bodydist X < 14
trigger1 = abs(p2bodydist y) < 40
trigger1 = (p2statetype = A)
trigger1 = p2movetype != H
var(52) = 860

[State AI, Consider jumping in]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80
triggerall = var(55)
triggerall = p2stateno != [5080,5130]
triggerall = abs(p2bodydist x) < 40 + (35*(command="holdfwd"))
triggerall = statetype != A
triggerall = p2statetype = A && p2movetype = H
triggerall = ifelse(p2dist x<-5,command != "holdfwd",command!="holdback")
triggerall = !(var(40) & floor(exp(9*ln(2)) + 0.5) ) || !(var(41) & floor(exp(0*ln(2)) + 0.5) ) || !(var(41) & floor(exp(1*ln(2)) + 0.5) )
triggerall = (enemynear, pos y <= -45)
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 220
trigger2 = frontedgedist < 110
trigger2 = movehit
trigger3 = stateno = [1000,1020]
trigger3 = movehit || (numprojid(1001) && ProjHitTime(1001))
var(52) = 40
ignorehitpause = 1

[State AI, Consider Exiting The Stage]
type = VarSet
triggerall = numenemy
triggerall = numhelper(3209)
triggerall = var(52) = 0 || random < 110
triggerall = var(55)
triggerall = random < 20 + (250*(movehit)) + floor(helper(3209),fvar(0)/1.2)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 180)
triggerall = p2stateno != [5080,5130]
triggerall = (p2bodydist x = [ifelse(p2statetype!=A,-5,0),35-(6*(movecontact>=1))]) || (p2bodydist x >= 100 && life <= 100)
triggerall = p2dist y >= -100 - (enemynear,vel y*4)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -40
triggerall = statetype != A
triggerall = var(19)
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || stateno = 400 || stateno = 430
trigger2 = movecontact
var(52) = 3210
ignorehitpause = 1

[State AI, Consider Advancing]
type = VarSet
triggerall = var(55)
triggerall = var(52) = 0 || random < 80
triggerall = random < 200 || numhelper(1100) || numhelper(3050)
triggerall = ((enemynear, ctrl = 0) && p2movetype != A) || (p2movetype = A && (enemynear, facing = facing))
triggerall = (p2stateno != [5080,5130]) || (p2bodydist x = [45,100])
triggerall = p2bodydist x >= 45
triggerall = statetype != A
triggerall = !(var(40) & floor(exp(9*ln(2)) + 0.5) ) || !var(19)
trigger1 = stateno != 40
trigger1 = !moveguarded
var(52) = ifelse(var(19),40,ifelse(random<444&&(p2stateno != [5080,5130]),1000,ifelse(random<500,1150,100)))

[State AI, Consider J.X]
type = VarSet
triggerall = p2stateno != [5100,5120]
triggerall = var(52) = 0 || random < 200
triggerall = var(55)
triggerall = random < 100
triggerall = (p2bodydist x = [-5+(vel x*3),27+(vel x*3)])
triggerall = (p2dist y = [-64+(vel y*3),60+(vel y*3)]); || movehit
triggerall = statetype = A
triggerall = !(var(40) & floor(exp(9*ln(2)) + 0.5) )
trigger1 = vel y > 0 || random < 50 || p2statetype = A || p2movetype = A
trigger1 = ctrl
var(52) = 600
ignorehitpause = 1

[State AI, Consider J.Y]
type = VarSet
triggerall = p2stateno != [5100,5120]
triggerall = var(52) = 0 || random < 200
triggerall = var(55)
triggerall = random < 250
triggerall = (p2bodydist x = [-5,103])
triggerall = (p2dist y = [-70,32]); || movehit
triggerall = statetype = A
triggerall = !(var(41) & floor(exp(0*ln(2)) + 0.5) )
trigger1 = vel y > 0 || random < 50 || p2statetype = A || p2movetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630
trigger2 = movecontact
var(52) = 610
ignorehitpause = 1

[State AI, Consider J.A]
type = VarSet
triggerall = p2stateno != [5100,5120]
triggerall = var(52) = 0 || random < 200
triggerall = var(55)
triggerall = random < 500
triggerall = (p2bodydist x = [-18+(vel x*3),37+(vel x*3)])
triggerall = (p2dist y = [-64+(vel y*3),70+(vel y*3)]); || movehit
triggerall = statetype = A
triggerall = !(var(41) & floor(exp(1*ln(2)) + 0.5) )
trigger1 = vel y > 0 || random < 50 || p2statetype = A || p2movetype = A
trigger1 = ctrl
var(52) = 630
ignorehitpause = 1

[State AI, Consider J.B]
type = VarSet
triggerall = p2stateno != [5100,5120]
triggerall = var(52) = 0 || random < 150
triggerall = var(55)
triggerall = random < 100
triggerall = (p2bodydist x = [-18+(vel x*3),54+(vel x*3)])
triggerall = (p2dist y = [-50+(vel y*3),84+(vel y*3)]); || movehit
triggerall = statetype = A
triggerall = !(var(41) & floor(exp(2*ln(2)) + 0.5) )
trigger1 = vel y > 0 || random < 50 || p2statetype = A || p2movetype = A
trigger1 = ctrl
var(52) = 640
ignorehitpause = 1

[State AI, Consider a super]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 110
triggerall = var(55)
triggerall = random < 500 + ((lifemax - life)/16)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0)
triggerall = p2stateno != [5080,5130]
triggerall = (p2bodydist x = [-5,26])
triggerall = p2dist y >= -45 - (enemynear,vel y*6)
triggerall = statetype != A
triggerall = power >= 1000
triggerall =(p2movetype = H) || (enemynear, ctrl = 0) || (enemynear, statetype = A)
triggerall = p2stateno != [120,165]
triggerall = prevstateno != [3000,3002]
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*6) + (enemynear, pos y) <= -5 ) || (p2stateno != [5030,5120])
triggerall = !var(19)
trigger1 = ctrl || stateno = 100 || (stateno = 1520 && anim = 1521)
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 250
trigger2 = var(9)
trigger2 = movehit
var(52) = 3000
ignorehitpause = 1
[State AI, Consider juggling]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 200
triggerall = var(55)
triggerall = random < 500 + ((lifemax - life)/16)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0)
triggerall = p2stateno != [5080,5130]
triggerall = (p2bodydist x = [-5,85])
triggerall = p2dist y >= -200 - (enemynear,vel y*6)
triggerall = statetype != A
triggerall = power >= 2000
triggerall =(p2movetype = H) || (enemynear, ctrl = 0) || (enemynear, statetype = A)
triggerall = p2stateno != [120,165]
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*6) + (enemynear, pos y) <= -5 ) || (p2stateno != [5030,5120])
triggerall = !var(19)
trigger1 = ctrl || stateno = 100
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 250
trigger2 = var(9)
trigger2 = movehit
var(52) = 3100
ignorehitpause = 1
[State AI, Consider a projectile]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80
triggerall = var(55)
triggerall = random < 350 + ((lifemax - life)/16)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (p2bodydist x >= 110)
triggerall = p2stateno != [5080,5130]
triggerall = p2dist y >= -52 - (enemynear,vel y*9) || (p2bodydist x >= 120 && random < 500)
triggerall = statetype != A
triggerall = power >= 1000
triggerall =(p2movetype = H) || (enemynear, ctrl = 0) || (enemynear, statetype = A)
triggerall = p2stateno != [120,165]
triggerall = prevstateno != [3050,3052]
triggerall = !numhelper(1100)
triggerall = !numhelper(3050)
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y) + (enemynear, pos y) <= -10 ) || (p2stateno != [5030,5120])
triggerall = !var(19)
trigger1 = ctrl || stateno = 100 || (stateno = 1520 && anim = 1521)
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 250
trigger2 = var(9)
trigger2 = movehit
var(52) = 3050
ignorehitpause = 1
[State AI, Consider a ending the world]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80
triggerall = var(55)
triggerall = random < 444 + ((lifemax - life)/10)
;triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0)
triggerall = p2stateno != [5080,5130]
triggerall = (p2bodydist x = [-5,28])
triggerall = p2dist y >= -80 - (enemynear,vel y*10)
triggerall = statetype != A
triggerall = power >= 3000
triggerall =(p2movetype = H) || (enemynear, ctrl = 0) || (enemynear, statetype = A)
triggerall = (p2stateno != [120,165]) || (p2statetype != C)
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*10) + (enemynear, pos y) <= -15 ) || (p2statetype!=C) || (p2stateno != [5030,5120])
trigger1 = ctrl || stateno = 100 || (stateno = 1520 && anim = 1521)
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 250
trigger2 = stateno = 210 || stateno = 220 || stateno = 400 || stateno = 420
trigger2 = movehit
var(52) = 3400
[State AI, Consider becoming a drag queen]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80
triggerall = var(55)
triggerall = random < (200 + ((lifemax - life)/13) / ifelse(power>=2000,2,1) )
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (p2bodydist x >= 110)
triggerall = statetype != A
triggerall = power >= 1000
triggerall =(p2movetype = H) || (enemynear, ctrl = 0)
triggerall = !numhelper(3209)
triggerall = !var(19)
trigger1 = ctrl
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 250
trigger2 = var(9)
trigger2 = moveguarded
trigger2 = random < 500
var(52) = 3200
ignorehitpause = 1
[State AI, Consider WTFERY]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80
triggerall = var(55)
triggerall = random < 350 + ((lifemax - life)/16)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (p2bodydist x >= 110)
triggerall = p2stateno != [5080,5130]
triggerall = p2dist y >= -52 - (enemynear,vel y*9) || (p2bodydist x >= 120 && random < 500)
triggerall = statetype != A
triggerall = power >= 1000
triggerall =(p2movetype = H) || (enemynear, ctrl = 0) || (enemynear, statetype = A)
triggerall = p2stateno != [120,165]
triggerall = prevstateno != [3050,3052]
triggerall = !numhelper(1100)
triggerall = !numhelper(3050)
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y) + (enemynear, pos y) <= -10 ) || (p2stateno != [5030,5120])
triggerall = var(19)
trigger1 = ctrl || stateno = 100 || (stateno = 1520 && anim = 1521)
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 150
trigger2 = var(9)
trigger2 = movehit
var(52) = 13050
ignorehitpause = 1
[State AI, Consider RISING FLAMES]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80
triggerall = var(55)
triggerall = random < 200 + ((lifemax - life)/16)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (p2bodydist x >= 110)
triggerall = statetype != A
triggerall = power >= 1000
triggerall =(p2movetype = H) || (enemynear, ctrl = 0) || (enemynear, statetype = A)
triggerall = p2stateno != [120,165]
triggerall = !numhelper(13000)
triggerall = var(19)
trigger1 = ctrl || stateno = 100 || (stateno = 1520 && anim = 1521)
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 150
trigger2 = var(9)
trigger2 = movehit
var(52) = 13000
ignorehitpause = 1

[State AI, Consider Fataliting]
type = VarSet
triggerall = numenemy
;triggerall = var(52) = 0 || random < 80
triggerall = var(55)
triggerall = var(49)
triggerall = random < 200 || p2movetype = H
triggerall = p2statetype != A || var(19)
triggerall = p2statetype != L
triggerall = p2bodydist x = [-5,ifelse(!var(19),28,33)]
triggerall = statetype != A
triggerall = power >= 1000
triggerall = p2life <= (enemynear,lifemax *0.35)
triggerall = !(teammode = simul) && !(enemynear,teammode = simul)
triggerall = prevstateno != 4000 && prevstateno != 4100
trigger1 = stateno != 40
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 400 || stateno = 430
trigger2 = movecontact
var(52) = 4000
ignorehitpause = 1

[State AI, Consider Trapping]
type = VarSet
triggerall = (var(52) = 0 || random < 80) && (var(52) != [3000,3999])
triggerall = var(55)
triggerall = random < 100 || (stateno = 52 && random < 150)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 222)
triggerall = p2bodydist x >= 40 || p2stateno = 5120 || p2statetype = A
triggerall = statetype != A
triggerall = !numhelper(1200)
triggerall = !var(19)
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 100 || p2movetype = H
trigger1 = ctrl
trigger2 = var(9)
trigger2 = moveguarded
var(52) = 1200
ignorehitpause = 1

[State AI, Consider Countering]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 55
triggerall = var(55)
triggerall = random < 15 + ifelse(p2life - life<0,0,(p2life - life)/4)
triggerall = !numhelper(700)
triggerall = statetype != A
triggerall = power >= 500
triggerall = power < 2500 || random < 150 || power >= 3500
trigger1 = stateno = 150 || stateno = 152
var(52) = 700
ignorehitpause = 1


[State AI, Guard S]
type = ChangeState
triggerall = stateno != 40
triggerall = (var(55)) && (StateType != A) && (Ctrl) && (EnemyNear, Facing != Facing) && (var(50)<40)
trigger1 = (P2StateType != C) && (((P2MoveType = A) && (inguarddist)) || (EnemyNear, NumProj > 0))
value = ifelse(var(19),130,ifelse(random<88&&(stateno!=[120,169])&&p2bodydist x<=40,1050,ifelse(random<100&&p2bodydist x>=180,1160,130)))

[State AI, Guard L]
type = ChangeState
triggerall = stateno != 40
triggerall = (var(55)) && (StateType != A) && (Ctrl) && (EnemyNear, Facing != Facing) && (var(50)<40)
trigger1 = (P2StateType = C) && (((P2MoveType = A) && (inguarddist)) || (EnemyNear, NumProj > 0))
value = ifelse(var(19),131,ifelse(random<88&&(stateno!=[120,169])&&p2bodydist x<=40,ifelse(random<100,40,1050),131))


; AI OFF

[State -1, BANANA]
type = ChangeState
value = 2100
triggerall = roundstate = 2
triggerall = var(9)
triggerall = !var(19)
triggerall = !numhelper(2129)
triggerall = power >= 1000
triggerall = p2stateno != [5100,5200]
trigger1 = enemynear,authorname="choiyer"
trigger2 = enemynear,authorname="Shinra358"
trigger3 = enemynear,authorname="tengu"
trigger4 = enemynear,authorname="Seravy"
trigger5 = enemynear,authorname="alexlexus"

[State -1, CHICKEN]
type = ChangeState
value = 4000
triggerall = !var(19)
triggerall = var(49)
triggerall = (command = "Fatality" && !var(55)) || var(52) = 4000
triggerall = power >= 1000
triggerall = p2life <= (enemynear,lifemax *0.35)
triggerall = p2bodydist x <= 60
triggerall = p2statetype != A && p2statetype != L
triggerall = !(teammode = simul) && !(enemynear,teammode = simul)
trigger1 = var(9) ;Use combo condition (above)
[State -1, DOCTA DRE]
type = ChangeState
value = 4100
triggerall = var(19)
triggerall = var(49)
triggerall = (command = "DOCTADRE" && !var(55)) || var(52) = 4000
triggerall = power >= 1000
triggerall = p2life <= (enemynear,lifemax *0.35)
triggerall = !(teammode = simul) && !(enemynear,teammode = simul)
trigger1 = var(9) ;Use combo condition (above)

[State -1, FLAMES RISE]
type = ChangeState
value = 13000
triggerall = (command = "WarDestroyer" && !var(55)) || var(52) = 13000
triggerall = power >= 1000
triggerall = !numhelper(13000)
triggerall = var(19)
trigger1 = var(9) ;Use combo condition (above)

[State -1, ...]
type = ChangeState
value = 13050
triggerall = (command = "Uncaged" && !var(55)) || var(52) = 13050
triggerall = power >= 1000
triggerall = !numhelper(1100)
triggerall = var(19)
trigger1 = var(9) ;Use combo condition (above)


[State -1, I lost my steve jobs]
type = ChangeState
value = 3100
triggerall = (command = "Mac" && !var(55)) || var(52) = 3100
triggerall = power >= 2000
triggerall = !var(19)
trigger1 = var(9) ;Use combo condition (above)

[State -1, You're about to get caged]
type = ChangeState
value = 3000
triggerall = (command = "Uncaged" && !var(55)) || var(52) = 3000
triggerall = power >= 1000
triggerall = !var(19)
trigger1 = var(9) ;Use combo condition (above)

[State -1, Cable is my fav mvc2 char]
type = ChangeState
value = 3050
triggerall = (command = "LolTouhou") || var(52) = 3050
triggerall = power >= 1000
triggerall = !numhelper(1100)
triggerall = !numhelper(3050)
triggerall = !var(19)
trigger1 = var(9) ;Use combo condition (above)

[State -1, WHYAMIDRAGQUEEN]
type = ChangeState
value = 3200
triggerall = (command = "Fireboi") || var(52) = 3200
;triggerall = (command = "Fireboi" && !var(55)) || var(52) = 3200
triggerall = power >= 1000
triggerall = !numhelper(3209)
trigger1 = var(9) ;Use combo condition (above)

[State -1, Good looking men]
type = ChangeState
value = 3400
triggerall = (command = "Fabio" && !var(55)) || var(52) = 3400
triggerall = power >= 3000
triggerall = !var(19)
trigger1 = var(9) ;Use combo condition (above)


[State -1, Pro Axelxelus Play 1]
type = ChangeState
value = 1150
triggerall = (command = "fasura1") || var(52) = 1150
triggerall = !var(55) || !movehit
triggerall = !var(19)
trigger1 = var(9) ;Use combo condition (above)

[State -1, Pro Axelxelus Play 2]
type = ChangeState
value = 1160
triggerall = (command = "fasura2") || var(52) = 1160
triggerall = !var(55) || !movehit
triggerall = !var(19)
trigger1 = var(9) ;Use combo condition (above)

[State -1, Pro Axelxelus Play 3]
type = ChangeState
value = 1170
triggerall = (command = "basura1") || var(52) = 1170
triggerall = !var(55) || !movehit
triggerall = !var(19)
trigger1 = var(9) ;Use combo condition (above)

[State -1, Pro Axelxelus Play 4]
type = ChangeState
value = 1180
triggerall = (command = "basura2") || var(52) = 1180
triggerall = !var(55) || !movehit
triggerall = !var(19)
trigger1 = var(9) ;Use combo condition (above)

[State -1, Sorcerer Rush]
type = ChangeState
value = 1050
triggerall = (command = "antiair") || var(52) = 1050
triggerall = !var(55) || !(var(42) & floor(exp(1*ln(2)) + 0.5) )
triggerall = !var(19)
trigger1 = var(9) ;Use combo condition (above)

[State -1, Sorcerer Rush]
type = ChangeState
value = 1060
triggerall = (command = "antiair2") || var(52) = 1060
triggerall = !var(55) || !(var(42) & floor(exp(1*ln(2)) + 0.5) )
triggerall = !var(19)
trigger1 = var(9) ;Use combo condition (above)

[State -1, Fuckup]
type = ChangeState
value = 1250
triggerall = (command = "fuckup" && !var(55)) || var(52) = 1250
triggerall = !var(55) || !(var(42) & floor(exp(2*ln(2)) + 0.5) )
triggerall = !var(19)
trigger1 = var(9) ;Use combo condition (above)

[State -1, Huge Fireball]
type = ChangeState
value = 1105
triggerall = (command = "hugeball") || var(52) = 1105
triggerall = !numhelper(1100)
triggerall = !numhelper(1105)
triggerall = !numhelper(3050)
triggerall = !var(19)
;triggerall = !var(55) || !(var(42) & floor(exp(0*ln(2)) + 0.5) )
trigger1 = var(9) ;Use combo condition (above)

[State -1, Fireball]
type = ChangeState
value = 1100
triggerall = (command = "fireball") || var(52) = 1100
triggerall = !numhelper(1100)
triggerall = !numhelper(3050)
triggerall = !var(19)
;triggerall = !var(55) || !(var(42) & floor(exp(0*ln(2)) + 0.5) )
trigger1 = var(9) ;Use combo condition (above)

[State -1, Fireball]
type = ChangeState
value = 1110
triggerall = (command = "fireball2") || var(52) = 1110
triggerall = !numhelper(1100)
triggerall = !numhelper(3050)
triggerall = !var(19)
;triggerall = !var(55) || !(var(42) & floor(exp(0*ln(2)) + 0.5) )
trigger1 = var(9) ;Use combo condition (above)

[State -1, Trap]
type = ChangeState
value = 1200
triggerall = (command = "QCB_x") || var(52) = 1200
triggerall = !numhelper(1200)
triggerall = !var(19)
;triggerall = !var(55) || !(var(42) & floor(exp(0*ln(2)) + 0.5) )
trigger1 = var(9) ;Use combo condition (above)

[State -1, Trap]
type = ChangeState
value = 1200
triggerall = (command = "QCB_y") || var(52) = 1210
triggerall = !numhelper(1200)
triggerall = !var(19)
;triggerall = !var(55) || !(var(42) & floor(exp(0*ln(2)) + 0.5) )
trigger1 = var(9) ;Use combo condition (above)

[State -1, Goro Kick]
type = ChangeState
value = 1000
triggerall = (command = "arise") || var(52) = 1000
triggerall = !var(55) || !(var(42) & floor(exp(0*ln(2)) + 0.5) )
triggerall = !var(19)
trigger1 = var(9) ;Use combo condition (above)

[State -1, Goro Kick]
type = ChangeState
value = 1010
triggerall = (command = "arise2") || var(52) = 1010
triggerall = !var(55) || !(var(42) & floor(exp(0*ln(2)) + 0.5) )
triggerall = !var(19)
trigger1 = var(9) ;Use combo condition (above)

; FIREBOY SPECIALS

[State -1, WHYAMIDRAGQUEEN]
type = ChangeState
value = 11000
triggerall = (command = "dragqueen") || var(52) = 11000
triggerall = !var(55) || !(var(42) & floor(exp(0*ln(2)) + 0.5) )
triggerall = var(19)
trigger1 = var(9) ;Use combo condition (above)

[State -1, WHYAMIDRAGQUEEN]
type = ChangeState
value = 11010
triggerall = (command = "dragqueen2") || var(52) = 11010
triggerall = !var(55) || !(var(42) & floor(exp(0*ln(2)) + 0.5) )
triggerall = var(19)
trigger1 = var(9) ;Use combo condition (above)

[State -1, WHYAMIDRAGQUEEN]
type = ChangeState
value = 11050
triggerall = (command = "antiair") || var(52) = 11050
triggerall = !var(55) || !(var(42) & floor(exp(1*ln(2)) + 0.5) )
triggerall = var(19)
trigger1 = var(9) ;Use combo condition (above)

[State -1, WHYAMIDRAGQUEEN]
type = ChangeState
value = 11060
triggerall = (command = "antiair2") || var(52) = 11060
triggerall = !var(55) || !(var(42) & floor(exp(1*ln(2)) + 0.5) )
triggerall = var(19)
trigger1 = var(9) ;Use combo condition (above)

[State -1, Fireball]
type = ChangeState
value = 11100
triggerall = (command = "chicken") || var(52) = 1100
triggerall = !numhelper(1100)
triggerall = !numhelper(3050)
triggerall = var(19)
;triggerall = !var(55) || !(var(42) & floor(exp(0*ln(2)) + 0.5) )
trigger1 = var(9) ;Use combo condition (above)

[State -1, Fireball]
type = ChangeState
value = 11110
triggerall = (command = "chicken2") || var(52) = 1110
triggerall = !numhelper(1100)
triggerall = !numhelper(3050)
triggerall = var(19)
;triggerall = !var(55) || !(var(42) & floor(exp(0*ln(2)) + 0.5) )
trigger1 = var(9) ;Use combo condition (above)

[State -1, ROLF]
type = ChangeState
value = 11150
triggerall = (command = "FF_a") || var(52) = 1000
triggerall = !var(55) || !(var(42) & floor(exp(2*ln(2)) + 0.5) )
triggerall = var(19)
trigger1 = var(9) ;Use combo condition (above)

[State -1, ROLF]
type = ChangeState
value = 11150
triggerall = (command = "FF_b") || var(52) = 1010
triggerall = !var(55) || !(var(42) & floor(exp(2*ln(2)) + 0.5) )
triggerall = var(19)
trigger1 = var(9) ;Use combo condition (above)

[State -1, Exit]
type = ChangeState
value = 3210
triggerall = (command = "Eksit" && !var(55)) || var(52) = 3200
triggerall = var(19)
trigger1 = var(9) ;Use combo condition (above)

;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = !var(19)
trigger1 = (command = "FF") || (var(52) = 100)
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Kung Fu Throw
;投げ
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = var(8) = 0
triggerall = (command = "y") || var(52) = 800
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd" || command = "holdback"
trigger1 = p2bodydist X < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

[State -1, Kung Fu Throw]
type = ChangeState
value = 830
triggerall = var(8) = 0
triggerall = (command = "b") || var(52) = 830
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd" || command = "holdback"
trigger1 = p2bodydist X < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

[State -1, Air Throw]
type = ChangeState
value = 860
triggerall = (command = "y" || command = "b") || var(52) = 870
triggerall = statetype = A
triggerall = ctrl
triggerall = !numhelper(3101)
trigger1 = command = "holdfwd" || command = "holdback"
trigger1 = p2bodydist X < 25
trigger1 = abs(p2bodydist y) < 75
trigger1 = (p2statetype = A)
;trigger1 = p2movetype != H

[State -1, AKUMA]
type = ChangeState
value = 700
triggerall = (command = "Eksit")  || var(52) = 700
triggerall = power >= 1000
triggerall = !numhelper(700)
triggerall = statetype != A
trigger1 = stateno = [150,154]




;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = (command = "x" && command != "holddown") || var(52) = 200
triggerall = !var(55) || !(var(40) & floor(exp(1*ln(2)) + 0.5) )
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200
trigger2 = time > 9 || movecontact

[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = (command = "y" && command != "holddown") || var(52) = 210
triggerall = !var(55) || !(var(40) & floor(exp(2*ln(2)) + 0.5) )
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || stateno = 430 || stateno = 400
trigger2 = movecontact

[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = (command = "a" && command != "holddown") || var(52) = 230
triggerall = !var(55) || !(var(40) & floor(exp(3*ln(2)) + 0.5) )
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || stateno = 430
trigger2 = movecontact

[State -1, Stand Strong Kick]
type = ChangeState
value = 240
triggerall = (command = "b" && command != "holddown") || var(52) = 240
triggerall = !var(55) || !(var(40) & floor(exp(4*ln(2)) + 0.5) )
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || stateno = 400 || stateno = 230
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
triggerall = (command = "x" && command = "holddown") || var(52) = 400
triggerall = !var(55) || !(var(40) & floor(exp(5*ln(2)) + 0.5) )
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || stateno = 400
trigger2 = time > 9 || movecontact

[State -1, Crouch Strong Punch]
type = ChangeState
value = 410
triggerall = (command = "y" && command = "holddown") || var(52) = 410
triggerall = !var(55) || !(var(40) & floor(exp(6*ln(2)) + 0.5) )
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || stateno = 400 || stateno = 430
trigger2 = movecontact

[State -1, Crouch Light Kick]
type = ChangeState
value = 430
triggerall = (command = "a" && command = "holddown") || var(52) = 430
triggerall = !var(55) || !(var(40) & floor(exp(7*ln(2)) + 0.5) )
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || stateno = 430 || stateno = 400
trigger2 = movecontact

[State -1, Crouch Strong Kick]
type = ChangeState
value = 440
triggerall = (command = "b" && command = "holddown") || var(52) = 440
triggerall = !var(55) || !(var(40) & floor(exp(8*ln(2)) + 0.5) )
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || stateno = 400 || (stateno = 230 && var(19))
trigger2 = movecontact

;===========================================================================
;---------------------------------------------------------------------------
[State -1, Air Light Punch]
type = ChangeState
value = 600
triggerall = (command = "x") || var(52) = 600
triggerall = !var(55) || !(var(41) & floor(exp(9*ln(2)) + 0.5) )
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Air Strong Punch]
type = ChangeState
value = 610
triggerall = (command = "y") || var(52) = 610
triggerall = !var(55) || !(var(41) & floor(exp(0*ln(2)) + 0.5) )
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630
trigger2 = movecontact

[State -1, Air Light Kick]
type = ChangeState
value = 630
triggerall = (command = "a") || var(52) = 630
triggerall = !var(55) || !(var(41) & floor(exp(1*ln(2)) + 0.5) )
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Air Strong Kick]
type = ChangeState
value = 640
triggerall = (command = "b") || var(52) = 640
triggerall = !var(55) || !(var(41) & floor(exp(2*ln(2)) + 0.5) )
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Fireboy Lolraiden]
type = ChangeState
value = 11200
triggerall = var(19)
triggerall = (command = "raiden") || var(52) = 11200
triggerall = !var(55) || !(var(41) & floor(exp(0*ln(2)) + 0.5) )
trigger1 = var(9)

[State -1, Fireboy Aircombo]
type = ChangeState
value = 40
triggerall = var(19)
triggerall = (command = "holdup") || var(52) = 40
triggerall = !var(55) || !(var(40) & floor(exp(9*ln(2)) + 0.5) )
trigger1 = var(9)




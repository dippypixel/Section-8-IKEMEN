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
name = "Konami"
command = ~U,U,D,D,B,F,B,F,y,x
time = 120
[Command]
name = "Konami"
command = ~U,U,D,D,B,F,B,F,b,a
time = 120

[Command]
name = "ProjectileSuper"
command = ~D, DF, F, D, DF, F, x
time = 20
[Command]
name = "ProjectileSuper"
command = ~D, DF, F, D, DF, F, y
time = 20
[Command]
name = "ProjectileSuper"
command = ~D, DF, F, D, DF, F, z
time = 20
[Command]
name = "r_ProjectileSuper"
command = ~D, DB, B, D, DB, B, x
time = 20
[Command]
name = "r_ProjectileSuper"
command = ~D, DB, B, D, DB, B, y
time = 20
[Command]
name = "r_ProjectileSuper"
command = ~D, DB, B, D, DB, B, z
time = 20
[Command]
name = "ProjectileSuper"
command = ~D, F, D, F, x
time = 20
[Command]
name = "ProjectileSuper"
command = ~D, F, D, F, y
time = 20
[Command]
name = "ProjectileSuper"
command = ~D, F, D, F, z
time = 20
[Command]
name = "r_ProjectileSuper"
command = ~D, B, D, B, x
time = 20
[Command]
name = "r_ProjectileSuper"
command = ~D, B, D, B, y
time = 20
[Command]
name = "r_ProjectileSuper"
command = ~D, B, D, B, z
time = 20

[Command]
name = "Chomik"
command = ~10$B, F, B, F, x
time = 25

[Command]
name = "Chomik"
command = ~10$B, F, B, F, y
time = 25

[Command]
name = "Chomik"
command = ~10$B, F, B, F, z
time = 25

[Command]
name = "Doom3"
command = ~D, D, x+y
time = 15
[Command]
name = "Doom3"
command = ~D, D, x+z
time = 15
[Command]
name = "Doom3"
command = ~D, D, y+z
time = 15

[Command]
name = "SGS"
command = ~x,x,F,y,z
time = 40

;-| Special Motions |------------------------------------------------------
[Command]
name = "upper_x"
command = ~15$D, $U, x
time = 10

[Command]
name = "upper_y"
command = ~15$D, $U, y
time = 10

[Command]
name = "upper_z"
command = ~15$D, $U, z
time = 10

[Command]
name = "upper_a"
command = ~15$D, $U, a
time = 10

[Command]
name = "movie_x"
command = ~F,D,B,x
time = 12
[Command]
name = "movie_x"
command = ~F,DF,D,DB,B,x
time = 12
[Command]
name = "movie_y"
command = ~F,D,B,y
time = 12
[Command]
name = "movie_y"
command = ~F,DF,D,DB,B,y
time = 12
[Command]
name = "movie_z"
command = ~F,D,B,z
time = 12
[Command]
name = "movie_z"
command = ~F,DF,D,DB,B,z
time = 12
[Command]
name = "movie_a"
command = ~F,D,B,a
time = 12
[Command]
name = "movie_a"
command = ~F,DF,D,DB,B,a
time = 12

[Command]
name = "r_movie_x"
command = ~B,D,F,x
time = 12
[Command]
name = "r_movie_x"
command = ~B,DB,D,DF,F,x
time = 12
[Command]
name = "r_movie_y"
command = ~B,D,F,y
time = 12
[Command]
name = "r_movie_y"
command = ~B,DB,D,DF,F,y
time = 12
[Command]
name = "r_movie_z"
command = ~B,D,F,z
time = 12
[Command]
name = "r_movie_z"
command = ~B,DB,D,DF,F,z
time = 12
[Command]
name = "r_movie_a"
command = ~B,D,F,a
time = 12
[Command]
name = "r_movie_a"
command = ~B,DB,D,DF,F,a
time = 12

[Command]
name = "robert_x"
command = ~D,DB,B,x
[Command]
name = "robert_y"
command = ~D,DB,B,y
[Command]
name = "robert_z"
command = ~D,DB,B,z

[Command]
name = "r_robert_x"
command = ~D,DF,F,x
[Command]
name = "r_robert_y"
command = ~D,DF,F,y
[Command]
name = "r_robert_z"
command = ~D,DF,F,z

[Command]
name = "baloon_x"
command = ~F,D,DF,x
[Command]
name = "baloon_y"
command = ~F,D,DF,y
[Command]
name = "baloon_z"
command = ~F,D,DF,z

[Command]
name = "r_baloon_x"
command = ~B,D,DB,x
[Command]
name = "r_baloon_y"
command = ~B,D,DB,y
[Command]
name = "r_baloon_z"
command = ~B,D,DB,z

[Command]
name = "360_x"
command = ~F, D, B, U, x
time = 15
buffer.time = 3
[Command]
name = "360_x"
command = ~D, B, U, F, x
time = 15
buffer.time = 3
[Command]
name = "360_x"
command = ~B, U, F, D, x
time = 15
buffer.time = 3
[Command]
name = "360_x"
command = ~U, F, D, B, x
time = 15
buffer.time = 3
[Command]
name = "360_x"
command = ~B, D, F, U, x
time = 15
buffer.time = 3
[Command]
name = "360_x"
command = ~D, F, U, B, x
time = 15
buffer.time = 3
[Command]
name = "360_x"
command = ~F, U, B, D, x
time = 15
buffer.time = 3
[Command]
name = "360_x"
command = ~U, B, D, F, x
time = 15
buffer.time = 3

[Command]
name = "360_y"
command = ~F, D, B, U, y
time = 15
buffer.time = 3
[Command]
name = "360_y"
command = ~D, B, U, F, y
time = 15
buffer.time = 3
[Command]
name = "360_y"
command = ~B, U, F, D, y
time = 15
buffer.time = 3
[Command]
name = "360_y"
command = ~U, F, D, B, y
time = 15
buffer.time = 3
[Command]
name = "360_y"
command = ~B, D, F, U, y
time = 15
buffer.time = 3
[Command]
name = "360_y"
command = ~D, F, U, B, y
time = 15
buffer.time = 3
[Command]
name = "360_y"
command = ~F, U, B, D, y
time = 15
buffer.time = 3
[Command]
name = "360_y"
command = ~U, B, D, F, y
time = 15
buffer.time = 3

[Command]
name = "360_z"
command = ~F, D, B, U, z
time = 15
buffer.time = 3
[Command]
name = "360_z"
command = ~D, B, U, F, z
time = 15
buffer.time = 3
[Command]
name = "360_z"
command = ~B, U, F, D, z
time = 15
buffer.time = 3
[Command]
name = "360_z"
command = ~U, F, D, B, z
time = 15
buffer.time = 3
[Command]
name = "360_z"
command = ~B, D, F, U, z
time = 15
buffer.time = 3
[Command]
name = "360_z"
command = ~D, F, U, B, z
time = 15
buffer.time = 3
[Command]
name = "360_z"
command = ~F, U, B, D, z
time = 15
buffer.time = 3
[Command]
name = "360_z"
command = ~U, B, D, F, z
time = 15
buffer.time = 3

[Command]
name = "DD_a"
command = D, D, a
[Command]
name = "DD_z"
command = D, D, z


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



;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "throw"
command = y+z
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

; Important

[State -1, KNIFY TIME]
type = ChangeState
triggerall = numhelper(3100)
triggerall = helper(3100),stateno=[3170,3171]
triggerall = helper(3100),var(47)
trigger1 = statetype != A || stateno = 40
trigger1 = ctrl
value = 3173
ctrl = 0
ignorehitpause = 1

[State -1, NIFY]
type = NotHitBy
triggerall = numhelper(3100)
triggerall = helper(3100),stateno=[3170,3171]
triggerall = helper(3100),var(47)
trigger1 = p2movetype != H
value = SCA
time = 2
ignorehitpause = 1

;

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
;---------------------------------------------------------------------------
;Smash Kung Fu Upper (uses one super bar)
;スマッシュ・カンフー・ウッパー（ゲージレベル１）


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
trigger2 = statetype != A
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 221
trigger2 = movecontact
trigger3 = stateno = 40
trigger3 = animtime != 0
trigger4 = stateno = 100
var(9) = 1

; AI

[State -1, AI Consideration reset]
type = VarSet
trigger1 = 1
var(52) = 0
ignorehitpause = 1

;[State -1, AI Combo Debuger]
;type = VarSet
;triggerall = command = "holdc" && command = "holdb"
;trigger1 = statetype != A
;trigger1 = ctrl
;var(52) = 200
;ignorehitpause = 1
;[State -1, AI Combo Debuger]
;type = VarSet
;triggerall = command = "holdc" && command = "holdb"
;trigger1 = stateno = 200
;trigger1 = movehit
;var(52) = 210
;ignorehitpause = 1
;[State -1, AI Combo Debuger]
;type = VarSet
;triggerall = command = "holdc" && command = "holdb"
;trigger1 = stateno = 210
;trigger1 = movehit
;var(52) = 420
;ignorehitpause = 1
;[State -1, AI Combo Debuger]
;type = VarSet
;triggerall = command = "holdc" && command = "holdb"
;trigger1 = stateno = 420
;trigger1 = movehit
;var(52) = 260
;ignorehitpause = 1
;[State -1, AI Combo Debuger]
;type = VarSet
;triggerall = command = "holdc" && command = "holdb"
;trigger1 = stateno = 260
;trigger1 = movehit
;var(52) = 264
;ignorehitpause = 1
;[State -1, AI Combo Debuger]
;type = VarSet
;triggerall = command = "holdc" && command = "holdb"
;trigger1 = statetype = A
;trigger1 = ctrl
;var(52) = 600
;ignorehitpause = 1


[State AI, Consider backing off]
type = VarSet
triggerall = var(55)
triggerall = var(52) = 0 || random < 80
triggerall = random < 200
triggerall = numenemy
triggerall = (p2stateno = [5110,5130]) || ((enemynear,time <= 10) && (enemynear,prevstateno = 5120))
triggerall = p2bodydist x <= 33
triggerall = backedgedist >= 33
trigger1 = stateno != 40
trigger1 = ctrl
var(52) = ifelse(random<222,ifelse(random<555,1400,ifelse(random<500,270,1330)),ifelse(random<750,105,40))

[State AI, Consider C.X]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 160
triggerall = var(55)
triggerall = random < 450 + (300*(movehit))
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [-5,35-(6*(movecontact>=1))]
triggerall = p2dist y >= -15 - (enemynear,vel y*6)
triggerall = statetype != A
triggerall = !(var(40) & floor(exp(4*ln(2)) + 0.5) )
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 400 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || stateno = 210
trigger2 = movecontact
var(52) = 400
ignorehitpause = 1

[State AI, Consider S.X]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80
triggerall = var(55)
triggerall = random < 400 + (300*(movehit))
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),49-(6*(movecontact>=1))]
triggerall = p2dist y >= -60 - (enemynear,vel y*2)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -60
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
triggerall = random < 350 + (350*(movehit))
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,20,-5),95]
triggerall = p2dist y >= -70 - (enemynear,vel y*8)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -61
triggerall = statetype != A
triggerall = !(var(40) & floor(exp(2*ln(2)) + 0.5) )
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 250 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200
trigger2 = movecontact
var(52) = 210
ignorehitpause = 1

[State AI, Consider S.Z]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80
triggerall = var(55)
triggerall = random < 350 + (300*(movehit))
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [-5,43-(9*(movecontact>=1))]
triggerall = p2dist y >= -120 - (enemynear,vel y*9)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -60
triggerall = statetype != A
triggerall = !(var(40) & floor(exp(3*ln(2)) + 0.5) )
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y) + (enemynear, pos y) <= -9 ) || (p2stateno != [5030,5120])
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 150 || p2movetype = H
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 210
trigger2 = movecontact
var(52) = 220
ignorehitpause = 1

[State AI, Consider C.Z]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80
triggerall = var(55)
triggerall = random < 350 + (350*(movehit))
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A&&!movehit,15,-5),57-(6*(movecontact>=1))]
triggerall = p2dist y >= -38 - (enemynear,vel y*7)
triggerall = statetype != A
triggerall = !(var(40) & floor(exp(6*ln(2)) + 0.5) )
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y) + (enemynear, pos y) <= -7 ) || (p2stateno != [5030,5120])
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 150 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || stateno = 210 || stateno = 400
trigger2 = movecontact
var(52) = 420
ignorehitpause = 1

[State AI, Consider C.Y]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80
triggerall = var(55)
triggerall = random < 300 + (350*(movehit))
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 300 && p2statetype=S)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A&&!movecontact,0,-25),105]
triggerall = p2dist y >= -21 - (enemynear,vel y*16)
triggerall = statetype != A
triggerall = !(var(40) & floor(exp(5*ln(2)) + 0.5) )
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y) + (enemynear, pos y) <= -12 ) || (p2stateno != [5030,5120])
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 100 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || stateno = 210 || stateno = 400
trigger2 = moveguarded
trigger3 = stateno = 210
trigger3 = movehit && random < 500
var(52) = 410
ignorehitpause = 1

[State AI, Consider F.Z]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 160
triggerall = var(55)
triggerall = random < 500 + (250*(movehit))
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,20,-5),48-(9*(movecontact>=1))]
triggerall = p2dist y >= -100 - (enemynear,vel y*8)
triggerall = statetype != A
triggerall = !(var(41) & floor(exp(0*ln(2)) + 0.5) )
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y) + (enemynear, pos y) <= -7 ) || (p2stateno != [5030,5120])
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 150 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || stateno = 210 || stateno = 420
trigger2 = movehit
var(52) = 221
ignorehitpause = 1

[State AI, Consider F.Y]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80
triggerall = var(55)
triggerall = random < 250 + (150*(movehit)) + (100*(p2statetype=C))
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A&&!moveguarded,20,-5),50-(15*(movecontact>=1))]
triggerall = p2dist y >= -55 - (enemynear,vel y*14)
triggerall = statetype != A
triggerall = !(var(41) & floor(exp(1*ln(2)) + 0.5) )
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y) + (enemynear, pos y) <= -15 ) || (p2stateno != [5030,5120])
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 250 || p2movetype = H
trigger1 = ctrl
trigger2 = p2statetype = C
trigger2 = stateno = 200 || stateno = 400 || stateno = 420
trigger2 = moveguarded
trigger3 = stateno = 210
trigger3 = movecontact
var(52) = 211
ignorehitpause = 1


[State AI, Consider QCB+A]
type = VarSet
triggerall = var(52) = 0 || random < 80
triggerall = var(55)
triggerall = random < 200 + (250*(movehit)) || (stateno = 52 && random < 650) || (p2stateno = 5120)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5110]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-25,-5),42-(6*(movecontact>=1))]
triggerall = p2dist y >= -90 - (enemynear,vel y*4) || random < 120
triggerall = statetype != A
triggerall = !(var(41) & floor(exp(6*ln(2)) + 0.5) )
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y) + (enemynear, pos y) <= -8 ) || (p2stateno != [5030,5120])
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 100 || p2movetype = H
trigger1 = ctrl
trigger1 = !numhelper(3100)
trigger2 = stateno = 410 || (stateno = 220 && random < 100)
trigger2 = movecontact
trigger3 = stateno = 200 || stateno = 210
trigger3 = moveguarded
var(52) = 1200
ignorehitpause = 1

[State AI, Consider QCB+B]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 120
triggerall = var(55)
triggerall = random < 400 + (300*(movehit))
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,15,0),110-(6*(movecontact>=1))-(p2dist y/2)]
triggerall = p2dist y >= -90 - (enemynear,vel y*16) || random < 180
triggerall = statetype != A
triggerall = !(var(41) & floor(exp(6*ln(2)) + 0.5) )
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y) + (enemynear, pos y) <= -16 ) || (p2stateno != [5030,5120])
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 100 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger1 = !numhelper(3100)
trigger2 = stateno = 220 || stateno = 400 || stateno = 420
trigger2 = (movehit) || (moveguarded && random < 100)
var(52) = 1210
ignorehitpause = 1

[State AI, Consider QCB+C]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80
triggerall = var(55)
triggerall = random < 350 + (250*(movehit))
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A&&!movehit,20,-5),ifelse(movecontact,80-(6*(movecontact>=1)),134)-(p2dist y/2)]
triggerall = p2dist y >= -90 - (enemynear,vel y*11) || random < 100
triggerall = statetype != A
triggerall = !(var(41) & floor(exp(6*ln(2)) + 0.5) )
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y) + (enemynear, pos y) <= -10 ) || (p2stateno != [5030,5120])
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 100 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger1 = !numhelper(3100)
trigger2 = (stateno = 200 && random < 150) || stateno = 210 || stateno = 220 || (stateno = 400 && random < 150) || stateno = 420
trigger2 = (movehit) || (moveguarded && random < 100)
var(52) = 1220
ignorehitpause = 1

[State AI, Consider DU+A]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 70
triggerall = var(55)
triggerall = random < 380 + (180*(movehit)) || (stateno = 52 && random < 650)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,15,-5),65-(6*(movecontact>=1))]
triggerall = statetype != A
triggerall = !(var(41) & floor(exp(5*ln(2)) + 0.5) )
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y) + (enemynear, pos y) <= -7 ) || (p2stateno != [5030,5120])
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 100 || p2movetype = H || p2movetype = A
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 && random < 250) || stateno = 210 || stateno = 220 || (stateno = 400 && random < 150) || stateno = 420
trigger2 = movehit
var(52) = 1000
ignorehitpause = 1

[State AI, Consider DU+B]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 70
triggerall = var(55)
triggerall = random < 380 + (150*(movehit)) || (stateno = 52 && random < 650)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,25,5),75]
triggerall = statetype != A
triggerall = !(var(41) & floor(exp(5*ln(2)) + 0.5) )
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y) + (enemynear, pos y) <= -7 ) || (p2stateno != [5030,5120])
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 100 || p2movetype = H || p2movetype = A
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 && random < 250) || stateno = 210 || stateno = 220 || (stateno = 400 && random < 150) || stateno = 420
trigger2 = movehit
var(52) = 1010
ignorehitpause = 1

[State AI, Consider DU+C]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 70
triggerall = var(55)
triggerall = random < 380 + (150*(movehit))
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,50,25),100]
triggerall = statetype != A
triggerall = !(var(41) & floor(exp(5*ln(2)) + 0.5) )
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y) + (enemynear, pos y) <= -7 ) || (p2stateno != [5030,5120])
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 100 || p2movetype = H || p2movetype = A
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 && random < 250) || stateno = 210 || stateno = 220 || (stateno = 400 && random < 150) || stateno = 420
trigger2 = movehit
var(52) = 1020
ignorehitpause = 1

[State AI, Consider Rocking Out]
type = VarSet
triggerall = var(52) = 0 || random < 80
triggerall = var(55)
triggerall = random < 200 + (250*(movehit)) || (stateno = 52 && random < 650) || (p2stateno = 5120)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0)
triggerall = p2stateno != [5080,5120]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-25,-5),50-(7*(movecontact>=1))]
triggerall = p2dist y >= -80 - (enemynear,vel y*7) || random < 120
triggerall = statetype != A
triggerall = !(var(41) & floor(exp(9*ln(2)) + 0.5) )
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y) + (enemynear, pos y) <= -8 ) || (p2stateno != [5030,5120])
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 100 || p2movetype = H
trigger1 = ctrl
trigger2 = (stateno = 200 && random < 250) || stateno = 210 || stateno = 220 || (stateno = 400 && random < 150) || stateno = 420
trigger2 = movecontact
var(52) = 1520
ignorehitpause = 1

[State AI, Consider HCB+C]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80
triggerall = var(55)
triggerall = random < 100 + (250*(movehit))
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [15,50-(6*(movecontact>=1))]
triggerall = statetype != A
triggerall = p2statetype != A
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 100 || p2movetype = H
trigger1 = ctrl
trigger2 = (stateno = 200 && random < 150) || stateno = 210 || stateno = 220 || (stateno = 400 && random < 150) || stateno = 420
trigger2 = movehit
var(52) = 1120
ignorehitpause = 1

[State AI, Consider B.DRIVE]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80
triggerall = var(55)
triggerall = random < 150
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 290)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [-5,64]
triggerall = p2dist y >= -60 - (enemynear,vel y*2)
triggerall = statetype != A
triggerall = !(var(42) & floor(exp(2*ln(2)) + 0.5) )
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 100
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || stateno = 210 || stateno = 220 || stateno = 400 || stateno = 410 || stateno = 420
trigger2 = moveguarded
var(52) = 270
ignorehitpause = 1

[State AI, Consider U.DRIVE]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80
triggerall = var(55)
triggerall = random < 200 + (200*(movehit))
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = (p2bodydist x + p2bodydist y + (enemynear,vel y*12)) = [-40,50]
triggerall = p2bodydist x <= 140
triggerall = p2dist y >= -200 - (enemynear,vel y*12)
;triggerall = p2bodydist x = [ifelse(p2statetype!=A,15,-5)+(enemynear,vel x*12),52+(enemynear,vel x*15)-(enemynear,pos y)]
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -65
triggerall = statetype != A
triggerall = p2statetype = A
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y) + (enemynear, pos y) <= -12 ) || (p2stateno != [5030,5120])
triggerall = !(var(42) & floor(exp(1*ln(2)) + 0.5) )
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 100 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 400 || stateno = 210 || stateno = 220 || stateno = 410 || stateno = 420 || stateno = 211
trigger2 = movehit || (moveguarded || random < 100)
var(52) = 460
ignorehitpause = 1

[State AI, Consider F.DRIVE]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80 + (100*(p2statetype!=A&&movehit&&stateno>=210))
triggerall = var(55)
triggerall = random < 200 + (200*(movehit))
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,35,-5),245]
triggerall = p2dist y >= -60 - (enemynear,vel y*12)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -65
triggerall = statetype != A
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y) + (enemynear, pos y) <= -18 ) || (p2stateno != [5030,5120])
triggerall = !(var(42) & floor(exp(0*ln(2)) + 0.5) )
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 100 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || stateno = 400 || stateno = 210 || stateno = 220 || stateno = 410 || stateno = 420 || stateno = 211
trigger2 = movehit || (moveguarded || random < 100)
var(52) = 260
ignorehitpause = 1

[State AI, Consider Rocket Jumping]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 70
triggerall = var(55)
triggerall = random < 200 + (150*(movehit)) + (350*(p2stateno=[5080,5110])) || stateno = 52
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0)
triggerall = p2stateno != 5120
triggerall = p2bodydist x = [ifelse(p2statetype!=A&&p2statetype!=L,19,-5),45]
triggerall = statetype != A
triggerall = p2dist y >= -30 - (enemynear,vel y*12)
triggerall = !(var(41) & floor(exp(4*ln(2)) + 0.5) )
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 100 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 && random < 250) || stateno = 210 || stateno = 220 || (stateno = 400 && random < 150) || stateno = 420
trigger2 = movehit || (moveguarded && p2statetype!=C)
var(52) = 1400
ignorehitpause = 1

[State AI, Consider J.X]
type = VarSet
triggerall = p2stateno != [5100,5120]
triggerall = var(52) = 0 || random < 280
triggerall = var(55)
triggerall = random < 500 || movehit || stateno = 264
triggerall = (p2bodydist x = [-25+(vel x*6),25+(vel x*6)]) || (p2dist x = [-35,15]); || movehit
triggerall = (p2dist y = [-10+(vel y*6),90+(vel y*5)]); || movehit
triggerall = statetype = A
triggerall = !(var(40) & floor(exp(7*ln(2)) + 0.5) )
trigger1 = vel y > 0 || random < 50 || p2statetype = A || p2movetype = A
trigger1 = ctrl
trigger2 = stateno = 221 || stateno = 620
trigger2 = (movehit) || (movecontact && p2statetype != S && stateno != 221)
var(52) = 600
ignorehitpause = 1

[State AI, Consider J.Z]
type = VarSet
triggerall = p2stateno != [5100,5120]
triggerall = var(52) = 0 || random < 280
triggerall = var(55)
triggerall = random < 400 || movehit || stateno = 264
triggerall = (p2bodydist x = [-50-(vel x*10),50+(vel x*10)]) || (p2dist x = [-35,15]); || movehit
triggerall = (p2dist y = [-64+(vel y*10),50+(vel y*10)]); || movehit
triggerall = statetype = A
triggerall = !(var(40) & floor(exp(9*ln(2)) + 0.5) )
triggerall = pos y + vel y  <= -15
trigger1 = vel y > 0 || random < 50 || p2statetype = A || p2movetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
var(52) = 620
ignorehitpause = 1

[State AI, Consider J.Y]
type = VarSet
triggerall = p2stateno != [5100,5120]
triggerall = var(52) = 0 || random < 180
triggerall = var(55)
triggerall = random < 400 || movehit
triggerall = (p2bodydist x = [-50-(vel x*10),50+(vel x*10)]); || movehit
triggerall = (p2dist y = [-85+(vel y*10),-5+(vel y*10)]); || movehit
triggerall = statetype = A
triggerall = !(var(40) & floor(exp(8*ln(2)) + 0.5) )
triggerall = pos y + vel y <= -15
trigger1 = vel y > 0 || random < 50 || p2statetype = A || p2movetype = A
trigger1 = p2stateno != [227,228]
trigger1 = ctrl
trigger2 = p2statetype = A
trigger2 = (stateno = 620 && prevstateno = 600) || (stateno = 600 && prevstateno = 620)
trigger2 = movehit
var(52) = 610
ignorehitpause = 1

[State AI, Consider J.F.Drive]
type = VarSet
triggerall = p2stateno != [5100,5120]
triggerall = var(52) = 0 || random < 150
triggerall = var(55)
triggerall = random < 150 || movehit
triggerall = (p2bodydist x = [-5-(vel x*12),220+(vel x*12)])
triggerall = (p2dist y = [0+(vel y*12),45+(vel y*12)]); || movehit
triggerall = statetype = A
triggerall = !(var(42) & floor(exp(3*ln(2)) + 0.5) )
triggerall = stateno != 260 && stateno != 460 && stateno != 660 && stateno != 680 && stateno != 671
trigger1 = random < 50 || p2statetype = A
trigger1 = ctrl
trigger1 = stateno != [260,269]
trigger2 = stateno = 610
trigger2 = (movehit) || (movecontact && p2statetype != S)
var(52) = 660
ignorehitpause = 1

[State AI, Consider J.D.Drive]
type = VarSet
triggerall = p2stateno != [5100,5120]
triggerall = numenemy
triggerall = var(52) = 0 || random < 150
triggerall = var(55)
triggerall = random < 125 || movehit
triggerall = p2dist y > -40
triggerall = (p2bodydist x - p2bodydist y - (enemynear,vel y*12)) = [-40,50]
triggerall = p2bodydist x <= 140
;triggerall = p2bodydist x = [-19+(p2bodydist y)+(enemynear,vel x),1+(p2bodydist y)+(enemynear,vel x)]
;triggerall = p2bodydist y = [(p2bodydist x)-25,(p2bodydist x)+25]
triggerall = statetype = A
triggerall = !(var(42) & floor(exp(3*ln(2)) + 0.5) )
triggerall = stateno != 260 && stateno != 460 && stateno != 660 && stateno != 680 && stateno != 671
trigger1 = ctrl
trigger2 = stateno = 620 || stateno = 600 || stateno = 610
trigger2 = movehit
trigger2 = (p2statetype != A) || (var(40) & floor(exp(8*ln(2)) + 0.5) )
var(52) = 670
ignorehitpause = 1

[State AI, Consider J.U.Drive]
type = VarSet
triggerall = p2stateno != [5100,5120]
triggerall = numenemy
triggerall = var(52) = 0 || random < 150
triggerall = var(55)
triggerall = random < 125 || movehit
triggerall = p2dist y <= 25
triggerall = (p2bodydist x + p2bodydist y - (enemynear,vel y*12)) = [-40,50]
triggerall = p2bodydist x <= 140
triggerall = p2dist y >= -200 - (enemynear,vel y*12)
triggerall = statetype = A
triggerall = !(var(42) & floor(exp(3*ln(2)) + 0.5) )
triggerall = stateno != 260 && stateno != 460 && stateno != 660 && stateno != 680 && stateno != 671
triggerall = !var(22)
trigger1 = ctrl
trigger2 = stateno = 620 || stateno = 600 || stateno = 610 || stateno = 221
trigger2 = movehit
var(52) = 671
ignorehitpause = 1

[State AI, Consider J.G.Drive]
type = VarSet
triggerall = p2stateno != [5100,5110]
triggerall = numenemy
triggerall = var(52) = 0 || random < 100
triggerall = var(55)
triggerall = random < 125
triggerall = p2bodydist x = [0,200]
triggerall = (enemynear, pos y) >= -35 - (enemynear,vel y*12)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -65
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y) + (enemynear, pos y) <= -18 ) || (p2stateno != [5030,5120])
triggerall = statetype = A
triggerall = !(var(42) & floor(exp(4*ln(2)) + 0.5) )
triggerall = stateno != 260 && stateno != 460 && stateno != 660 && stateno != 680 && stateno != 671
trigger1 = random < 50 || (p2statetype = A && p2movetype = A)
trigger1 = ctrl
trigger1 = stateno != [260,269]
trigger2 = stateno = 620 || stateno = 600
trigger2 = (moveguarded) || (movecontact && p2statetype != S)
var(52) = 680
ignorehitpause = 1

[State AI, Consider j.QCB+B]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 100
triggerall = var(55)
triggerall = random < 150 + (300*(movehit))
triggerall = p2stateno != [5080,5130]
triggerall = (p2bodydist x = [-14-(vel x*10),50+(vel x*10)]); || movehit
triggerall = (p2dist y = [-64+(vel y*10),50+(vel y*10)]); || movehit
triggerall = statetype = A
triggerall = !(var(41) & floor(exp(7*ln(2)) + 0.5) )
trigger1 = ctrl
trigger2 = stateno = 221 || stateno = 610 || stateno = 620 || stateno = 260 || stateno = 460 || stateno = 660 || stateno = 670 || stateno = 680 || stateno = 270
trigger2 = movecontact
var(52) = ifelse(pos y>=-20,1220,ifelse(random<700,1210,1200))
ignorehitpause = 1
[State AI, Consider anticipating j.QCB+A]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 100
triggerall = var(55)
triggerall = random < 150 + (300*(movehit))
triggerall = p2stateno != [5080,5110]
triggerall = (p2bodydist x = [-10-(vel x*10),50+(vel x*10)])
triggerall = p2dist y >= 77
triggerall = statetype = A
triggerall = !(var(41) & floor(exp(7*ln(2)) + 0.5) )
trigger1 = ctrl
trigger2 = stateno = 221 || stateno = 600 || stateno = 610 || stateno = 460 || stateno = 670 || stateno = 680 || stateno = 270
trigger2 = movecontact
var(52) = 1200
ignorehitpause = 1

[State AI, Consider upper drive brake]
type = VarSet
triggerall = p2bodydist x <= 40 - (10*(p2statetype!=A))
triggerall = var(52) = 0 || random < 80
triggerall = var(55)
triggerall = random < 550
triggerall = (movehit) || (moveguarded && p2statetype=A)
triggerall = !ctrl
trigger1 = stateno = 260 || stateno = 270 || stateno = 460 || stateno = 660 || stateno = 680 || stateno = 671
trigger1 = p2statetype != A || (p2statetype = A && p2dist y < 0)
var(52) = 268
ignorehitpause = 1

[State AI, Consider normal drive brake]
type = VarSet
triggerall = var(52) = 0 || random < 100
triggerall = var(55)
triggerall = random < 500 || (movehit && p2statetype != A)
triggerall = movecontact
triggerall = !ctrl
triggerall = p2bodydist x <= 38 + (10*(p2movetype!=A))
trigger1 = stateno = 460 || stateno = 660 || stateno = 260 || stateno = 270 || stateno = 680 || stateno = 671
trigger1 = p2statetype != A || (p2statetype = A && p2dist y >= -30)
var(52) = 264
ignorehitpause = 1

[State AI, Consider forward drive brake]
type = VarSet
triggerall = p2bodydist x <= 54
triggerall = var(52) = 0 || random < 120
triggerall = var(55)
triggerall = random < 500 - (150*p2movetype=A)
triggerall = movecontact || (p2movetype = A)
triggerall = !ctrl
triggerall = time >= 14 || movecontact
trigger1 = stateno = 260 || stateno = 270 || stateno = 460 || stateno = 660 || stateno = 670 || stateno = 680 || stateno = 671
trigger1 = p2statetype != A || (p2statetype = A && p2movetype = A)
var(52) = 266
ignorehitpause = 1

[State AI, Consider a breakdancing]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80
triggerall = var(55)
triggerall = random < 250 + ((lifemax - life)/16)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0)
triggerall = p2stateno != [5110,5119]
triggerall = (p2bodydist x = [-5,95])
triggerall = p2dist y >= -10 - (enemynear,vel y*6)
triggerall = statetype != A
triggerall = power >= 1000
triggerall = power <= 2500 && random < 100
triggerall =(p2movetype = H) || (enemynear, ctrl = 0) || (enemynear, statetype = A)
triggerall = (p2stateno != [120,165]) || (p2statetype = S)
triggerall = prevstateno != [3200,3202]
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*6) + (enemynear, pos y) <= -6 )
trigger1 = ctrl || stateno = 100 || (stateno = 1520 && anim = 1521)
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 250
trigger2 = stateno = 200 || stateno = 400 || stateno = 210 || stateno = 220 || stateno = 400 || stateno = 420
trigger2 = (movehit) || (moveguarded && p2statetype = S)
var(52) = 3200
ignorehitpause = 1
[State AI, Consider a super]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80
triggerall = var(55)
triggerall = random < 444 + ((lifemax - life)/16)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0)
triggerall = p2stateno != [5080,5130]
triggerall = (p2bodydist x = [40,220]) || p2statetype = A
triggerall = p2dist y >= -45 - (enemynear,vel y*6)
triggerall = statetype != A
triggerall = power >= 1000
triggerall =(p2movetype = H) || (enemynear, ctrl = 0) || (enemynear, statetype = A)
triggerall = p2stateno != [120,165]
triggerall = prevstateno != [3000,3002]
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*6) + (enemynear, pos y) <= -5 ) || (p2stateno != [5030,5120])
trigger1 = ctrl || stateno = 100 || (stateno = 1520 && anim = 1521)
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 250
trigger2 = stateno = 210 || stateno = 220 || stateno = 400 || stateno = 420
trigger2 = movehit
var(52) = 3000
ignorehitpause = 1
[State AI, Consider a projectile]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80
triggerall = var(55)
triggerall = random < 350 + ((lifemax - life)/16)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (p2bodydist x >= 110)
triggerall = p2stateno != [5080,5130]
triggerall = p2dist y >= -55 - (enemynear,vel y*9) || (p2bodydist x >= 120 && random < 500)
triggerall = statetype != A
triggerall = power >= 1000
triggerall =(p2movetype = H) || (enemynear, ctrl = 0) || (enemynear, statetype = A)
triggerall = p2stateno != [120,165]
triggerall = prevstateno != [3100,3102]
triggerall = !numhelper(3100)
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y) + (enemynear, pos y) <= -10 ) || (p2stateno != [5030,5120])
trigger1 = ctrl || stateno = 100 || (stateno = 1520 && anim = 1521)
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 250
trigger2 = stateno = 210 || stateno = 220 || stateno = 400 || stateno = 420
trigger2 = movehit
var(52) = 3100
ignorehitpause = 1
[State AI, Consider a ending the world]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 80
triggerall = var(55)
triggerall = random < 444 + ((lifemax - life)/10)
;triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0)
triggerall = p2stateno != [5080,5130]
triggerall = (p2bodydist x = [-5,95])
triggerall = p2dist y >= -85 - (enemynear,vel y*10)
triggerall = statetype != A
triggerall = power >= 2000
triggerall =(p2movetype = H) || (enemynear, ctrl = 0) || (enemynear, statetype = A)
triggerall = (p2stateno != [120,165]) || (p2statetype != C)
triggerall = prevstateno != [3000,3002]
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*10) + (enemynear, pos y) <= -15 ) || (p2statetype!=C) || (p2stateno != [5030,5120])
trigger1 = ctrl || stateno = 100 || (stateno = 1520 && anim = 1521)
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 250
trigger2 = stateno = 210 || stateno = 220 || stateno = 400 || stateno = 420
trigger2 = movehit
var(52) = 3500
ignorehitpause = 1
[State AI, Consider sending in the hamsters]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 140
triggerall = var(55)
triggerall = random < 300 + ((lifemax - life)/8)
;triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0)
triggerall = p2stateno != [5080,5130]
triggerall = (p2bodydist x = [-5,170])
triggerall = p2dist y >= -85 - (enemynear,vel y*10)
triggerall = statetype != A
triggerall = power >= 3000
triggerall =(p2movetype = H) || (enemynear, ctrl = 0) || (enemynear, statetype = A) || (random < 80)
triggerall = prevstateno != [3000,3002]
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*10) + (enemynear, pos y) <= -15 ) || (p2stateno != [5030,5120])
trigger1 = ctrl || stateno = 100 || (stateno = 1520 && anim = 1521)
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 250
trigger2 = stateno = 210 || stateno = 220 || stateno = 400 || stateno = 420
trigger2 = movehit
var(52) = 3600
ignorehitpause = 1

[State AI, Consider Throwing]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 900
triggerall = var(55)
triggerall = random < 900
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [-5,30-(6*(movecontact>=1))]
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = prevstateno != [1100,1120]
triggerall = prevstateno != 800
trigger1 = stateno != 40
trigger1 = ctrl
trigger2 = random < 300
trigger2 = stateno = 200 || stateno = 210 || stateno = 400
trigger2 = movehit
var(52) = ifelse(random<450&&var(8)=0&&p2movetype!=H&&p2bodydist x<=5,800,ifelse(random<100&&p2movetype!=A||(enemynear,prevstateno=5120),1110,1100))
ignorehitpause = 1

[State -1, Consider an Air Throw]
type = Varset
triggerall = var(55)
triggerall = statetype = A
triggerall = ctrl
triggerall = p2bodydist X < 10
triggerall = abs(p2bodydist y) < 35
triggerall = (p2statetype = A)
trigger1 = p2movetype != H || (random < 500) || p2movetype = A
trigger2 = (var(40) & floor(exp(7*ln(2)) + 0.5) ) && (var(40) & floor(exp(8*ln(2)) + 0.5) ) && (var(40) & floor(exp(9*ln(2)) + 0.5) )
var(52) = 830

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
triggerall = !(var(40) & floor(exp(7*ln(2)) + 0.5) ) || !(var(40) & floor(exp(8*ln(2)) + 0.5) ) || !(var(40) & floor(exp(9*ln(2)) + 0.5) )
triggerall = (enemynear, pos y <= -45)
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 220
trigger2 = frontedgedist < 110
trigger2 = movehit
trigger3 = stateno = [1000,1020]
trigger3 = movehit || (numprojid(1001) && ProjHitTime(1001))
var(52) = 40
ignorehitpause = 1

[State AI, Consider Advancing]
type = VarSet
triggerall = var(55)
triggerall = var(52) = 0 || random < 80
triggerall = random < 200 || numhelper(3100)
triggerall = ((enemynear, ctrl = 0) && p2movetype != A) || (p2movetype = A && (enemynear, facing = facing))
triggerall = (p2stateno != [5080,5130]) || (p2bodydist x = [45,100])
triggerall = p2bodydist x >= 45
triggerall = statetype != A
trigger1 = stateno != 40
trigger1 = !moveguarded
var(52) = ifelse(random<444&&(p2stateno != [5080,5130]),260,100)

[State AI, Consider BA.BK]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 55
triggerall = var(55)
triggerall = random < 80
triggerall = p2stateno != [5110,5120]
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = (p2bodydist x = [-55+(enemynear, vel x * 2),10+(enemynear, vel x * 2)]) && (enemynear, vel x >= 3)
triggerall = p2dist y >= -210 - (enemynear,vel y*15)
triggerall = statetype != A
triggerall = !(var(41) & floor(exp(8*ln(2)) + 0.5) )
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 100 || (p2movetype = H && p2statetype != S)
trigger1 = random < 500
trigger1 = ctrl
trigger2 = (stateno = 200 && random < 250) || stateno = 210 || stateno = 220 || (stateno = 400 && random < 150) || stateno = 420
trigger2 = (moveguarded && p2statetype = C)
var(52) = 1330
ignorehitpause = 1

[State AI, Consider BA.A]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 55
triggerall = var(55)
triggerall = random < 150 + (100*(stateno=52)) + (350*(p2statetype=L||(p2dist y>-10&&enemynear,vel y>=0)))
triggerall = p2stateno != [5110,5120]
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2bodydist x = [-8,95]
triggerall = p2dist y >= -170 - (enemynear,vel y*15)
triggerall = statetype != A
triggerall = !(var(41) & floor(exp(8*ln(2)) + 0.5) )
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 100 || (p2movetype = H && p2statetype != S)
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 && random < 250) || stateno = 210 || stateno = 220 || (stateno = 400 && random < 150) || stateno = 420
trigger2 = (moveguarded && p2statetype = C) || (movehit && p2statetype = A)
var(52) = 1300
ignorehitpause = 1

[State AI, Consider BA.B]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 55
triggerall = var(55)
triggerall = random < 150 + (100*(stateno=52)) + (350*(p2statetype=L||(p2dist y>-10&&enemynear,vel y>=0)))
triggerall = p2stateno != [5110,5120]
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2bodydist x = [35,165]
triggerall = p2dist y >= -175 - (enemynear,vel y*15)
triggerall = statetype != A
triggerall = !(var(41) & floor(exp(8*ln(2)) + 0.5) )
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 100 || (p2movetype = H && p2statetype != S)
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 && random < 250) || stateno = 210 || stateno = 220 || (stateno = 400 && random < 150) || stateno = 420
trigger2 = (moveguarded && p2statetype = C) || (movehit && p2statetype = A)
var(52) = 1310
ignorehitpause = 1

[State AI, Consider BA.C]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 55
triggerall = var(55)
triggerall = random < 180 + (100*(stateno=52)) + (350*(p2statetype=L||(p2dist y>-10&&enemynear,vel y>=0)))
triggerall = p2stateno != [5110,5120]
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 190)
triggerall = p2bodydist x = [109,240]
triggerall = p2dist y >= -175 - (enemynear,vel y*15)
triggerall = statetype != A
triggerall = !(var(41) & floor(exp(8*ln(2)) + 0.5) )
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 100 || (p2movetype = H && p2statetype != S)
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 && random < 250) || stateno = 210 || stateno = 220 || (stateno = 400 && random < 150) || stateno = 420
trigger2 = (moveguarded && p2statetype = C) || (movehit && p2statetype = A)
var(52) = 1320
ignorehitpause = 1

[State AI, Consider Countering]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 55
triggerall = var(55)
triggerall = random < 15 + ifelse(p2life - life<0,0,(p2life - life)/4)
triggerall = p2bodydist x = [-5,60]
triggerall = p2dist y >= -50
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
value = ifelse(random<88&&(stateno!=[120,169])&&(p2bodydist x!=[61,240]),ifelse(p2bodydist x>=230,1400,ifelse(random<100,40,ifelse(random<400,270,1000))),130)

[State AI, Guard L]
type = ChangeState
triggerall = stateno != 40
triggerall = (var(55)) && (StateType != A) && (Ctrl) && (EnemyNear, Facing != Facing) && (var(50)<40)
trigger1 = (P2StateType = C) && (((P2MoveType = A) && (inguarddist)) || (EnemyNear, NumProj > 0))
value = ifelse(random<88&&(stateno!=[120,169])&&p2bodydist x<=60,ifelse(random<100,40,1000),131)


; END OF AI

;---------------------------------------------------------------------------
;Light Kung Fu Palm
[State -1, SGS]
type = ChangeState
value = 3600
triggerall = (command = "SGS" && !var(55))  || var(52) = 3600
triggerall = power >= 3000
trigger1 = var(9) ;Use combo condition (above)
trigger2 = statetype != A
trigger2 = (stateno = [200,220]) || (stateno = [400,420])
trigger3 = stateno = 1520 && ((anim = 1521) || (time >= 12 && !var(55)) )

[State -1, CLUSTERFUCK]
type = ChangeState
value = 3500
triggerall = (ifelse((anim!=[5,6]),command = "Doom3",command = "Doom3") && !var(55))  || var(52) = 3500
triggerall = power >= 2000
trigger1 = var(9) ;Use combo condition (above)
trigger2 = stateno = 1520 && ((anim = 1521) || (time >= 12 && !var(55)) )

[State -1, HADOOKEN]
type = ChangeState
value = 3100
triggerall = (ifelse((anim!=[5,6]),command = "ProjectileSuper",command = "r_ProjectileSuper") && !var(55))  || var(52) = 3100
triggerall = power >= 1000
triggerall = !numhelper(3100)
trigger1 = var(9) ;Use combo condition (above)
trigger2 = stateno = 1520 && ((anim = 1521) || (time >= 12 && !var(55)) )

[State -1, MOSKAU]
type = ChangeState
value = 3200
triggerall = (ifelse((anim!=[5,6]),command = "r_ProjectileSuper",command = "ProjectileSuper") && !var(55))  || var(52) = 3200
triggerall = power >= 1000
trigger1 = var(9) ;Use combo condition (above)
trigger2 = stateno = 1520 && ((anim = 1521) || (time >= 12 && !var(55)) )

[State -1, CHOMIK]
type = ChangeState
value = 3000
triggerall = (command = "Chomik" && !var(55))  || var(52) = 3000
triggerall = power >= 1000
trigger1 = var(9) ;Use combo condition (above)
trigger2 = stateno = 1520 && ((anim = 1521) || (time >= 12 && !var(55)) )

[State -1, MOVIE]
type = ChangeState
value = 1120
triggerall = (command = "360_z" && !var(55))  || var(52) = 1120
trigger1 = var(9) ;Use combo condition (above)

[State -1, MOVIE]
type = ChangeState
value = 1110
triggerall = (command = "360_y" && !var(55))  || var(52) = 1110
trigger1 = var(9) ;Use combo condition (above)

[State -1, MOVIE]
type = ChangeState
value = 1100
triggerall = (command = "360_x" && !var(55))  || var(52) = 1100
trigger1 = var(9) ;Use combo condition (above)

[State -1, ROBERT]
type = ChangeState
value = 1200
triggerall = (ifelse((anim!=[5,6]),command = "robert_x",command = "r_robert_x") && !var(55))  || var(52) = 1200
trigger1 = var(9) ;Use combo condition (above)

[State -1, ROBERT]
type = ChangeState
value = 1210
triggerall = (ifelse((anim!=[5,6]),command = "robert_y",command = "r_robert_y") && !var(55))  || var(52) = 1210
trigger1 = var(9) ;Use combo condition (above)

[State -1, ROBERT]
type = ChangeState
value = 1220
triggerall = (ifelse((anim!=[5,6]),command = "robert_z",command = "r_robert_z") && !var(55))  || var(52) = 1220
trigger1 = var(9) ;Use combo condition (above)

[State -1, KENSHIRO]
type = ChangeState
value = 1250
triggerall = (command = "robert_x" && !var(55)) || var(52) = 1200
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 221 || stateno = 600 || stateno = 610 || stateno = 620 || stateno = 260 || stateno = 460 || stateno = 270 || stateno = 660 || stateno = 670
trigger2 = movecontact
trigger3 = stateno = 261

[State -1, KENSHIRO]
type = ChangeState
value = 1260
triggerall = (command = "robert_y" && !var(55)) || var(52) = 1210
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 221 || stateno = 600 || stateno = 610 || stateno = 620 || stateno = 260 || stateno = 460 || stateno = 270 || stateno = 660 || stateno = 670
trigger2 = movecontact
trigger3 = stateno = 261

[State -1, KENSHIRO]
type = ChangeState
value = 1270
triggerall = (command = "robert_z" && !var(55)) || var(52) = 1220
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 221 || stateno = 600 || stateno = 610 || stateno = 620 || stateno = 260 || stateno = 460 || stateno = 270 || stateno = 660 || stateno = 670
trigger2 = movecontact
trigger3 = stateno = 261

[State -1, RISING GRANDPA]
type = ChangeState
value = 1000
triggerall = (command = "upper_x" && !var(55))  || var(52) = 1000
trigger1 = var(9) ;Use combo condition (above)

[State -1, RISING GRANDPA]
type = ChangeState
value = 1010
triggerall = (command = "upper_y" && !var(55))  || var(52) = 1010
trigger1 = var(9) ;Use combo condition (above)

[State -1, RISING GRANDPA]
type = ChangeState
value = 1020
triggerall = (command = "upper_z" && !var(55))  || var(52) = 1020
trigger1 = var(9) ;Use combo condition (above)

[State -1, ROCKET JUMP]
type = ChangeState
value = 1400
triggerall = (command = "DD_a" && !var(55))  || var(52) = 1400
trigger1 = var(9) ;Use combo condition (above)

[State -1, BALOON]
type = ChangeState
value = 1300
triggerall = (ifelse((anim!=[5,6]),command = "r_movie_x",command = "movie_x") && !var(55))  || var(52) = 1300
trigger1 = var(9) ;Use combo condition (above)

[State -1, BALOON]
type = ChangeState
value = 1310
triggerall = (ifelse((anim!=[5,6]),command = "r_movie_y",command = "movie_y") && !var(55))  || var(52) = 1310
trigger1 = var(9) ;Use combo condition (above)

[State -1, BALOON]
type = ChangeState
value = 1320
triggerall = (ifelse((anim!=[5,6]),command = "r_movie_z",command = "movie_z") && !var(55))  || var(52) = 1320
trigger1 = var(9) ;Use combo condition (above)

[State -1, BALOON]
type = ChangeState
value = 1330
triggerall = (ifelse((anim!=[5,6]),command = "r_movie_a",command = "movie_a") && !var(55))  || var(52) = 1330
trigger1 = var(9) ;Use combo condition (above)

[State -1, METAL]
type = ChangeState
value = 1520
triggerall = (command = "DD_z" && !var(55))  || var(52) = 1520
trigger1 = var(9) ;Use combo condition (above)

;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = stateno != 100
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

[State -1, THROW IT]
type = ChangeState
value = 800
triggerall = (command = "throw" && !var(55)) || var(52) = 800
triggerall = stateno != 100
trigger1 = statetype != A
trigger1 = ctrl

[State -1, YOU CAN'T AIR BLOCK IT]
type = ChangeState
value = 830
triggerall = (command = "throw" && !var(55)) || var(52) = 830
trigger1 = statetype = A
trigger1 = ctrl

[State -1, AKUMA]
type = ChangeState
value = 700
triggerall = (command = "throw")  || var(52) = 700
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = stateno = [150,154]

;===========================================================================

[State -1, Air Up Drive]
type = ChangeState
value = 671
triggerall = (command = "a" && command = "holdup") || var(52) = 671
triggerall = !var(55) || !(var(42) & floor(exp(6*ln(2)) + 0.5) )
triggerall = statetype = A
triggerall = stateno != 260 && stateno != 460 && stateno != 660 && stateno != 680 && stateno != 671
triggerall = !var(22)
trigger1 = ctrl
trigger2 = stateno = 221 || stateno = 600 || stateno = 610 || stateno = 620
trigger2 = movecontact

[State -1, Air-toground Drive]
type = ChangeState
value = 680
triggerall = (command = "a" && command = "holdback") || var(52) = 680
triggerall = !var(55) || !(var(42) & floor(exp(5*ln(2)) + 0.5) )
triggerall = statetype = A
triggerall = stateno != 260 && stateno != 460 && stateno != 660 && stateno != 680 && stateno != 671
trigger1 = ctrl
trigger2 = stateno = 221 || stateno = 600 || stateno = 610 || stateno = 620
trigger2 = movecontact

[State -1, Air Down Drive]
type = ChangeState
value = 670
triggerall = (command = "a" && command = "holddown") || var(52) = 670
triggerall = !var(55) || !(var(42) & floor(exp(4*ln(2)) + 0.5) )
triggerall = statetype = A
triggerall = stateno != 260 && stateno != 460 && stateno != 660 && stateno != 680 && stateno != 671
trigger1 = ctrl
trigger2 = stateno = 221 || stateno = 600 || stateno = 610 || stateno = 620
trigger2 = movecontact

[State -1, Air Forward Drive]
type = ChangeState
value = 660
triggerall = (command = "a") || var(52) = 660
triggerall = !var(55) || !(var(42) & floor(exp(3*ln(2)) + 0.5) )
triggerall = statetype = A
triggerall = stateno != 260 && stateno != 460 && stateno != 660 && stateno != 680 && stateno != 671
trigger1 = ctrl
trigger2 = stateno = 221 || stateno = 600 || stateno = 610 || stateno = 620
trigger2 = movecontact

[State -1, Back Drive]
type = ChangeState
value = 270
triggerall = (command = "a" && command = "holdback" && command != "holddown") || var(52) = 270
triggerall = !var(55) || !(var(42) & floor(exp(2*ln(2)) + 0.5) )
trigger1 = var(9)

[State -1, Up Drive]
type = ChangeState
value = 460
triggerall = (command = "a" && command = "holddown") || var(52) = 460
triggerall = !var(55) || !(var(42) & floor(exp(1*ln(2)) + 0.5) )
trigger1 = var(9)

[State -1, Neutral Drive]
type = ChangeState
value = 260
triggerall = (command = "a" && command != "holddown") || var(52) = 260
triggerall = !var(55) || !(var(42) & floor(exp(0*ln(2)) + 0.5) )
trigger1 = var(9)

[State -1, A Brake]
type = ChangeState
value = 264
triggerall = (command = "x" && !var(55)) || var(52) = 264
trigger1 = stateno = 260
trigger1 = animelemno(0) = 7
trigger2 = stateno = 270
trigger2 = animelemno(0) = 10
trigger3 = stateno = 460
trigger3 = animelemno(0) = 4
trigger4 = stateno = 660
trigger4 = animelemno(0) = 4
trigger5 = stateno = 670 || stateno = 671
trigger5 = animelemno(0) = 4
trigger6 = stateno = 680 && anim = 681
trigger6 = animelemno(0) = 4

[State -1, B Brake]
type = ChangeState
value = 266
triggerall = (command = "y" && !var(55)) || var(52) = 266
trigger1 = stateno = 260
trigger1 = animelemno(0) = 7
trigger2 = stateno = 270
trigger2 = animelemno(0) = 10
trigger3 = stateno = 460
trigger3 = animelemno(0) = 4
trigger4 = stateno = 660
trigger4 = animelemno(0) = 4
trigger5 = stateno = 670 || stateno = 671
trigger5 = animelemno(0) = 4
trigger6 = stateno = 680 && anim = 681
trigger6 = animelemno(0) = 4

[State -1, C Brake]
type = ChangeState
value = 268
triggerall = (command = "z" && !var(55)) || var(52) = 268
trigger1 = stateno = 260
trigger1 = animelemno(0) = 7
trigger2 = stateno = 270
trigger2 = animelemno(0) = 10
trigger3 = stateno = 460
trigger3 = animelemno(0) = 4
trigger4 = stateno = 660
trigger4 = animelemno(0) = 4
trigger5 = stateno = 670 || stateno = 671
trigger5 = animelemno(0) = 4
trigger6 = stateno = 680 && anim = 681
trigger6 = animelemno(0) = 4


;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Knee]
type = ChangeState
value = 221
triggerall = (command = "z"  && command = "holdfwd" && command != "holddown" && !var(55)) || var(52) = 221
triggerall = !var(55) || !(var(41) & floor(exp(0*ln(2)) + 0.5) )
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || stateno = 210 || stateno = 400 || stateno = 420 || stateno = 211
trigger2 = movecontact

[State -1, Stand Overhead]
type = ChangeState
value = 211
triggerall = (command = "y"  && command = "holdfwd" && command != "holddown" && !var(55)) || var(52) = 211
triggerall = !var(55) || !(var(41) & floor(exp(1*ln(2)) + 0.5) )
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || stateno = 210 || stateno = 400 || stateno = 420 || stateno = 220
trigger2 = movecontact

[State -1, Stand Poke]
type = ChangeState
value = 200
triggerall = (command = "x" && command != "holddown") || var(52) = 200
triggerall = !var(55) || !(var(40) & floor(exp(1*ln(2)) + 0.5) )
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200
trigger2 = time > 9 || movecontact

[State -1, Stand Punch]
type = ChangeState
value = 210
triggerall = (command = "y" && command != "holddown") || var(52) = 210
triggerall = !var(55) || !(var(40) & floor(exp(2*ln(2)) + 0.5) )
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200
trigger2 = movecontact

[State -1, Stand Kick]
type = ChangeState
value = 220
triggerall = (command = "z" && command != "holddown") || var(52) = 220
triggerall = !var(55) || !(var(40) & floor(exp(3*ln(2)) + 0.5) )
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || stateno = 210 || stateno = 400
trigger2 = movecontact
trigger3 = stateno = 420
trigger3 = animelemtime(5) >= 0 && movecontact

[State -1, Crouch Poke]
type = ChangeState
value = 400
triggerall = (command = "x" && command = "holddown") || var(52) = 400
triggerall = !var(55) || !(var(40) & floor(exp(4*ln(2)) + 0.5) )
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || stateno = 210
trigger2 = time > 9 || movecontact
trigger3 = stateno = 400
trigger3 = animelemtime(5) >= 0

[State -1, Crouch Kick]
type = ChangeState
value = 420
triggerall = (command = "y" && command = "holddown") || var(52) = 420
triggerall = !var(55) || !(var(40) & floor(exp(6*ln(2)) + 0.5) )
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || stateno = 210 || stateno = 400
trigger2 = movecontact

[State -1, Crouch Punch]
type = ChangeState
value = 410
triggerall = (command = "z" && command = "holddown") || var(52) = 410
triggerall = !var(55) || !(var(40) & floor(exp(5*ln(2)) + 0.5) )
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || stateno = 210 || stateno = 400
trigger2 = movecontact
trigger3 = stateno = 420
trigger3 = animelemtime(5) >= 0 && movecontact

[State -1, Air Jump-in]
type = ChangeState
value = 600
triggerall = (command = "x") || var(52) = 600
triggerall = statetype = A
triggerall = !var(55) || !(var(40) & floor(exp(7*ln(2)) + 0.5) )
trigger1 = ctrl
trigger2 = stateno = 620 && prevstateno != 600
trigger2 = movecontact
trigger3 = stateno = 221
trigger3 = movehit

[State -1, Air Kick]
type = ChangeState
value = 620
triggerall = (command = "y") || var(52) = 620
triggerall = statetype = A
triggerall = !var(55) || !(var(40) & floor(exp(9*ln(2)) + 0.5) )
trigger1 = ctrl
trigger2 = stateno = 600 && prevstateno != 620
trigger2 = movecontact

[State -1, Air Punch]
type = ChangeState
value = 610
triggerall = (command = "z") || var(52) = 610
triggerall = statetype = A
triggerall = !var(55) || !(var(40) & floor(exp(8*ln(2)) + 0.5) )
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 620
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

[State -1, Jump combo]
type = ChangeState
value = 40
triggerall = (command = "holdup") || var(52) = 40
trigger1 = stateno = 220 || stateno = 410
trigger1 = movehit
trigger2 = statetype != A && ctrl
trigger2 = var(55)
trigger3 = stateno = 1000 || stateno = 1010 || stateno = 1020
trigger3 = movehit || (numprojid(1001) && ProjHitTime(1001))
trigger3 = animelemtime(6) >= 6
trigger4 = stateno = 100

;[State 0, DEBUG]
;type = Helper
;triggerall = !numhelper(3561)
;trigger1 = command = "c"
;trigger1 = ctrl
;helpertype = normal ;player
;name = "ALEXLEXUS"
;ID = 3561
;stateno = 3561
;pos = 0,-90
;postype = p1
;facing = 1
;ownpal = 1
;size.xscale = .5
;size.yscale = .5




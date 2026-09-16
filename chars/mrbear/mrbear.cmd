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
name = "LolClark"
command = ~F,D,B,y

[Command]
name = "LolClark"
command = ~F,DF,D,DB,B,y

[Command]
name = "Shinryuken"
command = ~D, DF, F, D, DF, F, x
time = 20
;command = ~F, D, DF, x

[Command]
name = "Shinryuken"
command = ~D, F, D, F, x
time = 20

[Command]
name = "ShunGoku"
command = ~D, DF, F, D, DF, F, a
time = 20

[Command]
name = "ShunGoku"
command = ~D, F, D, F, a
time = 20

;-| Special Motions |------------------------------------------------------
[Command]
name = "upper_x"
command = ~F, D, DF, x

[Command]
name = "upper_a"
command = ~F, D, DF, a

[Command]
name = "upper_y"
command = ~F, D, DF, y

[Command]
name = "upper_xy"
command = ~F, D, DF, x+y

[Command]
name = "QCB_a"
command = ~D, DB, B, a

[Command]
name = "QCB_x"
command = ~D, DB, B, x

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
name = "QCB_y"
command = ~D, DB, B, y

[Command]
name = "QCB_xy"
command = ~D, DB, B, x+y

[Command]
name = "RyoStyle_x"
command = ~DB, F, x

[Command]
name = "RyoStyle_a"
command = ~DB, F, a

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
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact
var(9) = 1

;===========================================================================
;AI
;===========================================================================

[State AI, HAHA]
type = ChangeState
value = 3100
triggerall = var(55)
triggerall = p2movetype = A
triggerall = random < 100
triggerall = p2bodydist x = [-15,55]
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl

[State AI, Kung Fu Throw]
type = ChangeState
value = ifelse(random<100&&p2movetype!=H,40,ifelse(random<100&&var(42)<=-33,ifelse(random<150&&power>=1000,3100,1100),800))
triggerall = var(55)
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = stateno != 40
triggerall = random < 900 || var(54) = 2
triggerall = p2stateno != [5100,5200]
triggerall = prevstateno != [800,899]
triggerall = var(8) <= 0
trigger1 = p2bodydist X = [-25,7]
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

[State AI, SCRUB KEN]
type = ChangeState
triggerall = var(55)
triggerall = statetype != A
triggerall = p2movetype = A && (EnemyNear, Facing != Facing)
triggerall = p2stateno != [3000,4999]
triggerall = p2bodydist x = [-5,92]
triggerall = p2bodydist y = [-192,-58]
triggerall = random < 80
triggerall = stateno != 20 || random < 500
triggerall = stateno != 40
triggerall = stateno != 100
trigger1 = ctrl
value = ifelse(p2bodydist x>58,1110,ifelse(random<150&&power>=1000,3100,1100))

[State AI, ChangeState]
type = ChangeState
triggerall = stateno != 40
;triggerall = var(54) != 1
triggerall = (var(55)) && (StateType != A) && (Ctrl) && (EnemyNear, Facing != Facing) && (var(50)<40)
trigger1 = (P2StateType != C) && (((P2MoveType = A) && (inguarddist)) || (EnemyNear, NumProj > 0))
value = ifelse(random<10&&(stateno!=[120,169])&&p2bodydist x<=35&&(enemynear,animtime<=-5)&&var(42)<=-33,1100,130)

[State AI, ChangeState]
type = ChangeState
triggerall = stateno != 40
;triggerall = var(54) != 1
triggerall = (var(55)) && (StateType != A) && (Ctrl) && (EnemyNear, Facing != Facing) && (var(50)<40)
trigger1 = (P2StateType = C) && (((P2MoveType = A) && (inguarddist)) || (EnemyNear, NumProj > 0))
value = ifelse(random<16&&(stateno!=[120,169]),40,131)

[State AI, Taunt]
type = ChangeState
triggerall = var(55)
triggerall = p2bodydist x >= 80
triggerall = statetype != A
triggerall = prevstateno != 195
triggerall = stateno != 195
triggerall = ctrl
trigger1 = random < ifelse(p2bodydist x<=45,500,20)
trigger1 = (p2stateno = [5100,5200]) || p2statetype = L
value = 195

[State AI, ANTI-AIR]
type = ChangeState
triggerall = var(55)
triggerall = statetype != A
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0)
triggerall = p2stateno != [5100,5130]
triggerall = p2bodydist x = [-5,92]
triggerall = p2bodydist y = [-192,-58]
triggerall = random < 500
triggerall = stateno != 20
triggerall = stateno != 40
triggerall = stateno != 100
triggerall = !numtarget(1100)
trigger1 = ctrl
value = ifelse(p2bodydist x>58,1110,ifelse(random<100,1200,ifelse(random<222,1000,ifelse(random<150&&power>=1000,3100,1100))))

[State AI, Punch Attack]
type = ChangeState
triggerall = var(55)
triggerall = statetype != A
;triggerall = (p2movetype != A || EnemyNear, Facing = Facing)
triggerall = p2stateno != [5100,5130]
triggerall = p2bodydist x = [-5,42]
triggerall = p2bodydist y >= -135
triggerall = random < 500 || p2movetype = H
triggerall = stateno != 20 || random < 200
triggerall = stateno != 40
triggerall = stateno != 100
trigger1 = ctrl
value = ifelse((random<200||var(42)>-85),ifelse((var(42)<=-33&&random<150)||p2statetype=A||prevstateno=800,1100,ifelse(random<500,800,430)), ifelse(random<250&&p2bodydist x<35,ifelse(random<500,235,1100),ifelse(random<500,200,205)) )

[State AI, After Land Poke]
type = ChangeState
triggerall = var(55)
triggerall = statetype != A
;triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded != [1,8]) || (enemynear,HitDefAttr = SCA,AT) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0)
triggerall = p2stateno != [5100,5130]
;triggerall = p2bodydist x <= 80
triggerall = random < 140 + floor( abs(life - p2life) / 4)
triggerall = p2movetype != H || random < 500
trigger1 = stateno = 52
trigger1 = animtime = 0
value = ifelse( random<100&&p2bodydist x <=95&&p2statetype!=A,430, ifelse( p2bodydist x <= 55, ifelse(random<200,1010,1100), ifelse(random<100,1200,ifelse(random<200,1110,100)) ) )

[State AI, Far Attack]
type = ChangeState
triggerall = var(55)
triggerall = statetype != A
;triggerall = (p2movetype != A || EnemyNear, Facing = Facing)
triggerall = p2stateno != [5100,5130]
triggerall = p2bodydist x = [15,103]
triggerall = p2bodydist y >= -155
triggerall = random < 300 || p2movetype = H
triggerall = stateno != 20 || random < 200
triggerall = stateno != 40
triggerall = stateno != 100
trigger1 = ctrl
value = ifelse(random<410&&p2bodydist x>=36&&p2statetype!=A,430,ifelse(random<150&&p2bodydist x>=40,ifelse(random<500,100,240),ifelse(random<500&&p2bodydist x<=88,ifelse(var(42)<=-85&&random<900,210,240),ifelse(random<200,1200,230)) ))

[State AI, Faaaar Attack]
type = ChangeState
triggerall = var(55)
triggerall = statetype != A
;triggerall = (p2movetype != A || EnemyNear, Facing = Facing)
triggerall = p2stateno != [5100,5130]
triggerall = p2bodydist x = [50,195]
triggerall = p2bodydist y >= -155
triggerall = random < 100 || p2movetype = H
triggerall = stateno != 20 || random < 100
triggerall = stateno != 40
triggerall = stateno != 100
trigger1 = ctrl
value = ifelse(random<200||p2bodydist x>=139,ifelse(random<500,1210,100),ifelse(random<800,1200,1000))

[State AI, SHORYU COMBO]
type = ChangeState
value = ifelse(p2bodydist x<=55,ifelse(stateno=230&&random<100,800,ifelse(random<150&&power>=1000,3100,1100)),1110)
triggerall = var(55)
triggerall = movehit
triggerall = random < 350
triggerall = p2bodydist x = [-15,120]
trigger1 = stateno = 230
trigger1 = animelemtime(10) >= 3
trigger1 = random < 100
trigger2 = stateno = 1201
trigger2 = time >= 2
trigger3 = stateno = 205
trigger3 = animelemtime(3) > 3

[State AI, JUMP-IN]
type = ChangeState
triggerall = var(55)
triggerall = statetype = A
triggerall = p2stateno != [5100,5130]
triggerall = p2bodydist x = [-45,123]
triggerall = p2bodydist y = [-131,88]
triggerall = random < 500
triggerall = vel y >= -2 || p2statetype = A || random < 100
triggerall = time >= 6 || random < 100
trigger1 = ctrl
value = ifelse(random<900&&abs(p2bodydist x<=69),600,ifelse(random<500,1050,1060))

[State AI, DO SOMETHING]
type = ChangeState
value = ifelse(random<420&&power>=1000,3000,811+random%3)
triggerall = var(55)
triggerall = stateno = 810
trigger1 = random < 66
trigger1 = animelemtime(2) > 8
trigger1 = animelemtime(3) < 0
trigger2 = animelemtime(3) = -1

[State AI, HERE HE COMES]
type = ChangeState
value = 3200
triggerall = var(55)
triggerall = random < 444
triggerall = p2bodydist x >= 100
triggerall = stateno != 20
triggerall = stateno != 40
triggerall = (enemynear, statetype != L)
triggerall = (enemynear, ctrl = 0) || random < 100
triggerall = (enemynear, prevstateno !=[120,169])
triggerall = (enemynear, movetype != A) || (facing = enemynear, facing) || random < 90
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl

[State AI, JUST ADVANCE]
type = ChangeState
value = ifelse( random<80&&command="holdfwd"&&p2movetype!=H , 40 , ifelse(p2bodydist x<=130&&random<200,1200,ifelse(random<500,100,ifelse(random<200,1000,1210))) )
triggerall = var(55)
triggerall = random < 350
triggerall = p2bodydist x >= 75
triggerall = stateno != 20
triggerall = stateno != 40
triggerall = (enemynear, statetype != L) && (enemynear, movetype != A) && (enemynear, ctrl = 0)
trigger1 = statetype = S
trigger1 = ctrl

;===========================================================================
;END OF AI
;===========================================================================

; NOW THAT'S JUST OVERKILL
[State -1, SHUN GOKU SATSU]
type = ChangeState
value = 3200
triggerall = command = "ShunGoku"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 230
trigger2 = animelemtime(10) >= 0
trigger3 = stateno = 1201
trigger3 = time >= 2
trigger4 = stateno = 205 || stateno = 235 || stateno = 400
trigger4 = animelemtime(3) > 0 || movecontact

; NOW THAT'S JUST OVERKILL
[State -1, SHINRYUKEN]
type = ChangeState
value = 3100
triggerall = command = "Shinryuken"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 230
trigger2 = animelemtime(10) >= 0
trigger3 = stateno = 1201
trigger3 = time >= 2
trigger4 = stateno = 205 || stateno = 235 || stateno = 400
trigger4 = animelemtime(3) > 0 || movecontact

; WAIT WHAT
[State -1, HURRICANE KICK]
type = ChangeState
value = ifelse(command="x",1010,1000)
triggerall = command = "QCB_a" || command = "QCB_x"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 205 || stateno = 400 || stateno = 235
trigger2 = animelemtime(3) > 0 || movecontact

[State -1, HURRICANE KICK]
type = ChangeState
value = ifelse(command="a",1060,1050)
triggerall = command = "QCB_x" || command = "QCB_a"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, LOUNGE]
type = ChangeState
value = ifelse(command="a",1210,1200)
triggerall = command = "RyoStyle_x" || command = "RyoStyle_a"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 205 || stateno = 400 || stateno = 235
trigger2 = animelemtime(3) > 0 || movecontact

[State -1, SHORYUKEN]
type = ChangeState
value = ifelse(command="a",1110,1100)
triggerall = command = "upper_x" || command = "upper_a"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 230
trigger2 = animelemtime(10) >= 0
trigger3 = stateno = 1201
trigger3 = time >= 2
trigger4 = stateno = 205 || stateno = 235 || stateno = 400
trigger4 = animelemtime(3) > 0 || movecontact


;===========================================================================

;
[State -1, Rip Off Clark]
type = ChangeState
value = 3000
triggerall = command = "LolClark"
triggerall = stateno = 810
triggerall = power >= 1000
trigger1 = animelemtime(2) > 0
trigger1 = animelemtime(3) < 0

[State -1, Bite]
type = ChangeState
value = 811
triggerall = command = "x"
triggerall = stateno = 810
trigger1 = animelemtime(2) > 0
trigger1 = animelemtime(3) < 0

[State -1, Knee]
type = ChangeState
value = 812
triggerall = command = "a"
triggerall = stateno = 810
trigger1 = animelemtime(2) > 0
trigger1 = animelemtime(3) < 0

[State -1, Slam]
type = ChangeState
value = 813
triggerall = command = "holdup"
triggerall = stateno = 810
trigger1 = animelemtime(2) > 0
trigger1 = animelemtime(3) < 0

;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = stateno != 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
;[State -1, Run Back]
;type = ChangeState
;value = 105
;trigger1 = command = "BB"
;trigger1 = statetype = S
;trigger1 = ctrl


;===========================================================================
;---------------------------------------------------------------------------
[State -1, Uppercut]
type = ChangeState
value = 205
triggerall = command = "x"
triggerall = command = "holdback"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Double Punch]
type = ChangeState
value = 210
triggerall = command = "x"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 205 || stateno = 400 || stateno = 235
trigger2 = animelemtime(3) > 0 || movecontact
trigger3 = stateno = 230
trigger3 = animelemtime(10) >= 0

[State -1, Claw Swipe]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Knee]
type = ChangeState
value = 235
triggerall = command = "a"
triggerall = command = "holdback"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Overhead Dropkick]
type = ChangeState
value = 240
triggerall = command = "a"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 205 || stateno = 400 || stateno = 235
trigger2 = animelemtime(3) > 0 || movecontact

[State -1, Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, BITE]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = animelemtime(3) > 3 || movecontact

[State -1, SWEEP]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 205 || stateno = 400
trigger2 = animelemtime(3) > 3 || movecontact
trigger3 = stateno = 1201
trigger3 = time >= 2

[State -1, Throw]
type = ChangeState
value = 805
triggerall = command = "y"
triggerall = command = "holdfwd"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 230
trigger2 = animelemtime(10) >= 0
trigger3 = stateno = 205 || stateno = 235 || stateno = 400
trigger3 = animelemtime(3) > 3 || movecontact

[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "y"
;triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 230
trigger2 = animelemtime(10) >= 0

;---------------------------------------------------------------------------
;...
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
triggerall = stateno != 195
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Light Punch
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x" || command = "a" || command = "y"
trigger1 = statetype = A
trigger1 = ctrl



;HARD

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
;   time = time (optional -- defaults to 15 if omitted)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas.
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
;   You can combine them:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;   It's recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This matches the way most
;   popular fighting games implement their command detection.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. Defaults to 15
;   if omitted
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
;

;-| Super Motions |--------------------------------------------------------
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.

;[E] starts ai activation code

;***************************************************************************
; CMD
;***************************************************************************

;[Remap]
;
;  Note that if you modify the button remapping scheme, this character will
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

;[E] 
;ends ai activation code


;-----
;HUMAN
;-----

;fatal move
[Command]
name = "fatal"
command = ~D, DF, F, a+b
time = 20

;;fatal move
;[Command]
;name = "fatal"
,command = ~D, DF, F, c
;time = 20

[Command]
name = "transf"
command = ~D, DF, F, x+a
time = 20

[Command]
name = "transf"
command = ~D, DF, F, y+b
time = 20

[Command]
name = "superg"
command = ~D, DF, F, x+y
time = 20

;[Command]
;;name = "superg"
;command = ~D, DF, F, z
;time = 20

[Command]
name = "gusi"
command = ~D, DB, B, x+y
time = 20

;[Command]
;name = "gusi"
;command = ~D, DB, B, z
;time = 20

[Command]
name = "muerde"
command = ~D, DB, B, a+b
time = 20

;[Command]
;name = "muerde"
;command = ~D, DB, B, c
;time = 20

;-| Special Motions |------------------------------------------------------

[Command]
name = "garzo1"
command = ~D, DF, F, x

[Command]
name = "garzo2"
command = ~D, DF, F, y

[Command]
name = "tiembla1"
command = ~D, DB, B, x

[Command]
name = "tiembla2"
command = ~D, DB, B, y

[Command]
name = "giro1"
command = ~D, DF, F, a

[Command]
name = "giro2"
command = ~D, DF, F, b

[Command]
name = "cola1"
command = ~D, DB, B, a

[Command]
name = "cola2"
command = ~D, DB, B, b
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

;[E]
;ai stuff
;[StateDef -1]
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
;---------------------------------------------------------------------------

;fatal move
[State -1, fatal]
type = ChangeState
value = 3200
triggerall = command = "fatal"
triggerall = power >= 3000
triggerall= cond(enemynear,numpartner,enemy(0),life <330 ||enemy(1),life<330,enemynear,life <330)
triggerall = var(10)=0
triggerall = roundstate = 2
triggerall = var(24)=0
trigger1 = statetype != a
trigger1 = ctrl
trigger1 = statetype != A
trigger2 = (stateno = 200)||(stateno = 210)||(stateno = 230)||(stateno = 240)||(stateno = 400)||(stateno = 410)||(stateno = 430)||(stateno = 440)
trigger2 = movecontact
;mole
trigger3 = (stateno = 1200)||(stateno = 1202)
trigger3 = movecontact
;craneo
trigger4 = (stateno = 900)||(stateno = 910)
trigger4 = movecontact
;saliva
trigger5 = numhelper(1000) 
trigger5 = helper(1000), movecontact
;safety
trigger6 = (stateno=[200,440]) && time <3

;Dark force
[State -1, dark force]
type = ChangeState
value = 3400
triggerall = command = "transf"
triggerall = var(10) = 0
triggerall = power >=2000
triggerall = var(24)=0
trigger1 = statetype != A
trigger1 = ctrl
;safety
trigger2 = (stateno=[200,440]) && time <3

;Dark force COMBO
[State -1, dark force]
type = ChangeState
value = 3420
triggerall = command = "transf"
triggerall = var(10) = 0
triggerall = power >=2000
triggerall = var(24)=0
trigger1 = (stateno = 200)||(stateno = 210)||(stateno = 230)||(stateno = 240)||(stateno = 400)||(stateno = 410)||(stateno = 430)||(stateno = 440)
trigger1 = movecontact
;mole
trigger2 = (stateno = 1200)||(stateno = 1202)
trigger2 = movecontact
;craneo
trigger3 = (stateno = 900)||(stateno = 910)
trigger3 = movecontact
;saliva
trigger4 = (stateno = 1000)||(stateno = 1001)
trigger4 = (animelemtime(5)=[1,8])
;safety
trigger5 = (stateno=[200,440]) && time <3

;Super vomitada del terror
[State -1,vomitada]
type = ChangeState
value = 3000
triggerall = command = "superg"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = var(24)=0
trigger1 = ctrl
trigger2 = (stateno = 200)||(stateno = 210)||(stateno = 230)||(stateno = 240)||(stateno = 400)||(stateno = 410)||(stateno = 430)||(stateno = 440)
trigger2 = movecontact
;mole
trigger3 = (stateno = 1200)||(stateno = 1202)
trigger3 = movecontact
;craneo
trigger4 = (stateno = 900)||(stateno = 910)
trigger4 = movecontact
;saliva
trigger5 = (stateno = 1000)||(stateno = 1001)
trigger5 = (animelemtime(5)=[1,8])
;safety
trigger6 = (stateno=[200,440]) && time <3

;cinco gusanitos
[State -1,gusanitos]
type = ChangeState
value = 3100
triggerall = command = "gusi"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = var(24)=0
trigger1 = ctrl
trigger2 = (stateno = 200)||(stateno = 210)||(stateno = 230)||(stateno = 240)||(stateno = 400)||(stateno = 410)||(stateno = 430)||(stateno = 440)
trigger2 = movecontact
;mole
trigger3 = (stateno = 1200)||(stateno = 1202)
trigger3 = movecontact && anim = 48
;craneo
trigger4 = (stateno = 900)||(stateno = 910)
trigger4 = movecontact
;saliva
trigger5 = (stateno = 1000)||(stateno = 1001)
trigger5 = (animelemtime(5)=[1,8])
;safety
trigger6 = (stateno=[200,440]) && time <3

;lombriz solitaria
[State -1,huesped]
type = ChangeState
value = 3300
triggerall = command = "muerde"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = var(24)=0
trigger1 = ctrl
trigger2 = (stateno = 200)||(stateno = 210)||(stateno = 230)||(stateno = 240)||(stateno = 400)||(stateno = 410)||(stateno = 430)||(stateno = 440)
trigger2 = movecontact
;mole
trigger3 = (stateno = 1200)||(stateno = 1202)
trigger3 = movecontact
;craneo
trigger4 = (stateno = 900)||(stateno = 910)
trigger4 = movecontact
;saliva
trigger5 = (stateno = 1000)||(stateno = 1001)
trigger5 = (animelemtime(5)=[1,8])
;safety
trigger6 = (stateno=[200,440]) && time <3

;===========================================================================
;special motions
;----------------------------------------------------------------------

;ataque de saliva fuerte
[State -1,saliva]
type = ChangeState
value = 1001
triggerall = command = "garzo2"
triggerall = statetype != A
triggerall = var(24)=0
trigger1 = ctrl
trigger2 = (stateno = 200)||(stateno = 210)||(stateno = 230)||(stateno = 240)||(stateno = 400)||(stateno = 410)||(stateno = 430)||(stateno = 440)
trigger2 = movecontact
;safety
trigger3 = (stateno=[200,440]) && time <3

;ataque de saliva debil
[State -1,saliva]
type = ChangeState
value = 1000
triggerall = command = "garzo1"
triggerall = statetype != A
triggerall = var(24)=0
trigger1 = ctrl
trigger2 = (stateno = 200)||(stateno = 210)||(stateno = 230)||(stateno = 240)||(stateno = 400)||(stateno = 410)||(stateno = 430)||(stateno = 440)
trigger2 = movecontact
;safety
trigger3 = (stateno=[200,440]) && time <3

;craneo de piedra fuerte
[State -1,craneo]
type = ChangeState
value = 910
triggerall = command = "tiembla2"
triggerall = NumHelper(900) = 0
triggerall = NumHelper(300) = 0
triggerall = statetype != A
triggerall = var(24)=0
trigger1 = ctrl
trigger2 = (stateno = 200)||(stateno = 210)||(stateno = 230)||(stateno = 240)||(stateno = 400)||(stateno = 410)||(stateno = 430)||(stateno = 440)
trigger2 = movecontact
;safety
trigger3 = (stateno=[200,440]) && time <3

;craneo de piedra debil
[State -1,craneo]
type = ChangeState
value = 900
triggerall = command = "tiembla1"
triggerall = NumHelper(900) = 0
triggerall = NumHelper(300) = 0
triggerall = statetype != A
triggerall = var(24)=0
trigger1 = ctrl
trigger2 = (stateno = 200)||(stateno = 210)||(stateno = 230)||(stateno = 240)||(stateno = 400)||(stateno = 410)||(stateno = 430)||(stateno = 440)
trigger2 = movecontact
;safety
trigger3 = (stateno=[200,440]) && time <3

;mole giratoria 1
[State -1,mole 1]
type = ChangeState
value = 1202
triggerall = command = "giro1"
triggerall = statetype != A
triggerall = var(24)=0
trigger1 = ctrl
trigger2 = (stateno = 200)||(stateno = 210)||(stateno = 230)||(stateno = 240)||(stateno = 400)||(stateno = 410)||(stateno = 430)||(stateno = 440)
trigger2 = movecontact
;safety
trigger3 = (stateno=[200,440]) && time <3

;mole giratoria 2
[State -1,mole 2]
type = ChangeState
value = 1200
triggerall = command = "giro2"
triggerall = statetype != A
triggerall = var(24)=0
trigger1 = ctrl
trigger2 = (stateno = 200)||(stateno = 210)||(stateno = 230)||(stateno = 240)||(stateno = 400)||(stateno = 410)||(stateno = 430)||(stateno = 440)
trigger2 = movecontact
;safety
trigger3 = (stateno=[200,440]) && time <3

;aguij multiple fuerte
[State -1,aguijon]
type = ChangeState
value = 1110
triggerall = command = "cola2"
triggerall = statetype != A
triggerall = var(24)=0
trigger1 = ctrl
trigger2 = (stateno = 200)||(stateno = 210)||(stateno = 230)||(stateno = 240)||(stateno = 400)||(stateno = 410)||(stateno = 430)||(stateno = 440)
trigger2 = movecontact
;safety
trigger3 = (stateno=[200,440]) && time <3

;aguij multiple debil
[State -1,aguijon]
type = ChangeState
value = 1100
triggerall = command = "cola1"
triggerall = statetype != A
triggerall = var(24)=0
trigger1 = ctrl
trigger2 = (stateno = 200)||(stateno = 210)||(stateno = 230)||(stateno = 240)||(stateno = 400)||(stateno = 410)||(stateno = 430)||(stateno = 440)
trigger2 = movecontact
;safety
trigger3 = (stateno=[200,440]) && time <3


;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = (command = "FF") 
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = (command = "BB") 
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Throw punch
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = enemynear, name != "final"
triggerall = !(enemynear, name = "noroko" && enemynear, var(10)=1)
triggerall = var(24)=0
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;---------------------------------------------------------------------------
;Throw kick
[State -1, Kung Fu Throw]
type = ChangeState
value = 850
triggerall = command = "b"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = enemynear, name != "final"
triggerall = !(enemynear, name = "noroko" && enemynear, var(10)=1)
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = var(24)=0
trigger1 = ctrl
trigger2 = (stateno = 230)||(stateno = 400)||(stateno = 430)
trigger2 = movecontact && var(25)<=2
;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = var(24)=0
trigger1 = ctrl
trigger2 = (stateno = 200)||(stateno = 230)||(stateno = 400)||(stateno = 430)
trigger2 = movecontact

;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = var(24)=0
trigger1 = ctrl
trigger2 = (stateno = 200)||(stateno = 400)||(stateno = 430)
trigger2 = movecontact && var(25)<=2

;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = var(24)=0
trigger1 = ctrl
trigger2 = (stateno = 200)||(stateno = 230)||(stateno = 400)||(stateno = 430)
trigger2 = movecontact

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = (command = "start") || (AILevel>0 && var(24)=0 && random<1)
triggerall = var(24)=0
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype = C
triggerall = var(24)=0
trigger1 = ctrl
trigger2 = (stateno = 200)||(stateno = 230)||(stateno = 430)
trigger2 = movecontact && var(25)<=2

;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype = C
triggerall = var(24)=0
trigger1 = ctrl
trigger2 = (stateno = 200)||(stateno = 230)||(stateno = 400)||(stateno = 430)
trigger2 = movecontact

;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype = C
triggerall = var(24)=0
trigger1 = ctrl
trigger2 = (stateno = 200)||(stateno = 230)||(stateno = 400)
trigger2 = movecontact && var(25)<=2

;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype = C
triggerall = var(24)=0
trigger1 = ctrl
trigger2 = (stateno = 200)||(stateno = 230)||(stateno = 400)||(stateno = 430)
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
triggerall = statetype = A
triggerall = var(24)=0
triggerall = var(35)<40
trigger1 = ctrl
trigger2 = (stateno = 1100)||(stateno = 1110)||(stateno = 630)
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
triggerall = statetype = A
triggerall = var(24)=0
trigger1 = ctrl
trigger2 = (stateno = 630)||(stateno = 1100)||(stateno = 1110)
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
triggerall = statetype = A
triggerall = var(24)=0
trigger1 = ctrl
trigger2 = (stateno = 630)||(stateno = 1100)||(stateno = 1110)
trigger2 = movecontact && var(25)<=2

;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
triggerall = statetype = A
triggerall = var(24)=0
trigger1 = ctrl
trigger2 = (stateno = 630)||(stateno = 1100)||(stateno = 1110)
trigger2 = movecontact


;-------------------------------------------------------------------
;-------------------------------------------------------------------
;-----AI------------------------------------------------------------
;-------------------------------------------------------------------
;-------------------------------------------------------------------



;-----------------------------------------

;run fwd
[State -1]
type = ChangeState
triggerall = var(24)!=0 && roundstate=2
triggerall = statetype != a && ctrl && stateno!=100
trigger1 = p2dist x > 60 && random < 20 && enemynear, movetype !=a
value = 100

;run back
[State -1]
type = ChangeState
triggerall = var(24)!=0 && roundstate=2 && statetype != a && ctrl
trigger1 = enemynear, movetype = a && p2dist x<= 60 && random <5
value = 105

;----------------------------------------------
;----
;AI 4 (easy)
;----

;guard
[State -1]
type = ChangeState
trigger1 = var(24)=4 && roundstate=2 && ctrl
trigger1 = !(enemynear,hitdefattr=SCA,AT) && inguarddist
trigger1 = (stateno!=[120,155]) && random < 30
value = 120

;ATAQUE BASICO 1
;-------------

;Stand Light Punch
;-----------------
[State -1, SLP]
type = ChangeState
value = 200
triggerall = var(24)=4 && roundstate=2 && statetype !=a
triggerall = (p2statetype!=L)
trigger1 = p2dist x <= 70 && random <4 && ctrl
;combo chain 1
trigger2 = (stateno = 230)||(stateno = 400)||(stateno = 430)
trigger2 = movecontact && random <4 && var(25)<=2

;Stand strong Punch
;-----------------
[State -1, SsP]
type = ChangeState
value = 210
triggerall = var(24)=4 && roundstate=2 && statetype !=a
triggerall = (p2statetype!=L)
trigger1 = p2dist x <= 70 && random <4 && ctrl
;combo chain 1
trigger2 = (stateno = 200)||(stateno = 230)||(stateno = 400)||(stateno = 430)
trigger2 = movecontact && random <4

;Stand Light kick
;-----------------
[State -1, SLk]
type = ChangeState
value = 230
triggerall = var(24)=4 && roundstate=2 && statetype !=a
triggerall = (p2statetype!=L)
trigger1 = p2dist x <= 70 && random <4 && ctrl
;combo chain 1
trigger2 = (stateno = 200)||(stateno = 400)||(stateno = 430)
trigger2 = movecontact && random <4 && var(25)<=2

;Stand strong kick
;-----------------
[State -1, Ssk]
type = ChangeState
value = 240
triggerall = var(24)=4 && roundstate=2 && statetype !=a
triggerall = (p2statetype!=L)
trigger1 = p2dist x <= 70 && random <4 && ctrl
;combo chain 1
trigger2 = (stateno = 200)||(stateno = 230)||(stateno = 400)||(stateno = 430)
trigger2 = movecontact && random <4

;crouch light punch
;------------------
[State -1,clp]
type = ChangeState
value = 400
triggerall = var(24)=4 && roundstate=2 && statetype !=a
triggerall = (p2statetype!=L)
trigger1 = p2dist x <= 70 && random <4 && ctrl
;combo chain 1
trigger2 = (stateno = 200)||(stateno = 230)||(stateno = 430)
trigger2 = movecontact && random <4 && var(25)<=2

;crouch strong punch
;------------------
[State -1,csp]
type = ChangeState
value = 410
triggerall = var(24)=4 && roundstate=2 && statetype !=a
triggerall = (p2statetype!=L)
trigger1 = p2dist x <= 70 && random <4 && ctrl
;combo chain 1
trigger2 = (stateno = 200)||(stateno = 230)||(stateno = 400)||(stateno = 430)
trigger2 = movecontact && random <4

;crouch light kick
;------------------
[State -1,clk]
type = ChangeState
value = 430
triggerall = var(24)=4 && roundstate=2 && statetype !=a
triggerall = (p2statetype!=L)
trigger1 = p2dist x <= 70 && random <4 && ctrl
;combo chain 1
trigger2 = (stateno = 200)||(stateno = 230)||(stateno = 400)
trigger2 = movecontact && random <4 && var(25)<=2

;crouch strong kick
;------------------
[State -1,csk]
type = ChangeState
value = 440
triggerall = var(24)=4 && roundstate=2 && statetype !=a
triggerall = (p2statetype!=L)
trigger1 = p2dist x <= 70 && random <4 && ctrl
;combo chain 1
trigger2 = (stateno = 200)||(stateno = 230)||(stateno = 400)||(stateno = 430)
trigger2 = movecontact && random <4

;jump light punch
[State -1, jlp]
type = ChangeState
value = 600
triggerall = var(24)=4 && roundstate=2 && statetype = a
triggerall = (p2statetype!=L)
triggerall = var(35)<40
trigger1 = p2dist x <= 70 && random <4 && ctrl
;combo chain 1
trigger2 = (stateno = 630)||(stateno = 1100)||(stateno = 1110)
trigger2 = movecontact && random <4

;jump strong punch
[State -1, jsp]
type = ChangeState
value = 610
triggerall = var(24)=4 && roundstate=2 && statetype = a
triggerall = (p2statetype!=L)
trigger1 = p2dist x <= 70 && random <4 && ctrl
;combo chain 1
trigger2 = (stateno = 630)||(stateno = 1100)||(stateno = 1110)
trigger2 = movecontact && random <4

;jump light kick
[State -1, jlk]
type = ChangeState
value = 630
triggerall = var(24)=4 && roundstate=2 && statetype = a
triggerall = (p2statetype!=L)
trigger1 = p2dist x <= 70 && random <4 && ctrl
;combo chain 1
trigger2 = (stateno = 630)||(stateno = 1100)||(stateno = 1110)
trigger2 = movecontact && random <4 && var(25)<=2

;jump strong kick
[State -1, jsk]
type = ChangeState
value = 640
triggerall = var(24)=4 && roundstate=2 && statetype = a
triggerall = (p2statetype!=L)
trigger1 = p2dist x <= 70 && random <4 && ctrl
;combo chain 1
trigger2 = (stateno = 630)||(stateno = 1100)||(stateno = 1110)
trigger2 = movecontact && random <4

;agarre
[State -1, Kung Fu Throw]
type = ChangeState
triggerall = var(24)=4 && roundstate=2 && statetype !=a
triggerall = var(10) = 0
triggerall = ctrl && (p2statetype!=L)
triggerall = stateno != 100
triggerall = enemynear, name != "final"
triggerall = !(enemynear, name = "noroko" && enemynear, var(10)=1)
trigger1 = p2bodydist X < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger1 = enemynear, pos y > -2 && random < 4
value = cond(random<500,800,850)

;SPECIALS 1
;--------

;ataque de saliva
[State -1,saliva]
type = ChangeState
triggerall = var(24)=4 && roundstate=2 && statetype !=a
triggerall = var(10) = 0
triggerall = (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall = p2dist x <= 220
trigger1 = ctrl && random < 4
;combo chain 1
trigger2 = (stateno = 200)||(stateno = 210)||(stateno = 230)||(stateno = 240)||(stateno = 400)||(stateno = 410)||(stateno = 430)||(stateno = 440)
trigger2 = movecontact && random < 4
value = cond(random<500,1000,1001)

;mole giratoria
[State -1, mole]
type = ChangeState
triggerall = var(24)=4 && roundstate=2 && statetype !=a
triggerall = (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall = var(10) = 0
trigger1 = p2dist x <= 120 && ctrl && random < 2
;combo chain 1
trigger2 = (stateno = 200)||(stateno = 210)||(stateno = 230)||(stateno = 240)||(stateno = 400)||(stateno = 410)||(stateno = 430)||(stateno = 440)
trigger2 = movecontact && random < 4
value = cond(random<500,1200,1202)

;aguijon
[State -1,aguijon]
type = ChangeState
value = cond(random<500,1100,1110)
triggerall = var(24)=4 && roundstate=2 && statetype !=a
triggerall = (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall = var(10) = 0
trigger1 = p2dist x <= 100 && ctrl && random < 2
;combo chain 1
trigger2 = (stateno = 200)||(stateno = 210)||(stateno = 230)||(stateno = 240)||(stateno = 400)||(stateno = 410)||(stateno = 430)||(stateno = 440)
trigger2 = movecontact && random < 4

;craneo de piedra
[State -1,craneo]
type = ChangeState
triggerall = var(24)=4 && roundstate=2 && statetype !=a
triggerall = var(10) = 0
triggerall = (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall = NumHelper(900) = 0
triggerall = NumHelper(300) = 0
triggerall = p2dist x <= 260
trigger1 = ctrl && random < 2
;combo chain 1
trigger2 = (stateno = 200)||(stateno = 210)||(stateno = 230)||(stateno = 240)||(stateno = 400)||(stateno = 410)||(stateno = 430)||(stateno = 440)
trigger2 = movecontact && random < 4
value = cond(random<500,900,910)

;HYPERMOVES 1
;----------

;super vomitada del terror
[State -1,vomitada]
type = ChangeState
triggerall = var(24)=4 && roundstate=2 && statetype !=a && power >= 1000
triggerall = var(10) = 0
triggerall = (p2stateno!=[120,155]) && (p2statetype!=L)
trigger1 = p2dist x >= 90 && ctrl && random < 2
;combo chain 1
trigger2 = (stateno = 200)||(stateno = 210)||(stateno = 230)||(stateno = 240)||(stateno = 400)||(stateno = 410)||(stateno = 430)||(stateno = 440)
trigger2 = movecontact && random < 2
;mole
trigger3 = (stateno = 1200)||(stateno = 1202)
trigger3 = movecontact && random < 2
;craneo
trigger4 = (stateno = 900)||(stateno = 910)
trigger4 = movecontact && random < 2
;saliva
trigger5 = (stateno = 1000)||(stateno = 1001)
trigger5 = (animelemtime(5)=[1,8]) && random < 2
value = 3000

;mordida
[State -1,mordida]
type = ChangeState
triggerall = var(24)=4 && roundstate=2 && statetype !=a && power >= 1000
triggerall = var(10) = 0
triggerall = (p2stateno!=[120,155]) && (p2statetype!=L) && p2dist x <= 150
trigger1 = ctrl && random < 2
;combo chain 1
trigger2 = (stateno = 200)||(stateno = 210)||(stateno = 230)||(stateno = 240)||(stateno = 400)||(stateno = 410)||(stateno = 430)||(stateno = 440)
trigger2 = movecontact && p2dist x < 80 && random < 2
;mole
trigger3 = (stateno = 1200)||(stateno = 1202)
trigger3 = movecontact && p2dist x < 80 && random < 2
;craneo
trigger4 = (stateno = 900)||(stateno = 910)
trigger4 = movecontact && p2dist x < 80 && random < 2
;saliva
trigger5 = (stateno = 1000)||(stateno = 1001)
trigger5 = (animelemtime(5)=[1,8]) && random < 2
value = 3300

;gusanitos
[State -1,gusanitos]
type = ChangeState
triggerall = var(24)=4 && roundstate=2 && statetype !=a && power >= 1000
triggerall = var(10) = 0
triggerall = (p2stateno!=[120,155]) && (p2statetype!=L)
trigger1 = ctrl && random < 2
;combo chain 1
trigger2 = (stateno = 200)||(stateno = 210)||(stateno = 230)||(stateno = 240)||(stateno = 400)||(stateno = 410)||(stateno = 430)||(stateno = 440)
trigger2 = movecontact && p2dist x < 80 && random < 2
;mole
trigger3 = (stateno = 1200)||(stateno = 1202)
trigger3 = movecontact && p2dist x < 80 && random < 2
;craneo
trigger4 = (stateno = 900)||(stateno = 910)
trigger4 = movecontact && p2dist x < 80 && random < 2
;saliva
trigger5 = (stateno = 1000)||(stateno = 1001)
trigger5 = (animelemtime(5)=[1,8]) && p2dist x < 80 && random < 2
value = 3100

;fatal move SINGLE
[State -1, fatal move]
type = ChangeState
triggerall = var(24)=4 && roundstate=2 && statetype !=a
triggerall = power >= 3000 && p2dist x <= 120
triggerall = var(10) = 0
triggerall= numenemy=1
triggerall= enemy,life<=330
;combo chain 1
trigger1 = (stateno = 200)||(stateno = 210)||(stateno = 230)||(stateno = 240)||(stateno = 400)||(stateno = 410)||(stateno = 430)||(stateno = 440)
trigger1 = movecontact && p2dist x < 80 && random < 2
;mole
trigger2 = (stateno = 1200)||(stateno = 1202)
trigger2 = movecontact && p2dist x < 80 && random < 2
;craneo
trigger3 = (stateno = 900)||(stateno = 910)
trigger3 = movecontact && p2dist x < 80 && random < 2
;saliva
trigger4 = (stateno = 1000)||(stateno = 1001)
trigger4 = (animelemtime(5)=[1,8]) && p2dist x < 80 && random < 2
value = 3200

;----------------------------------------------
;----
;AI 1
;----

;guard
[State -1]
type = ChangeState
trigger1 = var(24)=1 && roundstate=2 && ctrl
trigger1 = !(enemynear,hitdefattr=SCA,AT) && inguarddist
trigger1 = (stateno!=[120,155]) && random < 60
value = 120

;ATAQUE BASICO 1
;-------------

;Stand Light Punch
;-----------------
[State -1, SLP]
type = ChangeState
value = 200
triggerall = var(24)=1 && roundstate=2 && statetype !=a
triggerall = (p2statetype!=L)
trigger1 = p2dist x <= 70 && random <10 && ctrl
;combo chain 1
trigger2 = (stateno = 230)||(stateno = 400)||(stateno = 430)
trigger2 = movecontact && random <14 && var(25)<=2

;Stand strong Punch
;-----------------
[State -1, SsP]
type = ChangeState
value = 210
triggerall = var(24)=1 && roundstate=2 && statetype !=a
triggerall = (p2statetype!=L)
trigger1 = p2dist x <= 70 && random <10 && ctrl
;combo chain 1
trigger2 = (stateno = 200)||(stateno = 230)||(stateno = 400)||(stateno = 430)
trigger2 = movecontact && random <14

;Stand Light kick
;-----------------
[State -1, SLk]
type = ChangeState
value = 230
triggerall = var(24)=1 && roundstate=2 && statetype !=a
triggerall = (p2statetype!=L)
trigger1 = p2dist x <= 70 && random <10 && ctrl
;combo chain 1
trigger2 = (stateno = 200)||(stateno = 400)||(stateno = 430)
trigger2 = movecontact && random <14 && var(25)<=2

;Stand strong kick
;-----------------
[State -1, Ssk]
type = ChangeState
value = 240
triggerall = var(24)=1 && roundstate=2 && statetype !=a
triggerall = (p2statetype!=L)
trigger1 = p2dist x <= 70 && random <10 && ctrl
;combo chain 1
trigger2 = (stateno = 200)||(stateno = 230)||(stateno = 400)||(stateno = 430)
trigger2 = movecontact && random <14

;crouch light punch
;------------------
[State -1,clp]
type = ChangeState
value = 400
triggerall = var(24)=1 && roundstate=2 && statetype !=a
triggerall = (p2statetype!=L)
trigger1 = p2dist x <= 70 && random <10 && ctrl
;combo chain 1
trigger2 = (stateno = 200)||(stateno = 230)||(stateno = 430)
trigger2 = movecontact && random <14 && var(25)<=2

;crouch strong punch
;------------------
[State -1,csp]
type = ChangeState
value = 410
triggerall = var(24)=1 && roundstate=2 && statetype !=a
triggerall = (p2statetype!=L)
trigger1 = p2dist x <= 70 && random <10 && ctrl
;combo chain 1
trigger2 = (stateno = 200)||(stateno = 230)||(stateno = 400)||(stateno = 430)
trigger2 = movecontact && random <14

;crouch light kick
;------------------
[State -1,clk]
type = ChangeState
value = 430
triggerall = var(24)=1 && roundstate=2 && statetype !=a
triggerall = (p2statetype!=L)
trigger1 = p2dist x <= 70 && random <10 && ctrl
;combo chain 1
trigger2 = (stateno = 200)||(stateno = 230)||(stateno = 400)
trigger2 = movecontact && random <14 && var(25)<=2

;crouch strong kick
;------------------
[State -1,csk]
type = ChangeState
value = 440
triggerall = var(24)=1 && roundstate=2 && statetype !=a
triggerall = (p2statetype!=L)
trigger1 = p2dist x <= 70 && random <10 && ctrl
;combo chain 1
trigger2 = (stateno = 200)||(stateno = 230)||(stateno = 400)||(stateno = 430)
trigger2 = movecontact && random <14

;jump light punch
[State -1, jlp]
type = ChangeState
value = 600
triggerall = var(24)=1 && roundstate=2 && statetype = a
triggerall = (p2statetype!=L)
triggerall = var(35)<40
trigger1 = p2dist x <= 70 && random <10 && ctrl
;combo chain 1
trigger2 = (stateno = 630)||(stateno = 1100)||(stateno = 1110)
trigger2 = movecontact && random <14

;jump strong punch
[State -1, jsp]
type = ChangeState
value = 610
triggerall = var(24)=1 && roundstate=2 && statetype = a
triggerall = (p2statetype!=L)
trigger1 = p2dist x <= 70 && random <10 && ctrl
;combo chain 1
trigger2 = (stateno = 630)||(stateno = 1100)||(stateno = 1110)
trigger2 = movecontact && random <14

;jump light kick
[State -1, jlk]
type = ChangeState
value = 630
triggerall = var(24)=1 && roundstate=2 && statetype = a
triggerall = (p2statetype!=L)
trigger1 = p2dist x <= 70 && random <10 && ctrl
;combo chain 1
trigger2 = (stateno = 630)||(stateno = 1100)||(stateno = 1110)
trigger2 = movecontact && random <14 && var(25)<=2

;jump strong kick
[State -1, jsk]
type = ChangeState
value = 640
triggerall = var(24)=1 && roundstate=2 && statetype = a
triggerall = (p2statetype!=L)
trigger1 = p2dist x <= 70 && random <10 && ctrl
;combo chain 1
trigger2 = (stateno = 630)||(stateno = 1100)||(stateno = 1110)
trigger2 = movecontact && random <14

;agarre
[State -1, Kung Fu Throw]
type = ChangeState
triggerall = var(24)=1 && roundstate=2 && statetype !=a
triggerall = var(10) = 0
triggerall = ctrl && (p2statetype!=L)
triggerall = stateno != 100
triggerall = enemynear, name != "final"
triggerall = !(enemynear, name = "noroko" && enemynear, var(10)=1)
trigger1 = p2bodydist X < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger1 = enemynear, pos y > -2 && random < 10
value = cond(random<500,800,850)

;SPECIALS 1
;--------

;ataque de saliva
[State -1,saliva]
type = ChangeState
triggerall = var(24)=1 && roundstate=2 && statetype !=a
triggerall = var(10) = 0
triggerall = (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall = p2dist x <= 220
trigger1 = ctrl && random < 10
;combo chain 1
trigger2 = (stateno = 200)||(stateno = 210)||(stateno = 230)||(stateno = 240)||(stateno = 400)||(stateno = 410)||(stateno = 430)||(stateno = 440)
trigger2 = movecontact && random < 10
value = cond(random<500,1000,1001)

;mole giratoria
[State -1, mole]
type = ChangeState
triggerall = var(24)=1 && roundstate=2 && statetype !=a
triggerall = (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall = var(10) = 0
trigger1 = p2dist x <= 120 && ctrl && random < 3
;combo chain 1
trigger2 = (stateno = 200)||(stateno = 210)||(stateno = 230)||(stateno = 240)||(stateno = 400)||(stateno = 410)||(stateno = 430)||(stateno = 440)
trigger2 = movecontact && random < 10
value = cond(random<500,1200,1202)

;aguijon
[State -1,aguijon]
type = ChangeState
value = cond(random<500,1100,1110)
triggerall = var(24)=1 && roundstate=2 && statetype !=a
triggerall = (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall = var(10) = 0
trigger1 = p2dist x <= 100 && ctrl && random < 3
;combo chain 1
trigger2 = (stateno = 200)||(stateno = 210)||(stateno = 230)||(stateno = 240)||(stateno = 400)||(stateno = 410)||(stateno = 430)||(stateno = 440)
trigger2 = movecontact && random < 10

;craneo de piedra
[State -1,craneo]
type = ChangeState
triggerall = var(24)=1 && roundstate=2 && statetype !=a
triggerall = var(10) = 0
triggerall = (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall = NumHelper(900) = 0
triggerall = NumHelper(300) = 0
triggerall = p2dist x <= 260
trigger1 = ctrl && random < 3
;combo chain 1
trigger2 = (stateno = 200)||(stateno = 210)||(stateno = 230)||(stateno = 240)||(stateno = 400)||(stateno = 410)||(stateno = 430)||(stateno = 440)
trigger2 = movecontact && random < 10
value = cond(random<500,900,910)

;HYPERMOVES 1
;----------

;super vomitada del terror
[State -1,vomitada]
type = ChangeState
triggerall = var(24)=1 && roundstate=2 && statetype !=a && power >= 1000
triggerall = var(10) = 0
triggerall = (p2stateno!=[120,155]) && (p2statetype!=L)
trigger1 = p2dist x >= 90 && ctrl && random < 2
;combo chain 1
trigger2 = (stateno = 200)||(stateno = 210)||(stateno = 230)||(stateno = 240)||(stateno = 400)||(stateno = 410)||(stateno = 430)||(stateno = 440)
trigger2 = movecontact && random < 5
;mole
trigger3 = (stateno = 1200)||(stateno = 1202)
trigger3 = movecontact && random < 5
;craneo
trigger4 = (stateno = 900)||(stateno = 910)
trigger4 = movecontact && random < 5
;saliva
trigger5 = (stateno = 1000)||(stateno = 1001)
trigger5 = (animelemtime(5)=[1,8]) && random < 5
value = 3000

;mordida
[State -1,mordida]
type = ChangeState
triggerall = var(24)=1 && roundstate=2 && statetype !=a && power >= 1000
triggerall = var(10) = 0
triggerall = (p2stateno!=[120,155]) && (p2statetype!=L) && p2dist x <= 150
trigger1 = ctrl && random < 2
;combo chain 1
trigger2 = (stateno = 200)||(stateno = 210)||(stateno = 230)||(stateno = 240)||(stateno = 400)||(stateno = 410)||(stateno = 430)||(stateno = 440)
trigger2 = movecontact && p2dist x < 80 && random < 5
;mole
trigger3 = (stateno = 1200)||(stateno = 1202)
trigger3 = movecontact && p2dist x < 80 && random < 5
;craneo
trigger4 = (stateno = 900)||(stateno = 910)
trigger4 = movecontact && p2dist x < 80 && random < 5
;saliva
trigger5 = (stateno = 1000)||(stateno = 1001)
trigger5 = (animelemtime(5)=[1,8]) && random < 5
value = 3300

;gusanitos
[State -1,gusanitos]
type = ChangeState
triggerall = var(24)=1 && roundstate=2 && statetype !=a && power >= 1000
triggerall = var(10) = 0
triggerall = (p2stateno!=[120,155]) && (p2statetype!=L)
trigger1 = ctrl && random < 2
;combo chain 1
trigger2 = (stateno = 200)||(stateno = 210)||(stateno = 230)||(stateno = 240)||(stateno = 400)||(stateno = 410)||(stateno = 430)||(stateno = 440)
trigger2 = movecontact && p2dist x < 80 && random < 5
;mole
trigger3 = (stateno = 1200)||(stateno = 1202)
trigger3 = movecontact && p2dist x < 80 && random < 5
;craneo
trigger4 = (stateno = 900)||(stateno = 910)
trigger4 = movecontact && p2dist x < 80 && random < 5
;saliva
trigger5 = (stateno = 1000)||(stateno = 1001)
trigger5 = (animelemtime(5)=[1,8]) && p2dist x < 80 && random < 5
value = 3100

;dark force
[State -1,DF]
type = ChangeState
triggerall = var(24)=1 && roundstate=2 && statetype !=a && power >= 2000
triggerall = var(10) = 0
trigger1 = ctrl && p2dist x > 150 && random < 2
value = 3400

;dark force COMBO
[State -1,DF]
type = ChangeState
triggerall = var(24)=1 && roundstate=2 && statetype !=a && power >= 2000
triggerall = var(10) = 0
;combo chain 1
trigger1 = (stateno = 200)||(stateno = 210)||(stateno = 230)||(stateno = 240)||(stateno = 400)||(stateno = 410)||(stateno = 430)||(stateno = 440)
trigger1 = movecontact && p2dist x < 80 && random < 5
;mole
trigger2 = (stateno = 1200)||(stateno = 1202)
trigger2 = movecontact && p2dist x < 80 && random < 5
;craneo
trigger3 = (stateno = 900)||(stateno = 910)
trigger3 = movecontact && p2dist x < 80 && random < 5
;saliva
trigger4 = (stateno = 1000)||(stateno = 1001)
trigger4 = (animelemtime(5)=[1,8]) && p2dist x < 80 && random < 5
value = 3420

;fatal move SINGLE
[State -1, fatal move]
type = ChangeState
triggerall = var(24)=1 && roundstate=2 && statetype !=a
triggerall = power >= 3000 && p2dist x <= 120
triggerall = var(10) = 0
triggerall= numenemy=1
triggerall= enemy,life<=330
;combo chain 1
trigger1 = (stateno = 200)||(stateno = 210)||(stateno = 230)||(stateno = 240)||(stateno = 400)||(stateno = 410)||(stateno = 430)||(stateno = 440)
trigger1 = movecontact && p2dist x < 80 && random < 5
;mole
trigger2 = (stateno = 1200)||(stateno = 1202)
trigger2 = movecontact && p2dist x < 80 && random < 5
;craneo
trigger3 = (stateno = 900)||(stateno = 910)
trigger3 = movecontact && p2dist x < 80 && random < 5
;saliva
trigger4 = (stateno = 1000)||(stateno = 1001)
trigger4 = (animelemtime(5)=[1,8]) && p2dist x < 80 && random < 5
value = 3200

;----------------------------------------------
;----
;AI 2
;----

;guard 2
[State -1]
type = ChangeState
trigger1 = var(24)=2 && roundstate=2 && ctrl
trigger1 = !(enemynear,hitdefattr=SCA,AT) && inguarddist
trigger1 = (stateno!=[120,155]) && random < 100
value = 120

;ATAQUE BASICO 2
;-------------

;Stand Light Punch
;-----------------
[State -1, SLP]
type = ChangeState
value = 200
triggerall = var(24)=2 && roundstate=2 && statetype !=a
triggerall = (p2statetype!=L)
trigger1 = p2dist x <= 60 && random <20 && ctrl
trigger1 = enemynear, movetype != a
;combo chain 1
trigger2 = (stateno = 230)||(stateno = 400)||(stateno = 430)
trigger2 = movecontact && random <20 && var(25)<=2

;Stand strong Punch
;-----------------
[State -1, SsP]
type = ChangeState
value = 210
triggerall = var(24)=2 && roundstate=2 && statetype !=a
triggerall = (p2statetype!=L)
trigger1 = p2dist x <= 60 && random <20 && ctrl
;combo chain 1
trigger2 = (stateno = 200)||(stateno = 230)||(stateno = 400)||(stateno = 430)
trigger2 = movecontact && random <20

;Stand Light kick
;-----------------
[State -1, SLk]
type = ChangeState
value = 230
triggerall = var(24)=2 && roundstate=2 && statetype !=a
triggerall = (p2statetype!=L)
trigger1 = p2dist x <= 90 && random <20 && ctrl
trigger1 = enemynear, movetype != a
;combo chain 1
trigger2 = (stateno = 200)||(stateno = 400)||(stateno = 430)
trigger2 = movecontact && random <20 && var(25)<=2

;Stand strong kick
;-----------------
[State -1, Ssk]
type = ChangeState
value = 240
triggerall = var(24)=2 && roundstate=2 && statetype !=a
triggerall = (p2statetype!=L)
trigger1 = p2dist x <= 90 && random <20 && ctrl
;combo chain 1
trigger2 = (stateno = 200)||(stateno = 230)||(stateno = 400)||(stateno = 430)
trigger2 = movecontact && random <20

;crouch light punch
;------------------
[State -1,clp]
type = ChangeState
value = 400
triggerall = var(24)=2 && roundstate=2 && statetype !=a
triggerall = (p2statetype!=L)
trigger1 = p2dist x <= 60 && random <20 && ctrl
trigger1 = enemynear, movetype != a
;combo chain 1
trigger2 = (stateno = 200)||(stateno = 230)||(stateno = 430)
trigger2 = movecontact && random <20 && var(25)<=2

;crouch strong punch
;------------------
[State -1,csp]
type = ChangeState
value = 410
triggerall = var(24)=2 && roundstate=2 && statetype !=a
triggerall = (p2statetype!=L)
trigger1 = p2dist x <= 60 && random <20 && ctrl
;combo chain 1
trigger2 = (stateno = 200)||(stateno = 230)||(stateno = 400)||(stateno = 430)
trigger2 = movecontact && random <20

;crouch light kick
;------------------
[State -1,clk]
type = ChangeState
value = 430
triggerall = var(24)=2 && roundstate=2 && statetype !=a
triggerall = (p2statetype!=L)
trigger1 = p2dist x <= 60 && random <20 && ctrl
trigger1 = enemynear, movetype != a
;combo chain 1
trigger2 = (stateno = 200)||(stateno = 230)||(stateno = 400)
trigger2 = movecontact && random <20 && var(25)<=2

;crouch strong kick
;------------------
[State -1,csk]
type = ChangeState
value = 440
triggerall = var(24)=2 && roundstate=2 && statetype !=a
triggerall = (p2statetype!=L)
trigger1 = p2dist x <= 60 && random <20 && ctrl
;combo chain 1
trigger2 = (stateno = 200)||(stateno = 230)||(stateno = 400)||(stateno = 430)
trigger2 = movecontact && random <20

;jump light punch
[State -1, jlp]
type = ChangeState
value = 600
triggerall = var(24)=2 && roundstate=2 && statetype = a
triggerall = (p2statetype!=L)
triggerall = var(35)<40
trigger1 = p2dist x <= 110 && random <20 && ctrl
trigger1 = enemynear, movetype != a
;combo chain 1
trigger2 = (stateno = 630)||(stateno = 1100)||(stateno = 1110)
trigger2 = movecontact && random <20

;jump strong punch
[State -1, jsp]
type = ChangeState
value = 610
triggerall = var(24)=2 && roundstate=2 && statetype = a
triggerall = (p2statetype!=L)
trigger1 = p2dist x <= 80 && random <20 && ctrl
;combo chain 1
trigger2 = (stateno = 630)||(stateno = 1100)||(stateno = 1110)
trigger2 = movecontact && random <20

;jump light kick
[State -1, jlk]
type = ChangeState
value = 630
triggerall = var(24)=2 && roundstate=2 && statetype = a
triggerall = (p2statetype!=L)
trigger1 = p2dist x <= 60 && random <30 && ctrl
;combo chain 1
trigger2 = (stateno = 630)||(stateno = 1100)||(stateno = 1110)
trigger2 = movecontact && random <20 && var(25)<=2

;jump strong kick
[State -1, jsk]
type = ChangeState
value = 640
triggerall = var(24)=2 && roundstate=2 && statetype = a
triggerall = (p2statetype!=L)
trigger1 = p2dist x <= 110 && random <20 && ctrl
;combo chain 1
trigger2 = (stateno = 630)||(stateno = 1100)||(stateno = 1110)
trigger2 = movecontact && random <20

;agarre
[State -1, Kung Fu Throw]
type = ChangeState
triggerall = var(24)=2 && roundstate=2 && statetype !=a
triggerall = var(10) = 0
triggerall = ctrl && (p2statetype!=L)
triggerall = stateno != 100
triggerall = enemynear, name != "final"
triggerall = !(enemynear, name = "noroko" && enemynear, var(10)=1)
trigger1 = p2bodydist X < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger1 = enemynear, pos y > -2 && random < 20
value = cond(random<500,800,850)

;SPECIALS 2
;--------

;ataque de saliva
[State -1,saliva]
type = ChangeState
triggerall = var(24)=2 && roundstate=2 && statetype !=a
triggerall = var(10) = 0
triggerall = (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall = p2dist x <= 220
trigger1 = ctrl && random < 10
;combo chain 1
trigger2 = (stateno = 200)||(stateno = 210)||(stateno = 230)||(stateno = 240)||(stateno = 400)||(stateno = 410)||(stateno = 430)||(stateno = 440)
trigger2 = movecontact && random < 20
;CONTRA ATAQUES ESPECIFICOS
;animus decoy
trigger3 = enemynear, name = "animus" && enemynear, stateno = 1200 && ctrl && random < 5
;noroko decoy
trigger4 = enemynear, name = "noroko" && enemynear, stateno = 1100 && ctrl && random < 5
;viuda SUPER tela - deja de correr en common
trigger5 = enemynear, name = "ananzi" && enemynear, stateno = 3100 && ctrl&& random < 5
value = cond(random<500,1000,1001)

;mole giratoria
[State -1, mole]
type = ChangeState
triggerall = var(24)=2 && roundstate=2 && statetype !=a
triggerall = (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall = var(10) = 0
trigger1 = p2dist x <= 120 && ctrl && random < 5
;combo chain 1
trigger2 = (stateno = 200)||(stateno = 210)||(stateno = 230)||(stateno = 240)||(stateno = 400)||(stateno = 410)||(stateno = 430)||(stateno = 440)
trigger2 = movecontact && random < 20
value = cond(random<700,1200,1202)

;aguijon
[State -1,aguijon]
type = ChangeState
value = cond(random<500,1100,1110)
triggerall = var(24)=2 && roundstate=2 && statetype !=a
triggerall = (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall = var(10) = 0
trigger1 = p2dist x <= 100 && ctrl && random < 5
;combo chain 1
trigger2 = (stateno = 200)||(stateno = 210)||(stateno = 230)||(stateno = 240)||(stateno = 400)||(stateno = 410)||(stateno = 430)||(stateno = 440)
trigger2 = movecontact && random < 20
;cuando p2 salta
trigger3 = enemynear, statetype = a
trigger3 = p2dist x <= 120 && ctrl && random < 5

;craneo de piedra
[State -1,craneo]
type = ChangeState
triggerall = var(24)=2 && roundstate=2 && statetype !=a
triggerall = var(10) = 0
triggerall = (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall = NumHelper(900) = 0
triggerall = NumHelper(300) = 0
triggerall = p2dist x <= 260
trigger1 = ctrl && random < 6
;combo chain 1
trigger2 = (stateno = 200)||(stateno = 210)||(stateno = 230)||(stateno = 240)||(stateno = 400)||(stateno = 410)||(stateno = 430)||(stateno = 440)
trigger2 = movecontact && random < 20
value = cond(random<500,900,910)

;HYPERMOVES 2
;----------

;super vomitada del terror
[State -1,vomitada]
type = ChangeState
triggerall = var(24)=2 && roundstate=2 && statetype !=a && power >= 1000
triggerall = var(10) = 0
triggerall = (p2stateno!=[120,155]) && (p2statetype!=L)
trigger1 = p2dist x >= 90 && ctrl && random < 3
;combo chain 1
trigger2 = (stateno = 200)||(stateno = 210)||(stateno = 230)||(stateno = 240)||(stateno = 400)||(stateno = 410)||(stateno = 430)||(stateno = 440)
trigger2 = movecontact && random < 10
;mole
trigger3 = (stateno = 1200)||(stateno = 1202)
trigger3 = movecontact && random < 10
;craneo
trigger4 = (stateno = 900)||(stateno = 910)
trigger4 = movecontact && random < 10
;saliva
trigger5 = (stateno = 1000)||(stateno = 1001)
trigger5 = (animelemtime(5)=[1,8]) && random < 10
;CONTRA ATAQUES ESPECIFICOS
;animus decoy
trigger6 = enemynear, name = "animus" && enemynear, stateno = 1200 && ctrl && random < 5
;noroko decoy
trigger7 = enemynear, name = "noroko" && enemynear, stateno = 1100 && ctrl && random < 5
;viuda tela - deja de correr en common
trigger8 = enemynear, name = "ananzi" && enemynear, numhelper(1100)=1 && ctrl && random < 5
value = 3000

;mordida
[State -1,mordida]
type = ChangeState
triggerall = var(24)=2 && roundstate=2 && statetype !=a && power >= 1000
triggerall = var(10) = 0
triggerall = (p2stateno!=[120,155]) && (p2statetype!=L) && p2dist x <= 150
trigger1 = ctrl && random < 3
;combo chain 1
trigger2 = (stateno = 200)||(stateno = 210)||(stateno = 230)||(stateno = 240)||(stateno = 400)||(stateno = 410)||(stateno = 430)||(stateno = 440)
trigger2 = movecontact && p2dist x < 80 && random < 10
;mole
trigger3 = (stateno = 1200)||(stateno = 1202)
trigger3 = movecontact && p2dist x < 80 && random < 10
;craneo
trigger4 = (stateno = 900)||(stateno = 910)
trigger4 = movecontact && p2dist x < 80 && random < 10
;saliva
trigger5 = (stateno = 1000)||(stateno = 1001)
trigger5 = (animelemtime(5)=[1,8]) && p2dist x < 80 && random < 10
value = 3300

;gusanitos
[State -1,gusanitos]
type = ChangeState
triggerall = var(24)=2 && roundstate=2 && statetype !=a && power >= 1000
triggerall = var(10) = 0
triggerall = (p2stateno!=[120,155]) && (p2statetype!=L)
trigger1 = ctrl && random < 2
;combo chain 1
trigger2 = (stateno = 200)||(stateno = 210)||(stateno = 230)||(stateno = 240)||(stateno = 400)||(stateno = 410)||(stateno = 430)||(stateno = 440)
trigger2 = movecontact && p2dist x < 80 && random < 10
;mole
trigger3 = (stateno = 1200)||(stateno = 1202)
trigger3 = movecontact && p2dist x < 80 && random < 10
;craneo
trigger4 = (stateno = 900)||(stateno = 910)
trigger4 = movecontact && p2dist x < 80 && random < 10
;saliva
trigger5 = (stateno = 1000)||(stateno = 1001)
trigger5 = (animelemtime(5)=[1,8]) && p2dist x < 80 && random < 10
;CONTRA ATAQUES ESPECIFICOS
;viuda tela - deja de correr en common
trigger6 = enemynear, name = "ananzi" && enemynear, numhelper(1100)=1 && ctrl && random < 5
;viuda SUPER tela - deja de correr en common
trigger7 = enemynear, name = "ananzi" && enemynear, stateno = 3100 && ctrl && random < 5
value = 3100

;dark force
[State -1,DF]
type = ChangeState
triggerall = var(24)=2 && roundstate=2 && statetype !=a && power >= 2000
triggerall = var(10) = 0
trigger1 = ctrl && p2dist x > 150 && random < 3
value = 3400

;dark force COMBO
[State -1,DF]
type = ChangeState
triggerall = var(24)=2 && roundstate=2 && statetype !=a && power >= 2000
triggerall = var(10) = 0
;combo chain 1
trigger1 = (stateno = 200)||(stateno = 210)||(stateno = 230)||(stateno = 240)||(stateno = 400)||(stateno = 410)||(stateno = 430)||(stateno = 440)
trigger1 = movecontact && p2dist x < 80 && random < 10
;mole
trigger2 = (stateno = 1200)||(stateno = 1202)
trigger2 = movecontact && p2dist x < 80 && random < 10
;craneo
trigger3 = (stateno = 900)||(stateno = 910)
trigger3 = movecontact && p2dist x < 80 && random < 10
;saliva
trigger4 = (stateno = 1000)||(stateno = 1001)
trigger4 = (animelemtime(5)=[1,8]) && p2dist x < 80 && random < 10
value = 3420

;fatal move SINGLE
[State -1, fatal move]
type = ChangeState
triggerall = var(24)=2 && roundstate=2 && statetype !=a
triggerall = power >= 3000 && p2dist x <= 120
triggerall = var(10) = 0
triggerall= numenemy=1
triggerall= enemy,life<=330
;combo chain 1
trigger1 = (stateno = 200)||(stateno = 210)||(stateno = 230)||(stateno = 240)||(stateno = 400)||(stateno = 410)||(stateno = 430)||(stateno = 440)
trigger1 = movecontact && p2dist x < 80 && random < 20
;mole
trigger2 = (stateno = 1200)||(stateno = 1202)
trigger2 = movecontact && p2dist x < 80 && random < 5
;CONTRA ATAQUES ESPECIFICOS
;animus virgen
trigger3 = enemynear, name = "animus" && enemynear, stateno = 3100 && ctrl && random < 20
value = 3200


;----------------------------------------------
;----
;AI 3
;----

;guard 3
[State -1]
type = ChangeState
trigger1 = var(24)=3 && roundstate=2 && ctrl
trigger1 = !(enemynear,hitdefattr=SCA,AT) && inguarddist
trigger1 = (stateno!=[120,155]) && random < 300
value = 120

;ATAQUE BASICO 3
;-------------

;Stand Light Punch
;-----------------
[State -1, SLP]
type = ChangeState
value = 200
triggerall = var(24)=3 && roundstate=2 && statetype !=a
triggerall = (p2statetype!=L)
triggerall = p2dist x <= 80 && enemynear,pos y >-150
trigger1 = ctrl && random <60
trigger1 = enemynear, movetype != a
;combo chain 1
trigger2 = (stateno = 230)||(stateno = 400)||(stateno = 430)
trigger2 = movecontact && random <200 && var(25)<=2

;Stand strong Punch
;-----------------
[State -1, SsP]
type = ChangeState
value = 210
triggerall = var(24)=3 && roundstate=2 && statetype !=a
triggerall = (p2statetype!=L)
triggerall = p2dist x <= 80 && enemynear,pos y >-120
trigger1 = random <10 && ctrl
trigger1 = enemynear, movetype != a
;combo chain 1
trigger2 = (stateno = 200)||(stateno = 230)||(stateno = 400)||(stateno = 430)
trigger2 = movecontact && random <200

;Stand Light kick
;-----------------
[State -1, SLk]
type = ChangeState
value = 230
triggerall = var(24)=3 && roundstate=2 && statetype !=a
triggerall = (p2statetype!=L)
triggerall = p2dist x <= 120 && enemynear,pos y >-70
trigger1 = random <60 && ctrl
trigger1 = enemynear, movetype != a
;combo chain 1
trigger2 = (stateno = 200)||(stateno = 400)||(stateno = 430)
trigger2 = movecontact && random <200 && var(25)<=2
;CONTRA ATAQUES ESPECIFICOS
;noroko df
trigger3 = enemynear, name = "noroko" && enemynear, var(10)!=0 && ctrl && random < 300
;shar-makai df
trigger4 = enemynear, name = "shar-makai" && enemynear, var(10)!=0 && ctrl && random < 300

;Stand strong kick
;-----------------
[State -1, Ssk]
type = ChangeState
value = 240
triggerall = var(24)=3 && roundstate=2 && statetype !=a
triggerall = (p2statetype!=L)
triggerall = p2dist x <= 130 && enemynear,pos y >-140
;combo chain 1
trigger1 = (stateno = 200)||(stateno = 230)||(stateno = 400)||(stateno = 430)
trigger1 = movecontact && random <100

;crouch light punch
;------------------
[State -1,clp]
type = ChangeState
value = 400
triggerall = var(24)=3 && roundstate=2 && statetype !=a
triggerall = (p2statetype!=L)
triggerall = p2dist x <= 80 && enemynear,pos y >-130
trigger1 = random <70 && ctrl
trigger1 = enemynear, movetype != a
;combo chain 1
trigger2 = (stateno = 200)||(stateno = 230)||(stateno = 430)
trigger2 = movecontact && random <300 && var(25)<=2
;CONTRA ATAQUES ESPECIFICOS
;noroko df
trigger3 = enemynear, name = "noroko" && enemynear, var(10)!=0 && ctrl && random < 300

;crouch strong punch
;------------------
[State -1,csp]
type = ChangeState
value = 410
triggerall = var(24)=3 && roundstate=2 && statetype !=a
triggerall = (p2statetype!=L)
triggerall = p2dist x <= 80 && enemynear,pos y >-110
trigger1 = random <20 && ctrl
trigger1 = enemynear, movetype != a
;combo chain 1
trigger2 = (stateno = 200)||(stateno = 230)||(stateno = 400)||(stateno = 430)
trigger2 = movecontact && random <300

;crouch light kick
;------------------
[State -1,clk]
type = ChangeState
value = 430
triggerall = var(24)=3 && roundstate=2 && statetype !=a
triggerall = (p2statetype!=L)
triggerall = p2dist x <= 70 && enemynear,pos y >-80
trigger1 = random <70 && ctrl
trigger1 = enemynear, movetype != a
;combo chain 1
trigger2 = (stateno = 200)||(stateno = 230)||(stateno = 400)
trigger2 = movecontact && random <300 && var(25)<=2
;CONTRA ATAQUES ESPECIFICOS
;noroko df
trigger3 = enemynear, name = "noroko" && enemynear, var(10)!=0 && ctrl && random < 300
;shar-makai df
trigger4 = enemynear, name = "shar-makai" && enemynear, var(10)!=0 && ctrl && random < 300

;crouch strong kick
;------------------
[State -1,csk]
type = ChangeState
value = 440
triggerall = var(24)=3 && roundstate=2 && statetype !=a
triggerall = (p2statetype!=L)
triggerall = p2dist x <= 80 && enemynear,pos y >-100
trigger1 = random <20 && ctrl
trigger1 = enemynear, movetype != a
;combo chain 1
trigger2 = (stateno = 200)||(stateno = 230)||(stateno = 400)||(stateno = 430)
trigger2 = movecontact && random <300
;CONTRA ATAQUES ESPECIFICOS
;noroko df
trigger3 = enemynear, name = "noroko" && enemynear, var(10)!=0 && ctrl && random < 300
;shar-makai df
trigger4 = enemynear, name = "shar-makai" && enemynear, var(10)!=0 && ctrl && random < 300

;jump light punch
[State -1, jlp]
type = ChangeState
value = 600
triggerall = var(24)=3 && roundstate=2 && statetype = a
triggerall = (p2statetype!=L)
triggerall = var(35)<40
trigger1 = p2dist x <= 170 && random <80 && ctrl
trigger1 = enemynear, movetype != a
;combo chain 1
trigger2 = (stateno = 630)||(stateno = 1100)||(stateno = 1110)
trigger2 = movecontact && random <300 && var(25)<=2

;jump strong punch
[State -1, jsp]
type = ChangeState
value = 610
triggerall = var(24)=3 && roundstate=2 && statetype = a
triggerall = (p2statetype!=L)
trigger1 = p2dist x <= 110 && random <150 && ctrl
trigger1 = enemynear, movetype != a
;combo chain 1
trigger2 = (stateno = 630)||(stateno = 1100)||(stateno = 1110)
trigger2 = movecontact && random <300

;jump light kick
[State -1, jlk]
type = ChangeState
value = 630
triggerall = var(24)=3 && roundstate=2 && statetype = a
triggerall = (p2statetype!=L)
trigger1 = p2dist x <= 90 && random <500 && ctrl
trigger1 = enemynear, movetype != a
;combo chain 1
trigger2 = (stateno = 630)||(stateno = 1100)||(stateno = 1110)
trigger2 = movecontact && random <300 && var(25)<=2

;jump strong kick
[State -1, jsk]
type = ChangeState
value = 640
triggerall = var(24)=3 && roundstate=2 && statetype = a
triggerall = (p2statetype!=L)
trigger1 = p2dist x <= 150 && random <150 && ctrl
trigger1 = enemynear, movetype != a
;combo chain 1
trigger2 = (stateno = 630)||(stateno = 1100)||(stateno = 1110)
trigger2 = movecontact && random <300

;agarre
[State -1, Kung Fu Throw]
type = ChangeState
triggerall = var(24)=3 && roundstate=2 && statetype !=a
triggerall = var(10) = 0
triggerall = ctrl && (p2statetype!=L)
triggerall = stateno != 100
triggerall = enemynear, name != "final"
triggerall = !(enemynear, name = "noroko" && enemynear, var(10)=1)
trigger1 = p2bodydist X < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger1 = enemynear, pos y > -2 && random < 100
value = cond(random<500,800,850)

;SPECIALS 3
;--------

;ataque de saliva
[State -1,saliva]
type = ChangeState
triggerall = var(24)=3 && roundstate=2 && statetype !=a
triggerall = var(10) = 0
triggerall = (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall = p2dist x <= 220 && enemynear,pos y >-100
trigger1 = ctrl && random < 10
;combo chain 1
trigger2 = (stateno = 200)||(stateno = 210)||(stateno = 230)||(stateno = 240)||(stateno = 400)||(stateno = 410)||(stateno = 430)||(stateno = 440)
trigger2 = movecontact && random < 120
;CONTRA ATAQUES ESPECIFICOS
;animus decoy
trigger3 = enemynear, name = "animus" && enemynear, stateno = 1200 && ctrl && random < 7
;noroko decoy
trigger4 = enemynear, name = "noroko" && enemynear, stateno = 1100 && ctrl && random < 7
;viuda SUPER tela - deja de correr en common
trigger5 = enemynear, name = "ananzi" && enemynear, stateno = 3100 && ctrl&& random < 10
;noroko df
trigger6 = enemynear, name = "noroko" && enemynear, var(10)!=0 && ctrl && random < 300
;shar-makai df
trigger7 = enemynear, name = "shar-makai" && enemynear, var(10)!=0 && ctrl && random < 300
value = cond(random<500,1000,1001)

;mole giratoria
[State -1, mole]
type = ChangeState
triggerall = var(24)=3 && roundstate=2 && statetype !=a
triggerall = (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall = var(10) = 0
triggerall = p2dist x <= 120 && enemynear,pos y >-100
trigger1 = ctrl && random < 5
;combo chain 1
trigger2 = (stateno = 200)||(stateno = 210)||(stateno = 230)||(stateno = 240)||(stateno = 400)||(stateno = 410)||(stateno = 430)||(stateno = 440)
trigger2 = movehit && random < 120
;noroko df
trigger3 = enemynear, name = "noroko" && enemynear, var(10)!=0 && ctrl && random < 300
;shar-makai df
trigger4 = enemynear, name = "shar-makai" && enemynear, var(10)!=0 && ctrl && random < 300
value = 1200

;aguijon
[State -1,aguijon]
type = ChangeState
value = cond(random<500,1100,1110)
triggerall = var(24)=3 && roundstate=2 && statetype !=a
triggerall = (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall = var(10) = 0
triggerall = p2dist x <= 100
trigger1 =  ctrl && random < 5
;combo chain 1
trigger2 = (stateno = 200)||(stateno = 210)||(stateno = 230)||(stateno = 240)||(stateno = 400)||(stateno = 410)||(stateno = 430)||(stateno = 440)
trigger2 = movehit && random < 100
;cuando p2 salta
trigger3 = enemynear, statetype = a
trigger3 = p2dist x <= 120 && ctrl && random < 20

;craneo de piedra
[State -1,craneo]
type = ChangeState
triggerall = var(24)=3 && roundstate=2 && statetype !=a
triggerall = var(10) = 0
triggerall = (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall = NumHelper(900) = 0
triggerall = NumHelper(300) = 0
triggerall = p2dist x <= 260
trigger1 = ctrl && random < 6
;combo chain 1
trigger2 = (stateno = 200)||(stateno = 210)||(stateno = 230)||(stateno = 240)||(stateno = 400)||(stateno = 410)||(stateno = 430)||(stateno = 440)
trigger2 = movecontact && random < 120
;CONTRA ATAQUES ESPECIFICOS
;noroko df
trigger3 = enemynear, name = "noroko" && enemynear, var(10)!=0 && ctrl && random < 300
;shar-makai df
trigger4 = enemynear, name = "shar-makai" && enemynear, var(10)!=0 && ctrl && random < 300
value = cond(random<500,900,910)

;HYPERMOVES 3
;----------

;super vomitada del terror
[State -1,vomitada]
type = ChangeState
triggerall = var(24)=3 && roundstate=2 && statetype !=a && power >= 1000
triggerall = var(10) = 0
triggerall = (p2stateno!=[120,155]) && (p2statetype!=L)
trigger1 = p2dist x >= 90 && ctrl && random < 3
;combo chain 1
trigger2 = (stateno = 200)||(stateno = 210)||(stateno = 230)||(stateno = 240)||(stateno = 400)||(stateno = 410)||(stateno = 430)||(stateno = 440)
trigger2 = movecontact && random < 8
;mole
trigger3 = (stateno = 1200)||(stateno = 1202)
trigger3 = movecontact && random < 5
;craneo
trigger4 = (stateno = 900)||(stateno = 910)
trigger4 = movecontact && random < 5
;saliva
trigger5 = (stateno = 1000)||(stateno = 1001)
trigger5 = (animelemtime(5)=[1,8]) && random < 5
;CONTRA ATAQUES ESPECIFICOS
;animus decoy
trigger6 = enemynear, name = "animus" && enemynear, stateno = 1200 && ctrl && random < 7
;noroko decoy
trigger7 = enemynear, name = "noroko" && enemynear, stateno = 1100 && ctrl && random < 7
;viuda tela - deja de correr en common
trigger8 = enemynear, name = "ananzi" && enemynear, numhelper(1100)=1 && ctrl && random < 10
value = 3000

;mordida
[State -1,mordida]
type = ChangeState
triggerall = var(24)=3 && roundstate=2 && statetype !=a && power >= 1000
triggerall = var(10) = 0
triggerall = (p2stateno!=[120,155]) && (p2statetype!=L) && p2dist x <= 150
;combo chain 1
trigger1 = (stateno = 200)||(stateno = 210)||(stateno = 230)||(stateno = 240)||(stateno = 400)||(stateno = 410)||(stateno = 430)||(stateno = 440)
trigger1 = movehit && p2dist x < 80 && random < 8
;mole
trigger2 = (stateno = 1200)||(stateno = 1202)
trigger2 = movehit && p2dist x < 80 && random < 5
;craneo
trigger3 = (stateno = 900)||(stateno = 910)
trigger3 = movecontact && p2dist x < 80 && random < 5
;saliva
trigger4 = (stateno = 1000)||(stateno = 1001)
trigger4 = (animelemtime(5)=[1,8]) && p2dist x < 80 && random < 2
value = 3300

;gusanitos
[State -1,gusanitos]
type = ChangeState
triggerall = var(24)=3 && roundstate=2 && statetype !=a && power >= 1000
triggerall = var(10) = 0
triggerall = (p2stateno!=[120,155]) && (p2statetype!=L)
trigger1 = ctrl && random < 2
;combo chain 1
trigger2 = (stateno = 200)||(stateno = 210)||(stateno = 230)||(stateno = 240)||(stateno = 400)||(stateno = 410)||(stateno = 430)||(stateno = 440)
trigger2 = movehit && p2dist x < 80 && random < 8
;mole
trigger3 = (stateno = 1200)||(stateno = 1202)
trigger3 = movehit && p2dist x < 80 && random < 5
;craneo
trigger4 = (stateno = 900)||(stateno = 910)
trigger4 = movecontact && p2dist x < 80 && random < 5
;saliva
trigger5 = (stateno = 1000)||(stateno = 1001)
trigger5 = (animelemtime(5)=[1,8]) && p2dist x < 80 && random < 2
;CONTRA ATAQUES ESPECIFICOS
;viuda tela - deja de correr en common
trigger6 = enemynear, name = "ananzi" && enemynear, numhelper(1100)=1 && ctrl && random < 10
;viuda SUPER tela - deja de correr en common
trigger7 = enemynear, name = "ananzi" && enemynear, stateno = 3100 && ctrl && random < 10
value = 3100

;dark force
[State -1,DF]
type = ChangeState
triggerall = var(24)=3 && roundstate=2 && statetype !=a && power >= 2000
triggerall = var(10) = 0
;combo chain 1
trigger1 = (stateno = 200)||(stateno = 210)||(stateno = 230)||(stateno = 240)||(stateno = 400)||(stateno = 410)||(stateno = 430)||(stateno = 440)
trigger1 = movehit && p2dist x < 80 && random < 8
;mole
trigger2 = (stateno = 1200)||(stateno = 1202)
trigger2 = movehit && p2dist x < 80 && random < 5
;craneo
trigger3 = (stateno = 900)||(stateno = 910)
trigger3 = movecontact && p2dist x < 80 && random < 2
;saliva
trigger4 = (stateno = 1000)||(stateno = 1001)
trigger4 = (animelemtime(5)=[1,8]) && p2dist x < 80 && random < 2
value = 3420

;fatal move SINGLE
[State -1, fatal move]
type = ChangeState
triggerall = var(24)=3 && roundstate=2 && statetype !=a
triggerall = power >= 3000 && p2dist x <= 120
triggerall = var(10) = 0
triggerall= numenemy=1
triggerall= enemy,life<=330
;combo chain 1
trigger1 = (stateno = 200)||(stateno = 210)||(stateno = 400)||(stateno = 410)||(stateno = 430)
trigger1 = movehit && p2dist x < 80 && random < 100
;mole
trigger2 = (stateno = 1200)||(stateno = 1202)
trigger2 = movehit && p2dist x < 80 && random < 60
;CONTRA ATAQUES ESPECIFICOS
;animus decoy
trigger3 = enemynear, name = "animus" && enemynear, stateno = 1200 && ctrl && random < 80
;noroko decoy
trigger4 = enemynear, name = "noroko" && enemynear, stateno = 1100 && ctrl && random < 80
;animus virgen
trigger5 = enemynear, name = "animus" && enemynear, stateno = 3100 && ctrl && random < 80
value = 3200



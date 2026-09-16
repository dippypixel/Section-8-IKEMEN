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
command = a+b
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
name = "QCFx2P"
command = ~D, DF, F, D, DF, F, x
time = 20

[Command]
name = "QCFx2P"
command = ~D, DF, F, D, DF, F, y
time = 20

[Command]
name = "QCBx2P"
command = ~D, DB, B, D, DB, B, x;~F, D, DF, F, D, DF, x
time = 20

[Command]
name = "QCBx2P"
command = ~D, DB, B, D, DB, B, y;~F, D, DF, F, D, DF, y
time = 20

[Command]
name = "QCFx2K"
command = ~D, DF, F, D, DF, F, a
time = 20

[Command]
name = "QCFx2K"
command = ~D, DF, F, D, DF, F, b
time = 20

[Command]
name = "QCBx2K"
command = ~D, DB, B, D, DB, B, a
time = 20

[Command]
name = "QCBx2K"
command = ~D, DB, B, D, DB, B, b
time = 20

[Command]
name = "QCFx2P"
command = ~D, DF, F, D, DF, F, ~x
time = 20

[Command]
name = "QCFx2P"
command = ~D, DF, F, D, DF, F,  y
time = 20

[Command]
name = "QCBx2P"
command = ~D, DB, B, D, DB, B, ~x;~F, D, DF, F, D, DF, x
time = 20

[Command]
name = "QCBx2P"
command = ~D, DB, B, D, DB, B, ~y;~F, D, DF, F, D, DF, y
time = 20

[Command]
name = "QCFx2K"
command = ~D, DF, F, D, DF, F, ~a
time = 20

[Command]
name = "QCFx2K"
command = ~D, DF, F, D, DF, F, ~b
time = 20

[Command]
name = "QCBx2K"
command = ~D, DB, B, D, DB, B, ~a
time = 20

[Command]
name = "QCBx2K"
command = ~D, DB, B, D, DB, B, ~b
time = 20

;-| Special Motions |------------------------------------------------------
[Command]
name = "BF_x"
command = ~$B, $F, x
time = 10
[Command]
name = "BF_y"
command = ~$B, $F, y
time = 10
[Command]
name = "FB_x"
command = ~$F, $B, x
time = 10
[Command]
name = "FB_y"
command = ~$F, $B, y
time = 10

[Command]
name = "BF_a"
command = ~$B, $F, a
time = 10
[Command]
name = "BF_b"
command = ~$B, $F, b
time = 10
[Command]
name = "FB_a"
command = ~$F, $B, a
time = 10
[Command]
name = "FB_b"
command = ~$F, $B, b
time = 10

[Command]
name = "DBF_a"
command = ~DB, F, a
time = 10
[Command]
name = "DBF_b"
command = ~DB, F, b
time = 10
[Command]
name = "DFB_a"
command = ~DF, F, a
time = 10
[Command]
name = "DFB_b"
command = ~DF, F, b
time = 10

[Command]
name = "DU_x"
command = ~$D, $U, x
time = 10
[Command]
name = "DU_y"
command = ~$D, $U, y
time = 10

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
name = "UQCF_x"
command = ~U, UF, F, x

[Command]
name = "UQCF_y"
command = ~U, UF, F, y

[Command]
name = "UQCF_z"
command = ~U, UF, F, z

[Command]
name = "upper_a"
command = ~F, D, DF, a

[Command]
name = "upper_b"
command = ~F, D, DF, b

[Command]
name = "upper_c"
command = ~F, D, DF, c

[Command]
name = "rupper_a"
command = ~B, D, DB, a

[Command]
name = "rupper_b"
command = ~B, D, DB, b

[Command]
name = "rupper_c"
command = ~B, D, DB, c

[Command]
name = "QCF_a"
command = ~D, DF, F, a

[Command]
name = "QCF_b"
command = ~D, DF, F, b

[Command]
name = "QCF_c"
command = ~D, DF, F, c

[Command]
name = "QCB_a"
command = ~D, DB, B, a

[Command]
name = "QCB_b"
command = ~D, DB, B, b

[Command]
name = "QCB_c"
command = ~D, DB, B, c

;-| N.Edge Special Motions |------------------------------------------------------
[Command]
name = "BF_x"
command = ~$B, $F, ~x
time = 10
[Command]
name = "BF_y"
command = ~$B, $F, ~y
time = 10
[Command]
name = "FB_x"
command = ~$F, $B, ~x
time = 10
[Command]
name = "FB_y"
command = ~$F, $B, ~y
time = 10

[Command]
name = "BF_a"
command = ~$B, $F, ~a
time = 10
[Command]
name = "BF_b"
command = ~$B, $F, ~b
time = 10
[Command]
name = "FB_a"
command = ~$F, $B, ~a
time = 10
[Command]
name = "FB_b"
command = ~$F, $B, ~b
time = 10

[Command]
name = "DU_x"
command = ~$D, $U, ~x
time = 10
[Command]
name = "DU_y"
command = ~$D, $U, ~y
time = 10

[Command]
name = "QCF_x"
command = ~D, DF, F, ~x

[Command]
name = "QCF_y"
command = ~D, DF, F, ~y

[Command]
name = "QCF_z"
command = ~D, DF, F, ~z

[Command]
name = "QCB_x"
command = ~D, DB, B, ~x

[Command]
name = "QCB_y"
command = ~D, DB, B, ~y

[Command]
name = "QCB_z"
command = ~D, DB, B, ~z

[Command]
name = "UQCF_x"
command = ~U, UF, F, ~x

[Command]
name = "UQCF_y"
command = ~U, UF, F, ~y

[Command]
name = "UQCF_z"
command = ~U, UF, F, ~z

[Command]
name = "upper_a"
command = ~F, D, DF, ~a

[Command]
name = "upper_b"
command = ~F, D, DF, ~b

[Command]
name = "upper_c"
command = ~F, D, DF, ~c

[Command]
name = "rupper_a"
command = ~B, D, DB, ~a

[Command]
name = "rupper_b"
command = ~B, D, DB, ~b

[Command]
name = "rupper_c"
command = ~B, D, DB, ~c

[Command]
name = "QCF_a"
command = ~D, DF, F, ~a

[Command]
name = "QCF_b"
command = ~D, DF, F, ~b

[Command]
name = "QCF_c"
command = ~D, DF, F, ~c

[Command]
name = "QCB_a"
command = ~D, DB, B, ~a

[Command]
name = "QCB_b"
command = ~D, DB, B, ~b

[Command]
name = "QCB_c"
command = ~D, DB, B, ~c


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
name = "throw"
command = x+y
time = 1
[Command]
name = "holdtech"
command = /x+y
time = 1

[Command]
name = "lplk"
command = x+a
time = 1

[Command]
name = "lplk"
command = c
time = 1

[Command]
name = "hphk"
command = y+b
time = 1

[Command]
name = "hphk"
command = z
time = 1

[Command]
name = "kthrow"
command = a+b
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

[State 0, ScreenBound]
type = ScreenBound
trigger1 = ishelper
value = 1
movecamera = 0,0
ignorehitpause = 1
[State 0, PlayerPush]
type = PlayerPush
trigger1 = ishelper
trigger1 = stateno != [2100,2109]
value = 1
ignorehitpause = 1

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
trigger1 = time >= 0
var(9) = 0

[State -1, Combo condition Check]
type = VarSet
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) || (stateno = 210 && anim != 210) || (stateno = 400) || (stateno = 204 && anim != 206) || (stateno = 260 && anim = 261 && animelemtime(8) > 0) || (stateno = 220) || (stateno = 410)
trigger2 = time;movecontact
trigger3 = (stateno = 230 && anim = 231) || (stateno = 240 && anim = 241) || (stateno = 430) || (stateno = 440 && animelemtime(51) > 0) || (stateno = 236) || (stateno = 235 && animelemtime(18) > 0)
trigger3 = time;movecontact
trigger4 = stateno = 100 || stateno = 105
trigger5 = stateno = 40
trigger5 = animtime != 0
var(9) = 1

;===========================================================================
;AI STARTS HERE

[State AI, RESET]
type = VarSet
triggerall = stateno != 820
trigger1 = fvar(35)=0;fvar(35)=0
trigger2 = random >= (fvar(35)-8)*2
var(52) = 0
ignorehitpause = 1

[State Autorecover like an asshole]
type = VarSet
triggerall = fvar(35) >= 4
triggerall = random < (1*(fvar(35)*fvar(35)))
trigger1 = alive
trigger1 = stateno = [5030,5071]
trigger1 = GetHitVar(animtype) != 5
var(52) = 5200
ignorehitpause = 1

[State AI, Consider backing off]
type = VarSet
triggerall = roundstate = 2
triggerall = fvar(35)
triggerall = var(52) = 0 || random < 80+fvar(35)
triggerall = random < 200 + (123*(prevstateno = 440 && (p2stateno=[5070,5100]) ) )
triggerall = numenemy
triggerall = (p2stateno = [5110,5130]) || ((enemynear,time <= 10) && (enemynear,prevstateno = 5120))
triggerall = p2bodydist x <= 40
trigger1 = stateno != 40
trigger1 = ctrl
var(52) = ifelse(backedgebodydist<=40,700,ifelse(random<500,1550,105))
ignorehitpause = 1

[State AI, Consider S.CD]
type = VarSet
triggerall = !(var(40) & floor(exp(0*ln(2)) + 0.5))
triggerall = !numtarget(505)
triggerall = roundstate = 2
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(fvar(35)*2)
triggerall = fvar(35)
triggerall = random < (1*(fvar(35)*fvar(35)*fvar(35))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 350)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,-8),35-(9*movecontact)]
triggerall = p2dist y >= -90 - (enemynear,vel y*9)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -60
triggerall = statetype != A
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
triggerall = prevstateno != 220
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 88 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || (stateno = 210 && anim = 211)
trigger2 = (movecontact > 6)
var(52) = 220
ignorehitpause = 1

[State AI, Consider C.HP]
type = VarSet
triggerall = !(var(40) & floor(exp(6*ln(2)) + 0.5))
triggerall = roundstate = 2
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(fvar(35)*2)
triggerall = fvar(35)
triggerall = random < (1*(fvar(35)*fvar(35)*fvar(35))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 30)
triggerall = p2stateno != [5080,5180]
triggerall = (p2bodydist x = [ifelse(p2statetype!=A,-5,-8),40])
triggerall = p2dist y >= -110 - (enemynear,vel y*8)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -70
triggerall = statetype != A
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
trigger1 = prevstateno != 410
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 88 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 && anim = 201) || (stateno = 400 && anim = 400) || (stateno = 204 && anim != 206)
trigger2 = (movecontact >= 6)
var(52) = 410
ignorehitpause = 1

[State AI, Consider C.LP]
type = VarSet
triggerall = !(var(40) & floor(exp(5*ln(2)) + 0.5))
triggerall = roundstate = 2
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(fvar(35)*2)
triggerall = fvar(35)
triggerall = random < (1*(fvar(35)*fvar(35)*fvar(35))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,-8),40-(9*movecontact)]
triggerall = p2dist y >= -50 - (enemynear,vel y*8)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -60
triggerall = statetype != A
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
triggerall = prevstateno != 400
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 88 || p2movetype = H
trigger1 = ctrl
trigger2 = (stateno = 200 && anim = 201) || (stateno = 400 && anim = 400)
trigger2 = (movecontact > 6)
var(52) = 400
ignorehitpause = 1

[State AI, Consider B.K]
type = VarSet
triggerall = !(var(41) & floor(exp(7*ln(2)) + 0.5))
triggerall = roundstate = 2
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(fvar(35)*2)
triggerall = fvar(35)
triggerall = random < (1*(fvar(35)*fvar(35)*fvar(35))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 30)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,-8),ifelse(anim=202,110,55)-(9*movecontact)]
triggerall = p2dist y >= -120 - (enemynear,vel y*10)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -100
triggerall = statetype != A
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
triggerall = prevstateno != 236
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 88 || p2movetype = H
trigger1 = ctrl
trigger2 = (stateno = 200) || (stateno = 210 && anim = 211) || (stateno = 400 && anim = 400) || (stateno = 204 && var(0)>=3)
trigger2 = (movecontact > 6)
var(52) = 236
ignorehitpause = 1

[State AI, Consider S.HK]
type = VarSet
triggerall = !(var(40) & floor(exp(3*ln(2)) + 0.5))
triggerall = roundstate = 2
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(fvar(35)*2)
triggerall = fvar(35)
triggerall = random < (1*(fvar(35)*fvar(35)*fvar(35))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,-8),56-(9*movecontact)]
triggerall = p2dist y >= -80 - (enemynear,vel y*8)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -100
triggerall = statetype != A
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
triggerall = prevstateno != 240
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 88 || p2movetype = H
trigger1 = ctrl
trigger2 = (stateno = 200 && anim = 201) || (stateno = 400)
trigger2 = (movecontact > 6)
var(52) = 240
ignorehitpause = 1

[State AI, Consider S.LP]
type = VarSet
triggerall = !(var(40) & floor(exp(2*ln(2)) + 0.5))
triggerall = roundstate = 2
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(fvar(35)*2)
triggerall = fvar(35)
triggerall = random < (1*(fvar(35)*fvar(35)*fvar(35))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,-8),60-(9*movecontact)]
triggerall = p2dist y >= -70 - (enemynear,vel y*8)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -90
triggerall = statetype != A
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
triggerall = prevstateno != 200
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 88 || p2movetype = H
trigger1 = ctrl
trigger2 = stateno = 200 && anim != 202
trigger2 = (movecontact > 6)
var(52) = 200
ignorehitpause = 1

[State AI, Consider C.LK]
type = VarSet
triggerall = !(var(40) & floor(exp(7*ln(2)) + 0.5))
triggerall = roundstate = 2
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(fvar(35)*2)
triggerall = fvar(35)
triggerall = random < (1*(fvar(35)*fvar(35)*fvar(35))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5120,5129];[5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,-8),60-(9*movecontact)]
triggerall = p2dist y >= -20 - (enemynear,vel y*8)
triggerall = statetype != A
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
triggerall = prevstateno != 430
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 88 || p2movetype = H
trigger1 = ctrl
trigger1 = prevstateno != 430
trigger2 = stateno = 200; && anim = 201
trigger2 = (movecontact > 6)
var(52) = 430
ignorehitpause = 1

[State AI, Consider F.P]
type = VarSet
triggerall = !(var(41) & floor(exp(4*ln(2)) + 0.5))
triggerall = roundstate = 2
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(fvar(35)*2)
triggerall = fvar(35)
triggerall = random < (1*(fvar(35)*fvar(35)*fvar(35))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = (p2bodydist x = [ifelse(p2statetype!=A,-5,-8),70]) || (stateno = 204)
triggerall = p2dist y >= -60 - (enemynear,vel y*6)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -60
triggerall = statetype != A
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
trigger1 = prevstateno != 204
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 88 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 && anim = 201) || (stateno = 400 && anim = 400) || (stateno = 204 && anim != 206)
trigger2 = (movecontact >= 6)
var(52) = 204
ignorehitpause = 1


[State AI, Consider S.LK]
type = VarSet
triggerall = !(var(40) & floor(exp(3*ln(2)) + 0.5))
triggerall = roundstate = 2
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(fvar(35)*2)
triggerall = fvar(35)
triggerall = random < (1*(fvar(35)*fvar(35)*fvar(35))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,-8),82-(9*movecontact)]
triggerall = p2dist y >= -40 - (enemynear,vel y*8)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -50
triggerall = statetype != A
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
triggerall = prevstateno != 230
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 88 || p2movetype = H
trigger1 = ctrl
trigger2 = stateno = 200 && anim = 201
trigger2 = (movecontact > 6)
var(52) = 230
ignorehitpause = 1

[State AI, Consider B.P]
type = VarSet
triggerall = !(var(41) & floor(exp(5*ln(2)) + 0.5))
triggerall = roundstate = 2
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(fvar(35)*2)
triggerall = fvar(35)
triggerall = random < (1*(fvar(35)*fvar(35)*fvar(35))) * ifelse(p2statetype=C,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 30)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,-8),ifelse(movehit,40,100)-(9*movecontact)]
triggerall = p2dist y >= -110 - (enemynear,vel y*9)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -20
triggerall = statetype != A
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
triggerall = prevstateno != 208
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 88 || p2movetype = H
trigger1 = ctrl
trigger2 = (stateno = 200 && anim = 201) || (stateno = 210 && anim = 211) || (stateno = 400 && anim = 400) || (stateno = 204 && var(0)>=3)
trigger2 = (movecontact > 6)
var(52) = 208
ignorehitpause = 1


[State AI, Consider S.HP]
type = VarSet
triggerall = !(var(40) & floor(exp(2*ln(2)) + 0.5))
triggerall = roundstate = 2
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(fvar(35)*2)
triggerall = fvar(35)
triggerall = random < (1*(fvar(35)*fvar(35)*fvar(35))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,-8),120-(9*movecontact)]
triggerall = p2dist y >= -70 - (enemynear,vel y*8)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -85
triggerall = statetype != A
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
triggerall = prevstateno != 210
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 88 || p2movetype = H
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = (movecontact > 6)
trigger3 = stateno = 210 && time >= 12 && movehit && var(0) <= 4
var(52) = 210
ignorehitpause = 1

[State AI, Consider F.K]
type = VarSet
triggerall = !(var(41) & floor(exp(6*ln(2)) + 0.5))
triggerall = roundstate = 2
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(fvar(35)*2)
triggerall = fvar(35)
triggerall = random < (0.8*(fvar(35)*fvar(35)*fvar(35))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,25,25),130-(9*movecontact)]
triggerall = p2dist y >= -40 - (enemynear,vel y*12)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -60
triggerall = statetype != A
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
triggerall = prevstateno != 235
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 88 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || stateno = 210 || stateno = 400 || stateno = 410 || (stateno = 204 && var(0)>=3)
trigger2 = (movecontact > 6)
var(52) = 235
ignorehitpause = 1

[State AI, Consider C.HK]
type = VarSet
triggerall = !(var(40) & floor(exp(8*ln(2)) + 0.5))
triggerall = roundstate = 2
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(fvar(35)*2)
triggerall = fvar(35)
triggerall = random < (0.4*(fvar(35)*fvar(35)*fvar(35))) * ifelse(moveguarded&&p2statetype=C,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5110,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,-8),290-(9*movecontact)]
triggerall = p2dist y >= -20 - (enemynear,vel y*10)
triggerall = statetype != A
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
triggerall = prevstateno != 410
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 88 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 && anim = 201) || (stateno = 400 && anim = 400) || (stateno = 204 && var(0)>=3)
trigger2 = (movecontact > 6)
var(52) = 440
ignorehitpause = 1

[State AI, J.K]
type = Varset
triggerall = !(var(41) & floor(exp(2*ln(2)) + 0.5))
triggerall = roundstate = 2
triggerall = numenemy
triggerall = var(52) = 0 || random < 123
triggerall = fvar(35)
triggerall = p2bodydist x = [-40+(vel x*3)+(enemynear,vel x*3),45+(vel x*3)+(enemynear,vel x*3)]
triggerall = p2dist y >= -65 + (vel y*3) ; - (enemynear,vel y*6)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <=  -70 + (vel y*3); - (enemynear,vel y*6)
triggerall = Statetype = A
triggerall = p2stateno != [5100,5129]
triggerall = p2Statetype = A || vel y >= 0 || p2movetype = A
triggerall = (stateno != [120,169])
triggerall = random < (1*(fvar(35)*fvar(35)*fvar(35)))
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
trigger1 = ctrl
var(52) = ifelse(random<500,610,630)
ignorehitpause = 1

[State AI, J.DK]
type = Varset
triggerall = !(var(41) & floor(exp(8*ln(2)) + 0.5))
triggerall = roundstate = 2
triggerall = p2stateno != [5100,5129]
triggerall = numenemy
triggerall = var(52) = 0 || random < 150
triggerall = fvar(35)
triggerall = p2dist y > -20
triggerall = ((p2bodydist x*2) - p2bodydist y) = [-40,34] ; (p2bodydist x - p2bodydist y - (enemynear,vel y*7)) = [-50,24]
triggerall = (stateno != [120,169])
triggerall = random < (1*(fvar(35)*fvar(35)*fvar(35)))
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
triggerall = statetype = A
trigger1 = ctrl
var(52) = 605
ignorehitpause = 1

[State AI, J.DP]
type = Varset
triggerall = !(var(41) & floor(exp(9*ln(2)) + 0.5))
triggerall = roundstate = 2
triggerall = p2stateno != [5100,5129]
triggerall = numenemy
triggerall = var(52) = 0 || random < 150
triggerall = fvar(35)
triggerall = p2dist y > -20
triggerall = ((p2bodydist x/2) - p2bodydist y) = [74,84] ; (p2bodydist x - p2bodydist y - (enemynear,vel y*7)) = [-50,24]
triggerall = (stateno != [120,169])
triggerall = random < (1*(fvar(35)*fvar(35)*fvar(35)))
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
triggerall = statetype = A
trigger1 = ctrl
var(52) = 635
ignorehitpause = 1

[State AI, Just Attack You Idiot]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 900
triggerall = fvar(35)
triggerall = roundstate = 2
triggerall = random < (15*(fvar(35)*fvar(35)))
triggerall = p2stateno != [5080,5130]
triggerall = abs(p2bodydist x) < 6
triggerall = abs(p2bodydist y) < 50
triggerall = statetype = A
;triggerall = p2statetype = A
triggerall = prevstateno != [800,830]
triggerall = enemynear,prevstateno != [5120,5129]
trigger1 = stateno != 40
trigger1 = ctrl
var(52) = 600 + ((random%5) * 10)
ignorehitpause = 1

[State AI, J.Vega]
type = Varset
triggerall = !(var(41) & floor(exp(2*ln(2)) + 0.5))
triggerall = roundstate = 2
triggerall = numenemy
triggerall = var(52) = 0 || random < 123
triggerall = fvar(35)
triggerall = p2bodydist x = [-34+(vel x*14)+(enemynear,vel x*14),34+(vel x*14)+(enemynear,vel x*14)]
triggerall = p2dist y >= -30 + (vel y*14) ; - (enemynear,vel y*6)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <=  -30 + (vel y*14); - (enemynear,vel y*6)
triggerall = Statetype = A
triggerall = p2stateno != [5100,5129]
triggerall = p2Statetype = A || vel y >= 0 || p2movetype = A
triggerall = (stateno != [120,169])
triggerall = random < (1*(fvar(35)*fvar(35)*fvar(35)))
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
trigger1 = ctrl
var(52) = 620
ignorehitpause = 1

[State AI, Consider Throwing]
type = VarSet
triggerall = roundstate = 2
triggerall = numenemy
triggerall = var(52) = 0 || random < 900
triggerall = ailevel
triggerall = random < (15*(fvar(35)*fvar(35)))
triggerall = p2stateno != [5080,5130]
triggerall = p2stateno != [120,169]
triggerall = abs(p2bodydist x) < 20
triggerall = statetype != A
;triggerall = p2movetype != H
triggerall = p2statetype != A
triggerall = prevstateno != [800,840]
triggerall = prevstateno != 1350
triggerall = enemynear,prevstateno != [5120,5129]
;triggerall = var(8) = 0
trigger1 = stateno != 40
trigger1 = ctrl
var(52) = ifelse(random<500,800,840)
ignorehitpause = 1
[State AI, Keep On Mashing]
type = VarSet
triggerall = stateno = 810 || stateno = 850
triggerall = anim = 810 || stateno = 850
triggerall = ailevel
triggerall = random < (10*(fvar(35)*fvar(35)))
trigger1 = animelemtime(20) >= 0
trigger1 = animelemtime(22) < 0
var(52) = 810
ignorehitpause = 1

[State AI, Consider a goofy special move]
type = VarSet
triggerall = !(var(42) & floor(exp(6*ln(2)) + 0.5))
triggerall = roundstate = 2
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+fvar(35)) && (var(52)!=[200,250]) && (var(52)!=[400,650]) )
triggerall = fvar(35)
triggerall = random < (0.51*(fvar(35)*fvar(35)*fvar(35))) * ifelse(movehit||p2statetype=C,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 156)
triggerall = p2stateno != [5080,5130]
triggerall = (p2bodydist x = [-32,15-(9*(movecontact>=1)) +(facing*(enemynear,vel x*10)*(enemynear,facing))  ])
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -50
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*9) + (enemynear, pos y) <= -17 ) || (p2stateno != [5030,5129])
triggerall = statetype != A
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 9) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
triggerall = (prevstateno != [1600,1620])
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = var(9)
trigger1 = ctrl || (movehit>10)
var(52) =  ifelse(random<500,1600,1610)
ignorehitpause = 1

[State AI, Consider Drilling]
type = VarSet
triggerall = !(var(42) & floor(exp(4*ln(2)) + 0.5))
triggerall = roundstate = 2
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+fvar(35)) && (var(52)!=[200,250]) && (var(52)!=[400,650]) )
triggerall = fvar(35)
triggerall = random < (0.51*(fvar(35)*fvar(35)*fvar(35))) * ifelse(movehit||p2statetype=C,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 64)
triggerall = p2stateno != [5080,5130]
triggerall = (p2bodydist x = [-10,60-(13*(movecontact>=1))])
triggerall = (p2dist y >= -60 - (enemynear,vel y*6))
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -60
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*9) + (enemynear, pos y) <= -17 ) || (p2stateno != [5030,5129])
triggerall = statetype != A
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 6 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
triggerall = (prevstateno != [1400,1420])
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = var(9)
trigger1 = ctrl || (movehit>10)
var(52) =  1400
ignorehitpause = 1

[State AI, Consider Clawing]
type = VarSet
triggerall = !(var(42) & floor(exp(4*ln(2)) + 0.5))
triggerall = roundstate = 2
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+fvar(35)) && (var(52)!=[200,250]) && (var(52)!=[400,650]) )
triggerall = fvar(35)
triggerall = random < (0.47*(fvar(35)*fvar(35)*fvar(35))) * ifelse(movehit||p2statetype=C,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 64)
triggerall = p2stateno != [5080,5130]
triggerall = (p2bodydist x = [-10,120-(18*(movecontact>=1))])
triggerall = (p2dist y >= -40 - (enemynear,vel y*18))
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -15
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*9) + (enemynear, pos y) <= -17 ) || (p2stateno != [5030,5129])
triggerall = statetype != A
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 18 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
triggerall = (prevstateno != [1400,1420])
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = var(9)
trigger1 = ctrl || (movehit>10) || (moveguarded>10&&p2statetype=C)
var(52) =  1410
ignorehitpause = 1

[State AI, Consider Raiden Flipping]
type = VarSet
triggerall = !(var(42) & floor(exp(5*ln(2)) + 0.5))
triggerall = roundstate = 2
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+fvar(35)) && (var(52)!=[200,250]) && (var(52)!=[400,650]) )
triggerall = fvar(35)
triggerall = random < (0.51*(fvar(35)*fvar(35)*fvar(35))) * ifelse(movehit||p2statetype=C,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0)
triggerall = p2stateno != [5080,5130]
triggerall = (p2bodydist x = [-6,260-(9*(movecontact>=1))])
triggerall = (p2dist y >= -200 - (enemynear,vel y*9))
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*9) + (enemynear, pos y) <= -17 ) || (p2stateno != [5030,5129])
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -5
triggerall = statetype != A
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 8 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
triggerall = (prevstateno != [1500,1520])
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = var(9)
trigger1 = ctrl || (movehit>10)
var(52) =  ifelse(p2bodydist x<=200,1500,1510)
ignorehitpause = 1
[State AI, Consider Completing The Liu Kang]
type = VarSet
triggerall = roundstate = 2
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(fvar(35)*2)
triggerall = fvar(35)
triggerall = random < (1*(fvar(35)*fvar(35)*fvar(35))) * ifelse(movehit,2,1)
triggerall = p2stateno != [5080,5180]
triggerall = (p2bodydist x = [ifelse(p2statetype!=A,-5,-8),35])
triggerall = p2dist y >= -200 - (enemynear,vel y*8)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -70
triggerall = statetype != A
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
trigger1 = stateno = [1500,1560]
trigger1 = anim = 1501 || anim = 1551
trigger1 = animelemtime(3) > 0
trigger1 = !moveguarded
var(52) = 1502
ignorehitpause = 1
[State AI, Consider Completing SLAM]
type = VarSet
triggerall = roundstate = 2
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(fvar(35)*2)
triggerall = fvar(35)
triggerall = random < (1*(fvar(35)*fvar(35)*fvar(35))) * ifelse(movehit,2,1)
triggerall = p2stateno != [5080,5180]
triggerall = (p2bodydist x = [ifelse(p2statetype!=A,-10,-22),360-(13*(movecontact>=1))])
triggerall = (p2dist y >= -60 - (enemynear,vel y*14))
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -25
triggerall = statetype != A
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
trigger1 = stateno = [1500,1560]
trigger1 = anim = 1551
trigger1 = animelemtime(3) > 0
trigger1 = !moveguarded
var(52) = 1503
ignorehitpause = 1
[State AI, Consider Reverse Raiden Flipping]
type = VarSet
triggerall = !(var(42) & floor(exp(7*ln(2)) + 0.5))
triggerall = roundstate = 2
triggerall = numenemy
triggerall = backedgebodydist >= 100
triggerall = var(52) = 0 || ( (random < 80+fvar(35)) && (var(52)!=[200,250]) && (var(52)!=[400,650]) )
triggerall = fvar(35)
triggerall = random < (0.16*(fvar(35)*fvar(35)*fvar(35))) * ifelse(movehit||p2statetype=C,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0)
triggerall = p2stateno != [5080,5130]
triggerall = (p2bodydist x = [-16,100-(9*(movecontact>=1))])
triggerall = (p2dist y >= -200 - (enemynear,vel y*9))
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*9) + (enemynear, pos y) <= -17 ) || (p2stateno != [5030,5129])
triggerall = statetype != A
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 8 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
triggerall = (prevstateno != [1500,1520])
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = var(9)
trigger1 = ctrl || (movecontact>10)
var(52) =  1550
ignorehitpause = 1

[State AI, Consider Headbutt]
type = VarSet
triggerall = !(var(42) & floor(exp(1*ln(2)) + 0.5))
triggerall = !numtarget(515)
triggerall = roundstate = 2
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+fvar(35)) && (var(52)!=[200,250]) && (var(52)!=[400,650]) )
triggerall = fvar(35)
triggerall = random < (0.51*(fvar(35)*fvar(35)*fvar(35))) * ifelse(movehit||p2statetype=C,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 64)
triggerall = p2stateno != [5080,5130]
triggerall = (p2bodydist x = [10,230-(13*(movecontact>=1))])
triggerall = (p2dist y >= -160 - (enemynear,vel y*11))
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*9) + (enemynear, pos y) <= -17 ) || (p2stateno != [5030,5129])
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -30
triggerall = statetype != A
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 13 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
triggerall = (prevstateno != [1100,1120])
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = var(9)
trigger1 = ctrl || (movecontact>10)
var(52) =  ifelse(p2bodydist x<=115,1100,1110)
ignorehitpause = 1

[State AI, Consider Shoulder]
type = VarSet
triggerall = !(var(42) & floor(exp(0*ln(2)) + 0.5))
triggerall = !numtarget(505)
triggerall = roundstate = 2
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+fvar(35)) && (var(52)!=[200,250]) && (var(52)!=[400,650]) )
triggerall = fvar(35)
triggerall = random < (0.51*(fvar(35)*fvar(35)*fvar(35))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 64)
triggerall = p2stateno != [5080,5130]
triggerall = (p2bodydist x = [ifelse(p2statetype!=A,-10,-22),360-(13*(movecontact>=1))])
triggerall = (p2dist y >= -60 - (enemynear,vel y*11))
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*9) + (enemynear, pos y) <= -17 ) || (p2stateno != [5030,5129])
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -20
triggerall = statetype != A
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 15 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
triggerall = (prevstateno != [1000,1020])
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = var(9)
trigger1 = ctrl || (movehit>10)
var(52) = ifelse(p2bodydist x<=220,1000,1010)
ignorehitpause = 1

[State AI, Consider Energy Balls]
type = VarSet
triggerall = !(var(42) & floor(exp(2*ln(2)) + 0.5))
triggerall = roundstate = 2
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+fvar(35)) && (var(52)!=[200,250]) && (var(52)!=[400,650]) )
triggerall = fvar(35)
triggerall = random < (0.51*(fvar(35)*fvar(35)*fvar(35))) * ifelse(movehit||p2statetype=A,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 64)
triggerall = p2stateno != [5120,5129]
triggerall = !numhelper(1200)
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*9) + (enemynear, pos y) <= -17 ) || (p2stateno != [5030,5129])
triggerall = statetype != A
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 13 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
triggerall = (prevstateno != [1200,1220])
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = var(9)
trigger1 = ctrl || (movecontact>10)
var(52) = ifelse(random<500,1200,1210)
ignorehitpause = 1

[State AI, Consider Mid-Air Energy Balls]
type = VarSet
triggerall = roundstate = 2
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+fvar(35)) && (var(52)!=[200,250]) && (var(52)!=[400,650]) )
triggerall = fvar(35)
triggerall = random < (0.4*(fvar(35)*fvar(35)*fvar(35))) * ifelse(movehit||p2statetype=A,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0)
triggerall = p2stateno != [5120,5129];[5080,5130]
triggerall = !numhelper(1200)
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*9) + (enemynear, pos y) <= -17 ) || (p2stateno != [5030,5129])
triggerall = statetype = A
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 13 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
triggerall = (prevstateno != [1200,1220])
trigger1 = ctrl
var(52) = ifelse(random<500,1300,1310)
ignorehitpause = 1

[State AI, Consider EASY MODE]
type = VarSet
triggerall = roundstate = 2
triggerall = numenemy
triggerall = var(52) = 0 || random < 140+fvar(35)
triggerall = fvar(35)
triggerall = random < (0.35*(fvar(35)*fvar(35)*fvar(35))) * ifelse(moveguarded,2,1) + ((lifemax - life)/8)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0); || (random < 32)
triggerall = statetype != A
triggerall = p2bodydist x >= 128
triggerall = life <= 280 || life <= p2life - 280
triggerall = power >= 1000
triggerall =(p2movetype = H) || (enemynear, ctrl = 0) || (enemynear, statetype = A) || (random < 80)
triggerall = prevstateno != [2300,2302]
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*6) + (enemynear, pos y) <= -4 ) || (p2stateno != [5030,5129])
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
trigger1 = ctrl || stateno = 100
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 250
trigger2 = var(9) || stateno = 1000 || stateno = 1010 || stateno = 1200 || stateno = 1210 || stateno = 1400 || stateno = 1410 || (stateno = [1500,1560]) || stateno = 1101
trigger2 = moveguarded >= 7
var(52) = 2300
ignorehitpause = 1

[State AI, Consider EASY]
type = VarSet
triggerall = roundstate = 2
triggerall = numenemy
triggerall = var(52) = 0 || random < 140+fvar(35)
triggerall = fvar(35)
triggerall = random < (0.35*(fvar(35)*fvar(35)*fvar(35))) * ifelse(moveguarded,2,1) + ((lifemax - life)/8)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0); || (random < 32)
triggerall = statetype != A
triggerall = power >= 2000
triggerall = !numhelper(2100)
triggerall =(p2movetype = H) || (enemynear, ctrl = 0) || (enemynear, statetype = A) || (random < 80)
triggerall = prevstateno != [2100,2102]
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*6) + (enemynear, pos y) <= -4 ) || (p2stateno != [5030,5129])
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
triggerall = !ishelper
trigger1 = ctrl || stateno = 100
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 250
trigger2 = var(9) || stateno = 1000 || stateno = 1010 || stateno = 1200 || stateno = 1210 || stateno = 1400 || stateno = 1410 || (stateno = [1500,1560]) || stateno = 1600 || stateno = 1610 || stateno = 1101
trigger2 = moveguarded >= 7
var(52) = 2100
ignorehitpause = 1

[State AI, Consider super tatsumaki]
type = VarSet
triggerall = roundstate = 2
triggerall = numenemy
triggerall = var(52) = 0 || random < 140+fvar(35)
triggerall = fvar(35)
triggerall = random < (0.35*(fvar(35)*fvar(35)*fvar(35))) * ifelse(movehit||p2statetype=C,2,1) + ((lifemax - life)/8)
;triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 32)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x <= 70
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -90
triggerall = statetype != A
triggerall = power >= 1000
triggerall =(p2movetype = H) || (enemynear, ctrl = 0) || (enemynear, statetype = A) || (random < 80)
triggerall = prevstateno != [2000,2002]
triggerall = p2stateno != [120,156]
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*6) + (enemynear, pos y) <= -4 ) || (p2stateno != [5030,5129])
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 8 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
triggerall = !ishelper
trigger1 = ctrl || stateno = 100
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 250
trigger2 = var(9) || stateno = 1000 || stateno = 1010 || stateno = 1200 || stateno = 1210 || stateno = 1400 || stateno = 1410 || (stateno = [1500,1560]) || stateno = 1101
trigger2 = movehit > 6
var(52) = 2200
ignorehitpause = 1
[State AI, Steer it]
type = VarSet
triggerall = roundstate = 2
triggerall = numenemy
triggerall = var(52) = 0 || random < 140+fvar(35)
triggerall = fvar(35)
triggerall = stateno = 2200
triggerall = anim = 2200
triggerall = abs(p2bodydist x)>32
trigger1 = time 
var(52) = ifelse(p2dist x>=0,2201,2202)
ignorehitpause = 1

[State AI, Consider the mantis attack]
type = VarSet
triggerall = roundstate = 2
triggerall = numenemy
triggerall = var(52) = 0 || random < 140+fvar(35)
triggerall = fvar(35)
triggerall = random < (0.35*(fvar(35)*fvar(35)*fvar(35))) * ifelse(movehit||p2statetype=C,2,1) + ((lifemax - life)/8)
;triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 32)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x >= 64 || p2bodydist y <= -64
triggerall = statetype != A
triggerall = power >= 1000
triggerall =(p2movetype = H) || (enemynear, ctrl = 0) || (enemynear, statetype = A) || (random < 80)
triggerall = prevstateno != [2000,2002]
triggerall = p2stateno != [120,156]
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*6) + (enemynear, pos y) <= -4 ) || (p2stateno != [5030,5129])
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 8 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
triggerall = !ishelper
trigger1 = ctrl || stateno = 100
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 250
trigger2 = var(9) || stateno = 1000 || stateno = 1010 || stateno = 1200 || stateno = 1210 || stateno = 1400 || stateno = 1410 || (stateno = [1500,1560]) || stateno = 1101
trigger2 = movehit > 6
var(52) = 2000
ignorehitpause = 1


[State AI, Consider jumping in]
type = VarSet
triggerall = roundstate = 2
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+fvar(35) + (100*(stateno = 410))
triggerall = fvar(35)
triggerall = p2stateno != [5080,5130]
;triggerall = statetype != A || stateno = 410
triggerall = p2statetype = A && p2movetype = H
triggerall = (enemynear, pos y <= -45) || (stateno = 410)
trigger1 = ctrl || stateno = 100 || stateno = 40
trigger2 = stateno = 410 || stateno = 236
trigger2 = movecontact > 8
var(52) = ifelse(p2bodydist x>=20,ifelse(p2bodydist x>=160,1500,41),42)
ignorehitpause = 1

[State AI, Consider Moving Around Evasively]
type = VarSet
triggerall = roundstate = 2
triggerall = ailevel
triggerall = var(52) = 0 || random < 80+fvar(35)
triggerall = random < (0.21*(fvar(35)*fvar(35)*fvar(35))) * ifelse(moveguarded||inguarddist,2,1)
;triggerall = p2bodydist x >= 45
triggerall = (p2movetype != H) || (p2stateno = [120,159])
triggerall = statetype != A
triggerall = time >= 7-fvar(35) || random < 10
triggerall = prevstateno != [700,701]
trigger1 = stateno != 40
trigger1 = stateno != 100
trigger1 = stateno != 20
trigger1 = stateno != [10,12]
trigger1 = ctrl
trigger2 = var(9)
trigger2 = moveguarded
trigger2 = power >= 1500
trigger2 = p2movetype = A
trigger3 = stateno = 151 || stateno = 153
trigger3 = power >= ifelse(life<p2life,500,1500)
var(52) = ifelse(command="holdback",701,700)
ignorehitpause = 1

[State AI, Guard S]
type = ChangeState
triggerall = !ishelper
triggerall = roundstate = 2
triggerall = fvar(35)
triggerall = stateno != 40
triggerall = random < (1*(fvar(35)*fvar(35)*fvar(35)))
triggerall = (fvar(35)) && (StateType != A) && (Ctrl) && (EnemyNear, Facing != Facing) && (var(50)<40)
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 14-(fvar(35)*2)))
trigger1 = (P2StateType != C) && (((P2MoveType = A) && (inguarddist)) || (EnemyNear, NumProj > 0))
trigger2 = enemynear,var(54) = [1,90]
value = ifelse(random<50&&(stateno!=[120,159])&&(stateno!=[700,705]),ifelse(random<500,700,701),130)
;value = ifelse(random<50&&(stateno!=[120,159])&&p2bodydist x<=32,1100,130)

[State AI, Guard L]
type = ChangeState
triggerall = !ishelper
triggerall = roundstate = 2
triggerall = fvar(35)
triggerall = stateno != 40
triggerall = random < (1*(fvar(35)*fvar(35)*fvar(35)))
triggerall = (fvar(35)) && (StateType != A) && (Ctrl) && (EnemyNear, Facing != Facing) && (var(50)<40)
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 14-(fvar(35)*2)))
trigger1 = (P2StateType = C) && (((P2MoveType = A) && (inguarddist)) || (EnemyNear, NumProj > 0))
;value = ifelse(random<50&&(stateno!=[120,159])&&p2bodydist x<=32,1100,131)
value = ifelse(random<50&&(stateno!=[120,159])&&(stateno!=[700,705]),ifelse(random<500,700,701),131)
;value = ifelse(random<50&&(stateno!=[120,159])&&(stateno!=[700,705]),ifelse(random<500,700,705),131)


;===========================================================================
;AI END HERE

[State -1, Lv2. Super]
type = ChangeState
value = 2300
triggerall = (fvar(35)<5 && ifelse((anim!=[5,6]),command = "QCBx2K",command = "QCFx2K")) || (var(52) = [2300,2301])
;triggerall = command = "holddown" || statetype = A
triggerall = power >= 2000
trigger1 = power >= 1000
trigger1 = var(9) || (stateno = [1000,1020]) || (stateno = [1200,1220]) || (stateno = 2200 && time >= 64) || (stateno = [1500,1570]) || (stateno = [1400,1410]) || stateno = 1600 || stateno = 1610 || stateno = 1101
trigger2 = ishelper
trigger2 = parent,stateno = 2300
trigger2 =  var(9) || (stateno = [1000,1020]) || (stateno = [1200,1220]) || (stateno = 2200 && time >= 64) || (stateno = [1500,1570]) || (stateno = [1400,1410]) || stateno = 1600 || stateno = 1610 || stateno = 1101


[State -1, Super]
type = ChangeState
value = 2100
triggerall = (fvar(35)<5 && ifelse((anim!=[5,6]),command = "QCFx2K",command = "QCBx2K")) || (var(52) = [2100,2101])
;triggerall = command = "holddown" || statetype = A
triggerall = !numhelper(2100)
triggerall = power >= 1000
trigger1 = var(9)
trigger2 =  var(9) || (stateno = [1000,1020]) || (stateno = [1200,1220]) || (stateno = 2200 && time >= 64) || (stateno = [1500,1570]) || (stateno = [1400,1410]) || stateno = 1600 || stateno = 1610 || stateno = 1101
trigger3 = stateno = 1200
trigger3 = statetype != A
trigger3 = time >= 12

[State -1, Super]
type = ChangeState
value = 2200
triggerall = (fvar(35)<5 && ifelse((anim!=[5,6]),command = "QCBx2P",command = "QCFx2P")) || (var(52) = [2200,2201])
triggerall = statetype != A
trigger1 = power >= 1000
trigger1 = var(9) || (stateno = [1000,1020]) || (stateno = [1200,1220]) || (stateno = 2001 && time >= 4) || (stateno = [1500,1570]) || (stateno = [1400,1410]) || stateno = 1600 || stateno = 1610 || stateno = 1101
trigger2 = ishelper
trigger2 = parent,stateno = 2200
trigger2 = var(9) || (stateno = [1000,1020]) || (stateno = [1200,1220]) || (stateno = 2001 && time >= 4) || (stateno = [1500,1570]) || (stateno = [1400,1410]) || stateno = 1600 || stateno = 1610 || stateno = 1101


[State -1, Super]
type = ChangeState
value = 2000
triggerall = (fvar(35)<5 && ifelse((anim!=[5,6]),command = "QCFx2P",command = "QCBx2P")) || (var(52) = [2000,2001])
triggerall = statetype != A
trigger1 = power >= 1000
trigger1 = var(9) || (stateno = [1000,1020]) || (stateno = [1200,1220]) || (stateno = 2200 && time >= 64) || (stateno = [1500,1570]) || (stateno = [1400,1410]) || stateno = 1600 || stateno = 1610 || stateno = 1101
trigger2 = ishelper
trigger2 = parent,stateno = 2000
trigger2 =  var(9) || (stateno = [1000,1020]) || (stateno = [1200,1220]) || (stateno = 2200 && time >= 64) || (stateno = [1500,1570]) || (stateno = [1400,1410]) || stateno = 1600 || stateno = 1610 || stateno = 1101

[State -1, Drill]
type = ChangeState
value = 1400
triggerall = (fvar(35) < 5 && ifelse((anim !=[5,6]),command = "QCF_x",command="QCB_x")) || var(52) = 1400
trigger1 = var(9)
[State -1, Claw]
type = ChangeState
value = 1410
triggerall = (fvar(35) < 5 && ifelse((anim !=[5,6]),command = "QCF_y",command="QCB_y")) || var(52) = 1410
trigger1 = var(9)

[State -1, Skaarj 1]
type = ChangeState
value = 1200
triggerall = (fvar(35) < 5 && ifelse((anim !=[5,6]),command = "QCB_x",command="QCF_x")) || var(52) = 1200
trigger1 = var(9)
[State -1, Skaarj 2]
type = ChangeState
value = 1210
triggerall = (fvar(35) < 5 && ifelse((anim !=[5,6]),command = "QCB_y",command="QCF_y")) || var(52) = 1210
trigger1 = var(9)

[State -1, Flipt]
type = ChangeState
value = 1500
triggerall = (fvar(35) < 5 && ifelse((anim !=[5,6]),command = "upper_a",command="rupper_a")) || var(52) = 1500
trigger1 = var(9)
[State -1, Flipt]
type = ChangeState
value = 1510
triggerall = (fvar(35) < 5 && ifelse((anim !=[5,6]),command = "upper_b",command="rupper_b")) || var(52) = 1510
trigger1 = var(9)
[State -1, R-Flipt]
type = ChangeState
value = 1550
triggerall = (fvar(35) < 5 && ifelse((anim !=[5,6]),command = "rupper_a",command="upper_a")) || var(52) = 1550
trigger1 = var(9)
[State -1, R-Flipt]
type = ChangeState
value = 1550
triggerall = (fvar(35) < 5 && ifelse((anim !=[5,6]),command = "rupper_b",command="upper_b")) || var(52) = 1560
trigger1 = var(9)

[State -1, Bike]
type = ChangeState
value = 1600
triggerall = (fvar(35) < 5 && ifelse((anim !=[5,6]),command = "QCB_a",command="QCF_a")) || var(52) = 1600
trigger1 = var(9)
[State -1, Bike]
type = ChangeState
value = 1610
triggerall = (fvar(35) < 5 && ifelse((anim !=[5,6]),command = "QCB_b",command="QCF_b")) || var(52) = 1610
trigger1 = var(9)

[State -1, Shoulder]
type = ChangeState
value = 1000
triggerall = (fvar(35) < 5 && ifelse((anim !=[5,6]),command = "DBF_a",command="DFB_a")) || var(52) = 1000
trigger1 = var(9)
[State -1, Shoulder 2]
type = ChangeState
value = 1010
triggerall = (fvar(35) < 5 && ifelse((anim !=[5,6]),command = "DBF_b",command="DFB_b")) || var(52) = 1010
trigger1 = var(9)

[State -1, Shoryuken]
type = ChangeState
value = 1100
triggerall = (fvar(35) < 5 && command = "DU_x") || var(52) = 1100
trigger1 = var(9)

[State -1, Shoryuken]
type = ChangeState
value = 1110
triggerall = (fvar(35) < 5 && command = "DU_y") || var(52) = 1110
trigger1 = var(9)


[State -1, Aerial Skaarj]
type = ChangeState
value = 1300
triggerall = (fvar(35) < 5 && command = "UQCF_x") || var(52) = 1300
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 610 || stateno = 630 || stateno = 640

[State -1, Aerial Skaarj]
type = ChangeState
value = 1310
triggerall = (fvar(35) < 5 && command = "UQCF_y") || var(52) = 1310
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 610 || stateno = 630 || stateno = 640

[State -1, Throw]
type = ChangeState
value = 800
triggerall = (fvar(35) < 5 && command = "throw") || var(52) = 800
triggerall = statetype != A
trigger1 = stateno != 100
trigger1 = var(9)
trigger1 = stateno != 220
trigger1 = ctrl || time = [0,4]
[State -1, Kick Throw]
type = ChangeState
value = 840
triggerall = (fvar(35) < 5 && command = "kthrow") || var(52) = 840
triggerall = statetype != A
trigger1 = stateno != 100
trigger1 = var(9)
trigger1 = stateno != 220
trigger1 = ctrl || time = [0,4]

[State -1, N.C]
type = ChangeState
value = 220
triggerall = (fvar(35) < 5 && command = "hphk") || var(52) = 220
trigger1 = var(9)
trigger1 = stateno != [220,221]

[State -1, Counter->C]
type = ChangeState
value = 730
triggerall = (fvar(35) < 5 && command = "hphk") || var(52) = [730,734]
triggerall = power >= 500
trigger1 = stateno = 150 || stateno = 152
trigger1 = time = [0,3]
[State -1, Counter->C]
type = ChangeState
value = 731
triggerall = (fvar(35) < 5 && command = "hphk") || var(52) = [730,734]
triggerall = power >= 500
trigger1 = stateno = 154
trigger1 = time = [0,3]


[State -1, Dodge Forward]
type = ChangeState
value = 700
triggerall = (ailevel < 5 && command = "lplk" && command != "holdback") || var(52) = 700
triggerall = statetype != A
trigger1 = ctrl
trigger2 = power >= 500
trigger2 = var(9)
trigger2 = stateno != 220
trigger3 = power >= 500
trigger3 = stateno = [150,153]
trigger3 = statetype != A

[State -1, Dodge Backward]
type = ChangeState
value = 701
triggerall = (ailevel < 5 && command = "lplk" && command = "holdback") || var(52) = 701
triggerall = statetype != A
trigger1 = ctrl
trigger2 = power >= 500
trigger2 = var(9)
trigger2 = stateno != 220
trigger3 = power >= 500
trigger3 = stateno = [150,153]
trigger3 = statetype != A

;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = (ailevel < 5 && command = "FF") || var(52) = 100
triggerall = stateno != [100,105]
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = (ailevel < 5 && command = "BB") || var(52) = 105
triggerall = stateno != [100,105]
trigger1 = statetype = S
trigger1 = ctrl

;===========================================================================
;Stand Overhead
[State -1, Stand Overhead]
type = ChangeState
value = 208
triggerall = (fvar(35) < 5 && (command = "x" && command = "holdback" && command != "holddown")) || var(52) = 208
trigger1 = statetype != A
trigger1 = ctrl || (stateno = 100 && time)
trigger2 = (stateno = 200) || (stateno = 210 && anim != 210) || (stateno = 204 && anim != 206) || (stateno = 230 && anim = 231) || (stateno = 240 && anim = 241) || (stateno = 400 && anim = 400) || (stateno = 216) || (stateno = 260 && anim = 261 && animelemtime(8) > 0)
trigger2 = time > 12 || movecontact

;===========================================================================
;Stand Santana Rush
[State -1, Stand Santana]
type = ChangeState
value = 204
triggerall = (fvar(35) < 5 && (command = "x" && command = "holdfwd" && command != "holddown")) || var(52) = 204
trigger1 = statetype != A
trigger1 = ctrl || (stateno = 100 && time)
trigger2 = (stateno = 200) || (stateno = 210 && anim != 210) || (stateno = 400 && anim = 400) || (stateno = 204 && anim != 206) || (stateno = 230 && anim = 231) || (stateno = 240 && anim = 241)
trigger2 = time > 12 || movecontact

;===========================================================================
;Stand Guile Kick
[State -1, Stand Guile Kick]
type = ChangeState
value = 235
triggerall = (fvar(35) < 5 && (command = "a" && command = "holdfwd" && command != "holddown")) || var(52) = 235
trigger1 = statetype != A
trigger1 = ctrl || (stateno = 100 && time)
trigger2 = stateno = 200 || (stateno = 204 && anim != 206) || stateno = 210 || stateno = 400 || stateno = 430 || stateno = 236 || stateno = 230 || stateno = 240
trigger2 = time > 12 || movecontact

;===========================================================================
;Stand Sakura Kick
[State -1, Stand Sakura Kick]
type = ChangeState
value = 236
triggerall = (fvar(35) < 5 && (command = "a" && (command = "holdback" || anim = 202) && command != "holddown")) || var(52) = 236
trigger1 = statetype != A
trigger1 = ctrl || (stateno = 100 && time)
trigger2 = (stateno = 200) || (stateno = 210 && anim = 211) || (stateno = 204 && anim != 206) || (stateno = 230 && anim = 231) || (stateno = 400 && anim = 400) || (stateno = 240 && anim = 241) || (stateno = 260 && anim = 261 && animelemtime(8) > 0)
trigger2 = time > 12 || movecontact

;---------------------------------------------------------------------------
;Stand Light Punch
;Stand Light Punch
[State -1, Stand Punch]
type = ChangeState
value = 200
triggerall = (fvar(35) < 5 && (command = "x" && command != "holddown")) || var(52) = 200
trigger1 = statetype != A
trigger1 = ctrl || (stateno = 100 && time)
trigger2 = stateno = 200 && (anim = 200 || anim = 201) || (stateno = 400 && anim = 400)
trigger2 = time > 12 || movecontact

[State -1, Stand Punch]
type = ChangeState
value = 210
triggerall = (fvar(35) < 5 && (command = "y" && command != "holddown")) || var(52) = 210
trigger1 = statetype != A
trigger1 = ctrl || (stateno = 100 && time)
trigger2 = (stateno = 200 && anim != 202) || (stateno = 210 && (anim = 211 || anim = 291)) || (stateno = 400 && anim = 400)
trigger2 = time > 12 || movecontact

;Stand Light Punch
[State -1, Stand Kick]
type = ChangeState
value = 230
triggerall = (fvar(35) < 5 && (command = "a" && command != "holddown")) || var(52) = 230
trigger1 = statetype != A
trigger1 = ctrl || (stateno = 100 && time)
trigger2 = (stateno = 200 && anim != 202) || (stateno = 210 && anim = 211) || (stateno = 400 && anim = 400) || (stateno = 204 && anim != 206)
trigger2 = time > 12 || movecontact

;Stand Light Punch
[State -1, Stand Kick]
type = ChangeState
value = 240
triggerall = (fvar(35) < 5 && (command = "b" && command != "holddown")) || var(52) = 240
trigger1 = statetype != A
trigger1 = ctrl || (stateno = 100 && time)
trigger2 = (stateno = 200 && anim != 202) || (stateno = 210 && anim = 211) || (stateno = 400 && anim = 400) || (stateno = 204 && anim != 206)
trigger2 = time > 12 || movecontact

[State -1, Taunt]
type = ChangeState
value = 195
triggerall = (command = "start") || (var(52) = [195,196]) || (ailevel && winko && !var(48))
triggerall = stateno != 195
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Slide
[State -1, Crouching Uppercut]
type = ChangeState
value = 410
triggerall = (fvar(35) < 5 && (command = "y" && command = "holddown")) || var(52) = 410
trigger1 = statetype != A
trigger1 = ctrl || (stateno = 100 && time)
trigger2 = (stateno = 200 && anim != 202) || (stateno = 210 && anim = 211) || (stateno = 400 && anim = 400) || (stateno = 204 && anim != 206) || (stateno = 230 && anim = 231)
trigger2 = time > 12 || movecontact

;---------------------------------------------------------------------------
;Crouching Slide
[State -1, Crouching Slide Kick]
type = ChangeState
value = 440
triggerall = (fvar(35) < 5 && (command = "b" && command = "holddown")) || var(52) = 440
trigger1 = statetype != A
trigger1 = ctrl || (stateno = 100 && time)
trigger2 = (stateno = 200 && anim != 202) || (stateno = 210 && anim = 211) || (stateno = 400 && anim = 400) || (stateno = 204 && anim != 206)
trigger2 = time > 12 || movecontact

;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Punch]
type = ChangeState
value = 400
triggerall = (fvar(35) < 5 && (command = "x" && command = "holddown")) || var(52) = 400
trigger1 = statetype != A
trigger1 = ctrl || (stateno = 100 && time)
trigger2 = (stateno = 200 && anim != 202) || (stateno = 400 && anim = 400)
trigger2 = time > 12 || movecontact

;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Kick]
type = ChangeState
value = 430
triggerall = (fvar(35) < 5 && (command = "a" && command = "holddown")) || var(52) = 430
trigger1 = statetype != A
trigger1 = ctrl || (stateno = 100 && time)
trigger2 = (stateno = 200 && anim != 202) || (stateno = 210 && anim = 211) || (stateno = 400 && anim = 400)
trigger2 = time > 12 || movecontact

;---------------------------------------------------------------------------
;Jump Light Punch
;Jump Light Punch
[State -1, Jump Punch]
type = ChangeState
value = 620
triggerall = (fvar(35) < 5 && command = "hphk") || var(52) = 620
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630
trigger2 = time > 9

[State -1, Jump Dhalsim]
type = ChangeState
value = 605
triggerall = (fvar(35) < 5 && command = "holddown" && command = "x") || var(52) = 605
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630
trigger2 = time > 9

[State -1, Jump Dhalsim]
type = ChangeState
value = 635
triggerall = (fvar(35) < 5 && command = "holddown" && command = "a") || var(52) = 635
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630
trigger2 = time > 9

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Punch]
type = ChangeState
value = 600
triggerall = (fvar(35) < 5 && command = "x") || var(52) = 600
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump Punch]
type = ChangeState
value = 610
triggerall = (fvar(35) < 5 && command = "y") || var(52) = 610
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630
trigger2 = time > 9

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Kick]
type = ChangeState
value = 630
triggerall = (fvar(35) < 5 && command = "a") || var(52) = 630
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump Kick]
type = ChangeState
value = 640
triggerall = (fvar(35) < 5 && command = "b") || var(52) = 640
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630
trigger2 = time > 9


[State -1, Air combo lol]
type = ChangeState
value = ifelse(statetype=A,45,40)
triggerall = (command = "holdup") || var(52) = [40,45]
trigger1 = fvar(35)
trigger1 = stateno != 40
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100 || stateno = 105
trigger3 = stateno = 236 || stateno = 410
trigger3 = movehit > 6
trigger4 = stateno = 260 && anim = 261 && animelemtime(8) > 0

[State -1, Dance With Me]
type = ChangeState
value = 180
trigger1 = stateno = [0,12]
trigger1 = ishelper
trigger1 = parent,stateno = [180,189]

[State -1, Die With Me]
type = ChangeState
value = 2109
trigger1 = stateno != 2109
trigger1 = ishelper
trigger1 = (parent,lose)



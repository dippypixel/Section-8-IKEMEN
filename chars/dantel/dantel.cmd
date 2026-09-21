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
name = "QCBHCF_P"
command = ~D, DB, B, DB, D, DF, F, x
time = 20

[Command]
name = "QCF_2p"
command = ~D, DF, F, x+y

[Command]
name = "QCF_2p"
command = ~D, DF, F, y+z

[Command]
name = "QCF_2p"
command = ~D, DF, F, x+z

[Command]
name = "QCB_2p"
command = ~D, DB, B, x+y

[Command]
name = "QCB_2p"
command = ~D, DB, B, y+z

[Command]
name = "QCBx2_2p"
command = ~D, DB, B, D, DB, B, x+y
time = 20

[Command]
name = "QCBx2_2p"
command = ~D, DB, B, D, DB, B, y+z
time = 20

[Command]
name = "QCBx2_2p"
command = ~D, DB, B, D, DB, B, x+z
time = 20

[Command]
name = "QCFx2_2p"
command = ~D, DF, F, D, DF, F, x+y
time = 20

[Command]
name = "QCFx2_2p"
command = ~D, DF, F, D, DF, F, y+z
time = 20

[Command]
name = "QCFx2_2p"
command = ~D, DF, F, D, DF, F, x+z
time = 20

[Command]
name = "QCBHCF_2p"
command = ~D, DB, B, DB, D, DF, F, x+y
time = 20

[Command]
name = "QCBHCF_2p"
command = ~D, DB, B, DB, D, DF, F, y+z
time = 20

[Command]
name = "QCBHCF_2p"
command = ~D, DB, B, DB, D, DF, F, x+z
time = 20

[Command]
name = "QCFHCB_2p"
command = ~D, DF, F, DF, D, DB, B, x+y
time = 20

[Command]
name = "QCFHCB_2p"
command = ~D, DF, F, DF, D, DB, B, y+z
time = 20

[Command]
name = "QCFHCB_2p"
command = ~D, DF, F, DF, D, DB, B, x+z
time = 20

[Command]
name = "QCBHCF_2p"
command = ~D, B, D, F, x+y
time = 20

[Command]
name = "QCBHCF_2p"
command = ~D, B, D, F, y+z
time = 20

[Command]
name = "QCBHCF_2p"
command = ~D, B, D, F, x+z
time = 20

[Command]
name = "QCFHCB_2p"
command = ~D, F, D, B, x+y
time = 20

[Command]
name = "QCFHCB_2p"
command = ~D, F, D, B, y+z
time = 20

[Command]
name = "QCFHCB_2p"
command = ~D, F, D, B, x+z
time = 20

[Command]
name = "QCF_2k"
command = ~D, DF, F, a+b

[Command]
name = "QCF_2k"
command = ~D, DF, F, b+c

[Command]
name = "QCF_2k"
command = ~D, DF, F, b+c

[Command]
name = "QCB_2k"
command = ~D, DB, B, a+b

[Command]
name = "QCB_2k"
command = ~D, DB, B, b+c

[Command]
name = "QCB_2k"
command = ~D, DB, B, a+c

[Command]
name = "QCF_s"
command = ~D, DF, F, s

[Command]
name = "QCB_s"
command = ~D, DB, B, s

[Command]
name = "SGS"
command = ~x, x, F, a, z
time = 35


;-| Special Motions |------------------------------------------------------
[Command]
name = "HCB_x"
command = ~F, D, B, x

[Command]
name = "HCB_x"
command = ~F, DF, D, DB, B, x

[Command]
name = "HCB_y"
command = ~F, D, B, y

[Command]
name = "HCB_y"
command = ~F, DF, D, DB, B, y

[Command]
name = "HCB_z"
command = ~F, D, B, z

[Command]
name = "HCB_z"
command = ~F, DF, D, DB, B, z

[Command]
name = "HCF_x"
command = ~B, D, F, x

[Command]
name = "HCF_x"
command = ~B, DB, D, DF, F, x

[Command]
name = "HCF_y"
command = ~B, D, F, y

[Command]
name = "HCF_y"
command = ~B, DB, D, DF, F, y

[Command]
name = "HCF_z"
command = ~B, D, F, z

[Command]
name = "HCF_z"
command = ~B, DB, D, DF, F, z

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
name = "rupper_x"
command = ~B, D, DB, x

[Command]
name = "rupper_y"
command = ~B, D, DB, y

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
name = "QCF_xy"
command = ~D, DF, F, x+y

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
name = "QCB_xy"
command = ~D, DB, B, x+y

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
name = "DashP_x"
command = ~B, F, x

[Command]
name = "DashP_y"
command = ~B, F, y

[Command]
name = "DashP_z"
command = ~B, F, z

[Command]
name = "r_DashP_x"
command = ~F, B, x

[Command]
name = "r_DashP_y"
command = ~F, B, y

[Command]
name = "r_DashP_z"
command = ~F, B, z

[Command]
name = "RapidFistcuffs"
command = ~x,x,x
time = 20

[Command]
name = "RapidFistcuffs"
command = ~y,y,y
time = 20

[Command]
name = "RapidFistcuffs"
command = ~z,z,z
time = 20

[Command]
name = "Hurik1"
command = a+b
time = 1

[Command]
name = "Hurik2"
command = b+c
time = 1

[Command]
name = "Hurix1"
command = x+y
time = 1

[Command]
name = "Hurix2"
command = y+z
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

[Command]
name = "GunPickup"
command = D, x
time = 10
[Command]
name = "GunPickup"
command = D, y
time = 10
[Command]
name = "GunPickup"
command = D, z
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
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
;trigger2 = anim != 200
;trigger2 = anim != 210
;trigger2 = anim != 220
;trigger2 = anim != 240
;trigger2 = anim != 250
trigger2 = stateno != 445
trigger2 = stateno != 455
trigger2 = movecontact
trigger3 = stateno = 100
var(9) = 1


; AI-related stuff starts here

[State AI, RESET]
type = VarSet
trigger1 = 1;fvar(35)=0
;trigger2 = random >= (fvar(35)-8)*2
var(52) = 0
ignorehitpause = 1

[State AI, Consider backing off]
type = VarSet
triggerall = fvar(35)
triggerall = var(52) = 0 || random < 80+fvar(35)
triggerall = random < 200 + (123*(prevstateno = 440 && (p2stateno=[5070,5100]) ) )
triggerall = numenemy
triggerall = (p2stateno = [5110,5130]) || ((enemynear,time <= 10) && (enemynear,prevstateno = 5120))
triggerall = p2bodydist x <= 40
trigger1 = stateno != 40
trigger1 = ctrl
;var(52) = ifelse(backedgebodydist <= 60, 1260, ifelse(random<500,43,1250) )
var(52) = ifelse(backedgebodydist <= 60, 1260, ifelse(random<500&&(helper(10003),var(30)&& fvar(35)>=4.0),43,1250) )
ignorehitpause = 1

[State AI, Consider HeadButt]
type = VarSet
triggerall = !(var(40) & floor(exp(7*ln(2)) + 0.5))
triggerall = moveguarded != [1,8]
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(fvar(35)*2)
triggerall = fvar(35)
triggerall = random < (1*(fvar(35)*fvar(35)*fvar(35))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),30*const(size.xscale)]
triggerall = p2dist y >= -80*const(size.yscale) - (enemynear,vel y*3)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -70*const(size.yscale)
triggerall = statetype != A
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 88 || p2movetype = H
trigger1 = ctrl || stateno = 100
;trigger2 = (stateno = 200 && movecontact)
var(52) = 400 + ((random%3)*10)
ignorehitpause = 1

[State AI, Consider S. Launcher Kick]
type = VarSet
triggerall = !(var(40) & floor(exp(6*ln(2)) + 0.5))
triggerall = moveguarded != [1,8]
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(fvar(35)*2)
triggerall = fvar(35)
triggerall = random < (1*(fvar(35)*fvar(35)*fvar(35))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,-15),40*const(size.xscale)]
triggerall = p2dist y >= -130*const(size.yscale) - (enemynear,vel y*10)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -90*const(size.yscale)
triggerall = statetype != A
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 88 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 && movecontact) || (stateno = 400 && movecontact)
var(52) = 250;ifelse(random<500,240,250)
ignorehitpause = 1

[State AI, Consider S.Punch]
type = VarSet
triggerall = !(var(40) & floor(exp(1*ln(2)) + 0.5))
triggerall = moveguarded != [1,8]
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(fvar(35)*2)
triggerall = fvar(35)
triggerall = random < (1*(fvar(35)*fvar(35)*fvar(35))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),45*const(size.xscale)]
triggerall = p2dist y >= -120*const(size.yscale) - (enemynear,vel y*3)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -120*const(size.yscale)
triggerall = statetype != A
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 88 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 && movecontact)
var(52) = 200
ignorehitpause = 1

[State AI, Consider S. Kick]
type = VarSet
triggerall = !(var(40) & floor(exp(5*ln(2)) + 0.5))
triggerall = moveguarded != [1,8]
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(fvar(35)*2)
triggerall = fvar(35)
triggerall = random < (1*(fvar(35)*fvar(35)*fvar(35))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 100)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),60*const(size.xscale)]
triggerall = p2dist y >= -110*const(size.yscale) - (enemynear,vel y*6)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -100*const(size.yscale)
triggerall = statetype != A
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 88 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 && movecontact) || (stateno = 400 && movecontact)
var(52) = 230
ignorehitpause = 1


[State AI, Consider being kenshiro]
type = VarSet
triggerall = !(var(42) & floor(exp(2*ln(2)) + 0.5))
triggerall = moveguarded != [1,8]
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(fvar(35)*2) ; || ( (random < 80+fvar(35)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) )
triggerall = fvar(35)
triggerall = random < (0.9*(fvar(35)*fvar(35)*fvar(35)))
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 128)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-15,-15),100*const(size.xscale)]
triggerall = p2dist y >= -120*const(size.yscale) - (enemynear,vel y*4)
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*9) + (enemynear, pos y) <= -9 ) || (p2stateno != [5030,5120])
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -77*const(size.yscale)
triggerall = statetype != A
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 6 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
triggerall = prevstateno != 1100
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = var(9)
trigger1 = (!moveguarded)
trigger2 = stateno = 1100
var(52) = 1120
ignorehitpause = 1

[State AI, Consider S.Slash]
type = VarSet
triggerall = !(var(40) & floor(exp(3*ln(2)) + 0.5))
triggerall = moveguarded != [1,8]
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(fvar(35)*2)
triggerall = fvar(35)
triggerall = random < (1*(fvar(35)*fvar(35)*fvar(35))) * ifelse(movehit,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),110*const(size.xscale)]
triggerall = p2dist y >= -120*const(size.yscale) - (enemynear,vel y*4)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -120*const(size.yscale)
triggerall = statetype != A
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 88 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 && movecontact) || (stateno = 230 && movecontact) || (stateno = 210 && anim = 211 && movecontact) || (stateno = 400 && movecontact)
var(52) = ifelse(random<500||movehit,220,210)
ignorehitpause = 1


[State AI, Consider Slide]
type = VarSet
triggerall = !(var(41) & floor(exp(1*ln(2)) + 0.5))
triggerall = moveguarded != [1,8]
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(fvar(35)*2)
triggerall = fvar(35)
triggerall = random < (0.5*(fvar(35)*fvar(35)*fvar(35))) * ifelse(movehit||p2statetype=S,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),170*const(size.xscale)]
triggerall = p2dist y >= -10*const(size.yscale) - (enemynear,vel y*10)
triggerall = statetype != A
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 88 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger1 = stateno != [120,155]
trigger2 = (stateno = 200 && movecontact) || (stateno = 230 && movecontact) || (stateno = 400 && movecontact)
trigger2 = (!moveguarded) || (moveguarded && p2statetype = S && fvar(35)>=7)
var(52) = ifelse(random<500,430,440)
ignorehitpause = 1

[State AI, Consider Sweep]
type = VarSet
triggerall = !(var(41) & floor(exp(2*ln(2)) + 0.5))
triggerall = moveguarded != [1,8]
triggerall = numenemy
triggerall = var(52) = 0 || random < 80+(fvar(35)*2)
triggerall = fvar(35)
triggerall = random < (0.5*(fvar(35)*fvar(35)*fvar(35))) * ifelse(movehit||p2statetype=S,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 150)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,0),210*const(size.xscale)]
triggerall = p2dist y >= -10*const(size.yscale) - (enemynear,vel y*10)
triggerall = statetype != A
triggerall = helper(10003),var(8)=0 || fvar(35)>4.0
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 88 || p2movetype = H
trigger1 = ctrl || stateno = 100
trigger1 = stateno != [120,155]
trigger2 = (stateno = 200 && movecontact) || (stateno = 230 && movecontact) || (stateno = 400 && movecontact)
trigger2 = (!moveguarded) || (moveguarded && p2statetype = S && fvar(35)>=7)
var(52) = 450
ignorehitpause = 1

[State AI, J.Slash]
type = Varset
triggerall = !(var(41) & floor(exp(5*ln(2)) + 0.5))
triggerall = moveguarded != [1,8]
triggerall = numenemy
triggerall = var(52) = 0 || random < 123
triggerall = fvar(35)
triggerall = p2bodydist x = [-36*const(size.xscale) +(enemynear,vel x*2),ifelse(vel x=0,49,68)*const(size.xscale) +(enemynear,vel x*2)]
triggerall = p2dist y >= -100*const(size.yscale)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <=  -17*const(size.yscale)
triggerall = Statetype = A
triggerall = p2stateno != [5100,5120]
triggerall = p2Statetype = A || vel y >= 0 || p2movetype = A
triggerall = (stateno != [120,169])
triggerall = random < (1*(fvar(35)*fvar(35)*fvar(35)))
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
trigger1 = ctrl || stateno = 650
trigger1 = !movecontact
var(52) = 620
ignorehitpause = 1


[State AI, BOMBS AWAY]
type = Varset
triggerall = !numhelper(651)
triggerall = numenemy
triggerall = var(52) = 0 || random < 123
triggerall = fvar(35)
triggerall = p2dist x = [-20,20]
triggerall = p2dist y >= 20
triggerall = Statetype = A
triggerall = p2stateno != [5100,5120]
triggerall = enemynear,pos y = [-20,20]
triggerall = (stateno != [120,169])
triggerall = random < (1*(fvar(35)*fvar(35)*fvar(35)))
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
trigger1 = stateno = 650
var(52) = 651
ignorehitpause = 1

[State AI, Consider detonating the wisp]
type = VarSet
triggerall = numhelper(1350)
triggerall = moveguarded != [1,8]
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+fvar(35)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) )
triggerall = fvar(35)
triggerall = random < (0.9*(fvar(35)*fvar(35)*fvar(35)))
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0)
triggerall = statetype != A
triggerall = p2stateno != [5080,5150]
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
triggerall = helper(1350),stateno = 1351
triggerall = helper(1350),p2dist x = [-60,60]
triggerall = helper(1350),p2dist y >= -60
triggerall = ( helper(1350),p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= 60*const(size.yscale)
triggerall = p2stateno != [120,154]
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = var(9)
;trigger1 = (!movehit)
var(52) = 1350
ignorehitpause = 1

[State AI, Consider being a dick 1]
type = VarSet
triggerall = moveguarded != [1,8]
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+fvar(35)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) )
triggerall = fvar(35) >= 8
triggerall = random < (0.3*(fvar(35)*fvar(35)*fvar(35))) * ifelse(movehit||p2statetype=C,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 72)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [-5,130*const(size.xscale)]
triggerall = p2statetype != A
triggerall = enemynear, prevstateno != 5120
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*9) + (enemynear, pos y) <= -9 ) || (p2stateno != [5030,5120])
triggerall = statetype != A
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 6 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
triggerall = prevstateno != 1200
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = var(9)
;trigger1 = (!moveguarded)
var(52) = 1200
ignorehitpause = 1


[State AI, Consider being a dick 2]
type = VarSet
triggerall = moveguarded != [1,8]
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+fvar(35)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) )
triggerall = fvar(35) >= 8
triggerall = random < (0.3*(fvar(35)*fvar(35)*fvar(35))) * ifelse(movehit||p2statetype=C,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 72)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [150,200*const(size.xscale)]
triggerall = p2statetype != A
triggerall = enemynear, prevstateno != 5120
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*9) + (enemynear, pos y) <= -9 ) || (p2stateno != [5030,5120])
triggerall = statetype != A
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 6 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
triggerall = prevstateno != 1200
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = var(9)
trigger1 = (!moveguarded)
var(52) = 1210
ignorehitpause = 1

[State AI, Consider being a dick 3]
type = VarSet
triggerall = moveguarded != [1,8]
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+fvar(35)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) )
triggerall = fvar(35) >= 8
triggerall = random < (0.3*(fvar(35)*fvar(35)*fvar(35))) * ifelse(movehit||p2statetype=C,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 72)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [250,310*const(size.xscale)]
triggerall = p2statetype != A
triggerall = enemynear, prevstateno != 5120
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*9) + (enemynear, pos y) <= -9 ) || (p2stateno != [5030,5120])
triggerall = statetype != A
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 6 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
triggerall = prevstateno != 1200
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = var(9)
trigger1 = (!moveguarded)
var(52) = 1220
ignorehitpause = 1

[State AI, Consider a Dragon]
type = VarSet
triggerall = !(var(42) & floor(exp(4*ln(2)) + 0.5))
triggerall = moveguarded != [1,8]
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+fvar(35)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) )
triggerall = fvar(35)
triggerall = random < (0.123*(fvar(35)*fvar(35)*fvar(35)))* ifelse(p2movetype=H||p2statetype=A,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,50),ifelse(p2movetype=H,80,210)*const(size.xscale)]
triggerall = p2dist y >= -32*const(size.yscale) - (enemynear,vel y*14)
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*9) + (enemynear, pos y) <= -9 ) || (p2stateno != [5030,5120])
triggerall = statetype != A
triggerall = p2statetype != A || p2movetype = A
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 16 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
triggerall = prevstateno != 1300
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = var(9)
;trigger1 = (!moveguarded)
var(52) = 1300
ignorehitpause = 1

[State AI, MASH THE DRAGON]
type = VarSet
triggerall = fvar(35)
trigger1 = stateno = 1310
trigger1 = (time%7)=0
trigger1 = random < fvar(35)*fvar(35)*fvar(35)
;trigger1 = (!moveguarded)
var(52) = 1310
ignorehitpause = 1

[State AI, Consider a Yoga Flame]
type = VarSet
triggerall = !(var(42) & floor(exp(1*ln(2)) + 0.5))
triggerall = moveguarded != [1,8]
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+fvar(35)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) )
triggerall = fvar(35)
triggerall = random < (0.4*(fvar(35)*fvar(35)*fvar(35))) * ifelse(movehit||p2statetype=C,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 32)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,50),150*const(size.xscale)]
triggerall = p2dist y >= -50*const(size.yscale) - (enemynear,vel y*9)
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*9) + (enemynear, pos y) <= -9 ) || (p2stateno != [5030,5120])
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -100*const(size.yscale)
triggerall = statetype != A
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 16 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
triggerall = prevstateno != 1020
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = var(9)
;trigger1 = (!moveguarded)
var(52) = 1020
ignorehitpause = 1

[State AI, Consider a spiroball]
type = VarSet
triggerall = !(var(42) & floor(exp(2*ln(2)) + 0.5))
triggerall = moveguarded != [1,8]
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+fvar(35)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) )
triggerall = fvar(35)
triggerall = random < (0.3*(fvar(35)*fvar(35)*fvar(35))) * ifelse(movehit||p2statetype=C,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 32)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,50),320*const(size.xscale)]
triggerall = p2dist y >= -50*const(size.yscale) - (enemynear,vel y*9)
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*9) + (enemynear, pos y) <= -9 ) || (p2stateno != [5030,5120])
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -50*const(size.yscale)
triggerall = statetype != A
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 9  ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
triggerall = prevstateno != 1050
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = var(9)
trigger1 = (!moveguarded)
var(52) = 1050
ignorehitpause = 1

[State AI, Consider a fingering]
type = VarSet
triggerall = !(var(42) & floor(exp(0*ln(2)) + 0.5))
triggerall = moveguarded != [1,8]
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+fvar(35)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) )
triggerall = fvar(35)
triggerall = random < (0.4*(fvar(35)*fvar(35)*fvar(35))) * ifelse(movehit||p2statetype=C,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || (random < 32)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,5),200*const(size.xscale)]
triggerall = p2dist y >= (-50-ifelse((enemynear,vel y>0),p2dist x,0))*const(size.yscale) - (enemynear,vel y*9)
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*9) + (enemynear, pos y) <= -9 ) || (p2stateno != [5030,5120])
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -120*const(size.yscale)
triggerall = statetype != A
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 9  ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
triggerall = prevstateno != [1000,1020]
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = var(9)
trigger1 = (!moveguarded)
var(52) = 1000
ignorehitpause = 1

[State AI, Consider friggin laser Beam]
type = VarSet
triggerall = !numhelper(1150)
triggerall = moveguarded != [1,8]
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+fvar(35)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) )
triggerall = fvar(35)
triggerall = random < (0.3*(fvar(35)*fvar(35)*fvar(35))) * ifelse(movehit||p2statetype=C,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,5),290*const(size.xscale)]
triggerall = p2dist y >= (-50-ifelse((enemynear,vel y>0),p2dist x,0))*const(size.yscale) - (enemynear,vel y*9)
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*9) + (enemynear, pos y) <= -9 ) || (p2stateno != [5030,5120])
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -140*const(size.yscale)
triggerall = statetype != A
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 12 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
triggerall = prevstateno != [1150,1170]
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = var(9)
trigger1 = (!moveguarded)
var(52) = 1150
ignorehitpause = 1

[State AI, Consider low laser Beam]
type = VarSet
triggerall = !numhelper(1150)
triggerall = moveguarded != [1,8]
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+fvar(35)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) )
triggerall = fvar(35)
triggerall = random < (0.3*(fvar(35)*fvar(35)*fvar(35))) * ifelse(movehit||p2statetype=C,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,5),290*const(size.xscale)]
triggerall = p2dist y >= (-10-ifelse((enemynear,vel y>0),p2dist x,0))*const(size.yscale) - (enemynear,vel y*9)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -20*const(size.yscale)
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*9) + (enemynear, pos y) <= -9 ) || (p2stateno != [5030,5120])
triggerall = statetype != A
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 12 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
triggerall = prevstateno != [1150,1170]
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = var(9)
trigger1 = (!moveguarded)
var(52) = 1160
ignorehitpause = 1

[State AI, Consider high laser Beam]
type = VarSet
triggerall = !numhelper(1150)
triggerall = moveguarded != [1,8]
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+fvar(35)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) )
triggerall = fvar(35)
triggerall = random < (0.3*(fvar(35)*fvar(35)*fvar(35))) * ifelse(movehit||p2statetype=C,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,5),290*const(size.xscale)]
triggerall = p2dist y >= (-130-ifelse((enemynear,vel y>0),p2dist x,0))*const(size.yscale) - (enemynear,vel y*12)
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*12) + (enemynear, pos y) <= -12 ) || (p2stateno != [5030,5120])
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -200*const(size.yscale)
triggerall = statetype != A
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 12 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
triggerall = prevstateno != [1150,1170]
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = var(9)
trigger1 = stateno != 450
trigger1 = (!moveguarded)
var(52) = 1170
ignorehitpause = 1


[State AI, Consider tossing a pun]
type = VarSet
triggerall = !numhelper(1010)
triggerall = moveguarded != [1,8]
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+fvar(35)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) )
triggerall = fvar(35)
triggerall = random < (0.5*(fvar(35)*fvar(35)*fvar(35))) * ifelse(movehit||p2statetype=C,2,1)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0)
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x >= 32
triggerall = p2dist y >= (-50-ifelse((enemynear,vel y>0),p2dist x,0))*const(size.yscale) - (enemynear,vel y*9)
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*9) + (enemynear, pos y) <= -9 ) || (p2stateno != [5030,5120])
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -133*const(size.yscale)
triggerall = statetype != A
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 15 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
triggerall = prevstateno != 1010
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = var(9)
;trigger1 = (!moveguarded)
var(52) = 1010
ignorehitpause = 1


[State AI, Consider tossing a wisp]
type = VarSet
triggerall = !numhelper(1350)
triggerall = moveguarded != [1,8]
triggerall = numenemy
triggerall = var(52) = 0 || ( (random < 80+fvar(35)) && (var(52)!=[200,250]) && (var(52)!=[400,450]) )
triggerall = fvar(35)
triggerall = random < (0.3*(fvar(35)*fvar(35)*fvar(35)))
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0)
triggerall = p2bodydist x >= 100
triggerall = statetype != A
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 7-fvar(35))) || random < 10
triggerall = prevstateno != [1350,1360]
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 500 || p2movetype = H
trigger1 = var(9)
trigger1 = (!movehit)
var(52) = 1350 + ((random%2)*10)
ignorehitpause = 1

[State AI, Consider Throwing]
type = VarSet
triggerall = numenemy
triggerall = var(52) = 0 || random < 900
triggerall = fvar(35)
triggerall = random < (15*(fvar(35)*fvar(35)))
triggerall = p2stateno != [5080,5130]
triggerall = abs(p2bodydist x) < 6
triggerall = statetype != A
triggerall = p2movetype != H
triggerall = p2statetype != A
triggerall = prevstateno != [800,830]
triggerall = enemynear,prevstateno != [5120,5129]
triggerall = var(8) = 0
trigger1 = stateno != 40
trigger1 = ctrl
var(52) = ifelse(random<123&&power>=3000,3150,800)
;var(52) = 800;ifelse(power>=2000&&(p2movetype!=A||facing=enemynear,facing)&&random<128,3100,ifelse(random<500,830,800))
ignorehitpause = 1

[State AI, Consider a sgs]
type = VarSet
triggerall = numenemy
triggerall = moveguarded != [1,8]
triggerall = var(52) = 0 || random < 140+fvar(35)
triggerall = fvar(35)
triggerall = random < (50*fvar(35)) + ((lifemax - life)/8)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0)
triggerall = p2stateno != [5080,5130]
triggerall = (p2bodydist x = [-5,110])
triggerall = p2dist y >= -85 - (enemynear,vel y*10)
triggerall = statetype != A
triggerall = power >= 3000
triggerall =(p2movetype = H) || (enemynear, ctrl = 0) || (enemynear, statetype = A) || (random < 80)
triggerall = prevstateno != [3100,3152]
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*10) + (enemynear, pos y) <= -15 ) || (p2stateno != [5030,5120])
triggerall = time >= 7-fvar(35) || random < 10
trigger1 = ctrl || stateno = 100 || (stateno = 1520 && anim = 1521) || (stateno = 1510)
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 250
trigger2 = var(9)
trigger2 = movehit
var(52) = 3150
ignorehitpause = 1

[State AI, Consider droppin' plates]
type = VarSet
triggerall = numenemy
triggerall = moveguarded != [1,8]
triggerall = var(52) = 0 || random < 140+fvar(35)
triggerall = fvar(35)
triggerall = p2life <= ceil(200*fvar(13))
triggerall = random < (50*fvar(35)) + ((lifemax - life)/8)
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0)
triggerall = p2stateno != [5080,5130]
triggerall = (enemynear, vel x = [-2.7,2.7]) || (enemynear, backedgebodydist <= 60)
triggerall = (enemynear, screenpos y > 32)
triggerall = (enemynear, stateno != [5030,5070]) || (enemynear, vel y <= 0)
triggerall = statetype != A
triggerall = power >= 1000
triggerall =(p2movetype = H) || (enemynear, ctrl = 0) || (enemynear, statetype = A) || (random < 80)
triggerall = prevstateno != [3000,3002]
triggerall = ( enemynear, vel y <= 0 ) || ( (enemynear, vel y*10) + (enemynear, pos y) <= -15 ) || (p2stateno != [5030,5120])
triggerall = time >= 7-fvar(35) || random < 10
triggerall = (enemynear,GetHitVar(hittime) >= 20 ) || (p2movetype != H) || (p2statetype = A) || (p2stateno != [5000,5025])
trigger1 = ctrl || stateno = 100 || (stateno = 1520 && anim = 1521) || (stateno = 1510)
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 250
trigger2 = var(9)
trigger2 = movehit
trigger3 = stateno = 1100 || stateno = 1020; || ((stateno = [1150,1170]) && time >= 50)
var(52) = 3000
ignorehitpause = 1


[State AI, Consider a Super Counter]
type = VarSet
triggerall = fvar(35)
triggerall = moveguarded != [1,8]
triggerall = random < (0.8*(fvar(35)*fvar(35)*fvar(35))) * ifelse(movehit||p2statetype=C,2,1) + ((lifemax - life)/8)
triggerall = ((p2movetype = A) && (EnemyNear, Facing != Facing))
triggerall = p2movetype != H
triggerall = statetype != A
triggerall = power >= 2000
triggerall = p2bodydist x <= 100
trigger1 = stateno != 40
var(52) = 3100

[State AI, Consider Advancing]
type = VarSet
triggerall = roundstate = 2
triggerall = fvar(35)
triggerall = var(52) = 0 || random < 80+fvar(35)
triggerall = random < (33*fvar(35))
triggerall = ((enemynear, ctrl = 0) && p2movetype != A) || (p2movetype = A && (enemynear, facing = facing))
triggerall = (p2stateno != [5080,5130]) || (p2bodydist x = [45,100])
triggerall = p2bodydist x >= 45 || moveguarded
triggerall = statetype != A
triggerall = time >= 7-fvar(35) || random < 10
trigger1 = stateno != 40
trigger1 = stateno != 100
trigger1 = ctrl
trigger2 = stateno = [200,250]
trigger2 = moveguarded >= 4
trigger2 = random < 41
;trigger1 = !moveguarded
var(52) = ifelse(random<100,41,1260 + ((random%2)*10))
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
triggerall = (enemynear, pos y <= -45) || (stateno = 250)
triggerall = random < 32
trigger1 = ctrl || stateno = 100 || stateno = 40 || helper(10003),var(30)
trigger2 = stateno = 410 || (stateno = [1350,1360])
trigger2 = movehit
var(52) = ifelse(p2bodydist x>=20,ifelse(p2bodydist x>=160,44,41),42)
ignorehitpause = 1

[State AI, Consider Being A Slaydick]
type = VarSet
triggerall = numenemy
triggerall = moveguarded != [1,8]
;triggerall = var(52) = 0 || random < 900
triggerall = fvar(35) >= 8
triggerall = p2statetype != A
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -120*const(size.yscale)
trigger1 = stateno = 220 || stateno = 440
trigger1 = movehit
var(52) = 1260
;var(52) = 800;ifelse(power>=2000&&(p2movetype!=A||facing=enemynear,facing)&&random<128,3100,ifelse(random<500,830,800))
ignorehitpause = 1

[State AI, Consider Being A Slaydick 2]
type = VarSet
triggerall = numenemy
triggerall = moveguarded != [1,8]
;triggerall = var(52) = 0 || random < 900
triggerall = fvar(35) >= 8
triggerall = p2statetype != A
triggerall = p2bodydist x = [ifelse(p2statetype!=A,-5,-5),110*const(size.xscale)]
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -120*const(size.yscale)
trigger1 = ctrl
trigger1 = numtarget(220)
trigger1 = prevstateno = 1260
var(52) = 220
;var(52) = 800;ifelse(power>=2000&&(p2movetype!=A||facing=enemynear,facing)&&random<128,3100,ifelse(random<500,830,800))
ignorehitpause = 1


[State AI, Guard S]
type = ChangeState
triggerall = stateno != 40
triggerall = random < (1*(fvar(35)*fvar(35)*fvar(35)))
triggerall = (fvar(35)) && (StateType != A) && (Ctrl) && (EnemyNear, Facing != Facing) && (var(50)<40)
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 14-(fvar(35)*2)))
trigger1 = (P2StateType != C) && (((P2MoveType = A) && (inguarddist)) || (EnemyNear, NumProj > 0))
value = ifelse(random<32&&(stateno!=[120,169]),ifelse(power>=2000&&random<500,3100,1260+((random%2)*10) ),130)

[State AI, Guard L]
type = ChangeState
triggerall = stateno != 40
triggerall = random < (1*(fvar(35)*fvar(35)*fvar(35)))
triggerall = (fvar(35)) && (StateType != A) && (Ctrl) && (EnemyNear, Facing != Facing) && (var(50)<40)
triggerall = ((time >= 7-fvar(35)) && (enemynear,time >= 14-(fvar(35)*2)))
trigger1 = (P2StateType = C) && (((P2MoveType = A) && (inguarddist)) || (EnemyNear, NumProj > 0))
value = ifelse(random<32&&(stateno!=[120,169]),ifelse(power>=2000&&random<500,3100,1260+((random%2)*10) ),131)
;value = ifelse(random<32&&(stateno!=[120,169])&&power>=2000,3100,131)

; AI-related stuff ends here

;===========================================================================
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
[State -1, Shun Goku Ratsu]
type = ChangeState
value = 3150
triggerall = (fvar(35)<5 && command = "SGS") || var(52) = 3150
triggerall = power >= 3000
trigger1 = var(9)
trigger2 = (stateno = [200,220]) || (stateno = [230,250]) || (stateno = [400,420]) || (stateno = [430,450])
trigger3 = stateno = 1020 || stateno = 1100 || stateno = 1050 || stateno = 1000
trigger3 = movecontact
trigger4 = stateno = [1150,1170]

[State -1, Counter Super]
type = ChangeState
value = 3100
triggerall = (fvar(35)<5 && ifelse((anim!=[5,6]),command = "QCB_2p",command = "QCF_2p")) || var(52) = 3100
triggerall = power >= 2000
trigger1 = var(9)
trigger2 = stateno = 1020 || stateno = 1100 || stateno = 1050 || stateno = 1000
trigger2 = movecontact
trigger3 = stateno = [1150,1170]


[State -1, Magic Plate]
type = ChangeState
value = 3000
triggerall = (fvar(35)<5 && ifelse((anim!=[5,6]),command = "QCF_2p",command = "QCB_2p")) || var(52) = 3000
triggerall = power >= 1000
trigger1 = var(9)
trigger2 = stateno = 1020 || stateno = 1100 || stateno = 1050 || stateno = 1000
trigger2 = movecontact
trigger3 = stateno = [1150,1170]

;---------------------------------------------------------------------------
;Light Kung Fu Palm
;カンフー突き手（弱）
[State -1, Kinesis]
type = ChangeState
value = 1200
triggerall = (fvar(35)<5 && ifelse((anim!=[5,6]),command = "HCB_x",command = "HCF_x")) || var(52) = 1200
trigger1 = var(9) ;Use combo condition (above)

[State -1, Kinesis]
type = ChangeState
value = 1210
triggerall = (fvar(35)<5 && ifelse((anim!=[5,6]),command = "HCB_y",command = "HCF_y")) || var(52) = 1210
trigger1 = var(9) ;Use combo condition (above)

[State -1, Kinesis]
type = ChangeState
value = 1220
triggerall = (fvar(35)<5 && ifelse((anim!=[5,6]),command = "HCB_z",command = "HCF_z")) || var(52) = 1220
trigger1 = var(9) ;Use combo condition (above)

[State -1, Kinesis]
type = ChangeState
value = 1205
triggerall = (fvar(35)<5 && ifelse((anim!=[5,6]),command = "HCF_x",command = "HCB_x")) || var(52) = 1205
trigger1 = var(9) ;Use combo condition (above)

[State -1, Kinesis]
type = ChangeState
value = 1215
triggerall = (fvar(35)<5 && ifelse((anim!=[5,6]),command = "HCF_y",command = "HCB_y")) || var(52) = 1215
trigger1 = var(9) ;Use combo condition (above)

[State -1, Kinesis]
type = ChangeState
value = 1225
triggerall = (fvar(35)<5 && ifelse((anim!=[5,6]),command = "HCF_z",command = "HCB_z")) || var(52) = 1225
trigger1 = var(9) ;Use combo condition (above)

;カンフー突き手（弱）
[State -1, Finger Gun]
type = ChangeState
value = 1000
triggerall = (fvar(35)<5 && ifelse((anim!=[5,6]),command = "QCF_x",command = "QCB_x")) || var(52) = 1000
triggerall = !numhelper(1000)
trigger1 = var(9) ;Use combo condition (above)

[State -1, Magic Bolt(on)]
type = ChangeState
value = 1010
triggerall = (fvar(35)<5 && ifelse((anim!=[5,6]),command = "QCF_y",command = "QCB_y")) || var(52) = 1010
triggerall = !numhelper(1010)
trigger1 = var(9) ;Use combo condition (above)

[State -1, Fire Breath]
type = ChangeState
value = 1020
triggerall = (fvar(35)<5 && ifelse((anim!=[5,6]),command = "QCF_z",command = "QCB_z")) || var(52) = 1020
triggerall = !numhelper(1020)
trigger1 = var(9) ;Use combo condition (above)

;カンフー突き手（弱）
[State -1, Laser Straight]
type = ChangeState
value = 1150
triggerall = (fvar(35)<5 && ifelse((anim!=[5,6]),command = "QCF_a",command = "QCB_a")) || var(52) = 1150
triggerall = !numhelper(1150)
trigger1 = var(9) ;Use combo condition (above)

[State -1, Laser Down]
type = ChangeState
value = 1160
triggerall = (fvar(35)<5 && ifelse((anim!=[5,6]),command = "QCF_b",command = "QCB_b")) || var(52) = 1160
triggerall = !numhelper(1150)
trigger1 = var(9) ;Use combo condition (above)

[State -1, Laser Up]
type = ChangeState
value = 1170
triggerall = (fvar(35)<5 && ifelse((anim!=[5,6]),command = "QCF_c",command = "QCB_c")) || var(52) = 1170
triggerall = !numhelper(1150)
trigger1 = var(9) ;Use combo condition (above)

;カンフー突き手（弱）
[State -1, Teleport 1]
type = ChangeState
value = 1250
triggerall = (fvar(35)<5 && ifelse((anim!=[5,6]),command = "QCB_a",command = "QCF_a")) || var(52) = 1250
trigger1 = var(9) ;Use combo condition (above)

[State -1, Teleport 1]
type = ChangeState
value = 1260
triggerall = (fvar(35)<5 && ifelse((anim!=[5,6]),command = "QCB_b",command = "QCF_b")) || var(52) = 1260
trigger1 = var(9) ;Use combo condition (above)

[State -1, Teleport 1]
type = ChangeState
value = 1270
triggerall = (fvar(35)<5 && ifelse((anim!=[5,6]),command = "QCB_c",command = "QCF_c")) || var(52) = 1270
trigger1 = var(9) ;Use combo condition (above)

[State -1, Dash Elbow]
type = ChangeState
value = 1050
triggerall = (fvar(35)<5 && ifelse((anim!=[5,6]),command = "DashP_x",command = "r_DashP_x")) || var(52) = 1050
trigger1 = var(9) ;Use combo condition (above)

[State -1, Dash Elbow]
type = ChangeState
value = 1050
triggerall = (fvar(35)<5 && ifelse((anim!=[5,6]),command = "DashP_y",command = "r_DashP_y")) || var(52) = 1060
trigger1 = var(9) ;Use combo condition (above)

[State -1, Dash Elbow]
type = ChangeState
value = 1050
triggerall = (fvar(35)<5 && ifelse((anim!=[5,6]),command = "DashP_z",command = "r_DashP_z")) || var(52) = 1070
trigger1 = var(9) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Light Kung Fu Palm
;カンフー突き手（弱）
[State -1, Rapid Fistcuffs]
type = ChangeState
value = 1100
triggerall = (fvar(35)<5 && command = "RapidFistcuffs") || var(52) = 1100 || var(52) = 1110 || var(52) = 1120
trigger1 = var(9) ;Use combo condition (above)
trigger2 = (stateno = [200,240]) || (stateno = [400,420])

;---------------------------------------------------------------------------
;Light Kung Fu Palm
;カンフー突き手（弱）
[State -1, Dragon Rush]
type = ChangeState
value = 1300
triggerall = (var(55)<5 && command = "Hurik1") || var(52) = 1300
trigger1 = var(9) ;Use combo condition (above)

[State -1, Wisp Summon]
type = ChangeState
value = ifelse(numhelper(1350),1370,1350)
triggerall = (var(55)<5 && command = "Hurix1") || var(52) = 1350
trigger1 = var(9)
trigger1 = !numhelper(1350)
trigger2 = var(9)
trigger2 = numhelper(1350)
trigger2 = helper(1350),stateno!=1371

[State -1, Wisp Summon]
type = ChangeState
value = ifelse(numhelper(1350),1370,1360)
triggerall = (var(55)<5 && command = "Hurix2") || var(52) = 1360
trigger1 = var(9)
trigger1 = !numhelper(1350)
trigger2 = var(9)
trigger2 = numhelper(1350)
trigger2 = helper(1350),stateno!=1371

;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
;[State -1, Run Fwd]
;type = ChangeState
;value = 100
;trigger1 = (command = "FF") || (var(52) = 100)
;trigger1 = statetype = S
;trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
;[State -1, Run Back]
;type = ChangeState
;value = 105
;trigger1 = (command = "BB") || (var(52) = 105)
;trigger1 = statetype = S
;trigger1 = ctrl || stateno = 100

;---------------------------------------------------------------------------
;Kung Fu Throw
;投げ
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = ((command = "y" || command = "z") && (command = "holdfwd" || command = "holdback")) || var(52) = 800
triggerall = statetype != A
triggerall = ctrl
triggerall = stateno != 100
triggerall = var(8) <= 0
trigger1 = p2bodydist X < 8
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H


;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = (fvar(35)<5 && (command = "x" && command != "holddown")) || var(52) = 200
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 && (time || movecontact))

[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = (fvar(35)<5 && (command = "y" && command != "holddown")) || var(52) = 210
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 && (time || movecontact)) || (stateno = 230 && (time || movecontact)) || (stateno = 400 && movecontact)

[State -1, Stand Hard Punch]
type = ChangeState
value = 220
triggerall = (fvar(35)<5 && (command = "z" && command != "holddown")) || var(52) = 220
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 && (time || movecontact)) || (stateno = 230 && (time || movecontact)) || (stateno = 400 && movecontact)

[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = (fvar(35)<5 && (command = "a" && command != "holddown")) || var(52) = 230
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 && (time || movecontact)) || (stateno = 230 && time && !movehit) || (stateno = 400 && movecontact)

[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = (fvar(35)<5 && (command = "b" && command != "holddown")) || var(52) = 240
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 && (time || movecontact)) || (stateno = 230 && (time || movecontact)) || (stateno = 400 && movecontact)

[State -1, Stand Hard Kick]
type = ChangeState
value = 250
triggerall = (fvar(35)<5 && (command = "c" && command != "holddown")) || var(52) = 250
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 && (time || movecontact)) || (stateno = 230 && (time || movecontact)) || (stateno = 400 && movecontact) || (stateno = 430 && movecontact)

[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = (fvar(35)<5 && (command = "x" && command = "holddown")) || var(52) = 400
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 && (time || movecontact)) || (stateno = 400 && (time || movecontact)) || (stateno = 230 && (time || movecontact))

[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = (fvar(35)<5 && (command = "y" && command = "holddown")) || var(52) = 410
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 && (time || movecontact)) || (stateno = 400 && (time || movecontact)) || (stateno = 230 && (time || movecontact))

[State -1, Crouching Hard Punch]
type = ChangeState
value = 420
triggerall = (fvar(35)<5 && (command = "z" && command = "holddown")) || var(52) = 420
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 && (time || movecontact)) || (stateno = 400 && (time || movecontact)) || (stateno = 230 && (time || movecontact))

[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = (fvar(35)<5 && (command = "a" && command = "holddown")) || var(52) = 430
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 && (time || movecontact)) || (stateno = 400 && (time || movecontact)) || (stateno = 230 && movecontact)

[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = (fvar(35)<5 && (command = "b" && command = "holddown")) || var(52) = 440
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 && (time || movecontact)) || (stateno = 400 && (time || movecontact)) || (stateno = 230 && (time || movecontact))

[State -1, Crouching Hard Kick]
type = ChangeState
value = 450
triggerall = (fvar(35)<5 && (command = "c" && command = "holddown")) || var(52) = 450
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = 200 && (time || movecontact)) || (stateno = 400 && (time || movecontact)) || (stateno = 230 && movecontact)

;---------------------------------------------------------------------------
;Taunt
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = (command = "start") || var(52) = 195 || (var(58) = -2 && winko && !var(48))
triggerall = stateno != 195
trigger1 = var(9) ;Use combo condition (above)
;trigger1 = statetype != A
;trigger1 = ctrl || stateno = 100

[State -1, Jump Hard Slash]
type = ChangeState
value = 620
triggerall = (fvar(35)<5 && (command = "x" || command = "y" || command = "z")) || var(52) = 620
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 650
trigger2 = !movecontact

[State -1, Air combo lol]
type = ChangeState
value = 40
triggerall = (command = "holdup") || var(52) = [40,45]
trigger1 = fvar(35)
trigger1 = stateno != 40
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 240 || stateno = 250
trigger3 = movehit
trigger3 = numtarget
trigger3 = target,statetype=A




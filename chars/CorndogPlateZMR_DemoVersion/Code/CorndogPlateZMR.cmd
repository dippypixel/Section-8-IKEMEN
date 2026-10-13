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

;-| Super Motions |--------------------------------------------------------

[Command]
name = "RapidCorndogCombo"
command = ~D, DF, F, x+y
time = 20
[Command]
name = "RapidCorndogCombo"
command = ~D, DF, F, x+z
time = 20
[Command]
name = "RapidCorndogCombo"
command = ~D, DF, F, y+z
time = 20

[Command]
name = "SpinnerFrenzy"
command = ~D, DB, B, x+y
time = 20
[Command]
name = "SpinnerFrenzy"
command = ~D, DB, B, x+z
time = 20
[Command]
name = "SpinnerFrenzy"
command = ~D, DB, B, y+z
time = 20

[Command]
name = "CondimentCannon"
command = ~B, DB, D, DF, F, x+y
time = 20
[Command]
name = "CondimentCannon"
command = ~B, DB, D, DF, F, x+z
time = 20
[Command]
name = "CondimentCannon"
command = ~B, DB, D, DF, F, y+z
time = 20

;-| Special Motions |------------------------------------------------------

;these include Negative Edge, a technique where specials can be done as
;well by preforming the input then releasing the button as its held.

[Command]
name = "PlateBash_x"
command = ~35$B, $F, x ; <-- this means doing the input normally by pressing down on button
[Command];Negative Edge Version
name = "PlateBash_x"
command = ~35$B, $F, ~x ; <-- this means after the button is released when being held down. the rest follow suit
[Command]
name = "PlateBash_y"
command = ~35$B, $F, y
[Command];Negative Edge Version
name = "PlateBash_y"
command = ~35$B, $F, ~y
[Command]
name = "PlateBash_z"
command = ~35$B, $F, z
[Command];Negative Edge Version
name = "PlateBash_z"
command = ~35$B, $F, ~z

[Command]
name = "CorndogSpear_x"
command = ~F, D, DF, x
[Command];Negative Edge Version
name = "CorndogSpear_x"
command = ~F, D, DF, ~x
[Command]
name = "CorndogSpear_y"
command = ~F, D, DF, y
[Command];Negative Edge Version
name = "CorndogSpear_y"
command = ~F, D, DF, ~y
[Command]
name = "CorndogSpear_z"
command = ~F, D, DF, z
[Command];Negative Edge Version
name = "CorndogSpear_z"
command = ~F, D, DF, ~z

[Command]
name = "SauceToss_x"
command = ~D, DB, B, x
[Command];Negative Edge Version
name = "SauceToss_x"
command = ~D, DB, B, ~x
[Command]
name = "SauceToss_y"
command = ~D, DB, B, y
[Command];Negative Edge Version
name = "SauceToss_y"
command = ~D, DB, B, ~y
[Command]
name = "SauceToss_z"
command = ~D, DB, B, z
[Command];Negative Edge Version
name = "SauceToss_z"
command = ~D, DB, B, ~z

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
[Command]
name = "recovery";Required (do not remove)
command = x+z
time = 1
[Command]
name = "recovery";Required (do not remove)
command = x+z
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
name = "hold_button"
command = /x
time = 1

[Command]
name = "hold_button"
command = /y
time = 1

[Command]
name = "hold_button"
command = /z
time = 1

[Command]
name = "start"
command = s
time = 1
;----------------------
;ZMR Buttons

[Command]
name = "xyz"
command = x+y+z
time = 1

[Command]
name = "abc"
command =a+b+c
time = 1

[Command]
name = "LauncherJump"
command = $U
time = 8

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

[Command]
name = "fwd"
command = F
time = 1

[Command]
name = "back"
command = B
time = 1

[Command]
name = "up"
command = U
time = 1

[Command]
name = "down"
command = D
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

;[State Blitz DEBUG]
;type = ChangeState
;value = 95840390
;triggerall = !var(59)
;triggerall = command = "b"
;trigger1 = ctrl
;trigger2 = movecontact

;===========================================================================
;ZMR TAG TEAM Coding
;connected to "TagTeamZMR.cns"

[State Tagged Out (Both Players)]
type = ChangeState
value = 910000
triggerall = numpartner
triggerall = !winko
triggerall = var(49)=1 ;tag team detector
triggerall = var(48)=1 ;tagged out detector
triggerall = movetype != H 
triggerall = alive
triggerall = partner,alive
trigger1 = ctrl

[State Partner Tagged Out at Start]
type = VarSet
triggerall = numpartner
triggerall = var(49)=1 ;tag team detector
trigger1 = roundstate = 0 && !ctrl
trigger1=ID > Partner,ID ;Player 3 / Player 4
var(48) = ifelse(partner,name="CorndogOfLightV2"||partner,name="PizzaRollOfDarknessV2",0,1)

[State Player Tagged In at Start]
type = VarSet
triggerall = numpartner
triggerall = var(49)=1 ;tag team detector
trigger1 = roundstate = 0 && !ctrl
trigger1=ID < Partner,ID ;Player 1 / Player 2
var(48) = 0

[State Turn Off when Outside of Tag Team]
type = VarSet
triggerall = var(49)=0 ;tag team detector
trigger1 = roundstate = 0 && !ctrl
var(48) = 0

[State Partner Failsave]
type = Varset
triggerall = var(48)=1 ;tagged out detector
trigger1 = partner,stateno = 5150 || partner,life=0 ;dead
var(48) = 0

;=====================
;Player Commands
;=====================

[State Player Switch]
type = ChangeState
value = 910000
triggerall = numpartner = 1
triggerall = alive
triggerall = var(49)=1 ;tag team detector
triggerall = partner,stateno != 5150
triggerall = partner,stateno = 920001
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "b"
triggerall= ID < Partner,ID ;Player 1 / Player 2
triggerall = stateno != 52
triggerall = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = [200,420])
trigger2 = movecontact

;=====================
;Partner Commands
;=====================

[State Partner Switch]
type = ChangeState
value = 910000
triggerall = numpartner = 1
triggerall = alive
triggerall = var(49)=1 ;tag team detector
triggerall = partner,stateno != 5150
triggerall = partner,stateno = 920000
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "b"
triggerall= ID > Partner,ID ;Player 3 / Player 4
triggerall = stateno != 52
triggerall = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = [200,420])
trigger2 = movecontact
;===========================================================================
;Run Fwd

[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = !var(59)||(var(59)&&(var(50)=1))
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Run Back]
type = ChangeState
value = ifelse(enemynear,name="CorndogOfLightV2"||enemynear,name="PizzaRollOfDarknessV2",101,105)
triggerall = !var(59)||(var(59)&&(var(50)=1))
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

[State Taunt]
type = Helper
triggerall = !var(59)||(var(59)&&(var(50)=1))
triggerall = numhelper(195)=0
triggerall = movetype != H
triggerall = roundstate = [2,3]
triggerall = ctrl || (stateno = [200,810])
trigger1 = command = "a" && command != "x" && command != "y" && command != "z"
helperType = Normal
stateNo = 195
ID = 195
name = "Taunt Helper"
postype = P1
pos = 0,0
ownPal = 1
pauseMoveTime = 255
superMoveTime = 255
ignoreHitPause = 1

[State Corndog Orbs]
type = ChangeState
value = 19500
triggerall = teammode = single
triggerall = roundstate = 2
triggerall = !var(59)||(var(59)&&(var(50)=1))
triggerall=floor(fvar(8))>=3
;triggerall=!floor(fvar(9)) ;unused line, it caused a glitch where orbs wouldn't be able to be used at all in rare occasions.
triggerall = command = "a" && command = "x" && command= "holddown"
trigger1 = statetype != A
trigger1 = ctrl || stateno = 195
trigger2 = (stateno = [200,420])
trigger2 = movecontact
;------------------------------------------------------------------------
trigger3 = ((stateno = [150,153]) && power >= 1000) ;Guard Cancel Version


[State Corndog Orbs (Weaker Version)]
type = ChangeState
value = 19501
triggerall = teammode = single
triggerall = roundstate = 2
triggerall = !var(59)||(var(59)&&(var(50)=1))
triggerall=floor(fvar(8))>=1&&floor(fvar(8))<3
;triggerall=!floor(fvar(9)) ;unused line, it caused a glitch where orbs wouldn't be able to be used at all in rare occasions.
triggerall = command = "a" && command = "x" && command= "holddown"
trigger1 = statetype != A
trigger1 = ctrl || stateno = 195
trigger2 = (stateno = [200,420])
trigger2 = movecontact

;===========================================================================
; Parry

[State Disable Parry] ;to prevent parry from being transfered between attacks
type = hitoverride  ;Note to self: Implement fixed parry system to everyone else
triggerall = !ishelper
trigger1 = movetype=A
time = 1

[State -1, Standing Parry] 
type = hitoverride
triggerall = !ishelper
triggerall = (stateno != 151 || stateno != 153)
triggerall = ctrl || stateno = 160 || stateno = 52 || anim = 101 ||(stateno=100&&var(59)) || stateno = 5120 || stateno = 195
triggerall = roundstate = 2 && statetype != A
;-------------------------------------------------
;Disabled for Bosses
triggerall = enemynear,name!="CorndogOfLightV2"
triggerall = enemynear,name!="PizzaRollOfDarknessV2" 
;-------------------------------------------------
trigger1 = !Var(59)
trigger1 = command = "fwd" && command != "back" && command != "up" && command != "down"
trigger2=var(59)&&var(50)>=5&&alive
trigger2=random<=ceil((var(50)*12)*ifelse(statetype=a,1.15,1))
attr = SA, NA, SA, HA, AP
stateno = ifelse(movetype=A,5000,160)
slot = 0
time = 6

[State -1, Crouching Parry]
type = hitoverride
triggerall = !ishelper
triggerall = (stateno != [120,155])
triggerall = ctrl || stateno = 160 || stateno = 52 || anim = 101 ||(stateno=100&&var(59)) || stateno = 5120 || stateno = 195
triggerall = roundstate = 2 && statetype != A
triggerall = (stateno != [200,620]) || (stateno != [1000,1090]) || (stateno != [3000,3900])
;-------------------------------------------------
;Disabled for Bosses
triggerall = enemynear,name!="CorndogOfLightV2"
triggerall = enemynear,name!="PizzaRollOfDarknessV2" 
;-------------------------------------------------
trigger1 = !Var(59) 
trigger1 = command != "fwd" && command != "back" && command != "up" && command = "down"
trigger2=var(59)&&var(50)>=5&&alive
trigger2=random<=ceil((var(50)*12)*ifelse(statetype=a,1.15,1))
attr = C, NA, SA, HA, AP
stateno = 160
slot = 0
time = 6

[State -1, Air Parry]
type = hitoverride
triggerall = !ishelper
triggerall = ctrl || stateno = 160
triggerall = roundstate = 2 && statetype = A
triggerall = (stateno != [200,620]) || (stateno != [1000,1090]) || (stateno != [3000,3900])
;-------------------------------------------------
;Disabled for Bosses
triggerall = enemynear,name!="CorndogOfLightV2"
triggerall = enemynear,name!="PizzaRollOfDarknessV2" 
;-------------------------------------------------
trigger1 = !Var(59)
trigger1 = command = "fwd" && command != "back" && command != "up" && command != "down"
trigger2=var(59)&&var(50)>=5&&alive
trigger2=random<=ceil((var(50)*12)*ifelse(statetype=a,1.15,1))
attr = SCA, NA, SA, HA, AP
stateno = 160
;forceair = 1
slot = 0
time = 5

[State -1, Standing White Parry] 
type = hitoverride
triggerall = !ishelper
triggerall = ifelse(var(59),(stateno=[150,153]),(stateno = [15000,15300])) ;knocked back crouching
triggerall = roundstate = 2 && statetype != A
;-------------------------------------------------
;Disabled for Bosses
triggerall = enemynear,name!="CorndogOfLightV2"
triggerall = enemynear,name!="PizzaRollOfDarknessV2" 
;-------------------------------------------------
trigger1 = !Var(59)
trigger1 = command = "fwd" && command != "back" && command != "up" && command != "down"
trigger2=var(59)&&var(50)>=5&&alive
trigger2=random<=ceil((var(50)*2)*ifelse(statetype=a,1.15,1))
attr = SA, NA, SA, HA, AP
stateno = ifelse(movetype=A,5000,160)
slot = 0
time = 3

[State -1, Crouching White Parry]
type = hitoverride
triggerall = !ishelper
triggerall = ifelse(var(59),(stateno=[150,153]),(stateno = [15000,15300])) ;knocked back crouching
triggerall = roundstate = 2 && statetype != A
;-------------------------------------------------
;Disabled for Bosses
triggerall = enemynear,name!="CorndogOfLightV2"
triggerall = enemynear,name!="PizzaRollOfDarknessV2" 
;-------------------------------------------------
trigger1 = !Var(59)
trigger1 = command != "fwd" && command != "back" && command != "up" && command = "down"
trigger2=var(59)&&var(50)>=5&&alive
trigger2=random<=ceil((var(50)*2)*ifelse(statetype=a,1.15,1))
attr = C, NA, SA, HA, AP
stateno = 160
slot = 0
time = 3

[State -1, Dodge]
type = ChangeState
triggerall = var(29) != 1
triggerall = var(28) = 0
triggerall = !var(59)||(var(59)&&(var(50)=1))
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = command = "xyz"
triggerall = !var(56)
trigger1 = ctrl || ((stateno = 100 || stateno = 105) && time >= 3)
value = 165
;===========================================================================
;Hypers

[State -1, Condiment Cannon]
type = ChangeState
value = 3200
triggerall = var(48)=0 ;tagged in
triggerall = !var(59)||(var(59)&&(var(50)=1))
triggerall = roundstate = 2
triggerall = command = "CondimentCannon"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = [200,420])
trigger2 = movecontact
trigger3 = stateno = [1030,1032]
trigger3 = animelemtime(3)>=0

[State -1, Spinner Frenzy]
type = ChangeState
value = 3100
triggerall = var(48)=0 ;tagged in
triggerall = !var(59)||(var(59)&&(var(50)=1))
triggerall = roundstate = 2
triggerall = command = "SpinnerFrenzy"
triggerall = power >= 1000
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = stateno = [1000,1002]
trigger2 = movecontact
trigger3 = (stateno = [600,620])
trigger3 = movecontact ;&& var(4) = 0

[State -1, Rapid Corndog Combo]
type = ChangeState
value = 3000
triggerall = var(48)=0 ;tagged in
triggerall = !var(59)||(var(59)&&(var(50)=1))
triggerall = roundstate = 2
triggerall = command = "RapidCorndogCombo"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = [200,420])
trigger2 = movecontact

;;===========================================================================
;;Specials

[State -1, Corndog Spear]
type = ChangeState
value = ifelse(command="CorndogSpear_z",1012,1010+command="CorndogSpear_y")
triggerall = !var(59)||(var(59)&&(var(50)=1))
triggerall = NumHelper(1010) = 0
triggerall = command = "CorndogSpear_x"||command = "CorndogSpear_y"||command = "CorndogSpear_z"
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = [200,420])
trigger2 = movecontact

[State -1, Plate Bash]
type = ChangeState
value = ifelse(command="PlateBash_z",1002,1000+command="PlateBash_y")
triggerall = !var(59)||(var(59)&&(var(50)=1))
triggerall = command = "PlateBash_x"||command = "PlateBash_y"||command = "PlateBash_z"
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = [200,420])
trigger2 = movecontact

[State -1, Sauce Toss]
type = ChangeState
value = ifelse(command="SauceToss_z",1032,1030+command="SauceToss_y")
triggerall = !var(59)||(var(59)&&(var(50)=1))
triggerall = NumHelper(1035) = 0
triggerall = command = "SauceToss_x"||command = "SauceToss_y"||command = "SauceToss_z"
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = [200,420])
trigger2 = movecontact

;===========================================================================
;Normals / Throw

[State -1, Stand Light]
type = ChangeState
value = 200
triggerall = !var(59)||(var(59)&&(var(50)=1))
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movecontact

[State -1, Stand Medium]
type = ChangeState
value = 210
triggerall = !var(59)||(var(59)&&(var(50)=1))
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 400
trigger3 = movecontact

[State -1, Kung Fu Throw]
type = ChangeState
value = 800
;-------------------------------------------------
;Disabled for Bosses
triggerall = enemynear,name!="CorndogOfLightV2"
triggerall = enemynear,name!="PizzaRollOfDarknessV2" 
;-------------------------------------------------
triggerall = !var(59)||(var(59)&&(var(50)=1))
triggerall = stateno != 100
triggerall = command = "z"
triggerall = statetype = S
triggerall = ctrl 
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 15
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 15
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

[State -1, Stand Heavy]
type = ChangeState
value = 220
triggerall = !var(59)||(var(59)&&(var(50)=1))
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 410
trigger5 = movecontact

[State -1, Crouch Light]
type = ChangeState
value = 400
triggerall = !var(59)||(var(59)&&(var(50)=1))
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Crouch Medium]
type = ChangeState
value = 410
triggerall = !var(59)||(var(59)&&(var(50)=1))
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movecontact
trigger3 = stateno = 200
trigger3 = movecontact

[State -1, Crouch Launcher]
type = ChangeState
value = 420
triggerall = !var(59)||(var(59)&&(var(50)=1))
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movecontact
trigger3 = stateno = 410
trigger3 = movecontact
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 210
trigger5 = movecontact
trigger6 = stateno = 220
trigger6 = movecontact

[State -1, Jump Light]
type = ChangeState
value = 600
triggerall = !var(59)||(var(59)&&(var(50)=1))
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && Var(4)=1
trigger2 = movecontact

[State -1, Jump Medium]
type = ChangeState
value = 610
triggerall = !var(59)||(var(59)&&(var(50)=1))
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && Var(4)=1
trigger2 = movecontact

[State -1, Jump Heavy]
type = ChangeState
value = 620
triggerall = !var(59)||(var(59)&&(var(50)=1))
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && Var(4)=1
trigger2 = movecontact
trigger3 = stateno = 610 && Var(4)=1
trigger3 = movecontact
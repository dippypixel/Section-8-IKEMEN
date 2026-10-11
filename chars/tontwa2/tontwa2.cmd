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


;-| WICKITY WACKITY AI!!! |------------------------------------------------------
    [Command]
    name = "CPU1" 
    command = U, D, F, U, D, F
    time = 0
     
    [Command]
    name = "CPU2"
    command = U, B, F, U, D, F
    time = 0
     
    [Command]
    name = "CPU3"
    command = U, D, D, U, D, F
    time = 0
     
    [Command]
    name = "CPU4"
    command = U, F, U, B, U, D, F
    time = 0
     
    [Command]
    name = "CPU5"
    command = B, B, B, U, B, U, D, F
    time = 0
     
    [Command]
    name = "CPU6"
    command = U, D, B, U, B, U, D, F
    time = 0
     
    [Command]
    name = "CPU7"
    command = F, F, B, U, B, U, D, F
    time = 0
     
    [Command]
    name = "CPU8"
    command = U, D, U, U, B, U, D, F
    time = 0
     
    [Command]
    name = "CPU9"
    command = F, B, B, U, B, U, D, F
    time = 0
     
    [Command]
    name = "CPU10"
    command = F, F, B, B, U, B, U, D, F
    time = 0

;---------------------------------------------------------------------------
;SUPERMOVE COMMANDS

;SHOTO SUPERS
[command]
name = "urotb"
command = ~D,B,D,B,b
time = 35

[command]
name = "combomeal"
command = ~D,B,D,B,z
time = 35

[command]
name = "juniormeal"
command = ~D,B,D,B,y
time = 35

[command]
name = "foot"
command = ~D,B,D,B,a
time = 35

[command]
name = "assblaster"
command = ~D,B,D,B,x
time = 35

[command]
name = "superspinattack"
command = ~D,B,D,B,z
time = 35

;---------------------------------------------------------------------------
;SPECIAL COMMANDS
[command]
name = "bang2"
command = ~F, F,x+y
time = 10
[command]
name = "bang1"
command = ~F, F,x
time = 10
[command]
name = "bang1"
command = ~F, F,y
time = 10

[command]
name = "hadouken1"
command = ~D,F,x
time = 35

[command]
name = "hadouken2"
command = ~D,F,y
time = 35

[command]
name = "cloneme1"
command = ~D,B,x
time = 35

[command]
name = "cloneme2"
command = ~D,B,y
time = 35

;---------------------------------------------------------------------------
;ASSISTS
[command]
name = "hoodirony1"
command = ~D,F,a
time = 35

[command]
name = "hoodirony2"
command = ~D,F,b
time = 35

[command]
name = "xaq1"
command = ~D,B,a
time = 35


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
name = "upper_x"
command = ~F, D, DF, x

[Command]
name = "upper_y"
command = ~F, D, DF, y

[Command]
name = "upper_xy"
command = ~F, D, DF, x+y

[Command]
name = "testspecial"
command = ~D, B, a

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
[Command];lightkick
name = "a"
command = a
time = 1

[Command];heavykick
name = "b"
command = b
time = 1

[Command];modeswitch
name = "c"
command = c
time = 1

[Command];lightjab
name = "x"
command = x
time = 1

[Command];heavyjab
name = "y"
command = y
time = 1

[Command];spin
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


[Command]
name = "hold_a";Required (do not remove)
command = /a
time = 1
[Command]
name = "hold_b";Required (do not remove)
command = /b
time = 1
[Command]
name = "hold_c";Required (do not remove)
command = /c
time = 1
[Command]
name = "hold_z";Required (do not remove)
command = /z
time = 1

;-| WICKITY WACKITY AI!!! |------------------------------------------------------

; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

; AI stuff No Diddy
; Feel free to redo this later, Jade :)


;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno=100 && command= "holdback" && var(3) = 1

;---------------------------------------------------------------------------
; SUPER MOVES
;---------------------------------------------------------------------------
;Super Spin Attack
[State -1, VarSet]
type = VarSet
trigger1 = command = "superspinattack"
v = 49
value = 1

[State -1, Super Spin Attack]
type = ChangeState
value = 1000
triggerall = var(49) =! 0
triggerall = var(49) = 1
triggerall = var(3) = 1
triggerall = command = "superspinattack"
triggerall = power >= 1500
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [1000,3050)
trigger2 = movecontact
trigger3 = stateno != 211 && movecontact
trigger3 = stateno != 210 && movecontact
trigger3 = stateno = 1310 || stateno = 1330 ;From blocking


;---------------------------------------------------------------------------
;Combo Meal
[State -1, Combo Meal]
type = ChangeState
value = 7000
triggerall = var(3) = 0
triggerall = command = "juniormeal"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [1000,3050)
trigger2 = movecontact
trigger3 = stateno = 1310 || stateno = 1330 ;From blocking



;---------------------------------------------------------------------------
;Combo Meal
[State -1, Combo Meal]
type = ChangeState
value = 3000
triggerall = var(3) = 0
triggerall = command = "combomeal"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [1000,3050)
trigger2 = movecontact
trigger3 = stateno = 1310 || stateno = 1330 ;From blocking


;---------------------------------------------------------------------------
;Foot
[State -1, Foot]
type = ChangeState
value = 6000
triggerall = var(3) = 0
triggerall = command = "foot"
triggerall = power >= 3000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [1000,3050)
trigger2 = movecontact
trigger3 = stateno = 1310 || stateno = 1330 ;From blocking

;---------------------------------------------------------------------------
;UROTB
[State -1, UROTB]
type = ChangeState
value = 11000
triggerall = var(3) = 0
triggerall = command = "urotb"
triggerall = power >= 3000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [1000,3050)
trigger2 = movecontact
trigger3 = stateno = 1310 || stateno = 1330 ;From blocking


;---------------------------------------------------------------------------
;BLAST
[State -1, BLAST]
type = ChangeState
value = 15000
triggerall = var(3) = 0
triggerall = command = "assblaster"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [1000,3050)
trigger2 = movecontact
trigger3 = stateno = 1310 || stateno = 1330 ;From blocking


;---------------------------------------------------------------------------
; SPECIALS
;---------------------------------------------------------------------------
;Hadouken
[State -1, Hadouken]
type = varset
triggerall = numhelper(3101)=0
triggerall = numhelper(3111)=0
trigger1 = command = "hadouken1"
v = 12
value = 1

[State -1, Hadouken]
type = varset
triggerall = numhelper(3101)=0
triggerall = numhelper(3111)=0
triggerall = power >= 500
trigger1 = command = "hadouken2"
v = 12
value = 2

[State -1,hadouken2]
type = ChangeState
value = 3100
triggerall = numhelper(3101)=0
triggerall = numhelper(3111)=0
triggerall = command = "hadouken1"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, hadouken2]
type = ChangeState
value = 3100
triggerall = power >= 500
triggerall = numhelper(3101)=0
triggerall = numhelper(3111)=0
triggerall = command = "hadouken2"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Bang]
type = ChangeState
value = 8100
triggerall = power >= 500
triggerall = var(26) <= 0
triggerall = command = "bang2"
triggerall = statetype != A
trigger1 = ctrl
[State -1, Bang]
type = ChangeState
value = 8000
triggerall = var(25) = 0
triggerall = command = "bang1"
triggerall= statetype != A
trigger1 = ctrl
trigger2 = hitdefattr=SC,NA && movehit


;---------------------------------------------------------------------------
;Shove
[State -1, Clone]
type = varset
trigger1 = command = "cloneme1"
v = 19
value = 1

[State -1, Clone]
type = varset
triggerall = power >= 500
trigger1 = command = "cloneme2"
v = 19
value = 2

[State -1, Shove]
type = ChangeState
value = 6770
triggerall = power >= 500
triggerall = var(21) <= 0
trigger1 = command = "cloneme2"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Shove]
type = ChangeState
value = 6760
triggerall = var(22) <= 0
trigger1 = command = "cloneme1"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; ASSISTS
;---------------------------------------------------------------------------
;HoodIrony Assist
[State -1, HoodIrony Assist]
type = varset
triggerall = numhelper(2001)=0
trigger1 = command = "hoodirony1"
v = 8
value = 1

[State -1, HoodIrony Assist]
type = varset
triggerall = numhelper(2011)=0
triggerall = power >= 500
trigger1 = command = "hoodirony2"
v = 8
value = 2

[State -1, HoodIrony Assist]
type = ChangeState
value = 2000
triggerall = numhelper(2001)=0
triggerall = command = "hoodirony1"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr=SC,NA&&movehit

[State -1, HoodIrony Assist]
type = ChangeState
value = 2000
triggerall = numhelper(2011)=0
triggerall = power >= 500
triggerall = command = "hoodirony2"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr=SC,NA&&movehit
;---------------------------------------------------------------------------
;Xaq Assist
[State -1, Xaq Assist]
type = null
triggerall = numhelper(4001)=0
trigger1 = command = "xaq1"
v = 8
value = 1

[State -1, Xaq Assist]
type = null
value = 4000
triggerall = numhelper(4001)=0
trigger1 = command = "xaq1"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Kung Fu Throw
;[State -1, Kung Fu Throw]
;type = ChangeState
;value = 800
;triggerall = command = "y"
;triggerall = statetype = S
;triggerall = ctrl
;triggerall = stateno != 100
;trigger1 = command = "holdfwd"
;trigger1 = p2bodydist X < 3
;trigger1 = (p2statetype = S) || (p2statetype = C)
;trigger1 = p2movetype != H
;trigger2 = command = "holdback"
;trigger2 = p2bodydist X < 5
;trigger2 = (p2statetype = S) || (p2statetype = C)
;trigger2 = p2movetype != H

;---------------------------------------------------------------------------
;SwitchUp
[State -1, SwitchUp]
type = ChangeState
value = 250
triggerall = power >= 250
triggerall = command = "c"
;triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 200 && movecontact

;---------------------------------------------------------------------------
;Stand LP (Rush)
[State -1, Stand LP (Rush)]
type = ChangeState
value = 201
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = var(3) = 1
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 221)&&animelemtime(10)>=0 || (stateno = 200) || (stateno = 201) || (stateno = 250)|| (stateno = 8000)
trigger2 = movehit
trigger3= animelemtime(7)>0
trigger3 = stateno = 231
trigger3 = movehit

;---------------------------------------------------------------------------
;Stand SP (Rush) (MENTAL NOTE: I HAATE CODING CMD SHIT)
[State -1, Stand SP (Rush)]
type = ChangeState
value = 211
triggerall = var(49) = 0
triggerall = var(49) != 1
triggerall = var(3) = 1
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = stateno != 211
trigger1 = ctrl
trigger2 = stateno = 201||stateno = 231&&animelemtime(6)>0||(stateno = 221)&&animelemtime(10)>=0
trigger2 = movehit


;---------------------------------------------------------------------------
;Stand LK (Rush)
[State -1, Stand LK (Rush)]
type = ChangeState
value = 231
triggerall = var(3) = 1
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 330||(stateno = 200) && time > 8||STATENO=201||STATENO=211&& animelemtime(4)>0||(stateno = 221)&&animelemtime(10)>=0
trigger2 = movehit
;---------------------------------------------------------------------------
;Spin (Rush)
[State -1, Spin (Rush)]
type = ChangeState
value = 221
triggerall = var(3) = 1
triggerall = var(23) <3
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 211&&animelemtime(4)>0
trigger2 = movehit

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Air LP (Rush)]
type = ChangeState
value = 601
triggerall = var(3) = 1
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 601 && prevstateno!=601|| stateno = 621 &&AnimElemTime (15) > 0 
trigger2 = movehit


;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Air HP (Rush)]
type = ChangeState
value = 611
triggerall = var(3) = 1
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
;trigger2 = stateno = 601 || stateno = 631 || stateno = 621 &&AnimElemTime (15) > 0 ;jump_x or jump_a
trigger2 = stateno = 601 || stateno = 621 &&AnimElemTime (15) > 0 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking
;Jump Light Punch
[State -1, Air LP (Rush)]
type = null ;<--- Please do not unnull this for now.
value = 631
triggerall = var(3) = 1
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 601 ||stateno = 611
trigger2 = movehit
;Jump Light Punch
[State -1, Air LP (Rush)]
type = ChangeState
value = 641
triggerall = var(3) = 1
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 611 || stateno = 631
trigger2 = movehit

;Crouching Light Punch
[State -1, Crouch LP (Rush)]
type = ChangeState
value = 401
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = var(3) = 1
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 401
trigger2 = movehit
trigger2 = time > 8
trigger3 = (stateno = 431)||(stateno = 401)||(stateno = 8000)||(stateno = 231)||(stateno = 201)
trigger3 = movehit
trigger4 = (stateno = 421) && time > 3
trigger5 = (stateno = 450) && movecontact


;Jump Strong Punch
[State -1, Air Spin (Rush)]
type = ChangeState
value = 621
triggerall = var(3) = 1
triggerall = var(23) <3
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 611 || stateno = 641 || stateno = 621 &&AnimElemTime (15) > 0 
trigger2 = movecontact
;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = null
value = 631
triggerall = var(3) = 1
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 601 || stateno = 631 && prevstateno!=631|| stateno = 621 &&AnimElemTime (15) > 0 
trigger2 = movecontact
;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 641
triggerall = var(3) = 1
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 601 || stateno = 631|| stateno = 611 || stateno = 621 &&AnimElemTime (15) > 0 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking
;Standing Strong Kick
[State -1, Stand HK (Shoto)]
type = ChangeState
value = 241
triggerall = var(3) = 1
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 211) && movecontact&&animelemtime(4)>0
trigger3 = (stateno = 231) && movecontact

;===========================================================================
;---------------------------------------------------------------------------
;Stand LP (Shoto)
[State -1, Stand LP (Shoto)]
type = ChangeState
value = 200
triggerall = command = "x" && !var(59)
triggerall = command != "holddown"
triggerall = var(3) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 8
trigger3 = (stateno = 230)||(stateno = 200)||(stateno = 8000)
trigger3 = movehit
trigger4 = (stateno = 220) && p2dist x < 0
trigger5 = (stateno = 250) && movecontact

;===============================================================================
;===============================================================================

;---------------------------------------------------------------------------
;Stand SP (Shoto)
[State -1, Stand SP (Shoto)]
type = ChangeState
value = 210
triggerall = var(49) = 0
triggerall = var(49) != 1
triggerall = var(3) = 0
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6
trigger4 = (stateno = 220) && p2dist x < 0
trigger5 = (stateno = 250) && movecontact
trigger6 = (stateno = [200,201]) ||(stateno = [230,231])
trigger6 = movecontact

;---------------------------------------------------------------------------
;Spin (Shoto)
[State -1, Spin (Shoto)]
type = ChangeState
value = 220
triggerall = var(3) = 0
triggerall = var(21) = 0
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 221) && time > 19
trigger3 = (stateno = 200) && time > 8
trigger4 = (stateno = 240) && time > 19
trigger5 = (stateno = 230) && time > 8

;---------------------------------------------------------------------------
;Stand LK (Shoto)
[State -1, Stand LK (Shoto)]
type = ChangeState
value = 230
triggerall = var(3) = 0
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 230) && movehit
trigger3 = (stateno = 200) && movehit
trigger4 = (stateno = 250) && movecontact

;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1, Stand HK (Shoto)]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 210) && movecontact
trigger3 = (stateno = 230) && movecontact
;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = var(3) = 0
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = time > 8
trigger3 = (stateno = 430)||(stateno = 400)||(stateno = 8000)||(stateno = 230)||(stateno = 200)
trigger3 = movehit
trigger4 = (stateno = 420) && time > 3
trigger5 = (stateno = 450) && movecontact


;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Crouching Light Kick
;[State -1, Crouching Light Kick]
;type = ChangeState
;value = 430
;triggerall = command = "a"
;triggerall = command = "holddown"
;trigger1 = statetype = C
;trigger1 = ctrl
;trigger2 = (stateno = 400) || (stateno = 430)
;trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Crouching Strong Kick
;[State -1, Crouching Strong Kick]
;type = ChangeState
;value = 440
;;triggerall = command = "b"
;;triggerall = command = "holddown"
;trigger1 = statetype = C
;trigger1 = ctrl
;trigger2 = (stateno = 400) || (stateno = 430)
;trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 7
trigger3 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking


;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = var(3) = 0
triggerall = var(21) = 0
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 621) && time > 19
trigger3 = (stateno = 600) && time > 8

;---------------------------------------------------------------------------
;Jump Light Kick
;[State -1, Jump Light Kick]
;type = ChangeState
;value = 630
;triggerall = command = "a"
;trigger1 = statetype = A
;trigger1 = ctrl
;trigger2 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630|| stateno = 610 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking


; I have the crouch kicks and air light kick commented off for now simply 
; because I'm not really motivated to animate and code all of that right 
; now. But I know I will one day...~
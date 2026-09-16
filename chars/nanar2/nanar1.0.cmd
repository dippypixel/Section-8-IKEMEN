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

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery" ;Required (do not remove)
command = x+y
time = 1

;-| Single Dir |------------------------------------------------------------
[Command]
name = "fwd" ;Required (do not remove)
command = $F
time = 1

[Command]
name = "downfwd"
command = $DF
time = 1

[Command]
name = "down" ;Required (do not remove)
command = $D
time = 1

[Command]
name = "downback"
command = $DB
time = 1

[Command]
name = "back" ;Required (do not remove)
command = $B
time = 1

[Command]
name = "upback"
command = $UB
time = 1

[Command]
name = "up" ;Required (do not remove)
command = $U
time = 1

[Command]
name = "upfwd"
command = $UF
time = 1

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

;--------------------------------------------------------------------------
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

;-| Final Attack |--------------------------------------------------------
[Command]
name = "final"
command = s ; OMG !!!
time = 100

;-| Giga Motions |--------------------------------------------------------
[Command]
name = "superpunch"
command = ~$F, B, $D, F, $B, x
time = 25

[Command]
name = "superpunch"
command = ~$F, B, $D, F, $B, y
time = 25

[Command]
name = "superpunch"
command = ~$F, B, $D, F, $B, z
time = 25

[Command]
name = "burp"
command = ~45$B, F, x+y
time = 5

[Command]
name = "burp"
command = ~45$B, F, y+z
time = 5

[Command]
name = "burp"
command = ~20$B, F, x+z
time = 5

[Command]
name = "spider"
command = ~x, F, F, a
time = 15

[Command]
name = "biokidz"
command = ~D,DB,B,D,DB,B,a
time = 25

[Command]
name = "biokidz"
command = ~D,DB,B,D,DB,B,b
time = 25

[Command]
name = "biokidz"
command = ~D,DB,B,D,DB,B,c
time = 25

;-| Hyper Motions |--------------------------------------------------------
[Command]
name = "upperxy"
command = ~D,D, x+y
time = 15

[Command]
name = "upperxy"
command = ~D,D, y+z
time = 15

[Command]
name = "upperxy"
command = ~D,D, x+z
time = 30

[Command]
name = "shootxy"
command = ~D,DB,B,x+y

[Command]
name = "shootxy"
command = ~D,DB,B,y+z

[Command]
name = "chainsawxy"
command = ~D, DF, F, x+z
time = 15

[Command]
name = "chainsawxy"
command = ~D, DF, F, y+z
time = 15

[Command]
name = "chainsawxy"
command = ~D, DF, F, x+y
time = 15

[Command]
name = "hype"
command = ~F, $D, B, x+y

[Command]
name = "hype"
command = ~F, $D, B, y+z

[Command]
name = "hype"
command = ~F, $D, B, x+z

[Command]
name = "3kickab"
command = /F, a+b

[Command]
name = "3kickab"
command = /F, b+c

[Command]
name = "3kickab"
command = /F, a+c
buffer.time = 7

[Command]
name = "upperkickab"
command = ~D,D,a+b

[Command]
name = "upperkickab"
command = ~D,D,b+c

[Command]
name = "upperkickab"
command = ~D,DF,F,a+b
time = 15

[Command]
name = "upperkickab"
command = ~D,DF,F,b+c
time = 15

[Command]
name = "upperkickab"
command = ~D,DB,B,a+b
time = 15

[Command]
name = "upperkickab"
command = ~D,DB,B,b+c
time = 15

;-| Special Motions |------------------------------------------------------
[Command]
name = "shootx"
command = ~B, $D, F, x
time = 15

[Command]
name = "shooty"
command = ~B, $D, F, y
time = 15

[Command]
name = "shootz"
command = ~B, $D, F, z
time = 15

[Command]
name = "upperx"
command = ~25$D, $U, x
time = 30

[Command]
name = "uppery"
command = ~25$D, $U, y
time = 30

[Command]
name = "upperz"
command = ~25$D, $U, z
time = 30

[Command]
name = "chainsawx"
command = ~D, DF,F,x
time = 15

[Command]
name = "chainsawy"
command = ~D, DF,F,y
time = 15

[Command]
name = "chainsawz"
command = ~D, DF,F,z
time = 15

[Command]
name = "3kicka"
command = /F, a
buffer.time = 7

[Command]
name = "3kickb"
command = b

[Command]
name = "3kickc"
command = c

[Command]
name = "upperkicka"
command = ~D, DB, B,a
time = 15

[Command]
name = "upperkicka"
command = ~D,DB,B,b
time = 15

[Command]
name = "upperkicka"
command = ~D,DB,B,c
time = 15

[Command]
name = "upperkickb"
command = ~D, DF, F,a
time = 15

[Command]
name = "upperkickb"
command = ~D, DF, F,b
time = 15

[Command]
name = "upperkickb"
command = ~D, DF, F,c
time = 15

[Command]
name = "upperkickc"
command = ~D,D,a
time = 10

[Command]
name = "upperkickc"
command = ~D,D,b
time = 10

[Command]
name = "upperkickc"
command = ~D,D,c
time = 10

[Command]
name = "bo"
command = c+z

[Command]
name = "dodgefwd"
command = x+a

[Command]
name = "dodgefwd"
command = /F, x+a

[Command]
name = "dodgebwd"
command = /B, x+a

[Command]
name = "dodge2"
command = ~F, $D, B, x
time = 15

[Command]
name = "dodge2"
command = ~F, $D, B, y
time = 15

[Command]
name = "dodge2"
command = ~F, $D, B, z
time = 15

[Command]
name = "push"
command = /B,x+y

[Command]
name = "push"
command = /B,y+z

[Command]
name = "cpush"
command = /DB,x+y

[Command]
name = "cpush"
command = /DB,y+z

[Command]
name = "sparry"
command = F
time = 1
Buffer.time = 3

[Command]
name = "cparry"
command = DF
time = 1
Buffer.time = 5

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 20

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 20

[Command]
name = "superjump"
command = ~D,U
time = 8

[Command]
name = "superjumpc"
command = U
time = 1

;-----------------------------------------------------------------------------

;EASY COMMANDS

[Command]
name = "backx"
command = /B, x
time = 1

[Command]
name = "backx"
command = /B, y
time = 1

[Command]
name = "backx"
command = /B, z
time = 1

[Command]
name = "fwdx"
command = /F, x
time = 1

[Command]
name = "fwdx"
command = /F, y
time = 1

[Command]
name = "fwdx"
command = /F, z
time = 1

[Command]
name = "backa"
command = /B, a
time = 1

[Command]
name = "backa"
command = /B, b
time = 1

[Command]
name = "backa"
command = /B, c
time = 1

[Command]
name = "fwda"
command = /F, a
time = 1

[Command]
name = "fwda"
command = /F, b
time = 1

[Command]
name = "fwda"
command = /F, c
time = 1

[Command]
name = "backsupera"
command = /B, a+b
time = 15

[Command]
name = "backsupera"
command = /B, b+c
time = 15

[Command]
name = "fwdsupera"
command = /F, a+b
time = 15

[Command]
name = "fwdsupera"
command = /F, b+c
time = 15

[Command]
name = "fwdsuperx"
command = /F, x+y
time = 15

[Command]
name = "fwdsuperx"
command = /F, y+z
time = 15

[Command]
name = "backsuperx"
command = /B, x+y
time = 15

[Command]
name = "backsuperx"
command = /B, y+z
time = 15

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

;CHEAP MODE WILL ONLY ACTIVITE AGAINST COMPUTER OPPENTS!!!

;you just will never win...
[State -1, StandParry]
type = hitoverride
triggerall = statetype = S
trigger1 = AIlevel = 8 && palno = 12 && enemy, AIlevel != 0
attr = SCA,NA,SA,HA,NP,SP,HP
stateno = 160
ignorehitPause = 1

[State -1, AirParry]
type = hitoverride
triggerall = statetype = A
trigger1 = AIlevel = 8 && palno = 12 && enemy, AIlevel != 0
attr = SCA,NA,SA,HA,NP,SP,HP
stateno = 161
ignorehitPause = 1

;END CHEAPMODE

[State -1, Final Attack]
type = ChangeState
value = 4000
triggerall = !win
triggerall = AIlevel = 3
triggerall = power >= 5000
triggerall = statetype != A
triggerall = p2stateno != 5300
triggerall = StageVar(info.name) != "The Swamp"
triggerall = StageVar(info.name) != "Huge Grasslands"
;triggerall = p2movetype != A
trigger1 = random <= 3
;trigger1 = p2bodydist x > 150
trigger1 = ctrl

[State -1, Final Attack]
type = ChangeState
value = 4000
triggerall = !win
triggerall = AIlevel = 4
triggerall = power >= 5000
triggerall = p2stateno != 5300
triggerall = StageVar(info.name) != "The Swamp"
triggerall = StageVar(info.name) != "Huge Grasslands"
;triggerall = p2movetype != A
triggerall = statetype != A
trigger1 = random <= 10
trigger1 = p2bodydist x > 150
trigger1 = ctrl

[State -1, Final Attack]
type = ChangeState
value = 4000
triggerall = !win
triggerall = AIlevel = 5
triggerall = power >= 5000
triggerall = p2stateno != 5300
triggerall = StageVar(info.name) != "The Swamp"
triggerall = StageVar(info.name) != "Huge Grasslands"
triggerall = p2movetype != A
triggerall = statetype != A
trigger1 = random <= 35
trigger1 = p2bodydist x > 150
trigger1 = ctrl

[State -1, Final Attack]
type = ChangeState
value = 4000
triggerall = !win
triggerall = AIlevel >= 6
triggerall = power >= 5000
triggerall = p2stateno != 5300
triggerall = StageVar(info.name) != "The Swamp"
triggerall = StageVar(info.name) != "Huge Grasslands"
triggerall = p2movetype != A
triggerall = statetype != A
trigger1 = p2bodydist x > 150
trigger1 = ctrl


[State -1, Super Jump Combo]
type = ChangeState
value = 41
triggerall = !win
triggerall = AIlevel = 1
trigger1 = stateno = 420
trigger1 = random <= 7
trigger1 = movehit

[State -1, Super Jump Combo]
type = ChangeState
value = 41
triggerall = !win
triggerall = AIlevel = 2
trigger1 = stateno = 420
trigger1 = random <= 32
trigger1 = movehit

[State -1, Super Jump Combo]
type = ChangeState
value = 41
triggerall = !win
triggerall = AIlevel = 3
trigger1 = stateno = 420
trigger1 = random <= 90
trigger1 = movehit

[State -1, Super Jump Combo]
type = ChangeState
value = 41
triggerall = !win
triggerall = AIlevel >= 4
trigger1 = stateno = 420
trigger1 = movehit

[State -1, UpperXY]
type = ChangeState
value = 3010
triggerall = !win
triggerall = partner, AILevel != 0
triggerall = AIlevel >= 1
triggerall = AIlevel <= 4
triggerall = power >= 1000
triggerall = P2statetype = A && p2movetype = H
triggerall = random <= 2
trigger1 = movehit
trigger1 = stateno = 1011
trigger2 = stateno = 1012


[State -1, UpperXY]
type = ChangeState
value = 3010
triggerall = !win
triggerall = partner, AILevel != 0
triggerall = AIlevel >= 1
triggerall = AIlevel <= 4
triggerall = power >= 1000
triggerall = P2statetype = A && p2movetype = H
triggerall = random <= 2
trigger1 = movehit
trigger1 = stateno = 1011
trigger2 = stateno = 1012

[State -1, UpperXY]
type = ChangeState
value = 3010
triggerall = !win
triggerall = partner, AILevel != 0
triggerall = AIlevel >= 5
triggerall = power >= 1000
triggerall = P2statetype = A && p2movetype = H
trigger1 = movehit
trigger1 = stateno = 1011 && time >= 11 && p2bodydist x > 10


[State -1, ShootXY]
type = ChangeState
value = 3000
triggerall = !win
triggerall = AIlevel = 1
triggerall = power >= 1000
trigger1 = random <= 1
trigger1 = statetype != A
trigger1 = ctrl
;trigger1 = p2bodydist x > 150
;trigger1 = p2statetype != A

[State -1, ShootXY]
type = ChangeState
value = 3000
triggerall = !win
triggerall = AIlevel = 2
triggerall = power >= 1000
trigger1 = random <= 3
trigger1 = statetype != A
trigger1 = ctrl
;trigger1 = p2bodydist x > 150
;trigger1 = p2statetype != A

[State -1, ShootXY]
type = ChangeState
value = 3000
triggerall = !win
triggerall = AIlevel = 3
triggerall = power >= 1000
trigger1 = random <= 7
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = p2bodydist x > 150
trigger1 = p2statetype != A

[State -1, ShootXY]
type = ChangeState
value = 3000
triggerall = !win
triggerall = AIlevel = 4
triggerall = power >= 1000
trigger1 = random <= 16
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = p2bodydist x > 150
trigger1 = p2statetype != A

[State -1, ShootXY]
type = ChangeState
value = 3000
triggerall = !win
triggerall = AIlevel = 5
triggerall = power >= 3000
trigger1 = random <= 22
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = p2bodydist x > 150
trigger1 = p2statetype != A

[State -1, ShootXY]
type = ChangeState
value = 3000
triggerall = !win
triggerall = AIlevel >= 6
triggerall = AILevel <= 7
triggerall = power >= 3000
trigger1 = random <= 62
trigger1 = statetype != A
trigger1 = Movetype != A
trigger1 = ctrl
trigger1 = p2bodydist x > 150
trigger1 = p2statetype != A

[State -1, ShootXY]
type = ChangeState
value = 3000
triggerall = !win
triggerall = AILevel = 8
triggerall = power >= 1000
triggerall = projhit = 1
trigger1 = stateno = 1001

[State -1, ShootY]
type = ChangeState
value = 1000
triggerall = !win
triggerall = AILevel >= 1
triggerall = AILevel <= 7
triggerall = P2movetype != A
triggerall = p2stateno != 5300
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = p2bodydist x > 150
trigger1 = random < (50 * (AIlevel ** 2 / 124.0))
trigger2 = statetype != A
trigger2 = ctrl
trigger2 = p2bodydist x > 100
trigger2 = power >= 3000
trigger2 = random < (100 * (AIlevel ** 2 / 124.0))

[State -1, ShootY]
type = ChangeState
value = 1000
triggerall = !win
triggerall = AILevel = 8
triggerall = P2movetype != A
triggerall = p2stateno != 5300
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = p2bodydist x > 150
trigger1 = power > 1000
trigger2 = statetype != A
trigger2 = ctrl
trigger2 = p2bodydist x > 100
trigger2 = power >= 3000
trigger3 = p2life <= 250
trigger3 = ctrl
trigger3 = p2bodydist x > 100
trigger3 = statetype != A

[State -1, StopShootY]
type = ChangeState
value = 1001
triggerall = !win
triggerall = AILevel >= 4
trigger1 = stateno = 1000 && time >= 6
trigger1 = p2statetype != A

[State -1, BurpBlast]
type = ChangeState
value = 7020
triggerall = AIlevel = 1
triggerall = power >= 2000
trigger1 = random <= 3
trigger1 = ctrl
;trigger1 = p2bodydist x > 150
trigger1 = statetype != A
;trigger1 = p2statetype != A
;trigger2 = stateno = 3001

[State -1, BurpBlast]
type = ChangeState
value = 7020
triggerall = AIlevel = 2
triggerall = power >= 2000
trigger1 = random <= 7
trigger1 = ctrl
trigger1 = p2bodydist x > 150
trigger1 = statetype != A
trigger1 = p2statetype != A
;trigger2 = stateno = 3001

[State -1, BurpBlast]
type = ChangeState
value = 7020
triggerall = AIlevel = 3
triggerall = power >= 2000
trigger1 = random <= 32
trigger1 = stateno = 3001


[State -1, BurpBlast]
type = ChangeState
value = 7020
triggerall = AIlevel = 4
triggerall = power >= 2000
trigger1 = random <= 58
trigger1 = stateno = 3001

[State -1, BurpBlast]
type = ChangeState
value = 7020
triggerall = AIlevel = 5
triggerall = power >= 2000
trigger1 = stateno = 3001

[State -1, BurpBlast]
type = ChangeState
value = 7020
triggerall = AIlevel >= 6
triggerall = power >= 2000
trigger1 = random <= 90
trigger1 = ctrl
trigger1 = p2bodydist x > 100
trigger1 = statetype != A
trigger1 = p2statetype != A
trigger2 = stateno = 3001

[State -1, Spider]
type = ChangeState
value = 7030
triggerall = AIlevel = 1
triggerall = power >= 4000
;triggerall = p2bodydist x > 100
triggerall = statetype != A
;triggerall = p2statetype != A
;triggerall = p2movetype != A
trigger1 = random <= 3
trigger1 = ctrl

[State -1, Spider]
type = ChangeState
value = 7030
triggerall = AIlevel = 2
triggerall = power >= 4000
triggerall = p2bodydist x > 150
triggerall = statetype != A
triggerall = p2statetype != A
;triggerall = p2movetype != A
trigger1 = random <= 7
trigger1 = ctrl

[State -1, Spider]
type = ChangeState
value = 7030
triggerall = AIlevel = 3
triggerall = power >= 4000
triggerall = p2bodydist x > 150
triggerall = statetype != A
;triggerall = p2statetype != A
triggerall = p2movetype != A
trigger1 = random <= 32
trigger1 = ctrl

[State -1, Spider]
type = ChangeState
value = 7030
triggerall = AIlevel = 4
triggerall = power >= 4000
triggerall = p2bodydist x > 100
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2movetype != A
trigger1 = random <= 58
trigger1 = ctrl

[State -1, Spider]
type = ChangeState
value = 7030
triggerall = AIlevel = 5
triggerall = power >= 4000
triggerall = p2bodydist x > 150
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2movetype != A
trigger1 = random <= 72
trigger1 = ctrl

[State -1, Spider]
type = ChangeState
value = 7030
triggerall = AIlevel >= 6
triggerall = power >= 4000
triggerall = p2bodydist x > 150
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2movetype != A
;trigger1 = random <= 90
trigger1 = ctrl


[State -1, Charge]
type = ChangeState
value = 710
triggerall = !win
triggerall = AIlevel >= 3
triggerall = AIlevel <= 5
triggerall = Random <= 24
trigger1 = power < 5000
trigger1 = p2bodydist x > 150
trigger1 = p2movetype != A
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Charge]
type = ChangeState
value = 710
triggerall = !win
triggerall = AIlevel >= 6
triggerall = AIlevel <= 8
triggerall = p2stateno != 5300
triggerall = power < 5000
triggerall = ctrl
triggerall = statetype != A
trigger1 = p2bodydist x > 150
trigger1 = p2movetype != A
trigger1 = Random <= 58
trigger2 = p2statetype = L


[State -1, StopCharge]
type = ChangeState
triggerall = AIlevel >= 1
triggerall = stateno = 710
trigger1 = p2bodydist x <= 150
trigger2 = p2bodydist x <= 150 && p2bodydist y >= -175 && p2statetype = A
trigger3 = power >= 4999
trigger4 = p2movetype = A
trigger5 = win
trigger6 = p2stateno = 5300
value = 715
ctrl = 1

[State -1, UpperY]
type = ChangeState
value = 1011
triggerall = !win
triggerall = AIlevel = 1
triggerall = Random <= 3
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = p2bodydist x <= 100


[State -1, UpperY]
type = ChangeState
value = 1011
triggerall = !win
triggerall = AIlevel = 2
triggerall = Random <= 7
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = p2bodydist x <= 100 && p2bodydist y >= -175
trigger1 = p2statetype = A && p2movetype != H ;avoid spam


[State -1, UpperY]
type = ChangeState
value = 1011
triggerall = !win
triggerall = AIlevel = 3
triggerall = Random <= 16
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = p2bodydist x <= 100 && p2bodydist y >= -175
trigger1 = p2statetype = A && p2movetype != H ;avoid spam


[State -1, UpperY]
type = ChangeState
value = 1011
triggerall = !win
triggerall = AIlevel >= 4
triggerall = AIlevel <= 6
triggerall = Random <= 32
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = p2bodydist x <= 100 && p2bodydist y >= -175
trigger1 = p2statetype = A && p2movetype != H ;avoid spam


[State -1, UpperY]
type = ChangeState
value = 1011
triggerall = !win
triggerall = AIlevel = 7
triggerall = Random <= 58
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = p2bodydist x <= 100 && p2bodydist y >= -175
trigger1 = p2statetype = A && p2movetype != H ;avoid spam

[State -1, UpperY]
type = ChangeState
value = 1011
triggerall = !win
triggerall = AIlevel = 8
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = p2bodydist x <= 100 && p2bodydist y >= -175
trigger1 = p2statetype = A && p2movetype != H ;avoid spam

[State -1, UpperZ]
type = ChangeState
value = 1012
triggerall = !win
triggerall = AIlevel = 1
triggerall = random <= 3
trigger1 = statetype != A
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = p2bodydist x <= 80

[State -1, UpperZ]
type = ChangeState
value = 1012
triggerall = !win
triggerall = AIlevel = 2
triggerall = random <= 7
trigger1 = statetype != A
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = p2bodydist x <= 80

[State -1, UpperZ]
type = ChangeState
value = 1012
triggerall = !win
triggerall = AIlevel >= 3
triggerall = random <= 16
trigger1 = statetype != A
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = p2bodydist x <= 80

[State -1, UpperZ]
type = ChangeState
value = 1012
triggerall = !win
triggerall = AIlevel >= 1
triggerall = Random <= 22
trigger1 = stateno = 430 && movehit

[State -1, BioKidz]
type = ChangeState
value = 7010
triggerall = !win
triggerall = AIlevel = 1
triggerall = ctrl
triggerall = power >= 2000
trigger1 = random <= 3
trigger1 = statetype != A
trigger1 = statetype = S
;trigger1 = P2movetype = H

[State -1, BioKidz]
type = ChangeState
value = 7010
triggerall = !win
triggerall = AIlevel = 2
triggerall = power >= 2000
triggerall = ctrl
trigger1 = random <= 7
trigger1 = statetype != A
trigger1 = statetype = S
;trigger1 = P2movetype = H

[State -1, BioKidz]
type = ChangeState
value = 7010
triggerall = !win
triggerall = AIlevel = 3
triggerall = power >= 2000
triggerall = ctrl
trigger1 = random <= 32
trigger1 = statetype != A
trigger1 = statetype = S
trigger1 = P2movetype = H

[State -1, BioKidz]
type = ChangeState
value = 7010
triggerall = !win
triggerall = AIlevel = 4
triggerall = power >= 2000
triggerall = P2Statetype != A
triggerall = ctrl
triggerall = random <= 58
triggerall = statetype != A
triggerall = statetype = S
trigger1 = P2movetype = H

[State -1, BioKidz]
type = ChangeState
value = 7010
triggerall = !win
triggerall = AIlevel = 5
triggerall = power >= 2000
triggerall = P2Statetype != A
triggerall = ctrl
triggerall = random <= 72
triggerall = statetype != A
triggerall = statetype = S
trigger1 = P2movetype = H


[State -1, BioKidz]
type = ChangeState
value = 7010
triggerall = !win
triggerall = AIlevel = 6
triggerall = power >= 2000
triggerall = P2Statetype != A
triggerall = ctrl
triggerall = statetype != A
triggerall = statetype = S
trigger1 = random <= 90
trigger1 = P2movetype = H
trigger2 = P2Movetype = A
trigger2 = random <= 32

[State -1, BioKidz]
type = ChangeState
value = 7010
triggerall = !win
triggerall = AIlevel = 7
triggerall = power >= 2000
triggerall = P2Statetype != A
triggerall = ctrl
triggerall = statetype != A
triggerall = statetype = S
triggerall = random <= 150
trigger1 = P2movetype = H
trigger2 = P2Movetype = A

[State -1, BioKidz]
type = ChangeState
value = 7010
triggerall = !win
triggerall = AIlevel = 8
triggerall = power >= 2000
triggerall = P2Statetype != A
triggerall = ctrl
triggerall = statetype != A
triggerall = statetype = S
trigger1 = P2movetype = H
trigger2 = P2Movetype = A

[State -1, HitXY]
type = ChangeState
value = 3030
triggerall = AILevel = 2
triggerall = roundstate = 2
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger1 = movecontact
trigger1 = random <= 11
trigger1 = p2bodydist X <= 20
trigger2 = p2bodydist X <= 20
trigger2 = random <= 2
trigger2 = ctrl
trigger3 = stateno = 3040
trigger3 = random <= 50

[State -1, HitXY]
type = ChangeState
value = 3030
triggerall = AILevel = 3
triggerall = roundstate = 2
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger1 = movecontact
trigger1 = random <= 50
trigger1 = p2bodydist X <= 30
trigger2 = p2bodydist X <= 30
trigger2 = random <= 6
trigger2 = ctrl
trigger3 = stateno = 3040
trigger3 = random <= 75

[State -1, HitXY]
type = ChangeState
value = 3030
triggerall = AILevel = 4
triggerall = roundstate = 2
triggerall = power >= 1000
triggerall = statetype != A
triggerall = p2statetype != A
trigger1 = ctrl
trigger1 = movecontact
trigger1 = random <= 50
trigger1 = p2bodydist X <= 40
trigger2 = p2bodydist X <= 40
trigger2 = random <= 10
trigger2 = ctrl
trigger3 = stateno = 3040
trigger3 = random <= 100
trigger4 = stateno = 1041 && movehit
trigger4 = random <= 500

[State -1, HitXY]
type = ChangeState
value = 3030
triggerall = AILevel = 5
triggerall = roundstate = 2
triggerall = p2statetype != L
triggerall = power >= 1000
triggerall = statetype != A
triggerall = p2statetype != A
trigger1 = ctrl
trigger1 = movecontact
trigger1 = random <= 80
trigger1 = p2bodydist X <= 50
trigger2 = p2bodydist X <= 50
trigger2 = random <= 15
trigger2 = ctrl
trigger3 = stateno = 3040 && movecontact
trigger3 = time = 15
trigger4 = stateno = 1041 && movehit
trigger4 = random <= 500

[State -1, HitXY]
type = ChangeState
value = 3030
triggerall = AILevel = 6
triggerall = roundstate = 2
triggerall = p2statetype != L
triggerall = power >= 1000
triggerall = statetype != A
triggerall = p2statetype != A
trigger1 = ctrl
trigger1 = movecontact
trigger1 = random <= 100
trigger1 = p2bodydist X <= 50
trigger2 = p2bodydist X <= 50
trigger2 = random <= 100
trigger2 = ctrl
trigger3 = stateno = 3040 && movecontact
trigger3 = time = 15
trigger4 = stateno = 1041 && movehit
trigger4 = random <= 500

[State -1, HitXY]
type = ChangeState
value = 3030
triggerall = AILevel = 7
triggerall = roundstate = 2
triggerall = p2statetype != L
triggerall = power >= 1000
triggerall = statetype != A
triggerall = p2statetype != A
trigger1 = ctrl
trigger1 = movecontact
trigger1 = random <= 100
trigger1 = p2bodydist X <= 60
trigger2 = p2bodydist X <= 60
trigger2 = random <= 200
trigger2 = ctrl
trigger3 = stateno = 3040 && movecontact
trigger3 = time = 15
trigger4 = stateno = 1041 && movehit
trigger4 = random <= 500
trigger5 = p2movetype = A
trigger5 = random <= 500
trigger5 = ctrl
trigger5 = p2bodydist X <= 40

[State -1, HitXY]
type = ChangeState
value = 3030
triggerall = AILevel = 8
triggerall = roundstate = 2
triggerall = p2statetype != L
triggerall = power >= 1000
triggerall = statetype != A
triggerall = p2statetype != A
trigger1 = ctrl
trigger1 = movecontact
trigger1 = random <= 100
trigger1 = p2bodydist X <= 60
trigger2 = p2bodydist X <= 60
trigger2 = random <= 250
trigger2 = ctrl
trigger3 = stateno = 3040 && movecontact
trigger3 = time = 15
trigger4 = stateno = 1041 && movehit
trigger4 = random <= 500
trigger5 = p2movetype = A
trigger5 = ctrl
trigger5 = p2bodydist X <= 40


[State -1, Throw]
type = ChangeState
value = 850
triggerall = !win
triggerall = AIlevel = 1
triggerall = ctrl
trigger1 = Random <= 750
trigger1 = statetype = A
trigger1 = power < 1000
trigger1 = stateno = 640
trigger1 = movehit
trigger2 = p2bodydist x <= 20
trigger2 = p2bodydist y <= 10
trigger2 = Random <= 7

[State -1, Throw]
type = ChangeState
value = 850
triggerall = !win
triggerall = AIlevel >= 2
triggerall = AIlevel <= 4
triggerall = ctrl
trigger1 = Random <= 750
trigger1 = statetype = A
trigger1 = power < 1000
trigger1 = stateno = 640
trigger1 = movehit
trigger2 = p2bodydist x <= 20
trigger2 = p2bodydist y <= 10
trigger2 = Random <= 24


[State -1, Throw]
type = ChangeState
value = 850
triggerall = !win
triggerall = AIlevel = 5
triggerall = ctrl
trigger1 = Random <= 750
trigger1 = statetype = A
trigger1 = power < 1000
trigger1 = stateno = 640
trigger1 = movehit
trigger2 = p2bodydist x <= 20
trigger2 = p2bodydist y <= 10
trigger2 = Random <= 32

[State -1, Throw]
type = ChangeState
value = 850
triggerall = !win
triggerall = AIlevel = 6
triggerall = ctrl
trigger1 = Random <= 750
trigger1 = statetype = A
trigger1 = power < 1000
trigger1 = stateno = 640
trigger1 = movehit
trigger2 = p2bodydist x <= 20
trigger2 = p2bodydist y <= 10
trigger2 = Random <= 32

[State -1, Throw]
type = ChangeState
value = 850
triggerall = !win
triggerall = AIlevel = 7
triggerall = ctrl
trigger1 = Random <= 750
trigger1 = statetype = A
trigger1 = power < 1000
trigger1 = stateno = 640
trigger1 = movehit
trigger2 = p2bodydist x <= 20
trigger2 = p2bodydist y <= 10
trigger2 = Random <= 50
trigger3 = P2movetype = A
trigger3 = Random <= 50
trigger3 = p2bodydist x <= 20

[State -1, Throw]
type = ChangeState
value = 850
triggerall = !win
triggerall = AIlevel = 8
triggerall = ctrl
trigger1 = Random <= 750
trigger1 = statetype = A
trigger1 = power < 1000
trigger1 = stateno = 640
trigger1 = movehit
trigger2 = p2bodydist x <= 20
trigger2 = p2bodydist y <= 10
trigger2 = Random <= 50
trigger3 = P2movetype = A
trigger3 = p2bodydist x <= 20
trigger3 = Random <= 100

[State -1, Dodge 2]
type = ChangeState
value = 1030
triggerall = AILevel = 2
triggerall = statetype != A
triggerall = random <= 4
trigger1 = ctrl

[State -1, Dodge 2]
type = ChangeState
value = 1030
triggerall = AILevel = 3
triggerall = statetype != A
triggerall = ctrl
trigger1 = p2bodydist X >= 150
trigger1 = p2movetype = A
trigger1 = random <= 8
trigger2 = p2bodydist X <= 149
trigger2 = random <= 4

[State -1, Dodge 2]
type = ChangeState
value = 1030
triggerall = AILevel >= 4
triggerall = AILevel <= 6
triggerall = statetype != A
triggerall = ctrl
trigger1 = p2bodydist X >= 150
trigger1 = p2movetype = A
trigger1 = random < (150 * (AIlevel ** 2 / 124.0))
trigger2 = p2bodydist X <= 149
trigger2 = p2bodydist X >= 80
trigger2 = random < (100 * (AIlevel ** 2 / 124.0))

[State -1, Dodge 2]
type = ChangeState
value = 1030
triggerall = AILevel >= 7
triggerall = statetype != A
triggerall = ctrl
trigger1 = p2bodydist X >= 150
trigger1 = p2movetype = A
trigger1 = random < (200 * (AIlevel ** 2 / 124.0))
trigger2 = p2bodydist X <= 149
trigger2 = p2bodydist X >= 80
trigger2 = random < (150 * (AIlevel ** 2 / 124.0))

[State -1, HitX]
type = ChangeState
value = 1031
triggerall = AILevel >= 1
triggerall = stateno = 1030
triggerall = p2movetype != A
trigger1 = p2bodydist X <= 60
trigger1 = random < (750 * (AIlevel ** 2 / 124.0))

[State -1, HitY]
type = ChangeState
value = 1032
triggerall = AILevel >= 1
triggerall = stateno = 1030
triggerall = p2movetype != A
trigger1 = p2bodydist X >= 61
trigger1 = p2bodydist X <= 150
trigger1 = random < (750 * (AIlevel ** 2 / 124.0))

[State -1, HitY]
type = ChangeState
value = 1033
triggerall = AILevel >= 1
triggerall = stateno = 1030
triggerall = p2movetype != A
trigger1 = p2bodydist X <= 151
trigger1 = random < (750 * (AIlevel ** 2 / 124.0))

[State -1, 3KickAB]
type = ChangeState
value = 3040
triggerall = !win
triggerall = AIlevel >= 1
triggerall = power >= 1000
trigger4 = random >= 500
trigger1 = stateno = 1041
trigger1 = movehit

[State -1, 3KickC]
type = ChangeState
value = 1042
triggerall = !win
triggerall = AIlevel >= 1
trigger1 = stateno = 1041
trigger1 = movehit
trigger1 = power < 1000

[State -1, 3KickB]
type = ChangeState
value = 1041
triggerall = !win
triggerall = AIlevel >= 1
trigger1 = stateno = 1040
trigger1 = movehit


[State -1, 3KickA]
type = ChangeState
value = 1040
triggerall = !win
triggerall = AIlevel = 4
triggerall = Random <= 50
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = stateno = 440 && movehit


[State -1, 3KickA]
type = ChangeState
value = 1040
triggerall = !win
triggerall = AIlevel = 5
trigger1 = Random <= 2
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = p2bodydist x <= 100 && p2bodydist x > 40 ;&& p2statetype = C
trigger2 = stateno = 440 && movehit
trigger2 = Random <= 50

[State -1, 3KickA]
type = ChangeState
value = 1040
triggerall = !win
triggerall = AIlevel = 6
trigger1 = Random <= 12
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = p2bodydist x <= 100 && p2bodydist x > 40 ;&& p2statetype = C
trigger2 = stateno = 440 && movehit
trigger2 = Random <= 50

[State -1, 3KickA]
type = ChangeState
value = 1040
triggerall = !win
triggerall = AIlevel = 7
trigger1 = Random <= 58
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = p2bodydist x <= 100 && p2bodydist x > 40 ;&& p2statetype = C
trigger2 = stateno = 440 && movehit
trigger2 = Random <= 250

[State -1, 3KickA]
type = ChangeState
value = 1040
triggerall = !win
triggerall = AIlevel = 8
;triggerall = Random <= 110
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = p2bodydist x <= 100 && p2bodydist x > 40 ;&& p2statetype = C
trigger2 = stateno = 440 && movehit
trigger2 = Random <= 250

;Jump up and hit em!
[State -1, Jump]
type = ChangeState
value = 40
triggerall = !win
triggerall = AIlevel >= 1
triggerall = Random <= 12
trigger1 = p2bodydist x <= 80
trigger1 = statetype != A
trigger1 = statetype = S
trigger1 = p2movetype != A
trigger1 = ctrl


;Jump over shun goku satsu
[State -1, Jump]
type = ChangeState
value = 40
triggerall = !win
triggerall = AIlevel = 1
triggerall = random <= 3
trigger1 = p2bodydist x >= 80
trigger1 = statetype != A
trigger1 = statetype = S
trigger1 = p2movetype = A
trigger1 = ctrl


;Jump over shun goku satsu
[State -1, Jump]
type = ChangeState
value = 40
triggerall = !win
triggerall = AIlevel = 2
triggerall = random <= 7
trigger1 = p2bodydist x >= 80
trigger1 = statetype != A
trigger1 = statetype = S
trigger1 = p2movetype = A
trigger1 = ctrl


;Jump over shun goku satsu
[State -1, Jump]
type = ChangeState
value = 40
triggerall = !win
triggerall = AIlevel = 3
triggerall = random <= 32
trigger1 = p2bodydist x >= 80
trigger1 = statetype != A
trigger1 = statetype = S
trigger1 = p2movetype = A
trigger1 = ctrl


;Jump over shun goku satsu
[State -1, Jump]
type = ChangeState
value = 40
triggerall = !win
triggerall = AIlevel >= 4
triggerall = AIlevel <= 5
triggerall = random <= 58
trigger1 = p2bodydist x >= 150
trigger1 = statetype != A
trigger1 = statetype = S
trigger1 = p2movetype = A
trigger1 = ctrl


;Jump over shun goku satsu
[State -1, Jump]
type = ChangeState
value = 40
triggerall = !win
triggerall = AIlevel = 6
triggerall = random <= 72
trigger1 = p2bodydist x >= 150
trigger1 = statetype != A
trigger1 = statetype = S
trigger1 = p2movetype = A
trigger1 = ctrl

;Jump over shun goku satsu
[State -1, Jump]
type = ChangeState
value = 40
triggerall = !win
triggerall = AIlevel = 7
triggerall = random <= 150
trigger1 = p2bodydist x >= 150
trigger1 = statetype != A
trigger1 = statetype = S
trigger1 = p2movetype = A
trigger1 = ctrl

;walk fwd
;[State -1, Walk Fwd]
;type = ChangeState
;value = 20
;triggerall = !win
;triggerall = var(0)
;triggerall = ctrl
;triggerall = statetype != A
;trigger1 = p2bodydist x > 15
;trigger1 = p2bodydist x < 149


;===========================================================================
;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = !win
triggerall = AIlevel >= 3
triggerall = AIlevel <= 4
triggerall = statetype != A
triggerall = ctrl && stateno != 100
triggerall = random <= 8
trigger1 = p2statetype != A
trigger1 = p2movetype != A
trigger1 = p2bodydist x > 15

; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = !win
triggerall = AIlevel = 5
triggerall = statetype != A
triggerall = ctrl && stateno != 100
triggerall = random <= 15
trigger1 = p2statetype != A
trigger1 = p2movetype != A
trigger1 = p2bodydist x > 15

; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = !win
triggerall = AIlevel = 6
triggerall = statetype != A
triggerall = ctrl && stateno != 100
triggerall = random <= 30
trigger1 = p2statetype != A
trigger1 = p2movetype != A
trigger1 = p2bodydist x > 15

; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = !win
triggerall = AIlevel = 7
triggerall = statetype != A
triggerall = ctrl && stateno != 100
triggerall = random <= 50
trigger1 = p2statetype != A
trigger1 = p2movetype != A
trigger1 = p2bodydist x > 15

; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = !win
triggerall = AIlevel = 8
triggerall = statetype != A
triggerall = ctrl && stateno != 100
triggerall = random <= 250
trigger1 = p2statetype != A
trigger1 = p2movetype != A
trigger1 = p2bodydist x > 15

[State -1, UpperKickB]
type = ChangeState
value = 1052
triggerall = !win
triggerall = AIlevel >= 3
triggerall = AIlevel <= 5
trigger1 = Random <= 3
trigger1 = ctrl
trigger1 = p2bodydist x <= 200
trigger1 = p2bodydist x >= 100

[State -1, UpperKickB]
type = ChangeState
value = 1052
triggerall = !win
triggerall = AIlevel = 6
trigger1 = Random <= 8
trigger1 = ctrl
trigger1 = p2bodydist x <= 200
trigger1 = p2bodydist x >= 100



[State -1, UpperKickB]
type = ChangeState
value = 1052
triggerall = !win
triggerall = AIlevel = 7
trigger1 = Random <= 8
trigger1 = ctrl
trigger1 = p2bodydist x <= 200
trigger1 = p2bodydist x >= 100

[State -1, UpperKickB]
type = ChangeState
value = 1052
triggerall = !win
triggerall = AIlevel = 8
trigger1 = Random <= 15
trigger1 = ctrl
trigger1 = p2bodydist x <= 200
trigger1 = p2bodydist x >= 100

[State -1, UpperKickB]
type = ChangeState
value = 1054
triggerall = !win
triggerall = AIlevel >= 3
triggerall = AIlevel <= 5
trigger1 = stateno = 640
trigger1 = movecontact
trigger1 = random <= 400

[State -1, UpperKickB]
type = ChangeState
value = 1054
triggerall = !win
triggerall = AIlevel = 6
trigger1 = stateno = 640
trigger1 = movecontact
trigger1 = power >= 1000
trigger1 = random <= 500


[State -1, UpperKickB]
type = ChangeState
value = 1054
triggerall = !win
triggerall = AIlevel = 7
trigger1 = stateno = 640
trigger1 = movecontact
trigger1 = power >= 1000
trigger1 = random <= 750

[State -1, UpperKickB]
type = ChangeState
value = 1054
triggerall = !win
triggerall = AIlevel = 8
trigger1 = stateno = 640
trigger1 = movecontact
trigger1 = power >= 1000

[State -1, DodgeBwd]
type = ChangeState
value = 725
triggerall = !win
triggerall = AIlevel <= 7
triggerall = AIlevel >= 1
triggerall = ctrl = 1 
triggerall = statetype = S
triggerall = statetype != A
triggerall = p2bodydist x <= 110
trigger1 = p2statetype = L

[State -1, Stop Running]
type = ChangeState
triggerall = !win
triggerall = AIlevel >= 1
triggerall = stateno = 100
trigger1 = p2statetype = A
trigger1 = p2movetype = A
trigger1 = p2bodydist x <= 15
value = 0
ctrl = 1

; Parry
[State -1, StandParry]
type = hitoverride
triggerall = statetype != A
triggerall = statetype = S
triggerall = Movetype != H
trigger1 = random <= 3
triggerall = AIlevel = 1
attr = SCA,NA,SA,HA,NP,SP,HP
stateno = 160
ignorehitPause = 1

[State -1, StandParry]
type = hitoverride
triggerall = statetype != A
triggerall = statetype = S
triggerall = Movetype != H
trigger1 = random <= 7
triggerall = AIlevel = 2
attr = SCA,NA,SA,HA,NP,SP,HP
stateno = 160
ignorehitPause = 1

[State -1, StandParry]
type = hitoverride
triggerall = statetype != A
triggerall = statetype = S
triggerall = Movetype != H
trigger1 = random <= 16
triggerall = AIlevel = 3
attr = SCA,NA,SA,HA,NP,SP,HP
stateno = 160
ignorehitPause = 1

[State -1, StandParry]
type = hitoverride
triggerall = statetype != A
triggerall = statetype = S
triggerall = Movetype != H
trigger1 = random <= 32
triggerall = AIlevel = 4
attr = SCA,NA,SA,HA,NP,SP,HP
stateno = 160
ignorehitPause = 1

[State -1, StandParry]
type = hitoverride
triggerall = statetype != A
triggerall = statetype = S
triggerall = Movetype != H
trigger1 = random <= 58
triggerall = AIlevel = 5
attr = SCA,NA,SA,HA,NP,SP,HP
stateno = 160
ignorehitPause = 1

[State -1, StandParry]
type = hitoverride
triggerall = statetype != A
triggerall = statetype = S
triggerall = Movetype != H
trigger1 = random <= 100
triggerall = AIlevel >= 6
attr = SCA,NA,SA,HA,NP,SP,HP
stateno = 160
ignorehitPause = 1

[State -1, StandParry]
type = hitoverride
triggerall = statetype != A
triggerall = statetype = S
triggerall = Movetype != H
trigger1 = random <= 150
triggerall = AIlevel = 7
attr = SCA,NA,SA,HA,NP,SP,HP
stateno = 160
ignorehitPause = 1

[State -1, StandParry]
type = hitoverride
triggerall = statetype != A
triggerall = statetype = S
triggerall = Movetype != H
trigger1 = random <= 250
trigger2 = time >= 30
triggerall = AIlevel = 8
attr = SCA,NA,SA,HA,NP,SP,HP
stateno = 160
ignorehitPause = 1

;parry again if parryed
[State -1, StandParry]
type = hitoverride
triggerall = statetype != A
triggerall = statetype = S
triggerall = Movetype != H
triggerall = AIlevel >= 3
trigger1 = stateno = 160
attr = SCA,NA,SA,HA,NP,SP,HP
ignorehitPause = 1


[State -1, AirParry]
type = hitoverride
triggerall = statetype = A
triggerall = Movetype != H
triggerall = statetype != S
trigger1 = random <= 750
triggerall = AIlevel = 1
attr = SCA,NA,SA,HA,NP,SP,HP
stateno = 161
ignorehitPause = 1

[State -1, AirParry]
type = hitoverride
triggerall = statetype = A
triggerall = Movetype != H
triggerall = statetype != S
trigger1 = random <= 7
triggerall = AIlevel = 2
attr = SCA,NA,SA,HA,NP,SP,HP
stateno = 161
ignorehitPause = 1

[State -1, AirParry]
type = hitoverride
triggerall = statetype = A
triggerall = Movetype != H
triggerall = statetype != S
trigger1 = random <= 16
triggerall = AIlevel = 3
attr = SCA,NA,SA,HA,NP,SP,HP
stateno = 161
ignorehitPause = 1

[State -1, AirParry]
type = hitoverride
triggerall = statetype = A
triggerall = Movetype != H
triggerall = statetype != S
trigger1 = random <= 32
triggerall = AIlevel = 4
attr = SCA,NA,SA,HA,NP,SP,HP
stateno = 161
ignorehitPause = 1

[State -1, AirParry]
type = hitoverride
triggerall = statetype = A
triggerall = Movetype != H
triggerall = statetype != S
trigger1 = random <= 58
triggerall = AIlevel = 5
attr = SCA,NA,SA,HA,NP,SP,HP
stateno = 161
ignorehitPause = 1

[State -1, AirParry]
type = hitoverride
triggerall = statetype = A
triggerall = Movetype != H
triggerall = statetype != S
trigger1 = random <= 100
triggerall = AIlevel = 6
attr = SCA,NA,SA,HA,NP,SP,HP
stateno = 161
ignorehitPause = 1

[State -1, AirParry]
type = hitoverride
triggerall = statetype = A
triggerall = Movetype != H
triggerall = statetype != S
triggerall = AIlevel = 7
trigger1 = random <= 150
attr = SCA,NA,SA,HA,NP,SP,HP
stateno = 161
ignorehitPause = 1

[State -1, AirParry]
type = hitoverride
triggerall = statetype = A
triggerall = Movetype != H
triggerall = statetype != S
trigger1 = time <= 30
trigger1 = random <= 250
triggerall = AIlevel = 8
attr = SCA,NA,SA,HA,NP,SP,HP
stateno = 161
ignorehitPause = 1

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = !win
triggerall = AIlevel = 1
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = p2bodydist x <= 15 && p2statetype != A
trigger1 = random <= 7
trigger2 = stateno = 160 && time >= 9 && p2bodydist x > 15

[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = !win
triggerall = AIlevel = 2
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = p2bodydist x <= 15 && p2statetype != A
trigger1 = random <= 100
trigger2 = stateno = 160 && time >= 9 && p2bodydist x > 15

[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = !win
triggerall = AIlevel = 3
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = p2bodydist x <= 15 && p2statetype != A
trigger1 = random <= 250
trigger2 = stateno = 160 && time >= 9 && p2bodydist x > 15

[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = !win
triggerall = AIlevel = 4
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = p2bodydist x <= 15 && p2statetype != A
trigger1 = random <= 500
trigger2 = stateno = 160 && time >= 9 && p2bodydist x > 15

[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = !win
triggerall = AIlevel >= 5
triggerall = p2statetype != L
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = p2bodydist x <= 15 && p2statetype != A
;trigger1 = random <= 72
trigger2 = stateno = 160 && time >= 9 && p2bodydist x > 15

; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = !win
triggerall = AIlevel >= 1
triggerall = statetype = S
triggerall = statetype != A
trigger1 = p2stateno = 120
trigger1 = ctrl
trigger2 = p2stateno = 121
trigger2 = ctrl


;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = !win
triggerall = AIlevel = 1
triggerall = random <= 7
trigger1 = statetype != A
trigger1 = p2bodydist x < 15 && ctrl

[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = !win
triggerall = AIlevel = 2
triggerall = random <= 100
trigger1 = p2bodydist x < 15 && ctrl
trigger1 = statetype != A

[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = !win
triggerall = AIlevel = 3
triggerall = random <= 250
trigger1 = stateno = 430
trigger1 = movehit

[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = !win
triggerall = AIlevel = 4
triggerall = random <= 500
trigger1 = stateno = 430
trigger1 = movehit

[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = !win
triggerall = AIlevel >= 5
;triggerall = random <= 7
trigger1 = stateno = 430
trigger1 = movehit

;-------------------------------------------------

; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
triggerall = !win
triggerall = AIlevel >= 5
trigger1 = stateno = 440 && movecontact
value = 220
;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = !win
triggerall = AIlevel = 1
triggerall = random <= 7
trigger1 = p2bodydist x < 15 && ctrl
trigger1 = statetype != A

[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = !win
triggerall = AIlevel = 2
triggerall = random <= 100
trigger1 = p2bodydist x < 15 && ctrl
trigger1 = statetype != A

[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = !win
triggerall = AIlevel = 3
triggerall = random <= 250
trigger1 = stateno = 440
trigger1 = movecontact

[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = !win
triggerall = AIlevel = 4
triggerall = random <= 500
trigger1 = stateno = 440
trigger1 = movecontact

[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = !win
triggerall = AIlevel >= 5
trigger1 = stateno = 220
trigger1 = movecontact

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = !win
triggerall = AIlevel = 1
triggerall = random <= 7
trigger1 = p2bodydist x < 15 && ctrl
trigger1 = statetype != A

[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = !win
triggerall = AIlevel = 2
triggerall = random <= 100
trigger1 = p2bodydist x < 15 && ctrl
trigger1 = statetype != A

[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = !win
triggerall = AIlevel = 3
triggerall = random <= 250
trigger1 = stateno = 400
trigger1 = movecontact

[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = !win
triggerall = AIlevel = 4
triggerall = random <= 500
trigger1 = stateno = 400
trigger1 = movecontact

[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = !win
triggerall = AIlevel >= 5
;triggerall = random <= 7
trigger1 = stateno = 400
trigger1 = movecontact

;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = !win
triggerall = AIlevel = 1
triggerall = Random <= 7
trigger1 = p2bodydist x < 15 && ctrl
trigger1 = statetype != A

[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = !win
triggerall = AIlevel = 2
triggerall = Random <= 100
trigger1 = p2bodydist x < 15 && ctrl
trigger1 = statetype != A

[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = !win
triggerall = AIlevel = 3
triggerall = Random <= 250
trigger1 = stateno = 410
trigger1 = movecontact

[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = !win
triggerall = AIlevel = 4
triggerall = Random <= 500
trigger1 = stateno = 410
trigger1 = movecontact

[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = !win
triggerall = AIlevel >= 5
;triggerall = Random <= 7
trigger1 = stateno = 410
trigger1 = movecontact

;---------------------------------------------

;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = !win
triggerall = AIlevel >= 1
trigger1 = Statetype != A
trigger1 = ctrl
trigger1 = p2bodydist X < 50
trigger1 = random < (450 * (AIlevel ** 2 / 124.0))
trigger1 = p2statetype != L
trigger2 = prevstateno = 1053
trigger2 = stateno != 1053
trigger2 = statetype != A

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = !win
triggerall = AIlevel = 1
triggerall = Random <= 7
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = p2bodydist x <= 40
trigger1 = p2bodydist y <= 10
trigger1 = p2bodydist y >= -20
trigger1 = p2statetype = A

[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = !win
triggerall = AIlevel = 2
triggerall = Random <= 100
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = p2bodydist x <= 40
trigger1 = p2bodydist y <= 10
trigger1 = p2bodydist y >= -20
trigger1 = p2statetype = A

[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = !win
triggerall = AIlevel = 3
triggerall = Random <= 250
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = p2bodydist x <= 40
trigger1 = p2bodydist y <= 10
trigger1 = p2bodydist y >= -20
trigger1 = p2statetype = A

[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = !win
triggerall = AIlevel = 4
triggerall = Random <= 500
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = p2bodydist x <= 40
trigger1 = p2bodydist y <= 10
trigger1 = p2bodydist y >= -20
trigger1 = p2statetype = A

[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = !win
triggerall = AIlevel >= 5
;triggerall = Random <= 7
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = p2bodydist x <= 40
trigger1 = p2bodydist y <= 10
trigger1 = p2bodydist y >= -20
trigger1 = p2statetype = A

;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = !win
triggerall = AIlevel = 1
triggerall = Random <= 7
trigger1 = stateno = 630
trigger1 = movehit

[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = !win
triggerall = AIlevel = 2
triggerall = Random <= 16
trigger1 = stateno = 630
trigger1 = movehit

[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = !win
triggerall = AIlevel = 3
triggerall = Random <= 250
trigger1 = stateno = 630
trigger1 = movehit

[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = !win
triggerall = AIlevel = 4
triggerall = Random <= 500
trigger1 = stateno = 630
trigger1 = movehit

[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = !win
triggerall = AIlevel >= 5
;triggerall = Random <= 7
trigger1 = stateno = 630
trigger1 = movehit

;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = !win
triggerall = AIlevel >= 1
trigger1 = stateno = 600
trigger1 = movehit

;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = !win
triggerall = AIlevel >= 1
triggerall = Random <= 900
trigger1 = stateno = 610
trigger1 = movehit

[State -1, UpperKickAB]
type = ChangeState
value = 3050
triggerall = !win
triggerall = AIlevel = 1
triggerall = power >= 1000
trigger1 = ctrl
trigger1 = random <= 7


[State -1, UpperKickAB]
type = ChangeState
value = 3050
triggerall = !win
triggerall = AIlevel = 2
triggerall = power >= 1000
trigger1 = ctrl
trigger1 = random <= 16
trigger1 = p2bodydist x <= 40

[State -1, UpperKickAB]
type = ChangeState
value = 3050
triggerall = !win
triggerall = AIlevel = 3
triggerall = power >= 1000
trigger1 = random <= 90
trigger1 = stateno = 640
trigger1 = movehit

[State -1, UpperKickAB]
type = ChangeState
value = 3050
triggerall = !win
triggerall = AIlevel = 4
triggerall = power >= 1000
triggerall = random <= 90
trigger1 = stateno = 640
trigger1 = movehit
trigger2 = stateno = 1054
trigger2 = time >= 20
trigger2 = movehit

[State -1, UpperKickAB]
type = ChangeState
value = 3050
triggerall = !win
triggerall = AIlevel = 5
triggerall = power >= 1000
trigger1 = stateno = 640
trigger1 = movehit
trigger1 = random <= 300
trigger2 = stateno = 1054
trigger2 = time >= 20
trigger2 = movehit

[State -1, UpperKickAB]
type = ChangeState
value = 3050
triggerall = !win
triggerall = AIlevel >= 6
triggerall = power >= 1000
trigger1 = stateno = 1054
trigger1 = time >= 20
trigger1 = movehit

[State -1, SuperPunch]
type = ChangeState
value = 7000
triggerall = AIlevel <= 5
triggerall = AIlevel >= 3
triggerall = power >= 2000
triggerall = random <= 300
trigger1 = stateno = 3052 && pos y >= -50
trigger1 = movehit
trigger2 = stateno = 3010 && time >= 675 && movehit

[State -1, SuperPunch]
type = ChangeState
value = 7000
triggerall = AIlevel = 6
triggerall = power >= 2000
triggerall = random <= 400
trigger1 = stateno = 3052 && pos y >= -50
trigger1 = movehit
trigger2 = stateno = 3010 && time >= 675 && movehit

[State -1, SuperPunch]
type = ChangeState
value = 7000
triggerall = AIlevel = 7
triggerall = power >= 2000
triggerall = random <= 500
trigger1 = stateno = 3052 && pos y >= -50
trigger1 = movehit
trigger2 = stateno = 3010 && time >= 675 && movehit

[State -1, SuperPunch]
type = ChangeState
value = 7000
triggerall = AIlevel = 8
triggerall = power >= 2000
trigger1 = stateno = 3052 && pos y >= -50
trigger1 = movehit
trigger2 = stateno = 3010 && time >= 675 && movehit
;---------------------------------------------------------------------------
; Jump Medium punch
[State -1, Jump Medium Kick]
type = ChangeState
value = 620
triggerall = !win
triggerall = AIlevel >= 1
triggerall = random <= 750
trigger1 = stateno = 640
trigger1 = movehit

; Jump Medium kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 650
triggerall = !win
triggerall = AIlevel >= 1
triggerall = random <= 750
trigger1 = stateno = 640
trigger1 = movehit


; ==========================
; AI Standing Guard
; ==========================
[State -1]
type = ChangeState
triggerall = AIlevel = 2 ;AI trigger used
triggerall = Statetype != A ;Player is not in the air
triggerall = P2statetype != C ;Player is not crouching
triggerall = Statetype = S ;Player is currently standing
triggerall = P2Movetype = A ;Opponent is attacking
triggerall = Pos Y != [-1,-999]
triggerall = random <= 100
trigger1 = ctrl = 1
value = 120 ;Default standing guard state

[State -1]
type = ChangeState
triggerall = AIlevel = 3 ;AI trigger used
triggerall = Statetype != A ;Player is not in the air
triggerall = P2statetype != C ;Player is not crouching
triggerall = Statetype = S ;Player is currently standing
triggerall = P2Movetype = A ;Opponent is attacking
triggerall = Pos Y != [-1,-999]
triggerall = random <= 200
trigger1 = ctrl = 1
value = 120 ;Default standing guard state

[State -1]
type = ChangeState
triggerall = AIlevel = 4 ;AI trigger used
triggerall = Statetype != A ;Player is not in the air
triggerall = P2statetype != C ;Player is not crouching
triggerall = Statetype = S ;Player is currently standing
triggerall = P2Movetype = A ;Opponent is attacking
triggerall = Pos Y != [-1,-999]
triggerall = random <= 400
trigger1 = ctrl = 1
value = 120 ;Default standing guard state

[State -1]
type = ChangeState
triggerall = AIlevel = 5 ;AI trigger used
triggerall = Statetype != A ;Player is not in the air
triggerall = P2statetype != C ;Player is not crouching
triggerall = Statetype = S ;Player is currently standing
triggerall = P2Movetype = A ;Opponent is attacking
triggerall = Pos Y != [-1,-999]
triggerall = random <= 600
trigger1 = ctrl = 1
value = 120 ;Default standing guard state


[State -1]
type = ChangeState
triggerall = AIlevel = 6 ;AI trigger used
triggerall = Statetype != A ;Player is not in the air
triggerall = P2statetype != C ;Player is not crouching
triggerall = Statetype = S ;Player is currently standing
triggerall = P2Movetype = A ;Opponent is attacking
triggerall = Pos Y != [-1,-999]
triggerall = random <= 850
trigger1 = ctrl = 1
value = 120 ;Default standing guard state


[State -1]
type = ChangeState
triggerall = AIlevel >= 7 ;AI trigger used
triggerall = Statetype != A ;Player is not in the air
triggerall = P2statetype != C ;Player is not crouching
triggerall = Statetype = S ;Player is currently standing
triggerall = P2Movetype = A ;Opponent is attacking
triggerall = Pos Y != [-1,-999]
trigger1 = ctrl = 1
value = 120 ;Default standing guard state

; =============================
; AI Stand to Crouch Guard Transition
; =============================
[State -1]
type = ChangeState
triggerall = AIlevel >= 1
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
triggerall = Pos Y != [-1,-999]
trigger1 = stateno = 150
trigger1 = 1
value = 152

; =============================
; AI Crouching Guard
; =============================
[State -1]
type = ChangeState
triggerall = AIlevel = 2
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
triggerall = Pos Y != [-1,-999]
triggerall = random <= 100
trigger1 = ctrl = 1
value = 121

[State -1]
type = ChangeState
triggerall = AIlevel = 3
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
triggerall = Pos Y != [-1,-999]
triggerall = random <= 200
trigger1 = ctrl = 1
value = 121

[State -1]
type = ChangeState
triggerall = AIlevel = 4
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
triggerall = Pos Y != [-1,-999]
triggerall = random <= 400
trigger1 = ctrl = 1
value = 121

[State -1]
type = ChangeState
triggerall = AIlevel = 5
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
triggerall = Pos Y != [-1,-999]
triggerall = random <= 600
trigger1 = ctrl = 1
value = 121

[State -1]
type = ChangeState
triggerall = AIlevel = 6
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
triggerall = Pos Y != [-1,-999]
triggerall = random <= 850
trigger1 = ctrl = 1
value = 121

[State -1]
type = ChangeState
triggerall = AIlevel >= 7
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
triggerall = Pos Y != [-1,-999]
trigger1 = ctrl = 1
value = 121

; =============================
; AI Crouch to Stand Guard Transition
; =============================
[State -1]
type = ChangeState
triggerall = AIlevel >= 1
triggerall = Statetype != A
triggerall = P2statetype != C
triggerall = P2Movetype = A
trigger1 = 1
trigger1 = stateno = 152
value = 150

;===============================================================================
;=========================| NOT AI ANYMORE !!! |================================
;===============================================================================
[State -1, Final Attack]
type = ChangeState
value = 4000
triggerall = command = "final"
triggerall = AILevel = 0
triggerall = power >= 5000
triggerall = StageVar(info.name) != "The Swamp"
triggerall = StageVar(info.name) != "Huge Grasslands"
triggerall = statetype != A
triggerall = p2stateno != 5300
trigger1 = ctrl
;trigger1 = var(29) != 0
;trigger1 = stateno != 4000
;trigger1 = stateno != 4001

[State -1, Super Jump]
type = ChangeState
value = 41
triggerall = AILevel = 0
triggerall = command = "superjump"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100 && Command = "superjumpc"

[State -1, Super Jump Combo]
type = ChangeState
value = 41
trigger1 = var(45) = 0
trigger1 = command = "superjumpc"
trigger1 = stateno = 420
trigger1 = movecontact
trigger2 = var(45) = 1
trigger2 = stateno = 420
trigger2 = movehit
trigger3 = stateno = 100
trigger3 = command = "superjumpc"

[State -1, SuperPunch]
type = ChangeState
value = 7000
triggerall = var(45) = 0 && AILevel = 0
triggerall = command = "superpunch"
triggerall = power >= 2000
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 230 || stateno = 250 || stateno = 220
trigger2 = movecontact
trigger3 = stateno = 210 || stateno = 240 || stateno = 400 || stateno = 430 || stateno = 410
trigger3 = movecontact
trigger4 = stateno = 440 || stateno = 450 || stateno = 420 || stateno = 1010 || stateno = 1011 || stateno = 1012
trigger4 = movecontact
trigger5 = stateno = 600 || stateno = 630 || stateno = 610 || stateno = 640
trigger5 = movecontact
trigger6 = stateno = 3010 || stateno = 3050 || stateno = 3051 || stateno = 3052
trigger6 = movecontact
trigger7 = stateno = 1050 || stateno = 1051 || stateno = 1053 || stateno = 1054
trigger7 = movecontact
trigger8 = stateno = 1056 || stateno = 1057
trigger8 = movecontact

[State -1, BurpBlast]
type = ChangeState
value = 7020
triggerall = var(45) = 0 && AILevel = 0
triggerall = command = "burp"
triggerall = power >= 2000
trigger1 = Statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 230 || stateno = 250 || stateno = 220
trigger2 = movecontact
trigger3 = stateno = 210 || stateno = 240 || stateno = 400 || stateno = 430 || stateno = 410
trigger3 = movecontact
trigger4 = stateno = 440 || stateno = 450 || stateno = 420 || stateno = 1010 || stateno = 1011 || stateno = 1012
trigger4 = movecontact
trigger5 = stateno = 1001 || stateno = 1004 || stateno = 1006 || stateno = 3000 || stateno = 3001

[State -1, Spider]
type = ChangeState
value = 7030
triggerall = var(45) = 0 && AILevel = 0
triggerall = command = "spider"
triggerall = power >= 4000
trigger1 = Statetype != A
trigger1 = ctrl

[State -1, BioKidz]
type = ChangeState
value = 7010
triggerall = var(45) = 0 && AILevel = 0
triggerall = command = "biokidz"
triggerall = power >= 2000
trigger1 = Statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 230 || stateno = 250 || stateno = 220
trigger2 = movecontact
trigger3 = stateno = 210 || stateno = 240 || stateno = 400 || stateno = 430 || stateno = 410
trigger3 = movecontact
trigger4 = stateno = 440 || stateno = 450 || stateno = 420 || stateno = 1010 || stateno = 1011 || stateno = 1012
trigger4 = movecontact
trigger6 = stateno = 1001 || stateno = 1004 || stateno = 1006 || stateno = 3000 || stateno = 3001

[State -1, UpperXY]
type = ChangeState
value = 3010
triggerall = var(45) = 0 && AILevel = 0
triggerall = command = "upperxy"
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 230 || stateno = 250 || stateno = 220
trigger2 = movecontact
trigger3 = stateno = 210 || stateno = 240 || stateno = 400 || stateno = 430 || stateno = 410
trigger3 = movecontact
trigger4 = stateno = 440 || stateno = 450 || stateno = 420 || stateno = 1010 || stateno = 1011 || stateno = 1012
trigger4 = movecontact
trigger5 = stateno = 600 || stateno = 630 || stateno = 610 || stateno = 640
trigger5 = movecontact

[State -1, HitXY]
type = ChangeState
value = 3030
triggerall = var(45) = 0 && AILevel = 0
triggerall = command = "hype"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact

[State -1, ShootXY]
type = ChangeState
value = 3000
triggerall = var(45) = 0 && AILevel = 0
triggerall = command = "shootxy"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 230 || stateno = 250 || stateno = 220
trigger2 = movecontact
trigger3 = stateno = 210 || stateno = 240 || stateno = 400 || stateno = 430 || stateno = 410
trigger3 = movecontact
trigger4 = stateno = 440 || stateno = 450 || stateno = 420
trigger4 = movecontact
trigger5 = stateno = 1001 || stateno = 1004 || stateno = 1006

[State -1, ChainsawXY]
type = ChangeState
value = 3020
triggerall = var(45) = 0 && AILevel = 0
triggerall = command = "chainsawxy"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 230 || stateno = 250 || stateno = 220
trigger2 = movecontact
trigger3 = stateno = 210 || stateno = 240 || stateno = 400 || stateno = 430 || stateno = 410
trigger3 = movecontact
trigger4 = stateno = 440 || stateno = 450 || stateno = 420
trigger4 = movecontact
trigger5 = stateno = 1020 || stateno = 1021 || stateno = 1022
trigger5 = movecontact

[State -1, 3KickAB]
type = ChangeState
value = 3040
triggerall = var(45) = 0 && AILevel = 0
triggerall = command = "3kickab"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 230 || stateno = 250 || stateno = 220
trigger2 = movecontact
trigger3 = stateno = 210 || stateno = 240 || stateno = 400 || stateno = 430 || stateno = 410
trigger3 = movecontact
trigger4 = stateno = 440 || stateno = 450 || stateno = 420
trigger4 = movecontact
trigger5 = stateno = 1040 || stateno = 1041
trigger5 = movecontact

[State -1, UpperKickAB]
type = ChangeState
value = 3050
triggerall = var(45) = 0 && AILevel = 0
triggerall = command = "upperkickab"
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 230 || stateno = 250 || stateno = 220
trigger2 = movecontact
trigger3 = stateno = 210 || stateno = 240 || stateno = 400 || stateno = 430 || stateno = 410
trigger3 = movecontact
trigger4 = stateno = 440 || stateno = 450 || stateno = 420
trigger4 = movecontact
trigger5 = stateno = 1050 || stateno = 1051 || stateno = 1053 || stateno = 1054
trigger5 = movecontact
trigger6 = stateno = 600 || stateno = 630 || stateno = 610 || stateno = 640
trigger6 = movecontact
trigger7 = stateno = 1056 || stateno = 1057
trigger7 = movecontact

[State -1, Throw]
type = ChangeState
value = 850
triggerall = var(45) = 0 && AILevel = 0
triggerall = statetype = A
trigger1 = command = "x" && command = "y"
trigger1 = stateno = 600 || stateno = 630 || stateno = 610 || stateno = 640
trigger1 = movecontact
trigger2 = command = "y" && command = "z"
trigger2 = stateno = 600 || stateno = 630 || stateno = 610 || stateno = 640
trigger2 = movecontact
trigger3 = command = "a" && command = "b"
trigger3 = stateno = 600 || stateno = 630 || stateno = 610 || stateno = 640
trigger3 = movecontact
trigger4 = command = "b" && command = "c"
trigger4 = stateno = 600 || stateno = 630 || stateno = 610 || stateno = 640
trigger4 = movecontact
trigger5 = ctrl && command = "x" && command = "y"
trigger6 = ctrl && command = "y" && command = "z"
trigger7 = ctrl && command = "a" && command = "b"
trigger8 = ctrl && command = "b" && command = "c"

[State -1, Push]
type = ChangeState
value = 165
triggerall = AILevel = 0
trigger1 = command = "push"
trigger1 = stateno = 150

[State -1, Push]
type = ChangeState
value = 166
triggerall = AILevel = 0
trigger1 = command = "push"
trigger1 = stateno = 152

[State -1, Push]
type = ChangeState
value = 167
triggerall = AILevel = 0
trigger1 = command = "cpush"
trigger1 = stateno = 151

[State -1, Throw]
type = ChangeState
value = 800
triggerall = var(45) = 0 && AILevel = 0
triggerall = ctrl
triggerall = statetype != A
trigger1 = command = "x" && command = "y"
trigger2 = command = "y" && command = "z"
trigger3 = command = "a" && command = "b"
trigger4 = command = "b" && command = "c"

[State -1, DodgeBwd]
type = ChangeState
value = 725
triggerall = AILevel = 0
trigger1 = command = "dodgebwd"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, DodgeFwd]
type = ChangeState
value = 720
triggerall = AILevel = 0
trigger1 = command = "dodgefwd"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Blow Out]
type = ChangeState
value = 700
triggerall = AILevel = 0
triggerall = command = "bo"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Taunt]
type = ChangeState
value = 710
triggerall = AILevel = 0
triggerall = command = "holdb" && command = "holdy"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, 2]
type = ChangeState
triggerall = AILevel = 0
trigger1 = command != "holdb" && command != "holdy"
trigger1 = stateno = 710
value = 715
ctrl = 1

[State -1, UpperZ]
type = ChangeState
value = 1012
triggerall = var(45) = 0 && AILevel = 0
triggerall = command = "upperz"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 230 || stateno = 250 || stateno = 220 || stateno = 210 || stateno = 240 || stateno = 400 || stateno = 430 || stateno = 410 || stateno = 440 || stateno = 450 || stateno = 420
trigger2 = movecontact
trigger3 = stateno = 40 || stateno = 41

[State -1, UpperY]
type = ChangeState
value = 1011
triggerall = var(45) = 0 && AILevel = 0
triggerall = command = "uppery"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 230 || stateno = 250 || stateno = 220 || stateno = 210 || stateno = 240 || stateno = 400 || stateno = 430 || stateno = 410 || stateno = 440 || stateno = 450 || stateno = 420
trigger2 = movecontact
trigger3 = stateno = 40 || stateno = 41

[State -1, UpperX]
type = ChangeState
value = 1010
triggerall = var(45) = 0 && AILevel = 0
triggerall = command = "upperx"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 230 || stateno = 250 || stateno = 220 || stateno = 210 || stateno = 240 || stateno = 400 || stateno = 430 || stateno = 410 || stateno = 440 || stateno = 450 || stateno = 420
trigger2 = movecontact
trigger3 = stateno = 40 || stateno = 41


[State -1, Dodge 2]
type = ChangeState
value = 1030
triggerall = var(45) = 0 && AILevel = 0
triggerall = command = "dodge2"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, HitZ]
type = ChangeState
value = 1033
triggerall = var(45) = 0 && AILevel = 0
triggerall = command = "z"
trigger1 = stateno = 1030

[State -1, HitY]
type = ChangeState
value = 1032
triggerall = var(45) = 0 && AILevel = 0
triggerall = command = "y"
trigger1 = stateno = 1030

[State -1, HitX]
type = ChangeState
value = 1031
triggerall = var(45) = 0 && AILevel = 0
triggerall = command = "x"
trigger1 = stateno = 1030

[State -1, ShootZ]
type = ChangeState
value = 1005
triggerall = var(45) = 0 && AILevel = 0
triggerall = command = "shootz"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 230 || stateno = 250 || stateno = 220 || stateno = 210 || stateno = 240 || stateno = 400 || stateno = 430 || stateno = 410 || stateno = 440 || stateno = 450 || stateno = 420
trigger2 = movecontact

[State -1, ShootY]
type = ChangeState
value = 1000
triggerall = var(45) = 0 && AILevel = 0
triggerall = command = "shooty"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 230 || stateno = 250 || stateno = 220 || stateno = 210 || stateno = 240 || stateno = 400 || stateno = 430 || stateno = 410 || stateno = 440 || stateno = 450 || stateno = 420
trigger2 = movecontact

[State -1, ShootX]
type = ChangeState
value = 1003
triggerall = var(45) = 0 && AILevel = 0
triggerall = command = "shootx"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 230 || stateno = 250 || stateno = 220 || stateno = 210 || stateno = 240 || stateno = 400 || stateno = 430 || stateno = 410 || stateno = 440 || stateno = 450 || stateno = 420
trigger2 = movecontact

[State -1, ChainsawZ]
type = ChangeState
value = 1022
triggerall = var(45) = 0 && AILevel = 0
triggerall = command = "chainsawz"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 230 || stateno = 250 || stateno = 220 || stateno = 210 || stateno = 240 || stateno = 400 || stateno = 430 || stateno = 410 || stateno = 440 || stateno = 450 || stateno = 420
trigger2 = movecontact
trigger3 = stateno = 1021 && anim = 1020
trigger3 = movecontact

[State -1, ChainsawY]
type = ChangeState
value = 1021
triggerall = var(45) = 0 && AILevel = 0
triggerall = command = "chainsawy"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 230 || stateno = 250 || stateno = 220 || stateno = 210 || stateno = 240 || stateno = 400 || stateno = 430 || stateno = 410 || stateno = 440 || stateno = 450 || stateno = 420
trigger2 = movecontact
trigger3 = stateno = 1020
trigger3 = movecontact

[State -1, ChainsawX]
type = ChangeState
value = 1020
triggerall = var(45) = 0 && AILevel = 0
triggerall = command = "chainsawx"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 230 || stateno = 250 || stateno = 220 || stateno = 210 || stateno = 240 || stateno = 400 || stateno = 430 || stateno = 410 || stateno = 440 || stateno = 450 || stateno = 420
trigger2 = movecontact

[State -1, 3KickC]
type = ChangeState
value = 1042
triggerall = command = "3kickc"
trigger1 = stateno = 1041
trigger1 = movecontact

[State -1, 3KickB]
type = ChangeState
value = 1041
triggerall = command = "3kickb"
trigger1 = stateno = 1040
trigger1 = movecontact

[State -1, 3KickA]
type = ChangeState
value = 1040
triggerall = var(45) = 0 && AILevel = 0
triggerall = command = "3kicka"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 230 || stateno = 250 || stateno = 220 || stateno = 210 || stateno = 240 || stateno = 400 || stateno = 430 || stateno = 410 || stateno = 440 || stateno = 450 || stateno = 420
trigger2 = movecontact

[State -1, UpperKickC]
type = ChangeState
value = 1055
triggerall = var(45) = 0 && AILevel = 0
triggerall = command = "upperkickc"
trigger1 = ctrl
trigger1 = statetype != A
trigger2 = stateno = 200 || stateno = 230 || stateno = 250 || stateno = 220 || stateno = 210 || stateno = 240 || stateno = 400 || stateno = 430 || stateno = 410 || stateno = 440 || stateno = 450 || stateno = 420
trigger2 = movecontact

[State -1, UpperKickC]
type = ChangeState
value = 1057
triggerall = var(45) = 0 && AILevel = 0
triggerall = command = "upperkickc"
trigger1 = ctrl
trigger1 = statetype = A
trigger2 = stateno = 600 || stateno = 630 || stateno = 610 || stateno = 640
trigger2 = movecontact

[State -1, UpperKickB]
type = ChangeState
value = 1052
triggerall = var(45) = 0 && AILevel = 0
triggerall = command = "upperkickb"
trigger1 = ctrl
trigger1 = statetype != A
trigger2 = stateno = 200 || stateno = 230 || stateno = 250 || stateno = 220 || stateno = 210 || stateno = 240 || stateno = 400 || stateno = 430 || stateno = 410 || stateno = 440 || stateno = 450 || stateno = 420
trigger2 = movecontact

[State -1, UpperKickB]
type = ChangeState
value = 1054
triggerall = var(45) = 0 && AILevel = 0 && AILevel = 0
triggerall = AILevel = 0
triggerall = command = "upperkickb"
trigger1 = ctrl
trigger1 = statetype = A
trigger2 = stateno = 600 || stateno = 630 || stateno = 610 || stateno = 640
trigger2 = movecontact

[State -1, UpperKickA]
type = ChangeState
value = 1050
triggerall = var(45) = 0 && AILevel = 0 && AILevel = 0
triggerall = AILevel = 0
triggerall = command = "upperkicka"
trigger1 = ctrl
trigger1 = statetype != A
trigger2 = stateno = 200 || stateno = 230 || stateno = 250 || stateno = 220 || stateno = 210 || stateno = 240 || stateno = 400 || stateno = 430 || stateno = 410 || stateno = 440 || stateno = 450 || stateno = 420
trigger2 = movecontact

[State -1, UpperKickA]
type = ChangeState
value = 1051
triggerall = var(45) = 0 && AILevel = 0 && AILevel = 0
triggerall = AILevel = 0
triggerall = command = "upperkicka"
trigger1 = ctrl
trigger1 = statetype = A
trigger2 = stateno = 600 || stateno = 630 || stateno = 610 || stateno = 640
trigger2 = movecontact

;-------------------------------------------------------------------------

;EASY COMMANDS

;easy supers


[State -1, ShootXY]
type = ChangeState
value = 3000
triggerall = var(45) = 1
triggerall = command = "backsuperx"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 230 || stateno = 250 || stateno = 220
trigger2 = movecontact
trigger3 = stateno = 210 || stateno = 240 || stateno = 400 || stateno = 430 || stateno = 410
trigger3 = movecontact
trigger4 = stateno = 440 || stateno = 450 || stateno = 420
trigger4 = movecontact
trigger5 = stateno = 1001 || stateno = 1004 || stateno = 1006

[State -1, UpperKickAB]
type = ChangeState
value = 3050
triggerall = var(45) = 1
triggerall = command = "backsupera"
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 230 || stateno = 250 || stateno = 220
trigger2 = movecontact
trigger3 = stateno = 210 || stateno = 240 || stateno = 400 || stateno = 430 || stateno = 410
trigger3 = movecontact
trigger4 = stateno = 440 || stateno = 450 || stateno = 420
trigger4 = movecontact
trigger5 = stateno = 1050 || stateno = 1051 || stateno = 1053 || stateno = 1054
trigger5 = movecontact
trigger6 = stateno = 600 || stateno = 630 || stateno = 610 || stateno = 640
trigger6 = movecontact
trigger7 = stateno = 1056 || stateno = 1057
trigger7 = movecontact

[State -1, 3KickAB]
type = ChangeState
value = 3040
triggerall = var(45) = 1
triggerall = command = "fwdsupera"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 230 || stateno = 250 || stateno = 220
trigger2 = movecontact
trigger3 = stateno = 210 || stateno = 240 || stateno = 400 || stateno = 430 || stateno = 410
trigger3 = movecontact
trigger4 = stateno = 440 || stateno = 450 || stateno = 420
trigger4 = movecontact
trigger5 = stateno = 1040 || stateno = 1041
trigger5 = movecontact

[State -1, UpperXY]
type = ChangeState
value = 3010
triggerall = var(45) = 1
triggerall = command = "fwdsuperx"
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 230 || stateno = 250 || stateno = 220
trigger2 = movecontact
trigger3 = stateno = 210 || stateno = 240 || stateno = 400 || stateno = 430 || stateno = 410
trigger3 = movecontact
trigger4 = stateno = 440 || stateno = 450 || stateno = 420 || stateno = 1010 || stateno = 1011 || stateno = 1012
trigger4 = movecontact
trigger5 = stateno = 600 || stateno = 630 || stateno = 610 || stateno = 640
trigger5 = movecontact

;easy speacles

[State -1, 3KickA]
type = ChangeState
value = 1040
triggerall = var(45) = 1
triggerall = command = "fwda"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 230 || stateno = 250 || stateno = 220 || stateno = 210 || stateno = 240 || stateno = 400 || stateno = 430 || stateno = 410 || stateno = 440 || stateno = 450 || stateno = 420
trigger2 = movecontact

[State -1, ShootY]
type = ChangeState
value = 1000
triggerall = var(45) = 1
triggerall = command = "backx"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 230 || stateno = 250 || stateno = 220 || stateno = 210 || stateno = 240 || stateno = 400 || stateno = 430 || stateno = 410 || stateno = 440 || stateno = 450 || stateno = 420
trigger2 = movecontact

[State -1, UpperKickB]
type = ChangeState
value = 1054
triggerall = var(45) = 1
triggerall = command = "backa"
trigger1 = ctrl
trigger1 = statetype = A
trigger2 = stateno = 600 || stateno = 630 || stateno = 610 || stateno = 640
trigger2 = movecontact

[State -1, UpperKickB]
type = ChangeState
value = 1052
triggerall = var(45) = 1
triggerall = command = "backa"
trigger1 = ctrl
trigger1 = statetype != A
trigger2 = stateno = 200 || stateno = 230 || stateno = 250 || stateno = 220 || stateno = 210 || stateno = 240 || stateno = 400 || stateno = 430 || stateno = 410 || stateno = 440 || stateno = 450 || stateno = 420
trigger2 = movecontact

[State -1, UpperY]
type = ChangeState
value = 1011
triggerall = var(45) = 1
triggerall = command = "fwdx"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 230 || stateno = 250 || stateno = 220 || stateno = 210 || stateno = 240 || stateno = 400 || stateno = 430 || stateno = 410 || stateno = 440 || stateno = 450 || stateno = 420
trigger2 = movecontact

;---------------------------------------------------------------------------
; Parry
[State -1, StandParry]
type = hitoverride
triggerAll = statetype = S
triggerall = Movetype != H
trigger1 = !var(0)
trigger1 = command = "sparry"
attr = SA,NA,SA,HA,NP,SP,HP
stateno = 160
ignorehitPause = 1

[State -1, AirParry]
type = hitoverride
triggerAll = statetype = A
triggerall = Movetype != H
trigger1 = !var(0)
trigger1 = command = "sparry"
attr = SCA,NA,SA,HA,NP,SP,HP
stateno = 161
ignorehitPause = 1

[State -1, CrouchParry]
type = hitoverride
triggerAll = statetype = C
triggerall = Movetype != H
trigger1 = !var(0)
trigger1 = command = "cparry"
attr = C,NA,SA,HA,NP,SP,HP
stateno = 162
ignorehitPause = 1

;===========================================================================
;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = AILevel = 0
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = AILevel = 0
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = AILevel = 0
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(45) = 0 && AILevel = 0 && AILevel = 0
triggerall = AILevel = 0
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 400
trigger2 = movecontact

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = var(45) = 0 && AILevel = 0 && AILevel = 0
triggerall = AILevel = 0
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 230 || stateno = 400 || stateno = 430
trigger2 = movecontact

;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = var(45) = 0 && AILevel = 0 && AILevel = 0
triggerall = AILevel = 0
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 230 || stateno = 210 || stateno = 240 || stateno = 400 || stateno = 430 || stateno = 410 || stateno = 440
trigger2 = movecontact
trigger3 = stateno = 720 || stateno = 725

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = var(45) = 0 && AILevel = 0 && AILevel = 0
triggerall = AILevel = 0
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 400
trigger2 = movecontact

;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = var(45) = 0 && AILevel = 0 && AILevel = 0
triggerall = AILevel = 0
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 230 || stateno = 210 || stateno = 400 || stateno = 430 || stateno = 410
trigger2 = movecontact

;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = var(45) = 0 && AILevel = 0 && AILevel = 0
triggerall = AILevel = 0
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 230 || stateno = 210 || stateno = 240 || stateno = 400 || stateno = 430 || stateno = 410 || stateno = 440
trigger2 = movecontact
trigger3 = stateno = 720 || stateno = 725

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = var(45) = 0 && AILevel = 0 && AILevel = 0
triggerall = AILevel = 0
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 400
trigger2 = movecontact

;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = var(45) = 0 && AILevel = 0 && AILevel = 0
triggerall = AILevel = 0
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 230 || stateno = 400 || stateno = 430
trigger2 = movecontact

;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = var(45) = 0 && AILevel = 0 && AILevel = 0
triggerall = AILevel = 0
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 230 || stateno = 210 || stateno = 240 || stateno = 400 || stateno = 430 || stateno = 410 || stateno = 440
trigger2 = movecontact
trigger3 = stateno = 220 && movecontact

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = var(45) = 0 && AILevel = 0 && AILevel = 0
triggerall = AILevel = 0
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 400
trigger2 = movecontact

;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = var(45) = 0 && AILevel = 0 && AILevel = 0
triggerall = AILevel = 0
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 230 || stateno = 210 || stateno = 400 || stateno = 430 || stateno = 410
trigger2 = movecontact

;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = var(45) = 0 && AILevel = 0 && AILevel = 0
triggerall = AILevel = 0
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 230 || stateno = 210 || stateno = 240 || stateno = 400 || stateno = 430 || stateno = 410 || stateno = 440
trigger2 = movecontact

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(45) = 0 && AILevel = 0 && AILevel = 0
triggerall = AILevel = 0
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = var(45) = 0 && AILevel = 0 && AILevel = 0
triggerall = AILevel = 0
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630
trigger2 = movecontact

;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = var(45) = 0 && AILevel = 0 && AILevel = 0
triggerall = AILevel = 0
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 || stateno = 610 || stateno = 640
trigger2 = movecontact

;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = var(45) = 0 && AILevel = 0 && AILevel = 0
triggerall = AILevel = 0
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact

;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = var(45) = 0 && AILevel = 0 && AILevel = 0
triggerall = AILevel = 0
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 || stateno = 610
trigger2 = movecontact

;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = var(45) = 0 && AILevel = 0 && AILevel = 0
triggerall = AILevel = 0
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 || stateno = 610 || stateno = 640
trigger2 = movecontact

;-----------------------------------
;easy stuff
---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(45) = 1
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = stateno != 200
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movecontact

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = var(45) = 1
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = command = "y"
trigger2 = stateno = 200 || stateno = 230 || stateno = 400 || stateno = 430
trigger2 = command = "y"
trigger2 = movecontact
trigger3 = stateno = 200
trigger3 = command = "x"
trigger3 = movecontact

;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = var(45) = 1
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = command = "z"
trigger2 = stateno = 200 || stateno = 230 || stateno = 210 || stateno = 240 || stateno = 400 || stateno = 430 || stateno = 410 || stateno = 440
trigger2 = movecontact
trigger2 = command = "z"
trigger3 = stateno = 210
trigger3 = command = "x"
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = command = "y"
trigger4 = movecontact
trigger5 = stateno = 720 || stateno = 725
trigger5 = command = "z"

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = var(45) = 1
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = stateno != 230
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 400
trigger2 = movecontact

;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = var(45) = 1
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = command = "b"
trigger2 = stateno = 200 || stateno = 230 || stateno = 210 || stateno = 400 || stateno = 430 || stateno = 410
trigger2 = movecontact
trigger2 = command = "b"
trigger3 = command = "a"
trigger3 = stateno = 230
trigger3 = movecontact

;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = var(45) = 1
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = command = "c"
trigger2 = stateno = 200 || stateno = 230 || stateno = 210 || stateno = 240 || stateno = 400 || stateno = 430 || stateno = 410 || stateno = 440
trigger2 = movecontact
trigger2 = command = "c"
trigger3 = command = "a"
trigger3 = stateno = 240
trigger3 = movecontact
trigger4 = command = "b"
trigger4 = stateno = 240
trigger4 = movecontact
trigger5 = stateno = 720 || stateno = 725
trigger5 = command = "c"

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = var(45) = 1
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = stateno != 400
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact

;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = var(45) = 1
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = command = "y"
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 230 || stateno = 400 || stateno = 430
trigger2 = movecontact
trigger2 = command = "y"
trigger3 = command = "x"
trigger3 = stateno = 400
trigger3 = movecontact

;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = var(45) = 1
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = command = "z"
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 230 || stateno = 210 || stateno = 240 || stateno = 400 || stateno = 430 || stateno = 410 || stateno = 440
trigger2 = movecontact
trigger2 = command = "z"
trigger3 = command = "x"
trigger3 = stateno = 410
trigger3 = movecontact
trigger4 = command = "y"
trigger4 = stateno = 410
trigger4 = movecontact
trigger5 = stateno = 220 && movecontact
trigger5 = command = "x" || command = "y" || command = "z"

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = var(45) = 1
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = stateno != 430
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 400
trigger2 = movecontact

;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = var(45) = 1
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = command = "b"
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 230 || stateno = 210 || stateno = 400 || stateno = 430 || stateno = 410
trigger2 = movecontact
trigger2 = command = "b"
trigger3 = command = "a"
trigger3 = stateno = 430
trigger3 = movecontact

;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = var(45) = 1
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger1 = command = "c"
trigger2 = stateno = 200 || stateno = 230 || stateno = 210 || stateno = 240 || stateno = 400 || stateno = 430 || stateno = 410 || stateno = 440
trigger2 = movecontact
trigger2 = command = "c"
trigger3 = command = "a"
trigger3 = stateno = 440
trigger3 = movecontact
trigger4 = command = "b"
trigger4 = stateno = 440
trigger4 = movecontact

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(45) = 1
triggerall = command = "x"
triggerall = stateno != 600
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = var(45) = 1
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = command = "y"
trigger2 = stateno = 600 || stateno = 630
trigger2 = movecontact
trigger2 = command = "y"
trigger3 = command = "x"
trigger3 = stateno = 600
trigger3 = movecontact

;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = var(45) = 1
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = command = "z"
trigger2 = stateno = 600 || stateno = 630 || stateno = 610 || stateno = 640
trigger2 = movecontact
trigger2 = command = "z"
trigger3 = command = "x"
trigger3 = movecontact
trigger3 = stateno = 610
trigger4 = command = "y"
trigger4 = stateno = 610
trigger4 = movecontact

;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = var(45) = 1
triggerall = command = "a"
triggerall = stateno != 630
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact

;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = var(45) = 1
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = command = "b"
trigger2 = stateno = 600 || stateno = 630 || stateno = 610
trigger2 = movecontact
trigger2 = command = "b"
trigger3 = command = "a"
trigger3 = stateno = 630
trigger3 = movecontact

;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = var(45) = 1
trigger1 = statetype = A
trigger1 = command = "c"
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 || stateno = 610 || stateno = 640
trigger2 = movecontact
trigger2 = command = "c"
trigger3 = command = "a"
trigger3 = stateno = 640
trigger3 = movecontact
trigger4 = command = "b"
trigger4 = stateno = 640
trigger4 = movecontact









































;lolomgwtf







































;wtf

















;OMG WTH HOW DO YOU WIN?
[State -1, StandParry]
type = hitoverride
trigger1 = AIlevel = 666
attr = SCA,NA,SA,HA,NP,SP,HP
stateno = 160
ignorehitPause = 1

[State -1, HELL DOOM OF ATTACK NO WAZ]
type = ChangeState
value = 4000
triggerall = AIlevel = 666
trigger1 = random <= 2

[State -1, BioKidz form hell]
type = ChangeState
value = 7010
triggerall = AIlevel = 666
trigger1 = random <= 40
ignoresuperPause = 1

[State -1, spider form hell]
type = ChangeState
value = 7030
triggerall = AIlevel = 666
trigger1 = random <= 20
ignoresuperPause = 1

[State -1, gun form hell]
type = ChangeState
value = 3000
triggerall = AIlevel = 666
trigger1 = random <= 7
ignoresuperPause = 1


[State -1, burp form hell]
type = ChangeState
value = 7020
triggerall = AIlevel = 666
trigger1 = random <= 7
ignoresuperPause = 1

[State -1, wtf]
type = ChangeState
value = 3040
triggerall = AIlevel = 666
trigger1 = random <= 20
ignoresuperPause = 1


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
























command.time = 30

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.




;-| Super Motions |--------------------------------------------------------

;-| Special Motions |------------------------------------------------------

;-| Double Tap |-----------------------------------------------------------

[command]
name = "spin_hyper"
command = D,B,a+b
time = 20

[command]
name = "spinning_hyper"
command = D,F,a+b
time = 20
[command]
name = "Dash_hyper"
command = D,B,D,F,c
time = 30

[command]
name = "SHORYUKEN_3"
command = F,D,F,z
time = 20

[command]
name = "SHORYUKEN_2"
command = F,D,F,y
time = 20

[command]
name = "SHORYUKEN_1"
command = F,D,F,x
time = 20


[command]
name = "spin_3"
command = D,B,c
time = 15

[command]
name = "spin_2"
command = D,B,b
time = 15

[command]
name = "spin_1"
command = D,B,a
time = 15

[command]
name = "thingy_1"
command = B,D,F,z
time = 20

[command]
name = "hyper_1"
command = D,F,x+y
time = 15

[command]
name = "hyper_2"
command = D,B,x+y
time = 15


[command]
name = "projectile_kick"
command = B,D,F,c
time = 20

[command]
name = "charging"
command = a+x
time = 15


[command]
name = "proj_3"
command = D,F,y
time = 15


[command]
name = "proj_2"
command = D,F,z
time = 15

[command]
name = "proj_1"
command = D,F,x
time = 15

[command]
name = "back_teleport"
command = B,B
time = 15

[command]
name = "back_air teleport"
command = B,B
time = 15

[Command]
name = "DU"
command = D, U
time = 10

[command]
name = "teleport"
command = F,F
time = 15

[command]
name = "air teleport"
command = F,F
time = 15

[Command]
name = "FF"     ;Required (do not remove)
command = F, B
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = F, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery" ;Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "recovery"
command = x+z
time = 1

[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "recovery"
command = b+c
time = 1

[Command]
name = "recovery"
command = a+c
time = 1

[Command]
name = "xy"
command = x+y
time = 1

[Command]
name = "yz"
command = y+z
time = 1

[Command]
name = "xz"
command = x+z
time = 1

[Command]
name = "xyz"
command = x+y+z
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "back_x"
command = /$B,x
time = 1

[Command]
name = "back_y"
command = /$B,y
time = 1

[Command]
name = "back_z"
command = /$B,z
time = 1

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_z"
command = /$D,z
time = 1

[Command]
name = "fwd_x"
command = /$F,x
time = 1

[Command]
name = "fwd_y"
command = /$F,y
time = 1

[Command]
name = "fwd_z"
command = /$F,z
time = 1

[Command]
name = "up_x"
command = /$U,x
time = 1

[Command]
name = "up_y"
command = /$U,y
time = 1

[Command]
name = "up_z"
command = /$U,z
time = 1

[Command]
name = "back_a"
command = /$B,a
time = 1

[Command]
name = "back_b"
command = /$B,b
time = 1

[Command]
name = "back_c"
command = /$B,c
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_c"
command = /$D,c
time = 1

[Command]
name = "fwd_a"
command = /$F,a
time = 1

[Command]
name = "fwd_b"
command = /$F,b
time = 1

[Command]
name = "fwd_c"
command = /$F,c
time = 1

[Command]
name = "up_a"
command = /$U,a
time = 1

[Command]
name = "up_b"
command = /$U,b
time = 1

[Command]
name = "up_c"
command = /$U,c
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
name = "s"
command = s
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

;-| Hold Button |--------------------------------------------------------------
[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "hold_s"
command = /s
time = 1

[Command]
name = "holda"
command = /$c
time = 1

[Command]
name = "holdx"
command = /$c
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd" ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holddownfwd"
command = /$DF
time = 1

[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1

[Command]
name = "holddownback"
command = /$DB
time = 1

[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdupback"
command = /$UB
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holdupfwd"
command = /$UF
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
triggerall = !var(59)
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
[State ]
type = VarSet
trigger1 = AILevel
v =  59
value = 1

;==========================================================================
;========================= AI VARIABLE PROCESSING =========================
;==========================================================================
[State ]
type = poweradd
value = 10
trigger1 = helper(123456),var(0)
trigger1 = !var(59)

;===== Dark Sonic variables =====
;var(59) - AI variable
;

[State ] ;Last state hit counter
type=varset
trigger1 = movehit
v = 58
value = stateno

[State ] ;Reset hit variable
type=varset
triggerall = var(54) <= 0 || !helper(123456),var(1)
trigger1 = p2movetype!=H && p2statetype!=L && stateno!=[720, 740]
trigger2 = stateno=234
trigger3 = stateno=1080
trigger4 = stateno=1090
trigger5 = stateno=4200
trigger6 = stateno=8000
trigger7 = stateno=8001
v = 58
value = 0

[State ] ; Free to hit cancel on stand
type=varset
trigger1=1 || var(55):=0
trigger1=stateno!=210 || hitcount=2 || p2bodydist x > 30
trigger1=stateno!=230 || hitcount=2 || p2bodydist x > 30
trigger1=stateno!=240 || hitcount=4 || p2bodydist x > 5
trigger1=stateno!=671 || time>29
trigger1=stateno!=720 || time>31
trigger1=stateno!=730 || time>50
v = 55
value = 1

;========================
;===== DEBUT OUTPUT =====
;========================
[State ]
type = displaytoclipboard
trigger1 = !ishelper
text = "LH: %d, COMBO: %d, P2DX = %d, P2DY = %d, EDGE DIST: %d, P2VX: %d"
params = var(58), var(57), p2bodydist x, p2bodydist y, helper(123456),var(50), enemy,vel x

[State ]
type = appendtoclipboard
trigger1 = !ishelper
text = "\nLED: %d, RED: %d, BED: %d, VX: %d, VY: %d"
params = helper(123456),var(51), helper(123456),var(52), helper(123456),var(53), vel x, vel y

;============================================================================
;========================= PLAYER-CONTROlLED ACTIONS ========================
;============================================================================
[State -1, spin_hyper]
type = ChangeState
value = 8001
triggerall = !var(59)
triggerall = command = "spin_hyper"
trigger1 = (statetype = s) && ctrl
trigger1 =  power >= 1000

[State -1, spinning_hyper]
type = ChangeState
value = 8000
triggerall = !var(59)
triggerall = command = "spinning_hyper"
trigger1 = (statetype = s) && ctrl
trigger1 =  power >= 1000

[State -1, Combo_hyper]
type = ChangeState
value = 4200
triggerall = !var(59)
triggerall = command = "Dash_hyper"
trigger1 = (statetype = s) && ctrl
trigger1 =  power >= 3000

[State -1, SHORYUKEN_3]
type = ChangeState
value = 740
triggerall = !var(59)
triggerall = command = "SHORYUKEN_3"
triggerall = power >= 400
trigger1 = (statetype = s) && ctrl
Trigger2 = MoveContact
Trigger2 = Stateno = 200
Trigger3 = MoveContact
Trigger3 = Stateno = 210
Trigger4 = MoveContact
Trigger4 = Stateno = 220
Trigger5 = MoveContact
Trigger5 = Stateno = 230
Trigger6 = MoveContact
Trigger6 = Stateno = 240
Trigger7 = MoveContact
Trigger7 = Stateno = 250
Trigger8 = MoveContact
Trigger8 = Stateno = 720
Trigger9 = MoveContact
Trigger9 = Stateno = 730

[State -1, SHORYUKEN_1]
type = ChangeState
value = 720
triggerall = !var(59)
triggerall = command = "SHORYUKEN_1"
trigger1 = (statetype = s) && ctrl
Trigger2 = MoveContact
Trigger2 = Stateno = 200
Trigger3 = MoveContact
Trigger3 = Stateno = 210
Trigger4 = MoveContact
Trigger4 = Stateno = 220
Trigger5 = MoveContact
Trigger5 = Stateno = 230
Trigger6 = MoveContact
Trigger6 = Stateno = 240
Trigger7 = MoveContact
Trigger7 = Stateno = 250

[State -1, SHORYUKEN_2]
type = ChangeState
value = 730
triggerall = !var(59)
triggerall = command = "SHORYUKEN_2"
trigger1 = (statetype = s) && ctrl
Trigger2 = MoveContact
Trigger2 = Stateno = 200
Trigger3 = MoveContact
Trigger3 = Stateno = 210
Trigger4 = MoveContact
Trigger4 = Stateno = 220
Trigger5 = MoveContact
Trigger5 = Stateno = 230
Trigger6 = MoveContact
Trigger6 = Stateno = 240
Trigger7 = MoveContact
Trigger7 = Stateno = 250

[State -1, spin_3]
type = ChangeState
value = 672
triggerall = !var(59)
triggerall = command = "spin_3"
triggerall =  power >= 400
trigger1 = (statetype = s) && ctrl
Trigger2 = MoveContact
Trigger2 = Stateno = 200
Trigger3 = MoveContact
Trigger3 = Stateno = 210
Trigger4 = MoveContact
Trigger4 = Stateno = 220
Trigger5 = MoveContact
Trigger5 = Stateno = 230
Trigger6 = MoveContact
Trigger6 = Stateno = 240
Trigger7 = MoveContact
Trigger7 = Stateno = 250
Trigger8 = MoveContact
Trigger8 = Stateno = 670
Trigger9 = MoveContact
Trigger9 = Stateno = 671

[State -1, spin_2]
type = ChangeState
value = 671
triggerall = !var(59)
triggerall = command = "spin_2"
trigger1 = (statetype = s) && ctrl
Trigger2 = MoveContact
Trigger2 = Stateno = 200
Trigger3 = MoveContact
Trigger3 = Stateno = 210
Trigger4 = MoveContact
Trigger4 = Stateno = 220
Trigger5 = MoveContact
Trigger5 = Stateno = 230
Trigger6 = MoveContact
Trigger6 = Stateno = 240
Trigger7 = MoveContact
Trigger7 = Stateno = 250

[State -1, spin_1]
type = ChangeState
value = 670
triggerall = !var(59)
triggerall = command = "spin_1"
trigger1 = (statetype = s) && ctrl
Trigger2 = MoveContact
Trigger2 = Stateno = 200
Trigger3 = MoveContact
Trigger3 = Stateno = 210
Trigger4 = MoveContact
Trigger4 = Stateno = 220
Trigger5 = MoveContact
Trigger5 = Stateno = 230
Trigger6 = MoveContact
Trigger6 = Stateno = 240
Trigger7 = MoveContact
Trigger7 = Stateno = 250

[State -1, thingy_1]
type = ChangeState
value = 2080
triggerall = !var(59)
triggerall = command = "thingy_1"
trigger1 = (statetype = s) && ctrl
trigger1 =  power >= 2000

[State -1, spin_hyper]
type = SelfState
value = 1080
triggerall = !var(59)
triggerall = command = "hyper_2"
triggerall = alive && stateno=[5000,5210]
trigger1 =  power >= 1000

[State -1, hyper]
type = ChangeState
value = 1090
triggerall = !var(59)
triggerall = command = "hyper_1"
trigger1 = (statetype = s) && ctrl
trigger1 =  power >= 1000

[State -1, projectile_kick]
type = ChangeState
value = 234
triggerall = !var(59)
triggerall = command = "projectile_kick"
triggerall = power >= 2000
trigger1 = (statetype = s) && ctrl
Trigger2 = MoveContact
Trigger2 = Stateno = 200
Trigger3 = MoveContact
Trigger3 = Stateno = 210
Trigger4 = MoveContact
Trigger4 = Stateno = 220
Trigger5 = MoveContact
Trigger5 = Stateno = 230
Trigger6 = MoveContact
Trigger6 = Stateno = 240
Trigger7 = MoveContact
Trigger7 = Stateno = 250

[State -1, charging]
type = ChangeState
value = 654
triggerall = !var(59)
triggerall = command = "charging"
trigger1 = (statetype = s) && ctrl
trigger1 =  power < 5000

[State -1, projectile3]
type = ChangeState
value = 666
triggerall = !var(59)
triggerall = command = "proj_3"
trigger1 = (statetype = s) && ctrl
Trigger2 = MoveContact
Trigger2 = Stateno = 200
Trigger3 = MoveContact
Trigger3 = Stateno = 210
Trigger4 = MoveContact
Trigger4 = Stateno = 220
Trigger5 = MoveContact
Trigger5 = Stateno = 230
Trigger6 = MoveContact
Trigger6 = Stateno = 240
Trigger7 = MoveContact
Trigger7 = Stateno = 250

[State -1, projectile2]
type = ChangeState
value = 777
triggerall = !var(59)
triggerall = command = "proj_2"
triggerall = power >= 400
trigger1 = (statetype = s) && (ctrl||stateno = 666||stateno = 888) 
Trigger2 = MoveContact
Trigger2 = Stateno = 200
Trigger3 = MoveContact
Trigger3 = Stateno = 210
Trigger4 = MoveContact
Trigger4 = Stateno = 220
Trigger5 = MoveContact
Trigger5 = Stateno = 230
Trigger6 = MoveContact
Trigger6 = Stateno = 240
Trigger7 = MoveContact
Trigger7 = Stateno = 250
Trigger8 = MoveContact
Trigger8 = Stateno = 666
Trigger9 = MoveContact
Trigger9 = Stateno = 888

[State -1, projectile1]
type = ChangeState
value = 888
triggerall = !var(59)
triggerall = command = "proj_1"
trigger1 = (statetype = s) && ctrl
Trigger2 = MoveContact
Trigger2 = Stateno = 200
Trigger3 = MoveContact
Trigger3 = Stateno = 210
Trigger4 = MoveContact
Trigger4 = Stateno = 220
Trigger5 = MoveContact
Trigger5 = Stateno = 230
Trigger6 = MoveContact
Trigger6 = Stateno = 240
Trigger7 = MoveContact
Trigger7 = Stateno = 250

[State -1, backteleport]
type = ChangeState
value = 105
triggerall = !var(59)
triggerall = command = "back_teleport"
trigger1 = (statetype = s) && ctrl

[State -1, back air teleport]
type = ChangeState
value = 106
triggerall = !var(59)
triggerall = command = "back_air teleport"
trigger1 = (statetype = a) && ctrl

[State -1, super jump ]
type = ChangeState
value = 41
triggerall = !var(59)
triggerall = stateno != 100
trigger1 = command = "DU"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, teleport]
type = ChangeState
value = 100
triggerall = !var(59)
triggerall = command = "teleport"
trigger1 = (statetype = s) && ctrl

[State -1, air teleport]
type = ChangeState
value = 101
triggerall = !var(59)
triggerall = command = "air teleport"
trigger1 = (statetype = a) && ctrl

;---------------------------------------------------------------------------
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = !var(59)
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = !var(59)
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = !var(59)
triggerall = command = "s"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = !var(59)
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = !var(59)
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
Trigger2 = MoveContact
Trigger2 = Stateno = 200

;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = !var(59)
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
Trigger2 = MoveContact
Trigger2 = Stateno = 200
Trigger3 = MoveContact
Trigger3 = Stateno = 210

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = !var(59)
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
Trigger2 = MoveContact
Trigger2 = Stateno = 200
Trigger3 = MoveContact
Trigger3 = Stateno = 210
Trigger4 = MoveContact
Trigger4 = Stateno = 220

;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = !var(59)
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
Trigger2 = MoveContact
Trigger2 = Stateno = 200
Trigger3 = MoveContact
Trigger3 = Stateno = 210
Trigger4 = MoveContact
Trigger4 = Stateno = 220
Trigger5 = MoveContact
Trigger5 = Stateno = 230

;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = !var(59)
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
Trigger2 = MoveContact
Trigger2 = Stateno = 200
Trigger3 = MoveContact
Trigger3 = Stateno = 210
Trigger4 = MoveContact
Trigger4 = Stateno = 220
Trigger5 = MoveContact
Trigger5 = Stateno = 230
Trigger6 = MoveContact
Trigger6 = Stateno = 240

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = !var(59)
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = !var(59)
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
Trigger2 = MoveContact
Trigger2 = Stateno = 600

;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = !var(59)
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
Trigger2 = MoveContact
Trigger2 = Stateno = 600
Trigger3 = MoveContact
Trigger3 = Stateno = 610

;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = !var(59)
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
Trigger2 = MoveContact
Trigger2 = Stateno = 600
Trigger3 = MoveContact
Trigger3 = Stateno = 610
Trigger4 = MoveContact
Trigger4 = Stateno = 620

;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = !var(59)
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
Trigger2 = MoveContact
Trigger2 = Stateno = 600
Trigger3 = MoveContact
Trigger3 = Stateno = 610
Trigger4 = MoveContact
Trigger4 = Stateno = 620
Trigger5 = MoveContact
Trigger5 = Stateno = 630

;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = !var(59)
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
Trigger2 = MoveContact
Trigger2 = Stateno = 600
Trigger3 = MoveContact
Trigger3 = Stateno = 610
Trigger4 = MoveContact
Trigger4 = Stateno = 620
Trigger5 = MoveContact
Trigger5 = Stateno = 630
Trigger6 = MoveContact
Trigger6 = Stateno = 640

;======================================================
;======================================================
;========================= AI =========================
;======================================================
;======================================================
;============================================================================
[State ] ; Charging
type=changestate
value=654
triggerall=var(59)&&alive&&roundstate=2
triggerall=(((statetype=s)&&ctrl)&&(power<powermax))
triggerall=!(var(59) && !var(58) && (p2bodydist x < 150 || enemy,numproj))
trigger1 = var(58)=220
trigger2 = var(58)=0 && (p2statetype=L || p2movetype=H)

;============================================================================
[State ] ; Jump
type=changestate
value=40
triggerall=var(59)&&alive&&roundstate=2
triggerall=ctrl&&statetype!=A
trigger1 = random<200 || helper(123456),var(1)
trigger1 = !var(58) && p2statetype!=A && random<250
trigger1 = 1 || var(56):=3
trigger2 = var(58)>0 && var(58)!=250 && p2statetype=A && random<250
trigger2 = 1 || var(56):=3

;============================================================================
[State ] ; Dash Fwd
type=changestate
value=100
triggerall=var(59)&&alive&&roundstate=2
triggerall=(((statetype=s)&&ctrl))
triggerall=!var(58)
trigger1 = random<200 || helper(123456),var(1)
trigger1 = p2bodydist x > 150 && random<250
trigger2 = backedgedist < 50 && stateno!=100

;============================================================================
[State ] ; Stand Hit 1
type=changestate
value=200
triggerall=var(59)&&alive&&roundstate=2
triggerall=((statetype=s)&&(ctrl))
triggerall = !var(58)
triggerall = p2bodydist x < 37
trigger1 = random<200

;============================================================================
[State ] ; Stand Hit 2
type=changestate
value=210
triggerall=var(59)&&alive&&roundstate=2
triggerall=((statetype=s)&&(ctrl))||((movecontact)&&(stateno=200))
triggerall = p2bodydist x < 37
trigger1 = var(58)=200
trigger2 = random<333 && !var(58)

;============================================================================
[State ] ; Stand Hit 3
type=changestate
value=220
triggerall=var(59)&&alive&&roundstate=2
triggerall=((statetype=s)&&(ctrl))||((movecontact)&&(stateno=200))||((movecontact)&&(stateno=210))
triggerall = var(55)
triggerall = p2bodydist x < 37 && random<power/3
trigger1 = var(58)=[200, 210]
trigger2 = random<15 && !var(58)

;============================================================================
[State ] ; Stand Hit 4
type=changestate
value=230
triggerall=var(59)&&alive&&roundstate=2
triggerall=((statetype=s)&&(ctrl))||((movecontact)&&(stateno=200))||((movecontact)&&(stateno=210))||((movecontact)&&(stateno=220))
triggerall = var(55)
triggerall = p2bodydist x < 35 
trigger1 = random<500 && var(58)=[200, 220]
trigger2 = random<25 && !var(58)

;============================================================================
[State ] ; Stand Hit 5
type=changestate
value=240
triggerall=var(59)&&alive&&roundstate=2
triggerall=((statetype=s)&&(ctrl))||((movecontact)&&(stateno=200))||((movecontact)&&(stateno=210))||((movecontact)&&(stateno=220))||((movecontact)&&(stateno=230))
triggerall = var(55)
triggerall = p2bodydist x < 20
trigger1 = random<500 && var(58)=[200, 230]
trigger2 = random<25 && !var(58)

;============================================================================
[State ] ; Light Projectile
type=changestate
value=888
triggerall=var(59)&&alive&&roundstate=2
triggerall=(((statetype=s)&&ctrl))||((movecontact)&&(stateno=200))||((movecontact)&&(stateno=210))||((movecontact)&&(stateno=220))||((movecontact)&&(stateno=230))||((movecontact)&&(stateno=240))||((movecontact)&&(stateno=250))
triggerall = var(55) && var(58)!=666 && var(58)!=777 && var(58)!=888
trigger1 = var(58)=[200, 240]
trigger1 = helper(123456),var(50) < 100 && random<333
trigger1 = 1 || var(58):=888

;============================================================================
[State ] ; Medium Projectile
type=changestate
value=666
triggerall=var(59)&&alive&&roundstate=2
triggerall=(((statetype=s)&&ctrl))||((movecontact)&&(stateno=200))||((movecontact)&&(stateno=210))||((movecontact)&&(stateno=220))||((movecontact)&&(stateno=230))||((movecontact)&&(stateno=240))||((movecontact)&&(stateno=250))
triggerall = var(55) && var(58)!=666 && var(58)!=777
trigger1 = var(58)=888 || var(58)=[200, 240]
trigger1 = (p2bodydist x < 60 || helper(123456),var(50) < 100) && random < 200
trigger1 = 1 || var(58):=666

;============================================================================
[State ] ; Heavy Projectile
type=changestate
value=777
triggerall=var(59)&&alive&&roundstate=2
triggerall=power>=400
triggerall=((statetype=s)&&ctrl)||((movecontact)&&(stateno=200))||((movecontact)&&(stateno=210))||((movecontact)&&(stateno=220))||((movecontact)&&(stateno=230))||((movecontact)&&(stateno=240))||((movecontact)&&(stateno=250))||((movecontact)&&(stateno=666))||((movecontact)&&(stateno=888))
triggerall = var(55) && var(58)!=777
trigger1 = var(58)=666 || var(58)=888 || var(58)=[200, 240]
trigger1 = p2bodydist x < 60 && random < power/5
trigger1 = 1 || var(58):=777

;============================================================================
[State ] ; Spin Light
type=changestate
value=670
triggerall=var(59)&&alive&&roundstate=2
triggerall=(((statetype=s)&&ctrl))||((movecontact)&&(stateno=200))||((movecontact)&&(stateno=210))||((movecontact)&&(stateno=220))||((movecontact)&&(stateno=230))||((movecontact)&&(stateno=240))||((movecontact)&&(stateno=250))
triggerall = var(55)
triggerall = p2bodydist x < 60
trigger1 = (var(58) > 0 && var(58)%111=0) || var(58)=[200, 240]
trigger1 = random<100
trigger2 = random<40

;============================================================================
[State ] ; Spin Medium
type=changestate
value=671
triggerall=var(59)&&alive&&roundstate=2
triggerall=(((statetype=s)&&ctrl))||((movecontact)&&(stateno=200))||((movecontact)&&(stateno=210))||((movecontact)&&(stateno=220))||((movecontact)&&(stateno=230))||((movecontact)&&(stateno=240))||((movecontact)&&(stateno=250))
triggerall = var(55)
triggerall = p2bodydist x < 50
trigger1 = (var(58) > 0 && var(58)%111=0) || var(58)=[200, 240]
trigger1 = random<200

;============================================================================
[State ] ; Spin Heavy
type=changestate
value=672
triggerall=var(59)&&alive&&roundstate=2
triggerall=(((statetype=s)&&(ctrl||stateno=670||stateno=671))&&(power>=400))||((movecontact)&&(stateno=200))||((movecontact)&&(stateno=210))||((movecontact)&&(stateno=220))||((movecontact)&&(stateno=230))||((movecontact)&&(stateno=240))||((movecontact)&&(stateno=250))||((movecontact)&&(stateno=670))||((movecontact)&&(stateno=671))
triggerall = var(55)
triggerall = p2bodydist x < 50
trigger1 = (var(58) > 0 && var(58)%111=0) || stateno=671 || var(58)=[200, 240]
trigger1 = random < power/5
trigger1 = helper(123456),var(50)<100 || random<250
trigger2 = random<200

;============================================================================
[State ] ; Shoryu Light
type=changestate
value=720
triggerall=var(59)&&alive&&roundstate=2
triggerall=(((statetype=s)&&ctrl))||((movecontact)&&(stateno=200))||((movecontact)&&(stateno=210))||((movecontact)&&(stateno=220))||((movecontact)&&(stateno=230))||((movecontact)&&(stateno=240))||((movecontact)&&(stateno=250))
triggerall = var(55) && var(58)!=740 && var(58)!=730 && var(58)!=720
triggerall = p2bodydist x < 100 || helper(123456),var(50)<120
trigger1 = var(58)=[200, 1000]
trigger1 = random < 100
trigger1 = 1 || var(58):=720
trigger2 = random < 60

;============================================================================
[State ] ; Shoryu Medium
type=changestate
value=730
triggerall=var(59)&&alive&&roundstate=2
triggerall=(((statetype=s)&&ctrl))||((movecontact)&&(stateno=200))||((movecontact)&&(stateno=210))||((movecontact)&&(stateno=220))||((movecontact)&&(stateno=230))||((movecontact)&&(stateno=240))||((movecontact)&&(stateno=250))
triggerall = var(55) && var(58)!=740 && var(58)!=730
triggerall = p2bodydist x < 100 || helper(123456),var(50)<120
trigger1 = var(58)=[250, 1000]
trigger1 = random < 200
trigger1 = 1 || var(58):=730
trigger2 = random < 50

;============================================================================
[State ] ; Shoryu Heavy
type=changestate
value=740
triggerall=var(59)&&alive&&roundstate=2
triggerall=power>=400
triggerall=((statetype=s)&&ctrl)||((movecontact)&&(stateno=200))||((movecontact)&&(stateno=210))||((movecontact)&&(stateno=220))||((movecontact)&&(stateno=230))||((movecontact)&&(stateno=240))||((movecontact)&&(stateno=250))||((movecontact)&&(stateno=720))||((movecontact)&&(stateno=730))
triggerall = var(55) && var(58)!=740
triggerall = p2bodydist x < 60 || helper(123456),var(50)<80
trigger1 = var(58)=[250, 1000]
trigger1 = random < power/5
trigger1 = 1 || var(58):=740
trigger2 = random < 25

;============================================================================
[State ] ; Burst
type=changestate
value=1080
triggerall=var(59)&&alive&&roundstate=2
triggerall=alive&&stateno=[5000,5210]
triggerall=((power>=1000))
triggerall = p2bodydist x < 100
trigger1 = helper(123456),var(1)
trigger1 = stateno=[5000,5210]
trigger1 = var(54) <= 0 && random<25
trigger2 = !helper(123456),var(1)
trigger2 = (var(58) > 0 && var(58)%111=0) || (var(58)=[650, 672]) || var(58)=[200, 240]
trigger2 = random<power/42
trigger3 = !helper(123456),var(1)
trigger3 = random<power/100 || (enemy,ctrl=0 && random<power/42)

;============================================================================
[State ] ; Mexibeam
type=changestate
value=1090
triggerall=var(59)&&alive&&roundstate=2
triggerall=(((statetype=s)&&ctrl)&&(power>=1000))
trigger1 = p2bodydist y > -150
trigger1 = (var(58) > 0 && var(58)%111=0) || (var(58)=[650, 672]) || var(58)=[200, 240]
trigger1 = random<power/40
trigger2 = random<power/150 || (enemy,ctrl=0 && random<power/40)

;============================================================================
[State ] ; Mega Burst
type=changestate
value=234
triggerall=var(59)&&alive&&roundstate=2
triggerall=power>=2000
triggerall=(((statetype=s)&&ctrl))||((movecontact)&&(stateno=200))||((movecontact)&&(stateno=210))||((movecontact)&&(stateno=220))||((movecontact)&&(stateno=230))||((movecontact)&&(stateno=240))||((movecontact)&&(stateno=250))
trigger1 = (var(58) > 0 && var(58)%111=0) || (var(58)=[650, 672]) || var(58)=[200, 240]
trigger1 = random<power/38
trigger2 = random<power/75 || (enemy,ctrl=0 && random<power/38)

;============================================================================
[State ] ; Stomp
type=changestate
value=2080
triggerall=var(59)&&alive&&roundstate=2
triggerall=(((statetype=s)&&ctrl)&&(power>=2000))
triggerall = p2bodydist x < 30 || helper(123456),var(50)<100
trigger1 = (var(58) > 0 && var(58)%111=0) || (var(58)=[650, 672]) || var(58)=[200, 240]
trigger1 = random<power/36
trigger2 = random<power/100 || (enemy,ctrl=0 && random<power/36)

;============================================================================
[State ] ; Long Spin Hyper
type=changestate
value=8001
triggerall=var(59)&&alive&&roundstate=2
triggerall=(((statetype=s)&&ctrl)&&(power>=1000))
trigger1 = var(58)>0
trigger1 = random<power/34 || p2bodydist y < -150
trigger2 = random<power/125 || (enemy,ctrl=0 && random<power/34)

;============================================================================
[State ] ; Instant Spin Hyper
type=changestate
value=8000
triggerall=var(59)&&alive&&roundstate=2
triggerall=(((statetype=s)&&ctrl)&&(power>=1000))
trigger1 = p2bodydist x > -100
trigger1 = var(58)>0
trigger1 = random<power/32
trigger2 = random<power/200 || (enemy,ctrl=0 && random<power/32)

;============================================================================
[State ] ; Hyper
type=changestate
value=4200
triggerall=var(59)&&alive&&roundstate=2
triggerall=(((statetype=s)&&ctrl)&&(power>=3000))
trigger1 = var(58)>0
trigger1 = random<power/30
trigger2 = random<power/50 || (enemy,ctrl=0 && random<power/30)

;============================================================================
[State ] ; Stand Hit 6
type=changestate
value=250
triggerall=var(59)&&alive&&roundstate=2
triggerall=((statetype=s)&&(ctrl))||((movecontact)&&(stateno=200))||((movecontact)&&(stateno=210))||((movecontact)&&(stateno=220))||((movecontact)&&(stateno=230))||((movecontact)&&(stateno=240))
triggerall = var(55)
trigger1 = var(58)=650 || var(58)=666 || var(58)=777 || var(58)=888 || var(58)=[200, 240]
trigger1 = p2bodydist x < 20 || (enemy,ctrl=0 && random<power/18)

;============================================================================
[State ] ; Air Hit 1
type=changestate
value=600
triggerall=var(59)&&alive&&roundstate=2
triggerall=((statetype=a)&&(ctrl))
trigger1 = enemy,backedgedist < 50 && p2bodydist y = [-30, 30]
trigger1 = random<250

;============================================================================
[State ] ; Air Hit 2
type=changestate
value=610
triggerall=var(59)&&alive&&roundstate=2
triggerall=((statetype=a)&&(ctrl))||((movecontact)&&(stateno=600))
trigger1 = var(58)=250 && helper(123456),var(50) < 75
trigger2 = var(58)=600
trigger3 = !var(58)

;============================================================================
[State ] ; Air Hit 4
type=changestate
value=630
triggerall=var(59)&&alive&&roundstate=2
triggerall=((statetype=a)&&(ctrl))||((movecontact)&&(stateno=600))||((movecontact)&&(stateno=610))||((movecontact)&&(stateno=620))
trigger1 = var(58)=250
trigger1 = p2bodydist y > -30

;============================================================================
[State ] ; Air Hit 5
type=changestate
value=640
triggerall=var(59)&&alive&&roundstate=2
triggerall=((statetype=a)&&(ctrl))||((movecontact)&&(stateno=600))||((movecontact)&&(stateno=610))||((movecontact)&&(stateno=620))||((movecontact)&&(stateno=630))
trigger1 = var(58)=630
trigger2 = var(58)=610
trigger2 = movehit > 1 || vel y > 2

;============================================================================
[State ] ; Air Hit 6
type=changestate
value=650
triggerall=var(59)&&alive&&roundstate=2
triggerall=((statetype=a)&&(ctrl))||((movecontact)&&(stateno=600))||((movecontact)&&(stateno=610))||((movecontact)&&(stateno=620))||((movecontact)&&(stateno=630))||((movecontact)&&(stateno=640))
trigger1 = var(58)=640

;==============================================================================
[State ]
type = changestate
triggerall=(var(59))&&(alive)&&(roundstate=2)
triggerall=!(enemynear,hitdefattr=SCA,AT,ST,HT,NT)
triggerall=ctrl
triggerall=enemynear,movetype!=H && enemynear,facing!=facing
triggerall=!var(58)
trigger1 = enemynear,movetype=A
trigger1 = inguarddist
trigger1 = (random+helper(123456),var(56)) < 950
trigger2 = enemy,numproj = [2,4]
trigger2 = (random+helper(123456),var(56)) < 975
trigger3 = enemy,numproj >= 5
trigger3 = (random+helper(123456),var(56)) < 1000
trigger4 = (enemy,numhelper) = 1
trigger4 = helper(123456),var(55) < 0.1
trigger4 = (random+helper(123456),var(56)) < 950
trigger5 = ((enemy,numhelper) - helper(123456),var(55)) = [2,4]
trigger5 = (random+helper(123456),var(56)) < 975
trigger6 = ((enemy,numhelper) - helper(123456),var(55)) >= 5
trigger6 = (random+helper(123456),var(56)) < 1000
value=120

;============================================================================
[State ] ; Run Fwd
type=changestate
value=20
triggerall=var(59)&&alive&&roundstate=2
triggerall=ctrl&&statetype!=A
trigger1 = p2bodydist x > 0 && stateno!=20

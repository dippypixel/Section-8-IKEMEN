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
[Remap] 
x = x
y = y
z = z
a = a
b = b
c = c
s = s
 
[Defaults] 
command.time = 15
command.buffer.time = 1

;-| Super Motions |--------------------------------------------------------

[command] 
name = "War Destroyer"
command = ~D, DF, F, a+b

[command] 
name = "War Destroyer"
command = ~D, DF, F, a+c

[command] 
name = "War Destroyer"
command = ~D, DF, F, b+c


[command] 
name = "Proton Cannon"
command = ~D, DF, F, x+y

[command] 
name = "Proton Cannon"
command = ~D, DF, F, x+z

[command] 
name = "Proton Cannon"
command = ~D, DF, F, y+z

;-| Special Motions |------------------------------------------------------
[command] 
name = "Repulsor Blast Weak"
command = ~F, $D, B, x

[command] 
name = "Repulsor Blast Strong"
command = ~F, $D, B, y

[command] 
name = "Repulsor Blast Fierce"
command = ~F, $D, B, z

[command] 
name = "Low Shoulder Cannon Weak"
command = ~D, DF, F, a

[command] 
name = "Low Shoulder Cannon Strong"
command = ~D, DF, F, b

[command] 
name = "Low Shoulder Cannon Fierce"
command = ~D, DF, F, c

[command] 
name = "Shoulder Cannon Weak"
command = ~D, DF, F, x

[command] 
name = "Shoulder Cannon Strong"
command = ~D, DF, F, y

[command] 
name = "Shoulder Cannon Fierce"
command = ~D, DF, F, z




[command] 
name = "Repulsor Blast Weak"
command = ~F, $D, B, ~x
time = 10
buffer.time = 10

[command] 
name = "Repulsor Blast Strong"
command = ~F, $D, B, ~y
time = 10
buffer.time = 10

[command] 
name = "Repulsor Blast Fierce"
command = ~F, $D, B, ~z
time = 10
buffer.time = 10

[command] 
name = "Low Shoulder Cannon Weak"
command = ~D, DF, F, ~a
time = 10
buffer.time = 10

[command] 
name = "Low Shoulder Cannon Strong"
command = ~D, DF, F, ~b
time = 10
buffer.time = 10

[command] 
name = "Low Shoulder Cannon Fierce"
command = ~D, DF, F, ~c
time = 10
buffer.time = 10

[command] 
name = "Shoulder Cannon Weak"
command = ~D, DF, F, ~x
time = 10
buffer.time = 10

[command] 
name = "Shoulder Cannon Strong"
command = ~D, DF, F, ~y
time = 10
buffer.time = 10

[command] 
name = "Shoulder Cannon Fierce"
command = ~D, DF, F, ~z
time = 10
buffer.time = 10

[Command]
name = "Smart Bomb"     
command = y+a
time = 5
[Command]
name = "Smart Bomb Far"     
command = /$F, y+a
time = 5
[Command]
name = "Smart Bomb Short"     
command = /$B, y+a
time = 5


[Command]
name = "guardpush"
command = x+y
time = 5

[Command]
name = "guardpush"
command = x+z
time = 5

[Command]
name = "guardpush"
command = y+z
time = 5


[command] 
name = "nage"
command = x+a


[command] 
name = "Fly"
command = D, DB, B, a+b

[command] 
name = "Fly"
command = D, DB, B, c+b  

[command] 
name = "Fly"
command = D, DB, B, c+a

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = /B, x+y
time = 10

;===================<OTHER>===================

[command]
name="superjump"
command=$D,$U
time=15

[Command]
name = "DU"
command = D,U
time = 20

[Command]
name = "DU"
command = D, U
time = 18

[Command]
name = "DU"
command = DB, UF
time = 18

[Command]
name = "DU"
command = DF, UB
time = 18

[Command]
name = "DU"
command = $D, UF
time = 18

[Command]
name = "DU"
command = $D, UB
time = 18

;-| 2/3 Button Combination |-----------------------------------------------

[Command]
name = "Air Dash Neutral"
command = x+z
time = 3
[Command]
name = "Air Dash Neutral"
command = x+y
time = 3
[Command]
name = "Air Dash Neutral"
command = y+z
time = 3

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
name = "start"
command = s
time = 1

;-| Hold Button |--------------------------------------------------------------
[Command]
name = "holddownfwd"
command = /DF
time = 1
buffer.time = 1

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
name = "hold_start"
command = /s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd" ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holddownfwdback"
command = /UF
time = 1
buffer.time = 1

[Command]
name = "holddownfwdback"
command = /UB
time = 1
buffer.time = 1

[Command]
name = "holddownfwdbck"
command = /DF
time = 1
buffer.time = 1

[Command]
name = "holddownfwdbck"
command = /DB
time = 1
buffer.time = 1


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
name = "holdback2"
command = /B
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


[Command]
name = "RecoveryRoll"
command = ~B, DB, D, a

[Command]
name = "RecoveryRoll"
command = ~B, DB, D, b

[Command]
name = "RecoveryRoll"
command = ~B, DB, D, c

[Command]
name = "RecoveryRoll"
command = ~B, DB, D, x

[Command]
name = "RecoveryRoll"
command = ~B, DB, D, y

[Command]
name = "RecoveryRoll"
command = ~B, DB, D, z

;-| CPU Commands |----------------------------------------------------------
[command]
name = "CPU1"
command = D, D, D, D, D, D, D, D
time = 1

[command]
name = "CPU2"
command = z, z, z, z, z, z, z, z
time = 1

[command]
name = "CPU3"
command = B, B, B, B, B, B, B, B
time = 1

[command]
name = "CPU4"
command = x, x, x, x, x, x, x, x
time = 1

[command]
name = "CPU5"
command = U, U, U, U, U, U, U, U
time = 1

[command]
name = "CPU6"
command = a, a, a, a, a, a, a, a
time = 1

[command]
name = "CPU7"
command = F, F, F, F, F, F, F, F
time = 1

[command]
name = "CPU8"
command = b, b, b, b, b, b, b, b
time = 1

[command]
name = "CPU9"
command = y, y, y, y, y, y, y, y
time = 1

[command]
name = "CPU10"
command = s, s, s, s, s, s, s, s
time = 1

[command]
name = "CPU11"
command = D, D, D, D, D, D, D, D
time = 1

[command]
name = "CPU12"
command = D, D, D, D, D, D, D, D
time = 1

[command]
name = "CPU13"
command = z, z, z, z, z, z, z, z
time = 1

[command]
name = "CPU14"
command = z, z, z, z, z, z, z, z
time = 1

[command]
name = "CPU15"
command = B, B, B, B, B, B, B, B
time = 1

[command]
name = "CPU16"
command = B, B, B, B, B, B, B, B
time = 1

[command]
name = "CPU17"
command = x, x, x, x, x, x, x, x
time = 1

[command]
name = "CPU18"
command = x, x, x, x, x, x, x, x
time = 1

[command]
name = "CPU19"
command = U, U, U, U, U, U, U, U
time = 1

[command]
name = "CPU20"
command = U, U, U, U, U, U, U, U
time = 1

[command]
name = "CPU21"
command = a, a, a, a, a, a, a, a
time = 1

[command]
name = "CPU22"
command = a, a, a, a, a, a, a, a
time = 1

[command]
name = "CPU23"
command = F, F, F, F, F, F, F, F
time = 1

[command]
name = "CPU24"
command = F, F, F, F, F, F, F, F
time = 1

[command]
name = "CPU25"
command = b, b, b, b, b, b, b, b
time = 1

[command]
name = "CPU26"
command = b, b, b, b, b, b, b, b
time = 1

[command]
name = "CPU27"
command = y, y, y, y, y, y, y, y
time = 1

[command]
name = "CPU28"
command = y, y, y, y, y, y, y, y
time = 1

[command]
name = "CPU29"
command = s, s, s, s, s, s, s, s
time = 1

[command]
name = "CPU30"
command = s, s, s, s, s, s, s, s
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
;   triggerall = command = command_name
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

;===========================================================================
[State -1, War Destroyer]
type = ChangeState
value = 3000
triggerall = var(2) != 1
triggerall = command = "War Destroyer"
triggerall = Power >= 1000
triggerall = statetype != A
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = Stateno = [200,225]
trigger2 = time > 4
trigger3 = Stateno = [230,250]
trigger3 = time > 4
trigger4 = Stateno = [400,450]
trigger4 = time > 4
trigger5 = ctrl 
trigger6 = StateNo = 1100 || stateno = 1110 || StateNo = 1120 || stateno = 1000 || StateNo = 1002 || stateno = 1004 || stateno = 1200 || StateNo = 1215 || StateNo = 1220|| stateno = 1070 || StateNo = 1080 || StateNo = 1090

; Proton Cannon
[State -1, Proton Cannon]
type = ChangeState
value = 3100
triggerall = var(2) != 1
triggerall = command = "Proton Cannon"
triggerall = Power >= 1000
triggerall = statetype != A
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = Stateno = [200,225]
trigger2 = time > 4
trigger3 = Stateno = [230,250]
trigger3 = time > 4
trigger4 = Stateno = [400,450]
trigger4 = time > 4
trigger5 = ctrl 
trigger6 = StateNo = 1100 || stateno = 1110 || StateNo = 1120 || stateno = 1000 || StateNo = 1002 || stateno = 1004 || stateno = 1200 || StateNo = 1215 || StateNo = 1220|| stateno = 1070 || StateNo = 1080 || StateNo = 1090
;---------------------------------------------------------------------------
; Repulsor Blast
[State -1, Repulsor Blast]
type = ChangeState
value = 1200
triggerall = var(2) != 1
triggerall = palno <= 6
triggerall = command = "Repulsor Blast Weak"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno = [200,225]
trigger2 = time > 4
trigger3 = Stateno = [230,250]
trigger3 = time > 4
trigger4 = Stateno = [400,450]
trigger4 = time > 4

[State -1, Repulsor Blast]
type = ChangeState
value = 1215
triggerall = var(2) != 1
triggerall = palno <= 6
triggerall = command = "Repulsor Blast Strong"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno = [200,225]
trigger2 = time > 4
trigger3 = Stateno = [230,250]
trigger3 = time > 4
trigger4 = Stateno = [400,450]
trigger4 = time > 4

[State -1, Repulsor Blast]
type = ChangeState
value = 1220
triggerall = var(2) != 1
triggerall = palno <= 6
triggerall = command = "Repulsor Blast Fierce"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno = [200,225]
trigger2 = time > 4
trigger3 = Stateno = [230,250]
trigger3 = time > 4
trigger4 = Stateno = [400,450]
trigger4 = time > 4

;---------------------------------------------------------------------------
; Shoulder Cannon
[State -1, Shoulder Cannon]
type = ChangeState
value = 1100
triggerall = var(2) != 1
triggerall = command = "Shoulder Cannon Weak"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno = [200,225]
trigger2 = time > 4
trigger3 = Stateno = [230,250]
trigger3 = time > 4
trigger4 = Stateno = [400,450]
trigger4 = time > 4

[State -1, Shoulder Cannon]
type = ChangeState
value = 1110
triggerall = var(2) != 1
triggerall = command = "Shoulder Cannon Strong"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno = [200,225]
trigger2 = time > 4
trigger3 = Stateno = [230,250]
trigger3 = time > 4
trigger4 = Stateno = [400,450]
trigger4 = time > 4

[State -1, Shoulder Cannon]
type = ChangeState
value = 1120
triggerall = var(2) != 1
triggerall = command = "Shoulder Cannon Fierce"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno = [200,225]
trigger2 = time > 4
trigger3 = Stateno = [230,250]
trigger3 = time > 4
trigger4 = Stateno = [400,450]
trigger4 = time > 4

[State -1, Shoulder Cannon]
type = ChangeState
value = 1150
triggerall = var(2) != 1
triggerall = command = "Shoulder Cannon Weak"
trigger1 = statetype = A && (ctrl || stateno = 1505)
trigger2 = Stateno = [600,655]
trigger2 = time > 4

[State -1, Shoulder Cannon]
type = ChangeState
value = 1160
triggerall = var(2) != 1
triggerall = command = "Shoulder Cannon Strong"
trigger1 = statetype = A && (ctrl || stateno = 1505)
trigger2 = Stateno = [600,655]
trigger2 = time > 4

[State -1, Shoulder Cannon]
type = ChangeState
value = 1170
triggerall = var(2) != 1
triggerall = command = "Shoulder Cannon Fierce"
trigger1 = statetype = A && (ctrl || stateno = 1505)
trigger2 = Stateno = [600,655]
trigger2 = time > 4

; Low Shoulder Cannon
[State -1, Low Shoulder Cannon]
type = ChangeState
value = 1070
triggerall = var(2) != 1
triggerall = command = "Low Shoulder Cannon Weak"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno = [200,225]
trigger2 = time > 4
trigger3 = Stateno = [230,250]
trigger3 = time > 4
trigger4 = Stateno = [400,450]
trigger4 = time > 4

[State -1, Low Shoulder Cannon]
type = ChangeState
value = 1080
triggerall = var(2) != 1
triggerall = command = "Low Shoulder Cannon Strong"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno = [200,225]
trigger2 = time > 4
trigger3 = Stateno = [230,250]
trigger3 = time > 4
trigger4 = Stateno = [400,450]
trigger4 = time > 4

[State -1, Low Shoulder Cannon]
type = ChangeState
value = 1090
triggerall = var(2) != 1
triggerall = command = "Low Shoulder Cannon Fierce"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno = [200,225]
trigger2 = time > 4
trigger3 = Stateno = [230,250]
trigger3 = time > 4
trigger4 = Stateno = [400,450]
trigger4 = time > 4

;---------------------------------------------------------------------------
; Smart Bomb
[State -1, Smart Bomb]
type = ChangeState
value = 1000
triggerall = var(2) != 1
triggerall = command = "Smart Bomb Short"
triggerall = NumHelper(1005)=0
triggerall = NumHelper(1004)=0
triggerall = NumHelper(1003)=0
triggerall = NumHelper(1002)=0
triggerall = NumHelper(1001)=0
triggerall = NumHelper(1000)=0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno = [200,225]
trigger2 = time > 4
trigger3 = Stateno = [230,250]
trigger3 = time > 4
trigger4 = Stateno = [400,450]
trigger4 = time > 4

[State -1, Smart Bomb]
type = ChangeState
value = 1000
triggerall = var(2) != 1
triggerall = command = "Smart Bomb Short"
triggerall = NumHelper(1005)=0
triggerall = NumHelper(1004)=0
triggerall = NumHelper(1003)=0
triggerall = NumHelper(1002)=0
triggerall = NumHelper(1001)=0
triggerall = NumHelper(1000)=0
trigger1 = statetype = A && (ctrl || stateno = 1505)
trigger2 = Stateno = [600,655]
trigger2 = time > 4

[State -1, Smart Bomb]
type = ChangeState
value = 1004
triggerall = var(2) != 1
triggerall = command = "Smart Bomb Far"
triggerall = NumHelper(1005)=0
triggerall = NumHelper(1004)=0
triggerall = NumHelper(1003)=0
triggerall = NumHelper(1002)=0
triggerall = NumHelper(1001)=0
triggerall = NumHelper(1000)=0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno = [200,225]
trigger2 = time > 4
trigger3 = Stateno = [230,250]
trigger3 = time > 4
trigger4 = Stateno = [400,450]
trigger4 = time > 4

[State -1, Smart Bomb]
type = ChangeState
value = 1004
triggerall = var(2) != 1
triggerall = command = "Smart Bomb Far"
triggerall = NumHelper(1005)=0
triggerall = NumHelper(1004)=0
triggerall = NumHelper(1003)=0
triggerall = NumHelper(1002)=0
triggerall = NumHelper(1001)=0
triggerall = NumHelper(1000)=0
trigger1 = statetype = A && (ctrl || stateno = 1505)
trigger2 = Stateno = [600,655]
trigger2 = time > 4

[State -1, Smart Bomb]
type = ChangeState
value = 1002
triggerall = var(2) != 1
triggerall = command = "Smart Bomb"
triggerall = NumHelper(1005)=0
triggerall = NumHelper(1004)=0
triggerall = NumHelper(1003)=0
triggerall = NumHelper(1002)=0
triggerall = NumHelper(1001)=0
triggerall = NumHelper(1000)=0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno = [200,225]
trigger2 = time > 4
trigger3 = Stateno = [230,250]
trigger3 = time > 4
trigger4 = Stateno = [400,450]
trigger4 = time > 4

[State -1, Smart Bomb]
type = ChangeState
value = 1002
triggerall = var(2) != 1
triggerall = command = "Smart Bomb"
triggerall = NumHelper(1005)=0
triggerall = NumHelper(1004)=0
triggerall = NumHelper(1003)=0
triggerall = NumHelper(1002)=0
triggerall = NumHelper(1001)=0
triggerall = NumHelper(1000)=0
trigger1 = statetype = A && (ctrl || stateno = 1505)
trigger2 = Stateno = [600,655]
trigger2 = time > 4

;---------------------------------------------------------------------------
; Air Flight
[State -1, Flight]
type = ChangeState
value = 1501
triggerall = command = "Fly"
trigger1 = statetype = A && ctrl
trigger2 = (stateno = [600,655])

;---------------------------------------------------------------------------
; Flight
[State -1, Flight]
type = ChangeState
value = 1500
triggerall = command = "Fly"
trigger1 = statetype != A && ctrl
trigger2 = (stateno = [200,250])
trigger3 = (stateno = [400,450])

[State -1]
type = ChangeState
value = 1510
triggerall = command = "Fly"
trigger1 = stateno = 1505

;===========================================================================
;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(2) != 1
triggerall = stateno != 105
triggerall = stateno != 100
trigger1 = (command = "holdback2" && command = "recovery") || (StateType != A && command = "BB")
trigger1 = statetype = S && ctrl
;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(2) != 1
triggerall = stateno != 105
triggerall = stateno != 100
trigger1 = (command = "recovery") || (StateType != A && command = "FF")
trigger1 = statetype != A && ctrl

;---------------------------------------------------------------------------
; Air Dash Back Up
[State -1, Air Run Back Up]
type = ChangeState
value = 117
triggerall = !var(55)
triggerall = (stateno !=[100,109])
triggerall = command = "holdback"&&command = "holdup" && command = "guardpush"
trigger1 = statetype = A  && (ctrl || stateno = 1505)
trigger2 = (stateno = [600,655])

;---------------------------------------------------------------------------
; Air Dash Fwd Up
[State -1, Air Run Fwd Up]
type = ChangeState
value = 116
triggerall = !var(55)
triggerall = (stateno !=[100,109])
triggerall = command = "holdfwd"&&command = "holdup" && command = "guardpush"
trigger1 = statetype = A  && (ctrl || stateno = 1505)
trigger2 = (stateno = [600,655])

;---------------------------------------------------------------------------
; Air Dash Back Down
[State -1, Air Run Back Up]
type = ChangeState
value = 119
triggerall = !var(55)
triggerall = (stateno !=[100,109])
triggerall = command = "holdback"&&command = "holddown" && command = "guardpush"
trigger1 = statetype = A  && (ctrl || stateno = 1505)
trigger2 = (stateno = [600,655])

;---------------------------------------------------------------------------
; Air Dash Fwd Down
[State -1, Air Run Fwd Up]
type = ChangeState
value = 118
triggerall = !var(55)
triggerall = (stateno !=[100,109])
triggerall = command = "holdfwd"&&command = "holddown" && command = "guardpush"
trigger1 = statetype = A  && (ctrl || stateno = 1505)
trigger2 = (stateno = [600,655])

;---------------------------------------------------------------------------
; Air Dash Up
[State -1, Air Run Up]
type = ChangeState
value = 112
triggerall = !var(55)
triggerall = (stateno !=[100,109])
triggerall = command = "holdup" && command = "guardpush"
trigger1 = statetype = A  && (ctrl || stateno = 1505)
trigger2 = (stateno = [600,655])

;---------------------------------------------------------------------------
; Air Dash Down
[State -1, Air Run Up]
type = ChangeState
value = 111
triggerall = !var(55)
triggerall = (stateno !=[100,109])
triggerall = command = "holddown" && command = "guardpush"
trigger1 = statetype = A  && (ctrl || stateno = 1505)
trigger2 = (stateno = [600,655])

;---------------------------------------------------------------------------
; Air Dash Back
[State -1, Air Run Back]
type = ChangeState
value = 114
triggerall = !var(55)
triggerall = (stateno !=[100,109])
triggerall = command = "holdback" && command = "guardpush"
trigger1 = statetype = A  && (ctrl || stateno = 1505)
trigger2 = (stateno = [600,655])

;---------------------------------------------------------------------------
; Air Dash Fwd
[State -1, Air Run Fwd]
type = ChangeState
value = 113
triggerall = !var(55)
triggerall = (stateno !=[100,109])
triggerall = command = "holdfwd" && command = "guardpush" || command = "guardpush"
trigger1 = statetype = A  && (ctrl || stateno = 1505)
trigger2 = (stateno = [600,655])


;---------------------------------------------------------------------------
; Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = roundstate = 2 && !var(59)
trigger1 = command = "z" && (command = "holdfwd" || command = "holdback")
trigger1 = p2bodydist x < 18 && enemynear,movetype != H
trigger1 = statetype = S && ctrl


[State -1, Throw]
type = ChangeState
value = 820
triggerall = roundstate = 2 && !var(59)
trigger1 = command = "c" && (command = "holdfwd" || command = "holdback")
trigger1 = p2bodydist x < 18 && enemynear,movetype != H
trigger1 = statetype = S && ctrl
; Air Throw
[state -1]
type = changestate
value = 830
trigger1 = command = "z" && (command = "holdfwd" || command = "holdback")
trigger1 = p2bodydist x < 20 && abs(p2bodydist y) < 20 && enemynear,movetype != H
trigger1 = statetype = A && ctrl

;===========================================================================
;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = var(2) != 1
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 100 || stateno = 105) && prevstateno != 810

[State -1, Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno = 200
trigger2 = MoveContact
trigger3 = Stateno = 400
trigger3 = MoveContact
trigger4 = Stateno = 230
trigger4 = MoveContact
trigger5 = Stateno = 430
trigger5 = MoveContact

[State -1, Hard Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = 210
trigger3 = MoveContact
trigger4 = StateNo = 230
trigger4 = MoveContact
trigger5 = StateNo = 240
trigger5 = MoveContact
trigger6 = StateNo = 400
trigger6 = MoveContact
trigger7 = StateNo = 410
trigger7 = MoveContact
trigger8 = StateNo = 430
trigger8 = MoveCOntact
trigger9 = StateNo = 440
trigger9 = MoveContact

[State -1, Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = 400
trigger3 = MoveContact

[State -1, Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = 210
trigger3 = MoveContact
trigger4 = StateNo = 230
trigger4 = MoveContact
trigger5 = StateNo = 400
trigger5 = MoveContact
trigger6 = StateNo = 410
trigger6 = MoveContact
trigger7 = StateNo = 430
trigger7 = MoveContact

[State -1, Hard Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = 210
trigger3 = MoveContact
trigger4 = StateNo = 230
trigger4 = MoveContact
trigger5 = StateNo = 240
trigger5 = MoveContact
trigger6 = StateNo = 400
trigger6 = MoveContact
trigger7 = StateNo = 410
trigger7 = MoveContact
trigger8 = StateNo = 430
trigger8 = MoveCOntact
trigger9 = StateNo = 440
trigger9 = MoveContact 

[State -1, Light Punch (Crouch)]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

[State -1, Medium Punch (Crouch)]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (StateNo = 200) && (Movecontact) 
trigger3 = (StateNo = 230) && (Movecontact) 
trigger4 = (StateNo = 400) && (Movecontact)
trigger5 = (StateNo = 430) && (Movecontact) 

[State -1, Hard Punch (Crouch)]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 210) && (Movecontact)
trigger4 = (StateNo = 230) && (Movecontact) 
trigger5 = (StateNo = 240) && (Movecontact) 
trigger6 = (StateNo = 400) && (Movecontact) 
trigger7 = (StateNo = 410) && (Movecontact) 
trigger8 = (StateNo = 430) && (Movecontact) 
trigger9 = (StateNo = 440) && (Movecontact)

[State -1, Light Kick (Crouch)]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = 400
trigger3 = MoveContact

[State -1, Medium Kick (Crouch)]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = 210
trigger3 = MoveContact
trigger4 = StateNo = 230
trigger4 = MoveContact
trigger5 = StateNo = 400
trigger5 = MoveContact
trigger6 = StateNo = 410
trigger6 = MoveContact
trigger7 = StateNo = 430
trigger7 = MoveContact

[State -1, Hard Kick (Crouch)]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = 210
trigger3 = MoveContact
trigger4 = StateNo = 230
trigger4 = MoveContact
trigger5 = StateNo = 240
trigger5 = MoveContact
trigger6 = StateNo = 400
trigger6 = MoveContact
trigger7 = StateNo = 410
trigger7 = MoveContact
trigger8 = StateNo = 430
trigger8 = MoveCOntact
trigger9 = StateNo = 440
trigger9 = MoveContact 

[State -1, Light Punch (Air)]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A && ctrl

[State -1, Medium Punch (Air)]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 630 && movecontact

[State -1, Hard Punch (Air)]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 640 && movecontact

[State -1, Light Kick (Air)]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact

[State -1, Medium Kick (Air)]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 700 && movecontact

[State -1, Hard Kick (Air)]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 640 && movecontact
trigger6 = stateno = 700 && movecontact

;Super Jump
[State -1, super jump ]
type = ChangeState
value = 9996
trigger1 = command = "DU"
trigger1 = ctrl ; these means that you can make the move when you control the char
trigger1 = statetype != A ; these is to make that you cant use the superjump while you are in the air
; If you want to make a launcher you can use these
;trigger2 = (stateno = yyy) && (movehit) && (command = "holdup") ;yyy right here is the stateno for your lancher

[State -3,veladd]
type = Veladd
triggerall =command = "holdfwd"
triggerall = prevstateno = 9996 ; the superjumo state
trigger1 = stateno = 50; jump state
x = .2 ; maybe you need to modify these value

[State state-3,veladd]
type = Veladd
triggerall =command = "holdback"
triggerall = prevstateno = 9996
trigger1 = stateno = 50

;---------------------------------------------------------------------------

; Jumping Fierce Punch (Upward)
[State -1, Jumping Fierce Punch]
type = ChangeState
value = 621
triggerall = command = "holddownfwdback"  || (StateType = A && command = "up_z")
triggerall = command = "z"
trigger1 = statetype = A && (ctrl || stateno = 1505)
trigger2 = stateno = [600,610]
trigger2 = movecontact
trigger3 = stateno = [630,640]
trigger3 = movecontact

; Jumping Fierce Punch (Downward)
[State -1, Jumping Fierce Punch]
type = ChangeState
value = 622
triggerall = command = "holddownfwdbck"  || (StateType = A && command = "down_z")
triggerall = command = "z"
trigger1 = statetype = A && (ctrl || stateno = 1505)
trigger2 = stateno = [600,610]
trigger2 = movecontact
trigger3 = stateno = [630,640]
trigger3 = movecontact

;---------------------------------------------------------------------------
; Rocket Knee Dive
[State -1, Rocket Knee Dive]
type = ChangeState
value = 645
triggerall = command = "down_b"
triggerall = var(13) = 0
trigger1 = statetype = A && (ctrl || stateno = 1505)
trigger2 = stateno = [600,640]
trigger2 = StateNo != [620,622]
trigger2 = StateNo != [645,646]
trigger2 = movecontact

;---------------------------------------------------------------------------
; Jumping Fierce Kick (Upward)
[State -1, Jumping Fierce Kick]
type = ChangeState
value = 655
triggerall = command = "up_c"
trigger1 = statetype = A && (ctrl || stateno = 1505)
trigger2 = stateno = [600,640]
trigger2 = movecontact


; アドバンシングガード 
[State -1]
type = VarSet
triggerall = roundstate = 2 && !var(59)
triggerall = !numhelper(8060)
triggerall = command = "recovery"
trigger1 = stateno = 150
trigger2 = stateno = 152
trigger3 = stateno = 154
var(34) = 1
ignorehitpause = 1
 

;---------------------------------------------------------------------------
; AI
[State -1, ChangeState]
type = ChangeState
triggerall = MoveContact
trigger1 = Var(2) = 1 && Random <= 500 && P2BodyDist X <= 40 && StateType != A
value = IfElse(StateNo = 200,210,IfElse(StateNo = 210,220,IfElse(StateNo = 220,1120,1128)))
[State -1, ChangeState]
type = ChangeState
triggerall = MoveContact
trigger1 = Var(2) = 1 && Random <= 799 && P2BodyDist X <= 40 && StateType != A
value = IfElse(StateNo = 200,230,IfElse(StateNo = 230,250,IfElse(StateNo = 250,700,701)))
[State -1, ChangeState]
type = ChangeState
triggerall = MoveContact
trigger1 = Var(2) = 1 && Random <= 799 && P2BodyDist X <= 40 && StateType = A
value = IfElse(StateNo = 600,630,IfElse(StateNo = 630,610,IfElse(StateNo = 610,640,IfElse(StateNo = 640,621,1120))))

[State -1]
type = changestate
triggerall = var(2) = 1
triggerall = Statetype = A
triggerall = P2movetype = A
triggerall = ctrl
triggerall = Facing != (enemynear, Facing)
trigger1 = random > life
value = 132
[State -1]
type = changestate
triggerall = var(2) = 1
triggerall = Statetype != A
triggerall = P2Statetype != C
triggerall = Statetype = S
triggerall = P2movetype = A
triggerall = pos y != [-1,-999]
triggerall = ctrl
triggerall = Facing != (enemynear, Facing)
trigger1 = random > (enemynear, movecontact)*700
value = 130 
[State -1]
type = changestate
triggerall = var(2) = 1
triggerall = Statetype != A
triggerall = P2Statetype = C
triggerall = P2movetype = A
triggerall = pos y != [-1,-999]
trigger1 = StateNo = 150
trigger1 = 1
value = 152
[State -1]
type = changestate
triggerall = var(2) = 1
triggerall = Statetype != A
triggerall = P2Statetype = C
triggerall = P2movetype = A
triggerall = pos y != [-1,-999]
triggerall = ctrl
triggerall = Facing != (enemynear, Facing)
trigger1 = random > (enemynear, movecontact)*700
value = 131
[State -1]
type = changestate
triggerall = var(2) = 1
triggerall = Statetype != A
triggerall = P2Statetype != C
triggerall = P2movetype = A
trigger1 = random > life
trigger1 = StateNo = 152
value = 150

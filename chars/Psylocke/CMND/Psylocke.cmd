; Psylocke by WhiteMagic2002 (CMD)

;---------------------------------------------------------------------------
;AI Stuff
[command]
name = "CPU1"
command = D, D, D, D, D, D, D, D
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
name = "CPU2"
command = z, z, z, z, z, z, z, z
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
name = "CPU3"
command = B, B, B, B, B, B, B, B
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
name = "CPU4"
command = x, x, x, x, x, x, x, x
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
name = "CPU5"
command = U, U, U, U, U, U, U, U
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
name = "CPU6"
command = a, a, a, a, a, a, a, a
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
name = "CPU7"
command = F, F, F, F, F, F, F, F
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
name = "CPU8"
command = b, b, b, b, b, b, b, b
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
name = "CPU9"
command = y, y, y, y, y, y, y, y
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
name = "CPU10"
command = s, s, s, s, s, s, s, s
time = 1

[command]
name = "CPU29"
command = s, s, s, s, s, s, s, s
time = 1

[command]
name = "CPU30"
command = s, s, s, s, s, s, s, s
time = 1
;-| Super Motions |--------------------------------------------------------
[Command]
name = "Psythrust"
command = ~D, DF, F, x+y
time = 15

[Command]
name = "Psythrust"
command = ~D, DF, F, x+z
time = 15

[Command]
name = "Psythrust"
command = ~D, DF, F, y+z
time = 15

[Command]
name = "Maelstrom"
command = ~D, DF, F, a+b
time = 15

[Command]
name = "Maelstrom"
command = ~D, DF, F, a+c
time = 15

[Command]
name = "Maelstrom"
command = ~D, DF, F, b+c
time = 15

[Command]
name = "Kochou"
command = ~D, DB, B, a+b
time = 15

[Command]
name = "Kochou"
command = ~D, DB, B, a+c
time = 15

[Command]
name = "Kochou"
command = ~D, DB, B, b+c
time = 15

;-| Special Motions |------------------------------------------------------
[Command]
name = "Ninjitsu X"
command = ~F, $D, B, x

[Command]
name = "Ninjitsu Z"
command = ~F, $D, B, z

[Command]
name = "Ninjitsu A"
command = ~F, $D, B, a

[Command]
name = "Ninjitsu C"
command = ~F, $D, B, c

[Command]
name = "Ninjitsu X"
command = ~F, $D, B, y

[Command]
name = "Ninjitsu A"
command = ~F, $D, B, b


[Command]
name = "Ninjitsu X"
command = ~F, $D, B, ~x
time = 10
buffer.time = 10

[Command]
name = "Ninjitsu Z"
command = ~F, $D, B, ~z
time = 10
buffer.time = 10

[Command]
name = "Ninjitsu A"
command = ~F, $D, B, ~a
time = 10
buffer.time = 10

[Command]
name = "Ninjitsu C"
command = ~F, $D, B, ~c
time = 10
buffer.time = 10

[Command]
name = "Ninjitsu X"
command = ~F, $D, B, ~y
time = 10
buffer.time = 10

[Command]
name = "Ninjitsu A"
command = ~F, $D, B, ~b
time = 10
buffer.time = 10

[Command]
name = "highjump"
command = $D, $U
time = 9

[Command]
name = "PsyBlast L"
command = ~D, DF, F, x
time = 10
buffer.time = 10

[Command]
name = "PsyBlast M"
command = ~D, DF, F, y
time = 10
buffer.time = 10

[Command]
name = "PsyBlast H"
command = ~D, DF, F, z
time = 10
buffer.time = 10

[Command]
name = "PsyBlade a"
command = ~D, DF, F, a
time = 10
buffer.time = 10

[Command]
name = "PsyBlade b"
command = ~D, DF, F, b
time = 10
buffer.time = 10

[Command]
name = "PsyBlade c"
command = ~D, DF, F, c
time = 10
buffer.time = 10


[Command]
name = "PsyBlast L"
command = ~D, DF, F, ~x
time = 15

[Command]
name = "PsyBlast M"
command = ~D, DF, F, ~y
time = 15

[Command]
name = "PsyBlast H"
command = ~D, DF, F, ~z
time = 15

[Command]
name = "PsyBlade a"
command = ~D, DF, F, ~a
time = 15

[Command]
name = "PsyBlade b"
command = ~D, DF, F, ~b
time = 15

[Command]
name = "PsyBlade c"
command = ~D, DF, F, ~c
time = 15

[Command]
name = "infinitycounter"
command = ~B, DB, D, x

[Command]
name = "infinitycounter"
command = ~B, DB, D, y

[Command]
name = "infinitycounter"
command = ~B, DB, D, z

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
name = "holdfwd"
command = /$F
time = 1
buffer.time = 1

[Command]
name = "holdback"
command = /$B
time = 1
buffer.time = 1

[Command]
name = "holdback2"
command = /B
time = 1

[Command]
name = "holdup"
command = /$U
time = 1
buffer.time = 1

[Command]
name = "holddown"
command = /$D
time = 1
buffer.time = 1

[Command]
name = "hold_a"
command = /a
time = 1
buffer.time = 1

[Command]
name = "hold_b"
command = /b
time = 1
buffer.time = 1

[Command]
name = "hold_c"
command = /c
time = 1
buffer.time = 1

[Command]
name = "hold_x"
command = /x
time = 1
buffer.time = 1

[Command]
name = "hold_y"
command = /y
time = 1
buffer.time = 1

[Command]
name = "hold_z"
command = /z
time = 1
buffer.time = 1

[Command]
name = "hold_start"
command = /s
time = 1
buffer.time = 1

;-| Hold Dir |--------------------------------------------------------------

[Command]
name = "holddownfwd"
command = /$DF
time = 1
buffer.time = 1

[Command]
name = "holddownback"
command = /$DB
time = 1
buffer.time = 1

[Command]
name = "holdupback"
command = /$UB
time = 1
buffer.time = 1

[Command]
name = "holdupfwd"
command = /$UF
time = 1
buffer.time = 1

;for PsyThrusts and Ninjitsu
[Command] 
name = "holdupfwd2"
command = /UF
time = 1
buffer.time = 1

[Command]
name = "holddownfwd2"
command = /DF
time = 1
buffer.time = 1
[Command]
name = "holdup2"
command = /U
time = 1
buffer.time = 1
[Command]
name = "holddown2" ;Required (do not remove)
command = /D
time = 1
buffer.time = 1
[Command]
name = "holdfwd2" ;Required (do not remove)
command = /F
time = 1
buffer.time = 1
[Command]
name = "holdback2" ;Required (do not remove)
command = /B
time = 1
buffer.time = 1
[Command]
name = "holdupback2"
command = /UB
time = 1
buffer.time = 1
[Command]
name = "holddownback2"
command = /DB
buffer.time = 1
time = 1


[Command]
name = "forward_b"
command = /$F,b
time = 1
buffer.time = 1

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


;=-=-=-=-=-=-=-=-=-=-=-=-=-=-=  AI
[State -1]
type = VarSet
var(57) = 1
trigger1 = command = "CPU1"
trigger2 = command = "CPU2"
trigger3 = command = "CPU3"
trigger4 = command = "CPU4"
trigger5 = command = "CPU5"
trigger6 = command = "CPU6"
trigger7 = command = "CPU7"
trigger8 = command = "CPU8"
trigger9 = command = "CPU9"
trigger10 = command = "CPU10"
trigger11 = command = "CPU11"
trigger12 = command = "CPU12"
trigger13 = command = "CPU13"
trigger14 = command = "CPU14"
trigger15 = command = "CPU15"
trigger16 = command = "CPU16"
trigger17 = command = "CPU17"
trigger18 = command = "CPU18"
trigger19 = command = "CPU19"
trigger20 = command = "CPU20"
trigger21 = command = "CPU21"
trigger22 = command = "CPU22"
trigger23 = command = "CPU23"
trigger24 = command = "CPU24"
trigger25 = command = "CPU25"
trigger26 = command = "CPU26"
trigger27 = command = "CPU27"
trigger28 = command = "CPU28"
trigger29 = command = "CPU29"
trigger30 = command = "CPU30"
trigger31 = TeamSide = 2 && TeamMode =Single && IsHomeTeam = 1

























;===========================================================================
; PsyThrust
[State -1, Psythrust ground]
type = ChangeState
value = 1999
triggerall = command = "Psythrust"
triggerall = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = stateno = [200,460]
trigger3 = stateno = 1000
trigger4 = stateno = 1003
trigger5 = stateno = 1006
triggerall = power >= 1000

[State -1, Psythrust air]
type = ChangeState
value = 1997
triggerall = command = "Psythrust"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,660]
triggerall = power >= 1000

; PsyMaelstrom
[State -1, Maelstrom]
type = ChangeState
value = 3000
triggerall = command = "Maelstrom"
triggerall = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = stateno = [200,460]
trigger3 = stateno = 1000
trigger4 = stateno = 1003
trigger5 = stateno = 1006
triggerall = power >= 1000

; Kochou
[State -1, Kochou]
type = ChangeState
value = 4000
triggerall = command = "Kochou"
triggerall = power >= 1000
triggerall = anim != 1503
triggerall = anim != 1504
trigger1 = ctrl
trigger2 = stateno = [200,650]
trigger3 = stateno = 50
trigger3 = prevstateno = 4000
trigger4 = stateno = 50
trigger4 = prevstateno = 2000
trigger5 = stateno = 50
trigger5 = prevstateno = 2001
trigger6 = stateno = 50
trigger6 = prevstateno = 2002
trigger7 = stateno = 50
trigger7 = prevstateno = 2003
trigger8 = stateno = 50
trigger8 = prevstateno = 2004
trigger9 = stateno = 50
trigger9 = prevstateno = [1500, 1520]
trigger10 = prevstateno = 440
trigger10 = movecontact
trigger11 = stateno = 1000
trigger12 = stateno = 1003
trigger13 = stateno = 1006

;---------------------------------------------------------------------------
; Ninjitsu Teleport
; X
[State -1, Ninjitsu]
type = ChangeState
value = 1700
triggerall = command = "Ninjitsu X"
trigger1 = ctrl
trigger2 = stateno = [200,650]

; Z
[State -1, Ninjitsu]
type = ChangeState
value = 1710
triggerall = command = "Ninjitsu Z"
trigger1 = ctrl
trigger2 = stateno = [200,650]

; A
[State -1, Ninjitsu]
type = ChangeState
value = 1720
triggerall = command = "Ninjitsu A"
trigger1 = ctrl
trigger2 = stateno = [200,650]

; C
[State -1, Ninjitsu]
type = ChangeState
value = 1730
triggerall = command = "Ninjitsu C"
trigger1 = ctrl
trigger2 = stateno = [200,650]

; PsyBlast
[State -1, Psyblast low]
type = ChangeState
value = 1000
triggerall = !numhelper(1001)
triggerall = !numhelper(1004)
triggerall = !numhelper(1007)
triggerall = command = "PsyBlast L"
triggerall = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = stateno = [200,650]

; PsyBlast
[State -1, Psyblast low]
type = ChangeState
value = 1010
triggerall = !numhelper(1001)
triggerall = !numhelper(1004)
triggerall = !numhelper(1007)
triggerall = command = "PsyBlast L"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = [200,650]

; PsyBlast
[State -1, Psyblast med]
type = ChangeState
value = 1003
triggerall = !numhelper(1001)
triggerall = !numhelper(1004)
triggerall = !numhelper(1007)
triggerall = command = "PsyBlast M"
triggerall = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = stateno = [200,650]

; PsyBlast
[State -1, Psyblast med]
type = ChangeState
value = 1012
triggerall = !numhelper(1001)
triggerall = !numhelper(1004)
triggerall = !numhelper(1007)
triggerall = command = "PsyBlast M"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = [200,650]

; PsyBlast
[State -1, Psyblast high]
type = ChangeState
value = 1006
triggerall = !numhelper(1001)
triggerall = !numhelper(1004)
triggerall = !numhelper(1007)
triggerall = command = "PsyBlast H"
triggerall = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = stateno = [200,650]

; PsyBlast
[State -1, Psyblast high]
type = ChangeState
value = 1013
triggerall = !numhelper(1001)
triggerall = !numhelper(1004)
triggerall = !numhelper(1007)
triggerall = command = "PsyBlast H"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = [200,650]

; PsyBlade
[State -1, Psyblade A]
type = ChangeState
value = 1500
triggerall = command = "PsyBlade a"
triggerall = stateno != 52
trigger1 = ctrl
trigger2 = stateno = [200,650]

; PsyBlade
[State -1, Psyblade A]
type = ChangeState
value = 1510
triggerall = command = "PsyBlade b"
triggerall = stateno != 52
trigger1 = ctrl
trigger2 = stateno = [200,650]

; PsyBlade
[State -1, Psyblade c]
type = ChangeState
value = 1520
triggerall = command = "PsyBlade c"
triggerall = stateno != 52
trigger1 = ctrl
trigger2 = stateno = [200,650]

;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = stateno != 105
triggerall = stateno != 100
triggerall = statetype = S
triggerall = ctrl
trigger1 = (command = "holdback2" && command = "recovery") || (StateType != A && command = "BB")
trigger1 = statetype = S && ctrl

;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = stateno != 105
triggerall = stateno != 100
triggerall = statetype = S
triggerall = ctrl
trigger1 = (command = "recovery") || (StateType != A && command = "FF")
trigger1 = statetype = S && ctrl


;---------------------------------------------------------------------------
; Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = roundstate = 2 && !var(59)
trigger1 = command = "z" && (command = "holdfwd" || command = "holdback")
trigger1 = p2bodydist x < 18 && enemynear,movetype != H
trigger1 = statetype = S && ctrl
;---------------------------------------------------------------------------
; Throw
[State -1, Throw]
type = ChangeState
value = 820
triggerall = roundstate = 2 && !var(59)
trigger1 = command = "c" && (command = "holdfwd" || command = "holdback")
trigger1 = p2bodydist x < 18 && enemynear,movetype != H
trigger1 = statetype = S && ctrl
;---------------------------------------------------------------------------
; Throw
[State -1, Throw]
type = ChangeState
value = 860
triggerall = roundstate = 2 && !var(59)
trigger1 = command = "c" && (command = "holdfwd" || command = "holdback")
trigger1 = p2bodydist x < 20 && abs(p2bodydist y) < 20 && enemynear,movetype != H
trigger1 = statetype = A && ctrl

;===========================================================================
;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

; 立ち強K
[State -1]
type = ChangeState
value = 254
triggerall = roundstate = 2 && !var(59)
triggerall = command = "c" && command = "holdfwd"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 440 && movecontact

; 立ち強K
[State -1]
type = ChangeState
value = 251
triggerall = roundstate = 2 && !var(59)
triggerall = command = "c" && command = "holdback"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 440 && movecontact

; 立ち弱P 
[State -1]
type = ChangeState
value = 200
triggerall = roundstate = 2 && !var(59)
triggerall = command = "x" && command != "holddown"
trigger1 = statetype = S && ctrl

; 立ち中P
[State -1]
type = ChangeState
value = 210
triggerall = roundstate = 2 && !var(59)
triggerall = command = "y" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact

; 立ち強P
[State -1]
type = ChangeState
value = 220
triggerall = roundstate = 2 && !var(59)
triggerall = command = "z" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 440 && movecontact

; 立ち弱K
[State -1]
type = ChangeState
value = 230
triggerall = roundstate = 2 && !var(59)
triggerall = command = "a" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 200 && animelem = 3,> 0
trigger4 = stateno = 230 && animelem = 4,> 0
trigger5 = stateno = 400 && animelem = 3,> 0
trigger6 = stateno = 430 && animelem = 4,> 0

; 立ち中K
[State -1]
type = ChangeState
value = 240
triggerall = roundstate = 2 && !var(59)
triggerall = command = "b" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 410 && movecontact
trigger7 = stateno = 430 && movecontact

; 立ち強K
[State -1]
type = ChangeState
value = 250
triggerall = roundstate = 2 && !var(59)
triggerall = command = "c" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 440 && movecontact
 
; しゃがみ弱P 
[State -1]
type = ChangeState
value = 400
triggerall = roundstate = 2 && !var(59)
triggerall = command = "x" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger3 = stateno = 200 && animelem = 3,> 0
trigger4 = stateno = 230 && animelem = 4,> 0
trigger5 = stateno = 400 && animelem = 3,> 0
trigger6 = stateno = 430 && animelem = 4,> 0

; しゃがみ中P
[State -1]
type = ChangeState
value = 410
triggerall = roundstate = 2 && !var(59)
triggerall = command = "y" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact

; しゃがみ強P
[State -1]
type = ChangeState
value = 420
triggerall = roundstate = 2 && !var(59)
triggerall = command = "z" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 440 && movecontact

; しゃがみ弱K
[State -1]
type = ChangeState
value = 430
triggerall = roundstate = 2 && !var(59)
triggerall = command = "a" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 400 && movecontact
trigger4 = stateno = 200 && animelem = 3,> 0
trigger5 = stateno = 230 && animelem = 4,> 0
trigger6 = stateno = 400 && animelem = 3,> 0
trigger7 = stateno = 430 && animelem = 4,> 0

; しゃがみ中K
[State -1]
type = ChangeState
value = 440
triggerall = roundstate = 2 && !var(59)
triggerall = command = "b" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 410 && movecontact
trigger7 = stateno = 430 && movecontact

; しゃがみ強K
[State -1]
type = ChangeState
value = 450
triggerall = roundstate = 2 && !var(59)
triggerall = command = "c" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 440 && movecontact

;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 651
triggerall = command = "c" && command = "holdup"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 620 && movecontact
trigger5 = stateno = 630 && movecontact
trigger6 = stateno = 640 && movecontact

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 630 && movecontact
;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 640 && movecontact


;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact


;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact



;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 620 && movecontact
trigger5 = stateno = 630 && movecontact
trigger6 = stateno = 640 && movecontact

;---------------------------------------------------------------------------
; Super Jump
[State -1]
type = changestate
value = 900
triggerall = statetype != A
trigger1 = command = "highjump"
trigger1 = ctrl
trigger2 = command = "highjump" || command = "holdup"
trigger2 = MoveHit
trigger2 = var(29) = 0
trigger2 = Stateno = 420  && movehit && p2statetype = A && time<16

; アドバンシングガード 
[State -1]
type = VarSet
triggerall = roundstate = 2 && !var(59)
triggerall = !numhelper(8060)
triggerall = (command = "x" && command = "y") || (command = "x" && command = "b") || (command = "y" && command = "b") || command = "c"
trigger1 = stateno = 150
trigger2 = stateno = 152
trigger3 = stateno = 154
var(11) = 1
ignorehitpause = 1

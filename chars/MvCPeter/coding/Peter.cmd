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
;-------------------------------------------------------------------------------
;A.I. ACTIVATION
[Command]
name = "CPU1"
command = U,U
time = 0

[Command]
name = "CPU2"
command = U,B
time = 0

[Command]
name = "CPU3"
command = U,F
time = 0

[Command]
name = "CPU4"
command = U,D
time = 0

[Command]
name = "CPU5"
command = U,UF
time = 0

[Command]
name = "CPU6"
command = U,UB
time = 0

[Command]
name = "CPU7"
command = U,DB
time = 0

[Command]
name = "CPU8"
command = U,DF
time = 0

[Command]
name = "CPU9"
command = F,U
time = 0

[Command]
name = "CPU10"
command = F,B
time = 0

[Command]
name = "CPU11"
command = F,F
time = 0

[Command]
name = "CPU12"
command = F,D
time = 0

[Command]
name = "CPU13"
command = F,UF
time = 0

[Command]
name = "CPU14"
command = F,UB
time = 0

[Command]
name = "CPU15"
command = F,DB
time = 0

[Command]
name = "CPU16"
command = F,DF
time = 0

 [Command]
name = "CPU17"
command = B,U
time = 0

[Command]
name = "CPU18"
command = B,B
time = 0

[Command]
name = "CPU19"
command = B,F
time = 0

[Command]
name = "CPU20"
command = B,D
time = 0

[Command]
name = "CPU21"
command = B,UF
time = 0

[Command]
name = "CPU22"
command = B,UB
time = 0

[Command]
name = "CPU23"
command = B,DB
time = 0

[Command]
name = "CPU24"
command = B,DF
time = 0

 [Command]
name = "CPU25"
command = D,U
time = 0

[Command]
name = "CPU26"
command = D,B
time = 0

[Command]
name = "CPU27"
command = D,F
time = 0

[Command]
name = "CPU28"
command = D,D
time = 0

[Command]
name = "CPU29"
command = D,UF
time = 0

[Command]
name = "CPU30"
command = D,UB
time = 0

[Command]
name = "CPU31"
command = D,DB
time = 0

[Command]
name = "CPU32"
command = D,DF
time = 0
;-| Super Motions |--------------------------------------------------------
[Command]
name = "Mudkip"
command = ~D, DB, B, c+z
time = 85

[Command]
name = "A.N.N.A."
command = ~D, DF, F, a+b
time = 85

[Command]
name = "A.N.N.A."
command = ~D, DF, F, b+c
time = 85

[Command]
name = "A.N.N.A."
command = ~D, DF, F, a+c
time = 85

[Command]
name = "HHK"
command = ~D, DF, F, c+z
time = 85

[Command]
name = "Anal Torch"
command = ~D, DF, F, x+y
time = 85

[Command]
name = "Anal Torch"
command = ~D, DF, F, y+z
time = 40

[Command]
name = "Anal Torch"
command = ~D, DF, F, x+z
time = 85

[Command]
name = "Ipecac Attack"
command = ~D, DB, B, a+b
time = 85

[Command]
name = "Ipecac Attack"
command = ~D, DB, B, b+c
time = 40

[Command]
name = "Ipecac Attack"
command = ~D, DB, B, a+c
time = 85

[Command]
name = "Steroid Man"
command = ~D, DB, B, x+y
time = 85

[Command]
name = "Steroid Man"
command = ~D, DB, B, y+z
time = 85

[Command]
name = "Steroid Man"
command = ~D, DB, B, x+z
time = 85
;-| Special Motions |------------------------------------------------------
[Command]
name = "Peter Uppercut"
command = /DB, y
time = 15

[Command]
name = "Bottle Toss 1"
command = ~D, DF, F, a
time = 15

[Command]
name = "Bottle Toss 2"
command = ~D, DF, F, b
time = 15

[Command]
name = "Bottle Toss 3"
command = ~D, DF, F, c
time = 15

[Command]
name = "Fart-Douken 1"
command = ~D, DF, F, x
time = 15

[Command]
name = "Fart-Douken 2"
command = ~D, DF, F, y
time = 15

[Command]
name = "Triple Fart-Douken"
command = ~D, DF, F, z

[Command]
name = "Peter Smackdown 1"
command = ~D, DB, B, x
time = 15

[Command]
name = "Peter Smackdown 2"
command = ~D, DB, B, y
time = 15

[Command]
name = "Power Headbutt"
command = ~D, DB, B, z
time = 15

[Command]
name = "Super Jump Kick"
command = ~F, D, DF, c
time = 15

[Command]
name = "Jump Kick 1"
command = ~F, D, DF, a
time = 15

[Command]
name = "Jump Kick 2"
command = ~F, D, DF, b
time = 15

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

[Command]
name = "superjump"
command = $D, U
time = 15

[Command]
name = "superjumpforward"
command = $D, UF
time = 15

[Command]
name = "superjumpbackward"
command = $D, UB
time = 15
;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "Guard Push"
command = x+y+z
time = 15

[Command]
name = "FF"
command = x+y+z
time = 10

[Command]
name = "BB"
command = x+y+z
time = 10

[Command]
name = "superjump"
command = a+b+c
time = 15

[Command]
name = "PBJT"
command = s+b

[command]
name = "SSBRecN"
command = x+y+z

[command]
name = "SSBRecL"
command = /B, x+y+z

[command]
name = "SSBRecR"
command = /F, x+y+z
;-| Dir + Button |---------------------------------------------------------
[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "fwd_b"
command = /F,c
time = 1

[Command]
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "fwd_y"
command = /F,z
time = 1

[Command]
name = "back_b"
command = /B,b
time = 1

[Command]
name = "back_b"
command = /B,c
time = 1

[Command]
name = "back_y"
command = /B,y
time = 1

[Command]
name = "back_y"
command = /B,z
time = 1

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
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup"
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1

;-| Hold Button |--------------------------------------------------------------
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

;---------------------------------------------------------------------------
; 2. State entry
[Statedef -1]

[State -1, Activate AI]
type = VarSet
triggerall = roundstate = [1,2]
triggerall = life >= 1
triggerall = var(20) != 1
trigger1 = command = "CPU1" || command = "CPU2" || command = "CPU3"
trigger2 = command = "CPU4" || command = "CPU5" || command = "CPU6"
trigger3 = command = "CPU7" || command = "CPU8" || command = "CPU9"
trigger4 = command = "CPU10" || command = "CPU11" || command = "CPU12"
trigger5 = command = "CPU13" || command = "CPU14" || command = "CPU15"
trigger6 = command = "CPU16" || command = "CPU17" || command = "CPU18"
trigger7 = command = "CPU19" || command = "CPU20" || command = "CPU21"
trigger8 = command = "CPU22" || command = "CPU23" || command = "CPU24"
trigger8 = command = "CPU25" || command = "CPU26" || command = "CPU27"
trigger9 = command = "CPU28" || command = "CPU29" || command = "CPU30"
trigger10 = command = "CPU31" || command = "CPU32"
v = 20
;AI DIFFICULTY/AI Level
value = 2
;0 = No AI
;1 = Very Weak AI; attack spam based on distance
;2 = Medium AI; AKA the 71113 AI
;3 = Weak AI; Random AI with low damage output
;4 = Strong AI; AI #2 combined with #3 for basic idea
;5 = Strong AI; AI #4 with more features

[State -1, Activate AI]
type = VarSet
trigger1 = life <= 0
v = 20
value = 0
;--------------------------------------------------------------------------------
;Artificial Inteligence
;Implemented by Luigi-Master
;SPECIAL THANKS TO EVILSLAYERX5 for better methods.

;Level 1 AI
;WEAK PUNCH
[State -1]
type = ChangeState
value = 200
triggerall = life >= 1
triggerall = ctrl = 1
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 200
triggerall = p2bodydist x <= 40
triggerall = enemy,movetype != A
trigger1 = Time >= 5

;Medium Punch
[State -1]
type = ChangeState
value = 210
triggerall = life >= 1
triggerall = ctrl = 1
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 210
triggerall = p2bodydist x <= 50
triggerall = enemy,movetype != A
trigger1 = Time >= 5

;Strong Punch
[State -1]
type = ChangeState
value = 220
triggerall = life >= 1
triggerall = ctrl = 1
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 220
triggerall = p2bodydist x <= 40
triggerall = enemy,movetype != A
trigger1 = Time >= 5

;Weak Kick
[State -1]
type = ChangeState
value = 230
triggerall = life >= 1
triggerall = ctrl = 1
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 230
triggerall = p2bodydist x <= 30
triggerall = enemy,movetype != A
trigger1 = Time >= 5

;Medium Kick
[State -1]
type = ChangeState
value = 240
triggerall = life >= 1
triggerall = ctrl = 1
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 240
triggerall = p2bodydist x <= 40
triggerall = enemy,movetype != A
trigger1 = Time >= 5

;Strong Kick
[State -1]
type = ChangeState
value = 250
triggerall = life >= 1
triggerall = ctrl = 1
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 250
triggerall = p2bodydist x <= 35
triggerall = enemy,movetype != A
trigger1 = Time >= 5

;Weak Bottle
[State -1]
type = ChangeState
value = 300
triggerall = life >= 1
triggerall = ctrl = 1
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 300
Triggerall = numprojID(300) = 0
triggerall = p2bodydist x <= 255
triggerall = enemy,movetype != A
trigger1 = Time >= 5

;Medium Bottle
[State -1]
type = ChangeState
value = 310
triggerall = life >= 1
triggerall = ctrl = 1
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 310
Triggerall = numprojID(300) = 0
triggerall = p2bodydist x <= 255
triggerall = enemy,movetype != A
trigger1 = Time >= 5

;Hard Bottle
[State -1]
type = ChangeState
value = 320
triggerall = life >= 1
triggerall = ctrl = 1
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 320
Triggerall = numprojID(300) = 0
triggerall = p2bodydist x <= 200
triggerall = enemy,movetype != A
trigger1 = Time >= 5

;Weak Crouch Punch
[State -1]
type = ChangeState
value = 400
triggerall = life >= 1
triggerall = ctrl = 1
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 400
triggerall = p2bodydist x <= 40
triggerall = enemy,movetype != A
trigger1 = Time >= 5

;Medium Crouch Punch
[State -1]
type = ChangeState
value = 410
triggerall = life >= 1
triggerall = ctrl = 1
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 410
triggerall = p2bodydist x <= 50
triggerall = enemy,movetype != A
trigger1 = Time >= 5

;Strong Crouch Punch
[State -1]
type = ChangeState
value = 420
triggerall = life >= 1
triggerall = ctrl = 1
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 420
triggerall = p2bodydist x <= 130
triggerall = enemy,movetype != A
trigger1 = Time >= 5

;Weak Crouch Kick
[State -1]
type = ChangeState
value = 430
triggerall = life >= 1
triggerall = ctrl = 1
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 430
triggerall = p2bodydist x <= 30
triggerall = enemy,movetype != A
trigger1 = Time >= 5

;Medium Crouch Kick
[State -1]
type = ChangeState
value = 440
triggerall = life >= 1
triggerall = ctrl = 1
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 440
triggerall = p2bodydist x <= 80
triggerall = enemy,movetype != A
trigger1 = Time >= 5

;Strong Crouch Kick
[State -1]
type = ChangeState
value = 450
triggerall = life >= 1
triggerall = ctrl = 1
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 450
triggerall = p2bodydist x <= 50
triggerall = enemy,movetype != A
trigger1 = Time >= 5

;Weak Headbutt
[State -1]
type = ChangeState
value = 1200
triggerall = life >= 1
triggerall = ctrl = 1
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 1200
triggerall = p2bodydist x <= 50
triggerall = enemy,movetype != A
trigger1 = Time >= 5

;Medium Headbutt
[State -1]
type = ChangeState
value = 1210
triggerall = life >= 1
triggerall = ctrl = 1
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 1210
triggerall = p2bodydist x <= 70
triggerall = enemy,movetype != A
trigger1 = Time >= 5

;Strong Headbutt
[State -1]
type = ChangeState
value = 1220
triggerall = life >= 1
triggerall = ctrl = 1
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 1220
triggerall = p2bodydist x <= 100
triggerall = enemy,movetype != A
trigger1 = Time >= 5

;Weak Fart-Douken
[State -1]
type = ChangeState
value = 1000
triggerall = life >= 1
triggerall = ctrl = 1
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 1000
Triggerall = numprojID(1000) = 0
triggerall = p2bodydist x <= 230
triggerall = enemy,movetype != A
trigger1 = Time >= 5

;Medium Fart-Douken
[State -1]
type = ChangeState
value = 1010
triggerall = life >= 1
triggerall = ctrl = 1
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 1010
Triggerall = numprojID(1000) = 0
triggerall = p2bodydist x <= 200
triggerall = enemy,movetype != A
trigger1 = Time >= 5

;Strong Fart-Douken
[State -1]
type = ChangeState
value = 1012
triggerall = life >= 1
triggerall = ctrl = 1
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 1012
Triggerall = numprojID(1000) = 0
triggerall = p2bodydist x <= 180
triggerall = enemy,movetype != A
trigger1 = Time >= 5

;Weak Anti Air
[State -1]
type = ChangeState
value = 1050
triggerall = life >= 1
triggerall = ctrl = 1
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 1050
triggerall = p2bodydist x <= 60
triggerall = p2bodydist y <= 45
triggerall = enemy,movetype != A
trigger1 = Time >= 5

;Medium Anti Air
[State -1]
type = ChangeState
value = 1060
triggerall = life >= 1
triggerall = ctrl = 1
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 1060
triggerall = p2bodydist x <= 60
triggerall = p2bodydist y <= 65
triggerall = enemy,movetype != A
trigger1 = Time >= 5

;Strong Anti Air
[State -1]
type = ChangeState
value = 1070
triggerall = life >= 1
triggerall = ctrl = 1
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 1070
triggerall = p2bodydist x <= 60
triggerall = p2bodydist y <= 85
triggerall = enemy,movetype != A
trigger1 = Time >= 5

;Weak Air Punch
[State -1]
type = ChangeState
value = 600
triggerall = life >= 1
triggerall = ctrl = 1
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 600
triggerall = p2bodydist x <= 30
triggerall = p2bodydist y <= 40
triggerall = enemy,movetype != A
trigger1 = Time >= 5

;Weak Air Kick
[State -1]
type = ChangeState
value = 630
triggerall = life >= 1
triggerall = ctrl = 1
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 630
triggerall = p2bodydist x <= 30
triggerall = p2bodydist y <= 40
triggerall = enemy,movetype != A
trigger1 = Time >= 5

;Medium Air Punch
[State -1]
type = ChangeState
value = 610
triggerall = life >= 1
triggerall = ctrl = 1
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 610
triggerall = p2bodydist x <= 45
triggerall = p2bodydist y <= 50
triggerall = enemy,movetype != A
trigger1 = Time >= 5

;Medium Air Kick
[State -1]
type = ChangeState
value = 620
triggerall = life >= 1
triggerall = ctrl = 1
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 620
triggerall = p2bodydist x <= 45
triggerall = p2bodydist y <= 50
triggerall = enemy,movetype != A
trigger1 = Time >= 5

;Strong Air Punch
[State -1]
type = ChangeState
value = 620
triggerall = life >= 1
triggerall = ctrl = 1
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 620
triggerall = p2bodydist x <= 50
triggerall = p2bodydist y <= 60
triggerall = enemy,movetype != A
trigger1 = Time >= 5

;Strong Air Kick
[State -1]
type = ChangeState
value = 650
triggerall = life >= 1
triggerall = ctrl = 1
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 650
triggerall = p2bodydist x <= 50
triggerall = p2bodydist y <= 60
triggerall = enemy,movetype != A
trigger1 = Time >= 5

;Anal Torch
[State -1]
type = ChangeState
value = 3000
triggerall = life >= 1
triggerall = ctrl = 1
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 3000
triggerall = p2bodydist x <= 170
triggerall = enemy,movetype != A
trigger1 = Time >= 5

;Steroid Man
[State -1]
type = ChangeState
value = 1020
triggerall = life >= 1
triggerall = ctrl = 1
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 1020
triggerall = p2bodydist x <= 100
triggerall = enemy,movetype != A
trigger1 = Time >= 5

;Nausea Nightmare
[State -1]
type = ChangeState
value = 3050
triggerall = life >= 1
triggerall = ctrl = 1
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 3050
triggerall = p2bodydist x <= 130
triggerall = enemy,movetype != A
trigger1 = Time >= 5

; AI Standing Guard
[State -1]
type = ChangeState
triggerall = var(20) = 1
triggerall = Statetype != A
triggerall = P2statetype != C
triggerall = Statetype = S
triggerall = P2Movetype = A
triggerall = Pos Y != [-1,-999]
trigger1 = ctrl = 1
value = 130
ignorehitpause = 1

; AI Stand to Crouch Guard Transition
[State -1]
type = ChangeState
triggerall = var(20) = 1
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
triggerall = Pos Y != [-1,-999]
trigger1 = stateno = 150
trigger1 = 1
value = 152
ignorehitpause = 1

; AI Crouching Guard
[State -1]
type = ChangeState
triggerall = var(20) = 1
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
triggerall = Pos Y != [-1,-999]
trigger1 = ctrl = 1
value = 131
ignorehitpause = 1

; AI Crouch to Stand Guard Transition
[State -1]
type = ChangeState
triggerall = var(20) = 1
triggerall = Statetype != A
triggerall = P2statetype != C
triggerall = P2Movetype = A
trigger1 = 1
trigger1 = stateno = 152
value = 150
ignorehitpause = 1

; AI Aerial Guard
[State -1]
type = ChangeState
triggerall = var(20) = 1
triggerall = Statetype = A
triggerall = P2Movetype = A
trigger1 = ctrl = 1
value = 132
ignorehitpause = 1

;Jump back
[state -3]
type = changestate
triggerall = var(20) = 1
triggerall = p2movetype = A
triggerall = ctrl
triggerall = statetype = S
trigger1 = random%100 = 0
trigger2 = p2statetype = A
value = 105

;Auto Taunt
[State -1, AI taunt]
type = ChangeState
triggerall = movetype != H
triggerall = statetype != A
triggerall = var(20) = 1
triggerall = ctrl = 1
triggerall = stateno != 195
trigger1 = roundstate > 2
value = 195

;Level 2 AI
;BASIC ATTACKS
;PUNCHES
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = p2movetype != A
Triggerall = var(20) = 2
triggerall = (P2bodydist X = [0,20])
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6
;
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = p2movetype != A
Triggerall = var(20) =2
triggerall = (P2bodydist X = [0,30])
trigger1 = (stateno = 200) && Movehit
;
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = p2movetype != A
Triggerall = var(20) =2
triggerall = (P2bodydist X = [0,20])
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6
;
;KICKS
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = p2movetype != A
Triggerall = var(20) =2
triggerall = (P2bodydist X = [0,20])
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 230) && time > 9
;
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = p2movetype != A
Triggerall = var(20) =2
triggerall = (P2bodydist X = [0,40])
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = stateno = 230 && movecontact
;
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = p2movetype != A
Triggerall = var(20) =2
triggerall = (P2bodydist X = [0,15])
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6
;
;CROUCHING ATTACKS
;
;PUNCHES
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = p2movetype != A
Triggerall = var(20) =2
triggerall = (P2bodydist X = [0,30])
trigger1 = statetype = C
trigger1 = stateno = 430 && movecontact
;
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = p2movetype != A
Triggerall = var(20) =2
triggerall = (P2bodydist X = [0,50])
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)
;
;LAUNCHER
[State -1, Peter Uppercut]
type = ChangeState
value = 1110
triggerall = p2movetype != A
triggerall = (P2bodydist X = [0,0])
Triggerall = var(20) =2
trigger1 = var(1)
trigger1 = statetype = C
trigger1 = ctrl
;
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = p2movetype != A
Triggerall = var(20) =2
triggerall = (P2bodydist X = [0,115])
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)
;
;KICKS
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = p2movetype != A
Triggerall = var(20) =2
triggerall = (P2bodydist X = [0,25])
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)
;
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = p2movetype != A
Triggerall = var(20) =2
triggerall = (P2bodydist X = [0,110])
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)
;
;Launch Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = ctrl = 1
triggerall = p2movetype != A
triggerall = p2statetype != L
triggerall = (P2bodydist X = [0,80])
Triggerall = var(20) =2
trigger1 = statetype != A

;Super Jump timer, thanks MarkyJoe1990!  :D
[State -1]
type = changestate
trigger1 = var(20)
trigger1 = stateno = 450 && movehit
trigger1 = stateno != 10230
trigger1 = time = 18
value = 10230
;
;Aerial attacks
;
;PUNCHES
[State -1, Jump Light Punch]
type = ChangeState
value = 600
Triggerall = var(20) =2
triggerall = stateno != 600
triggerall = (P2bodydist X = [-56,56])
triggerall = (P2bodydist Y = [-25,25])
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1350 ;Air blocking
trigger2 = hitdefattr = A, NA

[State -1, Jump Medium Punch]
type = ChangeState
value = 610
Triggerall = var(20) =2
trigger1 = statetype = A
trigger1 = stateno = 630 && movehit

[State -1, Jump Strong Punch]
type = ChangeState
value = 620
Triggerall = var(20) =2
triggerall = power < 1000
trigger1 = stateno = 635 && movehit
;
;;KICKS
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = stateno != 630
Triggerall = var(20) =2
trigger1 = stateno = 600 && movehit

[State -1, Jump Medium Kick]
type = ChangeState
value = 635
Triggerall = var(20) =2
triggerall = stateno != 635
trigger1 = stateno = 610 && movehit

;Anti-Air

;Peter KF Knee
[State -1, Jump Kick 1]
type = ChangeState
value = 1050
triggerall = p2movetype != H
Triggerall = p2statetype = A
Triggerall = var(20) =2
triggerall = (P2bodydist X = [0,65])
triggerall = (P2bodydist Y = [-55,0])
trigger1 = var(1)

[State -1, Jump Kick 2]
type = ChangeState
value = 1060
triggerall = p2movetype != H
Triggerall = p2statetype = A
triggerall = stateno != 1060
Triggerall = var(20) =2
triggerall = (P2bodydist X = [0,70])
triggerall = (P2bodydist Y = [-75,0])
trigger1 = var(1)

[State -1, Super Jump Kick]
type = ChangeState
value = 1070
triggerall = p2movetype != H
Triggerall = p2statetype = A
triggerall = stateno != 1070
Triggerall = var(20) =2
triggerall = (P2bodydist X = [0,75])
triggerall = (P2bodydist Y = [-95,0])
triggerall = power >= 330
trigger1 = var(1)

[State -1, Peter Lunge 2]
type = ChangeState
value = 1210
triggerall = p2movetype != A
triggerall = stateno != 1210
Triggerall = var(20) =2
triggerall = power >= 2000
trigger1 = (stateno = 210) && Movehit

[State -1, Power Headbutt]
type = ChangeState
value = 1220
triggerall = p2movetype != A
triggerall = stateno != 1220
Triggerall = var(20) =2
triggerall = power >= 330 && power < 2000
trigger1 = (stateno = 210) && Movehit

;Projectiles

;Fart-douken
[State -1, Fart-Douken 1]
type = ChangeState
value = 1000
triggerall = p2movetype != A
triggerall = stateno != 1000
triggerall = (P2bodydist X = [0,240])
Triggerall = var(20) =2
triggerall = random%200 = 0
trigger1 = var(1)
Trigger2 = statetype = S
trigger2 = ctrl

[State -1, Fart-Douken 2]
type = ChangeState
value = 1010
triggerall = p2movetype != A
triggerall = stateno != 1010
triggerall = (P2bodydist X = [0,220])
Triggerall = var(20) =2
triggerall = random%200 = 0
trigger1 = var(1)
Trigger2 = statetype = S
trigger2 = ctrl

;Grabs

;Punch
[State -1, Punch in the Face]
type = ChangeState
value = 800
triggerall = (P2bodydist X = [0,15])
Triggerall = var(20) =2
triggerall = StateNo != 100 && StateType != A && Ctrl = 1 && MoveType != A
triggerall = P2MoveType != H && P2StateType != A && P2Statetype != L
Trigger1 = random <= 1000

;Kick
[State -1, Kick Barrage]
type = ChangeState
value = 850
triggerall = (P2bodydist X = [0,15])
Triggerall = var(20) =2
triggerall = StateNo != 100 && StateType != A && Ctrl = 1 && MoveType != A
triggerall = P2MoveType != H && P2StateType != A && P2Statetype != L
Trigger1 = random <= 1000

;Supers

;Anal Torch
[State -1, Anal Torch]
type = ChangeState
value = 3000
triggerall = p2movetype != A
Triggerall = var(20) =2
triggerall = power >= 1000
triggerall = roundstate = 2
triggerall = stateno != [3050,3100]
triggerall = hitcount = 9
trigger1 = (stateno = 1020) && Movehit

;I, AM, STEROID MAN!
[State -1, Steroid Man]
type = ChangeState
value = 1020
triggerall = p2movetype != A
Triggerall = var(20) =2
triggerall = power >= 1000
triggerall = roundstate = 2
triggerall = stateno != 3000
triggerall = stateno != [3050,3100]
trigger1 = (stateno = 635) && Movehit

;Nausea Nightmare
[State -1, Ipecac Attack]
type = ChangeState
value = 3050
triggerall = p2movetype != A
triggerall = (P2bodydist X = [0,130])
Triggerall = var(20) =2
triggerall = power >= 2000
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = (stateno = 1210) && Movehit

;Thanks to EvilSlayerX for these codes:  they're glitchy, but they work.
;Run
[State -1, ChangeState]
type = ChangeState
triggerall = statetype != A
triggerall = movetype != H
triggerall = p2bodydist x > 80
triggerall = p2movetype != A
Triggerall = var(20) =2
trigger1 = ctrl
value = 100
ignorehitpause = 1

;Auto-Block codes (by K3nsh1n)

; AI Standing Guard
[State -1]
type = ChangeState
Triggerall = var(20) =2
triggerall = Statetype != A
triggerall = P2statetype != C
triggerall = Statetype = S
triggerall = P2Movetype = A
triggerall = Pos Y != [-1,-999]
trigger1 = ctrl = 1
value = 130
ignorehitpause = 1

; AI Stand to Crouch Guard Transition
[State -1]
type = ChangeState
Triggerall = var(20) =2
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
triggerall = Pos Y != [-1,-999]
trigger1 = stateno = 150
trigger1 = 1
value = 152
ignorehitpause = 1

; AI Crouching Guard
[State -1]
type = ChangeState
Triggerall = var(20) =2
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
triggerall = Pos Y != [-1,-999]
trigger1 = ctrl = 1
value = 131
ignorehitpause = 1

; AI Crouch to Stand Guard Transition
[State -1]
type = ChangeState
Triggerall = var(20) =2
triggerall = Statetype != A
triggerall = P2statetype != C
triggerall = P2Movetype = A
trigger1 = 1
trigger1 = stateno = 152
value = 150
ignorehitpause = 1

; AI Aerial Guard
[State -1]
type = ChangeState
Triggerall = var(20) =2
triggerall = Statetype = A
triggerall = P2Movetype = A
trigger1 = ctrl = 1
value = 132
ignorehitpause = 1

;Jump back
[state -3]
type = changestate
Triggerall = var(20) =2
triggerall = p2movetype = A
triggerall = ctrl
triggerall = statetype = S
trigger1 = random%100 = 0
trigger2 = p2statetype = A
value = 105

;Auto Taunt
[State -1, AI taunt]
type = ChangeState
triggerall = movetype != H
triggerall = statetype != A
Triggerall = var(20) =2
triggerall = ctrl = 1
triggerall = stateno != 195
trigger1 = roundstate > 2
value = 195

;Level 3 AI
;RUN
[State -1, ChangeState]
type = ChangeState
triggerall = statetype != A
triggerall = movetype != H
triggerall = p2bodydist x > 15
triggerall = p2movetype != A
Triggerall = var(20) = 3
trigger1 = ctrl
value = 100
ignorehitpause = 1

;WEAK PUNCH
[State -1]
type = ChangeState
value = 200
triggerall = life >= 1
triggerall = ctrl = 1
Triggerall = var(20) = 3
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 200
triggerall = p2bodydist x <= 15
triggerall = enemy,movetype != A
trigger1 = Time >= 5

;PETER UPPERCUT
[State -1]
type = ChangeState
value = 1110
triggerall = life >= 1
Triggerall = var(20) = 3
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 1110
triggerall = (stateno = 200) && movehit
trigger1 = Time >= 1
trigger1 = var(30) = 1

;MEDIUM PUNCH
[State -1]
type = ChangeState
value = 210
triggerall = life >= 1
Triggerall = var(20) = 3
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 210
triggerall = (stateno = 200) && movehit
trigger1 = Time >= 1
trigger1 = var(30) = 2

;MEDIUM KICK
[State -1]
type = ChangeState
value = 240
triggerall = life >= 1
Triggerall = var(20) = 3
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 240
triggerall = (stateno = 200) && movehit
trigger1 = Time >= 1
trigger1 = var(30) = 3

;STRONG KICK
[State -1]
type = ChangeState
value = 250
triggerall = life >= 1
Triggerall = var(20) = 3
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 250
triggerall = (stateno = 200) && movehit
trigger1 = Time >= 1
trigger1 = var(30) = 4

;WEAK HEADBUTT
[State -1]
type = ChangeState
value = 1200
triggerall = life >= 1
Triggerall = var(20) = 3
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 1200
triggerall = Time >= 1
triggerall = var(40) = 1
trigger1 = (stateno = 250) && movehit

;MEDIUM HEADBUTT
[State -1]
type = ChangeState
value = 1210
triggerall = life >= 1
Triggerall = var(20) = 3
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 1210
triggerall = Time >= 1
triggerall = var(40) = 2
trigger1 = (stateno = 210) && movehit
trigger2 = (stateno = 240) && movehit
trigger3 = (stateno = 250) && movehit

;EX HEADBUTT
[State -1]
type = ChangeState
value = 1220
triggerall = life >= 1
Triggerall = var(20) = 3
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 1220
triggerall = Time >= 1
triggerall = var(40) = 3
triggerall = power >= 330
trigger1 = (stateno = 210) && movehit
trigger2 = (stateno = 240) && movehit
trigger3 = (stateno = 250) && movehit

;Weak AntiAir
[State -1]
type = ChangeState
value = 1050
triggerall = life >= 1
Triggerall = var(20) = 3
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 1050
triggerall = Time >= 1
triggerall = var(40) = 4
trigger1 = (stateno = 210) && movehit
trigger2 = (stateno = 240) && movehit
trigger3 = (stateno = 250) && movehit

[State -1, Jump Kick 1]
type = ChangeState
value = 1050
triggerall = p2movetype != H
Triggerall = p2statetype = A
Triggerall = var(20)
triggerall = (P2bodydist X = [0,65])
triggerall = (P2bodydist Y = [-55,0])
triggerall = Pos Y = 0
triggerall = ctrl = 1
trigger1 = 1

;Medium AntiAir
[State -1]
type = ChangeState
value = 1060
triggerall = life >= 1
Triggerall = var(20) = 3
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 1060
triggerall = Time >= 1
triggerall = var(40) = 5
trigger1 = (stateno = 210) && movehit
trigger2 = (stateno = 240) && movehit
trigger3 = (stateno = 250) && movehit

[State -1, Jump Kick 1]
type = ChangeState
value = 1060
triggerall = p2movetype != H
Triggerall = p2statetype = A
Triggerall = var(20)
triggerall = (P2bodydist X = [0,70])
triggerall = (P2bodydist Y = [-75,0])
triggerall = Pos Y = 0
triggerall = ctrl = 1
trigger1 = 1

;EX Anti Air
[State -1]
type = ChangeState
value = 1070
triggerall = life >= 1
Triggerall = var(20) = 3
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 1070
triggerall = Time >= 1
triggerall = var(40) = 6
triggerall = power >= 330
trigger1 = (stateno = 210) && movehit
trigger2 = (stateno = 240) && movehit
trigger3 = (stateno = 250) && movehit

[State -1, Jump Kick 1]
type = ChangeState
value = 1070
triggerall = p2movetype != H
Triggerall = p2statetype = A
Triggerall = var(20)
triggerall = (P2bodydist X = [0,75])
triggerall = (P2bodydist Y = [-95,0])
triggerall = Pos Y = 0
triggerall = ctrl = 1
triggerall = power >= 330
trigger1 = 1

;MULE KICK
[State -1]
type = ChangeState
value = 450
triggerall = life >= 1
Triggerall = var(20) = 3
triggerall = roundstate = 2
triggerall = Pos Y >= 0
triggerall = stateno != 450
triggerall = Time >= 1
triggerall = var(40) = 7
trigger1 = (stateno = 210) && movehit
trigger2 = (stateno = 240) && movehit
trigger3 = (stateno = 250) && movehit
trigger4 = (stateno = 400) && movehit

;ANAL TORCH
[State -1]
type = ChangeState
value = 3000
triggerall = life >= 1
Triggerall = var(20) = 3
triggerall = roundstate = 2
triggerall = Pos Y >= 0
triggerall = stateno != 3000
triggerall = Time >= 1
triggerall = var(50) = 1
triggerall = power >= 1000
triggerall = hitcount = 9
triggerall = p2dist x >= 1
trigger1 = (stateno = 1200) && movehit
trigger2 = (stateno = 1210) && movehit
trigger3 = (stateno = 1020) && movehit
trigger5 = enemy,movetype = A && time > 5
trigger5 = ctrl = 1

;STEROID MAN
[State -1]
type = ChangeState
value = 1020
triggerall = life >= 1
Triggerall = var(20) = 3
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 1020
triggerall = Time >= 1
triggerall = var(50) = 2
triggerall = power >= 1000
trigger1 = (stateno = 1200) && movehit
trigger2 = (stateno = 1210) && movehit
trigger2 = ctrl = 1

;NAUSEA NIGHTMARE
[State -1]
type = ChangeState
value = 3050
triggerall = life >= 1
Triggerall = var(20) = 3
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 3050
triggerall = Time >= 1
triggerall = var(50) = 3
triggerall = power >= 2000
trigger1 = (stateno = 1200) && movehit
trigger2 = (stateno = 1210) && movehit
trigger3 = enemy,movetype = A && time > 5
trigger3 = ctrl = 1

;WEAK CROUCH KICK
[State -1]
type = ChangeState
value = 430
triggerall = life >= 1
Triggerall = var(20) = 3
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 430
triggerall = (stateno = 200) && Time >= 15
triggerall = var(47) = 1
trigger1 = Time >= 1

;TRIP ATTACK
[State -1]
type = ChangeState
value = 440
triggerall = life >= 1
Triggerall = var(20) = 3
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 440
triggerall = (stateno = 200) && Time >= 15
triggerall = var(47) = 2
trigger1 = Time >= 1

;WEAK CROUCH PUNCH
[State -1]
type = ChangeState
value = 400
triggerall = life >= 1
Triggerall = var(20) = 3
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 400
triggerall = (stateno = 430) && movehit
trigger1 = Time >= 1

;MEDIUM CROUCH PUNCH
[State -1]
type = ChangeState
value = 410
triggerall = life >= 1
Triggerall = var(20) = 3
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 410
triggerall = (stateno = 400) && movecontact
triggerall = var(48) = 1
trigger1 = Time >= 1

;MULE KICK
[State -1]
type = ChangeState
value = 450
triggerall = life >= 1
Triggerall = var(20) = 3
triggerall = roundstate = 2
triggerall = Pos Y >= 0
triggerall = stateno != 450
triggerall = Time >= 1
triggerall = var(48) = 2
trigger1 = (stateno = 400) && movehit

;Grabs
;Kick
[State -1, Kick Barrage]
type = ChangeState
value = 850
triggerall = (P2bodydist X = [5,20])
Triggerall = var(20)
triggerall = StateNo != 100 && StateType != A && Ctrl = 1 && MoveType != A
triggerall = P2MoveType != H && P2StateType != A && P2Statetype != L
triggerall = var(46) = 1
Trigger1 = random <= 500

;PETER UPPERCUT
[State -1]
type = ChangeState
value = 1110
triggerall = (P2bodydist X = [5,20])
triggerall = life >= 1
Triggerall = var(20) = 3
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 1110
triggerall = (stateno = 200) && movehit
trigger1 = Time >= 1
trigger1 = var(46) = 2
Trigger1 = random <= 500

;SUPER JUMP from Mule Kick
[State -1]
type = changestate
trigger1 = var(20)
trigger1 = stateno = 450 && movehit
trigger1 = stateno != 10230
trigger1 = time = 16
value = 10230

;SUPER JUMP from Peter upper
[State -1]
type = changestate
trigger1 = var(20)
trigger1 = stateno = 1110 && movehit
trigger1 = stateno != 10230
trigger1 = time = 13
value = 10230

;AIR RAVE

[State -1, Jump Light Punch]
type = ChangeState
value = 600
Triggerall = var(20)
triggerall = stateno != 600
triggerall = time = 12
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1350
trigger2 = hitdefattr = A, NA

[State -1, Jump Medium Punch]
type = ChangeState
value = 610
Triggerall = var(20)
trigger1 = statetype = A
trigger1 = stateno = 630 && movehit

[State -1, Jump Strong Punch]
type = ChangeState
value = 620
Triggerall = var(20) = 3
triggerall = var(49) = 1
triggerall = power < 1000
trigger1 = stateno = 635 && movehit

;KICKS
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = stateno != 630
Triggerall = var(20)
trigger1 = stateno = 600 && movehit

[State -1, Jump Medium Kick]
type = ChangeState
value = 635
Triggerall = var(20)
triggerall = stateno != 635
trigger1 = stateno = 610 && movehit

[State -1, Jump Strong Kick]
type = ChangeState
value = 640
Triggerall = var(20) = 3
triggerall = var(49) = 2
triggerall = power < 1000
trigger1 = stateno = 635 && movehit

;ALT SUPERS
;Supers

;Anal Torch
[State -1, Anal Torch]
type = ChangeState
value = 3000
triggerall = p2movetype != A
Triggerall = var(20)
triggerall = power >= 1000
triggerall = roundstate = 2
triggerall = stateno != [3050,3100]
triggerall = hitcount = 9
triggerall = p2dist x >= 1
trigger1 = (stateno = 1020) && Movehit

;I, AM, STEROID MAN!
[State -1, Steroid Man]
type = ChangeState
value = 1020
triggerall = p2movetype != A
Triggerall = var(20)
triggerall = power >= 1000
triggerall = roundstate = 2
triggerall = stateno != 3000
triggerall = stateno != [3050,3100]
trigger1 = (stateno = 635) && Movehit

;Auto Taunt
[State -1, AI taunt]
type = ChangeState
triggerall = movetype != H
triggerall = statetype != A
Triggerall = var(20) = 3
triggerall = ctrl = 1
triggerall = stateno != 195
trigger1 = roundstate > 2
value = 195

;GUARDING CODES; THANKS TO EVILSLAYERX5
[State -1]
type = ChangeState
triggerall = life >= 1
Triggerall = var(20) = 3
triggerall = Pos Y = 0
triggerall = enemy,statetype != A
triggerall = enemy,movetype = A
triggerall = movetype != A
triggerall = movetype != H
triggerall = stateno != 131
triggerall = stateno != 3050
trigger1 = inguarddist
trigger2 = stateno = 100 && enemy,movetype = A
trigger2 = stateno = [0,99]
trigger2 = enemy,statetype = C && enemy,movetype = A
value = 131

[State -1]
type = ChangeState
triggerall = life >= 1
Triggerall = var(20) = 3
triggerall = Pos Y = 0
triggerall = enemy,statetype = A
triggerall = enemy,movetype = A
triggerall = movetype != H
triggerall = movetype != A
triggerall = statetype != L
triggerall = stateno != 130
triggerall = stateno != 3050
trigger1 = inguarddist
trigger2 = stateno = 100 && enemy,movetype = A
trigger2 = stateno = [0,99]
trigger2 = enemy,movetype = A && enemy,statetype = S
value = 130

[State -2]
type = ChangeState
Triggerall = var(20) = 3
triggerall = statetype != A
triggerall = enemy,statetype = C
triggerall = enemy,movetype = A
triggerall = Pos Y = 0
trigger1 = stateno = 150
trigger1 = 1
value = 152

[State -2]
type = ChangeState
Triggerall = var(20) = 3
triggerall = statetype != A
triggerall = enemy,statetype != C
triggerall = enemy,movetype = A
triggerall = Pos Y = 0
trigger1 = 1
trigger1 = stateno = 152
value = 150

[State -1]
type = ChangeState
Triggerall = var(20) = 3
triggerall = Pos Y = 0
triggerall = ctrl = 1
triggerall = statetype != C
triggerall = statetype = S
triggerall = stateno != 11
trigger1 = enemy,statetype = C
trigger1 = enemy,movetype = A
trigger2 = stateno = 130 && enemy,statetype != S & enemy,statetype != A
trigger3 = stateno = 100 && enemy,statetype != S & enemy,statetype != A
value = 11

[State -1]
type = ChangeState
Triggerall = var(20) = 3
triggerall = Pos Y < 0
triggerall = ctrl = 1
triggerall = statetype = A
triggerall = movetype != H
triggerall = movetype != A
triggerall = enemy,movetype = A
triggerall = stateno != 11
triggerall = inguarddist
trigger1 = 1
value = 132

;Feel free to remove this
[state -2]
type = displaytoclipboard
trigger1 = 1
text = "Dist X = %d, Dist Y = %d"
params = floor(p2bodydist x), floor(p2bodydist y)

;RANDOM VALUES
[State -2, VarRandom]
type = VarRandom
trigger1 = 1
v = 30
range = 1,4

[State -2, VarRandom]
type = VarRandom
trigger1 = 1
v = 40
range = 1,7

[State -2, VarRandom]
type = VarRandom
trigger1 = 1
v = 50
range = 1,3

[State -2, VarRandom]
type = VarRandom
trigger1 = 1
v = 49
range = 1,2

[State -2, VarRandom]
type = VarRandom
trigger1 = 1
v = 48
range = 1,2

[State -2, VarRandom]
type = VarRandom
trigger1 = 1
v = 47
range = 1,2

[State -2, VarRandom]
type = VarRandom
trigger1 = 1
v = 46
range = 1,2

;Level 4 AI
;RUN
[State -1, ChangeState]
type = ChangeState
triggerall = statetype != A
triggerall = movetype != H
triggerall = p2bodydist x > 15
triggerall = p2movetype != A
Triggerall = var(20) = 4
trigger1 = ctrl
value = 100
ignorehitpause = 1

;WEAK PUNCH
[State -1]
type = ChangeState
value = 200
triggerall = life >= 1
triggerall = ctrl = 1
Triggerall = var(20) = 4
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 200
triggerall = p2bodydist x <= 15
triggerall = enemy,movetype != A
trigger1 = Time >= 5

;Weak Kick
[State -1]
type = ChangeState
value = 230
triggerall = life >= 1
Triggerall = var(20) = 4
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 230
triggerall = (stateno = 200) && movehit
trigger1 = Time >= 1

;MEDIUM PUNCH
[State -1]
type = ChangeState
value = 210
triggerall = life >= 1
Triggerall = var(20) = 4
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 210
triggerall = (stateno = 230) && movehit
trigger1 = Time >= 1

;MEDIUM KICK
[State -1]
type = ChangeState
value = 240
triggerall = life >= 1
Triggerall = var(20) = 4
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 240
triggerall = (stateno = 210) && movehit
trigger1 = Time >= 1

;STRONG KICK
[State -1]
type = ChangeState
value = 250
triggerall = life >= 1
Triggerall = var(20) = 4
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 250
triggerall = (stateno = 200) && movehit
trigger1 = Time >= 1

;Strong punch
[State -1]
type = ChangeState
value = 220
triggerall = life >= 1
Triggerall = var(20) = 4
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 220
triggerall = (stateno = 240) && movehit
triggerall = var(45) = 1
trigger1 = Time >= 1

;MEDIUM HEADBUTT
[State -1]
type = ChangeState
value = 1210
triggerall = life >= 1
Triggerall = var(20) = 4
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 1210
triggerall = Time >= 1
triggerall = var(40) = 1
trigger1 = (stateno = 220) && movehit

;EX HEADBUTT
[State -1]
type = ChangeState
value = 1220
triggerall = life >= 1
Triggerall = var(20) = 4
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 1220
triggerall = Time >= 1
triggerall = var(40) = 2
triggerall = power >= 330
trigger1 = (stateno = 220) && movehit

;Weak AntiAir
[State -1]
type = ChangeState
value = 1050
triggerall = life >= 1
Triggerall = var(20) = 4
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 1050
triggerall = Time >= 1
triggerall = var(40) = 3
trigger1 = (stateno = 220) && movehit

[State -1, Jump Kick 1]
type = ChangeState
value = 1050
triggerall = p2movetype != H
Triggerall = p2statetype = A
Triggerall = var(20)
triggerall = (P2bodydist X = [0,65])
triggerall = (P2bodydist Y = [-55,0])
triggerall = Pos Y = 0
triggerall = ctrl = 1
trigger1 = 1

;Medium AntiAir
[State -1]
type = ChangeState
value = 1060
triggerall = life >= 1
Triggerall = var(20) = 4
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 1060
triggerall = Time >= 1
triggerall = var(40) = 4
trigger1 = (stateno = 220) && movehit

[State -1, Jump Kick 1]
type = ChangeState
value = 1060
triggerall = p2movetype != H
Triggerall = p2statetype = A
Triggerall = var(20)
triggerall = (P2bodydist X = [0,70])
triggerall = (P2bodydist Y = [-75,0])
triggerall = Pos Y = 0
triggerall = ctrl = 1
trigger1 = 1

;EX Anti Air
[State -1]
type = ChangeState
value = 1070
triggerall = life >= 1
Triggerall = var(20) = 4
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 1070
triggerall = Time >= 1
triggerall = var(40) = 5
triggerall = power >= 330
trigger1 = (stateno = 220) && movehit

[State -1, Jump Kick 1]
type = ChangeState
value = 1070
triggerall = p2movetype != H
Triggerall = p2statetype = A
Triggerall = var(20)
triggerall = (P2bodydist X = [0,75])
triggerall = (P2bodydist Y = [-95,0])
triggerall = Pos Y = 0
triggerall = ctrl = 1
triggerall = power >= 330
trigger1 = 1

;MULE KICK
[State -1]
type = ChangeState
value = 450
triggerall = life >= 1
Triggerall = var(20) = 4
triggerall = roundstate = 2
triggerall = Pos Y >= 0
triggerall = stateno != 450
triggerall = Time >= 1
triggerall = var(45) = 2
trigger1 = (stateno = 240) && movehit

;ANAL TORCH
[State -1]
type = ChangeState
value = 3000
triggerall = life >= 1
Triggerall = var(20) = 4
triggerall = roundstate = 2
triggerall = Pos Y >= 0
triggerall = stateno != 3000
triggerall = Time >= 1
triggerall = var(50) = 1
triggerall = power >= 1000
triggerall = hitcount = 9
triggerall = p2dist x >= 1
trigger1 = (stateno = 1200) && movehit
trigger2 = (stateno = 1210) && movehit
trigger3 = (stateno = 1020) && movehit
trigger5 = enemy,movetype = A && time > 5
trigger5 = ctrl = 1

;STEROID MAN
[State -1]
type = ChangeState
value = 1020
triggerall = life >= 1
Triggerall = var(20) = 4
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 1020
triggerall = Time >= 1
triggerall = var(50) = 2
triggerall = power >= 1000
trigger1 = (stateno = 1200) && movehit
trigger2 = (stateno = 1210) && movehit
trigger2 = ctrl = 1

;NAUSEA NIGHTMARE
[State -1]
type = ChangeState
value = 3050
triggerall = life >= 1
Triggerall = var(20) = 4
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 3050
triggerall = Time >= 1
triggerall = var(50) = 3
triggerall = power >= 2000
trigger1 = (stateno = 1200) && movehit
trigger2 = (stateno = 1210) && movehit
trigger3 = enemy,movetype = A && time > 5
trigger3 = ctrl = 1

;WEAK CROUCH PUNCH
[State -1]
type = ChangeState
value = 400
triggerall = life >= 1
Triggerall = var(20) = 4
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 400
triggerall = (stateno = 200) && movecontact
trigger1 = Time >= 1

;Weak C Kick
[State -1]
type = ChangeState
value = 430
triggerall = life >= 1
Triggerall = var(20) = 4
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 430
triggerall = (stateno = 400) && movehit
trigger1 = Time >= 1

;MEDIUM CROUCH PUNCH
[State -1]
type = ChangeState
value = 410
triggerall = life >= 1
Triggerall = var(20) = 4
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 410
triggerall = (stateno = 430) && movehit
trigger1 = Time >= 1

;Medium Crouch Kick
[State -1]
type = ChangeState
value = 440
triggerall = life >= 1
Triggerall = var(20) = 4
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 440
triggerall = (stateno = 410) && movehit
trigger1 = Time >= 1

;MULE KICK
[State -1]
type = ChangeState
value = 450
triggerall = life >= 1
Triggerall = var(20) = 4
triggerall = roundstate = 2
triggerall = Pos Y >= 0
triggerall = stateno != 450
triggerall = Time >= 1
triggerall = var(4) = 1
trigger1 = (stateno = 440) && movehit

;Tongue lash
[State -1]
type = ChangeState
value = 420
triggerall = life >= 1
Triggerall = var(20) = 4
triggerall = roundstate = 2
triggerall = Pos Y >= 0
triggerall = stateno != 420
triggerall = Time >= 1
triggerall = var(4) = 2
trigger1 = (stateno = 440) && movehit

;PETA!  APPAKAT!
[State -1]
type = ChangeState
value = 1110
triggerall = life >= 1
Triggerall = var(20) = 4
triggerall = roundstate = 2
triggerall = Pos Y >= 0
triggerall = stateno != 1110
triggerall = Time >= 1
triggerall = var(4) = 3
trigger1 = (stateno = 440) && movehit

;Med. Headbutt
[State -1]
type = ChangeState
value = 1210
triggerall = life >= 1
Triggerall = var(20) = 4
triggerall = roundstate = 2
triggerall = Pos Y >= 0
triggerall = stateno != 1210
triggerall = Time >= 1
triggerall = var(4) = 4
trigger1 = (stateno = 440) && movehit

;Str. Headbutt
[State -1]
type = ChangeState
value = 1220
triggerall = life >= 1
Triggerall = var(20) = 4
triggerall = roundstate = 2
triggerall = Pos Y >= 0
triggerall = stateno != 1220
triggerall = Time >= 1
triggerall = var(4) = 5
trigger1 = (stateno = 440) && movehit

;Weak A. Air
[State -1]
type = ChangeState
value = 1050
triggerall = life >= 1
Triggerall = var(20) = 4
triggerall = roundstate = 2
triggerall = Pos Y >= 0
triggerall = stateno != 1050
triggerall = Time >= 1
triggerall = var(4) = 6
trigger1 = (stateno = 440) && movehit

;Med. A. Air
[State -1]
type = ChangeState
value = 1060
triggerall = life >= 1
Triggerall = var(20) = 4
triggerall = roundstate = 2
triggerall = Pos Y >= 0
triggerall = stateno != 1060
triggerall = Time >= 1
triggerall = var(4) = 7
trigger1 = (stateno = 440) && movehit

;A. Air EX
[State -1]
type = ChangeState
value = 1070
triggerall = life >= 1
Triggerall = var(20) = 4
triggerall = roundstate = 2
triggerall = Pos Y >= 0
triggerall = stateno != 1070
triggerall = Time >= 1
triggerall = var(4) = 8
trigger1 = (stateno = 440) && movehit

;Grabs
;Kick
[State -1, Kick Barrage]
type = ChangeState
value = 850
triggerall = (P2bodydist X = [5,20])
Triggerall = var(20)
triggerall = StateNo != 100 && StateType != A && Ctrl = 1 && MoveType != A
triggerall = P2MoveType != H && P2StateType != A && P2Statetype != L
triggerall = var(46) = 1
Trigger1 = random <= 500

;PETER UPPERCUT
[State -1]
type = ChangeState
value = 1110
triggerall = (P2bodydist X = [5,20])
triggerall = life >= 1
Triggerall = var(20) = 4
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 1110
triggerall = (stateno = 200) && movehit
trigger1 = Time >= 1
trigger1 = var(46) = 2
Trigger1 = random <= 500

;SUPER JUMP from Mule Kick
[State -1]
type = changestate
trigger1 = var(20)
trigger1 = stateno = 450 && movehit
trigger1 = stateno != 10230
trigger1 = time = 16
value = 10230

;SUPER JUMP from Peter upper
[State -1]
type = changestate
trigger1 = var(20)
trigger1 = stateno = 1110 && movehit
trigger1 = stateno != 10230
trigger1 = time = 13
value = 10230

;AIR RAVE

[State -1, Jump Light Punch]
type = ChangeState
value = 600
Triggerall = var(20)
triggerall = stateno != 600
triggerall = time = 12
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1350
trigger2 = hitdefattr = A, NA

[State -1, Jump Medium Punch]
type = ChangeState
value = 610
Triggerall = var(20)
trigger1 = statetype = A
trigger1 = stateno = 630 && movehit

[State -1, Jump Strong Punch]
type = ChangeState
value = 620
Triggerall = var(20) = 4
triggerall = var(49) = 1
triggerall = power < 1000
trigger1 = stateno = 635 && movehit

;KICKS
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = stateno != 630
Triggerall = var(20)
trigger1 = stateno = 600 && movehit

[State -1, Jump Medium Kick]
type = ChangeState
value = 635
Triggerall = var(20)
triggerall = stateno != 635
trigger1 = stateno = 610 && movehit

[State -1, Jump Strong Kick]
type = ChangeState
value = 640
Triggerall = var(20) = 4
triggerall = var(49) = 2
triggerall = power < 1000
trigger1 = stateno = 635 && movehit

;ALT SUPERS
;Supers

;Anal Torch
[State -1, Anal Torch]
type = ChangeState
value = 3000
triggerall = p2movetype != A
Triggerall = var(20)
triggerall = power >= 1000
triggerall = roundstate = 2
triggerall = stateno != [3050,3100]
triggerall = hitcount = 9
triggerall = p2dist x >= 1
trigger1 = (stateno = 1020) && Movehit

;I, AM, STEROID MAN!
[State -1, Steroid Man]
type = ChangeState
value = 1020
triggerall = p2movetype != A
Triggerall = var(20)
triggerall = power >= 1000
triggerall = roundstate = 2
triggerall = stateno != 3000
triggerall = stateno != [3050,3100]
trigger1 = (stateno = 635) && Movehit

;Auto Taunt
[State -1, AI taunt]
type = ChangeState
triggerall = movetype != H
triggerall = statetype != A
Triggerall = var(20) = 4
triggerall = ctrl = 1
triggerall = stateno != 195
trigger1 = roundstate > 2
value = 195

;GUARDING CODES; THANKS TO EVILSLAYERX5
[State -1]
type = ChangeState
triggerall = life >= 1
Triggerall = var(20) = 4
triggerall = Pos Y = 0
triggerall = enemy,statetype != A
triggerall = enemy,movetype = A
triggerall = movetype != A
triggerall = movetype != H
triggerall = stateno != 131
triggerall = stateno != 3050
trigger1 = inguarddist
trigger2 = stateno = 100 && enemy,movetype = A
trigger2 = stateno = [0,99]
trigger2 = enemy,statetype = C && enemy,movetype = A
value = 131

[State -1]
type = ChangeState
triggerall = life >= 1
Triggerall = var(20) = 4
triggerall = Pos Y = 0
triggerall = enemy,statetype = A
triggerall = enemy,movetype = A
triggerall = movetype != H
triggerall = movetype != A
triggerall = statetype != L
triggerall = stateno != 130
triggerall = stateno != 3050
trigger1 = inguarddist
trigger2 = stateno = 100 && enemy,movetype = A
trigger2 = stateno = [0,99]
trigger2 = enemy,movetype = A && enemy,statetype = S
value = 130

[State -2]
type = ChangeState
Triggerall = var(20) = 4
triggerall = statetype != A
triggerall = enemy,statetype = C
triggerall = enemy,movetype = A
triggerall = Pos Y = 0
trigger1 = stateno = 150
trigger1 = 1
value = 152

[State -2]
type = ChangeState
Triggerall = var(20) = 4
triggerall = statetype != A
triggerall = enemy,statetype != C
triggerall = enemy,movetype = A
triggerall = Pos Y = 0
trigger1 = 1
trigger1 = stateno = 152
value = 150

[State -1]
type = ChangeState
Triggerall = var(20) = 4
triggerall = Pos Y = 0
triggerall = ctrl = 1
triggerall = statetype != C
triggerall = statetype = S
triggerall = stateno != 11
trigger1 = enemy,statetype = C
trigger1 = enemy,movetype = A
trigger2 = stateno = 130 && enemy,statetype != S & enemy,statetype != A
trigger3 = stateno = 100 && enemy,statetype != S & enemy,statetype != A
value = 11

[State -1]
type = ChangeState
Triggerall = var(20) = 4
triggerall = Pos Y < 0
triggerall = ctrl = 1
triggerall = statetype = A
triggerall = movetype != H
triggerall = movetype != A
triggerall = enemy,movetype = A
triggerall = stateno != 11
triggerall = inguarddist
trigger1 = 1
value = 132

;Feel free to remove this
[state -2]
type = displaytoclipboard
trigger1 = 1
text = "Dist X = %d, Dist Y = %d"
params = floor(p2bodydist x), floor(p2bodydist y)

;RANDOM VALUES
[State -2, VarRandom]
type = VarRandom
trigger1 = 1
v = 30
range = 1,4

[State -2, VarRandom]
type = VarRandom
trigger1 = 1
v = 40
range = 1,7

[State -2, VarRandom]
type = VarRandom
trigger1 = 1
v = 50
range = 1,3

[State -2, VarRandom]
type = VarRandom
trigger1 = 1
v = 49
range = 1,2

[State -2, VarRandom]
type = VarRandom
trigger1 = 1
v = 48
range = 1,2

[State -2, VarRandom]
type = VarRandom
trigger1 = 1
v = 47
range = 1,2

[State -2, VarRandom]
type = VarRandom
trigger1 = 1
v = 46
range = 1,2

[State -2, VarRandom]
type = VarRandom
trigger1 = 1
v = 45
range = 1,2

[State -2, VarRandom]
type = VarRandom
trigger1 = 1
v = 4
range = 1,8

;Level 5 AI
[State -1, ChangeState]
type = ChangeState
triggerall = statetype != A
triggerall = movetype != H
triggerall = p2bodydist x > 15
triggerall = p2movetype != A
Triggerall = var(20) = 5
trigger1 = ctrl
value = 100
ignorehitpause = 1

;WEAK PUNCH
[State -1]
type = ChangeState
value = 200
triggerall = life >= 1
triggerall = ctrl = 1
Triggerall = var(20) = 5
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 200
triggerall = p2bodydist x <= 15
triggerall = enemy,movetype != A
trigger1 = Time >= 5

;Weak Kick
[State -1]
type = ChangeState
value = 230
triggerall = life >= 1
Triggerall = var(20) = 5
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 230
triggerall = (stateno = 200) && movehit
trigger1 = Time >= 1

;MEDIUM PUNCH
[State -1]
type = ChangeState
value = 210
triggerall = life >= 1
Triggerall = var(20) = 5
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 210
triggerall = (stateno = 230) && movehit
trigger1 = Time >= 1

;MEDIUM KICK
[State -1]
type = ChangeState
value = 240
triggerall = life >= 1
Triggerall = var(20) = 5
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 240
triggerall = (stateno = 210) && movehit
trigger1 = Time >= 1

;STRONG KICK
[State -1]
type = ChangeState
value = 250
triggerall = life >= 1
Triggerall = var(20) = 5
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 250
triggerall = (stateno = 200) && movehit
trigger1 = Time >= 1

;Strong punch
[State -1]
type = ChangeState
value = 220
triggerall = life >= 1
Triggerall = var(20) = 5
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 220
triggerall = (stateno = 240) && movehit
triggerall = var(45) = 1
trigger1 = Time >= 1

;MEDIUM HEADBUTT
[State -1]
type = ChangeState
value = 1210
triggerall = life >= 1
Triggerall = var(20) = 5
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 1210
triggerall = Time >= 1
triggerall = var(40) = 1
trigger1 = (stateno = 220) && movehit

;EX HEADBUTT
[State -1]
type = ChangeState
value = 1220
triggerall = life >= 1
Triggerall = var(20) = 5
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 1220
triggerall = Time >= 1
triggerall = var(40) = 2
trigger1 = (stateno = 220) && movehit

;Weak Crouch Kick
[State -1]
type = ChangeState
value = 430
triggerall = life >= 1
Triggerall = var(20) = 5
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 430
triggerall = enemy,movetype != A
trigger1 = (stateno = 200) && Time >= 15

;Medium C Kick
[State -1]
type = ChangeState
value = 440
triggerall = life >= 1
Triggerall = var(20) = 5
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 440
triggerall = Time >= 1
trigger1 = (stateno = 430) && movehit

;Crouch S Punch
[State -1]
type = ChangeState
value = 420
triggerall = life >= 1
Triggerall = var(20) = 5
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 420
triggerall = Time >= 1
trigger1 = (stateno = 440) && movehit

;Test
[State -1]
type = ChangeState
value = 1012
triggerall = life >= 1
triggerall = ctrl = 1
triggerall = var(20) = 5
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 1012
Triggerall = numprojID(1000) = 0
Triggerall = enemy,numproj > 0
trigger1 = Time >= 0

;Weak AntiAir
[State -1]
type = ChangeState
value = 1050
triggerall = life >= 1
Triggerall = var(20) = 5
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 1050
triggerall = Time >= 1
triggerall = var(40) = 3
trigger1 = (stateno = 220) && movehit

[State -1, Jump Kick 1]
type = ChangeState
value = 1050
triggerall = p2movetype != H
Triggerall = p2statetype = A
Triggerall = var(20)
triggerall = (P2bodydist X = [0,65])
triggerall = (P2bodydist Y = [-55,0])
triggerall = Pos Y = 0
triggerall = ctrl = 1
trigger1 = 1

;Medium AntiAir
[State -1]
type = ChangeState
value = 1060
triggerall = life >= 1
Triggerall = var(20) = 5
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 1060
triggerall = Time >= 1
triggerall = var(40) = 4
trigger1 = (stateno = 220) && movehit

[State -1, Jump Kick 1]
type = ChangeState
value = 1060
triggerall = p2movetype != H
Triggerall = p2statetype = A
Triggerall = var(20)
triggerall = (P2bodydist X = [0,70])
triggerall = (P2bodydist Y = [-75,0])
triggerall = Pos Y = 0
triggerall = ctrl = 1
trigger1 = 1

;EX Anti Air
[State -1]
type = ChangeState
value = 1070
triggerall = life >= 1
Triggerall = var(20) = 5
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 1070
triggerall = Time >= 1
triggerall = var(40) = 5
trigger1 = (stateno = 220) && movehit

[State -1, Jump Kick 1]
type = ChangeState
value = 1070
triggerall = p2movetype != H
Triggerall = p2statetype = A
Triggerall = var(20)
triggerall = (P2bodydist X = [0,75])
triggerall = (P2bodydist Y = [-95,0])
triggerall = Pos Y = 0
triggerall = ctrl = 1
trigger1 = 1

;MULE KICK
[State -1]
type = ChangeState
value = 450
triggerall = life >= 1
Triggerall = var(20) = 5
triggerall = roundstate = 2
triggerall = Pos Y >= 0
triggerall = stateno != 450
triggerall = Time >= 1
triggerall = var(45) = 2
trigger1 = (stateno = 240) && movehit

;ANAL TORCH
[State -1]
type = ChangeState
value = 3000
triggerall = life >= 1
Triggerall = var(20) = 5
triggerall = roundstate = 2
triggerall = Pos Y >= 0
triggerall = stateno != 3000
triggerall = Time >= 1
triggerall = var(50) = 1
triggerall = power >= 1000
triggerall = hitcount = 9
triggerall = p2dist x >= 1
trigger1 = (stateno = 1200) && movehit
trigger2 = (stateno = 1210) && movehit
trigger3 = (stateno = 1020) && movehit
trigger5 = enemy,movetype = A && time > 5
trigger5 = ctrl = 1

;STEROID MAN
[State -1]
type = ChangeState
value = 1020
triggerall = life >= 1
Triggerall = var(20) = 5
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 1020
triggerall = Time >= 1
triggerall = var(50) = 2
triggerall = power >= 1000
trigger1 = (stateno = 1200) && movehit
trigger2 = (stateno = 1210) && movehit
trigger2 = ctrl = 1

;NAUSEA NIGHTMARE
[State -1]
type = ChangeState
value = 3050
triggerall = life >= 1
Triggerall = var(20) = 5
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 3050
triggerall = Time >= 1
triggerall = var(50) = 3
triggerall = power >= 2000
trigger1 = (stateno = 1200) && movehit
trigger2 = (stateno = 1210) && movehit
trigger3 = enemy,movetype = A && time > 5
trigger3 = ctrl = 1

;Hokuto Super
[State -1]
type = ChangeState
value = 12344
triggerall = life >= 1
Triggerall = var(20) = 5
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 12344
triggerall = Time >= 1
triggerall = var(50) = 4
triggerall = power >= 3000
triggerall = life <= 300
trigger1 = (stateno = 1200) && movehit
trigger2 = (stateno = 1210) && movehit
trigger3 = ctrl = 1

;ANNA Collider
[State -1]
type = ChangeState
value = 1400
triggerall = life >= 1
Triggerall = var(20) = 5
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 1400
triggerall = Time >= 1
triggerall = var(50) = 5
triggerall = power >= 1000
trigger1 = (stateno = 1200) && movehit
trigger2 = (stateno = 1210) && movehit
trigger3 = (stateno = 1020) && movehit
trigger4 = ctrl = 1

;WEAK CROUCH PUNCH
[State -1]
type = ChangeState
value = 400
triggerall = life >= 1
Triggerall = var(20) = 5
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 400
triggerall = (stateno = 200) && movecontact
trigger1 = Time >= 1

;Weak C Kick
[State -1]
type = ChangeState
value = 430
triggerall = life >= 1
Triggerall = var(20) = 5
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 430
triggerall = (stateno = 400) && movehit
trigger1 = Time >= 1

;MEDIUM CROUCH PUNCH
[State -1]
type = ChangeState
value = 410
triggerall = life >= 1
Triggerall = var(20) = 5
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 410
triggerall = (stateno = 430) && movehit
trigger1 = Time >= 1

;Medium Crouch Kick
[State -1]
type = ChangeState
value = 440
triggerall = life >= 1
Triggerall = var(20) = 5
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 440
triggerall = (stateno = 410) && movehit
trigger1 = Time >= 1

;MULE KICK
[State -1]
type = ChangeState
value = 450
triggerall = life >= 1
Triggerall = var(20) = 5
triggerall = roundstate = 2
triggerall = Pos Y >= 0
triggerall = stateno != 450
triggerall = Time >= 1
triggerall = var(4) = 1
trigger1 = (stateno = 440) && movehit

;Tongue lash
[State -1]
type = ChangeState
value = 420
triggerall = life >= 1
Triggerall = var(20) = 5
triggerall = roundstate = 2
triggerall = Pos Y >= 0
triggerall = stateno != 420
triggerall = Time >= 1
triggerall = var(4) = 2
trigger1 = (stateno = 440) && movehit

;PETA!  APPAKAT!
[State -1]
type = ChangeState
value = 1110
triggerall = life >= 1
Triggerall = var(20) = 5
triggerall = roundstate = 2
triggerall = Pos Y >= 0
triggerall = stateno != 1110
triggerall = Time >= 1
triggerall = var(4) = 3
trigger1 = (stateno = 440) && movehit

;Med. Headbutt
[State -1]
type = ChangeState
value = 1210
triggerall = life >= 1
Triggerall = var(20) = 5
triggerall = roundstate = 2
triggerall = Pos Y >= 0
triggerall = stateno != 1210
triggerall = Time >= 1
triggerall = var(4) = 4
trigger1 = (stateno = 440) && movehit

;Str. Headbutt
[State -1]
type = ChangeState
value = 1220
triggerall = life >= 1
Triggerall = var(20) = 5
triggerall = roundstate = 2
triggerall = Pos Y >= 0
triggerall = stateno != 1220
triggerall = Time >= 1
triggerall = var(4) = 5
trigger1 = (stateno = 440) && movehit

;Weak A. Air
[State -1]
type = ChangeState
value = 1050
triggerall = life >= 1
Triggerall = var(20) = 5
triggerall = roundstate = 2
triggerall = Pos Y >= 0
triggerall = stateno != 1050
triggerall = Time >= 1
triggerall = var(4) = 6
trigger1 = (stateno = 440) && movehit

;Med. A. Air
[State -1]
type = ChangeState
value = 1060
triggerall = life >= 1
Triggerall = var(20) = 5
triggerall = roundstate = 2
triggerall = Pos Y >= 0
triggerall = stateno != 1060
triggerall = Time >= 1
triggerall = var(4) = 7
trigger1 = (stateno = 440) && movehit

;A. Air EX
[State -1]
type = ChangeState
value = 1070
triggerall = life >= 1
Triggerall = var(20) = 5
triggerall = roundstate = 2
triggerall = Pos Y >= 0
triggerall = stateno != 1070
triggerall = Time >= 1
triggerall = var(4) = 8
trigger1 = (stateno = 440) && movehit

;Grabs
;Kick
[State -1, Kick Barrage]
type = ChangeState
value = 850
triggerall = (P2bodydist X = [5,20])
Triggerall = var(20)
triggerall = StateNo != 100 && StateType != A && Ctrl = 1 && MoveType != A
triggerall = P2MoveType != H && P2StateType != A && P2Statetype != L
triggerall = var(46) = 1
Trigger1 = random <= 500

;PETER UPPERCUT
[State -1]
type = ChangeState
value = 1110
triggerall = (P2bodydist X = [5,20])
triggerall = life >= 1
Triggerall = var(20) = 5
triggerall = roundstate = 2
triggerall = Pos Y = 0
triggerall = stateno != 1110
triggerall = (stateno = 200) && movehit
trigger1 = Time >= 1
trigger1 = var(46) = 2
Trigger1 = random <= 500

;SUPER JUMP from Mule Kick
[State -1]
type = changestate
trigger1 = var(20)
trigger1 = stateno = 450 && movehit
trigger1 = stateno != 10230
trigger1 = time = 16
value = 10230

;SUPER JUMP from Peter upper
[State -1]
type = changestate
trigger1 = var(20)
trigger1 = stateno = 1110 && movehit
trigger1 = stateno != 10230
trigger1 = time = 13
value = 10230

;AIR RAVE

[State -1, Jump Light Punch]
type = ChangeState
value = 600
Triggerall = var(20)
triggerall = stateno != 600
triggerall = time = 12
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1350 ;Air blocking
trigger2 = hitdefattr = A, NA

[State -1, Jump Medium Punch]
type = ChangeState
value = 610
Triggerall = var(20)
trigger1 = statetype = A
trigger1 = stateno = 630 && movehit

[State -1, Jump Strong Punch]
type = ChangeState
value = 620
Triggerall = var(20) = 5
triggerall = var(49) = 1
triggerall = power < 1000
trigger1 = stateno = 635 && movehit

;KICKS
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = stateno != 630
Triggerall = var(20)
trigger1 = stateno = 600 && movehit

[State -1, Jump Medium Kick]
type = ChangeState
value = 635
Triggerall = var(20)
triggerall = stateno != 635
trigger1 = stateno = 610 && movehit

[State -1, Jump Strong Kick]
type = ChangeState
value = 640
Triggerall = var(20) = 5
triggerall = var(49) = 2
triggerall = power < 1000
trigger1 = stateno = 635 && movehit

;ALT SUPERS
;Supers

;Anal Torch
[State -1, Anal Torch]
type = ChangeState
value = 3000
triggerall = p2movetype != A
Triggerall = var(20)
triggerall = power >= 1000
triggerall = roundstate = 2
triggerall = stateno != [3050,3100]
triggerall = hitcount = 9
triggerall = p2dist x >= 1
trigger1 = (stateno = 1020) && Movehit

;I, AM, STEROID MAN!
[State -1, Steroid Man]
type = ChangeState
value = 1020
triggerall = p2movetype != A
Triggerall = var(20)
triggerall = power >= 1000
triggerall = roundstate = 2
triggerall = stateno != 3000
triggerall = stateno != [3050,3100]
triggerall = (P2bodydist Y = [-15,15])
trigger1 = (stateno = 635) && Movehit

;Auto Taunt
[State -1, AI taunt]
type = ChangeState
triggerall = movetype != H
triggerall = statetype != A
Triggerall = var(20) = 5
triggerall = ctrl = 1
triggerall = stateno != 195
trigger1 = roundstate > 2
value = 195

;GUARDING CODES; THANKS TO EVILSLAYERX5
[State -1]
type = ChangeState
triggerall = life >= 1
Triggerall = var(20) = 5
triggerall = Pos Y = 0
triggerall = enemy,statetype != A
triggerall = enemy,movetype = A
triggerall = movetype != A
triggerall = movetype != H
triggerall = stateno != 131
triggerall = stateno != 3050
trigger1 = inguarddist
trigger2 = stateno = 100 && enemy,movetype = A
trigger2 = stateno = [0,99]
trigger2 = enemy,statetype = C && enemy,movetype = A
value = 131

[State -1]
type = ChangeState
triggerall = life >= 1
Triggerall = var(20) = 5
triggerall = Pos Y = 0
triggerall = enemy,statetype = A
triggerall = enemy,movetype = A
triggerall = movetype != H
triggerall = movetype != A
triggerall = statetype != L
triggerall = stateno != 130
triggerall = stateno != 3050
trigger1 = inguarddist
trigger2 = stateno = 100 && enemy,movetype = A
trigger2 = stateno = [0,99]
trigger2 = enemy,movetype = A && enemy,statetype = S
value = 130

[State -2]
type = ChangeState
Triggerall = var(20) = 5
triggerall = statetype != A
triggerall = enemy,statetype = C
triggerall = enemy,movetype = A
triggerall = Pos Y = 0
trigger1 = stateno = 150
trigger1 = 1
value = 152

[State -2]
type = ChangeState
Triggerall = var(20) = 5
triggerall = statetype != A
triggerall = enemy,statetype != C
triggerall = enemy,movetype = A
triggerall = Pos Y = 0
trigger1 = 1
trigger1 = stateno = 152
value = 150

[State -1]
type = ChangeState
Triggerall = var(20) = 5
triggerall = Pos Y = 0
triggerall = ctrl = 1
triggerall = statetype != C
triggerall = statetype = S
triggerall = stateno != 11
trigger1 = enemy,statetype = C
trigger1 = enemy,movetype = A
trigger2 = stateno = 130 && enemy,statetype != S & enemy,statetype != A
trigger3 = stateno = 100 && enemy,statetype != S & enemy,statetype != A
value = 11

[State -1]
type = ChangeState
Triggerall = var(20) = 5
triggerall = Pos Y < 0
triggerall = ctrl = 1
triggerall = statetype = A
triggerall = movetype != H
triggerall = movetype != A
triggerall = enemy,movetype = A
triggerall = stateno != 11
triggerall = inguarddist
trigger1 = 1
value = 132

;Push Block
[State -1]
type = ChangeState
triggerall = life >= 0
Triggerall = var(20) = 5
triggerall = random <= 333
triggerall = Pos Y = 0
triggerall = movetype != A
triggerall = stateno != 4005
trigger1 = stateno = 150 || stateno = 151
trigger1 = Time >= 2
value = 4005

[State -1]
type = ChangeState
triggerall = life >= 0
Triggerall = var(20) = 5
triggerall = random <= 333
triggerall = Pos Y = 0
triggerall = movetype != A
triggerall = stateno != 4006
trigger1 = stateno = 152 || stateno = 153
trigger1 = Time >= 2
value = 4006

[State -1]
type = ChangeState
triggerall = life >= 0
Triggerall = var(20) = 5
triggerall = random <= 333
triggerall = Pos Y < 0
triggerall = movetype != A
triggerall = stateno != 4007
trigger1 = stateno = 154 || stateno = 155
trigger1 = Time >= 2
value = 4007

;Feel free to remove this
[state -2]
type = displaytoclipboard
trigger1 = 1
text = "Dist X = %d, Dist Y = %d"
params = floor(p2bodydist x), floor(p2bodydist y)

;RANDOM VALUES
[State -2, VarRandom]
type = VarRandom
trigger1 = 1
v = 30
range = 1,4

[State -2, VarRandom]
type = VarRandom
trigger1 = 1
v = 40
range = 1,7

[State -2, VarRandom]
type = VarRandom
trigger1 = 1
v = 50
range = 1,5

[State -2, VarRandom]
type = VarRandom
trigger1 = 1
v = 49
range = 1,2

[State -2, VarRandom]
type = VarRandom
trigger1 = 1
v = 48
range = 1,2

[State -2, VarRandom]
type = VarRandom
trigger1 = 1
v = 47
range = 1,2

[State -2, VarRandom]
type = VarRandom
trigger1 = 1
v = 46
range = 1,2

[State -2, VarRandom]
type = VarRandom
trigger1 = 1
v = 45
range = 1,2

[State -2, VarRandom]
type = VarRandom
trigger1 = 1
v = 4
range = 1,8
;-------------------------------------------------------------------------------
;Attack Definitions
;-------------------------------------------------------------------------------
[State -1, Mudkip Liekdown]
type = ChangeState
value = 8000
Triggerall = !var(20)
triggerall = roundstate = 2
triggerall = command = "Mudkip"
triggerall = power >= 750
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = pos y = 0
Triggerall = numhelper(8000) = 0
trigger1 = stateno = [150,153]
;-------------------------------------------------------------------------------
[State -1, A.N.N.A. Collider]
type = ChangeState
value = 1400
Triggerall = !var(20)
triggerall = roundstate = 2
triggerall = command = "A.N.N.A."
triggerall = power >= 900
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = pos y = 0
trigger1 = ctrl
trigger2 = hitdefattr = S, NA
trigger2 = stateno != [3050,3100)
trigger2 = (Stateno != [12344,12345])
trigger2 = movecontact
trigger3 = (stateno = 1210) && Movecontact
trigger4 = (stateno = 1200) && Movecontact
trigger5 = (stateno = 1020) && movecontact
;-------------------------------------------------------------------------------
[State -1, Hokuto Hyakuretsu Ken]
type = ChangeState
value = 12344
Triggerall = !var(20)
triggerall = roundstate = 2
triggerall = command = "HHK"
triggerall = power >= 1000
triggerall = life <= 300
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = var(13)!=1
trigger1 = ctrl
trigger2 = hitdefattr = S, NA
trigger2 = stateno != [3050,3100)
trigger2 = (Stateno != [12344,12345])
trigger2 = movecontact
trigger2 = (Stateno != [200,210])
trigger2 = movecontact
trigger2 = (Stateno != [220,230])
trigger2 = movecontact
trigger2 = (Stateno != [240,250])
trigger2 = movecontact
trigger2 = (Stateno != [400,410])
trigger2 = movecontact
trigger2 = (Stateno != [420,430])
trigger2 = movecontact
trigger2 = (Stateno != [440,450])
trigger2 = movecontact
trigger2 = (Stateno != [200,210])
trigger2 = movecontact
trigger2 = (Stateno != [220,230])
trigger2 = movecontact
trigger2 = (Stateno != [240,250])
trigger2 = movecontact
;-------------------------------------------------------------------------------
[State -1, Nausea Nightmare]
type = ChangeState
value = 3050
Triggerall = !var(20)
triggerall = roundstate = 2
triggerall = command = "Ipecac Attack"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl
trigger2 = hitdefattr = S, NA
trigger2 = (stateno != [3050,3100])
trigger2 = (Stateno != [12344,12345])
trigger2 = movecontact
trigger3 = (stateno = 1210) && Movecontact
trigger4 = (stateno = 1200) && Movecontact
;-------------------------------------------------------------------------------
[State -1, Anal Torch]
type = ChangeState
value = 3000
Triggerall = !var(20)
triggerall = roundstate = 2
triggerall = command = "Anal Torch"
triggerall = power >= 750
triggerall = roundstate = 2
triggerall = stateno != [3050,3100]
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = (stateno != [3000,3050])
trigger2 = (Stateno != [12344,12345])
trigger2 = (Stateno != [1400,1401])
trigger3 = statetype = A
trigger3 = hitdefattr = A, NA
trigger3 = (stateno != [3000,3050])
trigger3 = (Stateno != [12344,12345])
trigger2 = (Stateno != [1400,1401])
trigger4 = (stateno = 1210) && Movecontact
trigger5 = (stateno = 1200) && Movecontact
;-------------------------------------------------------------------------------
[State -1, Steroid Man]
type = ChangeState
value = 1020
Triggerall = !var(20)
triggerall = roundstate = 2
triggerall = command = "Steroid Man"
triggerall = power >= 750
triggerall = roundstate = 2
triggerall = stateno != 3000
triggerall = stateno != [3050,3100]
triggerall = Stateno != [12344,12345]
triggerall = (Stateno != [1400,1401])
trigger1 = statetype != A
trigger1 = hitdefattr = SC, NA, SA, HA
trigger1 = stateno != 1020
trigger2 = statetype = A
trigger2 = hitdefattr = A, NA
trigger2 = stateno != 1020
trigger3 = statetype = S
trigger3 = ctrl
trigger4 = statetype = A
trigger4 = ctrl
trigger5 = (stateno = 1210) && Movecontact
trigger6 = (stateno = 1200) && Movecontact

[State -1, Jump Launcher]
type = ChangeState
value = 660
Triggerall = !var(20)
triggerall = roundstate = 2
trigger1 = command = "holdup"
trigger1 = stateno = 1110 && animelemtime(5) > 3 && movecontact
trigger2 = command = "holdup"
trigger2 = stateno = 450  && animelemtime(6) > 6 && movecontact

[State -1, Super Jump Straight Up]
type = ChangeState
value = 660
triggerall = roundstate = 2
Triggerall = !var(20)
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = command = "superjump"

[State -1, Super Jump Forward]
type = ChangeState
value = 660
triggerall = roundstate = 2
Triggerall = !var(20)
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = command = "superjumpforward"

[State -1, Super Jump Backward]
type = ChangeState
value = 660
triggerall = roundstate = 2
Triggerall = !var(20)
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = command = "superjumpbackward"
;---------------------------------------------------------------------------

[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(1) = 0

[State -1, Combo condition Check]
type = VarSet
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 420
trigger2 = movecontact
var(1) = 1

;---------------------------------------------------------------------------
[State -1, Super Jump Kick]
type = ChangeState
value = 1070
triggerall = roundstate = 2
Triggerall = !var(20)
triggerall = command = "Super Jump Kick"
trigger1 = var(1)
trigger2 = (stateno = 220) && Movecontact
trigger3 = (stateno = 210) && Movecontact
trigger4 = (stateno = 240) && movecontact
trigger5 = (stateno = 250) && movecontact
trigger6 = (stateno = 400) && movecontact
trigger7 = (stateno = 410) && movecontact
trigger8 = (stateno = 430) && movecontact
trigger9 = (stateno = 440) && movecontact
;---------------------------------------------------------------------------
[State -1, Jump Kick 1]
type = ChangeState
value = 1050
triggerall = roundstate = 2
Triggerall = !var(20)
triggerall = command = "Jump Kick 1"
trigger1 = var(1)
trigger2 = (stateno = 220) && Movecontact
trigger3 = (stateno = 210) && Movecontact
trigger4 = (stateno = 240) && movecontact
trigger5 = (stateno = 250) && movecontact
trigger6 = (stateno = 400) && movecontact
trigger7 = (stateno = 410) && movecontact
trigger8 = (stateno = 430) && movecontact
trigger9 = (stateno = 440) && movecontact
;---------------------------------------------------------------------------
[State -1, Jump Kick 2]
type = ChangeState
value = 1060
triggerall = roundstate = 2
Triggerall = !var(20)
triggerall = command = "Jump Kick 2"
trigger1 = var(1)
trigger2 = (stateno = 220) && Movecontact
trigger3 = (stateno = 210) && Movecontact
trigger4 = (stateno = 240) && movecontact
trigger5 = (stateno = 250) && movecontact
trigger6 = (stateno = 400) && movecontact
trigger7 = (stateno = 410) && movecontact
trigger8 = (stateno = 430) && movecontact
trigger9 = (stateno = 440) && movecontact

[State -1, Light bottle]
type = ChangeState
value = 300
triggerall = roundstate = 2
triggerall = var(20) != 1
triggerall = command = "Bottle Toss 1"
Triggerall = numhelper(301) = 0
trigger1 = var(1)

[State -1, fast bottle]
type = ChangeState
value = 310
triggerall = roundstate = 2
triggerall = var(20) != 1
triggerall = command = "Bottle Toss 2"
Triggerall = numhelper(301) = 0
trigger1 = var(1)

[State -1, fast bottle]
type = ChangeState
value = 320
triggerall = roundstate = 2
triggerall = var(20) != 1
triggerall = command = "Bottle Toss 3"
Triggerall = numhelper(301) = 0
trigger1 = var(1)

[State -1, Fart-Douken 1]
type = ChangeState
value = 1000
triggerall = roundstate = 2
triggerall = var(20) != 1
triggerall = command = "Fart-Douken 1"
Triggerall = numhelper(1001) = 0
trigger1 = var(1)
trigger2 = (stateno = 240) && Movecontact

[State -1, Fart-Douken 2]
type = ChangeState
value = 1010
triggerall = roundstate = 2
triggerall = var(20) != 1
triggerall = command = "Fart-Douken 2"
Triggerall = numhelper(1001) = 0
trigger1 = var(1)

[State -1, Triple Fart-Douken]
type = ChangeState
value = 1012
triggerall = roundstate = 2
triggerall = command = "Triple Fart-Douken"
Triggerall = numhelper(1001) = 0
trigger1 = var(1)

[State -1, Guard Push]
type = ChangeState
value = 4007
triggerall = roundstate = 2
Triggerall = var(20) != 1
triggerall = command = "Guard Push"
triggerall = roundstate = 2
triggerall = statetype = A
trigger1 = stateno = [154,155]
ignorehitpause = 1

[State -1, Guard Push]
type = ChangeState
value = 4006
triggerall = roundstate = 2
Triggerall = var(20) != 1
triggerall = command = "Guard Push"
triggerall = roundstate = 2
triggerall = statetype = C
trigger1 = stateno = [152,153]
ignorehitpause = 1

[State -1, Guard Push]
type = ChangeState
value = 4005
triggerall = roundstate = 2
Triggerall = var(20) != 1
triggerall = command = "Guard Push"
triggerall = roundstate = 2
triggerall = statetype = S
trigger1 = stateno = [150,151]
ignorehitpause = 1

[State -1, Peter Uppercut]
type = ChangeState
value = 1110
triggerall = roundstate = 2
Triggerall = !var(20)
triggerall = command = "Peter Uppercut"
trigger1 = var(1)
trigger2 = (stateno = 430) && Movecontact
trigger3 = (stateno = 400) && Movecontact
trigger4 = (stateno = 440) && Movecontact
trigger5 = (stateno = 410) && Movecontact

[State -1, Power Headbutt]
type = ChangeState
value = 1220
triggerall = roundstate = 2
Triggerall = !var(20)
triggerall = command = "Power Headbutt"
trigger1 = var(1)
trigger2 = (stateno = 220) && Movecontact
trigger3 = (stateno = 210) && Movecontact
trigger4 = (stateno = 240) && movecontact
trigger5 = (stateno = 250) && movecontact
trigger6 = (stateno = 400) && movecontact
trigger7 = (stateno = 410) && movecontact
trigger8 = (stateno = 430) && movecontact
trigger9 = (stateno = 440) && movecontact

[State -1, Peter Lunge 1]
type = ChangeState
value = 1200
triggerall = roundstate = 2
Triggerall = !var(20)
triggerall = command = "Peter Smackdown 1"
trigger1 = var(1)
trigger2 = (stateno = 220) && Movecontact
trigger3 = (stateno = 210) && Movecontact
trigger4 = (stateno = 240) && movecontact
trigger5 = (stateno = 250) && movecontact
trigger6 = (stateno = 400) && movecontact
trigger7 = (stateno = 410) && movecontact
trigger8 = (stateno = 430) && movecontact
trigger9 = (stateno = 440) && movecontact

[State -1, Peter Lunge 2]
type = ChangeState
value = 1210
triggerall = roundstate = 2
Triggerall = !var(20)
triggerall = command = "Peter Smackdown 2"
trigger1 = var(1)
trigger2 = (stateno = 220) && Movecontact
trigger3 = (stateno = 210) && Movecontact
trigger4 = (stateno = 240) && movecontact
trigger5 = (stateno = 250) && movecontact
trigger6 = (stateno = 400) && movecontact
trigger7 = (stateno = 410) && movecontact
trigger8 = (stateno = 430) && movecontact
trigger9 = (stateno = 440) && movecontact

[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = roundstate = 2
Triggerall = !var(20)
triggerall = command != "holdback"
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Run Back]
type = ChangeState
value = 105
triggerall = roundstate = 2
Triggerall = !var(20)
triggerall = command = "holdback"
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;-------------------------------------------------------------------------------
;Brian
;-------------------------------------------------------------------------------
[State -1, Brian]
type = ChangeState
value = 112
trigger1 = command = "PBJT"
Triggerall = numprojID(112) = 0
trigger1 = statetype = S
trigger1 = ctrl

[State -1]
type = ChangeState
value = 800
triggerall = roundstate = 2
Triggerall = !var(20)
triggerall = StateNo != 100 && StateType = S && Ctrl = 1
triggerall = P2MoveType != H && !P2StateType = A
trigger1 = Command = "fwd_y" && P2BodyDist X < 40
trigger2 = Command = "back_y" && P2BodyDist X < 20

[State -1]
type = ChangeState
value = 850
triggerall = roundstate = 2
Triggerall = !var(20)
triggerall = StateNo != 100 && StateType = S && Ctrl = 1
triggerall = P2MoveType != H && !P2StateType = A
trigger1 = Command = "fwd_b" && P2BodyDist X < 40
trigger2 = Command = "back_b" && P2BodyDist X < 20

[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = roundstate = 2
Triggerall = !var(20)
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 230) && movecontact

[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = roundstate = 2
Triggerall = !var(20)
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && Movecontact
trigger3 = (stateno = 230) && Movecontact
trigger4 = (stateno = 240) && Movecontact

[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = roundstate = 2
triggerall = var(20) != 1
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 240) && Movecontact
trigger3 = (stateno = 210) && Movecontact
trigger4 = (stateno = 200) && Movecontact
trigger5 = (stateno = 230) && Movecontact

[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = roundstate = 2
triggerall = var(20) != 1
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && Movecontact

[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = roundstate = 2
Triggerall = !var(20)
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 210) && Movecontact
trigger3 = (stateno = 230) && Movecontact
trigger4 = (stateno = 200) && Movecontact

[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = roundstate = 2
Triggerall = !var(20)
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 210) && Movecontact
trigger3 = (stateno = 230) && Movecontact
trigger4 = (stateno = 200) && Movecontact
trigger5 = (stateno = 240) && Movecontact

[State -1, Taunt]
type = ChangeState
value = 195
triggerall = roundstate = 2
Triggerall = !var(20)
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = roundstate = 2
Triggerall = !var(20)
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 430) && Movecontact

[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = roundstate = 2
Triggerall = !var(20)
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 430) && Movecontact
trigger3 = (stateno = 400) && Movecontact
trigger4 = (stateno = 440) && Movecontact

[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = roundstate = 2
triggerall = var(20) != 1
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 410) && Movecontact
trigger3 = (stateno = 400) && Movecontact
trigger4 = (stateno = 440) && Movecontact

[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = roundstate = 2
Triggerall = !var(20)
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) && Movecontact

[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = roundstate = 2
Triggerall = !var(20)
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 410) && Movecontact
trigger3 = (stateno = 430) && Movecontact
trigger4 = (stateno = 400) && Movecontact

[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = roundstate = 2
Triggerall = !var(20)
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 210) && Movecontact
trigger3 = (stateno = 240) && Movecontact
trigger4 = (stateno = 420) && Movecontact
trigger5 = (stateno = 430) && Movecontact
trigger6 = (stateno = 440) && Movecontact
trigger7 = (stateno = 410) && Movecontact

[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = roundstate = 2
Triggerall = !var(20)
triggerall = command = "x"
triggerall = stateno != 600
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 630
trigger2 = movecontact
trigger3 = stateno = 1350
trigger3 = hitdefattr = A, NA

[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = roundstate = 2
Triggerall = !var(20)
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630
trigger2 = movecontact
trigger3 = stateno = 635
trigger3 = movecontact
trigger4 = stateno = 1350

[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = roundstate = 2
Triggerall = !var(20)
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = stateno != 620
trigger2 = stateno = 600 || stateno = 630
trigger2 = movecontact
trigger3 = stateno = 1350
trigger4 = stateno = 635 || stateno = 610
trigger4 = movecontact

[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = roundstate = 2
Triggerall = !var(20)
triggerall = command = "a"
triggerall = stateno != 630
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1350
trigger3 = hitdefattr = A, NA
trigger3 = statetype = A
trigger4 = stateno = 600
trigger4 = movecontact

[State -1, Jump Medium Kick]
type = ChangeState
value = 635
triggerall = roundstate = 2
Triggerall = !var(20)
triggerall = command = "b"
triggerall = stateno != 635
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 1350

[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = roundstate = 2
Triggerall = !var(20)
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = stateno != 640
trigger2 = stateno = 610 || stateno = 635
trigger2 = movecontact
trigger3 = stateno = 600 || stateno = 630
trigger3 = movecontact
trigger4 = stateno = 1350

;Feel free to remove
[state -2]
type = displaytoclipboard
trigger1 = 1
text = "Dist X = %d, Dist Y = %d"
params = floor(p2bodydist x), floor(p2bodydist y)

;ALTERNATE JUMP THING, SO THE AI WON'T DO IT
[State -1: ChangeState]
type = ChangeState
value = 40
triggerall = roundstate = 2
Triggerall = var(20) != 1
triggerall = (StateType = A) && (Ctrl) && (Pos Y < -30)
trigger1 = ((command = "holdup") && (command = "holdfwd") && (Vel X <= 0) && (backedgebodydist <= 10) && (backedgebodydist > -10))
trigger2 = ((command = "holdup") && (command = "holdback") && (Vel X >= 0) && (frontedgebodydist <= 10) && (frontedgebodydist > -10))
persistent = 0


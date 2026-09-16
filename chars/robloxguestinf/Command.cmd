;---------------------------------------------------------------------------
;Artificial Intelligence
;---------------------------------------------------------------------------

[Command]
name = "cpu00"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu01"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu02"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu03"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu04"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu05"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu06"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu07"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu08"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu09"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

;-| Button Remapping |-----------------------------------------------------
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
command.time = 15

command.buffer.time = 1


;-| Super Motions |--------------------------------------------------------
;[Command]
;name = "TripleKFPalm"
;command = ~D, DF, F, D, DF, F, x
;time = 20
[Command]
name = "Sword_Slashes"
command = ~D, DF, F, x+y

[Command]
name = "Angery"
command = ~D, DF, F, a+b

[Command]
name = "Angery"
command = ~D, DF, F, b+a

;-| Special Motions |------------------------------------------------------
[Command]
name = "Slash_x"
command = ~D, DF, F, x

[Command]
name = "Slash_y"
command = ~D, DF, F, y

[Command]
name = "Slash_z"
command = ~D, DF, F, z

[Command]
name = "Slap_xyz"
command = ~D, DB, B, x

[Command]
name = "Slap_xyz"
command = ~D, DB, B, y

[Command]
name = "Slap_xyz"
command = ~D, DB, B, z

[Command]
name = "Slingshot_a"
command = ~D, DF, F, a

[Command]
name = "Slingshot_b"
command = ~D, DF, F, b

[Command]
name = "Slingshot_c"
command = ~D, DF, F, c

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

[Command]
name = "Push"
command = x+y

[Command]
name = "Push"
command = z+y

[Command]
name = "Push"
command = x+z

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

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "super_jump_up"
command = ~D, U
time = 50

;---------------------------------------------------------------------------
; 2. State entry
;---------------------------------------------------------------------------

[Statedef -1]

[State -1, AI Helper Check]
type = ChangeState
trigger1 = IsHelper(9741)
value = 9741

[State -1, AI Helper Check 2]
type = ChangeState
trigger1 = IsHelper(9742)
value = 9742

[State -1, Go]
type = DestroySelf
trigger1 = IsHelper
trigger1 = movereversed = 1

;-|-AI-|--------------------------------------------------------------------
[State -1,AI Alt]
type = VarSet
triggerall = roundno >= 1
triggerall = roundstate >= 0
trigger1=Command="cpu00"|| Command="cpu01"|| Command="cpu02"|| Command="cpu03"|| Command="cpu04"
trigger2=Command="cpu05"|| Command="cpu06"|| Command="cpu07"|| Command="cpu08"|| Command="cpu09"
trigger3 = TeamSide >= 2 && TeamMode =Single && IsHomeTeam = 1
trigger4 = ailevel
v = 59
value = 1

;------------------------------------------------------------------------------;
;                         AIR COMBO ACTIVATION                                 ;
;------------------------------------------------------------------------------;
; Air Combo
[State -1, Air Combo]
type = VarSet
trigger1 = HitDefAttr = A, NA
trigger1 = MoveHit = 1
trigger1 = var(34) >= 3
var(35) = var(35) + 1

;===========================================================================
;---------------------------------------------------------------------------
; Hyper Moves
;---------------------------------------------------------------------------
;===========================================================================

;HeightMaster
[State -1, HeightMaster]
type = ChangeState
value = ifelse(statetype = A,3010,3000)
triggerall = command = "Sword_Slashes"
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 210 || stateno = 220 || stateno = 230  || stateno = 240 || stateno = 250 || stateno = 400 || stateno = 410 || stateno = 420 || stateno = 430 || stateno = 440 || stateno = 450 || stateno = 1000 || stateno = 1010 || stateno = 1020
trigger2 = movecontact && statetype != A
trigger3 = stateno = 600 || stateno = 610 || stateno = 620 || stateno = 630  || stateno = 640 || stateno = 650 || stateno = 1030
trigger3 = movecontact && statetype = A

;Angery
[State -1, Angery]
type = ChangeState
value = 3100
triggerall = command = "Angery"
triggerall = power >= 1500
triggerall = numhelper(3101) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && movecontact
trigger10 = stateno = 420 && movecontact
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 440 && movecontact
trigger13 = stateno = 450 && movecontact
trigger14 = stateno = 1000 && movecontact || stateno = 1010 && movecontact || stateno = 1020 && movecontact


;===========================================================================
;---------------------------------------------------------------------------
; Special Moves
;---------------------------------------------------------------------------
;===========================================================================

;SwordSlash1
[State -1, SwordSlash]
type = ChangeState
value = 1000
triggerall = command = "Slash_x"
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && movecontact
trigger10 = stateno = 420 && movecontact
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 440 && movecontact
trigger13 = stateno = 450 && movecontact

;SwordSlash2
[State -1, SwordSlash]
type = ChangeState
value = 1010
triggerall = command = "Slash_y" || command = "x" && stateno = 1000 && command != "Slap_xyz" && movecontact
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && movecontact
trigger10 = stateno = 420 && movecontact
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 440 && movecontact
trigger13 = stateno = 450 && movecontact
trigger14 = stateno = 1000 && movecontact

;SwordSlash3
[State -1, SwordSlash]
type = ChangeState
value = 1020
triggerall = command = "Slash_z" || command = "x" && stateno = 1010 && command != "Slap_xyz" && movecontact
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && movecontact
trigger10 = stateno = 420 && movecontact
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 440 && movecontact
trigger13 = stateno = 450 && movecontact
trigger14 = stateno = 1010 && movecontact

;SwordSlashAir
[State -1, SwordSlash]
type = ChangeState
value = 1030
triggerall = command = "Slash_x" || command = "Slash_y" || command = "Slash_z" || statetype = S &&  command = "x" && stateno = 1020 && command != "Slap_xyz" && movecontact
trigger1 = ctrl && statetype = A || stateno = 101 || stateno = 102
trigger2 = stateno = 1020 && movecontact
trigger3 = stateno = 600 && movecontact
trigger4 = stateno = 610 && movecontact
trigger5 = stateno = 620 && movecontact
trigger6 = stateno = 630 && movecontact
trigger7 = stateno = 640 && movecontact
trigger8 = stateno = 650 && movecontact

;Slingshot
[State -1, Slingshot]
type = ChangeState
value = 1100
triggerall = command = "Slingshot_a"
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && movecontact
trigger10 = stateno = 420 && movecontact
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 440 && movecontact
trigger13 = stateno = 450 && movecontact

;Slingshot
[State -1, Slingshot]
type = ChangeState
value = 1110
triggerall = command = "Slingshot_b"
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && movecontact
trigger10 = stateno = 420 && movecontact
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 440 && movecontact
trigger13 = stateno = 450 && movecontact

;Slingshot
[State -1, Slingshot]
type = ChangeState
value = 1120
triggerall = command = "Slingshot_c"
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && movecontact
trigger10 = stateno = 420 && movecontact
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 440 && movecontact
trigger13 = stateno = 450 && movecontact

;Slap
[State -1, Slap]
type = ChangeState
value = 1050
triggerall = command = "Slap_xyz"
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && movecontact
trigger10 = stateno = 420 && movecontact
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 440 && movecontact
trigger13 = stateno = 450 && movecontact
trigger14 = stateno = 1000 && movecontact
trigger15 = stateno = 1010 && movecontact
trigger16 = stateno = 1020 && movecontact

;===========================================================================
;---------------------------------------------------------------------------
; Moves
;---------------------------------------------------------------------------
;===========================================================================

;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 101
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 102
trigger1 = command = "BB"
trigger1 = statetype = A
trigger1 = ctrl


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

;===========================================================================
;---------------------------------------------------------------------------
; Basic Attacks
;---------------------------------------------------------------------------
;===========================================================================
;---------------------------------------------------------------------------
;Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "z"
triggerall = statetype != A
triggerall = ctrl
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 7
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
;===========================================================================
;---------------------------------------------------------------------------
; Standing attacks
;---------------------------------------------------------------------------
;===========================================================================

;Stand_X
[State -1, Stand_X]
type = ChangeState
value = 200
triggerall = var(59) <= 0
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;Stand_Y
[State -1, Stand_Y]
type = ChangeState
value = 210
triggerall = var(59) <= 0
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact

;Stand_Z
[State -1, Stand_Z]
type = ChangeState
value = 220
triggerall = var(59) <= 0
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 210
trigger2 = movecontact

;Stand_A
[State -1, Stand_A]
type = ChangeState
value = 230
triggerall = var(59) <= 0
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = movecontact
trigger3 = stateno = 200
trigger3 = movecontact

;Stand_B
[State -1, Stand_B]
type = ChangeState
value = 240
triggerall = var(59) <= 0
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 230
trigger2 = movecontact

;Stand_C
[State -1, Stand_C]
type = ChangeState
value = 250
triggerall = var(59) <= 0
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl 
trigger2 = stateno = 240
trigger2 = movecontact

;===========================================================================
;---------------------------------------------------------------------------
; Crouching Attacks
;---------------------------------------------------------------------------
;===========================================================================

;Crouch_X
[State -1, Crouch_X]
type = ChangeState
value = 400
triggerall = var(59) <= 0
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 250
trigger5 = movecontact

;Crouch_Y
[State -1, Crouch_Y]
type = ChangeState
value = 410
triggerall = var(59) <= 0
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact

;Crouch_Z
[State -1, Crouch_Z]
type = ChangeState
value = 420
triggerall = var(59) <= 0
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 410
trigger2 = movecontact
trigger3 = stateno = 220
trigger3 = movecontact
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 250
trigger5 = movecontact

;Crouch_A
[State -1, Crouch_A]
type = ChangeState
value = 430
triggerall = var(59) <= 0
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movecontact
trigger3 = stateno = 410
trigger3 = movecontact
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact

;Crouch_B
[State -1, Crouch_B]
type = ChangeState
value = 440
triggerall = var(59) <= 0
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 430
trigger2 = movecontact
trigger3 = stateno = 240
trigger3 = movecontact

;Crouch_C
[State -1, Crouch_C]
type = ChangeState
value = 450
triggerall = var(59) <= 0
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 440
trigger2 = movecontact
trigger3 = stateno = 250
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact

;===========================================================================
;---------------------------------------------------------------------------
; Air Attacks
;---------------------------------------------------------------------------
;===========================================================================

;Air_X
[State -1, Air_X]
type = ChangeState
value = 600
triggerall = var(59) <= 0
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl || stateno = 101 || stateno = 102

;Air_Y
[State -1, Air_Y]
type = ChangeState
value = 610
triggerall = var(59) <= 0
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl || stateno = 101 || stateno = 102
trigger2 = stateno = 600
trigger2 = movecontact

;Air_Z
[State -1, Air_Z]
type = ChangeState
value = 620
triggerall = var(59) <= 0
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl || stateno = 101 || stateno = 102
trigger2 = stateno = 610
trigger2 = movecontact

;Air_A
[State -1, Air_A]
type = ChangeState
value = 630
triggerall = var(59) <= 0
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl || stateno = 101 || stateno = 102
trigger2 = stateno = 620
trigger2 = movecontact
trigger3 = stateno = 600
trigger3 = movecontact

;Air_B
[State -1, Air_B]
type = ChangeState
value = 640
triggerall = var(59) <= 0
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl || stateno = 101 || stateno = 102
trigger2 = stateno = 630
trigger2 = movecontact

;Air_C
[State -1, Air_C]
type = ChangeState
value = 650
triggerall = var(59) <= 0
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl || stateno = 101 || stateno = 102
trigger2 = stateno = 640
trigger2 = movecontact

;===========================================================================
;---------------------------------------------------------------------------
; Super Jump / Launcher
;---------------------------------------------------------------------------
;===========================================================================

;---------------------------------------------------------------------------
;Super Jump Up
[State -1, Super Jump Up]
type = ChangeState
value = 60
triggerall = var(59) <= 0
triggerall = command = "super_jump_up" && ctrl
trigger1 = statetype = S && statetype != A 
trigger2 = stateno = 10  
;-----------------------------
;Launcher
[State -1, Launcher] ;by GGN
type = ChangeState
value = 60
triggerall = var(59) <= 0
triggerall = Command = "holdup"
trigger1 = stateno = 420 && movehit

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "s"
trigger1 = statetype != A
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
; A.I
;---------------------------------------------------------------------------
;===========================================================================


[State -1, Standing Grab]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) > 0)
triggerall = p2stateno != 7600 && prevstateno != 800 && p2statetype != A
triggerall = (Ctrl) && (statetype = S) && (p2bodydist x <= 20)
triggerall = (p2stateno != [5000,5150])
trigger1 = (random < 300)
trigger1 = numhelper(3101) = 0 || life <=  333
trigger2 = (random < 999) && enemynear, life <= 80
trigger3 = prevstateno = 200 || prevstateno = 400 || prevstateno = 440
trigger3 = (random < 999) && !movehit
value = 800

[State -1,Jump]
type = ChangeState
value = 49
triggerall = stateno != 100 && pos y = 0 && ctrl && p2stateno != 822 && p2stateno != 823
triggerall = var(59) > 0
triggerall = statetype != A && enemy,vel y < 0 && enemy,pos y < -10
triggerall = p2movetype != A
trigger1 = p2stateno = 5040 || p2stateno = 5200 || p2stateno = 5210 || p2movetype = H 
trigger1 = (p2bodydist y = [-40,-1]) || enemy,vel y < 0
trigger1 = p2bodydist x <= 25
trigger2 = p2movetype = H && (p2stateno = 5040 || p2stateno = 5200 || p2stateno = 5210) 
trigger2 = (p2bodydist y = [-40,-1]) 
trigger2 = p2bodydist x <= 50

[State -1,Jump]
type = ChangeState
value = 49
triggerall = stateno != 100 && pos y = 0 && ctrl && p2stateno != 822 && p2stateno != 823
triggerall = (roundstate = 2) && var(59) > 0
triggerall = statetype != A && frontedgedist > 200 && p2movetype != A  
trigger1 = (p2bodydist x = [150,170]) && random <= 400 
trigger1 = enemy,backedgedist < 70
trigger2 = prevstateno = 3000 && random < 500

[State -1, AI Run Fwd]
type = ChangeState
value = 100
triggerall = (roundstate = 2) && var(59) > 0
triggerall = stateno != 20 && stateno != 100
trigger1 = (p2movetype = A && enemy,facing = facing) || (p2movetype != A && enemy,facing != facing)
trigger1 = statetype != A && ctrl
trigger1 = enemynear, p2bodydist x > 50 && enemynear, vel x <= 1
trigger1 = (enemynear, p2bodydist y = [-20,0])
trigger1 = random < 300

[State -1, Air Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) > 0)
triggerall = (Ctrl) && (statetype = A)
trigger1 = p2bodydist x > 30 && p2movetype != H
trigger1 = abs(p2bodydist y) < 50
trigger1 = random < 200
value = 101

[State -1, Standing Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) > 0)
triggerall = p2stateno != 7600
triggerall = (Ctrl) && (statetype != A)
trigger1 = (p2bodydist x <= 100) && (random < 25)
trigger2 = enemynear, movetype = A && stateno = 0 && random <= 800 || (enemynear, stateno = [1000,3999]) && random <= 400 || enemynear, vel x > 0 && abs(vel x) <= 3 && random <= 333
trigger2 = enemynear, p2bodydist x + (vel x*2)-18 <= 100
value = 105

;===========================================================================
;---------------------------------------------------------------------------
; A.I Stand Chaining
;---------------------------------------------------------------------------
;===========================================================================

[State -1,AI Crouch Strong Kick]
type = null;ChangeState
value = 450
triggerall = var(59) > 0
triggerall = p2bodydist x = [-2,50]
triggerall = StateType = S
trigger1 = stateno < 500
trigger1 = movecontact && !movehit
trigger1 = random < 900

[State -1, AI Crouch Light Punch]
type = ChangeState
value = 400
triggerall = var(59) > 0;
triggerall = p2statetype != A && p2statetype != L
trigger1 = p2bodydist x <= 25
trigger1 = p2bodydist y = [-5,5]
triggerall = statetype != A
triggerall = ctrl
trigger1 = random < 100 
trigger1 = pos y = 0
trigger2 = enemynear, stateno = 100 || enemynear, stateno = 20  || (enemynear, stateno = [1000,2999]) && enemynear, time <= 5 || (enemynear, stateno = [3000,3999]) || enemynear, prevstateno = 0 || random <= 333
trigger2 = enemynear, p2bodydist x + (vel x*1.75) <= 45
trigger3 = enemynear, prevstateno = 0 && enemynear, vel x > 0 && enemynear, p2bodydist x <= 50 && random <= 900

[State -1, Standing Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) > 0)
triggerall = p2stateno != 7600
triggerall = (Ctrl) && (statetype = S)
triggerall = (p2stateno != [120,155]) && (p2stateno != [5100,5150])
trigger1 = (p2bodydist x <= 50) && (random < 500)
trigger2 = movecontact && (random < 500)
trigger2 = (stateno = 220) || (stateno = 250)
trigger3 = movecontact && (random < 700)
trigger3 = (stateno = 200) || (stateno = 210) || (stateno = 440)
trigger4 = movehit && (random < 900)
trigger4 = (stateno = 200) || (stateno = 400) && enemynear, p2bodydist x >= 40
trigger5 = enemynear, stateno = 100 && random <= 333 || (enemynear, stateno = [1000,3999]) && random <= 400 || random <= 400
trigger5 = enemynear, p2bodydist x + (vel x*4) <= 100 && prevstateno != 1000
value = 1000

[State -1, Standing Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) > 0)
triggerall = (p2bodydist x <= 60)
trigger1 = (stateno = 1000) && movecontact
value = 1010

[State -1, Standing Chain End 1 (Finish Combo)]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) > 0)
triggerall = (p2bodydist x <= 70)
trigger1 = (stateno = 1010) && movecontact ;&& random = [551,600]
trigger2 = p2stateno != 7600
trigger2 = (Ctrl) && (statetype = S)
trigger2 = (p2stateno != [120,155]) && (p2stateno != [5100,5150])
trigger2 = (p2bodydist x <= 40) && (random < 100)
value = 1020


[State -1, Standing Chain End 1 (Finish Combo2)]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) > 0)
triggerall = (p2bodydist x <= 50) && p2movetype = H
trigger1 = (stateno = 1000) && random < 100 || (stateno = 1010) && random < 250 || (stateno = 1020) && random < 999
trigger1 = movecontact
trigger2 = p2stateno != 7600
trigger2 = (Ctrl) && (statetype = S)
trigger2 = (p2stateno != [120,155]) && (p2stateno != [5100,5150])
trigger2 = (p2bodydist x <= 40) && (random < 100)
value = 1050

[State -1, Standing Chain End 1 (Finish Combo2)]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) > 0)
triggerall = (p2bodydist x <= 60) && p2movetype = H
trigger1 = (stateno = 1020) && random < 999 || (stateno = 610) && random < 800 || (stateno = 640) && random < 800 || (stateno = 650) && random < 800 && (abs(p2bodydist x) <= 20)
trigger1 = movecontact
trigger2 = p2stateno != 7600
trigger2 = (Ctrl) || stateno = 101 || stateno = 102
trigger2 = (statetype = A) 
trigger2 = (p2stateno != [120,155]) && (p2stateno != [5100,5150])
trigger2 = (p2bodydist x <= 60)&& (abs(p2bodydist x) <= 20) && (random < 300)
trigger3 = (Ctrl) && (statetype = A) && (random < 999) && p2statetype != A
trigger3 = (p2bodydist x >= 165) && (p2bodydist x <= 185) 
trigger3 = (p2bodydist y >= 50) && (p2bodydist y <= 85)
value = 1030

[State -1, Standing Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) > 0)
triggerall = p2stateno != 7600
triggerall = (Ctrl) && (statetype = S)
triggerall = (p2stateno != [120,155]) && (p2stateno != [5100,5150])
trigger1 = (p2bodydist x <= 40) && (random > 900)
value = 200

[State -1, Standing Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) > 0)
triggerall = P2BodyDist X > 35
trigger1 = (stateno = 200) && movecontact
value = 210

[State -1, Standing Chain End 1 (Finish Combo)]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) > 0)
triggerall = P2BodyDist X > 35
trigger1 = (stateno = 210) && movecontact && random = [551,600]
value = 220

[State -1, Standing Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) > 0)
triggerall = P2BodyDist X > 35
trigger1 = (stateno = 200) && movecontact
value = 230

;Start Standing Chain Combo
[State -1, Standing Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) > 0)
triggerall = P2BodyDist X > 35
trigger1 = (stateno = [210,211]) && movecontact
value = 240

[State -1, Standing Chain End 1 (Finish Combo)]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) > 0)
triggerall = P2BodyDist X > 35
trigger1 = (stateno = 220) && movecontact && random = [501,550]
value = 250

;===========================================================================
;---------------------------------------------------------------------------
; A.I Crouch Chaining except light punch is moved up
;---------------------------------------------------------------------------
;===========================================================================

[State -1,AI Crouch Medium Punch]
type = ChangeState
value = 410
triggerall = var(59) > 0
triggerall = p2statetype != A && p2statetype != L 
trigger1 = stateno = 400
trigger1 = movehit
trigger1 = random < 100

[State -1,AI Crouch Strong Punch]
type = ChangeState
value = 420
triggerall = var(59) > 0 && P2statetype != L
trigger1 = p2bodydist x <= 30
trigger1 = stateno = 440
trigger1 = movehit
trigger1 = random < 800 
trigger2 = p2bodydist x <= 32
trigger2 = stateno = 410
trigger2 = movehit
trigger2 = random < 800 
trigger3 = p2bodydist x <= 35
trigger3 = stateno = 210 || stateno = 240 || stateno = 211 || stateno = 241
trigger3 = movehit
trigger3 = random < 100 

[State -1,AI Crouch Weak Kick]
type = ChangeState
value = 430
triggerall = (roundstate = 2) && var(59) > 0
triggerall = p2statetype != A
triggerall = p2bodydist y = 0
triggerall = statetype != A
triggerall = ctrl && prevstateno != 430;don't embarass yourself with that stubby looking kick
trigger1 = P2statetype = S && P2statetype != L
trigger1 = p2bodydist x <= 33
trigger1 = random < 800
trigger2 = P2statetype = L
trigger2 = p2bodydist x <= 20
;trigger2 = random < 999

[State -1,AI Crouch Medium Kick]
type = ChangeState
value = 440
triggerall = var(59) > 0;&& p2movetype != A
trigger1 = stateno = 430 || stateno = 400
trigger1 = movehit
trigger1 = random < 700
trigger2 = stateno = 200
trigger2 = movehit && random <=400 && p2statetype != A
trigger3 = P2statetype = S
trigger3 = p2bodydist x <= 40
trigger3 = p2bodydist y = [-5,5]
trigger3 = statetype != A
trigger3 = ctrl
trigger4 = stateno = 230 || stateno = 200
trigger4 = movehit
trigger4 = random < 500
trigger4 = p2bodydist y = [-2,2]
trigger5 = stateno = 430 && movehit || prevstateno = 440 && movehit
trigger5 = P2statetype = L && p2bodydist x <= 45
trigger5 = random < 999

[State -1,AI Crouch Strong Kick]
type = ChangeState
value = 450
triggerall = var(59) > 0
triggerall = p2bodydist x = [-2,30]
triggerall = P2MoveType != A
trigger1 = stateno = 440 || stateno = 410
trigger1 = movecontact
trigger1 = random < 700

;End Crouching Chain

[State -1,  Always superjump on launch]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) > 0)
trigger1 = (random <= 900)
trigger1 = (stateno = 420) && movecontact
trigger2 = enemynear, vel x > 0 && abs(vel x) <= 3 && random <= 500
trigger2 = enemynear, p2bodydist x + (vel x*4) <= 100 && ctrl && statetype != A
value = 60

;===========================================================================
;---------------------------------------------------------------------------
; A.I Air Chaining
;---------------------------------------------------------------------------
;===========================================================================

[State -1, Air Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) > 0)
triggerall = (statetype = A)
triggerall = (Ctrl) || stateno = 101 || stateno = 102
triggerall = prevstateno != 600
trigger1 = (p2bodydist x <= 25) && (random <= 150)
trigger2 = (p2bodydist x <= 25) && (random <= 750)
trigger2 = (stateno = [60,61]) || stateno = 101 || stateno = 102
value = 600

[State -1, Air Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) > 0)
triggerall = p2bodydist x <= 25
trigger1 = (stateno = 600) && movecontact
value = 610

[State -1, Air Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) > 0)
triggerall = p2bodydist x <= 25
trigger1 = (stateno = 610) && movecontact && (random = [0,500])
value = 620

[State -1, Air Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) > 0)
triggerall = p2bodydist x <= 25
trigger1 = (stateno = 600) && movecontact && (random = [500,999])
value = 630

[State -1, Air Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) > 0)
triggerall = p2bodydist x <= 25
trigger1 = (stateno = 630) && movecontact
value = 640

[State -1, Air Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) > 0)
triggerall = statetype = A
trigger1 = p2bodydist x <= 25
trigger1 = (stateno = 640) && movecontact
trigger2 = random < 50 && ctrl
trigger3 = random < 150 && ctrl && p2bodydist x > 50
value = 650

;===========================================================================
;---------------------------------------------------------------------------
; A.I Special Moves
;---------------------------------------------------------------------------
;===========================================================================
[State -1, Standing Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) > 0)
triggerall = (Ctrl) && (statetype != A)
triggerall = (p2stateno != [120,155]) && (p2stateno != [5100,5150]) & p2statetype != L & p2bodydist y > -20 
triggerall = prevstateno!= 420 && prevstateno!= 1100
trigger1 = (p2bodydist x >= 150) && (random < 50)
trigger2 = prevstateno = 105 && (random < 600)
trigger3 = prevstateno = 3000 && (random < 500)
trigger4 = (p2bodydist x >= 100) && (random < 500) && enemynear, life <= 8
trigger5 = stateno = 0 && (random < 900) && (enemynear, p2bodydist x + (vel x*8) >= 50) && (p2bodydist x <= 175) && enemynear, movetype = A
value = 1100+((random%2)*10)

[State -1, Standing Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) > 0)
triggerall = (Ctrl) && (statetype != A)
triggerall = (p2stateno != [120,155]) && (p2stateno != [5100,5150]) & p2statetype != L & p2bodydist y > -20 
triggerall = prevstateno!= 420 && prevstateno!= 1100
trigger1 = (p2bodydist x >= 225) || (p2bodydist y <= -60) 
trigger1 = (random < 75)
trigger2 = (p2bodydist x >= 100) && (random < 500) && enemynear, life <= 8
value = 1120
;===========================================================================
;---------------------------------------------------------------------------
; A.I Hyper Moves
;---------------------------------------------------------------------------
;===========================================================================
[State -1]
type = ChangeState
value = 3000
triggerall = (roundstate = 2) && (var(59) > 0)
triggerall = (P2life != 0)
triggerall = power > 1000 && (p2bodydist x <= 100)
trigger1 = ctrl && random < 20
triggerall = statetype != A
trigger2 = movecontact & stateno <= 1020 && random < 20
trigger3 = movehit & stateno < 1000 && random < 100

[State -1]
type = ChangeState
value = 3010
triggerall = (roundstate = 2) && (var(59) > 0)
triggerall = (P2life != 0)
triggerall = power > 1000 && (p2bodydist x <= 100) && (abs(p2bodydist x) <= 40)-15
triggerall = statetype = A
trigger1 = ctrl  || stateno = 101 || stateno = 102
trigger1 = (p2stateno != [120,155]) && (p2stateno != [5100,5150])
trigger1 = (p2bodydist x <= 60)&& (abs(p2bodydist x) <= 20) && (random < 300)
trigger2 = (stateno = 1030) && time >= 20 && random < 999 || (stateno = 610) && random < 800 || (stateno = 640) && random < 800 || (stateno = 650) && random < 800 && (abs(p2bodydist x) <= 20)
trigger2 = movecontact
trigger3 = movehit && stateno >= 600 && stateno <= 650 && random < 100

[State -1]
type = ChangeState
value = 3100
triggerall = numhelper(3101) = 0
triggerall = (roundstate = 2) && (var(59) > 0)
triggerall = (P2life != 0)
triggerall = power >= 1500 && life >= 250
trigger1 = ctrl && random < 20
triggerall = statetype != A
trigger2 = movecontact & stateno <= 1020 && random < 20
trigger3 = movehit & stateno < 1000 && random < 100

;===========================================================================
;---------------------------------------------------------------------------
; A.I Misc
;---------------------------------------------------------------------------
;===========================================================================

[State -1, AIR RECOVERY]
type = changestate
value = ifelse((pos y >= -20), 5200, 5210)
triggerall = var(59) > 0
triggerall = roundstate = 2 && stateno = 5050
triggerall = alive
triggerall = canrecover
trigger1 = vel y > -1
trigger1 = random <= (var(59))*100

;--|-AI Defense-|-----------------------------------------------------------
;Thanks to BBH for guard AI
[State -1, Stand guard]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) > 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (p2bodydist x <= 100) && (prevstateno != 5120) && (numproj = 0) && (statetype != A)
triggerall = StateType != A
triggerall = P2statetype != C
triggerall = P2Movetype = A
trigger1 = ctrl
value = 130

[State -1, S-to-C guard]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) > 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (p2bodydist x <= 100) && (prevstateno != 5120) && (numproj = 0) && (statetype != A)
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
trigger1 = stateno = 150
value = 152

[State -1, Crouch guard]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) > 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (p2bodydist x <= 100) && (prevstateno != 5120) && (numproj = 0) && (statetype != A)
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
trigger1 = ctrl
trigger2 = random > 979
value = 131




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
command.time = 30
command.buffer.time = 1

;-|-AI-|--------------------------------------------------------------------
[Command]
name = "AI_1"
command = D,D,D,F,F,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI_2"
command = D,D,D,F,F,U,a+b+c+x+y+z
time = 1

[Command]
name = "AI_3"
command = D,D,D,F,F,UF,a+b+c+x+y+z
time = 1

[Command]
name = "AI_4"
command = D,D,D,F,F,D,a+b+c+x+y+z
time = 1

[Command]
name = "AI_5"
command = D,D,D,F,F,DF,a+b+c+x+y+z
time = 1

[Command]
name = "AI_6"
command = D,D,D,F,F,B,a+b+c+x+y+z
time = 1

[Command]
name = "AI_7"
command = D,D,D,F,F,DB,a+b+c+x+y+z
time = 1

[Command]
name = "AI_8"
command = D,D,D,F,F,UB,a+b+c+x+y+z
time = 1

[Command]
name = "AI_9"
command = D,D,D,F,U,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI_10"
command = D,D,D,F,UF,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI_11"
command = D,D,D,F,DF,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI_12"
command = D,D,D,F,D,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI_13"
command = D,D,D,F,DB,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI_14"
command = D,D,D,F,B,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI_15"
command = D,D,D,F,UB,F,a+b+c+x+y+z
time = 1

;-| Super Motions |--------------------------------------------------------
[Command]
name = "PlasticBattering"
command = ~D, DF, F, x+y
time = 20

[Command]
name = "PlasticBattering"
command = ~D, DF, F, y+x
time = 20

[Command]
name = "IdkSuper"
command = ~D, DF, F, x+a
time = 20

[Command]
name = "IdkSuper"
command = ~D, DF, F, a+x
time = 20

[Command]
name = "OHPIZZA"
command = ~D, DB, B, x+y
time = 20

[Command]
name = "OHPIZZA"
command = ~D, DB, B, y+x
time = 20

[Command]
name = "OhBoyAnotherLaserAttack"
command = ~D, DF, F, a+b
time = 20

[Command]
name = "OhBoyAnotherLaserAttack"
command = ~D, DF, F, b+a
time = 20

[Command]
name = "OrderNumber15"
command = ~D, DB, B, a+b
time = 20

[Command]
name = "OrderNumber15"
command = ~D, DB, B, b+a
time = 20

[Command]
name = "SGS.EXE"
command = ~D, DF, F, s
time = 20

;-| Special Motions |------------------------------------------------------
[Command]
name = "Plastic_Bat_x"
command = ~D, DF, F, x

[Command]
name = "Plastic_Bat_y"
command = ~D, DF, F, y

[Command]
name = "Fireball_x"
command = ~D, DB, B, x

[Command]
name = "Fireball_y"
command = ~D, DB, B, y

[Command]
name = "FuriousSwipes_a"
command = ~D, DF, F, a

[Command]
name = "FuriousSwipes_b"
command = ~D, DF, F, b

[Command]
name = "Foot_Lettuce"
command = ~D, DB, B, a

[Command]
name = "Foot_Lettuce"
command = ~D, DB, B, b

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
name = "SuperJump"
command = $D, $U
time = 20

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
[Command]
name = "F"     ;Required (do not remove)
command = F

[Command]
name = "B"     ;Required (do not remove)
command = B

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

;---------------------------------------------------------------------------------------------
;Hold button
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
name = "holda"
command = /a
time = 1

[Command]
name = "holdc"
command = /c
time = 1

[Command]
name = "holdb"
command = /b
time = 1

;---------------------------------------------------------------------------
; Don't remove the following line. It's required by the CMD standard.
;---------------------------------------------------------------------------
[Statedef -1]
;---------------------------------------------------------------------------
[State -1, Combo Condition]
type = VarSet
trigger1 = 1
var(1) = 0
;---------------------------------------------------------------------------
[State -1, Combo Condition]
type = VarSet
triggerall = statetype != A
triggerall = (stateno != [1000,4000])
trigger1 = movetype = A && MoveContact && time > 2
trigger2 = movetype = H && MoveContact && time > 2
trigger3 = movetype = I && MoveContact && time > 2
var(1) = 1
;---------------------------------------------------------------------------
[State -1, Combo Condition]
type = VarSet
triggerall = statetype != A
triggerall = (stateno = [1000,2999])
trigger1 = movetype = A && MoveContact && time > 2
trigger2 = movetype = H && MoveContact && time > 2
trigger3 = movetype = I && MoveContact && time > 2
var(1) = 2
;===========================================================================

;---------------------------------------------------------------------------
;SGS.EXE!!!!!
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 3500
triggerall = command = "SGS.EXE"
;triggerall = statetype != A
triggerall = power >= 2500
triggerall = life <= 450
trigger1 = ctrl
trigger2 = var(1)>0
trigger3 = (stateno = [1000,2999))
trigger3 = MoveContact

;---------------------------------------------------------------------------
;PlasticBattering
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 3000
triggerall = command = "PlasticBattering"
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = var(1)>0
trigger3 = (stateno = [1000,2999))
trigger3 = MoveContact

;---------------------------------------------------------------------------
;ArguablyWorseSuper
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 3050
triggerall = command = "IdkSuper"
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = var(1)>0
trigger3 = (stateno = [1000,2999))
trigger3 = MoveContact

;---------------------------------------------------------------------------
;OhBoyAnotherLaserAttack
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 3100
triggerall = command = "OhBoyAnotherLaserAttack"
;triggerall = statetype != A
triggerall = power >= 2000
trigger1 = ctrl
trigger2 = var(1)>0
trigger3 = (stateno = [1000,2999))
trigger3 = MoveContact
trigger4 =  stateno = 1100 || stateno = 1110

;---------------------------------------------------------------------------
;OH PIZZA
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 3150
triggerall = command = "OHPIZZA"
triggerall = statetype != A
triggerall = power >= 2000
trigger1 = ctrl
trigger2 = var(1)>0
trigger3 = (stateno = [1000,2999))
trigger3 = MoveContact

;---------------------------------------------------------------------------
;OrderNumber15
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 3200
triggerall = command = "OrderNumber15"
;triggerall = statetype != A
triggerall = power >= 2500
triggerall = life <= 990
triggerall = numhelper(3201) = 0 & palno != 12 || palno = 12
trigger1 = ctrl
trigger2 = var(1)>0
trigger3 = (stateno = [1000,2999))
trigger3 = MoveContact
trigger4 =  stateno = 1100 || stateno = 1110
;---------------------------------------------------------------------------
;Plastic Bat
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1000
triggerall = command = "Plastic_Bat_x"
;triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(1)=1
trigger3 = (stateno = [200,699))
trigger3 = MoveContact
trigger4 =  stateno = 1100 || stateno = 1110
trigger5 = (stateno = [7050,7150]) && time >= 12

[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1010
triggerall = command = "Plastic_Bat_y"
;triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(1)=1
trigger3 = (stateno = [200,699))
trigger3 = MoveContact
trigger4 =  stateno = 1100 || stateno = 1110
trigger5 = (stateno = [7050,7150]) && time >= 12

;---------------------------------------------------------------------------
;Fireball
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1050
triggerall = command = "Fireball_x"
;triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(1)=1
trigger3 = (stateno = [200,699))
trigger3 = MoveContact
trigger4 =  stateno = 1100 || stateno = 1110

[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1060
triggerall = command = "Fireball_y"
;triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(1)=1
trigger3 = (stateno = [200,699))
trigger3 = MoveContact
trigger4 =  stateno = 1100 || stateno = 1110

;---------------------------------------------------------------------------
;Furious Swipes
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1100
triggerall = command = "FuriousSwipes_a"
;triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(1)=1
trigger3 = (stateno = [200,699))
trigger3 = MoveContact

[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1110
triggerall = command = "FuriousSwipes_b"
;triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(1)=1
trigger3 = (stateno = [200,699))
trigger3 = MoveContact
trigger4 =  stateno = 1100

;---------------------------------------------------------------------------
;Foot Lettuce
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1150
triggerall = command = "Foot_Lettuce"
;triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(1)=1
trigger3 = (stateno = [200,699))
trigger3 = MoveContact
trigger4 =  stateno = 1100 || stateno = 1110

;Kung Fu Throw
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = statetype != A
triggerall = ctrl
trigger1 = command = "x" && command = "y"
trigger2 = command = "a" && command = "b"

;Kung Fu Throw
[State -1, Kung Fu Throw]
type = ChangeState
value = 730
triggerall = power < powermax
triggerall = statetype != A
triggerall = ctrl
trigger1 = command = "holdy" && command = "holdb"

;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact) && time > 2
trigger3 = (stateno = 210) && (movecontact) && time > 2
trigger4 = (stateno = 230) && (movecontact) && time > 2
trigger5 = (stateno = 240) && (movecontact) && time > 2
trigger6 = (stateno = 400) && (movecontact) && time > 2
trigger7 = (stateno = 410) && (movecontact) && time > 2
trigger8 = (stateno = 430) && (movecontact) && time > 2
trigger9 = (stateno = 440) && (movecontact) && time > 2
trigger10 = (stateno = [7050,7150]) && time > 12
;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact) && time > 2
trigger3 = (stateno = 210) && (movecontact) && time > 2
trigger4 = (stateno = 230) && (movecontact) && time > 2
trigger5 = (stateno = 240) && (movecontact) && time > 2
trigger6 = (stateno = 400) && (movecontact) && time > 2
trigger7 = (stateno = 410) && (movecontact) && time > 2
trigger8 = (stateno = 430) && (movecontact) && time > 2
trigger9 = (stateno = 440) && (movecontact) && time > 2
trigger10 = (stateno = [7050,7150]) && time >= 12
;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact) && time > 2
trigger3 = (stateno = 210) && (movecontact) && time > 2
trigger4 = (stateno = 230) && (movecontact) && time > 2
trigger5 = (stateno = 240) && (movecontact) && time > 2
trigger6 = (stateno = 400) && (movecontact) && time > 2
trigger7 = (stateno = 410) && (movecontact) && time > 2
trigger8 = (stateno = 430) && (movecontact) && time > 2
trigger9 = (stateno = 440) && (movecontact) && time > 2
trigger10 = (stateno = [7050,7150]) && time >= 12
;---------------------------------------------------------------------------
;Stand Strong Kick
[State -1, Stand Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact) && time > 2
trigger3 = (stateno = 210) && (movecontact) && time > 2
trigger4 = (stateno = 230) && (movecontact) && time > 2
trigger5 = (stateno = 240) && (movecontact) && time > 2
trigger6 = (stateno = 400) && (movecontact) && time > 2
trigger7 = (stateno = 410) && (movecontact) && time > 2
trigger8 = (stateno = 430) && (movecontact) && time > 2
trigger9 = (stateno = 440) && (movecontact) && time > 2
trigger10 = (stateno = [7050,7150]) && time >= 12
;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact) && time > 2
trigger3 = (stateno = 210) && (movecontact) && time > 2
trigger4 = (stateno = 230) && (movecontact) && time > 2
trigger5 = (stateno = 240) && (movecontact) && time > 2
trigger6 = (stateno = 400) && (movecontact) && time > 2
trigger7 = (stateno = 410) && (movecontact) && time > 2
trigger8 = (stateno = 430) && (movecontact) && time > 2
trigger9 = (stateno = 440) && (movecontact) && time > 2
trigger10 = (stateno = [7050,7150]) && time >= 12
;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact) && time > 2
trigger3 = (stateno = 210) && (movecontact) && time > 2
trigger4 = (stateno = 230) && (movecontact) && time > 2
trigger5 = (stateno = 240) && (movecontact) && time > 2
trigger6 = (stateno = 400) && (movecontact) && time > 2
trigger7 = (stateno = 410) && (movecontact) && time > 2
trigger8 = (stateno = 430) && (movecontact) && time > 2
trigger9 = (stateno = 440) && (movecontact) && time > 2
trigger10 = (stateno = [7050,7150]) && time >= 12
;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact) && time > 2
trigger3 = (stateno = 210) && (movecontact) && time > 2
trigger4 = (stateno = 230) && (movecontact) && time > 2
trigger5 = (stateno = 240) && (movecontact) && time > 2
trigger6 = (stateno = 400) && (movecontact) && time > 2
trigger7 = (stateno = 410) && (movecontact) && time > 2
trigger8 = (stateno = 430) && (movecontact) && time > 2
trigger9 = (stateno = 440) && (movecontact) && time > 2
trigger10 = (stateno = [7050,7150]) && time >= 12
;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact) && time > 2
trigger3 = (stateno = 210) && (movecontact) && time > 2
trigger4 = (stateno = 230) && (movecontact) && time > 2
trigger5 = (stateno = 240) && (movecontact) && time > 2
trigger6 = (stateno = 400) && (movecontact) && time > 2
trigger7 = (stateno = 410) && (movecontact) && time > 2
trigger8 = (stateno = 430) && (movecontact) && time > 2
trigger9 = (stateno = 440) && (movecontact) && time > 2
trigger10 = (stateno = [7050,7150]) && time > 12
;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && (movecontact) && time > 2
trigger3 = (stateno = 610) && (movecontact) && time > 2
trigger4 = (stateno = 630) && (movecontact) && time > 2
trigger5 = (stateno = 640) && (movecontact) && time > 2
;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && (movecontact) && time > 2
trigger3 = (stateno = 610) && (movecontact) && time > 2
trigger4 = (stateno = 630) && (movecontact) && time > 2
trigger5 = (stateno = 640) && (movecontact) && time > 2
;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && (movecontact) && time > 2
trigger3 = (stateno = 610) && (movecontact) && time > 2
trigger4 = (stateno = 630) && (movecontact) && time > 2
trigger5 = (stateno = 640) && (movecontact) && time > 2
;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && (movecontact) && time > 2
trigger3 = (stateno = 610) && (movecontact) && time > 2
trigger4 = (stateno = 630) && (movecontact) && time > 2
trigger5 = (stateno = 640) && (movecontact) && time > 2

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
;---------------------------------------------------------------------------
;Super Jump
[State -1, Super Jump]
type = ChangeState
value = 7000
trigger1 = command = "SuperJump"
trigger1 = statetype = S
trigger1 = ctrl
;-----------------------------------------------------------------------------
[State -1, Super Jump]
type = ChangeState
value = 7000
triggerall = Command = "holdup"
trigger1 = stateno = 410 && movehit
;---------------------------------------------------------------------------
;Dodge
[State -1, Dodge]
type = ChangeState
value = 7150
triggerall = command = "z" || command = "c"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Dodge FWD
[State -1, Dodge FWD]
type = ChangeState
value = 7050
triggerall = command = "z" || command = "c"
triggerall = command = "holdfwd"
trigger1 = statetype != A
trigger1 = ctrl
;------------------------------------------------------------------------------
;Dodge BWD
[State -1, Dodge BWD]
type = ChangeState
value = 7100
triggerall = command = "z" || command = "c"
triggerall = command = "holdback"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Dodge Air
[State -1, Dodge Air]
type = ChangeState
value = 7200
triggerall = command = "z" || command = "c"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;-|-AI-|--------------------------------------------------------------------
[State -1, AI Activation]
type = VarSet
triggerall = roundstate = 2
trigger1 = command = "AI_1"
trigger2 = command = "AI_2"
trigger3 = command = "AI_3"
trigger4 = command = "AI_4"
trigger5 = command = "AI_5"
trigger6 = command = "AI_6"
trigger7 = command = "AI_7"
trigger8 = command = "AI_8"
trigger9 = command = "AI_9"
trigger10 = command = "AI_10"
trigger11 = command = "AI_11"
trigger12 = command = "AI_12"
trigger13 = command = "AI_13"
trigger14 = command = "AI_14"
trigger15 = command = "AI_15"
v = 59
value = 1

;--|-AI Defense-|-----------------------------------------------------------
;Thanks to BBH for guard AI
[State -1, Stand guard]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (p2bodydist x <= 100) && (prevstateno != 5120) && (numproj = 0) && (statetype != A)
triggerall = StateType != A
triggerall = P2statetype != C
triggerall = P2Movetype = A
trigger1 = ctrl
value = 130

[State -1, S-to-C guard]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (p2bodydist x <= 100) && (prevstateno != 5120) && (numproj = 0) && (statetype != A)
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
trigger1 = stateno = 150
value = 152

[State -1, Crouch guard]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (p2bodydist x <= 100) && (prevstateno != 5120) && (numproj = 0) && (statetype != A)
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
trigger1 = ctrl
trigger2 = random > 979
value = 131

[State -1, Dodge]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (p2bodydist x <= 100) && (prevstateno != 5120) && (numproj = 0) && (statetype != A)
triggerall = StateType != A
triggerall = P2statetype != C
triggerall = P2Movetype = A
trigger1 = ctrl
trigger1 = random < 300
value = 7100

[State -1, Dodge]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
triggerall = StateType != A
triggerall = P2Movetype = A & p2stateno > 1999 & p2movetype != H
trigger1 = ctrl
trigger1 = random < 300
value = 7100

[State -1, Hyper AI]
type = ChangeState
value = 3500
trigger1 = random <= 99
triggerall = Var(59) >= 1
;triggerall = StateType = S || StateType = C
triggerall = Roundstate = 2
triggerall = Power >= 2500
triggerall = life <= 450
trigger1 = P2statetype != L && StateType != A
trigger1 = p2dist x >= 25
trigger1 = ctrl = 1
trigger2 = (stateno = [200,2999))
trigger2 = MoveContact

[State -1, Hyper AI]
type = ChangeState
value = 3000
trigger1 = random <= 70
triggerall = Var(59) >= 1
triggerall = StateType = S || StateType = C
triggerall = Roundstate = 2
triggerall = Power >= 1050
trigger1 = P2statetype != L && StateType != A
trigger1 = p2dist x <= 100
trigger1 = ctrl = 1
trigger2 = (stateno = [200,2999))
trigger2 = MoveContact && random <= 60

[State -1, Hyper AI]
type = ChangeState
value = 3150
trigger1 = random <= 90
triggerall = Var(59) >= 1
triggerall = StateType = S || StateType = C
triggerall = Roundstate = 2
triggerall = Power >= 2012
;trigger1 = P2statetype != L && StateType != A
trigger1 = p2dist x >= 100
trigger1 = ctrl = 1
trigger2 = (stateno = [200,2999))
trigger2 = MoveContact && random <= 40

[State -1, Hyper AI]
type = ChangeState
value = 3100
trigger1 = random <= 90
triggerall = Var(59) >= 1
;triggerall = StateType = S || StateType = C
triggerall = Roundstate = 2
triggerall = Power >= 1525
trigger1 = P2statetype != L && StateType != A
trigger1 = p2dist x >= 50
trigger1 = ctrl = 1
trigger2 = (stateno = [200,2999))
trigger2 = MoveContact && random <= 75

[State -1, Stand Light Kick]
type = ChangeState
value = 1000
triggerall = Var(59) >= 1
triggerall = Roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != L
trigger1 = p2bodyDist X <= 20
trigger1 = random <= 60
trigger1 = ctrl
trigger1 = ctrl
trigger2 = stateno < 999 & (movecontact) && time > 2 && random < 80

[State -1, Stand Light Kick]
type = ChangeState
value = 1010
triggerall = Var(59) >= 1
triggerall = Roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != L
trigger1 = p2bodyDist X <= 200
trigger1 = random <= 70
trigger1 = ctrl
trigger1 = ctrl
trigger2 = stateno < 999 & (movecontact) && time > 2 && random < 80

[State -1, Stand Light Kick]
type = ChangeState
value = 1100
triggerall = Var(59) >= 1
triggerall = Roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != L
trigger1 = p2bodyDist X <= 150
trigger1 = random <= 85
trigger1 = ctrl
trigger1 = ctrl
trigger2 = stateno < 999 & (movecontact) && time > 2 && random < 120

[State -1, Stand Light Kick]
type = ChangeState
value = 1110
triggerall = Var(59) >= 1
triggerall = Roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != L
trigger1 = p2bodyDist X <= 75 || p2bodyDist Y <= -1
trigger1 = random <= 70
trigger1 = ctrl
trigger1 = ctrl
trigger2 = stateno < 999 & (movecontact) && time > 2 && random < 120

[State -1, Stand Light Kick]
type = ChangeState
value = 1050
triggerall = Var(59) >= 1
triggerall = Roundstate = 2
;triggerall = statetype != A
triggerall = p2statetype != L
trigger1 = p2bodyDist X <= 100 || p2bodyDist X <= 100 && p2bodyDist Y >= -50
trigger1 = random <= 15
trigger1 = ctrl

[State -1, Stand Light Kick]
type = ChangeState
value = 1060
triggerall = Var(59) >= 1
triggerall = Roundstate = 2
;triggerall = statetype = A
triggerall = p2statetype != L
trigger1 = p2bodyDist X >= 100 || p2bodyDist X >= 100 && p2bodyDist Y >= -50
trigger1 = random <= 30
trigger1 = ctrl

[State -1, Stand Light Kick]
type = ChangeState
value = 1150
triggerall = Var(59) >= 1
triggerall = Roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != L
;trigger1 = p2bodyDist X <= 20
trigger1 = random <= 60
trigger1 = ctrl
trigger1 = ctrl
trigger2 = stateno < 999 & (movecontact) && time > 2 && random < 80

[State -1]
type = ChangeState
value = 200
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = P2stateno != [5100,5119]
triggerall = (StateType != A) && (MoveType != H)
triggerall = P2dist y > -50 && (P2life != 0)
trigger1 = P2BodyDist X <= 30
trigger1 = ctrl
trigger2 = stateno < 999 & (movecontact) && time > 2 && random < 120

[State -1]
type = ChangeState
value = 210
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = P2stateno != [5100,5119]
triggerall = (StateType != A) && (MoveType != H)
triggerall = P2dist y > -50 && (P2life != 0)
trigger1 = P2BodyDist X <= 30
trigger1 = ctrl
trigger2 = stateno < 999 & (movecontact) && time > 2 && random < 120

[State -1]
type = ChangeState
value = 230
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = P2stateno != [5100,5119]
triggerall = (StateType != A) && (MoveType != H)
triggerall = P2dist y > -50 && (P2life != 0)
trigger1 = P2BodyDist X <= 30
trigger1 = ctrl
trigger2 = stateno < 999 & (movecontact) && time > 2 && random < 120

[State -1]
type = ChangeState
value = 240
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = P2stateno != [5100,5119]
triggerall = (StateType != A) && (MoveType != H)
triggerall = P2dist y > -50 && (P2life != 0)
trigger1 = P2BodyDist X <= 30
trigger1 = ctrl
trigger2 = stateno < 999 & (movecontact) && time > 2 && random < 120

[State -1]
type = ChangeState
value = 400
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = P2stateno != [5100,5119]
triggerall = (StateType != A) && (MoveType != H)
triggerall = (P2StateType != A) && (P2life != 0)
trigger1 = P2BodyDist X <= 20
trigger1 = ctrl
trigger2 = stateno < 999 & (movecontact) && time > 2 && random < 120

[State -1]
type = ChangeState
value = 410
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = P2stateno != [5100,5119]
triggerall = (StateType != A) && (MoveType != H)
triggerall = (P2StateType != A) && (P2life != 0)
trigger1 = P2BodyDist X <= 20
trigger1 = ctrl
trigger2 = stateno < 999 & (movecontact) && time > 2 && random < 120

[State -1]
type = ChangeState
value = 430
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = P2stateno != [5100,5119]
triggerall = (StateType != A) && (MoveType != H)
triggerall = (P2StateType != A) && (P2life != 0)
trigger1 = P2BodyDist X <= 20
trigger1 = ctrl
trigger2 = stateno < 999 & (movecontact) && time > 2 && random < 120

[State -1]
type = ChangeState
value = 440
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = P2stateno != [5100,5119]
triggerall = (StateType != A) && (MoveType != H)
triggerall = (P2StateType != A) && (P2life != 0)
trigger1 = P2BodyDist X <= 20
trigger1 = ctrl
trigger2 = stateno < 999 & (movecontact) && time > 2 && random < 120

[State -1, Charge]
type = ChangeState
value = 730
triggerall = var(58) && RoundState = 2
triggerall = power < powermax
triggerall = ctrl && !inguarddist && statetype != A && random < 1
trigger1 = P2bodydist X > 100
trigger2 = P2MoveType = H
trigger3 = P2StateType = L

[State -1]
type = ChangeState
value = 600
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (StateType = A) && (MoveType != H)
triggerall = (P2StateType = A) && (P2life != 0)
trigger1 = P2BodyDist X <= 9
trigger1 = ctrl
trigger2 = stateno < 999 & (movecontact) && time > 2 && random < 300

[State -1]
type = ChangeState
value = 610
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (StateType = A) && (MoveType != H)
triggerall = (P2StateType = A) && (P2life != 0)
trigger1 = P2BodyDist X <= 9
trigger1 = ctrl
trigger2 = stateno < 999 & (movecontact) && time > 2 && random < 300

[State -1]
type = ChangeState
value = 630
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = P2stateno != [5100,5119]
triggerall = (StateType = A) && (MoveType != H)
triggerall = (P2StateType = A) && (P2life != 0)
trigger1 = P2BodyDist X <= 9
trigger1 = ctrl
trigger2 = stateno < 999 & (movecontact) && time > 2 && random < 300

[State -1]
type = ChangeState
value = 640
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = P2stateno != [5100,5119]
triggerall = (StateType = A) && (MoveType != H)
triggerall = (P2StateType = A) && (P2life != 0)
trigger1 = P2BodyDist X <= 9
trigger1 = ctrl
trigger2 = stateno < 999 & (movecontact) && time > 2 && random < 300

[State -1]
type = ChangeState
value = 100
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = P2stateno = [5100,5119]
triggerall = (StateType != A) && (MoveType != H)
triggerall = (P2StateType != A) && (P2life != 0)
trigger1 = P2BodyDist X >= 20 && random < 120
trigger1 = ctrl

[State -1]
type = ChangeState
value = 105
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = P2stateno = [5100,5119]
triggerall = (StateType != A) && (MoveType != H)
triggerall = (P2StateType != A) && (P2life != 0)
trigger1 = P2BodyDist X <= 20 && random < 40
trigger1 = ctrl

[State -1]
type = ChangeState
value = 20
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = P2stateno = [5100,5119]
triggerall = (StateType != A) && (MoveType != H)
triggerall = (P2StateType != A) && (P2life != 0)
trigger1 = P2BodyDist X >= 20 && random < 160
trigger1 = ctrl
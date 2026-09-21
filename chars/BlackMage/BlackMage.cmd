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
name = "Dilto A"
command = ~D, D, a
time = 10

[Command]
name = "Dilto B"
command = ~D, D, b
time = 10

[Command]
name = "HCB_x"
command = ~F, D, B, x
time = 10

[Command]
name = "HCB_x"
command = ~F, DF, D, DB, B, x
time = 10

[Command]
name = "HCB_y"
command = ~F, D, B, y
time = 10

[Command]
name = "HCB_y"
command = ~F, DF, D, DB, B, y
time = 10

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
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

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
name = "QCB_ab"
command = ~D, DB, B, a+b

[Command]
name = "QCB_a"
command = ~D, DB, B, a

[Command]
name = "QCB_b"
command = ~D, DB, B, b

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
name = "QCF_ab"
command = ~D, DF, F, a+b

[Command]
name = "HCB_a"
command = ~F, D, B, a
time = 10

[Command]
name = "HCB_a"
command = ~F, DF, D, DB, B, a
time = 10

[Command]
name = "HCB_b"
command = ~F, D, B, b
time = 10

[Command]
name = "HCB_b"
command = ~F, DF, D, DB, B, b
time = 10

[Command]
name = "FF_ab"
command = F, F, a+b

[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b

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

[Command]
name = "hold_x"
command = /x
time = 1
[Command]
name = "hold_y"
command = /y
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "AFF"     ;Required (do not remove)
command = $F, ~F, F
time = 10

[Command]
name = "BFF"     ;Required (do not remove)
command = $B, ~B, B
time = 10

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
name = "Pursuit"
command = /$U,x
time = 1

[Command]
name = "Pursuit"
command = /$U,y
time = 1

[Command]
name = "Pursuit"
command = /$U,a
time = 1

[Command]
name = "Pursuit"
command = /$U,b
time = 1

;---------------------------------------------------------------------------
[Statedef -1]
;===========================================================================
;Guard Cancel Frontstep 
[State -1, Guard Cancel Frontstep]
type = ChangeState
value = 930
triggerall = roundstate = 2
triggerall = power >= 1000
triggerall = command = "a" && command = "b" || command = "c" 
triggerall = statetype != A
trigger1 = stateno = [150, 153]

;---------------------------------------------------------------------------
;Guard Cancel Strike
[State -1, Guard Cancel Strike]
type = ChangeState
value = 920
triggerall = roundstate = 2
triggerall = power >= 1000
triggerall = command = "x" && command = "y" || command = "z"
triggerall = statetype != A
trigger1 = stateno = [150, 153]

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Fwd Air Dash 
[State -1,Fwd Air Dash ]
type = ChangeState
value = 110
triggerall = !(var(22) & floor(exp(1*ln(2)) + 0.5) )
triggerall = (command = "AFF") || (var(52) = 110)
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Back Air Dash 
[State -1,Back Air Dash ]
type = ChangeState
value = 115
triggerall = !(var(22) & floor(exp(1*ln(2)) + 0.5) )
triggerall = (command = "BFF") || (var(52) = 110)
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

;---------------------------------------------------------------------------
;Pursuit Attack
[State -1, ]
type = ChangeState
value = 900
triggerall = command = "Pursuit"
triggerall = statetype != A
triggerall = enemynear, statetype = L
triggerall = enemynear, stateno != 5120
triggerall = p2dist x <= 150
trigger1 = ctrl
trigger2 = stateno = 40

;---------------------------------------------------------------------------
;Grab
[State -1, Grab]
type = ChangeState
value = 800
triggerall = p2bodydist x < 15
triggerall = p2statetype = S || p2statetype = C
triggerall = statetype != A
triggerall = ctrl
trigger1 = (command = "holdfwd" || command = "holdback") && command = "y" 

;===========================================================================
;---------------------------------------------------------------------------
;Final Flare
[State -1, Final Flare]
type = ChangeState
value = 3015
triggerall = NumHelper(2030) = 0
triggerall = NumHelper(2060) = 0
triggerall = power >= 2000
triggerall = command = "QCB_ab"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && Movecontact 
trigger3 = stateno = 210 && animelemtime(7) >= 0
trigger4 = stateno = 230 && Movecontact 
trigger5 = stateno = 240 && Movecontact 
trigger6 = stateno = 400 && Movecontact 
trigger7 = stateno = 410 && Movecontact 
trigger8 = stateno = 430 && Movecontact 

;---------------------------------------------------------------------------
;Giant Fist 
[State -1, Giant Fist]
type = ChangeState
value = 3010
triggerall = NumHelper(2030) = 0
triggerall = NumHelper(2060) = 0
triggerall = power >= 2000
triggerall = command = "QCB_xy"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && Movecontact 
trigger3 = stateno = 210 && animelemtime(7) >= 0
trigger4 = stateno = 230 && Movecontact 
trigger5 = stateno = 240 && Movecontact 
trigger6 = stateno = 400 && Movecontact 
trigger7 = stateno = 410 && Movecontact 
trigger8 = stateno = 430 && Movecontact 

;---------------------------------------------------------------------------
;Super Dalto
[State -1, Super Dalto]
type = ChangeState
value = 3005
triggerall = NumHelper(2030) = 0
triggerall = NumHelper(2060) = 0
triggerall = power >= 1000
triggerall = command = "QCF_ab"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && Movecontact 
trigger3 = stateno = 210 && animelemtime(7) >= 0
trigger4 = stateno = 230 && Movecontact 
trigger5 = stateno = 240 && Movecontact 
trigger6 = stateno = 400 && Movecontact 
trigger7 = stateno = 410 && Movecontact 
trigger8 = stateno = 430 && Movecontact 

;---------------------------------------------------------------------------
;Firenado
[State -1, Firenado]
type = ChangeState
value = 3000
triggerall = NumHelper(2030) = 0
triggerall = power >= 1000
triggerall = command = "QCF_xy"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && Movecontact 
trigger3 = stateno = 210 && animelemtime(7) >= 0
trigger4 = stateno = 230 && Movecontact 
trigger5 = stateno = 240 && Movecontact 
trigger6 = stateno = 400 && Movecontact 
trigger7 = stateno = 410 && Movecontact 
trigger8 = stateno = 430 && Movecontact 

;---------------------------------------------------------------------------
;Air Teleport
[State -1, Air Teleport]
type = ChangeState
value = 1048
triggerall = command = "z" && !var(29)
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Teleport
[State -1, Teleport]
type = ChangeState
value = 1045
triggerall = command = "z"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Long Badios 
[State -1, Long Badios]
type = ChangeState
value = 1041
triggerall = command = "QCF_y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && Movecontact 
trigger3 = stateno = 610 && Movecontact 
trigger4 = stateno = 630 && Movecontact 
trigger5 = stateno = 636 && time > 8

;---------------------------------------------------------------------------
;Short Badios
[State -1, Short Badios]
type = ChangeState
value = 1040
triggerall = command = "QCF_x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && Movecontact 
trigger3 = stateno = 610 && Movecontact 
trigger4 = stateno = 630 && Movecontact 
trigger5 = stateno = 636 && time > 8

;---------------------------------------------------------------------------
;Katino
[State -1, Katino]
type = ChangeState
value = 1035
triggerall = command = "c"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && Movecontact 
trigger3 = stateno = 230 && Movecontact 
trigger4 = stateno = 240 && Movecontact 
trigger5 = stateno = 400 && Movecontact 
trigger6 = stateno = 430 && Movecontact 

;---------------------------------------------------------------------------
;Dalto
[State -1, Dalto]
type = ChangeState
value = 1030
triggerall = NumHelper(2015) = 0
triggerall = command = "QCF_a" || command = "QCF_b"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && Movecontact 
trigger3 = stateno = 210 && animelemtime(7) >= 0
trigger4 = stateno = 230 && Movecontact 
trigger5 = stateno = 240 && Movecontact 
trigger6 = stateno = 400 && Movecontact 
trigger7 = stateno = 430 && Movecontact 

;---------------------------------------------------------------------------
;Dilto
[State -1, Dilto]
type = ChangeState
value = 1025
triggerall = command = "Dilto A" || command = "Dilto B"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Molto
[State -1, Molto]
type = ChangeState
value = 1020
triggerall = NumHelper(2000) = 0
triggerall = NumHelper(2005) = 0
triggerall = NumHelper(2006) = 0
triggerall = command = "QCB_a" || command = "QCB_b" 
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && Movecontact 
trigger3 = stateno = 210 && Movecontact 
trigger4 = stateno = 230 && Movecontact 
trigger5 = stateno = 400 && Movecontact 
trigger6 = stateno = 410 && Movecontact 
trigger7 = stateno = 430 && Movecontact 

;---------------------------------------------------------------------------
;Big Halito
[State -1, Big Halito]
type = ChangeState
value = 1010
triggerall = NumHelper(2000) = 0
triggerall = NumHelper(2005) = 0
triggerall = NumHelper(2006) = 0
triggerall = command = "HCB_x"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && Movecontact 
trigger3 = stateno = 210 && animelemtime(7) >= 0
trigger4 = stateno = 230 && Movecontact 
trigger5 = stateno = 400 && Movecontact 
trigger6 = stateno = 430 && Movecontact 

;---------------------------------------------------------------------------
;Big Multi-Halito 
[State -1, Big Multi-Halito]
type = ChangeState
value = 1015
triggerall = NumHelper(2000) = 0
triggerall = NumHelper(2005) = 0
triggerall = NumHelper(2006) = 0
triggerall = command = "HCB_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && Movecontact 
trigger3 = stateno = 210 && animelemtime(7) >= 0
trigger4 = stateno = 230 && Movecontact 
trigger5 = stateno = 400 && Movecontact 
trigger6 = stateno = 430 && Movecontact 

;---------------------------------------------------------------------------
;Crouching Halito
[State -1, Crouching Halito]
type = ChangeState
value = 1005
triggerall = NumHelper(2000) = 0
triggerall = NumHelper(2005) = 0
triggerall = NumHelper(2006) = 0
triggerall = command = "QCF_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && Movecontact 
trigger3 = stateno = 230 && Movecontact 
trigger4 = stateno = 240 && Movecontact 
trigger5 = stateno = 400 && Movecontact 
trigger6 = stateno = 430 && Movecontact 

;---------------------------------------------------------------------------
;Standing Halito
[State -1, Standing Halito]
type = ChangeState
value = 1000
triggerall = NumHelper(2000) = 0
triggerall = NumHelper(2005) = 0
triggerall = NumHelper(2006) = 0
triggerall = command = "QCF_x"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && Movecontact 
trigger3 = stateno = 230 && Movecontact 
trigger4 = stateno = 240 && Movecontact 
trigger5 = stateno = 400 && Movecontact 
trigger6 = stateno = 430 && Movecontact 

;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && Movecontact 
trigger3 = stateno = 400 && Movecontact 

;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && Movecontact 
trigger3 = stateno = 230 && Movecontact 
trigger4 = stateno = 400 && Movecontact 
trigger5 = stateno = 430 && Movecontact 

;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && Movecontact 
trigger3 = stateno = 230 && Movecontact 
trigger4 = stateno = 400 && Movecontact 

;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && Movecontact 
trigger3 = stateno = 230 && Movecontact 
trigger4 = stateno = 400 && Movecontact 
trigger5 = stateno = 430 && Movecontact 

;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && Movecontact 
trigger3 = stateno = 400 && Movecontact 

;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && Movecontact 
trigger3 = stateno = 230 && Movecontact
trigger4 = stateno = 400 && Movecontact 
trigger5 = stateno = 430 && Movecontact 

;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && Movecontact 
trigger3 = stateno = 230 && Movecontact
trigger4 = stateno = 400 && Movecontact 
trigger5 = stateno = 430 && Movecontact 

;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && Movecontact 
trigger3 = stateno = 230 && Movecontact
trigger4 = stateno = 400 && Movecontact 
trigger5 = stateno = 430 && Movecontact 

;---------------------------------------------------------------------------
;Air Dash Kick 
[State -1, Air Dash Kick ]
type = ChangeState
value = 700
triggerall = stateno = 110 
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 636 && time > 10

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 636 && time > 8

;---------------------------------------------------------------------------
;Goomba Stomp
[State -1, Goomba Stomp]
type = ChangeState
value = 635
triggerall = command = "holddown" && command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 636 && time > 8

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 636 && time > 8

;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 636 && time > 8
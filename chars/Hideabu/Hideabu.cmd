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

[Command]
name = "Locker Combo"
command = ~D, DF, F, D, DF, F, x+y
time = 20

[Command]
name = "Giant Blow"
command = ~D, DF, F, D, DF, F, x
time = 20

[Command]
name = "Browser"
command = ~D, DF, F, D, DF, F, y
time = 20

[Command]
name = "Super Combo"
command = ~D, DF, F, D, DF, F, a
time = 20

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
name = "HCF_y"
command = ~B, DB, D, DF, F, y
time = 10

[Command]
name = "HCF_y"
command = ~B, D, F, y
time = 10

[Command]
name = "HCF_x"
command = ~B, DB, D, DF, F, x

[Command]
name = "HCF_x"
command = ~B, D, F, x

[Command]
name = "HCF_a"
command = ~B, DB, D, DF, F, a

[Command]
name = "HCF_b"
command = ~B, D, F, b

[Command]
name = "upper_x"
command = ~F, D, DF, x
time = 10

[Command]
name = "upper_y"
command = ~F, D, DF, y
time = 10

[Command]
name = "upper_xy"
command = ~F, D, DF, x+y

[Command]
name = "QCF_x"
command = ~D, DF, F, x
time = 10

[Command]
name = "QCF_y"
command = ~D, DF, F, y
time = 10

[Command]
name = "QCF_xy"
command = ~D, DF, F, x+y

[Command]
name = "QCB_x"
command = ~D, DB, B, x
time = 10

[Command]
name = "QCB_y"
command = ~D, DB, B, y
time = 10

[Command]
name = "QCB_xy"
command = ~D, DB, B, x+y

[Command]
name = "QCF_a"
command = ~D, DF, F, a
time = 10

[Command]
name = "QCF_b"
command = ~D, DF, F, b
time = 10

[Command]
name = "QCB_a"
command = ~D, DB, B, a

[Command]
name = "QCB_b"
command = ~D, DB, B, b

[Command]
name = "QCF_ab"
command = ~D, DF, F, a+b

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
[Statedef -1]

;===========================================================================
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
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Dodge Foward
[State -1, Dodge Foward]
type = ChangeState
value = 700
triggerall = StateType != A
triggerall = ctrl
trigger1 = command = "c" && command = "holdfwd" && Var(15) = 0

;---------------------------------------------------------------------------
;Dodge Backwards
[State -1, Dodge Backwards]
type = ChangeState
value = 705
triggerall = StateType != A
triggerall = ctrl
trigger1 = command = "c" && command = "holdback" && Var(15) = 0

;===========================================================================
;---------------------------------------------------------------------------
;Locker Combo
[State -1, Super Combo]
type = ChangeState
value = 3013
triggerall = power >= 2000
triggerall = command = "Locker Combo"
;triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && Movecontact 
trigger3 = stateno = 210 && Movecontact 
trigger4 = stateno = 230 && Movecontact 
trigger5 = stateno = 400 && Movecontact 
trigger6 = stateno = 410 && Movecontact 
trigger7 = stateno = 430 && Movecontact 
trigger9 = stateno = 611 && Movecontact 
trigger10 = stateno = 1000 && animelemtime(7) >= 0
trigger11 = stateno = 1001 && animelemtime(7) >= 0
trigger12 = stateno = 1006 && Movecontact 
trigger13 = stateno = 1007 && Movecontact 
trigger14 = stateno = 1008 && Movecontact 
trigger15 = stateno = 1009 && Movecontact 
trigger16 = stateno = 1010 && Movecontact 

;---------------------------------------------------------------------------
;Super Combo
[State -1, Super Combo]
type = ChangeState
value = 3002
triggerall = power >= 1000
triggerall = command = "Super Combo"
;triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && Movecontact 
trigger3 = stateno = 210 && Movecontact 
trigger4 = stateno = 230 && Movecontact 
trigger5 = stateno = 400 && Movecontact 
trigger6 = stateno = 410 && Movecontact 
trigger7 = stateno = 430 && Movecontact 
trigger9 = stateno = 611 && Movecontact 
trigger10 = stateno = 1000 && animelemtime(7) >= 0
trigger11 = stateno = 1001 && animelemtime(7) >= 0
trigger12 = stateno = 1006 && Movecontact 
trigger13 = stateno = 1007 && Movecontact 
trigger14 = stateno = 1008 && Movecontact 
trigger15 = stateno = 1009 && Movecontact 
trigger16 = stateno = 1010 && Movecontact 

;---------------------------------------------------------------------------
;Browser
[State -1, Browser]
type = ChangeState
value = 3001
triggerall = power >= 1000
triggerall = command = "Browser"
;triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && Movecontact 
trigger3 = stateno = 210 && Movecontact 
trigger4 = stateno = 230 && Movecontact 
trigger5 = stateno = 400 && Movecontact 
trigger6 = stateno = 410 && Movecontact 
trigger7 = stateno = 430 && Movecontact 
trigger9 = stateno = 611 && Movecontact 
trigger10 = stateno = 1000 && animelemtime(7) >= 0
trigger11 = stateno = 1001 && animelemtime(7) >= 0
trigger12 = stateno = 1006 && Movecontact 
trigger13 = stateno = 1007 && Movecontact 
trigger14 = stateno = 1008 && Movecontact 
trigger15 = stateno = 1009 && Movecontact 
trigger16 = stateno = 1010 && Movecontact 

;---------------------------------------------------------------------------
;Giant Blow
[State -1, Giant Blow]
type = ChangeState
value = 3000
triggerall = power >= 1000
triggerall = command = "Giant Blow"
;triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && Movecontact 
trigger3 = stateno = 210 && Movecontact 
trigger4 = stateno = 230 && Movecontact 
trigger5 = stateno = 400 && Movecontact 
trigger6 = stateno = 410 && Movecontact 
trigger7 = stateno = 430 && Movecontact 
trigger9 = stateno = 611 && Movecontact 
trigger10 = stateno = 1000 && animelemtime(7) >= 0
trigger11 = stateno = 1001 && animelemtime(7) >= 0
trigger12 = stateno = 1006 && Movecontact 
trigger13 = stateno = 1007 && Movecontact 
trigger14 = stateno = 1008 && Movecontact 
trigger15 = stateno = 1009 && Movecontact 
trigger16 = stateno = 1010 && Movecontact 

;---------------------------------------------------------------------------
;Overhead Punch Far
[State -1, Overhead Punch Far]
type = ChangeState
value = 1009
triggerall = command = "HCF_x"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && Movecontact 
trigger3 = stateno = 210 && Movecontact 
trigger4 = stateno = 230 && Movecontact 
trigger5 = stateno = 400 && Movecontact 
trigger6 = stateno = 410 && Movecontact 
trigger7 = stateno = 430 && Movecontact 
trigger8 = stateno = 611 && Movecontact 
trigger9 = stateno = 1006 && Movecontact 
trigger10 = stateno = 1000 && animelemtime(7) >= 0
trigger11 = stateno = 1001 && animelemtime(7) >= 0

;---------------------------------------------------------------------------
;Overhead Punch Short
[State -1, Overhead Punch Short]
type = ChangeState
value = 1010
triggerall = command = "HCF_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && Movecontact 
trigger3 = stateno = 210 && Movecontact 
trigger4 = stateno = 230 && Movecontact 
trigger5 = stateno = 400 && Movecontact 
trigger6 = stateno = 410 && Movecontact 
trigger7 = stateno = 430 && Movecontact 
trigger8 = stateno = 611 && Movecontact 
trigger9 = stateno = 1006 && Movecontact 
trigger10 = stateno = 1000 && animelemtime(7) >= 0
trigger11 = stateno = 1001 && animelemtime(7) >= 0

;---------------------------------------------------------------------------
;Gut Punch Far
[State -1, Gut Punch Far]
type = ChangeState
value = 1008
triggerall = command = "QCF_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && Movecontact 
trigger3 = stateno = 210 && Movecontact 
trigger4 = stateno = 230 && Movecontact 
trigger5 = stateno = 400 && Movecontact 
trigger6 = stateno = 410 && Movecontact 
trigger7 = stateno = 430 && Movecontact 
trigger8 = stateno = 611 && Movecontact 
trigger9 = stateno = 1006 && Movecontact 
trigger10 = stateno = 1000 && animelemtime(7) >= 0
trigger11 = stateno = 1001 && animelemtime(7) >= 0

;---------------------------------------------------------------------------
;Gut Punch Short
[State -1, Gut Punch Short]
type = ChangeState
value = 1007
triggerall = command = "QCF_x"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && Movecontact 
trigger3 = stateno = 210 && Movecontact 
trigger4 = stateno = 230 && Movecontact 
trigger5 = stateno = 400 && Movecontact 
trigger6 = stateno = 410 && Movecontact 
trigger7 = stateno = 430 && Movecontact 
trigger8 = stateno = 611 && Movecontact 
trigger9 = stateno = 1000 && animelemtime(7) >= 0
trigger10 = stateno = 1001 && animelemtime(7) >= 0
trigger11 = stateno = 1006 && Movecontact 

;---------------------------------------------------------------------------
;Slide Kick Far
[State -1, Slide Kick Far]
type = ChangeState
value = 1005
triggerall = command = "QCF_b"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && Movecontact 
trigger3 = stateno = 210 && Movecontact 
trigger4 = stateno = 230 && Movecontact 
trigger5 = stateno = 400 && Movecontact 
trigger6 = stateno = 410 && Movecontact 
trigger7 = stateno = 430 && Movecontact 
trigger8 = stateno = 1000 && animelemtime(7) >= 0
trigger9 = stateno = 1001 && animelemtime(7) >= 0

;---------------------------------------------------------------------------
;Slide Kick Short
[State -1, Slide Kick Short]
type = ChangeState
value = 1004
triggerall = command = "QCF_a"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && Movecontact 
trigger3 = stateno = 210 && Movecontact 
trigger4 = stateno = 230 && Movecontact 
trigger5 = stateno = 400 && Movecontact 
trigger6 = stateno = 410 && Movecontact 
trigger7 = stateno = 430 && Movecontact 
trigger8 = stateno = 1000 && animelemtime(7) >= 0
trigger9 = stateno = 1001 && animelemtime(7) >= 0

;---------------------------------------------------------------------------
;Far Laptop Toss
[State -1, Far Laptop Toss]
type = ChangeState
value = 1003
triggerall = command = "QCB_b"
;triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && Movecontact 
trigger3 = stateno = 230 && Movecontact 
trigger4 = stateno = 400 && Movecontact 
trigger5 = stateno = 430 && Movecontact 

;---------------------------------------------------------------------------
;Short Laptop Toss
[State -1, Short Laptop Toss]
type = ChangeState
value = 1002
triggerall = command = "QCB_a"
;triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && Movecontact 
trigger3 = stateno = 230 && Movecontact 
trigger4 = stateno = 400 && Movecontact 
trigger5 = stateno = 430 && Movecontact 

;---------------------------------------------------------------------------
;Far TV Toss
[State -1, Far TV Toss]
type = ChangeState
value = 1001
triggerall = command = "QCB_y"
;triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && Movecontact 
trigger3 = stateno = 230 && Movecontact 
trigger4 = stateno = 400 && Movecontact 
trigger5 = stateno = 430 && Movecontact 

;---------------------------------------------------------------------------
;Short TV Toss
[State -1, Short TV Toss]
type = ChangeState
value = 1000
triggerall = command = "QCB_x"
;triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && Movecontact 
trigger3 = stateno = 230 && Movecontact 
trigger4 = stateno = 400 && Movecontact 
trigger5 = stateno = 430 && Movecontact 

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

;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl 
trigger2 = (stateno = 200 || Stateno = 230 || stateno = 400 || stateno = 430) && Movecontact
;trigger2 = stateno = 200 && Movecontact 
;trigger3 = stateno = 230 && Movecontact 
;trigger3 = stateno = 400 && Movecontact 
;trigger4 = stateno = 430 && Movecontact 

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
trigger1 = ctrl || (stateno = 200 || Stateno = 230 || stateno = 400 || stateno = 430) && Movecontact 
;trigger2 = stateno = 200 && Movecontact 
;trigger3 = stateno = 400 && Movecontact 
;trigger4 = stateno = 430 && Movecontact 

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
trigger2 = (stateno = 200 || Stateno = 230 || stateno = 400 || stateno = 430) && Movecontact
;trigger2 = stateno = 200 && Movecontact 
;trigger3 = stateno = 230 && Movecontact 
;trigger4 = stateno = 400 && Movecontact 
;trigger5 = stateno = 430 && Movecontact 

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
trigger1 = ctrl || (stateno = 200 || Stateno = 230 || stateno = 400 || stateno = 430) && Movecontact
;trigger2 = stateno = 200 && Movecontact 
;trigger3 = stateno = 230 && Movecontact 
;trigger4 = stateno = 400 && Movecontact 
;trigger5 = stateno = 430 && Movecontact 

;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = ctrl || (stateno = 200 || Stateno = 230 || stateno = 400 || stateno = 430) && MoveContact
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && Movecontact 
trigger3 = stateno = 230 && Movecontact 
trigger4 = stateno = 400 && Movecontact 
trigger5 = stateno = 430 && Movecontact 

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
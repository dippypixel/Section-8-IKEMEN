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
name = "QCB_xy"
command = ~D, DB, B, x+y

[Command]
name = "QCF_a"
command = ~D, DF, F, a

[Command]
name = "QCB_a"
command = ~D, DB, B, a

[Command]
name = "QCB_b"
command = ~D, DB, B, b

[Command]
name = "QCF_b"
command = ~D, DF, F, b

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
;---------------------------------------------------------------------------
;Dash Foward
[State -1, Dash Foward]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Dash Back
[State -1, Dash Back]
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
;Grab
[State -1, Grab]
type = ChangeState
value = 245
triggerall = stateno != 100
triggerall = statetype = S
triggerall = p2statetype != A
triggerall = ctrl
trigger1 = command = "holdfwd" && command = "y" && p2bodydist x < 15

;---------------------------------------------------------------------------
;Dodge Foward
[State -1, Dodge Foward]
type = ChangeState
value = 705
triggerall = stateno != 100
triggerall = statetype != A
triggerall = ctrl
trigger1 = command = "c" && command = "holdfwd"

;---------------------------------------------------------------------------
;Dodge Back
[State -1, Dodge Back]
type = ChangeState
value = 710
triggerall = stateno != 100
triggerall = statetype != A
triggerall = ctrl
trigger1 = command = "c" && command = "holdback"

;===========================================================================
;---------------------------------------------------------------------------
;STFK 
[State -1, STFK ]
type = ChangeState
value = 3005
triggerall = power >= 1000
triggerall = command = "QCF_ab"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = Stateno = 200 && MoveContact
trigger3 = Stateno = 210 && MoveContact
trigger4 = Stateno = 230 && MoveContact
trigger5 = Stateno = 240 && MoveContact

;---------------------------------------------------------------------------
;Tempera 
[State -1, Tempera]
type = ChangeState
value = 3000
triggerall = power >= 1000
triggerall = command = "QCF_xy"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = Stateno = 200 && MoveContact
trigger3 = Stateno = 210 && MoveContact
trigger4 = Stateno = 230 && MoveContact
trigger5 = Stateno = 240 && MoveContact

;---------------------------------------------------------------------------
;Flash Kick Higher
[State -1, Flash Kick Higher]
type = ChangeState
value = 271
triggerall = command = "QCF_b"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = Stateno = 200 && MoveContact
trigger3 = Stateno = 210 && MoveContact
trigger4 = Stateno = 230 && MoveContact
trigger5 = Stateno = 240 && MoveContact

;---------------------------------------------------------------------------
;Flash Kick
[State -1, Flash Kick]
type = ChangeState
value = 270
triggerall = command = "QCF_a"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = Stateno = 200 && MoveContact
trigger3 = Stateno = 210 && MoveContact
trigger4 = Stateno = 230 && MoveContact
trigger5 = Stateno = 240 && MoveContact

;---------------------------------------------------------------------------
;Strong Tatsumaki
[State -1, Strong Tatsumaki]
type = ChangeState
value = 265
triggerall = command = "QCB_b"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = Stateno = 200 && MoveContact
trigger3 = Stateno = 210 && MoveContact
trigger4 = Stateno = 230 && MoveContact
trigger5 = Stateno = 240 && MoveContact

;---------------------------------------------------------------------------
;Weak Tatsumaki
[State -1, Weak Tatsumaki]
type = ChangeState
value = 260
triggerall = command = "QCB_a"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = Stateno = 200 && MoveContact
trigger3 = Stateno = 210 && MoveContact
trigger4 = Stateno = 230 && MoveContact
trigger5 = Stateno = 240 && MoveContact

;---------------------------------------------------------------------------
;Fast Hand Blast
[State -1, Fast Hand Blast]
type = ChangeState
value = 255
triggerall = !NumProj
triggerall = command = "QCF_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = Stateno = 200 && MoveContact
trigger3 = Stateno = 210 && MoveContact
trigger4 = Stateno = 230 && MoveContact
trigger5 = Stateno = 240 && MoveContact

;---------------------------------------------------------------------------
;Hand Blast
[State -1, Hand Blast]
type = ChangeState
value = 250
triggerall = !NumProj
triggerall = command = "QCF_x"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = Stateno = 200 && MoveContact
trigger3 = Stateno = 210 && MoveContact
trigger4 = Stateno = 230 && MoveContact
trigger5 = Stateno = 240 && MoveContact

;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno = 230 && MoveContact

;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno = 200 && MoveContact
trigger3 = Stateno = 230 && MoveContact

;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno = 200 && MoveContact

;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno = 200 && MoveContact
trigger3 = Stateno = 210 && MoveContact
trigger4 = Stateno = 230 && MoveContact

;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = Stateno = 430 && MoveContact

;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = Stateno = 400 && MoveContact
trigger3 = Stateno = 430 && MoveContact

;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = Stateno = 400 && MoveContact

;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = Stateno = 400 && MoveContact
trigger3 = Stateno = 430 && MoveContact

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

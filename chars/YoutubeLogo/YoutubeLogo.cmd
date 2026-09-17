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


;-| Hyper Motions |--------------------------------------------------------
[Command]
name = "Da Wae"     ;Required (do not remove)
command = ~D, F, a+b
time = 10

[Command]
name = "PUT YOUR HANDS UP"     ;Required (do not remove)
command = ~D, F, x+y
time = 10

;-| Special Motions |------------------------------------------------------
[Command]
name = "Demuken"     ;Required (do not remove)
command = ~D, F, x
time = 10

[Command]
name = "Crashin"     ;Required (do not remove)
command = ~D, F, y
time = 10

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
name = "DU"
command = ~D, U
time = 5

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

[Command]
name = "holdc";Required (do not remove)
command = /c
time = 1

; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;===========================================================================
;---------------------------------------------------------------------------
;He Doesn't Know Da Wae
[State -1, Da Wae]
type = ChangeState
value = 3005
triggerall = !var(59)>0
triggerall = StateType != A
triggerall = power >= 1500
triggerall = command = "Da Wae"
triggerall = numhelper(3006)=0
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 230 || stateno = 240 || stateno = 400 || stateno = 410 || stateno = 430 || stateno = 440) && movecontact
trigger2 = time > 2

;---------------------------------------------------------------------------
;PUT YOUR HANDS UP
[State -1, PUT YOUR HANDS UP]
type = ChangeState
value = 3000
triggerall = !var(59)>0
triggerall = StateType != A
triggerall = power >= 1000
triggerall = command = "PUT YOUR HANDS UP"
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 230 || stateno = 240 || stateno = 400 || stateno = 410 || stateno = 430 || stateno = 440) && movecontact
trigger2 = time > 2
trigger3 = stateno = 1000
trigger3 = time > 10

;===========================================================================
;---------------------------------------------------------------------------
;Demuken
[State -1, Demuken]
type = ChangeState
value = 1010
triggerall = !var(59)>0
triggerall = command = "Crashin"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 230 || stateno = 240 || stateno = 400 || stateno = 410 || stateno = 430 || stateno = 440) && movecontact
trigger2 = time > 2

;---------------------------------------------------------------------------
;Demuken
[State -1, Demuken]
type = ChangeState
value = 1000
triggerall = !var(59)>0
triggerall = numhelper(1001)= 0 && numhelper(1002) = 0
triggerall = command = "Demuken"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 230 || stateno = 240 || stateno = 400 || stateno = 410 || stateno = 430 || stateno = 440) && movecontact
trigger2 = time > 2

;---------------------------------------------------------------------------
;Demuken AIR
[State -1, Demuken AIR]
type = ChangeState
value = 1005
triggerall = !var(59)>0
triggerall = numhelper(1001)= 0 && numhelper(1002) = 0
triggerall = command = "Demuken"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600 || stateno = 610 || stateno = 630 || stateno = 640) && movecontact
trigger2 = time > 2

;===========================================================================
;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 1950
triggerall = !var(59)>0
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = !var(59)>0
triggerall = command = "z"
triggerall = statetype = S
triggerall = stateno != 100
trigger1 = ctrl

;---------------------------------------------------------------------------
;Super Jump
[State -1, Super Jump]
type = ChangeState
value = 900
triggerall = !var(59)>0
trigger1 = command = "DU"
trigger1 = ctrl
trigger1 = statetype != A
trigger2 = stateno = 410 && movecontact && (command = "holdup")
trigger2 = time > 1
ignorehitpause = 1

;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = !var(59)>0
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = !var(59)>0
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = !var(59)>0
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = !var(59)>0
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 230) && movecontact
trigger2 = time > 2

;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = !var(59)>0
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger2 = time > 2

;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = !var(59)>0
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 230) && movecontact
trigger2 = time > 2

;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = !var(59)>0
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger2 = time > 2

;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = !var(59)>0
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 230 || stateno = 400 || stateno = 430 || stateno = 440) && movecontact
trigger2 = time > 2

;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = !var(59)>0
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 230 || stateno = 400) && movecontact
trigger2 = time > 2

;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = !var(59)>0
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 230 || stateno = 240 || stateno = 400 || stateno = 430) && movecontact
trigger2 = time > 2

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = !var(59)>0
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = !var(59)>0
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600 || stateno = 630 || stateno = 640) && movecontact
trigger2 = time > 2

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = !var(59)>0
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger2 = time > 2

;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = !var(59)>0
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600 || stateno = 630) && movecontact
trigger2 = time > 2

;----------------------------------------------------------------------------------
;PowerCharge
[State -1, Powercharge]
type = Changestate
value = 905
triggerall = !var(59)>0
trigger1 = command = "holdc"
trigger1 = power < powermax
trigger1 = ctrl
trigger1 = statetype != A
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
command.buffer.time = 3

[Command]
name = "Hyper Charging S.T.A.R.S"
command = ~D,DF,F,x+y
time = 20

[Command]
name = "Hyper Charging S.T.A.R.S"
command = ~D,DF,F,y+z
time = 20

[Command]
name = "Hyper Charging S.T.A.R.S"
command = ~D,DF,F,x+z
time = 20

[Command]
name = "Rocket Launcher"
command = ~D,DF,F,a+b
time = 20

[Command]
name = "Rocket Launcher"
command = ~D,DF,F,b+c
time = 20

[Command]
name = "Rocket Launcher"
command = ~D,DF,F,a+c
time = 20

[Command]
name = "Code: T-002"
command = ~D,DB,B,a+b
time = 20

[Command]
name = "Code: T-002"
command = ~D,DB,B,b+c
time = 20

[Command]
name = "Code: T-002"
command = ~D,DB,B,a+c
time = 20

[Command]
name = "Grenade Launcher A"
command = ~F, DF, F, x
time = 20

[Command]
name = "Grenade Launcher B"
command = ~F, DF, F, y
time = 20

[Command]
name = "Grenade Launcher B"
command = ~F, DF, F, z
time = 20

[Command]
name = "release_z"
command = ~z
time = 1

[Command]
name = "S.T.A.R.S Charge X"
command = ~D,DF,F,x
time = 15

[Command]
name = "S.T.A.R.S Charge Y"
command = ~D,DF,F,y
time = 15

[Command]
name = "S.T.A.R.S Charge Z"
command = ~D,DF,F,z
time = 15

[Command]
name = "Emergency Dodge (Zombie A)" 
command = ~D,DB,B,a
time = 15

[Command]
name = "Emergency Dodge (Zombie A)" 
command = ~D,DB,B,b
time = 15

[Command]
name = "Emergency Dodge (Zombie B)" 
command = ~D,DB,B,c
time = 15

[Command]
name = "Emergency Dodge (Cerberus)"
command = ~D,DF,F,a
time = 15

[Command]
name = "Emergency Dodge (Cerberus)"
command = ~D,DF,F,b
time = 15

[Command]
name = "Emergency Dodge (Crow)"
command = ~D,DF,F,c
time = 15

[Command]
name = "Return Fire"
command = ~$F, $D, $B, x

[Command]
name = "Return Fire"
command = ~$F, $D, $B, y

[Command]
name = "Return Fire"
command = ~$F, $D, $B, z

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

;Required (do not remove) 
	 
[Command] 
name = "highjump"
command = $D, $U
time = 8

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
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

[Command]
name = "a"
command = a
time = 1
buffer.time = 1

[Command]
name = "b"
command = b
time = 1
buffer.time = 1

[Command]
name = "c"
command = c
time = 1
buffer.time = 1

[Command]
name = "x"
command = x
time = 1
buffer.time = 1

[Command]
name = "y"
command = y
time = 1
buffer.time = 1

[Command]
name = "z"
command = z
time = 1
buffer.time = 1

[Command]
name = "start"
command = s
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

[Command]
name = "dash"
command = x+y
time = 1
buffer.time = 1
[Command]
name = "dash"
command = x+z
time = 1
buffer.time = 1
[Command]
name = "dash"
command = y+z
time = 1
buffer.time = 1
  
[Statedef -1] 

[State -1, Hyper Charging S.T.A.R.S]
type = ChangeState
value = 3000
triggerall = roundstate = 2 && !var(59)
triggerall = command = "Hyper Charging S.T.A.R.S"
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = Ctrl
trigger2 = StateNo = [200,499] 
trigger3 = StateNo = [1000,1002]
trigger4 = Stateno = 1010
trigger5 = stateno = 1020
trigger6 = stateno = 1040
trigger7 = stateno = 1042
trigger8 = stateno = [1060,1061]


[State -1, Hyper Charging S.T.A.R.S]
type = ChangeState
value = 3000
triggerall = roundstate = 2 && !var(59)
triggerall = command = "Hyper Charging S.T.A.R.S"
triggerall = statetype = A
triggerall = power >= 1000
trigger1 = Ctrl
trigger2 = StateNo = [600,699] 
trigger3 = StateNo = [1005,1007]

[State -1, Rocket Launcher]
type = ChangeState
value = 3010
triggerall = roundstate = 2 && !var(59)
triggerall = command = "Rocket Launcher"
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = Ctrl
trigger2 = StateNo = [200,499]
trigger3 = StateNo = [1000,1002]
trigger4 = Stateno = 1010
trigger5 = stateno = 1020
trigger6 = stateno = 1040
trigger7 = stateno = 1042
trigger8 = stateno = [1060,1061] 

[State -1, Code: T-002]
type = ChangeState
value = 3020
triggerall = roundstate = 2 && !var(59)
triggerall = command = "Code: T-002"
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = Ctrl
trigger2 = StateNo = [200,499]
trigger3 = StateNo = [1000,1002]
trigger4 = Stateno = 1010
trigger5 = stateno = 1020
trigger6 = stateno = 1040
trigger7 = stateno = 1042
trigger8 = stateno = [1060,1061] 


; ƒoƒbƒNƒ_ƒbƒVƒ…
[State -1]
type = ChangeState
value = 105
triggerall = roundstate = 2 && !var(59)
triggerall = stateno != 105
triggerall = stateno != 100
trigger1 = (command = "holdback2" && command = "recovery") || (StateType != A && command = "BB")
trigger1 = statetype = S && ctrl

; ƒ_ƒbƒVƒ… 
[State -1]
type = ChangeState
value = 100
triggerall = roundstate = 2 && !var(59)
triggerall = stateno != 100
triggerall = stateno != 105
trigger1 = (command = "recovery") || (StateType != A && command = "FF")
trigger1 = statetype != A && ctrl

[State -1, Return Fire]
type = ChangeState
value = 1030
triggerall = roundstate = 2 && !var(59)
triggerall = command = "Return Fire"
triggerall = statetype != A
trigger1 = Ctrl
trigger2 = StateNo = [200,499] 

[State -1, Grenade Launcher A]
type = ChangeState
value = 1060
triggerall = roundstate = 2 && !var(59)
triggerall = command = "Grenade Launcher A"
triggerall = statetype != A
trigger1 = Ctrl
trigger2 = StateNo = [200,499] 

[State -1, Grenade Launcher B]
type = ChangeState
value = 1061
triggerall = roundstate = 2 && !var(59)
triggerall = command = "Grenade Launcher B"
triggerall = statetype != A
trigger1 = Ctrl
trigger2 = StateNo = [200,499] 

;
[State -1, S.T.A.R.S Charge Light]
type = ChangeState
value = 1000
triggerall = roundstate = 2 && !var(59)
triggerall = command = "S.T.A.R.S Charge X"
triggerall = statetype != A
trigger1 = Ctrl
trigger2 = StateNo = [200,499]

[State -1, S.T.A.R.S Charge Medium]
type = ChangeState
value = 1001
triggerall = roundstate = 2 && !var(59)
triggerall = command = "S.T.A.R.S Charge Y"
triggerall = statetype != A
trigger1 = Ctrl
trigger2 = StateNo = [200,499] 

[State -1, S.T.A.R.S Charge Heavy]
type = ChangeState
value = 1002
triggerall = roundstate = 2 && !var(59)  &&  var(17) >= 2
triggerall = command = "release_z"
triggerall = statetype != A
trigger1 = Ctrl
trigger2 = StateNo = [200,499] 

[State -1, Air S.T.A.R.S Charge Light]
type = ChangeState
value = 1005
triggerall = roundstate = 2 && !var(59)
triggerall = command = "S.T.A.R.S Charge X"
triggerall = statetype = A
trigger1 = Ctrl
trigger2 = StateNo = [600,699] 

[State -1, Air S.T.A.R.S Charge Medium]
type = ChangeState
value = 1006
triggerall = roundstate = 2 && !var(59)
triggerall = command = "S.T.A.R.S Charge Y"
triggerall = statetype = A
trigger1 = Ctrl
trigger2 = StateNo = [600,699] 

[State -1, Air S.T.A.R.S Charge Heavy]
type = ChangeState
value = 1007
triggerall = roundstate = 2 && !var(59) && var(17) >=2
triggerall = command = "release_z"
triggerall = statetype = A
trigger1 = Ctrl
trigger2 = StateNo = [600,699] 

[State -1, Emergency Dodge, Zombie]
type = ChangeState
value = 1040
triggerall = !numhelper(1045)
triggerall = roundstate = 2 && !var(59)
triggerall = command = "Emergency Dodge (Zombie A)"
triggerall = statetype != A
trigger1 = Ctrl
trigger2 = StateNo = [200,499] 

[State -1, Emergency Dodge, Burning Zombie]
type = ChangeState
value = 1042
triggerall = !numhelper(1045)
triggerall = roundstate = 2 && !var(59)
triggerall = command = "Emergency Dodge (Zombie B)"
triggerall = statetype != A
trigger1 = Ctrl
trigger2 = StateNo = [200,499] 

[State -1, Emergency Dodge, Cerberus]
type = ChangeState
value = 1010
triggerall = !numhelper(1015)
triggerall = roundstate = 2 && !var(59)
triggerall = command = "Emergency Dodge (Cerberus)"
triggerall = statetype != A
trigger1 = Ctrl
trigger2 = StateNo = [200,499] 

[State -1, Emergency Dodge, Crow]
type = ChangeState
value = 1020
triggerall = !numhelper(1025)
triggerall = roundstate = 2 && !var(59)
triggerall = command = "Emergency Dodge (Crow)"
triggerall = statetype != A
trigger1 = Ctrl
trigger2 = StateNo = [200,499] 

[State -1]
type = ChangeState
value = 800
triggerall = roundstate = 2 && !var(59)
trigger1 = command = "z" && (command = "holdfwd" || command = "holdback")
trigger1 = p2bodydist x < 18 && enemynear,movetype != H
trigger1 = statetype = S && ctrl

[State -1]
type = ChangeState
value = 830
triggerall = command = "z"
triggerall = statetype = A
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 15
trigger1 = (p2statetype = A)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 20
trigger2 = (p2statetype = A)
trigger2 = p2movetype != H



[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = roundstate = 2 && !var(59)
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = roundstate = 2 && !var(59)
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = 200 && MoveContact
trigger3 = StateNo = 400 && MoveContact
trigger4 = StateNo = 430 && MoveContact
trigger5 = StateNo = 230 && MoveContact

;Stand Hard Punch
[State -1, Stand Hard Punch]
type = ChangeState
value = 220
triggerall = roundstate = 2 && !var(59)
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = 200 && MoveContact
trigger3 = StateNo = 400 && MoveContact
trigger4 = StateNo = 430 && MoveContact
trigger5 = StateNo = 230 && MoveContact
trigger6 = StateNo = 210 && MoveContact
trigger7 = StateNo = 410 && MoveContact
trigger8 = StateNo = 440 && MoveContact
trigger9 = StateNo = 240 && MoveContact
trigger10 = StateNo = 245 && MoveContact
trigger11 = StateNo = 215 && MoveContact

;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = roundstate = 2 && !var(59)
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = roundstate = 2 && !var(59)
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = 200 && MoveContact
trigger3 = StateNo = 400 && MoveContact
trigger4 = StateNo = 430 && MoveContact
trigger5 = StateNo = 230 && MoveContact

;Standing Hard Kick
[State -1, Standing HArd Kick]
type = ChangeState
value = 250
triggerall = roundstate = 2 && !var(59)
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = 200 && MoveContact
trigger3 = StateNo = 400 && MoveContact
trigger4 = StateNo = 430 && MoveContact
trigger5 = StateNo = 230 && MoveContact
trigger6 = StateNo = 210 && MoveContact
trigger7 = StateNo = 410 && MoveContact
trigger8 = StateNo = 440 && MoveContact
trigger9 = StateNo = 240 && MoveContact
trigger10 = StateNo = 245 && MoveContact
trigger11 = StateNo = 215 && MoveContact

[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = roundstate = 2 && !var(59)
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = StateNo = 200 && MoveContact
trigger3 = StateNo = 400 && MoveContact
trigger4 = StateNo = 430 && MoveContact
trigger5 = StateNo = 230 && MoveContact

;Crouching Hard Punch
[State -1, Crouching Hard Punch]
type = ChangeState
value = 420
triggerall = roundstate = 2 && !var(59)
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = StateNo = 200 && MoveContact
trigger3 = StateNo = 400 && MoveContact
trigger4 = StateNo = 430 && MoveContact
trigger5 = StateNo = 230 && MoveContact
trigger6 = StateNo = 210 && MoveContact
trigger7 = StateNo = 410 && MoveContact
trigger8 = StateNo = 440 && MoveContact
trigger9 = StateNo = 240 && MoveContact
trigger10 = StateNo = 245 && MoveContact
trigger11 = StateNo = 215 && MoveContact

;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = roundstate = 2 && !var(59)
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = roundstate = 2 && !var(59)
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = StateNo = 200 && MoveContact
trigger3 = StateNo = 400 && MoveContact
trigger4 = StateNo = 430 && MoveContact
trigger5 = StateNo = 230 && MoveContact

;Crouching Hard Kick
[State -1, Crouching Hard Kick]
type = ChangeState
value = 450
triggerall = roundstate = 2 && !var(59)
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = StateNo = 200 && MoveContact
trigger3 = StateNo = 400 && MoveContact
trigger4 = StateNo = 430 && MoveContact
trigger5 = StateNo = 230 && MoveContact
trigger6 = StateNo = 210 && MoveContact
trigger7 = StateNo = 410 && MoveContact
trigger8 = StateNo = 440 && MoveContact
trigger9 = StateNo = 240 && MoveContact
trigger10 = StateNo = 245 && MoveContact
trigger11 = StateNo = 215 && MoveContact

;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = roundstate = 2 && !var(59)
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = roundstate = 2 && !var(59)
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = MoveContact
trigger3 = StateNo = 630
trigger3 = MoveContact

;Jump Hard Punch
[State -1, Jump Hard Punch]
type = ChangeState
value = 620
triggerall = roundstate = 2 && !var(59)
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 600
trigger2 = MoveContact
trigger3 = StateNo = 610
trigger3 = MoveContact
trigger4 = StateNo = 630
trigger4 = MoveContact
trigger5 = StateNo = 640
trigger5 = MoveContact

;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = roundstate = 2 && !var(59)
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 600
trigger2 = MoveContact

;Jump medium Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = roundstate = 2 && !var(59)
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 600
trigger2 = MoveContact
trigger3 = StateNo = 610
trigger3 = MoveContact
trigger4 = StateNo = 630
trigger4 = MoveContact

;Jump hard Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = roundstate = 2 && !var(59)
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 600
trigger2 = MoveContact
trigger3 = StateNo = 610
trigger3 = MoveContact
trigger4 = StateNo = 630
trigger4 = MoveContact
trigger5 = StateNo = 640
trigger5 = MoveContact
trigger6= StateNo =620 && MoveContact

; ‹ó’†ƒWƒƒƒ“ƒv
[State -1]
type = ChangeState
value = 45
triggerall = roundstate = 2 && !var(59)
trigger1 = command = "holdup"
trigger1 = statetype = A && ctrl
trigger1 = vel y > 0 && var(2) && !var(3)

; ƒLƒƒƒ“ƒZƒ‹ƒWƒƒƒ“ƒv
[State -1]
type = ChangeState
value = 40
triggerall = roundstate = 2 && !var(59)
triggerall = command = "holdup" && !var(1) && prevstateno != 810
trigger1 = stateno = [100,102]
trigger2 = stateno = [105,107]
trigger3 = stateno = 420 && movehit

; ‚µ‚á‚ª‚Ý
[State 106, ChangeState]
type = ChangeState
triggerall = command = "holddown" && prevstateno != 810
trigger1 = stateno = [100,102]
trigger2 = stateno = [105,107]
value = 10
ctrl = 1


; ƒAƒhƒoƒ“ƒVƒ“ƒOƒK[ƒh 
[State -1]
type = VarSet
triggerall = roundstate = 2 && !var(59)
triggerall = !numhelper(8060)
triggerall = command = "dash"
trigger1 = stateno = 150
trigger2 = stateno = 152
trigger3 = stateno = 154
var(11) = 1
ignorehitpause = 1
 
; ’§”­ 
[State -1]
type = ChangeState
value = 195
triggerall = roundstate = 2 && !var(59)
triggerall = command = "start"
trigger1 = statetype != A && ctrl
trigger2 = (stateno = 101 || stateno = 106) && time > 3
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

;---------------------Hypers-------------------------------
;Hyper Viper Beam
[Command]
name = "qcf_PP"
command = ~D,DF,F,x+y
time = 20

[Command]
name = "qcf_PP"
command = ~D,DF,F,y+z
time = 20

[Command]
name = "qcf_PP"
command = ~D,DF,F,x+z
time = 20

;Time Flip
[Command]
name = "qcf_KK"
command = ~D,DF,F,a+b
time = 20

[Command]
name = "qcf_KK"
command = ~D,DF,F,b+c
time = 20

[Command]
name = "qcf_KK"
command = ~D,DF,F,a+c
time = 20

;---------------------Specials-----------------------------
;Viper Beam
[Command]
name = "qcf_x"
command = ~D,DF,F,x

[Command]
name = "qcf_y"
command = ~D,DF,F,y

[Command]
name = "qcf_z"
command = ~D,DF,F,z

;Viper Beam negative edge
[Command]
name = "qcf_x"
command = ~D,DF,F,~x
time = 10
buffer.time = 10

[Command]
name = "qcf_y"
command = ~D,DF,F,~y
time = 10
buffer.time = 10

[Command]
name = "qcf_z"
command = ~D,DF,F,~z
time = 10
buffer.time = 10

;Pscimitar Uppercut
[Command]
name = "z-mo-f_x"
command = ~F,D,DF,F,x

[Command]
name = "z-mo-f_y"
command = ~F,D,DF,F,y

[Command]
name = "z-mo-f_z"
command = ~F,D,DF,F,z

;Pscimitar Uppercut negative edge
[Command]
name = "z-mo-f_x"
command = ~F,D,DF,F,~x
time = 10
buffer.time = 10

[Command]
name = "z-mo-f_y"
command = ~F,D,DF,F,~y
time = 10
buffer.time = 10

[Command]
name = "z-mo-f_z"
command = ~F,D,DF,F,~z
time = 10
buffer.time = 10

;Crack Down
[Command]
name = "qcf_a"
command = ~D,DF,F,a

[Command]
name = "qcf_b"
command = ~D,DF,F,b

[Command]
name = "qcf_c"
command = ~D,DF,F,c

;Crack Down negative edge
[Command]
name = "qcf_a"
command = ~D,DF,F,~a
time = 10
buffer.time = 10

[Command]
name = "qcf_b"
command = ~D,DF,F,~b
time = 10
buffer.time = 10

[Command]
name = "qcf_c"
command = ~D,DF,F,~c
time = 10
buffer.time = 10

;Elec-Trap
[Command]
name = "qcb_a"
command = ~D,DB,B,a

[Command]
name = "qcb_b"
command = ~D,DB,B,b

[Command]
name = "qcb_c"
command = ~D,DB,B,c

;Elec-Trap negative edge
[Command]
name = "qcb_a"
command = ~D,DB,B,~a
time = 10
buffer.time = 10

[Command]
name = "qcb_b"
command = ~D,DB,B,~b
time = 10
buffer.time = 10

[Command]
name = "qcb_c"
command = ~D,DB,B,~c
time = 10
buffer.time = 10

;Psycharge
[Command]
name = "hcb_x"
command = ~F, $D, B, x

[Command]
name = "hcb_y"
command = ~F, $D, B, y

[Command]
name = "hcb_z"
command = ~F, $D, B, z

;Psycharge negative edge
[Command]
name = "hcb_x"
command = ~F, $D, B, ~x
time = 10
buffer.time = 10

[Command]
name = "hcb_y"
command = ~F, $D, B, ~y
time = 10
buffer.time = 10

[Command]
name = "hcb_z"
command = ~F, $D, B, ~z
time = 10
buffer.time = 10

[Command]
name = "RecoveryRoll"
command = B, DB, D, x
time = 25
[Command]
name = "RecoveryRoll"
command = B, DB, D, y
time = 25
[Command]
name = "RecoveryRoll"
command = B, DB, D, z
time = 25
[Command]
name = "RecoveryRoll2"
command = B, DB, D, a
time = 25
[Command]
name = "RecoveryRoll2"
command = B, DB, D, b
time = 25
[Command]
name = "RecoveryRoll2"
command = B, DB, D, c
time = 25
  
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

[Command] ;Tap b rapidly
name = "5x"
command = x, x, x, x
time = 30

[Command] ;Tap b rapidly
name = "5y"
command = y, y, y, y
time = 30

[Command] ;Tap b rapidly
name = "5z"
command = z, z, z, z
time = 30
  
[Statedef -1] 

[State -1]
type = ChangeState
value = 3050
triggerall = !numhelper(3101)
triggerall = roundstate = 2 && !var(59)
triggerall = command = "qcf_PP"
triggerall = Power >= 1000
trigger1 = statetype = A && ctrl
trigger2 = stateno = [600,699]
trigger3 = stateno = [1050, 1070]
trigger4 = stateno = [1100, 1120]
trigger5 = stateno = [1250, 1270]

[State -1]
type = ChangeState
value = 3100
triggerall = !numhelper(3101)
triggerall = roundstate = 2 && !var(59)
triggerall = command = "qcf_KK"
triggerall = Power >= 1000
trigger1 = statetype != A && ctrl
trigger2 = stateno = 101 && prevstateno != 810
trigger3 = stateno = [200,499]
trigger4 = stateno = [1000, 1020]
trigger5 = stateno = [1200, 1220]
trigger6 = stateno = [1300, 1320]

[State -1]
type = ChangeState
value = 3000
triggerall = !numhelper(3101)
triggerall = roundstate = 2 && !var(59)
triggerall = command = "qcf_PP"
triggerall = Power >= 1000
trigger1 = statetype != A && ctrl
trigger2 = stateno = 101 && prevstateno != 810
trigger3 = stateno = [200,499]
trigger4 = stateno = [1000, 1020]
trigger5 = stateno = [1200, 1220]
trigger6 = stateno = [1300, 1320]


[State -1]
type = ChangeState
value = 1400
triggerall = roundstate = 2 && !var(59)
trigger1 = command = "hcb_x"
trigger1 = statetype != A && ctrl


[State -1]
type = ChangeState
value = 1410
triggerall = roundstate = 2 && !var(59)
trigger1 = command = "hcb_y"
trigger1 = statetype != A && ctrl

[State -1]
type = ChangeState
value = 1420
triggerall = roundstate = 2 && !var(59)
trigger1 = command = "hcb_z"
trigger1 = statetype != A && ctrl


[State -1]
type = ChangeState
value = 1320
triggerall = roundstate = 2 && !var(59)
triggerall = command = "qcf_c"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 101 && prevstateno != 810
trigger3 = stateno = [200,499]


[State -1]
type = ChangeState
value = 1310
triggerall = roundstate = 2 && !var(59)
triggerall = command = "qcf_b"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 101 && prevstateno != 810
trigger3 = stateno = [200,499]


[State -1]
type = ChangeState
value = 1300
triggerall = roundstate = 2 && !var(59)
triggerall = command = "qcf_a"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 101 && prevstateno != 810
trigger3 = stateno = [200,499]

[State -1]
type = ChangeState
value = 1270
triggerall = !numhelper(1200)
triggerall = roundstate = 2 && !var(59)
triggerall = command = "qcb_c"
trigger1 = statetype = A &&ctrl
trigger2 =  stateno = [600,699]

[State -1]
type = ChangeState
value = 1260
triggerall = !numhelper(1200)
triggerall = roundstate = 2 && !var(59)
triggerall = command = "qcb_b"
trigger1 = statetype = A &&ctrl
trigger2 =  stateno = [600,651]



[State -1]
type = ChangeState
value = 1250
triggerall = !numhelper(1200)
triggerall = roundstate = 2 && !var(59)
triggerall = command = "qcb_a"
trigger1 = statetype = A &&ctrl
trigger2 =  stateno = [600,651]


[State -1]
type = ChangeState
value = 1200
triggerall = !numhelper(1200)
triggerall = roundstate = 2 && !var(59)
triggerall = command = "qcb_a"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 101 && prevstateno != 810
trigger3 =  stateno = [200,499]

[State -1]
type = ChangeState
value = 1210
triggerall = !numhelper(1200)
triggerall = roundstate = 2 && !var(59)
triggerall = command = "qcb_b"
trigger1 = statetype != A && ctrl
trigger2 =  stateno = 101 && prevstateno != 810
trigger3 = stateno = [200,499]


[State -1]
type = ChangeState
value = 1220
triggerall = !numhelper(1200)
triggerall = roundstate = 2 && !var(59)
triggerall = command = "qcb_c"
trigger1 = ctrl
trigger2 = statetype != A && stateno = 101 && prevstateno != 810
trigger3 = statetype != A && stateno = [200,499]

[State -1]
type = ChangeState
value = 1120
triggerall = roundstate = 2 && !var(59)
triggerall = command = "z-mo-f_z"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 101 && prevstateno != 810
trigger3 = stateno = [200,499]


[State -1]
type = ChangeState
value = 1110
triggerall = roundstate = 2 && !var(59)
triggerall = command = "z-mo-f_y"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 101 && prevstateno != 810
trigger3 = stateno = [200,499]

[State -1]
type = ChangeState
value = 1100
triggerall = roundstate = 2 && !var(59)
triggerall = command = "z-mo-f_x"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 101 && prevstateno != 810
trigger3 = stateno = [200,499]

[State -1]
type = ChangeState
value = 1070
triggerall = roundstate = 2 && !var(59)
triggerall = command = "qcf_z"
trigger1 = statetype = A && ctrl
trigger2 = stateno = [600,651]

[State -1]
type = ChangeState
value = 1060
triggerall = roundstate = 2 && !var(59)
triggerall = command = "qcf_y"
trigger1 = statetype = A && ctrl
trigger2 = stateno = [600,651]

[State -1]
type = ChangeState
value = 1050
triggerall = roundstate = 2 && !var(59)
triggerall = command = "qcf_x"
trigger1 = statetype = A && ctrl
trigger2 = stateno = [600,651]

[State -1]
type = ChangeState
value = 1020
triggerall = roundstate = 2 && !var(59)
triggerall = command = "qcf_z"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 101 && prevstateno != 810
trigger3 = stateno = [200,499]

[State -1]
type = ChangeState
value = 1010
triggerall = roundstate = 2 && !var(59)
triggerall = command = "qcf_y"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 101 && prevstateno != 810
trigger3 = stateno = [200,499]



[State -1]
type = ChangeState
value = 1000
triggerall = roundstate = 2 && !var(59)
triggerall = command = "qcf_x"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 101 && prevstateno != 810
trigger3 = stateno = [200,499]


;Kick Throw 
[State -1]
type = ChangeState
value = 900
triggerall = roundstate = 2 && !var(59)
trigger1 = command = "c" && (command = "holdfwd" || command = "holdback")
trigger1 = p2bodydist x < 18 && enemynear,movetype != H
trigger1 = statetype = S && ctrl

;Air Kick Throw
[State -1]
type = ChangeState
value = 910
triggerall = roundstate = 2 && !var(59)
trigger1 = command = "c" && (command = "holdfwd" || command = "holdback")
trigger1 = p2bodydist x < 20 && abs(p2bodydist y) < 20 && enemynear,movetype != H
trigger1 = statetype = A && ctrl

[State -1]
type = ChangeState
value = 251
triggerall = roundstate = 2 && !var(59)
triggerall = command = "c" && command != "holddown" && command = "holdfwd"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 101 && prevstateno != 810
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact

; —§‚¿ŽãP 
[State -1]
type = ChangeState
value = 200
triggerall = roundstate = 2 && !var(59)
triggerall = command = "x" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 101 && prevstateno != 810


; —§‚¿’†P
[State -1]
type = ChangeState
value = 210
triggerall = roundstate = 2 && !var(59)
triggerall = command = "y" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 101 && prevstateno != 810
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 430 && movecontact

[State -1]
type = ChangeState
value = 210
triggerall = statetype != A
triggerall = command = "holddownfwd"
triggerall = command = "z"
trigger1 = ctrl


; —§‚¿‹­P
[State -1]
type = ChangeState
value = 220
triggerall = roundstate = 2 && !var(59)
triggerall = command = "z" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 101 && prevstateno != 810
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact

; —§‚¿ŽãK
[State -1]
type = ChangeState
value = 230
triggerall = roundstate = 2 && !var(59)
triggerall = command = "a" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 101 && prevstateno != 810
trigger3 = stateno = 200 && movecontact


; —§‚¿’†K
[State -1]
type = ChangeState
value = 240
triggerall = roundstate = 2 && !var(59)
triggerall = command = "b" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 101 && prevstateno != 810
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact

; —§‚¿‹­K
[State -1]
type = ChangeState
value = 250
triggerall = roundstate = 2 && !var(59)
triggerall = command = "c" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 101 && prevstateno != 810
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact
 
; ‚µ‚á‚ª‚ÝŽãP 
[State -1]
type = ChangeState
value = 400
triggerall = roundstate = 2 && !var(59)
triggerall = command = "x" && command = "holddown"
trigger1 = statetype = C && ctrl


; ‚µ‚á‚ª‚Ý’†P
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

; ‚µ‚á‚ª‚Ý‹­P
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

; ‚µ‚á‚ª‚ÝŽãK
[State -1]
type = ChangeState
value = 430
triggerall = roundstate = 2 && !var(59)
triggerall = command = "a" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 400 && movecontact


; ‚µ‚á‚ª‚Ý’†K
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

; ‚µ‚á‚ª‚Ý‹­K
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
 
; ƒWƒƒƒ“ƒvŽãP 
[State -1]
type = ChangeState
value = 600
triggerall = roundstate = 2 && !var(59)
triggerall = command = "x"
trigger1 = statetype = A && ctrl

; ƒWƒƒƒ“ƒv’†P
[State -1]
type = ChangeState
value = 610
triggerall = roundstate = 2 && !var(59)
triggerall = command = "y"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 630 && movecontact

; ƒWƒƒƒ“ƒv‹­P
[State -1]
type = ChangeState
value = 620
triggerall = roundstate = 2 && !var(59)
triggerall = command = "z"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 640 && movecontact

; ƒWƒƒƒ“ƒvŽãK
[State -1]
type = ChangeState
value = 630
triggerall = roundstate = 2 && !var(59)
triggerall = command = "a"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact

; ƒWƒƒƒ“ƒv’†K
[State -1]
type = ChangeState
value = 640
triggerall = roundstate = 2 && !var(59)
triggerall = command = "b"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact

; ƒWƒƒƒ“ƒv‹­K
[State -1]
type = ChangeState
value = 650
triggerall = roundstate = 2 && !var(59)
triggerall = command = "c"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 640 && movecontact
 
; ƒ_ƒbƒVƒ… 
[State -1]
type = ChangeState
value = 100
triggerall = roundstate = 2 && !var(59)
trigger1 = command = "FF"
trigger1 = statetype = S && ctrl

; ƒoƒbƒNƒ_ƒbƒVƒ…
[State -1]
type = ChangeState
value = 105
triggerall = roundstate = 2 && !var(59)
trigger1 = command = "BB"
trigger1 = statetype = S && ctrl

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
trigger2 = stateno = 210 && movehit

; ‚µ‚á‚ª‚Ý
[State 106, ChangeState]
type = ChangeState
triggerall = command = "holddown" && prevstateno != 810
trigger1 = stateno = [100,102]
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
trigger2 = stateno = 101 && time > 3
 

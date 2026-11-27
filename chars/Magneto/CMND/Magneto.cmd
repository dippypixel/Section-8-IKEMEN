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


;Hypers
;Magnetic Shockwave-------------------
[Command]
name = "236PP"
command = ~D,DF,F,x+y
time = 20

[Command]
name = "236PP"
command = ~D,DF,F,y+z
time = 20

[Command]
name = "236PP"
command = ~D,DF,F,x+z
time = 20

;Magnetic Tempest-------------------
[Command]
name = "236KK"
command = ~D,DF,F,a+b
time = 20

[Command]
name = "236KK"
command = ~D,DF,F,b+c
time = 20

[Command]
name = "236KK"
command = ~D,DF,F,a+c
time = 20

;Specials
;Magnetic Blast------------------------
[Command]
name = "896_punch_x"
command = ~U, UF, F, x

[Command]
name = "896_punch_y"
command = ~U, UF, F, y

[Command]
name = "896_punch_z"
command = ~U, UF, F, z
;--------------------------------------

;EM Disruptor--------------------------
[Command]
name = "426_punch"
command =~$B, $D, $F, x

[Command]
name = "426_punch"
command = ~$B, $D, $F, y

[Command]
name = "426_punch"
command = ~$B, $D, $F, z

;--------------------------------------

;Magnetic Forcefield--------------------------
[Command]
name = "426_kick"
command = ~$B, $D, $F, a

[Command]
name = "426_kick"
command = ~$B, $D, $F, b

[Command]
name = "426_kick_c"
command = ~$B, $D, $F, c

;--------------------------------------
;Hyper Grav----------------------------
[Command]
name = "624a"
command = ~$F, $D, $B, a

[Command]
name = "624b"
command = ~$F, $D, $B, b

[Command]
name = "624c"
command = ~$F, $D, $B, c

;Flight--------------------------------
[Command]
name = "214_KK"
command = ~D, DB, B, a+b

[Command]
name = "214_KK"
command = ~D, DB, B, b+c

[Command]
name = "214_KK"
command = ~D, DB, B, a+c

[Command]
name = "Air Dash UF"
command = /$UF, x+y
time = 3
[Command]
name = "Air Dash UF"
command = /$UF, x+z
time = 3
[Command]
name = "Air Dash UF"
command = /$UF, y+z
time = 3
[Command]
name = "Air Dash U"
command = /$U, x+y
time = 3
[Command]
name = "Air Dash U"
command = /$U, x+z
time = 3
[Command]
name = "Air Dash U"
command = /$U, z+y
time = 3
[Command]
name = "Air Dash UB"
command = /$UB, x+y
time = 3
[Command]
name = "Air Dash UB"
command = /$UB, x+z
time = 3
[Command]
name = "Air Dash UB"
command = /$UB, z+y
time = 3
[Command]
name = "Air Dash B"
command = /$B, x+y
time = 3
[Command]
name = "Air Dash B"
command = /$B, x+z
time = 3
[Command]
name = "Air Dash B"
command = /$B, z+y
time = 3
[Command]
name = "Air Dash DB"
command = /$DB, x+y
time = 3
[Command]
name = "Air Dash DB"
command = /$DB, x+z
time = 3
[Command]
name = "Air Dash DB"
command = /$DB, z+y
time = 3
[Command]
name = "Air Dash D"
command = /$D, x+y
time = 3
[Command]
name = "Air Dash D"
command = /$D, x+z
time = 3
[Command]
name = "Air Dash D"
command = /$D, z+y
time = 3
[Command]
name = "Air Dash DF"
command = /$DF, x+y
time = 3
[Command]
name = "Air Dash DF"
command = /$DF, x+z
time = 3
[Command]
name = "Air Dash DF"
command = /$DF, z+y
time = 3
[Command]
name = "Air Dash F"
command = /$F, x+y
time = 3
[Command]
name = "Air Dash F"
command = /$F, y+z
time = 3
[Command]
name = "Air Dash F"
command = /$F, x+z
time = 3

;-| 2/3 Button Combination |-----------------------------------------------

[Command]
name = "Air Dash Neutral"
command = x+z
time = 3
[Command]
name = "Air Dash Neutral"
command = x+y
time = 3
[Command]
name = "Air Dash Neutral"
command = y+z
time = 3

;-----------------------------------------

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
command = $D
time = 1
buffer.time = 8

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
name = "holdup"
command = /$U
time = 1
buffer.time = 1

[Command]
name = "holdback2"
command = /B
time = 1

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

;Magnetic Tempest
[State -1]
type = ChangeState
value = 3050
triggerall = roundstate = 2 && !var(59) && var(6) < 2
triggerall = command = "236KK"
triggerall = power >= 1000
triggerall = Statetype = A
trigger1 = (ctrl || Stateno = 1335)
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 620 && movecontact
trigger5 = stateno = 630 && movecontact
trigger6 = stateno = 640 && movecontact
trigger7 = stateno = 650 && movecontact
trigger8 = stateno = 632 && movecontact
trigger9 = stateno = 1265 && animelem = 11,>0
trigger10 = stateno = 1700 && animelem = 7,>0
trigger11 = stateno = 1240 && animelem = 5,>0
trigger12 = stateno = 1241 && animelem = 5,>0
trigger13 = stateno = 1242 && animelem = 5,>0

;Magnetic Tempest
[State -1]
type = ChangeState
value = 3020
triggerall = roundstate = 2 && !var(59) && var(6) < 2
triggerall = command = "236KK"
triggerall = power >= 1000
triggerall = Statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && animelem = 6,>0
trigger10 = stateno = 420 && movecontact
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 440 && movecontact
trigger13 = stateno = 450 && movecontact
trigger14 = stateno = 450 && movecontact
trigger15 = stateno = 1260 && animelem = 15,>0
trigger16 = stateno = 1700 && animelem = 7,>0


;Magnetic Shockwave
[State -1]
type = ChangeState
value = 3000
triggerall = roundstate = 2 && !var(59) && var(6) < 2
triggerall = command = "236PP"
triggerall = power >= 1000
triggerall = StateType != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && animelem = 6,>0
trigger10 = stateno = 420 && movecontact
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 440 && movecontact
trigger13 = stateno = 450 && movecontact
trigger14 = stateno = 450 && movecontact
trigger15 = stateno = 1260 && animelem = 15,>0
trigger16 = stateno = 1700 && animelem = 7,>0



;Hyper Grav
[State -1]
type = ChangeState
value = 1700
triggerall = NumHelper(1711) = 0
triggerall = NumHelper(1712) = 0
triggerall = NumHelper(1713) = 0
triggerall = NumHelper(1714) = 0
triggerall = roundstate = 2 && !var(59) && var(6) < 2
triggerall = command = "624a"|| command = "624b" || command = "624c"
trigger1 = (ctrl || Stateno = 1335)
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && animelem = 6,>0
trigger10 = stateno = 420 && movecontact
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 440 && movecontact
trigger13 = stateno = 450 && movecontact
trigger14 = stateno = 600 && movecontact
trigger15 = stateno = 610 && movecontact
trigger16 = stateno = 620 && movecontact
trigger17 = stateno = 630 && movecontact
trigger18 = stateno = 640 && movecontact
trigger19 = stateno = 650 && movecontact
trigger20 = stateno = 632 && movecontact


[State -1]
type = ChangeState
value = 1331
triggerall = roundstate = 2 && !var(59) && var(6) < 2
triggerall = command = "214_KK"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 640 && movecontact
trigger6 = stateno = 632 && movecontact

[State -1]
type = ChangeState
value = 1330
triggerall = roundstate = 2 && !var(59) && var(6) < 2
triggerall = command = "214_KK"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 440 && movecontact
trigger10 = stateno = 220 && movecontact
trigger11 = stateno = 250 && movecontact
trigger12 = stateno = 420 && movecontact
trigger13 = stateno = 450 && movecontact

[State -1]
type = ChangeState
value = 1336
triggerall = roundstate = 2 && !var(59)
triggerall = command = "214_KK"
trigger1 = stateno = 1335


[State -1]
type = ChangeState
value = 1265
triggerall = roundstate = 2 && !var(59) && var(6) < 2
triggerall = command = "426_punch"
trigger1 = statetype = A && (ctrl || stateno = 1335)
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 640 && movecontact
trigger6 = stateno = 632 && movecontact

[State -1]
type = ChangeState
value = 1300
triggerall = roundstate = 2 && !var(59) && var(6) < 2
triggerall = command = "426_kick"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 101 && prevstateno != 810
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && animelem = 6,>0
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact
trigger11 = stateno = 220 && movecontact
trigger12 = stateno = 250 && movecontact
trigger13 = stateno = 420 && movecontact
trigger14 = stateno = 450 && movecontact

[State -1]
type = ChangeState
value = 1310
triggerall = roundstate = 2 && !var(59) && var(6) < 2
triggerall = command = "426_kick_c"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 101 && prevstateno != 810
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && animelem = 6,>0
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact
trigger11 = stateno = 220 && movecontact
trigger12 = stateno = 250 && movecontact
trigger13 = stateno = 420 && movecontact
trigger14 = stateno = 450 && movecontact


[State -1]
type = ChangeState
value = 1260
triggerall = roundstate = 2 && !var(59) && var(6) < 2
triggerall = command = "426_punch"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 101 && prevstateno != 810
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && animelem = 6,>0
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact
trigger11 = stateno = 220 && movecontact
trigger12 = stateno = 250 && movecontact
trigger13 = stateno = 420 && movecontact
trigger14 = stateno = 450 && movecontact


[State -1]
type = ChangeState
value = 1240
triggerall = roundstate = 2 && !var(59) && var(6) < 2
triggerall = command = "896_punch_x"
trigger1 = statetype = A && (ctrl || stateno = 1335)
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 640 && movecontact
trigger6 = stateno = 632 && movecontact

[State -1]
type = ChangeState
value = 1241
triggerall = roundstate = 2 && !var(59) && var(6) < 2
triggerall = command = "896_punch_y"
trigger1 = statetype = A && (ctrl || stateno = 1335)
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 640 && movecontact
trigger6 = stateno = 632 && movecontact

[State -1]
type = ChangeState
value = 1242
triggerall = roundstate = 2 && !var(59) && var(6) < 2
triggerall = command = "896_punch_z"
trigger1 = statetype = A && (ctrl || stateno = 1335)
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 640 && movecontact
trigger6 = stateno = 632 && movecontact


[State -1]
type = ChangeState
value = 114
triggerall = roundstate = 2 && !var(59)
triggerall = command = "Air Dash UF"
triggerall = var(37) = 0
trigger1 = statetype = A && (ctrl || stateno = 1335)
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 640 && movecontact
trigger6 = stateno = 632 && movecontact

[State -1]
type = ChangeState
value = 116
triggerall = roundstate = 2 && !var(59)
triggerall = command = "Air Dash UB"
triggerall = var(37) = 0
trigger1 = statetype = A && (ctrl || stateno = 1335)
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 640 && movecontact
trigger6 = stateno = 632 && movecontact

[State -1]
type = ChangeState
value = 117
triggerall = roundstate = 2 && !var(59)
triggerall = command = "Air Dash DB"
triggerall = var(37) = 0
trigger1 = statetype = A && (ctrl || stateno = 1335)
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 640 && movecontact
trigger6 = stateno = 632 && movecontact

[State -1]
type = ChangeState
value = 115
triggerall = roundstate = 2 && !var(59)
triggerall = command = "Air Dash DF"
triggerall = var(37) = 0
trigger1 = statetype = A && (ctrl || stateno = 1335)
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 640 && movecontact
trigger6 = stateno = 632 && movecontact


[State -1]
type = ChangeState
value = 112
triggerall = roundstate = 2 && !var(59)
triggerall = command = "Air Dash U"
triggerall = var(37) = 0
trigger1 = statetype = A && (ctrl || stateno = 1335)
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 640 && movecontact
trigger6 = stateno = 632 && movecontact

[State -1]
type = ChangeState
value = 113
triggerall = roundstate = 2 && !var(59)
triggerall = command = "Air Dash D"
triggerall = var(37) = 0
trigger1 = statetype = A && (ctrl || stateno = 1335)
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 640 && movecontact
trigger6 = stateno = 632 && movecontact

[State -1]
type = ChangeState
value = 111
triggerall = roundstate = 2 && !var(59)
triggerall = command = "Air Dash B"
triggerall = var(37) = 0
trigger1 = statetype = A && (ctrl || stateno = 1335)
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 640 && movecontact
trigger6 = stateno = 632 && movecontact


[State -1]
type = ChangeState
value = 110
triggerall = roundstate = 2 && !var(59)
triggerall = command = "Air Dash F" ||command = "Air Dash Neutral"
triggerall = var(37) = 0
trigger1 = statetype = A && (ctrl || stateno = 1335)
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 640 && movecontact
trigger6 = stateno = 632 && movecontact

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
trigger1 = statetype = S && ctrl


[State -1]
type = ChangeState
value = 900
triggerall = roundstate = 2 && !var(59)
trigger1 = command = "z" && (command = "holdfwd" || command = "holdback")
trigger1 = p2bodydist x < 18 && enemynear,movetype != H
trigger1 = statetype = S && ctrl

; “Š‚°2
[State -1]
type = ChangeState
value = 910
triggerall = roundstate = 2 && !var(59)
trigger1 = command = "c" && (command = "holdfwd" || command = "holdback")
trigger1 = p2bodydist x < 18 && enemynear,movetype != H
trigger1 = statetype = S && ctrl

; ‹ó’†“Š‚°
[State -1]
type = ChangeState
value = 920
triggerall = roundstate = 2 && !var(59)
trigger1 = command = "z" && (command = "holdfwd" || command = "holdback")
trigger1 = p2bodydist x < 20 && abs(p2bodydist y) < 20 && enemynear,movetype != H
trigger1 = statetype = A && (ctrl || stateno = 1335)

[State -1]
type = ChangeState
value = 930
triggerall = roundstate = 2 && !var(59)
trigger1 = command = "c" && (command = "holdfwd" || command = "holdback")
trigger1 = p2bodydist x < 20 && abs(p2bodydist y) < 20 && enemynear,movetype != H
trigger1 = statetype = A && (ctrl || stateno = 1335)

[State -1]
type = ChangeState
value = 632
triggerall = roundstate = 2 && !var(59)
triggerall = command = "holddown" && command = "a"
trigger1 = statetype = A && (ctrl || stateno = 1335)
trigger2 = stateno = 600 && movecontact


; ������P
[State -1]
type = ChangeState
value = 200
triggerall = roundstate = 2 && !var(59)
triggerall = command = "x" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 101 || stateno = 106) && prevstateno != 810


; ������P
[State -1]
type = ChangeState
value = 210
triggerall = roundstate = 2 && !var(59)
triggerall = command = "y" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 101 || stateno = 106) && prevstateno != 810
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 430 && movecontact

; ������P
[State -1]
type = ChangeState
value = 220
triggerall = roundstate = 2 && !var(59)
triggerall = command = "z" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 101 || stateno = 106) && prevstateno != 810
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 430 && movecontact



; ������K
[State -1]
type = ChangeState
value = 230
triggerall = roundstate = 2 && !var(59)
triggerall = command = "a" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 101 || stateno = 106) && prevstateno != 810

; ������K
[State -1]
type = ChangeState
value = 240
triggerall = roundstate = 2 && !var(59)
triggerall = command = "b" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 101 || stateno = 106) && prevstateno != 810
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 430 && movecontact

; ������K
[State -1]
type = ChangeState
value = 250
triggerall = roundstate = 2 && !var(59)
triggerall = command = "c" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 101 || stateno = 106) && prevstateno != 810
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 430 && movecontact


; ���Ⴊ�ݎ�P
[State -1]
type = ChangeState
value = 400
triggerall = roundstate = 2 && !var(59)
triggerall = command = "x" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = (stateno = 101 || stateno = 106) && prevstateno != 810

; ���Ⴊ�ݒ�P
[State -1]
type = ChangeState
value = 410
triggerall = roundstate = 2 && !var(59)
triggerall = command = "y" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = (stateno = 101 || stateno = 106) && prevstateno != 810
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 430 && movecontact

; ���Ⴊ�݋�P
[State -1]
type = ChangeState
value = 420
triggerall = roundstate = 2 && !var(59)
triggerall = command = "z" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = (stateno = 101 || stateno = 106) && prevstateno != 810
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 430 && movecontact

; ���Ⴊ�ݎ�K
[State -1]
type = ChangeState
value = 430
triggerall = roundstate = 2 && !var(59)
triggerall = command = "a" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = (stateno = 101 || stateno = 106) && prevstateno != 810

; ���Ⴊ�ݒ�K
[State -1]
type = ChangeState
value = 440
triggerall = roundstate = 2 && !var(59)
triggerall = command = "b" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = (stateno = 101 || stateno = 106) && prevstateno != 810
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 430 && movecontact

; ���Ⴊ�݋�K
[State -1]
type = ChangeState
value = 450
triggerall = roundstate = 2 && !var(59)
triggerall = command = "c" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = (stateno = 101 || stateno = 106) && prevstateno != 810
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 430 && movecontact


; �W�����v��P
[State -1]
type = ChangeState
value = 600
triggerall = roundstate = 2 && !var(59)
triggerall = command = "x"
trigger1 = statetype = A && (ctrl || stateno = 1335)

; �W�����v��P
[State -1]
type = ChangeState
value = 610
triggerall = roundstate = 2 && !var(59)
triggerall = command = "y"
trigger1 = statetype = A && (ctrl || stateno = 1335)
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 630 && movecontact
trigger4 = stateno = 632 && movecontact

; �W�����v��P
[State -1]
type = ChangeState
value = 620
triggerall = roundstate = 2 && !var(59)
triggerall = command = "z"
trigger1 = statetype = A && (ctrl || stateno = 1335)
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 640 && movecontact
trigger6 = stateno = 632 && movecontact


; �W�����v��K
[State -1]
type = ChangeState
value = 630
triggerall = roundstate = 2 && !var(59)
triggerall = command = "a"
trigger1 = statetype = A && (ctrl || stateno = 1335)
trigger2 = stateno = 600 && movecontact

; �W�����v��K
[State -1]
type = ChangeState
value = 640
triggerall = roundstate = 2 && !var(59)
triggerall = command = "b"
trigger1 = statetype = A && (ctrl || stateno = 1335)
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 630 && movecontact
trigger4 = stateno = 610 && movecontact
trigger5 = stateno = 632 && movecontact

; �W�����v��K
[State -1]
type = ChangeState
value = 650
triggerall = roundstate = 2 && !var(59)
triggerall = command = "c"
trigger1 = statetype = A && (ctrl || stateno = 1335)
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 640 && movecontact
trigger6 = stateno = 632 && movecontact

[State -1]
type = ChangeState
value = 115
triggerall = roundstate = 2 && !var(59)
triggerall = command = "BB"
trigger1 = statetype = A && (ctrl || stateno = 1335)


; �󒆃W�����v
[State -1]
type = ChangeState
value = 45
triggerall = roundstate = 2 && !var(59)
trigger1 = command = "holdup"
trigger1 = statetype = A && ctrl
trigger1 = var(2) && !var(3)

; �L�����Z���W�����v
[State -1]
type = ChangeState
value = 40
triggerall = roundstate = 2 && !var(59)
triggerall = command = "holdup" && !var(1) && prevstateno != 810
trigger1 = stateno = [100,107]
trigger2 = stateno = 210 && movehit
trigger3 = stateno = 251 && movehit
trigger4 = stateno = 420 && movehit


; ���Ⴊ��
[State -1]
type = ChangeState
triggerall = command = "holddown" && prevstateno != 810
trigger1 = stateno = [100,102]
value = 10
ctrl = 1

; �A�h�o���V���O�K�[�h
[State -1]
type = VarSet
triggerall = roundstate = 2 && !var(59)
triggerall = !numhelper(8060)
triggerall = command = "recovery"
trigger1 = stateno = 150
trigger2 = stateno = 152
trigger3 = stateno = 154
var(11) = 1
ignorehitpause = 1

;Taunt�
[State -1]
type = ChangeState
triggerall = roundstate = 2 && !var(59)
triggerall = command = "start"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 101&& time > 3
value = 800

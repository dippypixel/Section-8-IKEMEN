; Urien By RajaaBoy

;====================< Default Values >====================

[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;====================< Default Values >====================

[Defaults]
command.time = 15
command.buffer.time = 1

;====================< Single Button >====================

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

;====================< Hold Button >====================

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

;====================< Hold Direction >====================

[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holddown"
command = /$D
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup"
command = /$U
time = 1

;====================< Single Direction >====================

[Command]
name = "fwd"
command = $F
time = 1

[Command]
name = "down"
command = $D
time = 1

[Command]
name = "back"
command = $B
time = 1

[Command]
name = "up"
command = $U
time = 1

;====================< Negative Edge >====================

[Command]
name = "NE_fwd"
command = ~$F
time = 1
[Command]
name = "NE_back"
command = ~$B
time = 1
[Command]
name = "NE_up"
command = ~$U
time = 1
[Command]
name = "NE_down"
command = ~$D
time = 1

[Command]
name = "NE_x"
command = ~x
time = 1
[Command]
name = "NE_y"
command = ~y
time = 1
[Command]
name = "NE_z"
command = ~z
time = 1
[Command]
name = "NE_a"
command = ~a
time = 1
[Command]
name = "NE_b"
command = ~b
time = 1
[Command]
name = "NE_c"
command = ~c
time = 1

;====================< Super Motions >====================

[Command]
name = "236236P"
command = ~D, DF, F, D, DF, x
time = 28
[Command]
name = "236236P"
command = ~D, DF, F, D, DF, ~x
time = 28
[Command]
name = "236236P"
command = ~D, DF, F, D, DF, y
time = 28
[Command]
name = "236236P"
command = ~D, DF, F, D, DF, ~y
time = 28
[Command]
name = "236236P"
command = ~D, DF, F, D, DF, z
time = 28
[Command]
name = "236236P"
command = ~D, DF, F, D, DF, ~z
time = 28

[Command]
name = "236236PP"
command = ~D, DF, F, D, DF, x+y
time = 28
[Command]
name = "236236PP"
command = ~D, DF, F, D, DF, x+z
time = 28
[Command]
name = "236236PP"
command = ~D, DF, F, D, DF, y+z
time = 28

[Command]
name = "214214P"
command = ~D, DB, B, D, DB, x
time = 28
[Command]
name = "214214P"
command = ~D, DB, B, D, DB, ~x
time = 28
[Command]
name = "214214P"
command = ~D, DB, B, D, DB, y
time = 28
[Command]
name = "214214P"
command = ~D, DB, B, D, DB, ~y
time = 28
[Command]
name = "214214P"
command = ~D, DB, B, D, DB, z
time = 28
[Command]
name = "214214P"
command = ~D, DB, B, D, DB, ~z
time = 28

[Command]
name = "214214PP"
command = ~D, DB, B, D, DB, x+y
time = 28
[Command]
name = "214214PP"
command = ~D, DB, B, D, DB, x+z
time = 28
[Command]
name = "214214PP"
command = ~D, DB, B, D, DB, y+z
time = 28

[Command]
name = "236236K"
command = ~D, DF, F, D, DF, a
time = 28
[Command]
name = "236236K"
command = ~D, DF, F, D, DF, ~a
time = 28
[Command]
name = "236236K"
command = ~D, DF, F, D, DF, b
time = 28
[Command]
name = "236236K"
command = ~D, DF, F, D, DF, ~b
time = 28
[Command]
name = "236236K"
command = ~D, DF, F, D, DF, c
time = 28
[Command]
name = "236236K"
command = ~D, DF, F, D, DF, ~c
time = 28

;====================< EX Special Motions >====================

[command]
name = "236PP"
command = ~D, DF, F, x+y
time = 18
[command]
name = "236PP"
command = ~D, DF, F, x+z
time = 18
[command]
name = "236PP"
command = ~D, DF, F, y+z
time = 18

[command]
name = "28PP"
command = ~$D, $U, x+y
time = 2147483647
[command]
name = "28PP"
command = ~$D, $U, x+z
time = 2147483647
[command]
name = "28PP"
command = ~$D, $U, y+z
time = 2147483647

[command]
name = "28KK"
command = ~$D, $U, a+b
time = 2147483647
[command]
name = "28KK"
command = ~$D, $U, a+c
time = 2147483647
[command]
name = "28KK"
command = ~$D, $U, b+c
time = 2147483647

[command]
name = "46KK"
command = ~$B, $F, a+b
time = 2147483647
[command]
name = "46KK"
command = ~$B, $F, a+c
time = 2147483647
[command]
name = "46KK"
command = ~$B, $F, b+c
time = 2147483647

;====================< Special Motions >====================

[command]
name = "236P"
command = ~D, DF, F, x
time = 18
[command]
name = "236P"
command = ~D, DF, F, ~x
time = 18
[command]
name = "236P"
command = ~D, DF, F, y
time = 18
[command]
name = "236P"
command = ~D, DF, F, ~y
time = 18
[command]
name = "236P"
command = ~D, DF, F, z
time = 18
[command]
name = "236P"
command = ~D, DF, F, ~z
time = 18

[command]
name = "28P"
command = ~$D, $U, x
time = 2147483647
[command]
name = "28P"
command = ~$D, $U, ~x
time = 2147483647
[command]
name = "28P"
command = ~$D, $U, y
time = 2147483647
[command]
name = "28P"
command = ~$D, $U, ~y
time = 2147483647
[command]
name = "28P"
command = ~$D, $U, z
time = 2147483647
[command]
name = "28P"
command = ~$D, $U, ~z
time = 2147483647

[command]
name = "28K"
command = ~$D, $U, a
time = 2147483647
[command]
name = "28K"
command = ~$D, $U, ~a
time = 2147483647
[command]
name = "28K"
command = ~$D, $U, b
time = 2147483647
[command]
name = "28K"
command = ~$D, $U, ~b
time = 2147483647
[command]
name = "28K"
command = ~$D, $U, c
time = 2147483647
[command]
name = "28K"
command = ~$D, $U, ~c
time = 2147483647

[command]
name = "46K"
command = ~$B, $F, a
time = 2147483647
[command]
name = "46K"
command = ~$B, $F, ~a
time = 2147483647
[command]
name = "46K"
command = ~$B, $F, b
time = 2147483647
[command]
name = "46K"
command = ~$B, $F, ~b
time = 2147483647
[command]
name = "46K"
command = ~$B, $F, c
time = 2147483647
[command]
name = "46K"
command = ~$B, $F, ~c
time = 2147483647

;====================< Mechanic Commands >====================

[Command]
name = "ax"
command = a+x
time = 2
[Command]
name = "by"
command = b+y
time = 2
[Command]
name = "cz"
command = c+z
time = 2

[Command]
name = "s"
command = s
time = 2
[Command]
name = "hold_s"
command = /s
time = 1

[Command]
name = "$2$8"
command = $D,$U
time = 10

;====================< Double Tap >====================-

[Command]
name = "FF"
command = F, F
time = 16

[Command]
name = "BB"
command = B, B
time = 16

;====================< Recovery Commands >====================

[Command]
name = "recovery"
command = x+a
time = 1
[Command]
name = "recovery"
command = x+b
time = 1
[Command]
name = "recovery"
command = x+c
time = 1
[Command]
name = "recovery"
command = x+y
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
command = a+c
time = 1
[Command]
name = "recovery"
command = a+y
time = 1
[Command]
name = "recovery"
command = a+z
time = 1
[Command]
name = "recovery"
command = y+b
time = 1
[Command]
name = "recovery"
command = y+c
time = 1
[Command]
name = "recovery"
command = y+z
time = 1
[Command]
name = "recovery"
command = b+c
time = 1
[Command]
name = "recovery"
command = b+z
time = 1
[Command]
name = "recovery"
command = c+z
time = 1

;=========================================================================
[Statedef -1]
;=========================================================================

;=========================================================================
; Status -1
;=========================================================================

[state -1, Status: In Own State]
type = varset
trigger1 = 1
var(59) = 1
ignorehitpause = 1

[state -1, Status: Count Command Buffering]
type = varadd
trigger1 = fvar(30)
fvar(30) = cond(fvar(30) < 0, 1, -1)
ignorehitpause = 1
[state -1, Status: Reset Command State Number]
type = varset
trigger1 = fvar(31) || fvar(32)
trigger1 = fvar(30) <= 0
trigger2 = stateno = fvar(31)
trigger2 = time <= 1 && !ctrl
fvar(31) = (fvar(32) := 0)
ignorehitpause = 1

;[state -1, Status: Change to Stun State]
;type = changestate
;triggerall = numhelper(6550)
;trigger1 = fvar(7) >= fvar(8) || var(30)
;trigger1 = ctrl || movetype != H && stateno != 5120
;trigger1 = statetype != A && stateno != [5200, 5210]
;trigger1 = fvar(7) := 0 || var(30) := 0 || 1
;value = 5300
;ignorehitpause = 1

;=========================================================================
; SUPER ARTS
;=========================================================================

[state -1, Tyrant Slaughter]
type = varset
triggerall = !ailevel ; && cond(numhelper(4000), helper(4000),var(40) > 0, 0)
triggerall = var(21) <= 2 && command = "236236K" || var(21) = 3 && command = "236236P"
triggerall = statetype != A
triggerall = var(28) >= var(27) && !var(29)
trigger1 = !fvar(31)
fvar(31) = 3000 + 0 * (fvar(30) := 2 + cond(numhelper(4000), helper(4000),var(40), 6))
ignorehitpause = 1
[state -1, Tyrant Slaughter]
type = changestate
value = 3000
triggerall = !ailevel
triggerall = fvar(30) > 0 && fvar(31) = 3000
triggerall = statetype != A
triggerall = var(28) >= var(27) && !var(29)
trigger1 = ctrl || stateno = 40 || stateno = 52
; Normal Punch Cancels
trigger2 = var(15) % 50 = 1 || var(15) % 50 = 2 || var(15) % 50 = 4 || var(15) % 50 = 6
; Normal Kick Cancels
trigger3 = var(15) % 60 = 1 || var(15) % 60 = 4
; Special Cancels
trigger4 = var(16) = 1 || var(16) = 2
; Super Art Cancels
trigger5 = var(16) = 102 || var(16) = 103
trigger5 = prevstateno != [3000, 3099]
trigger6 = ((stateno = [200,499]) && movecontact)
trigger7 = ((stateno = [700,710]) && movecontact)

[state -1, Temporal Thunder]
type = varset
triggerall = !ailevel ; && cond(numhelper(4000), helper(4000),var(40) > 0, 0)
triggerall = var(21) <= 2 && command = "236236P" || var(21) = 4 && command = "236236P"
triggerall = statetype != A
triggerall = var(28) >= var(27) && !var(29)
trigger1 = !fvar(31)
fvar(31) = 3100 + 0 * (fvar(30) := 2 + cond(numhelper(4000), helper(4000),var(40), 6))
ignorehitpause = 1
[state -1, Temporal Thunder]
type = changestate
value = 3100
triggerall = !ailevel
triggerall = fvar(30) > 0 && fvar(31) = 3100
triggerall = statetype != A
triggerall = var(28) >= var(27) && !var(29)
trigger1 = ctrl || stateno = 40 || stateno = 52
; Normal Punch Cancels
trigger2 = var(15) % 50 = 1 || var(15) % 50 = 2 || var(15) % 50 = 4 || var(15) % 50 = 6
; Normal Kick Cancels
trigger3 = var(15) % 60 = 1 || var(15) % 60 = 4
; Special Cancels
trigger4 = var(16) = 1 || var(16) = 2
; Super Art Cancel
trigger5 = var(16) = 101 || var(16) = 103
trigger5 = prevstateno != [3100, 3199]
trigger6 = ((stateno = [200,499]) && movecontact)
trigger7 = ((stateno = [700,710]) && movecontact)

[state -1, EX Aegis Reflector]
type = varset
triggerall = !ailevel ; && cond(numhelper(4000), helper(4000),var(40) > 0, 0)
triggerall = var(21) <= 2 && command = "214214PP" || var(21) = 5 && command = "236236PP"
triggerall = statetype != A
triggerall = var(28) >= var(27) && !var(29)
triggerall = !fvar(31)
trigger1 = fvar(32) := 8
fvar(31) = 3200 + 0 * (fvar(30) := 2 + cond(numhelper(4000), helper(4000),var(40), 6))
ignorehitpause = 1
[state -1, EX Aegis Reflector]
type = changestate
value = 3200
triggerall = !ailevel
triggerall = fvar(30) > 0 && fvar(31) = 3200
triggerall = statetype != A
triggerall = var(28) >= var(27) && !var(29)
trigger1 = ctrl || stateno = 40 || stateno = 52
; Normal Punch Cancels
trigger2 = var(15) % 50 = 1 || var(15) % 50 = 2 || var(15) % 50 = 4 || var(15) % 50 = 6
; Normal Kick Cancels
trigger3 = var(15) % 60 = 1 || var(15) % 60 = 4
; Special Cancels
trigger4 = var(16) = 1 || var(16) = 2
; Super Art Cancel
trigger5 = var(16) = 101 || var(16) = 103
trigger5 = prevstateno != [3100, 3199]
trigger6 = ((stateno = [200,499]) && movecontact)
trigger7 = ((stateno = [700,710]) && movecontact)


[state -1, Aegis Reflector]
type = varset
triggerall = !ailevel ; && cond(numhelper(4000), helper(4000),var(40) > 0, 0)
triggerall = var(21) <= 2 && command = "214214P" || var(21) = 5 && command = "236236P"
triggerall = statetype != A
triggerall = var(28) >= var(27) && !var(29)
triggerall = !fvar(31)
trigger1 = cond(command = "z" || command = "NE_z", 1 * (fvar(32) := 7), 0)
trigger2 = cond(command = "y" || command = "NE_y", 1 * (fvar(32) := 6), 0)
trigger3 = cond(command = "x" || command = "NE_x", 1 * (fvar(32) := 5), 0)
fvar(31) = 3200 + 0 * (fvar(30) := 2 + cond(numhelper(4000), helper(4000),var(40), 6))
ignorehitpause = 1
[state -1, Aegis Reflector]
type = changestate
value = 3200
triggerall = !ailevel
triggerall = fvar(30) > 0 && fvar(31) = 3200
triggerall = statetype != A
triggerall = var(28) >= var(27) && !var(29)
trigger1 = ctrl || stateno = 40 || stateno = 52
; Normal Punch Cancels
trigger2 = var(15) % 50 = 1 || var(15) % 50 = 2 || var(15) % 50 = 4 || var(15) % 50 = 6
; Normal Kick Cancels
trigger3 = var(15) % 60 = 1 || var(15) % 60 = 4
; Special Cancels
trigger4 = var(16) = 1 || var(16) = 2
; Super Art Cancel
trigger5 = var(16) = 101 || var(16) = 102
trigger5 = prevstateno != [3200, 3299]
trigger6 = ((stateno = [200,499]) && movecontact)
trigger7 = ((stateno = [700,710]) && movecontact)

;=========================================================================
; EX SPECIALS
;=========================================================================

[state -1, EX Metallic Sphere]
type = varset
triggerall = !ailevel ; && cond(numhelper(4000), helper(4000),var(40) > 0, 0)
triggerall = command = "236PP"
triggerall = statetype != A
triggerall = var(28) >= var(26) && !var(29)
triggerall = !numhelper(1015) || cond(numhelper(1015) = 1, helper(1015),stateno % 40 = 20 || helper(1015),prevstateno % 40 = 20, 0)
trigger1 = !fvar(31)
fvar(31) = 1050 + 0 * (fvar(30) := 2 + cond(numhelper(4000), helper(4000),var(40), 6))
ignorehitpause = 1

[state -1, EX Metallic Sphere]
type = changestate
value = 1050
triggerall = !ailevel
triggerall = fvar(30) > 0 && fvar(31) = 1050
triggerall = statetype != A
triggerall = var(28) >= var(26) && !var(29)
triggerall = !numhelper(1015) || cond(numhelper(1015) = 1, helper(1015),stateno % 40 = 20 || helper(1015),prevstateno % 40 = 20, 0)
trigger1 = ctrl || stateno = 40 || stateno = 52
; Normal Punch Cancels
trigger2 = var(14) % 50 = 1 || var(14) % 50 = 2 || var(14) % 50 = 4 || var(14) % 50 = 6
; Normal Kick Cancels
trigger3 = var(14) % 60 = 1 || var(14) % 60 = 4
trigger4 = ((stateno = [200,499]) && movecontact)
trigger5 = ((stateno = [700,710]) && movecontact)

[state -1, EX Dangerous Headbutt]
type = varset
triggerall = !ailevel ; && cond(numhelper(4000), helper(4000),var(40) > 0, 0)
triggerall = command = "28PP"
triggerall = statetype != A
triggerall = var(28) >= var(26) && !var(29)
trigger1 = fvar(26) && !fvar(31)
fvar(31) = 1250 + 0 * (fvar(30) := 5 + cond(numhelper(4000), helper(4000),var(40), 6))
ignorehitpause = 1
[state -1, EX Dangerous Headbutt]
type = changestate
value = 1250
triggerall = !ailevel
triggerall = fvar(30) > 0 && fvar(31) = 1250
triggerall = statetype != A
triggerall = var(28) >= var(26) && !var(29)
trigger1 = ctrl || stateno = 40 || stateno = 52
; Normal Punch Cancels
trigger2 = var(14) % 50 = 1 || var(14) % 50 = 2 || var(14) % 50 = 4 || var(14) % 50 = 6
; Normal Kick Cancels
trigger3 = var(14) % 60 = 1 || var(14) % 60 = 4
trigger4 = ((stateno = [200,499]) && movecontact)
trigger5 = ((stateno = [700,710]) && movecontact)
[state -1, EX Violence Kneedrop]
type = varset
triggerall = !ailevel ; && cond(numhelper(4000), helper(4000),var(40) > 0, 0)
triggerall = command = "28KK"
triggerall = statetype != A
triggerall = var(28) >= var(26) && !var(29)
trigger1 = fvar(26) && !fvar(31)
fvar(31) = 1350 + 0 * (fvar(30) := 5 + cond(numhelper(4000), helper(4000),var(40), 6))
ignorehitpause = 1
[state -1, EX Violence Kneedrop]
type = changestate
value = 1350
triggerall = !ailevel
triggerall = fvar(30) > 0 && fvar(31) = 1350 
triggerall = statetype != A
triggerall = var(28) >= var(26) && !var(29)
trigger1 = ctrl || stateno = 40 || stateno = 52
; Normal Punch Cancels
trigger2 = var(14) % 50 = 1 || var(14) % 50 = 2 || var(14) % 50 = 4 || var(14) % 50 = 6
; Normal Kick Cancels
trigger3 = var(14) % 60 = 1 || var(14) % 60 = 4
trigger4 = ((stateno = [200,499]) && movecontact)
trigger5 = ((stateno = [700,710]) && movecontact)
[state -1, EX Chariot Tackle]
type = varset
triggerall = !ailevel ; && cond(numhelper(4000), helper(4000),var(40) > 0, 0)
triggerall = command = "46KK"
triggerall = statetype != A
triggerall = var(28) >= var(26) && !var(29)
trigger1 = fvar(23) && !fvar(31)
fvar(31) = 1150 + 0 * (fvar(30) := 5 + cond(numhelper(4000), helper(4000),var(40), 6))
ignorehitpause = 1
[state -1, EX Chariot Tackle]
type = changestate
value = 1150
triggerall = !ailevel
triggerall = fvar(30) > 0 && fvar(31) = 1150
triggerall = statetype != A
triggerall = var(28) >= var(26) && !var(29)
trigger1 = ctrl || stateno = 40 || stateno = 52
; Normal Punch Cancels
trigger2 = var(14) % 50 = 1 || var(14) % 50 = 2 || var(14) % 50 = 4 || var(14) % 50 = 6
; Normal Kick Cancels
trigger3 = var(14) % 60 = 1 || var(14) % 60 = 4
trigger4 = ((stateno = [200,499]) && movecontact)
trigger5 = ((stateno = [700,710]) && movecontact)
;=========================================================================
; SPECIALS
;=========================================================================

[state -1, Metallic Sphere]
type = varset
triggerall = !ailevel ; && cond(numhelper(4000), helper(4000),var(40) > 0, 0)
triggerall = command = "236P"
triggerall = statetype != A
triggerall = !numhelper(1015) || cond(numhelper(1015) = 1, helper(1015),stateno % 40 = 20 || helper(1015),prevstateno % 40 = 20, 0)
triggerall = !fvar(31)
trigger1 = cond(command = "z" || command = "NE_z", 1 * (fvar(32) := 3), 0)
trigger2 = cond(command = "y" || command = "NE_y", 1 * (fvar(32) := 2), 0)
trigger3 = cond(command = "x" || command = "NE_x", 1 * (fvar(32) := 1), 0)
fvar(31) = 1000 + 0 * (fvar(30) := 2 + cond(numhelper(4000), helper(4000),var(40), 6))
ignorehitpause = 1
[state -1, Metallic Sphere]
type = changestate
value = 1000
triggerall = !ailevel
triggerall = fvar(30) > 0 && fvar(31) = 1000
triggerall = statetype != A
triggerall = !numhelper(1015) || cond(numhelper(1015) = 1, helper(1015),stateno % 40 = 20 || helper(1015),prevstateno % 40 = 20, 0)
trigger1 = ctrl || stateno = 40 || stateno = 52
; Normal Punch Cancels
trigger2 = var(14) % 50 = 1 || var(14) % 50 = 2 || var(14) % 50 = 4 || var(14) % 50 = 6
; Normal Kick Cancels
trigger3 = var(14) % 60 = 1 || var(14) % 60 = 4
trigger4 = ((stateno = [200,499]) && movecontact)
trigger5 = ((stateno = [700,710]) && movecontact)
[state -1, Dangerous Headbutt]
type = varset
triggerall = !ailevel ; && cond(numhelper(4000), helper(4000),var(40) > 0, 0)
triggerall = command = "28P"
triggerall = statetype != A
triggerall = fvar(26) && !fvar(31)
trigger1 = cond(command = "z" || command = "NE_z", 1 * (fvar(32) := 3), 0)
trigger2 = cond(command = "y" || command = "NE_y", 1 * (fvar(32) := 2), 0)
trigger3 = cond(command = "x" || command = "NE_x", 1 * (fvar(32) := 1), 0)
fvar(31) = 1200 + 0 * (fvar(30) := 5 + cond(numhelper(4000), helper(4000),var(40), 6))
ignorehitpause = 1
[state -1, Dangerous Headbutt]
type = changestate
value = 1200
triggerall = !ailevel
triggerall = fvar(30) > 0 && fvar(31) = 1200  
triggerall = statetype != A
trigger1 = ctrl || stateno = 40 || stateno = 52
; Normal Punch Cancels
trigger2 = var(14) % 50 = 1 || var(14) % 50 = 2 || var(14) % 50 = 4 || var(14) % 50 = 6
; Normal Kick Cancels
trigger3 = var(14) % 60 = 1 || var(14) % 60 = 4
trigger4 = ((stateno = [200,499]) && movecontact)
trigger5 = ((stateno = [700,710]) && movecontact)
[state -1, Violence Kneedrop]
type = varset
triggerall = !ailevel ; && cond(numhelper(4000), helper(4000),var(40) > 0, 0)
triggerall = command = "28K"
triggerall = statetype != A
triggerall = fvar(26) && !fvar(31)
trigger1 = cond(command = "c" || command = "NE_c", 1 * (fvar(32) := 3), 0)
trigger2 = cond(command = "b" || command = "NE_b", 1 * (fvar(32) := 2), 0)
trigger3 = cond(command = "a" || command = "NE_a", 1 * (fvar(32) := 1), 0)
fvar(31) = 1300 + 0 * (fvar(30) := 5 + cond(numhelper(4000), helper(4000),var(40), 6))
ignorehitpause = 1
[state -1, Violence Kneedrop]
type = changestate
value = 1300
triggerall = !ailevel
triggerall = fvar(30) > 0 && fvar(31) = 1300
triggerall = statetype != A
trigger1 = ctrl || stateno = 40 || stateno = 52
; Normal Punch Cancels
trigger2 = var(14) % 50 = 1 || var(14) % 50 = 2 || var(14) % 50 = 4 || var(14) % 50 = 6
; Normal Kick Cancels
trigger3 = var(14) % 60 = 1 || var(14) % 60 = 4
trigger4 = ((stateno = [200,499]) && movecontact)
trigger5 = ((stateno = [700,710]) && movecontact)
[state -1, Chariot Tackle]
type = varset
triggerall = !ailevel ; && cond(numhelper(4000), helper(4000),var(40) > 0, 0)
triggerall = command = "46K"
triggerall = statetype != A
triggerall = fvar(23) && !fvar(31)
trigger1 = cond(command = "c" || command = "NE_c", 1 * (fvar(32) := 3), 0)
trigger2 = cond(command = "b" || command = "NE_b", 1 * (fvar(32) := 2), 0)
trigger3 = cond(command = "a" || command = "NE_a", 1 * (fvar(32) := 1), 0)
fvar(31) = 1100 + 0 * (fvar(30) := 5 + cond(numhelper(4000), helper(4000),var(40), 6))
ignorehitpause = 1
[state -1, Chariot Tackle]
type = changestate
value = 1100
triggerall = !ailevel
triggerall = fvar(30) > 0 && fvar(31) = 1100
triggerall = statetype != A
trigger1 = ctrl || stateno = 40 || stateno = 52
; Normal Punch Cancels
trigger2 = var(14) % 50 = 1 || var(14) % 50 = 2 || var(14) % 50 = 4 || var(14) % 50 = 6
; Normal Kick Cancels
trigger3 = var(14) % 60 = 1 || var(14) % 60 = 4
trigger4 = ((stateno = [200,499]) && movecontact)
trigger5 = ((stateno = [700,710]) && movecontact)
;=========================================================================
; SYSTEM MECHANICS
;=========================================================================

[state -1, High Jump Cancel]
type = changestate
value = 40
triggerall = !ailevel
triggerall = statetype != A
triggerall = command = "$2$8"
; High Jump Cancels
trigger1 = var(41) = -1


[state -1, Dash Forward]
type = varset
triggerall = !ailevel ; && cond(numhelper(4000), helper(4000),var(40) > 0, 0)
triggerall = command = "FF"
trigger1 = !fvar(31)
fvar(31) = 100 + 0 * (fvar(30) := 2 + cond(numhelper(4000), helper(4000),var(40), 6) + 4 * (stateno = 100))
ignorehitpause = 1
[state -1, Dash Forward]
type = changestate
value = 100 + 5 * (p2dist x < 0)
triggerall = !ailevel
triggerall = statetype != A && stateno != 100
trigger1 = fvar(30) > 0 && fvar(31) = 100
trigger1 = ctrl
; Dash Cancels
trigger2 = var(42) = -1

[state -1, Dash Backward]
type = varset
triggerall = !ailevel ; && cond(numhelper(4000), helper(4000),var(40) > 0, 0)
triggerall = command = "BB"
trigger1 = !fvar(31)
fvar(31) = 105 + 0 * (fvar(30) := 2 + cond(numhelper(4000), helper(4000),var(40), 6) + 4 * (stateno = 105))
ignorehitpause = 1
[state -1, Dash Backward]
type = changestate
value = 105 - 5 * (p2dist x < 0)
triggerall = !ailevel
triggerall = statetype != A && stateno != 105
trigger1 = fvar(30) > 0 && fvar(31) = 105
trigger1 = ctrl
; Dash Cancels
trigger2 = var(42) = -1

[state -1, Universal Overhead]
type = varset
triggerall = !ailevel ; && cond(numhelper(4000), helper(4000),var(40) > 0, 0)
triggerall = command = "by"
triggerall = statetype != A
trigger1 = !fvar(31)
fvar(31) = 900 + 0 * (fvar(30) := 2 + cond(numhelper(4000), helper(4000),var(40), 6))
ignorehitpause = 1
[state -1, Universal Overhead]
type = changestate
value = 900
triggerall = !ailevel
triggerall = statetype != A
triggerall = fvar(30) > 0 && fvar(31) = 900
trigger1 = ctrl

[state -1, Personal Action]
type = varset
triggerall = !ailevel ; && cond(numhelper(4000), helper(4000),var(40) > 0, 0)
triggerall = command = "s" || command = "cz"
triggerall = statetype != A
trigger1 = !fvar(31)
fvar(31) = 920 + 0 * (fvar(30) := 2 + cond(numhelper(4000), helper(4000),var(40), 6))
ignorehitpause = 1
[state -1, Personal Action]
type = changestate
value = 920
triggerall = !ailevel
triggerall = fvar(30) > 0 && fvar(31) = 920
triggerall = statetype != A && stateno != 920
trigger1 = ctrl
; Normal Punch Cancels
trigger2 = var(14) % 50 = 1 || var(14) % 50 = 2 || var(14) % 50 = 4 || var(14) % 50 = 6
; Normal Kick Cancels
trigger3 = var(14) % 60 = 1 || var(14) % 60 = 4

[state -1, Throw]
type = varset
triggerall = !ailevel ; && cond(numhelper(4000), helper(4000),var(40) > 0, 0)
triggerall = command = "ax"
triggerall = statetype != A
trigger1 = !fvar(31)
fvar(31) = 800 + 0 * (fvar(30) := 2 + cond(numhelper(4000), helper(4000),var(40), 6))
ignorehitpause = 1
[state -1, Throw]
type = changestate
value = 800
triggerall = !ailevel
triggerall = statetype != A
triggerall = fvar(30) > 0 && fvar(31) = 800
trigger1 = ctrl
trigger2 = stateno = [200, 499]
trigger2 = time <= 4
trigger3 = ((stateno = [200,499]) && movecontact)
trigger4 = ((stateno = [700,710]) && movecontact)
trigger5 = stateno = 1150 && movecontact

[state -1, Ground Recovery]
type = changestate
value = 5200
trigger1 = !ailevel
trigger1 = command = "recovery"
trigger1 = alive && gethitvar(fall.recover) && (stateno = 5050 || stateno = 5071) && vel y > 0
trigger1 = pos y + vel y >= const(movement.air.gethit.groundrecover.ground.threshold)
trigger1 = cond(numhelper(4000), helper(4000),var(3), 1)
trigger1 = fvar(7) < fvar(8) && !var(30)

[state -1, Aerial Recovery]
type = changestate
value = 5210
trigger1 = !ailevel
trigger1 = command = "recovery"
trigger1 = alive && canrecover && stateno = 5050
trigger1 = vel y > const(movement.air.gethit.airrecover.threshold)
trigger1 = pos y + vel y < const(movement.air.gethit.groundrecover.ground.threshold)
trigger1 = cond(numhelper(4000), helper(4000),var(4), 1)
trigger1 = fvar(7) < fvar(8) && !var(30)

;=========================================================================
; COMMAND MOVES
;=========================================================================

[state -1, Forward + Mid Punch]
type = changestate
value = 700
triggerall = !ailevel
triggerall = command = "holdfwd" && command = "y" && command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
; Misc Cancels
trigger2 = var(40) = 2 || var(40) = 4 || var(40) = 5

[state -1, Forward + Hard Punch]
type = changestate
value = 705
triggerall = !ailevel
triggerall = command = "holdfwd" && command = "z" && command != "holddown" || var(43) = 2 && command = "z"
triggerall = statetype != A
trigger1 = ctrl
; Misc Cancels
trigger2 = var(40) = 2 || var(40) = 4 || var(40) = 5
; Target Cancels
trigger3 = var(43) = 2

[state -1, Forward + Mid Kick]
type = changestate
value = 710
triggerall = !ailevel
triggerall = command = "holdfwd" && command = "b" && command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
; Misc Cancels
trigger2 = var(40) = 2 || var(40) = 4 || var(40) = 5

;=========================================================================
; NORMALS
;=========================================================================

[state -1, S. Light Punch]
type = changestate
value = 200
triggerall = !ailevel
triggerall = command = "x" && command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
; Misc Cancels
trigger2 = var(40) = 1 || var(40) = 4 || var(40) = 5

[state -1, S. Mid Punch]
type = changestate
value = 210
triggerall = !ailevel
triggerall = command = "y" && command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
; Custom Punch Chains
trigger2 = cond(numhelper(4000), helper(4000),var(0), 0)
trigger2 = var(14) % 50 = 1 || var(14) % 50 = 4
; Custom Kick Chains
trigger3 = cond(numhelper(4000), helper(4000),var(0), 0)
trigger3 = var(14) % 60 = 1 || var(14) % 60 = 4
; Misc Cancels
trigger4 = var(40) = 2 || var(40) = 4 || var(40) = 5
; Target Cancels
trigger5 = var(43) = 1

[state -1, S. Hard Punch]
type = changestate
value = 220
triggerall = !ailevel
triggerall = command = "z" && command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
; Custom Punch Chains
trigger2 = cond(numhelper(4000), helper(4000),var(0), 0) 
trigger2 = var(14) % 50 = 1 || var(14) % 50 = 2 || var(14) % 50 = 4 || var(14) % 50 = 5
; Custom Kick Chains
trigger3 = cond(numhelper(4000), helper(4000),var(0), 0)
trigger3 = var(14) % 60 = 1 || var(14) % 60 = 2 || var(14) % 60 = 4 || var(14) % 60 = 5
; Misc Cancels
trigger4 = var(40) = 2 || var(40) = 4 || var(40) = 5

[state -1, S. Light Kick]
type = changestate
value = 230
triggerall = !ailevel
triggerall = command = "a" && command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
; Custom Punch Chains
trigger2 = cond(numhelper(4000), helper(4000),var(0), 0)
trigger2 = var(14) % 50 = 1 || var(14) % 50 = 4
; Misc Cancels
trigger3 = var(40) = 2 || var(40) = 4

[state -1, S. Mid Kick]
type = changestate
value = 240
triggerall = !ailevel
triggerall = command = "b" && command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
; Custom Punch Chains
trigger2 = cond(numhelper(4000), helper(4000),var(0), 0) 
trigger2 = var(14) % 50 = 1 || var(14) % 50 = 2 || var(14) % 50 = 4 || var(14) % 50 = 5
; Custom Kick Chains
trigger3 = cond(numhelper(4000), helper(4000),var(0), 0)
trigger3 = var(14) % 60 = 1 || var(14) % 60 = 4
; Misc Cancels
trigger4 = var(40) = 2 || var(40) = 4 || var(40) = 5

[state -1, S. Hard Kick]
type = changestate
value = 250
triggerall = !ailevel
triggerall = command = "c" && command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
; Custom Punch Chains
trigger2 = cond(numhelper(4000), helper(4000),var(0), 0)
trigger2 = var(14) % 50 = 1 || var(14) % 50 = 2 || var(14) % 50 = 4 || var(14) % 50 = 5
; Custom Kick Chains
trigger3 = cond(numhelper(4000), helper(4000),var(0), 0)
trigger3 = var(14) % 60 = 1 || var(14) % 60 = 2 || var(14) % 60 = 4 || var(14) % 60 = 5
; Misc Cancels
trigger4 = var(40) = 2 || var(40) = 4 || var(40) = 5

[state -1, C. Light Punch]
type = changestate
value = 400
triggerall = !ailevel
triggerall = command = "x" && command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
; Misc Cancels
trigger2 = var(40) = 2 || var(40) = 3 || var(40) = 5

[state -1, C. Mid Punch]
type = changestate
value = 410
triggerall = !ailevel
triggerall = command = "y" && command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
; Custom Punch Chains
trigger2 = cond(numhelper(4000), helper(4000),var(0), 0) 
trigger2 = var(14) % 50 = 1 || var(14) % 50 = 4
; Custom Kick Chains
trigger3 = cond(numhelper(4000), helper(4000),var(0), 0) 
trigger3 = var(14) % 60 = 1 || var(14) % 60 = 4
; Misc Cancels
trigger4 = var(40) = 2 || var(40) = 4 || var(40) = 5

[state -1, C. Hard Punch]
type = changestate
value = 420
triggerall = !ailevel
triggerall = command = "z" && command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
; Custom Punch Chains
trigger2 = cond(numhelper(4000), helper(4000),var(0), 0)
trigger2 = var(14) % 50 = 1 || var(14) % 50 = 2 || var(14) % 50 = 4 || var(14) % 50 = 5
; Custom Kick Chains
trigger3 = cond(numhelper(4000), helper(4000),var(0), 0) 
trigger3 = var(14) % 60 = 1 || var(14) % 60 = 2 || var(14) % 60 = 4 || var(14) % 60 = 5
; Misc Cancels
trigger4 = var(40) = 2 || var(40) = 4 || var(40) = 5

[state -1, C. Light Kick]
type = changestate
value = 430
triggerall = !ailevel
triggerall = command = "a" && command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
; Custom Punch Chains
trigger2 = cond(numhelper(4000), helper(4000),var(0), 0)
trigger2 = var(14) % 50 = 1 || var(14) % 50 = 4
; Misc Cancels
trigger3 = var(40) = 2 || var(40) = 4 || var(40) = 5

[state -1, C. Mid Kick]
type = changestate
value = 440
triggerall = !ailevel
triggerall = command = "b" && command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
; Custom Punch Chains
trigger2 = cond(numhelper(4000), helper(4000),var(0), 0)
trigger2 = var(14) % 50 = 1 || var(14) % 50 = 2 || var(14) % 50 = 4 || var(14) % 50 = 5
; Custom Kick Chains
trigger3 = cond(numhelper(4000), helper(4000),var(0), 0)
trigger3 = var(14) % 60 = 1 || var(14) % 60 = 4
; Misc Cancels
trigger4 = var(40) = 2 || var(40) = 4 || var(40) = 5

[state -1, C. Hard Kick]
type = changestate
value = 450
triggerall = !ailevel
triggerall = command = "c" && command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
; Custom Punch Chains
trigger2 = cond(numhelper(4000), helper(4000),var(0), 0)
trigger2 = var(14) % 50 = 1 || var(14) % 50 = 2 || var(14) % 50 = 4 || var(14) % 50 = 5
; Custom Kick Chains
trigger3 = cond(numhelper(4000), helper(4000),var(0), 0)
trigger3 = var(14) % 60 = 1 || var(14) % 60 = 2 || var(14) % 60 = 4 || var(14) % 60 = 5
; Misc Cancels
trigger4 = var(40) = 2 || var(40) = 4 || var(40) = 5

[state -1, A. Light Punch]
type = changestate
value = 600
triggerall = !ailevel
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl

[state -1, A. Mid Punch]
type = changestate
value = 610
triggerall = !ailevel
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl
; Custom Punch Chains
trigger2 = cond(numhelper(4000), helper(4000),var(0), 0)
trigger2 = var(14) % 50 = 7
; Custom Kick Chains
trigger3 = cond(numhelper(4000), helper(4000),var(0), 0)
trigger3 = var(14) % 60 = 7

[state -1, A. Hard Punch]
type = changestate
value = 620
triggerall = !ailevel
triggerall = command = "z"
triggerall = statetype = A
trigger1 = ctrl
; Custom Punch Chains
trigger2 = cond(numhelper(4000), helper(4000),var(0), 0)
trigger2 = var(14) % 50 = 7 || var(14) % 50 = 8
; Custom Kick Chains
trigger3 = cond(numhelper(4000), helper(4000),var(0), 0)
trigger3 = var(14) % 60 = 7 || var(14) % 60 = 8

[state -1, A. Light Kick]
type = changestate
value = 630
triggerall = !ailevel
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl
; Custom Punch Chains
trigger2 = cond(numhelper(4000), helper(4000),var(0), 0) 
trigger2 = var(14) % 50 = 7

[state -1, A. Mid Kick]
type = changestate
value = 640
triggerall = !ailevel
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl
; Custom Punch Chains
trigger2 = cond(numhelper(4000), helper(4000),var(0), 0)
trigger2 = var(14) % 50 = 7 || var(14) % 50 = 8
; Custom Kick Chains
trigger3 = cond(numhelper(4000), helper(4000),var(0), 0)
trigger3 = var(14) % 60 = 7

[state -1, A. Hard Kick]
type = changestate
value = 650
triggerall = !ailevel
triggerall = command = "c"
triggerall = statetype = A
trigger1 = ctrl
; Custom Punch Chains
trigger2 = cond(numhelper(4000), helper(4000),var(0), 0)
trigger2 = var(14) % 50 = 7 || var(14) % 50 = 8
; Custom Kick Chains
trigger3 = cond(numhelper(4000), helper(4000),var(0), 0)
trigger3 = var(14) % 60 = 7 || var(14) % 60 = 8

;===========================================================================
; ARTIFICIAL INTELLIGENCE (ORDERED BY ARBITRARY PREFERENCE)
;===========================================================================

[state -1, AI Ground Recovery]
type = changestate
value = 5200
triggerall = ailevel && numenemy && roundstate = 2
trigger1 = alive && gethitvar(fall.recover) && (stateno = 5050 || stateno = 5071) && vel y > 0
trigger1 = pos y + vel y >= const(movement.air.gethit.groundrecover.ground.threshold)
trigger1 = cond(numhelper(4000), helper(4000),var(3), 1)
trigger1 = fvar(7) < fvar(8) && !var(30)
trigger1 = random < 24 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Aerial Recovery]
type = changestate
value = 5210
triggerall = ailevel && numenemy && roundstate = 2
trigger1 = alive && canrecover && stateno = 5050
trigger1 = vel y > const(movement.air.gethit.airrecover.threshold)
trigger1 = pos y + vel y < const(movement.air.gethit.groundrecover.ground.threshold)
trigger1 = cond(numhelper(4000), helper(4000),var(4), 1)
trigger1 = fvar(7) < fvar(8) && !var(30)
trigger1 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Jump]
type = changestate
value = 40
triggerall = ailevel && numenemy && roundstate = 2
triggerall = statetype != A && stateno != 40
; condition
trigger1 = ctrl && inguarddist
trigger1 = enemynear,hitdefattr = SC,AT
trigger1 = random < 600 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Guard]
type = changestate
value = 120
triggerall = ailevel && numenemy && roundstate = 2
triggerall = inguarddist && !numhelper(917) 
triggerall = ctrl && stateno != [120, 165]
; triggerall = p2bodydist x >= const(size.ground.front) * 2.0
triggerall = enemynear,hitdefattr != SCA,AT && enemynear,time < 70
; condition
trigger1 = cond(numhelper(4000), cond(!helper(4000),var(34), statetype != A, 1), statetype != A)
trigger1 = cond(numhelper(915), helper(915),var(0) < 0 || helper(915),var(1), 1)
trigger1 = random < cond(statetype = A && p2statetype != A, 0, cond(statetype != A && p2statetype = A, 896, 896)) * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Dash Forward]
type = changestate
value = 100
triggerall = ailevel && numenemy && roundstate = 2
triggerall = statetype != A
; condition
trigger1 = ctrl && !inguarddist
trigger1 = p2movetype != A && p2bodydist x > 200
trigger1 = random < 32 * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger2 = ctrl
trigger2 = (p2statetype = L || p2statetype = A && p2movetype = H && p2stateno = 5050) && p2bodydist x > 128
trigger2 = random < 32 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Dash Backward]
type = changestate
value = 105
triggerall = ailevel && numenemy && roundstate = 2
triggerall = statetype != A && stateno != 105
; condition
trigger1 = ctrl && !inguarddist
trigger1 = frontedgedist < backedgedist && p2stateno = 5120 && p2bodydist x = [ -8, 32]
trigger1 = random < 200 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI C. Hard Kick]
type = changestate
value = 450
triggerall = ailevel && numenemy && roundstate = 2 && !var(9) && !var(13)
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L && p2statetype != A
triggerall = statetype != A
; condition
trigger1 = ctrl
trigger1 = p2bodydist x = [-8, (116 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [cond(enemynear,vel y > 0, -16 - enemynear,vel y, -16) * const(size.yscale), 8]
trigger1 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
; Custom Punch Chains
trigger2 = cond(numhelper(4000), helper(4000),var(0), 0)
trigger2 = var(14) % 50 = 1 || var(14) % 50 = 2 || var(14) % 50 = 4 || var(14) % 50 = 5
trigger2 = p2bodydist x = [-8, (116 - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [cond(enemynear,vel y > 0, -16 - enemynear,vel y, -16) * const(size.yscale), 8]
trigger2 = random < 32 * (ailevel ** 2.0 / 64.0) ; probability
; Custom Kick Chains
trigger3 = cond(numhelper(4000), helper(4000),var(0), 0)
trigger3 = var(14) % 60 = 1 || var(14) % 60 = 2 || var(14) % 60 = 4 || var(14) % 60 = 5
trigger3 = p2bodydist x = [-8, (116 - const(size.ground.front)) * const(size.xscale)]
trigger3 = p2dist y = [cond(enemynear,vel y > 0, -16 - enemynear,vel y, -16) * const(size.yscale), 8]
trigger3 = random < 32 * (ailevel ** 2.0 / 64.0) ; probability
; Misc Cancels
trigger4 = var(40) = 2 || var(40) = 4 || var(40) = 5
trigger4 = p2bodydist x = [-8, (116 - const(size.ground.front)) * const(size.xscale)]
trigger4 = p2dist y = [cond(enemynear,vel y > 0, -16 - enemynear,vel y, -16) * const(size.yscale), 8]
trigger4 = random < 16 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI S. Light Punch]
type = changestate
value = 200
triggerall = ailevel && numenemy && roundstate = 2 && !var(9) && !var(13)
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L && p2statetype != C
triggerall = statetype != A
; condition
trigger1 = ctrl
trigger1 = p2bodydist x = [-8, (84 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [cond(enemynear,vel y > 0, -94 - enemynear,vel y, -94) * const(size.yscale), 8]
trigger1 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
; Misc Cancels
trigger2 = var(40) = 1 || var(40) = 4 || var(40) = 5
trigger2 = p2bodydist x = [-8, (84 - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [cond(enemynear,vel y > 0, -94 - enemynear,vel y, -94) * const(size.yscale), 8]
trigger2 = random < 16 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Forward + Mid Punch]
type = changestate
value = 700
triggerall = ailevel && numenemy && roundstate = 2 && !var(9) && !var(13)
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = statetype != A
; condition
trigger1 = ctrl
trigger1 = p2bodydist x = [-8, (137 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [cond(enemynear,vel y > 0, -122 - enemynear,vel y, -122) * const(size.yscale), 8]
trigger1 = random < 16 * (ailevel ** 2.0 / 64.0) ; probability
; Misc Cancels
trigger2 = var(40) = 2 || var(40) = 4 || var(40) = 5
trigger2 = p2bodydist x = [-8, (137 - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [cond(enemynear,vel y > 0, -122 - enemynear,vel y, -122) * const(size.yscale), 8]
trigger2 = random < 16 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI S. Hard Punch]
type = changestate
value = 220
triggerall = ailevel && numenemy && roundstate = 2 && !var(9) && !var(13)
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = statetype != A
; condition
trigger1 = ctrl
trigger1 = p2bodydist x = [-8, (110 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [cond(enemynear,vel y > 0, -98 - enemynear,vel y, -98) * const(size.yscale), 8]
trigger1 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
; Custom Punch Chains
trigger2 = cond(numhelper(4000), helper(4000),var(0), 0) 
trigger2 = var(14) % 50 = 1 || var(14) % 50 = 2 || var(14) % 50 = 4 || var(14) % 50 = 5
trigger2 = p2bodydist x = [-8, (110 - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [cond(enemynear,vel y > 0, -98 - enemynear,vel y, -98) * const(size.yscale), 8]
trigger2 = random < 32 * (ailevel ** 2.0 / 64.0) ; probability
; Custom Kick Chains
trigger3 = cond(numhelper(4000), helper(4000),var(0), 0)
trigger3 = var(14) % 60 = 1 || var(14) % 60 = 2 || var(14) % 60 = 4 || var(14) % 60 = 5
trigger3 = p2bodydist x = [-8, (110 - const(size.ground.front)) * const(size.xscale)]
trigger3 = p2dist y = [cond(enemynear,vel y > 0, -98 - enemynear,vel y, -98) * const(size.yscale), 8]
trigger3 = random < 32 * (ailevel ** 2.0 / 64.0) ; probability
; Misc Cancels
trigger4 = var(40) = 2 || var(40) = 4 || var(40) = 5
trigger4 = p2bodydist x = [-8, (110 - const(size.ground.front)) * const(size.xscale)]
trigger4 = p2dist y = [cond(enemynear,vel y > 0, -98 - enemynear,vel y, -98) * const(size.yscale), 8]
trigger4 = random < 16 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI S. Mid Kick]
type = changestate
value = 240
triggerall = ailevel && numenemy && roundstate = 2 && !var(9) && !var(13)
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L && p2statetype != A
triggerall = statetype != A
; condition
trigger1 = ctrl
trigger1 = p2bodydist x = [-8, (134 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [cond(enemynear,vel y > 0, -82 - enemynear,vel y, -82) * const(size.yscale), 8]
trigger1 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
; Custom Punch Chains
trigger2 = cond(numhelper(4000), helper(4000),var(0), 0) 
trigger2 = var(14) % 50 = 1 || var(14) % 50 = 2 || var(14) % 50 = 4 || var(14) % 50 = 5
trigger2 = p2bodydist x = [-8, (134 - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [cond(enemynear,vel y > 0, -82 - enemynear,vel y, -82) * const(size.yscale), 8]
trigger2 = random < 32 * (ailevel ** 2.0 / 64.0) ; probability
; Custom Kick Chains
trigger3 = cond(numhelper(4000), helper(4000),var(0), 0)
trigger3 = var(14) % 60 = 1 || var(14) % 60 = 4
trigger3 = p2bodydist x = [-8, (134 - const(size.ground.front)) * const(size.xscale)]
trigger3 = p2dist y = [cond(enemynear,vel y > 0, -82 - enemynear,vel y, -82) * const(size.yscale), 8]
trigger3 = random < 32 * (ailevel ** 2.0 / 64.0) ; probability
; Misc Cancels
trigger4 = var(40) = 2 || var(40) = 4 || var(40) = 5
trigger4 = p2bodydist x = [-8, (134 - const(size.ground.front)) * const(size.xscale)]
trigger4 = p2dist y = [cond(enemynear,vel y > 0, -82 - enemynear,vel y, -82) * const(size.yscale), 8]
trigger4 = random < 16 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI S. Mid Punch]
type = changestate
value = 210
triggerall = ailevel && numenemy && roundstate = 2 && !var(9) && !var(13)
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L && p2statetype != C
triggerall = statetype != A
; condition
trigger1 = ctrl
trigger1 = p2bodydist x = [-8, (98 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [cond(enemynear,vel y > 0, -94 - enemynear,vel y, -94) * const(size.yscale), 8]
trigger1 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
; Custom Punch Chains
trigger2 = cond(numhelper(4000), helper(4000),var(0), 0)
trigger2 = var(14) % 50 = 1 || var(14) % 50 = 4
trigger2 = p2bodydist x = [-8, (98 - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [cond(enemynear,vel y > 0, -94 - enemynear,vel y, -94) * const(size.yscale), 8]
trigger2 = random < 32 * (ailevel ** 2.0 / 64.0) ; probability
; Custom Kick Chains
trigger3 = cond(numhelper(4000), helper(4000),var(0), 0)
trigger3 = var(14) % 60 = 1 || var(14) % 60 = 4
trigger3 = p2bodydist x = [-8, (98 - const(size.ground.front)) * const(size.xscale)]
trigger3 = p2dist y = [cond(enemynear,vel y > 0, -94 - enemynear,vel y, -94) * const(size.yscale), 8]
trigger3 = random < 32 * (ailevel ** 2.0 / 64.0) ; probability
; Misc Cancels
trigger4 = var(40) = 2 || var(40) = 4 || var(40) = 5
trigger4 = var(14) % 60 = 1 || var(14) % 60 = 4
trigger4 = p2bodydist x = [-8, (98 - const(size.ground.front)) * const(size.xscale)]
trigger4 = p2dist y = [cond(enemynear,vel y > 0, -94 - enemynear,vel y, -94) * const(size.yscale), 8]
trigger4 = random < 16 * (ailevel ** 2.0 / 64.0) ; probability
; Target Cancels
trigger5 = var(43) = 1
trigger5 = var(14) % 60 = 1 || var(14) % 60 = 4
trigger5 = p2bodydist x = [-8, (98 - const(size.ground.front)) * const(size.xscale)]
trigger5 = p2dist y = [cond(enemynear,vel y > 0, -94 - enemynear,vel y, -94) * const(size.yscale), 8]
trigger5 = random < 256 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Dangerous Headbutt]
type = changestate
value = 1200
triggerall = ailevel && numenemy && roundstate = 2 && !var(9) && !var(13)
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L && p2statetype = A
triggerall = statetype != A
; condition
trigger1 = ctrl || stateno = 52
trigger1 = p2bodydist x = [16, (152 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [cond(enemynear,vel y > 0, -136 - enemynear,vel y, -136) * const(size.yscale), 8]
trigger1 = random < 32 * (ailevel ** 2.0 / 64.0) ; probability
trigger1 = var(18) := cond(p2dist x <= 128 && p2dist y >= -117, 1, cond(random < 256 && p2dist y >= -136, 2, 3)) ; level
; Normal Punch Cancels
trigger2 = var(14) % 50 = 1 || var(14) % 50 = 2 || var(14) % 50 = 4|| var(14) % 50 = 6
trigger2 = p2bodydist x = [16, (152 - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [cond(enemynear,vel y > 0, -136 - enemynear,vel y, -136) * const(size.yscale), 8]
trigger2 = movehit && numtarget
trigger2 = random < 16 * (ailevel ** 2.0 / 64.0) ; probability
trigger2 = var(18) := cond(p2dist x <= 128 && p2dist y >= -117, 1, cond(random < 256 && p2dist y >= -136, 2, 3)) ; level
; Normal Kick Cancels
trigger3 = var(14) % 60 = 1 || var(14) % 60 = 4
trigger3 = p2bodydist x = [16, (152 - const(size.ground.front)) * const(size.xscale)]
trigger3 = p2dist y = [cond(enemynear,vel y > 0, -136 - enemynear,vel y, -136) * const(size.yscale), 8]
trigger3 = movehit && numtarget
trigger3 = random < 16 * (ailevel ** 2.0 / 64.0) ; probability
trigger3 = var(18) := cond(p2dist x <= 128 && p2dist y >= -117, 1, cond(random < 256 && p2dist y >= -136, 2, 3)) ; level
; condition
trigger4 = ctrl && stateno = 225 && movehit
trigger4 = p2bodydist x = [16, (152 - const(size.ground.front)) * const(size.xscale)]
trigger4 = p2dist y = [(-128 - (7 * enemynear,vel y)) * const(size.yscale), 8]
trigger4 = p2statetype = A && p2movetype = H
trigger4 = random < 296 * (ailevel ** 2.0 / 64.0) ; probability
trigger4 = var(18) := 1 ; level

[state -1, AI EX Dangerous Headbutt]
type = changestate
value = 1250
triggerall = ailevel && numenemy && roundstate = 2 && !var(9) && !var(13)
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L && p2statetype = A
triggerall = statetype != A
triggerall = var(28) >= var(26) && !var(29) && fvar(26)
; condition
trigger1 = ctrl || stateno = 52
trigger1 = p2bodydist x = [16, (160 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [cond(enemynear,vel y, -121 - (9 * enemynear,vel y), -121) * const(size.yscale), 8]
trigger1 = random < 32 * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger2 = ctrl && stateno = 225 && movehit
trigger2 = p2bodydist x = [16, (152 - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [(-121 - (9 * enemynear,vel y)) * const(size.yscale), 8]
trigger2 = p2statetype = A && p2movetype = H
trigger2 = random < 296 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Tyrant Slaughter]
type = changestate
value = 3000
triggerall = ailevel && numenemy && roundstate = 2 && !var(9) && !var(13)
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = statetype != A
triggerall = var(21) <= 2 || var(21) = 3
triggerall = var(28) >= var(27) && !var(29)
; condition
trigger1 = ctrl || stateno = 52
trigger1 = p2bodydist x = [-8, (320 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [cond(enemynear,vel y > 0, -86 - enemynear,vel y, -86) * const(size.yscale), 8]
trigger1 = random < (32 + 400 * (stateno = [910, 911])) * (ailevel ** 2.0 / 64.0) ; probability
; Normal Punch Cancels
trigger2 = var(15) % 50 = 1 || var(15) % 50 = 2 || var(15) % 50 = 4|| var(15) % 50 = 6
trigger2 = p2bodydist x = [-8, (320 - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [cond(enemynear,vel y > 0, -86 - enemynear,vel y, -86) * const(size.yscale), 8]
trigger2 = movehit && numtarget
trigger2 = random < 128 * (ailevel ** 2.0 / 64.0) ; probability
; Normal Kick Cancels
trigger3 = var(15) % 60 = 1 || var(15) % 60 = 4
trigger3 = p2bodydist x = [-8, (320 - const(size.ground.front)) * const(size.xscale)]
trigger3 = p2dist y = [cond(enemynear,vel y > 0, -86 - enemynear,vel y, -86) * const(size.yscale), 8]
trigger3 = movehit && numtarget
trigger3 = random < 128 * (ailevel ** 2.0 / 64.0) ; probability
; Special Cancels
trigger4 = var(16) = 1 || var(16) = 2
trigger4 = p2bodydist x = [-8, (320 - const(size.ground.front)) * const(size.xscale)]
trigger4 = p2dist y = [cond(enemynear,vel y > 0, -86 - enemynear,vel y, -86) * const(size.yscale), 8]
trigger4 = movehit && numtarget
trigger4 = cond(stateno = 1400, p2statetype != A || p2dist y >= -80, 1)
trigger4 = random < 256 * (ailevel ** 2.0 / 64.0) ; probability
; Super Art Cancels
trigger5 = var(16) = 102 || var(16) = 103
trigger5 = prevstateno != [3000, 3099]
trigger5 = p2bodydist x = [-8, (320 - const(size.ground.front)) * const(size.xscale)]
trigger5 = p2dist y = [cond(enemynear,vel y > 0, -86 - enemynear,vel y, -86) * const(size.yscale), 8]
trigger5 = movehit && numtarget
trigger5 = random < 256 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Chariot Tackle]
type = changestate
value = 1100
triggerall = ailevel && numenemy && roundstate = 2 && !var(9) && !var(13)
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = statetype != A
; condition
trigger1 = ctrl || stateno = 52
trigger1 = p2bodydist x = [16, (320 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [cond(enemynear,vel y > 0, -83 - (cond(p2dist x <= 176, 7, cond(p2bodydist x <= 256, 10, 13)) * enemynear,vel y), -83) * const(size.yscale), 8]
trigger1 = random < 32 * (ailevel ** 2.0 / 64.0) ; probability
trigger1 = var(18) := cond(p2dist x <= 176, 1, cond(p2bodydist x <= 256, 2, 3)) ; level
; Normal Punch Cancels
trigger2 = var(14) % 50 = 1 || var(14) % 50 = 2 || var(14) % 50 = 4|| var(14) % 50 = 6
trigger2 = p2bodydist x = [16, (320 - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [cond(enemynear,vel y > 0, -83 - (cond(p2dist x <= 176, 7, cond(p2bodydist x <= 256, 10, 13)) * enemynear,vel y), -83) * const(size.yscale), 8]
trigger2 = movehit && numtarget
trigger2 = random < 16 * (ailevel ** 2.0 / 64.0) ; probability
trigger2 = var(18) := cond(p2dist x <= 176, 1, cond(p2bodydist x <= 256, 2, 3)) ; level
; Normal Kick Cancels
trigger3 = var(14) % 60 = 1 || var(14) % 60 = 4
trigger3 = p2bodydist x = [16, (320 - const(size.ground.front)) * const(size.xscale)]
trigger3 = p2dist y = [cond(enemynear,vel y > 0, -83 - (cond(p2dist x <= 176, 7, cond(p2bodydist x <= 256, 10, 13)) * enemynear,vel y), -83) * const(size.yscale), 8]
trigger3 = movehit && numtarget
trigger3 = random < 16 * (ailevel ** 2.0 / 64.0) ; probability
trigger3 = var(18) := cond(p2dist x <= 176, 1, cond(p2bodydist x <= 256, 2, 3)) ; level

[state -1, AI EX Chariot Tackle]
type = changestate
value = 1150
triggerall = ailevel && numenemy && roundstate = 2 && !var(9) && !var(13)
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = statetype != A
triggerall = var(28) >= var(26) && !var(29)
; condition
trigger1 = ctrl || stateno = 52
trigger1 = p2bodydist x = [16, (320 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [cond(enemynear,vel y > 0, -83 - (6 * enemynear,vel y), -83) * const(size.yscale), 8]
trigger1 = random < 16 * (ailevel ** 2.0 / 64.0) ; probability
; Normal Punch Cancels
trigger2 = var(14) % 50 = 1 || var(14) % 50 = 2 || var(14) % 50 = 4|| var(14) % 50 = 6
trigger2 = p2bodydist x = [16, (320 - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [cond(enemynear,vel y > 0, -83 - (6 * enemynear,vel y), -83) * const(size.yscale), 8]
trigger2 = movehit && numtarget
trigger2 = random < 16 * (ailevel ** 2.0 / 64.0) ; probability
; Normal Kick Cancels
trigger3 = var(14) % 60 = 1 || var(14) % 60 = 4
trigger3 = p2bodydist x = [16, (320 - const(size.ground.front)) * const(size.xscale)]
trigger3 = p2dist y = [cond(enemynear,vel y > 0, -83 - (6 * enemynear,vel y), -83) * const(size.yscale), 8]
trigger3 = movehit && numtarget
trigger3 = random < 16 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI S. Hard Kick]
type = changestate
value = 250
triggerall = ailevel && numenemy && roundstate = 2 && !var(9) && !var(13)
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = statetype != A
; condition
trigger1 = ctrl
trigger1 = p2bodydist x = [-8, (79 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [cond(enemynear,vel y > 0, -138 - enemynear,vel y, -138) * const(size.yscale), 8]
trigger1 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
; Custom Punch Chains
trigger2 = cond(numhelper(4000), helper(4000),var(0), 0)
trigger2 = var(14) % 50 = 1 || var(14) % 50 = 2 || var(14) % 50 = 4 || var(14) % 50 = 5
trigger2 = p2bodydist x = [-8, (79 - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [cond(enemynear,vel y > 0, -138 - enemynear,vel y, -138) * const(size.yscale), 8]
trigger2 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
; Custom Kick Chains
trigger3 = cond(numhelper(4000), helper(4000),var(0), 0)
trigger3 = var(14) % 60 = 1 || var(14) % 60 = 2 || var(14) % 60 = 4 || var(14) % 60 = 5
trigger3 = p2bodydist x = [-8, (79 - const(size.ground.front)) * const(size.xscale)]
trigger3 = p2dist y = [cond(enemynear,vel y > 0, -138 - enemynear,vel y, -138) * const(size.yscale), 8]
trigger3 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
; Misc Cancels
trigger4 = var(40) = 2 || var(40) = 4 || var(40) = 5
trigger4 = p2bodydist x = [-8, (79 - const(size.ground.front)) * const(size.xscale)]
trigger4 = p2dist y = [cond(enemynear,vel y > 0, -138 - enemynear,vel y, -138) * const(size.yscale), 8]
trigger4 = random < 16 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Throw]
type = changestate
value = 800
triggerall = ailevel && numenemy && roundstate = 2 && !var(9) && !var(13)
triggerall = p2stateno != 5120 && p2stateno != 5201 ; || enemynear,ctrl
triggerall = p2statetype != L && p2statetype != A && p2movetype != H
triggerall = statetype != A
; condition
trigger1 = ctrl
trigger1 = p2bodydist x = [-8, (51 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [-8 * const(size.yscale), 8]
trigger1 = random < (512 + 200 * (stateno = [910, 911])) * (ailevel ** 2.0 / 64.0) ; probability
trigger1 = var(18) := cond(enemynear,frontedgedist < enemynear,backedgedist && random < 496, 840, 830) ; level

[state -1, AI Forward + Hard Punch]
type = changestate
value = 705
triggerall = ailevel && numenemy && roundstate = 2 && !var(9) && !var(13)
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = statetype != A
; condition
trigger1 = ctrl
trigger1 = p2bodydist x = [-8, (100 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [cond(enemynear,vel y > 0, -63 - enemynear,vel y, -63) * const(size.yscale), 8]
trigger1 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
; Misc Cancels
trigger2 = var(40) = 2 || var(40) = 4 || var(40) = 5
trigger2 = p2bodydist x = [-8, (100 - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [cond(enemynear,vel y > 0, -63 - enemynear,vel y, -63) * const(size.yscale), 8]
trigger2 = random < 16 * (ailevel ** 2.0 / 64.0) ; probability
; Target Cancels
trigger3 = var(43) = 2
trigger3 = p2bodydist x = [-8, (100 - const(size.ground.front)) * const(size.xscale)]
trigger3 = p2dist y = [cond(enemynear,vel y > 0, -63 - enemynear,vel y, -63) * const(size.yscale), 8]
trigger3 = random < 256 * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger4 = ctrl
trigger4 = p2statetype = C && p2stateno < 1000
trigger4 = p2bodydist x = [-8, (100 - const(size.ground.front)) * const(size.xscale)]
trigger4 = random < 128 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Universal Overhead]
type = changestate
value = 900
triggerall = ailevel && numenemy && roundstate = 2 && !var(9) && !var(13)
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L && p2statetype != A
triggerall = statetype != A
; condition
trigger1 = ctrl
trigger1 = p2statetype = C && p2stateno < 1000
trigger1 = p2bodydist x = [-8, (104 - const(size.ground.front)) * const(size.xscale)]
trigger1 = random < 128 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI EX Violence Kneedrop]
type = changestate
value = 1350
triggerall = ailevel && numenemy && roundstate = 2 && !var(9) && !var(13)
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L ; && p2statetype != A
triggerall = statetype != A
triggerall = var(28) >= var(26) && !var(29) && fvar(26)
; condition
trigger1 = ctrl || stateno = 52
trigger1 = p2bodydist x >= 64 ; [64, (176 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [cond(enemynear,vel y > 0, -137 - enemynear,vel y, -137) * const(size.yscale), 8]
trigger1 = random < 32 * (ailevel ** 2.0 / 64.0) ; probability
; Normal Punch Cancels
trigger2 = var(14) % 50 = 1 || var(14) % 50 = 2 || var(14) % 50 = 4|| var(14) % 50 = 6
trigger2 = p2bodydist x >= 64 ; [64, (176 - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [cond(enemynear,vel y > 0, -137 - enemynear,vel y, -137) * const(size.yscale), 8]
trigger2 = movehit && numtarget
trigger2 = random < 8 * (ailevel ** 2.0 / 64.0) ; probability
; Normal Kick Cancels
trigger3 = var(14) % 60 = 1 || var(14) % 60 = 4
trigger3 = p2bodydist x >= 64 ; [64, (176 - const(size.ground.front)) * const(size.xscale)]
trigger3 = p2dist y = [cond(enemynear,vel y > 0, -137 - enemynear,vel y, -137) * const(size.yscale), 8]
trigger3 = movehit && numtarget
trigger3 = random < 8 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Violence Kneedrop]
type = changestate
value = 1300
triggerall = ailevel && numenemy && roundstate = 2 && !var(9) && !var(13)
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L ; && p2statetype != A
triggerall = statetype != A
; condition
trigger1 = ctrl || stateno = 52
trigger1 = p2bodydist x = [32, (256 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [cond(enemynear,vel y > 0, -170 - enemynear,vel y, -170) * const(size.yscale), 8]
trigger1 = random < 32 * (ailevel ** 2.0 / 64.0) ; probability
trigger1 = var(18) := cond(p2dist x <= 112, 1, cond(p2dist x <= -184, 2, 3)) ; level
; Normal Punch Cancels
trigger2 = var(14) % 50 = 1 || var(14) % 50 = 2 || var(14) % 50 = 4|| var(14) % 50 = 62
trigger2 = p2bodydist x = [32, (256 - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [cond(enemynear,vel y > 0, -170 - enemynear,vel y, -170) * const(size.yscale), 8]
trigger2 = movehit && numtarget
trigger2 = random < 8 * (ailevel ** 2.0 / 64.0) ; probability
trigger2 = var(18) := cond(p2dist x <= 112, 1, cond(p2dist x <= -184, 2, 3)) ; level
; Normal Kick Cancels
trigger3 = var(14) % 60 = 1 || var(14) % 60 = 42
trigger3 = p2bodydist x = [32, (256 - const(size.ground.front)) * const(size.xscale)]
trigger3 = p2dist y = [cond(enemynear,vel y > 0, -170 - enemynear,vel y, -170) * const(size.yscale), 8]
trigger3 = movehit && numtarget
trigger3 = random < 8 * (ailevel ** 2.0 / 64.0) ; probability
trigger3 = var(18) := cond(p2dist x <= 112, 1, cond(p2dist x <= -184, 2, 3)) ; level
; condition
trigger4 = ctrl
trigger4 = p2statetype = C && p2stateno < 1000
trigger4 = p2bodydist x = [8, (256 - const(size.ground.front)) * const(size.xscale)]
trigger4 = random < 128 * (ailevel ** 2.0 / 64.0) ; probability
trigger4 = var(18) := cond(p2dist x <= 112, 1, cond(p2dist x <= -184, 2, 3)) ; level

[state -1, AI C. Mid Punch]
type = changestate
value = 410
triggerall = ailevel && numenemy && roundstate = 2 && !var(9) && !var(13)
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L && p2statetype != A
triggerall = statetype != A
; condition
trigger1 = ctrl
trigger1 = p2bodydist x = [-8, (140 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [cond(enemynear,vel y > 0, -54 - enemynear,vel y, -54) * const(size.yscale), 8]
trigger1 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
; Custom Punch Chains
trigger2 = cond(numhelper(4000), helper(4000),var(0), 0) 
trigger2 = var(14) % 50 = 1 || var(14) % 50 = 4
trigger2 = p2bodydist x = [-8, (140 - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [cond(enemynear,vel y > 0, -54 - enemynear,vel y, -54) * const(size.yscale), 8]
trigger2 = random < 32 * (ailevel ** 2.0 / 64.0) ; probability
; Custom Kick Chains
trigger3 = cond(numhelper(4000), helper(4000),var(0), 0) 
trigger3 = var(14) % 60 = 1 || var(14) % 60 = 4
trigger3 = p2bodydist x = [-8, (140 - const(size.ground.front)) * const(size.xscale)]
trigger3 = p2dist y = [cond(enemynear,vel y > 0, -54 - enemynear,vel y, -54) * const(size.yscale), 8]
trigger3 = random < 32 * (ailevel ** 2.0 / 64.0) ; probability
; Misc Cancels
trigger4 = var(40) = 2 || var(40) = 4 || var(40) = 5
trigger4 = p2bodydist x = [-8, (140 - const(size.ground.front)) * const(size.xscale)]
trigger4 = p2dist y = [cond(enemynear,vel y > 0, -54 - enemynear,vel y, -54) * const(size.yscale), 8]
trigger4 = random < 16 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI C. Hard Punch]
type = changestate
value = 420
triggerall = ailevel && numenemy && roundstate = 2 && !var(9) && !var(13)
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = statetype != A
; condition
trigger1 = ctrl
trigger1 = p2bodydist x = [-8, (75 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [cond(enemynear,vel y > 0, -121 - enemynear,vel y, -121) * const(size.yscale), 8]
trigger1 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
; Custom Punch Chains
trigger2 = cond(numhelper(4000), helper(4000),var(0), 0)
trigger2 = var(14) % 50 = 1 || var(14) % 50 = 2 || var(14) % 50 = 4 || var(14) % 50 = 5
trigger2 = p2bodydist x = [-8, (75 - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [cond(enemynear,vel y > 0, -121 - enemynear,vel y, -121) * const(size.yscale), 8]
trigger2 = random < 32 * (ailevel ** 2.0 / 64.0) ; probability
; Custom Kick Chains
trigger3 = cond(numhelper(4000), helper(4000),var(0), 0) 
trigger3 = var(14) % 60 = 1 || var(14) % 60 = 2 || var(14) % 60 = 4 || var(14) % 60 = 5
trigger3 = p2bodydist x = [-8, (75 - const(size.ground.front)) * const(size.xscale)]
trigger3 = p2dist y = [cond(enemynear,vel y > 0, -121 - enemynear,vel y, -121) * const(size.yscale), 8]
trigger3 = random < 32 * (ailevel ** 2.0 / 64.0) ; probability
; Misc Cancels
trigger4 = var(40) = 2 || var(40) = 4 || var(40) = 5
trigger4 = p2bodydist x = [-8, (75 - const(size.ground.front)) * const(size.xscale)]
trigger4 = p2dist y = [cond(enemynear,vel y > 0, -121 - enemynear,vel y, -121) * const(size.yscale), 8]
trigger4 = random < 16 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI C. Mid Kick]
type = changestate
value = 440
triggerall = ailevel && numenemy && roundstate = 2 && !var(9) && !var(13)
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L && p2statetype != A
triggerall = statetype != A
; condition
trigger1 = ctrl
trigger1 = p2bodydist x = [-8, (107 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [cond(enemynear,vel y > 0, -16 - enemynear,vel y, -16) * const(size.yscale), 8]
trigger1 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
; Custom Punch Chains
trigger2 = cond(numhelper(4000), helper(4000),var(0), 0)
trigger2 = var(14) % 50 = 1 || var(14) % 50 = 2 || var(14) % 50 = 4 || var(14) % 50 = 5
trigger2 = p2bodydist x = [-8, (107 - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [cond(enemynear,vel y > 0, -16 - enemynear,vel y, -16) * const(size.yscale), 8]
trigger2 = random < 32 * (ailevel ** 2.0 / 64.0) ; probability
; Custom Kick Chains
trigger3 = cond(numhelper(4000), helper(4000),var(0), 0)
trigger3 = var(14) % 60 = 1 || var(14) % 60 = 4
trigger3 = p2bodydist x = [-8, (107 - const(size.ground.front)) * const(size.xscale)]
trigger3 = p2dist y = [cond(enemynear,vel y > 0, -16 - enemynear,vel y, -16) * const(size.yscale), 8]
trigger3 = random < 32 * (ailevel ** 2.0 / 64.0) ; probability
; Misc Cancels
trigger4 = var(40) = 2 || var(40) = 4 || var(40) = 5
trigger4 = p2bodydist x = [-8, (107 - const(size.ground.front)) * const(size.xscale)]
trigger4 = p2dist y = [cond(enemynear,vel y > 0, -16 - enemynear,vel y, -16) * const(size.yscale), 8]
trigger4 = random < 16 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI C. Light Kick]
type = changestate
value = 430
triggerall = ailevel && numenemy && roundstate = 2 && !var(9) && !var(13)
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L && p2statetype != A
triggerall = statetype != A
; condition
trigger1 = ctrl
trigger1 = p2bodydist x = [-8, (97 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [cond(enemynear,vel y > 0, -12 - enemynear,vel y, -12) * const(size.yscale), 8]
trigger1 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
; Custom Punch Chains
trigger2 = cond(numhelper(4000), helper(4000),var(0), 0)
trigger2 = var(14) % 50 = 1 || var(14) % 50 = 4
trigger2 = p2bodydist x = [-8, (97 - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [cond(enemynear,vel y > 0, -12 - enemynear,vel y, -12) * const(size.yscale), 8]
trigger2 = random < 32 * (ailevel ** 2.0 / 64.0) ; probability
; Misc Cancels
trigger3 = var(40) = 2 || var(40) = 4 || var(40) = 5
trigger3 = p2bodydist x = [-8, (97 - const(size.ground.front)) * const(size.xscale)]
trigger3 = p2dist y = [cond(enemynear,vel y > 0, -12 - enemynear,vel y, -12) * const(size.yscale), 8]
trigger3 = random < 16 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI C. Light Punch]
type = changestate
value = 400
triggerall = ailevel && numenemy && roundstate = 2 && !var(9) && !var(13)
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L && p2statetype != A
triggerall = statetype != A
; condition
trigger1 = ctrl
trigger1 = p2bodydist x = [-8, (82 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [cond(enemynear,vel y > 0, -62 - enemynear,vel y, -62) * const(size.yscale), 8]
trigger1 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
; Misc Cancels
trigger2 = var(40) = 2 || var(40) = 3 || var(40) = 5
trigger2 = p2bodydist x = [-8, (82 - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [cond(enemynear,vel y > 0, -62 - enemynear,vel y, -62) * const(size.yscale), 8]
trigger2 = random < 16 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI S. Light Kick]
type = changestate
value = 230
triggerall = ailevel && numenemy && roundstate = 2 && !var(9) && !var(13)
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L && p2statetype != A
triggerall = statetype != A
; condition
trigger1 = ctrl
trigger1 = p2bodydist x = [-8, (72 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [cond(enemynear,vel y > 0, -34 - enemynear,vel y, -34) * const(size.yscale), 8]
trigger1 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
; Custom Punch Chains
trigger2 = cond(numhelper(4000), helper(4000),var(0), 0)
trigger2 = var(14) % 50 = 1 || var(14) % 50 = 4
trigger2 = p2bodydist x = [-8, (72 - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [cond(enemynear,vel y > 0, -34 - enemynear,vel y, -34) * const(size.yscale), 8]
trigger2 = random < 32 * (ailevel ** 2.0 / 64.0) ; probability
; Misc Cancels
trigger3 = var(40) = 2 || var(40) = 4
trigger3 = p2bodydist x = [-8, (72 - const(size.ground.front)) * const(size.xscale)]
trigger3 = p2dist y = [cond(enemynear,vel y > 0, -34 - enemynear,vel y, -34) * const(size.yscale), 8]
trigger3 = random < 16 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Forward + Mid Kick]
type = changestate
value = 710
triggerall = ailevel && numenemy && roundstate = 2 && !var(9) && !var(13)
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L && p2statetype != A
triggerall = statetype != A
; condition
trigger1 = ctrl
trigger1 = p2bodydist x = [-8, (176 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [cond(enemynear,vel y > 0, -76 - enemynear,vel y, -76) * const(size.yscale), 8]
trigger1 = random < 16 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Personal Action]
type = changestate
value = 920
triggerall = ailevel && numenemy && roundstate = 2
triggerall = statetype != A && stateno != 920
; condition
trigger1 = ctrl && !var(47)
trigger1 = p2movetype = H && (p2statetype = A || p2statetype = L)
trigger1 = p2bodydist x > 144
trigger1 = random < 32 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Aegis Reflector]
type = changestate
value = 3200
triggerall = ailevel && numenemy && roundstate = 2 && !var(9) && !var(13)
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L ; && p2statetype != A
triggerall = statetype != A
triggerall = var(21) <= 2 || var(21) = 5
triggerall = var(28) >= var(27) && !var(29)
; condition
trigger1 = ctrl || stateno = 52
trigger1 = p2bodydist x >= 64 ; [64, (176 - const(size.ground.front)) * const(size.xscale)]
; trigger1 = p2dist y = [cond(enemynear,vel y > 0, -116 - enemynear,vel y, -116) * const(size.yscale), 8]
trigger1 = random < 16 * (ailevel ** 2.0 / 64.0) ; probability
trigger1 = var(18) := cond(random < 256, 5, cond(random < 128, 6, 8)) ; level

[state -1, AI Temporal Thunder]
type = changestate
value = 3100
triggerall = ailevel && numenemy && roundstate = 2 && !var(9) && !var(13)
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L ; && p2statetype != A
triggerall = statetype != A
triggerall = var(21) <= 2 || var(21) = 4
triggerall = var(28) >= var(27) && !var(29)
; condition
trigger1 = ctrl || stateno = 52
trigger1 = p2bodydist x >= 32 ; [64, (176 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [cond(enemynear,vel y > 0, -116 - enemynear,vel y, -116) * const(size.yscale), 8]
trigger1 = random < (8 + 400 * (stateno = [910, 911])) * (ailevel ** 2.0 / 64.0) ; probability
; Normal Punch Cancels
trigger2 = var(15) % 50 = 1 || var(15) % 50 = 2 || var(15) % 50 = 4|| var(15) % 50 = 6
trigger2 = p2bodydist x = [-8, (80 - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [cond(enemynear,vel y > 0, -116 - enemynear,vel y, -116) * const(size.yscale), 8]
trigger2 = movehit && numtarget
trigger2 = random < 128 * (ailevel ** 2.0 / 64.0) ; probability
; Normal Kick Cancels
trigger3 = var(15) % 60 = 1 || var(15) % 60 = 4
trigger3 = p2bodydist x = [-8, (80 - const(size.ground.front)) * const(size.xscale)]
trigger3 = p2dist y = [cond(enemynear,vel y > 0, -116 - enemynear,vel y, -116) * const(size.yscale), 8]
trigger3 = movehit && numtarget
trigger3 = random < 128 * (ailevel ** 2.0 / 64.0) ; probability
; Special Cancels
trigger4 = var(16) = 1 || var(16) = 2
trigger4 = p2bodydist x = [-8, (80 - const(size.ground.front)) * const(size.xscale)]
trigger4 = p2dist y = [cond(enemynear,vel y > 0, -116 - enemynear,vel y, -116) * const(size.yscale), 8]
trigger4 = movehit && numtarget
trigger4 = cond(stateno = 1400, p2statetype != A || p2dist y >= -80, 1)
trigger4 = random < 256 * (ailevel ** 2.0 / 64.0) ; probability
; Super Art Cancel
trigger5 = var(16) = 101 || var(16) = 103
trigger5 = prevstateno != [3100, 3199]
trigger5 = p2bodydist x = [-8, (80 - const(size.ground.front)) * const(size.xscale)]
trigger5 = p2dist y = [cond(enemynear,vel y > 0, -116 - enemynear,vel y, -116) * const(size.yscale), 8]
trigger5 = movehit && numtarget
trigger5 = random < 256 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Metallic Sphere]
type = changestate
value = 1000
triggerall = ailevel && numenemy && roundstate = 2 && !var(9) && !var(13)
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = statetype != A
triggerall = !numhelper(1015) || cond(numhelper(1015) = 1, helper(1015),stateno % 40 = 20 || helper(1015),prevstateno % 40 = 20, 0)
; condition
trigger1 = ctrl || stateno = 52
trigger1 = p2bodydist x >= 64 ; [64, (176 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [cond(enemynear,vel y > 0, -128 - enemynear,vel y, -128) * const(size.yscale), 8]
trigger1 = random < 32 * (ailevel ** 2.0 / 64.0) ; probability
trigger1 = var(18) := cond(p2bodydist x <= 128 || p2statetype != A || random < 296, 1, 2) ; level
; Normal Punch Cancels
trigger2 = var(14) % 50 = 1 || var(14) % 50 = 2 || var(14) % 50 = 4|| var(14) % 50 = 6
trigger2 = p2bodydist x >= 32 ; p2bodydist x = [-8, (176 - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [cond(enemynear,vel y > 0, -128 - enemynear,vel y, -128) * const(size.yscale), 8]
trigger2 = movehit && numtarget
trigger2 = random < 16 * (ailevel ** 2.0 / 64.0) ; probability
trigger2 = var(18) := 1 ; level
; Normal Kick Cancels
trigger3 = var(14) % 60 = 1 || var(14) % 60 = 4
trigger3 = p2bodydist x >= 32 ; p2bodydist x = [-8, (176 - const(size.ground.front)) * const(size.xscale)]
trigger3 = p2dist y = [cond(enemynear,vel y > 0, -128 - enemynear,vel y, -128) * const(size.yscale), 8]
trigger3 = movehit && numtarget
trigger3 = random < 16 * (ailevel ** 2.0 / 64.0) ; probability
trigger3 = var(18) := 1 ; level

[state -1, AI EX Metallic Sphere]
type = changestate
value = 1050
triggerall = ailevel && numenemy && roundstate = 2 && !var(9) && !var(13)
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L && p2statetype != A
triggerall = statetype != A
triggerall = var(28) >= var(26) && !var(29)
triggerall = !numhelper(1015) || cond(numhelper(1015) = 1, helper(1015),stateno % 40 = 20 || helper(1015),prevstateno % 40 = 20, 0)
; condition
trigger1 = ctrl || stateno = 52
trigger1 = p2bodydist x >= 160 ; [64, (176 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [cond(enemynear,vel y > 0, -96 - enemynear,vel y, -96) * const(size.yscale), 8]
trigger1 = random < 16 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI A. Hard Kick]
type = changestate
value = 650
triggerall = ailevel && numenemy && roundstate = 2 && !var(9) && !var(13)
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = statetype = A
; condition
trigger1 = ctrl
trigger1 = p2bodydist x = [-8, (107 + (10 * (vel x + enemynear,vel x)) - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y >= (cond(vel y, -74 + (4 * (vel y + enemynear,vel y)), -74)) * const(size.yscale)
trigger1 = p2dist y <= (cond(vel y > 0, -50 + (4 * (vel y + enemynear,vel y)), -50) - enemynear,const(size.mid.pos.y)) * const(size.yscale)
trigger1 = random < (128 + 200 * (stateno = 913)) * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger2 = ctrl && vel y > 0
trigger2 = p2dist x != 0
trigger2 = p2bodydist x = [-8, (107 + (10 * (vel x + enemynear,vel x)) - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y >= (-74 + (10 * (vel y + enemynear,vel y)) + enemynear,const(size.mid.pos.y)) * const(size.yscale)
trigger2 = abs(atan(p2dist y / p2dist x) * (180.0 / pi)) = [24, 48]
trigger2 = random < (160 + 200 * (stateno = 913)) * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI A. Mid Kick]
type = changestate
value = 640
triggerall = ailevel && numenemy && roundstate = 2 && !var(9) && !var(13)
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = statetype = A
; condition
trigger1 = ctrl
trigger1 = p2bodydist x = [-8, (104 + (6 * (vel x + enemynear,vel x)) - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y >= (cond(vel y, -92 + (4 * (vel y + enemynear,vel y)), -92)) * const(size.yscale)
trigger1 = p2dist y <= (cond(vel y > 0, -78 + (4 * (vel y + enemynear,vel y)), -78) - enemynear,const(size.mid.pos.y)) * const(size.yscale)
trigger1 = random < (128 + 200 * (stateno = 913)) * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger2 = ctrl && vel y > 0
trigger2 = p2dist x != 0
trigger2 = p2bodydist x = [-8, (104 + (6 * (vel x + enemynear,vel x)) - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y >= (-92 + (6 * (vel y + enemynear,vel y)) + enemynear,const(size.mid.pos.y)) * const(size.yscale)
trigger2 = abs(atan(p2dist y / p2dist x) * (180.0 / pi)) = [24, 48]
trigger2 = random < (160 + 200 * (stateno = 913)) * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI A. Light Punch]
type = changestate
value = 600
triggerall = ailevel && numenemy && roundstate = 2 && !var(9) && !var(13)
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = statetype = A
; condition
trigger1 = ctrl
trigger1 = p2bodydist x = [-8, (56 + (4 * (vel x + enemynear,vel x)) - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y >= (cond(vel y, -80 + (4 * (vel y + enemynear,vel y)), -80)) * const(size.yscale)
trigger1 = p2dist y <= (cond(vel y > 0, -68 + (4 * (vel y + enemynear,vel y)), -68) - enemynear,const(size.mid.pos.y)) * const(size.yscale)
trigger1 = random < (128 + 200 * (stateno = 913)) * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger2 = ctrl && vel y > 0
trigger2 = p2dist x != 0
trigger2 = p2bodydist x = [-8, (56 + (4 * (vel x + enemynear,vel x)) - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y >= (-80 + (4 * (vel y + enemynear,vel y)) + enemynear,const(size.mid.pos.y)) * const(size.yscale)
trigger2 = abs(atan(p2dist y / p2dist x) * (180.0 / pi)) = [24, 48]
trigger2 = random < (160 + 200 * (stateno = 913)) * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI A. Hard Punch]
type = changestate
value = 620
triggerall = ailevel && numenemy && roundstate = 2 && !var(9) && !var(13)
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = statetype = A
; condition
trigger1 = ctrl
trigger1 = p2bodydist x = [-8, (88 + (7 * (vel x + enemynear,vel x)) - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y >= (cond(vel y, -111 + (7 * (vel y + enemynear,vel y)), -111)) * const(size.yscale)
trigger1 = p2dist y <= (cond(vel y > 0, -53 + (7 * (vel y + enemynear,vel y)), -53) - enemynear,const(size.mid.pos.y)) * const(size.yscale)
trigger1 = random < (128 + 200 * (stateno = 913)) * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger2 = ctrl && vel y > 0
trigger2 = p2dist x != 0
trigger2 = p2bodydist x = [-8, (88 + (7 * (vel x + enemynear,vel x)) - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y >= (-111 + (7 * (vel y + enemynear,vel y)) + enemynear,const(size.mid.pos.y)) * const(size.yscale)
trigger2 = abs(atan(p2dist y / p2dist x) * (180.0 / pi)) = [24, 48]
trigger2 = random < (160 + 200 * (stateno = 913)) * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI A. Mid Punch]
type = changestate
value = 610
triggerall = ailevel && numenemy && roundstate = 2 && !var(9) && !var(13)
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = statetype = A
; condition
trigger1 = ctrl
trigger1 = p2bodydist x = [-8, (110 + (6 * (vel x + enemynear,vel x)) - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y >= (cond(vel y, -101 + (6 * (vel y + enemynear,vel y)), -101)) * const(size.yscale)
trigger1 = p2dist y <= (cond(vel y > 0, -79 + (6 * (vel y + enemynear,vel y)), -79) - enemynear,const(size.mid.pos.y)) * const(size.yscale)
trigger1 = random < (128 + 200 * (stateno = 913)) * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger2 = ctrl && vel y > 0
trigger2 = p2dist x != 0
trigger2 = p2bodydist x = [-8, (110 + (6 * (vel x + enemynear,vel x)) - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y >= (-101 + (6 * (vel y + enemynear,vel y)) + enemynear,const(size.mid.pos.y)) * const(size.yscale)
trigger2 = abs(atan(p2dist y / p2dist x) * (180.0 / pi)) = [24, 48]
trigger2 = random < (160 + 200 * (stateno = 913)) * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI A. Light Kick]
type = changestate
value = 630
triggerall = ailevel && numenemy && roundstate = 2 && !var(9) && !var(13)
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = statetype = A
; condition
trigger1 = ctrl
trigger1 = p2bodydist x = [-8, (48 + (4 * (vel x + enemynear,vel x)) - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y >= (cond(vel y, -74 + (4 * (vel y + enemynear,vel y)), -74)) * const(size.yscale)
trigger1 = p2dist y <= (cond(vel y > 0, -57 + (4 * (vel y + enemynear,vel y)), -57) - enemynear,const(size.mid.pos.y)) * const(size.yscale)
trigger1 = random < (128 + 200 * (stateno = 913)) * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger2 = ctrl && vel y > 0
trigger2 = p2dist x != 0
trigger2 = p2bodydist x = [-8, (48 + (4 * (vel x + enemynear,vel x)) - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y >= (-74 + (4 * (vel y + enemynear,vel y)) + enemynear,const(size.mid.pos.y)) * const(size.yscale)
trigger2 = abs(atan(p2dist y / p2dist x) * (180.0 / pi)) = [24, 48]
trigger2 = random < (160 + 200 * (stateno = 913)) * (ailevel ** 2.0 / 64.0) ; probability
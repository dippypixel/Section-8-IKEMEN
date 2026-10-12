;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s


;-| Single Button |---------------------------------------------------
[Command]
name = "x"
command = x
time = 1

[Command]
name = "a"
command = a
time = 1

[Command]
name = "y"
command = y
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
name = "z"
command = z
time = 1

[Command]
name = "s"
command = s
time = 1

[Command]
name = "start"
command = s
time = 1

;-| Hold Dir |--------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup";Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

;-| Hold Button |-----------------------------------------------------
[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_y"
command = /y
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
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_s"
command = /s
time = 1

[Command]
name = "holdstart"
command = /s
time = 1

; Definition of the Commands
;=====================================================================
;First of all, I must to Thanx to "Mr.H" for let me use this comands for my two chars: Homero and Homer-Iori
;   -Warner el Tochix
;-| EX Special Motions |----------------------------------------------

[Command]
name = "Woohoo Whirlwind EX"
command = ~F, D, DF, x+y
time = 35

[Command]
name = "Kinetic Donut EX"
command = ~D, DF, F, x+y
time = 35

;-| Super Motions |---------------------------------------------------
;

[Command]
name = "Shun Homer Satsu"
command = ~x, x, F, a, y
time = 45

[Command]
name = "Drunken Tornado_LV.3"
command = ~D, F, D, F, x+y
time = 40

[Command]
name = "Drunken Tornado_LV.2"
command = ~D,DF,F,D,DF,F,y
time = 25

[Command]
name = "Drunken Tornado_LV.1"
command = ~D,DF,F,D,DF,F,x
time = 25

[Command]
name = "Hell Candy Bomb_LV.3"
command = ~D, B, D, F, x+y
time = 30

[Command]
name = "Hell Candy Bomb_LV.2"
command = ~D,DB,B,DB,D,DF,F,y
time = 30

[Command]
name = "Hell Candy Bomb_LV.2"
command = ~D,DB,B,DB,F,y
time = 30

[Command]
name = "Hell Candy Bomb_LV.2"
command = ~D,DB,B,D,F,y
time = 30

[Command]
name = "Hell Candy Bomb_LV.1"
command = ~D,DB,B,DB,D,DF,F,x
time = 30

[Command]
name = "Hell Candy Bomb_LV.1"
command = ~D,DB,B,DB,F,x
time = 30

[Command]
name = "Hell Candy Bomb_LV.1"
command = ~D,DB,B,D,F,x
time = 30

[Command]
name = "Bash Dash Masher_LV.3"
command = ~D, F, D, B, x+y
time = 30

[Command]
name = "Bash Dash Masher_LV.2"
command = ~D,DF,F,DF,D,DB,B,y
time = 30

[Command]
name = "Bash Dash Masher_LV.2"
command = ~D,DF,F,DF,B,y
time = 30

[Command]
name = "Bash Dash Masher_LV.2"
command = ~D,DF,F,D,B,y
time = 30

[Command]
name = "Bash Dash Masher_LV.1"
command = ~D,DF,F,DF,D,DB,B,x
time = 30

[Command]
name = "Bash Dash Masher_LV.1"
command = ~D,DF,F,DF,B,x
time = 30

[Command]
name = "Bash Dash Masher_LV.1"
command = ~D,DF,F,D,B,x
time = 30

[Command]
name = "Grim Reaper"
command = ~D, F, D, B, z
time = 30

[Command]
name = "Heavy Roller"
command = ~D,DF,F,DF,D,DB,B,a
time = 30

[Command]
name = "Heavy Roller"
command = ~D,DF,F,DF,B,a
time = 30

[Command]
name = "Heavy Roller"
command = ~D,DF,F,D,B,a
time = 30

[Command]
name = "Heavy Roller"
command = ~D,DF,F,DF,D,DB,B,b
time = 30

[Command]
name = "Heavy Roller"
command = ~D,DF,F,DF,B,b
time = 30

[Command]
name = "Heavy Roller"
command = ~D,DF,F,D,B,b
time = 30

;-| Special Motions |-------------------------------------------------

[Command]
name = "Sideswitch"
command = ~D,DB,B,y
time = 33


[Command]
name = "Rush Tackle Kick_a"
command = ~D,DB,B,a
time = 33

[Command]
name = "Rush Tackle Kick_b"
command = ~D,DB,B,b
time = 33

[Command]
name = "Woohoo Whirlwind_x"
command = ~F, D, DF, x

[Command]
name = "Woohoo Whirlwind_y"
command = ~F, D, DF, y

[Command]
name = "Kinetic Donut_x"
command = ~D, DF, F, x

[Command]
name = "Kinetic Donut_y"
command = ~D, DF, F, y

[Command]
name = "3-hit Rushdown"
command = ~D, DB, B, x

[Command]
name = "3-hit Rushdown"
command = ~D, DB, B, y

;-| Double Tap |------------------------------------------------------
[Command]
name = "FF";Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB";Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |------------------------------------------
[Command]
name = "recovery"
command = a
time = 1

[Command]
name = "recovery"
command = y
time = 1

[Command]
name = "recovery"
command = x
time = 1

[Command]
name = "recovery"
command = y
time = 1

[Command]
name = "call-st";Required (do not remove)
command = a+y
time = 1

;-| Dir + Button |----------------------------------------------------
[Command]
name = "fwd_a"
command = /F,a
time = 1

[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "fwd_c"
command = /F,c
time = 1

[Command]
name = "fwd_x"
command = /F,x
time = 1

[Command]
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "fwd_z"
command = /F,z
time = 1

[Command]
name = "back_a"
command = /B,a
time = 1

[Command]
name = "back_b"
command = /B,b
time = 1

[Command]
name = "back_c"
command = /B,c
time = 1

[Command]
name = "back_x"
command = /B,x
time = 1

[Command]
name = "back_y"
command = /B,y
time = 1

[Command]
name = "back_z"
command = /B,z
time = 1

[Command]
name = "down_b"
command = /D,b
time = 1

[Command]
name = "down_y"
command = /D,y
time = 1

[Command]
name = "charge1"
command = /b
time = 1

[Command]
name = "charge2"
command = /y
time = 1

[Command]
name = "charge"
command = /c
time = 1



;------------------------ For KOF Series Only
[Command]
name = "holdupfwd"
command = /UF
time = 1

[Command]
name = "holdupback"
command = /UB
time = 1


;=====================================================================
; State Entry for Commands
;=====================================================================
; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;_____________________________________________________________________


[State -1, AI Helper Check]
type = ChangeState
trigger1 = IsHelper(74140108)
value = 74140108

[State -1, AI Helper Check]
type = ChangeState
trigger1 = IsHelper(9741)
value = 9741

[State -1, AI Helper Check 2]
type = ChangeState
trigger1 = IsHelper(9742)
value = 9742

[State -1, AI]
type = ChangeState
value = 131
triggerall = alive
triggerall = var(7) = 1
triggerall = Pos Y = 0
triggerall = ctrl = 1 || stateno = 100
triggerall = roundstate = 2
triggerall = stateno != 152 || stateno != 153
triggerall = enemy,statetype != A
trigger1 = enemy,numhelper > 0 || enemy,numproj > 0
trigger1 = enemy,movetype = A
trigger2 = stateno = 120
trigger3 = stateno = 130 && p2statetype = S && enemy,time >= 18
trigger4 = enemy,movetype = A
trigger4 = enemynear,hitdefattr = SCA,AA,AP
trigger5 = enemy,movetype = A
trigger5 = enemy,hitdefattr = SCA,AA,AP
trigger6 = stateno = 130 && p2statetype = C

[State -1, AI]
type = ChangeState
value = 130
triggerall = alive
triggerall = var(7) = 1
triggerall = Pos Y = 0
triggerall = ctrl = 1 || stateno = 100
triggerall = roundstate = 2
triggerall = stateno != 150 || stateno != 151
triggerall = enemynear,hitdefattr = SCA,AA,AP
trigger1 = stateno = 131 && p2statetype = A
trigger2 = stateno = 131 && p2statetype = S && enemy,time = [13,17]

[State -1, AI]
type = ChangeState
value = 152
triggerall = alive
triggerall = var(7) = 1
triggerall = Pos Y = 0
triggerall = roundstate = 2
triggerall = stateno != 152
trigger1 = (stateno = [150,151]) && p2statetype != A && p2movetype = A
trigger2 = (stateno = [150,151]) && p2statetype = S && enemy,time = [7,12]
trigger3 = (stateno = [150,151]) && p2statetype = S && enemy,time = [18,36]
trigger4 = (stateno = [150,151]) && p2statetype = S && enemy,time = [0,3]
trigger5 = (stateno = [150,151]) && p2statetype = C

[State -1, AI]
type = ChangeState
value = 150
triggerall = alive
triggerall = var(7) = 1
triggerall = Pos Y = 0
triggerall = roundstate = 2
triggerall = stateno != 150
trigger1 = (stateno = [152,153]) && p2statetype = A && p2movetype = A
trigger2 = (stateno = [152,153]) && p2statetype = S && enemy,time >= 18

[State -1, AI]
type = ChangeState
value = 105
triggerall = alive
triggerall = var(7) = 1
triggerall = Pos Y = 0
triggerall = ctrl = 1 || stateno = 100
triggerall = roundstate = 2
triggerall = stateno != 105
triggerall = var(8) = 1
trigger1 = (p2bodydist x = [0,40]) && enemy,time >= 16 && random <= 95
trigger2 = p2movetype = A && stateno = 200 && Time >= 11
trigger3 = p2statetype = L && enemy,time >= 9 || enemy,stateno = 5120

[State -1, AI]
type = ChangeState
value = 100
triggerall = alive
triggerall = var(7) = 1
triggerall = Pos Y = 0
triggerall = ctrl = 1
triggerall = roundstate = 2
triggerall = stateno != 100
triggerall = stateno != 101
triggerall = stateno != 4100
triggerall = stateno != 4101
triggerall = stateno != [120,159]
trigger1 = (p2bodydist x = [16,280])
trigger2 = (p2bodydist x = [78,280]) && p2statetype = A

[State -1, AI]
type = ChangeState
value = 200
triggerall = alive
triggerall = var(7) = 1
triggerall = Pos Y = 0
triggerall = ctrl = 1 || stateno = 100
triggerall = roundstate = 2
triggerall = p2statetype = S
trigger1 = (p2bodydist x = [0,30]) && random <= 237 && hitshakeover && enemy,time >= 8
trigger2 = p2bodydist x = [0,30]
trigger2 = stateno = 200 && Time >= 5
trigger3 = (p2bodydist x = [0,30]) && enemy,movetype != A && random <= 334

[State -1, AI]
type = ChangeState
value = 235
triggerall = alive
triggerall = var(7) = 1
triggerall = Pos Y = 0
triggerall = roundstate = 2
triggerall = stateno != 235
trigger1 = (p2bodydist x = [0,45]) && p2statetype = C && random <= 158 && hitshakeover
trigger1 = ctrl = 1 || stateno = 100
trigger2 = (p2bodydist x = [31,45]) && (p2bodydist y = [0,10])
trigger2 = stateno = 200 && movecontact

[State -1, AI]
type = ChangeState
value = 210
triggerall = alive
triggerall = var(7) = 1
triggerall = Pos Y = 0
triggerall = roundstate = 2
triggerall = p2statetype != A
trigger1 = (p2bodydist x = [0,58]) && stateno = 235 && movecontact
trigger2 = stateno = 1210 && Time >= 53

[State -1, AI]
type = ChangeState
value = 1000
triggerall = alive
triggerall = var(7) = 1
triggerall = Pos Y = 0
triggerall = stateno != 1000
triggerall = roundstate = 2
triggerall = p2statetype != A
triggerall = p2movetype != A
triggerall = numprojID(1005) = 0
trigger1 = ctrl = 1 || stateno = 100
trigger1 = (p2bodydist x = [80,280]) && random <= 97

[State -1, AI]
type = ChangeState
value = 1010
triggerall = alive
triggerall = var(7) = 1
triggerall = Pos Y = 0
triggerall = stateno != 1010
triggerall = roundstate = 2
triggerall = p2statetype != A
triggerall = numprojID(1005) = 0
trigger1 = stateno = 210 && movecontact && random <= 165

[State -1, AI]
type = ChangeState
value = 1410
triggerall = alive
triggerall = var(7) = 1
triggerall = Pos Y = 0
triggerall = roundstate = 2
triggerall = p2statetype != A
triggerall = stateno != 1410
trigger1 = stateno = 210 && movecontact && (random = [166,375])

[State -1, AI]
type = ChangeState
value = 1300
triggerall = alive
triggerall = var(7) = 1
triggerall = Pos Y = 0
triggerall = roundstate = 2
triggerall = p2statetype != A
triggerall = stateno != 1300
trigger1 = stateno = 210 && movecontact && (random = [376,625])

[State -1, AI]
type = ChangeState
value = 1301
triggerall = alive
triggerall = var(7) = 1
triggerall = Pos Y = 0
triggerall = roundstate = 2
triggerall = p2statetype != A
triggerall = stateno != 1301
trigger1 = stateno = 1300 && movecontact

[State -1, AI]
type = ChangeState
value = 1100
triggerall = alive
triggerall = var(7) = 1
triggerall = ctrl = 1 || stateno = 100
triggerall = stateno != 1100
triggerall = roundstate = 2
triggerall = enemy,stateno != 821
triggerall = statetype != A
triggerall = p2statetype != L
trigger1 = p2statetype = A
trigger1 = p2bodydist x = [0,58]
trigger1 = p2bodydist y = [-32,0]
trigger1 = random <= 247
trigger2 = p2bodydist x = [0,38]
trigger2 = p2bodydist y = [-70,0]
trigger2 = stateno = 130 || stateno = 131 || stateno = 140 || stateno = 120
trigger2 = p2movetype = A
trigger2 = enemynear,hitdefattr = SCA,AT

[State -1, AI]
type = ChangeState
value = 1110
triggerall = alive
triggerall = var(7) = 1
triggerall = Pos Y = 0
triggerall = p2statetype != L
triggerall = roundstate = 2
triggerall = stateno != 1110
triggerall = enemy,stateno != 821
trigger1 = stateno = 1101 && Time >= 13
trigger1 = p2bodydist x = [0,150]
trigger1 = p2bodydist y = [-185,-40]
trigger2 = stateno = 5120 && Time >= 21
trigger2 = p2bodydist x = [0,60]
trigger2 = p2bodydist y = [-75,-30]
trigger3 = p2statetype = A
trigger3 = p2bodydist x = [0,88]
trigger3 = p2bodydist y = [-120,0]
trigger3 = random <= 87
trigger3 = ctrl = 1
trigger3 = p2statetype = A

[State -1, AI]
type = ChangeState
value = 3100
triggerall = alive
triggerall = var(7) = 1
triggerall = Pos Y = 0
triggerall = roundstate = 2
triggerall = p2statetype != A
triggerall = stateno != 3100
triggerall = power >= 1000
trigger1 = stateno = 1301 && movecontact && Time >= 13 && (random = [238,532])
trigger2 = p2movetype = A && random <= 325 && enemy,time <= 5 && ctrl = 1
trigger2 = p2bodydist x = [0,190]
trigger3 = stateno = 130 || stateno = 131 || stateno = 140 || stateno = 120
trigger3 = p2bodydist x = [0,80]
trigger3 = random <= 112

[State -1, AI]
type = ChangeState
value = 3110
triggerall = alive
triggerall = var(7) = 1
triggerall = Pos Y = 0
triggerall = roundstate = 2
triggerall = p2statetype != A
triggerall = stateno != 3110
triggerall = power >= 2000
trigger1 = stateno = 1301 && movecontact && Time >= 13 && (random = [689,799])
trigger2 = p2movetype = A && random <= 725 && enemy,time <= 5 && ctrl = 1
trigger2 = p2bodydist x = [0,220]
trigger3 = stateno = 130 || stateno = 131 || stateno = 140 || stateno = 120
trigger3 = p2bodydist x = [0,80]
trigger3 = random <= 112
trigger4 = stateno = 3400 && movehit && Time >= 69

[State -1, AI]
type = ChangeState
value = 1200
triggerall = alive
triggerall = var(7) = 1
triggerall = Pos Y = 0
triggerall = stateno != 1200
triggerall = roundstate = 2
triggerall = p2statetype != A
triggerall = ctrl = 1 || stateno = 100
trigger1 = p2bodydist x <= 28 && random <= 225

[State -1, AI]
type = ChangeState
value = 3400
triggerall = alive
triggerall = var(7) = 1
triggerall = Pos Y = 0
triggerall = stateno != 3400
triggerall = roundstate = 2
triggerall = power >= 1000
triggerall = p2statetype != A
triggerall = p2statetype != L
trigger1 = ctrl = 1 || stateno = 100
trigger1 = enemy,time >= 45 && enemy,movetype = A
trigger1 = p2bodydist x = [0,280]
trigger1 = p2bodydist y = [-50,0]
trigger2 = stateno = 210 && movecontact && random <= 145

[State -1, AI]
type = ChangeState
value = 3500
triggerall = alive
triggerall = var(7) = 1
triggerall = Pos Y = 0
triggerall = roundstate = 2
triggerall = stateno != 3500
triggerall = power >= 3000
trigger1 = stateno = 3400 && movehit && Time >= 77
trigger2 = stateno = 1301 && movecontact && (random = [533,688])

[State -1, AI]
type = ChangeState
value = 3667
triggerall = alive
triggerall = var(7) = 1
triggerall = Pos Y = 0
triggerall = roundstate = 2
triggerall = stateno != 3667
triggerall = power >= 2000
trigger1 = p2movetype = A && enemy,time <= 8
trigger1 = p2bodydist x = [0,90]
trigger1 = p2bodydist y = [-50,0]
trigger1 = ctrl = 1 || stateno = 100
trigger2 = stateno = 1301 && movecontact && (random = [800,999])
trigger3 = p2movetype = A && enemy,time <= 8
trigger3 = p2bodydist x = [0,90]
trigger3 = p2bodydist y = [-50,0]
trigger3 = stateno = 130 || stateno = 131 || stateno = 140 || stateno = 120

[State -1, AI]
type = ChangeState
value = 4100
triggerall = alive
triggerall = var(7) = 1
triggerall = Pos Y = 0
triggerall = roundstate = 2
triggerall = stateno != 4100
triggerall = power < 4000
triggerall = ctrl = 1 || stateno = 100
trigger1 = p2bodydist x > 80 && p2movetype != A
trigger1 = random <= 288

;=====================================================================
; Super Arts
;=====================================================================

;---------------------------------------------------------------------
; ‹Öç“ó•SEˆëŽ®E”ª’t—iLV.2j
[State -1, Shun Homer Satsu]
type = ChangeState
value = 3600
triggerall= Command = "Shun Homer Satsu"
triggerall = Power = 4000
triggerall = var(39)
triggerall = var(7) = 0  ;Prevent AI from abusing this move, throwing off the Custom AI
trigger1 = StateType != A && (StateNo = 100 || StateNo = 40 || Stateno = 0 || Stateno = 230)
trigger2 = Var(12) = [1,10]
trigger2 = (stateno = [200,205]) || stateno = 235 || stateno = 400 || stateno = 430
trigger3 = Var(12) = [1,16]
trigger3 = stateno = 210 || (stateno = 215 && var(13) = 1) || stateno = 410

;---------------------------------------------------------------------
; ‹Öç“ó•SEˆëŽ®E”ª’t—iLV.1j
[State -1, Ready Aim Fire]
type = ChangeState
value = 3400
triggerall= var(39) = 0
triggerall = var(7) != 1
triggerall= Power >= 1000
triggerall=  Command = "Drunken Tornado_LV.1" || Command = "Drunken Tornado_LV.2"
trigger1 = stateType != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 235 && movecontact
trigger4 = stateno = 240 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 410 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 1300 && movecontact
trigger10 = stateno = 1301 && movecontact

;---------------------------------------------------------------------
; — •SŽ®E‹S‰‹iLv.3j
[State -1, Drunken Tornado 3]
type = ChangeState
value = 3320
triggerall= var(39)
triggerall= Command = "Drunken Tornado_LV.3" && Power >= 3000
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100 || StateNo = 40)
trigger2 = Var(12) = [1,10]
trigger2 = (stateno = [200,205)) || stateno = 235 || stateno = 400 || stateno = 430
trigger3 = Var(12) = [1,16]
trigger3 = stateno = 210 || (stateno = 215 && var(13) = 1) || stateno = 410
trigger4  = StateNo = 1301 && AnimElem = 5,>= 2

;---------------------------------------------------------------------
; — •SŽ®E‹S‰‹iLv.2j
[State -1, Drunken Tornado 2]
type = ChangeState
value = 3310
triggerall= var(39)
triggerall= Command = "Drunken Tornado_LV.2" && Power >= 2000
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100 || StateNo = 40)
trigger2 = Var(12) = [1,10]
trigger2 = (stateno = [200,205)) || stateno = 235 || stateno = 400 || stateno = 430
trigger3 = Var(12) = [1,16]
trigger3 = stateno = 210 || (stateno = 215 && var(13) = 1) || stateno = 410
trigger4  = StateNo = 1301 && AnimElem = 5,>= 2



;---------------------------------------------------------------------
; — •SŽ®E‹S‰‹iLv.1j
[State -1, Drunken Tornado 1]
type = ChangeState
value = 3300
triggerall= var(39)&& Power >= 1000
triggerall= (Command = "Drunken Tornado_LV.1") || (Command = "Drunken Tornado_LV.2" && Power < 2000)
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100 || StateNo = 40)
trigger2 = Var(12) = [1,10]
trigger2 = (stateno = [200,205)) || stateno = 235 || stateno = 400 || stateno = 430
trigger3 = Var(12) = [1,16]
trigger3 = stateno = 210 || (stateno = 215 && var(13) = 1) || stateno = 410
trigger4  = StateNo = 1301 && AnimElem = 5,>= 2


;---------------------------------------------------------------------
; — •S”ªŽ®E”ªŽð”tiLV.3j
;[State -1, Hell Candy Bomb 3]
;type = ChangeState
;value = 3020
;triggerall= NumHelper(3008) = 0 && NumHelper(3009) = 0 && NumHelper(3010) = 0
;triggerall= Var(17) = 0 && var(39) = 0 && (Command = "Hell Candy Bomb_LV.3" && Power >= 3000)
;trigger1 = stateType != A
;trigger1 = ctrl || stateno = 100

;---------------------------------------------------------------------
; — •S”ªŽ®E”ªŽð”tiLV.2j
;[State -1, Hell Candy Bomb 2]
;type = ChangeState
;value = 3010
;triggerall= NumHelper(3008) = 0 && NumHelper(3009) = 0 && NumHelper(3010) = 0
;triggerall= Var(17) = 0 && var(39) = 0 && (Command = "Hell Candy Bomb_LV.2" && Power >= 2000)
;trigger1 = stateType != A
;trigger1 = ctrl || stateno = 100

;---------------------------------------------------------------------
; — •S”ªŽ®E”ªŽð”tiLV.1j
;[State -1, Hell Candy Bomb 1]
;type = ChangeState
;value = 3002
;triggerall= NumHelper(3008) = 0 && NumHelper(3009) = 0 && NumHelper(3010) = 0 && Power >= 1000
;triggerall= Var(17) = 0 && var(39) = 0 && (Command = "Hell Candy Bomb_LV.1")
;trigger1 = stateType != A
;trigger1 = ctrl || stateno = 100

;---------------------------------------------------------------------
; ‹Öç“ó•SEˆëŽ®E”ª’t—iLV.3j
;[State -1, Bash Dash Masher 3]
;type = ChangeState
;value = 3120
;triggerall= Command = "Bash Dash Masher_LV.3" && Power >= 3000
;trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100 || StateNo = 40)
;trigger2 = Var(12) = [1,10]
;trigger2 = (stateno = [200,205)) || stateno = 235 || stateno = 400 || stateno = 430
;trigger3 = Var(12) = [1,16]
;trigger3 = stateno = 210 || (stateno = 215 && var(13) = 1) || stateno = 410
;trigger4  = StateNo = 1301 && AnimElem = 5,>= 2
;Super Cancel triggers
;trigger5 = Stateno = 1110  && HitDefAttr = S, SA

;---------------------------------------------------------------------
; ‹Öç“ó•SEˆëŽ®E”ª’t—iLV.2j
[State -1, Bash Dash Masher 2]
type = ChangeState
value = 3110
triggerall= Command = "Bash Dash Masher_LV.2" && Power >= 2000
triggerall = var(7) != 1
trigger1 = stateType != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 235 && movecontact
trigger4 = stateno = 240 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 410 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 1300 && movecontact
trigger10 = stateno = 1301 && movecontact
trigger11 = stateno = 3101
trigger12 = stateno = 3400 && movecontact
trigger13 = stateno = 3667 && movecontact

;---------------------------------------------------------------------
; ‹Öç“ó•SEˆëŽ®E”ª’t—iLV.1j
[State -1, Bash Dash Masher 1]
type = ChangeState
value = 3100
triggerall = Power >= 1000
triggerall = var(7) != 1
triggerall = (Command = "Bash Dash Masher_LV.1") || (Command = "Bash Dash Masher_LV.2" && Power < 2000)
trigger1 = stateType != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 235 && movecontact
trigger4 = stateno = 240 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 410 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 1300 && movecontact
trigger10 = stateno = 1301 && movecontact
trigger11 = stateno = 3667 && movecontact

;---------------------------------------------------------------------
; ‹Öç“ó•SEˆëŽ®E”ª’t—iLV.2j
[State -1, Touch of Death]
type = ChangeState
value = 3667
triggerall = Command = "Hell Candy Bomb_LV.2" || Command = "Hell Candy Bomb_LV.1"
triggerall = var(7) != 1
triggerall = Power >= 2000
trigger1 = stateType != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 235 && movecontact
trigger4 = stateno = 240 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 410 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 1300 && movecontact
trigger10 = stateno = 1301 && movecontact
trigger11 = stateno = 3400 && movecontact
trigger12 = stateno = 3101

;---------------------------------------------------------------------
; ‹Öç“ó•SEˆëŽ®E”ª’t—iLV.2j
[State -1, Road Roller D'oh]
type = ChangeState
value = 3500
triggerall= Command = "Heavy Roller"
triggerall = var(7) != 1
triggerall = Power >= 3000
trigger1 = stateType != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 235 && movecontact
trigger4 = stateno = 240 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 410 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 1300 && movecontact
trigger10 = stateno = 1301 && movecontact
trigger11 = stateno = 3400 && movecontact
trigger12 = stateno = 3101

;---------------------------------------------------------------------
; –\‘–
;[State -1, BEER RIOT HOMER]
;type = ChangeState
;value = 9999
;triggerall= !var(39)
;triggerall = command = "Overdrive"
;trigger1 = StateType = S && Ctrl = 1

;============================================
; EX Specials
;============================================

;---------------------------------------------------------------------
; •SŽ®E‹SÄ‚«i‹­j
;[State -1, EX Woohoo Whirlwind]
;type = ChangeState
;value = 1120
;triggerall = Power >= 500
;triggerall= Command = "Woohoo Whirlwind EX"
;trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
;trigger2 = Var(12) = [1,10]
;trigger2 = (stateno = [200,205)) || stateno = 235 || stateno = 400 || stateno = 430
;trigger3 = Var(12) = [1,16]
;trigger3 = stateno = 210 || (stateno = 215 && var(13) = 1) || stateno = 410
;trigger4  = StateNo = 1301 && AnimElem = 5,>= 2

;---------------------------------------------------------------------
; •S”ªŽ®EˆÅ•¥‚¢i‹­j
;[State -1, EX Kinetic Donut]
;type = ChangeState
;value = 1020
;triggerall = Power >= 500
;triggerall= NumHelper(3008) = 0 && NumHelper(3009) = 0 && NumHelper(3010) = 0
;triggerall= Var(17) = 0 && Command = "Kinetic Donut EX" && NumProjID(1005) = 0
;trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
;trigger2 = Var(12) = [1,10]
;trigger2 = (stateno = [200,205)) || stateno = 235 || stateno = 400 || stateno = 430
;trigger3 = Var(12) = [1,16]
;trigger3 = stateno = 210 || (stateno = 215 && var(13) = 1) || stateno = 410



;=====================================================================
; Special Arts 
;=====================================================================

;---------------------------------------------------------------------
; ‹û•—
[State -1, Side Switch]
type = ChangeState
value = 1200
triggerall= Command = "Sideswitch" && var(39) = 0
triggerall = var(7) != 1
trigger1 = stateType != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 235 && movecontact
trigger4 = stateno = 240 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 410 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 1300 && movecontact
trigger10 = stateno = 1301 && movecontact

;---------------------------------------------------------------------
; “ó•SE“óŽ®E‹ÕŒŽ@‰AiŽãj
[State -1, Tackle Kick]
type = ChangeState
value = 1400
triggerall= Command = "Rush Tackle Kick_a"
triggerall = var(7) != 1
trigger1 = stateType != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 235 && movecontact
trigger4 = stateno = 240 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 410 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 1300 && movecontact
trigger10 = stateno = 1301 && movecontact

;---------------------------------------------------------------------
; “ó•SE“óŽ®E‹ÕŒŽ@‰Ai‹­j
[State -1, Tackle Kick Drunken]
type = ChangeState
value = 1410
triggerall= Command = "Rush Tackle Kick_b"
triggerall = var(7) != 1
trigger1 = stateType != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 235 && movecontact
trigger4 = stateno = 240 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 410 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 1300 && movecontact
trigger10 = stateno = 1301 && movecontact

;---------------------------------------------------------------------
; •SŽ®E‹SÄ‚«iŽãj
[State -1, Woohoo Whirlwind 1]
type = ChangeState
value = 1100
triggerall= Command = "Woohoo Whirlwind_x"
triggerall = var(7) != 1
trigger1 = stateType != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 235 && movecontact
trigger4 = stateno = 240 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 410 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 1300 && movecontact
trigger10 = stateno = 1301 && movecontact

;---------------------------------------------------------------------
; •SŽ®E‹SÄ‚«i‹­j
[State -1, Woohoo Whirlwind 2]
type = ChangeState
value = 1110
triggerall= Command = "Woohoo Whirlwind_y"
triggerall = var(7) != 1
trigger1 = stateType != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 235 && movecontact
trigger4 = stateno = 240 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 410 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 1300 && movecontact
trigger10 = stateno = 1301 && movecontact

;---------------------------------------------------------------------
; •S”ªŽ®EˆÅ•¥‚¢iŽãj
[State -1, Kinetic Donut 1]
type = ChangeState
value = 1000
triggerall = Command = "Kinetic Donut_x" && numprojID(1005) = 0
triggerall = var(7) != 1
trigger1 = stateType != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 235 && movecontact
trigger4 = stateno = 240 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 410 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 1300 && movecontact
trigger10 = stateno = 1301 && movecontact

;---------------------------------------------------------------------
; •S”ªŽ®EˆÅ•¥‚¢i‹­j
[State -1, Kinetic Donut 2]
type = ChangeState
value = 1010
triggerall = Command = "Kinetic Donut_y" && numprojID(1005) = 0
triggerall = var(7) != 1
trigger1 = stateType != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 235 && movecontact
trigger4 = stateno = 240 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 410 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 1300 && movecontact
trigger10 = stateno = 1301 && movecontact

;---------------------------------------------------------------------
; •S“óEŽµŽ®Eˆ¨‰Ô
;------------------------ ˆê’i–Ú
[State -1, 3-hit rush 1]
type = ChangeState
value = 1300
triggerall= Command = "3-hit Rushdown"
triggerall = var(7) != 1
trigger1 = stateType != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 235 && movecontact
trigger4 = stateno = 240 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 410 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 430 && movecontact

;------------------------ “ñ’i–Ú
[State -1, 3-hit rush 2]
type = ChangeState
value = 1301
triggerall= var(15) = 1
triggerall = var(7) != 1
trigger1  = StateNo = 1300 && AnimElem = 5,>= 2 && AnimElem = 7,< 0
trigger2 = Var(12) = [1,16]
trigger2 = stateno = 1300

;------------------------ ŽO’i–Ú
[State -1, 3-hit rush 3]
type = ChangeState
value = 1302
triggerall= var(15) = 1
triggerall = var(7) != 1
trigger1  = StateNo = 1301 && AnimElem = 5,>= 2 && AnimElem = 7,< 0
trigger2 = Var(12) = [1,16]
trigger2 = stateno = 1301

;------------------------æs“ü—Í
[State -1,3-hit rush - Varset]
type = VarSet
var(15) = 1
triggerall = Command = "3-hit Rushdown" && Time > 0 && var(15) = 0
triggerall = var(7) != 1
trigger1  = StateNo = 1300 && AnimElem = 1,> 1 && AnimElem = 6,< 3
trigger2  = StateNo = 1301 && AnimElem = 1,> 1 && AnimElem = 6,< 3

;=====================================================================
; Basic Animation
;=====================================================================

;---------------------------------------------------------------------
;RunFwd
[State -1, Run Forward]
type = ChangeState
value = 100
trigger1 = Command = "FF" && StateType = S && Ctrl = 1 && StateNo != 100

;---------------------------------------------------------------------
;RunBack
[State -1, Hop Backward]
type = ChangeState
value = 105
trigger1 = Command = "BB" && StateType = S && Ctrl = 1

;=====================================================================
; 2/3 Buttons
;=====================================================================
;
;=====================================================================
; Basic Throws
;=====================================================================

;---------------------------------------------------------------------
; ‹t”‚¬i‚o’Êí“Š‚°j
[State -1, Throw]
type = ChangeState
value = 800
triggerall = StateNo != 100 && StateType = S && Ctrl = 1
triggerall = P2MoveType != H && !P2StateType = A
triggerall = var(7) != 1
trigger1 = Command = "fwd_y" && P2BodyDist X < 10 ;40
trigger2 = Command = "back_y" && P2BodyDist X < 10  ;20

;---------------------------------------------------------------------
; ‹t”‚¬iK’Êí“Š‚°j
[State -1, Throw]
type = ChangeState
value = 850
triggerall = StateNo != 100 && StateType = S && Ctrl = 1
triggerall = P2MoveType != H && !P2StateType = A
triggerall = var(7) != 1
trigger1 = Command = "fwd_b" && P2BodyDist X < 10
trigger2 = Command = "back_b" && P2BodyDist X < 10

;---------------------------------------------------------------------
; Special Attacks , Moves and so on.
;---------------------------------------------------------------------

;---------------------------------------------------------------------
; ‹Ù‹}‰ñ”ð“®ì
[State -1, Crawling Dodge]
type = ChangeState
value = 4000
triggerall = Command = "z"
triggerall = var(7) != 1
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = Time <= 1 && ((StateNo = [200,499]) ||  (StateNo = 700))

;---------------------------------------------------------------------
; ƒpƒ[—­‚ß“®ì
;Power Charge
[State -1, Power Charge]
type = ChangeState
value = 4100
triggerall = (command = "charge1" && command = "charge2") || command = "charge" 
triggerall = statetype != A && Power < 4000
triggerall = var(7) != 1      ;Prevents AI from Abusing Charge to throw off AI
trigger1 = ctrl
trigger2 = Time <= 1 && ((StateNo = [200,499]) ||  (StateNo = 700))

;=====================================================================
; Dir + Button
;=====================================================================

;---------------------------------------------------------------------
; ŠOŽ®EŒ•€@‰A@"Ž€_"i¨{Aj
;[State -1]
;type = ChangeState
;value = 700
;triggerall= Command = "fwd_a"
;trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)

;---------------------------------------------------------------------
; ŠOŽ®E•S‡Ü‚èiƒWƒƒƒ“ƒv’†©{Aj
;[State -1, Body Splash]
;type = ChangeState
;value = 710
;triggerall= Command = "back_a"
;trigger1 = StateType = A && Ctrl = 1

;=====================================================================
; Taunts
;=====================================================================

;---------------------------------------------------------------------
; ’§”­
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "s"
triggerall = var(7) != 1
trigger1 = StateType = S && Ctrl = 1

;=====================================================================
; Basic Arts
;=====================================================================

;---------------------------------------------------------------------
; Žãƒpƒ“ƒ`
[State -1, Stand Weak Punch]
type = ChangeState
value = 200
triggerall = Command = "x" && !Command = "holddown"
triggerall = var(7) != 1
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 100)
trigger2  = stateno = 200 && Time >= 5
trigger3 = stateno = 430 && movecontact


;---------------------------------------------------------------------
; ŽãƒLƒbƒN
[State -1, Stand Weak Kick]
type = ChangeState
value = 235
triggerall = Command = "a" && !Command = "holddown"
triggerall = var(7) != 1
trigger1 = stateType = s
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 400 && movecontact

;---------------------------------------------------------------------
; ‹­ƒpƒ“ƒ`
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = Command = "y" && Command != "holddown"
triggerall = var(7) != 1
trigger1 = stateType = s
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 235 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact

;---------------------------------------------------------------------
; ‹­ƒLƒbƒN
[State -1, Stand Strong Kick]
type = ChangeState
value = 240
triggerall = Command = "b" && !Command = "holddown"
triggerall = var(7) != 1
trigger1 = stateType = s
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 235 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact

;---------------------------------------------------------------------
; ‚µ‚á‚ª‚ÝŽãƒpƒ“ƒ`
[State -1]
type = ChangeState
value = 400
triggerall = Command = "x" && Command = "holddown"
triggerall = var(7) != 1
trigger1 = stateType = C
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 400 && Time >= 6

;---------------------------------------------------------------------
; ‚µ‚á‚ª‚Ý‹­ƒpƒ“ƒ`
[State -1]
type = ChangeState
value = 410
triggerall = Command = "y" && Command = "holddown"
triggerall = var(7) != 1
trigger1 = stateType = C
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 235 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact

;---------------------------------------------------------------------
; ‚µ‚á‚ª‚ÝŽãƒLƒbƒN
[State -1]
type = ChangeState
value = 430
triggerall = Command = "a" && Command = "holddown"
triggerall = var(7) != 1
trigger1 = stateType = C
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 235 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && Time >= 6

;---------------------------------------------------------------------
; ‚µ‚á‚ª‚Ý‹­ƒLƒbƒN
[State -1]
type = ChangeState
value = 440
triggerall = Command = "b" && Command = "holddown"
triggerall = var(7) != 1
trigger1 = stateType = C
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 235 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact

;---------------------------------------------------------------------
; ƒWƒƒƒ“ƒvŽãƒpƒ“ƒ`
[State -1]
type = ChangeState
value = 600
triggerall = Command = "x"
triggerall = var(7) != 1
trigger1 = stateType = A
trigger1 = ctrl

;---------------------------------------------------------------------
; ƒWƒƒƒ“ƒv‹­ƒpƒ“ƒ`
[State -1]
type = ChangeState
value = 610
triggerall = Command = "y"
triggerall = var(7) != 1
trigger1 = stateType = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 630 && movecontact

;---------------------------------------------------------------------
; ƒWƒƒƒ“ƒvŽãƒLƒbƒN
[State -1]
type = ChangeState
value = 630
triggerall = Command = "a"
triggerall = var(7) != 1
trigger1 = stateType = A
trigger1 = ctrl

;---------------------------------------------------------------------
; ƒWƒƒƒ“ƒv‹­ƒLƒbƒN
[State -1]
type = ChangeState
value = 640
triggerall = Command = "b"
triggerall = var(7) != 1
trigger1 = stateType = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 630 && movecontact

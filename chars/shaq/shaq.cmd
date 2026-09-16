;This file has the important information for controlling the character.  A lot of comments here are copied from Kung Fu Man.
;The AI parts are voodoo, don't touch.
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

;-| Hold Button |----------------------------------------------------------
; Please define Anim 74140108 in your AIR file if AND ONLY IF you place these
; 7 Hold Button commands immediately after the 11 Single Button and Hold Dir
; commands at the very top of your CMD list, as demonstrated here.
; In this version of the AI code, these commands are only used by the XOR
; method, and thus are optional.  But there remains a possibility that a
; future version of the helper method might be helped by having these
; commands placed here, and Anim 74140108 would then be used to indicate
; that a partner character has a compatible CMD.

[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "holdc"
command = /c
time = 1

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
name = "holdstart"
command = /s
time = 1

;-| CPU |--------------------------------------------------------------
; Note that if you make any changes to the basic one-button or recovery
; commands, you'll need to make the same changes to their matching commands here
; and/or in the XOR VarSet controller.  That includes things like, for example:
;  * changing the recovery command to use a different combination of buttons.
;  * renaming the b button command as "d", or the start button command as "s".
;  * switching the button names around, e.g. so button y triggers "a" and button a triggers "y".
;  * having more than one way to trigger the same command name.
; If you understand how the XOR method works, the proper changes should be obvious.
; If you don't understand it, then simply disable the lines in the XOR VarSet
; controller that correspond to the commands you've altered.

[Command]
name = "a2"
command = a
time = 1

[Command]
name = "b2"
command = b
time = 1

[Command]
name = "c2"
command = c
time = 1

[Command]
name = "x2"
command = x
time = 1

[Command]
name = "y2"
command = y
time = 1

[Command]
name = "z2"
command = z
time = 1

[Command]
name = "start2"
command = s
time = 1

[Command]
name = "holdfwd2"
command = /$F
time = 1

[Command]
name = "holdback2"
command = /$B
time = 1

[Command]
name = "holdup2"
command = /$U
time = 1

[Command]
name = "holddown2"
command = /$D
time = 1

[Command]
name = "holda2"
command = /a
time = 1

[Command]
name = "holdb2"
command = /b
time = 1

[Command]
name = "holdc2"
command = /c
time = 1

[Command]
name = "holdx2"
command = /x
time = 1

[Command]
name = "holdy2"
command = /y
time = 1

[Command]
name = "holdz2"
command = /z
time = 1

[Command]
name = "holdstart2"
command = /s
time = 1

[Command]
name = "recovery2"
command = x+y
time = 1

; Here add matching commands for any moves that must never be used randomly
; by the computer, such as suicide moves and super moves, and add the pairs
; to the XOR VarSet controller in State -3.

; If you're desperate to make sure that the AI always gets turned on as soon
; as possible, you can add more equivalents for your own commands here too,
; and add to the XOR VarSet controller's triggers accordingly.  You should
; use button-only commands before using any commands with directional
; components, as the latter apparently doesn't work in Linux Mugen 2002.04.14.

; And of course, if you've run out of unique command labels (Mugen allows
; 128), you can remove as many of these as you want.  You'll of course need
; to modify the XOR VarSet controller's triggers accordingly, but Mugen
; will let you know if you forget to do so. :)

;-| Super Motions |--------------------------------------------------------
; Commands with Half-Circle motions have multiple versions to help Keyboard users perform them
[Command]
name = "kienzan"
command = ~D,B,D,F,x
time = 20

[Command]
name = "kienzan"
command = ~D,B,D,F,y
time = 20

[Command]
name = "kienzan"
command = ~D,DB,B,DB,D,DF,F,x
time = 20

[Command]
name = "kienzan"
command = ~D,DB,B,DB,D,DF,F,y
time = 20

[Command]
name = "r_kienzan"
command = ~D,F,D,B,x
time = 20

[Command]
name = "r_kienzan"
command = ~D,F,D,B,y
time = 20

[Command]
name = "r_kienzan"
command = ~D,DF,F,DF,D,DB,B,x
time = 20

[Command]
name = "r_kienzan"
command = ~D,DF,F,DF,D,DB,B,y
time = 20

[Command]
name = "kazaam"
command = ~D,D,D,a
time = 20

[Command]
name = "kazaam"
command = ~D,D,D,b
time = 20

[Command]
name = "shaqattack"
command = ~D,F,D,F,a
time = 20

[Command]
name = "shaqattack"
command = ~D,F,D,F,b
time = 20

[Command]
name = "r_shaqattack"
command = ~D,B,D,B,a
time = 20

[Command]
name = "r_shaqattack"
command = ~D,B,D,B,b
time = 20

[Command]
name = "stillinsane"
command = ~D,F,D,B,a
time = 25

[Command]
name = "stillinsane"
command = ~D,F,D,B,b
time = 25

[Command]
name = "steel"
command = ~B,F,B,F,x
time = 25

[Command]
name = "steel"
command = ~B,F,B,F,y
time = 25

[Command]
name = "shaqattack"
command = ~D,DF,F,D,DF,F,a
time = 20

[Command]
name = "shaqattack"
command = ~D,DF,F,D,DF,F,b
time = 20

[Command]
name = "r_shaqattack"
command = ~D,DB,B,D,DB,B,a
time = 20

[Command]
name = "r_shaqattack"
command = ~D,DB,B,D,DB,B,b
time = 20

[Command]
name = "stillinsane"
command = ~D,DF,F,D,DB,B,a
time = 25

[Command]
name = "stillinsane"
command = ~D,DF,F,D,DB,B,b
time = 25

[Command]
name = "360_z"
command = ~F, D, B, U, z
time = 15
buffer.time = 3
[Command]
name = "360_z"
command = ~D, B, U, F, z
time = 15
buffer.time = 3
[Command]
name = "360_z"
command = ~B, U, F, D, z
time = 15
buffer.time = 3
[Command]
name = "360_z"
command = ~U, F, D, B, z
time = 15
buffer.time = 3
[Command]
name = "360_z"
command = ~B, D, F, U, z
time = 15
buffer.time = 3
[Command]
name = "360_z"
command = ~D, F, U, B, z
time = 15
buffer.time = 3
[Command]
name = "360_z"
command = ~F, U, B, D, z
time = 15
buffer.time = 3
[Command]
name = "360_z"
command = ~U, B, D, F, z
time = 15
buffer.time = 3
[Command]
name = "360_z"
command = ~F, DF, D, DB, B, UB, U, z
time = 15
buffer.time = 3
[Command]
name = "360_z"
command = ~D, DB, B, UB, U, UF, F, z
time = 15
buffer.time = 3
[Command]
name = "360_z"
command = ~B, UB, U, UF, F, DF, D, z
time = 15
buffer.time = 3
[Command]
name = "360_z"
command = ~U, UF, F, DF, D, DB, B, z
time = 15
buffer.time = 3

[Command]
name = "360_z"
command = ~F, UF, U, UB, B, DB, D, z
time = 15
buffer.time = 3
[Command]
name = "360_z"
command = ~U, UB, B, DB, D, DF, F, z
time = 15
buffer.time = 3
[Command]
name = "360_z"
command = ~B, DB, D, DF, F, UF, U, z
time = 15
buffer.time = 3
[Command]
name = "360_z"
command = ~D, DF, F, UF, U, UB, B, z
time = 15
buffer.time = 3




;-| Special Motions |------------------------------------------------------
[Command]
name = "ballkick"
command = D,b
time = 5

[Command]
name = "ballpunch"
command = D,y
time = 5

[Command]
name = "discball"
command = ~F,B,F,y

[Command]
name = "discball"
command = ~F,B,F,x

[Command]
name = "infernokick"
command = ~D,DF,F,b

[Command]
name = "infernokick"
command = ~D,DF,F,a

[Command]
name = "infernokick"
command = ~D,F,b

[Command]
name = "infernokick"
command = ~D,F,a

[Command]
name = "r_infernokick"
command = ~D,DB,B,b

[Command]
name = "r_infernokick"
command = ~D,DB,B,a

[Command]
name = "r_infernokick"
command = ~D,B,b

[Command]
name = "r_infernokick"
command = ~D,B,a

[Command]
name = "shadowkick"
command = ~30$B, F, a
time = 15

[Command]
name = "shadowkick2"
command = ~30$B, F, b
time = 15

[Command]
name = "kangarookick"
command = ~F,D,DF,a

[Command]
name = "kangarookick"
command = ~F,D,F,a

[Command]
name = "kangarookick2"
command = ~F,D,DF,b

[Command]
name = "kangarookick2"
command = ~F,D,F,b

[Command]
name = "r_kangarookick"
command = ~F,D,DF,a

[Command]
name = "r_kangarookick"
command = ~F,D,F,a

[Command]
name = "r_kangarookick2"
command = ~F,D,DF,b

[Command]
name = "r_kangarookick2"
command = ~F,D,F,b


[Command]
name = "overhead"
command = ~B,D,F,x

[Command]
name = "overhead"
command = ~B,DB,D,DF,F,x

[Command]
name = "overhead"
command = ~B,D,F,y

[Command]
name = "overhead"
command = ~B,DB,D,DF,F,y

[Command]
name = "r_overhead"
command = ~F,D,B,x

[Command]
name = "r_overhead"
command = ~F,DF,D,DB,B,x

[Command]
name = "r_overhead"
command = ~F,D,B,y

[Command]
name = "r_overhead"
command = ~F,DF,D,DB,B,y

[Command]
name = "freethrow1"
command = ~F,D,B,x

[Command]
name = "freethrow1"
command = ~F,DF,D,DB,B,x

[Command]
name = "freethrow2"
command = ~F,D,B,a

[Command]
name = "freethrow2"
command = ~F,DF,D,DB,B,a

[Command]
name = "freethrow3"
command = ~F,D,B,y

[Command]
name = "freethrow3"
command = ~F,DF,D,DB,B,y

[Command]
name = "freethrow4"
command = ~F,D,B,b

[Command]
name = "freethrow4"
command = ~F,DF,D,DB,B,b

[Command]
name = "r_freethrow1"
command = ~B,D,F,x

[Command]
name = "r_freethrow1"
command = ~B,DB,D,DF,F,x

[Command]
name = "r_freethrow2"
command = ~B,D,F,a

[Command]
name = "r_freethrow2"
command = ~B,DB,D,DF,F,a

[Command]
name = "r_freethrow3"
command = ~B,D,F,y

[Command]
name = "r_freethrow3"
command = ~B,DB,D,DF,F,y

[Command]
name = "r_freethrow4"
command = ~B,D,F,b

[Command]
name = "r_freethrow4"
command = ~B,DB,D,DF,F,b

[Command]
name = "teleport"
command = ~B,F,c

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

; Used by the KOF-esque superjump system
[Command]
name = "SupahJump"
;command = ~$D, $U
command = ~$D, $U
time = 5
buffer.time = 2

; Used to detect if the player charges down for more than neccersary, negating the superjump in this case
[Command]
name = "ChargedSupahJump"
;command = ~$D, $U
command = ~12$D, $U
time = 5
buffer.time = 2

; Used by the jump system to not buffer aerial basics at the begining of the jump so you would more certainly cancel into charge downup moves (not like Shaq as such moves, but yeah)
[Command]
name = "upper_what"
command = ~15$D, $U, x
time = 10
[Command]
name = "upper_what"
command = ~15$D, $U, y
time = 10
[Command]
name = "upper_what"
command = ~15$D, $U, z
time = 10
[Command]
name = "upper_what"
command = ~15$D, $U, a
time = 10
[Command]
name = "upper_what"
command = ~15$D, $U, b
time = 10
[Command]
name = "upper_what"
command = ~15$D, $U, c
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery" ;Required (do not remove)
command = x+y
time = 1

[Command]
name = "CD"
command = y+b
time = 1
;-| Dir + Button |---------------------------------------------------------
[Command]
name = "back_x"
command = /$B,x
time = 1

[Command]
name = "back_y"
command = /$B,y
time = 1

[Command]
name = "back_z"
command = /$B,z
time = 1

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_z"
command = /$D,z
time = 1

[Command]
name = "fwd_x"
command = /$F,x
time = 1

[Command]
name = "fwd_y"
command = /$F,y
time = 1

[Command]
name = "fwd_z"
command = /$F,z
time = 1

[Command]
name = "up_x"
command = /$U,x
time = 1

[Command]
name = "up_y"
command = /$U,y
time = 1

[Command]
name = "up_z"
command = /$U,z
time = 1

[Command]
name = "back_a"
command = /$B,a
time = 1

[Command]
name = "back_b"
command = /$B,b
time = 1

[Command]
name = "back_c"
command = /$B,c
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_c"
command = /$D,c
time = 1

[Command]
name = "fwd_a"
command = /$F,a
time = 1

[Command]
name = "fwd_b"
command = /$F,b
time = 1

[Command]
name = "fwd_c"
command = /$F,c
time = 1

[Command]
name = "up_a"
command = /$U,a
time = 1

[Command]
name = "up_b"
command = /$U,b
time = 1

[Command]
name = "up_c"
command = /$U,c
time = 1

; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;AI Activation
[State -1, AI Activate]
type = VarSet
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = alive
trigger1 = AILevel
var(59) = 10

[State -1, AI Deactivation]
type = VarSet
trigger1 = roundstate = 4
trigger2 = !alive
trigger3 = !AILevel
trigger4 = stateno = 195 && roundstate = 3 && var(59)
var(59) = 0


[State -1, Flags]
type = AssertSpecial
trigger1 = var(59) > 3
flag = nowalk

[State -1, Flags]
type = AssertSpecial
trigger1 = var(59) > 3
flag = nostandguard
flag2 = nocrouchguard
flag3 = noairguard

[State -1, Enemy detection];Credits to Poyochan
Type = VarSet
trigger1 = 1
var(48) = ifelse(enemynear,alive = 0 && numenemy = 2,1,0)
IgnoreHitPause = 1

[State -1, AI Kangaroo Kick Aerial Enemy Detector]
type = VarSet
triggerall = var(59) && roundstate = 2
triggerall = prevstateno = 104
triggerall = stateno = 1300
trigger1 = time = [1,6]
var(43) = ifelse(enemynear(var(48)), statetype = A,1,0)

[State -1, AI Kangaroo Kick Combo Variable]
type = VarAdd
triggerall = var(59) && roundstate = 2
triggerall = alive
trigger1 = stateno = 1300 && movehit = 1
var(39) = ifelse(var(43)=1||prevstateno=240||prevstateno=206||prevstateno=400||prevstateno=445,2,1)

[State -1, AI Rolling Memory]
type = VarAdd
triggerall = var(59) && roundstate = 2
triggerall = prevstateno = 104
triggerall = stateno != 0 && stateno != 11
trigger1 = time = 1
var(44) = 1
ignorehitpause = 1
persistent = ifelse(enemy,teammode = turns,0,1)

[State -1, AI Rolling Memory]
type = VarSet
trigger1 = roundstate != 2 && enemy,teammode = turns
var(44) = 0
ignorehitpause = 1

[State -1, AI Kangaroo Kick Combo Variable]
type = VarSet
trigger1 = !var(59)
trigger2 = enemynear(var(48)), statetype != A
trigger3 = roundstate != 2
trigger4 = enemynear(var(48)), movetype != H
trigger5 = stateno = 830
trigger6 = stateno >= 2000
trigger7 = movetype = H
trigger8 = stateno = 240 && animtime = 0
var(39) = 0

[State -1, AI 5b]
type = ChangeState
triggerall = var(59) && roundstate = 2
triggerall = alive
triggerall = statetype != A
triggerall = var(39) = 1
triggerall = enemynear(var(48)), vel Y >= 0
triggerall = ctrl || (stateno = [21,22]) || stateno = 100 || (stateno = [120,131])
triggerall = p2dist Y = [-120+enemynear(var(48)), Vel Y * -2,20]
trigger1 = 1
value = 240

[State -1, AI Jump forward for grab finisher]
type = ChangeState
triggerall = var(59) && roundstate = 2
triggerall = alive
triggerall = var(39) > 1
triggerall = statetype != A
triggerall = power < 1000
triggerall = ctrl || (stateno = [21,22]) || stateno = 100
triggerall = p2dist Y = [-100+enemynear(var(48)), Vel Y * -2,20]
trigger1 = fvar(20) := 0  || fvar(21) := 0 || fvar(23) := 1
value = 41

[State -1, AI grab finisher]
type = ChangeState
triggerall = var(59) && roundstate = 2
triggerall = alive
triggerall = var(39) > 1
triggerall = statetype = A
triggerall = !inguarddist
triggerall = ctrl
triggerall = p2dist Y = [-45,35]
triggerall = p2bodydist X =  [-80,80]
trigger1 = 1
value = 830

[State -1, AI Kazaam Chain]
type = ChangeState
triggerall = var(59) && roundstate = 2
triggerall = alive
triggerall = var(39) > 1
triggerall = statetype != A
triggerall = (power = [1000,1999])
triggerall = ctrl || (stateno = [21,22]) || stateno = 100
trigger1 = 1
value = 2100

[State -1, AI AutoCombo Chain]
type = ChangeState
triggerall = var(59) && roundstate = 2
triggerall = alive
triggerall = var(39) > 1
triggerall = statetype != A
triggerall = power >= 1000
triggerall = ctrl || (stateno = [21,22]) || stateno = 100
triggerall = p2dist Y >= -125
trigger1 = power >= 2000
value = 2200

[State -1, AI Auto Combo Extend]
type = ChangeState
triggerall = var(59) && roundstate = 2
triggerall = alive
triggerall = power >= 1000
triggerall = enemynear(var(48)), life > 1
triggerall = random <= var(59) * 10 && var(59) < 7 || var(59) >= 7 && animelemtime(76) >= 2
trigger1 = stateno = 2201
value = 2202

[State -1, AI Auto Combo Climax]
type = ChangeState
triggerall = var(59) && roundstate = 2
triggerall = alive
triggerall = power >= 1000
triggerall = enemynear(var(48)), life > 1
triggerall = random <= var(59) * 10 && var(59) < 7 || var(59) >= 7 && anim = 1000
triggerall = movehit = [1,10]
trigger1 = stateno = 2203
value = 2204

[State -1, AI Chaos Dunk!]
type = ChangeState
triggerall = var(59) && roundstate = 2
triggerall = alive
triggerall = statetype != A
triggerall = enemynear(var(48)), statetype != L && enemynear(var(48)), stateno != 5120
triggerall = enemynear(var(48)), statetype != A
triggerall = ctrl || (stateno = [21,22]) || stateno = 100 || (stateno = [120,131]) || (stateno = [200,299]) && movecontact || (stateno = [400,499]) && stateno != 440 && movecontact
triggerall = Power >= 3000
triggerall = p2dist Y = [-10,20]
triggerall = (p2bodydist X = [-5,35])
triggerall = random <= var(59) * 50 || var(59) >= 7
trigger1 = enemynear(var(48)), movetype = A
trigger1 = enemynear(var(48)), ctrl = 0
trigger1 = enemynear(var(48)), animtime < -4
trigger2 = stateno = 400 && movecontact
trigger3 = (stateno = [200,299]) || (stateno = [400,499]) && stateno != 440
trigger3 = moveguarded
value = 3000

[State -1, AI AutoCombo]
type = ChangeState
triggerall = var(59) && roundstate = 2
triggerall = alive
triggerall = statetype != A
triggerall = enemynear(var(48)), statetype != L && enemynear(var(48)), stateno != 5120
triggerall = enemynear(var(48)), statetype != A || (p2dist Y <= -70) || (enemynear(var(48)), vel Y <= 0)
triggerall = enemynear(var(48)), movetype = A
triggerall = enemynear(var(48)), ctrl = 0
triggerall = enemynear(var(48)), animtime < -6
triggerall = ctrl || (stateno = [21,22]) || stateno = 100 || (stateno = [120,131]) || (stateno = [200,299]) && movecontact || (stateno = [400,499]) && stateno != 440 && movecontact
triggerall = Power >= 1000
triggerall = p2dist Y = [-75,20]
triggerall = (p2bodydist X = [-5,55])
trigger1 = random <= var(59) * 50 || var(59) >= 7
value = 2200

[State -1, AI AutoCombo Inferno Kick]
type = ChangeState
triggerall = var(59) && roundstate = 2
triggerall = alive
triggerall = statetype != A
triggerall = enemynear(var(48)), statetype != L && enemynear(var(48)), stateno != 5120
triggerall = enemynear(var(48)), movetype = H
triggerall = (p2bodydist X = [-5,55])
triggerall = stateno = 1000 && movehit
triggerall = power >= 1000
trigger1 = random <= var(59) * 40 || var(59) >= 4
value = 2200

[State -1, AI AutoCombo (simuls)]
type = ChangeState
triggerall = var(59) && roundstate = 2
triggerall = alive
triggerall = statetype != A
triggerall = enemynear(var(48)), statetype != L && enemynear(var(48)), stateno != 5120
triggerall = enemynear(var(48)), teammode = simul || teammode = simul
triggerall = p2dist Y = [-90,20]
triggerall = (p2bodydist X = [-5,25])
triggerall = (p2bodydist X = [-5,55])
triggerall = stateno = 240 && movehit
triggerall = power >= 1000
trigger1 = random <= var(59) * 40 || var(59) >= 4
value = 2200

[State -1, AI Free Throws]
type = ChangeState
triggerall = var(59) && roundstate = 2
triggerall = alive
triggerall = !var(39)
triggerall = statetype != A
triggerall = (enemynear(var(48)), statetype != A && (p2dist Y = [-20,20])) || (enemynear(var(48)), statetype = A && (p2dist Y = [-150,-70]))
triggerall = enemynear(var(48)), numproj <= 0
triggerall = enemynear(var(48)), stateno != 5120
triggerall = stateno != [120,155]
triggerall = !PlayerIdExist(helper(33333333),var(3))
triggerall = !numhelper(1500)
triggerall = frontedgedist >= 150
triggerall = ctrl || (stateno = [21,22]) || stateno = 100 && time >= 8
triggerall = (p2bodydist X = [110,240])
trigger1 = random <= var(59) * 4
value = ifelse(p2bodydist X <= 100,1500,ifelse(p2bodydist X <= 150,1501,ifelse(p2bodydist X <= 185,1502,1503)))

[State -1, AI 464x]
type = ChangeState
triggerall = var(59) && roundstate = 2
triggerall = alive
triggerall = !var(39)
triggerall = statetype != A
triggerall = enemynear(var(48)), statetype != A
triggerall = enemynear(var(48)), anim != 40
triggerall = enemynear(var(48)), numproj <= 0
triggerall = enemynear(var(48)), stateno != 5120
triggerall = stateno != [120,155]
triggerall = !PlayerIdExist(helper(33333333),var(3))
triggerall = numhelper(1200) = 0 && numhelper(2000) = 0
triggerall = ctrl || (stateno = [21,22]) || stateno = 100 && time >= 8
triggerall = p2dist Y = [-10,20]
triggerall = (p2bodydist X = [165,300])
trigger1 = random <= var(59) * 8
value = 1200

[State -1, AI Jump Fwd]
type = ChangeState
triggerall = var(59) && roundstate = 2
triggerall = alive
triggerall = !var(39)
triggerall = statetype != A
triggerall = enemynear(var(48)), statetype != L
triggerall = facing != enemynear(var(48)), facing
triggerall = (enemynear(var(48)), movetype != H) || ((enemynear(var(48)), stateno = [150,155]) && teammode != simul)
triggerall = !enemynear(var(48)), numproj > 0 && !PlayerIdExist(helper(33333333),var(3))
triggerall = !inguarddist
triggerall = stateno != [120,150]
triggerall = ctrl || (stateno = [21,22]) || stateno = 100 && time >= 8
triggerall = fvar(20) := 1  || fvar(21) := 1 || fvar(23) := 0
trigger1 = p2dist Y = [-80,20]
trigger1 = p2bodydist X = [110,180]
trigger1 = random <= var(59) * 12+(ifelse(numhelper(1500),10,0))
value = 41

[State -1, AI Dodge Back]
type = ChangeState
triggerall = var(59) && roundstate = 2
triggerall = alive
triggerall = !var(39)
triggerall = statetype != A
triggerall = enemynear(var(48)), statetype != L
triggerall = facing != enemynear(var(48)), facing
triggerall = (enemynear(var(48)), movetype != H) || ((enemynear(var(48)), stateno = [150,155]) && teammode != simul)
triggerall = ctrl || (stateno = [21,22]) || stateno = 100 && time >= 8 || (stateno = [120,131])
trigger1 = p2dist Y = [-60,20]
trigger1 = p2bodydist X = [30,150]
trigger1 = backedgedist >= 100
trigger1 = random <= var(59) * 15
value = 105

[State -1, AI Jump Back]
type = ChangeState
triggerall = var(59) && roundstate = 2
triggerall = alive
triggerall = !var(39)
triggerall = statetype != A
triggerall = enemynear(var(48)), statetype != L
triggerall = facing != enemynear(var(48)), facing
triggerall = (enemynear(var(48)), movetype != H) || ((enemynear(var(48)), stateno = [150,155]) && teammode != simul)
triggerall = !enemynear(var(48)), numproj > 0 && !PlayerIdExist(helper(33333333),var(3))
triggerall = !inguarddist
triggerall = stateno != [120,150]
triggerall = ctrl || (stateno = [21,22]) || stateno = 100 && time >= 8
triggerall = fvar(20) := -1  || fvar(21) := 1 || fvar(23) := 0
trigger1 = p2dist Y = [-80,20]
trigger1 = p2bodydist X = [30,140]
trigger1 = backedgedist >= 100
trigger1 = random <= var(59) * 27
value = 41

[State -1, AI Roll In Fwd]
type = ChangeState
triggerall = var(59) && roundstate = 2
triggerall = alive
triggerall = !var(39)
triggerall = statetype != A
triggerall = ctrl || (stateno = [21,22]) || stateno = 100 || (stateno = [120,131])
triggerall = var(44) < 4
trigger1 = enemynear(var(48)), statetype != L
trigger1 = p2dist Y = [-60,20]
trigger1 = p2bodydist X = [90,180]
trigger1 = random <= var(59) * 5-(var(44)*2)
trigger1 = facing != enemynear(var(48)), facing
trigger1 = enemynear(var(48)), backedgedist > 50
trigger2 = enemynear(var(48)), statetype != L
trigger2 = enemynear(var(48)), numproj > 0 || PlayerIdExist(helper(33333333),var(3))
trigger2 = p2bodydist X >= 130
trigger2 = random <= var(59) * 40-(var(44)*10)
trigger3 = enemynear(var(48)), statetype = L
trigger3 = backedgedist <= 80
trigger3 = p2dist X = [-5,90]
trigger4 = facing != enemynear(var(48)), facing
trigger4 = enemynear(var(48)), backedgedist > 50
trigger4 = enemynear(var(48)), movetype = A
trigger4 = enemynear(var(48)), ctrl = 0
trigger4 = enemynear(var(48)), animtime < -25
trigger4 = random <= var(59) * 85-(var(44)*10)
trigger4 = p2bodydist X = [20,140]
value = 104

[State -1, AI 5z]
type = ChangeState
triggerall = var(59) && roundstate = 2
triggerall = alive
triggerall = statetype != A
triggerall = enemynear(var(48)), statetype != L && enemynear(var(48)), stateno != 5120
triggerall = enemynear(var(48)), statetype != A
triggerall = enemynear(var(48)), movetype != H
triggerall = enemynear(var(48)), stateno != [150,155]
triggerall = ctrl || (stateno = [21,22]) || stateno = 100 || (stateno = [120,131])
triggerall = prevstateno != 800
triggerall = p2dist Y = [-15,20]
triggerall = (p2bodydist X = [-5,12])
trigger1 = random <= var(59) * 90 || stateno = 101
value = ifelse(stateno = 100,101,800)

[State -1, AI J.z]
type = ChangeState
triggerall = var(59) && roundstate = 2
triggerall = alive
triggerall = !var(39)
triggerall = statetype = A
triggerall = enemynear(var(48)), statetype = A
triggerall = p2dist Y = [-30,40]
triggerall = (p2bodydist X = [-5,35])
triggerall = random <= var(59) * 95
trigger1 = ctrl
trigger2 = stateno = 600 || (stateno = 630 && animelemtime(4) >= 0) ; yes, you can combo aerial basics into an air throw. Obviously it would be only useful against aerial opponents
trigger2 = animtime >= -5 || movecontact || time < 6
value = 830

[State -1, AI J.x]
type = ChangeState
triggerall = var(59) && roundstate = 2
triggerall = alive
triggerall = !var(39)
triggerall = statetype = A
triggerall = ctrl
triggerall = p2dist Y = [-30,80]
triggerall = (p2bodydist X = [-30,50])
trigger1 = random <= var(59) * 90
value = 600

[State -1, AI J.a (no momentum)]
type = ChangeState
triggerall = var(59) && roundstate = 2
triggerall = alive
triggerall = !var(39)
triggerall = statetype = A
triggerall = Vel X = 0
triggerall = ctrl
triggerall = p2dist Y = [-5,90]
triggerall = (p2bodydist X = [-30,75])
trigger1 = random <= var(59) * 90
value = 630

[State -1, AI J.a (with momentum)]
type = ChangeState
triggerall = var(59) && roundstate = 2
triggerall = alive
triggerall = !var(39)
triggerall = statetype = A
triggerall = enemynear(var(48)), statetype = A
triggerall = Vel X != 0
triggerall = ctrl
triggerall = p2dist Y = [-70,5]
triggerall = (p2bodydist X = [-60,-31])
trigger1 = random <= var(59) * 90
value = 630

[State -1, AI AI Free Throw (Anti-Air)]
type = ChangeState
triggerall = var(59) && roundstate = 2
triggerall = alive
triggerall = !var(39)
triggerall = statetype != A
triggerall = enemynear(var(48)), statetype != L && enemynear(var(48)), stateno != 5120
triggerall = enemynear(var(48)), statetype = A
triggerall = enemynear(var(48)), movetype != H
triggerall = ctrl || (stateno = [21,22]) || stateno = 100
triggerall = p2dist Y = [-160,-110]
triggerall = (p2bodydist X = [15,80])
triggerall = !numhelper(1500)
trigger1 = random <= var(59) * 60
value = 1501

[State -1, AI 8x]
type = ChangeState
triggerall = var(59) && roundstate = 2
triggerall = alive
triggerall = !var(39)
triggerall = statetype != A
triggerall = enemynear(var(48)), statetype != L && enemynear(var(48)), stateno != 5120
triggerall = enemynear(var(48)), statetype = A
triggerall = ctrl || (stateno = [21,22]) || stateno = 100
triggerall = p2dist Y = [-115,-56]
triggerall = (p2bodydist X = [-5,40])
trigger1 = random <= var(59) * 90
value = 206

[State -1, AI 1a]
type = ChangeState
triggerall = var(59) && roundstate = 2
triggerall = alive
triggerall = !var(39)
triggerall = statetype != A
triggerall = enemynear(var(48)), statetype != L && enemynear(var(48)), stateno != 5120
triggerall = enemynear(var(48)), statetype = A
triggerall = ctrl || (stateno = [21,22]) || stateno = 100
triggerall = p2dist Y = [-55,-20]
triggerall = (p2bodydist X = [-5,35])
trigger1 = random <= var(59) * 90
value = 445

[State -1, AI 2x]
type = ChangeState
triggerall = var(59) && roundstate = 2
triggerall = alive
triggerall = !var(39)
triggerall = statetype != A
triggerall = !inguarddist || facing = enemynear(var(48)), facing || enemynear(var(48)), movetype = I || random <= var(59) * 50
triggerall = enemynear(var(48)), statetype != L && enemynear(var(48)), stateno != 5120
triggerall = ctrl || (stateno = [21,22]) || stateno = 100 || (stateno = [120,140])
triggerall = p2dist Y = [-35,20]
triggerall = (p2bodydist X = [-5,42])
trigger1 = random <= var(59) * 70
value = 400

[State -1, AI 2y]
type = ChangeState
triggerall = var(59) && roundstate = 2
triggerall = alive
triggerall = !var(39)
triggerall = statetype != A
triggerall = !inguarddist || facing = enemynear(var(48)), facing || enemynear(var(48)), movetype = I || random <= var(59) * 30
triggerall = enemynear(var(48)), statetype != L && enemynear(var(48)), stateno != 5120
triggerall = ctrl || (stateno = [21,22]) || stateno = 100 || (stateno = [120,140])
triggerall = p2dist Y = [-35,20]
triggerall = (p2bodydist X = [-5,65])
trigger1 = random <= var(59) * 95
value = 410

[State -1, AI Chain]
type = ChangeState
triggerall = var(59) && roundstate = 2
triggerall = alive
triggerall = statetype != A
triggerall = enemynear(var(48)), statetype != L && enemynear(var(48)), stateno != 5120
triggerall = enemynear(var(48)), statetype != A
triggerall = p2dist Y = [-40,20]
triggerall = (p2bodydist X = [-5,25])
triggerall = stateno = 400 && movecontact
trigger1 = random <= var(59) * 40 || var(59) >= 4
value = 400

[State -1, AI Chain]
type = ChangeState
triggerall = var(59) && roundstate = 2
triggerall = alive
triggerall = statetype != A
triggerall = enemynear(var(48)), statetype != L && enemynear(var(48)), stateno != 5120
triggerall = enemynear(var(48)), statetype != A
triggerall = p2dist Y = [-40,20]
triggerall = (p2bodydist X = [-5,70])
triggerall = stateno = 400 && movecontact
trigger1 = random <= var(59) * 40 || var(59) >= 4
value = 410

[State -1, AI Kangaroo Kick Light]
type = ChangeState
triggerall = var(59) && roundstate = 2
triggerall = alive
triggerall = statetype != A
triggerall = enemynear(var(48)), statetype != L && enemynear(var(48)), stateno != 5120
triggerall = movehit
triggerall = stateno = 400 && enemynear(var(48)), statetype = A || stateno = 410 || stateno = 240 || stateno = 445 || stateno = 206
trigger1 = random <= var(59) * 40 || var(59) >= 4
value = 1300


[State -1, AI Run Fwd]
type = ChangeState
triggerall = var(59) && roundstate = 2
triggerall = alive
triggerall = !var(39)
triggerall = statetype != A
triggerall = enemynear(var(48)), numproj <= 0
triggerall = enemynear(var(48)), statetype != L
triggerall = !PlayerIdExist(helper(33333333),var(3))
triggerall = !inguarddist
triggerall = stateno != [120,155]
triggerall = ctrl || (stateno = [21,22])
triggerall = p2dist Y = [-60,20]
triggerall = p2bodydist X >= 40+ifelse(enemynear(var(48)), statetype = A,130,0)
trigger1 = random <= var(59) * 80
value = 100

[State -1, AI Guard]
type = ChangeState
triggerall = roundstate = 2
triggerall = alive
triggerall = inguarddist
triggerall = statetype != A
triggerall = ctrl || (stateno = [21,22]) || stateno = 100
triggerall = stateno != [120,155]
trigger1 = var(59) = [1,3]
trigger1 = random <= var(59) * 10
trigger2 = var(59) = [4,6]
trigger2 = random <= var(59) * 50
trigger3 = var(59) >= 7
value = 120

[State -1, AI Alpha Counter]
type = ChangeState
triggerall = var(59) && roundstate = 2
triggerall = alive
triggerall = !var(39)
triggerall = statetype != A
triggerall = enemynear(var(48)), statetype != L && enemynear(var(48)), stateno != 5120
triggerall = enemynear(var(48)), ctrl = 0
triggerall = enemynear(var(48)), movetype = A
triggerall = stateno = [150,153]
triggerall = power >= 500
triggerall = (p2bodydist X = [-5,55])
trigger1 = random <= var(59) * 60 || life < 300
value = 700


[State -1, AI Taunt]
type = ChangeState
triggerall = var(59) && roundstate = 3
triggerall = win && prevstateno != 195
triggerall = statetype != A
trigger1 = ctrl || (stateno = [21,22]) || stateno = 100 || (stateno = [120,131])
value = 195

[State -1, AI Walk Fwd]
type = ChangeState
triggerall = var(59) > 3 && roundstate = 2
triggerall = alive
triggerall = statetype != A
triggerall = !inguarddist
triggerall = stateno != [120,155]
triggerall = stateno != [100,110]
triggerall = !var(39)
triggerall = stateno != 21
trigger1 = ctrl
trigger1 = p2bodydist X > 5
trigger1 = random <= 900
trigger1 = enemynear(var(48)), statetype != A && enemynear(var(48)), statetype != L
trigger2 = ctrl || stateno = 22
trigger2 = enemynear(var(48)), statetype = L
trigger2 = enemynear(var(48)), alive > 0
trigger2 = p2bodydist X > 100
trigger3 = ctrl || stateno = 22
trigger3 = enemynear(var(48)), statetype = A
trigger3 = p2bodydist X > 40
trigger4 = stateno = 22
trigger4 = (p2bodydist X >= 200) || (p2bodydist X = [70,180]) && (random < 3) && (time > 15)
trigger4 = enemynear(var(48)), statetype != A && enemynear(var(48)), statetype != L
value = 21

[State -1, AI Walk Back]
type = ChangeState
triggerall = var(59) > 3 && roundstate = 2
triggerall = alive
triggerall = statetype != A
triggerall = !inguarddist
triggerall = !var(39)
triggerall = stateno != [120,155]
triggerall = stateno != [100,110]
triggerall = stateno != 22
trigger1 = ctrl || stateno = 21
trigger1 = enemynear(var(48)), statetype = L
trigger1 = enemynear(var(48)), alive > 0
trigger1 = p2bodydist X < 90
trigger2 = ctrl || stateno = 21
trigger2 = enemynear(var(48)), statetype = A
trigger2 = p2bodydist X < 30
trigger3 = stateno = 21 || CTRL
trigger3 = p2bodydist X = [10,180]
trigger3 = random <= 80
trigger3 = enemynear(var(48)), statetype != A && enemynear(var(48)), statetype != L
value = 22

[State -1, AI Walk to Stand]
Type = ChangeState
triggerall = stateno = [21,22]
triggerall = !var(39)
trigger1 = var(59) < 4
trigger2 = roundstate != 2
trigger3 = p2bodydist X <= 0
trigger4 = p2bodydist X = [90,100]
trigger4 = enemynear(var(48)), statetype = L
trigger5 = p2bodydist X = [30,40]
trigger5 = enemynear(var(48)), statetype = A
trigger6 = enemynear(var(48)), statetype != A && enemynear(var(48)), statetype != L
trigger6 = random < 2
trigger7 = inguarddist
value = 0
ctrl = 1

[State -1, AI Walk Fwd]
type = ChangeState
triggerall = var(59) && roundstate = 2
triggerall = alive
triggerall = statetype != A
triggerall = !inguarddist
triggerall = stateno != [120,155]
triggerall = stateno != [100,110]
triggerall = var(39)
triggerall = stateno != 21
trigger1 = ctrl || stateno = 22
trigger1 = p2bodydist X > 20
value = 21

[State -1, AI Walk Back]
type = ChangeState
triggerall = var(59) && roundstate = 2
triggerall = alive
triggerall = statetype != A
triggerall = !inguarddist
triggerall = var(39)
triggerall = stateno != [120,155]
triggerall = stateno != [100,110]
triggerall = stateno != 22
trigger1 = ctrl || stateno = 21
trigger1 = p2bodydist X < 10
value = 22

[State -1, AI Walk to Stand]
Type = ChangeState
triggerall = stateno = [21,22]
triggerall = var(39)
trigger1 = !var(59)
trigger2 = roundstate != 2
trigger4 = p2bodydist X = [10,20]
value = 0
ctrl = 1

;===========================================================================
;This is not a move, but it sets up var(1) to be 1 if conditions are right
;for a combo into a special move (used below).
;Since a lot of special moves rely on the same conditions, this reduces
;redundant logic.
[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(1) = 0

[State -1, Combo condition Check]
type = VarSet
triggerall = statetype != A || (stateno = 40) ; rejected while in-air, altho accept the jump init state (which has a statetype of A before actually leaving pos y = 0), potentially important especially for charge downup moves
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact
trigger3 = stateno = 100 ; as the run state has ctrl of 0 in order to prevent "crouching while running" (altho Shaq can roll from his run so whatever), this has to be included as "special cancelable"
trigger4 = stateno = 40 && pos y = 0 ; ccept the jump init state (which has a statetype of A before actually leaving pos y = 0), potentially important especially for charge downup moves
var(1) = 1

;===========================================================================

[State -1, Chaos Dunk]
type = ChangeState
value = 3000
triggerall = var(59) <= 3
triggerall = (var(55)<5 && (command = "360_z")) || var(52) = 3000 ; The move will be done if desired by either player's input (and on lower difficulties, Mugen's default AI so it would randomly throw out the move in the open) or if chosen by an AI variable
triggerall = statetype != A ; a strictly ground move
triggerall = power >= 3000
trigger1 = var(1) ; this lets you cancel from runing as well as most of ground basic moves on contact (see "Combo condition Check" above)
trigger2 = stateno = 1000 || stateno = 1100 || stateno = 1101 || stateno = 1400 ; hey baby, wanna have a super move cancelable from a number of special moves? (The inferno kick and shadow kicks in Shaq's case)
trigger2 = movecontact

[State -1, Super Shaq-urikin]
type = ChangeState
value = 2000
triggerall = var(59) <= 3
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "kienzan",command = "r_kienzan")) || var(52) = 2000 ; this ifelse solution is proposed by Vans so you can do the command as normal shall Shaq suddenly turn around while you would be doing that command
triggerall = statetype != A
triggerall = numhelper(1200) = 0 && numhelper(2000) = 0 ; if a Disc, either regular or superpowered, is already on the screen, DON'T DO IT
triggerall = power >= 1000
trigger1 = var(1)
trigger2 = stateno = 1000 || stateno = 1100 || stateno = 1101 || stateno = 1400
trigger2 = movecontact

[State -1, Kazaam reference]
type = ChangeState
value = 2100
triggerall = var(59) <= 3
triggerall = (var(55)<5 && (command = "kazaam")) || var(52) = 2100 ; of course if the command has no horizontal inputs you can make it like that
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = var(1)
trigger2 = stateno = 1000 || stateno = 1100 || stateno = 1101 || stateno = 1400
trigger2 = movecontact

[State -1, An autocombo]
type = ChangeState
value = 2200
triggerall = var(59) <= 3
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "shaqattack",command = "r_shaqattack")) || var(52) = 2200
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = var(1)
trigger2 = stateno = 1000 || stateno = 1100 || stateno = 1101 || stateno = 1400
trigger2 = movecontact

[State -1, AUTOCOMBO EXTEND]
type = ChangeState
value = 2202
triggerall = var(59) <= 3
triggerall = (var(55)<5 && (command = "stillinsane")) || var(52) = 2202
triggerall = power >= 1000
trigger1 = stateno = 2201

[State -1, AUTOCOMBO CLIMAX]
type = ChangeState
value = 2204
triggerall = var(59) <= 3
triggerall = (var(55)<5 && (command = "steel")) || var(52) = 2202
triggerall = power >= 1000
trigger1 = stateno = 2203


;===========================================================================
[State -1, free throws yaay point blank]
type = ChangeState
value = 1500
triggerall = var(59) <= 3
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "freethrow1",command = "r_freethrow1")) || var(52) = 1500
triggerall = statetype != A
triggerall = numhelper(1500) < 2
trigger1 = var(1)

[State -1, free throws yaay near]
type = ChangeState
value = 1501
triggerall = var(59) <= 3
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "freethrow2",command = "r_freethrow2")) || var(52) = 1501
triggerall = statetype != A
triggerall = numhelper(1500) < 2
trigger1 = var(1)

[State -1, free throws yaay mid]
type = ChangeState
value = 1502
triggerall = var(59) <= 3
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "freethrow3",command = "r_freethrow3")) || var(52) = 1502
triggerall = statetype != A
triggerall = numhelper(1500) < 2
trigger1 = var(1)

[State -1, free throws yaay far]
type = ChangeState
value = 1503
triggerall = var(59) <= 3
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "freethrow4",command = "r_freethrow4")) || var(52) = 1503
triggerall = statetype != A
triggerall = numhelper(1500) < 2
trigger1 = var(1)

[State -1, Light Kangaroo Kick]
type = ChangeState
value = 1300
triggerall = var(59) <= 3
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "kangarookick",command = "r_kangarookick")) || var(52) = 1300
triggerall = statetype != A
trigger1 = var(1)

[State -1, Strong Kangaroo Kick]
type = ChangeState
value = 1301
triggerall = var(59) <= 3
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "kangarookick2",command = "r_kangarookick2")) || var(52) = 1301
triggerall = statetype != A
trigger1 = var(1)

[State -1, Inferno Kick]
type = ChangeState
value = 1000
triggerall = var(59) <= 3
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "infernokick",command = "r_infernokick")) || var(52) = 1000
triggerall = statetype != A
trigger1 = var(1)

[State -1, Weak Shadow Kick]
type = ChangeState
value = 1100
triggerall = var(59) <= 3
triggerall = (var(55)<5 && (command = "shadowkick")) || var(52) = 1100
triggerall = statetype != A
trigger1 = var(1)

[State -1, Strong Shadow Kick]
type = ChangeState
value = 1101
triggerall = var(59) <= 3
triggerall = (var(55)<5 && (command = "shadowkick2")) || var(52) = 1101
triggerall = statetype != A
trigger1 = var(1)

[State -1, Overhead hop]
type = ChangeState
value = 1400
triggerall = var(59) <= 3
triggerall = (var(55)<5 && ifelse((anim!=[5,6]),command = "overhead",command = "r_overhead")) || var(52) = 1400
triggerall = statetype != A
trigger1 = var(1)

[State -1, Shaq-urikin]
type = ChangeState
value = 1200
triggerall = var(59) <= 3
triggerall = (var(55)<5 && (command = "discball")) || var(52) = 1200
triggerall = statetype != A
triggerall = numhelper(1200) = 0 && numhelper(2000) = 0
trigger1 = var(1)


;---------------------------------------------------------------------------
;Kung Fu Throw
;投げ
[State -1, Ground Throw]
type = ChangeState
value = 800
triggerall = var(59) <= 3
triggerall = (var(55)<5 && (command = "z")) || var(52) = 800
triggerall = statetype != A
trigger1 = ctrl
trigger1 = stateno != 100
trigger2 = stateno = 200 || stateno = 230 || stateno = 415 || stateno = 205 || stateno = 206 || stateno = 210
trigger2 = animtime >= -5 || movecontact || time < 6

[State -1, Air Throw]
type = ChangeState
value = 830
triggerall = var(59) <= 3
triggerall = (var(55)<5 && (command = "z")) || var(52) = 830
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || (stateno = 630 && animelemtime(4) >= 0) ; yes, you can combo aerial basics into an air throw. Obviously it would be only useful against aerial opponents
trigger2 = animtime >= -5 || movecontact || time < 6

;---------------------------------------------------------------------------
;Teleport
;後退ダッシュ
[State -1, Teleport]
type = ChangeState
value = 110
triggerall = var(59) <= 3
triggerall = (var(55)<5 && (command = "teleport")) || (var(52) = 110)
triggerall = statetype != A
triggerall = power >= 500
trigger1 = ctrl || stateno = 100

;---------------------------------------------------------------------------
;Dodge!
;ダッシュ
[State -1, Dodge!]
type = ChangeState
value = 104
triggerall = var(59) <= 3
triggerall = (var(55)<5 &&  (command = "holddown" && stateno = 100) || (command = "holdc" && command = "holddown") || (command = "holdc" && command = "holdfwd" && (stateno = [150,154]))) || (var(52) = 104)
triggerall = statetype != A
triggerall = anim != 101
trigger1 = ctrl || stateno = 100
trigger2 = power >= 500
trigger2 = (stateno = [150,153])

[State -1, AKUMA] ; Guard cancel counter attack
type = ChangeState
value = 700
triggerall = var(59) <= 3
triggerall = (!var(55) && command = "CD")  || var(52) = 700
triggerall = power >= 500
triggerall = statetype != A
trigger1 = stateno = [150,154]

;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(59) <= 3
triggerall = (var(55)<5 && (command = "FF") || (command = "holdc" && command = "holdfwd" && command != "teleport")) || (var(52) = 100)
triggerall = stateno != 100
triggerall = stateno != 40
triggerall = anim != 101
trigger1 = !statetype = A
trigger1 = ctrl

[State -1, Double Jump]
type = ChangeState
value = 45
triggerall = var(59) <= 3
triggerall = var(15) = 0
triggerall = var(16) = 0
triggerall = statetype = A
triggerall = ctrl
trigger1 = command = "holdup"

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(59) <= 3
triggerall = (var(55)<5 && (command = "BB") || (command = "holdc" && command = "holdback" && command != "teleport")) || (var(52) = 105)
trigger1 = !statetype = A
trigger1 = ctrl || stateno = 100
trigger2 = power >= 500
trigger2 = (stateno = [150,153])

[State -1, Crouch High Kick]
type = ChangeState
value = 445
triggerall = var(59) <= 3
triggerall = (var(55)<5 && (command = "a" && (command = "holdback" || command = "holdfwd") && command = "holddown")) || var(52) = 445
trigger1 = statetype != A
trigger1 = ctrl || stateno = 40 || stateno = 100
trigger2 = stateno = 200 || stateno = 230 || stateno = 206 || stateno = 205
trigger2 = animtime >= -5 || movecontact

[State -1, Down Punch]
type = ChangeState
value = 415
triggerall = var(59) <= 3
triggerall = (var(55)<5 && (command = "y" && command = "holdfwd" && command = "holddown")) || var(52) = 415
trigger1 = statetype != A
trigger1 = ctrl || stateno = 40 || stateno = 100
trigger2 = stateno = 200 || stateno = 230 || stateno = 206 || stateno = 205 || stateno = 235
trigger2 = animtime >= -5 || movecontact

[State -1, Parry Jab]
type = ChangeState
value = 206
triggerall = var(59) <= 3
triggerall = (var(55)<5 && (command = "x" && command = "holdup")) || var(52) = 206
trigger1 = statetype != A
trigger1 = ctrl || stateno = 40 || stateno = 100
trigger2 = stateno = 230 || stateno = 400
trigger2 = animtime >= -5 || movecontact

[State -1, Elbow to Punch]
type = ChangeState
value = 205
triggerall = var(59) <= 3
triggerall = (var(55)<5 && (command = "x" && command = "holdback" && command != "holddown")) || var(52) = 205
trigger1 = statetype != A
trigger1 = ctrl || stateno = 4 || stateno = 1000
trigger2 = stateno = 200 || stateno = 230 || stateno = 206
trigger2 = animtime >= -5 || movecontact

[State -1, Rising Roundhouse]
type = ChangeState
value = 245
triggerall = var(59) <= 3
triggerall = (var(55)<5 && (command = "b" && command = "holdup")) || var(52) = 245
trigger1 = statetype != A
trigger1 = ctrl || stateno = 40 || stateno = 100
trigger2 = stateno = 200 || stateno = 230 || stateno = 400 || stateno = 410 || stateno = 205 || stateno = 206 || stateno = 235 || stateno = 445
trigger2 = animtime >= -5 || movecontact

[State -1, Forward Kick]
type = ChangeState
value = 235
triggerall = var(59) <= 3
triggerall = (var(55)<5 && ((command = "a" || command = "b") && command = "holdfwd" && command != "holddown")) || var(52) = 235 ; both Forward+LK and Forward+HK will have you do this move because that's how it was in Shaq Fu itself too lol
trigger1 = statetype != A
trigger1 = ctrl || stateno = 40 || stateno = 100
trigger2 = stateno = 200 || stateno = 205 || stateno = 206
trigger2 = animtime >= -5 || movecontact


;===========================================================================

;---------------------------------------------------------------------------
;Stand Light Punch
;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(59) <= 3
triggerall = (var(55)<5 && (command = "x" && command != "holddown")) || var(52) = 200
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 230 || stateno = 200
trigger2 = animtime >= -5 || movecontact

[State -1, Stand Back Punch]
type = ChangeState
value = 210
triggerall = var(59) <= 3
triggerall = (var(55)<5 && (command = "y" && command != "holddown")) || var(52) = 210
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || stateno = 230 || stateno = 205 || stateno = 206 || stateno = 235 || stateno = 415
trigger2 = animtime >= -5 || movecontact

[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = var(59) <= 3
triggerall = (var(55)<5 && (command = "a" && command != "holddown")) || var(52) = 230
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
;trigger2 = stateno = 200 || stateno = 400
;trigger2 = animtime >= -5 || movecontact

[State -1, Stand Roundhouse Kick]
type = ChangeState
value = 240
triggerall = var(59) <= 3
triggerall = (var(55)<5 && (command = "b" && command != "holddown")) || var(52) = 240
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200 || stateno = 230 || stateno = 400 || stateno = 410 || stateno = 205 || stateno = 235 || stateno = 206
trigger2 = animtime >= -5 || movecontact

;---------------------------------------------------------------------------
;Taunt
[State -1, POWER UP]
type = ChangeState
value = 199
triggerall = var(59) <= 3
triggerall = (var(55)<5 && (command = "start" && command = "holddown")) || var(52) = 199
triggerall = var(10) = 0
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Taunt
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = var(59) <= 3
triggerall = (command = "start") || var(52) = 195 || (var(58) = -2 && winko && !var(48))
triggerall = stateno != 195
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100

[State -1, Crouch Light Punch]
type = ChangeState
value = 400
triggerall = var(59) <= 3
triggerall = (var(55)<5 && (command = "x" && command = "holddown")) || var(52) = 400
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 400 || stateno = 430 || stateno = 445
trigger2 = animtime >= -5 || movecontact

[State -1, Crouch Fire Punch]
type = ChangeState
value = 410
triggerall = var(59) <= 3
triggerall = (var(55)<5 && (command = "y" && command = "holddown")) || var(52) = 410
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 400 || stateno = 430 || stateno = 445 || stateno = 235
trigger2 = animtime >= -5 || movecontact

[State -1, Crouch Light Kick]
type = ChangeState
value = 430
triggerall = var(59) <= 3
triggerall = (var(55)<5 && (command = "a" && command = "holddown")) || var(52) = 430
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 400 || stateno = 445
trigger2 = animtime >= -5 || movecontact

[State -1, Crouch Sweep]
type = ChangeState
value = 440
triggerall = var(59) <= 3
triggerall = (var(55)<5 && (command = "b" && command = "holddown")) || var(52) = 440
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 400 || stateno = 430 || stateno = 445 || stateno = 410
trigger2 = animtime >= -5 || movecontact

;---------------------------------------------------------------------------
;Jump Light Punch
;空中弱パンチ
[State -1, Jump Punch]
type = ChangeState
value = 600
triggerall = var(59) <= 3
triggerall = (var(55)<5 && (command = "x" || command = "y")) || var(52) = 600
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump Kick]
type = ChangeState
value = 630
triggerall = var(59) <= 3
triggerall = (var(55)<5 && (command = "a" || command = "b")) || var(52) = 630
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Air combo lol]
type = ChangeState
value = 40
triggerall = var(59) <= 3
triggerall = (command = "holdup") || var(52) = [40,45]
trigger1 = var(55) ; trigger1 series is strictly for AI to have it decided when it shall jump when desired, the other triggers also include the player-controlled Shaq
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100 ; let Shaq jump from the run as the run has ctrl = 0 to prevent this "crouch while running thing"
; this below will let Shaq jump cancel the parry punch and rising roundhouse on hit as long as his target happen to be midair
trigger3 = numtarget
trigger3 = statetype != A
trigger3 = target,statetype=A
trigger3 = stateno = 206 || stateno = 245
trigger3 = movehit



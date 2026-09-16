;==============================================================================================
;=======================================<COMMAND FILE>=========================================
;==============================================================================================

;====================<BUTTON REMAPPING>====================

[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;====================<DEFAULT VALUES>====================

[Defaults]
command.time = 15
command.buffer.time = 1

;====================<SINGLE BUTTON>====================

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
name = "s"
command = s
time = 1

;==================<HOLD DIRECTION>==================

[Command]
name = "holdfwd"
command=/$F
time=1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup"
command = /$U
time=1

[Command]
name = "holddown"
command = /$D
time = 1

;====================<HOLD BUTTON>====================

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

;====================<DIRECTION>====================

[Command]
name = "fwd"
command = F
time = 1

[Command]
name = "back"
command = B
time = 1

[Command]
name = "up"
command = U
time = 1

[Command]
name = "down"
command = D
time = 1

;====================<RELEASE DIR>====================

[Command]
name = "rlsfwd"
command = ~$F
time = 1

[Command]
name = "rlsback"
command = ~$B
time = 1

[Command]
name = "rlsup"
command = ~$U
time = 1

[Command]
name = "rlsdown"
command = ~$D
time = 1

;====================<RELEASE BUTTON>====================

[Command]
name = "rlsx"
command = ~x
time = 1

[Command]
name = "rlsy"
command = ~y
time = 1

[Command]
name = "rlsz"
command = ~z
time = 1

[Command]
name = "rlsa"
command = ~a
time = 1

[Command]
name = "rlsb"
command = ~b
time = 1

[Command]
name = "rlsc"
command = ~c
time = 1

;====================<SUPER MOTIONS>===================
;----------------
;----------------LVL 3 Super
[Command]
name = "LVL3SUPER"
command = ~D, DB, B, D, DB, B, x+y
time = 32
[Command]
name = "LVL3SUPER"
command = ~D, DB, B, D, DB, B, y+z
time = 32
[Command]
name = "LVL3SUPER"
command = ~D, DB, B, D, DB, B, x+z
time = 32

;----------------MAX Super 1
[Command]
name = "MAXSUPER1"
command = ~D, DF, F, D, DF, F, x+y
time = 32

[Command]
name = "MAXSUPER1"
command = ~D, DF, F, D, DF, F, y+z
time = 32

[Command]
name = "MAXSUPER1"
command = ~D, DF, F, D, DF, F, x+z
time = 32
;----------------Super 1
[Command]
name = "SUPER1"
command = ~D, DF, F, D, DF, F, x
time = 32

[Command]
name = "SUPER1"
command = ~D, DF, F, D, DF, F, y
time = 32

[Command]
name = "SUPER1"
command = ~D, DF, F, D, DF, F, z
time = 32

[Command]
name = "SUPER1"
command = ~D, DF, F, D, DF, F, ~x
time = 32

[Command]
name = "SUPER1"
command = ~D, DF, F, D, DF, F, ~y
time = 32

[Command]
name = "SUPER1"
command = ~D, DF, F, D, DF, F, ~z
time = 32

;----------------MAX Super 2
[Command]
name = "MAXSUPER2"
command = ~B, F, D, DF, a+b
time = 32

[Command]
name = "MAXSUPER2"
command = ~B, F, D, DF, c+b
time = 32

[Command]
name = "MAXSUPER2"
command = ~B, F, D, DF, a+c
time = 32
;----------------Super 2
[Command]
name = "SUPER2"
command = ~B, F, D, DF, a
time = 32

[Command]
name = "SUPER2"
command = ~B, F, D, DF, b
time = 32

[Command]
name = "SUPER2"
command = ~B, F, D, DF, c
time = 32

[Command]
name = "SUPER2"
command = ~B, F, D, DF, ~a
time = 32

[Command]
name = "SUPER2"
command = ~B, F, D, DF, ~b
time = 32

[Command]
name = "SUPER2"
command = ~B, F, D, DF, ~c
time = 32
;----------------Super 3
[Command]
name = "SUPER3"
command = ~D, D, c+z
time = 20

;====================<SPECIAL MOTIONS>====================
;----------------Special 1
[Command]
name = "SPECIAL1"
command = ~D, DF, F, x
time = 16

[Command]
name = "SPECIAL1"
command = ~D, DF, F, y
time = 16

[Command]
name = "SPECIAL1"
command = ~D, DF, F, z
time = 16

[Command]
name = "SPECIAL1"
command = ~D, DF, F, ~x
time = 16

[Command]
name = "SPECIAL1"
command = ~D, DF, F, ~y
time = 16

[Command]
name = "SPECIAL1"
command = ~D, DF, F, ~z
time = 16
;----------------
;----------------EX Special 1
[Command]
name = "EXSPECIAL1"
command = ~D, DF, F, x+y
time = 16

[Command]
name = "EXSPECIAL1"
command = ~D, DF, F, y+z
time = 16

[Command]
name = "EXSPECIAL1"
command = ~D, DF, F, x+z
time = 16
;----------------
;----------------Special 2
[Command]
name = "SPECIAL2"
command = ~F, D, DF, x
time = 20

[Command]
name = "SPECIAL2"
command = ~F, D, DF, y
time = 20

[Command]
name = "SPECIAL2"
command = ~F, D, DF, z
time = 20

[Command]
name = "SPECIAL2"
command = ~F, D, DF, ~x
time = 20

[Command]
name = "SPECIAL2"
command = ~F, D, DF, ~y
time = 20

[Command]
name = "SPECIAL2"
command = ~F, D, DF, ~z
time = 20
;----------------
;----------------EX Special 2
[Command]
name = "EXSPECIAL2"
command = ~F, D, DF, x+y
time = 20

[Command]
name = "EXSPECIAL2"
command = ~F, D, DF, y+z
time = 20

[Command]
name = "EXSPECIAL2"
command =  ~F, D, DF, x+z
time = 20
;----------------Special 4
[Command]
name = "SPECIAL4"
command = ~B, DB, D, DF, F, a
time = 20

[Command]
name = "SPECIAL4"
command = ~B, DB, D, DF, F, b
time = 20

[Command]
name = "SPECIAL4"
command = ~B, DB, D, DF, F, c
time = 20

[Command]
name = "SPECIAL4"
command = ~B, DB, D, DF, F, ~a
time = 20

[Command]
name = "SPECIAL4"
command = ~B, DB, D, DF, F, ~b
time = 20

[Command]
name = "SPECIAL4"
command = ~B, DB, D, DF, F, ~c
time = 20
;----------------
;----------------EX Special 4
[Command]
name = "EXSPECIAL4"
command = ~B, DB, D, DF, F, a+b
time = 20

[Command]
name = "EXSPECIAL4"
command = ~B, DB, D, DF, F, b+c
time = 20

[Command]
name = "EXSPECIAL4"
command = ~B, DB, D, DF, F, a+c
time = 20
;----------------Special 3
[Command]
name = "SPECIAL3"
command = ~D, DB, B, a
time = 16

[Command]
name = "SPECIAL3"
command = ~D, DB, B, b
time = 16

[Command]
name = "SPECIAL3"
command = ~D, DB, B, c
time = 16

[Command]
name = "SPECIAL3"
command = ~D, DB, B, ~a
time = 16

[Command]
name = "SPECIAL3"
command = ~D, DB, B, ~b
time = 16

[Command]
name = "SPECIAL3"
command = ~D, DB, B, ~c
time = 16
;----------------
;----------------EX Special 3
[Command]
name = "EXSPECIAL3"
command = ~D, DB, B, a+b
time = 16

[Command]
name = "EXSPECIAL3"
command = ~D, DB, B, b+c
time = 16

[Command]
name = "EXSPECIAL3"
command = ~D, DB, B, a+c
time = 16
;----------------
[Command]
name = "412p"
command = ~B, DB, D, x
time = 16

[Command]
name = "412p"
command = ~B, DB, D, y
time = 16

[Command]
name = "412p"
command = ~B, DB, D, z
time = 16

[Command]
name = "412p"
command = ~B, DB, D, ~x
time = 16

[Command]
name = "412p"
command = ~B, DB, D, ~y
time = 16

[Command]
name = "412p"
command = ~B, DB, D, ~z
time = 16

[Command]
name = "412k"
command = ~B, DB, D, a
time = 16

[Command]
name = "412k"
command = ~B, DB, D, b
time = 16

[Command]
name=  "412k"
command = ~B, DB, D, c
time = 16

[Command]
name = "412k"
command = ~B, DB, D, ~a
time = 16

[Command]
name = "412k"
command = ~B, DB, D, ~b
time = 16

[Command]
name = "412k"
command = ~B, DB, D, ~c
time = 16

;====================<OTHER>====================

[Command]
name = "highjump"
command = $D, $U
time = 15

;====================<DOUBLE TAP>====================

[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

;====================<2/3 BUTTON COMBINATION>====================

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
command = y+z
time = 1

[Command]
name = "recovery"
command = a+x
time = 1

[Command]
name = "pp"
command = x+y
time = 1

[Command]
name = "pp"
command = x+z
time = 1

[Command]
name = "pp"
command = y+z
time = 1

[Command]
name = "kk"
command = a+b
time = 1

[Command]
name = "kk"
command = a+c
time = 1

[Command]
name = "kk"
command = b+c
time = 1

[Command]
name = "a+x"
command = a+x
time=1

[Command]
name = "b+y"
command = b+y
time = 1

[Command]
name = "c+z"
command = c+z
time = 1

;==============================================================================================
;========================================<-1 STATES>===========================================
;==============================================================================================
[StateDef -1]

[State -1, Tick Fix]
type = CtrlSet
triggerAll = !ctrl
trigger1 = (StateNo = 52 || StateNo = 101 || StateNo = 5120) && !AnimTime
trigger2 = (StateNo = [200,499]) && !AnimTime && Anim != 251 
trigger3 = ((StateNo = [760,762]) || (StateNo = [700,715]) || (StateNo = [900,905])) && !AnimTime
trigger4 = (StateNo = 5001 || StateNo = 5011 || StateNo = 151 || StateNo = 153) && HitOver
value = 1

[State -1, CtrlSet For Helpers]
type = CtrlSet
trigger1 = IsHelper
value = 0

[State -1, Hit Count For Helpers]
type = ParentVarAdd
trigger1 = IsHelper
trigger1 = MoveHit = 1
trigger1 = !HitPauseTime
trigger1 = !(HitDefAttr = SCA, AT)
var(13) = 1

[State -1, Juggle Count For Helpers]
type = ParentVarAdd
trigger1 = IsHelper
trigger1 = MoveHit = 1
trigger1 = !HitPauseTime
trigger1 = !(HitDefAttr = SCA, AT)
var(15) = 1

[State -1, Roll Forward]
type = ChangeState
value = 710
triggerAll = !AILevel
triggerAll = command = "a+x"
triggerAll = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101])) && command = "holdfwd"
trigger2 = var(20) && var(4)

[State -1, Roll Backward]
type = ChangeState
value = 715
triggerAll = !AILevel
triggerAll = command = "a+x"
triggerAll = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101])) && command = "holdback"

[State -1, Dodge]
type = ChangeState
value = 700
triggerAll = !AILevel
triggerAll = command = "a+x"
triggerAll = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101]))

[State -1, THE WORDS]
type = ChangeState
value = 3500
triggerAll = !AILevel
triggerAll = command = "LVL3SUPER"
triggerAll = RoundState = 2 && StateType != A
triggerAll = (power >= 3000 && !var(20)) || (power >= 2000 && var(20))
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(7)

[State -1, MAX Shoryuken (DUB)]
type = ChangeState
value = 3160
triggerAll = !AILevel
triggerAll = command = "MAXSUPER2"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 500 && var(20)
trigger1 = ctrl || ((stateno = [200, 449]) && time <= 2) || (stateno = 200 || stateno = 230 || stateno = 240)
trigger2 = (stateno = [200, 449]) && stateno != 215 && (movecontact = [1, 8])
trigger3 = ((stateno = [1100, 1150]) || (stateno = [1300, 1350]) || stateno = 3100 || stateno = 3110 || stateno = 3160 || stateno = 3150) && (movecontact = [1, 24]) 
trigger4 = (stateno = [1000, 3999]) && numhelper(stateno + 5) && stateno != 3000 && (stateno != [3020, 3049]) && var(10) <= 5
trigger4 = helper(stateno + 5), var(3)
[State -1, MAX Shoryuken]
type = ChangeState
value = 3150
triggerAll = !AILevel
triggerAll = command = "MAXSUPER2"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 2000 && !var(20)
trigger1 = ctrl || ((stateno = [200, 449]) && time <= 2) || (stateno = 200 || stateno = 230 || stateno = 240)
trigger2 = (stateno = [200, 449]) && stateno != 215 && (movecontact = [1, 8])
trigger3 = ((stateno = [1100, 1150]) || (stateno = [1300, 1350]) || stateno = 1500 || stateno = 3110 || stateno = 3160 || stateno = 3150) && (movecontact = [1, 24]) 
trigger4 = (stateno = [1000, 3999]) && numhelper(stateno + 5) && stateno != 3000 && (stateno != [3020, 3049]) && var(10) <= 5
trigger4 = helper(stateno + 5), var(3)

[State -1, MAX Hadouken (DUB)]
type = ChangeState
value = 3060
triggerAll = !AILevel
triggerAll = command = "MAXSUPER1"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 500 && var(20)
trigger1 = ctrl || ((stateno = [200, 449]) && time <= 2) || (stateno = 200 || stateno = 230 || stateno = 240)
trigger2 = (stateno = [200, 449]) && stateno != 215 && (movecontact = [1, 8])
trigger3 = ((stateno = [1100, 1150]) || (stateno = [1300, 1350]) || stateno = 3100 || stateno = 3110 || stateno = 3160 || stateno = 3150) && (movecontact = [1, 24]) 
trigger4 = (stateno = [1000, 3999]) && numhelper(stateno + 5) && stateno != 3000 && (stateno != [3020, 3049]) && var(10) <= 5
trigger4 = helper(stateno + 5), var(3)
[State -1, MAX Hadouken]
type = ChangeState
value = 3050
triggerAll = !AILevel
triggerAll = command = "MAXSUPER1"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 2000 && !var(20)
trigger1 = ctrl || ((stateno = [200, 449]) && time <= 2) || (stateno = 200 || stateno = 230 || stateno = 240)
trigger2 = (stateno = [200, 449]) && stateno != 215 && (movecontact = [1, 8])
trigger3 = ((stateno = [1100, 1150]) || (stateno = [1300, 1350]) || stateno = 1500 || stateno = 3110 || stateno = 3160 || stateno = 3150) && (movecontact = [1, 24]) 
trigger4 = (stateno = [1000, 3999]) && numhelper(stateno + 5) && stateno != 3000 && (stateno != [3020, 3049]) && var(10) <= 5
trigger4 = helper(stateno + 5), var(3)

[State -1, The World]
type = ChangeState
value = 3110
triggerAll = !AILevel
triggerAll = command = "SUPER3"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 500 && var(20)
trigger1 = ctrl || ((stateno = [200, 449]) && time <= 2) || (stateno = 200 || stateno = 230 || stateno = 240)
trigger2 = (stateno = [200, 449]) && stateno != 215 && (movecontact = [1, 8])
trigger3 = ((stateno = [1100, 1150]) || (stateno = [1300, 1350]) || stateno = 3100 || stateno = 3110 || stateno = 3160 || stateno = 3150) && (movecontact = [1, 24]) 
trigger4 = (stateno = [1000, 3999]) && numhelper(stateno + 5) && stateno != 3000 && (stateno != [3020, 3049]) && var(10) <= 5
trigger4 = helper(stateno + 5), var(3)
trigger5 = var(20) && (stateno = [200, 449])
trigger6 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger7 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger7 = helper(stateno + 5), var(3)
trigger8 = stateno = 52 && (prevstateno = [1000, 4999]) && (movecontact = [1, 24])

[State -1, The Flower, but faster]
type = ChangeState
value = 3103
triggerAll = !AILevel
triggerAll = command = "SUPER2"
triggerAll = RoundState = 2 && StateType != A
triggerAll = var(20)
trigger1 = ctrl || ((stateno = [200, 449]) && time <= 2) || (stateno = 200 || stateno = 230 || stateno = 240)
trigger2 = (stateno = [200, 255]) && stateno != 215 && (movecontact = [1, 8])
trigger3 = ((stateno = [1100, 1150]) || (stateno = [1300, 1350]) || stateno = 3100 || stateno = 3110 || stateno = 3160 || stateno = 3150) && (movecontact = [1, 24]) 
trigger4 = (stateno = [1000, 3999]) && numhelper(stateno + 5) && stateno != 3000 && (stateno != [3020, 3049]) && var(10) <= 5
trigger4 = helper(stateno + 5), var(3)
trigger5 = var(20) && (stateno = [200, 449])
trigger6 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger7 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger7 = helper(stateno + 5), var(3)
trigger8 = stateno = 52 && (prevstateno = [1000, 4999]) && (movecontact = [1, 24])

[State -1, The Flower]
type = ChangeState
value = 3100
triggerAll = !AILevel
triggerAll = command = "SUPER2"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 1000 && !var(20)
trigger1 = ctrl || ((stateno = [200, 449]) && time <= 2) || (stateno = 200 || stateno = 230 || stateno = 240)
trigger2 = (stateno = [200, 255]) && stateno != 215 && (movecontact = [1, 8])
trigger3 = ((stateno = [1100, 1150]) || (stateno = [1300, 1350]) || stateno = 1500 || stateno = 3110 || stateno = 3160 || stateno = 3150) && (movecontact = [1, 24]) 
trigger4 = (stateno = [1000, 3999]) && numhelper(stateno + 5) && stateno != 3000 && (stateno != [3020, 3049]) && var(10) <= 5
trigger4 = helper(stateno + 5), var(3)
trigger5 = var(20) && (stateno = [200, 449])
trigger6 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger7 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger7 = helper(stateno + 5), var(3)
trigger8 = stateno = 52 && (prevstateno = [1000, 4999]) && (movecontact = [1, 24])

[State -1, The Skull]
type = ChangeState
value = 3010
triggerAll = !AILevel
triggerAll = command = "SUPER1"
triggerAll = RoundState = 2 && StateType != A
triggerAll = var(20)
trigger1 = ctrl || ((stateno = [200, 449]) && time <= 2) || (stateno = 200 || stateno = 230 || stateno = 240)
trigger2 = (stateno = [200, 449]) && stateno != 215 && (movecontact = [1, 8])
trigger3 = ((stateno = [1100, 1150]) || (stateno = [1300, 1350]) || stateno = 3100 || stateno = 3110 || stateno = 3160 || stateno = 3150) && (movecontact = [1, 24]) 
trigger4 = (stateno = [1000, 3999]) && numhelper(stateno + 5) && stateno != 3000 && (stateno != [3020, 3049]) && var(10) <= 5
trigger4 = helper(stateno + 5), var(3)
trigger5 = var(20) && (stateno = [200, 449])
trigger6 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger7 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger7 = helper(stateno + 5), var(3)
trigger8 = stateno = 52 && (prevstateno = [1000, 4999]) && (movecontact = [1, 24])

[State -1, The Fridge]
type = ChangeState
value = 3000
triggerAll = !AILevel
triggerAll = command = "SUPER1"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 1000 && !var(20)
trigger1 = ctrl || ((stateno = [200, 449]) && time <= 2) || (stateno = 200 || stateno = 230 || stateno = 240)
trigger2 = (stateno = [200, 255]) && stateno != 215 && (movecontact = [1, 8])
trigger3 = ((stateno = [1100, 1150]) || (stateno = [1300, 1350]) || stateno = 1500 || stateno = 3110 || stateno = 3160 || stateno = 3150) && (movecontact = [1, 24]) 
trigger4 = (stateno = [1000, 3999]) && numhelper(stateno + 5) && stateno != 3000 && (stateno != [3020, 3049]) && var(10) <= 5
trigger4 = helper(stateno + 5), var(3)
trigger5 = var(20) && (stateno = [200, 449])
trigger6 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger7 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger7 = helper(stateno + 5), var(3)
trigger8 = stateno = 52 && (prevstateno = [1000, 4999]) && (movecontact = [1, 24])

[State -1, Rage Attack: Straight Outta Elmore]
type = ChangeState
value = 1500
triggerAll = !AILevel
triggerAll = command = "c+z" 
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 500 && var(41) = 1
trigger1 = ctrl || ((stateno = [200, 449]) && time <= 2) || (stateno = 200 || stateno = 230 || stateno = 240)
trigger2 = (stateno = [200, 449]) && stateno != 215 && (movecontact = [1, 8])
trigger3 = var(20) && (stateno = [200, 440])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, EX Flying Taekwondork]
type = ChangeState
value = 1260
triggerAll = !AILevel
triggerAll = command = "EXSPECIAL3" 
triggerAll = RoundState = 2 && StateType = A
triggerAll = var(53) || (power >= 500 && var(20) <= 60)
trigger1 = ctrl || ((stateno = [600, 699]) && time <= 2) || (stateno = 200 || stateno = 230)
trigger2 = (stateno = [600, 699]) && (movecontact = [1, 8])
trigger3 = var(20) && (stateno = [600, 699])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && (stateno!=[1200,1260]) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, EX Gumretsu Ken]
type = ChangeState
value = 1350
triggerAll = !AILevel
triggerAll = command = "EXSPECIAL4" 
triggerAll = RoundState = 2 && StateType != A
triggerAll = var(53) || (power >= 500 && var(20) <= 60)
trigger1 = ctrl || ((stateno = [200, 449]) && time <= 2) || (stateno = 200 || stateno = 230 || stateno = 240)
trigger2 = (stateno = [200, 449]) && stateno != 215 && (movecontact = [1, 8])
trigger3 = var(20) && (stateno = [200, 440])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, Gumretsu Ken]
type = ChangeState
value = 1300
triggerAll = !AILevel
triggerAll = command = "SPECIAL4"
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || ((stateno = [200, 449]) && time <= 2) || (stateno = 200 || stateno = 230 || stateno = 240)
trigger2 = (stateno = [200, 255]) && stateno != 215 && (movecontact = [1, 8])
trigger3 = var(20) && (stateno = [200, 440])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, EX High-End Senpuukyaku]
type = ChangeState
value = 1250
triggerAll = !AILevel
triggerAll = command = "EXSPECIAL3" 
triggerAll = RoundState = 2 && StateType != A
triggerAll = var(53) || (power >= 500 && var(20) <= 60)
trigger1 = ctrl || ((stateno = [200, 449]) && time <= 2) || (stateno = 200 || stateno = 230 || stateno = 240)
trigger2 = (stateno = [200, 449]) && stateno != 215 && (movecontact = [1, 8])
trigger3 = var(20) && (stateno = [200, 440])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 &&  (prevstateno = [1000, 2999])) && (stateno!=[1200,1260]) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, Flying Taekwondork]
type = changestate
value = 1210
triggerall = !AIlevel
triggerall = command = "SPECIAL3" 
triggerall = roundstate = 2 && statetype = A 
trigger1 = ctrl || ((stateno = [600, 699]) && time <= 2) || (stateno = 200 || stateno = 230)
trigger2 = (stateno = [600, 699]) && (movecontact = [1, 8])
trigger3 = var(20) && (stateno = [600, 699])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && (prevstateno!=[1200,1260]) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, High-End Senpuukyaku]
type = ChangeState
value = 1200
triggerAll = !AILevel
triggerAll = command = "SPECIAL3"
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || ((stateno = [200, 449]) && time <= 2) || (stateno = 200 || stateno = 230 || stateno = 240)
trigger2 = (stateno = [200, 449]) && stateno != 215 && (movecontact = [1, 8])
trigger3 = var(20) && (stateno = [200, 440])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && (stateno!=[1200,1260]) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, EX Sure, You Can]
type = ChangeState
value = 1150
triggerAll = !AILevel
triggerAll = command = "EXSPECIAL2" 
triggerAll = RoundState = 2 && StateType != A
triggerAll = var(53) || (power >= 500 && var(20) <= 60)
trigger1 = ctrl || ((stateno = [200, 449]) && time <= 2) || (stateno = 200 || stateno = 230 || stateno = 240)
trigger2 = (stateno = [200, 449]) && stateno != 215 && (movecontact = [1, 8])
trigger3 = var(20) && (stateno = [200, 440])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, Sure, You Can]
type = ChangeState
value = 1100
triggerAll = !AILevel
triggerAll = command = "SPECIAL2"
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || ((stateno = [200, 449]) && time <= 2) || (stateno = 200 || stateno = 230 || stateno = 240)
trigger2 = (stateno = [200, 255]) && stateno != 215 && (movecontact = [1, 8])
trigger3 = var(20) && (stateno = [200, 440])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, EX Diss Hadouken]
type = ChangeState
value = 1050
triggerAll = !AILevel
triggerAll = command = "EXSPECIAL1" 
triggerAll = RoundState = 2 && StateType != A
triggerAll = var(53) || (power >= 500 && var(20) <= 60)
triggerAll = ifelse(!var(20),(!numhelper(1010) || helper(1010),stateno!=1010), 1)
trigger1 = ctrl || ((stateno = [200, 440]) && time <= 2) || (stateno = 200 || stateno = 230 || stateno = 240)
trigger2 = (stateno = [200, 440]) && stateno != 215 && (movecontact = [1, 8])
trigger3 = var(20) && (stateno = [200, 440])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, Diss Hadouken]
type = ChangeState
value = 1000
triggerAll = !AILevel
triggerAll = command = "SPECIAL1"
triggerAll = RoundState = 2 && StateType != A
triggerAll = ifelse(!var(20)&&!var(53),(!numhelper(1005) || helper(1005),stateno!=1005), 1)
trigger1 = ctrl || ((stateno = [200, 440]) && time <= 2) || (stateno = 200 || stateno = 230 || stateno = 240)
trigger2 = (stateno = [200, 440]) && stateno != 215 && (movecontact = [1, 8])
trigger3 = var(20) && (stateno = [200, 440])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, Zero Counter]
type = ChangeState
value = 750
triggerAll = !AILevel
trigger1 = StateNo = 150 || StateNo = 152
trigger1 = command = "412p" || command = "412k"
trigger1 = RoundState = 2 && StateType != A
trigger1 = power >= 1000 && !var(20)

[State -1, Focus Strike]
type = ChangeState
value = 901
triggerAll = AILevel && NumEnemy
triggerAll = var(40)=1
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,87]) && (P2Dist y = [-50,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Power Charge]
type = ChangeState
value = 730
triggerAll = AILevel && NumEnemy
triggerAll = var(40)=0
trigger1 = RoundState = 2 && StateType != A
trigger1 = Power < const(data.power) && !var(20)
trigger1 = ctrl && Power < const(data.power) && Power < PowerMax && !var(20) && PrevStateNo != 5120
trigger1 = !InGuardDist && P2BodyDist x >= 160 && Random < (50 * (AILevel ** 2 / 64.0))

[State -1, Custom Combo]
type = ChangeState
value = ifElse(StateType = A, 905, 900)
triggerAll = !AILevel
triggerAll = command = "c+z"&&var(54)=0
triggerAll = RoundState = 2
triggerAll = power >= 1000 && !var(20)
trigger1 = ctrl || StateNo = 52 || (StateNo = [100,101])
trigger1 = !var(41)
trigger2 = (var(6)||var(7)) || ((stateno = [200, 440]) && stateno != 215 && (movecontact = [1, 8]))

[State -1, MAX Mode]
type = ChangeState
value = 770
triggerall = command = "c+z"&&var(54)=1
triggerall = RoundState = 2 && StateType != A
triggerall = var(53) <= 0 && Power >= 1000
trigger1 = ctrl || (Stateno = [100,101])
trigger2 = (var(6)||var(7)) || ((stateno = [200, 440]) && stateno != 215 && (movecontact = [1, 8]))

[State -1, Focus Strike]
type = ChangeState
value = 901
triggerAll = !AILevel
triggerAll = var(40)=1
trigger1 = command = "b" && command = "y"
trigger1 = RoundState = 2 && StateType != A
trigger1 = ctrl || (StateNo = [100,101])

[State -1, Power Charging]
type = ChangeState
value = 730
triggerAll = !AILevel
triggerAll = var(40) = 0
trigger1 = command = "holdb" && command = "holdy"
trigger1 = RoundState = 2 && StateType != A
trigger1 = power < const(data.power) && power < PowerMax && !var(20)
trigger1 = ctrl || (StateNo = [100,101])

[State -1, Dash Forward/Run]
type = ChangeState
value = 102
triggerAll = !AILevel
trigger1 = command = "FF"
trigger1 = roundstate = 2 && StateType = S
trigger1 = ctrl

[State -1, Dash Backward]
type = ChangeState
value = 105
triggerAll = !AILevel
trigger1 = command = "BB"
trigger1 = RoundState = 2 && StateType = S
trigger1 = ctrl

[State -1, Throw]
type = ChangeState
value = 800
triggerAll = !AILevel
trigger1 = (command = "holdfwd" || command = "holdback") && command = "pp" 
trigger1 = RoundState = 2 && StateType = S
trigger1 = ctrl

[State -1, Throw]
type = ChangeState
value = 800
triggerAll = !AILevel
trigger1 = (command = "holdfwd" || command = "holdback") && command = "kk"
trigger1 = RoundState = 2 && StateType = S
trigger1 = ctrl

[State -1, Forward Heavy Punch]
type = ChangeState
value = 225
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "z" && command = "holdfwd"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Standing Heavy Punch]
type = ChangeState
value = 220 
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "z"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Standing Heavy Kick]
type = ChangeState
value = 250 
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "c"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Overhead Medium Punch]
type = ChangeState
value = 215
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "y" && command = "holdfwd"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Standing Medium Punch]
type = ChangeState
value = 210
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "y"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Follow Up 1]
type = ChangeState
value = 211
triggerall = (command = "z" && command != "holddown") || var(52) = 200
trigger1 = stateno = 210
trigger1 = time > 8 || movecontact

[State -1, Follow Up 2]
type = ChangeState
value = 212
triggerall = (command = "c" && command != "holddown") || var(52) = 200
trigger1 = stateno = 211
trigger1 = time > 8 || movecontact

[State -1, Standing Medium Kick]
type = ChangeState
value = 240 
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "b"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Back Light Punch]
type = ChangeState
value = 205
triggerAll = !AILevel
triggerAll = command = "holdback" && command = "x"  && command != "holddown"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = (StateNo = 200 || StateNo = 230 || StateNo = 400 || StateNo = 430) && Time >= 4
trigger3 = var(4)

[State -1, Standing Light Punch]
type = ChangeState
value = 200 
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "x"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = (StateNo = 200 || StateNo = 230 || StateNo = 400 || StateNo = 430) && Time >= 4
trigger3 = var(4)

[State -1, Standing Light Kick]
type = ChangeState
value = 230 
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "a"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = (StateNo = 200 || StateNo = 400 || StateNo = 430) && Time >= 4
trigger3 = var(4)

[State -1, Crouching Heavy Punch]
type = ChangeState
value = 420
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "z"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Crouching Heavy Kick]
type = ChangeState
value = 450
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "c"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerAll = !AILevel
triggerAll = command  ="holddown" && command = "y"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "b"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "x"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = (StateNo = 200 || StateNo = 400 || StateNo = 430) && Time >= 4
trigger3 = var(4)

[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "a"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = (StateNo = 200 || StateNo = 400 || StateNo = 430) && Time >= 4
trigger3 = var(4)

[State -1, Jumping Heavy Punch]
type = ChangeState
value = 620
triggerAll = !AILevel
triggerAll = command = "z"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Neutral Jumping Heavy Kick]
type = ChangeState
value = 650
triggerAll = !AILevel
triggerAll = command = "c"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Jumping Medium Punch]
type = ChangeState
value = 610
triggerAll = !AILevel
triggerAll = command = "y"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Jumping Medium Kick]
type = ChangeState
value = 640
triggerAll = !AILevel
triggerAll = command = "b"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Jumping Light Punch]
type = ChangeState
value = 600
triggerAll = !AILevel
triggerAll = command = "x"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Jumping Light Kick]
type = ChangeState
value = 630
triggerAll = !AILevel
triggerAll = command = "a"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "s"
triggerall = !AILevel&&Roundstate=2&&StateType != A
triggerall = StateNo != [200,699]
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(5)

;==============================================================================================
;===========================================< A.I >============================================
;==============================================================================================

[State -1, YOU BIG HEADED DUMBASS]
type = ChangeState
triggerall = AILevel && numenemy
triggerall = random < 100+AILevel
triggerall = statetype != A
triggerall = ((enemynear, ctrl = 0) && p2movetype != A) || (p2movetype = A && (enemynear, facing = facing))
;triggerall = var(54) != 2
triggerall = p2stateno != [5100,5130]
triggerall = p2bodydist x >= 60
triggerall = random < 500
triggerall = (stateno != [10,12]) || random < 100
triggerall = stateno != 20 || random < 500 || var(54) = 1
triggerall = stateno != 22
triggerall = stateno != 40
triggerall = stateno != 100
trigger1 = ctrl
Value = ifelse( random<500&&command="holdfwd", ifelse(random<500,40,100) , ifelse( random < 200&&(p2bodydist x <=20) , ifelse(random<500&&power>=500,1150,1100) , ifelse(random<100&&power>=500,1350,ifelse(!numhelper(1005),1000,1200) ) ) )

[State -1, Consider Advancing]
type = ChangeState
triggerall = AILevel && NumEnemy && roundstate = 2
triggerall = ctrl
triggerall = random < 80+AILevel
triggerall = random < (33*AILevel)
triggerall = ((enemynear, ctrl = 0) && p2movetype != A) || (p2movetype = A && (enemynear, facing = facing))
triggerall = (p2stateno != [5080,5130]) || (p2bodydist x = [45,100])
triggerall = p2bodydist x >= 45
triggerall = statetype != A
triggerall = time >= 7-AILevel || random < 10
trigger1 = stateno != 40
trigger1 = var(1)
trigger1 = !moveguarded
Value = ifelse(random<444&&(p2stateno != [5080,5130]),ifelse(statetype=A,1210,1200),ifelse(random<200,40,ifelse(random < 100, 100,710)))

[State -1, AI Combo A]
type = ChangeState
triggerall = NumEnemy && AILevel
Triggerall = roundstate = 2 && Alive
triggerall = p2statetype != A
triggerAll = (P2BodyDist x = [0,10]) && (P2Dist y = [-60,0]) && P2StateType != L
trigger1 = movecontact && stateno = 200 && (animelemtime(3) > 0) && (prevstateno != [200,499]) && random < 300
trigger2 = movecontact && stateno = 400 && (animelemtime(3) > 0) && (prevstateno != [200,499]) && random < 300
value = 200

[State -1, AI Combo A Finish]
type = ChangeState
triggerall = NumEnemy && AILevel
Triggerall = roundstate = 2 && Alive
triggerall = p2statetype != A
triggerall = random < (200 * (25 ** AILevel / 64.0))
trigger1 = movecontact && stateno = 200 && (animelemtime(2) > 0 && animelemtime(3) <= 0)
trigger2 = movecontact && stateno = 205 && (animelemtime(2) > 0 && animelemtime(3) <= 0)
trigger3 = movecontact && stateno = 400 && (animelemtime(2) > 0 && animelemtime(3) <= 0) 
trigger4 = movecontact && stateno = 430 && (animelemtime(2) > 0 && animelemtime(3) <= 0) 
value = ifelse(power >= 500 && random < 500, 1050, 1000)

[State -1, AI Combo A1]
type = ChangeState
triggerall = NumEnemy && AILevel
Triggerall = roundstate = 2 && Alive
triggerall = p2statetype != A
triggerAll = (P2BodyDist x = [0,10]) && (P2Dist y = [-60,0]) && P2StateType != L
triggerall = random < (200 * (25 ** AILevel / 64.0))
trigger1 = movecontact && stateno = 200 && (animelemtime(3) > 0) && (prevstateno != [200,499]) && random < 300
trigger2 = movecontact && stateno = 205 && (animelemtime(3) > 0) && (prevstateno != [200,499]) && random < 300
trigger3 = movecontact && stateno = 400 && (animelemtime(3) > 0) && (prevstateno != [200,499]) && random < 300
value = 205

[State -1, AI Combo A2]
type = ChangeState
triggerall = NumEnemy && AILevel
Triggerall = roundstate = 2 && alive
triggerall = p2statetype != A
trigger1 = movecontact && stateno = 200 && (animelemtime(3) > 0) && (prevstateno != [200,499]) && random < 300
trigger2 = movecontact && stateno = 400 && (animelemtime(3) > 0) && (prevstateno != [200,499]) && random < 300
value = 400

[State -1, AI Combo A3]
type = ChangeState
triggerall = NumEnemy && AILevel
Triggerall = roundstate = 2 && alive
triggerall = p2statetype != A
trigger1 = movecontact && stateno = 200 && (animelemtime(3) > 0) && random < 300
trigger2 = movecontact && stateno = 400 && (animelemtime(3) > 0) && random < 300
value = 430

[State -1, AI Combo A1 Finish 1]
type = ChangeState
triggerall = NumEnemy && AILevel
Triggerall = roundstate = 2 && Alive
triggerall = p2statetype != A
triggerall = random < (200 * (25 ** AILevel / 64.0))
trigger1 = movecontact && stateno = 200 && (animelemtime(2) > 0 && animelemtime(3) <= 0)
trigger2 = movecontact && stateno = 205 && (animelemtime(2) > 0 && animelemtime(3) <= 0)
trigger3 = movecontact && stateno = 400 && (animelemtime(2) > 0 && animelemtime(3) <= 0) 
trigger4 = movecontact && stateno = 430 && (animelemtime(2) > 0 && animelemtime(3) <= 0) 
value = ifelse(power >= 500 && random < 500, 1050, 1000)
[State -1, AI Combo A1 Finish 2]
type = ChangeState
triggerall = NumEnemy && AILevel
Triggerall = roundstate = 2 && Alive
triggerall = p2statetype != A
triggerall = random < (200 * (25 ** AILevel / 64.0))
trigger1 = movecontact && stateno = 200 && (animelemtime(2) > 0 && animelemtime(3) <= 0)
trigger2 = movecontact && stateno = 205 && (animelemtime(2) > 0 && animelemtime(3) <= 0)
trigger3 = movecontact && stateno = 400 && (animelemtime(2) > 0 && animelemtime(3) <= 0) 
trigger4 = movecontact && stateno = 430 && (animelemtime(2) > 0 && animelemtime(3) <= 0) 
value = ifelse(power >= 500 && random < 500, 1250, 1200)
[State -1, AI Combo A1 Finish 3]
type = ChangeState
triggerall = NumEnemy && AILevel
Triggerall = roundstate = 2 && Alive
triggerall = p2statetype != A
trigger1 = movecontact && stateno = 200 && (animelemtime(2) > 0 && animelemtime(3) <= 0)
trigger2 = movecontact && stateno = 205 && (animelemtime(2) > 0 && animelemtime(3) <= 0)
trigger3 = movecontact && stateno = 400 && (animelemtime(2) > 0 && animelemtime(3) <= 0) 
trigger4 = movecontact && stateno = 430 && (animelemtime(2) > 0 && animelemtime(3) <= 0) 
value = 1300
[State -1, AI Combo A1 Finish 4]
type = ChangeState
triggerall = NumEnemy && AILevel
Triggerall = roundstate = 2 && Alive
triggerall = p2statetype != A
triggerAll = (P2BodyDist x = [0,10]) && (P2Dist y = [-60,0]) && P2StateType != L
trigger1 = movecontact && stateno = 430 && (animelemtime(2) > 0 && animelemtime(3) <= 0)
trigger2 = movecontact && stateno = 230 && (animelemtime(2) > 0 && animelemtime(3) <= 0) 
value = 1100

[State -1, AI Combo B Finish 1]
type = ChangeState
triggerall = NumEnemy && AILevel
Triggerall = roundstate = 2 && Alive
triggerall = p2statetype != A
triggerall = random < (200 * (25 ** AILevel / 64.0))
triggerall = random < (200 * (25 ** AILevel / 64.0))
trigger1 = movecontact && stateno = 210 && (animelemtime(7) > 3 && animelemtime(9) <= 0)
trigger2 = movecontact && stateno = 410 && (animelemtime(2) > 3 && animelemtime(3) <= 0)
trigger3 = movecontact && stateno = 440 && (animelemtime(6) > 0 && animelemtime(7) <= 0)
value = ifelse(power >= 500 && random < 500, 1050, 1000)
[State -1, AI Combo B Finish 2]
type = ChangeState
triggerall = NumEnemy && AILevel
Triggerall = roundstate = 2 && Alive
triggerall = p2statetype != A
triggerall = random < (200 * (25 ** AILevel / 64.0))
trigger1 = movecontact && stateno = 210 && (animelemtime(7) > 3 && animelemtime(9) <= 0)
trigger2 = movecontact && stateno = 410 && (animelemtime(2) > 3 && animelemtime(3) <= 0)
trigger3 = movecontact && stateno = 440 && (animelemtime(6) > 0 && animelemtime(7) <= 0)
value = ifelse(power >= 500 && random < 500, 1250, 1200)
[State -1, AI Combo B Finish 3]
type = ChangeState
triggerall = NumEnemy && AILevel
Triggerall = roundstate = 2 && Alive
triggerall = p2statetype != A
triggerall = random < (200 * (25 ** AILevel / 64.0))
trigger1 = movecontact && stateno = 210 && (animelemtime(7) > 3 && animelemtime(9) <= 0)
trigger2 = movecontact && stateno = 410 && (animelemtime(2) > 3 && animelemtime(3) <= 0)
trigger3 = movecontact && stateno = 440 && (animelemtime(6) > 0 && animelemtime(7) <= 0)
value = 1300

[State -1, AI Combo B1]
type = ChangeState
triggerall = NumEnemy && AILevel
Triggerall = roundstate = 2 && alive
triggerall = p2statetype != A
triggerAll = (P2BodyDist x = [0,10]) && (P2Dist y = [-60,0]) && P2StateType != L
trigger1 = movecontact && stateno = 210 && (animelemtime(5) > 0) && random < 300
value = 211

[State -1, AI Combo B2]
type = ChangeState
triggerall = NumEnemy && AILevel
Triggerall = roundstate = 2 && alive
triggerall = p2statetype != A
triggerall = P2bodydist X <= 50
trigger1 = movecontact && stateno = 211 && (animelemtime(6) > 0) && random < 300
value = 212

[State -1, AI Combo B2 Finish 1]
type = ChangeState
triggerall = NumEnemy && AILevel
Triggerall = roundstate = 2 && Alive
triggerall = p2statetype != A && power >= 500
triggerall = random < (200 * (25 ** AILevel / 64.0))
trigger1 = movecontact && stateno = 212 && (animelemtime(3) > 3 && animelemtime(4) <= 0)
value = 1250
[State -1, AI Combo B2 Finish 2]
type = ChangeState
triggerall = NumEnemy && AILevel
Triggerall = roundstate = 2 && Alive
triggerall = p2statetype != A && power >= 500
triggerall = random < (200 * (25 ** AILevel / 64.0))
trigger1 = movecontact && stateno = 212 && (animelemtime(3) > 3 && animelemtime(4) <= 0)
value = 1350
[State -1, AI Combo B2 Finish 3]
type = ChangeState
triggerall = NumEnemy && AILevel
Triggerall = roundstate = 2 && Alive
triggerall = p2statetype != A
triggerall = random < (200 * (25 ** AILevel / 64.0))
trigger1 = movecontact && stateno = 212 && (animelemtime(3) > 3 && animelemtime(4) <= 0)
value = 1000

[State -1, Fall Recovery (Air)]
type = ChangeState
value = 5210
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && Alive
trigger1 = StateNo = 5050 && CanRecover
trigger1 = vel y > 0 && pos y < -20
trigger1 = Random < (25 * (AILevel ** 2 / 64.0))

[State -1, Fall Recovery (Ground)]
type = ChangeState
value = 5200
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && Alive
trigger1 = StateNo = 5050 && GetHitVar(fall.recover)
trigger1 = vel y > 0 && pos y >= -20
trigger1 = Random < (100 * (AILevel ** 2 / 64.0))

[State -1, Jump]
type = ChangeState
value = 40
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType != A && ctrl
trigger1 = EnemyNear, MoveType = A && P2BodyDist x < 160 && EnemyNear, HitDefAttr = SC, AT

[State -1, Roll Forward]
type = ChangeState
value = 710
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType != A
trigger1 = Random < (50 * (AILevel ** 2 / 64.0))
trigger1 = (ctrl || (StateNo = [100,101])) && var(20) <= 164 && !var(26)
trigger1 = (EnemyNear, MoveType = A) && !(EnemyNear, HitDefAttr = SCA, AT) && (P2BodyDist x = [92,122])

[State -1, Dodge]
type = ChangeState
value = 700
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType != A
trigger1 = Random < (50 * (AIlevel ** 2 / 64.0))
trigger1 = (ctrl || (StateNo = [100,101])) && var(20) <= 164 && !var(26)
trigger1 = (EnemyNear, MoveType = A) && !(EnemyNear, HitDefAttr = SCA, AT) && (P2BodyDist x = [0,60])

[State -1, Dodge]
type = ChangeState
value = 700
triggerall = AIlevel && numenemy
triggerall = (facing=1 && (enemy,facing=-1)) || (facing=-1 && (enemy,facing=1))
triggerall = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (145 * (AILevel ** 2 / 64.0))
triggerall = roundstate=2  && statetype != A
trigger1 = enemynear,movetype=A && (p2bodydist x=[0,40])&&(p2bodydist y=[0,0])
trigger2 = ((enemynear,numproj) || (enemynear,numhelper)) && inguarddist && p2bodydist x>=25 
trigger3 = RoundState = 2 && InGuardDist
trigger3 = ctrl && (StateNo != [120, 155]) && !var(20)
trigger3 = !var(26) || P2BodyDist x >= 40
trigger3 = !(EnemyNear, HitDefAttr = SCA, AT) && (EnemyNear, Time < 120)
trigger3 = StateType != A || P2StateType = A
trigger3 = ifElse(StateType = A, ((var(3) != [1, 2]) || StateNo = 5210), 1)
trigger3 = Random <  (ifElse((P2StateNo = [200, 699]), 125, ifElse((P2StateNo = [1000,2999]), 333, 1000)) * (AILevel ** 2 / 64.0))

[State -1, Dash Backward]
type = ChangeState
value = 105
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = S
triggerAll = ctrl && (StateNo != [100,106]) && var(20) <= 150 && !var(26)
trigger1 = (EnemyNear, MoveType = A) && BackEdgeDist >= 80 && (P2BodyDist x = [80,120]) && (EnemyNear, vel x)
trigger1 = Random < (ifElse((EnemyNear, HitDefAttr = SC, AT), 150, 50) * (AILevel ** 2 / 64.0))
trigger2 = (P2BodyDist x = [0,80]) && BackEdgeBodyDist >= 80
trigger2 = EnemyNear, StateNo = 5120 && EnemyNear, AnimTime = -4 && Random < (750 * (AILevel ** 2 / 64.0))

[State -1, Guard]
type = ChangeState
value = 120
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && InGuardDist
trigger1 = ctrl && (StateNo != [120, 155]) && !var(20)
trigger1 = !var(26) || P2BodyDist x >= 40
trigger1 = !(EnemyNear, HitDefAttr = SCA, AT) && (EnemyNear, Time < 120)
trigger1 = StateType != A || P2StateType = A
trigger1 = ifElse(StateType = A, ((var(3) != [1, 2]) || StateNo = 5210), 1)
trigger1 = Random < (ifElse((P2StateNo = [200, 699]), 100, ifElse((P2StateNo = [1000,2999]), 333, 1000)) * (AILevel ** 2 / 64.0))

[State -1, Consider the Ultimate Combo]
type = changestate
triggerall = AILevel && Numenemy
triggerall = statetype != A
triggerall = ctrl
triggerall = p2stateno != [5100,5200]
triggerall = enemynear, prevstateno != 5120
triggerall = facing = (enemynear,facing)
triggerall = power = 3000
triggerall = random < 900
trigger1 = p2bodydist X <= 30
trigger1 = (p2statetype = S) || (p2statetype = C)
value = 3500

[State AI, Consider DUB SHORYUKEN]
type = changestate
value = 3160
triggerall = ailevel && numenemy
triggerall = (random < 100+AILevel && (stateno!=[200,640]))
triggerall = roundstate = 2 && statetype != A && power >= 500 && var(20)
triggerall = random < 300 + ((lifemax - life)/16) + ((30*AILevel)*(p2movetype=A&&(enemynear,facing != facing)))
triggerall = p2stateno != 5120
triggerall = p2dist y + (enemynear,vel y*6) = [-90,0]
triggerall = (p2movetype = H) || (enemynear, ctrl = 0) || (enemynear, statetype = A)
triggerall = p2stateno != [120,165]
triggerall = (p2stateno != [0,20]) || random < 100
triggerall = (prevstateno != [3000,3902]) || (stateno = [3000,3902])
triggerall = prevstateno != 1001
triggerall = abs(enemynear,vel x) <= 4.5
triggerall = time >= 7-ailevel || random < 10
trigger1 = ctrl && random < (ifelse((enemynear, hitfall), 200, 100) * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 1000) || (stateno = 1050) || (stateno = 1100 && anim = 1100) || (stateno = 210) || (stateno = 220) || (stateno = 410) || (stateno = 230) || (stateno = 240)
trigger2 = movecontact
trigger4 = stateno = 1200 || stateno = 1250
[State AI, Consider SHORYUKEN]
type = changestate
value = 3150
triggerall = ailevel && numenemy
triggerall = (random < 100+AILevel && (stateno!=[200,640]))
triggerall = roundstate = 2 && statetype != A && power >= 2000 && !var(20)
triggerall = random < 300 + ((lifemax - life)/16) + ((30*AILevel)*(p2movetype=A&&(enemynear,facing != facing)))
triggerall = p2stateno != 5120
triggerall = p2dist y + (enemynear,vel y*6) = [-90,0]
triggerall = (p2movetype = H) || (enemynear, ctrl = 0) || (enemynear, statetype = A)
triggerall = p2stateno != [120,165]
triggerall = (p2stateno != [0,20]) || random < 100
triggerall = (prevstateno != [3000,3902]) || (stateno = [3000,3902])
triggerall = prevstateno != 1001
triggerall = abs(enemynear,vel x) <= 4.5
triggerall = time >= 7-ailevel || random < 10
trigger1 = ctrl && random < (ifelse((enemynear, hitfall), 200, 100) * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 1000) || (stateno = 1050) || (stateno = 1100 && anim = 1100) || (stateno = 210) || (stateno = 220) || (stateno = 410) || (stateno = 230) || (stateno = 240)
trigger2 = movecontact
trigger4 = stateno = 1200 || stateno = 1250

[State -1, Consider DUB LAZOR]
type = ChangeState
value = 3060
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A && power >= 500 && var(20)
triggerall = !numhelper(3008)
triggerall = !(enemynear, ctrl) && (p2stateno != [120, 155]) && p2statetype != L
triggerall = (p2dist x = [0, 120]) && p2dist y >= -80 && (enemynear, vel y >= 0)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))
trigger3 = var(7)
[State -1, Consider LAZOR]
type = ChangeState
value = 3050
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A && power >= 2000 && !var(20)
triggerall = !numhelper(3008)
triggerall = !(enemynear, ctrl) && (p2stateno != [120, 155]) && p2statetype != L
triggerall = (p2dist x = [0, 120]) && p2dist y >= -80 && (enemynear, vel y >= 0)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))
trigger3 = var(7)

[State AI, Consider ZA WARUDO]
type = changestate
value = 3110
triggerall = ailevel && numenemy
triggerall = (random < 100+AILevel && (stateno!=[200,640]))
triggerall = roundstate = 2 && statetype != A && power >= 500 && var(20)
triggerall = random < 300 + ((lifemax - life)/16) + ((30*AILevel)*(p2movetype=A&&(enemynear,facing != facing)))
triggerall = p2stateno != 5120
triggerall = p2dist y + (enemynear,vel y*6) = [-90,0]
triggerall = (p2movetype = H) || (enemynear, ctrl = 0) || (enemynear, statetype = A)
triggerall = p2stateno != [120,165]
triggerall = (p2stateno != [0,20]) || random < 100
triggerall = (prevstateno != [3000,3902]) || (stateno = [3000,3902])
triggerall = prevstateno != 1001
triggerall = abs(enemynear,vel x) <= 4.5
triggerall = time >= 7-ailevel || random < 10
trigger1 = ctrl && random < (ifelse((enemynear, hitfall), 200, 100) * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 1000) || (stateno = 1050) || (stateno = 1100 && anim = 1100) || (stateno = 210) || (stateno = 220) || (stateno = 410) || (stateno = 230) || (stateno = 240)
trigger2 = movecontact
trigger4 = stateno = 1200 || stateno = 1250

[State -1, Consider anime Homer Simpson]
type = changestate
value = 3103
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = var(20)
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && (EnemyNear, StateNo != [120,155])
triggerAll = (P2BodyDist x = [0,350])
triggerAll = P2StateType != A && P2StateType != L
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100, 101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(6) && MoveHit && Random < (ifElse((var(20) = [1,30]),200,50) * (AILevel ** 2 / 64.0))

[State -1, Consider ripping off Homer Simpson]
type = changestate
value = 3100
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 1000 && !var(20)
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && (EnemyNear, StateNo != [120,155])
triggerAll = (P2BodyDist x = [0,350])
triggerAll = P2StateType != A && P2StateType != L
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100, 101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(6) && MoveHit && Random < (ifElse((var(20) = [1,30]),200,50) * (AILevel ** 2 / 64.0))

[State -1, Consider telling Clayton's tall tale]
type = changestate
value = 3010
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A && var(20)
triggerall = !numhelper(3015) && !numhelper(3005)
triggerall = !(enemynear, ctrl) && ((p2stateno != [120, 155]) || p2statetype = A)
triggerall = (p2bodydist x = [0, 100]) && p2statetype != L
triggerall = (p2dist y = [ -100, 0]) && (enemynear, vel y = [ -7, 1]) && (enemynear, vel x > -2)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl && (p2bodydist x = [15, 125]) && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 210 || stateno = 225 || stateno = 230) && (movehit = [1, 16]) && random < (50 * (AIlevel ** 2 / 64.0))
trigger3 = (stateno = 1150 || ((prevstateno = [1301,1304]) || prevstateno = 1351)) && (movehit = [1, 16]) && random < (50 * (AIlevel ** 2 / 64.0))
trigger4 = stateno = 3000 && (movehit = [1, 16]) && anim = 3101 && animelemtime(6) >= 0 && random < (100 * (AIlevel ** 2 / 64.0)) && !var(33)
;trigger5 = stateno = 3140 && (movehit = [1, 16]) && anim = 3140 && animelemtime(26) >= 0 && random < (100 * (AIlevel ** 2 / 64.0))
;trigger6 = stateno = 3180 && (movehit = [1, 16]) && anim = 3180 && animelemtime(34) >= 0 && random < (75 * (AIlevel ** 2 / 64.0))
trigger7 = (stateno = [1000, 4999]) && numhelper(stateno + 5) && stateno != 3000 && stateno != 3020
trigger7 = helper(stateno + 5), var(3) && random < (50 * (AIlevel ** 2 / 64.0))
trigger8 = stateno = 52 && !animtime && (prevstateno = [1000, 2999]) && numtarget && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, Consider starting a paintball war]
type = changestate
value = 3000
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A && power >= 1000 && !var(20)
triggerall = !numhelper(3005) && !numhelper(3015)
triggerall = !(enemynear, ctrl) && (p2stateno != [120, 155]) && p2statetype != L
triggerall = (p2dist x = [0, 120]) && p2dist y >= -80 && (enemynear, vel y >= 0)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))
trigger3 = var(7)

[State -1, Consider consenting to identity theft]
type = changestate
value = 1500
triggerall=AILevel && numenemy && RoundState=2 && (stateno!= [3100,3101]) && var(41)=1 && StateType != A && var(20) <= 60 && power >= 500
triggerall=(enemynear,stateno!=[5100,5220]) && random < (250 * (AIlevel ** 2 / 64.0))
triggerall=(enemynear,statetype!=L) && (p2bodydist x =[5,80]) && (p2bodydist y=[-60,5])
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2 = (stateno = [200, 440]) && stateno != 215 && (movehit = [1, 16]) && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, Consider rushing kickass]
type = changestate
value = ifelse((power >= 500 && random < 100), 1350, 1300)
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = (p2stateno != [120, 155]) && p2statetype != L && !(enemynear, hitfall)
triggerall = (p2bodydist x = [0, 90]) && (p2bodydist y = [ -180, 60])
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = [200, 440]) && stateno != 215 && stateno !=240 && (movehit = [1, 16]) && random < (200 * (AIlevel ** 2 / 64.0))

[State -1, Consider reenacting cringe]
type = changestate
value = ifelse((power >= 500 && power < 3000 && random < 100), 1260, 1210)
triggerall = AIlevel && numenemy
triggerall = !var(33) && roundstate = 2 && statetype = A 
triggerall = (p2stateno != [120, 155]) && p2statetype != L
triggerall = (p2bodydist x = [0, 160]) && (enemynear, vel y > -1) && (enemynear, vel x > -2) && !(enemynear, hitfall)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = [600, 650]) && (movehit = [1, 16]) && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, Consider walking on thin air]
type = changestate
value = ifelse((power >= 500 && power < 3000 && random < 200), 1250, 1200)
triggerall = AIlevel && numenemy
triggerall = !var(33) && roundstate = 2 && statetype != A
triggerall = (p2stateno != [120, 155]) && p2statetype != L
triggerall = (p2bodydist x = [0, 160]) && (enemynear, vel y > -1) && (enemynear, vel x > -2) && !(enemynear, hitfall)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = [200, 255]) && (movehit = [1, 16]) && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, Consider Sheng Long]
type = changestate
value = ifelse((power >= 500 && random < 133), 1150, 1100)
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = (p2stateno != [120, 155]) && p2statetype != L
triggerall = (p2bodydist x > 0) && (enemynear, vel y > -1) && (enemynear, vel x > -2)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = var(1) != 1 || !(enemynear, hitfall) || numtarget(1310) || numtarget(3120) || numtarget(3180)
trigger1 = ctrl && p2bodydist x < 50 && random < (200 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = [200, 445]) && stateno != 215 && (movehit = [1, 16]) && p2bodydist x < 30 && random < (200 * (AIlevel ** 2 / 64.0))
trigger3 = ctrl && p2bodydist x < 100 && p2dist y < -120 && random < (250 * (AIlevel ** 2 / 64.0))
trigger4 = ctrl && prevstateno = 1250 && random < (200 * (AIlevel ** 2 / 64.0))

[State -1, Consider dissing you]
type = changestate
value = ifelse((power >= 500 && random < 100), 1050, 1000)
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = (p2stateno != [120, 155]) && p2statetype != L
triggerall = (enemynear, vel y > -1)
triggerall = ifelse(!var(20)&&!var(53), !numhelper(1005) && !numhelper(1015), 1) && !numhelper(3005) && !numhelper(3015)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl && p2dist x > 160 && random < (150 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = [200, 445]) && stateno != 215 && (movehit = [1, 16]) && random < (200 * (AIlevel ** 2 / 64.0))

[State -1, Zero Counter]
type = ChangeState
value = 750
trigger1 = AILevel && NumEnemy
trigger1 = StateNo = 150 || StateNo = 152
trigger1 = RoundState = 2 && StateType != A
trigger1 = Power >= 1000 && var(20) <= 60
trigger1 = Random < (25 * (AILevel ** 2 / 64.0))
trigger1 = (P2BodyDist x = [0,50]) && (Life < 0.5 * LifeMax)

[State -1, Custom Combo]
type = ChangeState
value = ifElse(StateType = A, 905, 900)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && (StateType != A || (vel x > 0 && vel y >= 0))
triggerAll = Power >= 1000 && !var(20) && !var(54)
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100, 101]))
trigger1 = (EnemyNear, MoveType = A) && (P2BodyDist x = [0,40]) && (P2Dist y = [-60,60]) && (EnemyNear, vel y >= 0)
trigger1 = (EnemyNear, StateNo = [200,699]) && Random < (ifelse(var(40), 250, 200) * (AILevel ** 2 / 64.0))
trigger2 = (var(6)||var(7)) && random < (200 * (AILevel ** 2/64.0))

[State -1, Consider Charging]
type = ChangeState
value = 901
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,87]) && (P2Dist y = [-50,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Throw]
type = ChangeState
value = 800
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = S
triggerAll = P2StateType != A && P2StateType != L && P2MoveType != H
triggerAll = (P2BodyDist x = [-20,40]) && P2BodyDist y = 0
trigger1 = ctrl && Random < (300 * (AIlevel ** 2 / 64.0))
trigger2 = ctrl && (P2StateNo = [120,140]) && Random < (450 * (AILevel ** 2 / 64.0))

[State -1, Run]
type = ChangeState
value = 100
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType = S
trigger1 = ctrl && (StateNo != [100,106])
trigger1 = (EnemyNear, MoveType != A) && P2BodyDist x >= 160 && Random < (25 * (AILevel ** 2 / 64.0))

[State -1, Standing Heavy Punch]
type = ChangeState
value = 220 
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,62]) && (P2Dist y = [-60,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (50 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))
trigger3 = var(4)

[State -1, Standing Headbutt]
type = ChangeState
value = 225
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,80]) && (P2Dist y = [-60,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))
trigger3 = var(4)

[State -1, Standing Heavy Kick]
type = ChangeState
value = 250 
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,43]) && (P2Dist y = [-64,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (50 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 4) && Random < (250 * (AILevel ** 2 / 64.0))
trigger3 = var(4)

[State -1, Crouching Heavy Punch]
type = ChangeState
value = 420
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && Statetype != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,35]) && (P2Dist y = [-135,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (30 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 4) && Random < (250 * (AILevel ** 2 / 64.0))
trigger3 = var(4)

[State -1, Crouching Heavy Kick]
type = ChangeState
value = 450
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,56]) && (P2Dist y = [-33,0]) && P2StateType != A && P2StateType != L
triggerAll = (P2StateType = S || (P2StateType = C && P2MoveType = H))
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 6) && Random < (250 * (AILevel ** 2 / 64.0))
trigger3 = var(4)

[State -1, Jumping Heavy Punch]
type = ChangeState
value = 620
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,51]) && (P2Dist y = [-101,76]) && P2StateType = S
trigger1 = ctrl
trigger1 = vel y <= 0 && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(4) && Random < (50 * (AILevel ** 2 / 64.0))

[State -1, Neutral Jumping Heavy Kick]
type = ChangeState
value = 650
triggerAll = AILevel && NumEnemy && !vel x
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,59]) && (P2Dist y = [-97,85]) && P2StateType = S
trigger1 = ctrl
trigger1 = vel y <= 0 && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = var(4) && Random < (50 * (AILevel ** 2 / 64.0))

[State -1, Standing Far/Close Medium Punch]
type = ChangeState
value = 210
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,38]) && (P2Dist y = [-60,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (45 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))
trigger3 = var(4)

[State -1, Overhead Medium Punch]
type = ChangeState
value = 215
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,38]) && (P2Dist y = [-60,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Standing Far/Close Medium Kick]
type = ChangeState
value = 240
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,32]) && (P2Dist y = [-121,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (35 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))
trigger3 = var(4)

[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,34]) && (P2Dist y = [-50,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (55 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))
trigger3 = var(4)

[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,57]) && (P2Dist y = [-60,0]) && P2StateType != A && P2StateType != L
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))
trigger3 = var(4)

[State -1, Jumping Medium Punch]
type = ChangeState
value = 610
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,30]) && (P2Dist y = [-80,72]) && P2StateType = S
trigger1 = ctrl
trigger1 = vel y > 0 && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(4)

[State -1, Jumping Medium Kick]
type = ChangeState
value = 640
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [-30,44]) && (P2Dist y = [-60,68]) && P2StateType = A
trigger1 = ctrl
trigger1 = vel y > 0 && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(4)

[State -1, Standing Light Punch]
type = ChangeState
value = 200 
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,32]) && (P2Dist y = [-68,0]) && P2StateType != C && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (85 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))
trigger3 = var(4)

[State -1, Standing Light Kick]
type = ChangeState
value = 230
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,20]) && (P2Dist y = [-68,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (40 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 2) && Random < (250 * (AILevel ** 2 / 64.0))
trigger3 = var(4)

[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,32]) && (P2Dist y = [-44,0]) && P2StateType != A && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (60 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 2) && Random < (250 * (AILevel ** 2 / 64.0))
trigger3 = var(4)

[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,30]) && (P2Dist y = [-25,0]) && P2StateType != A && P2StateType != L
trigger1 = (ctrl || (StateNo = [100, 101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200, 499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))
trigger3 = ((stateno = 400) && movehit && !animtime)
trigger3 = (enemy, statetype = S && (enemy, movetype = A || !enemy, ctrl) && random < (125 * (AIlevel ** 2 / 64.0)))
trigger4 = var(4)

[State -1, Jumping Light Punch]
type = ChangeState
value = 600
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,40]) && (P2Dist y = [-51,60]) && P2StateType = S
trigger1 = ctrl
trigger1 = vel y > 0 && Random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = var(4)

[State -1, Jumping Light Kick]
type = ChangeState
value = 630
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,59]) && (P2Dist y = [-80,57]) && P2StateType != L
trigger1 = ctrl
trigger1 = vel y <= 0 && Random < (ifElse(P2Dist x < 0, 250, 50) * (AILevel ** 2 / 64.0))
trigger2 = var(4)






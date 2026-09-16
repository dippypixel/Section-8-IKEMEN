;---------------------------------------------------------------------------
; Initialize (at the start of the round)
[Statedef 5900]
type = S

[State 5900, 1] ;Clear all int variables
type = VarRangeSet
trigger1 = roundsexisted = 0
value = 0

[State 5900, 2] ;Clear all float variables
type = VarRangeSet
trigger1 = roundsexisted = 0
fvalue = 0

[State 5900, 3] ;Change palette
type = RemapPal
trigger1 = 1
source = 1,1
dest = 1,palno

[State 5900, 4] ;Intro for round 1
type = ChangeState
trigger1 = roundno = 1
value = 190

[State 5900, 5] ;All other rounds
type = ChangeState
trigger1 = 1
value = 0

;---------------------------------------------------------------------------
;Thrown by Kung Fu Throw - thrown into the air
; (a custom gethit state)
; Description: This state has the opponent flying through the air and
;     falling down onto the ground. The SelfState controller sets the
;     opponent back using to his own state file when he his the ground.
;     Controllers 821,2 and 821,3 allow the opponent to recover by
;     hitting his recovery command when he is falling.
[Statedef 821]
type    = A
movetype= H
physics = N
velset = 5.8,-8.13
poweradd = 40

[State 821, 1] ;Gravity
type = VelAdd
Trigger1 = 1
y = .88

[State 821, 2] ; Recover near ground (use ChangeState)
type = ChangeState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 821, 4] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= const(movement.air.gethit.groundlevel)
value = 5100 ;Hit ground

;---------------------------------------------------------------------------
;Thrown by Kung Fu Throw - thrown into the air
; (a custom gethit state)
; Description: This state has the opponent flying through the air and
;     falling down onto the ground. The SelfState controller sets the
;     opponent back using to his own state file when he his the ground.
;     Controllers 821,2 and 821,3 allow the opponent to recover by
;     hitting his recovery command when he is falling.
[Statedef 851]
type    = A
movetype= H
physics = N
velset = -7.2,15
poweradd = 60

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 821, 1] ;Gravity
type = VelAdd
trigger1 = time > 8
y = .61

[State 821, 4] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= const(movement.air.gethit.groundlevel)
value = 5100 ;Hit ground

;---------------------------------------------------------------------------
; OH MY GOD!
[Statedef 1322]
type    = A
movetype= H
physics = N

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0
value = ifelse(selfanimexist(5052),5052,ifelse(selfanimexist(5051),5051,ifelse(selfanimexist(5030),5030,5050)))
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim = 5030
trigger1 = animtime = 0
value = ifelse(selfanimexist(5035),5035,5050)
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim = 5035
trigger1 = animtime = 0
value = 5050
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim = 5051
trigger1 = selfanimexist(5061)
trigger1 = vel y > -2
value = 5061
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim = 5052
trigger1 = selfanimexist(5062)
trigger1 = vel y > -2
value = 5062
[State 0, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.88
[State 0, SelfState]
type = SelfState
trigger1 = vel y > 0
trigger1 = pos y >= const(movement.air.gethit.groundlevel)
value = 5100

;---------------------------------------------------------------------------
; HIT_BOUNCE (bounce into air)
[Statedef 1356]
type    = A
movetype= H
physics = N

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 5101, 1] ;Coming hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim != [5101,5109]
trigger2 = !SelfAnimExist(5160 + (anim % 10))
value = 5160
[State 5101, 2] ;Coming hit ground anim (for hit up)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim = [5101,5109]
trigger1 = SelfAnimExist(5160 + (anim % 10))
value = 5160 + (anim % 10)

[State 5101, 3]
type = VelSet
trigger1 = Time = 0
x = -0.5
y = -9.937
[State 5101, 5] ;Acceleration
type = VelAdd
trigger1 = 1
y = .713

[State 5101, 6] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >= Const(movement.down.bounce.groundlevel)
type = SelfState
value = 5110

;------------------
; Hit by Fast Kung Fu Palm - bounce off wall
; (a custom gethit state)
[Statedef 3006]
type    = A
movetype= H
physics = N

[State 1028, Vel Y]
type = VelSet
trigger1 = Time = 0
y = -13.8

[State 1028, Vel X]
type = VelSet
trigger1 = Time = 0
x = 1.6

[State 1028, Gravity]
type = VelAdd
trigger1 = 1
y = .88

[State 1028, Anim 5050] ;Self falling animation
type = ChangeAnim
trigger1 = Time = 0
value = ifelse(selfanimexist(5161),5161,5160)

[State 1028, Hit ground]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= Const(movement.down.bounce.groundlevel))
value = 5110

;------------------
; Hit by Fast Kung Fu Palm - flying through the air
; (a custom gethit state)
[Statedef 3261]
type    = A
movetype= H
physics = N

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 2
ignorehitpause = 1

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 1026, Velocity]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 1026, Gravity]
type = VelAdd
trigger1 = 1
y = .88

[State 1026, No scroll]
type = ScreenBound
trigger1 = BackEdgeBodyDist < 65
trigger2 = FrontEdgeBodyDist < 65
value = 1
movecamera = 0,1

[State 1026, Hit wall]
type = ChangeState
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist <= 20
trigger2 = FrontEdgeBodyDist <= 20
value = 3262

[State 0, ChangeState]
type = ChangeState
trigger1 = screenpos y < -10 - const(size.head.pos.y)
value = 3121
ctrl = 0

[State 1026, Hit ground]
type = ChangeState
trigger1 = vel y + pos y >= const(movement.air.gethit.groundlevel)
value = 3265

;------------------
; Hit by Fast Kung Fu Palm - bounce off wall
; (a custom gethit state)
[Statedef 3263]
type    = A
movetype= H
physics = N

;[State 1028, 1]
;type = NotHitBy
;trigger1 = 1
;value = , NA, NP

[State 1028, Vel Y]
type = VelMul
trigger1 = Time = 0
x = -0.9
[State 1028, Vel X]
type = VelMul
trigger1 = Time = 0
trigger1 = vel y > 0
y = 0.9
[State 1028, Vel X]
type = VelMul
trigger1 = Time = 0
trigger1 = vel y < 0
y = -1.1

[State 1028, Turn]
type = Turn
trigger1 = (Time = 0) && (BackEdgeDist < 30)

[State 1028, Gravity]
type = VelAdd
trigger1 = 1
y = .66

[State 1028, Anim 5050] ;Self falling animation
type = ChangeAnim
trigger1 = Time = 0
trigger1 = !SelfAnimExist(5052)
value = 5050

[State 1028, Anim 5052] ;Self falling animation (diagup type)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5052)
value = 5052

[State 1028, Anim 5060] ;Coming down - normal
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5050
trigger1 = SelfAnimExist(5060)
persistent = 0
value = 5060

[State 1028, Anim 5062] ;Coming down - diagup type
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5052
trigger1 = SelfAnimExist(5062)
persistent = 0
value = 5062

[State 1026, No scroll]
type = ScreenBound
trigger1 = BackEdgeBodyDist < 65
trigger2 = FrontEdgeBodyDist < 65
value = 1
movecamera = 0,1

[State 1026, Hit ground]
type = ChangeState
trigger1 = vel y + pos y >= const(movement.air.gethit.groundlevel)
trigger1 = vel y >= 10
value = 3265

[State 1028, Hit ground]
type = SelfState
trigger1 = vel y + pos y >= const(movement.air.gethit.groundlevel)
trigger1 = vel y < 10
value = 5100

;---------------------------------------------------------------------------
; HIT_BOUNCE (bounce into air)
[Statedef 3266]
type    = A
movetype= H
physics = N

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 5101, 1] ;Coming hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim != [5101,5109]
trigger2 = !SelfAnimExist(5160 + (anim % 10))
value = 5160
[State 5101, 2] ;Coming hit ground anim (for hit up)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim = [5101,5109]
trigger1 = SelfAnimExist(5160 + (anim % 10))
value = 5160 + (anim % 10)

[State 5101, 3]
type = VelMul
trigger1 = Time = 0
x = 0.75
y = -0.75
[State 5101, 5] ;Acceleration
type = VelAdd
trigger1 = 1
y = .713

[State 1026, No scroll]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 5101, 6] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >= Const(movement.down.bounce.groundlevel)
type = SelfState
value = 5110




;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------

[Statedef -2]

[State 0, Snd Jump]
type = PlaySnd
trigger1 = stateno = 40
trigger1 = animtime = 0
trigger2 = stateno = 45
trigger2 = time = 1
value = S0,18
channel = 1

[State Collapse turning]
type = Turn
trigger1 = anim = 5950
trigger1 = animelem = 44
trigger2 = anim = 5131
trigger2 = animelem = 30

[State IntroSkip]
type = VarAdd
trigger1 = var(28) < 5
trigger1 = roundstate = 2
var(28) = 1
[State IntroSkip]
type = StopSnd
trigger1 = var(28) = 1
channel = 1
ignorehitpause = 1
[State 0, EnvShake]
type = EnvShake
trigger1 = var(28) = 1
time = 1
freq = 0
ampl = 0

[State Prepare the ballistic mode]
type = VarSet
triggerall = var(29) = 0
triggerall = life <= (p2life / 2)
triggerall = life <= (lifemax * 0.3)
trigger1 = stateno = 5120
trigger2 = movetype = H
trigger2 = prevstateno = [1000,1999]
var(29) = -2
ignorehitpause = 1
[State Count down the ballistic mode]
type = VarAdd
trigger1 = var(29) > 1
var(29) = -1
ignorehitpause = 1
[State Disable the ballistic mode]
type = VarSet
trigger1 = var(29) = 1
var(29) = -1
ignorehitpause = 1

[State Get rights to the Pixies Song]
type = TargetState
trigger1 = var(47) = 0
trigger1 = numtarget
trigger1 = winko
trigger1 = roundstate = 3
trigger1 = matchover
trigger1 = target,stateno = 5150
trigger1 = target,sysvar(4) != 4440
value = 5150

[State CHAOS?!]
type = VarSet
trigger1 = palno = [7,12]
trigger2 = name = "Giant Ape That Pisses on People"
var(47) = 1
ignorehitpause = 1
[State 1.0 quote Blizzie]
type = VictoryQuote
trigger1 = time = 1
trigger1 = var(47) = 0
value = random%10
ignorehitpause = 1
[State 1.0 quote Blizzie]
type = VictoryQuote
trigger1 = time = 1
trigger1 = var(47) = 1
value = 10+random%10
ignorehitpause = 1



[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noairguard
ignorehitpause = 1

[State 0, ]
type = PlaySnd
triggerall = alive
trigger1 = (stateno = 5000) || (stateno = 5010) || (stateno = 5020) || (stateno = 5070)
trigger1 = time = 0
trigger2 = (stateno != 5000) && (stateno != 5010) && (stateno != 5020) && (stateno != 5070)
trigger2 = stateno != [120,160]
trigger2 = gethitvar(damage)
value = 5000,0+(var(47)=1)
channel = 0
ignorehitpause = 1

; if you're making a 10ov.st and copied the statedef -2 in it's entirety, uncomment this strcl so e.g. the hitpauses in both mugen versions would be the same
;[State ME AM USING 1.0]
;type = VarSet
;trigger1 = var(49) != 1
;var(49) = 1
;ignorehitpause = 1

[State -2, Movehitoner]
type = VarSet
trigger1 = 1
var(21) = ifelse(movehit=1,var(21)+1,0)
ignorehitpause = 1
[State -2, Counter?]
type = VarSet
trigger1 = var(21) != 1
var(31) = (p2movetype=A)
ignorehitpause = 1

[State Throw Limiter]
type = VarSet
trigger1 = stateno = 40
trigger2 = statetype = A
trigger2 = movecontact
trigger3 = p2stateno = [120,169]
var(8) = 12
[State Throw Limiter count]
type = VarAdd
trigger1 = var(8) > 0
var(8) = -1
[State 0, Helper]
type = Helper
trigger1 = roundstate < 2
trigger1 = !numhelper(444)
helpertype = normal
name = "CONFIG"
ID = 444
stateno = 444
pos = 444,444
postype = p1
facing = 1
ownpal = 1
supermovetime = 65535
pausemovetime = 65535
ignorehitpause = 1

[State Reset all]
type = VarSet
;triggerall = (var(43) & floor(exp(1*ln(2)) + 0.5) )
trigger1 = !numenemy
trigger2 = p2movetype != H || (!enemynear,gethitvar(hitcount))
trigger2 = !movehit || movereversed
trigger3 = p2stateno = 5120
var(43) = 0
ignorehitpause = 1
[State -2, Neo-Juggle-System-Reset]
type = VarSet
triggerall = var(40)
trigger1 = !numtarget
trigger2 = numtarget
trigger2 = (target,statetype != A) && (target,statetype != L)
var(40) = 0
ignorehitpause = 1
[State -2, Neo-Juggle-System-Reset]
type = VarSet
triggerall = var(41)
trigger1 = !numtarget
trigger2 = numtarget
trigger2 = (target,statetype != A) && (target,statetype != L)
var(41) = 0
ignorehitpause = 1
[State -2, Neo-Juggle-System-Reset]
type = VarSet
triggerall = var(42)
trigger1 = !numtarget
trigger2 = numtarget
trigger2 = (target,statetype != A) && (target,statetype != L)
var(42) = 0
ignorehitpause = 1
[State Prevent the prorator from going too low. You can change the minimal proration rate if you want, just make sure the value in the trigger and actual varset match]
type = VarSet
trigger1 = fvar(13) < 0.15
fvar(13) = 0.15
ignorehitpause = 1
[State Prorator Reset]
type = VarSet
trigger1 = !numenemy
trigger2 = p2movetype != H || (!enemynear,gethitvar(hitcount))
trigger2 = !movehit || movereversed
trigger3 = p2stateno = 5120
trigger4 = var(29) > 1
fvar(13) = ifelse(var(31),1.25,1)
ignorehitpause = 1
[State 0, AttackMulSet]
type = AttackMulSet
trigger1 = 1
time = 2
;value = ifelse(p2movetype!=H,ifelse(var(20)=1,1.25,1),1 - ifelse(fvar(15)>.75,.75,fvar(15)))
value = ( ifelse((stateno=[3000,3900]), 0.25+(fvar(13)*0.75) ,fvar(13))  ) * ifelse((p2statetype=A&&p2movetype!=H)||var(31),1.25,1) * ifelse(var(29) > 1,1.4,1)
ignorehitpause = 1

[State Ballistic, Sonic Recolor]
type = PalFX
trigger1 = roundstate = 2
trigger1 = var(29) > 1
trigger1 = (gametime%4)=0
time = 2
;add = 0,0,0
;mul = 256,256,256
;sinadd = 0,0,0,10
invertall = 0
color = -256
ignorehitpause = 1
;persistent =
[State Ballistic, Chip Negation]
type = LifeAdd
triggerall = var(29) > 1
trigger1 = alive
trigger1 = stateno = [120,159]
trigger1 = gethitvar(damage)
value = gethitvar(damage)
kill = 0
absolute = 0
ignorehitpause = 1
[State Ballistic, Armor]
type = LifeAdd
triggerall = var(29) > 1
trigger1 = alive
trigger1 = stateno != [120,159]
trigger1 = gethitvar(damage)
trigger1 = gethitvar(damage) < life
;trigger1 = life+(gethitvar(damage)*0.85)>=1
;trigger1 = life != 0
value = floor(gethitvar(damage)*0.15)
kill = 0
absolute = 0
ignorehitpause = 1


;
; Within StateDef -2, none of your own AI-related code should be placed
; above these next two controllers.

[State -2, StopAI]
type = VarSet
triggerall = var(58) > 0 && !IsHelper
trigger1 = RoundState != 2
trigger2 = !Alive
var(58) = -2
IgnoreHitPause = 1

; This controller is optional.  It allows you treat the AI flag as a boolean
; value rather than an integer value, letting you trigger your AI directives
; with "var(0)" instead of "var(58)>0", and letting you make moves usable only
; by humans by using "!var(0)" instead of "var(58)<1", thus slightly improving
; the size and efficiency of your code.
; Another benefit is that it makes it much easier for users to disable your AI,
; if they so choose.
[State -2, Simplifier]
type = VarSet
;trigger1 = var(58) = 1
;trigger2 = var(55):=0
trigger1 = 1
var(55) = ifelse((roundstate<=2),ailevel,0)
IgnoreHitPause = 1

[State ANTI-MINDGAME-GUARD]
type = VarAdd
triggerall = var(50) < 120
trigger1 = p2movetype = A
trigger1 = stateno = [120,169]
var(50) = 1
ignorehitpause = 1
[State ANTI-MINDGAME-GUARD]
type = VarSet
triggerall = var(50) > 0
trigger1 = stateno = [150,155]
trigger1 = time = 1
var(50) = ceil(var(50)*0.8)
ignorehitpause = 1
[State ANTI-MINDGAME-GUARD]
type = VarAdd
triggerall = var(50) > 0
triggerall = (gametime%3)=0
trigger1 = p2movetype != A
trigger2 = stateno != [120,169]
var(50) = -1
ignorehitpause = 1
[State ANTI-MINDGAME-TH]
type = VarSet
trigger1 = numenemy
trigger1 = var(55)
var(51) = (enemynear,HitDefAttr = SCA,AT) || (var(50) > 20) || ((abs(enemynear,animtime) <= enemynear,moveguarded ))
ignorehitpause = 1

; thanks to this if you go CTRL+D and see the current distance so once you start AI making you can blast off a notepad and take notes in which distances would various moves hit
[State -2, DTC]
type = DisplayToClipboard
trigger1 = 1
text = "AI = %d, var(52) = %d, x = %f, y = %f ba = %d"
params = var(58), var(52), (p2bodydist x), (p2dist y), var(29)
IgnoreHitPause = 1

;================================================================================
; ------- KOF Cornerpush System by Vans --------
;===============================================================================
[State -2, Superpause Check]
type = VarAdd
trigger1 = Var(6)
var(6) = -1

[State -2, Reset Time counter]
type = VarSet
trigger1 = movecontact = 1
var(12) = 0

[State -2, Accel]
type = VarSet
triggerall = roundstate = 2
triggerall = Var(6) <= 0
triggerall = numtarget >= 1
trigger1 = target, hitshakeover
fvar(6) = (target, gethitvar(xvel)*exp((-0.1886)*((var(12)))))
[State -2, Push]
type = PosAdd
triggerall = roundstate = 2
triggerall = !var(6)
triggerall = numtarget >= 1
triggerall = (target, BackEdgeBodyDist <= 0) || (target, FrontEdgeBodyDist <= 0)
triggerall = ProjContact = 0, < 50
triggerall = stateno != [800,899]
triggerall = stateno != [1300,1319]
triggerall = stateno != [3100,3119]
triggerall = enemynear,statetype != A
triggerall = enemynear,statetype != L
trigger1 = Statetype != A
trigger2 = stateno = [600,659]
;trigger3 = stateno = 1300
;trigger4 = stateno = 240
x = ifelse(facing = -1,fvar(6),-fvar(6))

[State -2, Increase]
type = VarSet
triggerall = Var(6) <= 0
triggerall = var(12)
trigger1 = numtarget >= 1
trigger1 = target, hitshakeover
var(12) = var(12)+1

[State -2, Time counter]
type = VarSet
trigger1 = !var(12)
trigger1 = fvar(6)
var(12) = 1

[State -2, Freeze Pos During Superpause]
type = PosFreeze
trigger1 = Var(6)
value = 1

[State -2, Drop]
type = VarSet
triggerall = fvar(6)
trigger1 = !numtarget
trigger2 = projcontact = 1
trigger3 = movecontact = 1
fvar(6) = 0
ignorehitpause = 1

[State -2, Drop]
type = VarSet
triggerall = fvar(8)
trigger1 = !numtarget
trigger2 = projcontact = 1
trigger3 = numtarget >= 1 && target, gethitvar(xvel) = 0
var(17) = 0




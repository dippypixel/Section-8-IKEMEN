;

[Statedef 851]
type    = A
movetype= H
physics = N
velset = 6.6,-9.13
poweradd = 40
ctrl = 0

;[State 820, 1]
;type = ChangeAnim2
;Trigger1 = Time = 0
;value = 821

[State 821, 1] ;Gravity
type = VelAdd
Trigger1 = 1
y = .66

[State 821, 4] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = vel y + pos y >= const(movement.air.gethit.groundlevel)
value = 5100 ;Hit ground

;------------------
; Hit by Fast Kung Fu Palm - flying through the air
; (a custom gethit state)
[Statedef 3326]
type    = A
movetype= H
physics = N

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
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist < 25
trigger2 = FrontEdgeBodyDist < 25
value = 1
movecamera = 0,1

[State 1026, Hit wall]
type = ChangeState
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist <= 20
trigger2 = FrontEdgeBodyDist <= 20
value = 3327

[State 1026, Hit ground]
type = SelfState
trigger1 = vel y + pos y >= const(movement.air.gethit.groundlevel)
value = 5100



;------------------
; Hit by Fast Kung Fu Palm - bounce off wall
; (a custom gethit state)
[Statedef 3328]
type    = A
movetype= H
physics = N

;[State 1028, 1]
;type = NotHitBy
;trigger1 = 1
;value = , NA, NP

[State 1028, Vel Y]
type = VelSet
trigger1 = Time = 0
y = -9.5

[State 1028, Vel X]
type = VelSet
trigger1 = Time = 0
x = 1.6

[State 1028, Turn]
type = Turn
trigger1 = (Time = 0) && (BackEdgeDist < 30)

[State 1028, Gravity]
type = VelAdd
trigger1 = 1
y = .88

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

[State 1028, Hit ground]
type = SelfState
trigger1 = vel y + pos y >= const(movement.air.gethit.groundlevel)
value = 5100

;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------
[Statedef -2]

[State 1.0 USER HERE]
type = VarSet
trigger1 = var(49) != 1
var(49) = 1
ignorehitpause = 1


[State LOL]
type = VarSet
trigger1 = (var(40) & floor(exp(2*ln(2)) + 0.5) )
trigger1 = stateno = 100
trigger1 = p2dist x < 0
var(40) = var(40) ^ (floor(exp(2*ln(2)) + 0.5))
ignorehitpause = 1
persistent = 0

[State 0, Helper]
type = Helper
trigger1 = roundstate <= 3
trigger1 = !numhelper(300)
helpertype = normal
name = "Uwe Boll"
ID = 300
stateno = 309
pos = 0,0
postype = p1
facing = 1
ownpal = 1
size.ground.back = 8
size.ground.front = 8
size.air.back = 8
size.air.front = 8
size.height = 8
size.head.pos = 0,0
size.mid.pos = 0,0
ignorehitpause = 1
[State 0, Helper]
type = Helper
trigger1 = roundstate <= 3
trigger1 = !numhelper(301)
helpertype = normal
name = "Uwe Boll"
ID = 301
stateno = 308
pos = 0,0
postype = p1
facing = 1
ownpal = 1
size.ground.back = 8
size.ground.front = 8
size.air.back = 8
size.air.front = 8
size.height = 8
size.head.pos = 0,0
size.mid.pos = 0,0
ignorehitpause = 1



[State 0, Snd Jump]
type = PlaySnd
trigger1 = stateno = 40
trigger1 = animtime = 0
trigger2 = stateno = 45
trigger2 = time = 1
value = S2,3
channel = 1

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

[State Limiter]
type = VarSet
trigger1 = stateno = 40
trigger2 = statetype = A
trigger2 = movecontact
trigger3 = p2stateno = [120,169]
var(8) = 12

[State Limiter]
type = VarAdd
trigger1 = var(8) > 0
var(8) = -1


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


[State -2, Neo-Juggle-System-Reset]
type = VarSet
triggerall = var(40)
triggerall = numhelper(300)
triggerall = numhelper(301)
trigger1 = !numtarget
trigger1 = !(helper(300),numtarget)
trigger1 = !(helper(301),numtarget)
trigger2 = numtarget
trigger2 = (target,statetype != A) && (target,statetype != L)
trigger3 = (helper(300),numtarget) || (helper(301),numtarget)
trigger3 = (enemynear,statetype !=A) && (enemynear,statetype!=L)
var(40) = 0
ignorehitpause = 1
[State -2, Neo-Juggle-System-Reset]
type = VarSet
triggerall = var(41)
triggerall = numhelper(300)
triggerall = numhelper(301)
trigger1 = !numtarget
trigger1 = !(helper(300),numtarget)
trigger1 = !(helper(301),numtarget)
trigger2 = numtarget
trigger2 = (target,statetype != A) && (target,statetype != L)
trigger3 = (helper(300),numtarget) || (helper(301),numtarget)
trigger3 = (enemynear,statetype !=A) && (enemynear,statetype!=L)
var(41) = 0
ignorehitpause = 1
[State -2, Neo-Juggle-System-Reset]
type = VarSet
triggerall = var(42)
triggerall = numhelper(300)
triggerall = numhelper(301)
trigger1 = !numtarget
trigger1 = !(helper(300),numtarget)
trigger1 = !(helper(301),numtarget)
trigger2 = numtarget
trigger2 = (target,statetype != A) && (target,statetype != L)
trigger3 = (helper(300),numtarget) || (helper(301),numtarget)
trigger3 = (enemynear,statetype !=A) && (enemynear,statetype!=L)
var(42) = 0
ignorehitpause = 1
[State 0, Neo-Juggle-System-Debug]
type = DisplayToClipboard
trigger1 = var(36)
text = "NJS Flags = %d | %d"
params = var(40),var(41)
ignorehitpause = 1

[State Prevent the prorator from going too low]
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
fvar(13) = 1
ignorehitpause = 1
[State 0, AttackMulSet]
type = AttackMulSet
trigger1 = 1
time = 2
;value = ifelse(p2movetype!=H,ifelse(var(20)=1,1.25,1),1 - ifelse(fvar(15)>.75,.75,fvar(15)))
value = ( ifelse((stateno=[3000,3900]), 0.25+(fvar(13)*0.75) ,fvar(13))  )
ignorehitpause = 1


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
triggerall = !IsHelper
trigger1 = 1
;trigger1 = var(58) = 1
;trigger2 = var(55):=0
var(55) = ifelse(roundstate<=2,ailevel,0)	; Another option is to replace 1 with something like MatchNo, if
		; you want to design your AI to have varying levels of difficulty.
IgnoreHitPause = 1

[State 0, VarSet]
type = VarSet
trigger1 = time = 1
trigger1 = movetype = A
trigger1 = stateno != 1101
trigger1 = stateno != 1201
var(38) = floor(p2bodydist x)
ignorehitpause = 1
[State 0, VarSet]
type = VarSet
trigger1 = time = 1
trigger1 = movetype = A
trigger1 = stateno != 1101
trigger1 = stateno != 1201
var(39) = floor(p2bodydist y)
ignorehitpause = 1


[State -2, DTC]
type = DisplayToClipboard
trigger1 = 1
text = "fvar(5) = %f, fvar(6) = %f, pro = %f"
params = fvar(5), fvar(6), fvar(13)
IgnoreHitPause = 1

[State -2, ATC]
type = AppendToClipboard
trigger1 = 1
text = "\nMatchNo = %d, var(52) = %d, x = %f, y = %f"
params = MatchNo, var(52), (p2bodydist x), (p2dist y)
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
trigger2 = numhelper(300)
trigger2 = helper(300),movecontact = 1
trigger3 = numhelper(301)
trigger3 = helper(301),movecontact = 1
var(12) = 0

[State -2, Accel]
type = VarSet
triggerall = roundstate = 2
triggerall = Var(6) <= 0
triggerall = numtarget >= 1
trigger1 = target, hitshakeover
fvar(6) = (target, gethitvar(xvel)*exp((-0.1886)*((var(12)))))
[State -2, Accel]
type = VarSet
triggerall = roundstate = 2
triggerall = Var(6) <= 0
trigger1 = numhelper(300)
trigger1 = helper(300), numtarget >= 1
trigger1 = enemynear, hitshakeover
trigger2 = numhelper(301)
trigger2 = helper(301), numtarget >= 1
trigger2 = enemynear, hitshakeover
fvar(6) = (enemynear, gethitvar(xvel)*exp((-0.1886)*((var(12)))))
[State 0, VarSet]
type = VarSet
trigger1 = 1
fvar(5) = 0
ignorehitpause = 1
[State -2, Push]
type = PosAdd
triggerall = roundstate = 2
triggerall = !var(6)
triggerall = numtarget >= 1
triggerall = (target, BackEdgeBodyDist <= 0) || (target, FrontEdgeBodyDist <= 0)
triggerall = ProjContact = 0, < 50
triggerall = stateno != [800,899]
triggerall = stateno != 3100
triggerall = enemynear,statetype != A
triggerall = enemynear,statetype != L
trigger1 = Statetype != A
trigger1 = (fvar(5):=1)
x = ifelse(facing = -1,fvar(6),-fvar(6))
[State -2, Push]
type = PosAdd
triggerall = fvar(5)=0
triggerall = roundstate = 2
triggerall = !var(6)
triggerall = Statetype != A
triggerall = ProjContact = 0, < 50
triggerall = stateno != [800,899]
triggerall = stateno != 3100
triggerall = enemynear,statetype != A
triggerall = enemynear,statetype != L
trigger1 = numhelper(300)
trigger1 = helper(300),numtarget >= 1
trigger1 = (enemynear, BackEdgeBodyDist <= 0) || (enemynear, FrontEdgeBodyDist <= 0)
trigger2 = numhelper(301)
trigger2 = helper(301),numtarget >= 1
trigger2 = (enemynear, BackEdgeBodyDist <= 0) || (enemynear, FrontEdgeBodyDist <= 0)
x = ifelse(facing = -1,fvar(6),-fvar(6))

[State -2, Increase]
type = VarSet
triggerall = Var(6) <= 0
triggerall = var(12)
trigger1 = numtarget >= 1
trigger1 = target, hitshakeover
trigger2 = numhelper(300)
trigger2 = helper(300),numtarget >= 1
trigger2 = enemynear, hitshakeover
trigger3 = numhelper(301)
trigger3 = helper(301),numtarget >= 1
trigger3 = enemynear, hitshakeover
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
trigger4 = numhelper(300)
trigger4 = !(helper(300),numtarget)
trigger5 = numhelper(300)
trigger5 = helper(300),projcontact = 1
trigger6 = numhelper(300)
trigger6 = helper(300),movecontact = 1
trigger7 = numhelper(301)
trigger7 = !(helper(301),numtarget)
trigger8 = numhelper(301)
trigger8 = helper(301),projcontact = 1
trigger9 = numhelper(301)
trigger9 = helper(301),movecontact = 1
fvar(6) = 0
ignorehitpause = 1

[State -2, Drop]
type = VarSet
triggerall = fvar(8)
trigger1 = !numtarget
trigger2 = projcontact = 1
trigger3 = numtarget >= 1 && target, gethitvar(xvel) = 0
trigger4 = numhelper(300)
trigger4 = !(helper(300),numtarget)
trigger5 = numhelper(300)
trigger5 = helper(300),projcontact = 1
trigger6 = numhelper(300)
trigger6 = helper(300),numtarget >= 1 && enemynear, gethitvar(xvel) = 0
trigger7 = numhelper(301)
trigger7 = !(helper(301),numtarget)
trigger8 = numhelper(301)
trigger8 = helper(301),projcontact = 1
trigger9 = numhelper(301)
trigger9 = helper(301),numtarget >= 1 && enemynear, gethitvar(xvel) = 0
var(17) = 0


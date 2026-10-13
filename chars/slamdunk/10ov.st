; Hit by power move (flying)
[Statedef 1216]
type    = A
movetype= H ;Get hit
physics = N

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

;[State 941, 0]
;type = NotHitBy
;trigger1 = 1
;value = SCA
;Time = 1

[State 941, 1]
type = ChangeAnim
Trigger1 = Time = 0
value = ifelse(SelfAnimExist(5052),5052,5050)

[State 5071, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 5071, 2]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 941, 5]
type = ChangeState
trigger1 = backedgedist <= 5
value = 1217

[State 943, 5]
type = SelfState
trigger1 = Pos Y > const(movement.air.gethit.groundlevel)
trigger1 = Vel Y > 0
value = 5100
ctrl = 0


; Hit by power move (falling to the ground)
[Statedef 1218]
type    = A
movetype= H ;Get hit
physics = N

[State 943, 0]
type = ChangeAnim
Trigger1 = Time = 0
value = 5090

[State 943, 1]
type = VelAdd
trigger1 = Time >= 0
y = .55

[State 943, 5]
type = SelfState
trigger1 = Pos Y > const(movement.air.gethit.groundlevel)
trigger1 = Vel Y > 0
value = 5100
ctrl = 0


;---------------------------------------------------------------------------
; HIT_BOUNCE (bounce into air)
[Statedef 1443]
type    = A
movetype= H
physics = N

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
x = -1
y = -10.937
[State 5101, 5] ;Acceleration
type = VelAdd
trigger1 = 1
y = .713

[State 5101, 6] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >= const(movement.down.bounce.groundlevel)
type = SelfState
value = 5110


;---------------------------------------------------------------------------
[Statedef -2]

[State ME AM USING 1.0]
type = VarSet
trigger1 = var(49) != 1
var(49) = 1
ignorehitpause = 1


[State 0, RemoveExplod]
type = RemoveExplod
triggerall = numexplod(2205)
trigger1 = !numtarget(2200)
id = 2205
ignorehitpause = 1
[State 0, PlaySnd]
type = PlaySnd
triggerall = numexplod(2205)
trigger1 = (gametime%10)=0
value = S0,random%5

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noairguard
ignorehitpause = 1

[State 0, Snd Jump]
type = PlaySnd
trigger1 = stateno = 40
trigger1 = animtime = 0
value = S0,0
channel = 1

[State 0, VarSet]
type = VarSet
triggerall = var(30) = 0
trigger1 = movetype = H
trigger1 = stateno != [120,169]
var(30) = -1
ignorehitpause = 1
[State 0, PowerAdd]
type = PowerAdd
triggerall = var(30) = 0
triggerall = stateno != [2000,2999]
trigger1 = movehit
;trigger2 = projhittime = 1
value = 150
ignorehitpause = 1
[State 0, VarSet]
type = VarSet
triggerall = var(30) = 0
trigger1 = movehit
;trigger2 = projhittime = 1
var(30) = 1
ignorehitpause = 1

[State -2, Movehitoner]
type = VarSet
trigger1 = 1
var(21) = ifelse(movehit=1,var(21)+1,0)
ignorehitpause = 1
[State -2, Movehitoner]
type = VarSet
trigger1 = var(21) != 1
var(31) = (p2movetype=A)
ignorehitpause = 1
[State 0, PowerAdd]
type = PowerAdd
triggerall = stateno != [2000,2999]
trigger1 = var(21) = 1
trigger1 = var(31) = 1
value = 150
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
;[State 0, Helper]
;type = Helper
;trigger1 = roundstate < 2
;trigger1 = !numhelper(444)
;helpertype = normal
;name = "CONFIG"
;ID = 444
;stateno = 444
;pos = 444,444
;postype = p1
;facing = 1
;ownpal = 1
;supermovetime = 65535
;pausemovetime = 65535
;ignorehitpause = 1


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
value = ( ifelse((stateno=[3000,3900]), 0.25+(fvar(13)*0.75) ,fvar(13))  ) * ifelse((p2statetype=A&&p2movetype!=H)||var(31),1.25,1)
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
var(55) = ifelse((roundstate<=2),ailevel,0)
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
triggerall = stateno != 2400
triggerall = enemynear,statetype != A
triggerall = enemynear,statetype != L
trigger1 = Statetype != A
trigger2 = stateno = 235
trigger3 = stateno = 1300
trigger4 = stateno = 240
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

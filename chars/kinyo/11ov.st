; 1.1 states

;---------------------------------------------------------------------------
; Stand to Crouch
[Statedef 10]
type    = C
physics = C
anim = 10

[State 10, 1]
type = VelMul
trigger1 = Time = 0
x = .75

[State 10, 2] ;Stop moving if low velocity
type = VelSet
trigger1 = abs(vel x) < Const(movement.crouch.friction.threshold)
x = 0

[State 10, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11

;---------------------------------------------------------------------------
; Crouching
[Statedef 11]
type    = C
physics = C
anim = 11
sprpriority = 0

[State 11, 1] ;Change from turning animation
type = ChangeAnim
trigger1 = Anim = 6 && AnimTime = 0
value = 11

[State 11, 2] ;Stop moving if low velocity
type = VelSet
trigger1 = abs(vel x) < Const(movement.crouch.friction.threshold)
x = 0

; Win pose 2
[Statedef 182]
type = S
ctrl = 0
anim = 182
velset = 0,0

[State 0, Explod]
type = Explod
trigger1 = time = 600
anim = 1800+random%6
ID = 1800
pos = 160,floor(screenheight/2)
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = 65535
supermovetime = 65535
scale = .5,.5
sprpriority = 4
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause =1


[State 200, 1]
type = PlaySnd
trigger1 = time = 1
value = 0, 7
channel = 0
abspan = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time >= 16
flag = nomusic
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time = [0,720]
flag = roundnotover
ignorehitpause = 1

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 0, PosSet]
type = PosSet
trigger1 = animelemtime(21) >= 0
x = pos x * 0.99

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fvar(0) = 0

[State 0, VarSet]
type = VarSet
trigger1 = animelemtime(21) >= 0
fvar(0) = fvar(0) + 0.007

[State 0, AngleDraw]
type = AngleDraw
trigger1 = animelemtime(21) >= 0
trigger1 = fvar(0) > 0
value = 0
scale = 1+fvar(0),1+fvar(0)
ignorehitpause = 1
[State 0, SprPriority]
type = SprPriority
trigger1 = animelemtime(21) >= 0
trigger1 = fvar(0) > 0
value = ceil(5*fvar(0))
ignorehitpause = 1

[State 0, Offset]
type = Offset
trigger1 = animelemtime(21) >= 0
trigger1 = fvar(0) > 0
x = 0
y = fvar(0)*21

;---------------------------------------------------------------------------
; Tripped get-hit (knocked away)
[Statedef 5071]
type    = A
movetype= H
physics = N

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
sysvar(0) = 0

[State 5071, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 5071, 2] ;Acceleration
type = VelAdd
trigger1 = time>0
y = GetHitVar(yaccel)

[State 5071, 3] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >= Const(movement.air.gethit.trip.groundlevel)
type = ChangeState
value = 5110

;------------------
; Hit by Fast Kung Fu Palm - bounce off wall
; (a custom gethit state)
[Statedef 228]
type    = A
movetype= H
physics = N

[State 1028, Vel Y]
type = VelSet
trigger1 = Time = 0
y = -12.12

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
y = gethitvar(yaccel);.88

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

[State 5050, 4] ;Recover near ground
type = SelfState
triggerall = Vel Y > 0
triggerall = Pos Y >= Const(movement.air.gethit.groundrecover.ground.threshold)
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;Air get-hit (fall recovery on ground)

[State 5050, 5]; Recover in mid air
type = SelfState
triggerall = Vel Y > Const(movement.air.gethit.airrecover.threshold)
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210 ;Air get-hit (fall recovery in air)

[State 1028, Hit ground]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= Const(movement.air.gethit.groundlevel) )
value = 5100

;------------------
; Hit by Fast Kung Fu Palm - bounce off wall
; (a custom gethit state)
[Statedef 328]
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
y = -5.7

[State 1028, Vel X]
type = VelSet
trigger1 = Time = 0
x = 34.34

[State 1028, Turn]
type = Turn
trigger1 = (Time = 0) && (frontEdgeDist < 30)

[State 1028, Gravity]
type = VelMul
trigger1 = 1
x = 0.9
[State 1028, Gravity]
type = VelAdd
trigger1 = 1
y = .4

[State 1028, Anim 5050]
type = ChangeAnim2
trigger1 = Time = 0
value = 328

[State 5050, 4] ;Recover near ground
type = SelfState
triggerall = Vel Y > 0
triggerall = Pos Y >= Const(movement.air.gethit.groundrecover.ground.threshold)
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;Air get-hit (fall recovery on ground)

[State 5050, 5]; Recover in mid air
type = SelfState
triggerall = Vel Y > Const(movement.air.gethit.airrecover.threshold)
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210 ;Air get-hit (fall recovery in air)

[State 1028, Hit ground]
type = SelfState
trigger1 = vel y + pos y >= Const(movement.air.gethit.groundlevel)
value = 5100


;----------------------------------------------------------------------
[Statedef 235]
type = A
movetype = H
physics = N

[State 0, ChangeAnim2]
type = ChangeAnim
trigger1 = time = 0
value = ifelse(selfanimexist(5061),5061,5050)
ignorehitpause = 1
[State 0, ChangeAnim2]
type = ChangeAnim
trigger1 = time = 0
value = anim
elem = animelemno(99)
ignorehitpause = 1

[State 0, HitVelSet]
type = HitVelSet
trigger1 = time = 0
x = 1
y = 1
ignorehitpause = 1
[State 0, HitFallSet]
type = HitFallSet
trigger1 = time = 0
value = 1
[State 0, PosFreeze]
type = PosFreeze
trigger1 = !hitshakeover
value = 1
ignorehitpause = 1

[State 821, 1] ;Gravity
type = VelAdd
Trigger1 = hitshakeover
y = gethitvar(yaccel)

[State 821, 4] ;Hit ground
type = ChangeState
Trigger1 = hitshakeover
trigger1 = Vel Y > 0
trigger1 = Pos Y >= Const(movement.air.gethit.groundlevel)
value = 236 ;Hit ground

;---------------------------------------------------------------------------
; HIT_BOUNCE (bounce into air)
[Statedef 237]
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

[State 0, HitFallVel]
type = HitFallVel
trigger1 = time = 0
trigger1 = gethitvar(fall.yvel)
;ignorehitpause = 
;persistent = 
[State 5101, 3]
type = VelSet
trigger1 = Time = 0
trigger1 = !gethitvar(fall.yvel)
;x = -1
y = -13.73
[State 5101, 5] ;Acceleration
type = VelAdd
trigger1 = 1
y = gethitvar(yaccel)

[State 5050, 4] ;Recover near ground
type = SelfState
triggerall = Vel Y > 0
triggerall = Pos Y >= Const(movement.air.gethit.groundrecover.ground.threshold)
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;Air get-hit (fall recovery on ground)

[State 5050, 5]; Recover in mid air
type = SelfState
triggerall = Vel Y > Const(movement.air.gethit.airrecover.threshold)
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210 ;Air get-hit (fall recovery in air)

[State 5101, 6] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >= Const(movement.down.bounce.groundlevel)
type = SelfState
value = 5110

;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------

[Statedef -2]

[State ME AM USING 1.0]
type = VarSet
trigger1 = var(49) != 1
var(49) = 1
ignorehitpause = 1

[State 0, Reset Mid-Air]
type = VarSet
trigger1 = var(23)
trigger1 = statetype != A
var(23) = 0

[State 0, VarSet]
type = VarSet
triggerall = var(30) = 0
triggerall = numenemy
trigger1 = (enemy,movecontact >= 1 || enemy,projcontact >= 1) && (!enemy,moveguarded)
var(30) = -1
ignorehitpause = 1
[State 0, PowerAdd]
type = PowerAdd
triggerall = var(30) = 0
triggerall = stateno != [3000,3999]
trigger1 = (movecontact >= 1 || projcontact >= 1) && (!moveguarded)
;trigger2 = projhittime = 0
;trigger2 = p2movetype = H
;trigger2 = movetype = A
;trigger2 = p2stateno != [120,169]
;trigger2 = projhittime = 1
value = 150
ignorehitpause = 1
[State -2 Send the message]
type = Varset
triggerall = var(30) = 0
trigger1 = (movecontact >= 1 || projcontact >= 1) && (!moveguarded)
;trigger2 = p2movetype = H
;trigger2 = movetype = A
;trigger2 = p2stateno != [120,169]
;trigger2 = projhittime = 1
var(37) = var(37) | floor(exp(2*ln(2)) + 0.5)
ignorehitpause = 1
[State 0, VarSet]
type = VarSet
triggerall = var(30) = 0
trigger1 = (movecontact >= 1 || projcontact >= 1) && (!moveguarded)
;trigger2 = p2movetype = H
;trigger2 = movetype = A
;trigger2 = p2stateno != [120,169]
;trigger2 = projhittime = 1
var(30) = 1
ignorehitpause = 1

[State -2, Movehitoner]
type = VarSet
trigger1 = numenemy
var(21) = ifelse(movehit=1&&(enemynear,movereversed!=[1,2]),var(21)+1,0)
ignorehitpause = 1
[State -2, Movehitoner]
type = VarSet
trigger1 = !numenemy
var(21) = ifelse(movehit=1,var(21)+1,0)
ignorehitpause = 1
[State -2, Moveguardoner]
type = VarSet
trigger1 = 1
var(22) = ifelse(moveguarded=1,var(22)+1,0)
ignorehitpause = 1
[State -2, FirstHit]
type = VarSet
trigger1 = 1
var(29) = 0
ignorehitpause = 1
[State -2, FirstHit]
type = VarSet
trigger1 = var(21)=1
trigger1 = numtarget
trigger1 = p2stateno != [120,169]
var(29) = (target,gethitvar(hitcount) <= 1)
ignorehitpause = 1

[State -2, Counter?]
type = VarSet
trigger1 = var(21) != 1
var(31) = (p2movetype=A)
ignorehitpause = 1
[State -2 Send the message]
type = Varset
trigger1 = !enemynear,movereversed
trigger1 = var(31) = 1
trigger1 = var(21) = 1
var(37) = var(37) | floor(exp(0*ln(2)) + 0.5)
ignorehitpause = 1
;[State 0, PlaySnd]
;type = PlaySnd
;trigger1 = !enemynear,movereversed
;trigger1 = var(31) = 1
;trigger1 = var(21) = 1
;value = S209,random%10
;channel = 0
;lowpriority = 1
;ignorehitpause = 1

[State P2Soundcode nope]
type = VarSet
trigger1 = 1
var(33) = 0
ignorehitpause = 1
[State P2Soundcode WHAM]
type = VarSet
trigger1 = (numtarget)
trigger1 = (target,stateno = 227) || (target,stateno = 327)
trigger1 = (target,time = 1)
trigger1 = (target,movetype = H)
var(33) = 1
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

[State 0, ]
type = PlaySnd
triggerall = alive
;triggerall = random < 500
triggerall = anim != 70851
trigger1 = (stateno = 5001) || (stateno = 5011) || (stateno = 5021) || (stateno = 5071)
trigger1 = time = 1
trigger2 = (stateno != 5000) && (stateno != 5010) && (stateno != 5020) && (stateno != 5070)
trigger2 = (stateno != 5001) && (stateno != 5011) && (stateno != 5021) && (stateno != 5071)
trigger2 = stateno != [120,160]
trigger2 = gethitvar(damage)
value = 5000,random%10
;volume = 255
channel = 0
ignorehitpause = 1


[State 0, Helper]
type = Helper
triggerall = !ishelper
trigger1 = !numhelper(179)
helpertype = normal
name = "Misc Stuff"
ID = 179
stateno = 179
pos = 0,0
postype = p1
ownpal = 1
supermovetime = 65535
pausemovetime = 65535
ignorehitpause = 1

[State -2, Neo-Juggle-System-Reset]
type = VarSet
triggerall = var(40)
trigger1 = !numtarget
;trigger2 = numtarget
;trigger2 = (target,statetype != A) && (target,statetype != L)
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
fvar(13) = 1 + ifelse(numhelper(3050),0.25,0)
ignorehitpause = 1
[State 0, AttackMulSet]
type = AttackMulSet
trigger1 = 1
time = 2
;value = ifelse(p2movetype!=H,ifelse(var(20)=1,1.25,1),1 - ifelse(fvar(15)>.75,.75,fvar(15)))
;value = ( ifelse((stateno=[3000,3900]), 0.25+(fvar(13)*0.75) ,fvar(13))  ) * ifelse((p2statetype=A&&p2movetype!=H)||var(31),1.25,1)
value = ( ifelse((stateno=[3000,3900]), 0.25+(fvar(13)*0.75) ,fvar(13))  ) * ifelse(var(31),1.25,1)
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
[State -2, Scaler]
type = VarSet
trigger1 = time = 0
fvar(36) = roundno + matchno*3
IgnoreHitPause = 1
[State -2, TOO MUCH]
type = VarSet
trigger1 = fvar(36) >= 80
fvar(36) = 80
IgnoreHitPause = 1
[State -2, Simplifier]
type = VarSet
;triggerall = !IsHelper
;trigger1 = var(58) = 1
;trigger2 = fvar(35):=0
trigger1 = !ishelper
fvar(35) = ifelse((roundstate=2&&ailevel>=1),ailevel+fvar(36),0)
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
trigger1 = fvar(35)
var(51) = (enemynear,HitDefAttr = SCA,AT) || (var(50) > 20) || ((abs(enemynear,animtime) <= enemynear,moveguarded )) || (numhelper(3050))
ignorehitpause = 1


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
triggerall = stateno != [10800,10899]
triggerall = stateno != 2400
triggerall = enemynear,statetype != A
triggerall = enemynear,statetype != L
trigger1 = Statetype != A
trigger2 = stateno = [600,620]
trigger2 = prevstateno = stateno
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


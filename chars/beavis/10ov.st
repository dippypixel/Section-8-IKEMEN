; 1.0 states

;---------------------------------------------------------------------------
; Win pose - CRYYYYYYYYYYYYYYYYYYYYY
[Statedef 189]
type = S
ctrl = 0
anim = 189
velset = 0,0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nomusic
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time >= 105
flag = noFG
flag2 = nobardisplay
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time = [0,787]
flag = roundnotover
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S2,10
channel = 0
abspan = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = S189,0
channel = 0
abspan = 0

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
trigger2 = time > 397
trigger2 = var(0) > 256
var(0) = 256
[State 0, VarSet]
type = VarAdd
trigger1 = time = [200,396]
trigger1 = var(0) > 0
var(0) = -2
[State 0, VarSet]
type = VarAdd
trigger1 = time >= 397
trigger1 = var(0) < 256
var(0) = 10

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 103
value = S189,1
channel = 0
abspan = 0
[State 0, Explod]
type = Explod
trigger1 = time = 103
anim = 1890
ID = 1890
pos = 160,ceil(gameheight/2)
postype = left
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
pausemovetime = 65535
supermovetime = 65535
scale = 1,1
sprpriority = 64
ontop = 1
;ownpal = 1
removeongethit = 1
ignorehitpause = 1
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 397
value = S189,2
channel = 0
abspan = 0
[State 0, Explod]
type = Explod
trigger1 = time = 397
anim = 1891
ID = 1891
pos = 160,ceil(gameheight/2)
postype = left
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
pausemovetime = 65535
supermovetime = 65535
scale = 1,1
sprpriority = 68
ontop = 1
;ownpal = 1
removeongethit = 1
ignorehitpause = 1
[State 0, AllPalFX]
type = AllPalFX
trigger1 = time >= 120
time = 2
mul = var(0),var(0),var(0)
ignorehitpause = 1

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

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
trigger1 = 1
y = GetHitVar(yaccel)

[State 0, Turn]
type = Turn
trigger1 = Vel Y > 0
trigger1 = Pos Y >= Const(movement.air.gethit.trip.groundlevel)
ignorehitpause = 1
persistent = 0

[State 5071, 3] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >= Const(movement.air.gethit.trip.groundlevel)
type = ChangeState
value = 5110

;----------------------------------------------------------------------
[Statedef 1105]
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
value = 1106 ;Hit ground

;---------------------------------------------------------------------------
; HIT_BOUNCE (bounce into air)
[Statedef 1107]
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
y = -13.73
[State 5101, 5] ;Acceleration
type = VelAdd
trigger1 = 1
y = gethitvar(yaccel)

[State 5101, 6] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >= const(movement.down.bounce.groundlevel)
type = SelfState
value = 5110

;---------------------------------------------------------------------------
; HIT_BOUNCE (bounce into air)
[Statedef 3004]
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
x = -6.6
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
; FUCK
[Statedef 3221]
type    = A
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,1
ignorehitpause = 1

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0
ignorehitpause = 1

[State 0, HitVelSet]
type = HitVelSet
trigger1 = time = 0
x = 1
y = 1
ignorehitpause = 1

[State 0, PosFreeze]
type = PosFreeze
trigger1 = !hitshakeover
value = 1
ignorehitpause = 1
[State 0, PlaySnd]
type = PlaySnd
trigger1 = hitshakeover
trigger1 = !alive
value = S11,0
channel = 0
abspan = 0
ignorehitpause = 1
persistent = 0

[State 0, ChangeAnim]
type = ChangeAnim2
trigger1 = time = 0
value = 9741
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim != [5050,5060]
trigger1 = screenpos y < - 32
value = ifelse(selfanimexist(5052),5052,5050)

[State 0, VelAdd]
type = VelAdd
trigger1 = hitshakeover
y = 0.88
ignorehitpause = 1

[State 0, SelfState]
type = SelfState
triggerall = hitshakeover
trigger1 = vel y > 0
trigger1 = vel y + pos y >= Const(movement.air.gethit.groundlevel)
value = 5100

;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------

[Statedef -2]

[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 5950 || anim = 5955
trigger1 = animelemtime(5) = 0
trigger2 = anim = 5131
trigger2 = animelemtime(1) = 1
value = F7,0
[State 0, Collapse animation stuff]
type = PosAdd
trigger1 = anim = 5950 || anim = 5955
trigger1 = animelemtime(9) = 0 || animelemtime(10) = 0
trigger2 = anim = 5131
trigger2 = animelemtime(5) = 0 || animelemtime(6) = 0
x = -4*const(size.xscale)
[State 0, Collapse animation stuff]
type = PosAdd
trigger1 = anim = 5950 || anim = 5955
trigger1 = animelemtime(11) = 0
trigger2 = anim = 5131
trigger2 = animelemtime(7) = 0
x = -5*const(size.xscale)
[State 0, Collapse animation stuff]
type = PosAdd
trigger1 = anim = 5950 || anim = 5955
trigger1 = animelemtime(12) = 0
trigger2 = anim = 5131
trigger2 = animelemtime(8) = 0
x = -6*const(size.xscale)
[State 0, Collapse animation stuff]
type = PosAdd
trigger1 = anim = 5950 || anim = 5955
trigger1 = animelemtime(13) = 0
trigger2 = anim = 5131
trigger2 = animelemtime(9) = 0
x = -50*const(size.xscale)
[State 0, Collapse animation stuff]
type = PosAdd
trigger1 = anim = 5950 || anim = 5955
trigger1 = animelemtime(14) = 0
trigger2 = anim = 5131
trigger2 = animelemtime(10) = 0
x = -80*const(size.xscale)
[State 0, Explod]
type = Explod
trigger1 = anim = 5950 || anim = 5955
trigger1 = animelemtime(14) = 0
trigger2 = anim = 5131
trigger2 = animelemtime(10) = 0
anim = F61
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
;pausemovetime = 65535
scale = 1,1
sprpriority = 7
ownpal = 1
[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 5950 || anim = 5955
trigger1 = animelemtime(14) = 0
trigger2 = anim = 5131
trigger2 = animelemtime(10) = 0
value = F7,1

[State -2, Footsteps]
type = PlaySnd
trigger1 = anim = 100
trigger1 = animelem = 2 || animelem = 5
trigger2 = anim = 1160
trigger2 = animelem = 12 || animelem = 8 || animtime = 0
trigger3 = anim = 3000
trigger3 = animelem = 11 || animelem = 7 || animelem = 19 || animelem = 15 || animelem = 27 || animelem = 23 || animelem = 35 || animelem = 30 || animtime = 0
value = S40,1+random%3

[State -2, Criticize a Korn video while Dizzy]
type = PlaySnd
trigger1 = anim = 5300
value = S5300,random%5
channel = 0
lowpriority = 1
ignorehitpause = 1

; if you're making a 10ov.st and copied the statedef -2 in it's entirety, uncomment this strcl so e.g. the hitpauses in both mugen versions would be the same
[State ME AM USING 1.0]
type = VarSet
trigger1 = var(49) != 1
var(49) = 1
ignorehitpause = 1

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
trigger2 = p2movetype = H
;trigger2 = movetype = A
trigger2 = p2stateno != [120,169]
;trigger2 = projhittime = 1
value = 150
ignorehitpause = 1
[State 0, Explod]
type = Explod
triggerall = var(30) = 0
trigger1 = movehit
trigger2 = p2movetype = H
;trigger2 = movetype = A
trigger2 = p2stateno != [120,169]
;trigger2 = projhittime = 1
anim = 4101
ID = 4100
pos = ifelse(teamside=1,43,320-43),80+(29*numexplod(4100))
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
pausemovetime = 65535
supermovetime = 65535
scale = .5,.5
sprpriority = 999
ontop = 1
ownpal = 1
ignorehitpause = 1
[State 0, VarSet]
type = VarSet
triggerall = var(30) = 0
trigger1 = movehit
trigger2 = p2movetype = H
;trigger2 = movetype = A
trigger2 = p2stateno != [120,169]
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
var(29) = (target,gethitvar(hitcount) <= 1)
ignorehitpause = 1

[State -2, Counter?]
type = VarSet
trigger1 = var(21) != 1
var(31) = (p2movetype=A)
ignorehitpause = 1
[State 0, Explod]
type = Explod
trigger1 = !enemynear,movereversed
trigger1 = var(31) = 1
trigger1 = var(21) = 1
;trigger2 = projhittime = 1
anim = 4100
ID = 4100
pos = ifelse(teamside=1,43,320-43),80+(29*numexplod(4100))
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
pausemovetime = 65535
supermovetime = 65535
scale = .5,.5
sprpriority = 999
ontop = 1
ownpal = 1
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
triggerall = anim != 7696
trigger1 = (stateno = 5000) || (stateno = 5010) || (stateno = 5020) || (stateno = 5070)
trigger1 = time = 0
trigger2 = (stateno != 5000) && (stateno != 5010) && (stateno != 5020) && (stateno != 5070)
trigger2 = stateno != [120,160]
trigger2 = gethitvar(damage)
value = 5000,ifelse(gethitvar(animtype)=0,random%4,ifelse(gethitvar(animtype)=1,4+random%4,8+random%9))
;volume = 255
channel = 0
ignorehitpause = 1

[State 0, ]
type = PlaySnd
triggerall = alive
triggerall = anim = 7696
trigger1 = time = 1
trigger2 = (stateno != 5000) && (stateno != 5010) && (stateno != 5020) && (stateno != 5070)
trigger2 = stateno != [120,160]
trigger2 = gethitvar(damage)
value = 5000,19
;volume = 255
channel = 0
ignorehitpause = 1

[State 0, ]
type = PlaySnd
triggerall = alive
trigger1 = anim = 70851
trigger1 = animelemtime(2) = -1
value = 5000,17
;volume = 255
channel = 0
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
triggerall = time = 1
triggerall = random < 500
trigger1 = stateno = 150
trigger2 = stateno = 152
value = S120,random%6
channel = 0
lowpriority = 1

[State 0, ]
type = PlaySnd
triggerall = !numhelper(3100)
trigger1 = stateno = 5120
trigger1 = time = 1
trigger1 = random < 500
trigger1 = roundstate < 3
value = 5120,random%10
channel = 0
;volume = 255

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
fvar(13) = 1
ignorehitpause = 1
[State 0, AttackMulSet]
type = AttackMulSet
trigger1 = 1
time = 2
;value = ifelse(p2movetype!=H,ifelse(var(20)=1,1.25,1),1 - ifelse(fvar(15)>.75,.75,fvar(15)))
;value = ( ifelse((stateno=[3000,3900]), 0.25+(fvar(13)*0.75) ,fvar(13))  ) * ifelse((p2statetype=A&&p2movetype!=H)||var(31),1.25,1)
value = ( ifelse((stateno=[3000,3900]), 0.25+(fvar(13)*0.75) ,fvar(13))  ) * ifelse(var(31),1.25,1)
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
trigger1 = stateno = 5200 || stateno = 5210
anim = 4102
ID = 4100
pos = ifelse(teamside=1,43,320-43),80+(29*numexplod(4100))
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
pausemovetime = 65535
supermovetime = 65535
scale = .5,.5
sprpriority = 999
ontop = 1
ownpal = 1
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
trigger1 = !ishelper
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
var(51) = (enemynear,HitDefAttr = SCA,AT) || (var(50) > 20) || ((abs(enemynear,animtime) <= enemynear,moveguarded )) || (numhelper(3050))
ignorehitpause = 1

; thanks to this if you go CTRL+D and see the current distance so once you start AI making you can blast off a notepad and take notes in which distances would various moves hit
[State -2, DTC]
type = DisplayToClipboard
trigger1 = 1
text = "AI = %d, var(52) = %d, x = %f, y = %f, pro = %f"
params = var(58), var(52), (p2bodydist x), (p2dist y), (fvar(13))
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

[state Pulse-K]
type=ChangeAnim
trigger1=numenemy
trigger1=enemynear,name="pulse-K"&&enemynear,authorname="Masukenpu-kunZ"&&stateno=820&&anim=820&&time=102&&movetype=H
value=5340+ifelse(facing=1,0,1)
persistent=0

[state Pulse-K]
type=AssertSpecial
trigger1=numenemy
trigger1=enemynear,name="pulse-K"&&enemynear,authorname="Masukenpu-kunZ"&&stateno=820&&(anim=[5340,5341])&&time>=102&&movetype=H
flag=noshadow

[state Pulse-K]
type=Angleset
trigger1=numenemy
trigger1=enemynear,name="pulse-K"&&enemynear,authorname="Masukenpu-kunZ"&&stateno=820&&(anim=[5340,5341])&&time>=102&&movetype=H
value=0



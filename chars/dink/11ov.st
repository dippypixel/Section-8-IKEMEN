; 1.1 states

;---------------------------------------------------------------------------
; FX/Messgae/System Stuff
[Statedef 179]
type = S
ctrl = 0
anim = 9741
velset = 0,0

; Bust/slas system select ;

[State 0, PlaySnd]
type = PlaySnd
triggerall = numexplod(4000)
trigger1 = parent,roundsexisted = 0
trigger1 = roundstate = 2
trigger2 = parent,command="start"
value = S0,79
persistent = 0

[State 0, ParentVarSet]
type = ParentVarSet
triggerall = parent,roundsexisted = 0
triggerall = roundstate < 2
triggerall = numexplod(4000)
trigger1 = parent,command = "tapf" || parent,command="tapb"
var(59) = ifelse((parent,var(59)=0),1,0)
[State 0, PlaySnd]
type = PlaySnd
triggerall = roundstate != 0
trigger1 = numexplod(4020)
trigger1 = parent,var(59) != 0
trigger2 = numexplod(4021)
trigger2 = parent,var(59) != 1
;triggerall = parent,roundsexisted = 0
;triggerall = roundstate < 2
;triggerall = numexplod(4000)
;trigger1 = parent,command = "tapu" || parent,command="tapd"
value = S0,80

[State to remove uneeded shit]
type = RemoveExplod
triggerall = numexplod(4000)
trigger1 = parent,roundsexisted = 0
trigger1 = roundstate = 2
trigger2 = parent,command="start"
id = 4000
[State to remove uneeded shit]
type = RemoveExplod
triggerall = numexplod(4020)
trigger1 = parent,var(59) != 0
;trigger2 = parent,roundsexisted = 0
;trigger2 = roundstate = 2
;trigger3 = !numexplod(4000)
id = 4020
[State to remove uneeded shit]
type = RemoveExplod
triggerall = numexplod(4021)
trigger1 = parent,var(59) != 1
;trigger2 = parent,roundsexisted = 0
;trigger2 = roundstate = 2
;trigger3 = !numexplod(4000)
id = 4021
[State 0, ParentVarSet]
type = ParentVarSet
triggerall = parent,roundsexisted = 0
triggerall = roundstate < 2
trigger1 = numexplod(4000)
var(59) = random%2
persistent = 0
[State for selection]
type = Explod
;trigger1 = parent,roundsexisted = 0
;trigger1 = roundstate < 2
trigger1 = !numexplod(4020+(parent,var(59)))
;trigger1 = numexplod(4000)
anim = 4020+(parent,var(59))
id = 4020+(parent,var(59))
pos = ifelse(teamside=2,320-16,16),ceil(screenheight)-floor(parent,fvar(33))
postype = left
bindtime = -1
removetime = -1
facing = ifelse(teamside=2,-1,1)
scale = .5,.5
supermovetime = 65535
pausemovetime = 65535
sprpriority = 70
ontop = 1
[State for frame]
type = Explod
trigger1 = parent,roundsexisted = 0
trigger1 = roundstate < 2
;trigger1 = !numexplod(4000)
anim = 4030
id = 4000
pos = ifelse(teamside=2,320-28,28),ceil(screenheight)-floor(parent,fvar(33))
postype = left
bindtime = -1
removetime = -1
facing = 1
supermovetime = 65535
pausemovetime = 65535
scale = .5,.5
sprpriority = 72
ontop = 1
persistent = 0

[State 0, AssertSpecial]
type = AssertSpecial
triggerall = parent,roundsexisted = 0
triggerall = roundstate < 2
triggerall = time = [0,180]
trigger1 = numexplod(4000)
flag = intro


;



[State WHAM Timer]
type = VarSet
trigger1 = !numenemy
var(32) = 0
ignorehitpause = 1
[State WHAM Timer]
type = VarSet
triggerall = numenemy
triggerall = enemynear, stateno != 1177
trigger1 = enemynear, movetype != H
trigger2 = enemynear, statetype != A
;trigger2 = enemynear, vel x < 0
;trigger2 = (enemynear, vel x) + (enemynear, backedgebodydist) <= -1
var(32) = 0
ignorehitpause = 1
[State WHAM Timer]
type = VarSet
trigger1 = numenemy
trigger1 = enemynear, stateno != [120,169]
trigger1 = enemynear, movetype = H
trigger1 = enemynear, statetype = A || (enemynear, stateno = 1185 && enemynear, statetype = L)
trigger1 = enemynear, vel x < 0
trigger1 = (enemynear, vel x) + (enemynear, backedgebodydist) <= -1
trigger2 = enemynear, stateno = 1177 || enemynear, stateno = 1185
var(32) = 1
ignorehitpause = 1
[State WHAM Timer]
type = VarSet
trigger1 = time >= 0
var(33) = ifelse(var(32),var(33)+1,0)
ignorehitpause = 1
[State WHAM Timer]
type = VarSet
trigger1 = time>= 0;!numenemy
var(34) = 0
ignorehitpause = 1
[State WHAM Timer]
type = VarSet
trigger1 = numenemy
trigger1 = enemynear, stateno = 1216
trigger1 = enemynear, movetype = H
;trigger1 = enemynear, statetype = L
var(34) = 1
ignorehitpause = 1
[State WHAM Timer]
type = VarSet
trigger1 = time >= 0
var(35) = ifelse(var(34),var(35)+1,0)
ignorehitpause = 1
[State 0, Explod]
type = Explod
trigger1 = var(33) = 1
trigger1 = numenemy
anim = 909
ID = 909
pos = (-16-enemynear,backedgedist),(enemynear,const(size.mid.pos.y))
postype = p2
facing = -1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
;pausemovetime = 0
scale = .5,.5
sprpriority = 4
ontop = 1
ownpal = 1
ignorehitpause = 1
supermovetime = 65535
[State WHAM]
type = PlaySnd
trigger1 = var(33) = 1
trigger1 = numenemy
value = S5,14
freqmul = 1.0
abspan = 0
ignorehitpause = 1
[State 0, Explod]
type = Explod
trigger1 = var(35) = 1
trigger1 = numenemy
anim = 974
ID = 974
pos = 0,0
postype = p2
facing = -1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
;pausemovetime = 0
scale = .5,.5
sprpriority = -10
ontop = 1
ownpal = 1
ignorehitpause = 1
supermovetime = 65535
[State 0, Explod]
type = Explod
trigger1 = var(35) = 1
trigger1 = numenemy
anim = 975
ID = 975
pos = 0,0
postype = p2
facing = -1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
;pausemovetime = 0
scale = .5,.5
sprpriority = 10
ontop = 1
ownpal = 1
ignorehitpause = 1
supermovetime = 65535
[State WHAM]
type = PlaySnd
trigger1 = var(35) = 1
trigger1 = numenemy
value = S7,2
freqmul = 1.0
abspan = 0
ignorehitpause = 1



[State Hyper Combo Finish]
type = ParentVarSet
triggerall = winko
triggerall = roundstate = 3
trigger1 = parent,stateno = [3000,3700]
trigger1 = parent,numtarget
trigger2 = parent,stateno = 3000
trigger2 = numhelper(1305)
trigger2 = helper(1305),stateno = 1307
trigger3 = numhelper(3050)
trigger3 = helper(3050),movehit
trigger4 = numhelper(3300)
trigger4 = helper(3300),movehit
trigger5 = numhelper(3460)
trigger5 = helper(3460),movehit
var(37) = (parent,var(37)) | floor(exp(6*ln(2)) + 0.5)
ignorehitpause = 1
persistent = 0

[State Perfect Finish]
type = ParentVarSet
trigger1 = winko
trigger1 = roundstate = 3
trigger1 = parent,life = lifemax
var(37) = (parent,var(37)) | floor(exp(4*ln(2)) + 0.5)
ignorehitpause = 1
persistent = 0

[State Low Life Bonus]
type = PowerAdd
trigger1 = roundstate = 2
trigger1 = parent,alive
trigger1 = parent,life <= (parent,lifemax * 0.25)
value = 500
ignorehitpause = 1
persistent = 0

[State Low Life Warning]
type = ParentVarSet
trigger1 = roundstate = 2
trigger1 = parent,alive
trigger1 = parent,life <= (parent,lifemax * 0.25)
var(37) = (parent,var(37)) | floor(exp(1*ln(2)) + 0.5)
ignorehitpause = 1
persistent = 0

[State SOVIET DAMAGE]
type = ParentVarSet
trigger1 =(p2movetype != H && p2stateno != [5000,5110]) || roundstate = 4
trigger1 = p2life - var(13) <= -380
var(37) = (parent,var(37)) | floor(exp(5*ln(2)) + 0.5)
ignorehitpause = 1

[State remember p2 life]
type = VarSet
trigger1 = (p2movetype != H && p2stateno != [5000,5110]) || roundstate = 4
var(13) = p2life
ignorehitpause = 1

[State GFYS]
type = ParentVarSet
triggerall = loseko
triggerall = var(12) = parent,lifemax
trigger1 = numenemy
trigger1 = enemynear,movecontact
trigger2 = p2movetype = A
var(37) = (parent,var(37)) | floor(exp(9*ln(2)) + 0.5)
ignorehitpause = 1
persistent = 0

[State remember p1 life]
type = VarSet
trigger1 = ((parent,movetype != H) && (parent,stateno != [5000,5110])) || roundstate = 4
var(12) = parent,life
ignorehitpause = 1

[State reset]
type = VarSet
trigger1 = parent,var(21) != 1
var(16) = -1
ignorehitpause = 1

[State reset]
type = VarSet
triggerall = parent,var(21) != 1
trigger1 = numenemy
trigger1 = enemynear,statetype = A
trigger1 = enemynear,movetype = H
trigger1 = enemynear,gethitvar(fall) = 1
trigger1 = enemynear,canrecover
var(16) = 1;(enemynear,canrecover)
ignorehitpause = 1

[State INVALID COMBO]
type = ParentVarSet
trigger1 = parent,var(21) = 1
trigger1 = var(16) = 1
var(37) = (parent,var(37)) | floor(exp(7*ln(2)) + 0.5)
ignorehitpause = 1


[State COUNTER]
type = Null
;trigger1 = var(10) != 0
trigger1 = !numexplod(947)
trigger1 = (parent,var(37) & floor(exp(0*ln(2)) + 0.5))
trigger1 = (var(22):=60)
trigger1 = (var(10):=1)
ignorehitpause = 1

[State DANGER]
type = Null
;trigger1 = var(10) != 0
trigger1 = !numexplod(947)
trigger1 = (parent,var(37) & floor(exp(1*ln(2)) + 0.5))
trigger1 = (var(22):=60)
trigger1 = (var(10):=2)
ignorehitpause = 1

[State FIRST ATTACK]
type = Null
;trigger1 = var(10) != 0
trigger1 = !numexplod(947)
trigger1 = (parent,var(37) & floor(exp(2*ln(2)) + 0.5))
trigger1 = (var(22):=60)
trigger1 = (var(10):=3)
ignorehitpause = 1

[State GUARD CANCEL]
type = Null
;trigger1 = var(10) != 0
trigger1 = !numexplod(947)
trigger1 = (parent,var(37) & floor(exp(3*ln(2)) + 0.5))
trigger1 = (var(22):=60)
trigger1 = (var(10):=4)
ignorehitpause = 1

[State PERFECT]
type = Null
;trigger1 = var(10) != 0
trigger1 = !numexplod(947)
trigger1 = (parent,var(37) & floor(exp(4*ln(2)) + 0.5))
trigger1 = (var(22):=60)
trigger1 = (var(10):=5)
ignorehitpause = 1

[State SUPER DAMAGE]
type = Null
;trigger1 = var(10) != 0
trigger1 = !numexplod(947)
trigger1 = (parent,var(37) & floor(exp(5*ln(2)) + 0.5))
trigger1 = (var(22):=60)
trigger1 = (var(10):=6)
ignorehitpause = 1

[State SUPER KO]
type = Null
;trigger1 = var(10) != 0
trigger1 = !numexplod(947)
trigger1 = (parent,var(37) & floor(exp(6*ln(2)) + 0.5))
trigger1 = (var(22):=60)
trigger1 = (var(10):=7)
ignorehitpause = 1

[State SLOPPY JUGGLE]
type = Null
;trigger1 = var(10) != 0
trigger1 = !numexplod(947)
trigger1 = (parent,var(37) & floor(exp(7*ln(2)) + 0.5))
trigger1 = (var(22):=60)
trigger1 = (var(10):=8)
ignorehitpause = 1

[State HEAD SHOT]
type = Null
;trigger1 = var(10) != 0
trigger1 = !numexplod(947)
trigger1 = (parent,var(37) & floor(exp(8*ln(2)) + 0.5))
trigger1 = (var(22):=60)
trigger1 = (var(10):=9)
ignorehitpause = 1

[State FUCK YOU]
type = Null
;trigger1 = var(10) != 0
trigger1 = !numexplod(947)
trigger1 = (parent,var(37) & floor(exp(9*ln(2)) + 0.5))
trigger1 = (var(22):=60)
trigger1 = (var(10):=10)
ignorehitpause = 1

[State 0, VarSet]
type = VarAdd
trigger1 = var(22) > 0
trigger1 = numexplod(947)
var(22) = -1
[State 0, VarSet]
type = VarSet
trigger1 = fvar(13) != 0
trigger1 = !numexplod(947)
fvar(13) = 0
[State 0, VarSet]
type = VarAdd
trigger1 = var(22) > 0
trigger1 = fvar(13) < 1
trigger1 = numexplod(947)
fvar(13) = 0.1
[State 0, VarSet]
type = VarAdd
trigger1 = fvar(13) > 0
trigger1 = numexplod(947)
trigger1 = var(22) <= 0
fvar(13) = -0.1
[State 0, VarSet]
type = VarSet
trigger1 = fvar(13) > 1
trigger1 = var(22) > 0
trigger1 = numexplod(947)
fvar(13) = 1

[State 0, ParentVarSet]
type = ParentVarSet
trigger1 = !numexplod(947)
trigger1 = var(10)
trigger1 = (parent,var(37) & floor(exp((var(10)-1)*ln(2)) + 0.5))
var(37) = parent,var(37) ^ floor(exp((var(10)-1)*ln(2)) + 0.5)
[State START MESSAGE]
type = Explod
trigger1 = !numexplod(947)
trigger1 = var(10)
anim = 4100+var(10)-1
ID = 947
pos = ifelse(teamside=1,50,270),100
postype = left
bindtime = -1
;removetime = 150
removetime = -1
supermovetime = 65535
pausemovetime = 65535
scale = fvar(13)/2,fvar(13)/2
sprpriority = 666
ontop = 1
ownpal = 1
ignorehitpause = 1
[State MAO]
type = ModifyExplod
trigger1 = numexplod(947)
ID = 947
supermovetime = 65535
pausemovetime = 65535
scale = fvar(13)/2,fvar(13)/2
sprpriority = 666
ontop = 1
ownpal = 1
ignorehitpause = 1
[State REM]
type = RemoveExplod
trigger1 = numexplod(947)
trigger1 = fvar(13) <= 0
trigger1 = var(22) <= 0
id = 947
ignorehitpause = 1

[State 0, VarSet]
type = VarSet
trigger1 = var(10)
var(10) = 0
ignorehitpause = 1

[State 0, Turn]
type = Turn
;trigger1 = roundstate = [2,3]
;trigger1 = facing != enemynear,facing
trigger1 = facing != parent,facing

[State 0, Move to where the enemy is so I don't have to make another helper just to keep track of p2's position]
type = PosAdd
trigger1 = roundstate = [2,3]
x = p2dist x
y = p2dist y

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

;---------------------------------------------------------------------------
; Air get-hit (knocked away)
[Statedef 5030]
type    = A
movetype= H
physics = N
ctrl = 0

[State 5030, 1]
type = ChangeAnim
trigger1 = Anim != [5000, 5199]
trigger1 = SelfAnimExist(5030)
value = 5030
persistent = 0

[State 5030, 2]
type = VelAdd
trigger1 = time>0
y = GetHitVar(yaccel)

[State 5030, 3]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 5030, 4]
type = ChangeState
triggerall = !HitFall
;triggerall = !var(19)
trigger1 = HitOver
trigger2 = Vel Y > 0    ;Hit ground
trigger2 = Pos Y >= Const(movement.air.gethit.groundlevel)
value = 5040 ;HITA_RECOV

[State 5030, 5]
type = ChangeState
triggerall = HitFall; || var(19)
trigger1 = HitOver
trigger2 = Vel Y > 0    ;Hit ground
trigger2 = Pos Y >= Const(movement.air.gethit.groundlevel)
value = 5050 ;HITA_FALL

[State 5030, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 5035 ;Air get-hit (transition)

;---------------------------------------------------------------------------
; Air get-hit (transition)
[Statedef 5035]
type    = A
movetype= H
physics = N

[State 5035, 1]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5035)
trigger1 = Anim != [505,5059] ;Not if in hit up anim
trigger1 = Anim != 5090 ;Not if hit off ground anim
value = 5035

[State 5035, 2]
type = VelAdd
trigger1 = time >= 0
y = GetHitVar(yaccel)

[State 5035, 3]
type = ChangeState
triggerall = !HitFall
;triggerall = !var(19)
trigger1 = HitOver  ;Hit is over
trigger2 = AnimTime = 0 ;Animation over
trigger3 = Vel Y > 0    ;Hit ground
trigger3 = Pos Y >= Const(movement.air.gethit.groundlevel)
trigger4 = Time = 0     ;No transition anim
trigger4 = Anim != 5035
value = 5040 ;Air get-hit (recovering in air, not falling)

[State 5035, 4]
type = ChangeState
triggerall = HitFall; || var(19)
trigger1 = HitOver  ;Hit is over
trigger2 = AnimTime = 0 ;Anim is over
trigger3 = Vel Y > 0    ;Hit ground
trigger3 = Pos Y >= Const(movement.air.gethit.groundlevel)
trigger4 = Time = 0     ;No transition anim
trigger4 = Anim != 5035
value = 5050 ;Air get-hit (falling)

;---------------------------------------------------------------------------
; Air get-hit (falling)
[Statedef 5050]
type    = A
movetype= H
physics = N

[State 5050, 1] ;Change anim when done with transition
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim = 5035
trigger2 = Time = 0     ;If no transition anim
trigger2 = Anim != 5035
trigger2 = (Anim != [5051, 5059]) && (Anim != [5061, 5069])
trigger2 = Anim != 5090 ;Not if hit off ground anim
value = 5050


[State 5050, 2] ;Coming down anim
type = ChangeAnim
trigger1 = anim = [5050,5059]
trigger1 = Vel Y >= ifelse(anim = 5050, 1, -2)
;trigger1 = Vel Y >= ifelse(anim = 5050, Const720p(4), Const720p(-8))
trigger1 = SelfAnimExist(anim+10)
value = anim+10
persistent = 0

[State 5050, 3] ;Gravity
type = VelAdd
trigger1 = time>0
y = GetHitVar(yaccel)

[State 5050, 4] ;Recover near ground
type = ChangeState
triggerall = Vel Y > 0
triggerall = Pos Y >= Const(movement.air.gethit.groundrecover.ground.threshold)
triggerall = alive
triggerall = CanRecover
;triggerall = !var(19)
trigger1 = Command = "recovery"
value = 5200 ;Air get-hit (fall recovery on ground)

[State 5050, 5]; Recover in mid air
type = ChangeState
triggerall = Vel Y > Const(movement.air.gethit.airrecover.threshold)
triggerall = alive
triggerall = CanRecover
;triggerall = !var(19)
trigger1 = Command = "recovery"
value = 5210 ;Air get-hit (fall recovery in air)

[State 5050, 6]
type = ChangeState
triggerall = Vel Y > 0
trigger1 = Pos Y >= ifelse((anim = [5051,5059]) || (anim = [5061,5069]), 0, Const(movement.air.gethit.groundlevel))
value = 5100 ;Downed get-hit (hit ground from fall)


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


;---------------------------------------------------------------------------
; Downed get-hit (bounce off ground)
[Statedef 5101]
type    = L
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
type = HitFallVel
trigger1 = Time = 0

[State 5101, 4]
type = PosSet
trigger1 = Time = 0
y = Const(movement.down.bounce.offset.y)

[State 5101, 5]
type = PosAdd
trigger1 = Time = 0
x = Const(movement.down.bounce.offset.x)

[State 5101, 6] ;Acceleration
type = VelAdd
trigger1 = time >= 0
y = Const(movement.down.bounce.yaccel)

[State 5101, 7] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >= Const(movement.down.bounce.groundlevel)
type = ChangeState
value = 5110

; Thanks Ashram
[Statedef 1903]
type = S
ctrl = 0
anim = 9741
velset = 0,0

[State 0, VarSet]
type = VarSet
trigger1 = roundstate = 0
var(0) = 0
[State 0, VarSet]
type = VarSet
trigger1 = roundstate != 0
var(0) = var(0) + 1

[State 191, 1] ;Freeze animation until PreIntro is over
type = ChangeAnim
trigger1 = RoundState = 0
value = 9741
[State 191, 1] ;Freeze animation until PreIntro is over
type = ChangeAnim
trigger1 = RoundState != 0
value = 1903
persistent = 0

[State 191, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro
flag2 = nomusic

[State 0, VarSet] ; 1126
type = VarSet
trigger1 = roundstate = 0
fvar(0) = 1
;persistent = 0
[State 0, VarSet] ; 1126
type = VarSet
trigger1 = roundstate != 0
fvar(0) = fvar(0) * 0.9912
[State 0, VarSet] ; 1126
type = VarSet
trigger1 = roundstate = 0
fvar(1) = 1
[State 0, VarSet] ; 1126
type = VarSet
trigger1 = roundstate != 0
fvar(1) = fvar(1) * 0.9955

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fvar(9) = screenheight / 240.0

[State 0, Explod]
type = Explod
trigger1 = var(0) >= 598
anim = 1923
ID = 1923
pos = 160,0
postype = left
facing = 1
vfacing = 1
bindtime = 1
vel = 0,-0.6
accel = 0,0.00166667
removetime = 150
scale = .5*fvar(9),.5*fvar(9)
ontop = 1
sprpriority = 0
removeongethit = 1
persistent = 0


[State 0, RemoveExplod]
type = AssertSpecial
trigger1 = anim = 1903
trigger1 = numexplod(1923)
flag = invisible

[State 0, Trans]
type = Trans
trigger1 = anim = 1903
trans = add1
;alpha = 256,256
ignorehitpause = 1
[State 0, Offset]
type = Offset
trigger1 = anim = 1903
x = 0
y = 240*fvar(1)
ignorehitpause = 1


[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim != 1930
trigger1 = var(0) >= 1126
value = 1930
elem = 5

[State 0, PlaySnd]
type = PlaySnd
trigger1 = var(0) >= 1
value = 0,75
channel = 1
abspan = 0
persistent = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 1930
value = S0,76
channel = 1
abspan = 0
persistent = 0

[State 0, BGPalFX]
type = BGPalFX
trigger1 = anim != 1930
time = 2
mul = 16+floor(239*fvar(0)),16+floor(239*fvar(0)),64+floor(191*fvar(0))
color = 100+floor(155*fvar(0))
ignorehitpause = 1

[State 0, BGPalFX]
type = BGPalFX
trigger1 = anim = 1930
time = 6
mul = 321,321,321
sinadd = 32,32,32,24
color = 64
ignorehitpause = 1
persistent = 0


[State 191, 3] ;Change to stand state when done
type = ChangeState
trigger1 = anim = 1930
trigger1 = AnimTime = 0
value = 0

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
velset = -6,-9

[State 0, PosAdd]
type = PosAdd
trigger1 = time = 0
x = 0-const(size.head.pos.x)
y = 0-const(size.head.pos.y)

[State 0, VelAdd]
type = VelAdd
trigger1 = time
y = 0.71

[State 5100, 2]
type = ChangeAnim
trigger1 = time = 0
value = 5030;ifelse(selfanimexist(5052),5052,5030)
[State 5100, 2]
type = ChangeAnim
trigger1 = anim = [5030,5039]
trigger1 = animtime = 0
value = ifelse(anim=5030&&selfanimexist(5035),5035,5050)

[State 5100, 7]
type = SelfState
trigger1 = vel y > 0
trigger1 = vel y + pos y >= Const(movement.air.gethit.groundlevel)
value = 5100 ;HIT_LIEDOWN

;------------------
; Hit by Fast Kung Fu Palm - flying through the air
; (a custom gethit state)
[Statedef 1176]
type    = A
movetype= H
physics = N

[State 1026, Velocity]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 1026, Gravity]
type = VelAdd
trigger1 = time > 0
y = gethitvar(yaccel);.88

[State 1026, No scroll]
type = ScreenBound
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist < 65
trigger2 = FrontEdgeBodyDist < 65
value = 1
movecamera = 0,1

[State 1026, Hit wall]
type = ChangeState
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist <= 20
trigger2 = FrontEdgeBodyDist <= 20
value = 1177

[State 1026, Hit ground]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= Const(movement.air.gethit.groundlevel))
value = 5100

;------------------
; Hit by Fast Kung Fu Palm - bounce off wall
; (a custom gethit state)
[Statedef 1178]
type    = A
movetype= H
physics = N

[State 0, PlayerPush]
type = PlayerPush
trigger1 = time >= 0
value = 0
ignorehitpause = 1

[State 1028, Vel Y]
type = VelSet
trigger1 = Time = 0
y = -10.12

[State 1028, Vel X]
type = VelSet
trigger1 = Time = 0
x = 4.7

[State 1028, Turn]
type = Turn
trigger1 = (Time = 0) && (BackEdgeDist < 30)

[State 1028, Gravity]
type = VelSet
trigger1 = time > 0
x = vel x * 0.97
y = vel y+gethitvar(yaccel);.88

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
trigger1 = (Vel y > 0) && (Pos y >= Const(movement.air.gethit.groundlevel))
value = 5100


;------------------
; Hit by Fast Kung Fu Palm - bounce off wall
; (a custom gethit state)
[Statedef 1186]
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
trigger1 = time > 0
y = .88

[State 1028, Anim 5050] ;Self falling animation
type = ChangeAnim
trigger1 = Time = 0
value = ifelse(selfanimexist(5161),5161,5160)

[State 1028, Hit ground]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= Const(movement.down.bounce.groundlevel))
value = 5110

;---------------------------------------------------------------------------
; HIT_BOUNCE (bounce into air)
[Statedef 1217]
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
;x = -1
y = -13.73
[State 5101, 5] ;Acceleration
type = VelAdd
trigger1 = time > 0
y = gethitvar(yaccel)

[State 5101, 6] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >= Const(movement.down.bounce.groundlevel)
type = SelfState
value = 5110

;---------------------------
;Reflecting A Helper projectile
[Statedef 1422]
physics = N
movetype = I
ctrl = 0

[State -2, DEBUG]
type = DisplayToClipboard
trigger1 = 1
text = "sysvar(0) = %d pao pao cafe = %d Buff = %d"; GNDTYPE = %d"
params = sysvar(0),sysvar(0)&2**17,sysvar(1)
ignorehitpause = 1

[State 1580]
type = SelfState
trigger1 = sysvar(0)&2**17
value = sysvar(1)
ctrl = 0

[State 1580]
type = DestroySelf 
trigger1 = IsHelper
trigger1 = time = 5
ignorehitpause = 1

[State 1580]
type = SelfState
trigger1 = !IsHelper
value = 0
ctrl = 1

[State 811, Anim]
Type = ChangeAnim2
Trigger1 = !Time
Value = 9741

;---------------------------
;Special Reflection
[Statedef 1429]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 4

;=======================================;
;PROJECTILE REFLECTION COMPATIBILITY    ;
;?????????????                   ;
;by Vans                                ;
;GUIDE:                                 ;
;FOR REFLECTOR / ??????????HELPER?	;
;sysvar(0) = 262144                  	;
;=======================================;
[State 1000, INFORMATION SHARING] 	;
type = Projectile 			;
trigger1 = sysvar(1)&262144		;
projid = sysvar(0)			;
projanim = 9741			;
projhitanim = -1			;
projremanim = -1			;
projremovetime = 2			;
projscale = 0,0			;
projpriority = 0			;
velocity = 0,0			;
postype = p1			;
offset = 0,0			;
persistent = 0			;
ignorehitpause = 1			;
;=======================================;

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = !time
value = 9741

[State 1211, StateTypeSet]
type = StateTypeSet
trigger1 = root,movetype = H
trigger2 = cond(PlayerIDExist(var(0)),(PlayerID(var(0)),movetype=I),0)
;trigger2 = cond(PlayerIDExist(var(0)),(PlayerID(var(0)),movetype=I),0)
movetype = I        ;I,A,H

[State 200, Punch Attempt Sound]
type = Playsnd
trigger1 = !time
value = 0,12
channel = 3
persistent = 0

[State 1211, PosSet]
type = PosSet
trigger1 = !time || time
trigger1 = PlayerIDExist(var(0))
x = PlayerID(var(0)),Pos X
y = PlayerID(var(0)),Pos Y

[State 1000, DestroySelf]
type = DestroySelf
trigger1 = time > 5
trigger1 = !PlayerIDExist(var(0))
;trigger1 = parent,stateno!=1401

;[State 0, ChangeState]
;type = ChangeState
;trigger1 = time > 5
;trigger1 = !PlayerIDExist(var(0))
;trigger1 = parent,stateno=1401
;value = 1420
;ctrl = 0

;---------------------------------------------------------------------------
; p1 full
[Statedef 3712]
type    = S
movetype= A
physics = N
velset = 0,0
ctrl = 0
anim = 9741

[State 0, StopSnd]
type = StopSnd
trigger1 = time = 0
channel = -1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time >= 0
ignorehitpause = 1
flag = nokosnd
flag2 = nokoslow
flag3 = timerfreeze

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time >= 0
ignorehitpause = 1
flag = nobg
flag2 = nofg
flag3 = nobardisplay

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time >= 0
ignorehitpause = 1
flag = nomusic

[State 0, TargetState]
type = TargetState
triggerall = NumTarget;()
trigger1 = time = 0
value = 3722

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,82

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fvar(0) = screenheight / 720.0

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fvar(1) = 0.5
[State 0, VarSet]
type = VarSet
trigger1 = time
fvar(1) = fvar(1) + 0.001

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 3740
ID = 3740
pos = 160,0
postype = left
facing = facing
vfacing = 1
bindtime = 840
removetime = 840
scale = fvar(0),fvar(0)
;scale = 0.3333,0.3333
sprpriority = 5
ownpal = 1
removeongethit = 1

[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = time = 400
value = -65535
ID = -1
kill = 1
absolute = 1
ignorehitpause = 1

[State 0, Helper]
type = Helper
trigger1 = time = 400
helpertype = normal
name = "ASTRAL FINISH"
ID = 3730
stateno = 3730
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 65535
pausemovetime = 65535

[State 0, TargetState]
type = TargetState
triggerall = NumTarget;()
trigger1 = time >= 840
value = 3470

[State 0, StopSnd]
type = StopSnd
trigger1 = time >= 840
channel = -1

[State 0, ChangeState]
type = ChangeState
trigger1 = time >= 840
value = 0
ctrl = 1

;----------------------------------------------------------------------------
; CONGRATULATIONS!
[Statedef 3730]
type = S
movetype = I
physics = N
ctrl = 0
anim = 9741

[State 0, Helper]
type = Helper
trigger1 = time = 4
helpertype = normal
name = "FLASH"
ID = 3733
stateno = 3733
pos = 0,0
postype = p1
ownpal = 1
supermovetime = 65535
pausemovetime = 65535

[State voice]
type = PlaySnd
trigger1 = time = 1
value = S0,83
abspan = 0

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fvar(9) = screenheight / 240.0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time >= 0
flag = roundnotover
ignorehitpause = 1

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fvar(0) = 1.7
[State 0, VarSet]
type = VarAdd
trigger1 = var(0) = 0
trigger1 = time
fvar(0) = -0.1
[State 0, VarSet]
type = VarAdd
trigger1 = var(0) = 1
trigger1 = time
fvar(0) = 0.0001
[State 0, VarSet]
type = VarSet
trigger1 = var(0) = 0
trigger1 = fvar(0) <= 0.3
var(0) = 1

;[State 0, VarSet]
;type = VarSet
;trigger1 = time = 0
;var(10) = 325
[State 0, VarSet]
type = VarAdd
triggerall = var(11) = 0
trigger1 = time
var(10) = 15
[State 0, VarSet]
type = VarSet
trigger1 = var(11) = 0
trigger1 = var(10) >= 325
var(11) = 1
[State 0, VarSet]
type = VarAdd
triggerall = var(11) = 1
trigger1 = time
trigger1 = var(10) > 255
trigger2 = time >= 160
var(10) = -5
[State 0, VarAdd]
type = VarAdd
trigger1 = time >= 160
fvar(5) = 0.5

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 3731
ID = 3731
pos = 160,ceil(screenheight/2)
postype = left
facing = 1
bindtime = -1
removetime = -1
supermovetime = 65535
pausemovetime = 65535
scale = fvar(0)*fvar(9),fvar(0)*fvar(9)
sprpriority = 855
ontop = 1
ownpal = 0
ignorehitpause = 1
[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 3730
ID = 3730
pos = 160,ceil(screenheight/2)
postype = left
facing = 1
bindtime = -1
removetime = -1
supermovetime = 65535
pausemovetime = 65535
scale = fvar(0)*fvar(9),fvar(0)*fvar(9)
sprpriority = 858
ontop = 1
ownpal = 0
ignorehitpause = 1
[State 0, Explod]
type = Explod
trigger1 = time = 160
anim = 3730
ID = 3732
pos = 160,ceil(screenheight/2)
postype = left
facing = 1
bindtime = -1
removetime = -1
supermovetime = 65535
pausemovetime = 65535
scale = fvar(0)*fvar(9),fvar(0)*fvar(9)
sprpriority = 858
ontop = 1
ownpal = 0
ignorehitpause = 1
[State 0, Explod]
type = ModifyExplod
trigger1 = time
trigger1 = numexplod(3730)
ID = 3730
pos = 160-ceil(fvar(5)),ceil(screenheight/2)
postype = left
bindtime = -1
removetime = -1
scale = fvar(0)*fvar(9),fvar(0)*fvar(9)
ignorehitpause = 1
[State 0, Explod]
type = ModifyExplod
trigger1 = time
trigger1 = numexplod(3732)
ID = 3732
pos = 160+ceil(fvar(5)),ceil(screenheight/2)
postype = left
bindtime = -1
removetime = -1
scale = fvar(0)*fvar(9),fvar(0)*fvar(9)
ignorehitpause = 1
[State 0, Explod]
type = ModifyExplod
trigger1 = time
trigger1 = numexplod(3731)
ID = 3731
pos = 160,ceil(screenheight/2)
postype = left
bindtime = -1
removetime = -1
scale = (fvar(0)+(fvar(5)/400))*fvar(9),fvar(0)*fvar(9)
ignorehitpause = 1
[State 0, PalFX]
type = PalFX
trigger1 = time >= 0
time = 1
mul = var(10),var(10),var(10)
ignorehitpause = 1

[State 0, RemoveExplod]
type = RemoveExplod
triggerall = numexplod(3730)
trigger1 = time >= 160
trigger1 = var(10) <= 0
id = 3730
[State 0, RemoveExplod]
type = RemoveExplod
triggerall = numexplod(3731)
trigger1 = time >= 160
trigger1 = var(10) <= 0
id = 3731
[State 0, RemoveExplod]
type = RemoveExplod
triggerall = numexplod(3732)
trigger1 = time >= 160
trigger1 = var(10) <= 0
id = 3732

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time >= 160
trigger1 = var(10) <= 0


;----------------------------------------------------------------------------
; FLASH!
[Statedef 3733]
type = S
movetype = I
physics = N
ctrl = 0
anim = 9741

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fvar(9) = screenheight / 240.0


[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fvar(0) = 1.7
[State 0, VarSet]
type = VarAdd
trigger1 = var(0) = 0
trigger1 = time
fvar(0) = -0.1
[State 0, VarSet]
type = VarAdd
trigger1 = var(0) = 1
trigger1 = time
fvar(0) = 0.0001
[State 0, VarSet]
type = VarAdd
triggerall = var(0) = 0
trigger1 = time
var(10) = 9
[State 0, VarSet]
type = VarSet
trigger1 = var(0) = 1
var(10) = 300
persistent = 0
[State 0, VarSet]
type = VarAdd
trigger1 = var(0) = 1
var(10) = -5
[State 0, VarSet]
type = VarSet
trigger1 = var(0) = 0
trigger1 = fvar(0) <= 0.3
var(0) = 1
[State 0, VarSet]
type = VarSet
trigger1 = var(0) = 1
fvar(0) = 0.577
persistent = 0


[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 3730
ID = 3733
pos = 160,ceil(screenheight/2)
postype = left
facing = 1
bindtime = -1
removetime = -1
supermovetime = 65535
pausemovetime = 65535
scale = fvar(0)*fvar(9),fvar(0)*fvar(9)
sprpriority = 860
ontop = 1
ownpal = 0
ignorehitpause = 1
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = var(0) = 1
trigger1 = numexplod(3733)
id = 3733
ignorehitpause = 1
persistent = 0
[State 0, Explod]
type = Explod
trigger1 = var(0) = 1
trigger1 = !numexplod(3733)
anim = 3733
ID = 3733
pos = 160,ceil(screenheight/2)
postype = left
facing = 1
bindtime = -1
removetime = -1
supermovetime = 65535
pausemovetime = 65535
scale = fvar(0)*fvar(9),fvar(0)*fvar(9)
sprpriority = 860
ontop = 1
ownpal = 0
ignorehitpause = 1
persistent = 0
[State 0, Explod]
type = ModifyExplod
trigger1 = time
trigger1 = numexplod(3733)
ID = 3733
pos = 160,ceil(screenheight/2)
postype = left
bindtime = -1
removetime = -1
scale = fvar(0)*fvar(9),fvar(0)*fvar(9)
ignorehitpause = 1
[State 0, PalFX]
type = PalFX
trigger1 = time >= 0
time = 1
mul = var(10),var(10),var(10)
ignorehitpause = 1

[State 0, RemoveExplod]
type = RemoveExplod
triggerall = numexplod(3733)
trigger1 = var(0) = 1
trigger1 = var(10) <= 0
id = 3733

[State 0, DestroySelf]
type = DestroySelf
trigger1 = var(0) = 1
trigger1 = var(10) <= 0

;---------------------------------------------------------------------------
; SUPER BG
[Statedef 2990]
type    = A
movetype= I
physics = N
velset = 0,0
anim = 9741
ctrl = 0
sprpriority = 0

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 920
ID = 920
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
pausemovetime = 65535
supermovetime = 65535
scale = .5,.5
sprpriority = -11
ownpal = 1
[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 921 + ((parent,stateno=[3300,3699])) + ((parent,stateno=[3400,3699]))
ID = 921
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
pausemovetime = 65535
supermovetime = 65535
scale = .5,.5
sprpriority = 11
ownpal = 1


[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,16
abspan = 0
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
trigger1 = ((parent,stateno=[3400,3699]))
value = S0,28
abspan = 0
[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time = [0,29]
flag = nomusic
flag2 = noBG
flag3 = noFG
ignorehitpause = 1

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fvar(0) = 1
[State 0, VarSet]
type = VarSet
trigger1 = time
fvar(0) = fvar(0) * 0.6

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fvar(2) = 0.5;0.3125;0.625
[State 0, VarSet]
type = VarAdd
trigger1 = time
fvar(3) = 0.001
[State 0, VarSet]
type = VarAdd
trigger1 = time
fvar(2) = fvar(3)
[State 0, VarSet]
type = VarSet
trigger1 = time
fvar(4) = ifelse(fvar(4)+0.0333333>=1,1,fvar(4)+0.0333333)

[State 0, VarSet]
type = VarSet
trigger1 = (time%10) = 0
fvar(12) = 0.1
[State 0, VarSet]
type = VarSet
trigger1 = time
fvar(12) = fvar(12) * 0.4

[State 0, VarSet]
type = VarSet
trigger1 = time >= 0
fvar(10) = -640+random%1280
[State 0, VarSet]
type = VarSet
trigger1 = time >= 0
fvar(11) = -640+random%1280

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fvar(8) = 1
[State 0, VarSet]
type = VarSet
trigger1 = time
fvar(8) = fvar(8) * 0.9

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 2990
ID = 2990
pos = 160,floor(screenheight/2)
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = 30
pausemovetime = 65535
supermovetime = 65535
scale = fvar(2),0.5
sprpriority = -64
ownpal = 1
ignorehitpause = 1
[State 0, Explod]
type = ModifyExplod
trigger1 = numexplod(2990)
ID = 2990
pos = 160,floor(screenheight/2)
postype = left
facing = 1
vfacing = 1
bindtime = -1
scale = fvar(2),0.5
sprpriority = -64
ownpal = 1
ignorehitpause = 1

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fvar(14) = screenheight

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 2995
ID = 2995
pos = 160,floor(screenheight/2)
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = 30
pausemovetime = 65535
supermovetime = 65535
scale = (.5)*(fvar(14)/240),(.5+fvar(8))*(fvar(14)/240)
sprpriority = -60
ownpal = 1
ignorehitpause = 1
[State 0, Explod]
type = ModifyExplod
trigger1 = numexplod(2995)
ID = 2995
pos = 160,floor(screenheight/2)
postype = left
facing = 1
vfacing = 1
bindtime = -1
scale = (.5)*(fvar(14)/240),(.5+fvar(8))*(fvar(14)/240)
sprpriority = -60
ownpal = 1
ignorehitpause = 1


[State 0, DestroySelf]
type = DestroySelf
trigger1 = !numexplod(2990)

;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------

[Statedef -2]

[State -2, Reset just in case]
type = VarSet
trigger1 = time = [0,1]
var(28) = 0
ignorehitpause = 1

[State -2, Did I do that]
type = Helper
trigger1 = numhelper(6101) = 0
trigger1 = drawgame
trigger1 = !alive
helpertype = normal
name = "Not Steve Urkel"
pos = -52-backedgedist,0
postype = p1
ID = 6101
stateno = 6101
ownpal = 1
supermovetime = 65535
pausemovetime = 65535
ignorehitpause = 1
facing = 1

[State -2, i feel good]
trigger1 = animelem = 2
trigger1 = anim = 5052
type = PlaySnd
value = 0,11
channel = 7

[State -2, WHAT ARE YOU LOOKIN AT]
trigger1 = animelem = 2
trigger1 = anim = 5889
type = PlaySnd
value = 2,18
channel = 0

[State -2, Collapse sound]
type = PlaySnd
trigger1 = anim = 5950 || anim = 5955
trigger1 = animelemtime(5) = 0
trigger2 = anim = 5131
trigger2 = animelemtime(1) = 1
value = 7,0
[State -2, Collapse Explod]
type = Explod
trigger1 = anim = 5950 || anim = 5955
trigger1 = animelemtime(5) = 0
trigger2 = anim = 5131
trigger2 = animelemtime(1) = 1
anim = 970
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
;pausemovetime = 65535
scale = .5,.5
sprpriority = -4
ownpal = 1
[State -2, Collapse Explod]
type = Explod
trigger1 = anim = 5950 || anim = 5955
trigger1 = animelemtime(5) = 0
trigger2 = anim = 5131
trigger2 = animelemtime(1) = 1
anim = 971
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
;pausemovetime = 65535
scale = .5,.5
sprpriority = 7
ownpal = 1
[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 5950 || anim = 5955
trigger1 = animelemtime(10) = 0
trigger2 = anim = 5131
trigger2 = animelemtime(6) = 0
value = 7,1

; if you're making a 10ov.st and copied the statedef -2 in it's entirety, uncomment this strcl so e.g. the hitpauses in both mugen versions would be the same
[State ME AM USING 1.0]
type = VarSet
trigger1 = var(49) != 1
var(49) = 1
ignorehitpause = 1

[State -2, Cancel First Attack after getting hit]
type = VarSet
triggerall = var(30) = 0
triggerall = numenemy
trigger1 = (enemy,movecontact >= 1 || enemy,projcontact >= 1) && (!enemy,moveguarded)
var(30) = -1
ignorehitpause = 1
[State -2, First Attack Power Bonus]
type = PowerAdd
triggerall = var(30) = 0
triggerall = stateno != [3000,3999]
trigger1 = (movecontact >= 1 || projcontact >= 1) && (!moveguarded)
trigger2 = numhelper(1000)
trigger2 = helper(1000),movehit
trigger3 = numhelper(1305)
trigger3 = helper(1305),movehit
;trigger2 = projhittime = 0
;trigger2 = p2movetype = H
;trigger2 = movetype = A
;trigger2 = p2stateno != [120,169]
;trigger2 = projhittime = 1
value = 150
ignorehitpause = 1
[State -2 Send the message (First Attack)]
type = Varset
triggerall = var(30) = 0
trigger1 = (movecontact >= 1 || projcontact >= 1) && (!moveguarded)
trigger2 = numhelper(1000)
trigger2 = helper(1000),movehit
trigger3 = numhelper(1305)
trigger3 = helper(1305),movehit
trigger4 = numhelper(3300)
trigger4 = helper(3300),movehit
;trigger2 = p2movetype = H
;trigger2 = movetype = A
;trigger2 = p2stateno != [120,169]
;trigger2 = projhittime = 1
var(37) = var(37) | floor(exp(2*ln(2)) + 0.5)
ignorehitpause = 1
[State -2 First Attack SET]
type = VarSet
triggerall = var(30) = 0
trigger1 = (movecontact >= 1 || projcontact >= 1) && (!moveguarded)
trigger2 = numhelper(1000)
trigger2 = helper(1000),movehit
trigger3 = numhelper(1305)
trigger3 = helper(1305),movehit
trigger4 = numhelper(3300)
trigger4 = helper(3300),movehit
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
trigger1 = time >= 0
var(22) = ifelse(moveguarded=1,var(22)+1,0)
ignorehitpause = 1
[State -2, FirstHit]
type = VarSet
trigger1 = time >= 0
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
[State -2, Witty Counter Commentary]
type = PlaySnd
triggerall = movetype != H
triggerall = stateno != 710
triggerall = stateno != 1210
trigger1 = !enemynear,movereversed
trigger1 = var(31) = 1
trigger1 = var(21) = 1
value = S207,random%10
channel = 0
lowpriority = random%2
ignorehitpause = 1
[State -2 Send the message]
type = Varset
trigger1 = !enemynear,movereversed
trigger1 = var(31) = 1
trigger1 = var(21) = 1
var(37) = var(37) | floor(exp(0*ln(2)) + 0.5)
ignorehitpause = 1

;[State P2Soundcode nope]
;type = VarSet
;trigger1 = 1
;var(33) = 0
;ignorehitpause = 1
;[State P2Soundcode WHAM-obsolete due to a helper handling it]
;type = VarSet
;trigger1 = (numtarget)
;trigger1 = (target,stateno = 1307)
;trigger1 = (target,time = 1)
;trigger1 = (target,movetype = H)
;var(33) = 1
;ignorehitpause = 1

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

[State -2, Pain Sound]
type = PlaySnd
triggerall = alive
;triggerall = random < 500
;triggerall = anim != 70851
trigger1 = (stateno = 5001) || (stateno = 5011) || (stateno = 5021) || (stateno = 5070)
trigger1 = time = 1
trigger2 = (stateno != [5000,5001]) && (stateno != [5010,5011]) && (stateno != [5020,5021]) && (stateno != 5070)
trigger2 = stateno != [120,160]
trigger2 = gethitvar(damage)
value = 5000,random%2
;volume = 255
channel = 0
ignorehitpause = 1

[State -2, Block Commentary]
type = PlaySnd
trigger1 = stateno = 150 || stateno = 152 || stateno = 154
trigger1 = time = 1
trigger1 = random < 500
trigger1 = roundstate < 3
value = 120,random%13
channel = 0
lowpriority = 1
;volume = 255

[State -2, Get up stand up]
type = PlaySnd
trigger1 = stateno = 5120
trigger1 = time = 1
trigger1 = random < 500
trigger1 = roundstate < 3
value = 5120,random%19
channel = 0
lowpriority = 1
;volume = 255

[State -2 Helper for various stuff]
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
;trigger2 = numtarget
;trigger2 = (target,statetype != A) && (target,statetype != L)
var(41) = 0
ignorehitpause = 1
[State -2, Neo-Juggle-System-Reset]
type = VarSet
triggerall = var(42)
trigger1 = !numtarget
;trigger2 = numtarget
;trigger2 = (target,statetype != A) && (target,statetype != L)
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

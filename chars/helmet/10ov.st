; 1.0 states

;---------------------------------------------------------------------------
; KO Voice
[Statedef 179]
type = S
ctrl = 0
anim = 9741
velset = 0,0

; Drive bar

[State Create Drive BG]
type = Explod
trigger1 = !numexplod(4010)
anim = 4010
ID = 4010
pos = ifelse(teamside=1,16,320-16),ceil(gameheight+(parent,fvar(33)) )
postype = left
facing = ifelse(teamside=1,1,-1)
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = 65535
supermovetime = 65535
scale = 1,1
sprpriority = 500
ontop = 1
ownpal = 1
ignorehitpause = 1
[State Set Drive Max scale]
type = VarSet
trigger1 = time = 0 || time
fvar(20) = .25 * (parent,var(59) + 1)
[State Create Drive Max]
type = Explod
trigger1 = !numexplod(4011)
anim = 4011
ID = 4011
pos = ifelse(teamside=1,16,320-16),ceil(gameheight+(parent,fvar(33)) )
postype = left
facing = ifelse(teamside=1,1,-1)
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = 65535
supermovetime = 65535
scale = fvar(20),1
sprpriority = 501
ontop = 1
ownpal = 1
ignorehitpause = 1
[State Modify Drive Max]
type = ModifyExplod
trigger1 = numexplod(4011)
ID = 4011
pos = ifelse(teamside=1,16,320-16),ceil(gameheight+(parent,fvar(33)) )
postype = left
facing = ifelse(teamside=1,1,-1)
scale = fvar(20),1
ignorehitpause = 1
[State Set Drive Cur scale]
type = VarSet
trigger1 = time = 0 || time
fvar(21) = (parent,fvar(39) / 2000)
[State Create Drive Cur]
type = Explod
trigger1 = !numexplod(4012)
anim = 4012
ID = 4012
pos = ifelse(teamside=1,16,320-16),ceil(gameheight+(parent,fvar(33)) )
postype = left
facing = ifelse(teamside=1,1,-1)
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = 65535
supermovetime = 65535
scale = fvar(21),1
sprpriority = 501
ontop = 1
ownpal = 1
ignorehitpause = 1
[State Modify Drive Cur]
type = ModifyExplod
trigger1 = numexplod(4012)
ID = 4012
pos = ifelse(teamside=1,16,320-16),ceil(gameheight+(parent,fvar(33)) )
postype = left
facing = ifelse(teamside=1,1,-1)
scale = fvar(21),1
ignorehitpause = 1


;

[State WHAM Timer]
type = VarSet
trigger1 = (parent,var(33)=0)
v = 32
value = 0
ignorehitpause = 1
[State WHAM Timer]
type = VarAdd
trigger1 = (parent,var(33)=1)
v = 32
value = 1
ignorehitpause = 1
[State WHAM]
type = PlaySnd
trigger1 = var(32) = 1
value = S7,2
freqmul = 1.0
abspan = 0
ignorehitpause = 1

[State Charge Sound]
type = PlaySnd
trigger1 = parent,stateno = 1210
trigger1 = parent,anim = 1212
value = S0,52+(parent,var(1))
freqmul = 1.0
channel = 6
lowpriority = 1
abspan = 0
ignorehitpause = 1
[State Stop Charge Sound]
type = StopSnd
trigger1 = parent,stateno = 1210
trigger1 = parent,anim != 1212
trigger2 = parent,stateno = 1213
trigger3 = parent,stateno = 1218
channel = 6
ignorehitpause = 1

[State Hyper Combo Finish]
type = ParentVarSet
triggerall = winko
triggerall = roundstate = 3
trigger1 = parent,stateno = [3000,3700]
trigger1 = parent,numtarget
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

[State DRIVE CANCEL]
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
pos = ifelse(teamside=1,64,256),100
postype = left
bindtime = -1
;removetime = 150
removetime = -1
supermovetime = 65535
pausemovetime = 65535
scale = 1,fvar(13)
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
scale = 1,fvar(13)
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
trigger2 = anim = [25,26]
trigger2 = command != "holdfwd"
trigger2 = command != "holdback"
value = 11

[State 11, 1] ;Change from turning animation
type = ChangeAnim
trigger1 = anim != ifelse(command="holdfwd",25,26)
trigger1 = anim != 6
trigger1 = command = "holdfwd" || command = "holdback"
value = ifelse(command="holdfwd",25,26)

[State 11, 2] ;Stop moving if low velocity
type = VelSet
trigger1 = anim = [25,26]
trigger1 = animelemtime(2) >= 0
x = ifelse(anim=25,1,-1)

[State 11, 2] ;Stop moving if low velocity
type = VelSet
trigger1 = abs(vel x) < Const(movement.crouch.friction.threshold)
x = 0

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

[Statedef 821]
type    = A
movetype= H
physics = N
;velset = -6,-6

;[State 0, PosAdd]
;type = PosAdd
;trigger1 = time = 0
;x = 0-const(size.mid.pos.x)
;y = 0-const(size.mid.pos.y)

[State 0, PosFreeze]
type = PosFreeze
trigger1 = time = [0,10]
value = 1

[State 0, VelSet]
type = VelSet
trigger1 = time = 10
x = -8
y = -6

[State 0, VelAdd]
type = VelAdd
trigger1 = time > 10
y = 0.79

[State 5100, 2]
type = ChangeAnim
trigger1 = time = [0,10]
value = 5030;ifelse(selfanimexist(5052),5052,5030)
[State 5100, 2]
type = ChangeAnim
trigger1 = time > 10
trigger1 = anim = [5030,5039]
trigger1 = animtime = 0
value = ifelse(anim=5030&&selfanimexist(5035),5035,5050)

[State 5100, 7]
type = SelfState
triggerall = time > 10
trigger1 = vel y > 0
trigger1 = vel y + pos y >= Const(movement.air.gethit.groundlevel)
value = 5100 ;HIT_LIEDOWN

[Statedef 851]
type    = A
movetype= H
physics = N
;velset = -6,-6

[State 5100, 2]
type = ChangeAnim
trigger1 = time = [0,10]
value = ifelse(selfanimexist(5052),5052,5050)
[State 5100, 2]
type = ChangeAnim
trigger1 = time > 10
trigger1 = anim = [5030,5039]
trigger1 = animtime = 0
value = ifelse(anim=5030&&selfanimexist(5035),5035,5050)


[State 0, PosAdd]
type = PosAdd
trigger1 = time = 0
x = 0-const(size.mid.pos.x)
y = 0-const(size.mid.pos.y)

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = -9
y = -5

[State 0, VelAdd]
type = VelAdd
trigger1 = time > 0
y = 0.79

[State 5100, 7]
type = SelfState
triggerall = time > 10
trigger1 = vel y > 0
trigger1 = vel y + pos y >= Const(movement.air.gethit.groundlevel)
value = 5100 ;HIT_LIEDOWN

;------------------
; Hit by Fast Kung Fu Palm - bounce off wall
; (a custom gethit state)
[Statedef 1208]
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

[State 1028, Hit ground]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= Const(movement.air.gethit.groundlevel))
value = 5100

;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------

[Statedef -2]

[State ME AM USING 1.0]
type = VarSet
trigger1 = var(49) != 1
var(49) = 1
ignorehitpause = 1

; Drive system stuff
[State Drive Max Power Up]
type = Null
trigger1 = power >= 1000 && var(59) < 1
trigger1 = (var(59):=1)
trigger2 = power >= 2000 && var(59) < 2
trigger2 = (var(59):=2)
trigger3 = power >= 3000 && var(59) < 3
trigger3 = (var(59):=3)
ignorehitpause = 1
[State Drive Accel Regen]
type = VarSet
trigger1 = roundstate = 2
fvar(38) = ifelse(fvar(38)+0.002>=1.5,1.5,fvar(38)+0.002)
;ignorehitpause = 1
[State Drive Cur Regen]
type = VarSet
trigger1 = roundstate = 2
fvar(39) = ifelse(fvar(39)+fvar(38)>=500*(var(59)+1),500*(var(59)+1),fvar(39)+fvar(38))
[State Drive Taunt Bonus]
type = VarSet
trigger1 = stateno = 195
fvar(39) = ifelse(fvar(39)+2>=500*(var(59)+1),500*(var(59)+1),fvar(39)+2)
[State Drive Cur Hit Bonus]
type = VarSet
trigger1 = var(21)=1 || var(22) = 1
trigger1 = (prevstateno != [1000,1500]) || (stateno != [1000,1500])
;trigger1 = numtarget
fvar(39) = ifelse(fvar(39)+50>=500*(var(59)+1),500*(var(59)+1),fvar(39)+50)
;fvar(39) = ifelse(fvar(39)+abs(target,gethitvar(damage))>=500*(var(59)+1),500*(var(59)+1),fvar(39)+abs(target,gethitvar(damage)))
ignorehitpause = 1
[State Drive Cur Damage Bonus]
type = VarSet
trigger1 = gethitvar(damage)
;trigger1 = numtarget
fvar(39) = ifelse(fvar(39)+gethitvar(damage)>=500*(var(59)+1),500*(var(59)+1),fvar(39)+gethitvar(damage))
;fvar(39) = ifelse(fvar(39)+abs(target,gethitvar(damage))>=500*(var(59)+1),500*(var(59)+1),fvar(39)+abs(target,gethitvar(damage)))
ignorehitpause = 1
[State Drive Cur Spec Whif]
type = VarSet
trigger1 = time = 1
trigger1 = prevstateno != [1000,1500]
trigger1 = stateno = [1000,1500]
trigger1 = (stateno%10)=0
;trigger1 = numtarget
fvar(39) = ifelse(fvar(39)+50>=500*(var(59)+1),500*(var(59)+1),fvar(39)+50)
;fvar(39) = ifelse(fvar(39)+abs(target,gethitvar(damage))>=500*(var(59)+1),500*(var(59)+1),fvar(39)+abs(target,gethitvar(damage)))
ignorehitpause = 1

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
trigger1 = (target,stateno = 1207)
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
trigger1 = (stateno = 5000) || (stateno = 5010) || (stateno = 5020) || (stateno = 5070)
trigger1 = time = 0
trigger2 = (stateno != 5000) && (stateno != 5010) && (stateno != 5020) && (stateno != 5070)
trigger2 = stateno != [120,160]
trigger2 = gethitvar(damage)
value = 5000,random%(3+(gethitvar(animtype)>=1)+(gethitvar(animtype)>=2) )
;volume = 255
channel = 0
ignorehitpause = 1


[State 0, ]
type = PlaySnd
trigger1 = stateno = 5120
trigger1 = time = 1
;trigger1 = random < 500
trigger1 = roundstate < 3
value = 0,46
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
triggerall = stateno != 3300
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

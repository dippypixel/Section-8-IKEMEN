; _________________________________________
;| Character by JStudios2k, Edited from Cattigan619 and Elmofan17                |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;========================================<SUPER MOVES>========================================
;==============================================================================================

;---------------------------------------------------------------------------
;Fridge Technique #49: Dodjball Derby
[Statedef 3000]
type=S
physics=N
movetype=A
ctrl=0
velset=0,0
sprpriority=1
poweradd=-1000
facep2=1

[State 3000, Portrait]
type = VarSet
trigger1 = !Time
var(1) = 1

[State 3000, Anim]
type=changeanim
trigger1=!time
value=3000

[state 3000,Posset]
type=posset
trigger1=!time
y=0

[State 3000, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "x" || command = "rlsx"), 0, ifElse((command = "y" || command = "rlsy"), 1, 2))

[State 3000, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 3000, Super Cancel Flag]
type = varset
trigger1 = !time
var(21) = ((prevstateno = [1000, 2999]) && var(7)) || var(20)

[State 3000, Hyper Cancel Flag]
type = varset
trigger1 = !time
var(22) = (prevstateno = [3000, 4999]) && var(8)

[State 3000, CC Reset]
type = palfx
trigger1 = !time
trigger1 = !(var(20) := 0)
time = 1

[State 3000, Corner Push]
type = varset
trigger1 = time = 3
fvar(5) = 0

[State 3000, Super Cancel Flash]
type = palfx
trigger1 = var(21) || var(22)
trigger1 = !(time % 2) && time <= 12
time = 1
add = 255, 255, 255
ignorehitpause = 1

[State 3000, Super Cancel Juggle]
type = varset
trigger1 = !time
trigger1 = var(21) || var(22)
var(15) = 0
ignorehitpause = 1

[State 3000, Superpause FX]
type = helper
trigger1 = Time = 3
stateno = 8500
ID = 8500
name = "Superpause FX"
postype = p1
pos = 10, -60
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3000, Superpause]
type = superpause
trigger1 = Time = 3
time = 40
movetime = 40
p2defmul = 1
unhittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 0, DODGEBALL!]
type = PlaySnd
trigger1 = time = 3
value = S3000,0

[State 1000, BOOM]
type = helper
trigger1 = animelemtime(4) = 0
helpertype = normal
stateno = 3005
ID = 3005
name = "DODGEBALL"
postype = p1
pos = 40, -33
size.xscale = 0.6
size.yscale = 0.6
ownpal = 1

[State 3000, Connect]
type = ChangeState
trigger1 = helper(3005),var(3)
value = 3001

[State 3000, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 0
ctrl = 1

;BOOM
[Statedef 3001]
type=S
physics=S
movetype=A
ctrl=0
velset=0,0
sprpriority=1
poweradd=72*!var(20)
facep2=1

[state 1000,Posset]
type=posset
trigger1=!time
y=0

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = !Time 
value = 3001

[State 1000, BOOM 1 POINT]
type = PlaySnd
trigger1 = !TIME && anim = 3001
value = 3000,1
channel = 0

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = !AnimTime && anim = 3001
value = 3002

[State 1000, BOOM 2 POINTS]
type = PlaySnd
trigger1 = animelemtime(1) = 0 && anim = 3002
value = 3000,2
channel = 0

[State 3000, Dodgeball again]
type = helper
trigger1 = animelemtime(1) = 0 && anim = 3002
helpertype = normal
stateno = 3005
ID = 3005
name = "Dodgeball"
postype = p1
pos = 40, -33
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 1000, ChangeState]
type = ChangeState
trigger1 = !animtime && anim = 3002
value = 3002

;BOOMBOOMBOOMBOOM
[Statedef 3002]
type=S
physics=S
movetype=A
ctrl=0
velset=0,0
sprpriority=1
poweradd=0
facep2=1

[state 1000,Posset]
type=posset
trigger1=!time
y=0

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = !Time 
value = 3003

[State 1000, BOOM]
type = PlaySnd
trigger1 = animelem = 1 || animelem = 5 || animelem = 9 || animelem = 13
trigger2 = animelem = 17 || animelem = 21
value = 3000,3

[State 3000, DodgeballS]
type = helper
trigger1 = animelem = 1 || animelem = 5 || animelem = 9 || animelem = 13
trigger2 = animelem = 17
helpertype = normal
stateno = 3005
ID = 3005
name = "Dodgeball"
postype = p1
pos = 40, -33
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1
[State 3000, Last Dodgeball]
type = helper
trigger1 = animelem = 21
helpertype = normal
stateno = 3007
ID = 3005
name = "Dodgeball"
postype = p1
pos = 40, -33
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 1000, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Super Target Custom 1
[Statedef 3020]
type=S
movetype=H
physics=N
ctrl=0
velset=0,0
sprpriority=0
facep2=1

[State 3020, Remove Explods]
type=RemoveExplod
trigger1=IsHelper
[State 3320, Destroy Helpers]
type=DestroySelf
trigger1=IsHelper
[State 3020, VelSet]
type = VelSet
trigger1 =!time 
x = -1
[State 3020, VelMul]
type = VelMul
trigger1 = 1
x = .5
[State 3020, VelSet]
type = VelSet
trigger1 =time>12
x = 0

[State 3020, HitBy]
type=HitBy
trigger1=1
value=SA,HA,HP
time=1
ignorehitpause =1


[State 3020, HitFallSet]
type=HitFallSet
trigger1=1
value=0
[State 3020, PosSet]
type=PosSet
trigger1=!time
y=0
[State 3020, Width]
type = Width
trigger1 = 1
edge = 0,10
[State 3020, ChangeAnim]
type=ChangeAnim2
trigger1=!time
value=3020

[State 3020, SelfState]
type=SelfState
trigger1=!animtime
value=0
ctrl=1
;---------------------------------------------------------------------------
;Super Target Custom 2
[Statedef 3021]
type=S
movetype=H
physics=N
ctrl=0
velset=0,0
sprpriority=0
facep2=1

[State 3021, Remove Explods]
type=RemoveExplod
trigger1=IsHelper
[State 3321, Destroy Helpers]
type=DestroySelf
trigger1=IsHelper
[State 3021, VelSet]
type = VelSet
trigger1 =!time 
x = -1
[State 3021, VelMul]
type = VelMul
trigger1 = 1
x = .5
[State 3021, VelSet]
type = VelSet
trigger1 =time>12
x = 0

[State 3021, HitBy]
type=HitBy
trigger1=1
value=SA,HA,HP
time=1
ignorehitpause =1

[State 3021, HitFallSet]
type=HitFallSet
trigger1=1
value=0
[State 3021, PosSet]
type=PosSet
trigger1=!time
y=0
[State 3021, Width]
type = Width
trigger1 = 1
edge = 0,10
[State 3021, ChangeAnim]
type=ChangeAnim2
trigger1=!time
value=3021

[State 3021, SelfState]
type=SelfState
trigger1=!animtime
value=0
ctrl=1
;---------------------------------------------------------------------------
;Super Target Custom 3
[Statedef 3022]
type    = A
movetype= H
physics = N
ctrl = 0
velset = -3,-9
sprpriority = 1
facep2=1

[State 3022, ChangeAnim2]
type = ChangeAnim2
trigger1 = !time
value = 3022 
[State 3022, VelAdd]
type = VelAdd
trigger1 =1
y = .4

[State 3022, HitBy]
type=HitBy
trigger1=1
value=SA,HA,HP
time=1
ignorehitpause =1

[State 3022, hit ground] 
type = SelfState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 5100 
;---------------------------------------------------------------------------
;Super Target Custom 4
[Statedef 3023]
type    = A
movetype= H
physics = N
ctrl = 0
velset = -10,-5.5
sprpriority = 1
facep2=1

[State 3023, AngleDraw]
type = AngleDraw
trigger1 = Pos Y < -1
value = time*22
[State 3023, AngleDraw]
type = AngleDraw
trigger1 = Pos Y >= -1
value = 0

[State 3023, ChangeAnim2]
type = ChangeAnim2
trigger1 = !time
value = 3023
[State 3023, VelAdd]
type = VelAdd
trigger1 =1
y = .35

[State 3023, HitBy]
type=HitBy
trigger1=1
value=SA,HA,HP
time=1
ignorehitpause =1

[State 3023, hit ground] 
type = SelfState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 5100 

;---------------------------------------------------------------------------
;Fridge Technique #37: Spray n' Pray
[StateDef 3050]
type=S
movetype=A
physics=N
poweradd=-2000
ctrl=0
velset=0,0
sprpriority=1
facep2=1

[State 3000, Portrait]
type = VarSet
trigger1 = !Time
var(1) = 1

[State 3050, Anim]
type=changeanim
trigger1=!time
value=3050

[state 3050,Posset]
type=posset
trigger1=!time
y=0
[state 3050,Posadd]
type=posadd
trigger1=time=[0,11]
x=-7

[State 3050, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 3050, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3050, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3050, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3050, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3050, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 40

[State 3050, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3050, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3050, Super Pause FX]
type = Helper
trigger1 = Time = 25
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = 3, -40
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=25
value = S8500,0

[State 3050, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 45
moveTime = 45
p2DefMul = 1
unHittable = 1
anim = -1
darken = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S3050,0

[State 0, THUD]
type = PlaySnd
trigger1 = animelem = 3
value =820,1
[State 0, EnvShake]
type = EnvShake
trigger1 = animelemtime(3)=0
time = 6
freq = 120
ampl = -6

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 7
value = S3050,1

[State 3300, Recticule]
type = helper
trigger1 = animelemtime(8)=-1
trigger1 = animelemtime(41)<0
name = "Reticule"
ID = 3051
stateno = 3051
ownpal = 1
facing = 1

[State 3300, AIMBOT]
type = helper
trigger1 = animelemtime(8)>=0 && time%(10-floor(time*0.05))=0
trigger1 = animelemtime(41)<0
name = "Bullets"
ID = 3055
pos = 0+random%4,-39-random%20
postype = p1
stateno = 3055
ownpal = 1
facing = 1
size.xscale = 1
size.yscale = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(41) = 8
value = 0, 1001
[State 0, PalFX]
type = PalFX
trigger1 = animelemtime(41) = [8,15]
time = 1
add = 256-(time-124)*16,256-(time-124)*16,256-(time-124)*16

[State 3300, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(8) = 1
value = S1,13
channel = 7
loop = 1

[State 0, StopSnd]
type = StopSnd
trigger1 = animelemtime(41) = 8
channel = 7
;ignorehitpause = 
;persistent = 

[State 3050, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---CUSTOM MADE FOR HEAVEN, IN HEAVEN (thank Nitori Kawashiro)---
; Air get-hit (shaking)
[Statedef 5570]
type    = A
movetype= H
physics = N
velset = 0,0

[State 5570, Post Juggle]
type = HitBy
triggerall = numenemy
trigger1 = enemy,var(10) > 240
time = 600
value = SCA,HA,HP,HT
ignorehitpause = 1

[State 5570, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = cond((GetHitVar(airtype) = 1),5000,5010) + GetHitVar(animtype)

[State 5570, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = 5030

[State 5570, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype) ;5051 - 4 + type

[State 5570, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 5570, 5]
type = ChangeState
trigger1 = HitShakeOver
value = 5571

;---------------------------------------------------------------------------
; Air get-hit (knocked away)
[Statedef 5571]
type    = A
movetype= H
physics = N
ctrl = 0

[State 5571, 1]
type = ChangeAnim
trigger1 = Anim != [5000, 5199]
trigger1 = SelfAnimExist(5030)
value = 5030

[State 5571, 2]
type = VelAdd
trigger1 = 1
y = 0.48

[State 5571, 3]
type = VelSet
trigger1 = Time = 0
x = gethitvar(xvel)*facing
y = gethitvar(yvel)

[State 5571, 5]
type = ChangeState
trigger1 = HitOver
trigger2 = Vel Y > 0    ;Hit ground
trigger2 = Pos Y >= Const(movement.air.gethit.groundlevel)
value = 5573 ;HITA_FALL

[State 5571, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 5572 ;Air get-hit (transition)

;---------------------------------------------------------------------------
; Air get-hit (transition)
[Statedef 5572]
type    = A
movetype= H
physics = N

[State 5572, 1]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5035)
trigger1 = Anim != [5051,5059] ;Not if in hit up anim
trigger1 = Anim != 5090 ;Not if hit off ground anim
value = 5035

[State 5572, 2]
type = VelAdd
trigger1 = 1
y = 0.48

[State 5572, 4]
type = ChangeState
trigger1 = AnimTime = 0 ;Anim is over
trigger2 = Vel Y > 0    ;Hit ground
trigger2 = Pos Y >= Const(movement.air.gethit.groundlevel)
trigger3 = Time = 0     ;No transition anim
trigger3 = Anim != 5035 ;.
value = 5573 ;Air get-hit (falling)

;---------------------------------------------------------------------------
; Air get-hit (falling)
[Statedef 5573]
type    = A
movetype= H
physics = N

[State 5573, 1] ;Change anim when done with transition
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim = 5035
trigger2 = Time = 0     ;If no transition anim
trigger2 = Anim != 5035
trigger2 = (Anim != [5051, 5059]) && (Anim != [5061, 5069])
trigger2 = Anim != 5090 ;Not if hit off ground anim
value = 5050

[State 5573, 2] ;Coming down anim
type = ChangeAnim
trigger1 = anim = [5050,5059]
trigger1 = Vel Y >= cond(anim = 5050, Const720p(4), Const720p(-8))
trigger1 = SelfAnimExist(anim+10)
value = anim+10
persistent = 0

[State 5573, 3] ;Gravity
type = VelAdd
trigger1 = 1
y = 0.48

[State 5573, 4] ;Recover near ground
type = SelfState
triggerall = Vel Y > 0
triggerall = Pos Y >= Const(movement.air.gethit.groundrecover.ground.threshold)
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;Air get-hit (fall recovery on ground)

[State 5573, 5]; Recover in mid air
type = SelfState
triggerall = Vel Y > Const(movement.air.gethit.airrecover.threshold)
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210 ;Air get-hit (fall recovery in air)

[State 5573, 6]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= cond((anim = [5051,5059]) || (anim = [5061,5069]), 0, Const(movement.air.gethit.groundlevel))
value = 5574 ;Downed get-hit (hit ground from fall)

;---------------------------------------------------------------------------
; Downed get-hit (hit ground from fall)
[Statedef 5574]
type    = L
movetype= H
physics = N

[State 5574, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 5574, Var] ;Save fall velocity
type = VarSet
trigger1 = Time = 0
sysvar(1) = floor(vel y)

[State 5574, 2] ;Hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = (anim != [5051,5059]) && (anim != [5061,5069])
trigger2 = !SelfAnimExist(5100 + (anim % 10))
value = 5100

[State 5574, 3] ;Hit ground anim (for hit up)
type = ChangeAnim
trigger1 = time = 0
trigger1 = (anim = [5051,5059]) || (anim = [5061,5069])
trigger1 = SelfAnimExist(5100 + (anim % 10))
value = 5100 + (anim % 10)

[State 5574, 4]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5574, 5]
type = VelSet
trigger1 = Time = 0
y = 0

[State 5574, 6] ;Reduce speed
type = VelMul
trigger1 = Time = 0
x = 0.75

[State 5574, 9]
type = HitFallDamage
trigger1 = Time = 3

[State 5574, EnvShake]
type = EnvShake
triggerall = cond (sysvar(1) <= Const720p(56),0,1)
trigger1 = time = 1
time = 5
ampl = 8
freq = 180

[State 5574, 11]
type = PosFreeze
trigger1 = 1

[State 5574, 12]
type = changestate
trigger1 = AnimTime = 0
value = 5575

;---------------------------------------------------------------------------
; Downed get-hit (bounce off ground)
[Statedef 5575]
type    = L
movetype= H
physics = N

[State 5575, 1] ;Coming hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim != [5101,5109]
trigger2 = !SelfAnimExist(5160 + (anim % 10))
value = 5160

[State 5575, 2] ;Coming hit ground anim (for hit up)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim = [5101,5109]
trigger1 = SelfAnimExist(5160 + (anim % 10))
value = 5160 + (anim % 10)

[State 5575, 3]
type = HitFallVel
trigger1 = Time = 0

[State 5575, VelMul]
type = VelMul
trigger1 = time = 0
x = 0.5
y = 0.5
ignorehitpause = 1

[State 5575, 4]
type = PosSet
trigger1 = Time = 0
y = Const(movement.down.bounce.offset.y)

[State 5575, 5]
type = PosAdd
trigger1 = Time = 0
x = Const(movement.down.bounce.offset.x)

[State 5575, 6] ;Acceleration
type = VelAdd
trigger1 = 1
y = 0.8

[State 5575, 12]
type = selfstate
trigger1 = canrecover && alive
value = 5110 ;Downed get-hit (bounce off ground)

[State 5575, 12]
type = changestate
trigger1 = !canrecover
trigger2 = !alive
value = 5576 ;Downed get-hit (bounce off ground)

;---------------------------------------------------------------------------
; Downed get-hit (lying down)
[Statedef 5576]
type    = L
movetype= H
physics = N

[State 5576, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 5576, 1] ;For hit up/up-diag type (from state 5081)
type = ChangeAnim
persistent = 0
trigger1 = SelfAnimExist(5110 + (anim % 10))
trigger1 = anim = [5081,5089]
value = 5110 + (anim % 10)

[State 5576, 2] ;Hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
triggerall = anim != [5110,5119] ;Not already changed anim
trigger1 = anim != [5161,5169]
trigger2 = !SelfAnimExist(5170 + (anim % 10))
value = 5170

[State 5576, 3] ;Hit ground anim (for hit up)
type = ChangeAnim
triggerall = time = 0
triggerall = anim != [5110,5119] ;Not already changed anim
trigger1 = anim = [5161,5169]
trigger1 = SelfAnimExist(5170 + (anim % 10))
value = 5170 + (anim % 10)

[State 5576, 4]
type = HitFallDamage
trigger1 = Time = 0

[State 5576, 5]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5576, Var] ;Get fall velocity
type = VarSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) != 0
sysvar(1) = floor(vel y)

[State 5576, 8]
type = VelSet
trigger1 = Time = 0
y = 0

[State 5576, 9] ;For hit up type
type = ChangeAnim
persistent = 0
triggerall = anim = [5171,5179]
triggerall = SelfAnimExist(5110 + (anim % 10))
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground anim
value = 5110 + (anim % 10)

[State 5576, 10] ;For normal
type = ChangeAnim
persistent = 0
triggerall = Anim != [5111,5119]
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground frame
value = 5110

[State 5576, 11] ;If just died
type = SelfState
triggerall = !alive
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground frame
trigger3 = Anim = [5110,5119]
value = 5150

[State 5576, 12]
type = VarSet
trigger1 = SysVar(0)
trigger1 = Time = 0
sysvar(0) = 0

[State 5576, 13] ;Friction
type = VelMul
trigger1 = 1
x = 0.85

[State 5576, 14] ;Friction
type = VelSet
trigger1 = abs(Vel x) < Const(movement.down.friction.threshold)
persistent = 0
x = 0

[State 5576, Changestate]
type = selfstate
triggerall = anim = [5110,5119]
trigger1 = time >= 10
value = 5120
ctrl = 0

;---------------------------------------------------------------------------
;Origin Technique #01: Sucker for Nostalgia
[Statedef 3100]
type=S
physics=N
movetype=A
ctrl=0
velset=0,0
sprpriority=1
poweradd=-1000
facep2=1

[State 3000, Portrait]
type = VarSet
trigger1 = !Time
var(1) = 2

[State 3000, Anim]
type=changeanim
trigger1=!time
value=3100

[state 3000,Posset]
type=posset
trigger1=!time
y=0

[State 3000, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "a" || command = "rlsa"), 0, ifElse((command = "a" || command = "rlsa"), 1, 2))

[State 3000, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 3000, Super Cancel Flag]
type = varset
trigger1 = !time
var(21) = ((prevstateno = [1000, 2999]) && var(7)) || var(20)

[State 3000, Hyper Cancel Flag]
type = varset
trigger1 = !time
var(22) = (prevstateno = [3000, 4999]) && var(8)

[State 3000, CC Reset]
type = palfx
trigger1 = !time
trigger1 = !(var(20) := 0)
time = 1

[State 3000, Corner Push]
type = varset
trigger1 = time = 3
fvar(5) = 0

[State 3000, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 40

[State 3000, Super Cancel Flash]
type = palfx
trigger1 = var(21) || var(22)
trigger1 = !(time % 2) && time <= 12
time = 1
add = 255, 255, 255
ignorehitpause = 1

[State 3000, Super Cancel Juggle]
type = varset
trigger1 = !time
trigger1 = var(21) || var(22)
var(15) = 0
ignorehitpause = 1

[State 3000, Superpause FX]
type = helper
trigger1 = Time = 3
stateno = 8500
ID = 8500
name = "Superpause FX"
postype = p1
pos = 10, -60
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3000, Superpause]
type = superpause
trigger1 = Time = 3
time = 40
movetime = 40
p2defmul = 1
unhittable = 1
anim = -1
sound = s8500,0
darken = 0

[State JUMPSND]
type = PlaySnd
trigger1 = animelem = 6
value = 41,0

[State 1230, StateTypeSet: Air]
type = StateTypeSet
trigger1 = animelemTime(6) >= 0
StateType = A

[state L];32
type = velset
trigger1 = var(10) = 0
trigger1 = animelem = 6
x = 8
y = -5

[state M];32
type = velset
trigger1 = var(10) = 1
trigger1 = animelem = 6
x = 8
y = -6

[state H];32
type = velset
trigger1 = var(10) = 2
trigger1 = animelem = 6
x = 8
y = -7.6

[state L]
type = veladd
trigger1 = var(10) = 0
trigger1 = animelem = 6,>0
y = 0.59

[state M]
type = veladd
trigger1 = var(10) = 1
trigger1 = animelem = 6,>0
y = 0.65

[state M]
type = veladd
trigger1 = var(10) = 2
trigger1 = animelem = 6,>0
y = 0.7

[State a]
type = AttackDist
trigger1 = enemy,stateno != [120,159]
value = 0

[State 800, 1]
type = HitDef
TriggerALL = !TIME
trigger1 = vel y >= 0
trigger1 = p2stateno != 40
Trigger1 = p2stateno != [120,159]
trigger1 = p2movetype != H
attr = A, HT
hitflag = M-
;guard.dist = -100
priority = 5, hit
sparkno = -1
p2facing = 1
p1stateno = 3101
p2stateno = 3110      
;hitsound = S800,0
fall = 0            
nochainID = 9999

[state a]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= 0
value = 1101

;POW HAHA
[Statedef 3101]
type    = S
movetype= A
physics = N
anim = 3101
poweradd = 60
sprpriority = 4
velset = 1,-.5

[State -1]
type = AfterImage
trigger1 = Time = 0
time = 120
TimeGap  = 1
FrameGap = 1
length = 20
palbright = 800,0,0
PalContrast = 800,0,0
Trans = add

[State -1]
type = PlaySnd
trigger1 = time = 0
value = S2,ifelse(random<500,11,3000)
channel = 1
[State -1]
type = PlaySnd
trigger1 = time = 0
value = S1,14
channel = 2

[State 0, EnvShake]
type = EnvShake
trigger1 = !time
time = 24
freq = 225
ampl = -4

[State -1]
type = PosSet
trigger1 = time = 0
x = 0
y = -110
ignorehitpause = 1
persistent = 1

[State 6000, 0]
type = BGPalFX
trigger1 = time = [0,120]
time = 1
add = 0,0,0
mul = 0,0,0
sinadd = 0,0,0,1
invertall = 0
color = 256
ignorehitpause = 1
persistent = 1

[State 6000, 1]
type = ChangeState
trigger1 = !animtime
value = 50

[State 3100, dem flashbacks]
type = Explod
trigger1 = time = 0
anim = 3103+random%4
pos = 0,0
postype = back
sprpriority = 0
removetime = 120
bindtime = -1
ownpal = 1
scale = 0.5,0.5

[State 3100, 3]
type = Helper
trigger1 = time = 0
pos = -60,-60
helperType = Normal
stateNo = 8014
ID = 8000
name = "Spark"
posType = P1
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 1
ignoreHitPause = 1

[State 3100, 4]
type = TargetLifeAdd
trigger1 = time = 1
value = -144

[State 3100, 6]
type = HitAdd
trigger1 = time = 0
value = 1

; OUCH!
[Statedef 3110]
type    = A
movetype= H
physics = N
velset = 1,-.5
sprpriority = 3

[State HNGG]
type = PosSet
trigger1 = time = 0
x = 0
y = -110
ignorehitpause = 1
persistent = 1

[State 3110, 0]
type = ChangeAnim2
Trigger1 = Time = 0
value = 3102

[State 3110, 1]
type = Gravity
trigger1 = time > 120
ignorehitpause = 1
persistent = 1

[State 3110, 2]
type = SelfState
trigger1 = time > 120
trigger1 = pos y >= 0
value = 5100

;---------------------------------------------------------------------------
;Prank Technique #96: De-Stressing
[Statedef 3150]
type=S
physics=N
movetype=A
ctrl=0
velset=0,0
sprpriority=1
poweradd=-2000
facep2=1

[State 3000, Portrait]
type = VarSet
trigger1 = !Time
var(1) = 3

[State 3000, Anim]
type=changeanim
trigger1=!time
value=3150

[state 3000,Posset]
type=posset
trigger1=!time
y=0

[State 3000, Super Cancel Flag]
type = varset
trigger1 = !time
var(21) = ((prevstateno = [1000, 2999]) && var(7)) || var(20)

[State 3000, Hyper Cancel Flag]
type = varset
trigger1 = !time
var(22) = (prevstateno = [3000, 4999]) && var(8)

[State 3000, CC Reset]
type = palfx
trigger1 = !time
trigger1 = !(var(20) := 0)
time = 1

[State 3000, Corner Push]
type = varset
trigger1 = time = 3
fvar(5) = 0

[State 3000, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 40

[State 3000, Super Cancel Flash]
type = palfx
trigger1 = var(21) || var(22)
trigger1 = !(time % 2) && time <= 12
time = 1
add = 255, 255, 255
ignorehitpause = 1

[State 3000, Super Cancel Juggle]
type = varset
trigger1 = !time
trigger1 = var(21) || var(22)
var(15) = 0
ignorehitpause = 1

[State 3000, Superpause FX]
type = helper
trigger1 = Time = 3
stateno = 8510
ID = 8500
name = "Superpause FX"
postype = p1
pos = 10, -60
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3000, Superpause]
type = superpause
trigger1 = Time = 3
time = 44
movetime = 44
p2defmul = 1
unhittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3151, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3150, ifelse(enemy,name="Gumball Watterson, but POTS" || enemy,name="Gumball", 0,1)

[State 3300, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 3151

;Jump
[Statedef 3151]
type    = A
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 3151
poweradd = 0
sprpriority = 1
facep2 = 0

[State 3151, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 41, 0

[State 3151, Vel]
type = VelSet
trigger1 = Anim = 3151
x = P2Dist X / ((14 + ((14 ** 2) -(4 * 0.15 * (EnemyNear(0), Const(Size.Height)))) ** 0.5) / 0.75)
y = -14
persistent = 0

[State 3151, Velocity]
type = Turn
trigger1 = Anim = 3151 && Vel X < 0
persistent = 0

[State 3151, Velocity]
type = VelSet
trigger1 = Anim = 3151 && Vel X > 10
x = 10

[State 3151, Velocity]
type = VelSet
trigger1 = Anim = 3151 && Vel X < 0
x = 0

[State 3151, Accel]
type = VelAdd
trigger1 = 1
y = 1.1

[State 3151, ScreenBound]
type = ScreenBound
trigger1 = 1 
value = 1
movecamera = 1,0

[State 3151, ChangeState]
type = ChangeState
trigger1 = Pos Y > -Vel Y;Vel Y > 0 && Pos Y >= -Ceil(Vel Y)
value = 3152

; >:3
[Statedef 3152]
type = S
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 3152
poweradd = 0
sprpriority = 1
facep2 = 0

[State 3152, Width]
type = Width
trigger1 = MoveContact
edge = 80,0

[State 3152, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 710, 1
channel = 0

[State 3152, EnvShake]
type = EnvShake
trigger1 = AnimElem = 1 && !NumTarget
time = 14
ampl = 4
freq = 120
ignorehitpause = 1

[State 3152, GOTCHA]
type = HitDef
TriggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 1
attr = S, HA
damage = ceil(ifElse(fvar(11) * ifelse(p2statetype=L,51,103) < 7, 7, fvar(11) * ifelse(p2statetype=L,51,103))), 7
priority = 4, hit
animtype = Hard
getpower = 70 * !var(20), 30 * !var(20)
givepower = 35, 35
guardflag = LA
hitflag = MAFD
ID = 3311
hitsound = S2,1001
guardsound = s3,0
pausetime = 0,22
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 20), var(36) := 0
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.slidetime = 18
ground.hittime  = 18
guard.hittime = 18
ground.velocity = -7, 4
air.velocity = -4,-4
guard.velocity = -10
down.velocity = 0, 0
airguard.velocity = IfElse(var(20), -4, -8), -1.5
airguard.ctrlTime = 16
ground.cornerPush.velOff = 0
guard.cornerPush.velOff = 0
air.cornerPush.velOff = 0
yaccel = .58
fall = 0
air.fall = 1
fall.recover = 0
forcestand = 1
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envshake.time = 14
envshake.ampl = 4
envShake.freq = 120
kill = 0

[State Muteki]
type = NotHitBy
trigger1 = NumTarget(3311) || AnimElemTime(2) < 0
value = SCA, NA, SA, HA, NP, SP, HP, NT, ST, HT
time = 1

[State Grounded]
type = PosSet
trigger1 = !Time
Y = 0

[State BOMF]
type = PlaySnd
trigger1 = !Time
value = 820, 1

[State 3152, Dust]
type = Explod
trigger1 = !Time
anim = 8100
ID = 8100
sprpriority = 2
postype = P1
ownpal = 1
pausemovetime = -1
supermovetime = -1

[State 3152, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State of NO ESCAPE]
type = ChangeState
trigger1 = MoveHit && NumTarget(3311)
value = 3153

[State 3152, TargetBind]
type = TargetBind
trigger1 = !Time && NumTarget(3311)
time = 1
pos = 0,0

[State 3152, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(3) >= 0
movetype = I

[State 3152, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;Creased rock shenanigans
[Statedef 3153]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 3153
poweradd = 0
sprpriority = 0
facep2 = 0

[State 3312, Width]
type = Width
trigger1 = !Time
edge = 80,0

[State 3312, GrabSnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 2, 800

[State 810, Bind]
type = TargetBind
trigger1 = AnimElemtime(1) > 0 && animelemtime(20) < 0 
pos = 30, 0

[State 3312, SlapSnd]
type = PlaySnd
trigger1 = AnimElem = 6 || AnimElem = 8 || AnimElem = 10 || AnimElem = 12
trigger2 = AnimElem = 14 || AnimElem = 16
value = 1, 15
[State 3312, OH]
type = PlaySnd
trigger1 = AnimElem = 20
value = 1, 16
[State 3312, OH]
type = PlaySnd
trigger1 = AnimElem = 20
value = 2, 3000

[State 0, 1]
type = PlaySnd
trigger1 = AnimElem = 6
value = S3151,0
[State 0, 2]
type = PlaySnd
trigger1 = AnimElem = 8
value = S3151,1
[State 0, 3]
type = PlaySnd
trigger1 = AnimElem = 10
value = S3151,2
[State 0, 4]
type = PlaySnd
trigger1 = AnimElem = 12
value = S3151,3
[State 0, 5]
type = PlaySnd
trigger1 = AnimElem = 14
value = S3151,4
[State 0, 6]
type = PlaySnd
trigger1 = AnimElem = 16
value = S3151,5
[State 0, 7]
type = PlaySnd
trigger1 = AnimElem = 18
value = S3151,6

[State 0, Flash]
type = AllPalFX
trigger1 = AnimElem = 6 || AnimElem = 8 || AnimElem = 10 || AnimElem = 12
trigger2 = AnimElem = 14 || AnimElem = 16
time = 3
sinadd = random%256,random%256,random%256,10
add = random%256,random%256,random%256
mul = random%256,random%256,random%256
invertall = random%2
color = random%256
ignorehitpause = 1
[State 0, Flash]
type = AllPalFX
trigger1 = AnimElem = 20
time = 10
sinadd = random%256,random%256,random%256,10
add = random%256,random%256,random%256
mul = random%256,random%256,random%256
invertall = random%2
color = random%256
ignorehitpause = 1

[State 0, EnvShake]
type = EnvShake
trigger1 = AnimElem = 6 || AnimElem = 8 || AnimElem = 10 || AnimElem = 12
trigger2 = AnimElem = 14 || AnimElem = 16
time = 6
freq = 120
ampl = -8
[State 0, OH]
type = EnvShake
trigger1 = AnimElem = 20
time = 10
freq = 225
ampl = -48

[State 0, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 811
ignorehitpause = 1
[State 0, OUCH1]
type = TargetState
trigger1 = AnimElem = 6 || AnimElem = 10
trigger2 = AnimElem = 14
value = 3020
ignorehitpause = 1
[State 0, OUCH2]
type = TargetState
trigger1 = AnimElem = 8 || AnimElem = 12
trigger2 = AnimElem = 16
value = 3021
ignorehitpause = 1

[State 0, THROW]
type = TargetState
trigger1 = AnimElem = 20
value = 3160
ignorehitpause = 1

[State 810, hurt]
type = targetlifeadd
trigger1 = AnimElem = 6 || AnimElem = 8 || AnimElem = 10 || AnimElem = 12
trigger2 = AnimElem = 14 || AnimElem = 16
value = -ceil(15 * fvar(11))
kill=0
[State 810, hurt]
type = targetlifeadd
trigger1 = AnimElem = 20
value = -40

[State 810, hurt]
type = targetpoweradd
trigger1 = animelem = 20
value = 135

[State 810, Sparks]
type = Helper
trigger1 = AnimElem = 6 || AnimElem = 8 || AnimElem = 10 || AnimElem = 12
trigger2 = AnimElem = 14 || AnimElem = 16 || AnimElem = 20
helperType = Normal
stateNo = 8014
ID = 8001
name = "Spark"
posType = P1
pos = 40, -90
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 0, HitAdd]
type = HitAdd
trigger1 = AnimElem = 6 || AnimElem = 8 || AnimElem = 10 || AnimElem = 12
trigger2 = AnimElem = 14 || AnimElem = 16 || AnimElem = 20
value = 1

[State 810, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;OW
[Statedef 3160]
type    = C
movetype= H
physics = N
ctrl = 0
sprpriority = 2

[State DO NOT DISTURB--except for the mine]
type = HitBy
trigger1 = 1
value = SCA,HP
time = 1
ignorehitpause = 1

[State 0, HNGGG]
type = ChangeState
triggerall = life = 0
;triggerall = statetype != L
triggerall = (time%6)=0
trigger1 = anim = 3160
trigger2 = animtime <= -1
trigger3 = animelemtime(animelemno(0)) < time
trigger4 = floor(const(size.mid.pos.y) + ((time-31)/2) )<0
value = 3161
ignorehitpause = 1

[State 0, VelSet]
type = VelSet
trigger1 = anim = 3160
trigger1 = animelem = 12
x = -6.777
[State 0, VelSet]
type = VelMul
trigger1 = anim = 3160
trigger1 = animelemtime(12) >= 0
x = 0.9

[State 0, VelSet]
type = VelSet
trigger1 = anim != 3160
x = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim = 3160
trigger1 = animelem = 22
trigger1 = selfanimexist(5950)
value = 5950
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim = 3160
trigger1 = animelem = 22
trigger1 = selfanimexist(5930)
value = 5930
[State 0, ChangeAnim]
type = SelfState
trigger1 = anim = 3160
trigger1 = animelem = 22
trigger1 = selfanimexist(5130)
trigger1 = selfanimexist(5131)
value = 5130
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim = 3160
trigger1 = animelem = 22
trigger1 = selfanimexist(6040)
value = 6040
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim = 5130
trigger1 = animtime = 0
value = 5131

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 3160

[State 0, VarSet]
type = VarSet
trigger1 = anim != 3160
sysvar(0) = 1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim = 5950 || anim = 5330
trigger1 = animtime = 0 || animelemtime(animelemno(0)) >= 30
;trigger1 = selfanimexist(5950)
value = ifelse(selfanimexist(5112),5112,ifelse(selfanimexist(5111),5111,5110))

[State 0, SelfState]
type = SelfState
trigger1 = anim = 3160
trigger1 = animtime = 0
trigger2 = anim != 3160
trigger2 = time >= 149
trigger3 = anim = 6040
trigger3 = animtime = 0
value = ifelse(anim!=3325&&(!alive),5150,ifelse((anim=[5110,5119]),5120,5110))

;HNGGGGG
[Statedef 3161]
type = A
physics = N
movetype = H
ctrl = 0
velset = 0,0

[State 1501, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 3161

[State 1501, ChangeAnim2]
type = ChangeAnim2
triggerall = Anim = 3161
trigger1 = HitShakeOver = 1
value = 3162

[State 1501, 1] ;Gravity
type = VelAdd
trigger1 = Pos Y != 0
y = .4

[State 1501, VelSet]
type = VelSet
trigger1 = Anim = 3162
x = -2.5
y = -12.8
persistent = 0

[State 810, EnvShake]
type = EnvShake
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
time = 14
freq = 120
ampl = 15

[State 3007, end] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground

;-----------------------------------------------
;The Painting
[StateDef 3500]
type = S
physics = S
moveType = A
ctrl = 0
velSet = 0,0
sprpriority = 1
powerAdd = -3000
faceP2 = 1

[State 3000, Portrait]
type = VarSet
trigger1 = !Time
var(1) = 4

[State 3500, Anim]
type=changeanim
trigger1=!time
value=3500

[state 3500,Posset]
type=posset
trigger1=!time
y=0

[State 3000, Super Cancel Flag]
type = varset
trigger1 = !time
var(21) = ((prevstateno = [1000, 2999]) && var(7)) || var(20)

[State 3000, Hyper Cancel Flag]
type = varset
trigger1 = !time
var(22) = (prevstateno = [3000, 4999]) && var(8)

[State 3000, CC Reset]
type = palfx
trigger1 = !time
trigger1 = !(var(20) := 0)
time = 1

[State 3000, Corner Push]
type = varset
trigger1 = time = 3
fvar(5) = 0

[State 3000, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 40

[State 3000, Super Cancel Flash]
type = palfx
trigger1 = var(21) || var(22)
trigger1 = !(time % 2) && time <= 12
time = 1
add = 255, 255, 255
ignorehitpause = 1

[State 3000, Super Cancel Juggle]
type = varset
trigger1 = !time
trigger1 = var(21) || var(22)
var(15) = 0
ignorehitpause = 1

[State 3500, Super Pause FX]
type = Helper
trigger1 = animelem = 1
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = p1
pos = 11, -63
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3500, Super Pause]
type = SuperPause
trigger1 = animelem = 1
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,1
darken = 0

[State 3005, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = S3500,0
channel = 1

[State 3005, Helper]
type = Helper
trigger1 = animelem=4
helpertype = normal ;player
name = "bubble"
ID = 3505
stateno = 3505
pos = 9,-50
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
supermovetime = 0
pausemovetime = 0
size.xscale =0.7
size.yscale =0.7

[State 3500, End]
type = ChangeState
trigger1 = !AnimTime
trigger2 = numhelper(3505)
trigger2 = helper(3505),stateno=3508
value = 3499
ctrl = 0

[State 3500, End]
type = ChangeState
trigger1 = numhelper(3505)
trigger1 = helper(3505),stateno=3507
value = 3510
ctrl = 0

;jump
[Statedef 3510]
type    = A
movetype= A
physics = N
anim = 3510
VelSet = 0,0

[State 3500, Projectile End]
type = ChangeState
trigger1 = numhelper(3505)
trigger1 = helper(3505),stateno=3508
value = 3499
ctrl = 0

[State 0, StopSnd]
type = StopSnd
trigger1 = !time
channel = 1

[State 191, Camera]
type = helper
trigger1 = !NumHelper(8999)
stateno = 9000
ID = 8999
name = "Camera"
postype = p1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S1,18

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 3051, 2]
type = ChangeState
trigger1 = time = 70
value = 3511
ctrl = 0

;The Puppy?
[Statedef 3511]
type    = S
movetype= I
physics = N
anim = 1
VelSet = 0,0

[State 0, TargetState]
type = TargetState 
trigger1 = time = 0 && NumTarget
value = 3521

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 15

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = timerfreeze
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S3500,1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 0, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 0, Helper]
type = Helper
trigger1 = time = 1
helpertype = normal ;player
name = "Black Background"
ID = 3530
stateno = 3530
pos = 0,0
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time >= 1
trigger2 = numhelper(3530)
flag = invisible
ignorehitpause = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = numhelper(3530) = 0
trigger1 = time >= 1
value = 3512
ctrl = 0

;post super
[Statedef 3512]
type = S
ctrl = 0
anim = 3511
velset = 0,0

[State 1500, FX]
type = Helper
trigger1 = animelem = 2
helpertype = Normal
stateno = 1506
ID = 1505
name = "Warp FX"
postype = P1
pos = 60, 0
ownpal = 1

[State 181, 2]
type = PlaySnd
trigger1 = !time
value = s1, 18

[State 190, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;OUCH!
[Statedef 3520]
type    = S
movetype= H
physics = N
VelSet = 0,0
ctrl = 0
sprpriority = 1

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 3520

[State 0, ChangeState] ;What the what--
type = ChangeState
trigger1 = parent,stateno=3511
value = 3521
ctrl = 0

[Statedef 3521]
type    = S
movetype= H
physics = N
VelSet = 0,0
ctrl = 0
sprpriority = 1

[State 0, AngleDraw]
type = AngleDraw
trigger1 = animelemtime(14)<0
value = 0
scale = 3,3
;ignorehitpause = 
;persistent = 

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = !time
trigger1 = anim!=3540
value = 3540

[State 0, PosSet]
type = PosSet
trigger1 = !time
y = 0

;Backfire
[Statedef 3499]
type = A
physics = N
movetype = H
ctrl = 0
velset = 0,0

[State 0, StopSnd]
type = StopSnd
trigger1 = !time
channel = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S3050,0

[State 1501, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 3161

[State 1501, ChangeAnim2]
type = ChangeAnim2
triggerall = Anim = 3161
trigger1 = HitShakeOver = 1
value = 3162

[State 1501, 1] ;Gravity
type = VelAdd
trigger1 = Pos Y != 0
y = .4

[State 1501, VelSet]
type = VelSet
trigger1 = Anim = 3162
x = -2.5
y = -12.8
persistent = 0

[State 810, EnvShake]
type = EnvShake
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
time = 14
freq = 120
ampl = 15

[State 3007, end] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground


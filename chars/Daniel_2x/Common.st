;---------------------------------------------------------------------------
; Daniel's Common States
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Stand
[Statedef 0]
type = S
physics = S
sprpriority = 0
ANIM = 0
velset=0,0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = AnimTime=0 && Anim = 5
value = 0

[State 0, Explod]
type = Explod
trigger1 = !NumExplod(4) && var(27) && life<250
anim = 4
ID = 4
pos = 0,-15
postype = p1
bindtime = -1
removetime = -1
ontop = 0
sprpriority = 2

[State 0, 2]
type = VelSet
trigger1 = Time = 0
y = 0

[State 0, 3] ;Stop moving if low velocity
type = VelSet
trigger1 = abs(vel x) < 1
x = 0

[State 0, 4] ;Are you dead?
type = ChangeState
trigger1 = !alive
value = 5050

[Statedef 11]
type    = C
physics = C
anim = 11
sprpriority = 0

[State 11, 1] ;Change from turning animation
type = ChangeAnim
trigger1 = Anim = 6 && AnimTime = 0
value = 11+(10000*var(27))

;Thanks to Choiyer for his low jump code!!
;Note, I modified the code to make sure it worked correctly with Daniel...
;changed variable indices:
;Var(3) --> Var(37)
;Var(5) --> Var(36)
;---------------------------------------------------------------------------
; Jump Start
[Statedef 40]
type    = S
physics = S
anim = 40
ctrl = 0
sprpriority = 1
facep2 = 1

[State 40, 2]
type = VarSet
trigger1 = Time = 0
var(36) = 0

[State 40, 1]
type = VarSet
trigger1 = command != "holdup"
var(36) = 1

[State 40, 1]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 40, 1]
type = VarSet
trigger1 = command = "holdfwd"
sysvar(1) = 1

[State 40, 1]
type = VarSet
trigger1 = command = "holdback"
sysvar(1) = -1

;Dash Jump Variable Reset
[State 40, 1]
type = VarSet
trigger1 = Time = 0
var(37) = 0

;Dash Jump
[State 40, 1]
type = VarSet
triggerall = Time = 0
trigger1 = (PrevStateNo = 100 || PrevStateNo = 101) && sysvar(1) = 1
trigger2 = prevstateno = 100 && command = "holdfwd"
var(37) = 1

[State 40, 1]
type = VelSet
trigger1 = var(37) = 0
trigger1 = Var(36) = 0
trigger1 = AnimTime = 0
x = ifelse(sysvar(1)=0, const(velocity.jump.neu.x), ifelse(sysvar(1)=1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = const(velocity.jump.y)

[State 40, 1]
type = VelSet
trigger1 = var(37) = 1
trigger1 = Var(36) = 0
trigger1 = AnimTime = 0
x = ifelse(sysvar(1)=0, 0, ifelse(sysvar(1)=1, const(velocity.runjump.fwd.x), const(velocity.runjump.back.x)))
y = const(velocity.runjump.y)

[State 40, 1]
type = VelSet
trigger1 = AnimTime = 0
trigger1 = Var(36) = 0
trigger1 = prevstateno = 100 || prevstateno = 10100 ;RUN_FWD
trigger1 = sysvar(1) = 1
x = const(velocity.runjump.fwd.x)
y = const(velocity.jump.y)

[State 40, 1]
type = VelSet
trigger1 = AnimTime = 0
trigger1 = Var(36) = 1
trigger1 = prevstateno = 100 || prevstateno = 10100 ;RUN_FWD
trigger1 = sysvar(1) = 1
x = const(velocity.runjump.fwd.x)
y = -5.5

;OK, I'm getting confused!!
[State 40, 4];è¨ÉWÉÉÉìÉv
type = VelSet
trigger1 = AnimTime = 0
trigger1 = var(37) = 0
trigger1 = Var(36) = 1
x = ifelse(sysvar(1)=0, const(velocity.jump.neu.x), ifelse(sysvar(1)=1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))*2
y = -5.5 ;This was, I mean IS Haruhi's Height for low jump

[State 40, 9]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

; Jump Land
[Statedef 52]
type    = S
physics = S
ctrl = 0
anim = 47

[State 52, 1]
type = VelSet
trigger1 = Time = 0
y = 0

[State 52, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 52, 3]
type = CtrlSet
trigger1 = Time = 3
value = 1

[State 52, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Run Forward
[Statedef 100]
type    = S
physics = S

[State 100, 4]
type = ChangeAnim
trigger1 = Time = 0
value = ifelse((var(24)&&var(28)=1),2503,100)

[State 0, SprPriority]
type = SprPriority
trigger1 = Time=0
value = ifelse(anim=100,1,2)

[State 100, StateTypeSet]
type = StateTypeSet
triggerall=anim!=2503
trigger1 = Time=0
movetype = I

[State 3050, PlaySnd]
type = PlaySnd
triggerall=anim!=2503
trigger1 = Time=100
value = S5004,8

[State 100, StateTypeSet]
type = StateTypeSet
triggerall=anim=2503
trigger1 = Time=0
movetype = A
physics=N

[State 0, VelSet]
type = VelSet
trigger1 = anim=2503 && (Time=[0,5])
x = 0

[State 100, PlaySnd]
type = PlaySnd
triggerall=anim!=2503
trigger1 = AnimElem = 3 || AnimElem = 9
value = S100,0

[State 1362, PlaySnd]
type = PlaySnd
triggerall=anim!=2503
trigger1 = Time=0
value = S100,1+random%3

[State 105, 3]
type = MakeDust
triggerall=anim!=2503
trigger1 = AnimElemTime(3) = 0
trigger2 = AnimElemTime(9) = 0
pos = -5,-2
spacing = 3

[State 100, 1]
type = VelSet
trigger1 = anim!=2503
x = const(velocity.run.fwd.x)

[State 100, 2] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = anim!=2503
flag = NoWalk

[State 100, 3] ;Prevent from turning
type = AssertSpecial
trigger1 = anim!=2503
flag = NoAutoTurn

[State 10100, Hit]
type = HitDef
triggerall=anim=2503
trigger1 = Time = 0
attr = S, NA
damage = 13, 0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 8, 8
sparkno = s7920+random%8
guard.sparkno = s7911
sparkxy = -10, -47
hitsound = s5, 6
guardsound = s6, 0
ground.type = Low
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -16
airguard.velocity = -6
air.type = Low
air.velocity = -12,-3.2
air.hittime = 12

[State 10100, ChangeState]
type = ChangeState
triggerall=anim=2503
trigger1 = command = "holdup" && !MoveContact
value = 40
ctrl = 1

[State 0, CtrlSet]
type = CtrlSet
triggerall=anim=2503
trigger1=time=0
value = 0

[State 10100, VelAdd]
type = VelAdd
trigger1 = anim=2503
x = -0.56

[State 10100, PlaySnd]
type = PlaySnd
triggerall=anim=2503
trigger1 = time = 0
value = S1,6

[State 10100, 1]
type = VelSet
triggerall = anim=2503
trigger1 = AnimElemTime(5)=0
x = 16
y = 0

[State 10100, 2] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = anim=2503
flag = NoWalk

[State 10100, 3] ;Prevent from turning and guarding
type = AssertSpecial
trigger1 = anim=2503
flag = NoAutoTurn
flag2 = NoStandGuard

[State 10100, 4]
type = ChangeState
triggerall = anim=2503
trigger1 = animtime = 0
value = 0
ctrl = 1

[State 100, 4]
type = ChangeState
triggerall=anim!=2503
trigger1 = command != "holdfwd" && (var(45) = 0)
trigger2 = (P2BodyDist X < 55 || p2movetype=A) && (var(45) != 0)
value = 101

;---------------------------------------------------------------------------
; Stop Running
[Statedef 101]
type = S
movetype = I
physics = N
ctrl = 0
anim = 101

[State 101, VelAdd]
type = VelAdd
trigger1 = 1
x = -0.5

[State 101, PlaySnd]
type = PlaySnd
trigger1 = time = 3
value = S101,0

[State 101, ChangeState]
type = ChangeState
trigger1 = vel x <= 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Run Back
[Statedef 105]
type    = S
physics = N
anim = 105
sprpriority = 1
ctrl = 0

[State 1362, PlaySnd]
type = PlaySnd
trigger1 = Time=0
value = S100,1+random%3

[State 105, VelAdd]
type = VelAdd
trigger1 = 1
x = 0.7

[State 105, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S41,0

[State 105, 1]
type = VelSet
triggerall = !(var(24)>0 && var(28)=1)
trigger1 = Time = 0
x = -12
y = 0

[State 105, Expl Moment]
type = VelSet
triggerall = (var(24)>0 && var(28)=1)
trigger1 = Time = 0
x = -14
y = 0

[State 105, 2] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 105, 3] ;Prevent from turning and guarding
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn
flag2 = NoStandGuard

[State 105, 4]
type = ChangeState
trigger1 = abs(vel x) <= 0.35
value = 106
ctrl = 0

;---------------------------------------------------------------------------
; Run Back - Land
[Statedef 106]
type    = S
physics = N
anim = 105
sprpriority = 1
ctrl = 0

[State 105, VelAdd]
type = VelAdd
trigger1 = 1
x = 0.7

[State 105, 4]
type = ChangeState
trigger1 = vel x >= 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Run Forward Explosion Moment
[Statedef 10100]
type    = S
movetype = A
physics = N
anim = 2503
sprpriority = 1
ctrl = 0

[State 10100, Hit]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 13, 0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 8, 8
sparkno = s7920+random%8
guard.sparkno = s7911
sparkxy = -10, -47
hitsound = s5, 6
guardsound = s6, 0
ground.type = Low
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -16
airguard.velocity = -6
air.type = Low
air.velocity = -12,-3.2
air.hittime = 12

[State 10100, ChangeState]
type = ChangeState
trigger1 = command = "holdup" && !MoveContact
value = 40
ctrl = 1

[State 10100, VelAdd]
type = VelAdd
trigger1 = 1
x = -0.56

[State 10100, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S1,6

[State 10100, 1]
type = VelSet
trigger1 = AnimElem = 4
x = 16
y = 0

[State 10100, 2] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 10100, 3] ;Prevent from turning and guarding
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn
flag2 = NoStandGuard

[State 10100, 4]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Walk
[Statedef 20]
type    = S
physics = S
sprpriority = 0

[State 20, 1]
type = VelSet
trigger1 = command = "holdfwd"
x = const(velocity.walk.fwd.x)

[State 20, 2]
type = VelSet
trigger1 = command = "holdback"
x = const(velocity.walk.back.x)

[State 20, 3]
type = ChangeAnim
triggerall = vel x > 0
trigger1 = Anim != 20 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 20

[State 20, 4]
type = ChangeAnim
triggerall = vel x < 0
trigger1 = Anim != 21 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 21

;---------------------------------------------------------------------------
; Stand Guard Get-Hit (shaking)
[Statedef 150]
type    = S
movetype= H
physics = N
velset = 0,0

[State 150, 1]
type = ChangeAnim
trigger1 = 1
value = 150

[State 150, 2]
type = ChangeState
trigger1 = HitShakeOver
value = 151 + 2*(command = "holddown")

[State 150, Hi to Lo]
type = StateTypeSet
trigger1 = statetype = S && command = "holddown"
statetype = C
physics = C

[State 150, Lo to Hi]
type = StateTypeSet
trigger1 = statetype = C && command != "holddown"
statetype = S
physics = S

[State 150, 3]
type = ForceFeedback
trigger1 = time = 0
waveform = square
time = 3

;---------------------------------------------------------------------------
; Stand Guard Get-Hit (knocked back)
[Statedef 151]
type    = S
movetype= H
physics = S
anim = 150

[State 151, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 151, 2]
type = VelSet
trigger1 = Time = GetHitVar(slidetime)
trigger2 = HitOver
x = 0

[State 151, 3]
type = CtrlSet
trigger1 = Time = GetHitVar(ctrltime)
value = 1

[State 151, Hi to Lo]
type = StateTypeSet
trigger1 = statetype = S && command = "holddown"
statetype = C
physics = C

[State 151, Lo to Hi]
type = StateTypeSet
trigger1 = statetype = C && command != "holddown"
statetype = S
physics = S

[State 151, 4]
type = ChangeState
trigger1 = HitOver
value = 130
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Guard Get-Hit (Shaking)
[Statedef 152]
type    = C
movetype= H
physics = N
velset = 0,0

[State 152, 1]
type = ChangeAnim
trigger1 = 1
value = 151

[State 152, 3]
type = ChangeState
trigger1 = HitShakeOver
value = 151 + 2*(command = "holddown")

[State 152, Hi to Lo]
type = StateTypeSet
trigger1 = statetype = S && command = "holddown"
statetype = C
physics = C

[State 152, Lo to Hi]
type = StateTypeSet
trigger1 = statetype = C && command != "holddown"
statetype = S
physics = S

[State 152, 4]
type = ForceFeedback
trigger1 = time = 0
waveform = square
time = 4

;---------------------------------------------------------------------------
; Crouch Guard Get-Hit (knocked back)
[Statedef 153]
type    = C
movetype= H
physics = C
anim = 151

[State 153, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 153, 2]
type = VelSet
trigger1 = Time = GetHitVar(slidetime)
trigger2 = HitOver
x = 0

[State 153, 3]
type = CtrlSet
trigger1 = Time = GetHitVar(ctrltime)
value = 1

[State 153, Hi to Lo]
type = StateTypeSet
trigger1 = statetype = S && command = "holddown"
statetype = C
physics = C

[State 153, Lo to Hi]
type = StateTypeSet
trigger1 = statetype = C && command != "holddown"
statetype = S
physics = S

[State 153, 4]
type = ChangeState
trigger1 = HitOver
value = 131
ctrl = 1

; Collapse
[Statedef 5129]
type = A
movetype = H
physics = N
anim = 5129
velset=0,0

[State 5130, Not Hit By Anything]
type = NotHitBy
trigger1 = 1
value = SCA
ignorehitpause=1

[State 5130, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nomusic
flag2 = nokosnd
ignorehitpause=1

[State 5129, ChangeState]
type = ChangeState
trigger1 = Hitshakeover
value = 5130
ctrl = 0
ignorehitpause=1

; Collapse
[Statedef 5130]
type = A
movetype = H
physics = N
anim = 5130

[State 0, HitVelSet]
type = HitVelSet
trigger1 = Time=0
x = 1

[State 0, VelSet]
type = VelSet
trigger1 = Time=0
y = -15

[State 5130, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nomusic
flag2 = nokosnd
ignorehitpause=1

[State 5130, Pause]
type = PlaySnd
trigger1 = Time=1
value = S5130,0
abspan= 0
volume= 255

[State 5130, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.5

[State 5130, Not Hit By Anything]
type = NotHitBy
trigger1 = 1
value = SCA

[State 5130, set your defenses to normal]
type = DefenceMulSet
trigger1 = 1
value = 1
ignorehitpause = 1

[State 5130, DIE]
type = ChangeState
trigger1 = Pos Y > 20 && Vel Y > 0
value = 5131

; Collapse (lying Down)
[Statedef 5131]
type = L
movetype = H
physics = C
anim = 5140
velset = 0,0

[State 5130, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nomusic
ignorehitpause=1

[State 0, PosSet]
type = PosSet
trigger1 = Time=0
y = 0

[State 5110, 7]
type = GameMakeAnim
trigger1 = Time=0
value = 62
pos = 0, 0
under = 0

[State 420, Whoosh!]
type = playsnd
trigger1 = Time=0
value = S22000, 0

[State 420, Whoosh!]
type = playsnd
trigger1 = Time=0
value = S2435, 2

[State 5131, Not Hit By Anything]
type = NotHitBy
trigger1 = 1
value = SCA

[State 5131, Finnally DIE!!]
type = ChangeState
trigger1 = Time>170
value = 5150

;---------------------------------------------------------------------------
; Initialize (at the start of the round)
[Statedef 5900]
type = S

[State 5900, Explosion Moment Off]
type = VarSet
trigger1 = Time = 0
var(24) = 0

[State 5900, FUCK]
type = VarSet
trigger1 = Time = 0
var(48) = 0

[State 5900, FUCK]
type = VarSet
trigger1 = Time = 0
var(49) = 0

[State 5900, Explosion Moment Off]
type = VarSet
trigger1 = Time = 0
var(28) = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time=0 && !roundsexisted
value = S912,0
volume = 555
abspan = 0

[State 5900, 3] ;Intro for round 1
type = ChangeState
triggerall = !roundsexisted
trigger1 = Teammode = Turns
trigger2 = p2name = "Clarice Di Lanza" || p4name = "Clarice Di Lanza"
trigger3 = p2name = "koakuma" || p4name = "koakuma"
trigger4 = p2name = "Glaugan_Koa" || p4name = "Glaugan_Koa"
trigger5 = p2name = "Sherisernes Zarbach" || p4name = "Sherisernes Zarbach"
trigger6 = roundno=1
value = 190

[Statedef 5300];Dizzy is not a common state, but still...
type = U
movetype = H
physics = U
ctrl = 0
velset = 0,0
anim = 5300

[State 5300, Regain Conciousness after a while];Say, 2 Seconds
type = SelfState
trigger1 = Time >= 120 && Alive
value = 5201
ctrl = 0

[State 5300, Die Again]
type = SelfState
trigger1 = Time >= 120 && !Alive
value = 5070
ctrl = 0

[State 5300, Random Pain Hitsparks]
type = Explod
trigger1 = Time%10=0
anim = F0+random%4
pos = -35,-60
postype = p1
facing = 1
vfacing = 1
bindtime = -1
random = 70,0
removetime = -2
supermovetime = 99999999
pausemovetime = 99999999
scale = 1,1
ontop = 1
shadow = 0,0,0
ownpal = 1

[State 5300, DO NOT DIZZY IF IN AIR]
type = SelfState ; Go B... A... C... K... to your OWN CNS!!!
trigger1 = StateType = A
value = 5070 ;Falling

; HIT_BADLY_HURT (Into Air)
[Statedef 5682]
type    = A
movetype= H
physics = N

[State 5682, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0
value = 1026

[State 5682, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = F7,2

[State 5682, Go on Rolling]
type = AngleAdd
trigger1 = 1
value = 45
ignorehitpause = 1

[State 5682, Yo Died]
type = AngleDraw
trigger1 = 1

[State 5682, VelSet]
type = VelSet
trigger1 = Time = 0
x = -8
y = -158 ; Epic Lose!!!

[State 5682, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,1

[State 5682, VelAdd]
type = VelAdd
trigger1 = 1
y = 5 ;Fall super faster

[State 5682, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 5682, Land]
trigger1 = Vel Y > 0 && Pos Y >= 20
type = SelfState
value = 5110

;------------------------------------------------------------------------------
; Guard unstabilized

[Statedef 6333]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0,0
poweradd = -1000
anim = 6333

[State 6333, Walk Backwards]
type = VelSet
trigger1 = 1
x = -1

[State 6333, Override Throws];Removes cheap & broken stuff
type = NotHitBy
trigger1 = 1
value = , AT

[State 6333, Time Over]
type = SelfState
trigger1 = time >= 60
value = 0
ctrl = 1

; HIT_TRIP2 (fall through air)
[Statedef 5071]
type    = A
movetype= H
physics = N

[State 5071, Set Tripped Var NOW]
type = VarSet
trigger1 = Time = 0
var(6) = 1

[State 5071, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 5071, 2] ;Acceleration
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5071, 3] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 15
type = ChangeState
value = 5110 ;HIT_LIEDOWN

;---------------------------------------------------------------------------
; HIT_LIEDOWN
[Statedef 5110]
type    = L
movetype= H
physics = N

[State 5110, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 5110, 1] ;For hit up/up-diag type (from state 5081)
type = ChangeAnim
persistent = 0
trigger1 = SelfAnimExist(5110 + (anim % 10))
trigger1 = anim = [5081,5089]
value = 5110 + (anim % 10)

[State 5110, 2] ;Hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
triggerall = anim != [5110,5119] ;Not already changed anim
trigger1 = anim != [5161,5169]
trigger2 = !SelfAnimExist(5170 + (anim % 10))
value = 5170

[State 5110, 3] ;Hit ground anim (for hit up)
type = ChangeAnim
triggerall = time = 0
triggerall = anim != [5110,5119] ;Not already changed anim
trigger1 = anim = [5161,5169]
trigger1 = SelfAnimExist(5170 + (anim % 10))
value = 5170 + (anim % 10)

[State 5110, 4]
type = HitFallDamage
trigger1 = Time = 0

[State 5110, 5]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5110, Var] ;Get fall velocity
type = VarSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) != 0
sysvar(1) = floor(vel y)

[State 5110, 6]
type = PlaySnd
trigger1 = Time = 0
trigger1 = !SysVar(0)
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)

[State 5110, 7]
type = GameMakeAnim
trigger1 = Time = 0
trigger1 = !SysVar(0)
value = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos = 0, 0
under = sysvar(1) <= 14

[State 5110, 8]
type = VelSet
trigger1 = Time = 0
y = 0

[State 5110, 9] ;For hit up type
type = ChangeAnim
persistent = 0
triggerall = anim = [5171,5179]
triggerall = SelfAnimExist(5110 + (anim % 10))
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground anim
value = 5110 + (anim % 10)

[State 5110, 10] ;For normal
type = ChangeAnim
persistent = 0
triggerall = Anim != [5111,5119]
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground frame
value = 5110

[State 5110, Anim For Trip State]
type = ChangeAnim
trigger1 = anim != 6365
trigger1 = var(6)
trigger1 = SelfAnimExist(6365)
value = 6365

[State 5110, 11] ;If just died
type = ChangeState
triggerall = !alive
triggerall = !var(6)
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground frame
trigger3 = Anim = [5110,5119]
value = 5150

[State 5110, 11] ;If just died 2
type = ChangeState
triggerall = !alive
triggerall = var(6)
trigger1 = Anim = 6365
value = 5100

[State 5110, 12]
type = VarSet
trigger1 = SysVar(0)
trigger1 = Time = 0
sysvar(0) = 0

[State 5110, 13] ;Friction
type = VelMul
trigger1 = 1
x = 0.85

[State 5110, 14]
type = ForceFeedback
trigger1 = alive
trigger1 = Time = 0
time = 8
ampl = 240
waveform = sine

[State 5110, 15]
type = ForceFeedback
trigger1 = !alive
trigger1 = Time = 0
ampl = 200, 7, -.467
time = 30
waveform = sine

;---------------------------------------------------------------------------
; HIT_BOUNCE (hit ground)
[Statedef 5100]
type    = L
movetype= H
physics = N

[State 5100, 1]
type = VelSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
trigger1 = vel x > 1
x = 1

[State 5100, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 5110, 6]
type = PlaySnd
trigger1 = Time = 0
value = S22000, 0

[State 5100, Var] ;Save fall velocity
type = VarSet
trigger1 = Time = 0
sysvar(1) = floor(vel y)


[State 5110, 6]
type = PlaySnd
trigger1 = Time = 0
trigger1 = !SysVar(0)
trigger1 = sysvar(1) > 14
value = S2435, 2

[State 5100, 2] ;Hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = (anim != [5051,5059]) && (anim != [5061,5069])
trigger2 = !SelfAnimExist(5100 + (anim % 10))
value = 5100

[State 5100, 3] ;Hit ground anim (for hit up)
type = ChangeAnim
trigger1 = time = 0
trigger1 = (anim = [5051,5059]) || (anim = [5061,5069])
trigger1 = SelfAnimExist(5100 + (anim % 10))
value = 5100 + (anim % 10)

[State 5100, 4]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5100, 5]
type = VelSet
trigger1 = Time = 0
y = 0

[State 5100, 6] ;Reduce speed
type = VelMul
trigger1 = Time = 0
x = 0.75

[State 5100, 7]
type = ChangeState
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
value = 5110 ;HIT_LIEDOWN

[State 5100, 8]
type = GameMakeAnim
trigger1 = Time = 1
value = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos = 0, 0
under = sysvar(1) <= 14

[State 5100, 9]
type = HitFallDamage
trigger1 = Time = 3

[State 5100, 10]
type = PlaySnd
trigger1 = Time = 1
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)

[State 5100, 11]
type = PosFreeze
trigger1 = 1

[State 5100, 12]
type = ChangeState
trigger1 = AnimTime = 0
value = 5101

[State 5100, 13]
type = ForceFeedback
trigger1 = Time = 0
waveform = sinesquare
ampl = 128,-3,-.2,.005
time = 20

;---------------------------------------------------------------------------
; HIT_GETUP
[Statedef 5120]
type    = L
movetype= I
physics = N

[State 5120, Disable Trip Var]
type = VarSet
trigger1 = Time = 0
var(6) = 0

[State 5120, 1a] ;Get up anim (normal)
type = ChangeAnim
triggerall = time = 0 && anim!=6365
trigger1 = anim != [5111,5119]
trigger2 = !SelfAnimExist(5120 + (anim % 10))
value = 5120


[State 5120, 1b] ;Get up anim (for hit up/diag-up)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim = 6365
value = 5121

[State 5120, 2]
type = VelSet
trigger1 = Time = 0
x = 0

[State 5120, 3]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 5120, 4]
type = HitFallSet
trigger1 = AnimTime = 0
value = 1

[State 5120, 5] ;Can't be thrown right after getting up
type = NotHitBy
trigger1 = AnimTime = 0
value = , NT,ST,HT
time = 12

[State 5120, 6] ;Can't be hit right after getting up (short time)
type = NotHitBy
trigger1 = AnimTime = 0
value2 = SCA
time = 3

[State 5120, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; HIT_LIEDEAD
[Statedef 5150]
type    = L
movetype= H
physics = N
sprpriority = -3

[State 5150, 1] ;Normal anim
type = ChangeAnim
triggerall = Time = 0
triggerall = SelfAnimExist(5140)
trigger1 = (anim != [5111,5119]) && (anim != [5171,5179])
trigger2 = !SelfAnimExist(5140 + (anim % 10))
value = 5140

[State 5150, 3] ;Hit up type anim
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (anim = [5111,5119]) || (anim = [5171,5179])
trigger1 = SelfAnimExist(5140 + (anim % 10))
value = 5140 + (anim % 10)

[State 5150, 4] ;Match over anim
type = ChangeAnim
persistent = 0
;trigger1 = Time = 0
trigger1 = matchover = 1 || TeamMode = Turns
trigger1 = Anim = [5140,5149]
trigger1 = SelfAnimExist(anim+10)
value = anim+10

[State 5150, 5] ;Switch to 5110 if liedead anim does not exist
type = ChangeAnim
trigger1 = Time = 0
trigger1 = Anim != [5140,5159]
trigger1 = Anim != [5110,5119]
value = 5110

[State 5150, 6] ;Friction
type = VelMul
trigger1 = 1
x = 0.85

[State 5150, 7] ;Friction
type = VelSet
trigger1 = Vel x < .05
persistent = 0
x = 0

[State 0, Explod]
type = Explod
triggerall = matchover = 1 || Teammode = Turns
trigger1 = !NumExplod(5150)
anim = 4
ID = 5150
pos = 0,0
postype = p1
bindtime = -1
removetime = -1
ontop = 0
scale=0.5,0.5
sprpriority = 2

[State 5150, AssertSpecial]
type = Null;AssertSpecial
trigger1 = matchover = 1 || TeamMode = Turns && roundstate >= 4
flag = invisible

[State 5150, 8]
type = PlayerPush
trigger1 = matchover = 1
value = 0

[State 0, ChangeState]
type = ChangeAnim
trigger1 = roundstate>=4 && matchover!=1 && Anim!=6150
value = 6150
ctrl = 0

[State 5150, 8]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 6150, AnimTime]
type = PlaySnd
triggerall = anim=6150
trigger1 = AnimElem=34
value = S5150,0

[Statedef 35300];Dream Cancelled Upon (Air)
type = A
movetype = H
physics = N
ctrl = 0
velset = 0,0
anim = 5300

[State 35300, VelAdd]
type = VelAdd
trigger1 = 1
y = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 10
value = 35301
ctrl = 0

[Statedef 35301];Dream Cancelled Upon (Land)
type = S
movetype = H
physics = N
ctrl = 0
velset = 0,0
anim=5300

[State 35300, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5300, Regain Conciousness after a while]
type = SelfState
trigger1 = Time >= 500 && Alive
value = 0
ctrl = 1

[State 5300, Die Again]
type = SelfState
trigger1 = Time >= 120 && !Alive
value = 5070
ctrl = 0

;Guard Staggered
[Statedef 5301]
type = S
movetype = H
physics = N
ctrl = 0
velset = -1.6,0
sprpriority = -1

[State 5301, Change Anim]
type = ChangeAnim2
trigger1 = Time = 0 && !SelfAnimExist(5180)
value = 3950

[State 5301, Change Anim]
type = ChangeAnim
trigger1 = Time = 0 && SelfAnimExist(5180)
value = 5180

[State 5301,ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0 && (SelfAnimExist(5910) || SelfAnimExist(5940))
value = ifelse(SelfAnimExist(5940),5940,5910)

[State 5301, ChangeState]
type = ChangeState
trigger1 = Time >= 62
value = 5302 ;Stagger Recover
ctrl = 0

;Guard Staggered
[Statedef 5302]
type = S
movetype = H
physics = S
ctrl = 0
velset = 0,0
sprpriority = -1

[State 5302, Change Anim]
type = ChangeAnim2
trigger1 = Time = 0 && !SelfAnimExist(5181)
value = 3951

[State 5302, Change Anim]
type = ChangeAnim
trigger1 = Time = 0 && SelfAnimExist(5181)
value = 5181

[State 5302, AnimTime is 0 or 15 ticks pass]
type = SelfState
trigger1 = (AnimTime = 0) || (Time > 15)
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; DRAWGAME (Time over)
[Statedef 175]
type = S
ctrl = 0
velset = 0,0

[State 175, 1] ; If no anim, use go to lose state.
type = ChangeState
trigger1 = Time = 0
value = 170

[State 175, 2]
type = ChangeAnim
trigger1 = Time = 0
value = 175

[State 175, 3]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

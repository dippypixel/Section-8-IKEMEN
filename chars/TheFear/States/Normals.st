;--- NORMALS ---
;States 500 - 1499
;Reserved for Normal Attacks.
;Examples, Light Punch, Heavy Kick, Command Normals such as Street Fighter Ken's, "-> + Medium Kick"

;---------------------------------------------------------------------------
; Light Punch
[Statedef 200]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
anim = 200
poweradd = 15
sprpriority = 2
facep2 = 1

[State 200, HitDef]
type = HitDef
trigger1 = !time
attr = S, NA
damage = ceil(20*fvar(11)),0
animtype = Light
hitflag = MAF
guardflag = MA
pausetime = 8,8
sparkno = s6000
guard.sparkno = s6002
sparkxy = -15,-90
hitsound = s0,2
guardsound = s0,5
ground.type = High
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -3,0
air.type = High
air.velocity = -1,-2.5
airguard.velocity = -3,0
air.hittime = 20
getpower = 10,10
givepower = 0,0

[State 200, Damage Dampen]
type = VarSet
trigger1 = movehit
fvar(10) = fvar(10)*0.95
ignorehitpause = 1
persistent = 0

[State 200, PlaySnd]
type = PlaySnd
trigger1 = !AnimElemTime(3)
value = s0,0

[State 200, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Medium Kick
[Statedef 210]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
anim = 210
poweradd = 30
sprpriority = 2
facep2 = 1

[State 210, HitDef]
type = HitDef
trigger1 = !time
attr = S, NA
damage = ceil(40*fvar(11)),0
animtype = Medium
hitflag = MAF
guardflag = MA
pausetime = 10,10
sparkno = s6001
guard.sparkno = s6003
sparkxy = -15,-58
hitsound = s0,3
guardsound = s0,5
ground.type = High
ground.slidetime = 23
ground.hittime = 23
ground.velocity = -4,0
air.type = High
air.velocity = -1.5,-2.5
airguard.velocity = -4,0
air.hittime = 23
getpower = 20,20
givepower = 0,0

[State 210, Damage Dampen]
type = VarSet
trigger1 = movehit
fvar(10) = fvar(10)*0.95
ignorehitpause = 1
persistent = 0

[State 210, PlaySnd]
type = PlaySnd
trigger1 = !AnimElemTime(6)
value = s0,1

[State 210, PlaySnd]
type = PlaySnd
trigger1 = random < 500
trigger1 = !AnimElemTime(3)
value = s210,0
channel = 0

[State 210, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Heavy Kick
[Statedef 220]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
anim = 220
poweradd = 50
sprpriority = 2
facep2 = 1

[State 220, HitDef]
type = HitDef
trigger1 = !time
attr = S, NA
damage = ceil(60*fvar(11)),0
animtype = Heavy
hitflag = MAF
guardflag = MA
pausetime = 12,12
sparkno = s6001
guard.sparkno = s6003
sparkxy = -15,-66
hitsound = s0,4
guardsound = s0,5
ground.type = High
ground.slidetime = 30
ground.hittime = 30
ground.velocity = -5,0
air.type = High
air.velocity = -2,-3
airguard.velocity = -5,0
air.hittime = 30
getpower = 30,30
givepower = 0,0

[State 220, Damage Dampen]
type = VarSet
trigger1 = movehit
fvar(10) = fvar(10)*0.95
ignorehitpause = 1
persistent = 0

[State 220, PlaySnd]
type = PlaySnd
trigger1 = !AnimElemTime(7)
value = s0,1

[State 220, PlaySnd]
type = PlaySnd
trigger1 = random < 500
trigger1 = !AnimElemTime(4)
value = s220,0
channel = 0

[State 220, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Hard Caress
[Statedef 230]
type = S
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 230
poweradd = 50
sprpriority = 2
facep2 = 1

[State 230, StateTypeSet]
type = StateTypeSet
trigger1 = !time
statetype = A

[State 230, VelSet]
type = VelSet
trigger1 = !time
x = 3
y = -5

[State 230, VelAdd]
type = VelAdd
trigger1 = AnimElemNo(0) >= 1
y = .4

[State 230, HitDef]
type = HitDef
trigger1 = !time
attr = A, NA
damage = ceil(60*fvar(11)),0
animtype = Hard
hitflag = MAF
guardflag = HA
pausetime = 12,12
sparkno = s6001
guard.sparkno = s6003
sparkxy = -15,-60
hitsound = s0,3
guardsound = s0,5
ground.type = High
ground.slidetime = 30
ground.hittime = 30
ground.velocity = -5,0
air.type = High
air.velocity = -4,-3
air.hittime = 30
getpower = 30,30
givepower = 0,0

[State 230, Damage Dampen]
type = VarSet
trigger1 = movehit
fvar(10) = fvar(10)*0.95
ignorehitpause = 1
persistent = 0

[State 230, PlaySnd]
type = PlaySnd
trigger1 = !AnimElemTime(2)
value = s0,1

[State 230, PlaySnd]
type = PlaySnd
trigger1 = !time
value = s230,0
channel = 0

[State 230, ChangeState]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y > -Vel Y
value = 231
ctrl = 0

;---------------------------------------------------------------------------
; Landing
[Statedef 231]
type = S
movetype = I
physics = S
velset = 0,0
ctrl = 0
anim = 231

[State 231, PosSet]
type = PosSet
trigger1 = !time
y = 0

[State 231, PlaySnd]
type = PlaySnd
trigger1 = !time
value = s52,0

[State 231, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Light Punch
[Statedef 400]
type = C
movetype = A
physics = C
velset = 0,0
ctrl = 0
anim = 400
poweradd = 15
sprpriority = 2
facep2 = 1

[State 400, HitDef]
type = HitDef
trigger1 = !time
attr = C, NA
damage = ceil(20*fvar(11)),0
animtype = Light
hitflag = MAF
guardflag = MA
pausetime = 8,8
sparkno = s6000
guard.sparkno = s6002
sparkxy = -15,-52
hitsound = s0,2
guardsound = s0,5
ground.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -3,0
air.type = High
air.velocity = -1,-2
airguard.velocity = -3,0
air.hittime = 20
getpower = 10,10
givepower = 0,0

[State 400, Damage Dampen]
type = VarSet
trigger1 = movehit
fvar(10) = fvar(10)*0.95
ignorehitpause = 1
persistent = 0

[State 400, PlaySnd]
type = PlaySnd
trigger1 = !AnimElemTime(2)
value = s0,0

[State 400, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Medium Kick
[Statedef 410]
type = C
movetype = A
physics = C
velset = 0,0
ctrl = 0
anim = 410
poweradd = 30
sprpriority = 2
facep2 = 1

[State 410, HitDef]
type = HitDef
trigger1 = !time
attr = C, NA
damage = ceil(40*fvar(11)),0
animtype = Medium
hitflag = MAFD
guardflag = L
pausetime = 10,10
sparkno = s6001
guard.sparkno = s6003
sparkxy = -15,-10
hitsound = s0,3
guardsound = s0,5
ground.type = Low
ground.slidetime = 23
ground.hittime = 23
ground.velocity = -4,0
down.velocity = -4,0
air.type = High
air.velocity = -2,-3
air.hittime = 23
getpower = 20,20
givepower = 0,0

[State 410, Damage Dampen]
type = VarSet
trigger1 = movehit
fvar(10) = fvar(10)*0.95
ignorehitpause = 1
persistent = 0

[State 410, PlaySnd]
type = PlaySnd
trigger1 = !AnimElemTime(5)
value = s0,1

[State 410, PlaySnd]
type = PlaySnd
trigger1 = random < 500
trigger1 = !time
value = s210,0
channel = 0

[State 410, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Heavy Punch
[Statedef 420]
type = C
movetype = A
physics = C
velset = 0,0
ctrl = 0
anim = 420
poweradd = 50
sprpriority = 2
facep2 = 1

[State 420, HitDef]
type = HitDef
trigger1 = !time
attr = C, NA
damage = ceil(60*fvar(11)),0
animtype = Heavy
hitflag = MAFD
guardflag = MA
pausetime = 12,12
sparkno = s6001
guard.sparkno = s6003
sparkxy = -15,-30
hitsound = s0,4
guardsound = s0,5
ground.type = High
ground.slidetime = 25
ground.hittime = 25
ground.velocity = -1,-9
guard.velocity = -5.0
air.type = High
air.velocity = -1,-9
airguard.velocity = -5,0
air.hittime = 25
getpower = 30,30
givepower = 0,0
fall = 1
fall.recover = 0
envshake.time = 12
envshake.ampl = 3

[State 420, Damage Dampen]
type = VarSet
trigger1 = movehit
fvar(10) = fvar(10)*0.95
ignorehitpause = 1
persistent = 0

[State 420, PlaySnd]
type = PlaySnd
trigger1 = !AnimElemTime(4)
value = s0,0

[State 420, PlaySnd]
type = PlaySnd
trigger1 = !AnimElemTime(3)
value = s420,0
channel = 0

[State 420, Jump Cancel]
type = ChangeState
triggerall = !var(59)
trigger1 = command = "holdup"
trigger1 = MoveContact && AnimElemTime(10) < 0
value = 40

[State 420, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Air Light Punch
[Statedef 600]
type = A
movetype = A
physics = A
ctrl = 0
anim = 600
poweradd = 15
sprpriority = 2

[State 600, HitDef]
type = HitDef
trigger1 = !time
attr = A, NA
damage = ceil(20*fvar(11)),0
animtype = Light
hitflag = MAF
guardflag = HA
pausetime = 8,8
sparkno = s6000
guard.sparkno = s6002
sparkxy = -15,-90
hitsound = s0,2
guardsound = s0,5
ground.type = High
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -3,0
air.type = High
air.velocity = -1,-2.5
airguard.velocity = -3,0
air.hittime = 20
getpower = 10,10
givepower = 0,0

[State 600, Damage Dampen]
type = VarSet
trigger1 = movehit
fvar(10) = fvar(10)*0.95
ignorehitpause = 1
persistent = 0

[State 600, PlaySnd]
type = PlaySnd
trigger1 = !AnimElemTime(3)
value = s0,0

[State 600, CtrlSet]
type = CtrlSet
trigger1 = time = 10
value = 1

;---------------------------------------------------------------------------
; Air Medium Kick
[Statedef 610]
type = A
movetype = A
physics = A
ctrl = 0
anim = 610
poweradd = 30
sprpriority = 2

[State 610, HitDef]
type = HitDef
trigger1 = !time
attr = A, NA
damage = ceil(40*fvar(11)),0
animtype = Medium
hitflag = MAF
guardflag = HA
pausetime = 10,10
sparkno = s6001
guard.sparkno = s6003
sparkxy = -15,-50
hitsound = s0,3
guardsound = s0,5
ground.type = High
ground.slidetime = 23
ground.hittime = 23
ground.velocity = -4,0
air.type = High
air.velocity = -2,-2
airguard.velocity = -4,0
air.hittime = 23
getpower = 20,20
givepower = 0,0

[State 610, Damage Dampen]
type = VarSet
trigger1 = movehit
fvar(10) = fvar(10)*0.95
ignorehitpause = 1
persistent = 0

[State 610, ChangeAnim]
type = ChangeAnim
triggerall = time = 0
trigger1 = prevstateno = 600
value = anim
elem = 2

[State 610, PlaySnd]
type = PlaySnd
trigger1 = !AnimElemTime(3)
value = s0,1

[State 610, PlaySnd]
type = PlaySnd
trigger1 = random < 500
trigger1 = !AnimElemTime(3)
value = s210,0
channel = 0

;---------------------------------------------------------------------------
; Air Heavy Kick
[Statedef 620]
type = A
movetype = A
physics = A
ctrl = 0
anim = 620
poweradd = 50
sprpriority = 2

[State 620, HitDef]
type = HitDef
trigger1 = !time
attr = A, NA
damage = ceil(60*fvar(11)),0
animtype = Heavy
hitflag = MAF
guardflag = HA
pausetime = 12,12
sparkno = s6001
guard.sparkno = s6003
sparkxy = -15,-50
hitsound = s0,4
guardsound = s0,5
ground.type = High
ground.slidetime = 30
ground.hittime = 30
ground.velocity = -5,0
air.type = High
air.velocity = -2,-3
airguard.velocity = -4,0
air.hittime = 30
getpower = 30,30
givepower = 0,0

[State 620, Damage Dampen]
type = VarSet
trigger1 = movehit
fvar(10) = fvar(10)*0.95
ignorehitpause = 1
persistent = 0

[State 620, ChangeAnim]
type = ChangeAnim
triggerall = time = 0
trigger1 = prevstateno = 600 || prevstateno = 610
value = anim
elem = 3

[State 620, PlaySnd]
type = PlaySnd
trigger1 = !AnimElemTime(4)
value = s0,1

[State 620, PlaySnd]
type = PlaySnd
trigger1 = random < 500
trigger1 = !AnimElemTime(2)
value = s620,0
channel = 0

;---------------------------------------------------------------------------
; Air Hard Caress
[Statedef 630]
type = A
movetype = A
physics = N
ctrl = 0
anim = 630
poweradd = 50
sprpriority = 2

[State 630, VelSet]
type = VelSet
trigger1 = !time
x = 3
y = 0

[State 630, VelAdd]
type = VelAdd
trigger1 = AnimElemNo(0) >= 1
y = .4

[State 630, HitDef]
type = HitDef
trigger1 = !time
attr = A, NA
damage = ceil(60*fvar(11)),0
animtype = Hard
hitflag = MAF
guardflag = HA
pausetime = 12,12
sparkno = s6001
guard.sparkno = s6003
sparkxy = -20,-60
hitsound = s0,3
guardsound = s0,5
ground.type = High
ground.slidetime = 30
ground.hittime = 30
ground.velocity = -5,0
air.type = High
air.velocity = -6,8
air.hittime = 30
getpower = 30,30
givepower = 0,0
air.fall = 1
fall.recover = 0

[State 630, Damage Dampen]
type = VarSet
trigger1 = movehit
fvar(10) = fvar(10)*0.95
ignorehitpause = 1
persistent = 0

[State 630, ChangeAnim]
type = ChangeAnim
triggerall = time = 0
trigger1 = prevstateno = 600 || prevstateno = 610 || prevstateno = 620
value = anim
elem = 2

[State 630, PlaySnd]
type = PlaySnd
trigger1 = !AnimElemTime(2)
value = s0,1

[State 630, PlaySnd]
type = PlaySnd
trigger1 = !time
value = s230,0
channel = 0

[State 630, ChangeState]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y > -Vel Y
value = 231
ctrl = 0

;---------------------------------------------------------------------------
; Throw
[Statedef 800]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
anim = 800
sprpriority = 2
facep2 = 1

[State 800, HitDef]
type = HitDef
Trigger1 = !time
attr = S, NT
hitflag = M-
priority = 1, Miss
getpower = 100
p1facing = ifelse(command = "holdfwd", 1, -1)
p2facing = 1
p1stateno = 810
p2stateno = 820
sparkno = -1
fall = 1
fall.recover = 0

[State 800, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0 
value = 0
ctrl = 1

;----------------------------------------------------------------------------------
; Got you!
[Statedef 810]
type = S
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 810
sprpriority = 2

[State 810, Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 6004
ID = 6004
pos = 45,-85
postype = p1
ownpal = 1
ontop = 1
sprpriority = 10

[State 810, Explod]
type = Explod
trigger1 = AnimElem = 6
anim = 6001
ID = 6001
pos = 42,-55
postype = p1
ownpal = 1
ontop = 1
sprpriority = 10

[State 810, Explod]
type = Explod
trigger1 = AnimElem = 7
anim = 811
ID = 811
pos = 32,10
postype = p1
ownpal = 1
sprpriority = 10

[State 810, PlaySnd]
type = PlaySnd
trigger1 = !time
value = s810,0

[State 810, PlaySnd]
type = PlaySnd
trigger1 = !AnimElemTime(6)
value = s0,3

[State 810, PlaySnd]
type = PlaySnd
trigger1 = !AnimElemTime(2)
value = s810,1
channel = 0

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(6) < 0
pos = 30,0

[State 810, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 6
value = -100
absolute = 1

[State 810, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; OW
[Statedef 820]
type = S
movetype = H
physics = N
velset = 0,0

[State 820, ChangeAnim2]
type = ChangeAnim2
trigger1 = !time
value = 820

[State 820, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 820 && AnimTime = 0
value = 5170

[State 820, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 5170 && AnimTime = 0
value = 5110

[State 820, SelfState]
type = SelfState
triggerall = Anim = 5110
trigger1 = Time >= 64
value = ifelse(alive,5120,5150)
ctrl = 0
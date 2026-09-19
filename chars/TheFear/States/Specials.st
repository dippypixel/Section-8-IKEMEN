;--- SPECIALS ---
;States 1500 - 2499
;Reserved for Special Attacks
;Examples, Ryu's Hadouken, Shoryuken, and Tatsumaki Senpukyaku.
;Examples, Mario's Fireball, Cape, Tornado Spin, Coin Uppercut

;---------------------------------------------------------------------------
; Playing with Fire
[Statedef 1000]
type = S
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 1000
poweradd = 100
sprpriority = 2
facep2 = 1

[State 1000, Helper]
type = Helper
trigger1 = AnimElem = 5
helpertype = Normal
stateno = 1001
ID = 1001
pos = 0,0
postype = p1
ownpal = 1
ignorehitpause = 1

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = !AnimElemTime(5)
value = s1000,0+random%2
channel = 0

[State 1000, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Hit
[Statedef 1001]
type = A
movetype = A
physics = N
ctrl = 0
sprpriority = 3

[State 1001, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1001
value = 1001

[State 1001, MoveContact]
type = VarSet
trigger1 = movecontact && numtarget
trigger1 = !(target,ishelper) 
var(10) = 1
ignorehitpause = 1

[State 1001, PlaySnd]
type = PlaySnd
trigger1 = !time
value = s1001,0

[State 1001, HitDef]
type = HitDef
trigger1 = !movecontact && !movereversed
attr = , SA
damage = ceil(100*root,fvar(11)),30
animtype = Heavy
hitflag = MAF
guardflag = MA
pausetime = 0,12
sparkno = s1002
guard.sparkno = s1002
sparkxy = -10,-55
hitsound = s0,3
guardsound = s0,5
ground.type = High
ground.slidetime = 30
ground.hittime = 30
ground.velocity = -6,0
air.type = High
air.velocity = -2.5,-3
air.hittime = 30
air.fall = 1
fall.recover = 0
givepower = 0,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0

[State 1001, PowerAdd]
type = PowerAdd
trigger1 = movecontact = 1
trigger1 = numtarget
value = 40
ignorehitpause = 1

[State 1001, Damage Dampen]
type = ParentVarSet
trigger1 = movehit
fvar(10) = root,fvar(10)*0.925
ignorehitpause = 1
persistent = 0

[State 1001, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = 1002
ignorehitpause = 1

[State 1001, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0
ignorehitpause = 1

;---------------------------------------------------------------------------
; State that keeps track of the target
[Statedef 1002]
type = A
movetype = I
physics = N
anim = 99999
ctrl = 0

[State 1002, DestroySelf]
type = DestroySelf
triggerall = !animtime
trigger1 = !numtarget
trigger2 = numtarget
trigger2 = (target,time <= 1) && !(target,hitshakeover)

;---------------------------------------------------------------------------
; Violence Combination
[Statedef 1100]
type = S
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 1100
poweradd = 100
sprpriority = 2
facep2 = 1

[State 1100, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 3

[State 1100, VelSet]
type = VelSet
trigger1 = AnimElem = 5
x = 1

[State 1100, HitDef]
type = HitDef
trigger1 = !time
attr = S, SA
damage = ceil(65*fvar(11)),15
animtype = Heavy
hitflag = MAF
guardflag = MA
pausetime = 10,10
sparkno = s6006
guard.sparkno = s6003
sparkxy = -20,-66
hitsound = s1100,2
guardsound = s0,5
ground.type = High
ground.slidetime = 30
ground.hittime = 30
ground.velocity = -5,0
air.type = High
air.velocity = -2,-3
air.hittime = 30
air.fall = 1
fall.recover = 0
getpower = 40,40
givepower = 0,0

[State 1100, Damage Dampen]
type = VarSet
trigger1 = movehit
fvar(10) = fvar(10)*0.925
ignorehitpause = 1
persistent = 0

[State 1100, PlaySnd]
type = PlaySnd
trigger1 = !AnimElemTime(2)
value = s1100,0

[State 1100, PlaySnd]
type = PlaySnd
trigger1 = !time
value = s1100,1
channel = 0

[State 1100, ChangeState]
type = ChangeState
triggerall = !var(59)
triggerall = command = "holdfwd" && command = "a" || command = "holdback" && command = "a"
trigger1 = AnimElemTime(4) > 0 && AnimElemTime(7) < 0
trigger2 = MoveContact
value = 1101

[State 1100, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Follow-up
[Statedef 1101]
type = S
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 1101
poweradd = 70
sprpriority = 2
facep2 = 1

[State 1101, VelSet]
type = VelSet
trigger1 = !time
x = 3

[State 1101, VelSet]
type = VelSet
trigger1 = AnimElem = 7
x = 0

[State 1101, HitDef]
type = HitDef
trigger1 = !time
attr = S, SA
damage = ceil(65*fvar(11)),15
animtype = Heavy
hitflag = MAF
guardflag = MA
pausetime = 10,10
sparkno = s6006
guard.sparkno = s6003
sparkxy = -20,-66
hitsound = s1100,2
guardsound = s0,5
ground.type = High
ground.slidetime = 30
ground.hittime = 30
ground.velocity = -5,0
air.type = High
air.velocity = -2,-3
air.hittime = 30
air.fall = 1
fall.recover = 0
getpower = 40,40
givepower = 0,0

[State 1101, Damage Dampen]
type = VarSet
trigger1 = movehit
fvar(10) = fvar(10)*0.925
ignorehitpause = 1
persistent = 0

[State 1101, PlaySnd]
type = PlaySnd
trigger1 = !AnimElemTime(5)
value = s1100,0

[State 1101, PlaySnd]
type = PlaySnd
trigger1 = !time
value = s1101,0
channel = 0

[State 1101, ChangeState]
type = ChangeState
triggerall = !var(59)
triggerall = command = "holdfwd" && command = "a" || command = "holdback" && command = "a"
trigger1 = AnimElemTime(5) > 0 && AnimElemTime(14) < 0
trigger2 = MoveContact
value = 1102

[State 1101, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Another Follow-up
[Statedef 1102]
type = S
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 1102
poweradd = 70
sprpriority = 2
facep2 = 1

[State 1102, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 3

[State 1102, VelSet]
type = VelSet
trigger1 = AnimElem = 8
x = 0

[State 1102, Width]
type = Width
trigger1 = (AnimElemTime(4) >= 0) && (AnimElemTime(8) < 0)
value = 30,0

[State 1102, HitDef]
type = HitDef
trigger1 = !time
attr = S, SA
damage = ceil(65*fvar(11)),15
animtype = Heavy
hitflag = MAF
guardflag = MA
pausetime = 12,12
sparkno = s6007
guard.sparkno = s6003
sparkxy = -20,-66
hitsound = s1100,3
guardsound = s0,5
ground.type = High
ground.slidetime = 30
ground.hittime = 30
ground.velocity = -3,-4.5
guard.velocity = -6.0
air.type = High
air.velocity = -3,-4.5
air.hittime = 30
getpower = 40,40
givepower = 0,0
fall = 1
fall.recover = 0

[State 1102, Damage Dampen]
type = VarSet
trigger1 = movehit
fvar(10) = fvar(10)*0.925
ignorehitpause = 1
persistent = 0

[State 1102, PlaySnd]
type = PlaySnd
trigger1 = !AnimElemTime(6)
value = s1100,0

[State 1102, PlaySnd]
type = PlaySnd
trigger1 = !time
value = s1102,0
channel = 0

[State 1102, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Lagrange Point
[Statedef 1200]
type = S
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 1200
poweradd = 100
sprpriority = 2
facep2 = 1

[State 1200, Helper]
type = Helper
trigger1 = AnimElemTime(2) = 4
helpertype = Normal
stateno = 1201
ID = 1201
pos = 18,-78
postype = p1
ownpal = 1
ignorehitpause = 1

[State 1200, Helper]
type = Helper
trigger1 = AnimElemTime(2) = 4 || AnimElemTime(2) = 6 || AnimElemTime(3) = 4
helpertype = Normal
stateno = 1202
ID = 1202+floor((AnimElemTime(2)-4)%3)
pos = 18,-78
postype = p1
ownpal = 1
ignorehitpause = 1

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = !time
value = s1200,1
channel = 0

[State 1200, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Lagrange Point - Effects
[Statedef 1201]
type = S
movetype = I
physics = N
ctrl = 0
anim = 99999

[State 1201, PlaySnd]
type = PlaySnd
trigger1 = !time
value = s1200,0

[State 1201, Effect 1]
type = Explod
trigger1 = !time
anim = 1211
id = 1211
pos = 0,0
postype = p1
sprpriority = 3
ownpal = 1

[State 1201, Effect 2]
type = Explod
trigger1 = !time
anim = 1212
id = 1212
pos = 0,0
postype = p1
sprpriority = 4
ownpal = 1

[State 1201, Effect 3]
type = Explod
trigger1 = !time
anim = 1213
id = 1213
pos = 0,0
postype = p1
sprpriority = 5
ownpal = 1

[State 1201, ModifyExplod]
type = ModifyExplod
trigger1 = time = 8
trigger1 = numexplod(1211)
id = 1211
postype = p1
vel = 2.0,-1.50

[State 1201, ModifyExplod]
type = ModifyExplod
trigger1 = time = 6
trigger1 = numexplod(1212)
id = 1212
postype = p1
vel = 1.50,-2.0

[State 1201, ModifyExplod]
type = ModifyExplod
trigger1 = time = 4
trigger1 = numexplod(1213)
id = 1213
postype = p1
vel = 1.0,-2.50

[State 1201, DestroySelf]
type = DestroySelf
triggerall = ishelper
trigger1 = time >= 40

;---------------------------------------------------------------------------
; Lagrange Point - Actual Bullets
[Statedef 1202]
type = A
movetype = A
physics = N
ctrl = 0
anim = 1201

[State 1202, VelSet]
type = VelSet
trigger1 = ishelper(1202)
x = 2.0
y = -1.50

[State 1202, VelSet]
type = VelSet
trigger1 = ishelper(1203)
x = 1.50
y = -2.0

[State 1202, VelSet]
type = VelSet
trigger1 = ishelper(1204)
x = 1.0
y = -2.50

[State 1202, MoveContact]
type = VarSet
trigger1 = movecontact && numtarget
trigger1 = !(target,ishelper) 
var(10) = 1
ignorehitpause = 1

[State 1202, HitDef]
type = HitDef
trigger1 = !movecontact && !movereversed
attr = , SP
damage = ceil(58*root,fvar(11)),15
animtype = Heavy
hitflag = MAF
guardflag = M
pausetime = 0,8
sparkno = s6001
guard.sparkno = s6003
sparkxy = -15,0
hitsound = s0,2
guardsound = s0,5
ground.type = High
ground.slidetime = 25
ground.hittime = 25
ground.velocity = -2,-5
guard.velocity = -8.0
air.type = High
air.velocity = -2,-5
air.hittime = 25
fall = 1
fall.recover = 0
yaccel = 0.5
givepower = 0,0
ground.cornerpush.veloff = 0

[State 1202, PowerAdd]
type = PowerAdd
trigger1 = movecontact = 1
trigger1 = numtarget
value = 40
ignorehitpause = 1

[State 1202, Damage Dampen]
type = ParentVarSet
trigger1 = movehit
fvar(10) = root,fvar(10)*0.925
ignorehitpause = 1
persistent = 0

[State 1202, StateTypeSet]
type = StateTypeSet
trigger1 = movecontact || movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State 1202, DestroySelf]
type = DestroySelf
trigger1 = time > 18
ignorehitpause = 1
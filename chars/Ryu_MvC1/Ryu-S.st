;---------------------------------------------------------------------------
;é„îgìÆåù
[Statedef 1000]
type    = S
movetype= A
physics = S
poweradd= 30
ctrl = 0
velset = 0,0
anim = 1000
sprpriority = 2

[State 1000]
type = PlaySnd
trigger1 = AnimElem = 4
value = S1000,(Var(0)=2&&PalNo<=10)
channel = 0

[State 1000]
type = PlaySnd
trigger1 = AnimElem = 4
value = S1000,2

[State 1000]
type = Explod
trigger1 = AnimElem = 2
anim = 7000
ID = 7000
postype = P1
pos = 35,0
sprpriority = 3
ownpal = 1

[State 1000]
type = Helper
trigger1 = AnimElem = 4
helpertype = Normal
name = "Hadouken"
postype = p1
pos = 45,-55
stateno = 1050
ID = 1050
ownpal = 1

[State 1000]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;íÜîgìÆåù
[Statedef 1001]
type    = S
movetype= A
physics = S
poweradd= 30
ctrl = 0
velset = 0,0
anim = 1000
sprpriority = 2

[State 1000]
type = PlaySnd
trigger1 = AnimElem = 4
value = S1000,(Var(0)=2&&PalNo<=10)
channel = 0

[State 1000]
type = PlaySnd
trigger1 = AnimElem = 4
value = S1000,2

[State 1000]
type = Explod
trigger1 = AnimElem = 2
anim = 7000
ID = 7000
postype = P1
pos = 35,0
sprpriority = 3
ownpal = 1

[State 1000]
type = Helper
trigger1 = AnimElem = 4
helpertype = Normal
name = "Hadouken"
postype = p1
pos = 45,-55
stateno = 1050
ID = 1050
ownpal = 1

[State 1000]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;ã≠îgìÆåù
[Statedef 1002]
type    = S
movetype= A
physics = S
poweradd= 30
ctrl = 0
velset = 0,0
anim = 1000
sprpriority = 2

[State 1000]
type = PlaySnd
trigger1 = AnimElem = 4
value = S1000,(Var(0)=2&&PalNo<=10)
channel = 0

[State 1000]
type = PlaySnd
trigger1 = AnimElem = 4
value = S1000,2

[State 1000]
type = Explod
trigger1 = AnimElem = 2
anim = 7000
ID = 7000
postype = P1
pos = 35,0
sprpriority = 3
ownpal = 1

[State 1000]
type = Helper
trigger1 = AnimElem = 4
helpertype = Normal
name = "Hadouken"
postype = p1
pos = 45,-55
stateno = 1050
ID = 1050
ownpal = 1

[State 1000]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;é„ãÛíÜîgìÆåù
[Statedef 1010]
type    = A
movetype= A
physics = N
poweradd= 30
ctrl = 0
velset = Vel X/10,Vel Y/10
anim = 1010
sprpriority = 2

[State 1010]
type = VelSet
trigger1 = Vel Y > 1
y = 1

[State 1010]
type = VelSet
trigger1 = Vel Y < -1
y = -1

[State 1010]
type = VelSet
trigger1 = Vel Y != 0
trigger1 = Vel Y = (-0.1,0.1)
y = 0.1*ifelse(Vel Y > 0,1,-1)

[State 1010]
type = VelSet
trigger1 = Vel X != 0
trigger1 = Vel X = (-0.1,0.1)
x = 0.1*ifelse(Vel X > 0,1,-1)

[State 1010]
type = VelSet
trigger1 = Vel Y > 0
trigger1 = Pos Y +Vel Y >= 0
y = 0

[State 1010]
type = PlaySnd
trigger1 = AnimElem = 4
value = S1000,0
channel = 0

[State 1010]
type = PlaySnd
trigger1 = AnimElem = 4
value = S1000,2

[State 1010]
type = Helper
trigger1 = AnimElem = 4
helpertype = Normal
name = "Hadouken"
postype = p1
pos = 45,-75
stateno = 1050
ID = 1051
ownpal = 1

[State 1010]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = Var(5)
;---------------------------------------------------------------------------
;íÜãÛíÜîgìÆåù
[Statedef 1011]
type    = A
movetype= A
physics = N
poweradd= 30
ctrl = 0
velset = Vel X/10,Vel Y/10
anim = 1010
sprpriority = 2

[State 1011]
type = VelSet
trigger1 = Vel Y > 1
y = 1

[State 1011]
type = VelSet
trigger1 = Vel Y < -1
y = -1

[State 1011]
type = VelSet
trigger1 = Vel Y != 0
trigger1 = Vel Y = (-0.1,0.1)
y = 0.1*ifelse(Vel Y > 0,1,-1)

[State 1011]
type = VelSet
trigger1 = Vel X != 0
trigger1 = Vel X = (-0.1,0.1)
x = 0.1*ifelse(Vel X > 0,1,-1)

[State 1011]
type = VelSet
trigger1 = Vel Y > 0
trigger1 = Pos Y +Vel Y >= 0
y = 0

[State 1011]
type = PlaySnd
trigger1 = AnimElem = 4
value = S1000,0
channel = 0

[State 1011]
type = PlaySnd
trigger1 = AnimElem = 4
value = S1000,2

[State 1011]
type = Helper
trigger1 = AnimElem = 4
helpertype = Normal
name = "Hadouken"
postype = p1
pos = 45,-75
stateno = 1050
ID = 1051
ownpal = 1

[State 1011]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = Var(5)
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;ã≠ãÛíÜîgìÆåù
[Statedef 1012]
type    = A
movetype= A
physics = N
poweradd= 30
ctrl = 0
velset = Vel X/10,Vel Y/10
anim = 1010
sprpriority = 2

[State 1012]
type = VelSet
trigger1 = Vel Y > 1
y = 1

[State 1012]
type = VelSet
trigger1 = Vel Y < -1
y = -1

[State 1012]
type = VelSet
trigger1 = Vel Y != 0
trigger1 = Vel Y = (-0.1,0.1)
y = 0.1*ifelse(Vel Y > 0,1,-1)

[State 1012]
type = VelSet
trigger1 = Vel X != 0
trigger1 = Vel X = (-0.1,0.1)
x = 0.1*ifelse(Vel X > 0,1,-1)

[State 1012]
type = VelSet
trigger1 = Vel Y > 0
trigger1 = Pos Y +Vel Y >= 0
y = 0

[State 1012]
type = PlaySnd
trigger1 = AnimElem = 4
value = S1000,0
channel = 0

[State 1012]
type = PlaySnd
trigger1 = AnimElem = 4
value = S1000,2

[State 1012]
type = Helper
trigger1 = AnimElem = 4
helpertype = Normal
name = "Hadouken"
postype = p1
pos = 45,-75
stateno = 1050
ID = 1051
ownpal = 1

[State 1012]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = Var(5)

;---------------------------------------------------------------------------
;é„ëìãÛ/éaãÛîgìÆåù
[Statedef 1020]
type    = A
movetype= A
physics = N
poweradd= 30
ctrl = 0
velset = Vel X/10,Vel Y/10
anim = 1020
sprpriority = 2

[State 1020]
type = VelSet
trigger1 = Vel Y > 1
y = 1

[State 1020]
type = VelSet
trigger1 = Vel Y < -1
y = -1

[State 1020]
type = VelSet
trigger1 = Vel Y != 0
trigger1 = Vel Y = (-0.1,0.1)
y = 0.1*ifelse(Vel Y > 0,1,-1)

[State 1020]
type = VelSet
trigger1 = Vel X != 0
trigger1 = Vel X = (-0.1,0.1)
x = 0.1*ifelse(Vel X > 0,1,-1)

[State 1020]
type = VelSet
trigger1 = Vel Y > 0
trigger1 = Pos Y +Vel Y >= 0
y = 0

[State 1020]
type = PlaySnd
trigger1 = AnimElem = 3
value = S1000,(Var(0) = 2)
channel = 0

[State 1020]
type = PlaySnd
trigger1 = AnimElem = 3
value = S1000,2

[State 1020]
type = Helper
trigger1 = Var(0) = 1
trigger1 = AnimElem = 3
helpertype = Normal
name = "Souku-Hadouken"
postype = p1
pos = 50,-55
stateno = 1060
ID = 1060
ownpal = 1

[State 1020]
type = Helper
trigger1 = Var(0) = 2
trigger1 = AnimElem = 3
helpertype = Normal
name = "Zanku-Hadouken"
postype = p1
pos = 50,-55
stateno = 1070
ID = 1070
ownpal = 1

[State 1020]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = Var(5)
;---------------------------------------------------------------------------
;íÜëìãÛ/éaãÛîgìÆåù
[Statedef 1021]
type    = A
movetype= A
physics = N
poweradd= 30
ctrl = 0
velset = Vel X/10,Vel Y/10
anim = 1020
sprpriority = 2

[State 1021]
type = VelSet
trigger1 = Vel Y > 1
y = 1

[State 1021]
type = VelSet
trigger1 = Vel Y < -1
y = -1

[State 1021]
type = VelSet
trigger1 = Vel Y != 0
trigger1 = Vel Y = (-0.1,0.1)
y = 0.1*ifelse(Vel Y > 0,1,-1)

[State 1021]
type = VelSet
trigger1 = Vel X != 0
trigger1 = Vel X = (-0.1,0.1)
x = 0.1*ifelse(Vel X > 0,1,-1)

[State 1021]
type = VelSet
trigger1 = Vel Y > 0
trigger1 = Pos Y +Vel Y >= 0
y = 0

[State 1021]
type = PlaySnd
trigger1 = AnimElem = 3
value = S1000,(Var(0) = 2)
channel = 0

[State 1021]
type = PlaySnd
trigger1 = AnimElem = 3
value = S1000,2

[State 1021]
type = Helper
trigger1 = Var(0) = 1
trigger1 = AnimElem = 3
helpertype = Normal
name = "Souku-Hadouken"
postype = p1
pos = 50,-55
stateno = 1060
ID = 1060
ownpal = 1

[State 1021]
type = Helper
trigger1 = Var(0) = 2
trigger1 = AnimElem = 3
helpertype = Normal
name = "Zanku-Hadouken"
postype = p1
pos = 50,-55
stateno = 1070
ID = 1070
ownpal = 1

[State 1021]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = Var(5)
;---------------------------------------------------------------------------
;ã≠ëìãÛ/éaãÛîgìÆåù
[Statedef 1022]
type    = A
movetype= A
physics = N
poweradd= 30
ctrl = 0
velset = Vel X/10,Vel Y/10
anim = 1020
sprpriority = 2

[State 1022]
type = VelSet
trigger1 = Vel Y > 1
y = 1

[State 1022]
type = VelSet
trigger1 = Vel Y < -1
y = -1

[State 1022]
type = VelSet
trigger1 = Vel Y != 0
trigger1 = Vel Y = (-0.1,0.1)
y = 0.1*ifelse(Vel Y > 0,1,-1)

[State 1022]
type = VelSet
trigger1 = Vel X != 0
trigger1 = Vel X = (-0.1,0.1)
x = 0.1*ifelse(Vel X > 0,1,-1)

[State 1022]
type = VelSet
trigger1 = Vel Y > 0
trigger1 = Pos Y +Vel Y >= 0
y = 0

[State 1022]
type = PlaySnd
trigger1 = AnimElem = 3
value = S1000,(Var(0) = 2)
channel = 0

[State 1022]
type = PlaySnd
trigger1 = AnimElem = 3
value = S1000,2

[State 1022]
type = Helper
trigger1 = Var(0) = 1
trigger1 = AnimElem = 3
helpertype = Normal
name = "Souku-Hadouken"
postype = p1
pos = 50,-55
stateno = 1060
ID = 1060
ownpal = 1

[State 1022]
type = Helper
trigger1 = Var(0) = 2
trigger1 = AnimElem = 3
helpertype = Normal
name = "Zanku-Hadouken"
postype = p1
pos = 50,-55
stateno = 1070
ID = 1070
ownpal = 1

[State 1022]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = Var(5)
;---------------------------------------------------------------------------
;îgìÆåù
[Statedef 1050]
type = A
physics = N
movetype = A
velset = 4+1.5*(Parent,StateNo=1001||Parent,StateNo=1011)+3*(Parent,StateNo=1002||Parent,StateNo=1012),0
ctrl = 0
sprpriority = 3

[State 1051]
type = ChangeAnim
trigger1 = Anim != 1050
value = 1050

[State 1050]
type = StateTypeSet
trigger1 = MoveType = A
trigger1 = P2StateNo = [5070,5071]
MoveType = I

[State 1050]
type = StateTypeSet
trigger1 = MoveType = I
trigger1 = P2StateNo != [5070,5071]
MoveType = A

[State 1050]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 1050]
type = NotHitBy
trigger1 = 1
time = 1
value = , AA, AT
ignorehitpause = 1

[State 1050]
type = HitOverride
trigger1 = 1
time = 1
stateno = 1052
attr = SCA, AP
ignorehitpause = 1

[State 1050] 
type = Explod
trigger1 = NumExplod(7001) = 0
trigger1 = Root,StateType != A
trigger1 = Time = 1
anim = 7001
ID = 7001
pos = 0,55
postype = p1
sprpriority = 4
bindtime = -1
removetime = -1
shadow = -1
ownpal = 1

[State 1050]
type = HitDef
trigger1 = Time = 1
attr = A, SP
damage = 110+10*(NumExplod(7001)),11+(NumExplod(7001))
animtype = Hard
priority = 1, Hit
hitflag = MAF
guardflag = MA
pausetime = 0,5
guard.sparkno = S8010
sparkno = S8003
sparkxy = 0, 0
hitsound   = S10,1+(NumExplod(7001))
guardsound = S6,0
ground.type = High
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = -12
air.velocity = -6,-1
getpower = 55,30
givepower = 55,0
airguard.velocity = -6,0
air.fall = 1
envshake.time = 2
envshake.freq = 2
envshake.ampl = 2
envshake.phase = 0

[State 1050]
type = ChangeState
trigger1 = FrontEdgeBodyDist < -40
trigger2 = Movecontact
trigger3 = Parent,Var(0) = 1 && Time = 27
value = 1051
;---------------------------------------------------------------------------
;îgìÆåùè¡ñ≈
[Statedef 1051]
anim = 1051

[State -2]
type = TargetState
triggerall = NumTarget
triggerall = Parent,Var(6) = 0
triggerall = Target,StateNo = [5030,5050]
trigger1 = Target,Alive = 1
trigger1 = Target,HitFall = 1
value = 15050

[State 1051];ÉGÉäÉAÉãÉtÉBÉjÉbÉVÉÖ
type = ParentVarSet
trigger1 = Parent,Var(0) != 1
trigger1 = Parent,Var(6) = 1
var(6) = 2

[State 1051]
type = AngleDraw
trigger1 = 1

[State 1051] 
type = Explod
trigger1 = NumExplod(7001) = 1
anim = 7002
ID = 7002
pos = 0,55
postype = p1
sprpriority = 4
bindtime = 8
removetime = 8
shadow = -1
ownpal = 1

[State 1051] 
type = RemoveExplod
trigger1 = NumExplod(7001) = 1
ID = 7001

[State 1051, DestroySelf]
type = Destroyself
trigger1 = AnimTime = 0

[Statedef 1052]

[State 1051]
type = ChangeState
triggerall = NumTarget = 0
trigger1 = GetHitVar(damage) = [0,30]
trigger1 = P2StateNo < 2000
value = 1050

[State 1051]
type = ChangeState
trigger1 = NumTarget
trigger2 = GetHitVar(damage) > 30
trigger3 = P2StateNo >= 2000
value = 1051
;---------------------------------------------------------------------------
;ëìãÛîgìÆåù
[Statedef 1060]
type = A
physics = N
movetype = A
anim = 1050
ctrl = 0
sprpriority = 3

[State 1060]
type = AngleDraw
trigger1 = 1

[State 1060]
type = AngleSet
trigger1 = Time = 0
value = -22.5

[State 1060]
type = VarSet
trigger1 = Time = 0
fvar(0) = 4+1.5*(Root,StateNo=1021)+3*(Root,StateNo=1022)

[State 1060]
type = VelSet
trigger1 = Time = 0
x = FVar(0)*cos(Pi/8)
y = FVar(0)*sin(Pi/8)

[State 1060]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 1060]
type = NotHitBy
trigger1 = 1
time = 1
value = , AA, AT
ignorehitpause = 1

[State 1060]
type = HitOverride
trigger1 = 1
time = 1
stateno = 1051
attr = SCA, AP
ignorehitpause = 1

[State 1060]
type = HitDef
trigger1 = Parent,Var(6) = 0
trigger1 = Time = 1
attr = A, SP
damage = 120,12
animtype = Hard
hitflag = MAF
guardflag = MA
pausetime = 0,5
guard.sparkno = S8010
sparkno = S8003
sparkxy = 0, 0
hitsound   = S10,1
guardsound = S6,0
ground.type = High
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = -12
air.velocity = -6,-2
getpower = 55,30
givepower = 55,0
airguard.velocity = -6,0
fall = 0
envshake.time = 2
envshake.freq = 2
envshake.ampl = 2
envshake.phase = 0

[State 1060]
type = HitDef
trigger1 = Parent,Var(6) = 1
trigger1 = Time = 1
attr = A, SP
damage = 120,12
animtype = Hard
hitflag = MAF
guardflag = MA
pausetime = 0,5
guard.sparkno = S8010
sparkno = S8003
sparkxy = 0, 0
hitsound   = S10,1
guardsound = S6,0
ground.type = High
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = -12
air.velocity = -15,-5
getpower = 55,30
givepower = 55,0
airguard.velocity = -6,0
air.fall = 1
envshake.time = 2
envshake.freq = 2
envshake.ampl = 2
envshake.phase = 0

[State 1060]
type = ChangeState
trigger1 = Time = 19
trigger2 = Pos Y >= 0
trigger3 = Movecontact
value = 1051
;---------------------------------------------------------------------------
;éaãÛîgìÆåù
[Statedef 1070]
type = A
physics = N
movetype = A
anim = 1070
ctrl = 0
sprpriority = 3

[State 1070]
type = VarSet
trigger1 = Time = 0
fvar(0) = 3.5+1.5*(Root,StateNo=1021)+3*(Root,StateNo=1022)

[State 1070]
type = VelSet
trigger1 = Time = 0
x = FVar(0)*cos(Pi/8)
y = FVar(0)*sin(Pi/8)

[State 1070]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 1070]
type = NotHitBy
trigger1 = 1
time = 1
value = , AA, AT
ignorehitpause = 1

[State 1070]
type = HitOverride
trigger1 = 1
time = 1
stateno = 1071
attr = SCA, AP
ignorehitpause = 1

[State 1060]
type = HitDef
trigger1 = Parent,Var(6) = 0
trigger1 = Time = 1
attr = A, SP
damage = 120,12
animtype = Hard
hitflag = MAF
guardflag = MA
pausetime = 0,5
guard.sparkno = S8010
sparkno = S8003
sparkxy = 0, 0
hitsound   = S10,1
guardsound = S6,0
ground.type = High
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = -12
air.velocity = -6,-2
getpower = 55,30
givepower = 55,0
airguard.velocity = -6,0
fall = 0
envshake.time = 2
envshake.freq = 2
envshake.ampl = 2
envshake.phase = 0

[State 1060]
type = HitDef
trigger1 = Parent,Var(6) = 1
trigger1 = Time = 1
attr = A, SP
damage = 120,12
animtype = Hard
hitflag = MAF
guardflag = MA
pausetime = 0,5
guard.sparkno = S8010
sparkno = S8003
sparkxy = 0, 0
hitsound   = S10,1
guardsound = S6,0
ground.type = High
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = -12
air.velocity = -15,-5
getpower = 55,30
givepower = 55,0
airguard.velocity = -6,0
air.fall = 1
envshake.time = 2
envshake.freq = 2
envshake.ampl = 2
envshake.phase = 0

[State 1070]
type = ChangeState
trigger1 = Pos Y >= 0
trigger2 = FrontEdgeBodyDist < -40
trigger3 = Movecontact
value = 1071
;---------------------------------------------------------------------------
;éaãÛîgìÆåùè¡ñ≈
[Statedef 1071]
anim = 1071
velset = 0,0

[State -2]
type = TargetState
triggerall = NumTarget
triggerall = Parent,Var(6) = 0
triggerall = Target,StateNo = [5030,5050]
trigger1 = Target,Alive = 1
trigger1 = Target,HitFall = 1
value = 15050

[State 1071];ÉGÉäÉAÉãÉtÉBÉjÉbÉVÉÖ
type = ParentVarSet
trigger1 = Parent,Var(6) = 1
var(6) = 2

[State 1071]
type = Destroyself
trigger1 = AnimTime = 0
;---------------------------------------------------------------------------
;é„è∏ó¥åù
[Statedef 1100]
type    = A
movetype = A
physics = N
anim = 1100+(Var(0)=1)*50
sprpriority = 2
velset = 0,0
ctrl = 0
poweradd = 55

[State 1100]
type = PlaySnd
trigger1 = Anim = 1100
trigger1 = AnimElem = 2
value = S1100,(Var(0)=2&&PalNo<=10)
channel = 0

[State 1100]
type = PlaySnd
trigger1 = Anim = 1150
trigger1 = AnimElem = 3
value = S1100,0
channel = 0

[State 1100]
type = PlaySnd
trigger1 = Anim = 1101
trigger1 = AnimElem = 2
trigger2 = Anim = 1151
trigger2 = AnimElem = 3
value = S5,2

[State 1110]
type = Helper
trigger1 = Var(0) != 0
trigger1 = AnimElem = 1
helpertype = normal
name = "fire"
ID = 1110
stateno = 1110
pos = 0,0
postype = p1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1100]
type = Explod
trigger1 = AnimElem = 3
anim = 7000
ID = 7000
postype = P1
pos = 50,0
bindtime = 1
removetime = -2
sprpriority = 5
ownpal = 1

[State 1100]
type = Explod
trigger1 = Var(0) != 0
trigger1 = MoveHit = 1
trigger1 = HitPauseTime = 8
anim = 1160
ID = 1160
postype = P2
pos = Random%20-20+(Var(0)=2)*10,-70+(Var(0)=2)*40
bindtime = -1
removetime = 45
sprpriority = -3
facing = -1
ownpal = 1
ignorehitpause = 1

[State 1100]
type = VelAdd
trigger1 = Anim = 1100
trigger1 = AnimElem = 3
trigger2 = Anim = 1150
trigger2 = AnimElem = 4
x = 2.5+1.5*(Var(0)=1)
y = -6

[State 1100]
type = VelAdd
trigger1 = Var(0) = 1
trigger1 = AnimElem = 4,> 0
trigger1 = AnimElem = 5,< 0
x = .2

[State 1100]
type = VelSet
trigger1 = Anim = 1100
trigger1 = AnimElem = 4
trigger2 = Anim = 1150
trigger2 = AnimElem = 5
x = 1

[State 1100]
type = VelSet
trigger1 = Anim = 1100
trigger1 = AnimElem = 5
trigger2 = Anim = 1150
trigger2 = AnimElem = 6
x = 0

[State 1100]
type = VelAdd
trigger1 = Anim = 1100
trigger1 = AnimElem = 4,>= -4
y = .6

[State 1100]
type = VelAdd
trigger1 = Anim = 1150
trigger1 = AnimElem = 5,>= -2
y = 1

[State 1100]
type = NotHitBy
trigger1 = Anim = 1100
trigger1 = AnimElem = 3,< 5
trigger2 = Anim = 1150
trigger2 = AnimElem = 4,< 6
value = SCA

[State 1100]
type = HitDef
trigger1 = Var(0) = 0
trigger1 = AnimElem = 2
attr = A, SA
animtype  = Hard
damage  = 150,15
priority  = 7, Hit
hitflag = MAF
guardflag = MA
pausetime = 8,8
guard.sparkno = S8010
sparkno = S8003
sparkxy = -45,-64
hitsound   = S10,2
guardsound = S6,0
ground.type = Low
ground.slidetime = 35
ground.hittime = 35
ground.velocity = -6,-14
air.velocity = -6,-14
fall = 0
air.fall = 0
getpower = 55,30
givepower = 55,0
airguard.velocity = -6,0
yaccel = .5
envshake.time = 2
envshake.freq = 2
envshake.ampl = 2
envshake.phase = 0

[State 1100]
type = HitDef
trigger1 = Var(0) = 1
trigger1 = AnimElem = 2
attr = S, SA
animtype  = Hard
damage  = 150,15
priority  = 7, Hit
hitflag = MAFD
guardflag = MA
pausetime = 8,8
guard.sparkno = S8010
sparkno = S8003
sparkxy = -45,-64
hitsound   = S10,2
guardsound = S6,0
ground.type = Low
ground.slidetime = 35
ground.hittime = 35
ground.velocity = -6,-14
air.velocity = -6,-14
ground.cornerpush.veloff = -6
fall = 0
air.fall = 0
getpower = 55,30
givepower = 55,0
airguard.velocity = -6,0
yaccel = .5
envshake.time = 2
envshake.freq = 2
envshake.ampl = 2
envshake.phase = 0
palfx.time = 35
palfx.add = 120,100,150
palfx.mul = 250,200,50
palfx.sinadd = 30,15,0,3

[State 1100]
type = HitDef
trigger1 = Var(0) = 2
trigger1 = AnimElem = 2
attr = S, SA
animtype  = Hard
damage  = 150,15
priority  = 7, Hit
hitflag = MAF
guardflag = MA
pausetime = 8,8
guard.sparkno = S8010
sparkno = S8003
sparkxy = -45,-64
hitsound   = S10,2
guardsound = S6,0
ground.type = Low
ground.slidetime = 35
ground.hittime = 35
ground.velocity = -6,-14
air.velocity = -6,-14
ground.cornerpush.veloff = -6
fall = 0
air.fall = 0
getpower = 55,30
givepower = 55,0
airguard.velocity = -6,0
yaccel = .5
envshake.time = 2
envshake.freq = 2
envshake.ampl = 2
envshake.phase = 0
palfx.time = 35
palfx.add = 150,50,150
palfx.sinadd = 30,30,30,3

[State 1100]
type = ChangeState
trigger1 = AnimElem = 4,>= 0
trigger1 = Pos Y+Vel Y >= 0
value = 52
;---------------------------------------------------------------------------
;íÜè∏ó¥åù
[Statedef 1101]
type    = A
movetype = A
physics = N
anim = 1101+(Var(0)=1)*50
sprpriority = 2
velset = 0,0
ctrl = 0
poweradd = 55

[State 1100]
type = PlaySnd
trigger1 = Anim = 1101
trigger1 = AnimElem = 2
value = S1100,(Var(0)=2&&PalNo<=10)
channel = 0

[State 1100]
type = PlaySnd
trigger1 = Anim = 1151
trigger1 = AnimElem = 3
value = S1100,0
channel = 0

[State 1100]
type = PlaySnd
trigger1 = Anim = 1101
trigger1 = AnimElem = 2
trigger2 = Anim = 1151
trigger2 = AnimElem = 3
value = S5,2

[State 1110]
type = Helper
trigger1 = Var(0) != 0
trigger1 = AnimElem = 1
helpertype = normal
name = "fire"
ID = 1111
stateno = 1110
pos = 0,0
postype = p1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1100]
type = Explod
trigger1 = AnimElem = 3
anim = 7000
ID = 7000
postype = P1
pos = 0,0
bindtime = 1
removetime = -2
sprpriority = 5
ownpal = 1

[State 1100]
type = Explod
trigger1 = Var(0) != 0
trigger1 = MoveHit = 1
trigger1 = HitPauseTime = 8
anim = 1160
ID = 1160
postype = P2
pos = Random%20-20,-70
bindtime = -1
removetime = 45
sprpriority = -3
facing = -1
ownpal = 1
ignorehitpause = 1

[State 1100]
type = VelAdd
trigger1 = Anim = 1101
trigger1 = AnimElem = 3
trigger2 = Anim = 1151
trigger2 = AnimElem = 4
x = 3.5+2.5*(Var(0)=1)
y = -8

[State 1100]
type = VelSet
trigger1 = Anim = 1101
trigger1 = AnimElem = 4
trigger2 = Anim = 1151
trigger2 = AnimElem = 5
x = 1

[State 1100]
type = VelSet
trigger1 = Anim = 1101
trigger1 = AnimElem = 5
trigger2 = Anim = 1151
trigger2 = AnimElem = 6
x = 0

[State 1100]
type = VelAdd
trigger1 = Anim = 1101
trigger1 = AnimElem = 4,>= -4
y = .6

[State 1100]
type = VelAdd
trigger1 = Anim = 1151
trigger1 = AnimElem = 5,>= -4
y = 1

[State 1101]
type = NotHitBy
trigger1 = Anim = 1101
trigger1 = AnimElem = 3,< 5
trigger2 = Anim = 1151
trigger2 = AnimElem = 4,< 6
value = SCA

[State 1100]
type = HitDef
trigger1 = Var(0) = 0
trigger1 = AnimElem = 2
attr = A, SA
animtype  = Hard
damage  = 150,15
priority  = 7, Hit
hitflag = MAF
guardflag = MA
pausetime = 8,8
guard.sparkno = S8010
sparkno = S8003
sparkxy = -45,-64
hitsound   = S10,2
guardsound = S6,0
ground.type = Low
ground.slidetime = 45
ground.hittime = 45
ground.velocity = -8,-17
air.velocity = -8,-17
fall = 0
air.fall = 0
getpower = 55,30
givepower = 55,0
airguard.velocity = -6,0
yaccel = .5
envshake.time = 2
envshake.freq = 2
envshake.ampl = 2
envshake.phase = 0

[State 1100]
type = HitDef
trigger1 = Var(0) = 1
trigger1 = AnimElem = 2
attr = S, SA
animtype  = Hard
damage  = 140,14
priority  = 7, Hit
hitflag = MAFD
guardflag = MA
pausetime = 8,8
guard.sparkno = S8010
sparkno = S8003
sparkxy = -45,-64
hitsound   = S10,2
guardsound = S6,0
ground.type = Low
ground.slidetime = 45
ground.hittime = 45
ground.velocity = -3,-8
air.velocity = -3,-8
ground.cornerpush.veloff = -5
fall = 0
air.fall = 0
getpower = 55,30
givepower = 55,0
airguard.velocity = -6,0
yaccel = .5
envshake.time = 2
envshake.freq = 2
envshake.ampl = 2
envshake.phase = 0
palfx.time = 35
palfx.add = 120,100,150
palfx.mul = 250,200,50
palfx.sinadd = 30,15,0,3

[State 1100]
type = HitDef
trigger1 = Var(0) = 1
trigger1 = AnimElem = 4
attr = A, SA
animtype  = Hard
damage  = 80,8
priority  = 7, Hit
hitflag = MAF
guardflag = MA
pausetime = 8,8
guard.sparkno = S8010
sparkno = S8003
sparkxy = -45,-64
hitsound   = S10,2
guardsound = S6,0
ground.type = Low
ground.slidetime = 45
ground.hittime = 45
ground.velocity = -8,-17
air.velocity = -8,-17
ground.cornerpush.veloff = -10
fall = 0
air.fall = 0
getpower = 55,30
givepower = 55,0
airguard.velocity = -6,0
yaccel = .5
envshake.time = 2
envshake.freq = 2
envshake.ampl = 2
envshake.phase = 0
palfx.time = 35
palfx.add = 120,100,150
palfx.mul = 250,200,50
palfx.sinadd = 30,15,0,3

[State 1100]
type = HitDef
trigger1 = Var(0) = 2
trigger1 = AnimElem = 2
attr = S, SA
animtype  = Hard
damage  = 140,14
priority  = 7, Hit
hitflag = MAF
guardflag = MA
pausetime = 8,8
guard.sparkno = S8010
sparkno = S8003
sparkxy = -45,-64
hitsound   = S10,2
guardsound = S6,0
ground.type = Low
ground.slidetime = 45
ground.hittime = 45
ground.velocity = -3,-8
air.velocity = -3,-8
ground.cornerpush.veloff = -5
fall = 0
air.fall = 0
getpower = 55,30
givepower = 55,0
airguard.velocity = -6,0
yaccel = .5
envshake.time = 2
envshake.freq = 2
envshake.ampl = 2
envshake.phase = 0
palfx.time = 35
palfx.add = 150,50,150
palfx.sinadd = 30,30,30,3

[State 1100]
type = HitDef
trigger1 = Var(0) = 2
trigger1 = AnimElem = 3
attr = A, SA
animtype  = Hard
damage  = 70,7
priority  = 7, Hit
hitflag = MAF
guardflag = MA
pausetime = 8,8
guard.sparkno = S8010
sparkno = S8003
sparkxy = -45,-64
hitsound   = S10,2
guardsound = S6,0
ground.type = Low
ground.slidetime = 45
ground.hittime = 45
ground.velocity = -8,-17
air.velocity = -8,-17
ground.cornerpush.veloff = -10
fall = 0
air.fall = 0
getpower = 55,30
givepower = 55,0
airguard.velocity = -6,0
yaccel = .5
envshake.time = 2
envshake.freq = 2
envshake.ampl = 2
envshake.phase = 0
palfx.time = 35
palfx.add = 150,50,150
palfx.sinadd = 30,30,30,3

[State 1100]
type = ChangeState
trigger1 = AnimElem = 4,>= 0
trigger1 = Pos Y+Vel Y >= 0
value = 52
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;ã≠è∏ó¥åù
[Statedef 1102]
type    = A
movetype = A
physics = N
anim = 1102+(Var(0)=1)*50
sprpriority = 2
velset = 0,0
ctrl = 0
poweradd = 55

[State 1102]
type = ScreenBound
trigger1 = 1
value = 1

[State 1102]
type = PlaySnd
trigger1 = AnimElem = 3
value = S1100,(Var(0)=2&&PalNo<=10)
channel = 0

[State 1102]
type = PlaySnd
trigger1 = AnimElem = 3
value = S5,2

[State 1112]
type = Helper
trigger1 = !IsHelper
trigger1 = Var(0) != 0
trigger1 = AnimElem = 1
helpertype = normal
name = "fire"
ID = 1112
stateno = 1110
pos = 0,0
postype = p1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1102]
type = Explod
trigger1 = AnimElem = 3
anim = 7000
ID = 7000
postype = P1
pos = 0,0
bindtime = 1
removetime = -2
sprpriority = 5

[State 1102]
type = Explod
trigger1 = Var(0) != 0
trigger1 = MoveHit = 1
trigger1 = HitPauseTime = 8
anim = 1160+IsHelper
ID = 1160
postype = P2
pos = Random%20-20,-70
bindtime = -1
removetime = 45
sprpriority = -3
facing = -1
ownpal = 1
ignorehitpause = 1

[State 1102]
type = VelAdd
trigger1 = AnimElem = 4
x = 5+3*(Var(0)=1)
y = -10

[State 1102]
type = VelSet
trigger1 = AnimElem = 5
x = 1

[State 1102]
type = VelSet
trigger1 = AnimElem = 6
x = 0

[State 1102]
type = VelAdd
trigger1 = Anim = 1102
trigger1 = AnimElem = 5,>= -4
y = 0.6

[State 1102]
type = VelAdd
trigger1 = Anim = 1152
trigger1 = AnimElem = 5,>= -4
y = 1

[State 1102]
type = NotHitBy
trigger1 = Anim = 1102
trigger1 = AnimElem = 4,< 8
trigger2 = Anim = 1152
trigger2 = AnimElem = 4,< 10
value = SCA

[State 1102]
type = HitDef
trigger1 = Var(0) = 0
trigger1 = AnimElem = 3
attr = S, SA
animtype  = Hard
damage  = 150,15
priority  = 7, Hit
hitflag = MAF
guardflag = MA
pausetime = 8,8
guard.sparkno = S8010
sparkno = S8003
sparkxy = -45,-64
hitsound   = S10,2
guardsound = S6,0
ground.type = Low
ground.slidetime = 45
ground.hittime = 35
ground.velocity = -10,-19
air.velocity = -10,-19
fall = 0
air.fall = 0
getpower = 55,30
givepower = 55,0
airguard.velocity = -6,0
yaccel = .5
envshake.time = 2
envshake.freq = 2
envshake.ampl = 2
envshake.phase = 0

[State 1102]
type = HitDef
trigger1 = Var(0) = 1
trigger1 = AnimElem = 2
attr = S, SA
animtype  = Hard
damage  = 100,12
priority  = 7, Hit
hitflag = MAFD
guardflag = MA
pausetime = 8,8
guard.sparkno = S8010
sparkno = S8003
sparkxy = -45,-64
hitsound   = S10,2
guardsound = S6,0
ground.type = Low
ground.slidetime = 45
ground.hittime = 45
ground.velocity = -2,-8
air.velocity = -2,-8
ground.cornerpush.veloff = -8
fall = 0
air.fall = 0
getpower = 55,30
givepower = 55,0
airguard.velocity = -6,0
yaccel = .5
envshake.time = 2
envshake.freq = 2
envshake.ampl = 2
envshake.phase = 0
palfx.time = 35
palfx.add = 120,100,150
palfx.mul = 250,200,50
palfx.sinadd = 30,15,0,3

[State 1102]
type = HitDef
trigger1 = Var(0) = 1
trigger1 = AnimElem = 3
attr = S, SA
animtype  = Hard
damage  = 60,6
priority  = 7, Hit
hitflag = MAF
guardflag = MA
pausetime = 8,8
guard.sparkno = S8010
sparkno = S8003
sparkxy = -45,-64
hitsound   = S10,2
guardsound = S6,0
ground.type = Low
ground.slidetime = 45
ground.hittime = 45
ground.velocity = -7,-17
air.velocity = -7,-17
ground.cornerpush.veloff = -15
fall = 0
air.fall = 0
getpower = 55,30
givepower = 55,0
airguard.velocity = -6,0
yaccel = .5
envshake.time = 2
envshake.freq = 2
envshake.ampl = 2
envshake.phase = 0
palfx.time = 35
palfx.add = 120,100,150
palfx.mul = 250,200,50
palfx.sinadd = 30,15,0,3

[State 1102]
type = HitDef
trigger1 = Var(0) = 1
trigger1 = AnimElem = 4
attr = A, SA
animtype  = Hard
damage  = 60,6
priority  = 7, Hit
hitflag = MAF
guardflag = MA
pausetime = 8,8
guard.sparkno = S8010
sparkno = S8003
sparkxy = -45,-64
hitsound   = S10,2
guardsound = S6,0
ground.type = Low
ground.slidetime = 45
ground.hittime = 45
ground.velocity = -10,-19
air.velocity = -10,-19
fall = 0
air.fall = 0
getpower = 55,30
givepower = 55,0
airguard.velocity = -6,0
yaccel = .5
envshake.time = 2
envshake.freq = 2
envshake.ampl = 2
envshake.phase = 0
palfx.time = 35
palfx.add = 120,100,150
palfx.mul = 250,200,50
palfx.sinadd = 30,15,0,3

[State 1102]
type = HitDef
trigger1 = Var(0) = 2
trigger1 = AnimElem = 2
attr = S, SA
animtype  = Hard
damage  = 150,15
priority  = 7, Hit
hitflag = MAF
guardflag = MA
pausetime = 8,8
guard.sparkno = S8010
sparkno = S8003
sparkxy = -45,-64
hitsound   = S10,2
guardsound = S6,0
ground.type = Low
ground.slidetime = 45
ground.hittime = 45
ground.velocity = -2,-8
air.velocity = -2,-8
ground.cornerpush.veloff = -8
fall = 0
air.fall = 0
getpower = 55,30
givepower = 55,0
airguard.velocity = -6,0
yaccel = .5
envshake.time = 2
envshake.freq = 2
envshake.ampl = 2
envshake.phase = 0
palfx.time = 35
palfx.add = 150,50,150
palfx.sinadd = 30,30,30,3

[State 1102]
type = HitDef
trigger1 = Var(0) = 2
trigger1 = AnimElem = 3
attr = S, SA
animtype  = Hard
damage  = 50,5
priority  = 7, Hit
hitflag = MAF
guardflag = MA
pausetime = 8,8
guard.sparkno = S8010
sparkno = S8003
sparkxy = -45,-64
hitsound   = S10,2
guardsound = S6,0
ground.type = Low
ground.slidetime = 45
ground.hittime = 45
ground.velocity = -5,-17
air.velocity = -5,-17
ground.cornerpush.veloff = -15
fall = 0
air.fall = 0
getpower = 55,30
givepower = 55,0
airguard.velocity = -6,0
yaccel = .5
envshake.time = 2
envshake.freq = 2
envshake.ampl = 2
envshake.phase = 0
palfx.time = 35
palfx.add = 150,50,150
palfx.sinadd = 30,30,30,3

[State 1102]
type = HitDef
trigger1 = Var(0) = 2
trigger1 = AnimElem = 4
attr = A, SA
animtype  = Hard
damage  = 40,4
priority  = 7, Hit
hitflag = MAF
guardflag = MA
pausetime = 8,8
guard.sparkno = S8010
sparkno = S8003
sparkxy = -45,-64
hitsound   = S10,2
guardsound = S6,0
ground.type = Low
ground.slidetime = 45
ground.hittime = 45
ground.velocity = -10,-19
air.velocity = -10,-19
fall = 0
air.fall = 0
getpower = 55,30
givepower = 55,0
airguard.velocity = -6,0
yaccel = .5
envshake.time = 2
envshake.freq = 2
envshake.ampl = 2
envshake.phase = 0
palfx.time = 35
palfx.add = 150,50,150
palfx.sinadd = 30,30,30,3

[State 1102]
type = ChangeState
trigger1 = AnimElem = 4,>= 0
trigger1 = Pos Y+Vel Y >= 0
value = 52
;---------------------------------------------------------------------------
;ÉtÉ@ÉCÉÑÅ[è∏ó¥åù/çãè∏ó¥åùÉGÉtÉFÉNÉg
[Statedef 1110]
type = A
physics = N
anim = 1110+(Parent,StateNo=1101)+2*(Parent,StateNo=1102)+10*(Parent,Var(0)=2)
sprpriority = 3

[State 1110]
type = AssertSpecial
trigger1 = Parent,IsHelper
trigger1 = Parent,StateNo != 1102
flag = invisible

[State 1110]
type = ChangeAnim
trigger1 = Parent,IsHelper
trigger1 = Parent,StateNo != 1102
value = anim

[State 1110]
type = BindToParent
trigger1 = 1
pos = 0,0

[State 1110]
type = PlaySnd
trigger1 = AnimElem = 8
value = 1100,2
persistent = 0

[State 1110]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 1110]
type = ChangeAnim
trigger1 = Parent,HitPauseTime > 0
value = anim
elem = AnimElemNo(-1)

[State 1110]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = Parent,StateNo != [1100,1199]
trigger2 = Parent,StateNo != 910
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;ãÛíÜè∏ó¥åùÉGÉtÉFÉNÉg
[Statedef 1130]
type = A
physics = N
anim = 1130
sprpriority = 3

[State 1130]
type = BindToParent
trigger1 = 1
pos = 0,0

[State 1130]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 1130]
type = ChangeAnim
trigger1 = Parent,HitPauseTime > 0
value = anim
elem = AnimElemNo(-1)

[State 1130]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = Parent,StateNo != [1100,1199]
;---------------------------------------------------------------------------

;é„ãÛíÜè∏ó¥åù
[Statedef 1170]
type    = A
movetype = A
physics = N
anim = 1170
sprpriority = 2
velset = 0,0
ctrl = 0
poweradd = 55

[State 1170]
type = PlaySnd
trigger1 = AnimElem = 4
value = S1100,0
channel = 0

[State 1170]
type = PlaySnd
trigger1 = AnimElem = 4
value = S5,2

[State 1170]
type = Helper
trigger1 = Var(0) != 0
trigger1 = AnimElem = 1
helpertype = normal
name = "fire"
ID = 1130
stateno = 1130
pos = 0,0
postype = p1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1100]
type = Explod
trigger1 = Var(0) != 0
trigger1 = MoveHit = 1
trigger1 = HitPauseTime = 8
anim = 1160
ID = 1160
postype = P2
pos = Random%20-20+(Var(0)=2)*10,-70+(Var(0)=2)*40
bindtime = -1
removetime = 45
sprpriority = -3
facing = -1
ownpal = 1
ignorehitpause = 1

[State 1170]
type = VelAdd
trigger1 = AnimElem = 4
x = 2
y = -4

[State 1170]
type = VelAdd
trigger1 = AnimElem = 4,> 0
trigger1 = AnimElem = 4,< 9
x = .2

[State 1170]
type = VelSet
trigger1 = AnimElem = 4,= 9
x = 1

[State 1100]
type = VelSet
trigger1 = AnimElem = 6
x = 0

[State 1170]
type = VelAdd
trigger1 = AnimElem = 5,>= -2
y = 1

[State 1170]
type = NotHitBy
trigger1 = AnimElem = 4,< 6
value = SCA

[State 1170]
type = HitDef
trigger1 = AnimElem = 3
attr = A, SA
animtype  = Hard
damage  = 120,12
priority  = 7, Hit
hitflag = MAF
guardflag = MA
pausetime = 8,8
guard.sparkno = S8010
sparkno = S8003
sparkxy = -45,-64
hitsound   = S10,2
guardsound = S6,0
ground.type = Low
ground.slidetime = 35
ground.hittime = 35
ground.velocity = -6,-14
air.velocity = -6,-14
fall = 0
getpower = 55,30
givepower = 55,0
airguard.velocity = -6,0
yaccel = .5

[State 1170]
type = ChangeState
trigger1 = AnimElem = 4,>= 0
trigger1 = Pos Y+Vel Y >= 0
value = 52

;---------------------------------------------------------------------------
;íÜãÛíÜè∏ó¥åù
[Statedef 1171]
type    = A
movetype = A
physics = N
anim = 1171
sprpriority = 2
velset = 0,0
ctrl = 0
poweradd = 55

[State 1171]
type = PlaySnd
trigger1 = AnimElem = 4
value = S1100,0
channel = 0

[State 1171]
type = PlaySnd
trigger1 = AnimElem = 4
value = S5,2

[State 1171]
type = Helper
trigger1 = Var(0) != 0
trigger1 = AnimElem = 1
helpertype = normal
name = "fire"
ID = 1130
stateno = 1130
pos = 0,0
postype = p1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1101]
type = Explod
trigger1 = Var(0) != 0
trigger1 = MoveHit = 1
trigger1 = HitPauseTime = 8
anim = 1160
ID = 1160
postype = P2
pos = Random%20-20+(Var(0)=2)*10,-70+(Var(0)=2)*40
bindtime = -1
removetime = 45
sprpriority = -3
facing = -1
ownpal = 1
ignorehitpause = 1

[State 1171]
type = VelAdd
trigger1 = AnimElem = 4
x = 3
y = -6

[State 1171]
type = VelAdd
trigger1 = AnimElem = 4,> 0
trigger1 = AnimElem = 4,< 9
x = .2

[State 1171]
type = VelSet
trigger1 = AnimElem = 4,= 9
x = 1

[State 1101]
type = VelSet
trigger1 = AnimElem = 6
x = 0

[State 1171]
type = VelAdd
trigger1 = AnimElem = 5,>= -2
y = 1

[State 1171]
type = NotHitBy
trigger1 = AnimElem = 4,< 6
value = SCA

[State 1171]
type = HitDef
trigger1 = AnimElem = 3
attr = A, SA
animtype  = Hard
damage  = 120,12
priority  = 7, Hit
hitflag = MAF
guardflag = MA
pausetime = 8,8
guard.sparkno = S8010
sparkno = S8003
sparkxy = -45,-64
hitsound   = S10,2
guardsound = S6,0
ground.type = Low
ground.slidetime = 35
ground.hittime = 35
ground.velocity = -8,-17
air.velocity = -8,-17
fall = 0
getpower = 55,30
givepower = 55,0
airguard.velocity = -6,0
yaccel = .5

[State 1171]
type = ChangeState
trigger1 = AnimElem = 4,>= 0
trigger1 = Pos Y+Vel Y >= 0
value = 52

;---------------------------------------------------------------------------
;ã≠ãÛíÜè∏ó¥åù
[Statedef 1172]
type    = A
movetype = A
physics = N
anim = 1172
sprpriority = 2
velset = 0,0
ctrl = 0
poweradd = 55

[State 1172]
type = PlaySnd
trigger1 = AnimElem = 4
value = S1100,0
channel = 0

[State 1172]
type = PlaySnd
trigger1 = AnimElem = 4
value = S5,2

[State 1172]
type = Helper
trigger1 = Var(0) != 0
trigger1 = AnimElem = 1
helpertype = normal
name = "fire"
ID = 1130
stateno = 1130
pos = 0,0
postype = p1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1172]
type = Explod
trigger1 = Var(0) != 0
trigger1 = MoveHit = 1
trigger1 = HitPauseTime = 8
anim = 1160
ID = 1160
postype = P2
pos = Random%20-20+(Var(0)=2)*10,-70+(Var(0)=2)*40
bindtime = -1
removetime = 45
sprpriority = -3
facing = -1
ownpal = 1
ignorehitpause = 1

[State 1172]
type = VelAdd
trigger1 = AnimElem = 4
x = 4
y = -9

[State 1172]
type = VelAdd
trigger1 = AnimElem = 4,> 0
trigger1 = AnimElem = 4,< 9
x = .2

[State 1172]
type = VelSet
trigger1 = AnimElem = 4,= 9
x = 1

[State 1172]
type = VelSet
trigger1 = AnimElem = 6
x = 0

[State 1172]
type = VelAdd
trigger1 = AnimElem = 5,>= -2
y = 1

[State 1172]
type = NotHitBy
trigger1 = AnimElem = 4,< 6
value = SCA

[State 1172]
type = HitDef
trigger1 = AnimElem = 3
attr = A, SA
animtype  = Hard
damage  = 120,12
priority  = 7, Hit
hitflag = MAF
guardflag = MA
pausetime = 8,8
guard.sparkno = S8010
sparkno = S8003
sparkxy = -45,-64
hitsound   = S10,2
guardsound = S6,0
ground.type = Low
ground.slidetime = 35
ground.hittime = 35
ground.velocity = -10,-19
air.velocity = -10,-19
fall = 0
getpower = 55,30
givepower = 55,0
airguard.velocity = -6,0
yaccel = .5

[State 1172]
type = ChangeState
trigger1 = AnimElem = 4,>= 0
trigger1 = Pos Y+Vel Y >= 0
value = 52
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;é„ó≥ä™ê˘ïóãr/ó≥ä™éaãÛãr
[Statedef 1200]
type = A
movetype = A
physics = A
anim = 1200+Var(0)*10
sprpriority = 2
velset = 4,-5
ctrl = 0
poweradd= 55

[State 1200]
type = PlaySnd
trigger1 = AnimElem = 1
value = S1200,(Var(0)=2&&PalNo<=10)
channel = (PalNo>10)

[State 1200]
type = PlaySnd
trigger1 = Var(0) != 2
trigger1 = AnimElem = 5
value = S5,2

[State 1200]
type = PlaySnd
triggerall = Var(0) = 2
trigger1 = AnimElem = 5
trigger2 = AnimElem = 7
value = S1200,2
channel = 0

[State 1200]
type = Explod
trigger1 = AnimElem = 1
anim = 7000
ID = 7000
postype = P1
pos = 40,0
sprpriority = 3
ownpal = 1

[State 1200]
type = Helper
triggerall = Var(0) = 2
trigger1 = AnimElem = 6
helpertype = normal
name = "thunder"
ID = 1230
stateno = 1230
pos = 0,0
postype = p1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1200]
type = Explod
trigger1 = Var(0) = 2
trigger1 = Movehit = 1
anim = 2260
ID = 2260
bindtime = -1
removetime = 30
postype = p2
pos = 0,0
facing = -1
sprpriority = 3

[State 1200]
type = VelSet
trigger1 = AnimElem = 5,>= 0
trigger1 = AnimElem = 9,< 0
y = 0

[State 1200]
type = HitDef
triggerall = Var(0) = 0
trigger1 = AnimElem = 5
attr = A, SA
animtype  = Back
damage  = 130,10
guardflag = MA
hitflag = MAF
priority = 5, Hit
sparkno = S8003
guard.sparkno = S8010
sparkxy = -10,-45
hitsound = S10,6
guardsound = S6,0
pausetime = 8,8
ground.type = High
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = -10,-7
air.velocity = -10,-7
fall = 1
air.fall = 0
getpower = 55,30
givepower = 55,0
airguard.velocity = -6,0
yaccel = .6
envshake.time = 2
envshake.freq = 2
envshake.ampl = 2
envshake.phase = 0

[State 1200, HitDef]
type = HitDef
triggerall = Var(0) = 0
trigger1 = AnimElem = 7
attr = A, SA
animtype  = Back
damage  = 130,10
guardflag = MA
hitflag = MAF
priority = 5, Hit
sparkno = S8003
guard.sparkno = S8010
sparkxy = -10,-45
hitsound = S10,6
guardsound = S6,0
pausetime = 8,8
ground.type = High
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = 10,-7
air.velocity = 10,-7
fall = 1
air.fall = 0
fall.recover = 0
getpower = 55,30
givepower = 55,0
airguard.velocity = -6,0
yaccel = .6
envshake.time = 2
envshake.freq = 2
envshake.ampl = 2
envshake.phase = 0

[State 1200]
type = HitDef
triggerall = Var(0) = 2
trigger1 = AnimElem = 2
attr = A, SA
animtype  = Back
damage  = 60,6
guardflag = MA
hitflag = MAF
priority = 5, Hit
sparkno = S8003
guard.sparkno = S8010
sparkxy = -10,-45
hitsound = S10,6
guardsound = S6,0
pausetime = 8,8
ground.type = High
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = -2,-3
air.velocity = -2,-3
fall = 1
air.fall = 0
fall.recover = 0
getpower = 55,30
givepower = 55,0
airguard.velocity = -6,0
yaccel = .6
envshake.time = 2
envshake.freq = 2
envshake.ampl = 2
envshake.phase = 0
palfx.time = 30
palfx.color = 0
palfx.add = -180,0,100
palfx.sinadd = 20,20,40,3

[State 1200]
type = HitDef
triggerall = Var(0) = 2
trigger1 = AnimElem = 6
attr = A, SA
animtype  = Back
damage  = 60,6
guardflag = MA
hitflag = MAF
priority = 5, Hit
sparkno = S8003
guard.sparkno = S8010
sparkxy = -10,-45
hitsound = S10,6
guardsound = S6,0
pausetime = 8,8
ground.type = High
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = -2,-3
air.velocity = -2,-3
fall = 1
fall.recover = 0
getpower = 55,30
givepower = 55,0
airguard.velocity = -6,0
yaccel = .6
envshake.time = 2
envshake.freq = 2
envshake.ampl = 2
envshake.phase = 0
palfx.time = 30
palfx.color = 0
palfx.add = -180,0,100
palfx.sinadd = 20,20,40,3

[State 1200]
type = HitDef
triggerall = Var(0) = 2
trigger1 = AnimElem = 8
attr = A, SA
animtype  = Back
damage  = 60,6
guardflag = MA
hitflag = MAF
priority = 5, Hit
sparkno = S8003
guard.sparkno = S8010
sparkxy = -10,-45
hitsound = S10,6
guardsound = S6,0
pausetime = 8,8
ground.type = High
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = 2,-3
air.velocity = 2,-3
fall = 1
fall.recover = 0
getpower = 55,30
givepower = 55,0
airguard.velocity = -6,0
yaccel = .6
envshake.time = 2
envshake.freq = 2
envshake.ampl = 2
envshake.phase = 0
palfx.time = 30
palfx.color = 0
palfx.add = -180,0,100
palfx.sinadd = 20,20,40,3
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;íÜó≥ä™ê˘ïóãr/ó≥ä™éaãÛãr
[Statedef 1201]
type = A
movetype = A
physics = A
anim = 1201+Var(0)*10
sprpriority = 2
velset = 4,-5
ctrl = 0
poweradd= 55

[State 1201]
type = PlaySnd
trigger1 = AnimElem = 1
value = S1200,(Var(0)=2&&PalNo<=10)
channel = (PalNo>10)

[State 1201]
type = PlaySnd
triggerall = Var(0) != 2
trigger1 = AnimElem = 5
trigger2 = AnimElem = 9
value = S5,2

[State 1201]
type = PlaySnd
triggerall = Var(0) = 2
trigger1 = AnimElem = 5
trigger2 = AnimElem = 7
trigger3 = AnimElem = 9
trigger4 = AnimElem = 11
value = S1200,2
channel = 0

[State 1201]
type = Explod
trigger1 = AnimElem = 1
anim = 7000
ID = 7000
postype = P1
pos = 40,0
sprpriority = 3
ownpal = 1

[State 1201]
type = Helper
triggerall = Var(0) = 2
trigger1 = AnimElem = 6
helpertype = normal
name = "thunder"
ID = 1230
stateno = 1230
pos = 0,0
postype = p1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1201]
type = Explod
trigger1 = Var(0) = 2
trigger1 = Movehit = 1
anim = 2260
ID = 2260
bindtime = -1
removetime = 30
postype = p2
pos = 0,0
facing = -1
sprpriority = 3

[State 1201]
type = VelSet
trigger1 = AnimElem = 5,>= 0
trigger1 = AnimElem = 13,< 0
y = 0

[State 1201]
type = HitDef
triggerall = Var(0) = 0
trigger1 = AnimElem = 5
trigger2 = AnimElem = 9
attr = A, SA
animtype  = Back
damage  = 130,10
guardflag = MA
hitflag = MAF
priority = 5, Hit
sparkno = S8003
guard.sparkno = S8010
sparkxy = -10,-45
hitsound = S10,6
guardsound = S6,0
pausetime = 8,8
ground.type = High
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = -10,-7
air.velocity = -10,-7
fall = 1
air.fall = 0
fall.recover = 0
getpower = 55,30
givepower = 55,0
airguard.velocity = -6,0
yaccel = .6
envshake.time = 2
envshake.freq = 2
envshake.ampl = 2
envshake.phase = 0

[State 1201]
type = HitDef
triggerall = Var(0) = 0
trigger1 = AnimElem = 7
trigger2 = AnimElem = 11
attr = A, SA
animtype  = Back
damage  = 130,10
guardflag = MA
hitflag = MAF
priority = 5, Hit
sparkno = S8003
guard.sparkno = S8010
sparkxy = -10,-45
hitsound = S10,6
guardsound = S6,0
pausetime = 8,8
ground.type = High
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = 10,-7
air.velocity = 10,-7
fall = 1
air.fall = 0
fall.recover = 0
getpower = 55,30
givepower = 55,0
airguard.velocity = -6,0
yaccel = .6
envshake.time = 2
envshake.freq = 2
envshake.ampl = 2
envshake.phase = 0

[State 1201]
type = HitDef
triggerall = Var(0) = 2
trigger1 = AnimElem = 2
attr = A, SA
animtype  = Back
damage  = 60,6
guardflag = MA
hitflag = MAF
priority = 5, Hit
sparkno = S8003
guard.sparkno = S8010
sparkxy = -10,-45
hitsound = S10,6
guardsound = S6,0
pausetime = 8,8
ground.type = High
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = -2,-3
air.velocity = -2,-3
fall = 1
fall.recover = 0
getpower = 55,30
givepower = 55,0
airguard.velocity = -6,0
yaccel = .6
envshake.time = 2
envshake.freq = 2
envshake.ampl = 2
envshake.phase = 0
palfx.time = 30
palfx.color = 0
palfx.add = -180,0,100
palfx.sinadd = 20,20,40,3

[State 1201]
type = HitDef
triggerall = Var(0) = 2
trigger1 = AnimElem = 6
trigger2 = AnimElem = 10
attr = A, SA
animtype  = Back
damage  = 60,6
guardflag = MA
hitflag = MAF
priority = 5, Hit
sparkno = S8003
guard.sparkno = S8010
sparkxy = -10,-45
hitsound = S10,6
guardsound = S6,0
pausetime = 8,8
ground.type = High
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = -2,-3
air.velocity = -2,-3
fall = 1
fall.recover = 0
getpower = 55,30
givepower = 55,0
airguard.velocity = -6,0
yaccel = .6
envshake.time = 2
envshake.freq = 2
envshake.ampl = 2
envshake.phase = 0
palfx.time = 30
palfx.color = 0
palfx.add = -180,0,100
palfx.sinadd = 20,20,40,3

[State 1201]
type = HitDef
triggerall = Var(0) = 2
trigger1 = AnimElem = 8
trigger2 = AnimElem = 12
attr = A, SA
animtype  = Back
damage  = 60,6
guardflag = MA
hitflag = MAF
priority = 5, Hit
sparkno = S8003
guard.sparkno = S8010
sparkxy = -10,-45
hitsound = S10,6
guardsound = S6,0
pausetime = 8,8
ground.type = High
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = 2,-3
air.velocity = 2,-3
fall = 1
getpower = 55,30
givepower = 55,0
airguard.velocity = -6,0
yaccel = .6
envshake.time = 2
envshake.freq = 2
envshake.ampl = 2
envshake.phase = 0
palfx.time = 30
palfx.color = 0
palfx.add = -180,0,100
palfx.sinadd = 20,20,40,3
;---------------------------------------------------------------------------
;ã≠ó≥ä™ê˘ïóãr/ó≥ä™éaãÛãr
[Statedef 1202]
type = A
movetype = A
physics = A
anim = 1202+Var(0)*10
sprpriority = 2
velset = 4,-5
ctrl = 0
poweradd= 55

[State 1202]
type = PlayerPush
trigger1 = 1
value = 1

[State 1202]
type = ScreenBound
trigger1 = 1
value = 1

[State 1202]
type = PlaySnd
trigger1 = AnimElem = 1
value = S1200,(Var(0)=2&&PalNo<=10)
channel = (PalNo>10)

[State 1202]
type = PlaySnd
triggerall = Var(0) != 2
trigger1 = AnimElem = 5
trigger2 = AnimElem = 9
trigger3 = AnimElem = 13
value = S5,2

[State 1202]
type = PlaySnd
triggerall = Var(0) = 2
trigger1 = AnimElem = 5
trigger2 = AnimElem = 7
trigger3 = AnimElem = 9
trigger4 = AnimElem = 11
trigger5 = AnimElem = 13
trigger6 = AnimElem = 15
value = S1200,2
channel = 0

[State 1202]
type = Explod
trigger1 = AnimElem = 1
anim = 7000
ID = 7000
postype = P1
pos = 40,0
sprpriority = 3
ownpal = 1

[State 1202]
type = Helper
triggerall = !IsHelper
triggerall = Var(0) = 2
trigger1 = AnimElem = 6
helpertype = normal
name = "thunder"
ID = 1230
stateno = 1230
pos = 0,0
postype = p1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1202]
type = Explod
trigger1 = Var(0) = 2
trigger1 = Movehit = 1
anim = 2260
ID = 2260
bindtime = -1
removetime = 30
postype = p2
pos = 0,0
facing = -1
sprpriority = 3

[State 1200]
type = VelSet
trigger1 = AnimElem = 5,>= 0
trigger1 = AnimElem = 17,< 0
y = 0

[State 1202]
type = HitDef
triggerall = Var(0) = 0
trigger1 = AnimElem = 5
trigger2 = AnimElem = 9
trigger3 = AnimElem = 13
attr = A, SA
animtype  = Back
damage  = 130,10
guardflag = MA
hitflag = MAF
priority = 5, Hit
sparkno = S8003
guard.sparkno = S8010
sparkxy = -10,-45
hitsound = S10,6
guardsound = S6,0
pausetime = 8,8
ground.type = High
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = -10,-7
air.velocity = -10,-7
fall = 1
air.fall = 0
getpower = 55,30
givepower = 55,0
airguard.velocity = -6,0
yaccel = .6
envshake.time = 2
envshake.freq = 2
envshake.ampl = 2
envshake.phase = 0

[State 1202]
type = HitDef
triggerall = Var(0) = 0
trigger1 = AnimElem = 7
trigger2 = AnimElem = 11
trigger3 = AnimElem = 15
attr = A, SA
animtype  = Back
damage  = 130,10
guardflag = MA
hitflag = MAF
priority = 5, Hit
sparkno = S8003
guard.sparkno = S8010
sparkxy = -10,-45
hitsound = S10,6
guardsound = S6,0
pausetime = 8,8
ground.type = High
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = 10,-7
air.velocity = 10,-7
fall = 1
air.fall = 0
getpower = 55,30
givepower = 55,0
airguard.velocity = -6,0
yaccel = .6
envshake.time = 2
envshake.freq = 2
envshake.ampl = 2
envshake.phase = 0

[State 1202]
type = HitDef
triggerall = Var(0) = 2
trigger1 = AnimElem = 2
attr = A, SA
animtype  = Back
damage  = 50,5
guardflag = MA
hitflag = MAF
priority = 5, Hit
sparkno = S8003
guard.sparkno = S8010
sparkxy = -10,-45
hitsound = S10,6
guardsound = S6,0
pausetime = 8,8
ground.type = High
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = -2,-3
air.velocity = -2,-3
fall = 1
getpower = 55,30
givepower = 55,0
airguard.velocity = -6,0
yaccel = .6
envshake.time = 2
envshake.freq = 2
envshake.ampl = 2
envshake.phase = 0
palfx.time = 30
palfx.color = 0
palfx.add = -180,0,100
palfx.sinadd = 20,20,40,3

[State 1202]
type = HitDef
triggerall = Var(0) = 2
trigger1 = AnimElem = 6
trigger2 = AnimElem = 10
trigger3 = AnimElem = 14
attr = A, SA
animtype  = Hard
damage  = 50,5
guardflag = MA
hitflag = MAF
priority = 5, Hit
sparkno = S8003
guard.sparkno = S8010
sparkxy = -10,-45
hitsound = S10,6
guardsound = S6,0
pausetime = 8,8
ground.type = High
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = -2,-3
air.velocity = -2,-3
fall = 1
getpower = 55,30
givepower = 55,0
airguard.velocity = -6,0
yaccel = .6
envshake.time = 2
envshake.freq = 2
envshake.ampl = 2
envshake.phase = 0
palfx.time = 30
palfx.color = 0
palfx.add = -180,0,100
palfx.sinadd = 20,20,40,3

[State 1202]
type = HitDef
triggerall = Var(0) = 2
trigger1 = AnimElem = 8
trigger2 = AnimElem = 12
trigger3 = AnimElem = 16
attr = A, SA
animtype  = Hard
damage  = 50,5
guardflag = MA
hitflag = MAF
priority = 5, Hit
sparkno = S8003
guard.sparkno = S8010
sparkxy = -10,-45
hitsound = S10,6
guardsound = S6,0
pausetime = 8,8
ground.type = High
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = 2,-3
air.velocity = 2,-3
fall = 1
getpower = 55,30
givepower = 55,0
airguard.velocity = -6,0
yaccel = .6
envshake.time = 2
envshake.freq = 2
envshake.ampl = 2
envshake.phase = 0
palfx.time = 30
palfx.color = 0
palfx.add = -180,0,100
palfx.sinadd = 20,20,40,3
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;ó≥ä™éaãÛãrÉGÉtÉFÉNÉg
[Statedef 1230]
type = A
physics = N
anim = 1230+(Parent,StateNo=1201||Parent,StateNo=1251)+2*(Parent,StateNo=1202||Parent,StateNo=1252)+10*(Parent,StateNo>=1250)
sprpriority = 3

[State 1230]
type = ChangeAnim
trigger1 = Parent,IsHelper
trigger1 = Anim != 1232
value = 1232

[State 1230]
type = AssertSpecial
trigger1 = Parent,IsHelper
trigger1 = Parent,StateNo != 1202 || Parent,AnimElem = 6,< 0
flag = invisible

[State 1230]
type = ChangeAnim
trigger1 = Parent,IsHelper
trigger1 = Parent,StateNo != 1202 || Parent,AnimElem = 6,< 0
value = anim

[State 1230]
type = BindToParent
trigger1 = 1
pos = 0,0

[State 1230]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 1230]
type = ChangeAnim
trigger1 = Parent,HitPauseTime > 0
value = anim
elem = AnimElemNo(-1)

[State 1230]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = Parent,StateNo != [1200,1299]
trigger2 = Parent,StateNo != 910
;---------------------------------------------------------------------------
;é„ó≥ä™ê˘ïóãrÊ˘äÑÇË
[Statedef 1210]
type = A
movetype = A
physics = A
anim = 1210
sprpriority = 2
ctrl = 0
poweradd= 55

[State 1210]
type = VelSet
trigger1 = Anim = 1210
x = 4
y = -1.5

[State 1210]
type = VelSet
trigger1 = Anim = 1210
trigger1 = AnimTime = 0
trigger2 = Anim = 1211
x = 0
y = 0

[State 1210]
type = VelAdd
trigger1 = Anim = 1212
y = .5

[State 1210]
type = ChangeAnim
trigger1 = Anim = 1210
trigger1 = AnimTime = 0
value = 1211+(MoveContact!=[1,10])

[State 1210]
type = ChangeAnim
trigger1 = Anim = 1211
trigger1 = AnimTime = 0
value = 1212

[State 1210]
type = PlaySnd
trigger1 = Anim = 1210
trigger1 = AnimElem = 1
value = S1200,0
channel = 0

[State 1210]
type = PlaySnd
trigger1 = Anim = 1211
trigger1 = AnimElem = 3
value = S1,2
channel = 0

[State 1210]
type = PlaySnd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 9
trigger3 = AnimElem = 13
value = S5,2

[State 1210]
type = Explod
trigger1 = Time = 0
anim = 7000
ID = 7000
postype = P1
pos = 40,0
sprpriority = 3
ownpal = 1

[State 1210]
type = PlaySnd
trigger1 = Anim = 1210
trigger1 = MoveHit = 1
trigger1 = HitPauseTime = 4
value = S10,6
channel = 2
ignorehitpause = 1

[State 1210]
type = PlaySnd
trigger1 = Anim = 1210
trigger1 = MoveGuarded = 1
trigger1 = HitPauseTime = 4
value = S6,0
channel = 2
ignorehitpause = 1

[State 1210]
type = HitDef
triggerall = Anim = 1210
trigger1 = AnimElem = 2
attr = A, SA
animtype  = Hard
damage  = 80,8
guardflag = MA
hitflag = MAF
priority = 5, Hit
sparkno = S8003
guard.sparkno = S8010
sparkxy = -10,-45
hitsound = -1,-1
guardsound = -1,-1
pausetime = 5,5
ground.type = High
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = -3,-5
air.velocity = -3,-5
fall = 1
fall.recover = 0
getpower = 55,30
givepower = 55,0
airguard.velocity = -6,0
yaccel = .6

[State 1210]
type = HitDef
triggerall = Anim = 1210
trigger1 = AnimElem = 6
trigger2 = AnimElem = 10
trigger3 = AnimElem = 14
attr = A, SA
animtype  = Medium
damage  = 50,5
guardflag = MA
hitflag = MAF
priority = 5, Hit
sparkno = S8003
guard.sparkno = S8010
sparkxy = -10,-45
hitsound = -1,-1
guardsound = -1,-1
pausetime = 5,5
ground.type = High
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = -3,-5
air.velocity = -3,-5
fall = 1
fall.recover = 0
getpower = 20,10
givepower = 20,0
airguard.velocity = -6,0
yaccel = .6

[State 1210]
type = HitDef
triggerall = Anim = 1211
trigger1 = AnimElem = 3
attr = A, SA
animtype  = Medium
damage  = 50,5
guardflag = MA
hitflag = MAF
priority = 5, Hit
sparkno = S8003
guard.sparkno = S8010
sparkxy = -10,-65
hitsound = S10,6
guardsound = S6,0
pausetime = 8,8
ground.type = High
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = -6,-2
air.velocity = -6,-2
fall = 1
fall.recover = 0
getpower = 20,10
givepower = 20,0
airguard.velocity = -6,0
yaccel = .6
;---------------------------------------------------------------------------
;íÜó≥ä™ê˘ïóãrÊ˘äÑÇË
[Statedef 1211]
type = A
movetype = A
physics = A
anim = 1210
sprpriority = 2
ctrl = 0
poweradd= 55

[State 1211]
type = VelSet
trigger1 = Anim = 1210
x = 6
y = -3

[State 1211]
type = VelSet
trigger1 = Anim = 1210
trigger1 = AnimTime = 0
trigger2 = Anim = 1211
x = 0
y = 0

[State 1211]
type = VelAdd
trigger1 = Anim = 1212
y = .5

[State 1211]
type = ChangeAnim
trigger1 = Anim = 1210
trigger1 = AnimTime = 0
value = 1211+(MoveContact!=[1,10])

[State 1211]
type = ChangeAnim
trigger1 = Anim = 1211
trigger1 = AnimTime = 0
value = 1212

[State 1211]
type = PlaySnd
trigger1 = Anim = 1210
trigger1 = AnimElem = 1
value = S1200,0
channel = 0

[State 1211]
type = PlaySnd
trigger1 = Anim = 1211
trigger1 = AnimElem = 3
value = S1,2
channel = 0

[State 1211]
type = PlaySnd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 9
trigger3 = AnimElem = 13
value = S5,2

[State 1211]
type = Explod
trigger1 = Time = 0
anim = 7000
ID = 7000
postype = P1
pos = 40,0
sprpriority = 3
ownpal = 1

[State 1211]
type = PlaySnd
trigger1 = Anim = 1210
trigger1 = MoveHit = 1
trigger1 = HitPauseTime = 4
value = S10,6
channel = 2
ignorehitpause = 1

[State 1211]
type = PlaySnd
trigger1 = Anim = 1210
trigger1 = MoveGuarded = 1
trigger1 = HitPauseTime = 4
value = S6,0
channel = 2
ignorehitpause = 1

[State 1211]
type = HitDef
triggerall = Anim = 1210
trigger1 = AnimElem = 2
attr = A, SA
animtype  = Hard
damage  = 80,8
guardflag = MA
hitflag = MAF
priority = 5, Hit
sparkno = S8003
guard.sparkno = S8010
sparkxy = -10,-45
hitsound = -1,-1
guardsound = -1,-1
pausetime = 5,5
ground.type = High
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = -3,-6
air.velocity = -3,-6
fall = 1
fall.recover = 0
getpower = 55,30
givepower = 55,0
airguard.velocity = -6,0
yaccel = .6

[State 1211]
type = HitDef
triggerall = Anim = 1210
trigger1 = AnimElem = 6
trigger2 = AnimElem = 10
trigger3 = AnimElem = 14
attr = A, SA
animtype  = Medium
damage  = 50,5
guardflag = MA
hitflag = MAF
priority = 5, Hit
sparkno = S8003
guard.sparkno = S8010
sparkxy = -10,-45
hitsound = -1,-1
guardsound = -1,-1
pausetime = 5,5
ground.type = High
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = -3,-6
air.velocity = -3,-6
fall = 1
fall.recover = 0
getpower = 20,10
givepower = 20,0
airguard.velocity = -6,0
yaccel = .6

[State 1211]
type = HitDef
triggerall = Anim = 1211
trigger1 = AnimElem = 3
attr = A, SA
animtype  = Medium
damage  = 50,5
guardflag = MA
hitflag = MAF
priority = 5, Hit
sparkno = S8003
guard.sparkno = S8010
sparkxy = -10,-65
hitsound = S10,6
guardsound = S6,0
pausetime = 8,8
ground.type = High
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = -6,-2
air.velocity = -6,-2
fall = 1
fall.recover = 0
getpower = 20,10
givepower = 20,0
airguard.velocity = -6,0
yaccel = .6
;---------------------------------------------------------------------------
;ã≠ó≥ä™ê˘ïóãrÊ˘äÑÇË
[Statedef 1212]
type = A
movetype = A
physics = A
anim = 1210
sprpriority = 2
ctrl = 0
poweradd= 55

[State 1212]
type = VelSet
trigger1 = Anim = 1210
x = 8
y = -4.5

[State 1212]
type = VelSet
trigger1 = Anim = 1210
trigger1 = AnimTime = 0
trigger2 = Anim = 1211
x = 0
y = 0

[State 1212]
type = VelAdd
trigger1 = Anim = 1212
y = .5

[State 1212]
type = ChangeAnim
trigger1 = Anim = 1210
trigger1 = AnimTime = 0
value = 1211+(MoveContact!=[1,10])

[State 1212]
type = ChangeAnim
trigger1 = Anim = 1211
trigger1 = AnimTime = 0
value = 1212

[State 1212]
type = PlaySnd
trigger1 = Anim = 1210
trigger1 = AnimElem = 1
value = S1200,0
channel = 0

[State 1212]
type = PlaySnd
trigger1 = Anim = 1211
trigger1 = AnimElem = 3
value = S1,2
channel = 0

[State 1212]
type = PlaySnd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 9
trigger3 = AnimElem = 13
value = S5,2

[State 1212]
type = Explod
trigger1 = Time = 0
anim = 7000
ID = 7000
postype = P1
pos = 40,0
sprpriority = 3
ownpal = 1

[State 1212]
type = PlaySnd
trigger1 = Anim = 1210
trigger1 = MoveHit = 1
trigger1 = HitPauseTime = 4
value = S10,6
channel = 2
ignorehitpause = 1

[State 1212]
type = PlaySnd
trigger1 = Anim = 1210
trigger1 = MoveGuarded = 1
trigger1 = HitPauseTime = 4
value = S6,0
channel = 2
ignorehitpause = 1

[State 1212]
type = HitDef
triggerall = Anim = 1210
trigger1 = AnimElem = 2
attr = A, SA
animtype  = Hard
damage  = 80,8
guardflag = MA
hitflag = MAF
priority = 5, Hit
sparkno = S8003
guard.sparkno = S8010
sparkxy = -10,-45
hitsound = -1,-1
guardsound = -1,-1
pausetime = 5,5
ground.type = High
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = -3,-7
air.velocity = -3,-7
fall = 1
fall.recover = 0
getpower = 55,30
givepower = 55,0
airguard.velocity = -6,0
yaccel = .6

[State 1212]
type = HitDef
triggerall = Anim = 1210
trigger1 = AnimElem = 6
trigger2 = AnimElem = 10
trigger3 = AnimElem = 14
attr = A, SA
animtype  = Medium
damage  = 50,5
guardflag = MA
hitflag = MAF
priority = 5, Hit
sparkno = S8003
guard.sparkno = S8010
sparkxy = -10,-45
hitsound = -1,-1
guardsound = -1,-1
pausetime = 5,5
ground.type = High
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = -3,-7
air.velocity = -3,-7
fall = 1
fall.recover = 0
getpower = 20,10
givepower = 20,0
airguard.velocity = -6,0
yaccel = .6

[State 1212]
type = HitDef
triggerall = Anim = 1211
trigger1 = AnimElem = 3
attr = A, SA
animtype  = Medium
damage  = 50,5
guardflag = MA
hitflag = MAF
priority = 5, Hit
sparkno = S8003
guard.sparkno = S8010
sparkxy = -10,-65
hitsound = S10,6
guardsound = S6,0
pausetime = 8,8
ground.type = High
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = -6,-2
air.velocity = -6,-2
fall = 1
fall.recover = 0
getpower = 20,10
givepower = 20,0
airguard.velocity = -6,0
yaccel = .6

;---------------------------------------------------------------------------
;é„ãÛíÜó≥ä™ê˘ïóãr
[Statedef 1250]
type = A
movetype = A
physics = A
anim = 1250+(Var(0)=1)*10
sprpriority = 2
ctrl = 0
poweradd= 55

[State 1250]
type = VelAdd
trigger1 = Time = 0
trigger1 = Vel X >= 0
x = 2
y = -1

[State 1250]
type = VelAdd
trigger1 = Time = 0
trigger1 = Vel X < 0
x = -2
y = -1

[State 1250]
type = PlaySnd
trigger1 = AnimElem = 1
value = S1200,(Var(0) = 2)
channel = 0

[State 1250]
type = PlaySnd
trigger1 = Var(0) != 2
trigger1 = AnimElem = 2
value = S5,2

[State 1250]
type = PlaySnd
triggerall = Var(0) = 2
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
value = S1200,2

[State 1202]
type = Helper
triggerall = Var(0) = 2
trigger1 = AnimElem = 2
helpertype = normal
name = "thunder"
ID = 1230
stateno = 1230
pos = 0,0
postype = p1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1250]
type = Explod
trigger1 = Var(0) = 2
trigger1 = Movehit = 1
anim = 2260
ID = 2260
bindtime = -1
removetime = 30
postype = p2
pos = 0,0
facing = -1
sprpriority = 3

[State 1250]
type = HitDef
triggerall = Var(0) = 0
trigger1 = AnimElem = 2
attr = A, SA
animtype  = Back
damage  = 130,10
guardflag = MA
hitflag = MAF
priority = 5, Hit
sparkno = S8003
guard.sparkno = S8010
sparkxy = -10,-45
hitsound = S10,6
guardsound = S6,0
pausetime = 8,8
ground.type = High
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = -8,3
air.velocity = -8,10
fall = 1
fall.recover = 0
air.hittime = 30
getpower = 55,30
givepower = 55,0
airguard.velocity = -6,0
yaccel = .7

[State 1250]
type = HitDef
triggerall = Var(0) = 0
trigger1 = AnimElem = 4
attr = A, SA
animtype  = Back
damage  = 130,10
guardflag = MA
hitflag = MAF
priority = 5, Hit
sparkno = S8003
guard.sparkno = S8010
sparkxy = -10,-45
hitsound = S10,6
guardsound = S6,0
pausetime = 8,8
ground.type = High
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = 8,3
air.velocity = 8,10
fall = 1
fall.recover = 0
air.hittime = 30
getpower = 55,30
givepower = 55,0
airguard.velocity = -6,0
yaccel = .7

[State 1250]
type = HitDef
triggerall = Var(0) = 1
trigger1 = AnimElem = 2
attr = A, SA
animtype  = Hard
damage  = 150,10
guardflag = MA
hitflag = MAF
priority = 5, Hit
sparkno = S8003
guard.sparkno = S8010
sparkxy = -10,-45
hitsound = S10,6
guardsound = S6,0
pausetime = 8,8
ground.type = High
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = -15,0
air.velocity = -6,-8
fall = 0
air.hittime = 30
getpower = 55,30
givepower = 55,0
airguard.velocity = -6,0
yaccel = .7

[State 1250]
type = HitDef
triggerall = Var(0) = 1
trigger1 = AnimElem = 4
attr = A, SA
animtype  = Hard
damage  = 150,10
guardflag = MA
hitflag = MAF
priority = 5, Hit
sparkno = S8003
guard.sparkno = S8010
sparkxy = -10,-45
hitsound = S10,6
guardsound = S6,0
pausetime = 8,8
ground.type = High
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = 15,0
air.velocity = 6,-8
fall = 0
air.hittime = 30
getpower = 55,30
givepower = 55,0
airguard.velocity = -6,0
yaccel = .7

[State 1250]
type = HitDef
triggerall = Var(0) = 2
trigger1 = AnimElem = 2
attr = A, SA
animtype  = Hard
damage  = 150,10
guardflag = MA
hitflag = MAF
priority = 5, Hit
sparkno = S8003
guard.sparkno = S8010
sparkxy = -10,-45
hitsound = S10,6
guardsound = S6,0
pausetime = 8,8
ground.type = High
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = -15,0
air.velocity = -6,-8
fall = 0
air.hittime = 30
getpower = 55,30
givepower = 55,0
airguard.velocity = -6,0
yaccel = .7
palfx.time = 40
palfx.color = 0
palfx.add = -180,0,100
palfx.sinadd = 20,20,40,3

[State 1250]
type = HitDef
triggerall = Var(0) = 2
trigger1 = AnimElem = 4
attr = A, SA
animtype  = Hard
damage  = 150,10
guardflag = MA
hitflag = MAF
priority = 5, Hit
sparkno = S8003
guard.sparkno = S8010
sparkxy = -10,-45
hitsound = S10,6
guardsound = S6,0
pausetime = 8,8
ground.type = High
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = 15,0
air.velocity = 6,-8
fall = 0
air.hittime = 30
getpower = 55,30
givepower = 55,0
airguard.velocity = -6,0
yaccel = .7
palfx.time = 30
palfx.color = 0
palfx.add = -180,0,100
palfx.sinadd = 20,20,40,3

[State 1250]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = (Var(5) = 1)
;---------------------------------------------------------------------------
;íÜãÛíÜó≥ä™ê˘ïóãr
[Statedef 1251]
type = A
movetype = A
physics = A
anim = 1251+(Var(0)=1)*10
sprpriority = 2
ctrl = 0
poweradd= 55

[State 1251]
type = VelAdd
trigger1 = Time = 0
trigger1 = Vel X >= 0
x = 2
y = -1

[State 1251]
type = VelAdd
trigger1 = Time = 0
trigger1 = Vel X < 0
x = -2
y = -1

[State 1251]
type = PlaySnd
trigger1 = AnimElem = 1
value = S1200,(Var(0) = 2)
channel = 0

[State 1251]
type = PlaySnd
triggerall = Var(0) != 2
trigger1 = AnimElem = 2
trigger2 = AnimElem = 6
value = S5,2

[State 1251]
type = PlaySnd
triggerall = Var(0) = 2
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
trigger3 = AnimElem = 6
trigger4 = AnimElem = 8
value = S1200,2

[State 1202]
type = Helper
triggerall = Var(0) = 2
trigger1 = AnimElem = 2
helpertype = normal
name = "thunder"
ID = 1230
stateno = 1230
pos = 0,0
postype = p1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1251]
type = Explod
trigger1 = Var(0) = 2
trigger1 = Movehit = 1
anim = 2260
ID = 2260
bindtime = -1
removetime = 30
postype = p2
pos = 0,0
facing = -1
sprpriority = 3

[State 1251]
type = HitDef
triggerall = Var(0) = 0
trigger1 = AnimElem = 2
trigger2 = AnimElem = 6
attr = A, SA
animtype  = Back
damage  = 130,10
guardflag = MA
hitflag = MAF
priority = 5, Hit
sparkno = S8003
guard.sparkno = S8010
sparkxy = -10,-45
hitsound = S10,6
guardsound = S6,0
pausetime = 8,8
ground.type = High
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = -8,3
air.velocity = -8,10
fall = 1
fall.recover = 0
air.hittime = 30
getpower = 55,30
givepower = 55,0
airguard.velocity = -6,0
yaccel = .7

[State 1251]
type = HitDef
triggerall = Var(0) = 0
trigger1 = AnimElem = 4
trigger2 = AnimElem = 8
attr = A, SA
animtype  = Back
damage  = 130,10
guardflag = MA
hitflag = MAF
priority = 5, Hit
sparkno = S8003
guard.sparkno = S8010
sparkxy = -10,-45
hitsound = S10,6
guardsound = S6,0
pausetime = 8,8
ground.type = High
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = 8,3
air.velocity = 8,10
fall = 1
fall.recover = 0
air.hittime = 30
getpower = 55,30
givepower = 55,0
airguard.velocity = -6,0
yaccel = .7

[State 1251]
type = HitDef
triggerall = Var(0) = 1
trigger1 = AnimElem = 2
trigger2 = AnimElem = 6
attr = A, SA
animtype  = Hard
damage  = 150,10
guardflag = MA
hitflag = MAF
priority = 5, Hit
sparkno = S8003
guard.sparkno = S8010
sparkxy = -10,-45
hitsound = S10,6
guardsound = S6,0
pausetime = 8,8
ground.type = High
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = -15,0
air.velocity = -6,-8
fall = 0
air.hittime = 30
getpower = 55,30
givepower = 55,0
airguard.velocity = -6,0
yaccel = .7

[State 1251]
type = HitDef
triggerall = Var(0) = 1
trigger1 = AnimElem = 4
trigger2 = AnimElem = 8
attr = A, SA
animtype  = Hard
damage  = 150,10
guardflag = MA
hitflag = MAF
priority = 5, Hit
sparkno = S8003
guard.sparkno = S8010
sparkxy = -10,-45
hitsound = S10,6
guardsound = S6,0
pausetime = 8,8
ground.type = High
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = 15,0
air.velocity = 6,-8
fall = 0
air.hittime = 30
getpower = 55,30
givepower = 55,0
airguard.velocity = -6,0
yaccel = .7

[State 1251]
type = HitDef
triggerall = Var(0) = 2
trigger1 = AnimElem = 2
trigger2 = AnimElem = 6
attr = A, SA
animtype  = Hard
damage  = 150,10
guardflag = MA
hitflag = MAF
priority = 5, Hit
sparkno = S8003
guard.sparkno = S8010
sparkxy = -10,-45
hitsound = S10,6
guardsound = S6,0
pausetime = 8,8
ground.type = High
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = -15,0
air.velocity = -6,-8
fall = 0
air.hittime = 30
getpower = 55,30
givepower = 55,0
airguard.velocity = -6,0
yaccel = .7
palfx.time = 40
palfx.color = 0
palfx.add = -180,0,100
palfx.sinadd = 20,20,40,3

[State 1251]
type = HitDef
triggerall = Var(0) = 2
trigger1 = AnimElem = 4
trigger2 = AnimElem = 8
attr = A, SA
animtype  = Hard
damage  = 150,10
guardflag = MA
hitflag = MAF
priority = 5, Hit
sparkno = S8003
guard.sparkno = S8010
sparkxy = -10,-45
hitsound = S10,6
guardsound = S6,0
pausetime = 8,8
ground.type = High
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = 15,0
air.velocity = 6,-8
fall = 0
air.hittime = 30
getpower = 55,30
givepower = 55,0
airguard.velocity = -6,0
yaccel = .7
palfx.time = 30
palfx.color = 0
palfx.add = -180,0,100
palfx.sinadd = 20,20,40,3

[State 1251]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = (Var(5) = 1)
;---------------------------------------------------------------------------
;ã≠ãÛíÜó≥ä™ê˘ïóãr
[Statedef 1252]
type = A
movetype = A
physics = A
anim = 1252+(Var(0)=1)*10
sprpriority = 2
ctrl = 0
poweradd= 55

[State 1252]
type = VelAdd
trigger1 = Time = 0
trigger1 = Vel X >= 0
x = 2
y = -1

[State 1252]
type = VelAdd
trigger1 = Time = 0
trigger1 = Vel X < 0
x = -2
y = -1

[State 1252]
type = PlaySnd
trigger1 = AnimElem = 1
value = S1200,(Var(0) = 2)
channel = 0

[State 1252]
type = PlaySnd
triggerall = Var(0) != 2
trigger1 = AnimElem = 2
trigger2 = AnimElem = 6
trigger3 = AnimElem = 10
value = S5,2

[State 1252]
type = PlaySnd
triggerall = Var(0) = 2
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
trigger3 = AnimElem = 6
trigger4 = AnimElem = 8
trigger5 = AnimElem = 10
trigger6 = AnimElem = 12
value = S1200,2

[State 1252]
type = Helper
triggerall = Var(0) = 2
trigger1 = AnimElem = 2
helpertype = normal
name = "thunder"
ID = 1230
stateno = 1230
pos = 0,0
postype = p1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1252]
type = Explod
trigger1 = Var(0) = 2
trigger1 = Movehit = 1
anim = 2260
ID = 2260
bindtime = -1
removetime = 30
postype = p2
pos = 0,0
facing = -1
sprpriority = 3

[State 1252]
type = HitDef
triggerall = Var(0) = 0
trigger1 = AnimElem = 2
trigger2 = AnimElem = 6
trigger3 = AnimElem = 10
attr = A, SA
animtype  = Back
damage  = 130,10
guardflag = MA
hitflag = MAF
priority = 5, Hit
sparkno = S8003
guard.sparkno = S8010
sparkxy = -10,-45
hitsound = S10,6
guardsound = S6,0
pausetime = 8,8
ground.type = High
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = -8,3
air.velocity = -8,10
fall = 1
fall.recover = 0
air.hittime = 30
getpower = 55,30
givepower = 55,0
airguard.velocity = -6,0
yaccel = .7

[State 1252]
type = HitDef
triggerall = Var(0) = 0
trigger1 = AnimElem = 4
trigger2 = AnimElem = 8
trigger3 = AnimElem = 12
attr = A, SA
animtype  = Back
damage  = 130,10
guardflag = MA
hitflag = MAF
priority = 5, Hit
sparkno = S8003
guard.sparkno = S8010
sparkxy = -10,-45
hitsound = S10,6
guardsound = S6,0
pausetime = 8,8
ground.type = High
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = 8,3
air.velocity = 8,10
fall = 1
fall.recover = 0
air.hittime = 30
getpower = 55,30
givepower = 55,0
airguard.velocity = -6,0
yaccel = .7

[State 1252]
type = HitDef
triggerall = Var(0) = 1
trigger1 = AnimElem = 2
trigger2 = AnimElem = 6
trigger3 = AnimElem = 10
attr = A, SA
animtype  = Hard
damage  = 150,10
guardflag = MA
hitflag = MAF
priority = 5, Hit
sparkno = S8003
guard.sparkno = S8010
sparkxy = -10,-45
hitsound = S10,6
guardsound = S6,0
pausetime = 8,8
ground.type = High
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = -15,0
air.velocity = -6,-8
fall = 0
air.hittime = 30
getpower = 55,30
givepower = 55,0
airguard.velocity = -6,0
yaccel = .7

[State 1252]
type = HitDef
triggerall = Var(0) = 1
trigger1 = AnimElem = 4
trigger2 = AnimElem = 8
trigger3 = AnimElem = 12
attr = A, SA
animtype  = Hard
damage  = 150,10
guardflag = MA
hitflag = MAF
priority = 5, Hit
sparkno = S8003
guard.sparkno = S8010
sparkxy = -10,-45
hitsound = S10,6
guardsound = S6,0
pausetime = 8,8
ground.type = High
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = 15,0
air.velocity = 6,-8
fall = 0
air.hittime = 30
getpower = 55,30
givepower = 55,0
airguard.velocity = -6,0
yaccel = .7

[State 1252]
type = HitDef
triggerall = Var(0) = 2
trigger1 = AnimElem = 2
trigger2 = AnimElem = 6
trigger3 = AnimElem = 10
attr = A, SA
animtype  = Hard
damage  = 150,10
guardflag = MA
hitflag = MAF
priority = 5, Hit
sparkno = S8003
guard.sparkno = S8010
sparkxy = -10,-45
hitsound = S10,6
guardsound = S6,0
pausetime = 8,8
ground.type = High
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = -15,0
air.velocity = -6,-8
fall = 0
air.hittime = 30
getpower = 55,30
givepower = 55,0
airguard.velocity = -6,0
yaccel = .7
palfx.time = 40
palfx.color = 0
palfx.add = -180,0,100
palfx.sinadd = 20,20,40,3

[State 1252]
type = HitDef
triggerall = Var(0) = 2
trigger1 = AnimElem = 4
trigger2 = AnimElem = 8
trigger3 = AnimElem = 12
attr = A, SA
animtype  = Hard
damage  = 150,10
guardflag = MA
hitflag = MAF
priority = 5, Hit
sparkno = S8003
guard.sparkno = S8010
sparkxy = -10,-45
hitsound = S10,6
guardsound = S6,0
pausetime = 8,8
ground.type = High
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = 15,0
air.velocity = 6,-8
fall = 0
air.hittime = 30
getpower = 55,30
givepower = 55,0
airguard.velocity = -6,0
yaccel = .7
palfx.time = 30
palfx.color = 0
palfx.add = -180,0,100
palfx.sinadd = 20,20,40,3

[State 1252]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = Var(5)
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;à¢èCóÖëMãÛÅEëOÇoÇoÇo
[Statedef 1300]
type = S
movetype = I
physics = N
anim = 1300
sprpriority = 2
velset = 0,0
ctrl = 0
poweradd= 40

[State 1300]
type = Explod
trigger1 = time = 1
anim = 7000
ID = 7000
postype = P1
pos = 40,0
bindtime = 1
removetime = -2
sprpriority = 5

[State 1300]
type = Helper
trigger1 = time%3 = 1
helpertype = normal
name = "AfterImage"
ID = 1355
pos = 0, 0
postype = p1
facing = 1
stateno = 1355
ownpal = 1

[State 1300]
type = Turn
trigger1 = P2Dist X < 0

[State 1300]
type = ChangeAnim
triggerall = AnimElem = 5,< 0
trigger1 = Vel X > 0
trigger1 = FrontEdgeBodyDist <= 0
trigger2 = Vel X < 0
trigger2 = BackEdgeBodyDist <= 0
value = Anim
elem = 5

[State 1300]
type = PlaySnd
trigger1 = AnimElem = 1
value = S1300,0
channel = 0

[State 1300]
type = PlaySnd
trigger1 = AnimElem = 4
value = S1300,1

[State 1300]
type = PosAdd
trigger1 = AnimElem = 2,< 0
x = -1

[State 1300]
type = PosAdd
trigger1 = AnimElem = 2,> 0
trigger1 = AnimElem = 3,< 0
x = 1

[State 1300]
type = VelSet
trigger1 = AnimElem = 4
x = 15

[State 1300]
type = VelSet
trigger1 = AnimElem = 5
x = 0

[State 1300]
type = VelMul
trigger1 = AnimElem = 5,>= -15
x = .9

[State 1300]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;à¢èCóÖëMãÛÅEëOÇjÇjÇj
[Statedef 1305]
type = S
movetype = I
physics = N
anim = 1305
sprpriority = 2
velset = 0,0
ctrl = 0
poweradd= 40

[State 1305]
type = Explod
trigger1 = time = 1
anim = 7000
ID = 7000
postype = P1
pos = 40,0
bindtime = 1
removetime = -2
sprpriority = 5

[State 1305]
type = Helper
trigger1 = time%3 = 1
helpertype = normal
name = "AfterImage"
ID = 1355
pos = 0, 0
postype = p1
facing = 1
stateno = 1355
ownpal = 1

[State 1305]
type = Turn
trigger1 = P2Dist X < 0

[State 1305]
type = ChangeAnim
triggerall = AnimElem = 5,< 0
trigger1 = Vel X > 0
trigger1 = FrontEdgeBodyDist <= 0
trigger2 = Vel X < 0
trigger2 = BackEdgeBodyDist <= 0
value = Anim
elem = 5

[State 1305]
type = PlaySnd
trigger1 = AnimElem = 1
value = S1300,0
channel = 0

[State 1305]
type = PlaySnd
trigger1 = AnimElem = 4
value = S1300,1

[State 1305]
type = PosAdd
trigger1 = AnimElem = 2,< 0
x = -1

[State 1305]
type = PosAdd
trigger1 = AnimElem = 2,> 0
trigger1 = AnimElem = 3,< 0
x = 1

[State 1305]
type = VelSet
trigger1 = AnimElem = 4
x = 10

[State 1305]
type = VelSet
trigger1 = AnimElem = 5
x = 0

[State 1305]
type = VelMul
trigger1 = AnimElem = 5,>= -10
x = .9

[State 1305]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;à¢èCóÖëMãÛÅEå„ÇoÇoÇo
[Statedef 1310]
type = S
movetype = I
physics = N
anim = 1310
sprpriority = 2
velset = 0,0
ctrl = 0
poweradd= 40

[State 1310]
type = Explod
trigger1 = time = 1
anim = 7000
ID = 7000
postype = P1
pos = 40,0
bindtime = 1
removetime = -2
sprpriority = 5

[State 1310]
type = Helper
trigger1 = time%3 = 1
helpertype = normal
name = "AfterImage"
ID = 1355
pos = 0, 0
postype = p1
facing = 1
stateno = 1355
ownpal = 1

[State 1310]
type = Turn
trigger1 = P2Dist X < 0

[State 1310]
type = ChangeAnim
triggerall = AnimElem = 5,< 0
trigger1 = Vel X > 0
trigger1 = FrontEdgeBodyDist <= 0
trigger2 = Vel X < 0
trigger2 = BackEdgeBodyDist <= 0
value = Anim
elem = 5

[State 1310]
type = PlaySnd
trigger1 = AnimElem = 1
value = S1300,0
channel = 0

[State 1310]
type = PlaySnd
trigger1 = AnimElem = 4
value = S1300,1

[State 1310]
type = PosAdd
trigger1 = AnimElem = 2,< 0
x = -1

[State 1310]
type = PosAdd
trigger1 = AnimElem = 2,> 0
trigger1 = AnimElem = 3,< 0
x = 1

[State 1310]
type = VelSet
trigger1 = AnimElem = 4
x = -15

[State 1310]
type = VelSet
trigger1 = AnimElem = 5
x = 0

[State 1310]
type = VelMul
trigger1 = AnimElem = 5,>= -15
x = .9

[State 1310]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;à¢èCóÖëMãÛÅEå„ÇjÇjÇj
[Statedef 1315]
type = S
movetype = I
physics = N
anim = 1305
sprpriority = 2
velset = 0,0
ctrl = 0
poweradd= 40

[State 1315]
type = Explod
trigger1 = time = 1
anim = 7000
ID = 7000
postype = P1
pos = 40,0
bindtime = 1
removetime = -2
sprpriority = 5

[State 1315]
type = Helper
trigger1 = time%3 = 1
helpertype = normal
name = "AfterImage"
ID = 1355
pos = 0, 0
postype = p1
facing = 1
stateno = 1355
ownpal = 1

[State 1315]
type = Turn
trigger1 = P2Dist X < 0

[State 1315]
type = ChangeAnim
triggerall = AnimElem = 5,< 0
trigger1 = Vel X > 0
trigger1 = FrontEdgeBodyDist <= 0
trigger2 = Vel X < 0
trigger2 = BackEdgeBodyDist <= 0
value = Anim
elem = 5

[State 1315]
type = PlaySnd
trigger1 = AnimElem = 1
value = S1300,0
channel = 0

[State 1315]
type = PlaySnd
trigger1 = AnimElem = 4
value = S1300,1

[State 1315]
type = PosAdd
trigger1 = AnimElem = 2,< 0
x = -1

[State 1315]
type = PosAdd
trigger1 = AnimElem = 2,> 0
trigger1 = AnimElem = 3,< 0
x = 1

[State 1315]
type = VelSet
trigger1 = AnimElem = 4
x = -10

[State 1315]
type = VelSet
trigger1 = AnimElem = 5
x = 0

[State 1315]
type = VelMul
trigger1 = AnimElem = 5,>= -10
x = .9

[State 1315]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;é„ìVñÇãÛênãr
[Statedef 1350]
type = A
movetype = A
physics = A
anim = 1350
sprpriority = 2
velset = 0,0
ctrl = 0
poweradd= 40

[State 1350]
type = Helper
trigger1 = time%2
helpertype = normal
name = "AfterImage"
ID = 1355
pos = 0, 0
postype = p1
facing = 1
stateno = 1355
ownpal = 1

[State 1350]
type = PlaySnd
trigger1 = AnimElem = 3
value = S1,4
channel = 0

[State 1350]
type = PlaySnd
trigger1 = AnimElem = 3
value = S5,2

[State 1350]
type = VelSet
trigger1 = AnimElem = 3,< 0
y = 0

[State 1350]
type = VelSet
trigger1 = AnimElem = 3,>= 0
x = 9
y = 9

[State 1350]
type = HitDef
trigger1 = AnimElem = 3
trigger2 = MoveContact = 5
attr = A, SA
animtype  = Medium
damage  = 40,4
guardflag = MA
hitflag = MAFD
priority = 5, Hit
sparkno = S8003
guard.sparkno = S8010
sparkxy = -10,-10
hitsound = S10,6
guardsound = S6,0
pausetime = 8,8
ground.type = High
ground.slidetime = 10
ground.hittime  = 14
ground.velocity = -9
air.velocity = 0,-9
fall = 0
getpower = 40,20
givepower = 40,0
airguard.velocity = -6,0
yaccel = .6
;---------------------------------------------------------------------------
;íÜìVñÇãÛênãr
[Statedef 1351]
type = A
movetype = A
physics = A
anim = 1351
sprpriority = 2
velset = 0,0
ctrl = 0
poweradd= 40

[State 1351]
type = Helper
trigger1 = time%2
helpertype = normal
name = "AfterImage"
ID = 1355
pos = 0, 0
postype = p1
facing = 1
stateno = 1355
ownpal = 1

[State 1351]
type = PlaySnd
trigger1 = AnimElem = 3
value = S1,4
channel = 0

[State 1351]
type = PlaySnd
trigger1 = AnimElem = 3
value = S5,2

[State 1351]
type = VelSet
trigger1 = AnimElem = 3,< 0
y = 0

[State 1351]
type = VelSet
trigger1 = AnimElem = 3,>= 0
x = 8
y = 8

[State 1351]
type = HitDef
trigger1 = AnimElem = 3
trigger2 = MoveContact = 5
attr = A, SA
animtype  = Medium
damage  = 40,4
guardflag = MA
hitflag = MAFD
priority = 5, Hit
sparkno = S8003
guard.sparkno = S8010
sparkxy = -10,-10
hitsound = S10,6
guardsound = S6,0
pausetime = 8,8
ground.type = High
ground.slidetime = 10
ground.hittime  = 14
ground.velocity = -9
air.velocity = 0,-9
fall = 0
getpower = 40,20
givepower = 40,0
airguard.velocity = -6,0
yaccel = .6
;---------------------------------------------------------------------------
;ã≠ìVñÇãÛênãr
[Statedef 1352]
type = A
movetype = A
physics = A
anim = 1352
sprpriority = 2
velset = 0,0
ctrl = 0
poweradd= 40

[State 1352]
type = Helper
trigger1 = time%2
helpertype = normal
name = "AfterImage"
ID = 1355
pos = 0, 0
postype = p1
facing = 1
stateno = 1355
ownpal = 1

[State 1352]
type = PlaySnd
trigger1 = AnimElem = 3
value = S1,4
channel = 0

[State 1352]
type = PlaySnd
trigger1 = AnimElem = 3
value = S5,2

[State 1352]
type = VelSet
trigger1 = AnimElem = 3,< 0
y = 0

[State 1352]
type = VelSet
trigger1 = AnimElem = 3,>= 0
x = 8
y = 8

[State 1352]
type = HitDef
trigger1 = AnimElem = 3
trigger2 = MoveContact = 3
attr = A, SA
animtype  = Medium
damage  = 40,4
guardflag = MA
hitflag = MAFD
priority = 5, Hit
sparkno = S8003
guard.sparkno = S8010
sparkxy = -10,-10
hitsound = S10,6
guardsound = S6,0
pausetime = 8,8
ground.type = High
ground.slidetime = 10
ground.hittime  = 14
ground.velocity = -9
air.velocity = 0,-9
fall = 0
getpower = 40,20
givepower = 40,0
airguard.velocity = -6,0
yaccel = .6
;---------------------------------------------------------------------------
;à¢èCóÖëMãÛ/ìVñÇãÛênãrécëú
[Statedef 1355]
physics = N
;anim = 1355+(Parent,AnimElem=2,>=0)+(Parent,AnimElem=2,>=0)
sprpriority = 1
velset = 0,0

[State 1355]
type = ChangeAnim
trigger1 = Time = 0
value = Parent,Anim
elem = Parent,AnimElemNo(0)

[State 1355]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1355]
type = VarAdd
trigger1 = Parent,HitPauseTime = 0
v = 0
value = 1

[State 1355]
type = DestroySelf
trigger1 = Var(0) >= 9
trigger2 = Parent,StateNo != [1300,1399]


;---------------------------------------------------------------------------
;é„ë´ìÅ
[Statedef 1500]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 1500
poweradd = 55
sprpriority = 2

[State 1500]
type = PosAdd
trigger1 = AnimElem = 2,> 0
trigger1 = AnimElem = 6,< 0
x = 4

[State 1500]
type = PlaySnd
trigger1 = AnimElem = 6
value = S1,3
channel = 0

[State 1500]
type = PlaySnd
trigger1 = AnimElem = 6
value = S5,2

[State 1500]
type = HitDef
trigger1 = AnimElem = 6
attr = S, NA
damage = 80,8
animtype = back
guardflag = MA
hitflag = MAF
priority = 6, Hit
pausetime = 10,10
sparkno = S8002
sparkxy = -2, -59
guard.sparkno = S8010
hitsound = S10,6
guardsound = S6,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 14
ground.velocity = -6,-3
air.hittime = 20
air.type = low
air.velocity = -6,-3
fall = 1
fall.recover = 0
airguard.velocity = -6,0
p2facing = 1

[State 1500]
type = TargetState
trigger1 = MoveHit = 1
trigger1 = Var(16) = 0
value = 1550

[State 1500]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;íÜë´ìÅ
[Statedef 1501]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 1501
poweradd = 55
sprpriority = 2

[State 1500]
type = PosAdd
trigger1 = AnimElem = 2,> 0
trigger1 = AnimElem = 6,< 0
x = 4

[State 1500]
type = PlaySnd
trigger1 = AnimElem = 6
value = S1,3
channel = 0

[State 1500]
type = PlaySnd
trigger1 = AnimElem = 6
value = S5,2

[State 1500]
type = HitDef
trigger1 = AnimElem = 6
attr = S, NA
damage = 90,9
animtype = back
guardflag = MA
hitflag = MAF
priority = 6, Hit
pausetime = 10,10
sparkno = S8002
sparkxy = -2, -59
guard.sparkno = S8010
hitsound = S10,6
guardsound = S6,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 14
ground.velocity = -7,-3.5
air.hittime = 20
air.type = low
air.velocity = -7,-3.5
fall = 1
fall.recover = 0
airguard.velocity = -6,0
p2facing = 1

[State 1500]
type = TargetState
trigger1 = MoveHit = 1
trigger1 = Var(16) = 0
value = 1550

[State 1500]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;ã≠ë´ìÅ
[Statedef 1502]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 1502
poweradd = 55
sprpriority = 2

[State 1500]
type = PosAdd
trigger1 = AnimElem = 2,> 0
trigger1 = AnimElem = 6,< 0
x = 4

[State 1500]
type = PlaySnd
trigger1 = AnimElem = 6
value = S1,3
channel = 0

[State 1500]
type = PlaySnd
trigger1 = AnimElem = 6
value = S5,2

[State 1500]
type = HitDef
trigger1 = AnimElem = 6
attr = S, NA
damage = 100,10
animtype = back
guardflag = MA
hitflag = MAF
priority = 6, Hit
pausetime = 10,10
sparkno = S8002
sparkxy = -2, -59
guard.sparkno = S8010
hitsound = S10,6
guardsound = S6,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 14
ground.velocity = -8,-4
air.hittime = 20
air.type = low
air.velocity = -8,-4
fall = 1
fall.recover = 0
airguard.velocity = -6,0
p2facing = 1

[State 1500]
type = TargetState
trigger1 = MoveHit = 1
trigger1 = Var(16) = 0
value = 1550
ignorehitpause = 1

[State 1500]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 1550]
type = A
movetype = H
physics = N
velset = 0,0
anim = 5002

[State 1550]
type = ChangeState
trigger1 = hitshakeover
value = 1551

[Statedef 1551]
type = A
movetype = H
physics = N
velset = -15,-2
anim = 5030

[State 1551]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,1

[State 1551]
type = PlayerPush
trigger1 = 1
value = 0

[State 1551]
type = ChangeState
trigger1 = backedgebodydist<=10 || frontedgebodydist<=10
value = 1552

[Statedef 1552]
type = A
movetype = H
physics = N

[State 1551]
type = Turn
trigger1 = time = 0
trigger1 = frontedgedist < backedgedist

[State 1552]
type = PosAdd
trigger1 = Time = 0
x = -BackEdgeDist

[State 1552]
type = PosFreeze
trigger1 = 1
x = 1
y = 1

[State 1552]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,1

[State 1552]
type = ChangeAnim
trigger1 = 1
value = 5000

[State 1552]
type = ChangeState
trigger1 = time = 4
value = 1553

[Statedef 1553]
type = A
movetype = H
physics = N
velset = 2.5,-10

[State 1553]
type = Turn
trigger1 = Time = 0

[State 1553]
type = VelAdd
trigger1 = 1
y = .5

[State 1553]
type = changeanim
trigger1 = time = 0
value = ifelse(selfanimexist(5051),5051,5030)

[State 1553]
type = changeanim
trigger1 = anim=5030&&animtime=0
value = 5050

[State 1553]
type = changeanim
trigger1 = anim = 5051
trigger1 = vel y > -3
value = 5061

[State 1552]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 1553]
type = SelfState
trigger1 = vel y>0&&pos y>=0
value = 5100

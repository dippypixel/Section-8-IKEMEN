; _________________________________________
;| Character by JStudios2k, Edited from Cattigan619 and Elmofan17                |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;========================================<SPECIAL MOVES>========================================
;==============================================================================================

;---------------------------------------------------------------------------
;Big Head
[Statedef 1000]
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

[State 1000, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "x" || command = "rlsx"), 0, ifElse((command = "y" || command = "rlsy"), 1, 2))

[State 1000, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1000, ifElse(var(10) = 1, 1010, 1020))

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(3+var(10)) = 1
value = 1,6
channel = 0

[State 1000, BIGHEAD]
type = PlaySnd
trigger1 = animelemtime(3+var(10)) = 1
value = 6,0
channel = 1

[State 1000, Woosh]
type = Explod
trigger1 = animelemtime(3+var(10)) = 0
anim = 1004
ID = 1004
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
pausemovetime = 0
scale = 0.4,0.2
sprpriority = 1
ontop = 1
ownpal = 0
removeongethit = 0
ignorehitpause = 0

[State 1000, Hadouken]
type = helper
trigger1 = animelemtime(3+var(10)) = 1
helpertype = normal
stateno = 1005
ID = 1005
name = "Hadouken"
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
;EX Big Head
[Statedef 1050]
type=S
physics=S
movetype=A
ctrl=0
velset=0,0
sprpriority=1
poweradd=-500
facep2=1

[State 1000, Button Detect]
type = VarSet
trigger1 = !Time
var(10) =0

[State 1050, MAX Timer Drain]
type = VarAdd
trigger1 = !Time
trigger1 = var(53) > 0
var(53) = -230

[State 1050, Anim]
type=changeanim
trigger1=!time
value=1050

[State 1050,Posset]
type=posset
trigger1=!time
y=0

[State 1050, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 1050, Custom Combo Juggle Points Reset]
type = varset
trigger1 = !time && var(20)
var(15) = 0
ignorehitpause = 1

[State 1050, CC Reset]
type = palfx
trigger1 = !time
trigger1 = var(20) := -1
time = 1

[State 1050, ExFX]
type = varset
trigger1 = !time
var(25) = 44

[State 1050, ExFX]
type = explod
trigger1 = !time
anim = 8210
sprpriority = 3
postype = p1
pos = -31, -86
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1050, ExFX]
type = playsnd
trigger1 = !time
value = 0, 1000
channel = 1

[State 1200, Reversal]
type=ReversalDef
trigger1=animelemTime(3) >= 0
reversal.attr= SCA, NA, SA
pauseTime=4,6
sparkNo=-1 + 0 * (var(33) := Ifelse(prevstateno=1200,0,8001))
sparkXY=-10 + 0 * (var(35) := 30), (var(36) := -60)
hitSound=S3,0
numHits=0
p1stateno=1051
ignorehitpause=1

[State 1001, VarSet]
type = VarSet
trigger1 = time = [0,49]
var(1) = 0
[State 1001, VarSet]
type = VarSet
trigger1 = time = [50,99]
var(1) = 1
[State 1001, VarSet]
type = VarSet
trigger1 = time = [100,149]
var(1) = 2
[State 1001, MAX POWER]
type = VarSet
trigger1 = time = 150
var(1) = 3

[State 1000, Charge FX]
type = helper
trigger1 = animelem = 2
helpertype = normal
stateno = 1049
ID = 1049
name = "ChargeFX"
postype = p1
pos = ceil(0 *const(size.xscale)),ceil(0 *const(size.yscale))
size.xscale = 0.35
size.yscale = 0.35
ownpal=1

[State 0, Helper]
type = Helper
trigger1 = time = 50
trigger2 = time = 100
trigger3 = time = 150
helpertype = normal ;player
name = "Ping"
ID = 8200
stateno =  8200
pos = -35,-30
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 50
trigger2 = time = 100
trigger3 = time = 150
value = 1,8+var(1)
ignorehitpause = 1

[State 1050, INSULT]
type = PlaySnd
trigger1 = animelem = 2
value = 6,1+random%3
channel = 0

[State 1050, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 1,8
channel = 3

[State 1002, ChangeState]
type = Changestate
trigger1 = command != "holdx" && command != "holdy" && command != "holdz" 
trigger2 = Time >= 150
value = 1051

;---------------------------------------------------------------------------
;RELEASE!
[Statedef 1051]
type=S
physics=S
movetype=A
ctrl=0
velset=0,0
sprpriority=1
facep2=1

[State 0, StopSnd]
type = StopSnd
trigger1 = !time
channel = 0
;ignorehitpause = 
;persistent = 

[state 1000,Posset]
type=posset
trigger1=!time
y=0

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 1000

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(3) = 1
value = 1,6
channel = 0
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(3) = 1
value = 1,7
channel = 2

[State 1000, BIGHEAD]
type = PlaySnd
trigger1 = animelemtime(3) = 1
value = 6,0
channel = 1

[State 1000, Woosh]
type = Explod
trigger1 = animelemtime(3) = 0
anim = 1004
ID = 1004
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
pausemovetime = 0
scale = 0.4,0.2
sprpriority = 1
ontop = 1
ownpal = 0
removeongethit = 0
ignorehitpause = 0

[State 1000, Hadouken]
type = helper
trigger1 = animelemtime(3) = 1
helpertype = normal
stateno = 1010
ID = 1056
name = "Hadouken"
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
;Trigger Big Head
[Statedef 1090]
type=S
physics=S
movetype=A
ctrl=0
velset=0,0
sprpriority=1
facep2=1

[State 1000, Button Detect]
type = VarSet
trigger1 = !Time
var(10) =0

[State 1050, MAX Timer Drain]
type = VarAdd
trigger1 = !Time
trigger1 = var(53) > 0
var(53) = -90

[State 1050, Anim]
type=changeanim
trigger1=!time
value=1050

[State 1050,Posset]
type=posset
trigger1=!time
y=0

[State 1000, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "x" || command = "rlsx"), 0, ifElse((command = "y" || command = "rlsy"), 1, 2))

[State 1000, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1050, Custom Combo Juggle Points Reset]
type = varset
trigger1 = !time && var(20)
var(15) = 0
ignorehitpause = 1

[State 1050, CC Reset]
type = palfx
trigger1 = !time
trigger1 = var(20) := -1
time = 1

[State 1050, ExFX]
type = varset
trigger1 = !time
var(25) = 44

[State 1050, ExFX]
type = explod
trigger1 = !time
anim = 8210
sprpriority = 3
postype = p1
pos = -31, -86
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1050, ExFX]
type = playsnd
trigger1 = !time
value = 0, 1001
channel = 1

[State 1200, Reversal]
type=ReversalDef
trigger1=animelemTime(3) >= 0
reversal.attr= SCA, NA, SA
pauseTime=4,6
sparkNo=-1 + 0 * (var(33) := Ifelse(prevstateno=1200,0,8001))
sparkXY=-10 + 0 * (var(35) := 30), (var(36) := -60)
hitSound=S3,0
numHits=0
p1stateno=1051
ignorehitpause=1

[State 1001, VarSet]
type = VarSet
trigger1 = time = [0,49]
var(1) = 0
[State 1001, VarSet]
type = VarSet
trigger1 = time = [50,99]
var(1) = 1
[State 1001, VarSet]
type = VarSet
trigger1 = time = [100,149]
var(1) = 2
[State 1001, MAX POWER]
type = VarSet
trigger1 = time = 150
var(1) = 3

[State 1000, Charge FX]
type = helper
trigger1 = animelem = 2
helpertype = normal
stateno = 1049
ID = 1049
name = "ChargeFX"
postype = p1
pos = ceil(0 *const(size.xscale)),ceil(0 *const(size.yscale))
size.xscale = 0.35
size.yscale = 0.35
ownpal=1

[State 0, Helper]
type = Helper
trigger1 = time = 50
trigger2 = time = 100
trigger3 = time = 150
helpertype = normal ;player
name = "Ping"
ID = 8200
stateno =  8200
pos = -35,-30
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 50
trigger2 = time = 100
trigger3 = time = 150
value = 1,8+var(1)
ignorehitpause = 1

[State 1050, INSULT]
type = PlaySnd
trigger1 = animelem = 2
value = 6,1+random%3
channel = 0

[State 1050, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 1,8
channel = 3

[State 1002, ChangeState]
type = Changestate
trigger1 = command != "holdx" && command != "holdy" && command != "holdz" 
trigger2 = Time >= 150
value = 1051

;EX Trigger Big Head
[Statedef 1095]
type=S
physics=S
movetype=A
ctrl=0
velset=0,0
sprpriority=1
facep2=1

[State 1001, MAX POWER]
type = VarSet
trigger1 = !time
var(1) = 3

[State 1050, MAX Timer Drain]
type = VarAdd
trigger1 = !Time
trigger1 = var(53) > 0
var(53) = -500

[State 1050,Posset]
type=posset
trigger1=!time
y=0

[State 1000, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 1050, Custom Combo Juggle Points Reset]
type = varset
trigger1 = !time && var(20)
var(15) = 0
ignorehitpause = 1

[State 1050, CC Reset]
type = palfx
trigger1 = !time
trigger1 = var(20) := -1
time = 1

[State 1050, ExFX]
type = varset
trigger1 = !time
var(25) = 44

[State 1050, ExFX]
type = explod
trigger1 = !time
anim = 8210
sprpriority = 3
postype = p1
pos = -31, -86
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1050, ExFX]
type = playsnd
trigger1 = !time
value = 0, 1001

[State 0, StopSnd]
type = StopSnd
trigger1 = !time
channel = 0
;ignorehitpause = 
;persistent = 

[state 1000,Posset]
type=posset
trigger1=!time
y=0

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 1020

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(3) = 1
value = 1,6
channel = 0
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(3) = 1
value = 1,7
channel = 2

[State 1000, BIGHEAD]
type = PlaySnd
trigger1 = animelemtime(3) = 1
value = 6,0
channel = 1

[State 1000, Woosh]
type = Explod
trigger1 = animelemtime(3) = 0
anim = 1004
ID = 1004
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
pausemovetime = 0
scale = 0.4,0.2
sprpriority = 1
ontop = 1
ownpal = 0
removeongethit = 0
ignorehitpause = 0

[State 1000, Hadouken]
type = helper
trigger1 = animelemtime(3) = 1
helpertype = normal
stateno = 1010
ID = 1056
name = "Hadouken"
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

;--------------------------------------------------------------------------
;Great Barrier Reef
[StateDef 1100]
type = A
physics = N
moveType = A
ctrl = 0
velSet = 4,0
sprPriority = 2
poweradd=Ifelse(var(13),36,72) * !var(20)

[State 1050, MAX Timer Drain]
type = VarAdd
trigger1 = !Time
trigger1 = var(53) > 0
var(53) = -90

[State 600, AngleDraw]
type = AngleDraw
trigger1 = animelemtime(4)<0
ignorehitpause = -1
[State 600, AngleAdd]
type = AngleAdd
trigger1 = animelemtime(4)<0
value = -30

[State 1000, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "a" || command = "rlsa"), 0, ifElse((command = "b" || command = "rlsb"), 1, 2))

[State 1000, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1100, ifElse(var(10) = 1, 1110, 1120))

[State 1300, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 2 + var(10) * 1.75 ;1.5
y = -4 - var(10)

[State 1300, Gravity]
type = VelAdd
trigger1 = AnimElemTime(2) >= 0
y = 0.5

[State 1230, PosAdd]
type=PosAdd
trigger1=animelem=4||animelem=5
x=Ifelse((animelem=4),18,12)

[State 1230, Snd]
type=PlaySnd
trigger1=animelemtime(4) = 2
value=1,12
channel=1

[State 1200, Slash FX]
type = Explod
trigger1 = !NumExplod(1105)
trigger1 = animelemtime(4) = 2
anim = 1105
ID = 1105
pos = 18, -65
postype = P1
sprpriority = 3
ignorehitpause = 0
bindtime = -1
scale = 0.3, -0.3
;pausemovetime = 65535
;supermovetime = 65535
ownpal = 1
removeongethit = 1

[State 1100, HitDef 1]
type = HitDef
;triggerall = (!var(16) && var(15)<2 || var(20))
trigger1 = animelem = 5
attr = S,SA       
id=1100
hitflag=MAF       
guardflag=MA       
animtype=Hard          
priority=4,Hit   
damage=ceil(ifelse(var(53),64,fvar(11)*(50+var(10)*15))),4
getpower=72* !var(20), 36 * !var(20)
givepower=36,36
pauseTime=ifelse(var(20), 4, 12), ifelse(var(20), 10, 18)
guard.pauseTime=ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 75), var(36) := -55
hitsound = S2,1001
guardsound = s3, 0
fall.animType = Back
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
guard.hittime = 18
air.hittime = 120
ground.velocity =Ifelse(!var(20),-1,-2.5),Ifelse(!var(20),20,0)
guard.velocity=-10.52
air.velocity = Ifelse(!var(20),-1,-2.5),Ifelse(!var(20),20,-5)
ground.cornerPush.velOff = -5
guard.cornerPush.velOff = -11
air.cornerPush.velOff = 0
yaccel = 0.525
fall = 1
fall.recover = 1
fall.recovertime = 120
envshake.time = 12
envshake.ampl = Ifelse(random<=500,-3,3)

[State 1100, HitDef 2]
type = HitDef
;triggerall = (!var(16) && var(15)<2 || var(20))
trigger1 = animelem = 6
attr = S,SA       
id=1100
hitflag=MAF       
guardflag=MA  
animtype=Hard          
priority=4,Hit   
damage=ceil(ifelse(var(53),66,fvar(11)*(33+var(10)*3))),4
getpower=72* !var(20), 36 * !var(20)
givepower=36,36
pauseTime=ifelse(var(20), 4, 12), ifelse(var(20), 10, 18)
guard.pauseTime=ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 75), var(36) := -55
hitsound = S2,1001
guardsound = s3, 0
fall.animType = Back
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
guard.hittime = 18
air.hittime = 120
ground.velocity =Ifelse(!var(20),-1,-2.5),Ifelse(!var(20),20,0)
guard.velocity=-10.52
air.velocity = Ifelse(!var(20),-1,-2.5),Ifelse(!var(20),20,-5)
ground.cornerPush.velOff = -5
guard.cornerPush.velOff = -11
air.cornerPush.velOff = 0
yaccel = 0.525
fall = 1
fall.recover = 1
fall.recovertime = 120
envshake.time = 12
envshake.ampl = Ifelse(random<=500,-3,3)

[State 1230, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = animelemTime(7) >= 0
moveType = I

[State 1230, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

[State 1300, ChangeState]
type = ChangeState
trigger1 = Pos Y > -Vel Y
trigger1 = AnimElemTime(2) > 0
value = 1101

;--------------------------------------------------------------------------
;EX Great Barrier Reef
[StateDef 1150]
type = A
physics = N
moveType = A
ctrl = 0
velSet = 4,0
sprPriority = 2
poweradd=-500

[State 1050, MAX Timer Drain]
type = VarAdd
trigger1 = !Time
trigger1 = var(53) > 0
var(53) = -230

[State 1050, Anim]
type=changeanim
trigger1=!time
value=1050

[State 1050,Posset]
type=posset
trigger1=!time
y=0

[State 1050, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 1050, Custom Combo Juggle Points Reset]
type = varset
trigger1 = !time && var(20)
var(15) = 0
ignorehitpause = 1

[State 1050, CC Reset]
type = palfx
trigger1 = !time
trigger1 = var(20) := -1
time = 1

[State 1050, ExFX]
type = varset
trigger1 = !time
var(25) = 44

[State 1050, ExFX]
type = explod
trigger1 = !time
anim = 8210
sprpriority = 3
postype = p1
pos = 31, -40
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1050, ExFX]
type = playsnd
trigger1 = !time
value = 0, 1000
channel = -1

[State 600, AngleDraw]
type = AngleDraw
trigger1 = animelemtime(4)<0
ignorehitpause = -1
[State 600, AngleAdd]
type = AngleAdd
trigger1 = animelemtime(4)<0
value = -30

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 1100

[State 1300, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 5.5
y = -6

[State 1300, Gravity]
type = VelAdd
trigger1 = AnimElemTime(2) >= 0
y = 0.5

[State 1230, PosAdd]
type=PosAdd
trigger1=animelem=4||animelem=5
x=Ifelse((animelem=4),18,12)

[State 1230, Snd]
type=PlaySnd
trigger1=animelemtime(4) = 2
value=1,12
channel=2

[State 1200, Slash FX]
type = Explod
trigger1 = !NumExplod(1105)
trigger1 = animelemtime(4) = 2
anim = 1105
ID = 1105
pos = 18, -65
postype = P1
sprpriority = 3
ignorehitpause = 0
bindtime = -1
scale = 0.3, -0.3
;pausemovetime = 65535
;supermovetime = 65535
ownpal = 1
removeongethit = 1

[State 1100, HitDef]
type = HitDef
;triggerall = (!var(16) && var(15)<2 || var(20))
ID = 1150
trigger1 = !time
attr = S,SA       
hitflag=MAF       
guardflag=MA
animtype=Hard          
priority=4,Hit   
damage=ceil(fvar(11)*ifelse(p2statetype!=A,50,99)),10
getpower=72* !var(20), 36 * !var(20)
givepower=36,36
pauseTime=ifelse(var(20), 4, 12), ifelse(var(20), 10, 18)
guard.pauseTime=ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 75), var(36) := -55
hitsound = S2,1001
guardsound = s3, 0
fall.animType = Back
ground.type = Low
ground.slidetime = 27
ground.hittime = 20
guard.hittime = 18
air.hittime = 120
ground.velocity =Ifelse(!var(20),-1,-2.5),Ifelse(!var(20),20,0)
guard.velocity=-10.52
air.velocity = -1,-5.6
ground.cornerPush.velOff = -5
guard.cornerPush.velOff = -11
air.cornerPush.velOff = 0
yaccel = 0.525
fall = 1
fall.recover = 1
fall.recovertime = 120
envshake.time = 12
envshake.ampl = 6

[State Connect]
type = Changestate
trigger1 = MoveHit && NumTarget(1150) && p2statetype != A
value = 1151
ignoreHitPause = 1
persistent = 0

[State 1230, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = animelemTime(7) = 0
moveType = I

[State 1230, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

[State 1300, ChangeState]
type = ChangeState
trigger1 = Pos Y > -Vel Y
trigger1 = AnimElemTime(2) > 0
value = 1101

;--- LAND ---
[Statedef 1101]
type = S
physics = S
ctrl = 0
anim = 1101
velset = 0, 0
movehitpersist = 1
[State 1103, Pos]
type = posset
trigger1 = 1
y = 0
[State 1103, Snd]
type = playsnd
trigger1 = !time
value = 0, 52
[State 1103, Dust]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1
[State 1103, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; YEE HAW
[Statedef 1151]
type = S
movetype = A
physics = S
velset = 0,0
sprpriority = 0
anim = 1151
ctrl = 0

[State 0, TargetState]
type = TargetState
trigger1 = time = 0
value = 821
ignorehitpause = 1

[State 801, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 810, Vel]
type = velset
trigger1 = animelemtime(6) < 0
x = 0
y = 0

[State 810, width]
type = width
trigger1 = animelemtime(3) >= 0 && animelemtime(5) < 0
edge = 45, 0
[State 810, width]
type = width
trigger1 = animelemtime(5) >= 0 && animelemtime(6) < 0
edge = 75, 0

[State 810, Bind 1]
type = bindtotarget
trigger1 = animelemtime(1) >= 0 && animelemtime(2) < 0
pos = 25, 0, foot
[State 810, Bind 2]
type = bindtotarget
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
pos = 32, 50 + floor(0.5 * (target, const(size.head.pos.y) + target, const(size.mid.pos.y)))
[State 810, Bind 3]
type = bindtotarget
trigger1 = animelemtime(3) >= 0 && animelemtime(6) < 0
pos = 43, 50 + floor(0.5 * (target, const(size.head.pos.y) + target, const(size.mid.pos.y)))

[State 810, hurt]
type = targetlifeadd
trigger1 = animelem = 2
value = -ceil(24 * fvar(11))
[State 810, hurt]
type = targetlifeadd
trigger1 = animelem = 5 || animelem = 6
value = -ceil(20 * fvar(11))
[State 810, hurt]
type = targetpoweradd
trigger1 = animelem = 6
value = 36
[State 810, throw]
type = targetstate
trigger1 = animelem = 6
value = 822

[State 810, Voice]
type = playsnd
trigger1 = animelem = 5
value = 3, 7
channel = 0
[State 810, HitSound]
type = playsnd
trigger1 = animelem = 2
trigger2 = animelem = 5
trigger3 = animelem = 6
value = 2, 1001
[State 0, HitAdd]
type = HitAdd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 5
trigger3 = AnimElem = 6
value = 1
;ignorehitpause = 
[State 810, Sparks]
type = Helper
trigger1 = animelem = 2
helperType = Normal
stateNo = 8012
ID = 8001
name = "Spark"
posType = P1
pos = 30, -10
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1
[State 810, Sparks]
type = Helper
trigger1 = animelem = 5
helperType = Normal
stateNo = 8013
ID = 8001
name = "Spark"
posType = P1
pos = 70, -48
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1
[State 810, Sparks]
type = Helper
trigger1 = animelem = 6
helperType = Normal
stateNo = 8013
ID = 8001
name = "Spark"
posType = P1
pos = 70, -48
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 810, Vel]
type = velset
trigger1 = animelem = 6
x = -4
y = -11
[State 810, Turn]
type = turn
trigger1 = animelem = 9
[State 810, Type]
type = statetypeset
trigger1 = animelemtime(6) >= 0
statetype = A
physics = N
[State 810, Accel]
type = gravity
trigger1 = animelemtime(6) >= 0

[State 810, End]
type = changestate
trigger1 = animelemtime(6) >= 0 && vel y > 0 && pos y > 0
value = 1101

;---------------------------------------------------------------------------
;Big Overhead
[StateDef 1200]
type = S
physics = N
moveType = A
ctrl = 0
velSet = 0,0
sprPriority = 2
poweradd=Ifelse(var(13),36,72) * !var(20)

[State 1000, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "x" || command = "rlsx"), 0, ifElse((command = "y" || command = "rlsy"), 1, 2))

[State 1000, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 200, Type]
type=statetypeset
trigger1= animelemtime(2)>=0
statetype=A

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1200, ifElse(var(10) = 1, 1210, 1220))

[State 40, Snd]
type = playsnd
trigger1 = animelem =2
value = 40, 0

[State 1300, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = -2 + var(10) * 4 ;1.5
y = -4 - var(10) * 1.5

[State 1300, STOP]
type = VelSet
trigger1 = AnimElemTime(4) >= 0
y = 0
x = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(4) = 1
value = 1,6
channel = 0

[State 1000, BIGHEAD]
type = PlaySnd
trigger1 = animelemtime(4) = 1
value = 6,0
channel = 1

[State 1000, Woosh]
type = Explod
trigger1 = animelemtime(4) = 0
anim = 1004
ID = 1004
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
pausemovetime = 0
scale = 0.4,0.2
sprpriority = 1
ontop = 1
ownpal = 0
removeongethit = 0
ignorehitpause = 0

[State 1000, Hadouken]
type = helper
trigger1 = animelemtime(4) = 1
helpertype = normal
stateno = 1007
ID = 1005
name = "Hadouken"
postype = p1
pos = 25, -10
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 1000, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 50

;---------------------------------------------------------------------------
;EX Big Overhead
[StateDef 1250]
type = S
physics = N
moveType = A
ctrl = 0
velSet = 0,0
sprPriority = 2
poweradd=-500

[State 1000, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "x" || command = "rlsx"), 0, ifElse((command = "y" || command = "rlsy"), 1, 2))

[State 1000, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1050, MAX Timer Drain]
type = VarAdd
trigger1 = !Time
trigger1 = var(53) > 0
var(53) = -230

[State 1050, Anim]
type=changeanim
trigger1=!time
value=1050

[State 1050,Posset]
type=posset
trigger1=!time
y=0

[State 1050, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 1050, Custom Combo Juggle Points Reset]
type = varset
trigger1 = !time && var(20)
var(15) = 0
ignorehitpause = 1

[State 1050, CC Reset]
type = palfx
trigger1 = !time
trigger1 = var(20) := -1
time = 1

[State 1050, ExFX]
type = varset
trigger1 = !time
var(25) = 44

[State 1050, ExFX]
type = explod
trigger1 = !time
anim = 8210
sprpriority = 3
postype = p1
pos = -31, -86
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1050, ExFX]
type = playsnd
trigger1 = !time
value = 0, 1000

[State 200, Type]
type=statetypeset
trigger1= animelemtime(2)>=0
movetype=A

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 1250

[State 40, Snd]
type = playsnd
trigger1 = animelem =2
value = 40, 0

[State 1300, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 3
y = -8.99

[State 1300, STOP]
type = VelSet
trigger1 = AnimElemTime(4) >= 0
y = 0
x = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(4) = 0
value = 2,3000
channel = 0

[State 1000, BIGHEAD]
type = PlaySnd
trigger1 = animelemtime(4) = 0
value = 6,0
channel = 1

[State 1000, Woosh]
type = Explod
trigger1 = animelemtime(4) = 0
anim = 1004
ID = 1004
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
pausemovetime = 0
scale = 0.4,0.2
sprpriority = 1
ontop = 1
ownpal = 0
removeongethit = 0
ignorehitpause = 0

[State 0, Explod]
type = Explod
trigger1 = animelemtime(4) = 0
anim = 1006
ID = 1006
pos = 62,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
scale = 0.5,0.5
ontop = 1

[State 3011, Effect]
Type = Explod
Trigger1 = AnimElemTime(4) = 0
Anim = 1251
ID = 7210
Pos = 45,pos y+2*(-pos y)
PosType = P1
BindTime = 1
ReMoveTime = -2
Scale = 0.5, 0.5
SprPriority = 5
OwnPal = 1

[State 0, EnvShake]
type = EnvShake
Trigger1 = AnimElemTime(4) = 0
time = 6
freq = 120
ampl = -6

[State 1100, HitDef]
type = HitDef
;triggerall = (!var(16) && var(15)<2 || var(20))
ID = 1150
trigger1 = !time
attr = S,SA       
hitflag=MAF       
guardflag=H
animtype=Hard          
priority=4,Hit   
damage=ceil(fvar(11)*ifelse(var(13)>3,50,89)),10
getpower=72* !var(20), 36 * !var(20)
givepower=36,36
pauseTime=ifelse(var(20), 4, 12), ifelse(var(20), 10, 18)
guard.pauseTime=ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 75), var(36) := -10
hitsound = S2,11
guardsound = s3, 0
fall.animType = Back
ground.type = Low
ground.slidetime = 27
ground.hittime = 20
guard.hittime = 18
air.hittime = 120
ground.velocity =Ifelse(!var(20),-1,-2.5),Ifelse(!var(20),20,0)
guard.velocity=-10.52
air.velocity = -1,-5.6
ground.cornerPush.velOff = -5
guard.cornerPush.velOff = -11
air.cornerPush.velOff = 0
yaccel = 0.525
fall = 1
fall.recover = 1
fall.recovertime = 120
envshake.time = 12
envshake.ampl = 14

[State 1000, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 50

;---------------------------------------------------------------------------
;Portal Gun
[Statedef 1300]
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

[State 1000, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "a" || command = "rlsa"), 0, ifElse((command = "b" || command = "rlsb"), 1, 2))

[State 1000, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1300, ifElse(var(10) = 1, 1310, 1320))

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(3) = 1
value = 1,20
channel = 0

[State 1000, Portal]
type = helper
trigger1 = animelemtime(3) = 1
helpertype = normal
stateno = 1305
ID = 1300+var(10)
name = "Portal"
postype = p1
pos = 40, ifElse(var(10) = 0, 0, ifElse(var(10) = 1, -33, -12))
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 1000, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;TELEPORT
[Statedef 1301]
type=S
physics=S
movetype=A
ctrl=0
velset=0,0
sprpriority=1
poweradd=0
facep2=1

[State 1000, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "a" || command = "rlsa"), 0, ifElse((command = "b" || command = "rlsb"), 1, 2))

[State 1000, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 1301

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 1,18
channel = 0

[State 1500, FX]
type = Helper
trigger1 = animelem = 2
helpertype = Normal
stateno = 1505
ID = 1505
name = "Warp FX"
postype = P1
pos = 60, 0
ownpal = 1

[State 1000, ChangeState]
type = ChangeState
trigger1 = !animtime
value = ifElse(numhelper(1300), 1310, ifElse(numhelper(1301), 1320, 1330))
ctrl = 0

;Sliiiide to the right(left?)
[Statedef 1310]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = 0

[State grounded]
type=posset
trigger1=!time
y=0
[State TELEPORT]
type=posset
trigger1=!time
x=helper(1300),pos x
[State 0, Turn]
type = Turn
trigger1 = (p2dist x < 0)
ignorehitpause = 1

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

[State 1310, anim]
type=changeanim
trigger1=!time
value=1305

[State NHB]
type = nothitby
trigger1 = animelemtime(5) < 0
value = SCA
time = 1
ignorehitpause = 1

[State 1310, thickness]
type = Width
trigger1 = 1
edge = 40,0

[State 1310, VelAdd]
type = VelSET
trigger1 = animelem = 6
x = 7

[State 1310, 2]
type = PlaySnd
trigger1 = animelem = 6
value = s101,0

[State 105, Dust]
type = helper
trigger1 = animelem = 6
stateno = 8103
ID = 8100
name = "Dash Dust"
postype = p1
facing = -1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[STATE GETHIT]
type = hitdef
trigger1 = (var(15) < 4 || var(20))
trigger1 = !Time
ID = 1310
attr = S, SA
hitFlag = MAFD
guardFlag = L
damage =ceil(ifelse(fvar(11) * 100 < 7, 7, fvar(11) * ifelse(p2statetype=L,65,100))), 7
getpower = 70 * !var(20), 30 * !var(20)
givepower = 35, 35
pausetime = ceil(13*(2-(var(20)>0))/2),ceil(13*(2-(var(20)>0))/2)
guard.pausetime = ceil(10*(2-(var(20)>0))/2),ceil(10*(2-(var(20)>0))/2)
animType = Back
air.animType = Back
fall.animType = Diagup
ground.type = High
air.type = Low
ground.hitTime = 18 + 4 * var(9)
ground.slideTime = 18 + 4 * var(9)
guard.hitTime = 9
air.hitTime = 120
ground.velocity = -6,-5.5
ground.cornerPush.velOff = 0
guard.velocity = -6
guard.cornerPush.velOff = 0
air.velocity = -6.46, -4.25
air.cornerPush.velOff = 0
yaccel = 0.58
fall = 1
fall.recover = 1
fall.recoverTime = 120
hitsound = -1 + 0*(var(31):=5)
guardsound = -1 + 0*(var(32):=0)
sparkno = S-1 + 0*(var(33):=8013)
guard.sparkno = S-1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=76), var(36):=-83
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envshake.time = 14
envshake.ampl = 4
envshake.freq = 120

[STATE 2910,IDLE]
type = StateTypeSet
trigger1 = AnimElemTime(7) >= 0
movetype = I

[State over]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;Ken wannabe
[Statedef 1320]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = 0

[State grounded]
type=posset
trigger1=!time
y=0
[State TELEPORT]
type=posset
trigger1=!time
x=helper(1301),pos x
[State 0, Turn]
type = Turn
trigger1 = !time
trigger1 = facing != helper(1301),facing
ignorehitpause = 1

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

[State 1200, Slash FX]
type = Explod
trigger1 = !NumExplod(1105)
trigger1 = animelemtime(5) = 0
anim = 1105
ID = 1105
pos = 18, -45
postype = P1
sprpriority = 3
ignorehitpause = 0
bindtime = -1
scale = -0.3, 0.3
;pausemovetime = 65535
;supermovetime = 65535
ownpal = 1
removeongethit = 1

[State 1310, anim]
type=changeanim
trigger1=!time
value=1311

[State NHB]
type = nothitby
trigger1 = animelemtime(6) < 0
value = SCA
time = 1
ignorehitpause = 1

[State 1300, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 3.75 ;1.5
y = -5

[State 1300, Gravity]
type = VelAdd
trigger1 = AnimElemTime(3) >= 0
y = 0.5

[State 1310, 2]
type = PlaySnd
trigger1 = animelem = 5
value = s1,12

[STATE GETHIT]
type = hitdef
trigger1 = !var(16) && (var(15) < 4 || var(20))
trigger1 = !Time
ID = 1320
attr = S, SA
hitFlag = MAF
guardFlag = L
damage =ceil(ifelse(fvar(11) * 100 < 7, 7, fvar(11) * 100)), 7
getpower = 70 * !var(20), 30 * !var(20)
givepower = 35, 35
pausetime = ceil(13*(2-(var(20)>0))/2),ceil(13*(2-(var(20)>0))/2)
guard.pausetime = ceil(10*(2-(var(20)>0))/2),ceil(10*(2-(var(20)>0))/2)
animType = Back
air.animType = Back
fall.animType = Diagup
ground.type = High
air.type = Low
ground.hitTime = 18 + 4 * var(9)
ground.slideTime = 18 + 4 * var(9)
guard.hitTime = 9
air.hitTime = 120
ground.velocity = -6,-5.5
ground.cornerPush.velOff = 0
guard.velocity = -6
guard.cornerPush.velOff = 0
air.velocity = -6.46, -4.25
air.cornerPush.velOff = 0
yaccel = 0.58
fall = 1
fall.recover = 1
fall.recoverTime = 120
hitsound = -1 + 0*(var(31):=1001)
guardsound = -1 + 0*(var(32):=0)
sparkno = S-1 + 0*(var(33):=8013)
guard.sparkno = S-1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=76), var(36):=-83
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envshake.time = 14
envshake.ampl = 4
envshake.freq = 120

[STATE 2910,IDLE]
type = StateTypeSet
trigger1 = AnimElemTime(7) >= 0
movetype = I

[State 1300, ChangeState]
type = ChangeState
trigger1 = Pos Y > -Vel Y
trigger1 = AnimElemTime(2) > 0
value = 1101

;Head Press?
[Statedef 1330]
type = A
physics = N
movetype = A
sprpriority = 1

[State TELEPORT]
type=posset
trigger1=!time
x=helper(1302),pos x
y=helper(1302),pos y-30

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

[State 50, Anim]
type = changeanim
trigger1 = !time
value = 1321
persistent = 0

[State 50, Grounded Frame]
type = posfreeze
trigger1 = time < 1 
value = 1

[State 50, Accel]
type = gravity
trigger1 = time >= 1

[STATE GETHIT]
type = hitdef
trigger1 = !var(16) && (var(15) < 4 || var(20))
trigger1 = !Time
ID = 1330
attr = S, SA
hitFlag = MAFD
guardFlag = HA
damage =ceil(ifelse(fvar(11) * 100 < 7, 7, fvar(11) * 100)), 7
priority = 4, hit
animtype = Hard
getpower = 70 * !var(20), 30 * !var(20)
givepower = 35, 35
hitsound = S2,5
guardsound = s3,0
pausetime = 0,22
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 50), var(36) := 0
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.slidetime = 18
ground.hittime  = 18
guard.hittime = 18
ground.velocity = -7, 0
air.velocity = -4,-4
guard.velocity = -10
down.velocity = 0, 0
airguard.velocity = IfElse(var(20), -4, -8), -1.5
airguard.ctrlTime = 16
ground.cornerPush.velOff = 0
guard.cornerPush.velOff = 0
air.cornerPush.velOff = 0
yaccel = .58
fall=0
air.fall = 1
fall.recover = 1
forcestand = 1
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envshake.time = 16
envshake.ampl = 6
envShake.freq = 150

[State 1200, PosSet]
type = PosSet
trigger1 = Anim = 1321 && MoveContact && NumTarget(1330)
x = Target(1330), Pos x
ignorehitpause = 1
persistent = 0

[State 1200, PosFreeze]
type = PosFreeze
trigger1 = Anim = 1321 && (MoveContact || MoveReversed)
value = 1
ignorehitpause = 1

[State 1200, VelSet]
type = VelSet
trigger1 = Anim = 1321 && (MoveContact || MoveReversed)
x = 0
y = 0
ignorehitpause = 1

[State 1200, Anim]
type = Changeanim
trigger1 = Anim = 1321 && (MoveContact || MoveReversed)
value = 1322
ignorehitpause = 1

[State 1200, PosFreeze]
type = PosFreeze
trigger1 = Anim = 1321 && (MoveContact || MoveReversed)
trigger2 = Anim = 1322 && NumTarget(1201) && AnimElemTime(4) < 0
value = 1
ignorehitpause = 1

[State 1200, Vel]
type = velset
trigger1 = Anim = 1321 && (MoveContact || MoveReversed)
trigger2 = Anim = 1322 && AnimElemtime(5) < 0
x = 0
y = 0
ignorehitpause = 1

[State 1200, Push]
type = PlayerPush
trigger1 = Anim = 1322 && AnimElemTime(5) < 0
value = 0

[State 1200, Vel]
type = VelSet
trigger1 = Anim = 1322 && AnimElem = 5
x = 0
y = -8

[State 1200, Acceleration]
type = VelAdd
trigger1 = Anim = 1322 && AnimElemTime(5) >= 0
y = 0.5

[State 1200, Direction Velocity]
type = VelSet
trigger1 = Anim = 1322 && AnimElemTime(5) >= 0
x = IfElse(Command = "holdfwd", 4.5, IfElse(Command = "holdback", -6, Vel X))

[State 1200, Direction Velocity]
type = VelMul
trigger1 = Anim = 1322 && AnimElemTime(5) >= 0 && Vel X
trigger1 = Command != "holdfwd" && Command != "holdback"
x = 0.95

[State 1300, Devil Reverse MixUp]
type = ChangeState
triggerall = Anim = 1321 && AnimElemTime(3) >= 0
trigger1 = !AIlevel && (Command = "x" || Command = "y" || Command = "z")
trigger2 = AIlevel && (P2Dist Y = [ -50, 100])
value = 1331

[State 1200, Somersault Skull Diver FollowUp]
type = ChangeState
triggerall = Anim = 1322 && AnimElemTime(8) >= 0
trigger1 = !AIlevel && (Command = "x" || Command = "y" || Command = "z")
trigger2 = AIlevel && (P2Dist Y = [ -50, 100])
value = 1332

[State 1200, ChangeState]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= -Ceil(Vel Y)
value = 1101

;that Bison reverse
[Statedef 1331]
type = A
movetype = A
physics = N
anim = 1324
ctrl = 0
velSet = 0,0
sprPriority = 2
faceP2 = 0

[State 1301, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 3000,3
channel = 0

[State 1301, Woosh]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1,5
channel = 1

[State 1301, Turn]
type = Turn
trigger1 = AnimElem = 1
trigger1 = P2Dist x < 20

[State 1301, Acceleration]
type = VelAdd
trigger1 = 1
y = 0.75

[State 1301, Velocity]
type = VelSet
trigger1 = AnimElem = 1
x = 6
y = -9

[State 1301, Direction Velocity]
type = VelSet
trigger1 = AILevel && AnimElemTime(6) >= 0
x = IfElse(Command = "holdfwd", 6, IfElse(Command = "holdback", -6, Vel X))
[State 1301, Direction Velocity]
type = VelSet
trigger1 = AILevel && AnimElemTime(6) >= 0
x = 6

[State 1301, HitDef] 
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 9
attr = A, SA
damage = ceil(ifElse(fvar(11) * 91 < 7, 7, fvar(11) * 91)), 7
priority = 4, hit
animtype = Hard
getpower = 70 * !var(20), 30 * !var(20)
givepower = 35, 35
guardflag = HA
hitflag = MAF
hitsound = S2,2
guardsound = S3,0
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = 10 + 0 * (var(35) := 100), var(36) := -40
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.slidetime = 18
ground.hittime  = 18
guard.hittime = 18
ground.velocity = -3.3, 6
air.velocity = -3.3, 6
guard.velocity = -8
airguard.velocity = -6.67,-1
airguard.ctrlTime = 16
ground.cornerPush.velOff = 0
guard.cornerPush.velOff = 0
air.cornerPush.velOff = 0
yaccel = .58
fall = 1
fall.recover = 1
forcestand = 1
palFX.time = 35
Palfx.add       = 40,-70,-200                             
Palfx.sinadd   = 40,30,0,10                               
Palfx.color     = 0                                             
Palfx.invertall = 1   
envshake.time = 14
envshake.ampl = 4
envShake.freq = 120

[State 1301, ChangeState]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= -Ceil(Vel Y)
value = 1101

;that Bison diver
[Statedef 1332]
type = A
movetype = A
physics = N
anim = 1323
ctrl = 0
velset = 0,0
sprpriority = 2
facep2 = 1

[State 1210, Acceleration]
type = VelAdd
trigger1 = 1
y = 0.7

[State 1210, Direction Velocity]
type = VelSet
trigger1 = Command != "holddown" || AIlevel
x = IfElse(command = "holdfwd", 4.5, IfElse(Command = "holdback", -6, Vel X))

[State 1210, Direction Velocity]
type = VelMul
trigger1 = Command != "holdfwd" && Command != "holdback"
x = 0.95

[State 1210, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3000, 3
channel = 0

[State 1210, Snd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 2
channel = 1

[State 1210, Hit]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 3
attr = A, SA
damage = ceil(ifElse(fvar(11) * 95 < 7, 7, fvar(11) * 95)), 7
priority = 4, hit
animtype = Hard
getpower = 70 * !var(20), 30 * !var(20)
givepower = 35, 35
guardflag = HA
hitflag = MAF
hitsound = S2,2
guardsound = s3,0
pausetime = 12,12
guard.pausetime = 12,12
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 100), var(36) := -10
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.slidetime = 20
ground.hittime  = 20
guard.hittime = 18
ground.velocity = -10, 0
air.velocity = -5.25,-3.5
guard.velocity = -11
airguard.velocity = -5.25, -3.5
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
envshake.time = 16
envshake.ampl = 6
envShake.freq = 150

[State 1210, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
movetype = I

[State 1210, End]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 52









;PUNCH ZERO COUNTER
[STATEDEF 2900]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = 0
faceP2 = 1

[STATE 2900,POSSET]
type=posset
trigger1=!time
y=0

[STATE 2900,ANIM]
type=changeanim
trigger1=!time
value=2900

[STATE 2900,DUST]
type = helper
trigger1 = Animelem=3
stateno = 8100
ID = 8100
name = "Jump Dust"
postype = p1
ownpal = 1

[STATE 2900,WIDTH]
type = Width
trigger1 = 1
edge = 30,0

[STATE 2900,NOT HIT BY]
type = NotHitBy
trigger1 = Anim = 2900
trigger1 = AnimElemNo(0) = [1,5]
value = SCA
time = 1

[STATE 2900,HIT]
type=hitdef
trigger1= !var(16) && (var(15)<15 || var(20))
trigger1= !Time
ID = 2900
attr = S,SA
hitflag = MAF
guardflag = M
damage = ceil(ifelse(fvar(11) * 100 < 7, 7, fvar(11) * 100)), 7
getpower = 0
givepower = 0, 0
pausetime = ceil(13*(2-(var(20)>0))/2),ceil(13*(2-(var(20)>0))/2)
guard.pausetime = ceil(10*(2-(var(20)>0))/2),ceil(10*(2-(var(20)>0))/2)
animtype = Heavy
air.animtype = Heavy
fall.animtype = Diagup
ground.type = hIGH
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 9 - var(10)
air.hittime = 120
ground.velocity = -3,-7.5
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2,-7
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 1
fall.recoverTime = 120
forcestand = 1
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = S-1 + 0*(var(33):=8013)
guard.sparkno = S-1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=92), var(36):=-77
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48
envshake.time = 14
envshake.ampl = 4
envshake.freq = 120

[STATE 2900,IDLE]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[STATE 2900,CHANGE STATE]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1
 
;KICK ZERO COUNTER
[STATEDEF 2910]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = 0

[STATE 2910,POSSET]
type=posset
trigger1=!time
y=0

[STATE 2910,ANIM]
type=changeanim
trigger1=!time
value=2910

[STATE 2910,NOT HIT BY]
type = nothitby
trigger1 = animelemtime(6) < 0
value = SCA
time = 1
ignorehitpause = 1

[STATE 2910,WIDTH]
type = Width
trigger1 = 1
edge = 40,0

[STATE 2910,HIT]
type = hitdef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = !Time
ID = 2910
attr = S, SA
hitFlag = MAF
guardFlag = M
damage =ceil(ifelse(fvar(11) * 100 < 7, 7, fvar(11) * 100)), 7
getPower = 0, 0
givePower = 0, 0
pausetime = ceil(13*(2-(var(20)>0))/2),ceil(13*(2-(var(20)>0))/2)
guard.pausetime = ceil(10*(2-(var(20)>0))/2),ceil(10*(2-(var(20)>0))/2)
animType = Back
air.animType = Back
fall.animType = Diagup
ground.type = High
air.type = Low
ground.hitTime = 18 + 4 * var(9)
ground.slideTime = 18 + 4 * var(9)
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -6,-5.5
ground.cornerPush.velOff = 0
guard.velocity = -6
guard.cornerPush.velOff = 0
air.velocity = -6.46, -4.25
air.cornerPush.velOff = 0
yaccel = 0.58
fall = 1
fall.recover = 1
fall.recoverTime = 120
hitsound = -1 + 0*(var(31):=5)
guardsound = -1 + 0*(var(32):=0)
sparkno = S-1 + 0*(var(33):=8013)
guard.sparkno = S-1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=76), var(36):=-83
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[STATE 2910,IDLE]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
movetype = I

[STATE 2910,CHANGE STATE]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1
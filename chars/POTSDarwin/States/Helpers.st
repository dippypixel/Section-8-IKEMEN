; _________________________________________
;| Character by JStudios2k, Edited from Cattigan619 and Elmofan17                |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;=======================================< HELPER STATES >========================================
;==============================================================================================

;========================<PROJECTILES>=============================
;Dollar store psycho blast
[Statedef 1005]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 4

[State 1005, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 1006
ignorehitpause = 1
[State 1005, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 1005, Strength]
type = varset
trigger1 = !time
var(10) = root, var(10)
[State 1005, movehitvar]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = 1005
elem = 1+var(10)

[State 1005, Vel]
type = velset
trigger1 = 1
x = ifelse(var(10) = 2, 1, ifelse(var(10) = 1, 0.5, 0))

[State 1005, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 1005, HitSound]
type = playsnd
trigger1 = movehit && numtarget
trigger1 = target, time = 0 && target, movetype = H
value = 2, 10
persistent = 0
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 1006
ID = 1006
pos = 62,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
scale = 0.5,0.5
vel =  ifelse(var(10) = 2, 1, ifelse(var(10) = 1, 0.5, 0)),0
ontop = 1

[State 1005, Hit]
type = hitdef
trigger1 = time = [0,10]
triggerall = !numtarget(1000)
ID = 1000
priority = 4, Hit
attr = S, SP
damage = 60+(var(10)*15), 8
animtype = Diagup
hitflag = MAF
guardflag = MA
pausetime = 0, 12 / ((root, var(20) > 0) + 1)
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkxy = -10, 0
guardsound = s3, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
guard.hittime = 16 - var(10)
ground.velocity = -4.52, -4
guard.cornerPush.velOff = -11
air.velocity = -4, -4
air.fall = 1
fall = 1
fall.recover = 1
fall.recovertime = 100
getpower = ifelse(p2movetype = H, 72, 144) * !(root, var(20)), 36 * !(root, var(20))
givepower = 36, 36
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
sprpriority = 4
yaccel = 0.3999
airguard.ctrltime = 16
airguard.velocity = ifelse((root, var(20)), -4, -8), -1.5
forcestand = 1
Palfx.time      = 25
Palfx.add       = 40,-70,-200                             
Palfx.sinadd   = 40,30,0,10                               
Palfx.color     = 0                                             
Palfx.invertall = 1    

[State 1005, Miss]
type = hitdef
trigger1 = numenemy
trigger1 = (enemynear, stateno = [5070, 5071])
attr = S, SP
hitflag = 

[State 1005, hitspark]
type = helper
trigger1 = moveContact = 1 && numtarget
trigger1 = (target, movetype = H) && !(target, time)
helperType = Normal
stateNo = ifElse(moveguarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = (target, pos x*facing - (pos x)*facing), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 1
ignoreHitPause = 1

[State 1006, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && (root, var(9))
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 200, Type]
type=statetypeset
trigger1= time>10
movetype=I

[State 1005, End]
type = changestate
trigger1 = movecontact
trigger2 = time>30
value = 1006
ignorehitpause = 1
[State 1005, End]
type = destroyself
trigger1 = pos x != [ -200, 200]

;TIMEOUT
[Statedef 1006]
type = A
physics = N
movetype = I
velset = 0, 0
ctrl = 0
sprpriority = 4
[State 1006, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1
[State 1006, Snd]
type = playsnd
trigger1 = !time
value = 1, 11
ignorehitpause = 1
persistent = 0
[State 1006, End]
type = destroyself
trigger1 = time > 30

;BIG OVERHEAD
[Statedef 1007]
type    = S
movetype= A
physics = N
juggle  = 0 ; 0
velset = 0,0
ctrl = 0
anim = 1051
poweradd = 0
sprpriority = 3

[State 1110, Ex AfterImage]
type = AfterImage
trigger1 = !Time
time = 3
timegap = 1
framegap = 1
length = 8
palcontrast = 112, 112, 112
palmul = 0.65, 0.65, 0.65
trans = add

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 1005, HitOverride]
type = hitoverride
trigger1 = 1
attr = SCA, AA, AP, AT
time = -1
stateno = 1011

[State 1005, HB]
type = hitby
trigger1 = 1
value = SCA, NP, SP, HP
time = -1
ignorehitpause = 1

[State 1005, movehitvar]
type=varset
trigger1=movecontact && numtarget
trigger1=!(target, ishelper)
var(3)=1
ignorehitpause=1

[State 0, VarSet]
type = VarSet
trigger1 = !time
var(10) = root,var(10)
;persistent =

[State 0, VarSet]
type = VarSet
trigger1 = !time
var(1) = root,var(1)
;persistent =

[State 0, VelSet]
type = VelSet
trigger1 = 1
x = 2+(var(10)*3)
y = 3

[State 0, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,HP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA
sparkno = -1 + 0 * (var(33) := 0)
guard.sparkno = -1 + 0 * (var(34) := 0)
numhits = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = Pos Y > -Vel Y
trigger2 = movecontact
value = 1012
ctrl = 0
;anim =
;ignorehitpause =
;persistent =

;Explod (literally)
[Statedef 1012]
type    = S
movetype= A
physics = N
juggle  = 0 ; 0
velset = 0,0
ctrl = 0
anim = 1052
poweradd = 0
sprpriority = 3

[State 0, PlaySnd]
type = PlaySND
trigger1 = !time
value = S1,10

[State 1005, Dampener]
type = varset
trigger1 = 1
fvar(11) = (root, fvar(10)) * ifelse(var(9), 1.2, 1)

[State 1015, hitvar]
type = varadd
trigger1 = !time
var(2) = 1
[State 1005, movehitvar]
type=varset
trigger1=movecontact && numtarget
trigger1=!(target, ishelper)
var(3)=1
ignorehitpause=1
[State 1005, Counter Flag]
type = varset
trigger1 = numenemy
trigger1 = movecontact != 1
var(9) = (enemynear, movetype = A)

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 1000, The Hit]
type = Hitdef
trigger1 = time<=13
attr = S, SP
damage= floor(50*root,fvar(11)), 7
getpower = 0,0
givepower = 36, 36
animtype = Heavy
hitflag = MAFP
guardflag = MA
pausetime = 0, 12
guard.pausetime = 0, 12
sparkno = 8001
guard.sparkno = 8010
sparkxy = 0, 0
hitsound = S2,10
guardsound = S3,0
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
air.hittime = 18
guard.ctrltime = 18
ground.velocity = -5,-8.37109375+(root,var(13))
guard.velocity = -5
air.velocity = -5,-8.37109375+(root,var(13))
airguard.velocity = -5.33,-1
fall = 1
fall.recover = 0
air.fall = 1
envshake.time = 18
envshake.ampl = 6
envshake.freq = 120
Palfx.time      = 25
Palfx.add       = 40,-70,-200                             
Palfx.sinadd   = 40,30,0,10                               
Palfx.color     = 0                                             
Palfx.invertall = 1    
forcestand = 1
yaccel = .5-(var(1)*0.05)
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0

[State 1006, HitCount]
type = parentvaradd
trigger1 = movecontact && numtarget
var(13) = 1
persistent = 0
[State 1006, Juggle]
type = parentvaradd
trigger1 = movecontact && numtarget
var(15) = 1
persistent = 0

[State 1006, ProjContact]
type = varset
trigger1 = movecontact && numtarget
var(18) = 1
[State 1006, ProjContact]
type = parentvarset
trigger1 = movecontact && numtarget
var(3) = 1

[State 1006, HitSound]
type = playsnd
trigger1 = movecontact = 1 && numtarget
trigger1 = !(target, hitshakeover)
value = ifelse(moveguarded, 3, 2), ifelse(moveguarded, 0, 6)
channel = 2
ignorehitpause = 1

[State 200, Type]
type=statetypeset
trigger1= time>22
movetype=I

[State 1015, End]
type = changestate
trigger1 = movecontact
value =  1006
[State 1015, End]
type = destroyself
trigger1 = !animtime

;BIG HEAD
[Statedef 1010]
type    = S
movetype= A
physics = N
juggle  = 0 ; 0
velset = 0,0
ctrl = 0
anim = 1051
poweradd = 0
sprpriority = 3

[State 1110, Ex AfterImage]
type = AfterImage
trigger1 = !Time
time = 3
timegap = 1
framegap = 1
length = 8
palcontrast = 112, 112, 112
palmul = 0.65, 0.65, 0.65
trans = add

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 1005, HitOverride]
type = hitoverride
trigger1 = 1
attr = SCA, AA, AP, AT
time = -1
stateno = 1011

[State 1005, HB]
type = hitby
trigger1 = 1
value = SCA, NP, SP, HP
time = -1
ignorehitpause = 1

[State 1005, movehitvar]
type=varset
trigger1=movecontact && numtarget
trigger1=!(target, ishelper)
var(3)=1
ignorehitpause=1

[State 0, VarSet]
type = VarSet
trigger1 = !time
var(10) = root,var(10)
;persistent =

[State 0, VarSet]
type = VarSet
trigger1 = !time
var(1) = root,var(1)
;persistent =

[State 0, VelSet]
type = VelSet
trigger1 = 1
x = 5+(var(1)*2.3)

[State 0, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,HP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA
sparkno = -1 + 0 * (var(33) := 0)
guard.sparkno = -1 + 0 * (var(34) := 0)
numhits = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 10+(var(1)*11)
trigger2 = movecontact
value = 1011
ctrl = 0
;anim =
;ignorehitpause =
;persistent =

;Explod (literally)
[Statedef 1011]
type    = S
movetype= A
physics = N
juggle  = 0 ; 0
velset = 0,0
ctrl = 0
anim = 1052
poweradd = 0
sprpriority = 3

[State 0, PlaySnd]
type = PlaySND
trigger1 = !time
value = S1,10

[State 1005, Dampener]
type = varset
trigger1 = 1
fvar(11) = (root, fvar(10)) * ifelse(var(9), 1.2, 1)

[State 1015, hitvar]
type = varadd
trigger1 = !time
var(2) = 1
[State 1005, movehitvar]
type=varset
trigger1=movecontact && numtarget
trigger1=!(target, ishelper)
var(3)=1
ignorehitpause=1
[State 1005, Counter Flag]
type = varset
trigger1 = numenemy
trigger1 = movecontact != 1
var(9) = (enemynear, movetype = A)

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 1000, The Hit]
type = Hitdef
trigger1 = var(1)!=3
attr = S, SP
damage= floor((50-var(1)*5)*root,fvar(11)), 7
getpower = 0,0
givepower = 36, 36
animtype = Heavy
hitflag = MAFP
guardflag = MA
pausetime = 0, 12
guard.pausetime = 0, 12
sparkno = 8001
guard.sparkno = 8010
sparkxy = 0, 0
hitsound = S2,10
guardsound = S3,0
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
air.hittime = 18
guard.ctrltime = 18
ground.velocity = -5,-8.37109375+(root,var(13))
guard.velocity = -5
air.velocity = -5,-8.37109375+(root,var(13))
airguard.velocity = -5.33,-1
fall = 1
fall.recover = 0
air.fall = 1
envshake.time = 18
envshake.ampl = 6
envshake.freq = 120
Palfx.time      = 25
Palfx.add       = 40,-70,-200                             
Palfx.sinadd   = 40,30,0,10                               
Palfx.color     = 0                                             
Palfx.invertall = 1    
forcestand = 1
yaccel = .5-(var(1)*0.05)
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0

[State 1000, The Hit]
type = Hitdef
trigger1 = var(1)=3 && !(root,stateno=1095)
attr = S, SP
damage= floor((50-var(1)*6)*root,fvar(11)), 7
getpower = 0,0
givepower = 36, 36
animtype = Diagup
hitflag = MAFP
guardflag = 
pausetime = 0, 12
guard.pausetime = 0, 12
sparkno = 8001
guard.sparkno = 8010
sparkxy = 0, 0
hitsound = S2,10
guardsound = S3,0
ground.type = High
ground.slidetime = 18
ground.hittime = 18
air.hittime = 18
guard.ctrltime = 18
ground.velocity = -5,-8.37109375
guard.velocity = -5
air.velocity = -5,-8.37109375
airguard.velocity = -5.33,-1
fall = 1
fall.recover = 0
air.fall = 1
envshake.time = 18
envshake.ampl = 6
envshake.freq = 120
Palfx.time      = 25
Palfx.add       = 40,-70,-200                             
Palfx.sinadd   = 40,30,0,10                               
Palfx.color     = 0                                             
Palfx.invertall = 1    
forcestand = 1
yaccel = .5-(var(1)*0.05)
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0

[State 1000, The Hit]
type = Hitdef
trigger1 = var(1)=3 && (root,stateno=1095)
attr = S, SP
damage= floor((18*root,fvar(11))), 7
getpower = 0,0
givepower = 36, 36
animtype = Diagup
hitflag = MAFP
guardflag = MA
pausetime = 0, 12
guard.pausetime = 0, 12
sparkno = 8001
guard.sparkno = 8010
sparkxy = 0, 0
hitsound = S2,10
guardsound = S3,0
ground.type = High
ground.slidetime = 18
ground.hittime = 18
air.hittime = 18
guard.ctrltime = 18
ground.velocity = -5,-8.37109375
guard.velocity = -5
air.velocity = -5,-8.37109375
airguard.velocity = -5.33,-1
fall = 1
fall.recover = 0
air.fall = 1
envshake.time = 18
envshake.ampl = 6
envshake.freq = 120
Palfx.time      = 25
Palfx.add       = 40,-70,-200                             
Palfx.sinadd   = 40,30,0,10                               
Palfx.color     = 0                                             
Palfx.invertall = 1    
forcestand = 1
yaccel = .5-(var(1)*0.05)
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0

[State 1006, HitCount]
type = parentvaradd
trigger1 = movecontact && numtarget
var(13) = 1
persistent = 0
[State 1006, Juggle]
type = parentvaradd
trigger1 = movecontact && numtarget
var(15) = 1
persistent = 0

[State 1006, ProjContact]
type = varset
trigger1 = movecontact && numtarget
var(18) = 1
[State 1006, ProjContact]
type = parentvarset
trigger1 = movecontact && numtarget
var(3) = 1

[State 1006, HitSound]
type = playsnd
trigger1 = movecontact = 1 && numtarget
trigger1 = !(target, hitshakeover)
value = ifelse(moveguarded, 3, 2), ifelse(moveguarded, 0, 6)
channel = 2
ignorehitpause = 1

[State 200, Type]
type=statetypeset
trigger1= time>22
movetype=I

[State 1015, End]
type = changestate
trigger1 = movecontact
value =  ifelse(var(2) < ifelse(!var(1),1,var(1)+1), 1011, 1006)
[State 1015, End]
type = destroyself
trigger1 = !animtime

;Portal bolt
[Statedef 1305]
type = S
physics = N
movetype = I
ctrl = 0
velset = 0, 0
sprpriority = 1

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = 0
scale = 2,2
ignorehitpause = 1
;persistent = 

[State 1005, Strength]
type = varset
trigger1 = !time
var(10) = root, var(10)

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = 1302
elem = 1+var(10)

[State 1005, Vel]
type = velset
trigger1 = 1
x = ifelse(var(10) = 2, 5.5, ifelse(var(10) = 1, 9, 9))
y = ifelse(var(10) = 2, -5.5, ifelse(var(10) = 1, 0, 0))

[State 1005, End]
type = changestate
trigger1 = time >= 20
trigger2 = frontedgedist <= 10
value = 1306
ignorehitpause = 1

;Portal set
[Statedef 1306]
type = S
physics = N
movetype = I
ctrl = 0
velset = 0, 0
sprpriority = 1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = !time
value = 1303

[state 1000,Posset]
type=posset
trigger1=!time && ishelper(1302) && (pos y > -150)
y=-150

[State 1005, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State portalsnd]
type = PlaySnd
trigger1 = !time
value = 1,18

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = ifelse(var(10) = 2, 180, ifelse(var(10) = 1, 90, 0))
;scale = 
ignorehitpause = 1
;persistent = 

[State 0, Turn]
type = Turn
trigger1 = var(10)=1
trigger1 = !time

[State Open]
type = ChangeState
trigger1 = root,stateno=1301
value = 1307

[State 8600, End]
type = destroyself
trigger1 = roundstate > 2
trigger2 = !(root,alive)
trigger3 = pos x != [ -200, 200]


;Portal timeout
[Statedef 1307]
type = A
physics = N
movetype = I
velset = 0, 0
ctrl = 0
anim = 1304
sprpriority = 4
[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = ifelse(var(10) = 2, 180, ifelse(var(10) = 1, 90, 0))
;scale = 
ignorehitpause = 1
;persistent = 
[State 1006, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1
[State 1006, Snd]
type = playsnd
trigger1 = !time
value = 1, 11
ignorehitpause = 1
persistent = 0
[State 1006, End]
type = destroyself
trigger1 = !animtime


;DODGEBALL
[Statedef 3005]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 4

[State 1005, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 3006
ignorehitpause = 1
[State 1005, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 1005, movehitvar]
type = varset
trigger1 = movehit && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = 3005

[State 1005, Vel]
type = velset
trigger1 = !time
x = 11

[State 1005, HitSound]
type = playsnd
trigger1 = movehit && numtarget
trigger1 = target, time = 0 && target, movetype = H
value = 2, 2
persistent = 0
ignorehitpause = 1

[State 1005, Hit]
type = hitdef
trigger1 = !time
priority = 4, Hit
attr = S, HP
damage = 20, 4
animtype = Diagup
hitflag = MAF
guardflag = MA
pausetime = 0, 12 / ((root, var(20) > 0) + 1)
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkxy = -10, 0
guardsound = s3, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
guard.hittime = 16 - var(10)
ground.velocity = -4.52, -4
guard.cornerPush.velOff = -11
air.velocity = -4, -4
air.fall = 1
fall = 1
fall.recover = 1
fall.recovertime = 100
getpower = 0,0
givepower = 36, 36
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
sprpriority = 4
yaccel = 0.3999
airguard.ctrltime = 16
airguard.velocity = ifelse((root, var(20)), -4, -8), -1.5
forcestand = 1
p2stateno = ifelse(random<500,3020,3021)

[State 1005, Miss]
type = hitdef
trigger1 = numenemy
trigger1 = (enemynear, stateno = [5070, 5071])
attr = S, SP
hitflag = 

[State 1005, hitspark]
type = helper
trigger1 = moveContact = 1 && numtarget
trigger1 = (target, movetype = H) && !(target, time)
helperType = Normal
stateNo = ifElse(moveguarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = (target, pos x*facing - (pos x)*facing), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 1
ignoreHitPause = 1

[State 1006, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && (root, var(9))
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1005, End]
type = changestate
trigger1 = rootdist x >= 21
value = 3006
ignorehitpause = 1
[State 1005, End]
type = destroyself
trigger1 = pos x != [ -200, 200]

[State 1003, VelSet]
type = VelSet
trigger1 = movehit=1
x = -11

;Last DODGEBALL
[Statedef 3007]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 4

[State 1005, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 3006
ignorehitpause = 1
[State 1005, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 1005, movehitvar]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = 3005

[State 1005, Vel]
type = velset
trigger1 = !time
x = 11

[State 1005, HitSound]
type = playsnd
trigger1 = movehit && numtarget
trigger1 = target, time = 0 && target, movetype = H
value = 2, 3200
persistent = 0
ignorehitpause = 1

[State 1005, Hit]
type = hitdef
trigger1 = !time
ID = 1000
priority = 4, Hit
attr = S, HP
damage = 40, 4
animtype = Diagup
hitflag = MAF
guardflag = MA
pausetime = 0, 12 / ((root, var(20) > 0) + 1)
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkxy = -10, 0
guardsound = s3, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
guard.hittime = 16 - var(10)
ground.velocity = -4.52, -4
guard.cornerPush.velOff = -11
air.velocity = -4, -4
air.fall = 1
fall = 1
fall.recover = 1
fall.recovertime = 100
getpower = 0,0
givepower = 36, 36
envshake.time = 14
envshake.freq = 225
envshake.ampl = 8
sprpriority = 4
yaccel = 0.3999
airguard.ctrltime = 16
airguard.velocity = ifelse((root, var(20)), -4, -8), -1.5
forcestand = 1
p2stateno = 3022

[State 1005, Miss]
type = hitdef
trigger1 = numenemy
trigger1 = (enemynear, stateno = [5070, 5071])
attr = S, SP
hitflag = 

[State 1005, hitspark]
type = helper
trigger1 = moveContact = 1 && numtarget
trigger1 = (target, movetype = H) && !(target, time)
helperType = Normal
stateNo = ifElse(moveguarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = (target, pos x*facing - (pos x)*facing), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 1
ignoreHitPause = 1

[State 1006, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && (root, var(9))
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1005, End]
type = changestate
trigger1 = rootdist x >= 21
value = 3006
ignorehitpause = 1
[State 1005, End]
type = destroyself
trigger1 = pos x != [ -200, 200]

[State 1003, VelSet]
type = VelSet
trigger1 = movehit=1
x = -11

;end
[Statedef 3006]
type = A
physics = N
movetype = I
velset = 0, 0
ctrl = 0
sprpriority = 4
[State 1006, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1
[State 1006, End]
type = destroyself
trigger1 = time > 1

; TARGET ACQUIRED
[Statedef 3051]
type    = A
movetype= I
physics = N
velset = 0,0
anim = 3051+0*floor(fvar(0):=1.0)
sprpriority = 5

[State 3360, Varadd]
type = varadd
trigger1 = time
trigger1 = fvar(0)>0.6
fvar(0)= -0.04

[State 3360, spen]
type = angleadd
trigger1 = time
value = 7

[State 3360, LOCC ON]
type = playsnd
trigger1 = time=0
value = s3050,2
volumescale = 150

[State 3360, Posset]
type = posset
trigger1 = numenemy
x = enemynear,pos x
y = enemynear,pos y+(enemynear,const(size.mid.pos.y))

[State 3360, NHB]
type = nothitby
trigger1 = 1
value = SCA
ignorehitpause = 1

[State 3360, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 3360, Destroyself]
type = destroyself
trigger1 = root,prevstateno = 3050
trigger2 = root,movetype = H
trigger3 = time >= 180

[State 3360, speen]
type = angledraw
trigger1 = 1
scale = fvar(0),fvar(0)
ignorehitpause = 1

; HERE'S THE BIG ONE
[Statedef 3055]
type    = A
movetype= A
physics = N
anim = 3055
sprpriority = 5
velset = (random %-91-40)*0.09,(random %91-40)*0.09

[State 3350, Varset]
Type = VarSet
Trigger1 = Time = 0
fvar(0) = ((Random %36)+(pos Y/4))

[State 3350, Invuln]
type = nothitby
trigger1 = 1
value = ,AA,AT
ignorehitpause = 1

[State 3350, HitOverride]
Type = HitOverride
Trigger1 = 1
Attr = SCA,AA,AP,AT
slot = 0
time = -1
Stateno = 3051
IgnoreHitPause = 1

[State 3350, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 3350, Veladd]
Type = VelAdd
Trigger1 = time=[1,12]
X = P2Dist X*0.004
Y = (-70 + p2Dist Y)*0.004

[State 3350, Veladd]
Type = VelAdd
Trigger1 = time=[13,30]
X = P2Dist X*0.0016
Y = (-85 + p2Dist Y)*0.016

[State 1751, 2]
type = veladd
trigger1 = P2Dist X < 0
trigger1 = vel X >= -8
x = -2

[State 1751, 4]
type = veladd
trigger1 = P2Dist X > 0
trigger1 = vel X <= 8
x = 2

[State 1751, 5]
type = veladd
trigger1 = P2Dist Y-35 < 0
trigger1 = vel Y >= -8
y = -1

[State 1751, 7]
type = veladd
trigger1 = P2Dist Y-35 > 0
trigger1 = vel Y <= 8
y = 1

[State 3350, FX]
type = Explod
trigger1 = time > 10
anim = 3057
pos = -5,0
postype = p1
facing = 1
bindtime = 1
ownpal = 1
pausemovetime = 0
scale = 0.2,0.2
sprpriority = -1
ignorehitpause = 1
persistent = 4

[State 1005, movehitvar]
type=varset
trigger1=movecontact && numtarget
trigger1=!(target, ishelper)
var(3)=1
ignorehitpause=1

[State 3350, HitDef]
type = HitDef
trigger1 = time = 1
attr = S,HP
hitflag = MAFD
guardflag = MA
animtype = Hard
air.animtype = Back
priority = 7,Hit
damage = ceil(25*root,fvar(11)),ceil(6*root,fvar(11))
pausetime = 1,15
guard.pausetime = 1,5
getpower = 0,0
givepower = 10,10
sparkno = s6020
guard.sparkno = s6050
sparkxy = -10,0
hitsound = S2,6
guardsound = S3,0
ground.type = High
ground.velocity = -4.0,-5
air.velocity = -2.0,-5.0
ground.slidetime = 22
ground.hittime  = 60
guard.slidetime = 18
guard.hittime = 12
air.hittime = 45
fall = 1
fall.recovertime = 45
ground.cornerpush.veloff = 0
envshake.time = 8
envshake.ampl = cond(random<=500,-2,2)
fall.envshake.time = 8
numhits = 1
ground.cornerpush.veloff = 0

[State 3350, TargetState]
type = TargetState
triggerall = NumTarget
trigger1 = movehit = 1 && target,hitfall
value = 5570
ignorehitpause = 1

[State 3350, Changestate]
type = changestate
trigger1 = frontedgedist <= -100
trigger2 = movecontact||movereversed
trigger3 = pos x != [ -200, 200]
trigger3 = pos y >= -(vel y)
trigger4 = Pos Y <= (Pos Y - ScreenPos Y - 100)
trigger5 = time >= 300
value = 3056

[State 3350, Custom Timer]
type = varadd
trigger1 = 1
fvar(0) = 1

[State 1005, hitspark]
type = helper
trigger1 = moveContact = 1 && numtarget
trigger1 = (target, movetype = H) && !(target, time)
helperType = Normal
stateNo = ifElse(moveguarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = (target, pos x*facing - (pos x)*facing), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 1
ignoreHitPause = 1

[State 1006, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && (root, var(9))
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3350, Angledraw]
type = angledraw
trigger1 = vel y != 0
value = floor(atan(vel X/vel Y)*180/pi-90)
ignorehitpause = 1

[State 3350, speen]
Type = Angleadd
Trigger1 = vel Y<0
value = 180
ignorehitpause=1

[State 3350, draw]
Type = Angledraw
Trigger1 = vel Y = 0
value = 0
ignorehitpause=1

; Timeout for the aimbots
[Statedef 3056]
type    = A
movetype= I
physics = N
sprpriority = 5
ctrl = 0
anim = 1
velset = 0,0

[State 3351, End]
type = Destroyself
trigger1 = !time

;LET IT GO
[Statedef 3505]
type = S
movetype = A
anim = 3501
ctrl = 0
sprpriority=1

[State 3008, NOPE]
type = ReversalDef
trigger1 = 1
reversal.attr = SCA,NA,SA,HA,NP,SP,HP
hitsound = 1,22
sparkno = -1
p2stateno = 3520
p1stateno = 3507
numhits = 0

[State Backfire]
type = Changestate
trigger1=time=120
trigger2=root,stateno!=3500
trigger3=root,movetype=H
value = 3506

;COUNTER TIMEOUT (fail)
[Statedef 3506]
type    = S
movetype= I
physics = N
anim = 1
velset = 0,0
ctrl = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S1,17

[State 0, VarAdd]
type = VarSet
trigger1 = time = 0
var(0) = -36
[State 0, VarAdd]
type = VarAdd
trigger1 = time
var(0) = 9

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 3502
ID = 3502
pos = 145,80
postype = left
bindtime = -1
removetime = -2
supermovetime = 65535
pausemovetime = 65535
scale = 1.2,1.2
sprpriority = -9998
ontop = 1
removeongethit = 0

[State 0, OH]
type = EnvShake
trigger1 = !time
time = 10
freq = 225
ampl = -48

[State 0, EnvColor]
type = EnvColor
trigger1 = time = 0
value = 255,255,255
time = 10
[State 0, PalFX]
type = AllPalFX
trigger1 = 1
time = 1
mul = 320-floor(var(0)/4),320-floor(var(0)/4),320-floor(var(0)/4)
[State 0, PalFX]
type = PalFX
trigger1 = 1
time = 1
add = 0-var(0),0-var(0),0-var(0)
mul = 512,512,512

[State 0, DestroySelf]
type = DestroySelf
trigger1 = var(0) >= 250

;COUNTER TIMEOUT (success)
[Statedef 3507]
type = A
physics = N
movetype = I
velset = 0, 0
ctrl = 0
anim = 1
sprpriority = 4
[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S1,17

[State 0, ChangeState]
type = ChangeState
trigger1 = time=0
trigger1 = (target,ishelper)
value = 3508

[State 0, TargetState]
type = TargetState 
trigger1 = root,stateno=3511
trigger1 = !(target,ishelper)
value = 3521

[State 0, VarAdd]
type = VarSet
trigger1 = time = 0
var(0) = -36
[State 0, VarAdd]
type = VarAdd
trigger1 = time
var(0) = 9

[State 0, Explod]
type = Explod
trigger1 = time = 0
trigger1 = root,stateno!=3511
anim = 3502
ID = 3502
pos = 145,80
postype = left
bindtime = -1
removetime = -2
supermovetime = 65535
pausemovetime = 65535
scale = 1.2,1.2
sprpriority = -9998
ontop = 1
removeongethit = 0

[State 0, OH]
type = EnvShake
trigger1 = !time
time = 10
freq = 225
ampl = -48

[State 0, EnvColor]
type = EnvColor
trigger1 = time = 0
trigger1 = root,stateno!=3511
value = 255,255,255
time = 10
[State 0, PalFX]
type = AllPalFX
trigger1 = root,stateno!=3511
time = 1
mul = 320-floor(var(0)/4),320-floor(var(0)/4),320-floor(var(0)/4)
[State 0, PalFX]
type = PalFX
trigger1 = root,stateno!=3511
time = 1
add = 0-var(0),0-var(0),0-var(0)
mul = 512,512,512

[State 0, DestroySelf]
type = DestroySelf
trigger1 = root,stateno!=[3500,3511]

;COUNTER TIMEOUT (but it's a helper)
[Statedef 3508]
type = A
physics = N
movetype = A
velset = 0, 0
ctrl = 0
anim = 3508
sprpriority = 4

[State 0, OH]
type = EnvShake
trigger1 = !time
time = 10
freq = 225
ampl = -48

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 3502
ID = 3502
pos = 145,80
postype = left
bindtime = -1
removetime = -2
supermovetime = 65535
pausemovetime = 65535
scale = 1.2,1.2
sprpriority = -9998
ontop = 1
removeongethit = 0

[State 0, TargetState]
type = TargetState 
trigger1 = root,stateno=3511
trigger1 = time = 0
trigger1 = (target,ishelper)
value = 3522

[State 3000, 6]
type = HitDef
trigger1 = animelem = 1
attr = S, HA
animtype  = Hard
damage    = 399
priority  = 7, Hit
hitflag = MAF
guardflag =
pausetime = 0,0
sparkno = -1
sparkxy = -10,0
hitsound   = S2,3000
guardsound = S3,0
ground.type = Low
ground.slidetime = 30
ground.hittime  = 32
ground.velocity =0,0
guard.velocity = -12
air.velocity = -5,-4
airguard.velocity = -3,-3
fall.animtype = Hard
fall.recover = 0
kill = 1
envshake.time = 12
envshake.freq = 225
envshake.ampl = 14
p2stateno = 3161

[State 1005, Miss]
type = hitdef
trigger1 = numenemy
trigger1 = (enemynear, stateno = [5070, 5071])
attr = S, SP
hitflag = 

[State 1005, hitspark]
type = helper
trigger1 = moveContact = 1 && numtarget
trigger1 = (target, movetype = H) && !(target, time)
helperType = Normal
stateNo = ifElse(moveguarded, 8001, 8014)
ID = 8000
name = "Spark"
posType = P1
pos = (target, pos x*facing - (pos x)*facing), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 1
ignoreHitPause = 1

[State 1006, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && (root, var(9))
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time>30

;TIMEOUT (kill projectile)
[Statedef 3522]
type = A
physics = N
movetype = I
velset = 0, 0
ctrl = 0
sprpriority = 4
[State 1006, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1
[State 1006, End]
type = destroyself
trigger1 = !time

; Black Background
[Statedef 3530]
type    = S
movetype= I
physics = N
anim = 3530
VelSet = 0,0
sprpriority = -5

[State 809, PosAdd]
type = PosAdd
trigger1 = 1
x = 0 - (screenpos x)
y = 0 - (screenpos y)

[State 0, Explod]
type = Explod
trigger1 = time = 22
anim = 3531
ID = 30540
pos = -30,-15
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 99999
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = 0.3,0.4
sprpriority = 5
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 0, Helper]
type = Helper
trigger1 = time = 120
trigger1 = !numhelper(3053)
helpertype = normal ;player
name = "The Puppy.avi"
ID = 3053
stateno = 3531 
pos = 0,0
postype = left   ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = 0.5
size.yscale = 0.5

[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0

;The Puppy
[Statedef 3531]
type    = S
movetype= A
physics = N
anim = 3532
VelSet = 0,0
sprpriority = 9

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S3500,2

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = timerfreeze
flag2 = nomusic
ignorehitpause = 1

[State 0, Turn]
type = Turn
trigger1 = facing = -1

[State 820, Hit Spark]
type = Helper
trigger1 = animelem = 81
helperType = Normal
stateNo = 8014
ID = 8012
name = "Spark"
posType = p2
pos = 0,0
ownPal = 1
size.xscale = 3
size.yscale = 3
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3000, 6]
type = HitDef
trigger1 = animelem = 81
attr = S, HA
animtype  = Hard
damage    = 399
priority  = 7, Hit
hitflag = MAF
guardflag =
pausetime = 0,0
sparkno = -1
sparkxy = -10,0
hitsound   = S2,3000
guardsound = S3,0
ground.type = Low
ground.slidetime = 30
ground.hittime  = 32
ground.velocity =0,0
guard.velocity = -12
air.velocity = -5,-4
airguard.velocity = -3,-3
fall.animtype = Hard
fall.recover = 0
kill = 1
envshake.time = 12
envshake.freq = 225
envshake.ampl = 14
p2stateno = 3161

[State 0, AllPalFX]
type = AllPalFX
trigger1 = animelem = 81
time = 12
sinadd = random%256,random%256,random%256,10
;ignorehitpause = 
;persistent = 
add = random%256,random%256,random%256
mul = random%256,random%256,random%256
invertall = random%2
color = random%256

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = invisible
flag2 = noFG
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 3532
ID = 3053
pos = -30,-15
postype = left  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 99999
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = 0.3,0.4
sprpriority = -3
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 809, PosAdd]
type = PosAdd
trigger1 = 1
x = 0 - (screenpos x)
y = 0 - (screenpos y)

[State 0, Helper]
type = Helper
trigger1 = animelem = 81
helpertype = normal ;player
name = "Glass breaks"
ID = 3905
stateno = 3905 
pos = 0,0
postype = left   ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = 0.5
size.yscale = 0.5

[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0

;Screen breaks
[Statedef 3905]
type    = S
movetype= I
physics = S
anim = 1
velset = 0,0
poweradd = 0
ctrl = 0
sprpriority = -1

[State 3905, 1]
type = EnvColor
trigger1 = !time
value = 255,255,255
time = 2
under = 1
ignorehitpause = 1
persistent = 0

[State 3905, 2]
type = Explod
triggerall = !numexplod(8435)
trigger1 = time = 2
anim = 3533
ID = 8435
pos = 0,0
postype = left
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
scale = 1,1
under = 1
pausemovetime = -1
supermovetime = -1
sprpriority = 10
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 3905, 3]
type = PlaySnd
trigger1 = !time
value = S1,22
volume = 255

[State 3905, 4]
type = RemoveExplod
trigger1 = !time
id = 30540

[State 3905, 5]
type = RemoveExplod
trigger1 = !time
id = 8420

[State 3905, 6]
type = RemoveExplod
trigger1 = !time
id = 8425

[State 3905, 7]
type = RemoveExplod
trigger1 = !time
id = 8430

[State 3905, 8]
type = DestroySelf
trigger1 = time = 2


;========================<SPARKS>=============================
;------------------------------------------------------------------
;Charge FX
[Statedef 1049]
physics=N
anim=1049
velset=0,0
ctrl=0
sprpriority=3

[State 1015, Reset]
type=VarAdd
trigger1=!time
var(1)=0
ignorehitpause=1

[State 1015, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1015, Assert]
type=trans
trigger1=1
trans=addalpha
alpha=Ifelse(var(1)<1,0+8*time,256-16*var(1)), 256
ignorehitpause=1

[State 1015, BindToRoot]
type = BindToRoot
trigger1 = 1
pos = -35,-30
ignorehitpause = 1

[State 1015, End]
type=destroyself
trigger1=root,stateno!=1050 && root,stateno!=1090
trigger2=root,Movetype=H

;Fade Out
[Statedef 1505]
physics = N
anim = 1
sprpriority = IfElse((Parent, IsHelper), 0, -2)

[State 1505, NotHitBy]
type = NotHitBy
trigger1 = 1
time = -1
value = SCA

[State 1505, FX]
type = Helper
trigger1 = !(Parent, IsHelper)
helpertype = Normal
stateno = 1505
ID = 1505
name = "Warp FX"
postype = P1
ownpal = 1
persistent = 0

[State 1505, Anim Var]
type = Varset
trigger1 = !Time
var(50) = (Root, Anim)

[State 1505, Anim Var]
type = Varset
trigger1 = !Time
var(51) = (Root, AnimElemNo(0))

[State 1505, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = var(50)
elem = var(51)

[State 1505, PosVar]
type = VarAdd
trigger1 = var(52) < 60
var(52) = 6

[State 1505, Bind]
type = BindToRoot
trigger1 = 1
pos = IfElse((Parent, IsHelper), -var(52), var(52)), 0

[State 1505, FadeOut]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = Ceil(256 - 25 * Time), 25 * Time

[State 1505, End]
type = DestroySelf
trigger1 = Time >= 10 || Root, MoveType = H

;Fade In
[Statedef 1506]
physics = N
anim = 1
sprpriority = IfElse((Parent, IsHelper), 0, -2)

[State 1506, NotHitBy]
type = NotHitBy
trigger1 = 1
time = -1
value = SCA

[State 1506, FX]
type = Helper
trigger1 = !(Parent, IsHelper)
helpertype = Normal
stateno = 1506
ID = 1506
name = "Warp FX"
postype = P1
ownpal = 1
persistent = 0

[State 1506, Anim Var]
type = Varset
trigger1 = !Time
var(50) = (Root, Anim)

[State 1506, Anim Var]
type = Varset
trigger1 = !Time
var(51) = (Root, AnimElemNo(0))

[State 1506, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = var(50)
elem = var(51)

[State 1506, PosVar]
type = VarAdd
trigger1 = var(52) < 60
var(52) = 6

[State 1506, Bind]
type = BindToRoot
trigger1 = 1
pos = IfElse((Parent, IsHelper), -var(52), var(52)), 0

[State 1506, FadeOut]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = Ceil(256 - 25 * Time), 25 * Time

[State 1506, End]
type = DestroySelf
trigger1 = Time >= 10 || Root, MoveType = H

;Guard Spark (Normal)
[StateDef 8000]
type = A
physics = N
moveType = I
anim = 8000
velset = 0,0
sprPriority = 5

[State 8000, Assert: No Shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8000, Scale]
type = AngleDraw
trigger1 = 1
scale = 0.125 + (0.046875 * Time), 0.125 + (0.046875 * Time)
ignoreHitPause = 1

[State 8000, Transparency]
type = Trans
trigger1 = Time < 4
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 8000, Transparency]
type = Trans
trigger1 = Time >= 4
trans = AddAlpha
alpha = 256 - 64 * (Time - 4), 256
ignoreHitPause = 1

[State 8000, End]
type = DestroySelf
trigger1 = Time >= 8

;Guard Spark (Special)
[StateDef 8001]
type = A
physics = N
moveType = I
anim = 8001
velSet = 0,0
sprPriority = 5

[State 8001, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8001, Scale]
type = AngleDraw
trigger1 = 1
scale = 0.25 + (0.03125 * Time), 0.25 + (0.03125 * Time)
ignoreHitPause = 1

[State 8001, Transparency]
type = Trans
trigger1 = time < 4
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 8001, Transparency]
type = Trans
trigger1 = Time >= 4
trans = AddAlpha
alpha = 256 - 64 * (Time - 4), 256
ignoreHitPause = 1

[State 8001, End]
type = DestroySelf
trigger1 = Time >= 8


;Weak Hit Spark
[StateDef 8010]
type = A
physics = N
moveType = I
anim = 8010
velSet = 0,0
sprPriority = 5

[State 8010, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8010, AngleSet]
type = AngleSet
trigger1 = !Time
value = 30 * (Random % 12)

[State 8010, AngleAdd]
type = AngleAdd
trigger1 = 1
value = 30

[State 8010, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = 0.3 - (Time * 0.03), 0.3 - (Time * 0.03)
ignoreHitPause = 1

[State 8010, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignoreHitPause = 1

[State 8010, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8010, Center Explod]
type = Explod
trigger1 = !Time
anim = 8011
ID = 1
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8010, Scale Center Explod]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 0.15 + (0.009375 * Time), 0.15 + (0.009375 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time),256

[State 8010, Streaks Explod]
type = Explod
trigger1 = !Time
anim = 8012
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8010, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 0.15 + (0.009375 * Time), 0.15 + (0.009375 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8010, Impact Explod]
type = Explod
trigger1 = !Time
anim = 8014
ID = 4
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8010, Scale Impact Explod]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = 0.3 - (0.0375 * Time), 0.3 - (0.0375 * Time)
trans = AddAlpha
alpha = 128 - (16 * Time), 256

[State 8010, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 16

[State 8010, End]
type = DestroySelf
trigger1 = Time >= 16


;Medium Hit Spark
[StateDef 8011]
type = A
physics = N
moveType = I
anim = 8010
velSet = 0,0
sprPriority = 5

[State 8011, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8011, AngleSet]
type = AngleSet
trigger1 = !Time
value = 30 * (Random % 12)

[State 8011, AngleAdd]
type = AngleAdd
trigger1 = 1
value = 30

[State 8011, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = 0.35 - (Time * 0.035), 0.35 - (Time * 0.035)
ignoreHitPause = 1

[State 8011, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignoreHitPause = 1

[State 8011, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8011, Center]
type = Explod
trigger1 = !Time
anim = 8011
ID = 1
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removetime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8011, Scale Center Explod]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 0.175 + (0.0109375 * Time), 0.175 + (0.0109375 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8011, Streaks Explod]
type = Explod
trigger1 = !Time
anim = 8012
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8011, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 0.175 + (0.0109375 * Time), 0.175 + (0.0109375 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8011, Impact Explod]
type = Explod
trigger1 = !Time
anim = 8014
ID = 4
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8011, Scale Impact Explod]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = 0.35 - (0.04375 * Time), 0.35 - (0.04375 * Time)
trans = AddAlpha
alpha = 128 - (16 * Time), 256

[State 8011, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 16

[State 8011, End]
type = DestroySelf
trigger1 = Time >= 16


;Strong Hit Spark
[StateDef 8012]
type = A
physics = N
moveType = I
anim = 8010
velSet = 0,0
sprPriority = 5

[State 8012, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8012, AngleSet]
type = AngleSet
trigger1 = !Time
value = 30 * (Random % 12)

[State 8012, AngleAdd]
type = AngleAdd
trigger1 = 1
value = 30

[State 8012, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = 0.4 - (Time * 0.04), 0.4 - (Time * 0.04)
ignoreHitPause = 1

[State 8012, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignoreHitPause = 1

[State 8012, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8012, Center Explod]
type = Explod
trigger1 = !Time
anim = 8011
ID = 1
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8012, Scale Center Explod]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 0.2 + (0.0125 * Time), 0.2 + (0.0125 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8012, Streaks Explod]
type = Explod
trigger1 = !time
anim = 8012
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8012, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 0.2 + (0.0125 * Time), 0.2 + (0.0125 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8012, Impact Explod]
type = Explod
trigger1 = !Time
anim = 8014
ID = 4
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8012, Scale Impact Explod]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = 0.4 - (0.05 * Time), 0.4 - (0.05 * Time)
trans = AddAlpha
alpha = 128 - (16 * Time), 256

[State 8012, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 16

[State 8012, End]
type = DestroySelf
trigger1 = Time >= 16


;Special Move Hit Spark
[StateDef 8013]
type = A
physics = N
moveType = I
anim = 8010
velSet = 0,0
sprPriority = 5

[State 8013, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8013, AngleSet]
type = AngleSet
trigger1 = !Time
value = 30 * (Random % 12)

[State 8013, AngleAdd]
type = AngleAdd
trigger1 = 1
value = 30

[State 8013, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = 0.45 - (Time * 0.045), 0.45 - (Time * 0.045)
ignoreHitPause = 1

[State 8012, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignoreHitPause = 1

[State 8013, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8013, Center Explod]
type = Explod
trigger1 = !Time
anim = 8011
ID = 1
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8013, Scale Center Explod]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 0.225 + (0.0140625 * Time), 0.225 + (0.0140625 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8013, Streaks Explod]
type = Explod
trigger1 = !Time
anim = 8012
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8013, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 0.225 + (0.0140625 * Time), 0.225 + (0.0140625 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8013, P2 Back Explod]
type = Explod
trigger1 = !Time
anim = 8013
ID = 3
posType = P1
facing = -1
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = -3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8013, Scale P2 Back Explod]
type = ModifyExplod
trigger1= NumExplod(3)
ID = 3
scale = 0.4, 0.4
trans = AddAlpha
alpha = 256 - (32 * Time), 256

[State 8013, Impact Explod]
type = Explod
trigger1 = !Time
anim = 8014
ID = 4
posType = P1
facing = ifElse(random < 500, -1, 1)
vFacing = ifElse(random < 500, -1, 1)
sprPriority=3
removeTime=8
pauseMoveTime = -1
superMoveTime = -1

[State 8013, Scale Impact Explod]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = 0.45 - (0.05625 * Time), 0.45 - (0.05625 * Time)
trans = AddAlpha
alpha = 192 - (24 * Time), 256

[State 8013, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 16

[State 8013, End]
type = DestroySelf
trigger1 = Time >= 16


;Super Hit Spark
[StateDef 8014]
type = A
physics = N
moveType = I
anim = 8010
velSet = 0,0
sprPriority = 5

[State 8014, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8014, AngleSet]
type = AngleSet
trigger1 = !Time
value = 30 * (Random % 12)

[State 8014, AngleAdd]
type = AngleAdd
trigger1 = 1
value = 30

[State 8014, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = 0.5 - (Time * 0.05), 0.5 - (Time * 0.05)
ignoreHitPause = 1

[State 8014, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignoreHitPause = 1

[State 8014, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8014, Center Explod]
type = Explod
trigger1 = !Time
anim = 8011
ID = 1
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8014, Scale Center Explod]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 0.25 + (0.015625 * Time), 0.25 + (0.015625 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8014, Streaks Explod]
type = Explod
trigger1 = !Time
anim = 8012
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8014, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 0.25 + (0.015625 * Time), 0.25 + (0.015625 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8014, P2 Back Explod]
type = Explod
trigger1 = !Time
anim = 8013
ID = 3
posType = P1
facing = ifElse((Parent, StateNo = [3000,3999]), -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = -3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8014, Scale P2 Back Explod]
type = ModifyExplod
trigger1 = NumExplod(3)
ID = 3
scale = 0.5,0.5
trans = AddAlpha
alpha = 256 - (32 * Time), 256

[State 8014, Impact Explod]
type = Explod
trigger1 = !Time
anim = 8014
ID = 4
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8014, Scale Impact Explod]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = 0.5 - (0.0625 * Time), 0.5 - (0.0625 * Time)
trans = AddAlpha
alpha = 256 - (32 * Time),256

[State 8014, Remove Explods]
type = RemoveExplod
trigger1 = time >= 16

[State 8014, End]
type = DestroySelf
trigger1 = Time >= 16


;Reversal Spark
[StateDef 8020]
type = A
physics = N
moveType = I
anim = 8020
velSet = 0,0
sprPriority = 5

[State 8020, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8020, Scale]
type = AngleDraw
trigger1 = 1
scale = 0.25 + (0.09375 * Time), 0.25 + (0.09375 * Time)
ignoreHitPause = 1

[State 8020, Transparency]
type = Trans
trigger1 = Time < 4
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 8020, Transparency]
type = Trans
trigger1 = Time >= 4
trans = AddAlpha
alpha = 256 - 64 * (Time - 4), 256
ignoreHitPause = 1

[State 8020, End]
type = DestroySelf
trigger1 = Time >= 8



;Jump dust
[Statedef 8100]
type = S
anim = 1
velset = 0, 0

[State 8100, Bind]
type = bindtoroot
trigger1 = time

[State 8100, Dust]
type = explod
trigger1 = !time
anim = 8100
sprpriority = 3
postype = p1
pos = 0, ceil(pos y)
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 8100, Dust]
type = explod
trigger1 = !time || time = 2 || time = 6
anim = 8101
sprpriority = 3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 8100, End]
type = destroyself
trigger1 = time >= 7


;Dash dust
[Statedef 8103]
type = A
anim = 1
velset = 0, 0
sprpriority = 5

[State 8103, Pos]
type = posset
trigger1 = !time = 0
y = 0

[State 8103, Dust]
type = explod
trigger1 = time = 0 || time = 3 || time = 6
anim = 8103
ID = ifelse((time = 6), 3, ifelse((time = 3), 2, 1))
postype = p1
pos = 0, -4
random = 8, 8
vel = -3 -(random / 1000.0), -2 -(random / 2000.0)
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
removetime = 16
sprpriority = 3
pausemovetime = -1
supermovetime = -1

[State 8103, Scale]
type = modifyexplod
trigger1 = numexplod(1)
ID = 1
scale = 0.1 + (0.025 * time), 0.1 + (0.025 * time)
trans = addalpha
alpha = 256 -(16 * time), 256

[State 8103, Scale]
type = modifyexplod
trigger1 = numexplod(2)
ID = 2
scale = 0.1 + (0.025 * (time -3)), 0.1 + (0.025 * (time -3))
trans = addalpha
alpha = 256 -(16 * (time -3)), 256

[State 8103, Scale]
type = modifyexplod
trigger1 = numexplod(3)
ID = 3
scale = 0.1 + (0.025 * (time -6)), 0.1 + (0.025 * (time -6))
trans = addalpha
alpha = 256 -(16 * (time -6)), 256

[State 8103, End]
type = removeexplod
trigger1 = time >= 22

[State 8103, End]
type = destroyself
trigger1 = !numexplod

;-----------------------------------
;Ground Impact 
[Statedef 8110]
type = A
anim = 1
velset = 0, 0
sprpriority = 5

[State 8110, FX]
type = explod
trigger1 = !time
anim = 8110
ID = ifelse(time = 8, 3, ifelse(time = 4, 2, 1))
postype = p1
removetime = 8
sprpriority = -4
pausemovetime = -1
supermovetime = -1

[State 8110, FX]
type = explod
trigger1 = !time
anim = 8120
ID = 2
postype = p1
removetime = 8
sprpriority = -4
pausemovetime = -1
supermovetime = -1

[State 8110, Scale]
type = modifyexplod
trigger1 = 1
scale = 0.25 + (0.03125 * time), 0.25 + (0.03125 * time)
trans = addalpha
alpha = ifelse(time < 4, 256, 256 -(64 * (time -4))), 256

[State 8110, End]
type = removeexplod
trigger1 = time >= 8

[State 8110, End]
type = destroyself
trigger1 = !numexplod

;WALL IMPACT DUST
[StateDef 8111]
type = A
anim = 1
velSet = 0,0
sprPriority = 5

[State 8111, Impact Dust Explod 1]
type = Explod
trigger1 = !Time
anim = 8111
ID = ifElse(Time = 8, 3, ifElse(Time = 4, 2, 1))
posType = P1
removeTime = 8
sprPriority = -4
pauseMoveTime = -1
superMoveTime = -1

[State 8111, Impact Dust Explod 2]
type = Explod
trigger1 = !Time
anim = 8121
ID = 2
posType = P1
removeTime = 8
sprPriority = -4
pauseMoveTime = -1
superMoveTime = -1

[State 8111, Scale]
type = ModifyExplod
trigger1 = 1
scale = 0.25 + (0.03125 * Time), 0.25 + (0.03125 * Time)
trans = AddAlpha
alpha = ifElse(Time < 4, 256, 256 - (64 * (Time - 4))), 256

[State 8111, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 8

[State 8111, End]
type = DestroySelf
trigger1 = !NumExplod

;FLAMES
[Statedef 8150]
type = A
velset = 0, 0
anim = 1

[State 8150, player]
type = varset
trigger1 = !time
var(0) = parent, var(43)

[State 8150, Pos]
type = posset
trigger1 = playerIDexist(var(0))
x = ceil(playerID(var(0)), pos x)
y = ceil(playerID(var(0)), pos y) + (playerID(var(0)), const(size.mid.pos.y))

[State 8150, Pos]
type = posset
trigger1 = playerIDexist(var(0))
trigger1 = playerID(var(0)), statetype = L
x = ceil(playerID(var(0)), pos x)
y = ceil(playerID(var(0)), pos y) - 20

[State 8150, facing]
type = turn
trigger1 = playerIDexist(var(0))
trigger1 = facing != (playerID(var(0)), facing)

[State 8150, flames]
type = explod
trigger1 = playerIDexist(var(0))
anim = 8150
sprpriority = 3
postype = p1
random = 40, 40
vel = (random / 2000.0), -.5 -(random / 2000.0)
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
scale = 0.5, 0.5
ownpal = 1

[State 8150, flames]
type = explod
trigger1 = playerIDexist(var(0))
anim = 8150
sprpriority = 3
postype = p1
random = 60, 60
vel = (random / 2000.0), -.5 -(random / 2000.0)
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
scale = 0.5, 0.5
ownpal = 1

[State 8150, End]
type = destroyself
trigger1 = time >= 600
trigger2 = !playerIDexist(var(0))

[State 8150, End]
type = destroyself
triggerall = playerIDexist(var(0))
trigger1 = playerID(var(0)), ctrl
trigger2 = playerID(var(0)), movetype != H || playerID(var(0)), stateno = 5300
trigger3 = playerID(var(0)), statetype = L && (playerID(var(0)), stateno != [5080, 5081])

;RECOVER FX
[Statedef 8200]
type = A
velset = 0, 0
anim = 8200
sprpriority = 5

[State 8200, No Shadow]
type = assertspecial
trigger1 = 1
flag = noshadow
ignoreHitPause = 1

[State 8200, Scale]
type = angledraw
trigger1 = 1
scale = 0.25 + (0.017 * time), 0.25 + (0.017 * time)
ignoreHitPause = 1

[State 8200, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = ceil(256 -17.1 * time), 256
ignoreHitPause = 1

[State 8200, End]
type = destroyself
trigger1 = time >= 15


;COUNTER FX
[Statedef 8290]
type = A
physics = N
velset = 0, 0
anim = 1

[State 8290, Circle]
type = explod
trigger1 = !numexplod(8290)
anim = 8290
ID = 8290
sprpriority = 64
postype = p1
facing = facing
removetime = 32
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 8290, Scale]
type = modifyexplod
trigger1 = time < 8
ID = 8290
scale = 0.5, 0.5
trans = addalpha
alpha = 256, 0

[State 8290, Scale]
type = modifyexplod
trigger1 = time >= 8
ID = 8290
scale = 0.5 + .0625 * (time -8), 0.5 + .0625 * (time -8)
trans = addalpha
alpha = 256 -32 * (time -8), 32 * (time -8)

[State 8290, Safety]
type = removeexplod
trigger1 = time >= 16

[State 8290, End]
type = destroyself
trigger1 = time >= 16

;MAX MODE TEXT FX
[StateDef 8291]
type = A
physics = N
velSet = 0,0
anim = 1

[State 8291, "Power Up!" Text Explod]
type = Explod
trigger1 = !NumExplod(8291)
anim = 8291
ID = 8291
sprPriority = 64
posType = P1
facing = Facing
removeTime = 32
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 8291, Scale]
type = ModifyExplod
trigger1 = Time < 8
ID = 8291
scale = 0.5, .5
trans = AddAlpha
alpha = 256,0

[State 8291, Scale]
type = ModifyExplod
trigger1 = Time >= 8
ID = 8291
scale = 0.5 + 0.0625 * (Time - 8), 0.5 + 0.0625 * (Time - 8)
trans = AddAlpha
alpha = 256 - 32 * (Time - 8), 32 * (Time - 8)

[State 8291, Safety]
type = RemoveExplod
trigger1 = Time >= 16

[State 8291, End]
type = DestroySelf
trigger1 = Time >= 16

;POWER CHARGE MAIN FX 
[Statedef 8330]
type = A
physics = N
movetype = I
anim = 1
ctrl = 0
velset = 0, 0

[State 8330, Bind]
type = bindtoroot
trigger1 = (root, stateno = 730)
pos = 0,0

[State 8330, Snd]
type = playsnd
trigger1 = !time
value = 730,0
channel = 0

[State 8330, Aura]
type = explod
trigger1 = !numexplod(8330)
ID = 8330
anim = 8330
sprpriority = 3
postype = p1
bindtime = -1
removetime = -1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 8330, Dust]
type = explod
trigger1 = !(time % 6)
anim = 8105
sprpriority = -3
postype = p1
pos = 0, -ceil(pos y)
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 8330, FX]
type = modifyexplod
trigger1 = numexplod(8330) && root, power < 3000
ID = 8330
scale = 0.5, 0.1 + 0.4 * (root, power / 3000.0)

[State 8330, FX]
type = modifyexplod
trigger1 = numexplod(8330) && root, power >= 3000
ID = 8330
scale = 0.5, 0.5

[State 8330, End]
type = stopsnd
trigger1 = root, stateno != 730
channel = 0

[State 8330, End]
type = removeexplod
trigger1 = root, stateno != 730

[State 8330, End]
type = destroyself
trigger1 = root, stateno != 730


;POWER CHARGE Particles 
[Statedef 8331]
type = A
physics = N
movetype = I
anim = 1
ctrl = 0
velset = 0, 0

[State 8331, Bind]
type=bindtoroot
trigger1= !(time%8)
pos=ceil(-153+(random/3.125)),ceil(82-(random/3.125))

[State 8331, Particle]
type=explod
trigger1= (time%8)=1
anim=8331
sprpriority=ifelse(random<750,5,-1)
postype=p1
vel= ((rootdist x+1)/32.0), ((rootdist y-75)/32.0)
scale= ifelse(random<500,.5,-.5), ifelse(random<500,.5,-.5)
pausemovetime=-1
supermovetime=-1
ownpal=1

[State 8331, End]
type = removeexplod
trigger1 = root, stateno != 730

[State 8331, End]
type = destroyself
trigger1 = root, stateno != 730


;ZERO COUNTER PAUSE
[Statedef 8350]
type = A
physics = N
movetype = I
anim = 1
ctrl = 0
velset = 0, 0

[State 8350, BG PalFX]
type = bgpalfx
trigger1 = 1
time = 1
color = 16 * time
mul = 16 * time, 16 * time, 16 * time

[State 8350, Circle]
type = explod
trigger1 = !time
anim = 8350
ID = 1
sprpriority = 3
postype = p1
removetime = 16
supermovetime = -1
ownpal = 1

[State 8350, Scale]
type = modifyexplod
trigger1 = numexplod(1)
ID = 1
scale = (0.0625 * time), (0.0625 * time)
trans = addalpha
alpha = 256 -(16 * time), 256

[State 8350, Lightning]
type = explod
trigger1 = !time
anim = 8351
ID = 2
sprpriority = -2
postype = p1
pos = 0, -ceil(pos y)
supermovetime = -1
ownpal = 1

[State 8350, End]
type = destroyself
trigger1 = time >= 16


;CUSTOM COMBO
[Statedef 8400]
type = A
physics = N
movetype = I
anim = 8400
ctrl = 0
velset = 0, 0
sprpriority = 5

[State 8400, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow
ignoreHitPause = 1

[State 8400, BG PalFX]
type = bgpalfx
trigger1 = time < 25
time = 1
mul = 128, 128, 128

[State 8400, Rotate]
type = angleset
trigger1 = !time
value = 6 * (random % 60)

[State 8400, Rotate]
type = angleadd
trigger1 = 1
value = -6

[State 8400, Scale]
type = angledraw
trigger1 = time < 8
scale = (0.0625 * time), (0.0625 * time)
ignoreHitPause = 1

[State 8400, Scale]
type = angledraw
trigger1 = time >= 8
scale = 0.5, 0.5
ignoreHitPause = 1

[State 8400, Trans]
type = trans
trigger1 = time < 16
trans = addalpha
alpha = 256, 256
ignoreHitPause = 1

[State 8400, Trans]
type = trans
trigger1 = time >= 16
trans = addalpha
alpha = ceil(256 - 25.6 * (time -16)), 256
ignoreHitPause = 1

[State 8400, Lines]
type = explod
trigger1 = !time
anim = 8401
ID = 1
sprpriority = 5
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
removetime = 16
supermovetime = -1

[State 8400, Scale]
type = modifyexplod
trigger1 = numexplod(1)
ID = 1
scale = 2 -(0.125 * time), 2 -(0.125 * time)
trans = addalpha
alpha = ifelse(time < 4, 64 * time, 256), 256

[State 8400, Circle]
type = explod
trigger1 = time = 16
anim = 8402
ID = 2
sprpriority = 5
postype = p1
removetime = 32
supermovetime = -1

[State 8400, Scale]
type = modifyexplod
trigger1 = numexplod(2)
ID = 2
scale = (0.1 * (time -16)), (0.1 * (time -16))
trans = addalpha
alpha = ceil(256 - 25.6 * (time -16)), 256

[State 8400, Safety]
type = removeexplod
trigger1 = time >= 26

[State 8400, End]
type = destroyself
trigger1 = time >= 26


;========================< SUPERPAUSE FX >=============================
;--- --Level 1 -----
[Statedef 8500]
type = A
velset = 0, 0
anim = 8500
sprpriority = 5

[State 8500, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow
ignoreHitPause = 1

[State 8500, BG PalFX]
type = bgpalfx
trigger1 = time < 39
time = 1
color = 0
mul = 0, 0, 256

[State 8500, Rotate]
type = angleset
trigger1 = !time
value = 6 * (random % 60)

[State 8500, Rotate]
type = angleadd
trigger1 = 1
value = -6

[State 8500, Scale]
type = angledraw
trigger1 = time < 16
scale = (0.03125 * time), (0.03125 * time)
ignoreHitPause = 1

[State 8500, Scale]
type = angledraw
trigger1 = time >= 16
scale = 0.5, 0.5
ignoreHitPause = 1

[State 8500, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignoreHitPause = 1

[State 8500, Lines]
type = explod
trigger1 = time = 0 || time = 8 || time = 16 || time = 24
anim = 8501
ID = ifelse(time = 24, 4, ifelse(time = 16, 3, ifelse(time = 8, 2, 1)))
sprpriority = 5
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
removetime = 16
supermovetime = -1

[State 8500, Scale]
type = modifyexplod
trigger1 = numexplod(1)
ID = 1
scale = 1 -(0.0625 * time), 1 -(0.0625 * time)
trans = addalpha
alpha = ifelse(time < 4, 64 * time, 256), 256

[State 8500, Scale]
type = modifyexplod
trigger1 = numexplod(2)
ID = 2
scale = 1 -(0.0625 * (time -8)), 1 -(0.0625 * (time -8))
trans = addalpha
alpha = ifelse((time -8) < 4, 64 * (time -8), 256), 256

[State 8500, Scale]
type = modifyexplod
trigger1 = numexplod(3)
ID = 3
scale = 1 -(0.0625 * (time -16)), 1 -(0.0625 * (time -16))
trans = addalpha
alpha = ifelse((time -16) < 4, 64 * (time -16), 256), 256

[State 8500, Scale]
type = modifyexplod
trigger1 = numexplod(4)
ID = 4
scale = 1 -(0.0625 * (time -24)), 1 -(0.0625 * (time -24))
trans = addalpha
alpha = ifelse((time -24) < 4, 64 * (time -24), 256), 256

[State 8500, Circle]
type = explod
trigger1 = time = 24
anim = 8502
ID = 10
sprpriority = 5
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
removetime = 32
supermovetime = -1

[State 8500, Scale]
type = modifyexplod
trigger1 = numexplod(10)
ID = 10
scale = 2 -(0.125 * (time -24)), 2 -(0.125 * (time -24))
trans = addalpha
alpha = ifelse((time -24) < 4, 64 * (time -24), 256), 256

;The Portrait
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fvar(0) = 1
[State 0, VarSet]
type = VarSet
trigger1 = time
fvar(0) = fvar(0) * 0.97
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fvar(10) = 1
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fvar(11) = 0.01
[State 0, VarSet]
type = VarAdd
trigger1 = time
fvar(11) = 0.07 * fvar(10)
[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 2990+root,var(1)
ID = 3910
pos = 160-floor(160*fvar(10)),120+floor(120*fvar(10))
postype = back
vfacing = 1
bindtime = -1
removetime = 40
supermovetime = 65535
pausemovetime = 65535
scale = fvar(11),fvar(11)
sprpriority = -777
ownpal = 1
[State 0, Explod]
type = ModifyExplod
trigger1 = time
trigger1 = numexplod(3910)
ID = 3910
pos = 160-floor(160*fvar(10))+(random%10*ifelse(random<500,1,-1)),120+floor(120*fvar(10))+(random%10*ifelse(random<500,1,-1))
postype = back
facing = 1
vfacing = 1
bindtime = -1
scale = fvar(11),fvar(11)
;End Portrait

[State 8500, Safety]
type = removeexplod
trigger1 = time >= 40

[State 8500, End]
type = destroyself
trigger1 = time >= 40


;--- --Level 2 -----
[Statedef 8510]
type = A
velset = 0, 0
anim = 8510
sprpriority = 5

[State 8510, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow
ignoreHitPause = 1

[State 8510, BG PalFX]
type = bgpalfx
trigger1 = time < 39
time = 1
color = 0
mul = 192, 0, 256

[State 8510, Rotate]
type = angleset
trigger1 = !time
value = 6 * (random % 60)

[State 8510, Rotate]
type = angleadd
trigger1 = 1
value = -6

[State 8510, Scale]
type = angledraw
trigger1 = time < 16
scale = (0.03125 * time), (0.03125 * time)
ignoreHitPause = 1

[State 8510, Scale]
type = angledraw
trigger1 = time >= 16
scale = 0.5, 0.5
ignoreHitPause = 1

[State 8510, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignoreHitPause = 1

[State 8510, Lines]
type = explod
trigger1 = time = 0 || time = 8 || time = 16 || time = 24
anim = 8511
ID = ifelse(time = 24, 4, ifelse(time = 16, 3, ifelse(time = 8, 2, 1)))
sprpriority = 5
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
removetime = 16
supermovetime = -1

[State 8510, Scale]
type = modifyexplod
trigger1 = numexplod(1)
ID = 1
scale = 1 -(0.0625 * time), 1 -(0.0625 * time)
trans = addalpha
alpha = ifelse(time < 4, 64 * time, 256), 256

[State 8510, Scale]
type = modifyexplod
trigger1 = numexplod(2)
ID = 2
scale = 1 -(0.0625 * (time -8)), 1 -(0.0625 * (time -8))
trans = addalpha
alpha = ifelse((time -8) < 4, 64 * (time -8), 256), 256

[State 8510, Scale]
type = modifyexplod
trigger1 = numexplod(3)
ID = 3
scale = 1 -(0.0625 * (time -16)), 1 -(0.0625 * (time -16))
trans = addalpha
alpha = ifelse((time -16) < 4, 64 * (time -16), 256), 256

[State 8510, Scale]
type = modifyexplod
trigger1 = numexplod(4)
ID = 4
scale = 1 -(0.0625 * (time -24)), 1 -(0.0625 * (time -24))
trans = addalpha
alpha = ifelse((time -24) < 4, 64 * (time -24), 256), 256

[State 8510, Circle]
type = explod
trigger1 = time = 24
anim = 8512
ID = 10
sprpriority = 5
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
removetime = 32
supermovetime = -1

[State 8510, Scale]
type = modifyexplod
trigger1 = numexplod(10)
ID = 10
scale = 2 -(0.125 * (time -24)), 2 -(0.125 * (time -24))
trans = addalpha
alpha = ifelse((time -24) < 4, 64 * (time -24), 256), 256

;The Portrait
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fvar(0) = 1
[State 0, VarSet]
type = VarSet
trigger1 = time
fvar(0) = fvar(0) * 0.97
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fvar(10) = 1
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fvar(11) = 0.01
[State 0, VarSet]
type = VarAdd
trigger1 = time
fvar(11) = 0.07 * fvar(10)
[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 2990+root,var(1)
ID = 3910
pos = 160-floor(160*fvar(10)),120+floor(120*fvar(10))
postype = back
vfacing = 1
bindtime = -1
removetime = 40
supermovetime = 65535
pausemovetime = 65535
scale = fvar(11),fvar(11)
sprpriority = -777
ownpal = 1
[State 0, Explod]
type = ModifyExplod
trigger1 = time
trigger1 = numexplod(3910)
ID = 3910
pos = 160-floor(160*fvar(10))+(random%10*ifelse(random<500,1,-1)),120+floor(120*fvar(10))+(random%10*ifelse(random<500,1,-1))
postype = back
facing = 1
vfacing = 1
bindtime = -1
scale = fvar(11),fvar(11)
;End Portrait

[State 8510, Safety]
type = removeexplod
trigger1 = time >= 40

[State 8510, End]
type = destroyself
trigger1 = time >= 40


;--- --Level 3 -----
[Statedef 8520]
type = A
velset = 0, 0
anim = 8520
sprpriority = 5

[State 8520, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow
ignoreHitPause = 1

[State 8520, Assert]
type = assertspecial
trigger1 = time < 40
flag = nobardisplay
flag2 = noBG
flag3 = noFG

[State 8520, Rotate]
type = angleset
trigger1 = !time
value = 6 * (random % 60)

[State 8520, Rotate]
type = angleadd
trigger1 = 1
value = -6

[State 8520, Scale]
type = angledraw
trigger1 = time < 16
scale = (0.03125 * time), (0.03125 * time)
ignoreHitPause = 1

[State 8520, Scale]
type = angledraw
trigger1 = time >= 16
scale = 0.5, 0.5
ignoreHitPause = 1

[State 8520, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignoreHitPause = 1

[State 8520, Portrait]
type = explod
trigger1 = !time
anim = 8525
ID = 20
sprpriority = -16
postype = back
removetime = 40
supermovetime = -1

[State 8520, Portrait]
type = explod
trigger1 = !time
anim = 8525
ID = 21
sprpriority = -16
postype = back
removetime = 40
supermovetime = -1

[State 8520, Scale]
type = modifyexplod
trigger1 = numexplod(20) && time < 16
ID = 20
postype = back
pos = 160, floor((1.3333333 * gameheight / gamewidth) * 121)
scale = 1 - (0.03125 * time), 1 - (0.03125 * time)
trans = addalpha
alpha = (8 * time), 256

[State 8520, Scale]
type = modifyexplod
trigger1 = numexplod(21) && time < 16
ID = 21
postype = back
pos = 160, floor((1.3333333 * gameheight / gamewidth) * 121)
scale = 2 - (0.09375 * time), 2 - (0.09375 * time)
trans = addalpha
alpha = (8 * time), 256

[State 8520, Scale]
type = modifyexplod
trigger1 = numexplod(20) && (time = [16, 32])
ID = 20
postype = back
pos = 160, floor((1.3333333 * gameheight / gamewidth) * 121)
scale = 0.5, 0.5
trans = addalpha
alpha = 256, 256

[State 8520, Scale Portrait 2b]
type = ModifyExplod
trigger1 = NumExplod(21) && (Time = [16,32])
ID = 21
scale = 0,0

[State 8520, Scale Portrait 1c]
type = ModifyExplod
trigger1 = NumExplod(20) && Time >= 32
ID = 20
posType = Back
pos = 160 + (8 * (Time - 32)), floor((1.3333333 * GameHeight / GameWidth) * 121)
scale = 0.5, 0.5
trans = AddAlpha
alpha = 128 - 16 * (Time - 32), 256

[State 8520, Scale Portrait 2c]
type = ModifyExplod
trigger1 = NumExplod(21) && Time >= 32
ID = 21
posType = Back
pos = 160 - (8 * (Time - 32)), floor((1.3333333 * GameHeight / GameWidth) * 121)
scale = 0.5, 0.5
trans = AddAlpha
alpha = 128 - 16 * (Time - 32), 256

[State 8520, Lines]
type = explod
trigger1 = time = 0 || time = 8 || time = 16 || time = 24
anim = 8521
ID = ifelse(time = 24, 4, ifelse(time = 16, 3, ifelse(time = 8, 2, 1)))
sprpriority = 5
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
removetime = 16
supermovetime = -1

[State 8520, Scale]
type = modifyexplod
trigger1 = numexplod(1)
ID = 1
scale = 1 -(0.0625 * time), 1 -(0.0625 * time)
trans = addalpha
alpha = ifelse(time < 4, 64 * time, 256), 256

[State 8520, Scale]
type = modifyexplod
trigger1 = numexplod(2)
ID = 2
scale = 1 -(0.0625 * (time -8)), 1 -(0.0625 * (time -8))
trans = addalpha
alpha = ifelse((time -8) < 4, 64 * (time -8), 256), 256

[State 8520, Scale]
type = modifyexplod
trigger1 = numexplod(3)
ID = 3
scale = 1 -(0.0625 * (time -16)), 1 -(0.0625 * (time -16))
trans = addalpha
alpha = ifelse((time -16) < 4, 64 * (time -16), 256), 256

[State 8520, Scale]
type = modifyexplod
trigger1 = numexplod(4)
ID = 4
scale = 1 -(0.0625 * (time -24)), 1 -(0.0625 * (time -24))
trans = addalpha
alpha = ifelse((time -24) < 4, 64 * (time -24), 256), 256

[State 8520, Circle]
type = explod
trigger1 = time = 24
anim = 8522
ID = 10
sprpriority = 5
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
removetime = 32
supermovetime = -1

[State 8520, Scale]
type = modifyexplod
trigger1 = numexplod(10)
ID = 10
scale = 2 -(0.125 * (time -24)), 2 -(0.125 * (time -24))
trans = addalpha
alpha = ifelse((time -24) < 4, 64 * (time -24), 256), 256

;The Portrait
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fvar(0) = 1
[State 0, VarSet]
type = VarSet
trigger1 = time
fvar(0) = fvar(0) * 0.97
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fvar(10) = 1
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fvar(11) = 0.01
[State 0, VarSet]
type = VarAdd
trigger1 = time
fvar(11) = 0.07 * fvar(10)
[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 2990+root,var(1)
ID = 3910
pos = 160-floor(160*fvar(10)),120+floor(120*fvar(10))
postype = back
vfacing = 1
bindtime = -1
removetime = 40
supermovetime = 65535
pausemovetime = 65535
scale = fvar(11),fvar(11)
sprpriority = -777
ownpal = 1
[State 0, Explod]
type = ModifyExplod
trigger1 = time
trigger1 = numexplod(3910)
ID = 3910
pos = 160-floor(160*fvar(10))+(random%10*ifelse(random<500,1,-1)),120+floor(120*fvar(10))+(random%10*ifelse(random<500,1,-1))
postype = back
facing = 1
vfacing = 1
bindtime = -1
scale = fvar(11),fvar(11)
;End Portrait

[State 8520, Safety]
type = removeexplod
trigger1 = time >= 40

[State 8520, End]
type = destroyself
trigger1 = time >= 40


;SUPER FINISH
[Statedef 8600]
type = A
velset = 0, 0
anim = 1

[State 8600, Sound]
type = playsnd
trigger1 = !time
value = 8600,0
channel = 1

[State 8600, Snd]
type = sndpan
trigger1 = time <= 80
channel = 1
abspan = ceil(sin(gametime / 20.0 * pi) * 160)

[State 8600, BG PalFX]
type = bgpalfx
trigger1 = time < 16
time = 1
mul = 0, 0, 0

[State 8600, BG PalFX]
type = bgpalfx
trigger1 = time = [16, 24)
time = 1
mul = 32 * (time -16), 32 * (time -16), 32 * (time -16)

[State 8600, Move Name: Custom Combo]
type = varset
trigger1 = !time && root, var(23) = 900
var(0) = 1

[State 8600, Fridge Technique #49: Dodjball Derby]
type = varset
trigger1 = !time && (root, var(23) = [3000, 3049])
var(0) = 2

[State 8600, Fridge Technique #37: Spray n' Pray]
type = varset
trigger1 = !time && (root, var(23) = [3050, 3099])
var(0) = 3

[State 8600, Origin Technique #01: Sucker for Nostalgia]
type = varset
trigger1 = !time && (root, var(23) = [3100, 3149])
var(0) = 4

[State 8600, Prank Technique #96: De-Stressing]
type = varset
trigger1 = !time && (root, var(23) = [3150, 3199])
var(0) = 5

[State 8600, Painting Technique #14: Bottled Rage]
type = varset
trigger1 = !time && (root, var(23) = [3500, 3599])
var(0) = 6

[State 8600, MvC]
type = explod
trigger1 = !time
anim = 8600
ID = 8600
ontop = 1
postype = left
pos = 160, floor((1.3333333 * gameheight / gamewidth) * 120)
scale = 0.5, 0.5 * (1.3333333 * gameheight / gamewidth)
bindtime = -1
removetime = 32
pausemovetime = -1
supermovetime = -1

[State 8600, Fade]
type = modifyexplod
trigger1 = numexplod(8600)
ID = 8600
trans = addalpha
alpha = ifelse(time < 16, 256, 256 -32 * (time -16)), 256

[State 8600, Text]
type = explod
trigger1 = !time && var(0)
anim = 8610 + var(0)
ID = 10
ontop = 1
postype = left
pos = 160, floor((1.3333333 * gameheight / gamewidth) * 120)
scale = 0.5, 0.5 * (1.3333333 * gameheight / gamewidth)
bindtime = -1
removetime = 32
pausemovetime = -1
supermovetime = -1

[State 8600, Text]
type = explod
trigger1 = !time && var(0)
anim = 8610 + var(0)
ID = 11
ontop = 1
postype = left
pos = 160, floor((1.3333333 * gameheight / gamewidth) * 120)
scale = 0.5, 0.5 * (1.3333333 * gameheight / gamewidth)
bindtime = -1
removetime = 8
pausemovetime = -1
supermovetime = -1

[State 8600, Fade]
type = modifyexplod
trigger1 = numexplod(10)
ID = 10
trans = addalpha
alpha = ifelse(time < 16, 256, 256 -32 * (time -16)), ifelse(time < 16, 0, 32 * (time -16))

[State 8600, Fade]
type = modifyexplod
trigger1 = numexplod(11)
ID = 11
scale = 0.5 + (0.0625 * time), 0.5 + (0.0625 * time)
trans = addalpha
alpha = 256 - (32 * time), 32 * time

[State 8600, Circle]
type = explod
trigger1 = !time
anim = 8601
ID = 8601
under = 1
postype = left
pos = 160, floor((1.3333333 * gameheight / gamewidth) * 120)
bindtime = -1
removetime = 16
pausemovetime = -1
supermovetime = -1

[State 8600, Fade]
type = modifyexplod
trigger1 = numexplod(8601)
ID = 8601
scale = (0.25 * time) * (1.3333333 * gameheight / gamewidth), (0.25 * time) * (1.3333333 * gameheight / gamewidth)
trans = addalpha
alpha = 256 - (16 * time), 256

[State 8600, Assert]
type = assertspecial
trigger1 = time < 16
flag = noFG

[State 8600, Assert]
type = assertspecial
trigger1 = time < 24
flag = nobardisplay

[State 8600, End]
type = removeexplod
trigger1 = time >= 24
trigger2 = roundstate < 3

[State 8600, End]
type = destroyself
trigger1 = roundstate < 3

;CAMERA CONTROL
[Statedef 8999]
type = S
velset = 0, 0
anim = 1

[State 8999, bound]
type = screenbound
trigger1 = 1
value = 0
movecamera = 1, 1
ignoreHitPause = 1

[State 8999, End]
type = destroyself
trigger1 = roundstate = 2

;CAMERA CONTROL (Super 3)
[Statedef 9000]
type = S
velset = 0, 0
anim = 1

[State 8999, bound]
type = screenbound
trigger1 = 1
value = 0
movecamera = 1, 1
ignoreHitPause = 1

[State 8999, End]
type = destroyself
trigger1 = parent,stateno !=[3200,3299]
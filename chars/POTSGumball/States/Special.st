; _________________________________________
;| Character by JStudios2k, Edited from Cattigan619 and MGSSJ2                |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;========================================<SPECIAL MOVES>========================================
;==============================================================================================

;---------------------------------------------------------------------------
;Diss Hadouken
[Statedef 1000]
type=S
physics=S
movetype=A
ctrl=0
velset=0,0
sprpriority=1
poweradd=72*!var(20)
facep2=1

[State 1050, MAX Timer Drain]
type = VarAdd
trigger1 = !Time
trigger1 = var(53) > 0
var(53) = -159

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
value = 1000

[State 1000, Voice]
type = PlaySnd
trigger1 = animelem = 3
value = 5,0
channel = 0

[State 1000, Blast]
type = PlaySnd
trigger1 = animelem = 3
value = 1,6
channel = 1
[State 1000, Blast]
type = PlaySnd
trigger1 = animelem = 3 && var(53)
value = 0,1001
channel = 2
volumescale = 70

[State 1000, width]
type = width
trigger1 = animelemtime(3) = 0
value = 30, 0

[State 1000, Woosh]
type = Explod
trigger1 = animelemtime(1) = 0
anim = 1001
ID = 1001
pos = -14,38
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
pausemovetime = 0
scale = 1.2,1
sprpriority = 1
ontop = 1
ownpal = 0
removeongethit = 0
ignorehitpause = 0

[State 1000, Hadouken]
type = helper
trigger1 = animelemtime(3) = 1
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
;EX Diss Hadouken
[Statedef 1050]
type=S
physics=S
movetype=A
ctrl=0
velset=0,0
sprpriority=1
poweradd=ifelse(var(53),0,-500)
facep2=1

[State 1050, MAX Timer Drain]
type = VarAdd
trigger1 = !Time
trigger1 = var(53) > 0
var(53) = -500

[State 1050, Anim]
type=changeanim
trigger1=!time
value=1000

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

[State 1000, Voice]
type = PlaySnd
trigger1 = animelem = 3
value = 5,2
channel = 0

[State 1000, Blast]
type = PlaySnd
trigger1 = animelem = 3
value = 1,6
channel = 1
[State 1000, Blast]
type = PlaySnd
trigger1 = animelem = 3
value = 1,7
channel = 2

[State 1000, width]
type = width
trigger1 = animelemtime(3) = 0
value = 30, 0

[State 1000, Woosh]
type = Explod
trigger1 = animelemtime(1) = 0
anim = 1001
ID = 1001
pos = -14,38
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
pausemovetime = 0
scale = 1.2,1
sprpriority = 1
ontop = 1
ownpal = 0
removeongethit = 0
ignorehitpause = 0

[State 1000, not Hadouken]
type = helper
trigger1 = animelemtime(3) = 1
helpertype = normal
stateno = 1010
ID = 1010
name = "not Hadouken"
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
;Sure, You Can
[Statedef 1100]
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

[State 1050, MAX Timer Drain]
type = VarAdd
trigger1 = !Time
trigger1 = var(53) > 0
var(53) = -200

[State 1200, PosAdd]
type = PosAdd
trigger1 = !Time
x = 16

[State 1000, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "x" || command = "rlsx"), 0, ifElse((command = "y" || command = "rlsy"), 1, 2))

[State 1000, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1050, Anim]
type=changeanim
trigger1=!time
value=1100

[State 1100, nothitby]
type = nothitby
trigger1 = anim = 1100 && animelemtime(4) < 0 && prevstateno != 750
value = SCA
time = 1
ignorehitpause = 1
[State NHB -ZC]
type = nothitby
triggerall = prevstateno = 750
trigger1 = var(1) = 1 && animelemtime(3) < 0
trigger2 = var(1) != 1 && animelemtime(2) < 0
value = SCA
time = 1

[State 0, Woosh]
type = Explod
trigger1 = animelem = 1 && var(53)
anim = 1151
ID = 1151
pos = 30,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
pausemovetime = 0
scale = 0.54,0.4+(var(10)*0.1)
sprpriority = 0
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause =0

[State 1100, Vel]
type = velset
trigger1 = anim = 1100 && animelem = 4
x = ifelse(var(10) = 2, 12, ifelse(var(10) = 1, 9, 6))
y = ifelse(var(10) = 2, -11, ifelse(var(10) = 1, -8.5, -6))
[State 1100, Vel]
type = velmul
trigger1 = 1
x = 0.88
[State 1100, Vel]
type = velmul
trigger1 = vel y > 0
x = 0

[State 1100, Snd]
type = playsnd
trigger1 = anim = 1100 && animelem = 4
value = 41, 0
[State 1100, Snd]
type = playsnd
trigger1 = anim = 1100 && animelem = 1 && var(53)
value = 1, 25
[State 1100, Dust]
type = helper
trigger1 = anim = 1100 && animelem = 4
helpertype = normal
stateno = 8100
ID = 8100
name = "Dust"
postype = p1
ownpal = 1

[State 1100, Snd]
type = playsnd
trigger1 = anim = 1100 && animelem = 2
value = 5,1
channel = 0
ignorehitpause = 1
persistent = 0

[State 1100, Hit]
type = hitdef
triggerall= !var(16) && (var(15)<2 || var(20)) && !numtarget(1100)
trigger1 = animelem = 3 && anim = 1100
id = ifelse(var(53),1100,0)
attr = S, SA
damage = ceil(ifelse(!var(20), ifelse(var(10)=2,118,ifelse(var(10)=1,99,79)), 60)*fvar(11)), 15
animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = ifelse(var(53), 0, ifelse(var(20),6,12)), ifelse(var(20), 6, 12)
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=64), var(36):= -22
hitsound = s2,ifelse(var(53),1001,1000) ;-1 + 0*(var(31):=2)
guardsound = s3, 0
ground.type = Low
ground.slidetime = 16
ground.hittime = 16
ground.velocity = ifelse(var(10) = 3, -4, ifelse(var(10) = 2, -3.5, -3)), ifelse(var(10) = 3, -12, ifelse(var(10) = 2, -10, -8))
ground.cornerpush.veloff = 0
air.type = Low
air.velocity = ifelse(var(10) = 3, -4, ifelse(var(10) = 2, -3.5, -3)), ifelse(var(10) = 3, -12, ifelse(var(10) = 2, -10, -8))
guard.velocity = -10.52
guard.cornerpush.veloff = 0;-12.74
getpower = ifelse(p2movetype = H, 72, 144) * (!var(20) && prevstateno != 750), 36 * (!var(20) && prevstateno != 750)
givepower = 36, 36
envshake.time = 16
envshake.freq = 120
envshake.ampl = 4
fall = 1
fall.recover = 1
fall.recovertime = 120
fall.animtype = Medium
yaccel = 0.5
forcestand = 1
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 1100, Hit2]
type = hitdef
triggerall= (var(15)<1 || var(20)) ;!var(16) && 
trigger1 = animelem = 4 && anim = 1100
trigger1 = !movecontact && !movereversed
attr = A, SA
damage = ceil(ifelse(28*fvar(11)<7,7,28*fvar(11))), 7
animtype = Back
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=64), var(36):= -40
hitsound = s2, 1000 ;-1 + 0*(var(31):=2)
guardsound = s3, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = ifelse(var(10) = 3, -4, ifelse(var(10) = 2, -3.5, -3)), ifelse(var(10) = 3, -12, ifelse(var(10) = 2, -10, -8))
ground.cornerpush.veloff = 0
air.type = Low
air.velocity = ifelse(var(10) = 3, -4, ifelse(var(10) = 2, -3.5, -3)), ifelse(var(10) = 3, -12, ifelse(var(10) = 2, -10, -8))
guard.cornerpush.veloff = 0
guard.velocity = -10.52
getpower = ifelse(p2movetype = H, 72, 144) * (!var(20) && prevstateno != 750), 36 * (!var(20) && prevstateno != 750)
givepower = 36, 36
envshake.time = 6
envshake.freq = 90
envshake.ampl = 4
fall = 1
fall.recover = 1
fall.recovertime = 120
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = ifelse(var(20), -4, -8), -1.5
forcestand = 1
airguard.cornerpush.veloff = 0
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 3100, HIT YOU]
type=targetstate
trigger1= movehit && numtarget(1100) 
trigger1= target(1100),Movetype=H
trigger1=!(target, time) && !(target, ishelper) 
ID=1100
value=1158
ignorehitpause=1

[State 1100, statetype]
type = statetypeset
trigger1 = anim = 1100 && animelemtime(4) >= 0
trigger2 = anim = 1101
statetype = A
physics = A
[State 1100, Anim]
type = changeanim
trigger1 = anim = 1100 && animelemtime(4) > 0 && vel y > (ifelse(var(10) = 3, -5.3, ifelse(var(10) = 2, -4, -2.7)))
value = 1101
persistent = 0

[State Idle]
type = statetypeset
trigger1 = anim = 1101
movetype = I

[State 1210, End]
type = changestate
trigger1 = anim=1101 && vel y > 0 && pos y >= 0
value = 1201

;---------------------------------------------------------------------------
;EX Sure, You Can
[Statedef 1150]
type=S
physics=S
movetype=A
ctrl=0
velset=0,0
sprpriority=1
poweradd=ifelse(var(53),0,-500)
facep2=1

[State 1050, MAX Timer Drain]
type = VarAdd
trigger1 = !Time
trigger1 = var(53) > 0
var(53) = -500

[State 1050, Anim]
type=changeanim
trigger1=!time
value=1150

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

[State 0, Woosh]
type = Explod
trigger1 = animelem = 1
anim = 1151
ID = 1151
pos = 30,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
pausemovetime = 0
scale = 0.54,0.6
sprpriority = 0
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause =0

[State 1110, nothitby]
type = nothitby
trigger1 = anim = 1150 && animelemtime(4) < 0
value = SCA
time = 1
ignorehitpause = 1

[State 1110, Vel]
type = velset
trigger1 = anim = 1150 && animelem = 4
x = 15
y = -12
[State 1110, Vel]
type = velmul
trigger1 = 1
x = 0.88
[State 1110, Vel]
type = velmul
trigger1 = vel y > 0
x = 0

[State 1110, snd]
type = playsnd
trigger1 = anim = 1150 && animelem = 4
value = 41,0
[State 1110, dust]
type = helper
trigger1 = anim = 1150 && animelem = 4
helpertype = normal
stateno = 8100
ID = 8100
name = "Dust"
postype = p1
ownpal = 1

[State 1110, snd]
type = playsnd
trigger1 = anim = 1150 && animelem = 3
value = 5, 1
channel = 0
ignorehitpause = 1
persistent = 0

[State 1100, Hit]
type = hitdef
trigger1 = animelem = 2 && anim = 1150
trigger2 = animelem = 3 && anim = 1150
attr = S, SA
damage = 30, 10
animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = ifelse(var(20), 12, 18), ifelse(var(20), 12, 18)
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkxy = -10+ 0*(var(35):=64), var(36):= -39
hitsound = s2, 1001
guardsound = s3, 0
ground.type = Low
ground.slidetime = 16
ground.hittime = 16
ground.velocity = ifelse(var(10) = 3, -4, ifelse(var(10) = 2, -3.5, -3)), ifelse(var(10) = 3, -12, ifelse(var(10) = 2, -10, -8))
ground.cornerpush.veloff = 0
air.type = Low
air.velocity = ifelse(var(10) = 3, -4, ifelse(var(10) = 2, -3.5, -3)), ifelse(var(10) = 3, -12, ifelse(var(10) = 2, -10, -8))
guard.velocity = -10.52
guard.cornerpush.veloff = 0;-12.74
getpower = 0,0
givepower = 36, 36
envshake.time = 16
envshake.freq = 120
envshake.ampl = 4
fall = 1
fall.recover = 1
fall.recovertime = 120
fall.animtype = Medium
yaccel = 0.5
forcestand = 1
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 1100, BDWESSH]
type = hitdef
trigger1 = animelem = 4 && anim = 1150
attr = S, SA
damage = 98, 15
animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkxy = -10+ 0*(var(35):=64), var(36):= -39
hitsound = s2, 3000
guardsound = s3, 0
ground.type = Low
ground.slidetime = 16
ground.hittime = 16
ground.velocity = ifelse(var(10) = 3, -4, ifelse(var(10) = 2, -3.5, -3)), ifelse(var(10) = 3, -12, ifelse(var(10) = 2, -10, -8))
ground.cornerpush.veloff = 0
air.type = Low
air.velocity = ifelse(var(10) = 3, -4, ifelse(var(10) = 2, -3.5, -3)), ifelse(var(10) = 3, -12, ifelse(var(10) = 2, -10, -8))
guard.velocity = -10.52
guard.cornerpush.veloff = 0;-12.74
getpower = ifelse(p2movetype = H, 72, 144) * (!var(20) && prevstateno != 750), 36 * (!var(20) && prevstateno != 750)
givepower = 36, 36
envshake.time = 16
envshake.freq = 120
envshake.ampl = 4
fall = 1
fall.recover = 1
fall.recovertime = 120
fall.animtype = Medium
yaccel = 0.5
forcestand = 1
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 1100, statetype]
type = statetypeset
trigger1 = anim = 1150 && animelemtime(4) >= 0
trigger2 = anim = 1101
statetype = A
physics = A
[State 1100, Anim]
type = changeanim
trigger1 = anim = 1150 && animelemtime(4) > 0 && vel y > (ifelse(var(10) = 3, -5.3, ifelse(var(10) = 2, -4, -2.7)))
value = 1101
persistent = 0

[State Idle]
type = statetypeset
trigger1 = anim = 1101
movetype = I

;---------------------------------------------------------------------------
;High-End Senpuukyaku
[Statedef 1200]
type = S
physics = S
movetype = A
ctrl = 0
velset = 0, 0
poweradd = 72 * !var(20)
juggle = 8
sprpriority = 1
facep2 = 1

[State 1000, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "a" || command = "rlsa"), 0, ifElse((command = "b" || command = "rlsb"), 1, 2))

[State 1000, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1200, Anim]
type = changeanim
trigger1 = !time
value = 1200 + var(10)

[State 1200, Vel]
type = velset
trigger1 = animelem = 3
x = ifelse(var(10) = 2, 5, ifelse(var(10) = 1, 4, 3))
y = ifelse(var(2),ifelse(var(10) = 2, -5, ifelse(var(10) = 1, -6, -4.5)),ifelse(var(10) = 2, -4, ifelse(var(10) = 1, -5, -6)))
[State 1200, statetype]
type = statetypeset
triggerall = animelemtime(2) >= 0
trigger1 = anim = 1200 && animelemtime(5) < 0
trigger2 = anim = 1201 && animelemtime(9) < 0
trigger3 = anim = 1202 && animelemtime(13) < 0
statetype = A
physics = N
[State 1200, Accel]
type = veladd
triggerall = animelemtime(3) >= 0
trigger1 = anim = 1200 && animelemtime(5) < 0
trigger2 = anim = 1201 && animelemtime(9) < 0
trigger3 = anim = 1202 && animelemtime(13) < 0
y = ifelse(var(10) = 2, 0.2, ifelse(var(10) = 1, 0.467, 0.555))
[State 1200, statetype]
type = statetypeset
trigger1 = anim = 1200 && animelemtime(5) >= 0
trigger2 = anim = 1201 && animelemtime(9) >= 0
trigger3 = anim = 1202 && animelemtime(13) >= 0
statetype = A
physics = A

[State 1200, Snd]
type = playsnd
trigger1 = animelem = 3
value = 40,0
[State 1200, Dust]
type = helper
trigger1 = animelem = 3
helpertype = normal
stateno = 8100
ID = 8100
name = "Dust"
postype = p1
ownpal = 1

[State 1200, Hit]
type = hitdef
trigger1 = (anim = [1201, 1202]) && animelem = 4 && (!var(16) && (var(15)<1 || var(20)))
trigger2 = anim = 1202 && animelem = 7 && (!var(16) && (var(15)<1 || var(20)))
attr = A, SA
damage = ceil(ifelse(anim = 1201, 60, 39)*fvar(11)), 7
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = ifelse(var(20), 7, 14), ifelse(var(20), 7, 14)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkxy = -10 + 0*(var(35):=66), var(36):=-20
hitsound = s2, 1001
guardsound = s3, 0
ground.type = High
ground.slidetime = 22
ground.hittime = 22
guard.hittime = ifelse(var(10)=2,10,ifelse(var(10)=1,14,16))
ground.velocity = -10, 0
air.type = Low
air.velocity = -3, -5.555
getpower = ifelse(p2movetype = H, 72, 144) * !var(20), 36 * !var(20)
givepower = 36, 36
envshake.time = 16
envshake.freq = 120
envshake.ampl = 4
air.fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
yaccel = 0.4
airguard.ctrltime = 16
airguard.velocity = ifelse(var(20), -4, -8), -1.5
airguard.cornerpush.veloff = 0

[State 1200, Hit]
type = hitdef
trigger1 = anim = 1200 && animelem = 4
trigger2 = anim = 1201 && animelem = 7
trigger3 = anim = 1202 && animelem = 12
attr = A, SA
damage = ceil(ifelse(anim = 1200, 84, ifelse(anim = 1201, 48, 35))*fvar(11)), 8
animtype = Back
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = ifelse(var(20), 7, 14), ifelse(var(20), 7, 14)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkxy = -10 + 0*(var(35):=66), var(36):=-20
hitsound = s2, 1001
guardsound = s3, 0
ground.type = Low
ground.slidetime = 22
ground.hittime = 22
guard.hittime = ifelse(var(10)=2,10,ifelse(var(10)=1,14,16))
ground.velocity = -5, -5
air.type = Low
air.velocity = -5, -5
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0;-12.74
getpower = ifelse(p2movetype = H, 72, 144) * !var(20), 36 * !var(20)
givepower = 36, 36
envshake.time = 16
envshake.freq = 120
envshake.ampl = 4
fall = 1
fall.recover = 1
fall.recovertime = 120
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = ifelse(var(20), -4, -8), -1.5
forcestand = 1
airguard.cornerpush.veloff = 0

[State 1210, End]
type = changestate
trigger1 = animelemtime(3) > 0 && vel y > 0 && pos y >= 0
value = 1201

[State Idle]
type = statetypeset
trigger1 = anim = 1200 && animelemtime(5) >= 0
trigger2 = anim = 1201 && animelemtime(8) >= 0
trigger3 = anim = 1202 && animelemtime(13) >= 0
movetype = I

;---------------------------------------------------------------------------
;EX High-End Senpuukyaku
[Statedef 1250]
type = S
physics = S
movetype = A
ctrl = 0
velset = 0, 0
poweradd = ifelse(var(53),0,-500)
juggle = 8
sprpriority = 1
facep2 = 1

[State 1050, MAX Timer Drain]
type = VarAdd
trigger1 = !Time
trigger1 = var(53) > 0
var(53) = -500

[State 1050, Anim]
type=changeanim
trigger1=!time
value=1250

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

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 2
x = 6
y = -4

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 2
statetype = A       ;S,A,C,L
movetype = A        ;I,A,H
physics = A         ;A,C,S,N

[State 0, VelSet]
type = VelSet
trigger1 = animelemtime(3) > 0 && animelemtime(12) <= 0
y = 0

[State 0, VelSet]
type = Veladd
trigger1 = animelemtime(12) >= 0
y = 0.4

[State 1200, Snd]
type = playsnd
trigger1 = anim = 1250 && animelem = 3
value = 41,0
[State 1200, Snd]
type = playsnd
trigger1 = !TIME
value = 5,3
[State 1200, Dust]
type = helper
trigger1 = anim = 1250 && animelem = 3
helpertype = normal
stateno = 8100
ID = 8100
name = "Dust"
postype = p1
ownpal = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 1250 && animelem = 4
trigger2 = anim = 1250 && animelem = 5
trigger3 = anim = 1250 && animelem = 6
trigger4 = anim = 1250 && animelem = 7
trigger5 = anim = 1250 && animelem = 8
trigger6 = anim = 1250 && animelem = 9
trigger7 = anim = 1250 && animelem = 10
value = S1,1
volume = 255
channel = -1

[State 0, HitDef]
type = HitDef
trigger1 = anim = 1250 && animelem = 4
trigger2 = anim = 1250 && animelem = 5
trigger3 = anim = 1250 && animelem = 6
trigger4 = anim = 1250 && animelem = 7
trigger5 = anim = 1250 && animelem = 8
trigger6 = anim = 1250 && animelem = 9
trigger7 = anim = 1250 && animelem = 10
attr = A, SA
damage = 18, 3
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 0,7
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkxy = -10 + 0*(var(35):=66), var(36):=-20
hitsound = s2, 1001
guardsound = s3, 0
ground.type = High
ground.slidetime = 22
ground.hittime = 22
ground.velocity = -10, 0
air.type = Low
air.velocity = -4, -4
getpower = 0,0
givepower = 36,36
envshake.time = 16
envshake.freq = 120
envshake.ampl = 4
air.fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = ifelse(var(20), -4, -8), -1.5
airguard.cornerpush.veloff = 0

[State 1200, Last Hit]
type = hitdef
trigger1 = anim = 1250 && animelem = 11
attr = A, SA
damage = 37, 8
animtype = Back
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = ifelse(var(20), 7, 14), ifelse(var(20), 8, 16)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkxy = -10 + 0*(var(35):=66), var(36):=-20
hitsound = s2, 3000
guardsound = s3, 0
ground.type = Low
ground.slidetime = 22
ground.hittime = 22
guard.hittime = 10
ground.velocity = -5, -6.777
air.type = Low
air.velocity = -5, -5
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0;-12.74
getpower = ifelse(p2movetype = H, 72, 144) * !var(20), 36 * !var(20)
givepower = 36, 36
envshake.time = 16
envshake.freq = 120
envshake.ampl = 4
fall = 1
fall.recover = 1
fall.recovertime = 120
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = ifelse(var(20), -4, -8), -1.5
forcestand = 1
airguard.cornerpush.veloff = 0

[State Idle]
type = statetypeset
trigger1 = anim = 1251 && animelemtime(12) >= 0
movetype = I

[State 1210, End]
type = changestate
trigger1 = animelemtime(3) > 0 && vel y > 0 && pos y >= 0
value = 52

;---------------------------------------------------------------------------
;Flying Taekwondork
[Statedef 1210]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0, 0
poweradd = 72 * !var(20)
juggle = 8
sprpriority = 1
facep2 = 1

[State 1000, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "a" || command = "rlsa"), 0, ifElse((command = "b" || command = "rlsb"), 1, 2))

[State 1000, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1200, Anim]
type = changeanim
trigger1 = !time
value = 1200 + var(10)

[State 1250, Vel]
type = velset
trigger1 = !time && !(var(2)&&var(10)=3)
x = ifelse(vel x > 0, 6, ifelse(vel x < 0, -4.5, 3))
y = -3.5
[State 1250, Accel]
type = veladd
trigger1 = anim != 41 ;&& !(var(2)&&var(10)=3)
y = ifelse(var(10) = 2, 0.167, ifelse(var(10) = 1, 0.417, 0.71))

[State 1200, Snd]
type = playsnd
trigger1 = animelem = 3
value = 40,0
[State 1200, Dust]
type = helper
trigger1 = animelem = 3
helpertype = normal
stateno = 8100
ID = 8100
name = "Dust"
postype = p1
ownpal = 1

[State 1200, Hit]
type = hitdef
trigger1 = (anim = [1201, 1202]) && animelem = 4
trigger2 = anim = 1202 && animelem = 7
attr = A, SA
damage = ceil(ifelse(anim = 1201, 59, 38)*fvar(11)), 7
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = ifelse(var(20), 7, 14), ifelse(var(20), 7, 14)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkxy = -10 + 0*(var(35):=66), var(36):=-20
hitsound = s2, 1001
guardsound = s3, 0
ground.type = High
ground.slidetime = 22
ground.hittime = 22
ground.velocity = -10, 0
air.type = Low
air.velocity = -4, -4
getpower = ifelse(p2movetype = H, 72, 144) * !var(20), 36 * !var(20)
givepower = 36, 36
envshake.time = 16
envshake.freq = 120
envshake.ampl = 4
air.fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = ifelse(var(20), -4, -8), -1.5
airguard.cornerpush.veloff = 0

[State 1200, Hit]
type = hitdef
trigger1 = anim = 1200 && animelem = 4
trigger2 = anim = 1201 && animelem = 7
trigger3 = anim = 1202 && animelem = 12
attr = A, SA
damage = ceil(ifelse(anim = 1200, 84, ifelse(anim = 1201, 45, 32))*fvar(11)), 8
animtype = Back
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = ifelse(var(20), 7, 14), ifelse(var(20), 7, 14)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkxy = -10 + 0*(var(35):=66), var(36):=-20
hitsound = s2, 1001
guardsound = s3, 0
ground.type = Low
ground.slidetime = 22
ground.hittime = 22
ground.velocity = -5, -5
air.type = Low
air.velocity = -5, -5
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0;-12.74
getpower = ifelse(p2movetype = H, 72, 144) * !var(20), 36 * !var(20)
givepower = 36, 36
envshake.time = 16
envshake.freq = 120
envshake.ampl = 4
fall = 1
fall.recover = 1
fall.recovertime = 120
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = ifelse(var(20), -4, -8), -1.5
forcestand = 1
airguard.cornerpush.veloff = 0

[State 1210, End]
type = changestate
trigger1 = animelemtime(3) > 0 && vel y > 0 && pos y >= 0
value = 1201

[State Idle]
type = statetypeset
trigger1 = anim = 1200 && animelemtime(5) >= 0
trigger2 = anim = 1201 && animelemtime(8) >= 0
trigger3 = anim = 1202 && animelemtime(13) >= 0
movetype = I

;---------------------------------------------------------------------------
;EX Flying Taekwondork
[Statedef 1260]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0, 0
poweradd = ifelse(var(53),0,-500)
juggle = 8
sprpriority = 1
facep2 = 1

[State 1050, MAX Timer Drain]
type = VarAdd
trigger1 = !Time
trigger1 = var(53) > 0
var(53) = -500

[State 1050, Anim]
type=changeanim
trigger1=!time
value=1250

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

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 2
x = 6
y = -2

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 2
statetype = A       ;S,A,C,L
movetype = A        ;I,A,H
physics = A         ;A,C,S,N

[State 0, VelSet]
type = VelSet
trigger1 = animelemtime(3) > 0 && animelemtime(12) <= 0
y = 0

[State 0, VelSet]
type = Veladd
trigger1 = animelemtime(12) >= 0
y = 0.4

[State 1200, Snd]
type = playsnd
trigger1 = anim = 1250 && animelem = 3
value = 41,0
[State 1200, Snd]
type = playsnd
trigger1 = !TIME
value = 5,3
[State 1200, Dust]
type = helper
trigger1 = anim = 1250 && animelem = 3
helpertype = normal
stateno = 8100
ID = 8100
name = "Dust"
postype = p1
ownpal = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 1250 && animelem = 4
trigger2 = anim = 1250 && animelem = 5
trigger3 = anim = 1250 && animelem = 6
trigger4 = anim = 1250 && animelem = 7
trigger5 = anim = 1250 && animelem = 8
trigger6 = anim = 1250 && animelem = 9
trigger7 = anim = 1250 && animelem = 10
value = S1,1
volume = 255
channel = -1

[State 0, HitDef]
type = HitDef
trigger1 = anim = 1250 && animelem = 4
trigger2 = anim = 1250 && animelem = 5
trigger3 = anim = 1250 && animelem = 6
trigger4 = anim = 1250 && animelem = 7
trigger5 = anim = 1250 && animelem = 8
trigger6 = anim = 1250 && animelem = 9
trigger7 = anim = 1250 && animelem = 10
attr = A, SA
damage = 18, 3
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 0,7
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkxy = -10 + 0*(var(35):=66), var(36):=-20
hitsound = s2, 1001
guardsound = s3, 0
ground.type = High
ground.slidetime = 22
ground.hittime = 22
ground.velocity = -10, 0
air.type = Low
air.velocity = -4, -4
getpower = 0,0
givepower = 36,36
envshake.time = 16
envshake.freq = 120
envshake.ampl = 4
air.fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = ifelse(var(20), -4, -8), -1.5
airguard.cornerpush.veloff = 0

[State 1200, Last Hit]
type = hitdef
trigger1 = anim = 1250 && animelem = 11
attr = A, SA
damage = 37, 8
animtype = Back
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = ifelse(var(20), 7, 14), ifelse(var(20), 8, 16)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkxy = -10 + 0*(var(35):=66), var(36):=-20
hitsound = s2, 3000
guardsound = s3, 0
ground.type = Low
ground.slidetime = 22
ground.hittime = 22
guard.hittime = 10
ground.velocity = -5, -6.777
air.type = Low
air.velocity = -5, -5
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0;-12.74
getpower = ifelse(p2movetype = H, 72, 144) * !var(20), 36 * !var(20)
givepower = 36, 36
envshake.time = 16
envshake.freq = 120
envshake.ampl = 4
fall = 1
fall.recover = 1
fall.recovertime = 120
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = ifelse(var(20), -4, -8), -1.5
forcestand = 1
airguard.cornerpush.veloff = 0

[State Idle]
type = statetypeset
trigger1 = anim = 1250 && animelemtime(12) >= 0
movetype = I

[State 1210, End]
type = changestate
trigger1 = animelemtime(3) > 0 && vel y > 0 && pos y >= 0
value = 52

;Special Landing
[Statedef 1201]
type = S
physics = S
movetype = I
anim = 1299
ctrl = 0
velset = 0, 0
sprpriority = 1

[State 52, Pos]
type = posset
trigger1 = 1
y = 0

[State 52, No walking]
type = assertspecial
trigger1 = anim != 5
flag = nowalk
ignoreHitPause = 1

[State 52, Snd]
type = playsnd
trigger1 = !time
value = 52,0

[State 52, Dust]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 52, Turn]
type = changeanim
trigger1 = ctrl && p2dist x < 0
trigger1 = anim != 5
value = 5

[State 52, Turn]
type = turn
trigger1 = anim = 5 && animelem = 1

[State 52, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Gum Retsu Ken
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

[State 210,Posadd]
type=posadd
trigger1=animelem=2
trigger2=animelem=3
x=ifelse(var(10)=2,12,ifelse(var(10)=1,8,4))
[State 210,Velset]
type=Velset
trigger1=animelem=3
x=ifelse(var(10)=2,9,ifelse(var(10)=1,7,5))
[State 210,Velset]
type=Veladd
trigger1=animelem>=3
x=-0.4

[State 105, Woosh]
type = helper
trigger1 = animelemtime(2) = 1
stateno = 8103
ID = 8100
name = "Dash Dust"
postype = p1
facing = 1
pausemovetime = 255
supermovetime = 255
ownpal = 1

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
value = 1300

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = Time = Ifelse(var(10)=2,18,ifelse(var(10)=1,9,6))
value = 1300
elem = 2

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 101,0
channel = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
trigger1 = var(10) = 2
value = 1,9
[State 0, PalFX]
type = PalFX
trigger1 = animelemtime(1) = [1,10]
trigger1 = var(10) = 2
time = 1
add = 256-(time-124)*16,256-(time-124)*16,256-(time-124)*16

[State 1200, THE POKE]
type=hitdef
trigger1= !var(16) && (var(15)<15 || var(20))
trigger1= !Time
triggerall= !Numtarget(1300) && var(10) < 2
ID = 1300
attr = S,SA
hitflag = MAF
guardflag = M
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 33, ifElse(var(10), 29, 21)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 33, ifElse(var(10), 29, 21)))), 7
getpower = ifelse(!var(13), 44, 22)*!var(20), 6*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
guard.pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
kill = 0
animtype = Hard
air.animtype = back
fall.animtype = back
ground.type = Low
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = ifelse(var(20), -3.61, -6.89), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(var(20), -3.61, -6.89)
guard.cornerpush.veloff = 0
air.velocity = -3, -4
air.cornerPush.velOff = 0
yaccel = .45
fall = 1
air.fall = 1
fall.recover = 0
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=92), var(36):=-35
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4

[State 1200, THE UNBLOCKABLE POKE]
type=hitdef
trigger1= !var(16) && (var(15)<15 || var(20))
trigger1= !Time
triggerall=!Numtarget(1300) && var(10) = 2
ID = 1300
attr = S,SA
hitflag = MF
guardflag = 
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 33, ifElse(var(10), 29, 21)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 33, ifElse(var(10), 29, 21)))), 7
getpower = ifelse(!var(13), 44, 22)*!var(20), 6*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
guard.pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
kill = 0
animtype = Hard
air.animtype = back
fall.animtype = back
ground.type = Low
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = ifelse(var(20), -3.61, -6.89), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(var(20), -3.61, -6.89)
guard.cornerpush.veloff = 0
air.velocity = -3, -4
air.cornerPush.velOff = 0
yaccel = .45
fall = 1
air.fall = 1
fall.recover = 0
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=92), var(36):=-35
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4

[State 3100, HIT YOU]
type=targetstate
trigger1= movehit && numtarget(1300) 
trigger1= target(1300),Movetype=H
trigger1=!(target, time) && !(target, ishelper) 
ID=1300
value=1310
ignorehitpause=1
[State 3100, HIT YOU]
type=changestate
trigger1= movehit && numtarget(1300) 
trigger1= target(1300),Movetype=H
trigger1=!(target, time) && !(target, ishelper) 
value=1301+var(10)
ignorehitpause=1

[State 1000, Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
moveType = I

[State 1000, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 0
ctrl = 1

;Oh, the karate wiener's back.
[Statedef 1301]
type = S
movetype = A
physics = S
anim = 1301
velset = 0, 0
poweradd = 0
sprpriority = 2

[State 0, PosSet]
type = PosSet
trigger1 = 1
y = 0
;ignorehitpause = 
;persistent = 

[State 810, Safety]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 810, More Safety]
type = NotHitBy
trigger1 = 1
value = SCA

[State 810, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 1310

[State 810, Target Facing]
type = TargetFacing
trigger1 = Time <= 1
value = -1

[State 810, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 810, Voice]
type = PlaySnd
trigger1 = !time
value = s50,3
channel = 0

[State 810, Swing Snd]
type = PlaySnd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
trigger3 = AnimElem = 10
value = 1,2
channel = 1

[State 810, Hit Sound]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
value = s2, 1
channel = 2
[State 810, Hit Sound]
type = PlaySnd
trigger1 = AnimElem = 11
value = s2, 1001
channel = 2

[State 810, Hit Spark]
type = Helper
trigger1 = NumTarget && AnimElem = 3
trigger2 = NumTarget && AnimElem = 5
trigger3 = NumTarget && AnimElem = 11
helperType = Normal
stateNo = 8012
ID = 8001
name = "Spark"
posType = P1
pos = 43, -44
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 810, EnvShake]
type = EnvShake
trigger1 = AnimElem = 11
time = 14
freq = 120
ampl = 4

[State 810, Width]
type = Width
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(6) < 0
edge = 55,0

[State 0, TargetBind]
type = TargetBind
trigger1 = anim = 1301 && animelemtime(11)<0
time = 1
pos = 50-ifelse(animelemtime(8)>=0,20,ifelse(animelemtime(6)>=0,16,ifelse(animelemtime(3)>=0,12,ifelse(animelemtime(2)>=0,8,4)))),0
[State 0, TargetBind]
type = TargetBind
trigger1 = anim = 1301 && animelemtime(11)=0
time = 1
pos = 40,0

[State 810, Damage 1]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 3
trigger2 = NumTarget && AnimElem = 5
value = floor(ifElse(11 * fvar(11) < 7, -7, -11 * fvar(11)))
kill = 0

[State 810, Damage 2]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 11
value = floor(ifElse(53 * fvar(11) < 7, -7, -53 * fvar(11)))

[State 810, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElem = 11
value = 35

[State 0, TargetVelSet]
type = Targetvelset
trigger1 = anim = 1301 && animelemtime(11)=1
x = -1.5-(var(10)*.7)
y = -8-(var(10)*1.4)

[State 810, PowerAdd]
type = PowerAdd
trigger1 = NumTarget && AnimElem = 11 && !var(20)
value = 70

[State 810, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElem = 3
trigger2 = NumTarget && AnimElem = 5
trigger3 = NumTarget && AnimElem = 11
value = 1

[State 810, YEET]
type = TargetState
trigger1 = NumTarget && AnimElem = 11
value = 1311

[State 0, TargetVelSet]
type = Targetvelset
trigger1 = animelemtime(11)=1
x = -1.5-(var(10)*.7)
y = -7.4

[State 810, State End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;tbh, Gumball goes HARD
[Statedef 1302]
type = S
movetype = A
physics = S
anim = 1302
velset = 0, 0
poweradd = 0
sprpriority = 2

[State 0, PosSet]
type = PosSet
trigger1 = 1
y = 0
;ignorehitpause = 
;persistent = 

[State 810, Safety]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 810, More Safety]
type = NotHitBy
trigger1 = 1
value = SCA

[State 810, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 1310

[State 810, Target Facing]
type = TargetFacing
trigger1 = Time <= 1
value = -1

[State 810, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 810, Voice]
type = PlaySnd
trigger1 = !time
value = s50,3
channel = 0

[State 810, Swing Snd]
type = PlaySnd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
trigger3 = AnimElem = 6
trigger4 = AnimElem = 8
trigger5 = AnimElem = 14
value = 1,2
channel = 1

[State 810, Hit Sound]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
trigger3 = AnimElem = 7
trigger4 = AnimElem = 9
value = s2, 1
channel = 2
[State 810, Hit Sound]
type = PlaySnd
trigger1 = AnimElem = 15
value = s2, 1001
channel = 2

[State 810, Hit Spark]
type = Helper
trigger1 = NumTarget && AnimElem = 3
trigger2 = NumTarget && AnimElem = 5
trigger3 = NumTarget && AnimElem = 7
trigger4 = NumTarget && AnimElem = 9
trigger5 = NumTarget && AnimElem = 15
helperType = Normal
stateNo = 8012
ID = 8001
name = "Spark"
posType = P1
pos = 43, -44
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 810, EnvShake]
type = EnvShake
trigger1 = AnimElem = 15
time = 14
freq = 120
ampl = 4

[State 810, Width]
type = Width
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(15) < 0
edge = 55,0

[State 0, TargetBind]
type = TargetBind
trigger1 = anim = 1302 && animelemtime(15)<0
time = 1
pos = 50-ifelse(animelemtime(8)>=0,20,ifelse(animelemtime(6)>=0,16,ifelse(animelemtime(3)>=0,12,ifelse(animelemtime(2)>=0,8,4)))),0
[State 0, TargetBind]
type = TargetBind
trigger1 = anim = 1302 && animelemtime(15)=0
time = 1
pos = 40,0

[State 810, Damage 1]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 3
trigger2 = NumTarget && AnimElem = 5
trigger3 = NumTarget && AnimElem = 7
trigger4 = NumTarget && AnimElem = 9
value = floor(ifElse(8 * fvar(11) < 7, -8, -8 * fvar(11)))
kill = 0

[State 810, Damage 2]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 15
value = floor(ifElse(60 * fvar(11) < 7, -7, -60 * fvar(11)))

[State 810, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElem = 15
value = 35

[State 0, TargetVelSet]
type = Targetvelset
trigger1 = anim = 1301 && animelemtime(15)=1
x = -1.5-(var(10)*.7)
y = -8-(var(10)*1.4)

[State 810, PowerAdd]
type = PowerAdd
trigger1 = NumTarget && AnimElem = 15 && !var(20)
value = 70

[State 810, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElem = 3
trigger2 = NumTarget && AnimElem = 5
trigger3 = NumTarget && AnimElem = 7
trigger4 = NumTarget && AnimElem = 9
trigger5 = NumTarget && AnimElem = 15
value = 1

[State 810, YEET]
type = TargetState
trigger1 = NumTarget && AnimElem = 15
value = 1311

[State 0, TargetVelSet]
type = Targetvelset
trigger1 = animelemtime(15)=1
x = -4.5-(var(10)*.7)
y = -8.8

[State 810, State End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;He looks more like Dan this way...
[Statedef 1303]
type = S
movetype = A
physics = S
anim = 1303
velset = 0, 0
poweradd = 0
sprpriority = 2

[State 0, PosSet]
type = PosSet
trigger1 = 1
y = 0
;ignorehitpause = 
;persistent = 

[State 810, Safety]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 810, More Safety]
type = NotHitBy
trigger1 = 1
value = SCA

[State 810, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 1310

[State 810, Target Facing]
type = TargetFacing
trigger1 = Time <= 1
value = -1

[State 810, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 810, Voice]
type = PlaySnd
trigger1 = !time
value = s50,3
channel = 0

[State 810, Swing Snd]
type = PlaySnd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
trigger3 = AnimElem = 6
trigger4 = AnimElem = 8
trigger5 = AnimElem = 12
value = 1,2
channel = 1

[State 810, Hit Sound]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
trigger3 = AnimElem = 7
trigger4 = AnimElem = 9
value = s2, 1
channel = 2
[State 810, Hit Sound]
type = PlaySnd
trigger1 = AnimElem = 14
value = s2, 800
channel = 2

[State 810, Hit Spark]
type = Helper
trigger1 = NumTarget && AnimElem = 3
trigger2 = NumTarget && AnimElem = 5
trigger3 = NumTarget && AnimElem = 7
trigger4 = NumTarget && AnimElem = 9
helperType = Normal
stateNo = 8012
ID = 8001
name = "Spark"
posType = P1
pos = 43, -44
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 810, Width]
type = Width
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(13) < 0
edge = 55,0

[State 0, TargetBind]
type = TargetBind
trigger1 = anim = 1302 && animelemtime(14)<0
time = 1
pos = 50-ifelse(animelemtime(8)>=0,20,ifelse(animelemtime(6)>=0,16,ifelse(animelemtime(3)>=0,12,ifelse(animelemtime(2)>=0,8,4)))),0
[State 0, TargetBind]
type = TargetBind
trigger1 = anim = 1302 && animelemtime(14)=0
time = 1
pos = 40,0

[State 810, Damage 1]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 3
trigger2 = NumTarget && AnimElem = 5
trigger3 = NumTarget && AnimElem = 7
trigger4 = NumTarget && AnimElem = 9
value = floor(ifElse(10 * fvar(11) < 7, -7, -10 * fvar(11)))
kill = 0

[State 810, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElem = 14
value = 35

[State 810, PowerAdd]
type = PowerAdd
trigger1 = NumTarget && AnimElem = 14 && !var(20)
value = 70

[State 810, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElem = 3
trigger2 = NumTarget && AnimElem = 5
trigger3 = NumTarget && AnimElem = 7
trigger4 = NumTarget && AnimElem = 9
value = 1

[State 810, YEET]
type = TargetState
trigger1 = NumTarget && AnimElem = 15
value = 821

[State 810, THROW YOU]
type = ChangeState
trigger1 = !AnimTime
value = 1304
ctrl = 1

; GUMBALL SOMERSAULT but it's special
[Statedef 1304]
type = S
movetype = A
physics = S
velset = 0,0
sprpriority = 0
anim = 820
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

[State 801, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 1, 2
channel = 1

[State 801, Width]
type = Width
trigger1 = AnimElem = 2, < 0
edge = 50,0

[State 801, TargetBind]
type = TargetBind
trigger1 = animelem=1
time = 4
pos = 70,0

[State 801, TargetBind2]
type = TargetBind
trigger1 = animelem=2
time = 4
pos = -14,-49.5

[State 801, TargetBind3]
type = TargetBind
trigger1 = animelem=3
time = 4
pos = -51,-51

[State 801, TargetBind4]
type = TargetBind
trigger1 = animelem=4
time = 4
pos = -95,-47

[State 801, TargetBind5]
type = TargetBind
trigger1 = animelem=5
time = 4
pos = -100,0

[State 0, TargetVelSet]
type = TargetVelSet
trigger1 = animelem=5
x = 6
y = -2

[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = animelem = 3
value = -85

[State 0, TargetDrop]
type = TargetDrop
trigger1 = animelem=5
excludeID = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S20,17
volume = 255
channel = -1
;lowpriority = -1
;ignorehitpause = 
;persistent = 


[State 801, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;the Victim
[Statedef 1310]
type = A
movetype = H
physics = N
velset = 0, 0
sprpriority = 0
[State 802, Anim]
type = changeanim2
trigger1 = !time
value = 1310
[State Safety]
type = selfstate
trigger1 = time >= 160
value = ifelse(pos y < 0, 5040, 0)
ctrl = 1

;to send one flying	
; (a custom gethit state)
; Description: This state has the opponent flying through the air and
;     falling down onto the ground. The SelfState controller sets the
;     opponent back using to his own state file when he his the ground.
;     Controllers 821,2 and 821,3 allow the opponent to recover by
;     hitting his recovery command when he is falling.
[Statedef 1311]
type = A
movetype = H
physics = N
ctrl = 0
sprpriority = 1
[State 1902, 0]
type = ChangeAnim
trigger1 = !time
value = 5051
[State 1902, 0]
type = ChangeAnim
trigger1 = vel y >=-3 && anim!= 5061
value = 5061
[State 205, 6]
type = VelAdd
trigger1 = time
y = .5
[State 5020, 5]
type = SelfState
trigger1 = pos y >= 0 && time>=6
value = 5100

;---------------------------------------------------------------------------
;EX Gum Retsu Ken
[Statedef 1350]
type=S
physics=S
movetype=A
ctrl=0
velset=0,0
sprpriority=1
poweradd=ifelse(var(53),0,-500)
facep2=1

[State 1050, MAX Timer Drain]
type = VarAdd
trigger1 = !Time
trigger1 = var(53) > 0
var(53) = -500

[State 1050, Anim]
type=changeanim
trigger1=!time
value=1350

[State 1050,Posset]
type=posset
trigger1=!time
y=0

[State 210,Posadd]
type=posadd
trigger1=animelem=2
trigger2=animelem=3
x=15
[State 210,Velset]
type=Velset
trigger1=animelem=3
x=10
[State 210,Velset]
type=Veladd
trigger1=animelem>=3
x=-0.4

[State 105, Woosh]
type = helper
trigger1 = animelemtime(2) = 1
stateno = 8103
ID = 8100
name = "Dash Dust"
postype = p1
facing = 1
pausemovetime = 255
supermovetime = 255
ownpal = 1

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

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 101,0
channel = 0

[State 1200, THE POKE]
type=hitdef
trigger1= !var(16) && (var(15)<15 || var(20))
trigger1= !Time
triggerall= !Numtarget(1300) && var(13) <= 6
ID = 1300
attr = S,SA
hitflag = HAF
guardflag = M
damage = ceil(44 * fvar(11)), 7
getpower = 0,0
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
guard.pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
kill = 0
animtype = Hard
air.animtype = back
fall.animtype = back
ground.type = Low
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = ifelse(var(20), -3.61, -6.89), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(var(20), -3.61, -6.89)
guard.cornerpush.veloff = 0
air.velocity = -3, -4
air.cornerPush.velOff = 0
yaccel = .45
fall = 1
air.fall = 1
fall.recover = 0
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=92), var(36):=-35
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4

[State 3100, HIT YOU]
type=targetstate
trigger1= movehit && numtarget(1300) 
trigger1= target(1300),Movetype=H
trigger1=!(target, time) && !(target, ishelper) 
ID=1300
value=1310
ignorehitpause=1
[State 3100, HIT YOU]
type=changestate
trigger1= movehit && numtarget(1300) 
trigger1= target(1300),Movetype=H
trigger1=!(target, time) && !(target, ishelper) 
value=1351
ignorehitpause=1

[State 1000, Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
moveType = I

[State 1000, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 0
ctrl = 1

;DEDDORI REIBU
[Statedef 1351]
type = S
movetype = A
physics = S
anim = 1351
velset = 0, 0
poweradd = 0
sprpriority = 2

[State 0, PosSet]
type = PosSet
trigger1 = 1
y = 0
;ignorehitpause = 
;persistent = 

[State 810, Safety]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 810, More Safety]
type = NotHitBy
trigger1 = 1
value = SCA

[State 810, Stunned]
type = TargetState
trigger1 = !Time && NumTarget
value = 1310

[State 810, Target Facing]
type = TargetFacing
trigger1 = Time <= 1
value = -1

[State 810, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 0, PalFX]
type = PalFX
trigger1 = animelemtime(3) = [0,7]
time = 1
add = 256-(time-124)*16,256-(time-124)*16,256-(time-124)*16
[State 810, Transform]
type = PlaySnd
trigger1 = animelem = 3
value = s0,1001

[State 810, The Karate Wieners...]
type = PlaySnd
trigger1 = animelem = 3
value = s5,4
[State 810, HAVE RETURNED]
type = PlaySnd
trigger1 = animelem = 19
value = s5,5

[State 210, Inch Forwards]
type=posadd
trigger1 = AnimElem = 9
trigger2 = AnimElem = 10
trigger3 = AnimElem = 11
trigger4 = AnimElem = 13
trigger5 = AnimElem = 16
trigger6 = AnimElem = 18
trigger7 = AnimElem = 21
x=8

[State 810, Swing Snd]
type = PlaySnd
trigger1 = AnimElem = 9
trigger2 = AnimElem = 10
trigger3 = AnimElem = 11
trigger4 = AnimElem = 13
trigger5 = AnimElem = 16
trigger6 = AnimElem = 18
trigger7 = AnimElem = 21
value = 1,2
channel = 1

[State 810, Hit Sound]
type = PlaySnd
trigger1 = AnimElem = 9
trigger2 = AnimElem = 10
trigger3 = AnimElem = 11
trigger4 = AnimElem = 13
trigger5 = AnimElem = 16
trigger6 = AnimElem = 18
value = s2, 1000
channel = 2
[State 810, Hit Sound]
type = PlaySnd
trigger1 = AnimElem = 22
value = s2, 11
channel = 2

[State 810, Hit Spark]
type = Helper
trigger1 = NumTarget && AnimElem = 9
trigger2 = NumTarget && AnimElem = 10
trigger3 = NumTarget && AnimElem = 11
trigger4 = NumTarget && AnimElem = 13
trigger5 = NumTarget && AnimElem = 16
trigger6 = NumTarget && AnimElem = 18
helperType = Normal
stateNo = 8012
ID = 8001
name = "Spark"
posType = P1
pos = 43, -44
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1
[State 810, Bigger Hit Spark]
type = Helper
trigger1 = NumTarget && AnimElem = 22
helperType = Normal
stateNo = 8013
ID = 8001
name = "Spark"
posType = P1
pos = 43, -44
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 810, Light EnvShake]
type = EnvShake
trigger1 = AnimElem = 9
trigger2 = AnimElem = 10
trigger3 = AnimElem = 11
trigger4 = AnimElem = 13
trigger5 = AnimElem = 16
trigger6 = AnimElem = 18
time = 4
freq = 90
ampl = 4
[State 810, EnvShake]
type = EnvShake
trigger1 = AnimElem = 19
time = 30
ampl = 2
freq = 180
phase = 40
[State 810, EnvShake]
type = EnvShake
trigger1 = AnimElem = 22
time = 14
freq = 120
ampl = 4

[State 810, Width]
type = Width
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(22) < 0
edge = 55,0

[State 0, TargetBind]
type = TargetBind
trigger1 = anim = 1351 && animelemtime(22)<0
time = 1
pos = 50-ifelse(animelemtime(8)>=0,20,ifelse(animelemtime(6)>=0,16,ifelse(animelemtime(3)>=0,12,ifelse(animelemtime(2)>=0,8,4)))),0
[State 0, TargetBind]
type = TargetBind
trigger1 = anim = 1351 && animelemtime(22)=0
time = 1
pos = 40,0

[State 810, Damage 1]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 9
trigger2 = NumTarget && AnimElem = 10
trigger3 = NumTarget && AnimElem = 11
trigger4 = NumTarget && AnimElem = 13
trigger5 = NumTarget && AnimElem = 16
trigger6 = NumTarget && AnimElem = 18
value = floor(ifElse(5 * fvar(11) < 7, -5, -5 * fvar(11)))
kill = 0

[State 810, Damage 2]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 22
value = floor(ifElse(60 * fvar(11) < 7, -7, -60 * fvar(11)))

[State 810, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElem = 9
trigger2 = NumTarget && AnimElem = 10
trigger3 = NumTarget && AnimElem = 11
trigger4 = NumTarget && AnimElem = 13
trigger5 = NumTarget && AnimElem = 16
trigger6 = NumTarget && AnimElem = 18
trigger7 = NumTarget && AnimElem = 22
value = 1

[State 0, HitAdd]
type = VarAdd
trigger1 = NumTarget && AnimElem = 22
var(13) = 2
ignorehitpause = 1

[State 810, YEET]
type = TargetState
trigger1 = NumTarget && AnimElem = 22
value = 1158

[State 0, PalFX]
type = PalFX
trigger1 = animelemtime(25) = [0,7]
time = 1
add = 256-(time-124)*16,256-(time-124)*16,256-(time-124)*16
[State 810, Transform]
type = PlaySnd
trigger1 = animelem = 25
value = s0,1001

[State 810, State End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;the Victim
[Statedef 1158]
type = A
movetype = H
physics = N
velset = -1.5,-14.4
poweradd = 40

[State 820, 1]
type = ChangeAnim2
Trigger1 = !Time
value = 1352

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0
ignorehitpause = 1

[State LOL ABK]
type = VelMul
trigger1 = 1
x = 0.98
[State 821, 1] ;Gravity
type = VelAdd
Trigger1 = 1
y = .713

[State FALL DAMAGE]
type = LifeAdd
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = -55
kill = 1
[State 810, EnvShake]
type = EnvShake
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
time = 14
freq = 120
ampl = 15

[State 821, 4] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground

;---------------------------------------------------------------------------
;Ragedrive: The Morning Aftersnack
[Statedef 1500]
type=S
physics=S
movetype=A
ctrl=0
velset=0,0
sprpriority=1
poweradd=-500;72*!var(20)
facep2=1

[state 1000,Posset]
type=posset
trigger1=!time
y=0

[State 1050, Rage spent]
type = VarSet
trigger1 = !Time
trigger1 = var(41) = 1
var(41) = 2

[state 1000,Posset]
type=posadd
trigger1=time = [4,16]
x=5
[state 1000,Posset]
type=posadd
trigger1=animelem = 13
x=18

[State 1500, RageFX]
type = varset
trigger1 = !time
var(45) = 44

[State 1500, RageFX]
type = explod
trigger1 = !time
anim = 8211
sprpriority = 3
postype = p1
pos = 0, 0
scale = 0.6, 0.6
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1300, Ragesnd]
type=PlaySnd
trigger1 =!time
value=0,1002

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 1500

[State 191,PlaySnd]
type= PlaySnd
trigger1=animelem = 3
value=S2,3000

[State 0, Explod]
type = Explod
trigger1=animelem = 3
anim = 8351
ID = 915
pos = 15,-0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = .5,1
sprpriority = 6
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, EnvShake]
type = EnvShake
trigger1=animelem = 3
time = 8
freq = 255
ampl = 14

[State 3100, NotHitBy]
type=NotHitBy
trigger1=AnimElemTime(5) < 1
time=1
value=SCA

[State 3200, Velocity]
type = VelSet
trigger1 = AnimElemTime(5) >= 0 
x = 9.65
y = 0

[State 3200, Hits] 
type = HitDef
trigger1 = AnimElemTime(5) >= 0
trigger1 = !(Time %5)
attr = S, SA
damage = ceil(ifElse(fvar(11) * 12 < 7, 7, fvar(11) * 12)), 2
priority = 4, hit
animtype = Hard
getpower = 0, 0
givepower = 35, 35
guardflag = M
hitflag = MAF
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
pausetime = 4,6
guard.pausetime = 4,6
sparkNo =  -1 + 0*(var(33):=8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -60
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.slidetime = 18
ground.hittime  = 18
guard.hittime = 18
ground.velocity = -7
air.velocity = -5.65, -1.5
guard.velocity = -8
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
envshake.ampl = 4
envShake.freq = 120

[State 3200, End]
type = ChangeState
trigger1 = AnimElemTime(5) >= 0
trigger1 = Time > 60
value = 1501

;nom
[Statedef 1501]
type = S
movetype = A
physics = N;needed no physics for this last bit though
ctrl = 0
poweradd = 0
anim = 1501
velset = 0, 0
sprpriority = 2

[State 3205, Velocity]
type = VelSet
trigger1 = AnimElem = 1 
x = 5

[State 3100, Position]
type=PosAdd
trigger1=animelem=2||animelem=3||animelem=4
x=Ifelse((animelem=2),22,12)

[State 3205, Velstop]
type = VelSet
trigger1 = AnimElem = 3 
x = 0

[State 3205, Land Snd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 52,0

[State 3205, Landing Dust Explod]
type = Explod
trigger1 = AnimElem = 3
anim = 8102
sprpriority = -3
postype = P1
pos = 12,-ceil(pos y)
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 191,PlaySnd]
type= PlaySnd
trigger1=animelemtime(7) = 2
value=S2,3000

[State 0, Explod]
type = Explod
trigger1=animelemtime(7) = 2
anim = 8351
ID = 915
pos = 15,-0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = .5,1
sprpriority = 6
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, EnvShake]
type = EnvShake
trigger1=animelemtime(7) = 2
time = 8
freq = 255
ampl = 14

[State 3205, Hit] 
type = HitDef
trigger1 = !time
attr = S, SA
damage = ceil(ifElse(fvar(11) * 24 < 7, 7, fvar(11) * 24)), 3
priority = 4, hit
animtype = Diagup
getpower = 0, 0
givepower = 35, 35
guardflag = M
hitflag = MAF
hitsound = -1 + 0*(var(31):=11)
guardsound = -1 + 0*(var(32):=0)
pausetime = 24,24
guard.pausetime = 12,12
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 120), var(36) := -76
air.animtype = Diagup
fall.animtype = Diagup
ground.type = High
air.type = Low
ground.slidetime = 18
ground.hittime  = 18
guard.hittime = 18
ground.velocity = -9, -6.5
air.velocity = -9, -6
guard.velocity = -15
ground.cornerPush.velOff = 0
guard.cornerPush.velOff = 0
air.cornerPush.velOff = 0
yaccel = .58
fall = 1
fall.recover = 0
forcestand = 1
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envshake.time = 16
envshake.ampl = 4
envShake.freq = 120

[State 3205, PosAdd] 
type = PosAdd
trigger1 = AnimElem = 6
x = -15

[State 3205, End]
type = ChangeState
trigger1 = !AnimTime 
value = 0
ctrl = 1












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
damage =ceil(ifelse(fvar(11) * 30 < 7, 7, fvar(11) * 30)), 7
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
envshake.time = 14
envshake.ampl = 4
envshake.freq = 120
p2stateno = 1158

[STATE 2910,IDLE]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
movetype = I

[STATE 2910,CHANGE STATE]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1
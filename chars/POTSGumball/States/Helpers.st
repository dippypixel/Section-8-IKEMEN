; _________________________________________
;| Character by JStudios2k, Edited from Cattigan619 and MGSSJ2                |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;=======================================< HELPER STATES >========================================
;==============================================================================================

;Palette Selector (Saikou Shiva, 2023)
[Statedef 9256]
physics = N
anim = 9256
velset=0,0
sprpriority=99999
 
[State 256, PosSet]
type = PosSet
trigger1 =!time 
x = root,facing*-70
y = 20
ignorehitpause = 1

[State 256, AS]
type=assertspecial
trigger1=1
flag=intro
flag2=noshadow
[State 256, Reset]
type=varset
trigger1=!time
var(29)=200
[State 256, Pal]
type=varset
trigger1=!time
fvar(0)=root,palno
[State 256, Pal]
type=varset
trigger1=!time
fvar(27)=root,fvar(27)

[State 256, Varset]
type=varset
trigger1=fvar(0)<1||fvar(0)>fvar(27)
fvar(0)=1+(fvar(0)<1)*((fvar(27))-1)

[State 256, PlaySnd]
type = PlaySnd
trigger1 =var(10)=2 
value = S256,0
volumescale = 75
channel = 20
[State 256, PlaySnd]
type = PlaySnd
triggerall=ishelper(256)
trigger1=root,command="a"||root,command="b"||root,command="c"||root,command="x"||root,command="y"||root,command="z"||root,command="s"||roundstate=2
trigger2=var(29)<=5
value = S256,1
volumescale = 75
channel = 20
persistent =0 

[State 256, Timer]
type = VarAdd
trigger1 =1 
var(29)=-1
[State 256, Timer]
type = VarAdd
trigger1=!var(10)&&var(29)<150
trigger1=root,command="holdup"||root,command="holddown"||root,command="holdback"||root,command="holdfwd"
var(29)=25

[State 256, Varadd]
type=varadd
trigger1=!var(10)
trigger1=root,command="holdup"||root,command="holddown"||root,command="holdback"||root,command="holdfwd"
fvar(0)=1-(root,command="holddown"||root,command="holdback"&&facing=1||root,command="holdfwd"&&facing=-1)*2

[State 256, Varadd]
type=varadd
trigger1=(root,command="holdup"||root,command="holddown"||root,command="holdback"||root,command="holdfwd")&&!var(10)||var(10)
var(10)=1

[State 256, Varset]
type=varset
trigger1=!time||var(10)>=17
var(10)=0

[State 256, End]
type=changestate
triggerall=ishelper(256)
trigger1=root,command="a"||root,command="b"||root,command="c"||root,command="x"||root,command="y"||root,command="z"||root,command="s"||roundstate=2
trigger2=var(29)<=0
trigger3=root, var(56) = 3
trigger4=root,AILevel
value = 9257

[State 256, End]
type=destroyself
triggerall=ishelper(256) && root, var(56) = 1
trigger1=root, var(56) < 3
trigger1=root,command="a"||root,command="b"||root,command="c"||root,command="x"||root,command="y"||root,command="z"||root,command="s"||roundstate=2
trigger2=root, var(56) < 3
trigger2=var(29)<=0
trigger3=root,AILevel


;Mode Select (Saikou Shiva, 2023)
[Statedef 9257]
physics = N
anim = 9257+root,var(54)
velset=0,0
sprpriority=99999

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 0.87,0.87
ignorehitpause = 1
;persistent = 
 
[State 257, PosSet]
type = PosSet
trigger1 =!time 
x = root,facing*-70
y = -18
ignorehitpause = 1

[State 257, AS]
type=assertspecial
trigger1=1
flag=intro
flag2=noshadow
[State 257, Reset]
type=varset
trigger1=!time
var(29)=150
[State 257, Locking System]
type=varset
trigger1=!time
var(11)=parent,var(55)
[State 257, Reset]
type=parentvarset
trigger1=1
var(54)=(anim-9257)

[State 257, Varset]
type=varset
trigger1 =var(10)=1
var(10)= Ifelse(var(11)=0,1,0)
[State 257, ChangeAnim]
type = ChangeAnim
trigger1 =var(10)=1
value = Ifelse(anim=9257,9258,Ifelse(anim=9258,9259,9257))

[State 257, PlaySnd]
type = PlaySnd
trigger1 =var(10)=2 
value = S257,0
volumescale = 50
channel = 25
[State 257, PlaySnd]
type = PlaySnd
triggerall = time >= 8
trigger1=root,command="a"||root,command="b"||root,command="c"||root,command="x"||root,command="y"||root,command="z"||root,command="s"||roundstate=2
trigger2=var(29)<=5
value = S257,1
volumescale = 50
channel = 20
persistent =0 

[State 257, Timer]
type = VarAdd
trigger1 =1 
var(29)=-1
[State 257, Timer]
type = VarAdd
trigger1=!var(10)&&var(29)<100
trigger1=root,command="holdup"||root,command="holddown"||root,command="holdback"||root,command="holdfwd"
var(29)=20

[State 257, Varadd]
type=varadd
trigger1=(root,command="holdup"||root,command="holddown"||root,command="holdback"||root,command="holdfwd")&&!var(10)||var(10)
var(10)=1

[State 257, Varset]
type=varset
trigger1=!time||var(10)>=17
var(10)=0

[State 257, End]
type=destroyself
trigger1=root,AILevel
[State 257, Change]
type=destroyself
trigger1=root,command="a"||root,command="b"||root,command="c"||root,command="x"||root,command="y"||root,command="z"||(var(29)<=140&&root,command="s")||roundstate=2
trigger2=var(29)<=0
trigger3 = root, var(56) =1

;========================<PROJECTILES>=============================
;Hadouken the fireball
[Statedef 1005]
type = S
physics = N
movetype = A
anim = 1005
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

[State 1005, temp - MAXMODE on?]
type = varset
trigger1 = !time
var(53) = root, var(53)
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

[State -3, Trigger Afterimage]
type = afterimage
trigger1 = var(53)
time = 2
timegap = 1
framegap = 10
length = 21
palbright = 0, 0, 0
palcontrast = 160, 32, 32
palpostbright = 0, 0, 0
paladd = 0, 0, 0
palmul = 0.75, 0.75, 0.75
trans = add1

[State 1005, Vel]
type = velset
trigger1 = 1
x = ifelse(var(10) = 3, 6, ifelse(var(10) = 2, 4.5, 3))+(ifelse(var(53),2.45,0))
y = 0

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
value = 2, ifelse(var(53),3000,6)
persistent = 0
ignorehitpause = 1

[State 1005, Hit]
type = hitdef
trigger1 = 1
priority = 4, Hit
attr = S, SP
damage = ceil(77 * (ifelse(var(53),1.3,1)) * root,fvar(11)), 7
animtype = Hard
hitflag = MAF
guardflag = MA
pausetime = 0, 12 / ((root, var(20) > 0) + 1)
sparkno = -1 
guard.sparkno = -1 
sparkxy = -10, 0
guardsound = s3, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -10.52, 0
ground.cornerpush.veloff = 0
air.velocity = -4, -4
fall = var(53)
air.fall = 1
fall.recover = 1
fall.recovertime = 30
getpower = ifelse(p2movetype = H, 72, 144) * !(root, var(20)), 36 * !(root, var(20))
givepower = 36, 36
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = ifelse((root, var(20)), -4, -8), -1.5
forcestand = 1

[State 1005, Miss]
type = hitdef
trigger1 = numenemy
trigger1 = (enemynear, stateno = [5070, 5071])
attr = S, SP
hitflag = 

[State 1005, End]
type = changestate
trigger1 = movecontact
value = 1006
ignorehitpause = 1
[State 1005, End]
type = destroyself
trigger1 = pos x != [ -200, 200]

;BIG HEAD
[Statedef 1010]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 4

[State 1015, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = ifelse(var(2) < 2, 1010, 1006)
ignorehitpause = 1
[State 1015, hitby]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 1015, Strength]
type = varset
trigger1 = !time && !prevstateno
var(10) = 4
[State 1015, Anim]
type = changeanim
trigger1 = !time && !prevstateno
value = 1010

[State 1015, hitvar]
type = varadd
trigger1 = !time
var(2) = 1
[State 1015, movehitvar]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1

[State 1015, Vel]
type = velset
trigger1 = 1
x = ifelse((time < 2 && var(2) > 1), 1, 7)
y = 0

[State 1015, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 1015, HitSound]
type = playsnd
trigger1 = movehit && numtarget
trigger1 = target, time = 0 && target, movetype = H
value = 2, 3000
channel = 1
persistent = 0
ignorehitpause = 1

[State 1015, Hit]
type = hitdef
trigger1 = 1
priority = 4, Hit
attr = S, SP
damage = ceil(49 * root, fvar(11)), 7
animtype = Diagup
hitflag = MAF
guardflag = MA
pausetime = 4 * (var(2) < 2), 10
sparkno = s8010
guard.sparkno = -1
sparkxy = -10, 0
guardsound = s3, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -4, -5.555
ground.cornerpush.veloff = 0
air.velocity = -4, -4
fall = 1
fall.recover = 1
fall.recovertime = 22
getpower = 0,0
givepower = 36, 36
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
palfx.color = 32
palfx.sinadd = 0, 60, 110, 8
palfx.mul = 256, 256, 512
palfx.time = 32
sprpriority = 4
yaccel = 0.4
airguard.ctrltime = 16
airguard.velocity = ifelse((root, var(20)), -4, -8), -1.5
forcestand = 1

[State 1015, Miss]
type = hitdef
trigger1 = numenemy
trigger1 = (enemynear, stateno = [5070, 5071])
attr = S, SP
hitflag = 

[State 1015, End]
type = changestate
trigger1 = movecontact
value = ifelse(var(2) < 2, 1010, 1006)
[State 1015, End]
type = destroyself
trigger1 = pos x != [ -200, 200]

;hol up
[StateDef 1006]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
moveHitPersist = 1

[State 1006, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 1006, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
ignorehitPause = 1

[State 1006, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1006, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
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

[State 1006, HitCount]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1

[State 1006, Juggle Points]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(15) = 1

[State 1006, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1

[State 1006, ProjContact]
type = ParentVarSet
trigger1 = MoveContact && NumTarget
trigger1 = Root, StateNo = 1000
var(18) = 1

[State 1006, End]
type = ChangeState
trigger1 = Time >= 0
value = 1007

;adios
[StateDef 1007]
type = A
physics = N
moveType = A
anim = 1006
ctrl = 0
velSet = 0,0
sprPriority = 3
moveHitPersist = 1

[State 1007, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 2,6
channel = 3
volume = -128
lowPriority = 1

[State 1007, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 1007, End]
type = ChangeState
trigger1 = !AnimTime
value = 1008

;hmmm
[StateDef 1008]
type = A
physics = N
moveType = A
anim = 1
ctrl = 0
velSet = 0,0

[State 1008, End]
type = DestroySelf
trigger1 = !NumTarget
trigger2 = NumTarget
trigger2 = Target, Time <= 1 && !(Target,HitShakeOver)

;BLAST
[Statedef 3005]
type = S
physics = N
movetype = A
anim = 3005
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

[State 1005, movehitvar]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1

[State 1005, Vel]
type = velset
trigger1 = 1
x = ifelse(var(10) = 3, 6, ifelse(var(10) = 2, 4.5, 3))
y = 0

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

[State 1005, Hit]
type = hitdef
trigger1 = !time
priority = 4, Hit
attr = S, HP
damage = ceil(15 * root,fvar(11)), 2
animtype = Back
hitflag = MAF
guardflag = MA
pausetime = 0, 12 / ((root, var(20) > 0) + 1)
sparkno = -1 
guard.sparkno = -1 
sparkxy = -10, 0
guardsound = s3, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -10.52, -4
ground.cornerpush.veloff = 0
air.velocity = -4, -4
fall = 1
air.fall = 1
fall.recover = 1
fall.recovertime = 30
getpower = 0,0
givepower = 36, 36
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
palfx.color = 32
palfx.sinadd = 0, 60, 110, 8
palfx.mul = 256, 256, 512
palfx.time = 32
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = ifelse((root, var(20)), -4, -8), -1.5
forcestand = 1

[State 1006, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = 100 + 0*(var(35):=63), var(36):=-27
facing = 1
ownPal = 1
size.xscale=1
size.yscale=1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1006, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
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

[State 1005, Miss]
type = hitdef
trigger1 = numenemy
trigger1 = (enemynear, stateno = [5070, 5071])
attr = S, SP
hitflag = 

[State 1005, End]
type = changestate
trigger1 = !animtime
value = 1008
ignorehitpause = 1

;I'MMA FIRIN MA LAZOR
[Statedef 3008]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 4

[State 5900, Palette]
type = remappal
trigger1 = !time
source = 8150, 0
dest = 8150, 0

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 1, 1
ignorehitpause = 1
persistent = 1
[State 3055, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 3008
ignorehitpause = 1
[State 3055, hitby]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 1000, Snd]
type = playsnd
trigger1 = !time
value = 1,27
loop = 0
channel = 3
persistent = 0
[State 3055, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1
[State 3055, Bind]
type = bindtoroot
trigger1 = 1
pos = 33, -40

[State 3055, Strength]
type = varset
trigger1 = var(10) != 7
var(10) = 7
[State 3055, Anim]
type = changeanim
trigger1 = !time && !prevstateno
value = 3705

[State 3055, movehitvar]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1
[State 3055, movehitvar2]
type = varset
trigger1 = !time && prevstateno
var(4) = animelemno(0)
ignorehitpause = 1

[State 3055, HitSound]
type = playsnd
trigger1 = (time%3)
trigger1 = movehit && numtarget
trigger1 = !(target, time) && target, movetype = H
value = 2, 6
channel = 1
ignorehitpause = 1

[State 3055, Hit]
type = hitdef
triggerall = animelemno(0) != var(4)
trigger1 = animelem = 1 ||  animelem = 4 || animelem = 7 || animelem = 10 || animelem = 13 || animelem = 16 || animelem = 19
attr = S, HP
;damage = ceil(ifelse((root, fvar(12)) * 44 < 7, 7, (root, fvar(12)) * 44)), 8
;damage = ceil(44 * root, fvar(12)), 7
damage = ifelse ( root,stateno=3060, 36, ceil(36 * root, fvar(11))), 8
animtype = Hard
fall.animtype = Hard
hitflag = MAF
guardflag = M
priority = 4, Hit
pausetime = 2, 2
guard.dist = 320
sparkno = -1
guard.sparkno = -1
guardsound = s3, 0
ground.type = Low
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -3, -1
ground.cornerpush.veloff = 0
guard.velocity = -10.52
air.velocity = -3, -1
down.velocity = -15, -.5
getpower = 0
givepower = 36, 36
fall = 1
fall.recover = 0
sprpriority = 4
yaccel = 0.5
forcestand = 1
palfx.color = 128
palfx.sinadd = 0+(root,var(1)=2)*64, 64-(root,var(1)=2)*64, 64, 4
palfx.mul = 0+(root,var(1)=2)*192, 96-(root,var(1)=2)*96, 192-(root,var(1)=2)*96
palfx.time = 48
envshake.time = 6
envshake.freq = 120
envshake.ampl = 4

[State 3055, Hit]
type = hitdef
trigger1 = animelemno(0) != var(4)
trigger1 = animelem = 22
attr = S, HP 
;damage = ceil(ifelse((root, fvar(12)) * 50 < 7, 7, (root, fvar(12)) * 50)), 8
damage = ifelse ( root,stateno=3060, 80, ceil(53 * root, fvar(11))), 10
animtype = Diagup
fall.animtype = Diagup
hitflag = MAF
guardflag = M
priority = 4, Hit 
pausetime = 2, 2
guard.dist = 320
sparkno = -1
guard.sparkno = -1
guardsound = s3, 0
ground.type = Low
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -7, -9
ground.cornerpush.veloff = 0
guard.velocity = -10.52
air.velocity = -7, -9
down.velocity = -7, -9
getpower = 0
givepower = 36, 36
fall = 1
fall.recover = 0
sprpriority = 4
yaccel = 0.5
forcestand = 1
palfx.color = 50
palfx.sinadd = 0, 25, 80, 8
palfx.mul = 128, 256, 512
palfx.time = 48
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4

;[State 3055, Sparks]
;type = explod
;trigger1 = movecontact = 1 && numtarget
;trigger1 = (target, movetype = H) && !(target, time)
;anim = ifelse(moveguarded, 7001, 7030 + (random % 8))
;ID = 7000
;sprpriority = 5
;postype = p2
;pos = (target, const(size.ground.front) -10), (target, const(size.mid.pos.y))
;removetime = -2
;ownpal = 1
;facing = -1
;ignorehitpause = 1
;pausemovetime = 100
;supermovetime = 100

[State 3005, hitspark]
type = helper
trigger1 = (time%3)
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
trigger1 = MoveContact = 1 && NumTarget && (root, var(29))
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

[State 3005, flames]
type = helper
trigger1 = movehit && numtarget && numhelper(8150) < 1
trigger1 = !(target, time) && (target, movetype = H) && !var(16)
helpertype = normal
stateno = 8150
ID = 8150
name = "flames"
postype = p2
bindtime = 1000
ownpal = 1
facing = -1
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1

[State 3006, Parent Hit Count]
type = ParentVarAdd
trigger1 = MoveContact = 1 && NumTarget
var(13) = 1
[State 3006, Self Hit Count]
type = VarAdd
trigger1 = MoveContact = 1 && NumTarget
var(13) = 1
[State 3006, Juggle Points]
type = ParentVarAdd
trigger1 = MoveContact = 1 && NumTarget
var(15) = 1

[State 3055, End]
type = changestate
trigger1 = !animtime || root,anim != 3050
value = 3706

;ending
[Statedef 3706]
type = A
physics = N
movetype = I
ctrl = 0
velset = 0, 0
sprpriority = 4
anim = 3706

[State 1000, Snd]
type = stopsnd
trigger1 = animelem = 2
channel = 3
persistent = 0
[State 0, AngleDraw]
type = AngleDraw
trigger1 = time
scale = 1, 1
ignorehitpause = 1
persistent = 1
[State 3056, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 3056, End]
type = destroyself
trigger1 = !animtime

;Clayton
[Statedef 3015]
type    = S
movetype= A
physics = N
juggle  = 0 ; 0
velset = 0,0
ctrl = 0
anim = 3015
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

[State 0, Explod]
type = Explod
trigger1 = !movecontact
trigger1 = time % (3-(var(2)>=1)) = 0
anim = 8100
ID = 8100
pos = -20,-16
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = -9,0
random = -1,0
removetime = -2
pausemovetime = 0
scale = .5,.5
sprpriority = -1
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 1005, HitOverride]
type = hitoverride
trigger1 = 1
attr = SCA, AA, AP, AT
time = -1
stateno = 3016

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

[State 0, VelSet]
type = VelSet
trigger1 = 1
x = 5

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
trigger1 = time = ifelse((!var(10)),44,ifelse((var(10))=1,61,77))
trigger2 = movecontact
value = 3016
ctrl = 0
;anim =
;ignorehitpause =
;persistent =

;Explod (literally)
[Statedef 3016]
type    = S
movetype= A
physics = N
juggle  = 0 ; 0
velset = 0,0
ctrl = 0
anim = 3016
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

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 7300
ID = 7300
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 10,0
accel = 0,0
random = 0,0
removetime = 10
pausemovetime = 0
scale = 0.1,0.1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
[State 0, Explod]
type = Explod
trigger1 = !time
anim = 7300
ID = 7300
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 7.5,7.5
accel = 0,0
random = 0,0
removetime = 10
pausemovetime = 0
scale = 0.1,0.1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
[State 0, Explod]
type = Explod
trigger1 = !time
anim = 7300
ID = 7300
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,10
accel = 0,0
random = 0,0
removetime = 10
pausemovetime = 0
scale = 0.1,0.1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
[State 0, Explod]
type = Explod
trigger1 = !time
anim = 7300
ID = 7300
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = -7.5,7.5
accel = 0,0
random = 0,0
removetime = 10
pausemovetime = 0
scale = 0.1,0.1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
[State 0, Explod]
type = Explod
trigger1 = !time
anim = 7300
ID = 7300
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = -10,0
accel = 0,0
random = 0,0
removetime = 10
pausemovetime = 0
scale = 0.1,0.1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
[State 0, Explod]
type = Explod
trigger1 = !time
anim = 7300
ID = 7300
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = -7.5,-7.5
accel = 0,0
random = 0,0
removetime = 10
pausemovetime = 0
scale = 0.1,0.1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
[State 0, Explod]
type = Explod
trigger1 = !time
anim = 7300
ID = 7300
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,-10
accel = 0,0
random = 0,0
removetime = 10
pausemovetime = 0
scale = 0.1,0.1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
[State 0, Explod]
type = Explod
trigger1 = !time
anim = 7300
ID = 7300
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 7.5,-7.5
accel = 0,0
random = 0,0
removetime = 10
pausemovetime = 0
scale = 0.1,0.1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 1000, The Hit]
type = Hitdef
trigger1 = !time
attr = S, HP
damage= floor(178*root,fvar(11)), 40
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
hitsound = -1
guardsound = S3,0
ground.type = Low
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
palfx.time = 32
palfx.mul = 128, 128, 128
palfx.sinadd = 96, 96, 96, 4
forcestand = 1
yaccel = .5
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
trigger1 = root, stateno = 3010
var(18) = 1

[State 1006, HitSound]
type = playsnd
trigger1 = movecontact = 1 && numtarget
trigger1 = !(target, hitshakeover)
value = ifelse(moveguarded, 130, 2), ifelse(moveguarded, 1, 6)
channel = 2
ignorehitpause = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = !animtime
;ignorehitpause =
;persistent =

;sudo spawn(tank)
[Statedef 3112]
type = S
movetype = A
physics = S
velset = 0,0
sprpriority = 5
anim = 16210
ctrl = 0
poweradd= 0

[State 0, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
facing = 1
pos = 0,0

[State 0, HitDef]
type = HitDef
trigger1 = time % 5 = 0
attr = S,SA
hitflag = MAFD
guardflag = M
ground.type = Low
air.type = Low
damage = 6,1
hitsound = S2,3000
guardsound = S3,0
getpower = 0,0
pausetime = 0,2
ground.hittime = 10
air.hittime = 10
sparkno = S8010
guard.sparkno = S8000
sparkxy = -25,-35
ground.velocity = 0,-1
air.velocity = 0,-1
fall = 1
fall.recover = 0

[State 0, VarRandom]
type = VarRandom
trigger1 = 1
v = 1
range = -180,180

[State 0, VarRandom]
type = VarRandom
trigger1 = 1
v = 2
range = -100,15

[State 0, Helper]
type = Helper
trigger1 = time % 2 = 0
helpertype = normal ;player
name = "Glitch"
ID = 3012
stateno = 3012
pos = var(1),var(2)
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = random*.001
size.yscale = random*.001

[State 0, VarRandom]
type = VarRandom
trigger1 = 1
v = 3
range = -2,2

[State 0, VarRandom]
type = VarRandom
trigger1 = 1
v = 4
range = -2,2

[State 0, Offset]
type = Offset
trigger1 = 1
x = var(3)
y = var(4)

[State 0, PlaySnd]
type = PlaySnd
trigger1 = random < 100
value = S22,(random<333)+(random<666)
volume = 0
channel = -1

[State 0, VarRandom]
type = VarRandom
trigger1 = 1
v = 5
range = 0,3

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = 16210
elem = var(5)

[State 0, PalFX]
type = PalFX
trigger1 = time = 119
time = 2
add = 256,256,256
mul = 256,256,256

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 190

;the consequence of sudo
[Statedef 3012]
type = S
movetype = I
physics = S
velset = 0,0
sprpriority = 7
anim = 16211
ctrl = 0
poweradd= 0

[State 0, VarRandom]
type = VarRandom
trigger1 = 1
v = 5
range = 0,256
[State 0, VarRandom]
type = VarRandom
trigger1 = 1
v = 6
range = 0,256
[State 0, VarRandom]
type = VarRandom
trigger1 = 1
v = 7
range = 0,256

[State 0, PalFX]
type = PalFX
trigger1 = 1
time = 1
add = 0,0,0
mul = var(5),var(6),var(7)
invertall = IfElse(random<500,1,0)
color = 256

[State 0, VarRandom]
type = VarRandom
trigger1 = 1
v = 1
range = -20,-20

[State 0, VarRandom]
type = VarRandom
trigger1 = 1
v = 2
range = -10,10

[State 0, Offset]
type = Offset
trigger1 = 1
x = var(1)
y = var(2)


[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 15

;========================<SPARKS>=============================
;Shoryuken "Portrait"
[Statedef 3006]
type = S
movetype = I
physics = S
sprpriority = -4
anim = 19000
ctrl = 0

[State 0, PosAdd]
type = PosAdd
trigger1 = 1
y = -floor(screenpos y)

[State 3004, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 0, VelSet]
type = VelSet
trigger1 = time = [0,10]
x = 15
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = time = [10,20)
x = 15-(time-9)*1.475
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = time >= 20
x = .25
y = 0

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 19001
ID = 19001
pos = 252,227
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
pausemovetime = 999
supermovetime = 999
scale = 1,1
sprpriority = -3
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 19002
ID = 19002
pos = 252,227
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
pausemovetime = 999
supermovetime = 999
scale = 1,1
sprpriority = -3
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = ifelse(root,stateno = 3161,50,5),16
volume = 255
channel = -1

[State 0, Trans]
type = Trans
trigger1 = time = (180,196]
trans = addalpha
alpha = 256-(time-180)*16,(time-180)*16

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = (180,196]
ID =19001
trans = addalpha
alpha = 256-(time-180)*16,256

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 196
id = 19001

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = [0,8]
ID = 19002
trans = addalpha
alpha = 0,256

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = [8,12]
ID = 19002
trans = addalpha
alpha = (time-8)*64,256

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = (180,196]
ID =19002
trans = addalpha
alpha = 256-(time-180)*16,256

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 196
id = 19002

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 196

;Hadouken "Portrait"
[Statedef 3007]
type = S
movetype = I
physics = S
sprpriority = -3
anim = 19010
ctrl = 0

[State 0, PosAdd]
type = PosAdd
trigger1 = 1
y = -floor(screenpos y)-20

[State 3004, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 0, VelSet]
type = VelSet
trigger1 = time = [0,10]
x = 15
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = time = [10,20)
x = 15-(time-9)*1.475
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = time >= 20
x = .25
y = 0

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 19001
ID = 19001
pos = 90,195
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
pausemovetime = 999
supermovetime = 999
scale = .6,.6
sprpriority = -4
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 19012
ID = 19012
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
pausemovetime = 999
supermovetime = 999
scale = .35,.35
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = ifelse(root,stateno=3060,60,6),0+(random%4)
volume = 255
channel = -1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = [0,8]
ID = 19001
trans = addalpha
alpha = (time)*64,256
scale = .6+sin(time)*.06,.6+sin(time)*.06

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = [0,8]
ID = 19012
trans = addalpha
alpha = (time)*64,256-(time)*64

[State 0, Trans]
type = Trans
trigger1 = time = [216,232]
trans = addalpha
alpha = 256-(time-216)*16,(time-216)*16

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = [216,232]
ID = 19012
trans = addalpha
alpha = 256-(time-216)*16,(time-216)*16

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = [8,216]
ID = 19001
trans = addalpha
alpha = 256,256
scale = .6+sin(time)*.06,.6+sin(time)*.06

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = [216,232]
ID = 19001
trans = addalpha
alpha = 256-(time-216)*16,256
scale = .6+sin(time)*.06,.6+sin(time)*.06

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 232
id = -1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 232

;Hyper BG Effect
[Statedef 3009]
type = S
movetype = I
physics = N
velset = 0,0
sprpriority = -7
anim = 19011
ctrl = 0
poweradd=0

[State 0, Trans]
type = Trans
trigger1 = time = [0,16]
trans = addalpha
alpha = time*16,256

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = -time*1.5
scale = 1.4,1.4

[State 0, PosAdd]
type = PosAdd
trigger1 = 1
x = -floor(screenpos x)+gamewidth/2
y = -floor(screenpos y)+gameheight/2

[State 0, Trans]
type = Trans
trigger1 = time = [210,226]
trans = addalpha
alpha = 256-(time-210)*16,256

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 226

;FINAL FLASH!
[Statedef 3549]
type = S
movetype = I
physics = S
sprpriority = 1000
anim = 19040
ctrl = 0

[State 0, PosAdd]
type = PosAdd
trigger1 = 1
y = -floor(screenpos y)+5

[State 3004, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
flag2 = nobardisplay
flag3 = nofg

[State 0, VelSet]
type = VelSet
trigger1 = time = [10,15]
x = 25
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = time = [15,25)
x = 25-(time-14)*2.495
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = time >= 25
x = .005
y = 0


[State 0, Explod]
type = Explod
trigger1 = !time
anim = 19041
ID = 19041
pos = floor(gamewidth*.50),floor(gameheight*.50)
postype = left  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
pausemovetime = 99999
supermovetime = 99999
scale = .35,.35
sprpriority = 100
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 18000
ID = 8000
pos = 160,120
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 8
pausemovetime = 99999
supermovetime = 99999
scale = 5,5
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 18000
ID = 80000
pos = 160,120
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
pausemovetime = 99999
supermovetime = 99999
scale = 5,5
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = [0,8]
trigger1 = numexplod(8000)
ID = 8000
trans = addalpha
alpha = 0,time*32

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = [0,8]
trigger1 = numexplod(8000)
ID = 80000
trans = addalpha
alpha = 0,time*16

[State 0, VarRandom]
type = VarRandom
trigger1 = time % 2 = 0
trigger1 = time > 16
v = 1
range = -1,1

[State 0, VarRandom]
type = VarRandom
trigger1 = time % 2 = 0
trigger1 = time > 16
v = 2
range = -1,1

[State 0, OffSet]
type = OffSet
trigger1 = time > 16
x = var(1)
y = var(2)

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 19042
ID = 19042
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermovetime = 99999
pausemovetime = 99999
scale = .31,.31
sprpriority = 900
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
trans = addalpha
alpha = 0,256

[State 0, I didn't want to do this...]
type = PlaySnd
trigger1 = time = 10
value = 5,ifelse(enemy,name = "Darwin Watterson", 990, 900)
volume = 255
channel = -1

[State 0, StopSnd]
type = StopSnd
trigger1 = root,stateno = 3510
channel = -1
;ignorehitpause = 
;persistent = 

[State 0, Explod]
type = Explod
trigger1 = time = 12
anim = 18000
ID = 18000
pos = 160,120
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
pausemovetime = 99999
supermovetime = 99999
scale = 5,5
sprpriority = 7
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = [12,20]
ID = 18000
trans = addalpha
alpha = (time-12)*16,256-(time-12)*16

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = [440,456]
ID = 18000
trans = addalpha
alpha = 128-(time-440)*8,128+(time-440)*8

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = [440,456]
ID = 19041
trans = addalpha
alpha = 256-(time-440)*16,(time-440)*16

[State 0, Trans]
type = Trans
trigger1 = time = [440,456]
trans = addalpha
alpha = 256-(time-440)*16,(time-440)*16

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 456
id = -1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = [12,20]
ID = 19042
;pos = var(1),var(2)
postype = p1
trans = addalpha
alpha = (time-12)*24,256

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time > 20
ID = 19042
;pos = var(1),var(2)
trans = addalpha
alpha = floor(192+sin((time-20)*100)*64),256

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = [440,456]
;pos = var(1),var(2)
ID = 19042
trans = addalpha
alpha = 192-(time-440)*12,256

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = [440,456]
;pos = var(1),var(2)
ID = 80000
trans = addalpha
alpha = 0,128+(time-440)*8

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nofg

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 456


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
anim = ifelse(root,fvar(29)=-1,8010,8019+(root,fvar(29)=3)*60)
velSet = 0,0
sprPriority = 5

[State 8010, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State 8010, AngleSet]
type = AngleSet
trigger1 = !Time
value = 30 * (Random % 12)
ignorehitpause = 1

[State 8010, AngleAdd]
type = AngleAdd
trigger1 = 1
value = 30

[State 8010, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = (0.3 - (Time * 0.03)), (0.3 - (Time * 0.03))
ignorehitpause = 1

[State 8010, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignorehitpause = 1

[State 8010, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignorehitpause = 1

[State 8010, Center Explod]
type = Explod
trigger1 = !Time
anim = 8011+(root,fvar(29)=3)*60
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
scale = (0.15 + (0.009375 * Time)), (0.15 + (0.009375 * Time))
trans = AddAlpha
alpha = 256 - (16 * Time),256

[State 8010, Streaks Explod]
type = Explod
trigger1 = !Time
anim = 8012+(root,fvar(29)=3)*60
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
scale = (0.15 + (0.009375 * Time)), (0.15 + (0.009375 * Time))
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
scale = (0.3 - (0.0375 * Time)), (0.3 - (0.0375 * Time))
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
anim = ifelse(root,fvar(29)=-1,8010,8019+(root,fvar(29)=3)*60)
velSet = 0,0
sprPriority = 5

[State 8011, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

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
scale = (0.35 - (Time * 0.035)), (0.35 - (Time * 0.035))
ignorehitpause = 1

[State 8011, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignorehitpause = 1

[State 8011, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256

[State 8011, Center]
type = Explod
trigger1 = !Time
anim = 8011+(root,fvar(29)=3)*60
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
scale = (0.175 + (0.0109375 * Time)), (0.175 + (0.0109375 * Time))
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8011, Streaks Explod]
type = Explod
trigger1 = !Time
anim = 8012+(root,fvar(29)=3)*60
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
scale = (0.175 + (0.0109375 * Time)), (0.175 + (0.0109375 * Time))
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
scale = (0.35 - (0.04375 * Time)), (0.35 - (0.04375 * Time))
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
anim = ifelse(root,fvar(29)=-1,8010,8019+(root,fvar(29)=3)*60)
velSet = 0,0
sprPriority = 5

[State 8012, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

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
scale = (0.4 - (Time * 0.04)), (0.4 - (Time * 0.04))
ignorehitpause = 1

[State 8012, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignorehitpause = 1

[State 8012, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignorehitpause = 1

[State 8012, Center Explod]
type = Explod
trigger1 = !Time
anim = 8011+(root,fvar(29)=3)*60
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
scale = (0.2 + (0.0125 * Time)), (0.2 + (0.0125 * Time))
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8012, Streaks Explod]
type = Explod
trigger1 = !time
anim = 8012+(root,fvar(29)=3)*60
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
scale = (0.2 + (0.0125 * Time)), (0.2 + (0.0125 * Time))
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
scale = (0.4 - (0.05 * Time)), (0.4 - (0.05 * Time))
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
anim = ifelse(root,fvar(29)=-1,8010,8019+(root,fvar(29)=[1,2])*40+(root,fvar(29)=3)*60)
velSet = 0,0
sprPriority = 5

[State 8013, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

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
scale = (0.45 - (Time * 0.045)), (0.45 - (Time * 0.045))
ignorehitpause = 1

[State 8012, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignorehitpause = 1

[State 8013, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignorehitpause = 1

[State 8013, Center Explod]
type = Explod
trigger1 = !Time
anim = 8011+(root,fvar(29)=[1,2])*40+(root,fvar(29)=3)*60
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
scale = (0.225 + (0.0140625 * Time)), (0.225 + (0.0140625 * Time)) 
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8013, Streaks Explod]
type = Explod
trigger1 = !Time
anim = 8012+(root,fvar(29)=[1,2])*40+(root,fvar(29)=3)*60
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8013, Scale Streaks Explod (Classic)]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = (0.225 + (0.0140625 * Time)), (0.225 + (0.0140625 * Time)) 
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8013, P2 Back Explod (Classic)]
type = Explod
triggerall = root, fvar(29)!=3
trigger1 = !Time
anim = 8013+(root,fvar(29)=[1,2])*40+(root,fvar(29)=3)*60
ID = 3
posType = P1
facing = 1
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = -3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8013, Scale P2 Back Explod (PotS 2022)]
type = ModifyExplod
triggerall = root, fvar(29)!=3
trigger1= NumExplod(3)
ID = 3
scale = (0.4), (0.4) 
trans = AddAlpha
alpha = 256 - (32 * Time), 256

[State 8013, P2 Back (PotS 2022)]
type = explod
triggerall = root, fvar(29)=3
triggerall = !time
triggerall = parent, numtarget
trigger1 = numenemy = parent, numtarget
trigger2 = numenemy > parent, numtarget
trigger2 = abs(enemynear(0), pos x - enemynear(1), pos x) >= 120
anim = 8013
ID = 3
postype = p1
vfacing = ifelse(random < 500, -1, 1)
sprpriority = -3
removetime = 8
pausemovetime = -1
supermovetime = -1

[State 8013, Position (PotS 2022)]
type = modifyexplod
triggerall = root, fvar(29)=3
triggerall = numexplod(3)
trigger1 = numenemy = 1
trigger2 = numenemy >= 2 && !time
ID = 3
postype = p1
pos = ceil(p2dist x + enemynear, const(size.ground.back)), ceil(p2dist y + ifelse(p2statetype = L, 0, ifelse(p2statetype = C, 0.5, 0.75) * enemynear, const(size.head.pos.y)))

[State 8013, Scale]
type = modifyexplod
triggerall = root, fvar(29)=3
trigger1 = numexplod(3)
ID = 3
scale = (0.25 + (0.03125 * time)), (0.25 + (0.03125 * time))
trans = addalpha
alpha = 256 -(32 * time), 256

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
scale = (0.45 - (0.05625 * Time)), (0.45 - (0.05625 * Time))
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
anim = ifelse(root,fvar(29)=-1,8010,8019+(root,fvar(29)=[1,2])*50+(root,fvar(29)=3)*60)
velSet = 0,0
sprPriority = 5

[State 8014, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

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
scale = (0.5 - (Time * 0.05)), (0.5 - (Time * 0.05))
ignorehitpause = 1

[State 8014, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignorehitpause = 1

[State 8014, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignorehitpause = 1

[State 8014, Center Explod]
type = Explod
trigger1 = !Time
anim = 8011+(root,fvar(29)=1)*50+(root,fvar(29)=2)*40+(root,fvar(29)=3)*60
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
scale = (0.25 + (0.015625 * Time)), (0.25 + (0.015625 * Time)) 
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8014, Streaks Explod]
type = Explod
trigger1 = !Time
anim = 8012+(root,fvar(29)=[1,2])*50+(root,fvar(29)=3)*60
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
scale = (0.25 + (0.015625 * Time)), (0.25 + (0.015625 * Time))
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8014, P2 Back Explod (Classic)]
type = Explod
triggerall = root,fvar(29)!=3
trigger1 = !Time
anim = 8013+(root,fvar(29)=1)*50+(root,fvar(29)=2)*40+(root,fvar(29)=3)*60
ID = 3
posType = P1
facing = 1
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = -3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8014, Scale P2 Back Explod (Classic)]
type = ModifyExplod
triggerall = root,fvar(29)!=3
trigger1 = NumExplod(3)
ID = 3
scale = (0.5), (0.5)
trans = AddAlpha
alpha = 256 - (32 * Time), 256

[State 8014, P2 Back (PotS 2022)]
type = explod
triggerall = root,fvar(29)=3
triggerall = !time
triggerall = parent, numtarget
trigger1 = numenemy = parent, numtarget
trigger2 = numenemy > parent, numtarget
trigger2 = abs(enemynear(0), pos x - enemynear(1), pos x) >= 120
anim = 8013
ID = 3
postype = p1
vfacing = ifelse(random < 500, -1, 1)
sprpriority = -3
removetime = 8
pausemovetime = -1
supermovetime = -1

[State 8014, Position (PotS 2022)]
type = modifyexplod
triggerall = root,fvar(29)=3
triggerall = numexplod(3)
trigger1 = numenemy = 1
trigger2 = numenemy >= 2 && !time
ID = 3
postype = p1
pos = ceil(p2dist x + enemynear, const(size.ground.back)), ceil(p2dist y + ifelse(p2statetype = L, 0, ifelse(p2statetype = C, 0.5, 0.75) * enemynear, const(size.head.pos.y)))

[State 8014, Scale (PotS 2022)]
type = modifyexplod
triggerall = root,fvar(29)=3
trigger1 = numexplod(3)
ID = 3
scale = (0.30 + (0.0375 * time)), (0.30 + (0.0375 * time)) 
trans = addalpha
alpha = 256 -(32 * time), 256

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
scale = (0.5 - (0.0625 * Time)), (0.5 - (0.0625 * Time))
trans = AddAlpha
alpha = 256 - (32 * Time),256

[State 8014, Remove Explods]
type = RemoveExplod
trigger1 = time >= 16

[State 8014, End]
type = DestroySelf
trigger1 = Time >= 16


;Normal Slash Spark
[StateDef 8015]
type = A
physics = N
moveType = I
anim = 8015+(root,fvar(29)=3)*60
velSet = 0,0
sprPriority = 5

[State 8015, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8015, AngleSet]
type = AngleSet
trigger1 = !Time
value = 15 * (Random % 24)

[State 8015, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = ((0.5 + (Time * 0.15)) / 2), ((1 - (Time * 0.1)) / 2)
ignoreHitPause = 1

[State 8015, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignoreHitPause = 1

[State 8015, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8015, Streaks Explod]
type = Explod
trigger1 = !time
anim = 8012+(root,fvar(29)=3)*60
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8015, Particles]
type = Explod
trigger1 = time<8 && root,fvar(29)=1
anim = 8017+(root,fvar(29)=3)*60
ID = 17
postype = p1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = -4+random%10
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1
scale = 0.15,0.15
vel = Ifelse(random<500,2+random%2,-4+random%2), -5 + (random / 90.0)
accel = -1||1,-1||1
ignorehitpause = 1

[State 8015, Scale Particles]
type = ModifyExplod
trigger1 = NumExplod(17)
ID = 17
scale = (0.2 - (0.005 * Time)), (0.2 - (0.005 * Time))
trans = AddAlpha
alpha = 256 - (16 * Time), 256
ignorehitpause = 1

[State 8015, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = (0.2 + (0.0125 * Time)), (0.2 + (0.0125 * Time))
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8015, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 16

[State 8015, End]
type = DestroySelf
trigger1 = Time >= 16


;Special Move Slash Spark
[StateDef 8016]
type = A
physics = N
moveType = I
anim = 8015+(root,fvar(29)=[1,2])*40+(root,fvar(29)=3)*60
velSet = 0,0
sprPriority = 5

[State 8016, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8016, AngleSet]
type = AngleSet
trigger1 = !Time
value = 15 * (Random % 24)

[State 8016, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = ((0.5 + (Time * 0.15)) / 2), ((1 - (Time * 0.1)) / 2)
ignoreHitPause = 1

[State 8016, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignoreHitPause = 1

[State 8016, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8016, Circle]
type = Explod
trigger1 = !Time
anim = 8016+(root,fvar(29)=[1,2])*40+(root,fvar(29)=3)*60
ID = 8016
posType = p1
removeTime = 10
sprPriority = 5
pauseMoveTime = -1
superMoveTime = -1

[State 8016, Circle Scale]
type = ModifyExplod
trigger1 = NumExplod(8016)
ID = 8016
scale = (0.25 + (0.025 * Time)), (0.25 + (0.025 * Time))
trans = AddAlpha
alpha = ceil(256 - 25.6 * Time), 256

[State 8016, Streaks Explod]
type = Explod
trigger1 = !Time
anim = 8012+(root,fvar(29)=[1,2])*40+(root,fvar(29)=3)*60
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8016, Particles]
type = Explod
trigger1 = time<8 && root,fvar(29)=1
anim = 8017+(root,fvar(29)=[1,2])*40+(root,fvar(29)=3)*60
ID = 17
postype = p1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = -4+random%10
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1
scale = 0.15,0.15
vel = Ifelse(random<500,2+random%2,-4+random%2), -5 + (random / 90.0)
accel = -1||1,-1||1
ignorehitpause = 1

[State 8016, Scale Particles]
type = ModifyExplod
trigger1 = NumExplod(17)
ID = 17
scale = (0.225 - (0.005 * Time)), (0.225 - (0.005 * Time))
trans = AddAlpha
alpha = 256 - (16 * Time), 256
ignorehitpause = 1

[State 8016, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = (0.225 + (0.0140625 * Time)), (0.225 + (0.0140625 * Time))
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8016, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 16

[State 8016, End]
type = DestroySelf
trigger1 = Time >= 16


;Super Move Slash Spark
[StateDef 8017]
type = A
physics = N
moveType = I
anim = 8015+(root,fvar(29)=[1,2])*50+(root,fvar(29)=3)*60
velSet = 0,0
sprPriority = 5

[State 8017, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8017, AngleSet]
type = AngleSet
trigger1 = !Time
value = 15 * (Random % 24)

[State 8017, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = ((0.5 + (Time * 0.15)) / 2), ((1 - (Time * 0.1)) / 2)
ignoreHitPause = 1

[State 8017, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignoreHitPause = 1

[State 8017, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8017, Circle]
type = Explod
trigger1 = !Time
anim = 8016+(root,fvar(29)=1)*50+(root,fvar(29)=2)*40+(root,fvar(29)=3)*60
ID = 8016
posType = p1
removeTime = 10
sprPriority = 5
pauseMoveTime = -1
superMoveTime = -1

[State 8017, Circle Scale]
type = ModifyExplod
trigger1 = NumExplod(8016)
ID = 8016
scale = (0.3 + (0.03 * Time)), (0.3 + (0.03 * Time))
trans = AddAlpha
alpha = ceil(256 - 25.6 * Time), 256

[State 8017, Streaks Explod]
type = Explod
trigger1 = !Time
anim = 8012+(root,fvar(29)=1)*50+(root,fvar(29)=2)*40+(root,fvar(29)=3)*60
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8017, Particles]
type = Explod
trigger1 = time<10 && root,fvar(29)=1
anim = 8017+(root,fvar(29)=[1,2])*50+(root,fvar(29)=3)*60
ID = 17
postype = p1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = -4+random%10
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1
scale = 0.15,0.15
vel = Ifelse(random<500,2+random%2,-4+random%2), -5 + (random / 90.0)
accel = -1||1,-1||1
ignorehitpause = 1

[State 8017, Scale Particles]
type = ModifyExplod
trigger1 = NumExplod(17)
ID = 17
scale = (0.25 - (0.005 * Time)), (0.25 - (0.005 * Time))
trans = AddAlpha
alpha = 256 - (16 * Time), 256
ignorehitpause = 1

[State 8017, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = (0.25 + (0.015625 * Time)), (0.25 + (0.015625 * Time))
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8017, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 16

[State 8017, End]
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

;RAGE MODE FX
[Statedef 8250]
type = A
velset = 0, 0
anim = 1
sprpriority = 5

[State ACTIVATEsnd]
type = PlaySnd
trigger1 = !time
value = S5200,1
channel = -1
ignorehitpause = 1

[State 8330, Dust]
type = explod
trigger1 = !time
anim = 8105
sprpriority = -3
postype = p1
pos = 0, -ceil(pos y)
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1
ignorehitpause = 1

[State 8250, Explod]
type = Explod
trigger1 = time%3 = [0,12]
anim = 8250
ID = 1
pos = 0,-40
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = 1
removetime = 30
scale = 2,2
ontop = 0
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 8200, No Shadow]
type = assertspecial
trigger1 = 1
flag = noshadow
ignoreHitPause = 1

[State 8200, Scale]
type = modifyExplod
trigger1 = 1
ID = 1
scale = 0.25 + (0.2 * time), 0.25 + (0.2 * time)
trans = addalpha
alpha = ceil(256-17.1*time),256
ignoreHitPause = 1

[State end]
type = destroyself
trigger1 = roundstate !=2
trigger2 = root,var(41)=0

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

[State 8600, Move Name: The Fridge]
type = varset
trigger1 = !time && Root, StateNo=3000;(root, var(23) = [3000, 3099])
var(0) = 2

[State 8600, Move Name: The Skull]
type = varset
trigger1 = !time && Root, StateNo=3010;(root, var(23) = [3000, 3099])
var(0) = 3

[State 8600, Move Name: MAX Hadouken]
type = varset
trigger1 = !time && Root, StateNo=3050;(root, var(23) = [3050, 3099])
var(0) = 4
[State 8600, Move Name: MAX Hadouken]
type = varset
trigger1 = !time && Root, StateNo=3060;(root, var(23) = [3050, 3099])
var(0) = 4

[State 8600, Move Name: MAX Shoryuken]
type = varset
trigger1 = !time && (root, var(23) = [3150, 3151])
var(0) = 4
[State 8600, Move Name: MAX Shoryuken]
type = varset
trigger1 = !time && (root, var(23) = [3160, 3161])
var(0) = 4

[State 8600, Move Name: The Flower]
type = varset
trigger1 = !time && Root, StateNo=3102;(root, var(23) = [3300, 3399])
var(0) = 5

[State 8600, Move Name: The World]
type = varset
trigger1 = !time && Root, StateNo=3110;(root, var(23) = [3400, 3499])
var(0) = 6

[State 8600, Move Name: The Words]
type = varset
trigger1 = !time && Root, StateNo=3502;(root, var(23) = [3502, 3599])
var(0) = 7

[State 8600, MvC]
type = explod
trigger1 = !time
trigger1 = var(0) != 7
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
[State 8600, EXPLOD]
type = explod
trigger1 = !time
trigger1 = var(0) = 7
anim = 8602
ID = 8602
ontop = 1
sprpriority = 6
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
[State 8600, Fade]
type = modifyexplod
trigger1 = numexplod(8602)
ID = 8602
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
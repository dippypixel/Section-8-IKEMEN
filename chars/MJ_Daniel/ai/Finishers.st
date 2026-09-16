;here the B&M Styled Finishers go:

;FOUR BUTTON COMBO
[Statedef 27000]
type = S
movetype = A
physics=S
ctrl = 0
anim = 27000
velset = 0,0

[State ASS]
type = NotHitBy
trigger1 = 1
value = SCA
ignorehitpause=1

[State Yes]
type = Width
trigger1 = 1
player = 1,1

[State :)]
type = VarSet
trigger1 = time = 0
var(10) = 5

[State DO RE MI]
type = AssertSpecial
trigger1 = 1
flag = nomusic
ignorehitpause=1
[State Spark]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Super"
ID = 7500
pos = 0,-55
stateno = 7500
postype = p1
ownpal = 1
supermovetime = 9999
persistent = 0

[State Super]
type = SuperPause
trigger1 = Time=0
time = 45
anim = -1
sound = S26002,0
movetime = 45
darken = 1
;poweradd = 0
unhittable = 1

[State Smackdown Effect]
Type = Explod
Trigger1 = !Time
Anim = 3500
ID = 3500
PosType = P1
Pos = 0,-55
RemoveTime = -2
Scale = 7,7
SprPriority = 6
OwnPal = 0
RemoveOnGetHit = 0
SuperMoveTime = 9999
PauseMoveTime = 9999
[State Smackdown Effect]
Type = Explod
Trigger1 = !Time
Anim = 3502
ID = 3502
PosType = P1
Pos = 0,-55
RemoveTime = -2
Scale = 6,6
SprPriority = 6
OwnPal = 0
RemoveOnGetHit = 0
SuperMoveTime = 9999
PauseMoveTime = 9999

[State SuperBG]
type = Explod
trigger1 = Time=0
anim = 1211
ID = 1211
pos = 0,0
postype = back  ;p2,front,back,left,right
facing = 1
bindtime = -1
removetime = -1
supermovetime=999999
pausemovetime=999999
scale = 1,1
sprpriority = -7
ownpal = 1

[State BUUUUUUUUUUUT];Code by from Van´s Rage Rock by The None
type = Explod
trigger1 = Anim=27004 && AnimElem= 27
anim = 2780
ID = 2780
pos = 160,120
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = 300
supermovetime = 65535
pausemovetime = 65535
scale = 1,1
sprpriority = 65535
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Anim=27004 && AnimElem= 27
value = S2780,0
volume = 255

;BUTTON CHOOSER
[State Select a Button]
type = VarSet
trigger1 = Anim=27000&&AnimElemTime(1)=45
trigger2 = Anim=27001&&AnimElemTime(22)=0
trigger3 = Anim=27002&&AnimElemTime(13)=0
trigger4 = Anim=27003&&AnimElemTime(9)=0
var(40) = 1+(random%6) ;1 = A, 2 = B, 3 = C, 4 = X, 5 = Y, 6 = Z!

;FINISHER BUTTONS! (Sep: 50 px)
[State First Button]
type = Explod
trigger1 = Anim=27000&&AnimElemTime(1)=45
anim = (27009+(var(40)))
ID = 27010
pos = 65,180
postype = left
facing = 1
removetime = -1
scale = 0,0
sprpriority = 0
ontop = 1
ownpal = 1
removeongethit = 1
bindtime=-1
[State Second Button]
type = Explod
trigger1 = Anim=27001&&AnimElemTime(22)=0
anim = (27009+(var(40)))
ID = 27011
pos = 130,180
postype = left
facing = 1
removetime = -1
scale = 0,0
sprpriority = 0
ontop = 1
ownpal = 1
removeongethit = 1
bindtime=-1
[State Third Button]
type = Explod
trigger1 = Anim=27002&&AnimElemTime(13)=0
anim = (27009+(var(40)))
ID = 27012
pos = 195,180
postype = left
facing = 1
removetime = -1
scale = 0,0
sprpriority = 0
ontop = 1
ownpal = 1
removeongethit = 1
bindtime=-1
[State Fourth (FINAL) Button]
type = Explod
trigger1 = Anim=27003&&AnimElemTime(9)=0
anim = (27009+(var(40)))
ID = 27013
pos = 260,180
postype = left
facing = 1
removetime = -1
scale = 0,0
sprpriority = 0
ontop = 1
ownpal = 1
removeongethit = 1
bindtime=-1

;SIN CURVE SCALERS
[State Button 1]
type = VarSet
trigger1 = Time=0
trigger2 = Anim=27000&&AnimElemTime(1)=45
fvar(12)=1.6
ignorehitpause=1
[State Button 2]
type = VarSet
trigger1 = Time=0
trigger2 = Anim=27001&&AnimElemTime(22)=0
fvar(13)=1.6
ignorehitpause=1
[State Button 3]
type = VarSet
trigger1 = Time=0
trigger2 = Anim=27002&&AnimElemTime(13)=0
fvar(14)=1.6
ignorehitpause=1
[State Button 4]
type = VarSet
trigger1 = Time=0
trigger2 = Anim=27003&&AnimElemTime(9)=0
fvar(15)=1.6
ignorehitpause=1

;Augment
[State Reset]
type = VarSet
trigger1 = Time=45
fvar(18)=0
[State Reset]
type = VarSet
trigger1 = Time=45
fvar(19)=0
[State Reset]
type = VarSet
trigger1 = Time=45
fvar(20)=0
[State Reset]
type = VarSet
trigger1 = Time=45
fvar(21)=0

;Button Modifiers
[State SCALE BUTTON 1]
type = ModifyExplod
trigger1 = NumExplod(27010)
ID = 27010
scale=1+abs(fvar(12)*sin(fvar(18))),1+abs(fvar(12)*sin(fvar(18)))
ignorehitpause=1
[State SCALE BUTTON 2]
type = ModifyExplod
trigger1 = NumExplod(27011)
ID = 27011
scale=1+abs(fvar(13)*sin(fvar(19))),1+abs(fvar(13)*sin(fvar(19)))
ignorehitpause=1
[State SCALE BUTTON 3]
type = ModifyExplod
trigger1 = NumExplod(27012)
ID = 27012
scale=1+abs(fvar(14)*sin(fvar(20))),1+abs(fvar(14)*sin(fvar(20)))
ignorehitpause=1
[State SCALE BUTTON 4]
type = ModifyExplod
trigger1 = NumExplod(27013)
ID = 27013
scale=1+abs(fvar(15)*sin(fvar(21))),1+abs(fvar(15)*sin(fvar(21)))
ignorehitpause=1

;AUGMENT OF SIN
[State In effect]
type = VarAdd
trigger1 = NumExplod(27010)
fvar(18)=pi/7.0
ignorehitpause=1
[State In effect]
type = VarAdd
trigger1 = NumExplod(27011)
fvar(19)=pi/7.0
ignorehitpause=1
[State In effect]
type = VarAdd
trigger1 = NumExplod(27012)
fvar(20)=pi/7.0
ignorehitpause=1
[State In effect]
type = VarAdd
trigger1 = NumExplod(27013)
fvar(21)=pi/7.0
ignorehitpause=1

;SCALE DOWN
[State Button 1 Down]
type = VarSet
trigger1 = 1
fvar(12)=fvar(12)*0.9
ignorehitpause=1
[State Button 2 Down]
type = VarSet
trigger1 = 1
fvar(13)=fvar(13)*0.9
ignorehitpause=1
[State Button 3 Down]
type = VarSet
trigger1 = 1
fvar(14)=fvar(14)*0.9
ignorehitpause=1
[State Button 4 Down]
type = VarSet
trigger1 = 1
fvar(15)=fvar(15)*0.9

;Stop scaling
[State Button 1 Stop]
type = VarSet
trigger1 = abs(fvar(12))<.003
fvar(12)=0.000
ignorehitpause=1
[State Button 2 Stop]
type = VarSet
trigger1 = abs(fvar(13))<.003
fvar(13)=0.000
ignorehitpause=1
[State Button 3 Stop]
type = VarSet
trigger1 = abs(fvar(14))<.003
fvar(14)=0.000
ignorehitpause=1
[State Button 3 Stop]
type = VarSet
trigger1 = abs(fvar(15))<.003
fvar(15)=0.000
ignorehitpause=1

[State Finisher sounds]
type = PlaySnd
trigger1 = Anim=27001 ^^ var(41) := 0
value = S26001,0
volume=555
persistent=0
abspan=0
[State Finisher sounds]
type = PlaySnd
trigger1 = Anim=27002 ^^ var(41) := 0
value = S26001,1
volume=555
persistent=0
abspan=0
[State Finisher sounds]
type = PlaySnd
trigger1 = Anim=27003 ^^ var(41) := 0
value = S26001,2
volume=555
persistent=0
abspan=0
[State Finisher sounds]
type = PlaySnd
trigger1 = Anim=27004 ^^ var(41) := 0
value = S26001,3
volume=555
persistent=0
abspan=0
[State Finisher sounds]
type = PlaySnd
trigger1 = Anim=27001 ^^ var(41) := 0
value = S26001,0
volume=555
persistent=0
abspan=0
[State Finisher sounds]
type = PlaySnd
trigger1 = Anim=27002 ^^ var(41) := 0
value = S26001,1
volume=555
persistent=0
abspan=0
[State Finisher sounds]
type = PlaySnd
trigger1 = Anim=27003 ^^ var(41) := 0
value = S26001,2
volume=555
persistent=0
abspan=0
[State Finisher sounds]
type = PlaySnd
trigger1 = Anim=27004 ^^ var(41) := 0
value = S26001,3
volume=555
persistent=0
abspan=0

;EVALUATE BUTTONS
[State The Truth!]
type = VarSet
triggerall = (Anim=27000&&AnimElemTime(1)>=45)||(Anim=27001&&AnimElemTime(22)>=0)||(Anim=27002&&AnimElemTime(13)>=0)||(Anim=27003&&AnimElemTime(9)>=0)
triggerall = var(41)=0&&(NumExplod(27010))||(NumExplod(27011))
trigger1 = command = "a" ^^ command = "b" ^^ command = "c" ^^ command = "x" ^^ command = "y" ^^ command = "z"
var(41)=((command="a")+((command="b")*2)+((command="c")*3)+((command="x")*4)+((command="y")*5)+((command="z")*6)=var(40))
ignorehitpause=1
[State yesh!!]
type = PlaySnd
trigger1 = var(41)=1
trigger1 = ifelse(Anim=27000,(fvar(12) := 4.5),(ifelse(Anim=27001,(fvar(13) := 4.5),ifelse(Anim=27002,(fvar(14) := 4.5),(fvar(15) := 4.5)))))
value = S26002,1
abspan=0
volume=-255;255
;persistent=0
ignorehitpause=1

;SWITCHING
[State SWITCH TO 1]
type = ChangeAnim
triggerall = Anim=27000&&AnimElemTime(1)>=45
trigger1 = var(41)=1
value = 27001
elem = 1
[State SWITCH TO 2]
type = ChangeAnim
triggerall = Anim=27001&&AnimElemTime(22)>=0
trigger1 = var(41)=1
value = 27002
elem = 1
[State SWITCH TO 3]
type = ChangeAnim
triggerall = Anim=27002&&AnimElemTime(13)>=0
trigger1 = var(41)=1
value = 27003
elem = 1
[State SWITCH TO FINAL]
type = ChangeAnim
triggerall = Anim=27003&&AnimElemTime(9)>=0
trigger1 = var(41)=1
value = 27004
elem = 1

;STEP ONE!
;======================

[State WOOSH]
type = PlaySnd
trigger1 = Anim=27001 && AnimElem=2
trigger2 = Anim=27002 && AnimElem=6
trigger3 = Anim=27003 && (AnimElem=3||AnimElem=7)
trigger4 = Anim=27004 && (AnimElem=1||AnimElem=3||AnimElem=5||AnimElem=7||AnimElem=9||AnimElem=11||AnimElem=13||AnimElem=15)
trigger5 = Anim=27004 && (AnimElem=17||AnimElem=19||AnimElem=21||AnimElem=23||AnimElem=25)
value = S1,5
[State Yuyuko]
type = PlaySnd
trigger1 = Anim=27001 && AnimElem=2
value = S14,0
[State Yuyuko]
type = PlaySnd
trigger1 = Anim=27001 && AnimElem=2
value = S14,1

[State JIC]
type = MovehitReset
trigger1 = AnimTime=0

[State Attacks 1, 2 and 3]
type = HitDef
trigger1 = AnimElem=1 && Anim!=27004
attr = S,HA
hitflag = MAF
guardflag =
animtype = Hard
air.animtype = Hard
priority = 7,Hit
damage = 1,0
pausetime = 10 ,160
sparkno = S7930+random%8
guard.sparkno = -1
sparkxy = -10,-40
hitsound = S853,13
guardsound = -1
ground.type = Low
ground.slidetime = 0
ground.hittime = 120
air.hittime = 120
guard.dist = 0
ground.velocity = 0
air.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
mindist = 5,0
maxdist = 40,0
fall=1
fall.recover=0
forcestand = 1
kill = 0
fall.damage=9999
fall.kill=1
guard.kill = 0
numhits = 1
getpower = 0,0
givepower = 0,0
envshake.time = 16
envshake.freq = 210
envshake.ampl = -12
envshake.phase =90
ID=27000

[State AWW YEAH!!]
type = HitDef
trigger1 = AnimElem=1 && Anim=27004
attr = S,HT
hitflag = MAF
guardflag =
animtype = Up
priority = 7,Hit
damage = 9999,9999
pausetime = 10 ,10
sparkno = S7930+random%3
sparkxy = -10,-40
hitsound = S667,1
ground.slidetime = 10
ground.hittime = 99
guard.dist = 0
yaccel = 0.7
ground.velocity = -3.3,-15;35
air.velocity = -3.3,-15;35
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall = 1
fall.recover = 0
fall.damage = 9999
id = 27001
kill = 1
guard.kill = 1
fall.kill = 1
numhits = 1
getpower = 0,0
givepower = 0,0
envshake.time = 25
envshake.freq = 185
envshake.ampl = -15
envshake.phase = 90
fall.envshake.time = 10
fall.envshake.freq = 185
fall.envshake.ampl = -15
fall.envshake.phase = 90

[State p2stateno]
type = TargetState
triggerall = movehit && !movereversed && !moveguarded
triggerall = NumTarget(27001)
triggerall = !target(27001),IsHelper
trigger1 = target(27001),Time=0
value = 27017
ID = 27001
ignorehitpause=1

[State 3001, Spark]
Type = Helper
triggerall = (Movehit = 1)
trigger1 = (NumTarget(27000) > 0) &&(Target(27000), Time = 0)
trigger2 = (NumTarget(27001) > 0) &&(Target(27001), Time = 0)
Name = "LOLSPARK"
StateNo = 385
ID = 385
pos = IfElse(MoveType = H,Ceil(P2Dist X/2),0),-55-Ceil(P2BodyDist Y)
postype = p2
ownpal = 1
ignorehitpause=1
supermovetime=9999999
pausemovetime=9999999

[State END]
type = VelSet
trigger1 = Anim=27004 && AnimElem=24
x = 6.5

[State DUNN]
type = RemoveExplod
trigger1 = Anim=27004
trigger1 = AnimTime=0
trigger2 = Anim!=27004
trigger2 = AnimTime=0
id = 1211
[State Take the Buttons Away]
type = RemoveExplod
trigger1 = AnimTime=0
id = 27010
[State Take the Buttons Away]
type = RemoveExplod
trigger1 = AnimTime=0
id = 27011
[State Take the Buttons Away]
type = RemoveExplod
trigger1 = AnimTime=0
id = 27012
[State Take the Buttons Away]
type = RemoveExplod
trigger1 = AnimTime=0
id = 27013

[State DUNN]
type = ChangeState
triggerall = Anim=27004
trigger1 = AnimTime=0
value = 0
ctrl = 1

[State BITCH]
type = VelSet
triggerall = Anim!=27004
trigger1 = AnimTime=0
x = -6

[State FUCKING BITCHES]
type = TargetLifeAdd
triggerall = Anim!=27004
trigger1 = AnimTime=0
value = -9999
ID = 27000
kill = 1
absolute = 1
[State FUCKING BITCHES]
type = TargetLifeAdd
triggerall = Anim!=27004
trigger1 = AnimTime=0
value = -9999
ID = 27001
kill = 1
absolute = 1

[State DUNN]
type = ChangeState
triggerall = Anim!=27004
trigger1 = AnimTime=0
value = 5301
ctrl = 0

;GET HIT BY FINAL BLOW
[Statedef 27016]
type = A
movetype=H
physics = N
ctrl = 0
velset = 0,0

[State NOPE]
type = PlayerPush
trigger1 = 1
value = 0

[State DOT]
type = ChangeAnim2
trigger1 = 1
value = 27016

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = SelfAnimExist(9108101)
value = 9108101

[State AVI]
type = ChangeState
trigger1 = HitShakeOver = 1
trigger2 = Time > 15
value = 27017

;Flying till DED
[Statedef 27017]
type = A
movetype=H
physics = N
ctrl = 0
velset = 0,0
sprpriority=-3

[State DOT]
type = ChangeAnim2
trigger1 = Time=0
value = 27016

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = SelfAnimExist(9108102)
value = 9108102

[State NOPE]
type = PlayerPush
trigger1 = 1
value = 0

[State D'OW]
type = HitVelSet
trigger1 = Time=0
x = 1
y = 1

[State 0, VelMul]
type = VelMul
trigger1 = Time
x = 0.95
[State Fak]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State LOL]
type = AngleDraw
trigger1 = 1
value = Time*15
scale = 1-(Time/40.0),1-(Time/40.0)

[State BAM]
type = Explod
trigger1 = Time=40
anim = F3
pos = 0,0
postype = p1
facing = 1
removetime = -2
scale = 1.2,1.2
ontop = 1
ownpal = 1
bindtime=1

[State DED]
type = PlaySnd
trigger1 = Time>=40
value = F5,4

[State HAHA NO]
type = PosSet
trigger1 = Time>=41
y = 9999

[State DOW]
type = SelfState
trigger1 = Time>=41
value = 5150
ctrl = 0

[State Add]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

;FINISH HIM!! START
[Statedef 29000]
type = A
movetype= A
physics = N
velset = 0,0
anim = 29000
ctrl = 0

[State LOL]
type = PlaySnd
trigger1 = Time=0
value = S17777,6
abspan=0
volume=255

[State No block No music]
type = AssertSpecial
trigger1 = 1
flag = unguardable
flag2 = nomusic
ignorehitpause = 1

[State HIT]
type = HitDef
Trigger1 = !movecontact && enemynear,alive && enemynear,stateno != 29002
attr = S, NA
hitflag = -M
sparkno = -1
p2stateno = 29002
numhits = 0

[State succesfull]
type = ChangeState
trigger1 = movecontact && p2stateno = 29002
value = 29001
ctrl = 0

[State Follow Enemy]
type = posset
trigger1 = 1
x = floor(enemynear,pos x)
y = floor(enemynear,pos y)

[State KILL]
type = parentvarset
trigger1 = !animtime && p2stateno = 29002 && !enemynear,ctrl
trigger2 = time = 300
var(46) = 1
[State END]
type = destroyself
trigger1 = !animtime && p2stateno = 29002 && !enemynear,ctrl
trigger2 = time = 300

;FINISH HIM!! STUFFS
[Statedef 29001]
type = A
movetype= A
physics = N
velset = 0,0
anim = 9741

[State EEEK]
type = PlaySnd
trigger1 = Time=0
value = S17777,5
volume=255
abspan=0

[State KILL]
type = parentvarset
trigger1 = 1
var(46) = 1

[State Follow]
type = bindtoparent
trigger1 = 1

[State Time Stop]
type = assertspecial
trigger1 = 1
flag = timerfreeze
ignorehitpause = 1

[State Music OFF]
type = assertspecial
trigger1 = parent,var(11) > 0
trigger2 = parent,win = 1 || !enemynear,alive
trigger3 = p2stateno = 29002
flag = nomusic
ignorehitpause = 1

[State Noboard]
type = AssertSpecial
trigger1 = parent,var(11) > 0
flag = nobardisplay

;p2 dizzy
[Statedef 29002]
type = S
movetype= H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 3

[State Killme]
type = HitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
value2 = S,NA
time = 9999

[State Effect OFF]
type = AfterImage
trigger1 = !time
time = 1
length = 1
ignorehitpause = 1

[State Dizzy]
type = ChangeAnim
trigger1 = !time
value = ifelse(selfanimexist(5300),5300,5000)

[State Ground]
type = posset
trigger1 = !time
y = 0

[State doubleKO]
type = LifeAdd
trigger1 = !enemynear,alive
trigger2 = time = 300
value = -9999
kill = 1

[State doubleKO]
type = SelfState
trigger1 = !enemynear,alive
trigger2 = time = 300
value = 5050

[State timeup]
type = lifeadd
trigger1 = time = 300 && !enemynear,var(11)
value = -9999

[State timeup]
type = selfstate
trigger1 = time = 300 && !enemynear,var(11)
value = 5050

;======<MOJO MELTDOWN>======

[Statedef 28000]
type = S
movetype = A
physics=S
ctrl = 0
anim = 199
velset = 0,0
sprpriority=3
poweradd=-4000

[State No More power]
type = VarSet
trigger1 = Time=0
var(28)=-1

[State Shit just got realz]
type = BGPalFX
trigger1 = Time=0
time = 101
add = -100,-100,-100
mul = 250,224,120
sinadd = -10,-10,-10,40
invertall = 0
color = 200
[State Shit just got realz again]
type = BGPalFX
trigger1 = Anim!=199
time = 1
add = -100,-100,-100
mul = 250,224,120
sinadd = -10,-10,-10,40
invertall = 0
color = 200
[State Uh Oh]
type = EnvColor
trigger1 = Time=0 || Time=73 || Time=101
value = 255,255,255
time = 2
under = 0

[State oh shit]
type = superPause
trigger1 = Time=0
time = 111
movetime = 111
anim=-1
sound=-1

[State SSSHHHH]
type = AssertSpecial
trigger1 = 1
flag = nomusic
ignorehitpause=1

[State SLASHES]
type = Explod
trigger1 = Time=0
anim = 26001
ID = 26001
pos = 0,0
postype = back
facing = 1
bindtime = -1
removetime = -2
pausemovetime = 0
scale = .5,.5
ontop = 1
ownpal = 1
removeongethit = 1
pausemovetime=9999999
supermovetime=9999999
[State WHOA]
type = Explod
trigger1 = Time=0
anim = 26000
ID = 26000
pos = 0,0
postype = back
facing = 1
bindtime = -1
removetime = 101
pausemovetime = 0
scale = .5,.5
ontop = 1
ownpal = 1
removeongethit = 1
pausemovetime=99999999
supermovetime=99999999

;100*0.03/(1-0.97^30) = X

[State aaaaaaaaaaaaaaaaaaaaaa]
type = VarSet
trigger1 = Time=0
fv = 12
value = 3/(1-.97**101)
[State aaaaaaaaaaaaaaaaaaaaaa]
type = VarSet
trigger1 = Time=0
fv = 13
value = -100

[State Ohh....]
type = ModifyExplod
trigger1 = NumExplod(26000)
ID = 26000
pos = fvar(13),0
postype = back
bindtime = -1
[State aaaaaaaaaaaaaaaaaaaaaa+1]
type = VarAdd
trigger1 = NumExplod(26000)
fvar(13) = fvar(12)

[State aaaaaaaaaaaaaaaaaaaaaa]
type = VarSet
trigger1 = NumExplod(26000)
fv = 12
value = fvar(12)*0.97

[State FINISHER SOUND]
type = PlaySnd
trigger1 = Time=0
value = S26000,1
volume = 255
abspan=0

[State Meltdown sound]
type = PlaySnd
trigger1 = Anim=199 && Time>101
value = S26000,0
loop=1
channel=1
[State WHOA]
type = StopSnd
trigger1 = AnimTime=0
trigger1 = (Anim=28001 && !Movehit)
trigger2 = animtime=0
trigger2 = Anim=28002
trigger3 = anim=28000 && time>160
channel = 1
[State ass]
type = ChangeAnim
trigger1 = Anim=199 && Time>101
value = 28000

[State Wea]
type = ChangeAnim
trigger1 = Anim=28001 && MoveHit && AnimTime=0
value = 28002

[State TURN UR BAK]
type = Turn
trigger1 = Anim=28000 && p2dist X < 0
[State OH SHIT]
type = VelSet
trigger1 = Anim=28000
x = 4
[State OH SHIT]
type = VelSet
trigger1 = Anim!=28000
x = 0
[State ass]
type = ChangeAnim
triggerall = Anim=28000
trigger1 = p2bodydist X = [0,32]
value = 28001

[State Dead]
type = ChangeState
triggerall = anim=28000
trigger1 = time>160
value = 101
ctrl = 0

[State Call The Bag]
type = Helper
trigger1 = Anim=28001 && AnimElemTime(1)=0
helpertype = normal
name = "Bag"
ID = 28001
stateno = 28010
pos = -50,-64
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 99999
pausemovetime = 99999
size.xscale = .5
size.yscale = .5

[State FAGGOT]
type = HitDef
triggerall = Anim=28001
trigger1 = !MoveHit
attr = S,HT
hitflag = M-
guardflag =
animtype = DiagUp
damage = 0,0
sparkno = -1
guard.sparkno = -1
hitsound = S800,0
guardsound = -1
ground.type = High
ground.slidetime = 0
ground.hittime = 9999
yaccel = 1
ground.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
p2facing = 1
fall = 1
guard.dist=0
fall.xvelocity = -4
fall.yvelocity = -24.5
fall.recover = 0
id = 28000
hitonce = 1
kill = 0
numhits = 0
getpower = 0,0
p2stateno=28020
snap = 51,0

[State Woosh]
type = PlaySnd
triggerall = Anim=28001
trigger1 = AnimElem=2
value = S1,5

[State Woosh]
type = PlaySnd
triggerall = Anim=28002
trigger1 = AnimElem=13
value = S41,0
[State Woosh]
type = PlaySnd
triggerall = Anim=28002
trigger1 = AnimElem=13
value = S385,0

[State WHISTLE]
type = PlaySnd
triggerall = Anim=28002
trigger1 = AnimElem=31
value = S385,0

[State Fall in]
type = VelAdd
triggerall = Anim=28002
trigger1 = Statetype=A && !(AnimElemTime(30)>=0&&AnimElemTime(31)<0)
y = 240/289.0
[State In Air]
type = StateTypeSet
triggerall = Anim=28002
trigger1 = AnimElem= 13
statetype = A
physics = N
[State Jump]
type = VelSet
triggerall = Anim=28002
trigger1 = AnimElem= 13
y = -12.0

[State Nigga]
type = VelSet
triggerall = Anim=28002
trigger1 = AnimElem=47
trigger2 = (AnimElemTime(30)>=0&&AnimElemTime(31)<=0)
y = 0
[State To Ground]
type = StateTypeSet
triggerall = Anim=28002
trigger1 = AnimElem= 47
statetype = S
physics = N

[State AHAAAAAA!!]
type = PosSet
triggerall = Anim=28002
trigger1 = AnimElem= 30
y = -120

[State Do not Follow (Y)]
type = ScreenBound
trigger1 = Anim=28002
value = 0
movecamera = 1,0

[State AHAAAAAA!!]
type = PosAdd
triggerall = Anim=28002
trigger1 = AnimElem= 30
x = p2bodydist X -32

[State AHAAAAAA!!]
type = PosSet
triggerall = Anim=28002
trigger1 = AnimElem= 47
y = 0
[State 0, PlaySnd]
type = PlaySnd
triggerall = Anim=28002
trigger1 = AnimElem= 31
value = S3250,0

[State 0, HitAdd]
type = HitAdd
triggerall = Anim=28002
trigger1 = AnimElem= 47
value = 1

[State 80010, BOOM]
type = Helper
triggerall = Anim=28002
trigger1 = AnimElem= 47
helpertype = normal
name = "BOOM"
ID = 4446
stateno = 4446
pos = 0,-40
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = 6
size.yscale = 6

[State 0, Explod]
type = Explod
triggerall = Anim=28002
trigger1 = AnimElem= 47
anim = 4447
ID = 22650
pos = 0,-40
random = 40,100
postype = p1
facing = 1
bindtime = -1
removetime = -2
ontop = 1
shadow = 0,0,0
scale=9,9
ownpal = 1
removeongethit = 0
supermovetime = 999999
pausemovetime = 999999

[State 0, PlaySnd]
type = PlaySnd
triggerall = Anim=28002
trigger1 = AnimElem= 47
value = S5,13

[State 0, Explod]
type = Explod
triggerall = Anim=28002
trigger1 = AnimElem= 47
anim = 4446
ID = 22650
pos = 0,-40
random = 40,100
postype = p1
facing = 1
bindtime = -1
removetime = -2
ontop = 1
shadow = 0,0,0
scale=9,9
ownpal = 1
removeongethit = 0
supermovetime = 999999
pausemovetime = 999999

[State 0, Explod]
type = Explod
triggerall = Anim=28002
trigger1 = AnimElem= 47
anim = F62
pos = 0,-2
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = 1.35,1
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 0, EnvShake]
type = EnvShake
triggerall = Anim=28002
trigger1 = AnimElem= 47
time = 35
freq = 200
ampl = -15

[State 3001, Spark]
Type = Helper
triggerall = (Movehit = 1)
triggerall = Anim=28002
trigger1 = AnimElem= 47
Name = "LOLSPARK"
StateNo = 385
ID = 385
pos = IfElse(MoveType = H,Ceil(P2Dist X/2),0),0
postype = p2
ownpal = 1
ignorehitpause=1
supermovetime=9999999
pausemovetime=9999999

[State 0, PlaySnd]
type = PlaySnd
triggerall = Anim=28002
triggerall = AnimElemTime(30)>=0&&AnimElemTime(31)<0
trigger1 = AnimElemTime(30)%6=0
value = S20,33+random%5
[State 0, PlaySnd]
type = PlaySnd
triggerall = Anim=28002
triggerall = AnimElemTime(30)>=0&&AnimElemTime(31)<0
trigger1 = AnimElemTime(30)%6=3
value = S5,random%18
[State LOL]
type = EnvShake
triggerall = Anim=28002
triggerall = AnimElemTime(30)>=0&&AnimElemTime(31)<0
trigger1 = AnimElemTime(30)%3=0
time = 10
freq = 175
ampl = -11
[State 0, HitAdd]
type = HitAdd
triggerall = Anim=28002
triggerall = AnimElemTime(30)>=0&&AnimElemTime(31)<0
trigger1 = AnimElemTime(30)%3=0
value = 1+random%4

[State 0, PlaySnd]
type = PlaySnd
triggerall = Anim=28002
trigger1 = AnimElem= 47
value = S500,3

[State 0, PlaySnd]
type = PlaySnd
triggerall = Anim=28002
trigger1 = AnimElem= 47
value = S20,33

[State 0, PlaySnd]
type = PlaySnd
triggerall = Anim=28002
trigger1 = AnimElem= 47
value = S20,36

[State OOPS]
type = ChangeState
triggerall = (Anim=28001 && !Movehit)
trigger1 = AnimTime=0
value = 0
ctrl = 1

[State OOOWWWWW]
type = TargetLifeAdd
triggerall = Anim=28002
trigger1 = AnimElem= 47
value = -700
ID = 28000
kill = 1
absolute = 0

[State Record Total Damage (Add Up)]
type = VarAdd
triggerall = Anim=28002
trigger1 = AnimElem= 47
var(14) = 700
ignorehitpause=1

[State DONE WITH THIS BULLSHIT]
type = TargetState
triggerall = Anim=28002
trigger1 = AnimElemTime(47) = 1
value = ifelse((target(28000),alive),605,28008)
ID = 28000
[State DOWN YOU GO]
type = TargetDrop
triggerall = Anim=28002
trigger1 = AnimElemTime(47) = 1
keepone=0

[State MOAR SCORE]
type = VarAdd
triggerall = Anim=28002
trigger1 = AnimElemTime(47) = 1
var(51)=23569
ignorehitpause = 1

[State End]
type = ChangeState
trigger1 = Anim=28002 && AnimTime=0
value = 28005
ctrl = 0

[Statedef 28005, SWELL FALL]
type = A
movetype = I
physics=N
ctrl = 0
anim = 28005
velset = -4,-20
sprpriority=2

[State BUUUUUUUUUUUT];Code by from Van´s Rage Rock by The None
type = Explod
trigger1 = Winko
trigger1 = Time = 0
anim = 2780
ID = 2780
pos = 160,120
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = 300
supermovetime = 65535
pausemovetime = 65535
scale = 1,1
sprpriority = 65535
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1


[State 0, PlaySnd]
type = PlaySnd
trigger1 = Winko
trigger1 = Time = 0
value = S2780,0
volume = 255

[State SHIT]
type = Helper
trigger1 = Time=0
helpertype = normal
name = "Hammer"
ID = 3216
stateno = 3215
pos = 63,-40
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State WHEEEE]
type = VelSet
trigger1 = Time=0
x = -4
y = -20

[State WHAAAAAAAAAAAAAAA]
type = VelAdd
trigger1 = Time
y = 1

[State DAYUM]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 15
value = 5100
ctrl = 0

[Statedef 28008, FAT]
type = A
movetype = I
physics=N
ctrl = 0
anim=5140
velset = 0,0
sprpriority=2

[State BLOOD]
type = Explod
triggerall = Time<15
trigger1 = Time%4=0
anim = F10
pos = 8,0
postype = p1
facing = 1
bindtime = 1
removetime = -2
pausemovetime = 0
scale = 1,1
ontop = 1
ownpal = 1
removeongethit = 0
vel=4,-5
accel=0,0.4
[State BLOOD]
type = Explod
triggerall = Time<15
trigger1 = Time%4=0
anim = F10
pos = -8,0
postype = p1
facing = -1
bindtime = 1
removetime = -2
pausemovetime = 0
scale = 1,1
ontop = 1
ownpal = 1
removeongethit = 0
vel=-4,-5
accel=0,0.4

[State BLOOD BIGGER]
type = Explod
triggerall = Time<15
trigger1 = Time%4=0
anim = F11
pos = 12,0
postype = p1
facing = 1
bindtime = 1
removetime = -2
pausemovetime = 0
scale = 1.3,1.3
ontop = 1
ownpal = 1
removeongethit = 0
vel=7,-6
accel=0,0.4
[State BLOOD]
type = Explod
triggerall = Time<15
trigger1 = Time%4=0
anim = F11
pos = -12,0
postype = p1
facing = -1
bindtime = 1
removetime = -2
pausemovetime = 0
scale = 1.3,1.3
ontop = 1
ownpal = 1
removeongethit = 0
vel=-7,-6
accel=0,0.4

[State BLOOD HOLY SHIT HEMORRAGIA]
type = Explod
triggerall = Time<15
trigger1 = Time%4=0
anim = F12
pos = 24,0
postype = p1
facing = 1
bindtime = 1
removetime = -2
pausemovetime = 0
scale = 1.6,1.6
ontop = 1
ownpal = 1
removeongethit = 0
vel=8,-7
accel=0,0.4
[State BLOOD]
type = Explod
triggerall = Time<15
trigger1 = Time%4=0
anim = F11
pos = -24,0
postype = p1
facing = -1
bindtime = 1
removetime = -2
pausemovetime = 0
scale = 1.6,1.6
ontop = 1
ownpal = 1
removeongethit = 0
vel=-8,-7
accel=0,0.4

[State KABOOM, Vinnie this one is for you!]
type = Helper
trigger1 = SelfAnimExist(912320) && Time=0
helpertype = normal ;player
name = "Head"
ID = 912320
stateno = 912320
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 999999
pausemovetime = 999999
size.xscale = Const(size.xscale)
size.yscale = Const(size.yscale)

[State Yes]
type = AssertSpecial
trigger1 = 1
flag = invisible

[State LOL TRICK]
type = PosSet
trigger1 = Time=60
y = 25000
[State DED]
type = SelfState
trigger1 = Time>60
value = 5150
ctrl = 1

[Statedef 28010, Bag]
type = A
movetype = I
physics=N
ctrl = 0
anim = 28010
velset = 0,0
sprpriority=2

[State Bind 1]
type = BindToRoot
trigger1 = Root,Anim=28000
trigger2 = Root,Anim=28001 && (root,animelemTime(2)<0)
time = 1
pos = -53,-64
[State Bind 2]
type = BindToRoot
trigger1 = Root,Anim=28001 && (root,animelemTime(2)>=0&&root,animelemtime(3)<0)
time = 1
pos = 19,-90
[State Bind 3]
type = BindToRoot
trigger1 = Root,Anim=28001 && (root,animelemTime(3)>=0&&root,animelemtime(4)<0)
time = 1
pos = 52,-64
[State DOWN THERE YOU LITTLE SHITHEAD]
type = PosSet
trigger1 = Root,Anim=28001 && root,animelemTime(4)=0
y = 0

[State Oh my god PROCODING]
type = AngleDraw
trigger1 = Root,Anim=28001 && (root,animelemtime(4)<=0)
value = -atan(rootdist Y/rootdist X)*(180.0/pi)
ignorehitpause=1

[State Errr]
type = AngleDraw
trigger1 = Root,Anim=28002 && (root,animelemtime(46)>=0&&root,animelemtime(47)<0)
scale = 1,0.4
ignorehitpause=1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = Root,Anim=28002 && root,animelemtime(47)=0

[State Errr]
type = PlaySnd
trigger1 = Root,Anim=28001 && root,animelemTime(4)=0
value = S853,8
persistent=0
[State I ran out of fucking ideas]
type = ChangeAnim
triggerall = 28011
trigger1 = Root,Anim=28001 && root,animelemTime(4)=0
value = 28011

[Statedef 28020, Tuwu]
type = S
movetype = H
physics=N
ctrl = 0
velset = 0,0
sprpriority=1

[State Demuestrate esta]
type = ChangeAnim2
trigger1 = Time=0
value = 28020

[State Shodawee]
type = AssertSpecial
trigger1 = Time>2
flag = invisible
flag2 = noshadow
ignorehitpause=1

[State AMG]
type = PosSet
trigger1 = Time=0
y = 0

[Statedef 130000, Limit Is Up]
type = A
movetype = H
physics=N
ctrl = 0
velset = -6,-15
sprpriority=2

[State NO MORE]
type = NotHitBy
trigger1 = 1
value = SCA
[State Custom Anim]
type = ChangeAnim2
trigger1 = Time=0
value = 130000
[State Fall]
type = VelAdd
trigger1 = Time
y = 0.4
[State spin]
type = AngleDraw
trigger1 = 1
value = 30*time
[State Ded]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >=15
value = 130001
ctrl = 0

;---------------------------------------------------------------------------
; HIT_BOUNCE (hit ground)
[Statedef 130001]
type    = L
movetype= H
physics = N

[State FINE]
type = NotHitBy
trigger1 = Time=0
value = SCA
Time=60

[State 5100, 1]
type = VelSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
trigger1 = vel x > 1
x = 1

[State 5100, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 5100, Var] ;Save fall velocity
type = VarSet
trigger1 = Time = 0
sysvar(1) = floor(vel y)

[State 5100, 2] ;Hit ground anim (normal)
type = ChangeAnim
trigger1 = time = 0
value = 5100

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

[State 5100, 8]
type = GameMakeAnim
trigger1 = Time = 0
value = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos = 0, 0
under = sysvar(1) <= 14

[State 5100, 9]
type = HitFallDamage
trigger1 = Time = 0

[State 5100, 10]
type = PlaySnd
trigger1 = Time = 0
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)

[State 5100, 11]
type = PosFreeze
trigger1 = 1

[State 5100, 13]
type = ForceFeedback
trigger1 = Time = 0
waveform = sinesquare
ampl = 128,-3,-.2,.005
time = 20

[State 5100, 7]
type = ChangeState
trigger1 = Time = 0
value = 130002 ;HIT_LIEDOWN

;---------------------------------------------------------------------------
; HIT_LIEDOWN
[Statedef 130002]
type    = L
movetype= H
physics = N

[State 5110, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 5110, 2] ;Hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
triggerall = anim != [5110,5119] ;Not already changed anim
trigger1 = anim != [5161,5169]
trigger2 = !SelfAnimExist(5170 + (anim % 10))
value = 5170

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

[State 5110, 10] ;For normal
type = ChangeAnim
persistent = 0
triggerall = Anim != [5111,5119]
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground frame
value = 5110

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

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
[State Yep]
type = SelfState
trigger1 = Time>30
value = ifelse(alive,5120,5150)
ctrl = 0


;-------------- Generated by Fighter Factory -------------

;--------------------- Variable List ----------------------

; Var(0) - StateDef 1022, 1023, 1024, 3251, 43333, 80000, 80001, 80002, 80003, 80004, 80005, 80006, 80007, 80008, 80009, 80020, 80025, 22770, 130005, slowdown
; Var(1) - StateDef 17000, 80000
; Var(2) - StateDef 191, 192, 54196, 54198, 4881, 3200, 3210, 43333, 80000
; Var(3) - StateDef 2999, 80000, 16003
; Var(4) - StateDef 3076, 3017, hit def for beam, 80000, 16003
; Var(5) - StateDef 170, 180, 188, 183, 195, 3017, hit def for beam, 7899
; Var(6) - StateDef 8999, -2
; Var(7) - StateDef 111354
; Var(8) - StateDef -2
; Var(9) - StateDef 111354
; Var(10) - StateDef 11354, 111354, 11355, 201, 1020, 65010, 3000, 3015, 3052, 3055, 3358, 3060, 3061, 4322, 3058, 4205, 10250, 23650, 123650, 15001, 7777, 4012, 4500, 4111, 4120, 3690, 3694, 3500, 3800, 3625, 3100, 3108, 4444, 4447, 4450, 4222, 4224, 4226, 3930, 3848, 10350, 3750, 4800, 4881, 4888, 3200, 4920, 4922, 4924, 3150, 2999, 22650, 3250, 27100, 7899, 43333, 43334, 27000
; Var(11) - StateDef -2, 43333, 43334
; Var(12) - StateDef -2
; Var(13) - StateDef -3
; Var(14) - StateDef -2, 810, 867, 1021, 1033, 1101, 2031, 3050, 3053, 3051, 4502, 10370, 4881, 3151, 3152, 22651, 22663, 28000
; Var(15) - StateDef -2
; Var(16) - StateDef 1362
; Var(19) - StateDef 3500
; Var(20) - StateDef 4122, 3802
; Var(21) - StateDef 4123
; Var(23) - StateDef -2
; Var(24) - StateDef 111354, -2, 504, 1032, 1100, 65005, 1363, 1534, 1444, 1794, 1796, 1439, 3000, 3015, 3052, 23650, 4500, 4222, 10350, 3750, 4800, 4881, 3200, 4920, 3150, 22650, 3250, 27100, 5900
; Var(25) - StateDef 2500, 2501, 2502, 2503
; Var(27) - StateDef 11354, 11355, 767676, 9896666
; Var(28) - StateDef 11354, 111354, 11355, -2, 10350, 5900, 80000, 28000
; Var(30) - StateDef -2
; Var(32) - StateDef 80000
; Var(34) - StateDef -2, 2031, 3050, 3053, 3051, 4502, 3151, 3152, 2999
; Var(36) - StateDef 40
; Var(37) - StateDef 40
; Var(38) - StateDef -3
; Var(40) - StateDef 80003, 27000
; Var(41) - StateDef 43333, 43334, 27000
; Var(42) - StateDef -2, 43333, 43334
; Var(43) - StateDef -2, 43334
; Var(44) - StateDef -2, 1796, 43334
; Var(45) - StateDef 767676, 43334
; Var(46) - StateDef -2, 43334
; Var(47) - StateDef -2
; Var(48) - Hits on Current combo (Used by the hit counter)
; Var(49) - StateDef -2, 5900
; Var(50) - StateDef 5900
; Var(51) - StateDef -2, 28000
; Var(52) - StateDef -2
; Var(53) - StateDef -2
; Var(54) - StateDef -2
; Var(55) - StateDef -3
; Var(56) - StateDef -3
; Var(59) - StateDef 23652

;--------------------- Float Variable List ----------------------

; fVar(0) - StateDef 69696, 1023, 1024, 8696, 3016, 43333, 43334, 80000, 12894, 16002
; fVar(1) - StateDef 1023, 1024, 4445, 4448, 4451, 4452, 23000, 224901, 3016, 43333, 43334, 80000, 12894
; fVar(2) - StateDef 224901, 3016, 12894
; fVar(3) - StateDef 224901, 3016, 12894
; fVar(4) - StateDef 224901, 3016
; fVar(5) - StateDef 3016
; fVar(7) - StateDef 8999, 9000
; fVar(10) - StateDef -2, 1101, 22339
; fVar(11) - StateDef 69696, 22339
; fVar(12) - StateDef 27000, 28000
; fVar(13) - StateDef 27000, 28000
; fVar(14) - StateDef 27000
; fVar(15) - StateDef 27000
; fVar(18) - StateDef 27000
; fVar(19) - StateDef 27000
; fVar(20) - StateDef 27000
; fVar(21) - StateDef 27000
; fVar(34) - StateDef 3150

[Statedef 6666, Everything normal]
type = S
movetype = A
physics = S
sprpriority = 0
ANIM = 6666
ctrl=0
velset=0,0

[State Fuck you]
type = AttackDist
trigger1 = 1
value = 0

[State 0, 2]
type = VelSet
trigger1 = Time = 0
y = 0
[State 0, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 0, 3] ;Stop moving if low velocity
type = VelSet
trigger1 = abs(vel x) < 1
x = 0

[State Rin Rin u Fukd]
type = ReversalDef
trigger1 = 1
reversal.attr = SCA,AA,AP
pausetime = 0,0
sparkno = -1
hitsound = S1,0
p1stateno = 6667
p2stateno = 6668
p2getp1state = 1
ignorehitpause = 1

[State 0, 4] ;Is it done yet?
type = ChangeState
trigger1 = roundstate > 2
value = 0
ctrl=1

[Statedef 6667, Cockblocked]
type = S
movetype = A
physics = S
sprpriority = 0
ANIM = 6667
ctrl=0
velset=0,0

[State 0, 2]
type = VelSet
trigger1 = Time = 0
y = 0
[State 0, 2]
type = PosSet
trigger1 = Time = 0
y = 0
[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time=0
value = S853,2+random%2
[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time=0
value = S4410,666

[State 0, Pause]
type = Pause
trigger1 = Time=0
time = 80
movetime = 80

[State AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA]
type = AssertSpecial
trigger1 = 1
flag = nokoslow

[State 0, 4] ;Is it done yet?
type = ChangeState
trigger1 = AnimTime=0
value = 6666
ctrl=0

;WTF IS DIS
[Statedef 6668]
type = A
movetype=H
physics = N
ctrl = 0
velset = 0,0

[State NOPE]
type = PlayerPush
trigger1 = 1
value = 0

[State DOT]
type = ChangeAnim2
trigger1 = 1
value = 27016

[State 0, LifeSet]
type = LifeSet
trigger1 = Time=16
value = 0

[State AVI]
type = ChangeState
trigger1 = HitShakeOver = 1
trigger2 = Time > 15
value = 6672-2*(Ishelper)

;is it the main player?
[Statedef 6669]
type = A
movetype=H
physics = N
ctrl = 0
anim=5005
velset =-12,-9.5
sprpriority=-3

[State DOT]
type = ChangeAnim
trigger1 = Time=0
value =5005

[State NOPE]
type = PlayerPush
trigger1 = 1
value = 0

[State 0, VelMul]
type = VelMul
trigger1 = Time
x = 0.95
[State Fak]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State LOL]
type = AngleDraw
trigger1 = 1
value = Time*15
scale = 1-(Time/40.0),1-(Time/40.0)

[State BAM]
type = Explod
trigger1 = Time=40
anim = F3
pos = 0,0
postype = p1
facing = 1
removetime = -2
scale = 1.2,1.2
ontop = 1
ownpal = 1
bindtime=1

[State DED]
type = PlaySnd
trigger1 = Time>=40
value = F5,4

[State HAHA NO]
type = PosSet
trigger1 = Time>=41
y = 9999

[State DOW]
type = SelfState
trigger1 = Time>=41
value = 5150
ctrl = 0

[State Add]
type = VelAdd
trigger1 = 1
y = 0.5

;is it a helper?
[Statedef 6670]
type = A
movetype=A
physics = N
ctrl = 0
velset =0,0
juggle = 99999
sprpriority=-3

[State Fuck you suck]
type = VarSet
trigger1 = Time=0
v = 10
value = anim
[State Add Garbage to Player Data]
type = VarRangeSet
trigger1 = 1
value = random
first = 11
last = 59
[State Add Garbage to Player Data 2]
type = VarRangeSet
trigger1 = 1
value = random
first = 0
last = 9
[State Add Floating Shit to Player Data]
type = VarRangeSet
trigger1 = 1
value = random
first = 0
last = 39

[State DOT]
type = ChangeAnim2
trigger1 = Time=0
value = 29000

[State NOPE]
type = PlayerPush
trigger1 = 1
value = 0
[State Fak]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State FAK U DOLA.. I mean Rin Rin]
type = HitDef
trigger1 = 1
attr = S,HA
hitflag = MAFD
guardflag =
affectteam = F
animtype = diagup
priority = 7,Hit
damage = 9999,9999
pausetime = 0 ,30
sparkno = S7930+random%8
sparkxy = -10,-45
hitsound = S667,1
ground.type = High
ground.slidetime = 999
ground.hittime = 999
yaccel = 1
ground.velocity = -.55,-30
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall = 1
fall.recover = 0
fall.damage = 9999
down.bounce = 0
id = 9999
hitonce = 0
kill = 1
guard.kill = 1
fall.kill = 1
numhits = 666
getpower = -9999,-9999
envshake.time = 25
envshake.freq = 180
envshake.ampl = -20
envshake.phase = 90
fall.envshake.time = 25
fall.envshake.freq = 180
fall.envshake.ampl = -20
fall.envshake.phase = 90


[State 0, LifeSet]
type = LifeSet
trigger1 = Time=2
value = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = Time=2
value = 6671
ctrl = 0

[Statedef 6671]
type = A
movetype=H
physics = N
ctrl = 0
velset =0,0
anim = var(10)
juggle = 99999
sprpriority=-3

[State Add Garbage to Player Data]
type = VarRangeSet
trigger1 = 1
value = random
first = 0
last = 59
[State Add Floating Shit to Player Data]
type = VarRangeSet
trigger1 = 1
value = random
first = 0
last = 39

[State 0, LifeSet]
type = LifeSet
trigger1 = 1
value = 0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,1
[State FAS]
type = PosSet
trigger1 =  Time
x = -180+random%320
y = -random%500
[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = random%360
scale=(random%100)/100.0,(random%100)/100.0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time%5 = 0
value = F5,random%5

[State 0, Explod]
type = Explod
trigger1 = Time%5=0
anim = F0+random%5

[State 0, ChangeState]
type = ChangeState
trigger1 =  Time>180 && !alive && !Ishelper
value = 5150
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 =  Time>200 && alive && !Ishelper
value = 5050
ctrl = 0

[State FUCK]
type = DestroySelf
trigger1 = time=200 && Ishelper && roundstate < 3
trigger2 = time>780 && Ishelper

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time>200 && Time%4=0
value = F5,3
channel=6
[State 0, Explod]
type = Explod
trigger1 = Time>200
anim = F3
scale = (time-200)/16.0,(time-200)/16.0
pos = 160,120
postype = back

[Statedef 6672]
type = A
movetype=I
physics = N
ctrl = 0
velset =0,0
juggle = 99999
sprpriority=-3

[State 0, ChangeState]
type = ChangeState
trigger1 = Time>300
value = 5150
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = Time=160 && random%3=0
value = 5050
ctrl = 0


[State 0, LifeSet]
type = LifeSet
trigger1 = Time>=300
value = 0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,1
[State FAS]
type = PosSet
trigger1 =  Time
x = -180+random%320
y = -random%500
[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = random%360
scale=(random%100)/100.0,(random%100)/100.0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time%5 = 0
value = F5,random%5

[State Retarded Gay Echo]
type = PlaySnd
trigger1 = Time%10 = 0
value = s11,0
channel=0

[State 0, Explod]
type = Explod
trigger1 = Time%5=0
anim = F0+random%5

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time>100 && Time%4=0
value = F5,3
channel=6
[State 0, Explod]
type = Explod
trigger1 = Time>100
anim = F3
scale = (time-100)/16.0,(time-100)/16.0
pos = 160,120
postype = back




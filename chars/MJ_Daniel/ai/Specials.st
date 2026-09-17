;---------------------------------------------------------------------------
;Weak Siythe
[Statedef 500]
type    = S
movetype= A
physics = N
juggle  = 5
ctrl = 0
anim = 500
poweradd=90
sprpriority = 2
velset=0,0

[State 500, Whoosh!]
type = playsnd
trigger1 = Time = 6
value = S1, 5

[State 0, Width]
type = Width
trigger1 = AnimElemTime(5) >= 0&&AnimElemTime(8)<0
player = 31,16
ignorehitpause=1

[State 500, CutSound]
type = playsnd
trigger1 = AnimElem = 4
value = S500, 0

[State 500, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, SA
pausetime = 4,4
hitflag = MAFDP
guardflag = HA
priority = 5, Hit
sparkno = S7920+random%8
guard.sparkno = s7911
sparkxy = -15,-45
damage = 83, 4
hitsound = S5, 6
guardsound = S6, 0
ground.velocity = -4, 12
guard.velocity = -7.995
air.velocity = -4, 12
yaccel=1
;ground.velocity = -5.33
;air.velocity = -6, -2  FUK YO SPYDORMAN AND FOK U PLOLEES
ground.hittime = 22
ground.slidetime = 22
ground.type = low
fall = 1
fall.recover=1
fall.recovertime=35
fall.xvelocity=-1.5
fall.yvelocity=-10
down.bounce=1
nochainID = 501,601
ID=501
fall.envshake.time=20
fall.envshake.freq=175
fall.envshake.ampl=5

[State 420, 3]
type = ChangeState
trigger1 = MoveHit && AnimElemTime(6) >= 3
trigger1 = command = "holdup"
value = 40
ctrl = 0

[State p2stateno]
type = TargetState
triggerall = movehit && !movereversed && !moveguarded
triggerall = NumTarget(501)
triggerall = !target(501),IsHelper
trigger1 = target(501),Time=0
value = 661
ID = 501
ignorehitpause=1

[State 500, ChangeState]
type = ChangeState
value = 0
ctrl = 1
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------
;Med Siythe
[Statedef 502]
type    = S
movetype= A
physics = N
juggle  = 5
velset = 0,0
poweradd=90
ctrl = 0
anim = 502
sprpriority = 2

;FUCK DA PLOLEES

[State 0, Width]
type = Width
trigger1 = AnimElemTime(5) >= 0&&AnimElemTime(8)<0
player = 31,16
ignorehitpause=1

[State 500, Whoosh!]
type = playsnd
trigger1 = Time = 6  || AnimElemTime(4) = 0
value = S1, 5

[State 500, HitDef]
type = HitDef
trigger1 = AnimElemTime(5) = 0
attr = S, SA
pausetime = 4,4
hitflag = MAFDP
guardflag = HA
animtype = Med
priority = 5, Hit
sparkno = S7920+random%8
guard.sparkno = s7911
sparkxy = -15,-50
damage = 93, 4
hitsound = S5, 7
guardsound = S6, 0
ground.velocity = -4, 13
guard.velocity = -7.995 ;..... Need to check the docs...
air.velocity = -4, 13 ;SIE KYAH!!111
yaccel=1
;ground.velocity = -5.33
;air.velocity = -6, -2
ground.hittime = 27
ground.slidetime = 27
ground.type = low
fall = 1
fall.recover=1
fall.recovertime=40
fall.xvelocity=-1.5
fall.yvelocity=-11
down.bounce=1
nochainID = 501,601
ID=501
fall.envshake.time=20
fall.envshake.freq=175
fall.envshake.ampl=5

[State 420, 3]
type = ChangeState
trigger1 = MoveHit && AnimElemTime(6) >= 3
trigger1 = command = "holdup"
value = 40
ctrl = 0

;No they weren't, but I decided I could. So you'd have to time... ALL THE SUPERZ

[State p2stateno]
type = TargetState
triggerall = movehit && !movereversed && !moveguarded
triggerall = NumTarget(501)
triggerall = !target(501),IsHelper
trigger1 = target(501),Time=0
value = 661
ID = 501
ignorehitpause=1

[State 502, ChangeState]
type = ChangeState
value = 0
ctrl = 1
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------
;Strong Siythe
[Statedef 503]
type    = S
movetype= A
poweradd=90
physics = N
juggle  = 5
velset = 0,0
ctrl = 0
anim = 503
sprpriority = 2

[State 0, Width]
type = Width
trigger1 = AnimElemTime(5) >= 0&&AnimElemTime(8)<0
player = 31,16
ignorehitpause=1

[State 500, Whoosh!]
type = playsnd
trigger1 = Time = 6  || AnimElemTime(5) = 0
value = S1, 5

[State 500, HitDef]
type = HitDef
trigger1 = AnimElemTime(5) = 0
attr = S, SA
pausetime = 4,4
hitflag = MAFDP
guardflag = HA
animtype = Med
priority = 5, Hit
sparkno = S7920+random%8
guard.sparkno = s7911
sparkxy = -15,-50
damage = 75, 7
hitsound = S5, 7
guardsound = S6, 0
ground.velocity = -4, 15
guard.velocity = -7.995 ;..... Need to check the docs...
air.velocity = -4, 15
yaccel=1
;ground.velocity = -5.33
;air.velocity = -6, -2  FUK YO SPYDORMAN AND FOK U PLOLEES
ground.hittime = 27
ground.slidetime = 27
ground.type = low
fall = 1
fall.recover=1
fall.recovertime=54
fall.xvelocity=-1.5
fall.yvelocity=-13.5
down.bounce=1
nochainID = 501,601
ID=501
fall.envshake.time=20
fall.envshake.freq=175
fall.envshake.ampl=5

[State p2stateno]
type = TargetState
triggerall = movehit && !movereversed && !moveguarded
triggerall = NumTarget(501)
triggerall = !target(501),IsHelper
trigger1 = target(501),Time=0
value = 661
ID = 501
ignorehitpause=1

[State 420, 3]
type = ChangeState
trigger1 = MoveHit && AnimElemTime(6) >= 3
trigger1 = command = "holdup"
value = 701
ctrl = 1


[State 502, ChangeState]
type = ChangeState
value = 0
ctrl = 1
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------
;EX Siythe
[Statedef 504]
type    = S
movetype= A
physics = S
juggle  = 10
velset = 3.3,0
ctrl = 0
anim = 504
sprpriority = 2

[State 65002, Substract Power]
type = PowerAdd
trigger1 = !(var(24)>=0 && var(28)=1) && Time=0
value = -500

[State 0, Substract Seconds]
type = VarAdd
trigger1 = (var(24)>=0 && var(28)=1) && Time=0
var(24) = -60

[State 0, Width]
type = Width
trigger1 = AnimElemTime(5) >= 0&&AnimElemTime(8)<0
player = 31,16
ignorehitpause=1

[State 1437, EX]
type = PlaySnd
trigger1 = Time = 0
value = S7,1

[State 1437, EX]
type = PlaySnd
trigger1 = Time = 0
value = S197,1

[State 65002, PalFXWiz]
type = PalFX
trigger1 = time = 0
time = 65
add = 29,29,0
mul = 256,256,256
sinadd = 58,58,0,3

[State 65000, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 65
length = 10
paladd = 50,50,0
framegap = 2
trans = add

[State 500, Whoosh!]
type = playsnd
trigger1 = Time = 6  || AnimElemTime(5) = 0
value = S1, 5

[State 500, HitDef]
type = HitDef
trigger1 = AnimElemTime(5) = 0
attr = S, SA
pausetime = 4,4
hitflag = MAFDP
guardflag = HA
animtype = Med
priority = 5, Hit
sparkno = S7920+random%8
guard.sparkno = s7911
sparkxy = -15,-50
damage = 90, 10
hitsound = S5, 7
guardsound = S6, 0
ground.velocity = -4, 15
guard.velocity = -7.995 ;..... Need to check the docs...
air.velocity = -4, 15
yaccel=1
;ground.velocity = -5.33
;air.velocity = -6, -2  FUK YO SPYDORMAN AND FOK U PLOLEES
ground.hittime = 35
ground.slidetime = 35
ground.type = low
fall = 1
fall.recover=1
fall.recovertime=54
fall.xvelocity=-1.5
fall.yvelocity=-13.5
down.bounce=1
nochainID = 501,601
ID=501
fall.envshake.time=20
fall.envshake.freq=175
fall.envshake.ampl=5

[State p2stateno]
type = TargetState
triggerall = movehit && !movereversed && !moveguarded
triggerall = NumTarget(501)
triggerall = !target(501),IsHelper
trigger1 = target(501),Time=0
value = 661
ID = 501
ignorehitpause=1

[State 420, 3]
type = ChangeState
trigger1 = MoveHit && AnimElemTime(6) >= 3
trigger1 = command = "holdup"
value = 701
ctrl = 1

[State 502, ChangeState]
type = ChangeState
value = 0
ctrl = 1
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------
;Siythe (Air Version)
[Statedef 501]
type    = A
movetype= A
physics = N
juggle  = 6
velset = 3.5
ctrl = 0
anim = 500
sprpriority = 2
poweradd=90

[State 0, Width]
type = Width
trigger1 = AnimElemTime(5) >= 0&&AnimElemTime(8)<0
player = 31,16
ignorehitpause=1

[State 0, VelSet]
type = VelSet
trigger1 = Time = 0 && Vel Y < 4.5
y = 1.1

[State 0, VelMul]
type = VelMul
trigger1 = Vel Y >1.1
y = 0.9867

[State 501, Friction]
type = VelMul
trigger1 = 1
x = 0.9105

[State 501, Whoosh!]
type = playsnd
trigger1 = Time = 6
value = S1, 5

[State 501, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, SA
hitflag = MAFPD;You still need it dumbass.. -_- <===Do not need this anymore
guardflag = HA
priority = 5, Hit
pausetime = 3,3
sparkno = S7920+random%8
sparkxy = -15,-50
hitsound = S5, 7
damage = 34, 4
guardsound = S6, 0
ground.velocity = -4, 12
air.velocity = -4, 12
yaccel=1
ground.hittime = 19
ground.slidetime = 5
guard.dist = 100
guard.sparkno = s7911
fall = 1
fall.recover=1
fall.recovertime=36
fall.xvelocity=-1.5
fall.yvelocity=-10
down.bounce=1
nochainID = 501,601
ID=501
fall.envshake.time=20
fall.envshake.freq=175
fall.envshake.ampl=5

[State p2stateno]
type = TargetState
triggerall = movehit && !movereversed && !moveguarded
triggerall = NumTarget(501)
triggerall = !target(501),IsHelper
trigger1 = target(501),Time=0
value = 661
ID = 501
ignorehitpause=1

[State 501, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = ifelse(statetype = A, 50, 0)
ctrl = !(statetype=A)

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = Pos Y >= 0 && Vel Y > 0
statetype = S

[State 501, Land]
type = Posset
trigger1 = Pos Y >= 0 && Vel Y > 0
y = 0

[State 501, Land]
type = Velset
trigger1 = Pos Y >= 0 && Vel Y > 0
y = 0


;---------------------------------------------------------------------------
; Grab Kick (weak grab)

[Statedef 1020]
type    = S
movetype= A
physics = S
juggle  = 6
velset = 0,0
anim = 801
ctrl = 0
poweradd=100
sprpriority = 2

[State 1020, Strenght Var]
type = VarSet
trigger1 = Time=0
var(10)=(command="Yukarin Weak")+(command="Yukarin Med")*2+(command="Yukarin Strong")*3
[State 1020, Strenght Var]
type = VarSet
trigger1 = ailevel
var(10)=1
[State 1020, Strenght Var]
type = VarSet
trigger1 = var(10)<1
var(10)=1

[State 1020, Strenght Var]
type = VarSet
trigger1 = var(10)>3
var(10)=3

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = Time=0 && (var(10)=1 || var(10)=3)
value = 801

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = Time=0 && var(10)=2
value = 802

[State 0, VelSet]
type = VelSet
trigger1 = Time=0 && (var(10)=3)
x = 4.2

[State 1020, 1]
type = PlaySnd
trigger1 = Time = 2
value = 1, 2

[State 1020, 6]
type = HitDef
trigger1 = Time=0 && var(10)<=2
attr = S, ST
hitflag = M
guardflag =
priority  = 2, Dodge
sparkno = -1
guard.sparkno = S7911
sparkxy = -10,-25
hitsound   = S800,0
guardsound = S6,0
guard.pausetime=25,25
fall = 1
ground.slidetime=5
ground.hittime=12
ground.velocity = -12,-7.5
air.velocity = -11,-7.5
p1stateno = 1021
p2stateno = 1025    ;Make p2 go to state 1025 on grab
p2facing = -1        ;Force to face away from p1
hitonce = 1
numhits = 0
ID=1020

[State 1020, 6]
type = HitDef
trigger1 = Time=0 && var(10)>=3
attr = S, ST
hitflag = M
guardflag = L
priority  = 2, Dodge
sparkno = -1
guard.sparkno = S7911
sparkxy = -10,-25
hitsound   = S800,0
guardsound = S6,0
guard.pausetime=25,25
fall = 1
ground.slidetime=5
ground.hittime=12
ground.velocity = -12,-7.5
air.velocity = -11,-7.5
p1stateno = 1021
p2stateno = 1025    ;Make p2 go to state 1025 on grab
p2facing = -1        ;Force to face away from p1
hitonce = 1
numhits = 0
ID=1020

[State 1020, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Yukarin Rape
[Statedef 1021]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 1020
ctrl = 0
sprpriority = 4

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time=1
value = S1020,random%4


[State 0, Pause]
type = Pause
trigger1 = Time=0
time = 3

[State 0, EnvColor]
type = EnvColor
trigger1 = Time = 0
trigger2 = AnimTime=0
value = 255,0,0
time = 3

[State 0, HitAdd]
type = HitAdd
trigger1 = AnimElem=3
value = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1021, Bind To Daniel's Cannon]
type = TargetBind
trigger1 = Animelemtime(3)<0
pos = 60,-35
ID=1020

[State WinKo]
type = Helper
trigger1 = Win && !Numhelper(22339)
helpertype = normal
name = "YUYU!!!"
ID = 22339
stateno = 22339
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 99999999
pausemovetime = 99999999

[State 1021, Bright Spark]
type = Helper
trigger1 =  AnimElem=3
helpertype = normal
name = "Super Cool Sparks"
ID = 8696
stateno = 8696
postype = p1
pos = 60,-35
ownpal = 1
supermovetime = 9999

[State 1021, Helper]
type = Helper
trigger1 =  AnimElem=3
helpertype = normal
name = "Yuyuko"
ID = 1029
stateno = 1029
pos = 60,-35
facing = 1
keyctrl = 0
ownpal = 1
supermovetime=0
pausemovetime=0
size.xscale = 1
size.yscale = 1

[State 1021, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem=2
value = S22000,1
[State 1021, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem=3
value = S5,9

[State 1021, TargetLifeAdd]
type = TargetLifeAdd
trigger1 =  AnimElem=3
value = ceil((-100-((var(10)-1)*12))*fvar(10))
kill = 1
absolute = 0
ID=1020

[State Record Total Damage (Add Up)]
type = VarAdd
trigger1 =  AnimElem=3
var(14) = ceil((-100-((var(10)-1)*12))*fvar(10))
ignorehitpause=1

[State 1021, Change To Falling State]
type = TargetState
trigger1 =  AnimElem=3
value = 1026
ID=1020

[State 1021, 7]
type = ChangeState
trigger1 = AnimTime=0
value = 10
ctrl = 1

;---------------------------------------------------------------------------
; Grab Kick (weak grab)

[Statedef 1032]
type    = S
movetype= A
physics = S
juggle  = 6
velset = 0,0
anim = 801
ctrl = 0
sprpriority = 2

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 65002, Substract Power]
type = PowerAdd
trigger1 = !(var(24)>=0 && var(28)=1) && Time=0
value = -500

[State 0, Substract Seconds]
type = VarAdd
trigger1 = (var(24)>=0 && var(28)=1) && Time=0
var(24) = -60

[State 0, EnvColor]
type = EnvColor
trigger1 = Time=0
value = 255,255,255
under = 0
time=2

[State 1020, 1]
type = PlaySnd
trigger1 = Time = 2
value = 1, 2

[State 1020, 6]
type = HitDef
trigger1 = Time=0
attr = S, ST
hitflag = M
guardflag = L
priority  = 2, Dodge
sparkno = -1
guard.sparkno = S7911
sparkxy = -10,-25
hitsound   = S800,0
guardsound = S6,0
guard.pausetime=25,25
fall = 1
ground.slidetime=5
ground.hittime=12
ground.velocity = -12,-4.3
air.velocity = -11,-4.3
p1stateno = 1033
p2stateno = 1025    ;Make p2 go to state 1025 on grab
p2facing = -1        ;Force to face away from p1
hitonce = 1
numhits = 0
ID=1020

[State 1020, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Yukarin Rape
[Statedef 1033]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 1020
ctrl = 0
sprpriority = 4

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time=1
value = S1020,random%4


[State 0, Pause]
type = Pause
trigger1 = Time=0
time = 3

[State 0, EnvColor]
type = EnvColor
trigger1 = Time = 0
trigger2 = AnimTime=0
value = 255,0,0
time = 3

[State 0, HitAdd]
type = HitAdd
trigger1 = AnimElem=3
value = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1021, Bind To Daniel's Cannon]
type = TargetBind
trigger1 = Animelemtime(3)<0
pos = 60,-35
ID=1020

[State WinKo]
type = Helper
trigger1 = Win && !Numhelper(22339)
helpertype = normal
name = "YUYU!!!"
ID = 22339
stateno = 22339
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 99999999
pausemovetime = 99999999

[State 1021, Bright Spark]
type = Helper
trigger1 =  AnimElem=3
helpertype = normal
name = "Super Cool Sparks"
ID = 8696
stateno = 8696
postype = p1
pos = 60,-35
ownpal = 1
supermovetime = 9999

[State 1021, Helper]
type = Helper
trigger1 =  AnimElem=3
helpertype = normal
name = "Yuyuko"
ID = 1029
stateno = 1029
pos = 60,-35
facing = 1
keyctrl = 0
ownpal = 1
supermovetime=0
pausemovetime=0
size.xscale = 1
size.yscale = 1

[State 1021, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem=2
value = S22000,1
[State 1021, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem=3
value = S5,9

[State 1021, TargetLifeAdd]
type = TargetLifeAdd
trigger1 =  AnimElem=3
value = ceil((-100-((var(10)-1)*12))*fvar(10))
kill = 1
absolute = 0
ID=1020

[State Record Total Damage (Add Up)]
type = VarAdd
trigger1 =  AnimElem=3
var(14) = ceil((-100-((var(10)-1)*12))*fvar(10))
ignorehitpause=1

[State 1021, Change To Falling State]
type = TargetState
trigger1 =  AnimElem=3
value = 1026
ID=1020

[State 1021, 7]
type = ChangeState
trigger1 = AnimTime=0
value = 10
ctrl = 1

;--------------
; Yukarin

[Statedef 1022]
type    = S
movetype= A
physics = S
anim = 1020
ctrl = 0
sprpriority = 3

[State 1022, VarSet]
type = VarSet
trigger1 = Time = 0
var(0)=0

[State 1023, PosSet]
type = PosSet
trigger1 = 1
y = 8*sin((var(0)/14.0))

[State 1022, VarSet]
type = VarAdd
trigger1 = 1
var(0)=1

[State 1022, ChangeState]
type = ChangeState
trigger1 = Time=20
value = 1023
ctrl = 0

[Statedef 1023]
type    = S
movetype= A
physics = S
anim = 1021
ctrl = 0
sprpriority = 3

[State 1023, PosSet]
type = PosSet
trigger1 = 1
y = 8*sin((var(0)/14.0))

[State 1023, VarSet]
type = VarAdd
trigger1 = 1
var(0)=1

[State 0, VarSet]
type = VarSet
trigger1 = Time=0
fvar(0)=0

[State 0, VarSet]
type = VarSet
trigger1 = Time=0
fvar(1)=1

[State 1023, VarSet]
type = VarSet
trigger1 = Time>40
fvar(0)=((Time-40)/60.000)*256

[State 1023, VarSet]
type = VarSet
trigger1 = Time>40
fvar(1)=(1-((Time-40)/60.0))

[State 1023, ChangeState]
type = ChangeState
trigger1 = Win
value = 1024
ctrl = 0

[State 1023, Trans]
type = Trans
trigger1 = Time > 40
trans = addalpha
alpha = 256-fvar(0),fvar(0)

[State 1023, AngleDraw]
type = AngleDraw
trigger1 = Time > 40
scale = fvar(1),1

[State 1023, DestroySelf]
type = DestroySelf
trigger1 = Time >= 100

[Statedef 1024]
type    = S
movetype= A
physics = S
ctrl = 0
sprpriority = 3

[State 1024, PosSet]
type = PosSet
trigger1 = 1
y = 8*sin((var(0)/14.0))

[State 1024,VarSet]
type = VarAdd
trigger1 = 1
var(0)=1

[State 1024, VarSet]
type = VarAdd
trigger1 = 1
fvar(0)=-15.00

[State 1024, VarSet]
type = VarSet
trigger1 = fvar(0)<=0
fvar(0)=0.000

[State 1024, VarSet]
type = VarAdd
trigger1 = 1
fvar(1)=0.065

[State 1024, VarSet]
type = VarSet
trigger1 = fvar(1)>=1
fvar(1)=1.000

[State 1024, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 256-fvar(0),fvar(0)

[State 1024, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = fvar(1),1

;------------------
;Yuyuko!!

[Statedef 1029]
type    = A
movetype= I
physics = N
anim = 1022
ctrl = 0
sprpriority = 3
velset= 12,-8

[State 1026, 1]
type = VelAdd
trigger1 = 1
y = .3

[State 1022, AngleDraw]
type = AngleDraw
trigger1 = 1
value = -90+25*sin((time/6.55))
ignorehitpause=1

[State 1022, BindToTarget]
type = BindToTarget
trigger1 = 1
time = 1
ID = 1025
pos = 0, 0, Mid

[State 0, ChangeState]
type = ChangeState
trigger1 = Vel X > 0 && FrontEdgeBodyDist <= 3
trigger2 = Vel X < 0 && BackEdgeBodyDist <= 3
value = 1030
ctrl = 0

[Statedef 1030]
type    = A
movetype= I
physics = N
anim = 1023
ctrl = 0
velset=-4.9-(2*random/1000.0),-4.4-(3*random/1000.0)
sprpriority = 99

[State Nii]
type = PlaySnd
trigger1 = Time=0
value = S777,0

[State 1027, Spark]
type = Explod
trigger1 = Time = 0
anim = F72
pos = 0, 0
postype = p1
sprpriority = 3

[State 1027, Sound]
type = PlaySnd
trigger1 = Time = 0
value = F5,4

[State 23018, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.46

[State 23018, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0

[State 23018, AngleDraw]
type = AngleDraw
trigger1 = time<25
value = time*8
scale = 1+1.2*(time/25.000), 1+1.2*(time/25.000)
ignorehitpause=1

[State 23018, AngleDraw]
type = AngleDraw
trigger1 = time>=25
value = time*8
scale = 2.2, 2.2
ignorehitpause=1

[State 23018, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause=1

[State 23018, PlaySnd]
type = PlaySnd
trigger1 = Time=0
value = S22000,0
freqmul = 1
channel=1

[State 23018, ChangeState]
type = DestroySelf
trigger1 = Pos Y > 120
ignorehitpause = 1


;------------------
; Grabbed.

[Statedef 1025]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 1025, Anim] ;Custom animation
type = ChangeAnim2
trigger1 = Time = 0
value = 1025

[State 0, AfterImageTime]
type = AfterImageTime
trigger1 = Gethitvar(chainid) = 1020
time = 0
[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = Gethitvar(chainid) = 1020
flag = invisible

[State 1025, Un-Bind if Daniel gets hit]
type = SelfState
trigger1 = !GetHitVar(isbound) && Time < 2
value = 5050

;------------------
; Kicked. Flying through the air

[Statedef 1026]
type    = A
movetype= H
physics = N
sprpriority = 1
anim=5030

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1026, 1]
type = VelAdd
trigger1 = 1
y = .3

[State 0, HitVelSet]
type = HitVelSet
trigger1 = Time=0
x = 1
y = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = Vel X > 0 && FrontEdgeBodyDist <= 3
trigger2 = Vel X < 0 && BackEdgeBodyDist <= 3
value = 1027
ctrl = 0

[State 1026, Self Bounce State]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 16
value = 5100 ;HIT_BOUNCE

;------------------
; Hit by Fast Kung Fu Palm - hit wall
; (a custom gethit state)
[Statedef 1027]
type    = A
movetype= H
physics = N
anim=5050

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1027, Turn]
type = Turn
trigger1 = (Time = 0) && (FrontEdgeBodyDist <= 30)

[State 1027, Pos]
type = PosAdd
trigger1 = Time = 0
x = 15 - BackEdgeBodyDist

[State 1027, Stop moving]
type = PosFreeze
trigger1 = 1
x = 1
y = 1

[State 1027, No scroll]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,1

[State 1027, Spark]
type = Explod
trigger1 = Time = 0
anim = F72
pos = 0, floor (screenpos y) - 50
postype = back
sprpriority = 3

[State 1027, Sound]
type = PlaySnd
trigger1 = Time = 0
value = F5,4

[State 1027, State]
type = ChangeState
trigger1 = Time >= 4
value = 1028

[Statedef 1028]
type    = A
movetype= H
physics = N
anim=5050
velset=4,-9.9

[State 5052]
type = ChangeAnim
triggerall = Time=0
trigger1 = SelfAnimExist(5052)
value = 5052

[State 1026, 1]
type = VelAdd
trigger1 = 1
y = .5

[State 1026, Self Bounce State]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 16
value = 5100 ;HIT_BOUNCE

;---------------------------------------------------------------------------
; EX COMBO STARTER

[Statedef 1100]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
anim = 802
ctrl = 0
sprpriority = 2

[State 1437, EX]
type = PlaySnd
trigger1 = Time = 0
value = S197,1

[State 65002, Substract Power]
type = PowerAdd
trigger1 = !(var(24)>=0 && var(28)=1) && Time=0
value = -500

[State 0, Substract Seconds]
type = VarAdd
trigger1 = (var(24)>=0 && var(28)=1) && Time=0
var(24) = -60

[State 1437, EX]
type = PlaySnd
trigger1 = Time = 0
value = S7,1

[State 65002, PalFXWiz]
type = PalFX
trigger1 = time = 0
time = 65
add = 29,29,0
mul = 256,256,256
sinadd = 58,58,0,3

[State 65000, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 65
length = 10
paladd = 50,50,0
framegap = 2
trans = add

[State 1100, VelSet]
type = VelSet
trigger1 = Time=0
x = 5.2

[State 1100, 1]
type = PlaySnd
trigger1 = Time = 2
value = 1, 2

[State 1100, 6]
type = HitDef
trigger1 = Time=0
attr = S, ST
hitflag = M
guardflag =
getpower = 0,0
priority  = 3, Dodge
sparkno = -1
guard.sparkno = S7911
sparkxy = -10,-25
hitsound   = S800,0
guardsound = S6,0
guard.pausetime=25,25
fall = 1
ground.slidetime=5
ground.hittime=12
ground.velocity = -2.5,-13
air.velocity = -2.5,-13
p1stateno = 1101
p2stateno = 1025    ;Make p2 go to state 1025 on grab
p2facing = -1        ;Force to face away from p1
hitonce = 1
numhits = 0
ID=1100

[State 1100, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;BUSTED U UP
[Statedef 1101]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 1100
ctrl = 0
sprpriority = 4

[State 0, Pause]
type = Pause
trigger1 = Time=0
time = 3

[State 0, EnvColor]
type = EnvColor
trigger1 = Time = 0
value = 255,0,0
time = 3

[State 0, HitAdd]
type = HitAdd
trigger1 = AnimElemTime(5)=0
value = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(5)<0
value = SCA

[State 1021, Bind To Daniel's Hand]
type = TargetBind
trigger1 = AnimElemTime(5)<0
pos = 37,0
ID=1100

[State 1021, Bright Spark]
type = Helper
trigger1 = AnimElemTime(5)=0
helpertype = normal
name = "Super Cool Sparks"
ID = 8696
stateno = 8696
postype = p1
pos = 37,-57
ownpal = 1
supermovetime = 9999

[State 1021, PlaySnd]
type = PlaySnd
trigger1 =  AnimElemTime(5)=0
value = S5,9

[State 1021, TargetLifeAdd]
type = TargetLifeAdd
trigger1 =  AnimElemTime(5)=0
value = -55
kill = 1
absolute = 0
ID=1100

[State Record Total Damage (Add Up)]
type = VarAdd
trigger1 = AnimElemTime(5)=0
var(14) = 55
ignorehitpause=1

[State 0, VarSet]
type = VarSet
trigger1 =  AnimElemTime(6)=0
trigger1 = fvar(10) < 0.5
fvar(10) = 0.75


[State 1021, Change To Falling State]
type = TargetState
trigger1 = AnimElemTime(5)=0
value = 1126
ID=1100

[State 420, 3]
type = ChangeState
trigger1 = AnimElemTime(6)>=0
trigger1 = command = "holdup"
value = 701
ctrl = 1

[State 1021, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------
; Kicked. Flying through the air

[Statedef 1126]
type    = A
movetype= H
physics = N
sprpriority = 1
anim=5030

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 1026, 1]
type = VelAdd
trigger1 = 1
y = .4

[State 0, HitVelSet]
type = HitVelSet
trigger1 = Time=0
x = 1
y = 1

[State 0, ChangeState]
type = ChangeState
triggerall=vel Y>=0
trigger1 = Vel X > 0 && FrontEdgeBodyDist <= 3
trigger2 = Vel X < 0 && BackEdgeBodyDist <= 3
value = 1127
ctrl = 0

[State 1026, Self Bounce State]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 16
value = 5100 ;HIT_BOUNCE

;------------------
; Hit by Fast Kung Fu Palm - hit wall
; (a custom gethit state)
[Statedef 1127]
type    = A
movetype= H
physics = N
anim=5050

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 1027, Turn]
type = Turn
trigger1 = (Time = 0) && (FrontEdgeBodyDist <= 30)

[State 1027, Pos]
type = PosAdd
trigger1 = Time = 0
x = 15 - BackEdgeBodyDist

[State 1027, Stop moving]
type = PosFreeze
trigger1 = 1
x = 1
y = 1

[State 1027, No scroll]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,1

[State 1027, Spark]
type = Explod
trigger1 = Time = 0
anim = F72
pos = 0, floor (screenpos y) - 50
postype = back
sprpriority = 3

[State 1027, Sound]
type = PlaySnd
trigger1 = Time = 0
value = F5,4

[State 1027, State]
type = ChangeState
trigger1 = Time >= 4
value = 1128

[Statedef 1128]
type    = A
movetype= H
physics = N
anim=5050

[State 5052]
type = ChangeAnim
triggerall = Time=0
trigger1 = SelfAnimExist(5052)
value = 5052

[State 0, VelSet]
type = VelSet
trigger1 = Time=0
x = -(Vel X)

[State 1026, 1]
type = VelAdd
trigger1 = 1
y = .4

[State 1026, Self Bounce State]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 16
value = 5100 ;HIT_BOUNCE

;---------------------------------------------------------------------------
; Grab Kick (Your TeamMate) EM

[Statedef 2030]
type    = S
movetype= A
physics = S
juggle  = 6
velset = 0,0
anim = 801
ctrl = 0
sprpriority = 2

[State 0, VelSet]
type = VelSet
trigger1 = Time=0 && prevstateno=220 || prevstateno=260
x = 3.4

[State 2030, 1]
type = PlaySnd
trigger1 = Time = 2
value = 1, 2

[State 2030, 6]
type = HitDef
trigger1 = !MoveContact
attr = S, ST
hitflag = MA
priority  = 2, Miss
sparkno = -1
sparkxy = -10,-60
hitsound   = S800,0
fall = 1
fall.recover=0
p1stateno = 2031
p2stateno = 2025
p2facing = 1
hitonce = 1
numhits=0
ID=2030
NochainId=2030
ground.velocity=-4.5

[State 2030, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Hold and then Kick
[Statedef 2031]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 2031
ctrl = 0
sprpriority = 2

[State 2031, Randomly Say Kick in the Ass]
type = PlaySnd
trigger1 = Time = 0
value = S5300,0
channel = 0

[State 2031, Bind To Daniel]
type = TargetBind
trigger1 = AnimElemTime(5) < 0  && Target(2030),stateno=2025
pos = 37,0
ID=2030
time=1

[State 2031, HitSpark]
type = Explod
trigger1 = AnimElemTime(5) = 0
anim = 7920+random%8
pos = 37,-57
facing = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = 1,1
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 0, HitAdd]
type = HitAdd
trigger1 = AnimElemTime(5) = 0
value = 1

[State 0, VarAdd]
type = VarAdd
triggerall = NumHelper(80000)
triggerall = Helper(80000),stateno!=80000
trigger1 = AnimElemTime(5) = 0
v = 34
value = 1

[State 0, VarAdd]
type = VarAdd
trigger1 = AnimElemTime(5) = 0
v = 48
value = 1

[State 2031, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(5) = 0
value = S5,6

[State 2031, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElemTime(5) = 0
value = -50
kill = 1
absolute = 0
ID=2030
[State Record Total Damage (Add Up)]
type = VarAdd
trigger1 = AnimElemTime(5)=0
var(14) = 50
ignorehitpause=1

[State 2031, Change To Falling State]
type = TargetState
trigger1 = AnimElemTime(5) = 0
value = 2026
ID=2030

[State 0, ChangeState]
type = ChangeState
triggerall = command="holdup"
trigger1 = AnimElemTime(5) > 0
value = 40
ctrl = 0

[State 2031, 7]
type = TargetState
triggerall = target(2030),command="holdfwd" && target(2030),command="y"
trigger1 = AnimElemTime(2)<30
value = 2128
ID = 2030

[State 2031, 7]
type = ChangeState
triggerall = target(2030),command="holdfwd" && target(2030),command="y"
trigger1 = AnimElemTime(2)<30
value = 2032
ctrl = 0

[State 2031, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Hold and then Kick
[Statedef 2032]
type    = S
movetype= H
physics = S
velset = -9.5,0
ctrl = 0
sprpriority = 2

[State 2031, 7]
type = TargetDrop
trigger1 = Time= 0 && NumTarget(2030)
keepone=0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = Time=0
value = 3020
elem = 2

[State 2031, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S666,0
channel=0

[State 2031, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------
; Grabbed.

[Statedef 2025]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 1
ctrl=0

[State 2025, Anim] ;Custom animation
type = ChangeAnim2
trigger1 = Time = 0
value = 1025

[State 2025, Un-Bind if Daniel gets hit]
type = SelfState
trigger1 = !GetHitVar(isbound)
value = 5050
ctrl=0

;------------------
; Kicked. Flying through the air, Ready To Deal Damage.

[Statedef 2026]
type    = A
movetype= H
physics = N
ctrl = 0
sprpriority = 1

[State 2026, Changeanim]
type = ChangeAnim
trigger1 = !time
value = 5030

[State 2026, 1]
type = VelAdd
trigger1 = 1
y = .5

[State 2026, VelSet]
type = Velset
trigger1 = !time
x = -2.38
y = -8.45

[State 2026, Self Bounce State]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 16
value = 5100 ;HIT_BOUNCE

;=====FALL====
[Statedef 2128]
type    = A
movetype= H
physics = N
ctrl = 0
sprpriority = 1

[State 2028, Changeanim]
type = ChangeAnim
trigger1 = !time
value = 5200

[State 2028, 1]
type = VelAdd
trigger1 = 1
y = .5

[State 2028, VelSet]
type = Velset
trigger1 = !time
x = -4.78
y = -2.3

[State 2028, Self Bounce State]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 16
value = 52 ;HIT_BOUNCE

;------------------
; Hit by Fast Kung Fu Palm - hit wall
; (a custom gethit state)
[Statedef 1027]
type    = A
movetype= H
physics = N

[State 1027, Turn]
type = Turn
trigger1 = (Time = 0) && (FrontEdgeBodyDist <= 30)

[State 1027, Pos]
type = PosAdd
trigger1 = Time = 0
x = 15 - BackEdgeBodyDist

[State 1027, Stop moving]
type = PosFreeze
trigger1 = 1
x = 1
y = 1

[State 1027, No scroll]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,1

[State 1027, Spark]
type = Explod
trigger1 = Time = 0
anim = F72
pos = 0, floor (screenpos y) - 50
postype = back
sprpriority = 3

[State 1027, Anim]
type = ChangeAnim2
trigger1 = Time = 0
value = 1027

[State 1027, Sound]
type = PlaySnd
trigger1 = Time = 0
value = F7,0

[State 1027, State]
type = ChangeState
trigger1 = AnimTime = 0
value = 1028

;---------------------------------------------------------------------------
; Kung Fu Knee
; CNS difficulty: medium
; Description: Like the Kung Fu Palm, this is a special attack. This attack
;     begins on the ground, launches KFM into the air, then ends when KFM
;     lands on the ground. To achieve this, we use three states. The first
;     has KFM starting on the ground (note that type = S in the Statedef).
;     The ChangeState controller brings KFM into the second state (state
;     1051) when his ground animation ends. The second state controls KFM's
;     movement into the air and back towards the ground. The last state
;     (state 1052) stops KFM from moving when he touches the ground, and
;     brings him back to his stand state (state 0) when the animation is
;     over. More details are given in comments before each of the following
;     states.
[Statedef 1050]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 110
velset = 0,0
anim = 40
ctrl = 0
sprpriority = 2

[State 1050, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 2

[State 1050, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S1,5

[State 1050, 2]
type = null;PosAdd
trigger1 = AnimElem = 2
x = 15

[State 1050, 3]
type = PosAdd
trigger1 = AnimElem = 4
x = 20

[State 1050, 4]
type = HitDef
trigger1 = Time = 0
attr = A, SA
animtype  = Medium
damage    = 80, 4
priority  = 5
guardflag = MA
pausetime = 12,12
sparkxy = -10,-70
sparkno = s7920+random%8
envshake.time = 12
envshake.freq = 90
envshake.ampl = -6
hitsound   = s5,4
guardsound = s6,0
ground.type = Low
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -3.5,-7
guard.velocity = -7
air.velocity = -3.5,-7
fall = 1
guard.sparkno = s7911

[State 1050, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 1051

;------------------
; Light Kung Fu Knee - jump
; Description: This state uses a velset parameter in the Statedef to make
;     KFM move upwards. A value of 2,-6 means 2 pixels/tick forwards, and
;     6 pixels/tick upwards. Since this is an aerial state, the type is set
;     to A in the Statedef.
;     Notice that physics = N (N for None) here. This means we are not using
;     the built-in aerial physics model (physics = A), so we have complete
;     control over what KFM does in this state. Since we do not have
;     physics = A to take care of gravity for us, we need to put in our own
;     controller for that. Controller 1051,1 does the work of pulling KFM
;     down towards the ground. Controller 1051,2 checks if KFM has reached
;     the ground, and changes to state 1052 if so.
;     In this state's Statedef, we will use the hitdefpersist parameter to
;     retain the HitDef information from the last state. If we did not have
;     hitdefpersist, the HitDef will be turned off between state changes.
[Statedef 1051]
type    = A
movetype= A
physics = N
velset = 2,-6
anim = 600
hitdefpersist = 1 ;Keep the HitDef from previous state active

[State 1051, 1] ;Gravity
type = VelAdd
trigger1 = 1
y = .45

[State 1051, 2]
type = ChangeState
trigger1 = Command = "a" || Command = "b"
trigger1 = Vel y < -1
value = 1055

[State 1051, PosSet]
type = PosSet
trigger1 = vel y > 0
trigger1 = pos y >= 0
y = 0

[State 1051, 3] ;Change state when KFM is close to ground
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 0
ctrl = 1

;------------------
; Light Kung Fu Knee - land
; Description: This is KFM's landing state. There is a velset in the
;     Statedef to stop KFM from moving. Since KFM's y-position can be any
;     number greater than -10 upon entering this state (see the ChangeState
;     controller in State 1051), we need to reset it to 0, the ground
;     level. That is what controller 1052,1 is for.
[Statedef 1052]
type    = S
movetype= I
physics = S
anim = 1052
sprpriority = 1
velset = 0,0

[State 1052, 1] ;Reset y-position to ground level
type = PosSet
trigger1 = Time = 0
y = 0

[State 1052, 2] ;Play a sound for landing
type = PlaySnd
trigger1 = Time = 0
value = 40, 0

[State 1052, 3] ;Give KFM back control early
type = CtrlSet
trigger1 = AnimElem = 3, -1
value = 1

[State 1052, 4] ;Move KFM back a little
type = PosAdd
trigger1 = AnimElem = 4
x = -15

[State 1052, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------
; Kung Fu Knee - kick
[Statedef 1055]
type    = A
movetype= A
physics = N
anim = 640

[State 1055, 1]
type = PlaySnd
trigger1 = Time = 0
value = 100,0
channel = 0

[State 1055, 2]
type = PlaySnd
trigger1 = Time = 0
value = 0, 1

[State 1055, 3]
type = PosAdd
trigger1 = Time = 0
x = 10
y = -10

[State 1055, 4] ;Gravity
type = VelAdd
trigger1 = 1
y = .45

[State 1055, 5]
type = HitDef
trigger1 = Time = 0
attr = A, SA
animtype  = Med
damage    = 35 + (prevstateno = 1061)*5, 2
priority  = 4
guardflag = MA
pausetime = 12,12
sparkxy = 0,-90
sparkno = s7920+random%8
envshake.time = 15
envshake.freq = 90
envshake.ampl = -8
hitsound   = s5,4
guardsound = s6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 16
ground.velocity = -6
guard.velocity = -8
guard.ctrltime = 12
air.velocity = -4,-5
airguard.velocity = -4,-4.5
air.fall = 1
guard.sparkno = s7911

[State 1055, 6] ;Change state when KFM is close to ground
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 1056

;------------------
; Kung Fu Knee - land from kick
[Statedef 1056]
type    = S
movetype= I
physics = S
anim = 47
sprpriority = 1
velset = 0,0

[State 1056, 1] ;Reset y-position to ground level
type = PosSet
trigger1 = Time = 0
y = 0

[State 1056, 2] ;Play a sound for landing
type = PlaySnd
trigger1 = Time = 0
value = 40, 0

[State 1056, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Strong Kung Fu Knee
[Statedef 1060]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 120
velset = 0,0
anim = 40
ctrl = 0
sprpriority = 2

[State 1060, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 2

[State 1060, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S1,5

[State 1060, 2]
type = PosAdd
trigger1 = AnimElem = 2
x = 6

[State 1060, 3]
type = PosAdd
trigger1 = AnimElem = 4
x = 21

[State 1060, 4]
type = HitDef
trigger1 = Time = 0
attr = A, SA
animtype  = Medium
damage    = 90, 4
priority  = 5
guardflag = MA
pausetime = 12,12
sparkxy = -10,-70
sparkno = s7920+random%8
envshake.time = 12
envshake.freq = 90
envshake.ampl = -6
hitsound   = s5,5
guardsound = s6,0
ground.type = Low
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -3.5,-7.5
guard.velocity = -7
air.velocity = -3.5,-7.5
fall = 1
guard.sparkno = s7911

[State 1060, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 1061

;------------------
; Strong Kung Fu Knee - jump
[Statedef 1061]
type    = A
movetype= A
physics = N
velset = 2.5,-7.5
anim = 600
hitdefpersist = 1 ;Keep the HitDef from previous state active

[State 1061, 1]
type = VelAdd
trigger1 = 1
y = .45

[State 1061, 2]
type = ChangeState
trigger1 = Command = "a" || Command = "b"
trigger1 = Vel y < -1
value = 1055

[State 1061, PosSet]
type = PosSet
trigger1 = vel y > 0
trigger1 = pos y >= 0
y = 0

[State 1061, 3]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Fast Kung Fu Knee
; Description: This version of the Kung Fu Knee hits up to 3 times (including
;     the kick).
[Statedef 1070]
type    = S
movetype= A
physics = S
juggle  = 6
poweradd= -330
velset = 0,0
anim = 40
ctrl = 0
sprpriority = 2

[State 1070, Afterimage]
type = AfterImage
trigger1 = Time = 0
length = 13
PalBright   =  30, 30,  0
PalContrast =  70, 70, 20
PalAdd      = -10,-10,-10
PalMul      = .85,.85,.50
TimeGap  = 1
FrameGap = 2
Trans = Add
time = 2

[State 1070, Afterimage]
type = AfterImageTime
trigger1 = 1
time = 2

[State 1070, Blink Yellow]
type = PalFX
trigger1 = Time = 0
time = 20
add = 32,16,0
sinadd = 64,32,5,3

[State 1070, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 2

[State 1070, 2]
type = PosAdd
trigger1 = AnimElem = 2
x = 6

[State 1070, 3]
type = PosAdd
trigger1 = AnimElem = 4
x = 21

[State 1070, 4]
type = HitDef
trigger1 = Time = 0
attr = S, SA
animtype  = Medium
getpower  = 0
damage    = 35, 3
priority  = 5
hitflag   = MA
guardflag = MA
pausetime = 8,7
sparkxy = -10,-70
hitsound   = s5,6
guardsound = s6,0
sparkno = s7920+random%8
envshake.time = 15
envshake.freq = 90
envshake.ampl = -8
ground.type = Low
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -2,-6
guard.velocity = -7
air.velocity = -2,-6
fall = 1
fall.animtype = Med
fall.recovertime = 30
guard.sparkno = s7911

[State 1070, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 1071

;------------------
; Fast Kung Fu Knee - jump
[Statedef 1071]
type    = A
movetype= A
physics = N
velset = 2.5,-9
anim = 600

[State 1071, Blink Yellow]
type = PalFX
trigger1 = Time = 0
time = 18
add = 32,16,0
sinadd = 64,32,5,3

[State 1071, Afterimage]
type = AfterImageTime
trigger1 = Vel Y < 0
time = 2

[State 1071, 1]
type = VelAdd
trigger1 = 1
y = .5

[State 1071, 2]
type = VelAdd
trigger1 = Vel Y >= -1
y = .2

[State 1071, 3]
type = HitDef
trigger1 = Time = 0
attr = A, SA
animtype  = Medium
getpower  = 0
damage    = 68, 4
priority  = 5
guardflag = MA
pausetime = 12,12
sparkxy = -10,-70
hitsound   = 5,3
guardsound = 6,0
ground.type = Low
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -3,-9.5
guard.velocity = -7
air.velocity = -3,-9.5
fall = 1
fall.recovertime = 30

[State 1071, 4]
type = ChangeState
trigger1 = Command = "a" || Command = "b"
trigger1 = Vel y < -1
trigger1 = Time > 0
value = 1075

[State 1071, 5]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 0
ctrl = 1

;------------------
; Fast Kung Fu Knee - kick
[Statedef 1075]
type    = A
movetype= A
physics = N
anim = 640

[State 1075, Afterimage]
type = AfterImageTime
trigger1 = 1
time = 2

[State 1075, Blink Yellow]
type = PalFX
trigger1 = Time = 0
time = 20
add = 32,16,0
sinadd = 64,32,5,3

[State 1075, 1]
type = PlaySnd
trigger1 = Time = 0
value = 100,0
channel = 0

[State 1075, 2]
type = PlaySnd
trigger1 = Time = 0
value = 0, 1

[State 1075, 3]
type = PosAdd
trigger1 = Time = 0
x = 10
y = -10

[State 1075, 4]
type = VelAdd
trigger1 = 1
y = .45

[State 1075, 5]
type = VelAdd
trigger1 = Vel Y >= -1
y = .2

[State 1075, 6]
type = HitDef
trigger1 = Time = 0
attr = A, SA
animtype  = Med
damage    = 42, 2
getpower  = 0
priority  = 4
guardflag = MA
pausetime = 12,12
sparkxy = 0,-90
hitsound   = 5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 18
ground.velocity = -6
guard.velocity = -6
air.velocity = -4,-6
airguard.velocity = -4,-4.5
air.fall = 1

[State 1075, 7]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
; Weak Projectile
[Statedef 65000]
type    = S
movetype = A
physics = S
juggle  = 4
anim = 250
ctrl = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem=4
trigger1 = random<600
value = S5006,random%5
channel=0
volume=255

[State 65000, Fanni]
type = Helper
trigger1 = AnimElem=8
helpertype = normal ;player
name = "Time?"
ID = 65000 ;ID determines damage and velocity, 65000 = Weak, 65001 = Med, 65002 = Strong, 65005 = EX
stateno = 65010
pos = 34,-45
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0
size.xscale = 1
size.yscale = 1

[State 65000, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
; Medium Projectile
[Statedef 65001]
type    = S
movetype = A
physics = S
juggle  = 4
anim = 252
ctrl = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem=4
trigger1 = random<600
value = S5006,random%5
channel=0
volume=255

[State 65000, Fanni]
type = Helper
trigger1 = AnimElem=8
helpertype = normal ;player
name = "Time?"
ID = 65001 ;ID determines damage and velocity, 65000 = Weak, 65001 = Med, 65002 = Strong, 65005 = EX
stateno = 65010
pos = 34,-45
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0
size.xscale = 1
size.yscale = 1

[State 65000, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
; Strong Projectile
[Statedef 65002]
type    = S
movetype = A
physics = S
juggle  = 4
anim = 253
ctrl = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem=4
trigger1 = random<600
value = S5006,random%5
channel=0
volume=255

[State 65000, Fanni]
type = Helper
trigger1 = AnimElem=8
helpertype = normal ;player
name = "Time?"
ID = 65002 ;ID determines damage and velocity, 65000 = Weak, 65001 = Med, 65002 = Strong, 65005 = EX
stateno = 65010
pos = 34,-45
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0
size.xscale = 1
size.yscale = 1

[State 65000, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
; Projectile EX
[Statedef 65005]
type    = S
movetype = A
physics = S
juggle  = 4
anim = 255
ctrl = 0

[State 1437, EX]
type = PlaySnd
trigger1 = Time = 0
value = S197,1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem=4
trigger1 = random<600
value = S5006,random%5
channel=0
volume=255

[State 65002, Substract Power]
type = PowerAdd
trigger1 = !(var(24)>=0 && var(28)=1) && Time=0
value = -500

[State 0, Substract Seconds]
type = VarAdd
trigger1 = (var(24)>=0 && var(28)=1) && Time=0
var(24) = -60

[State 65002, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S7,1

[State 65002, PalFXWiz]
type = PalFX
trigger1 = time = 0
time = 22
add = 29,29,0
mul = 256,256,256
sinadd = 58,58,0,3

[State 65000, Fanni]
type = Helper
trigger1 = AnimElem=8
helpertype = normal ;player
name = "Time?"
ID = 65005 ;ID determines damage and velocity, 65000 = Weak, 65001 = Med, 65002 = Strong, 65005 = EX
stateno = 65010
pos = 34,-45
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0
size.xscale = 1
size.yscale = 1

[State 65000, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 22
length = 10
paladd = 50,50,0
framegap = 2
trans = add

[State 65000, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------
;CAR

[Statedef 65010]
type    = A
movetype= A
physics = N
ctrl = 0
sprpriority = 3
anim = 1151

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time=0
value = S888,0
[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time=0
value = S888,0

[State 65000, CreateTheProj]
type = HitDef
trigger1 = Time=0
attr = S, SP
animtype  = Hard
damage    = (50+(IsHelper(65001)*20)+(IsHelper(65002)*35)+(IsHelper(65005)*30)),((IsHelper(65002)*2)+(IsHelper(65005)*5))
guardflag = MA
pausetime = 20,20
guard.pausetime=0,6
sparkno = s7920+random%8
guard.sparkno = s7911
sparkxy = 10,-40
envshake.time = 12
envshake.freq = 90
envshake.ampl = -6
hitsound = s5,6
guardsound = s6,0
ground.type = Low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -.4,-10.2-Ishelper(65001)-3.5*(Ishelper(65002)||Ishelper(65005))
air.velocity= -.9,-10.2-Ishelper(65001)-3.5*(Ishelper(65002)||Ishelper(65005))
yaccel=.5
guard.velocity=-9
fall = 1
fall.recover=1
fall.recovertime=25
priority=5,Hit
guard.dist=60
getpower=0,0
ID=99999

[State Limiter Full]
type = TargetState
triggerall = numtarget && root,var(51)>=100
triggerall = movehit && !moveguarded && !movereversed
triggerall = target(99999),stateno!=130000
triggerall = numenemy
trigger1 = (enemy(0),gethitvar(ChainID)=99999) && (enemy(0),Time = [0,1])
trigger2 = NumEnemy>1
trigger2 = (enemy(0),gethitvar(ChainID)=99999) && (enemy(1),Time = [0,1])
value = 130000
ID = 99999
ignorehitpause=1

[State 65002, PalFXWiz]
type = PalFX
triggerall = IsHelper(65005)
trigger1 = time = 0
time = 22
add = 29,29,0
mul = 256,256,256
sinadd = 58,58,0,3

[State Special moves]
type = ParentVaradd
trigger1 = enemynear, time=0
trigger1 = enemynear, Hitshakeover=0
trigger1 = Movehit && !Moveguarded && !Movereversed
var(51) = (root,var(12))*(10*(IsHelper(65000))+13*(IsHelper(65001))+16*(IsHelper(65002))+20*(IsHelper(65005)))
ignorehitpause=1
[State 65000, AfterImage]
type = AfterImage
triggerall = IsHelper(65005)
trigger1 = time = 0
time = 22
length = 10
paladd = 50,50,0
framegap = 2
trans = add

[State Vels]
type = VelSet
trigger1 = Time=0
x = 7+1.5*IsHelper(65001)+3*IsHelper(65002)+4.5*IsHelper(65005)

[State 65010, NotHitBy]
type = NotHitBy
trigger1 = 1
value = ,AA,AT
ignorehitpause=1

[State 65010, ChangeState]
type = ChangeState
trigger1 = Movecontact || Movereversed
value = 65011
ctrl = 0
ignorehitpause=1


[State 23018, ChangeState]
type = DestroySelf
trigger1 = Screenpos X != [-280,500]
ignorehitpause = 1

[State 65010, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
slot = 0
stateno = 65011
time = 1
ignorehitpause=1

[Statedef 65011]
type    = A
movetype= I
physics = N
ctrl = 0
sprpriority = 99
movehitpersist=1

[State BLAH]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 128,128

[State Nii]
type = PlaySnd
trigger1 = Time=0
value = S777,0

[State 1027, Spark]
type = Explod
triggerall = !movecontact && !movereversed
trigger1 = Time = 0
anim = F72
pos = 0, 0
postype = p1
sprpriority = 3

[State 65010, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
ignorehitpause=1

[State 23018, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0

[State 23018, ChangeState]
type = DestroySelf
trigger1 = Screenpos X != [-280,500]
ignorehitpause = 1

;---------------------------------------------------------------------------
; Light Kung Fu Blow
; CNS difficulty: easy
; Notes: This uses the EnvShake controller to shake the screen. It makes the
;        move look stronger.
[Statedef 1200]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 100
velset = 0,0
anim = 1200
ctrl = 0
sprpriority = 2

[State 1200, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0, 3

[State 1200, Width 1]
type = Width
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
value = 10,0

[State 1200, Width 2]
type = Width
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(9) < 0
value = 20,0

[State 1200, Shake Screen]
type = EnvShake
trigger1 = AnimElem = 6
time = 4     ;Time to shake screen
ampl = 2     ;Amount to shake
freq = 180   ;A frequency of 180 shakes the screen rapidly

[State 1200, 2]
type = HitDef
trigger1 = Time = 0
attr = S, SA
animtype  = Hard
damage    = 100, 6
priority  = 5
guardflag = MA
pausetime = 12,12
sparkxy = 0,-65
hitsound   = 5,3
guardsound = 6,0
ground.type = Low
ground.slidetime = 16
ground.hittime  = 18
ground.velocity = -10
ground.cornerpush.veloff = -12 ;To push far away when p2 is in corner
guard.velocity = -7
air.velocity = -3.5,-4.5
airguard.velocity = -3.5,-4.5

[State 1200, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Strong Kung Fu Blow
; CNS difficulty: easy
[Statedef 1210]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 120
velset = 0,0
anim = 1210
ctrl = 0
sprpriority = 2

[State 1210, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0, 3

[State 1210, Width 1]
type = Width
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
value = 10,0

[State 1210, Width 2]
type = Width
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(9) < 0
value = 20,0

[State 1210, Shake Screen]
type = EnvShake
trigger1 = AnimElem = 6
time = 8
ampl = 2
freq = 170   ;A frequency of less than 180 causes a dampening effect

[State 1210, 2]
type = HitDef
trigger1 = Time = 0
attr = S, SA
animtype  = Hard
damage    = 125, 9
priority  = 5
guardflag = MA
pausetime = 12,12
sparkxy = 0,-65
hitsound   = 5,3
guardsound = 6,0
ground.type = Low
ground.slidetime = 18
ground.hittime  = 20
ground.velocity = -10
ground.cornerpush.veloff = -15 ;To push far away when p2 is in corner
guard.velocity = -8
air.velocity = -4,-4.5
airguard.velocity = -4,-4.5

[State 1210, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Fast Kung Fu Blow
; CNS difficulty: easy
[Statedef 1220]
type    = S
movetype= A
physics = S
juggle  = 6
poweradd= -330
velset = 0,0
anim = 1220
ctrl = 0
sprpriority = 2

[State 1220, Afterimage]
type = AfterImage
trigger1 = Time = 0
length = 13
PalBright   =  30, 30,  0
PalContrast =  70, 70, 20
PalAdd      = -10,-10,-10
PalMul      = .85,.85,.50
TimeGap  = 1
FrameGap = 2
Trans = Add
time = 2

[State 1220, Afterimage]
type = AfterImageTime
trigger1 = AnimTime < -2
time = 2

[State 1220, Blink Yellow]
type = PalFX
trigger1 = Time = 0
time = 20
add = 32,16,0
sinadd = 64,32,5,3

[State 1220, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0, 3

[State 1220, Width 1]
type = Width
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
value = 10,0

[State 1220, Width 2]
type = Width
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(9) < 0
value = 20,0

[State 1220, Shake Screen]
type = EnvShake
trigger1 = AnimElem = 6
time = 8
ampl = 3
freq = 170

[State 1220, 2]
type = HitDef
trigger1 = Time = 0
attr = S, SA
animtype  = Hard
damage    = 125, 9
getpower  = 0
priority  = 5
guardflag = MA
pausetime = 15,15
sparkxy = 0,-65
hitsound   = 5,4
guardsound = 6,0
ground.type = Low
ground.slidetime = 20
ground.hittime  = 30
ground.velocity = -15
ground.cornerpush.veloff = -20 ;To push far away when p2 is in corner
guard.velocity = -9
air.velocity = -5,-5
airguard.velocity = -5,-5
air.fall = 1
fall.animtype = Hard           ;Show "hard" animtype when hit for a fall
yaccel = .4                    ;Fall faster

[State 1220, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Cherry Summon 1, Shopping bag
[Statedef 1500]
type    = S
movetype= I
physics = S
velset = 0,0
anim = 4881 ;Summon Anim
ctrl = 0
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
triggerall = Anim=4881
trigger1 = AnimElem=3
value = S237,0

[State 0, PlaySnd]
type = PlaySnd
triggerall = Anim=4881
trigger1 = AnimElem=11
value = S1,5

[State 1500, Summon]
type = Helper
triggerall = Anim=4881
trigger1 = AnimElem = 1
helpertype = normal
name = "Cherry"
ID = 14000
stateno = 14000
postype = p1
pos = -348,-120
facing = 1
keyctrl = 0
ownpal = 1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = AnimTime=0 && Anim=4881
value = 1500

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = AnimElemTime(2) >= 0
triggerall = AnimElemTime(3) < 0
triggerall = NumHelper(14000)
trigger1 = Anim=1500
trigger1 = (helper(14000),stateno=14000) || (helper(14000),stateno=14001 && helper(14000),animelemtime(8)<0)
value = 1500
elem = 2

[State 1500, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0 && Anim=1500
value = 0
ctrl = 1

;Kimiya Summon
[Statedef 1501]
type    = S
movetype= I
physics = S
velset = 0,0
anim = 4881 ;Summon Anim
ctrl = 0
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
triggerall = Anim=4881
trigger1 = AnimElem=3
value = S237,0

[State 0, PlaySnd]
type = PlaySnd
triggerall = Anim=4881
trigger1 = AnimElem=11
value = S1,5

[State 1500, Summon]
type = Helper
triggerall = Anim=4881
trigger1 = AnimElem = 1
helpertype = normal
name = "Kimiya"
ID = 16000
stateno = 16000
postype = p1
pos = -348,0
facing = 1
keyctrl = 0
ownpal = 1

[State 0, ChangeAnim]
type = ChangeState
trigger1 = AnimTime=0; && Anim=4881
value= 0
ctrl=1

[State 0, ChangeAnim]
type = Null;ChangeAnim
triggerall = AnimElemTime(2) >= 0
triggerall = AnimElemTime(3) < 0
triggerall = NumHelper(16000)
trigger1 = Anim=1500
trigger1 = (helper(16000),stateno=16000) || (helper(16000),stateno=16001 && helper(16000),animelemtime(7)<1)
value = 1500
elem = 2

[State 1500, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0 && Anim=1500
value = 0
ctrl = 1

;Violet Summon
[Statedef 1550]
type    = S
movetype= I
physics = S
velset = 0,0
anim = 7888 ;Summon Anim
ctrl = 0
sprpriority = 2

[State 1550, Summon]
type = Helper
trigger1 = AnimElem = 4
helpertype = normal
name = "Violet"
ID = 17652
stateno = 17652
postype = back
pos = -40,(enemynear,pos Y)-60
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 20
pausemovetime = 50

[State 1550, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Roll
[StateDef 1362]
type = S
movetype = I
physics = S
velset = 0,0
ctrl = 0
;poweradd = -500
sprpriority = 0

[State 1362, Dodge Direction]
type = VarSet
trigger1 = Time=0
var(16)=0

[State 1362, Dodge Direction]
type = VarSet
triggerall = Time=0
trigger1 = command="holdfwd"
var(16)=1
persistent=0

[State 1362, Dodge Direction]
type = VarSet
triggerall = Time=0
trigger1 = command="holdback"
var(16)=-1
persistent=0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = Time=0
value = ifelse((var(16)=0),1363,1362)

[State 1362, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = var(16)*(13+(var(24)>0&&var(28)=1)*8);11.9

[State 1362, PlaySnd]
type = PlaySnd
triggerall = var(16)!=0
trigger1 = AnimElem=4
value = S41,0

[State 1362, PlaySnd]
type = PlaySnd
triggerall = var(16)!=0
trigger1 = AnimElem=3
value = S101,0

[State 1362, PlaySnd]
type = PlaySnd
triggerall = var(16)!=0
trigger1 = AnimElem=3
value = S100,1+random%3

[State 1362, PlaySnd]
type = PlaySnd
trigger1 = AnimElem=3
value = S1362,0
channel=0
volume=-10

[State 1362, PlaySnd]
type = PlaySnd
triggerall = var(16)!=0
trigger1 = AnimElem=5
value = S40,0

[State 1362, Turn]
type = Turn
trigger1 = P2Dist X < 0
persistent=0

[State 1362, Invulnerable, I guess]
type = NotHITBY
trigger1 = 1
ignorehitpause = 1
value = ,AA,AP

[State 1362, AfterImage]
type = AfterImage
trigger1 = Time = 0
time = 22
length = 20
timegap = 1
framegap = 2
trans = add

[State 1362, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 1362, end]
type = ChangeState
trigger1 = AnimTime=0
value = 0
ctrl = 1

[StateDef 1363]
type = S
movetype = I
physics = N
velset = -8,0
ctrl = 0
anim = 1363
sprpriority = 0

[State 65002, Substract Power]
type = PowerAdd
trigger1 = !(var(24)>=0 && var(28)=1) && Time=0
value = -500

[State 0, Substract Seconds]
type = VarAdd
trigger1 = (var(24)>=0 && var(28)=1) && Time=0
var(24) = -60

[State 1363, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S7,1

[State 1363, Invulnerable]
type = NotHITBY
trigger1 = 1
ignorehitpause = 1
value = SCA

[State 1363, AfterImage]
type = AfterImage
trigger1 = Time = 0
time = 2
length = 5
palcontrast = 73,120,20
paladd = 10,30,65
palmul = .65,.65,.75
timegap = 1
framegap = 2
trans = add

[State 1363, AfterImageTime]
type = AfterImageTime
trigger1 = 1
time = 3

[State 1363, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 1363, end]
type = ChangeState
trigger1 = Time >= 14
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Little Beatdown Attempt

[Statedef 900]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 800
sprpriority = 2

[State 900, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, ST
hitflag = M-
priority = 1, Miss
sparkno = -1
p2sprpriority = 0
p1facing = 1
p2facing = 1
p1stateno = 901
p2stateno = 910
guard.dist = 0
id = 900
numhits = 0
fall = 1

[State 900, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 901]
type = S
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 900+var(27)
sprpriority = 2

[State 901, AlwaysBind]
type = TargetBind
trigger1 = 1
id = 900
pos = 45,0

[State 901, PlaySnd]
type = PlaySnd
triggerall = !var(38) && var(27)
trigger1 = AnimElemTime(3) = 0 || AnimElemTime(8) = 0 || AnimElemTime(13) = 0 || AnimElemTime(18) = 0
value = S188,1+((random%2)*2)
channel = 0

[State 901, Damage]
type = TargetLifeAdd
trigger1 = AnimElemTime(3) = 0 || AnimElemTime(8) = 0 || AnimElemTime(13) = 0 || AnimElemTime(18) = 0
value = ifelse(var(27),-18,-6)
ID = 900
kill = 0

[State 901, Finish with the Ground Player]
type = ChangeState
trigger1 = AnimTime = 0
value = 810
ctrl = 0

[State 901, Finish with the Ground Target]
type = TargetState
trigger1 = AnimTime = 0
value = 820
ID = 900

[State 901, Combo]
type = HitAdd
trigger1 = AnimElemTime(3) = 0 || AnimElemTime(8) = 0 || AnimElemTime(13) = 0 || AnimElemTime(18) = 0
value = 1

[State 901, Whoosh]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0 || AnimElemTime(8) = 0 || AnimElemTime(13) = 0 || AnimElemTime(18) = 0
value = S1,5
channel = -1

[State 901, HitSound]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0 || AnimElemTime(8) = 0 || AnimElemTime(13) = 0 || AnimElemTime(18) = 0
value = S5,6
channel = -1

[State 901, HitSparks]
type = Explod
trigger1 = AnimElemTime(3) = 0 || AnimElemTime(8) = 0 || AnimElemTime(13) = 0 || AnimElemTime(18) = 0
anim = 7920+random%8
ID = 3694
pos = -5, -58
postype = p2
facing = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = 1,1
ontop = 1
ownpal = 1
removeongethit = 0

[Statedef 910]
type    = A
movetype= H
physics = N
velset = 0,0

[State 910, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 910

[State 910, 2]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5050

;Role Change
[Statedef 1445]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0,0
anim = 1445

[State 1442, Don't guard this]
type = AttackDist
trigger1 = 1
value = 0

[State 1442, Set Reverse]
type = ReversalDef
trigger1 = Time = 12
reversal.attr = SCA,NA,SA,HA
sparkno = S7930+random%8
hitsound = S6281,0
pausetime = 8, 8
p1stateno = 1446

[State 1442, Fail]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1446]
type = S
movetype = A
physics = N
ctrl = 0
velset = 2,0
anim = 260
facep2 = 1

[State 1443, 1]
type = PlaySnd
triggerall = !var(38)
trigger1 = Time = 2
trigger1 = random < 200 ;EXACTLY 1/5 Chance of Saying
value = S0,1+random%2
channel = 0

[State 1443, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0
value = 260
elem = 5

[State 1443, PlaySnd]
type = PlaySnd
trigger1 = time = 6
value = S1,5

[State 1443, 2]
type = HitDef
trigger1 = Time = 0
attr = S, SA
animtype  = Hard
damage    = 75, 3
guardflag = MA
pausetime = 15,15
sparkno = s7920+random%8
guard.sparkno = s7911
sparkxy = -10,-34
hitsound   = s5,12
guardsound = s6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 16
ground.velocity = -15,-8.1
fall = 1
fall.recover = 0
air.velocity = -8,-3.9

[State 1443, 3]
type = VelSet
trigger1 = AnimElem = 3
x = 12

[State 1443, MoveHitReset]
type = MoveHitReset
trigger1 = MoveContact

[State 1443, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;2 Hit-Combo A
[Statedef 1600]
type    = S
movetype= A
physics = S
juggle  = 5
velset = 5,0
ctrl = 0
anim = 1600
sprpriority = 2

[State 1600, Whoosh!]
type = playsnd
trigger1 = AnimElem = 4
value = S1, 5

[State 1600, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, SA
animtype = Hard
pausetime = 8,8
hitflag = MAF
guardflag = MA
priority = 5, Hit
sparkno = S7920+random%8
guard.sparkno = s7911
sparkxy = -10,-67
damage = 52, 8
hitsound = S5, 6
guardsound = S6, 0
ground.velocity = -4, 0
air.velocity = -5, -2
ground.hittime = 14
ground.slidetime = 5
fall.recovertime = 12
ground.type = high

[State 1600, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;2 Hit-Combo B
[Statedef 1601]
type    = S
movetype= A
physics = S
juggle  = 3
velset = 5,0
ctrl = 0
anim = 1601
sprpriority = 2

[State 1601, Whoosh!]
type = playsnd
trigger1 = AnimElem = 2, =1
value = S1, 5

[State 1601, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, SA
animtype = Hard
pausetime = 8,8
hitflag = MAF
guardflag = MA
priority = 5, Hit
sparkno = S7920+random%8
guard.sparkno = s7911
sparkxy = -10,-83
damage = 29, 8
hitsound = S5, 6
guardsound = S6, 0
ground.velocity = -4, 0
air.velocity = -5, -2
ground.hittime = 11
ground.slidetime = 5
fall.recovertime = 12
ground.type = high

[State 1601, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;4 Hit-Combo (3rd Hit)
[Statedef 1602]
type    = S
movetype= A
physics = S
velset = 2.01,0
ctrl = 0
anim = 1602
sprpriority = 2

[State 1602, Whoosh!]
type = playsnd
trigger1 = AnimElem = 5
value = S1, 5

[State 1602, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, SA
animtype = Hard
pausetime = 13,13
hitflag = MAF
guardflag = MA
priority = 5, Hit
sparkno = S7920+random%8
guard.sparkno = s7911
sparkxy = -10,-67
damage = 23, 8
hitsound = S5, 6
guardsound = S6, 0
ground.velocity = -1, 1
fall = 1
air.velocity = -2, 2
ground.hittime = 14
ground.slidetime = 5
fall.recovertime = 12
ID = 1602
p2stateno = 1605
ground.type = high

[State 1602, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;4 Hit-Combo (3rd Hit)
[Statedef 1603]
type    = S
movetype= A
physics = S
velset = 0,0
facep2 = 1
ctrl = 0
anim = 1603
sprpriority = 2

[State 1603, PosAdd]
type = PosAdd
trigger1 = Time = [0,2]
x = 3

[State 1603, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 1603, TargetBind]
type = TargetBind
triggerall = numtarget(1602)
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(14) < 0
id = 1602
pos = 4,0

[State 1603, Bam]
type = TargetLifeAdd
triggerall = numtarget(1602)
trigger1 = AnimElemTime(8) = 0
value = -32
ID = 1602
kill = 1
absolute = 0

[State 1603, PlaySnd]
type = PlaySnd
triggerall = numtarget(1602)
trigger1 = AnimElemTime(7) = 1
value = S5,11
volume = 255

[State 1603, TargetState]
type = TargetState
triggerall = numtarget(1602)
trigger1 = AnimElemTime(7) = 1
value = 1607
ID = 1602

[State 1603, HitAdd]
type = HitAdd
triggerall = numtarget(1602)
trigger1 = AnimElemTime(7) = 1
value = 1

[State 1603, EnvShake]
type = EnvShake
trigger1 = AnimElemTime(7) = 1
time = 22
freq = 165
ampl = -4
phase = 90

[State 1603, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(8) = 5
value = S5,11
volume = 255

[State 1603, HitSpark]
type = Explod
trigger1 = AnimElemTime(7) = 1
anim = F62
pos = 0,-2
facing = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = 1,1
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 1063, Bright Spark]
type = Helper
triggerall = numtarget(1602)
trigger1 = AnimElemTime(8) = 0
helpertype = normal
name = "Super Cool Sparks"
ID = 8696
stateno = 8696
postype = p1
pos = 0,0
ownpal = 1
supermovetime = 9999

[State 1603, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1605]
type = A
movetype = H
physics = N
ctrl = 0
anim = 5030
poweradd = 19
facep2 = 1

[State 1605, Ouch!]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 1605, VelAdd]
type = VelAdd
trigger1 = 1
y = 2

[State 1605, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1605, ChangeState]
type = ChangeState
trigger1 = Pos Y > 25 && Vel Y > 0
value = 1606
ctrl = 0

[Statedef 1606]
type = L
movetype = H
physics = N
ctrl = 0
anim = 5110
velset = 0,0

[State 1606, PosAdd]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1606, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = F7,2
volume = 255

[State 1606, HitSpark]
type = Explod
trigger1 = Time = 0
anim = F61
pos = 0,0
facing = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = 1,1
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 1606, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1606, ChangeState]
type = SelfState
trigger1 = Time >= 110
trigger2 = !GetHitVar(isbound) && Time >= 42
value = 5120
ctrl = 0

[Statedef 1607]
type = L
movetype = H
physics = N
ctrl = 0

[State 1607, ChangeAnim]
type = ChangeAnim2
trigger1 = Time = 0
value = 1604

[State 1607, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1607, ChangeState]
type = SelfState
trigger1 = Time >= 60
trigger2 = !GetHitVar(isbound) && Time >= 35
value = 5120
ctrl = 0

;---------------------------------------------------------------------------
; Head Butt (Hit) Weak
[Statedef 1435]
type    = S
movetype= A
physics = N
juggle  = 6
velset = 0,0
ctrl = 0
anim = 1435
sprpriority = 2

;Distance for this? maybe 40 [px]
;40 = Velocity*((1-slide^slidetime)/(1-slide))
;That implies: 40*(1-slide)/(1-slide^slidetime) = Velocity

[State Fuckness]
type = VelSet
trigger1 = AnimElemTime(3) = 0; && AnimElemTime(4) < 2
x = 80.0*(1-0.865)/(1-.865**26);4.8
[State DONT TOUCH ME BITCH]
type = VelMul
trigger1 = AnimElemTime(3)>0
x = 0.865

[State 0, Width]
type = Width
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 2
player = 30,16
ignorehitpause=1

[State 1435, Screech]
type = playsnd
trigger1 = AnimElem = 4, =2
value = S101, 0

[State 1435, Whoosh!]
type = playsnd
trigger1 = AnimElem = 3
value = S1, 5

[State 1435, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, SA
animtype = Hard
pausetime = 8,8
hitflag = MAF
guardflag = MA
priority = 5, Hit
sparkno = S7920+random%8
guard.sparkno = s7911
sparkxy = -7,-36
damage = 90, 4
hitsound = S5, 6
guardsound = S6, 0
ground.velocity = -5.3,-2
air.velocity = -5.3, -3.2
air.fall = 1
fall.recover = 0
ground.hittime = 14
ground.slidetime = 14
fall.recovertime = 14
ground.type = Low
fall=1
envshake.time=12
envshake.freq=160
envshake.ampl=-4
ID=400;Detector

[State 1435, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Head Butt (Hit) Med
[Statedef 1434]
type    = S
movetype= A
physics = N
juggle  = 6
velset = 0,0
ctrl = 0
poweradd=50
anim = 1434
sprpriority = 2

;Distance for this? maybe 40 [px]
;40 = Velocity*((1-slide^slidetime)/(1-slide))
;That implies: 40*(1-slide)/(1-slide^slidetime) = Velocity

[State Fuckness]
type = VelSet
trigger1 = AnimElemTime(3) = 0; && AnimElemTime(4) < 2
x = 125.0*(1-0.865)/(1-.865**26);4.8
[State DONT TOUCH ME BITCH]
type = VelMul
trigger1 = AnimElemTime(3)>0
x = 0.865

[State 0, Width]
type = Width
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 2
player = 30,16
ignorehitpause=1

[State 1435, Screech]
type = playsnd
trigger1 = AnimElem = 4, =2
value = S101, 0

[State 1435, Whoosh!]
type = playsnd
trigger1 = AnimElem = 3
value = S1, 5

[State 1435, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, SA
animtype = Hard
pausetime = 8,8
hitflag = MAF
guardflag = MA
priority = 5, Hit
sparkno = S7920+random%8
guard.sparkno = s7911
sparkxy = -7,-36
damage = 105, 4
hitsound = S5, 6
guardsound = S6, 0
ground.velocity = -5.3,-2
air.velocity = -5.3, -3.2
air.fall = 1
fall.recover = 0
ground.hittime = 14
ground.slidetime = 14
fall.recovertime = 12
ground.type = Low
fall=1
envshake.time=12
envshake.freq=160
envshake.ampl=-4
ID=400;Detector

[State 1435, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Head Butt (Hit)
[Statedef 1433]
type    = S
movetype= A
physics = N
juggle  = 6
poweradd=60
velset = 0,0
ctrl = 0
anim = 1433
sprpriority = 2

;Distance for this? maybe 40 [px]
;40 = Velocity*((1-slide^slidetime)/(1-slide))
;That implies: 40*(1-slide)/(1-slide^slidetime) = Velocity

[State Fuckness]
type = VelSet
trigger1 = AnimElemTime(3) = 0; && AnimElemTime(4) < 2
x = 180.0*(1-0.865)/(1-.865**26);4.8
[State DONT TOUCH ME BITCH]
type = VelMul
trigger1 = AnimElemTime(3)>0
x = 0.865

[State 0, Width]
type = Width
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 2
player = 30,16
ignorehitpause=1

[State 1435, Screech]
type = playsnd
trigger1 = AnimElem = 4, =2
value = S101, 0

[State 1435, Whoosh!]
type = playsnd
trigger1 = AnimElem = 3
value = S1, 5

[State 1435, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, SA
animtype = Hard
pausetime = 8,8
hitflag = MAF
guardflag = MA
priority = 5, Hit
sparkno = S7920+random%8
guard.sparkno = s7911
sparkxy = -7,-36
damage = 118, 4
hitsound = S5, 6
guardsound = S6, 0
ground.velocity = -5.3,-2
air.velocity = -5.3, -3.2
air.fall = 1
fall.recover = 0
ground.hittime = 14
ground.slidetime = 14
ground.type = Low
fall=1
envshake.time=12
envshake.freq=160
envshake.ampl=-4
ID=400;Detector

[State 1435, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;=============================
;EX HEADBUTT

[Statedef 1534]
type    = S
movetype= A
physics = N
juggle  = 6
velset = 0,0
ctrl = 0
anim = 1534
sprpriority = 2

[State 1437, EX]
type = PlaySnd
trigger1 = Time = 0
value = S197,1

[State 65002, Substract Power]
type = PowerAdd
trigger1 = !(var(24)>=0 && var(28)=1) && Time=0
value = -500

[State 0, Substract Seconds]
type = VarAdd
trigger1 = (var(24)>=0 && var(28)=1) && Time=0
var(24) = -60

[State 1437, EX]
type = PlaySnd
trigger1 = Time = 0
value = S7,1

[State 65002, PalFXWiz]
type = PalFX
trigger1 = time = 0
time = 65
add = 29,29,0
mul = 256,256,256
sinadd = 58,58,0,3

[State 65000, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 65
length = 10
paladd = 50,50,0
framegap = 2
trans = add

[State 0, VelSet]
type = VelSet
triggerall = Anim=1534
trigger1 = AnimElemTime(3) = 0
x = 10

[State 1435, Screech]
type = playsnd
trigger1 = Anim=1534 && movehit
value = S2435, 1

[State 0, Width]
type = Width
trigger1 = Anim=1534 && AnimElemTime(3) >= 0
player = 30,16
ignorehitpause=1

[State 1435, Whoosh!]
type = playsnd
triggerall = Anim=1534
trigger1 = AnimElem = 3
value = S1, 5

[State 1435, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, SA
animtype = Hard
getpower=0,0
pausetime = 8,8
hitflag = MAF
guardflag = MA
priority = 5, Hit
sparkno = S7920+random%8
guard.sparkno = s7911
sparkxy = -7,-36
damage = 85, 10
hitsound = S5, 6
guardsound = S6, 0
guard.dist=500
ground.velocity = -2.5,-10;-5.3,-2
air.velocity = -5.3, -8.5;-3.2
air.fall = 1
fall.recover = 0
ground.hittime = 25
ground.slidetime = 25
ground.type = Low
fall=1
envshake.time=12
envshake.freq=160
envshake.ampl=-4
ID=400;Detector

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = Anim=1534 && movehit
value = 101

[State 0, VelMul]
type = VelMul
trigger1 = movehit
x = .935

[State 0, PlayerPush]
type = PlayerPush
trigger1 = !movehit
value = 0

[State 1435, ChangeState]
type = ChangeState
triggerall = !movehit || movereversed
trigger1 = frontedgebodydist < 5
value = 1535
ctrl = 0

[State 420, 3]
type = ChangeState
triggerall = movehit
trigger1 = Anim=101 && AnimElemTime(1)>=3
trigger1 = command = "holdup"
value = 701
ctrl = 1

[State 1435, ChangeState]
type = ChangeState
triggerall = Movehit
trigger1 = abs(Vel X) <= 1
value = 0
ctrl = 1

[Statedef 1535]
type    = S
movetype= A
physics = S
velset = -20,0
ctrl = 0
anim = 1535
sprpriority = 2

[State 5110, 7]
type = GameMakeAnim
trigger1 = Time=0
value = 72
pos = frontedgebodydist, -45
under = 0

[State 0, EnvShake]
type = EnvShake
trigger1 = Time=0
time = 7
freq = 74
ampl = -4

[State 1435, Screech]
type = playsnd
trigger1 = Time=0
value = S2435, 2

[State 3052, HitDef One]
type = HitDef
trigger1 = Time=0
attr = S, SA
animtype  = Hard
damage    = 42,0
getpower  = 0,0
priority  = 5,Hit
guardflag = MA
pausetime = 12,12
sparkno = s7930+random%8
guard.sparkno = s7911
sparkxy = -10,-26
hitsound   = s5,9
guardsound = s6,0
ground.type = High
fall=1
fall.recover=0
down.bounce = 1
fall.yvelocity=-5.4
yaccel=0.5
ground.velocity=16,0
air.velocity=16,0
ground.slidetime=24
ground.hittime=24
guard.hittime=18
air.hittime=24
fall.animtype = Hard
guard.sparkno = s7911
envshake.time = 15
envshake.freq = 185
envshake.ampl = -3
kill = 1
hitonce = 1
envshake.time=12
envshake.freq=150
envshake.ampl=-3
ID=400;Detector

[State 1435, ChangeState]
type = ChangeState
trigger1 = abs(Vel X) <= 1
value = 0
ctrl = 1

[Statedef 1536]
type    = A
movetype= H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = 5002
ignorehitpause=1

[State 0, ChangeState]
type = ChangeState
trigger1 = HitShakeOver
value = 1537
ctrl = 0

[Statedef 1537]
type    = A
movetype= H
physics = N
ctrl = 0
sprpriority = 1

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = Anim=5002 && AnimTime=0
value = 5007

[State 0, HitVelSet]
type = HitVelSet
trigger1 = 1
x = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = backedgebodydist < 5
value = 1538
ctrl = 0

[Statedef 1538]
type    = A
movetype= H
physics = N
ctrl = 0
sprpriority = 1

[State 0, EnvShake]
type = EnvShake
trigger1 = Time=0
time = 8
freq = 130
ampl = -6

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time=0
value = F5,4
volume=255

[State 0, Explod]
type = Explod
trigger1 = Time=0
anim = F72
ID = 1535
pos = -backedgebodydist,-45
postype = p1
facing = -1
bindtime = 1
removetime = -2
ontop = 1
ownpal = 1
removeongethit = 0

[State 0, PosFreeze]
type = PosFreeze
trigger1 = Time<5
value = 1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = Time=5
value = 5030

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.5

[State 0, VelSet]
type = VelSet
trigger1 = Time=[0,5]
x = 3.34
y = -1.2

[State 0, SelfState]
type = SelfState
trigger1 = Vel Y >0 && Pos Y >= 10
value = 5100


;----------------------------------------------------------------------
; Weak Pounce Surprise - Jump

[Statedef 1436]
type = A
movetype = A
physics = N
poweradd = 88
anim = 40
velset = 0, 0
ctrl = 0

[State 1436, VelSet]
type = VelSet
trigger1 = (Anim = 40) && (AnimTime = 0)
x = 6
y = -3.56

[State 1437, Whoosh 2]
type = PlaySnd
trigger1 = AnimElemTime(2) = 1  && anim = 1437
value = S1,5

[State 1437, Hit Def]
type = HitDef
trigger1 = AnimElemTime(3) = 0 && anim = 1437
attr = A,SA
hitflag = MAF
guardflag = MA
getpower = 0,0
animtype = Up
priority = 4,Hit
damage = 80,6
pausetime = 2,8
sparkno = s7920+random%8
guard.sparkno = s7911
sparkxy = 0,-50
hitsound = s5,6
guardsound = s6,0
ground.type = High
ground.hittime=21
ground.slidetime=21
fall = 1
fall.recover=0
ground.velocity = -1.3,-3.2
air.velocity = -5,-2.5
down.bounce = 1
kill = 1
guard.dist = 100
envshake.time = 25
envshake.freq = 200
envshake.ampl = 8

[State 1437, NotHitBy]
type = NotHitBy
trigger1 = Time = 0
value = ,NP,SP
time = 16

[State 1436, StateTypeSet]
type = StateTypeSet
trigger1 = (Anim = 40) && (AnimTime = 0)
statetype = A


[State 0, PlaySnd]
type = PlaySnd
triggerall = statetype=A
trigger1 = Anim = 1437 && (Vel Y >= 0) && (Pos Y >= 0)
value = S40,0
volume = 250

[State 0, PlaySnd]
type = EnvShake
triggerall = statetype=A
trigger1 = Anim = 1437 && (Vel Y >= 0) && (Pos Y >= 0)
time = 10
freq = 200
ampl = -4
phase = 90

[State 1436, Gravity]
type = Gravity
trigger1 = statetype = A && Anim != 40

[State 1436, Change To Attack]
type = ChangeAnim
trigger1 = Time = 12
value = 1437

[State 1436, Change To Jumping]
type = ChangeAnim
trigger1 = (Anim = 40) && (AnimTime = 0)
value = 45

[State 1437, VelSet]
type = VelSet
trigger1 = Anim = 1437 && (Vel Y >= 0) && (Pos Y >= 0)
x = 0
y = 0

[State 1436, StateTypeSet]
type = StateTypeSet
trigger1 = Anim = 1437 && (Vel Y >= 0) && (Pos Y >= 0)
statetype = S

[State 1437, PosSet]
type = PosSet
trigger1 = Anim = 1437 && (Vel Y >= 0) && (Pos Y >= 0)
y = 0

[State 1436, ChangeState]
type = ChangeState
triggerall = Anim = 1437
trigger1 = AnimElemTime(7) >= 0 && ((Vel Y >= 0) && (Pos Y >= 0))
value = 1437
ctrl = 0

;----------------------------------------------------------------------
; Pounce Surprise

[Statedef 1437]
type = S
movetype = A
physics = S
anim = 1801
ctrl = 0

[State 1437, VelSet]
type = VelSet
trigger1 = Time = 0
y = 0

[State 1437, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1437, Attack End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; Med Pounce Surprise - Jump

[Statedef 1440]
type = A
movetype = A
physics = N
poweradd = 88
anim = 40
velset = 0, 0
ctrl = 0

[State 0, PlaySnd]
type = PlaySnd
triggerall = random<600
trigger1 = Time=0
value = S5009,random%3
channel=0

[State 1436, VelSet]
type = VelSet
trigger1 = (Anim = 40) && (AnimTime = 0)
x = 6.8
y = -4.26

[State 1437, Whoosh 2]
type = PlaySnd
trigger1 = AnimElemTime(2) = 1  && anim = 1440
value = S1,5

[State 1437, Hit Def]
type = HitDef
trigger1 = AnimElemTime(3) = 0 && anim = 1440
attr = A,SA
hitflag = MAF
guardflag = MA
getpower = 0,0
animtype = Up
priority = 4,Hit
damage = 58,6
pausetime = 2,8
sparkno = s7920+random%8
guard.sparkno = s7911
sparkxy = 0,-50
hitsound = s5,6
guardsound = s6,0
ground.type = High
fall = 1
fall.recover=0
ground.hittime=21
ground.slidetime=21
ground.velocity = -1.3,-3.2
air.velocity = -5,-2.5
down.bounce = 1
kill = 1
guard.dist = 100
envshake.time = 25
envshake.freq = 200
envshake.ampl = 8
ID=400;Detector

[State 1437, NotHitBy]
type = NotHitBy
trigger1 = Time = 0
value = ,NP,SP
time = 25

[State 1436, StateTypeSet]
type = StateTypeSet
trigger1 = (Anim = 40) && (AnimTime = 0)
statetype = A

[State 1436, Gravity]
type = Gravity
trigger1 = statetype = A && Anim != 40

[State 1436, Change To Attack]
type = ChangeAnim
trigger1 = Time = 12
value = 1440

[State 1436, Change To Jumping]
type = ChangeAnim
trigger1 = (Anim = 40) && (AnimTime = 0)
value = 45

[State 0, PlaySnd]
type = PlaySnd
triggerall = statetype=A
trigger1 = Anim = 1440 && (Vel Y >= 0) && (Pos Y >= 0)
value = S40,0
volume = 250

[State 0, PlaySnd]
type = EnvShake
triggerall = statetype=A
trigger1 = Anim = 1440 && (Vel Y >= 0) && (Pos Y >= 0)
time = 10
freq = 200
ampl = -4
phase = 90

[State 1437, VelSet]
type = VelSet
trigger1 = Anim = 1440 && (Vel Y >= 0) && (Pos Y >= 0)
x = 0
y = 0

[State 1436, StateTypeSet]
type = StateTypeSet
trigger1 = Anim = 1440 && (Vel Y >= 0) && (Pos Y >= 0)
statetype = S

[State 1437, PosSet]
type = PosSet
trigger1 = Anim = 1440 && (Vel Y >= 0) && (Pos Y >= 0)
y = 0

[State 1436, ChangeState]
type = ChangeState
triggerall = Anim = 1440
trigger1 = AnimElemTime(7) >= 0 && ((Vel Y >= 0) && (Pos Y >= 0))
value = 1437
ctrl = 0

;----------------------------------------------------------------------
; Med Pounce Surprise - Jump

[Statedef 1441]
type = A
movetype = A
physics = N
poweradd = 88
anim = 40
velset = 0, 0
ctrl = 0

[State 0, PlaySnd]
type = PlaySnd
triggerall = random<600
trigger1 = Time=0
value = S5009,random%3
channel=0

[State 1436, VelSet]
type = VelSet
trigger1 = (Anim = 40) && (AnimTime = 0)
x = 8
y = -5

[State 1437, Whoosh 2]
type = PlaySnd
trigger1 = AnimElemTime(2) = 1  && anim = 1441
value = S1,5

[State 1437, Hit Def]
type = HitDef
trigger1 = AnimElemTime(3) = 0 && anim = 1441
attr = A,SA
hitflag = MAF
guardflag = MA
getpower = 0,0
animtype = Up
priority = 4,Hit
damage = 60,9
pausetime = 2,8
sparkno = s7920+random%8
guard.sparkno = s7911
sparkxy = 0,-50
hitsound = s5,6
guardsound = s6,0
ground.type = High
fall = 1
fall.recover=0
ground.hittime=21
ground.slidetime=21
ground.velocity = -1.3,-3.2
air.velocity = -5,-2.5
down.bounce = 1
kill = 1
guard.dist = 100
envshake.time = 25
envshake.freq = 200
envshake.ampl = 8
ID=400;Detector

[State 1437, NotHitBy]
type = NotHitBy
trigger1 = Time = 0
value = ,NP,SP
time = 37

[State 1436, StateTypeSet]
type = StateTypeSet
trigger1 = (Anim = 40) && (AnimTime = 0)
statetype = A

[State 1436, Gravity]
type = Gravity
trigger1 = statetype = A && Anim != 40

[State 1436, Change To Attack]
type = ChangeAnim
trigger1 = Time = 12
value = 1441

[State 1436, Change To Jumping]
type = ChangeAnim
trigger1 = (Anim = 40) && (AnimTime = 0)
value = 45

[State 1437, VelSet]
type = VelSet
trigger1 = Anim = 1441 && (Vel Y >= 0) && (Pos Y >= 0)
x = 0
y = 0

[State 0, PlaySnd]
type = PlaySnd
triggerall = statetype=A
trigger1 = Anim = 1441 && (Vel Y >= 0) && (Pos Y >= 0)
value = S40,0
volume = 250

[State 0, PlaySnd]
type = EnvShake
triggerall = statetype=A
trigger1 = Anim = 1441 && (Vel Y >= 0) && (Pos Y >= 0)
time = 10
freq = 200
ampl = -4
phase = 90

[State 1436, StateTypeSet]
type = StateTypeSet
trigger1 = Anim = 1441 && (Vel Y >= 0) && (Pos Y >= 0)
statetype = S

[State 1437, PosSet]
type = PosSet
trigger1 = Anim = 1441 && (Vel Y >= 0) && (Pos Y >= 0)
y = 0

[State 1436, ChangeState]
type = ChangeState
triggerall = Anim = 1441
trigger1 = AnimElemTime(7) >= 0 && ((Vel Y >= 0) && (Pos Y >= 0))
value = 1437
ctrl = 0

;----------------------------------------------------------------------
; EX Pounce Surprise - Jump

[Statedef 1444]
type = A
movetype = A
physics = N
anim = 40
velset = 0, 0
ctrl = 0

[State 0, PlaySnd]
type = PlaySnd
triggerall = random<600
trigger1 = Time=0
value = S5009,random%3
channel=0

[State 65002, Substract Power]
type = PowerAdd
trigger1 = !(var(24)>=0 && var(28)=1) && Time=0
value = -500

[State 0, Substract Seconds]
type = VarAdd
trigger1 = (var(24)>=0 && var(28)=1) && Time=0
var(24) = -60

[State 1437, EX]
type = PlaySnd
trigger1 = Time = 0
value = S7,1

[State 1437, EX]
type = PlaySnd
trigger1 = Time = 0
value = S197,1

[State 65002, PalFXWiz]
type = PalFX
trigger1 = time = 0
time = 65
add = 29,29,0
mul = 256,256,256
sinadd = 58,58,0,3

[State 65000, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 65
length = 10
paladd = 50,50,0
framegap = 2
trans = add

[State 1436, VelSet]
type = VelSet
trigger1 = (Anim = 40) && (AnimTime = 0)
x = 10.42
y = -5.67

[State 1437, Whoosh 2]
type = PlaySnd
trigger1 = AnimElemTime(2) = 1  && anim = 1442
value = S1,5

[State 1437, Hit Def]
type = HitDef
trigger1 = (AnimElemTime(4) = 0 || AnimElemTime(4) = 3 || AnimElemTime(4) = 6) && anim = 1442
attr = A,SA
hitflag = MAF
guardflag = MA
getpower = 0,0
animtype = Up
priority = 5,Hit
damage = 41,9
pausetime = 14,16
sparkno = s7920+random%8
guard.sparkno = s7911
sparkxy = 0,-50
hitsound = s5,6
guardsound = s6,0
ground.type = High
fall = 1
fall.recover=0
ground.hittime=21
ground.slidetime=21
ground.velocity = -1.3,-5.2
air.velocity = -3,-5
down.bounce = 1
kill = 1
getpower = 0,0
guard.dist = 100
envshake.time = 25
envshake.freq = 200
envshake.ampl = 8
ID=400;Detector

[State 1437, NotHitBy]
type = NotHitBy
trigger1 = Time = 0
value = ,NP,SP
time = 20

[State 1436, StateTypeSet]
type = StateTypeSet
trigger1 = (Anim = 40) && (AnimTime = 0)
statetype = A

[State 1436, Gravity]
type = Gravity
trigger1 = statetype = A && Anim != 40

[State 1436, Change To Attack]
type = ChangeAnim
trigger1 = Time = 12
value = 1442


[State 0, PlaySnd]
type = PlaySnd
triggerall = statetype=A
trigger1 = Anim = 1442 && (Vel Y >= 0) && (Pos Y >= 0)
value = S40,0
volume = 250

[State 0, PlaySnd]
type = EnvShake
triggerall = statetype=A
trigger1 = Anim = 1442 && (Vel Y >= 0) && (Pos Y >= 0)
time = 10
freq = 200
ampl = -4
phase = 90

[State 1436, Change To Jumping]
type = ChangeAnim
trigger1 = (Anim = 40) && (AnimTime = 0)
value = 45

[State 1437, VelSet]
type = VelSet
trigger1 = Anim = 1442 && (Vel Y >= 0) && (Pos Y >= 0)
x = 0
y = 0

[State 1436, StateTypeSet]
type = StateTypeSet
trigger1 = Anim = 1442 && (Vel Y >= 0) && (Pos Y >= 0)
statetype = S

[State 1437, PosSet]
type = PosSet
trigger1 = Anim = 1442 && (Vel Y >= 0) && (Pos Y >= 0)
y = 0

[State 1436, ChangeState]
type = ChangeState
triggerall = Anim = 1442
trigger1 = AnimElemTime(7) >= 0 && ((Vel Y >= 0) && (Pos Y >= 0))
value = 1437
ctrl = 0

;----------------------------------------------------------------------
; Anti Flies - Ground Weak Startup

[Statedef 1788]
type = U
movetype = A
physics = N
poweradd = 67
anim = 1788
juggle = 3
velset = 0, 0
ctrl = 0

[State No shit sherlock]
type = PosAdd
trigger1 = AnimElemTime(4) = 1
trigger2 = AnimelemTime(5) = 0
trigger3 = AnimelemTime(6) = 0
x = 6

[State Add Position]
type = PosAdd
trigger1 = AnimElemTime(7) = 0
x = 1.8

;Antiair Snippets
[State Ground]
type = StateTypeSet
trigger1 = pos Y >= 0
statetype = S
[State THOU SHALT NOT BE IN SOLID]
type = StateTypeSet
trigger1 = pos Y < 0
statetype = A

[State Sound]
type = PlaySnd
trigger1 = AnimElem=3
value = S1,5

[State Annoying Jump sound]
type = PlaySnd
trigger1 = AnimTime=0
value = S22000,1

[State Unneeded sound because faggot]
type = PlaySnd
trigger1 = Time=0
value = S5004,0

[State Heavy on the antiair fuckness]
type = NotHitBy
trigger1 = AnimElemTime(8)<0
value = SCA

;ENOUGH

[State Base Hitdef]
type = HitDef
trigger1 = AnimElemTime(8) = 0
attr = A, SA
animtype = UP
pausetime = 5,5
guard.pausetime = 5,5
hitflag = MAF
guardflag = M
priority = 4, Hit
sparkno = S7920+random%8
guard.sparkno = s7911
sparkxy = -7,-65
damage = 65, 4
hitsound = S5, 2
guardsound = S6, 0
ground.velocity = -.1,-((2*0.52*110)**0.5)
air.velocity = -.1,-((2*0.52*110)**0.5)
fall = 1
yaccel=0.52
fall.recovertime = 0
fall.recover=0
ground.hittime = 14
ground.slidetime = 7
fall.recovertime = 12
ground.type = High
ID=400;Detector

[State 1788, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 1789
ctrl = 0

;Falling State (Weak)
[Statedef 1789]
type = A
movetype = A
physics = N
poweradd = 11
anim = 1789
;juggle = 16
ctrl = 0
hitdefpersist=1
movehitpersist=1

[State 1792, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S1,5
volume = 255

[State 1792, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S41,0
volume = 255

[State 1792, VelMul]
type = VelMul
trigger1 = AnimelemTime(2) >= 0
x = 0.92

[State 1789, PosAdd]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 1788, PlaySnd]
type = PlaySnd
trigger1 = Vel Y > 2
value = s3250,0
persistent=0

[State 1789, PosAdd]
type = VelSet
trigger1 = Time = 0
x = 3
y = -((2*0.52*88)**0.5) ;sqr(0^2 + 2*0.52*(-150-0))

[State 1789, Gravity]
type = Gravity
trigger1 = 1

[State 1789, ChangeState]
type = ChangeState
trigger1 = (Vel Y >= 0) && (Pos Y >= 10) && (statetype = A)
value = 1800
ctrl = 0

;----------------------------------------------------------------------
; Anti Flies - Ground Med Startup

[Statedef 1790]
type = U
movetype = A
physics = N
poweradd = 67
anim = 1790
juggle = 3
velset = 8, 0
ctrl = 0

;Antiair Snippets
[State Ground]
type = StateTypeSet
trigger1 = pos Y >= 0
statetype = S
[State THOU SHALT NOT BE IN SOLID]
type = StateTypeSet
trigger1 = pos Y < 0
statetype = A

[State Sound]
type = PlaySnd
trigger1 = AnimElem=3
value = S1,5

[State Annoying Jump sound]
type = PlaySnd
trigger1 = AnimTime=0
value = S22000,1

[State Unneeded sound because faggot]
type = PlaySnd
trigger1 = Time=0
value = S5004,0

[State Heavy on the antiair fuckness]
type = NotHitBy
trigger1 = AnimElemTime(8)<0
value = ,NA,SA,AP,NT

;ENOUGH

[State 0, VelMul]
type = VelMul
trigger1 = 1
x = 0.82

[State 1788, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(4) = 1
trigger2 = AnimelemTime(5) = 0
trigger3 = AnimelemTime(6) = 0
x = 7

[State 1788, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(7) = 0
x = 3.65

[State 1788, HitDef]
type = HitDef
trigger1 = AnimElemTime(8) = 0
attr = A, SA
animtype = Up
pausetime = 5,5
guard.pausetime = 5,5
hitflag = MAF
guardflag = M
priority = 4, Hit
sparkno = S7920+random%8
guard.sparkno = s7911
sparkxy = -7,-65
damage = 80, 4
hitsound = S5, 2
guardsound = S6, 0
ground.velocity = -.1,-((2*0.52*128)**0.5)
air.velocity = -.1,-((2*0.52*128)**0.5)
fall = 1
yaccel=0.52
fall.recovertime = 0
fall.recover = 0
ground.hittime = 14
ground.slidetime = 7
fall.recovertime = 12
ground.type = High
ID=400;Detector

[State 1788, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 1791
ctrl = 0

[Statedef 1791]
type = A
movetype = A
physics = N
poweradd = 11
anim = 1789
;juggle = 16
ctrl = 0
hitdefpersist=1
movehitpersist=1

[State 1788, PlaySnd]
type = PlaySnd
trigger1 = Vel Y > 2
value = s3250,0
persistent=0

[State 1792, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S1,5
volume = 255

[State 1792, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S41,0
volume = 255

[State 1792, VelMul]
type = VelMul
trigger1 = AnimelemTime(2) >= 0
x = 0.92

[State 1789, PosAdd]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 1789, PosAdd]
type = VelSet
trigger1 = Time = 0
x = 3.8
y = -((2*0.52*110)**0.5) ;sqr(0^2 + 2*0.52*(-150-0))

[State 1789, Gravity]
type = Gravity
trigger1 = 1

[State 1789, ChangeState]
type = ChangeState
trigger1 = (Vel Y >= 0) && (Pos Y >= 10) && (statetype = A)
value = 1800
ctrl = 0

;----------------------------------------------------------------------
; Anti Flies - Ground Strong Startup

[Statedef 1792]
type = U
movetype = A
physics = N
poweradd = 67
anim = 1792
juggle = 3
velset = 10, 0
ctrl = 0

;Antiair Snippets
[State Ground]
type = StateTypeSet
trigger1 = pos Y >= 0
statetype = S
[State THOU SHALT NOT BE IN SOLID]
type = StateTypeSet
trigger1 = pos Y < 0
statetype = A

[State Sound]
type = PlaySnd
trigger1 = AnimElem=3
value = S1,5

[State Annoying Jump sound]
type = PlaySnd
trigger1 = AnimTime=0
value = S22000,1

[State Unneeded sound because faggot]
type = PlaySnd
trigger1 = Time=0
value = S5004,0

[State Heavy on the antiair fuckness]
type = NotHitBy
trigger1 = AnimElemTime(8)<0
value = SCA

;ENOUGH

[State 0, VelMul]
type = VelMul
trigger1 = 1
x = 0.82

[State 1788, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(4) = 1
trigger2 = AnimelemTime(5) = 0
trigger3 = AnimelemTime(6) = 0
x = 7

[State 1788, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(7) = 0
x = 4.24

[State 1788, HitDef]
type = HitDef
trigger1 = AnimElemTime(8) = 0
attr = A, SA
animtype = Up
pausetime = 15,15
guard.pausetime = 10,10
hitflag = MA
guardflag = M
priority = 4, Hit
sparkno = S7920+random%8
guard.sparkno = s7911
sparkxy = -7,-65
damage = 100,8
hitsound = S5, 2
guardsound = S6, 0
ground.velocity = -.1,-((2*0.52*158)**0.5)
air.velocity = -.1,-((2*0.52*158)**0.5)
fall = 1
yaccel=0.52
fall.recovertime = 0
fall.recover = 0
ground.hittime = 14
ground.slidetime = 7
fall.recovertime = 12
ground.type = High
ID=400;Detector

[State 1788, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 1793
ctrl = 0

[Statedef 1793]
type = A
movetype = A
physics = N
poweradd = 11
anim = 1789
;juggle = 16
ctrl = 0
hitdefpersist=1
movehitpersist=1

[State 1788, PlaySnd]
type = PlaySnd
trigger1 = Vel Y > 2
value = s3250,0
persistent=0

[State 1792, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S1,5
volume = 255

[State 1792, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S41,0
volume = 255

[State 1792, VelMul]
type = VelMul
trigger1 = AnimelemTime(2) >= 0
x = 0.92

[State 1789, PosAdd]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 1789, PosAdd]
type = VelSet
trigger1 = Time = 0
x = 4.2
y = -((2*0.52*130)**0.5) ;sqr(0^2 + 2*0.52*(-150-0))

[State 1789, Gravity]
type = Gravity
trigger1 = 1

[State 1789, ChangeState]
type = ChangeState
trigger1 = (Vel Y >= 0) && (Pos Y >= 10) && (statetype = A)
value = 1800
ctrl = 0

;----------------------------------------------------------------------
; Anti Flies - EX Ground Strong Startup

[Statedef 1794]
type = S
movetype = A
physics = N
anim = 1795
juggle = 3
velset = 10, 0
ctrl = 0

[State 0, VelMul]
type = VelMul
trigger1 = 1
x = 0.82

[State 65002, Substract Power]
type = PowerAdd
trigger1 = !(var(24)>=0 && var(28)=1) && Time=0
value = -500

[State 0, Substract Seconds]
type = VarAdd
trigger1 = (var(24)>=0 && var(28)=1) && Time=0
var(24) = -60

[State 1437, EX]
type = PlaySnd
trigger1 = Time = 0
value = S197,1

[State 65002, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S7,1

[State 65002, PalFXWiz]
type = PalFX
trigger1 = time = 0
time = 65
add = 29,29,0
mul = 256,256,256
sinadd = 58,58,0,3

[State 65000, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 65
length = 10
paladd = 50,50,0
framegap = 2
trans = add

[State 1788, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(4) = 1
trigger2 = AnimelemTime(5) = 0
trigger3 = AnimelemTime(6) = 0
x = 8

[State 1788, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(7) = 0
trigger2 = AnimelemTime(9) = 0
trigger3 = AnimelemTime(11) = 0
trigger4 = AnimelemTime(13) = 0
x = 2.8

[State 1788, HitDef]
type = HitDef
trigger1 = AnimElemTime(12) = 0
attr = S, SA
animtype = Up
pausetime = 9,30
guard.pausetime = 2,2
hitflag = MAF
guardflag = M
priority = 4, Hit
sparkno = S7920+random%8
guard.sparkno = s7911
sparkxy = -7,-65
damage = 40, 4
hitsound = S5, 17
guardsound = S6, 1
ground.velocity = -.1,-((2*0.52*190)**0.5)
guard.velocity=-9
air.velocity = -.1,-((2*0.52*190)**0.5)
fall = 1
yaccel=0.52
fall.recover=0
ground.hittime = 14
guard.hittime= 20
guard.slidetime=20
ground.slidetime = 7
ground.type = High
getpower=0,0
ID=400;Detector
envshake.time=15
envshake.freq=170
envshake.ampl=-5

[State 1788, PlaySnd]
type = PlaySnd
trigger1 = AnimElem=3
value = S237,0

[State 1788, PlaySnd]
type = PlaySnd
trigger1 = AnimElem=3||animelem=5||animelem=7||Animelem=9||animelem=11||animelem=12
value = S1,5*(animelem=12)

[State 1788, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(9)<0
trigger2 = AnimElemTime(12)>=0 && movehit
value = ,NA,SA,HA,AP,NT

[State 1788, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 1795
ctrl = 0

[Statedef 1795]
type = A
movetype = A
physics = N
anim = 1796
juggle = 16
ctrl = 0

[State 1437, EX]
type = PlaySnd
trigger1 = Time = 0
value = S22000,1

[State 1792, PlaySnd]
type = PlaySnd
trigger1 = Animelem=2
value = S1,5
volume = 255

[State 1792, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S41,0
volume = 255

[State 1792, VelMul]
type = VelMul
trigger1 = AnimelemTime(2) >= 0
x = 0.92

[State 1789, PosAdd]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 1789, PosAdd]
type = VelSet
trigger1 = Time = 0
x = 5.2
y = -((2*0.52*190)**0.5) ;sqr(0^2 + 2*0.52*(-150-0))

[State 1789, Gravity]
type = Gravity
trigger1 = 1

[State 1789, Hit Def]
type = HitDef
trigger1 = AnimElemTime(2) = 0
attr = A,SA
hitflag = MAF
guardflag = MA
getpower = 0,0
animtype = Up
priority = 4,Hit
damage = 125,5
pausetime = 15,20
sparkno = s7920+random%8
guard.sparkno = s7911
sparkxy = -5,-63
hitsound = s5,9
guardsound = s6,0
ground.type = High
fall = 1
fall.recovertime = 0
fall.recover=0
kill = 1
getpower=0,0
ID=788
ground.velocity = -4, 15
guard.velocity = -7.995 ;..... Need to check the docs...
air.velocity = -4, 15
yaccel=1
ground.hittime = 27
ground.slidetime = 27
ground.type = low
fall = 1
fall.recover=1
fall.recovertime=54
fall.xvelocity=-1.5
fall.yvelocity=-14.5
down.bounce=1
nochainID = 501,788
envshake.time=25
envshake.freq=175
envshake.ampl=8
fall.envshake.time=20
fall.envshake.freq=175
fall.envshake.ampl=5

[State p2stateno]
type = TargetState
triggerall = movehit && !movereversed && !moveguarded
triggerall = NumTarget(788)
triggerall = !target(788),IsHelper
trigger1 = target(788),Time=0
value = 661
ID = 788
ignorehitpause=1

[State 1789, ChangeState]
type = ChangeState
trigger1 = (Vel Y >= 0) && (Pos Y >= 10) && (statetype = A)
value = 1800
ctrl = 0

;----------------------------------------------------------------------
; Anti Flies - EX AIR Strong Startup

[Statedef 1796]
type = A
movetype = A
physics = N
anim = 1788
juggle = 2
velset = 0, 0
ctrl = 0

[State 1437, EX]
type = PlaySnd
trigger1 = Time = 0
value = S197,1

[State 65002, Substract Power]
type = PowerAdd
trigger1 = !(var(24)>=0 && var(28)=1) && Time=0
value = -500

[State 0, Substract Seconds]
type = VarAdd
trigger1 = (var(24)>=0 && var(28)=1) && Time=0
var(24) = -60

[State 65002, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S7,1

[State 65002, PalFXWiz]
type = PalFX
trigger1 = time = 0
time = 65
add = 29,29,0
mul = 256,256,256
sinadd = 58,58,0,3

[State 65000, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 65
length = 10
paladd = 50,50,0
framegap = 2
trans = add

[State 1788, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(4) = 1
trigger2 = AnimelemTime(5) = 0
trigger3 = AnimelemTime(6) = 0
x = 6

[State 1789, Incoming Combos drop!]
type = VarAdd
trigger1 = Time = 0
v = 44
value = -5

[State 1788, HitDef]
type = HitDef
trigger1 = AnimElemTime(6) = 0
attr = A, SA
animtype = Hard
pausetime = 31,30
guard.pausetime = 31,30
hitflag = MAF
getpower = 0,0
guardflag = HA
priority = 4, Hit
sparkno = S7920+random%8
guard.sparkno = s7911
sparkxy = -7,-52
damage = 35, 4
hitsound = S5, 2
guardsound = S6, 0
ground.velocity = -.1,-16
air.velocity = -.1,-10
fall = 1
fall.recovertime = 43
ground.hittime = 14
ground.slidetime = 7
fall.recovertime = 12
ground.type = High
ID=400;Detector

[State 1788, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 1795
ctrl = 0

;----------------------------------------------------------------------
; Anti Flies - Air Weak Startup

[Statedef 1797]
type = A
movetype = A
physics = N
poweradd = 67
anim = 1788
juggle = 1
velset = 0, 0
ctrl = 0

[State 1788, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(4) = 1
trigger2 = AnimelemTime(5) = 0
trigger3 = AnimelemTime(6) = 0
x = 6

[State 1788, HitDef]
type = HitDef
trigger1 = AnimElemTime(6) = 0
attr = A, SA
animtype = Hard
pausetime = 14,16
guard.pausetime = 7,7
hitflag = MAF
guardflag = HA
priority = 4, Hit
sparkno = S7920+random%8
guard.sparkno = s7911
sparkxy = -7,-52
damage = 12, 4
hitsound = S5, 2
guardsound = S6, 0
ground.velocity = -.1,-5
air.velocity = -.1,-5
air.fall = 1
fall.recovertime = 43
ground.hittime = 14
ground.slidetime = 7
fall.recovertime = 12
fall.recover=0
ground.type = High
ID=400;Detector

[State 1788, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 1789
ctrl = 0

;----------------------------------------------------------------------
; Anti Flies - Air Med Startup

[Statedef 1798]
type = A
movetype = A
physics = N
poweradd = 67
anim = 1788
juggle = 2
velset = 0, 0
ctrl = 0

[State 1788, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(4) = 1
trigger2 = AnimelemTime(5) = 0
trigger3 = AnimelemTime(6) = 0
x = 6

[State 1788, HitDef]
type = HitDef
trigger1 = AnimElemTime(6) = 0
attr = A, SA
animtype = Hard
pausetime = 14,16
guard.pausetime = 7,7
hitflag = MAF
guardflag = HA
priority = 4, Hit
sparkno = S7920+random%8
guard.sparkno = s7911
sparkxy = -7,-52
damage = 12, 4
hitsound = S5, 2
guardsound = S6, 0
ground.velocity = -.1,-7.8
air.velocity = -.1,-7.8
air.fall = 1
fall.recovertime = 43
ground.hittime = 14
ground.slidetime = 7
fall.recovertime = 12
ground.type = High

[State 1788, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 1791
ctrl = 0

;----------------------------------------------------------------------
; Anti Flies - Air Strong Startup

[Statedef 1799]
type = A
movetype = A
physics = N
poweradd = 67
anim = 1788
juggle = 1
velset = 0, 0
ctrl = 0

[State 1788, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(4) = 1
trigger2 = AnimelemTime(5) = 0
trigger3 = AnimelemTime(6) = 0
x = 6

[State 1788, HitDef]
type = HitDef
trigger1 = AnimElemTime(6) = 0
attr = A, SA
animtype = Hard
pausetime = 14,13
guard.pausetime = 7,7
hitflag = MAF
guardflag = HA
priority = 4, Hit
sparkno = S7920+random%8
guard.sparkno = s7911
sparkxy = -7,-52
damage = 25, 4
hitsound = S5, 2
guardsound = S6, 0
ground.velocity = -.1,-12.1
air.velocity = -.1,-12.1
fall = 1
fall.recovertime = 43
ground.hittime = 14
ground.slidetime = 7
fall.recovertime = 12
ground.type = High
ID=400;Detector

[State 1788, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 1793
ctrl = 0

[Statedef 2430]
type = S
movetype = A
physics = N
poweradd = 55
anim = 100
velset = 6.56, 0
ctrl = 0

[State 2446, NotHitBy]
type = NotHitBy
trigger1 = Time = 0
value = ,NA,SA,HA,NP,SP,HP
time = 12

[State 2430, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2 || AnimElem = 4
value = S100,0

[State 2430, 3]
type = MakeDust
trigger1 = AnimElemTime(2) = 0
trigger2 = AnimElemTime(4) = 0
pos = -5,-2
spacing = 3

[State 2430, ChangeState]
type = ChangeState
trigger1 = Time > 90
trigger2 = p2bodydist X < 40
value = 2435
ctrl = 0

[Statedef 2435]
type = A
movetype = A
physics = N
juggle = 13
anim = 2435
velset = 4, -4.8
ctrl = 0

[State 2446, NotHitBy]
type = NotHitBy
trigger1 = Time = 0
value = ,NA,SA,HA,NP,SP,HP
time = 8

[State 2435, Gravity]
type = Gravity
trigger1 = 1

[State 2435, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S2435,0

[State 2435, 1]
type = HitDef
trigger1 = Time = 0
attr = A, SA
damage = 89, 12
animtype = Hard
guardflag = M
hitflag = MAFD
priority = 3, Hit
pausetime = 8, 8
sparkno = s7900+random%8
guard.sparkno = s7911
sparkxy = -10, -59
hitsound = s5, 9
guardsound = s6, 0
ground.type = Low
ground.slidetime = 36
ground.hittime  = 36
ground.velocity = -9.2
air.fall = 1
fall.recover = 0

[State 2435, ChangeState]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y > 10
value = 2436
ctrl = 0

[Statedef 2436]
type = L
movetype = I
physics = N
ANIM = 6365
velset = 0, 0
ctrl = 0

[State 2436, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5110, 7]
type = GameMakeAnim
trigger1 = Time = 0
trigger1 = !SysVar(0)
value = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos = 0, 0
under = sysvar(1) <= 14

[State 2436, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S2435,2

[State 2436, ChangeState]
type = ChangeState
trigger1 = Time >= 24
value = 5120
ctrl = 0

[Statedef 2440]
type = S
movetype = A
physics = N
poweradd = 55
anim = 100
velset = 3.9, 0
ctrl = 0

[State 2446, NotHitBy]
type = NotHitBy
trigger1 = Time = 0
value = ,NA,SA,NP,SP,HP
time = 12

[State 2430, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2 || AnimElem = 4
value = S100,0

[State 2430, 3]
type = MakeDust
trigger1 = AnimElemTime(2) = 0
trigger2 = AnimElemTime(4) = 0
pos = -5,-2
spacing = 3

[State 2430, ChangeState]
type = ChangeState
trigger1 = Time > 6
value = 2441
ctrl = 0

[Statedef 2441]
type = A
movetype = A
physics = N
juggle = 13
anim = 2435
velset = 6.5, -4.8
ctrl = 0

[State 2446, NotHitBy]
type = NotHitBy
trigger1 = Time = 0
value = ,NA,SA,NP,SP,HP
time = 10

[State 2435, Gravity]
type = Gravity
trigger1 = 1

[State 2435, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S2435,0

[State 2435, 1]
type = HitDef
trigger1 = Time = 0
attr = A, SA
damage = 72, 7
animtype = Hard
guardflag = M
hitflag = MAFD
priority = 3, Hit
pausetime = 8, 8
sparkno = s7900+random%8
guard.sparkno = s7911
sparkxy = -10, -59
hitsound = s5, 9
guardsound = s6, 0
ground.type = Low
ground.slidetime = 36
ground.hittime  = 36
ground.velocity = -9.2
air.fall = 1
fall.recover = 0

[State 2435, ChangeState]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y > 10
value = 2436
ctrl = 0

[Statedef 2442]
type = A
movetype = A
physics = N
juggle = 13
anim = 2435
velset = 6, -4.8
ctrl = 0

[State 2446, NotHitBy]
type = NotHitBy
trigger1 = Time = 0
value = ,NA,SA,HA,NP,SP,HP
time = 7

[State 2435, Gravity]
type = Gravity
trigger1 = 1

[State 2435, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S2435,0

[State 2435, 1]
type = HitDef
trigger1 = Time = 0
attr = A, SA
damage = 52, 4
animtype = Hard
guardflag = M
hitflag = MAFD
priority = 3, Hit
pausetime = 8, 8
sparkno = s7900+random%8
guard.sparkno = s7911
sparkxy = -10, -59
hitsound = s5, 9
guardsound = s6, 0
ground.type = Low
air.fall = 1
fall.recover = 0
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -9.2

[State 2435, ChangeState]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y > 10
value = 2436
ctrl = 0

[Statedef 2445]
type = S
movetype = A
physics = N
poweradd = -500
anim = 2445
velset = 7.6, 0
ctrl = 0

[State 2445, ReversalDef]
type = ReversalDef
trigger1 = Time = 0
reversal.attr = SCA, NA, SA, NP, SP
pausetime = 10,10
sparkno = S7911
hitsound = S6,0

[State 65002, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S7,1

[State 65002, PalFXWiz]
type = PalFX
trigger1 = time = 0
time = 65
add = 29,29,0
mul = 256,256,256
sinadd = 58,58,0,3

[State 65000, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 65
length = 10
paladd = 50,50,0
framegap = 2
trans = add

[State 2430, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2 || AnimElem = 4
value = S100,0

[State 2430, 3]
type = MakeDust
trigger1 = AnimElemTime(2) = 0
trigger2 = AnimElemTime(4) = 0
pos = -5,-2
spacing = 3

[State 2430, ChangeState]
type = ChangeState
trigger1 = Time > 46
trigger2 = p2bodydist X < 49
value = 2446
ctrl = 0

[Statedef 2446]
type = A
movetype = A
physics = N
juggle = 13
anim = 2435
velset = 6.9, -4.8
ctrl = 0

[State 2446, NotHitBy]
type = NotHitBy
trigger1 = Time = 0
value = ,NA,SA,HA,NP,SP,HP
time = 7

[State 2435, Gravity]
type = Gravity
trigger1 = 1

[State 2435, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S2435,0

[State 2435, 1]
type = HitDef
trigger1 = Time = 0
attr = A, SA
damage = 103, 17
animtype = Hard
guardflag = M
hitflag = MAFD
priority = 3, Hit
pausetime = 8, 8
sparkno = s7900+random%8
guard.sparkno = s7911
getpower = 0,0
sparkxy = -10, -59
hitsound = s2435, 3
guardsound = s6, 0
ground.type = Low
ground.slidetime = 55
ground.hittime  = 55
fall = 1
ground.velocity = -15.2, -2

[State 2435, ChangeState]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y > 10
value = 2436
ctrl = 0

[Statedef 1800]
type = S
movetype = I
physics = N
poweradd = 0
anim = 1800
velset = 0, 0
ctrl = 0

[State 1800, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1800, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S40,0

[State 1800, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; Pounce Surprise

[Statedef 1438]
type = S
movetype = A
physics = S
anim = 1437
ctrl = 0
juggle = 9

[State 1438, ChangeAnim]
type = ChangeAnim
trigger1 = time < 7
value = 1437
elem = 1

[State 1438, VelSet]
type = VelSet
trigger1 = Time = 0
y = 0

[State 1438, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1438, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(2) < 1
value = ,NA,NP

[State 1438, Whoosh 2]
type = PlaySnd
trigger1 = AnimElemTime(2) = 1
value = S1,5

[State 1438, Hit Def]
type = HitDef
trigger1 = AnimElemTime(3) = 0
attr = S,SA
hitflag = MA
guardflag = MA
getpower = 0,0
animtype = Up
priority = 4,Hit
damage = 59,4
pausetime = 0,8
sparkno = s7920+random%8
guard.sparkno = s7911
sparkxy = 0,-50
hitsound = s5,6
guardsound = s6,0
ground.type = High
fall = 1
ground.velocity = -1.3,-3.2
air.velocity = -5,-2.5
down.bounce = 1
kill = 1
guard.dist = 100
envshake.time = 25
envshake.freq = 165
envshake.ampl = 8

[State 1438, Attack End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; EX Pounce Surprise

[Statedef 1439]
type = S
movetype = A
physics = S
anim = 1437
ctrl = 0
juggle = 9

[State 1437, EX]
type = PlaySnd
trigger1 = Time = 0
value = S197,1

[State 65002, Substract Power]
type = PowerAdd
trigger1 = !(var(24)>=0 && var(28)=1) && Time=0
value = -500

[State 0, Substract Seconds]
type = VarAdd
trigger1 = (var(24)>=0 && var(28)=1) && Time=0
var(24) = -60

[State 1438, ChangeAnim]
type = ChangeAnim
trigger1 = time < 27
value = 1437
elem = 1

[State 1438, VelSet]
type = VelSet
trigger1 = Time = 0
y = 0

[State 1438, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1438, NotHitBy]
type = NotHitBy
trigger1 = Time < 12
value = ,NA,SA,NP

[State 1438, Whoosh 2]
type = PlaySnd
trigger1 = AnimElemTime(2) = 1
value = S1,5

[State 65002, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S7,1

[State 65002, PalFXWiz]
type = PalFX
trigger1 = time = 0
time = 65
add = 29,29,0
mul = 256,256,256
sinadd = 58,58,0,3

[State 65000, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 65
length = 10
paladd = 50,50,0
framegap = 2
trans = add

[State 1438, Hit Def]
type = HitDef
trigger1 = AnimElemTime(3) = 0
attr = S,SA
hitflag = MA
guardflag = MA
getpower = 0,0
animtype = Up
priority = 5,Hit
damage = 113,13
pausetime = 0,8
sparkno = s7920+random%8
guard.sparkno = s7911
sparkxy = 0,-50
hitsound = s5,6
guardsound = s6,0
ground.type = High
fall = 1
ground.velocity = -1.3,-3.2
air.velocity = -5,-2.5
down.bounce = 1
kill = 1
guard.dist = 100
envshake.time = 25
envshake.freq = 165
envshake.ampl = 8

[State 1438, Attack End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[StateDef 1499]
type = S
movetype= A
physics = S
juggle  = 1
velset=8,0
ctrl = 0
anim = 202
poweradd = 60
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = S3000,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = S3000,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = MoveHit
value = S5004,5
persistent=0

[State 1050, AfterImage]
type = AfterImage
trigger1 = Time = 0
time = 50
TimeGap  = 1
FrameGap = 2
length = 30
palbright = 40,40,40
palcontrast = 220,220,220
palpostbright = 0,0,0
trans = add
paladd = 10,10,10
palmul = .65,.65,.65

[State 1500, 1]
type = HitDef
trigger1 = AnimElem = 4
attr = S, HA
damage = 20
animtype = Hard
guardflag = MA
hitflag = MAFD
priority = 7, Hit
pausetime = 2, 2
sparkno = S7920+random%8
guard.sparkno = S7911
sparkxy = -10, -74
hitsound = s2000, 1
guardsound = s6, 0
ground.type = High
ground.slidetime = 51
ground.hittime  = 51
ground.velocity = -32
guard.velocity = -12
ground.cornerpush.veloff = -50
air.cornerpush.veloff = -50
down.cornerpush.veloff = -50
guard.cornerpush.veloff = -50
airguard.cornerpush.veloff = -50
fall=1
fall.recover=0
air.type = High
air.velocity = -20,-1.1
ID=400
getpower=150,20

[State 1500, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
; LUGGY LAUNCH - Letsegoh
[Statedef 1150]
type    = S
movetype = A
physics = S
juggle  = 8
anim = 1150
velset = 0,0
ctrl = 0

[State Woosh]
type = PlaySnd
trigger1 = AnimElem=3
value = S1,5
volume=255
[State NO]
type = PlaySnd
trigger1 = AnimElem=6
value = S4410,666
volume=255
channel=0

[State IEI]
type = Helper
trigger1 = AnimElem=6
helpertype = normal ;player
name = "Luggy"
ID = 65000 ;ID determines damage and velocity, 65000 = Weak, 65001 = Med, 65002 = Strong, 65005 = EX
stateno = 65010
pos = -70,0
postype = back
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = 0.5
size.yscale = 0.5

[State hmmm]
type = HitDef
trigger1 =  Animelem=5
attr = S,SA
hitflag = MA
guardflag = MA
animtype = Hard
air.animtype = Hard
priority = 5,Hit
damage = 30,2
pausetime = 2 ,12
guard.pausetime = 2,2
sparkno = S7920+random%8
guard.sparkno = S7911
sparkxy = -10,-72
hitsound = S5,1
guardsound = S6,0
ground.type = Low
ground.slidetime = 40
guard.slidetime = 40
guard.hittime = 40
ground.hittime = 40
air.hittime = 60
guard.ctrltime = 30
guard.dist = 320
yaccel = 0.5
ground.velocity = -10
guard.velocity = -8
air.velocity = -.7,-9
airguard.velocity = -.5,-4
p1facing = 1
p2facing = 1
forcestand = 1
id = 400
kill = 1
envshake.time = 12
envshake.freq = 167
envshake.ampl = -8


[State 65000, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
; LUGGY LAUNCH - Med
[Statedef 1155]
type    = S
movetype = A
physics = S
juggle  = 8
anim = 1155
velset = 0,0
ctrl = 0

[State Woosh]
type = PlaySnd
trigger1 = AnimElem=3
value = S1,5
volume=255
[State NO]
type = PlaySnd
trigger1 = AnimElem=6
value = S4410,666
volume=255
channel=0

[State IEI]
type = Helper
trigger1 = AnimElem=6
helpertype = normal ;player
name = "Luggy"
ID = 65001 ;ID determines damage and velocity, 65000 = Weak, 65001 = Med, 65002 = Strong, 65005 = EX
stateno = 65010
pos = -70,0
postype = back
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = 0.5
size.yscale = 0.5

[State hmmm]
type = HitDef
trigger1 =  Animelem=5
attr = S,SA
hitflag = MA
guardflag = MA
animtype = Hard
air.animtype = Hard
priority = 5,Hit
damage = 40,4
pausetime = 2 ,12
guard.pausetime = 2,2
sparkno = S7920+random%8
guard.sparkno = S7911
sparkxy = -10,-72
hitsound = S5,1
guardsound = S6,0
ground.type = Low
ground.slidetime = 30
guard.slidetime = 30
guard.hittime = 30
ground.hittime = 30
air.hittime = 36
guard.ctrltime = 25
guard.dist = 320
yaccel = 0.5
ground.velocity = -10
guard.velocity = -8
air.velocity = -.7,-9
airguard.velocity = -.5,-4
p1facing = 1
p2facing = 1
forcestand = 1
id = 400
kill = 1
envshake.time = 12
envshake.freq = 167
envshake.ampl = -8


[State 65000, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
; LUGGY LAUNCH - Strong
[Statedef 1160]
type    = S
movetype = A
physics = S
juggle  = 8
anim = 1160
velset = 0,0
ctrl = 0

[State Woosh]
type = PlaySnd
trigger1 = AnimElem=3
value = S1,5
volume=255
[State NO]
type = PlaySnd
trigger1 = AnimElem=6
value = S4410,666
volume=255
channel=0

[State IEI]
type = Helper
trigger1 = AnimElem=6
helpertype = normal ;player
name = "Luggy"
ID = 65002 ;ID determines damage and velocity, 65000 = Weak, 65001 = Med, 65002 = Strong, 65005 = EX
stateno = 65010
pos = -70,0
postype = back
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = 0.5
size.yscale = 0.5

[State hmmm]
type = HitDef
trigger1 =  Animelem=5
attr = S,SA
hitflag = MA
guardflag = MA
animtype = Hard
air.animtype = Hard
priority = 5,Hit
damage = 42,4
pausetime = 2 ,12
guard.pausetime = 2,2
sparkno = S7920+random%8
guard.sparkno = S7911
sparkxy = -10,-72
hitsound = S5,1
guardsound = S6,0
ground.type = Low
ground.slidetime = 30
guard.slidetime = 30
guard.hittime = 30
ground.hittime = 30
air.hittime = 36
guard.ctrltime = 20
guard.dist = 320
yaccel = 0.5
ground.velocity = -12
guard.velocity = -9.5
air.velocity = -.7,-9
airguard.velocity = -.5,-4
p1facing = 1
p2facing = 1
forcestand = 1
id = 400
kill = 1
envshake.time = 12
envshake.freq = 167
envshake.ampl = -8

[State 65000, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
; LUGGY LAUNCH - EX
[Statedef 1165]
type    = S
movetype = A
physics = S
juggle  = 8
anim = 1165
velset = 0,0
ctrl = 0

[State Woosh]
type = PlaySnd
trigger1 = AnimElem=3
value = S1,5
volume=255
[State NO]
type = PlaySnd
trigger1 = AnimElem=6
value = S4410,666
volume=255
channel=0

[State 65002, Substract Power]
type = PowerAdd
trigger1 = !(var(24)>=0 && var(28)=1) && Time=0
value = -500

[State 0, Substract Seconds]
type = VarAdd
trigger1 = (var(24)>=0 && var(28)=1) && Time=0
var(24) = -60

[State 1437, EX]
type = PlaySnd
trigger1 = Time = 0
value = S197,1

[State 65002, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S7,1

[State 65002, PalFXWiz]
type = PalFX
trigger1 = time = 0
time = 80
add = 29,29,0
mul = 256,256,256
sinadd = 58,58,0,3

[State 65000, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 80
length = 10
paladd = 50,50,0
framegap = 2
trans = add

[State IEI]
type = Helper
trigger1 = AnimElem=6
helpertype = normal ;player
name = "Luggy"
ID = 65005 ;ID determines damage and velocity, 65000 = Weak, 65001 = Med, 65002 = Strong, 65005 = EX
stateno = 65010
pos = -70,0
postype = back
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = 0.5
size.yscale = 0.5

[State hmmm]
type = HitDef
trigger1 =  Animelem=5
attr = S,SA
hitflag = MA
guardflag = MA
animtype = Hard
air.animtype = Hard
priority = 5,Hit
damage = 42,4
pausetime = 2 ,12
guard.pausetime = 2,2
sparkno = S7920+random%8
guard.sparkno = S7911
sparkxy = -10,-72
hitsound = S5,1
guardsound = S6,0
ground.type = Low
ground.slidetime = 20
guard.slidetime = 20
guard.hittime = 20
ground.hittime = 20
air.hittime = 30
guard.ctrltime = 15
guard.dist = 320
yaccel = 0.5
ground.velocity = -12
guard.velocity = -10
air.velocity = -.7,-9
airguard.velocity = -.5,-4
p1facing = 1
p2facing = 1
forcestand = 1
id = 400
kill = 1
envshake.time = 12
envshake.freq = 167
envshake.ampl = -8
getpower=0,0



[State 65000, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 2720]
physics=N
velset=0,0
anim=9741

[State DEEEED]
type = EnvColor
trigger1 = 1
value = 255,255,255
time = 1
under = 0

[State SOSOSOSOSO]
type = AssertSpecial
trigger1 = 1
flag = noFG
flag2 = nomusic

[State SOSOSOSOSO]
type = AssertSpecial
trigger1 = time<540
flag = Roundnotover

[State BSoD]
type = Explod
trigger1 = Time=0
anim = 2720
ID = 2720
pos = 0,0
postype = left
facing = 1
bindtime = -1
removetime = -1
scale = 0.5,0.5
ontop = 1
ownpal = 1
removeongethit = 0
[State BSoD]
type = Explod
trigger1 = Time=0
anim = 2721
ID = 2721
pos = 160,120
postype = left
facing = 1
bindtime = -1
removetime = -1
scale = 0.5,0.5
ontop = 1
ownpal = 1
removeongethit = 0

[State Fakfkg]
type = PlaySnd
trigger1 = Time=0
value = S5150,3
volume=255
abspan=0
[State Fakfkg]
type = PlaySnd
trigger1 = Time=0
value = S5150,1
volume=255
abspan=0

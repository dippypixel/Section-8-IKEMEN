;ガーキャン
[statedef 950]
type=s
movetype=a
physics=s
poweradd=120
velset=0,0
anim=1010
ctrl=0

[state 950,点滅]
type=palfx
trigger1=time<3
time=1
add=255,255,255
ignorehitpause=1

[state 950,無敵]
type=nothitby
trigger1=animtime!=0
trigger1=animelemtime(8)<0
value=sca

[state 950,波紋ッ！]
type=playsnd
trigger1=animelemtime(5)=0
value=0,2
channel=0


[state 950,ヒット定義]
type=hitdef
trigger1=animelemtime(5)=0
trigger2=var(0)&16
attr=s,sa
animtype=up
damage=70,14
guardflag=ma
pausetime=11,11
sparkno=s6103
guard.sparkno=s6125
sparkxy=0,-110
hitsound=s5,4
guardsound=s6,0
ground.type=low
ground.slidetime=14
ground.hittime=14
air..hittime=14
ground.velocity=-1,-10.5
guard.velocity=-6
air.velocity=-1,-8.5
airguard.velocity=-4,-4.5
p2facing=1
fall=1
fall.recovertime=50
yaccel=0.4
guard.kill=0

[state 950,コンボ補正開始]
type=varset
triggerall=!var(1)
trigger1=movehit
var(1)=enemynear,gethitvar(hitcount)
ignorehitpause=1

[state 950,終了]
type=changestate
trigger1=animtime=0
value=0
ctrl=1

;===========================================================================
;===========================================================================
;
[statedef 1500]
type = S
movetype=a
physics=n
poweradd=65
velset = 0,0
ctrl=0
anim=1500

[state 1500,前進]
type=velset
trigger1 = command = "holdfwd"
x = const(velocity.walk.fwd.x)*0.5

[state 1500,後退]
type=velset
trigger1 = command = "holdback"
x = const(velocity.walk.back.x)*0.5

[state 1500,邪魔だぜ・弱]
type=changestate
trigger1=command="邪魔だぜ・弱"
value=1400

[state 1500,邪魔だぜ・中]
type=changestate
trigger1=command="邪魔だぜ・中"
value=1410

[state 1500,邪魔だぜ・強]
type=changestate
trigger1=command="邪魔だぜ・強"
value=1420

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 52,1

[state 1500,終了]
type=changestate
trigger1=time = 300
value=11
ctrl=1

;===========================================================================
;===========================================================================
;---------------------------------------------------------------------------
;Earth Quake Punch
[Statedef 1100]
type    = S
movetype= A
physics = N
juggle  = 3
poweradd= 60
ctrl = 0
velset = 0,0
anim = 1100
sprpriority = 2
facep2 = 1


[State 1100]
type = PlaySnd
trigger1 = Time = 0
value = 1100,0

[State 1100]
type = PlaySnd
trigger1 = Time = 19
value = 10000,0


[State 1100]
type = PlaySnd
trigger1 = Time = 20
value = 1100,2

[State 1100]
type = EnvShake
trigger1 = Time = 19
time = 17


[State 1100]
type = Helper
trigger1 = Time = 20
stateno = 1130
id = 1130
ownpal = 1
pos = 0,0

[State 1100]
type = Helper
trigger1 = Time = 20
stateno = 1120
id = 1120
ownpal = 1
pos = 130,0


[State 1100]
type = Helper
trigger1 = Time = 32
stateno = 1120
id = 1120
ownpal = 1
pos = 130+32,0


[State 1100]
type = Helper
trigger1 = Time = 44
stateno = 1120
id = 1120
ownpal = 1
pos = 130+32+32,0

[State 1100]
type = HitDef
trigger1 = AnimElem = 3
attr = C, NA             
damage = 30,10
animtype = Medium                 
guardflag = M                 
hitflag = MAF                    
priority = 3, Hit                
pausetime = 7,7             
sparkno=s6102
guard.sparkno=s6125
sparkxy=-10,-60
hitsound=s5,2
guardsound=s6,0
ground.type = High              
ground.slidetime = 15            
ground.hittime  = 15             
ground.velocity = -7    
;ground.velocity = -1,-9     
air.velocity = -7                    
getpower = ifelse(MoveHit,27,14),ifelse(MoveHit,27,0)
;fall = 1
;air.fall = 1
;fall.recover =0
;p2stateno = 9020
;air.animtype = back
;air.type = Low
;air.cornerpush.veloff = 0
;ground.cornerpush.veloff = 0
;guard.cornerpush.veloff = 0
;airguard.cornerpush.veloff = 0


[State 1100]
type = HitDef
trigger1 = AnimElem = 4
attr = C, NA             
damage = 30,3
animtype = Medium                 
guardflag = L                 
hitflag = MAFD                    
priority = 3, Hit                
pausetime = 5,5             
sparkno=s6102
guard.sparkno=s6125
sparkxy=-10,-60
hitsound=s5,2
guardsound=s6,0
ground.type = Low               
ground.slidetime = 15            
ground.hittime  = 15             
ground.velocity = -7    
;ground.velocity = -1,-9     
air.velocity = -7                    
getpower = ifelse(MoveHit,27,14),ifelse(MoveHit,27,0)
;fall = 1
;air.fall = 1
;fall.recover =0
;p2stateno = 9020
;air.animtype = back
;air.type = Low
;air.cornerpush.veloff = 0
;ground.cornerpush.veloff = 0
;guard.cornerpush.veloff = 0
;airguard.cornerpush.veloff = 0

[State 1100]
type = VarAdd
trigger1 = !MoveContact && Time > 22
var(9) = 1
ignorehitpause = 1
persistent = 0



[State 1100]
type = ChangeAnim
trigger1 = Time = 60
value = 1101
persistent = 0


[State 1100]
type = ChangeState
trigger1 = AnimTime = 0 && Anim = 1101
value = 0
ctrl = 1


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Earth Quake Punch
[Statedef 1110]
type    = S
movetype= A
physics = N
juggle  = 3
poweradd= 60
ctrl = 0
velset = 0,0
anim = 1110
sprpriority = 2
facep2 = 1


[State 1110]
type = PlaySnd
trigger1 = Time = 0
value = 1100,0

[State 1110]
type = PlaySnd
trigger1 = Time = 19
value = 10000,0


[State 1110]
type = PlaySnd
trigger1 = Time = 20
value = 1110,2

[State 1110]
type = EnvShake
trigger1 = Time = 19
time = 17


[State 1110]
type = Helper
trigger1 = Time = 20
stateno = 1130
id = 1130
ownpal = 1
pos = 0,0

[State 1110]
type = Helper
trigger1 = Time = 20
stateno = 1120
id = 1120
ownpal = 1
pos = 130,0


[State 1110]
type = Helper
trigger1 = Time = 32
stateno = 1120
id = 1120
ownpal = 1
pos = 130+32,0


[State 1110]
type = Helper
trigger1 = Time = 44
stateno = 1120
id = 1120
ownpal = 1
pos = 130+32+32,0

[State 1110]
type = Helper
trigger1 = Time = 56
stateno = 1120
id = 1120
ownpal = 1
pos = 130+32+32+32,0

[State 1110]
type = HitDef
trigger1 = AnimElem = 3
attr = C, NA             
damage = 35,10
animtype = Medium                 
guardflag = M                 
hitflag = MAF                    
priority = 3, Hit                
pausetime = 7,7             
sparkno=s6102
guard.sparkno=s6125
sparkxy=-10,-60
hitsound=s5,2
guardsound=s6,0
ground.type = High              
ground.slidetime = 15            
ground.hittime  = 15             
ground.velocity = -7    
;ground.velocity = -1,-9     
air.velocity = -7                    
getpower = ifelse(MoveHit,27,14),ifelse(MoveHit,27,0)
;fall = 1
;air.fall = 1
;fall.recover =0
;p2stateno = 9020
;air.animtype = back
;air.type = Low
;air.cornerpush.veloff = 0
;ground.cornerpush.veloff = 0
;guard.cornerpush.veloff = 0
;airguard.cornerpush.veloff = 0


[State 1110]
type = HitDef
trigger1 = AnimElem = 4
attr = C, NA             
damage = 35,3                    
animtype = Medium                 
guardflag = L                 
hitflag = MAFD                    
priority = 3, Hit                
pausetime = 5,5             
sparkno=s6102
guard.sparkno=s6125
sparkxy=-10,-60
hitsound=s5,2
guardsound=s6,0
ground.type = Low               
ground.slidetime = 15            
ground.hittime  = 15             
ground.velocity = -7    
;ground.velocity = -1,-9     
air.velocity = -7                    
getpower = ifelse(MoveHit,27,14),ifelse(MoveHit,27,0)
;fall = 1
;air.fall = 1
;fall.recover =0
;p2stateno = 9020
;air.animtype = back
;air.type = Low
;air.cornerpush.veloff = 0
;ground.cornerpush.veloff = 0
;guard.cornerpush.veloff = 0
;airguard.cornerpush.veloff = 0

[State 1110]
type = VarAdd
trigger1 = !MoveContact && Time > 22
var(9) = 1
ignorehitpause = 1
persistent = 0



[State 1110]
type = ChangeAnim
trigger1 = Time = 60
value = 1101
persistent = 0


[State 1110]
type = ChangeState
trigger1 = AnimTime = 0 && Anim = 1101
value = 0
ctrl = 1


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Earth Quake Punch
[Statedef 1115]
type    = S
movetype= A
physics = N
juggle  = 3
poweradd= 60
ctrl = 0
velset = 0,0
anim = 1115
sprpriority = 2
facep2 = 1


[State 1115]
type = PlaySnd
trigger1 = Time = 0
value = 1100,0

[State 1115]
type = PlaySnd
trigger1 = Time = 19
value = 10000,0


[State 1115]
type = PlaySnd
trigger1 = Time = 20
value = 1115,2

[State 1115]
type = EnvShake
trigger1 = Time = 19
time = 17


[State 1115]
type = Helper
trigger1 = Time = 20
stateno = 1130
id = 1130
ownpal = 1
pos = 0,0

[State 1115]
type = Helper
trigger1 = Time = 20
stateno = 1120
id = 1120
ownpal = 1
pos = 130,0


[State 1115]
type = Helper
trigger1 = Time = 32
stateno = 1120
id = 1120
ownpal = 1
pos = 130+32,0


[State 1115]
type = Helper
trigger1 = Time = 44
stateno = 1120
id = 1120
ownpal = 1
pos = 130+32+32,0

[State 1115]
type = Helper
trigger1 = Time = 56
stateno = 1120
id = 1120
ownpal = 1
pos = 130+32+32+32,0

[State 1115]
type = Helper
trigger1 = Time = 68
stateno = 1120
id = 1120
ownpal = 1
pos = 130+32+32+32+32,0

[State 1115]
type = HitDef
trigger1 = AnimElem = 3
attr = C, NA             
damage = 40,13
animtype = Medium                 
guardflag = M                 
hitflag = MAF                    
priority = 3, Hit                
pausetime = 7,7             
sparkno=s6102
guard.sparkno=s6125
sparkxy=-10,-60
hitsound=s5,2
guardsound=s6,0
ground.type = High              
ground.slidetime = 15            
ground.hittime  = 15             
ground.velocity = -7    
;ground.velocity = -1,-9     
air.velocity = -7                    
getpower = ifelse(MoveHit,27,14),ifelse(MoveHit,27,0)
;fall = 1
;air.fall = 1
;fall.recover =0
;p2stateno = 9020
;air.animtype = back
;air.type = Low
;air.cornerpush.veloff = 0
;ground.cornerpush.veloff = 0
;guard.cornerpush.veloff = 0
;airguard.cornerpush.veloff = 0


[State 1115]
type = HitDef
trigger1 = AnimElem = 4
attr = C, NA             
damage = 40,5
animtype = Medium                 
guardflag = L                 
hitflag = MAFD                    
priority = 3, Hit                
pausetime = 5,5             
sparkno=s6102
guard.sparkno=s6125
sparkxy=-10,-60
hitsound=s5,2
guardsound=s6,0
ground.type = Low               
ground.slidetime = 15            
ground.hittime  = 15             
ground.velocity = -7    
;ground.velocity = -1,-9     
air.velocity = -7                    
getpower = ifelse(MoveHit,27,14),ifelse(MoveHit,27,0)
;fall = 1
;air.fall = 1
;fall.recover =0
;p2stateno = 9020
;air.animtype = back
;air.type = Low
;air.cornerpush.veloff = 0
;ground.cornerpush.veloff = 0
;guard.cornerpush.veloff = 0
;airguard.cornerpush.veloff = 0

[State 1115]
type = VarAdd
trigger1 = !MoveContact && Time > 22
var(9) = 1
ignorehitpause = 1
persistent = 0



[State 1115]
type = ChangeAnim
trigger1 = Time = 68
value = 1101
persistent = 0


[State 1115]
type = ChangeState
trigger1 = AnimTime = 0 && Anim = 1101
value = 0
ctrl = 1


;---------------------------------------------------------------------------
;------------------------------------------------------------------------------------------------------------
;Earth Quake Blast
[Statedef 1120] 
type = S
movetype = A
physics = N
;anim = 1120
ctrl = 0
sprpriority = 3
velset = 0,0
hitcountpersist = 1


[State 1120]
type = ChangeAnim
trigger1 = Time = 0 && Anim != 1120
value = 1120

[State 1120]
type = AssertSpecial
trigger1 = 1
flag = noshadow


[State 1120]
type = HitBy
trigger1 = 1
value = SCA,AP

[State 1120]
type = HitOverride
trigger1 = 1
stateno = 1120
attr = SCA,AP
slot = 0
time = -1


[State 1120]
type = HitDef
attr = S, SP
trigger1 = hitcount < 1
trigger1 = moveguarded < 1
damage = 30,9
animtype = Medium
priority  = 3, Hit
guardflag = MA
hitflag = MAFD
pausetime = 7,7
sparkxy = -10,-10
hitsound=s10000,2
guardsound=s6,0
sparkno=s6104
guard.sparkno=s6125
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -7
air.velocity = -7
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
;fall = 1
;air.fall = 1
;fall.recover = 0
;fall.animtype = Up
;p2stateno = 9020
getpower = ifelse(MoveHit,20,10),ifelse(MoveHit,20,0)
sprpriority = 3


[State 1120]
type = null;Helper
trigger1 = Time = 12; && Parent,var(28) < 3
stateno = 1120
id = 1120
ownpal = 1
pos = 16,0

[State 1120]
type = null;ChangeState
trigger1 = MoveContact
value = 1121
ignorehitpause = 1

[State 1120]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = Time = 240

;------------------------------------------------------------------------------------------------------------
;Earth Quake Blast End
[Statedef 1121] 
type = S
movetype = I
physics = N
anim = 99999
ctrl = 0
sprpriority = 1
velset = 0,0


[State 1121]
type = AssertSpecial
trigger1 = 1
flag = noshadow


[State 1121]
type = DestroySelf
trigger1 = Time = 0



;------------------------------------------------------------------------------------------------------------
;Earth Quake Spark 
[Statedef 1130] 
type = S
movetype = I
physics = N
anim = 1130
ctrl = 0
sprpriority = 3
velset = 0,0


[State 1130]
type = AssertSpecial
trigger1 = 1
flag = noshadow


[State 1130]
type = DestroySelf
trigger1 = AnimTime = 0

;------------------------------------------------------------------------------------------------------------
;===========================================================================
;山吹色の波紋疾走・弱
[Statedef 1200]
type    = S
movetype= A
physics = S
juggle  = 1
poweradd = 40
ctrl = 0
anim = 1200
velset = 0,0

[State 1200,山吹色の波紋疾走]
type = PlaySnd
trigger1 = time = 0
value = 1200,0
channel = 0

[State 1200,山吹色の波紋疾走]
type = PlaySnd
trigger1 = animelem = 2
trigger2 = animelem = 4
trigger3 = animelem = 6
trigger4 = animelem = 8
value = 1,2

[State 1200, vel]
type = velset
trigger1 = time = [9,14]
x = 5

[State 1200, vel]
type = velset
trigger1 = time = [15,18]
x = 1

[State 1200, vel]
type = velset
trigger1 = time >= 19
x = 0

[State 1200, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = unguardable

[State 1200,ヒット定義]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
trigger3 = AnimElem = 4
trigger4 = AnimElem = 5
trigger5 = AnimElem = 6
trigger6 = AnimElem = 7
trigger7 = AnimElem = 8
trigger8 = AnimElem = 9
attr = s, sa
damage = 12, 2
animtype = Hard
getpower = 30
givepower = 15
priority = 5, Hit
hitflag = MAF
guardflag = MA
pausetime = 6, 6
sparkxy = -25, -30
sparkno = S6101
guard.sparkno = S6125
hitsound = s5,4
guardsound = s6,0
ground.type = High
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -3, 0
air.velocity = -5, -2

[State 1200, Exp]
type = Explod
trigger1 = AnimElem = 24
anim = 1201
ID = 1201
pos = 0,0
postype = p1
sprpriority = 3
bindtime = -1
ownpal = 1
removeongethit = 1

[State 1200, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;山吹色の波紋疾走・中
[Statedef 1210]
type    = S
movetype= A
physics = S
juggle  = 1
poweradd = 40
ctrl = 0
anim = 1210
velset = 0,0

[State 1210,山吹色の波紋疾走]
type = PlaySnd
trigger1 = time = 0
value = 1200,0

[State 1200,山吹色の波紋疾走]
type = PlaySnd
trigger1 = animelem = 2
trigger2 = animelem = 4
trigger3 = animelem = 6
trigger4 = animelem = 8
value = 1,2

[State 1200, vel]
type = velset
trigger1 = time = [11,16]
x = 7

[State 1200, vel]
type = velset
trigger1 = time = [17,20]
x = 1

[State 1200, vel]
type = velset
trigger1 = time >= 21
x = 0

[State 1210, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = unguardable

[State 1210,ヒット定義]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
trigger3 = AnimElem = 4
trigger4 = AnimElem = 5
trigger5 = AnimElem = 6
trigger6 = AnimElem = 7
trigger7 = AnimElem = 8
trigger8 = AnimElem = 9
attr = S, SA
damage = 15, 3
animtype = Hard
getpower = 30
givepower = 15
priority = 5, Hit
hitflag = MAF
guardflag = MA
pausetime = 6, 6
sparkxy = -30, -30
sparkno = S6101
guard.sparkno = S6125
hitsound = S5,1
guardsound = S5,6
ground.type = High
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -4, 0
air.velocity = -5.5, -3



[State 1210, Exp]
type = Explod
trigger1 = AnimElem = 43
anim = 1201
ID = 1201
pos = 0,0
postype = p1
sprpriority = 3
bindtime = -1
ownpal = 1
removeongethit = 1

[State 1210, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;山吹色の波紋疾走・強
[Statedef 1220]
type    = S
movetype= A
physics = S
juggle  = 1
poweradd = 40
ctrl = 0
anim = 1220
velset = 0,0

[State 1220,山吹色の波紋疾走]
type = PlaySnd
trigger1 = time = 0
value = 1200,0

[State 1200,山吹色の波紋疾走]
type = PlaySnd
trigger1 = animelem = 2
trigger2 = animelem = 4
trigger3 = animelem = 6
trigger4 = animelem = 8
value = 1,2

[State 1200, vel]
type = velset
trigger1 = time = [14,19]
x = 10

[State 1200, vel]
type = velset
trigger1 = time = [20,23]
x = 1

[State 1200, vel]
type = velset
trigger1 = time >= 24
x = 0

[State 1220, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = unguardable

[State 1220,ヒット定義]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
trigger3 = AnimElem = 4
trigger4 = AnimElem = 5
trigger5 = AnimElem = 6
trigger6 = AnimElem = 7
trigger7 = AnimElem = 8
trigger8 = AnimElem = 9
attr = S, SA
damage = 18, 3
animtype = Hard
getpower = 40
givepower = 15
priority = 5, Hit
hitflag = MAF
guardflag = MA
pausetime = 6, 6
sparkxy = -35, -30
sparkno = S6102
guard.sparkno = S6125
hitsound = S5,1
guardsound = S5,6
ground.type = High
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -4, 0
air.velocity = -5.5, -3

[State 1220, Exp]
type = Explod
trigger1 = AnimElem = 43
anim = 1201
ID = 1201
pos = 0,0
postype = p1
sprpriority = 3
bindtime = -1
ownpal = 1
removeongethit = 1

[State 1220, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;===========================================================================
;===========================================================================
;---------------------------------------------------------------------------
;石礫
[Statedef 1300]
type = S
movetype = A
physics = S
juggle = 15
ctrl = 0
anim = 1300
velset = 0,0
poweradd = 70

[State 220, Position]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1100, Effect]
type = PlaySnd
trigger1 = AnimElem = 7
value = 1300,0
channel = 0

[State 1300,2]
type = Helper
trigger1 = Animelem = 7
stateno = 1305
id = 1305
ownpal = 1

[State -3,Super]
type = Helper
triggerall = NumHelper(1305)
trigger1 = Helper(1305),stateno = 1310
id = 1360
name = "reflect"
pos = 60,-55
postype = P1
stateno = 1360
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1
persistent = 0
size.xscale = .6
size.yscale = .6

[State 1300,0]
type = Changestate
trigger1 = Time >= 25 && !numhelper(1305)
value = 1301

;---------------------------------------------------------------------------
;石礫・終り
[Statedef 1301]
type = S
movetype = I
physics = S
poweradd = 0
ctrl = 0
anim = 1301
velset = 0,0

[State 1301,1]
type = Changestate
trigger1 = Animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;石礫・バリア部分
[Statedef 1305]
type    = S
movetype= I
physics = N
ctrl = 0
anim = 1305
sprpriority = 4
velset = 0,0

[State 1305,0]
type = Bindtoparent
trigger1 = 1
pos = 0,0

[State 1305, 3]
type = Projectile
trigger1 = Time =0
projanim = 1361
Projhitanim = -1
Projremanim = -1
Projremovetime = 1
offset = 0, 0
projpriority = 1
projsprpriority = 7
attr = A, SP
hitflag = MAF
guardflag = MA
damage=ceil(ifelse((70*fvar(10))<7,7,(70*fvar(10)))),ceil(ifelse((70*fvar(10)/8)<7,7,(70*fvar(10)/8)))
priority  = 7, Hit
pausetime = ceil(11*(2-(var(16)>0))/2),ceil(11*(2-(var(16)>0))/2)
sparkno = S8210+(random%8)
guard.sparkno = S8105
sparkxy = 0,0
hitsound = s2,15
guardsound = s1,1
animtype = heavy
ground.type = high
ground.slidetime = 14
ground.hittime  = 14
guard.ctrltime = 14
ground.velocity = -5,-5
guard,velocity = -8
air.velocity = -5,-5
airguard.velocity = -5.33,-1
yaccel = .5
fall = 1
fall.recover = 0
air.fall = 1
getpower = ifelse(var(17),70,143)*(1000+var(24))/1000*!(var(15)||var(16))*(10+((var(12)&&var(59))*6))/10,35*(1000+var(24))/1000*!(var(15)||var(16))*(10+((var(12)&&var(59))*6))/10
givepower = 35, 35
envshake.time = 10
envshake.ampl = 3
ProjID = 1300
persistent = 1
palfx.time = 12*((root,var(0)&2**12)/2**12)
palfx.add = 255,255,255
palfx.mul = 128,128,128
air.juggle = ifelse(root,var(45)||root,var(22)=-1||root,var(23)=1,0,8)
ignorehitpause = 0
nochainID = root,var(40)

[State 1110,2]
type = hitby
trigger1 = 1
value = SAC,NP,SP,HP

[State 1100,3]
type = HitOverride
trigger1 = 1
attr = SCA,NP,SP,HP
stateno = 1310

[State 1113,1]
type = ChangeState
trigger1 = root,stateno = 1300 && root,time = 46
trigger2 = root,stateno != 1300
trigger3 = root,stateno = 1300 & root,time = 1
trigger4 = root,projcontacttime(1300) = 1
trigger5 = root,movetype = H
value = 1350

;---------------------------------------------------------------------------
;石礫・飛び道具反射
[Statedef 1310]
type = A
movetype= I
physics = N
ctrl = 0
sprpriority = 4
velset = 0,0

[State 170, 1]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1300,2]
type = PlaySnd
trigger1 = time = 1
value = 1001,0
channel = 2

[State 1115,1]
type = ChangeState
trigger1 = time = 1
value = 1350

;---------------------------------------------------------------------------
;石礫・消滅
[Statedef 1350]
type = A
movetype= I
physics = N
ctrl = 0
sprpriority = 4
velset = 0,0

[State 170, 1]
type = NotHitBy
trigger1 = 1
value = SCA

[State 4900, 16]
type = AngleDraw
trigger1 = 1
scale = .2*(5-Time),.2*(5-Time)

[State 5035, 1]
type = Trans
trigger1 = 1
trans = add

[State 1113,1]
type = DestroySelf
trigger1 = time = 5

;---------------------------------------------------------------------------
;石礫（飛び道具）
[Statedef 1360]
type    = S
movetype = I
physics = N
ctrl = 0
velset = 5.4,0
anim = 1360
sprpriority = 4

[State 1200, 2]
type = Projectile
trigger1 = Time = 0
projanim = 1360
Projhitanim = -1
Projremanim = -1
Projcancelanim = -1
attr = A, SP
offset = 0, 0
velocity = vel X, vel Y
projsprpriority = 3
projremovetime = 80
damage = 15,7
hitflag = MA
guardflag = MA
pausetime = 3,11
sparkno = S6100
guard.sparkno = s6125
sparkxy = 0,0
hitsound = s2,15
guardsound = s1,1
animtype = heavy
ground.type = high
ground.slidetime = 14
ground.hittime = 14
air.hittime = 14
guard.ctrltime = 14
ground.velocity = -4.5, -6
guard.velocity = -8
air.velocity = -4.5, -6
airguard.velocity = -5.33,-1
sprpriority = 3
fall = 1
fall.recover = 0
air.fall = 1
ProjID = 1505
envshake.time = 8
envshake.ampl = 3
palfx.time = 12*((root,var(0)&2**12)/2**12)
palfx.add = 255,255,255
palfx.mul = 128,128,128
air.juggle = ifelse(root,var(45)||root,var(22)=-1||root,var(23)=1,0,8)
yaccel = .5


[State 4110, DestroySelf]
type = DestroySelf
triggerall = time > 1
trigger1 = FrontEdgeDist <= -40 

[State 900, 4]
type = ChangeState
triggerall = time > 1
trigger1 = !root,NumProjID(1305)
value = 1365

;---------------------------------------------------------------------------
;石礫（飛び道具）（消滅）
[Statedef 1365]
type    = S
movetype = I
physics = N
ctrl = 0
velset = 0,0
anim = 99999

[State 1100, Voice]
type = PlaySnd
trigger1 = time = 1
value = 1, 1

[State 4110, DestroySelf]
type = DestroySelf
trigger1 = time = 1

;---------------------------------------------------------------------------

;===========================================================================
;アイアンボーガン・弱
;---------------------------------------------------------------------------
;Spider Sting
[Statedef 1400]
type    = U
movetype= A
physics = N
juggle  = 3
poweradd= 60
ctrl = 0
velset = 0,0
anim = 1400;+(StateType = A)
sprpriority = 0
facep2 = 1

[State 1400]
type = null;Explod
trigger1 = Time = 0 && StateType = S
anim = 7023
;scale = .5,.5
ontop = 1
ownpal = 1



[State 1400]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,2


[State 1400]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1400,0

[State 1400]
type = HitDef
attr = SA, SA
trigger1 = hitcount < 1
trigger1 = moveguarded < 1
damage = 80,7
animtype = Medium
priority  = 5, Hit
guardflag = HA
pausetime = 5,3
sparkxy = -10,-70+floor(P2Dist Y)
hitsound=s5,2
guardsound=s6,0
sparkno=s6102
guard.sparkno=s6125
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -1,-9
air.velocity = -1,-9
;guard.velocity = -9
;airguard.velocity = -9
;fall.xvelocity = -3
;ground.cornerpush.veloff = 0
;air.cornerpush.veloff = 0
;ground.cornerpush.veloff = 0
;guard.cornerpush.veloff = 0
;airguard.cornerpush.veloff = 0
fall = 1
air.fall = 1
all.recover = 0
;fall.animtype = Up
;p2stateno = 9020
;getpower = 50,25


[State 1400]
type = VarAdd
;trigger1 = !MoveContact
trigger1 = AnimElem = 9, >= 0
var(9) = 1
ignorehitpause = 1
persistent = 0



[State 1400]
type = Velset
trigger1 = AnimElem = 6
x = 3
y = -7


[State 1400]
type = Velset
trigger1 = AnimElem = 9
x = 0



[State 1400]
type = StateTypeSet
trigger1 = Pos Y < 0
statetype = A
persistent = 0

[State 1400]
type = VelAdd
trigger1 = AnimElem = 5 >= 0
y = 0.4



[State 1400]
type = null;VelSet
trigger1 = StateType = A
trigger1 = Pos Y > -10
y = 0


[State 1400]
type = ChangeState
triggerall = MoveContact
trigger1 = command = "x" || command = "y" || command = "z"
value = 1401
ctrl = 0


[State 1400]
type = ChangeState
trigger1 = AnimTime = 0 && StateType != A
value = 0
ctrl = 1


[State 1400]
type = ChangeState
trigger1 = Time >= 60 && StateType = A
value = 1320
ctrl = 0

[State 1400]
type = ChangeState
triggerall = AnimElem = 7 >= 0
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 52
ctrl = 0



;---------------------------------------------------------------------------
;Spider Sting 2
[Statedef 1401]
type    = U
movetype= A
physics = N
juggle  = 3
poweradd= 60
ctrl = 0
velset = 0,0
anim = 1401;+(StateType = A)
sprpriority = 0
facep2 = 1

[State 1401]
type = null;Explod
trigger1 = Time = 0 && StateType = S
anim = 7023
;scale = .5,.5
ontop = 1
ownpal = 1



[State 1401]
type = null;PlaySnd
trigger1 = AnimElem = 4
value = 0,2


[State 1401]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1401,0

[State 1401]
type = HitDef
attr = A, SA
trigger1 = hitcount < 1
trigger1 = moveguarded < 1
damage = 30,5
animtype = Medium
priority  = 5, Hit
guardflag = HA
pausetime = 5,7
sparkxy = -10,-70+floor(P2Dist Y)
hitsound=s5,4
guardsound=s6,0
sparkno=s6102
guard.sparkno=s6125
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -9
air.velocity = -7,17
;guard.velocity = -9
;airguard.velocity = -9
;fall.xvelocity = -3
;ground.cornerpush.veloff = 0
;air.cornerpush.veloff = 0
;ground.cornerpush.veloff = 0
;guard.cornerpush.veloff = 0
;airguard.cornerpush.veloff = 0
fall = 1
air.fall = 1
all.recover = 0
;fall.animtype = Up
;p2stateno = 9020
;getpower = 50,25



[State 1401]
type = Velset
trigger1 = AnimElem = 5
x = 3
y = -7


[State 1401]
type = VelSet
trigger1 = P2bodydist x < 20
x = 0.5

[State 1401]
type = StateTypeSet
trigger1 = Pos Y < 0
statetype = A
persistent = 0

[State 1401]
type = VelAdd
trigger1 = AnimElem = 5 >= 0
y = 0.4

[State 1401]
type = VelAdd
trigger1 = AnimElem = 9 >= 0
y = 0.3


[State 1401]
type = null;VelSet
trigger1 = StateType = A
trigger1 = Pos Y > -10
y = 0

[State 1401]
type = null;ChangeState
trigger1 = AnimTime = 0 && StateType != A
value = 0
ctrl = 1


[State 1401]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 52
ctrl = 0


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Spider Sting
[Statedef 1410]
type    = U
movetype= A
physics = N
juggle  = 3
poweradd= 60
ctrl = 0
velset = 0,0
anim = 1410;+(StateType = A)
sprpriority = 0
facep2 = 1

[State 1410]
type = null;Explod
trigger1 = Time = 0 && StateType = S
anim = 7023
;scale = .5,.5
ontop = 1
ownpal = 1



[State 1410]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,2


[State 1410]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1400,0

[State 1410]
type = HitDef
attr = SA, SA
trigger1 = hitcount < 1
trigger1 = moveguarded < 1
damage = 80,7
animtype = Medium
priority  = 5, Hit
guardflag = HA
pausetime = 5,3
sparkxy = -10,-70+floor(P2Dist Y)
hitsound=s5,2
guardsound=s6,0
sparkno=s6102
guard.sparkno=s6125
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -1,-9
air.velocity = -1,-9
;guard.velocity = -9
;airguard.velocity = -9
;fall.xvelocity = -3
;ground.cornerpush.veloff = 0
;air.cornerpush.veloff = 0
;ground.cornerpush.veloff = 0
;guard.cornerpush.veloff = 0
;airguard.cornerpush.veloff = 0
fall = 1
air.fall = 1
all.recover = 0
;fall.animtype = Up
;p2stateno = 9020
;getpower = 50,25


[State 1410]
type = VarAdd
;trigger1 = !MoveContact
trigger1 = AnimElem = 9, >= 0
var(9) = 1
ignorehitpause = 1
persistent = 0



[State 1410]
type = Velset
trigger1 = AnimElem = 6
x = 3
y = -7


[State 1410]
type = Velset
trigger1 = AnimElem = 9
x = 0



[State 1410]
type = StateTypeSet
trigger1 = Pos Y < 0
statetype = A
persistent = 0

[State 1410]
type = VelAdd
trigger1 = AnimElem = 5 >= 0
y = 0.4



[State 1410]
type = null;VelSet
trigger1 = StateType = A
trigger1 = Pos Y > -10
y = 0


[State 1410]
type = ChangeState
triggerall = MoveContact
trigger1 = command = "x" || command = "y" || command = "z"
value = 1401
ctrl = 0


[State 1410]
type = ChangeState
trigger1 = AnimTime = 0 && StateType != A
value = 0
ctrl = 1


[State 1410]
type = ChangeState
trigger1 = Time >= 60 && StateType = A
value = 1320
ctrl = 0

[State 1410]
type = ChangeState
triggerall = AnimElem = 7 >= 0
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 52
ctrl = 0

;---------------------------------------------------------------------------
;Spider Sting
[Statedef 1420]
type    = U
movetype= A
physics = N
juggle  = 3
poweradd= 60
ctrl = 0
velset = 0,0
anim = 1420;+(StateType = A)
sprpriority = 0
facep2 = 1

[State 1420]
type = null;Explod
trigger1 = Time = 0 && StateType = S
anim = 7023
;scale = .5,.5
ontop = 1
ownpal = 1



[State 1420]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,2


[State 1420]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1400,0

[State 1420]
type = HitDef
attr = SA, SA
trigger1 = hitcount < 1
trigger1 = moveguarded < 1
damage = 80,7
animtype = Medium
priority  = 5, Hit
guardflag = HA
pausetime = 5,3
sparkxy = -10,-70+floor(P2Dist Y)
hitsound=s5,2
guardsound=s6,0
sparkno=s6102
guard.sparkno=s6125
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -1,-9
air.velocity = -1,-9
;guard.velocity = -9
;airguard.velocity = -9
;fall.xvelocity = -3
;ground.cornerpush.veloff = 0
;air.cornerpush.veloff = 0
;ground.cornerpush.veloff = 0
;guard.cornerpush.veloff = 0
;airguard.cornerpush.veloff = 0
fall = 1
air.fall = 1
all.recover = 0
;fall.animtype = Up
;p2stateno = 9020
;getpower = 50,25


[State 1420]
type = VarAdd
;trigger1 = !MoveContact
trigger1 = AnimElem = 9, >= 0
var(9) = 1
ignorehitpause = 1
persistent = 0



[State 1420]
type = Velset
trigger1 = AnimElem = 6
x = 3
y = -7


[State 1420]
type = Velset
trigger1 = AnimElem = 9
x = 0



[State 1420]
type = StateTypeSet
trigger1 = Pos Y < 0
statetype = A
persistent = 0

[State 1420]
type = VelAdd
trigger1 = AnimElem = 5 >= 0
y = 0.4



[State 1420]
type = null;VelSet
trigger1 = StateType = A
trigger1 = Pos Y > -10
y = 0


[State 1420]
type = ChangeState
triggerall = MoveContact
trigger1 = command = "x" || command = "y" || command = "z"
value = 1401
ctrl = 0


[State 1420]
type = ChangeState
trigger1 = AnimTime = 0 && StateType != A
value = 0
ctrl = 1


[State 1420]
type = ChangeState
trigger1 = Time >= 60 && StateType = A
value = 1320
ctrl = 0

[State 1420]
type = ChangeState
triggerall = AnimElem = 7 >= 0
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 52
ctrl = 0


;---------------------------------------------------------------------------

;===========================================================================
;飛び込み
[Statedef 1000]
type = S
movetype = A
physics = N
ctrl = 0
anim = 1000
velset = 0,0
sprpriority = 3

[State 1100]
type = posadd
trigger1 = FrontEdgeBodyDist < 5
trigger1 = time >= 0
x = -5
ignorehitpause = 1



[State -2]
type = posadd
trigger1 = BackEdgeBodyDist < 5
x = 1

[State -2]
type = posadd
trigger1 = FrontEdgeBodyDist < 5
x = -1

[State 200]
type = PlaySnd
trigger1 = Animelem = 1
value = 1000, 0+var(0)

[State 200]
type = PlaySnd
trigger1 = Animelem = 1
value = 1000, 1

[State 1000]
type = NotHitBy
trigger1=animelemtime(6)<= 0
value = SCA


[State 200]
type = playsnd
trigger1 = var(21) && movehit
trigger1 = p2movetype = H || numtarget
value = s5,5
ignorehitpause = 1
persistent = 0


[State 1000, 1]
type = HitDef
trigger1=animelemtime(7)=0
trigger2=animelemtime(8)=0
trigger3=animelemtime(9)=0
trigger3=animelemtime(10)=0
trigger5=var(0)&16
persistent = 1
attr = A, SA
animtype = m
damage = 60,5
guardflag = H
hitflag = MAFD
pausetime = 0, 12
guard.pausetime = 0, 12
sparkno=s6104
guard.sparkno=s6125
sparkxy=-12,-63
hitsound=s5,5
guardsound=s6,0
ground.type = high
ground.slidetime = 12
ground.hittime = 10
guard.slidetime = 11
guard.hittime = 10
ground.velocity = -6.4
airguard.velocity = -4,-.8
air.velocity = -4,-.8
air.fall = 1
airguard.ctrltime = 17
getpower = 24,12
;fall.recovertime = 
palfx.time = 1
palfx.add = 0,0,0
p2facing = 1
yaccel = 0.52



[State -2]
type = velset
trigger1 = Animelem = 4
x = 5
y = -6

[State -2]
type = veladd
trigger1 = Animelemtime(4) >= 0
trigger1 = Animelemtime(10) < 0
y = 0.44

[State -2]
type = velset
trigger1 = Animelem = 10
y = 0
x = 0

[State -2]
type = posset
trigger1 = Animelem = 10
y = 0


[state 52,着地音]
type=explod
trigger1=animelem = 10
anim = 6127
ID = 6127
pos = 60, 0
postype = p1
scale = 1, 1
ownpal = 1
sprpriority = 3

[State 200]
type = PlaySnd
trigger1 = Animelem = 10
value = 52,0

[State 10000, 4]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;ここからオリジナル
;===========================================================================
;===========================================================================


;---------------------------------------------------------------------------
;石畳の槍 

[Statedef 3000]
type    = S
movetype= A
physics = N
juggle  = 4
velset = 0,0
anim = 3000
poweradd= 150
ctrl = 0
sprpriority = 0
facep2 = 1


[state 3000,カットイン]
type=helper
triggerall=!numhelper(4999)
trigger1=animelemtime(5)=0
helpertype=normal
name="cutin"
id=4999
pos=0,0
postype=back
facing=1
stateno=4999
ownpal=0
supermovetime=2147483647

[state 3000,暗転]
type=superpause
trigger1=animelemtime(5)=0
pos=15,-75
anim=s6000
sound=s4999,0
poweradd=-1000
time=45
darken=0
p2defmul=1

[State 3000]
type = Projectile
trigger1 = animelem = 7
damage = 5,2
attr = S, HP
hitflag = MA
guardflag = MA
projid = 3000
projanim = 3011
projshadow = -1
projheightbound = -340,100
projedgebound = 40
projstagebound = 40
projhitanim = 3011
projremanim = 3011
projmisstime = 0
projpriority = 4
remvelocity = 0,0
;givepower = 20,0
;getpower = 40,20
projhits = 1
projremove = 1
projremovetime = 120
pausetime = 5,25
velocity = 0,0
postype = p1
offset = 0,0
sparkno=s6104
guard.sparkno=s6125
sparkxy = -10,-10
hitsound=s5,5
guardsound=s6,0
ground.type = Low
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = -22
guard.velocity = -20
airguard.velocity = -20   
air.type = Low
air.velocity = -22,-5
air.juggle = 0
;air.fall = 1
;down.hittime = 10
;fall.recover = 0
;fall = 0
;fall.animtype = Hard

[State 3000]
type = ChangeState
trigger1 = Time = 40;65
value = 3001
ctrl = 0


;---------------------------------------------------------------------------
;石畳の槍 
[Statedef 3001]
type    = S
movetype= A
physics = N
juggle  = 1
;poweradd=
velset = 0,0
anim = 3001
ctrl = 0
sprpriority = 0
facep2 = 1



[State 3001]
type = PlaySnd
trigger1 = time = 0
value = 3000,0
channel = 0

[State 3001]
type = null;PlaySnd
trigger1 = Time%5 = 0
value = 3001,0


[State 3001]
type = Projectile
trigger1 = Time%5 = 0
damage = 5,3
attr = S, HP
hitflag = MA
guardflag = MA
projid = 3001
projanim = 3010
projshadow = -1
projheightbound = -340,100
projedgebound = 200
projstagebound = 200
projhitanim = 3010
projremanim = 3010
projmisstime = 0
projpriority = 4
remvelocity = 0,0
;givepower = 20,0
;getpower = 40,20
projhits = 1
projremove = 1
projremovetime = 120
pausetime = 5,7
velocity = 9,7
postype = back
offset = -150+random%140,-250
sparkno=s6104
guard.sparkno=s6125
sparkxy = -10,-10
hitsound=s5,5
guardsound=s6,0
ground.type = Low
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = -7 
airguard.velocity = -7   
air.type = Low
air.velocity = -3,-7
air.juggle = 0
;air.fall = 1
;down.hittime = 10
;fall.recover = 0
;fall = 0
;fall.animtype = Hard


[State 3001]
type = Projectile
trigger1 = Time%5 = 0
damage = 5,3
attr = S, HP
hitflag = MA
guardflag = MA
projid = 3001
projanim = 3010
projshadow = -1
projheightbound = -340,100
projedgebound = 200
projstagebound = 200
projhitanim = 3010
projremanim = 3010
projmisstime = 0
projpriority = 4
remvelocity = 0,0
;givepower = 20,0
;getpower = 40,20
projhits = 1
projremove = 1
projremovetime = 120
pausetime = 5,7
velocity = 9,7
postype = back
offset = -150+random%140,-250
sparkno=s6104
guard.sparkno=s6125
sparkxy = -10,-10
hitsound=s5,5
guardsound=s6,0
ground.type = Low
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = -7 
airguard.velocity = -7   
air.type = Low
air.velocity = -3,-7
air.juggle = 0
;air.fall = 1
;down.hittime = 10
;fall.recover = 0
;fall = 0
;fall.animtype = Hard


[State 3001]
type = Projectile
trigger1 = Time%5 = 0
damage = 5,3
attr = S, HP
hitflag = MA
guardflag = MA
projid = 3001
projanim = 3010
projshadow = -1
projheightbound = -340,100
projedgebound = 200
projstagebound = 200
projhitanim = 3010
projremanim = 3010
projmisstime = 0
projpriority = 4
remvelocity = 0,0
;givepower = 20,0
;getpower = 40,20
projhits = 1
projremove = 1
projremovetime = 120
pausetime = 5,7
velocity = 9,7
postype = back
offset = -150+random%140,-250
accel = 0,0.3
sparkno=s6104
guard.sparkno=s6125
sparkxy = -10,-10
hitsound=s5,5
guardsound=s6,0
ground.type = Low
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = -7 
airguard.velocity = -7   
air.type = Low
air.velocity = -3,-7
air.juggle = 0
;air.fall = 1
;down.hittime = 10
;fall.recover = 0
;fall = 0
;fall.animtype = Hard
projsprpriority = 5


[State 3001]
type = ChangeState
trigger1 = Time > 70
value = 0
ctrl = 1





;---------------------------------------------------------------------------
;石畳の槍 End
[Statedef 3009]
type    = S
movetype= I
physics = S
juggle  = 1
;poweradd=
velset = 0,0
anim = 184
ctrl = 0
sprpriority = 0
;facep2 = 1



[State 3003]
type = ChangeState
trigger1 = Time = 40
value = 0
ctrl = 1



;---------------------------------------------------------------------------
;===========================================================================
;---------------------------------------------------------------------------
;Finale Rosso

[Statedef 3100]
type    = S
movetype= A
physics = N
juggle  = 4
velset = 0,0
anim = 3100
poweradd= 150
ctrl = 0
sprpriority = 2
facep2 = 1

[state 3000,カットイン]
type=helper
triggerall=!numhelper(4999)
trigger1=time=0
helpertype=normal
name="cutin"
id=4999
pos=0,0
postype=back
facing=1
stateno=4999
ownpal=0
supermovetime=2147483647

[state 3000,暗転]
type=superpause
trigger1=time=0
pos=15,-75
anim=s6000
sound=s4999,0
poweradd=-1000
time=45
darken=0
p2defmul=1


[State 3100]
type = null;NotHitBy
trigger1 = AnimElem = 4, >= 0
value = SCA


[State 3100]
type = null;ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0


[State 3100]
type = ChangeState
trigger1 = Time = 20
value = 3101
ctrl = 0


;---------------------------------------------------------------------------
;Finale Rosso
[Statedef 3101]
type    = S
movetype= A
physics = N
juggle  = 1
;poweradd=
velset = 0,0
anim = 3101
ctrl = 0
sprpriority = 4
facep2 = 1


[State 3101]
type = null;NotHitBy
trigger1 = 1
value = SCA


[State 3101]
type = null;PlayerPush
trigger1 = 1
value = 0

[State 3101]
type = null;ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0


[State 3101]
type = Helper
trigger1 = Time = 0
stateno = 23100
id = 23100
ownpal = 1
postype = p2
pos = 0,-floor(P2Dist Y)


[State 3104]
type = PlaySnd
trigger1 = time = 0
value = 3100,0

[State 3101]
type = ChangeState
trigger1 = NumHelper(23102)
trigger1 = Helper(23102),MoveHit
value = 3102
ctrl = 0

[State 3101]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



;---------------------------------------------------------------------------
;Finale Rosso
[Statedef 3102]
type    = S
movetype= A
physics = N
juggle  = 1
;poweradd=
velset = 0,0
anim = 3101
ctrl = 0
sprpriority = 4
facep2 = 1



[State 3102]
type = PosSet
trigger1 = Time = 0
y = -240

[State 3102]
type = null;NotHitBy
trigger1 = 1
value = SCA


[State 3102]
type = null;PlayerPush
trigger1 = 1
value = 0

[State 3102]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,1




[State 3102]
type = AssertSpecial
trigger1 = 1
flag = NoBG
flag2 = NoFG


[State 3102]
type = BGPalFX
trigger1 = 1
time = 10
add = 160,128,0;64,-255,-255

[State 3102]
type = null;AllPalFx
trigger1 = Time < 5
color = 0
add = -255,-255,-255

[State 3102]
type = null;Helper
trigger1 = Time = 0
stateno = 33120
ownpal = 1


[State 3102]
type = null;Helper
trigger1 = Time = 0
stateno = 23127
id = 23127
ownpal = 1


[State 3102]
type = Helper
trigger1 = Time = 0
stateno = 3109
id = 3109
ownpal = 1

[State 3102]
type = AssertSpecial
trigger1 = 1
flag = invisible


[State 3102]
type = VelAdd
trigger1 = Pos Y < 0
y = 0.4


[State 3102]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 3104
ctrl = 0


;---------------------------------------------------------------------------
;Finale Rosso
[Statedef 3104]
type    = S
movetype= A
physics = N
juggle  = 1
;poweradd=
velset = 0,0
anim = 3102
ctrl = 0
sprpriority = 4
facep2 = 1



[State 3104]
type = null;PalFx
trigger1 = 1
time = 10
add = 64,-255,-255

[State 3104]
type = Explod
trigger1 = NumExplod(23150) < 7
id = 23150
anim = 23150+random%2
postype = Back
pos = random%320,random%240
ownpal = 1
sprpriority = random%5

[State 3104]
type = PosSet
trigger1 = Time = 0
trigger1 = facing = 1
x = -80
y = -240

[State 3104]
type = PosSet
trigger1 = Time = 0
trigger1 = facing = -1
x = 80
y = -240

[State 3104]
type = null;NotHitBy
trigger1 = 1
value = SCA


[State 3104]
type = null;PlayerPush
trigger1 = 1
value = 0

[State 3104]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0




[State 3104]
type = AssertSpecial
trigger1 = 1
flag = NoBG
flag2 = NoBG


[State 3104]
type = BGPalFX
trigger1 = 1
time = 10
add = 64,-255,-255

[State 3104]
type = null;Helper
trigger1 = Time = 0
stateno = 33120
ownpal = 1


[State 3104]
type = null;Helper
trigger1 = Time = 0
stateno = 23127
id = 23127
ownpal = 1

[State 3104]
type = VelAdd
trigger1 = Pos Y < -50
y = 0.4


[State 3104]
type = VelSet
trigger1 = Pos Y >= -50
trigger1 = Vel Y > 0
y = 0


[State 3104]
type = null;PosSet
trigger1 = Pos Y > 0
y = 0


[State 3104]
type = ChangeAnim
trigger1 = Pos Y >= -50
value = 3102
elem = 3
persistent = 0


[State 3104]
type = PlaySnd
trigger1 = AnimElem = 6
value = 3100,3


[State 3104]
type = PlaySnd
trigger1 = AnimElem = 9
value = 3100,1

[State 3104]
type = ChangeState
trigger1 = AnimTime = 0
value = 3105
ctrl = 0



;---------------------------------------------------------------------------
;Finale Rosso
[Statedef 3105]
type    = S
movetype= A
physics = N
juggle  = 1
;poweradd=
velset = 0,0
anim = 3103
ctrl = 0
sprpriority = 4
facep2 = 1



[State 3105]
type = null;PalFx
trigger1 = 1
time = 10
add = 64,-255,-255


[State 3105]
type = Explod
trigger1 = NumExplod(23150) < 7
id = 23150
anim = 23150+random%2
postype = Back
pos = random%320,random%240
ownpal = 1
sprpriority = random%5

[State 3105]
type = PosSet
trigger1 = ScreenPos Y < -40
y = 0

[State 3105]
type = null;NotHitBy
trigger1 = 1
value = SCA


[State 3105]
type = null;PlayerPush
trigger1 = 1
value = 0

[State 3105]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0




[State 3105]
type = AssertSpecial
trigger1 = time < 40
flag = NoBarDisplay
flag2 = NoBG
flag3 = NoFG


[State 3105]
type = null;AllPalFx
trigger1 = Time < 40;5
color = 0
add = -255,-255,-255

[State 3105]
type = null;Helper
trigger1 = Time = 0
stateno = 33120
ownpal = 1


[State 3105]
type = null;Helper
trigger1 = Time = 0
stateno = 23127
id = 23127
ownpal = 1

[State 3105]
type = VelAdd
trigger1 = AnimElemNo(0) = 2
y = -0.4


[State 3105]
type = VelSet
trigger1 = Pos Y = 0
y = 0


[State 3105]
type = PosSet
trigger1 = AnimElem = 3
y = 0


[State 3105]
type = ChangeAnim
trigger1 = Pos Y = 0
value = 3103
elem = 3
persistent = 0


[State 3104]
type = PlaySnd
trigger1 = AnimElem = 7
value = 3100,2

[State 3105]
type = ChangeState
trigger1 = AnimTime = 0
value = 52
ctrl = 0

;---------------------------------------------------------------------------
;Finale Rosso
[Statedef 3109]
type    = S
movetype= A
physics = N
juggle  = 1
;poweradd=
velset = 0,0
anim = 3101
ctrl = 0
sprpriority = 4
facep2 = 1



[State 3109]
type = PosSet
trigger1 = Time = 0
y = -240

[State 3109]
type = null;NotHitBy
trigger1 = 1
value = SCA


[State 3109]
type = null;PlayerPush
trigger1 = 1
value = 0

[State 3109]
type = null;ScreenBound
trigger1 = 1
value = 0
movecamera = 1,1


[State 3109]
type = null;AssertSpecial
trigger1 = 1
flag = NoBarDisplay
flag2 = NoBG
flag3 = NoFG


[State 3109]
type = null;AllPalFx
trigger1 = Time < 5
color = 0
add = -255,-255,-255

[State 3109]
type = null;Helper
trigger1 = Time = 0
stateno = 33120
ownpal = 1


[State 3109]
type = null;Helper
trigger1 = Time = 0
stateno = 23127
id = 23127
ownpal = 1



[State 3109]
type = DestroySelf
trigger1 = Parent,Pos Y > -40

;---------------------------------------------------------------------------
;------------------------------------------------------------------------------------------------------------
;Blood Helper
[Statedef 23100]
type = S
movetype = A
physics = N
anim = 23100
ctrl = 0
sprpriority = -1
velset = 0,0
;hitcountpersist = 1



[State 23100]
type = AssertSpecial
trigger1 = 1
flag = noshadow


[State 23100]
type = PlaySnd
trigger1 = Time = 0
value = 3100,2

[State 23100]
type = Helper
trigger1 = Time = 12
stateno = 23102
id = 23102
ownpal = 1


[State 23100]
type = ChangeAnim
trigger1 = Time >= 40 && !NumHelper(23102)
value = 23101

[State 23100]
type = DestroySelf
trigger1 = AnimTime = 0 && Anim = 23101
trigger2 = Parent,Stateno != 3101

;------------------------------------------------------------------------------------------------------------
;Blood Helper
[Statedef 23102] 
type = S
movetype = A
physics = N
anim = 23102
ctrl = 0
sprpriority = 4
velset = 0,0
;hitcountpersist = 1



[State 23102]
type = AssertSpecial
trigger1 = 1
flag = noshadow


[State 23102]
type = HitDef
trigger1 = hitcount < 1
trigger1 = moveguarded < 1
attr = S, HT          ;Attributes: Standing, Normal Throw
hitflag = MAFD          ;Affect only ground people who are not being hit
priority = 5, Miss    ;Throw has low priority, must be miss or dodge type.
sparkno = -1          ;No spark
p1sprpriority = 1     ;Draw p1's sprite in front of p2
                      ;p2's sprite priority is set to 0 by default
p1facing = 1
p2facing = 1          ;Force p2 to face p`
p1stateno = 23150       ;On success, changes to state 
p2stateno = 23160       ;If hit, p2 changes to state 
guard.dist = 0        ;This prevents p2 from going into a guard state if close
fall = 1              ;Force p2 into falling down
hitsound = S1,9 
id = 800
;guardflag = HA
;guardsound = S4,0
;guard.sparkno = S8430
;damage = 3*var(30),var(30)/2


[State 23102]
type = ChangeAnim
trigger1 = Time = 40 
value = 23103


[State 23101]
type = DestroySelf
trigger1 = AnimTime = 0 && Anim = 23103
trigger2 = Root,Stateno != 3101


;------------------------------------------------------------------------------------------------------------
;Blood Helper
[Statedef 23105]
type = S
movetype = A
physics = N
anim = 23105+random%4
ctrl = 0
sprpriority = 1
velset = 0,0
;hitcountpersist = 1



[State 23105]
type = VarSet
trigger1 = Time = 0
var(2) = 40*(random%10)

[State 23105]
type = AssertSpecial
trigger1 = 1
flag = noshadow


[State 23105]
type = AngleDraw
trigger1 = 1
value = var(2)


[State 23105]
type = PlaySnd
trigger1 = AnimElem = 3
value = 5,random%3

[State 23105]
type = null;Explod
trigger1 =  AnimElem = 3
anim = 6100+random%3
ownpal = 1
ontop = 1

[State 23105]
type = DestroySelf
trigger1 = AnimTime = 0


;---------------------------------------------------------------------------
; Throw

[Statedef 23150]
type    = S
movetype= A
physics = N
anim = 23104
poweradd = 60
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 2



[State 23150]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 23150]
type = PosSet
trigger1 = Time = 0
trigger1 = facing = -1
x = 80
y = -240

[State 23150]
type = PosSet
trigger1 = Time = 0
trigger1 = facing = 1
x = -80
y = -240


[State 23150]
type = Explod
trigger1 = Time = 0
anim = 23110
ownpal = 1
pos = -47,-62
postype = p2
vel = 0,1.4
scale = 1,1
removetime = 300
persistent = -2

[State 23150]
type = Explod
trigger1 = Time = 0
anim = 23112
ownpal = 1
pos = 100,-62
postype = p2
vel = 0,1.4
scale = 1,1
removetime = 300
persistent = -3

[State 23150]
type = Explod
trigger1 = Time = 0
anim = 23111
ownpal = 1
pos = 160,-62
postype = p2
vel = 0,1.2
scale = 1,1
removetime = 300
persistent = -4
ID = 23111

[State 23150]
type = Explod
trigger1 = Time = 0
anim = 23111
ownpal = 1
pos = 80,-62
postype = p2
vel = 0,1.5
scale = 1,1
removetime = 300
persistent = -4
ID = 23111

[State 23150]
type = Explod
trigger1 = Time = 0
anim = 23111
ownpal = 1
pos = -80,-62
postype = p2
vel = 0,1.4
scale = 1,1
removetime = 300
persistent = -4
ID = 23111

[State 23150]
type = RemoveExplod
trigger1 = !NumTarget(800)
trigger2 = Root,Stateno != [3101,3105]
ID = 23111
[State 23150]
type = PlayerPush
trigger1 = 1
value = 0

[State 23150]
type = NotHitBy
trigger1 = 1
value = SCA

[State 23150]
type = ScreenBound
trigger1 = 1
value = 0
movecamara = 1,1


[State 23150]
type = VelAdd
trigger1 = Pos Y < 0
y = 0.4


[State 23150]
type = VelSet
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
y = 0


[State 23150]
type = PosSet
trigger1 = Pos Y > 0
y = 0


[State 23150]
type = Helper
trigger1 = Root,AnimElemTime(8) >= 0
trigger1 = Root,AnimTime <= 0
trigger1 = Time%7 = 0
trigger1 = Root,Anim = 3102
;trigger1 = Root,AnimElemNo(0) = 7
stateno = 23105
ownpal = 1
pos = 0, -34


[State 23150]
type = TargetLifeAdd
trigger1 = Root,AnimElemTime(8) >= 0
trigger1 = Root,AnimTime <= 0
trigger1 = Time%7 = 0
trigger1 = Root,Anim = 3102
;trigger1 = Root,AnimElemNo(0) = 7
value = -2*10

[State 23150]
type = TargetBind
trigger1 = 1;AnimElemNo(0) = 1
pos = 0,-34


[State 23150]
type = TargetState
trigger1 = Root,Anim = 3103 && Root,AnimElem = 3
value = 23161


[State 23150]
type = ChangeState
trigger1 = Root,Anim = 3103 && Root,AnimElem = 3
value = 23151
ctrl = 0


[State 23150]
type = ChangeState
trigger1 = !NumTarget(800)
trigger2 = Root,Stateno != [3101,3105]
value = 23153
ctrl = 1


;---------------------------------------------------------------------------
; Throw

[Statedef 23151]
type    = S
movetype= A
physics = N
anim = 23104
poweradd = 0
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 2


[State 23151]
type = AssertSpecial
trigger1 = 1
flag = invisible



[State 23151]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 23151]
type = null;Explod
trigger1 = Time = 0
anim = 7515
ontop = 1
ownpal = 1
pos = 77,-62

[State 23151]
type = PlayerPush
trigger1 = 1
value = 0

[State 23151]
type = NotHitBy
trigger1 = 1
value = SCA

[State 23151]
type = ScreenBound
trigger1 = 1
value = 0
movecamara = 1,1


[State 23151]
type = PosSet
trigger1 = Time = 0
y = 0


[State 23151]
type = TargetBind
trigger1 = 1;AnimElemNo(0) = 1
pos = 0,-34




[State 23151]
type = TargetState
trigger1 = Root,Anim = 3103 && Root,AnimElem = 8
value = 23162


[State 23151]
type = ChangeState
trigger1 = Root,Anim = 3103 && Root,AnimElem = 8
value = 23152
ctrl = 0


[State 23151]
type = ChangeState
trigger1 = !NumTarget(800)
trigger2 = Root,Stateno != [3101,3105]
value = 23153
ctrl = 1


;---------------------------------------------------------------------------
; Throw

[Statedef 23152]
type    = S
movetype= A
physics = N
anim = 23109
poweradd = 0
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 2


[State 23152]
type = AssertSpecial
trigger1 = 1
flag = invisible


[State 23152]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 23152]
type = null;Explod
trigger1 = Time = 0
anim = 7515
ontop = 1
ownpal = 1
pos = 77,-62

[State 23152]
type = PlayerPush
trigger1 = 1
value = 0

[State 23152]
type = NotHitBy
trigger1 = 1
value = SCA

[State 23152]
type = ScreenBound
trigger1 = 1
value = 0
movecamara = 1,1


[State 23152]
type = PosSet
trigger1 = Time = 0
y = 0


[State 23152]
type = TargetBind
trigger1 = AnimElemNo(0) = 1
pos = 0,-20

[State 23152]
type = TargetBind
trigger1 = AnimElemNo(0) = 2
pos = 0,-40


[State 23152]
type = TargetBind
trigger1 = AnimElemNo(0) = 3
pos = 0,-60


[State 23152]
type = TargetBind
trigger1 = AnimElemNo(0) = 4
pos = 0,-80

[State 23152]
type = TargetBind
trigger1 = AnimElemNo(0) = 5
pos = 0,-100


[State 23152]
type = TargetBind
trigger1 = AnimElemNo(0) = 5
pos = 0,-120

[State 23152]
type = TargetState
trigger1 = AnimElem = 1
value = 23163


[State 23152]
type = ChangeState
trigger1 = AnimElem = 1
value = 23153
ctrl = 0


[State 23152]
type = ChangeState
trigger1 = !NumTarget(800)
trigger2 = Root,Stateno != [3101,3105]
value = 23153
ctrl = 1


;---------------------------------------------------------------------------
; Throw End

[Statedef 23153]
type    = S
movetype= I
physics = N
;anim = 0
;poweradd = 60
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 2



[State 23153]
type = AssertSpecial
trigger1 = 1
flag = noshadow



[State 23153]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------
;Thrown

[Statedef 23160]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 0

[State 23160]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,1

[State 23160]
type = ChangeAnim2
trigger1 = Time = 0
value = 23160



[State 23160]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 23160]
type = null;PalFx
trigger1 = 1
time = 10
add = 64,-255,-255



[State 23160]
type = Turn
trigger1 = facing = enemynear,facing


[State 23160]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5050


[State 23160]
type = DestroySelf
trigger1 = ishelper



;---------------------------------------------------------------------------
;Thrown

[Statedef 23161]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 0

[State 23161]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,1

[State 23161]
type = ChangeAnim2
trigger1 = Time = 0
value = 23160



[State 23161]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 23161]
type = AssertSpecial
trigger1 = 1
flag = invisible

[State 23161]
type = null;PalFx
trigger1 = 1
time = 10
add = 64,-255,-255


[State 23161]
type = Turn
trigger1 = facing = enemynear,facing


[State 23161]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5050


[State 23161]
type = DestroySelf
trigger1 = ishelper


;---------------------------------------------------------------------------
;Thrown

[Statedef 23162]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 0

[State 23162]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,1

[State 23162]
type = ChangeAnim2
trigger1 = Time = 0
value = 23162


[State 23162]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 23162]
type = Turn
trigger1 = facing = enemynear,facing


[State 23162]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5050


[State 23162]
type = DestroySelf
trigger1 = ishelper


;---------------------------------------------------------------------------
;Thrown 
[Statedef 23163]
type    = A
movetype= H
physics = N
velset = 0,-15
poweradd = 60



[State 23163]
type = ChangeAnim2
trigger1 = Time = 0
value = 823


[State 23163]
type = null;VelSet
trigger1 = Pos Y < -200
x = -2
persistent = 0

[State 23163] ;Gravity
type = VelAdd
trigger1 = 1
y = .4


[State 23163]
type = ScreenBound
triggerall = Pos y < -15
trigger1 = 1;BackEdgeBodyDist < 65
;trigger2 = FrontEdgeBodyDist < 65
value = 0
movecamera = 0,0


[State 23163]
type = null;SelfState
trigger1 = BackEdgeBodyDist <= 15
trigger2 = FrontEdgeBodyDist <= 15
value = 5040


[State 23163]
type = null;SelfState
trigger1 = Vel Y > 2 
value = 5040

[State 23163] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground


;------------------------------------------------------------------------------------------------------------
;イメージ
;セッコ画面外へ
;↓
;Explodで録画枠表示　ちゃんとビデオ回ってるか？
;↓
;カビをばらまけェ
;全画面攻撃(防御不可)でヘルパーを張り付け
;↓
;相手が下方向に動くのを感知したらダメージ
;
;
;
;===========================================================================
;カビをばらまけ
[statedef 4000]
type=s
movetype=a
physics=s
velset=0,0
anim=4000
ctrl=0

[state 4000,]
type=playsnd
trigger1=animelem = 3
value=3100,2
channel=0

[state 4000,カットイン]
type=helper
triggerall=!numhelper(4999)
trigger1=time=0
helpertype=normal
name="cutin"
id=4999
pos=0,0
postype=back
facing=1
stateno=4999
keyctrl=0
ownpal=0
supermovetime=2147483647

[state 4000,暗転]
type=superpause
trigger1=time=0
pos=15,-75
anim=s6000
sound=s4999,0
poweradd=-1000
time=45
darken=0
p2defmul=1

[State 1027, helper]
type = Helper
trigger1 = numhelper(4100) = 0
trigger1 = time = 0
helpertype = normal
name = "gd"
stateno = 4100
id = 4100
size.xscale=1
size.yscale=1
pos = -10, 0
postype = p1
ownpal = 1
facing = 1
supermovetime = 0
pausemovetime = 0



[state 4000,浮上]
type=changestate
trigger1=time>=240
value=4001

;---------------------------------------------------------------------------
;カビをばらまけ(浮上)
[statedef 4001]
type=s
movetype=a
physics=s
anim=4001


[state 4001,終了]
type=changestate
trigger1=animtime=0
value=0
ctrl=1

;---------------------------------------------------------------------------
;=======================GD登場===============================
;---------------------------------------------------------------------------
;グリーンデイッ！
[Statedef 4100]
type = S
movetype = A
physics = S
sprpriority = 0
velset = 0,0
anim = 99999

[State 1103] ;攻撃
type = ChangeState
trigger1 = time = 0
value = 4101
;---------------------------------------------------------------------------
;カビ攻撃
[Statedef 4101]
type = A
movetype = A
physics = N
velset = 0,0
anim = 4100
ctrl = 0
sprpriority = 3

[State 4101, ヒット定義]
type = HitDef
;triggerall = var(58)!=1   
trigger1 = animelemtime(10)=0
attr = S, HA
animtype  = Light
damage    = 0, 0
priority  = 5
;guardflag = MA
pausetime = 0,0
sparkxy = 0,-65
hitsound   = 5,3
guardsound = 6,0
ground.type = Low
ground.slidetime = 16
ground.hittime  = 18
ground.velocity = -10
ground.cornerpush.veloff = -12 ;
guard.velocity = -7
air.velocity = -3.5,-4.5
airguard.velocity = -3.5,-4.5

[state 4000,]
type=playsnd
trigger1=animelem = 10
value=4100,0

[State 4102, エフェクト]
type = Explod
trigger1=animelem = 10
anim = 4200
postype = F
pos = 0,0
velocity = 0, 0
facing = 1
SprPriority = 3
scale = 0.7,0.7
;removetime = 40
persistent = 0
ID = 4200

[State 20000]
type = DestroySelf
trigger1 = animtime = 0

[state 4101]
type = changestate
trigger1 = movehit
value = 4102

;---------------------------------------------------------------------------
[Statedef 4102, カビ]
type    = S
movetype= I
physics = S
velset = 0,0
ctrl = 0
sprpriority = 0

[state 4102]
type = changeanim
trigger1 = anim != 99999
value = 99999

[State 4102, 特殊効果]
type = AssertSpecial
trigger1 = 1
flag = NoShadow ;影を消す
[state 4102]
type = trans
trigger1 = 1
trans = addalpha
alpha = 0, 256
[State 4102]
Type = HitOverRide
Trigger1 = 1
Attr = SCA, AA, AP, AT
StateNo = stateno
ignorehitpause = 1
[State 1000]
type = NotHitBy
trigger1 = 1
value = SCA
ignorehitpause = 1


[State 4102]
type = reversaldef
trigger1 = 1
reversal.attr = SCA,AA,AT,AP
ignorehitpause = 1
[State 4102]
Type = PosSet
Trigger1 = 1
x = target,pos X
y = (target,Const (size.head.pos.y)) +target,pos Y


[state 4102]				;相手のY方向ベクトルを記憶し続け、
type = Targetlifeadd			;記憶よりマイナス方向へ向かった時に
trigger1 = target,vel Y < fvar(0)	;ライフを減らすように命令。
value = -(target,lifemax/1000)*5
Kill = 1

[state 4102]				;相手がしゃがみステートになった時にも
type = Targetlifeadd			;ライフを減らすように命令。
trigger1 = target,StateNo = [10,11]	;
trigger1 = time%6 = 0
value = -(target,lifemax/1000)
Kill = 1

[state 4102]				;記憶は速度の変更後に行うようにする。
type = varset
trigger1 = 1
fvar(0) = target,vel Y

[State 4102, エフェクト]
type = Explod
trigger1 = time = 1
anim = 4102
postype = p1
pos = 0,-30;(random%19-10)*3, 0;-pos Y/2
velocity = 0, 0
facing = 1
SprPriority = 3
scale = 0.5, 0.5
;removetime = 40
persistent = 0
ID = 4102

[state 4102]
type = varadd
trigger1 = 1
var(59) = 1
[state 4102]
type = changestate
trigger1 = time = 10
value = stateno

[State 4102, ヘルパーを消す]
type = DestroySelf
trigger1 = var(59) = 3000
trigger2 = !target,alive
;

;===========================================================================
;===========================================================================
;ｻﾃｨﾎﾟﾛｼﾞｱﾋﾞｰﾄﾙ(Start)
[Statedef 3200]
type    = S
movetype= A
physics = N
juggle = 0
anim = 3200
ctrl = 0
velset = 0,0
poweradd = -1000*(!var(56) && var(19) < 1)
sprpriority = -1

[state 3200,カットイン]
type=helper
triggerall=!numhelper(4999)
trigger1=time=1
helpertype=normal
name="cutin"
id=4999
pos=0,0
postype=back
facing=1
stateno=4999
keyctrl=0
ownpal=0
supermovetime=2147483647

[state 3200,暗転]
type=superpause
trigger1=time=1
pos=-20,-75
anim=s6000
sound=s4999,0
poweradd=-1000
time=45
darken=0
p2defmul=1

[State 3200,0]
type = PlaySnd
trigger1 = time = 0
value = 3200,0

[State 3200, PowerSet (OriCom Simul)]
type = PowerSet
triggerall = TeamMode = Simul
triggerall = RoundState = 2
triggerall = !var(56) || (fvar(13) = [0,1])
triggerall = var(19) >= 1
trigger1 = time = 0
value = Ifelse(Power > Ceil(var(57)/10), Power-Ceil(var(57)/10), 0)
ignorehitpause = 1
persistent = 0

[State 3200, Turn]
type = Turn
triggerall = !var(59) || PrevStateNo < 6000
triggerall = var(19) < 1
trigger1 = time = 0
trigger1 = P2Dist X < -5

[State 3200, NotHitBy]
type = NotHitBy
trigger1 = time <= 51
value = SCA
time = 1

[State 3200, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 3200, Hold]
type = ReversalDef
trigger1 = time = 0
reversal.attr = SCA, AA, AP, AT
pausetime = 6,10
numhits = 0
sparkno = S(Ifelse((var(58) && Helper(30000),var(12)), 6511, 3205))
sparkxy = 0,0
hitsound = -1,-1
P1StateNo = 3201

[State 3200, StatetypeSet]
type = StatetypeSet
trigger1 = AnimElemTime(10) = 0
movetype = I

[State 3200, CtrlSet]
type = CtrlSet
trigger1 = AnimElemTime(13) = 0
value = 1

[State 3200, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;ｻﾃｨﾎﾟﾛｼﾞｱﾋﾞｰﾄﾙ(Hold)
[Statedef 3201]
type    = S
movetype= A
physics = N
juggle = 4*(var(19) < 1)
anim = 3201 + (EnemyNear(0),HitDefAttr = C,AA,AP)
ctrl = 0
velset = 0,0
sprpriority = -1

[State 3201, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 3201, Pause]
type = Pause
trigger1 = AnimElemTime(1) = 0
time = 25+5*(var(58) && Helper(30000),var(12))
movetime = 20+5*(var(58) && Helper(30000),var(12))
anim = -1
pos = 10, -30

[State 3201, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 3210

;---------------------------------------------------------------------------
;ｻﾃｨﾎﾟﾛｼﾞｱﾋﾞｰﾄﾙ(Attack 1-6)
[Statedef 3210]
type    = S
movetype= A
physics = N
anim = 3210
ctrl = 0
velset = 0,0
juggle = 4*(var(19) < 1)
sprpriority = -1

[State 3210, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 3210, Width]
type = Width
trigger1 = time = 0 && BackEdgeDist < 50
trigger1 = P2StateType = A && P2BodyDist X < -10 && P2BodyDist X > -60
edge = 50, 0

[State 3210, NotHitBy]
type = NotHitBy
triggerall = !MoveContact && !MoveReversed
trigger1 = time < 10
value = SCA, NA,SA,NT,ST
time = 1

[State 3210, Turn]
type = Turn
trigger1 = time = 0
trigger1 = P2Dist X < -5

[State 3210, Time Adjust]
type = ChangeAnim
triggerall = !MoveContact && !MoveReversed
trigger1 = time < 10
trigger1 = AnimElemTime(5) = 0
value = 3210
elem= 4

[State 3210, Moving Turn]
type = PosAdd
trigger1 = time = 0 && BackEdgeDist >= 30
trigger1 = P2Dist X < 5
x = -20

[State 3210, Moving0]
type = PosAdd
triggerall = EnemyNear(0),Vel X <= 0
trigger1 = time = 0
x = 24 + 12*(FrontEdgeDist > 50 && P2BodyDist X > 25)

[State 3210, Moving1a]
type = PosAdd
triggerall = EnemyNear(0),Vel X <= 0
trigger1 = AnimElemTime(14) = 0
x = 9

[State 3210, Moving1b]
type = PosAdd
triggerall = FrontEdgeDist > 38 && (P2BodyDist X > 27 || P2StateType = A)
trigger1 = AnimElemTime(14) = 0
x = Ifelse(P2BodyDist X > 48, P2BodyDist X - 30, 18)

[State 3210, Moving2]
type = PosAdd
trigger1 = AnimElemTime(30) = 0
x = 10

[State 3210, Moving3]
type = PosAdd
trigger1 = AnimElemTime(37) = 0
x = 30

[State 3210, Moving4]
type = PosAdd
trigger1 = AnimTime = 0
x = -5

[State 3210, HitBack for Air]
type = VelSet
triggerall = P2StateType = A && EnemyNear(0),BackEdgeBodyDist < 15
triggerall = FrontEdgeDist < 70 || (AnimElemTime(17) > 0 && FrontEdgeDist < 90)
trigger1 = AnimElemTime(6) = 0 && (MoveHit = [1,3])
trigger2 = AnimElemTime(19) = 0 && (MoveHit = [1,3])
trigger3 = AnimElemTime(25) = 0 && (MoveHit = [1,3])
trigger4 = AnimElemTime(35) = 0 && (MoveHit = [1,3])
trigger5 = AnimElemTime(42) = 0 && (MoveHit = [1,3])
trigger6 = AnimElemTime(51) = 0 && (MoveHit = [1,5])
x = -2.2

[State 3210, HitBack Stop]
type = VelSet
triggerall = P2StateType = A && EnemyNear(0),BackEdgeBodyDist < 15
triggerall = Vel X < 0
trigger1 = AnimElemTime(37) < 0 && MoveHit > 25
trigger2 = AnimElemTime(37) >= 0 && MoveHit > 35
trigger3 = AnimElemTime(37) >= 0 && FrontEdgeDist >= 85
x = 0

[State 3210, Pos Adjust]
type = PosAdd
triggerall = P2StateType = S && EnemyNear(0),BackEdgeBodyDist < 15
triggerall = AnimElemTime(51) >= 0
trigger1 = FrontEdgeDist = [70,80]
x = FrontEdgeDist - 70

[State 3210, Pos Adjust for Air]
type = PosAdd
triggerall = P2StateType = A && EnemyNear(0),BackEdgeBodyDist < 15
triggerall = AnimElemTime(51) >= 0
trigger1 = FrontEdgeDist = [85,95]
x = FrontEdgeDist - 85

[State 3210, TargetBind1]
type = TargetBind
triggerall = P2StateType = S && EnemyNear(0),BackEdgeBodyDist >= 15
triggerall = P2BodyDist X < 25
trigger1 = AnimElemTime(3) = 1
trigger2 = AnimElemTime(18) = 1
pos = 40, 0
ignorehitpause = 0

[State 3210, TargetBind2]
type = TargetBind
triggerall = P2StateType = S && EnemyNear(0),BackEdgeBodyDist >= 15
triggerall = P2BodyDist X < 25
trigger1 = AnimElemTime(41) = 1
pos = 50, 0
ignorehitpause = 0

[State 3210, TargetBind3]
type = TargetBind
triggerall = P2StateType = S && EnemyNear(0),BackEdgeBodyDist >= 15
triggerall = P2BodyDist X < 35
trigger1 = AnimElemTime(24) = 1
trigger2 = AnimElemTime(34) = 1
trigger3 = AnimElemTime(50) = 1
pos = 60, 0
ignorehitpause = 0

[State 3210, PlaySnd1]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = 3210, random%2

[State 3210, PlaySnd2]
type = PlaySnd
trigger1 = AnimElemTime(17) = 0
value = 0, 0

[State 3210, PlaySnd3-4]
type = PlaySnd
trigger1 = AnimElemTime(23) = 0
trigger2 = AnimElemTime(33) = 0
value = 0, 3

[State 3210, PlaySnd5]
type = PlaySnd
trigger1 = AnimElemTime(40) = 0
value = 0, 0

[State 3210, PlaySnd6]
type = PlaySnd
trigger1 = AnimElemTime(49) = 0
value = 0, 3

[State 3210, HitDef1]
type = HitDef
triggerall = var(35) != 2
trigger1 = AnimElemTime(3) = 0
attr = S, HA
animtype = Heavy
damage = 60, 6
priority = 7, Hit
guardflag = M
pausetime = 4+7*(P2StateType = A)+20*(var(58) && Helper(30000),var(12)),5+15*(P2StateType = S)+20*(var(58) && Helper(30000),var(12))
guard.pausetime = 8,8
numhits = (fvar(20) = 1)
sparkno = S6102
guard.sparkno = S6125
sparkxy = -Ceil((20-.2*(P2BodyDist X))*Const(size.xscale)), Ceil((-90+.7*(P2Dist Y)+25*(P2StateType = C))*Const(size.yscale))
hitsound = S5, 5
guardsound = S120, 0
ground.type = High
yaccel = .7
ground.SlideTime = 12
ground.HitTime = 25
ground.velocity = -3.5
air.velocity = -2.76,-11.8
ground.cornerpush.veloff = -5.6*(FrontEdgeBodyDist < 60)
air.cornerpush.veloff = 0
forcestand = 1
air.fall = 0
getpower = 0,0
givepower = 0,0
envshake.time = 12*(var(58) && Helper(30000),var(12))
envshake.ampl = 4*(var(58) && Helper(30000),var(12))
kill = 0

[State 3210, HitDef2]
type = HitDef
triggerall = var(35) != 2
trigger1 = AnimElemTime(18) = 0
attr = S, HA
animtype = Medium
damage = 50, 5
priority = 7, Hit
guardflag = M
pausetime = 4,5+7*(P2StateType = S)
numhits = (fvar(20) = 1)
sparkno = S6100
guard.sparkno = S6125
sparkxy = -Ceil((20-.2*(P2BodyDist X))*Const(size.xscale)), Ceil((-70+.8*(P2Dist Y)+25*(P2StateType = C))*Const(size.yscale))
hitsound = S5, 1
guardsound = S120, 0
ground.type = Low
yaccel = .7
ground.SlideTime = 12
ground.HitTime = 15
ground.velocity = 0
air.velocity = -2.76,-11.8
ground.cornerpush.veloff = -5.6
air.cornerpush.veloff = 0
forcestand = 1
air.fall = 0
getpower = 0,0
givepower = 0,0
envshake.time = 10*(var(58) && Helper(30000),var(12))
envshake.ampl = 3*(var(58) && Helper(30000),var(12))
kill = 0

[State 3210, HitDef3]
type = HitDef
triggerall = var(35) != 2
trigger1 = AnimElemTime(24) = 0
attr = S, HA
animtype = Medium
damage = 50, 4
priority = 7, Hit
guardflag = M
pausetime = 1,2+8*(P2StateType = S)+6*(P2StateType = A && EnemyNear(0),BackEdgeBodyDist < 15)
numhits = (fvar(20) = 1)
sparkno = S6100
guard.sparkno = S6125
sparkxy = -Ceil((40-.4*(P2BodyDist X))*Const(size.xscale)), Ceil((-90+.7*(P2Dist Y)+15*(P2StateType = C))*Const(size.yscale))
hitsound = S5,1 
guardsound = S120, 0
ground.type = High
yaccel = .7
ground.SlideTime = 12
ground.HitTime = 15
ground.velocity = 0
air.velocity = -2.76,-11.8
ground.cornerpush.veloff = -5.6
air.cornerpush.veloff = 0
forcestand = 1
air.fall = 0
getpower = 0,0
givepower = 0,0
envshake.time = 10*(var(58) && Helper(30000),var(12))
envshake.ampl = 3*(var(58) && Helper(30000),var(12))
kill = 0

[State 3210, HitDef4]
type = HitDef
triggerall = var(35) != 2
trigger1 = AnimElemTime(34) = 0
attr = S, HA
animtype = Heavy
damage = 80, 8
priority = 7, Hit
guardflag = M
pausetime = 1,2+8*(P2StateType = S)+6*(P2StateType = A && EnemyNear(0),BackEdgeBodyDist < 15)
numhits = (fvar(20) = 1)
sparkno = S6102
guard.sparkno = S6125
sparkxy = -Ceil((40-.4*(P2BodyDist X))*Const(size.xscale)), Ceil((-60+.8*(P2Dist Y)+15*(P2StateType = C))*Const(size.yscale))
hitsound = S5, 3
guardsound = S120, 0
ground.type = Low
yaccel = .7
ground.SlideTime = 12
ground.HitTime = 25
ground.velocity = 0
air.velocity = -2.76,-11.8
ground.cornerpush.veloff = -5.6
air.cornerpush.veloff = 0
forcestand = 1
air.fall = 0
getpower = 0,0
givepower = 0,0
envshake.time = 10*(var(58) && Helper(30000),var(12))
envshake.ampl = 3*(var(58) && Helper(30000),var(12))
kill = 0

[State 3210, HitDef5]
type = HitDef
triggerall = var(35) != 2
trigger1 = AnimElemTime(41) = 0
attr = S, HA
animtype = Heavy
damage = 80, 8
priority = 7, Hit
guardflag = M
pausetime = 1,2+14*(P2StateType = S)+6*(P2StateType = A && EnemyNear(0),BackEdgeBodyDist < 15)
numhits = (fvar(20) = 1)
sparkno = S6102
guard.sparkno = S6125
sparkxy = -Ceil((40-.4*(P2BodyDist X))*Const(size.xscale)), Ceil((-90+.8*(P2Dist Y)+15*(P2StateType = C))*Const(size.yscale))
hitsound = S5, 5
guardsound = S120, 0
ground.type = High
yaccel = .7
ground.SlideTime = 12
ground.HitTime = 20
ground.velocity = 0
air.velocity = -2.76,-11.8
ground.cornerpush.veloff = -5.6
air.cornerpush.veloff = 0
forcestand = 1
air.fall = 0
getpower = 0,0
givepower = 0,0
envshake.time = 10*(var(58) && Helper(30000),var(12))
envshake.ampl = 3*(var(58) && Helper(30000),var(12))
kill = 0

[State 3210, HitDef6]
type = HitDef
triggerall = var(35) != 2
trigger1 = AnimElemTime(50) = 0
attr = S, HA
animtype = Medium
damage = 100, 9
priority = 7, Hit
guardflag = M
pausetime = 4,5+19*(P2StateType = S)+6*(P2StateType = A && EnemyNear(0),BackEdgeBodyDist < 15)
numhits = (fvar(20) = 1)
sparkno = S6103
guard.sparkno = S6125
sparkxy = -Ceil((40-.4*(P2BodyDist X))*Const(size.xscale)), Ceil((-95+.8*(P2Dist Y)+15*(P2StateType = C))*Const(size.yscale))
hitsound = S5, 4
guardsound = S120, 0
ground.type = High
yaccel = .7
ground.SlideTime = 12
ground.HitTime = 20
ground.velocity = 0
air.velocity = -2.76,-11.8
ground.cornerpush.veloff = -2
forcestand = 1
air.fall = 0
getpower = 0,0
givepower = 0,0
envshake.time = 10*(var(58) && Helper(30000),var(12))
envshake.ampl = 3*(var(58) && Helper(30000),var(12))
kill = 0

[State 3210, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 3211

;---------------------------------------------------------------------------
;ｻﾃｨﾎﾟﾛｼﾞｱﾋﾞｰﾄﾙ(Finish)
[Statedef 3211]
type    = S
movetype= A
physics = N
anim = 3211
ctrl = 0
velset = 0,0
juggle = 4*(var(19) < 1)
sprpriority = -1

[State 3211, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
statetype = A

[State 3211, VelSet1]
type = VelSet
trigger1 = AnimElemTime(5) = 0
x = Ifelse(!(FrontEdgeBodyDist < 40 && EnemyNear(0),BackEdgeBodyDist < 5), 6.0, 0.8)
y = -6.8

[State 3211, VelSet2]
type = VelSet
trigger1 = AnimElemTime(9) = 0
x = Ifelse(!(FrontEdgeBodyDist < 100 && EnemyNear(0),BackEdgeBodyDist < 5), 2.0, 0.8)

[State 3211, Gravity]
type = VelAdd
trigger1 = AnimElemTime(9) >= 0
y = Const(Movement.Yaccel)+.4

[State 3211, Explod]
type = Explod
trigger1 = AnimElemTime(6) = 0
id = 3200
anim = 1102
pos = 0, 0
scale = Const(size.xscale)*.9,Const(size.yscale)
ontop = 1
bindtime = -1
removeongethit = 1
ignorehitpause = 0

[State 3211, HitDef7]
type = HitDef
triggerall = var(35) != 2
trigger1 = AnimElemTime(8) = 0
attr = A, HA
damage = 110, 10
animtype = Up
guardflag = M
hitflag = MAF
priority = 7, Hit
pausetime = 8+12*(var(58) && Helper(30000),var(12) && P2MoveType = H),8+12*(var(58) && Helper(30000),var(12) && P2MoveType = H)
guard.pausetime = 8,8
numhits = (fvar(20) = 1)
sparkno = S6104
guard.sparkno = S6125
sparkxy = -Ceil((40-.4*(P2BodyDist X))*Const(size.xscale)), Ceil((-70+.8*(P2Dist Y)+20*(P2StateType = C))*Const(size.yscale))
hitsound = S5, 5
guardsound = S120, 0
ground.type = High
yaccel = .9
ground.SlideTime = 11
ground.HitTime = 15
ground.velocity = -5.6, -14.8
guard.velocity = -4
air.type = High
air.velocity = -5.6,-14.8
airguard.velocity = -3,-6
air.HitTime = 15
airguard.velocity = -3
ground.cornerpush.veloff = -13.2
forcestand = 1
fall = 1
fall.recover = 0
getpower = 0,0
givepower = 0,0
envshake.time = 15*(var(58) && Helper(30000),var(12))
envshake.ampl = 5*(var(58) && Helper(30000),var(12))

[State 3211, ChangeState]
type = ChangeState
trigger1 = time > 10
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 1190
;===========================================================================

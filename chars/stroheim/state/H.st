;‚³‚ç‚Î‚¾
[Statedef 3200]
type = S
physics = S
movetype = A
anim = 4600
velset   = 5,-8
ctrl = 0
velset = 0, 0
juggle = 15
poweradd = -1000
facep2 = 1
sprpriority = 1

[State 3200, ‘¬“x‰ÁZ] ;d—Í
type = VelAdd
trigger1 = 1
y = .4

[State 3200, ˆÚ“®‘¬“x]
type = VelSet
trigger1 = 1
x = 0.3

[state 3200,ƒJƒbƒgƒCƒ“]
type=helper
triggerall=!numhelper(4999)
trigger1=animelemtime(1)=0
helpertype=normal
name="cutin"
id=4999
pos=0,0
postype=back
facing=1
stateno=4999
ownpal=0
supermovetime=2147483647

[state 3200,ˆÃ“]]
type=superpause
trigger1=animelemtime(1)=0
pos=15,-75
anim=s6000
sound=s4999,0
poweradd=-1000
time=45
darken=0
p2defmul=1

[State 3200, Snd]
type = playsnd
trigger1 = animelem = 3
value = 0, 4
channel = 0
volume = 200


[State 3200, NHB]
type = nothitby
trigger1 = animelemtime(9) < 4
time = 1
value = SCA

[State 3200, Type]
type = statetypeset
trigger1 = animelemtime(9) >= 0 && animelemtime(10) < 0
physics = N

[State 3200, Vel]
type = velset
trigger1 = animelemtime(9) >= 0 && animelemtime(10) < 0
x = 3

[State 3200, Type]
type = statetypeset
trigger1 = animelemtime(10) >= 0
physics = S

[State 3200, Hit]
type = hitdef
trigger1 = p2dist x >= 0 && p2bodydist x <= 36
trigger1 = animelemtime(9) >= 0 && animelemtime(18) < 0
attr = S, HT
hitflag = M-
priority = 6, Miss
numhits = 0
sparkno = -1
p1facing = 1
p2facing = 1
p1stateno = 3201
animtype = Up
ground.velocity = -1.5, -32
yaccel = 0.75
sprpriority = 1
fall = 1
fall.recover = 0

[State Idle]
type = statetypeset
trigger1 = animelemtime(18) >= 0
movetype = I

[State 3201, ²ˆÊ’uİ’è] ;’n–Ê‚ÌˆÊ’u‚É²‚ğƒŠƒZƒbƒg
type = PosSet
trigger1 = animelemtime(18) >= 0
y = 0

[State 1504, ƒXƒe[ƒg•ÏX] ;’…’n
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;“Š‚°¬Œ÷
[Statedef 3201]
type = S
physics = S
movetype = A
anim = 4601
ctrl = 0
velset = 0, 0
sprpriority = 1

[State 3201, ²ˆÊ’uİ’è] ;’n–Ê‚ÌˆÊ’u‚É²‚ğƒŠƒZƒbƒg
type = PosSet
trigger1 = Time = 0
y = 0

[State Throw]
type = targetstate
trigger1 = !time
value = 4002

[State 3201, Snd]
type = playsnd
trigger1 = time = 0
value = 0, 5
channel = 0

[State 3201, grabsound]
type = playsnd
trigger1 = !time
value = 6, 6
[State 3201, grabsound]
type = playsnd
trigger1 = !time
value = 5, 11;0, 800

[State 3201, Push]
type = playerpush
trigger1 = 1
value = 0
[State 3201, nothitby]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[State 3201, nomusic]
type = assertspecial
trigger1 = animelemtime(6) < 0
flag = nomusic

[State 3201, imageoff]
type = afterimagetime
trigger1 = animelemtime(9) >= 0
time = 0
[State 3201, spr]
type = sprpriority
trigger1 = animelemtime(9) >= 0
value = -1

[State 3201, Bind 1]
type = targetbind
trigger1 = animelemtime(1) >= 0 && animelemtime(2) < 0
pos = floor(60 * const(size.xscale)), 0
[State 3201, Bind 2]
type = targetbind
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
pos = floor(60 * const(size.xscale)), 0
[State 3201, Bind 3]
type = targetbind
trigger1 = animelemtime(3) >= 0 && animelemtime(9) < 0
pos = floor(60 * const(size.xscale)), 0
[State 3201, Bind 4]
type = targetbind
trigger1 = animelemtime(9) >= 0 && animelemtime(11) < 0
pos = floor(30 * const(size.xscale)), 0

[State 3201, exclamation]
type = explod
trigger1 = !time
anim = 6062
ID = 6062
sprpriority = 2
postype = p2
pos = (target, const(size.head.pos.x)) -5, (target, const(size.head.pos.y)) -10
facing = -1
scale = 0.5, 0.5
ownpal = 1


[State 3201, palfx]
type = palfx
trigger1 = animelem = 5
time = 165
sinadd = 64, 64, 192, 480

[State 3201, hitadd]
type = hitadd
trigger1 = animelem = 6
value = 1
[State 3201, hitdamage]
type = targetlifeadd
trigger1 = animelem = 6
value = -500
[State 3201, hitdamage]
type = targetpoweradd
trigger1 = animelem = 6
value = 36
[State 3201, throw]
type = targetstate
trigger1 = animelem = 6
value = 3204

[State 3201, Snd]
type = playsnd
trigger1 = animelem = 6
value = 5, 10
[State 3201, Snd]
type = playsnd
trigger1 = animelem = 6
value = 5, 10
[State 3201, Shake]
type = envshake
trigger1 = animelem = 6
time = 18
fre = 120
ampl = 12
[State 3201, explosion]
type = explod
trigger1 = animelemtime(11) = -3
anim = 4005
ID = 4005
sprpriority = 4
postype = p1
removetime = -2
ownpal = 1

[State 3201, ohnoes]
type = null;helper
trigger1 = animelem = 6
helpertype = normal
stateno = 4008
ID = 4008
name = "Otoko Portrait"
postype = back
ownpal = 1
persistent = 0
size.xscale = 0.5
size.yscale = 0.5 * (1.3333333 * gameheight / gamewidth)

[State 3201, palfx]
type = palfx
trigger1 = animelem = 6
time = 150
color = 32
sinadd = 80, 25, 0, 8
mul = 512, 256, 128
[State 3201, flames]
type = helper
trigger1 = animelem = 6 && !numhelper(7181)
helpertype = normal
stateno = 7181
ID = 7181
name = "flames"
postype = p1
ownpal = 1
facing = -1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1
persistent = 0
[State 3201, flames]
type = helper
trigger1 = animelem = 6 && numtarget && !numhelper(7180)
helpertype = normal
stateno = 7180
ID = 7180
name = "flames"
postype = p2
ownpal = 1
facing = -1
size.ground.front = 0
size.ground.back = 0
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1
persistent = 0

[State 3201, reducelife]
type = lifeset;add
trigger1 = animelem = 6
value = 1;-260
kill = 0
[State 3201, Snd]
type = playsnd
trigger1 = animelem = 6
value = 4, 23
channel = 0

[State 3201, Vel]
type = velset
trigger1 = animelem = 6
x = -1.5
y = -32

[State 3201, fix]
type = velset
trigger1 = winko
trigger1 = vel y > 0 && screenpos y < 0
x = 0
[State 3201, fix]
type = posset
trigger1 = winko
trigger1 = vel y > 0 && screenpos y < 0
x = -80 * facing

[State 3201, Type]
type = statetypeset
trigger1 = animelemtime(11) >= 0
statetype = A
physics = N
movetype = H
[State 3201, Accel]
type = veladd
trigger1 = animelemtime(11) >= 0
y = 0.75
[State 3201, Shake]
type = envshake
trigger1 = animelemtime(11) >= 0 && vel y > 0 && pos y >= 5
time = 18
fre = 120
ampl = 6
[State 3201, End]
type = changestate
trigger1 = animelemtime(11) >= 0 && vel y > 0 && pos y >= 5
value = 5100


;‘ÎÛ‘¤‚Ì“®‚«
[Statedef 3202]
type = S
physics = N
movetype = H
velset = 0, 0
ctrl = 0
[State 3202, Anim]
type = changeanim2
trigger1 = !time
value = 4602
[State 3202, palfx]
type = palfx
trigger1 = time = 76
time = 120
sinadd = 64, 64, 192, 480

[Statedef 3204]
type = S
physics = N
movetype = H
ctrl = 0
[State 3204, palfx]
type = palfx
trigger1 = !time
time = 100
color = 32
sinadd = 80, 25, 0, 8
mul = 512, 256, 128
[State 3204, End]
type = selfstate
trigger1 = 1
value = 5020


;”š”­
;--- ENEMY ---
[Statedef 7180]
physics = N
velset = 0, 0
anim = 99999
sprpriority = 4
[State 7180, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
[State 7180, flames]
type = explod
trigger1 = 1
anim = 7180
ID = 7180
sprpriority = 3
postype = p2
pos = (enemynear, const(size.mid.pos.x)), ifelse((enemynear, statetype = L), 0, (enemynear, const(size.mid.pos.y) + 10))
random = 40, 40
scale = 1, 1
ownpal = 1
[State 7180, Pos]
type = posadd
trigger1 = 1
x = ceil(p2dist x)
y = ceil(p2dist y)
[State End]
type = destroyself
triggerall = numenemy
trigger1 = enemynear, ctrl
trigger2 = enemynear, movetype != H || enemynear, stateno = 5300
trigger3 = enemynear, statetype = L && (enemynear, stateno != [5080, 5081])
[State End]
type = destroyself
trigger1 = !numenemy || time >= 120


;--- ENEMY ---
[Statedef 7181]
physics = N
velset = 0, 0
anim = 99999
sprpriority = 4
[State 7181, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
[State 7181, flames]
type = explod
trigger1 = 1
anim = 7180
ID = 7180
sprpriority = 3
postype = p1
vel = -.2, -.75
pos = (root, const(size.mid.pos.x)), ifelse((root, statetype = L), 0, (root, const(size.mid.pos.y) + 10))
random = 40, 40
scale = 0.5, 0.5
ownpal = 1
[State 7181, Pos]
type = posadd
trigger1 = 1
x = ceil(rootdist x)
y = ceil(rootdist y)
[State End]
type = destroyself
triggerall = numenemy
trigger1 = root, ctrl
trigger2 = root, movetype != H || root, stateno = 5300
trigger3 = root, statetype = L && (root, stateno != [5080, 5081])
[State End]
type = destroyself
trigger1 = time >= 120


;–Y‚ê‚Ê‘z‚¢(‰Œ‚)
[Statedef 3000]
type    = A
movetype= I
physics = N
juggle  = 8
ctrl = 0
velset = 0,0
anim = 4500
poweradd = -2000
sprpriority = 0

[state 3000,ƒJƒbƒgƒCƒ“]
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

[state 3000,ˆÃ“]]
type=superpause
trigger1=animelemtime(5)=0
pos=15,-75
anim=s6000
sound=s4999,0
poweradd=-1000
time=45
darken=0
p2defmul=1

[state 3000,–³“G]
type=nothitby
trigger1=animelemtime(5)>=0
trigger1=animelemtime(9)<0
trigger2=movehit
trigger2=numtarget(3000)
value=sca

[State 3000, Width]
type = Width
trigger1 = AnimElem = 9, >= 0
value = 15,0

;---------------------[‘¬“x]
[state y]
type = velset
trigger1 = time = 1
y = 0
x = 0

;---------------------[ƒGƒtƒFƒNƒg]
;---------------------[ƒXƒe[ƒgƒ`ƒFƒ“ƒW]
[state y]
type = changestate
trigger1 = time = 0
value = 20000
ctrl = 0

;‘±‚«¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤
[Statedef 20000]
type    = A
movetype= A
physics = N
velset = 0,0
ctrl = 0
anim = 4510
sprpriority = 0

;---------------------[]
;---------------------[ƒGƒtƒFƒNƒg]
;---------------------[’´•KE‹Z‰‰o]
;---------------------[UŒ‚]
[state y]
type = HitDef
Trigger1 = Time = 0
;persistent = 0
attr = A,HA
affectteam = B
damage    = 0, 0
priority  = 7, Hit
hitflag = MAFD
sparkno = -1
p1stateno = 3001
p2stateno = 3010 
p2facing = 1
fall.recovertime = 9999
fall.recover = 0
numhits = 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
kill = 0

;---------------------[ƒeƒ“ƒVƒ‡ƒ“DOWN]
;---------------------[‰¹]
[state y]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3210,0
channel = 1

;---------------------[ƒXƒe[ƒgƒ`ƒFƒ“ƒW]
[state y]
type = changestate
trigger1 = animtime = 0
value = 5050
ctrl = 0

;‘±‚«¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤
[Statedef 3001]
type    = A
movetype= A
physics = N
velset = 0,0
ctrl = 0
anim = 4520
poweradd = 0
sprpriority = 0

;---------------------[]
;---------------------[ƒGƒtƒFƒNƒg]
;---------------------[‰¹]
;---------------------[ƒXƒe[ƒgƒ`ƒFƒ“ƒW]
[state y]
type = changestate
trigger1 = animtime = 0
value = 3002
ctrl = 1

;‘±‚«¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤
[Statedef 3002]
type    = S
movetype= I
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 4570
poweradd = 0
sprpriority = 1

;---------------------[]
;---------------------[]
[state y]
type = ScreenBound
trigger1 = time = 0
value = 1
persistent = 0

[state y]
type = ScreenBound
trigger1 = anim = 2005
value = 0
persistent = 0

[state y]
type = AssertSpecial
trigger1 = time = [0,660]
flag = nobardisplay
flag2 = nomusic
SuperMoveTime = 9999
PauseMoveTime = 9999

[state y]
type = PosSet
trigger1 = 1 
x = ifelse(facing = 1, -70, ifelse(facing = -1, 70, 0))
y = 0

[state y]
type = PosSet
trigger1 = time = 2 
x = ifelse(facing = 1, -70, ifelse(facing = -1, 70, 0))
y = 0

[state y]
type = TargetBind
trigger1 = time = 4
pos = 125, 0

[state y]
type = BGPalFX
trigger1 = Time = 1
Time = 900
add  = -255,-255,-255

[state y]
type = BGPalFX
Trigger1 = time = 660
Time = 15
Add = 250,250,250
SuperMoveTime = 9999
PauseMoveTime = 9999

[state y]
Type = AllPalFx
Trigger1 = time = 660
Time = 15
Add = 250,250,250;+5,250+5,250+5
IgnoreHitPause = 1
SuperMoveTime = 9999
PauseMoveTime = 9999

[state y]
Type = AssertSpecial
Trigger1 = time = [660,668]
Flag = Noshadow
IgnoreHitPause = 1
SuperMoveTime = 9999
PauseMoveTime = 9999

[state y]
type = EnvShake
Trigger1 = time = [660,668]
time = 5
;freq = 60
ampl = 8
;phase = 90
ignorehitpause = 1
persistent = 1
SuperMoveTime = 9999
PauseMoveTime = 9999

[state y]
Type = BGPalFX
Trigger1 = time = 669
Time = 15
Add = 0,0,0
IgnoreHitPause = 1
SuperMoveTime = 9999
PauseMoveTime = 9999

;---------------------[ƒGƒtƒFƒNƒg]
;---------------------[ƒ|[ƒY]
[state y]
Type     = Pause
Trigger1 = time = [660,668]
Time     = 5
ignorehitpause = 1
persistent = 1
SuperMoveTime = 9999
PauseMoveTime = 9999

;---------------------[ƒAƒjƒƒ`ƒFƒ“ƒW]
[state y]
type = changeanim
trigger1 = time = 660
value = 197
ctrl = 0

;---------------------[ƒeƒ“ƒVƒ‡ƒ“UP]
;---------------------[ƒ{ƒ‹ƒe[ƒW‘‰Á]
;---------------------[‰¹]
[state 3002,–¼‘O‚ª—~‚µ‚¢‚È]
type=playsnd
trigger1=animelemtime(1)=0
trigger1 = anim = 4570
value = 3220,random%6
channel=0

[state y]
type = null;PlaySnd
trigger1 = animelem = 1
trigger1 = anim = 4570
value = 3210,0
channel = 0

[state y]
type = null;PlaySnd
trigger1 = animelem = 1
trigger1 = anim = 4570
value = 3220,random%3
channel = 0

[state y]
type = PlaySnd
trigger1 = animelemtime(1)=0
trigger1 = anim = 197
value = 3230,0
channel = 0

;---------------------[Ÿ—˜ƒGƒtƒFƒNƒg]
;---------------------[‹È]
;---------------------[ƒXƒe[ƒgƒ`ƒFƒ“ƒW]
[state y]
type = changestate
trigger1 = animtime = 0
trigger1 = anim = 197
value = 0
ctrl = 1

;P2ššššššššššššššššššššššššššššššššššššššš
[Statedef 3010]
Type    = A
MoveType= H
Physics = N
VelSet = 0,0
anim = 5030
SprPriority = 0

;---------------------[]
[state p2]
type = NotHitBy 
trigger1 = time = [1,650]
value = SCA

;---------------------[ƒXƒe[ƒgƒ`ƒFƒ“ƒW]
[state p2]
type = changestate
trigger1 = time = 190
value = 3011
ctrl = 0

;‘±‚«¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤
[Statedef 3011]
Type    = S
MoveType= H
Physics = S
anim = 5300
VelSet = 0,0
SprPriority = 0

;---------------------[]
[state p2]
type = NotHitBy 
trigger1 = time = [1,660]
value = SCA

[state p2]
type= AssertSpecial
trigger1 = time = [550,660]
flag  = invisible

;---------------------[ƒAƒjƒƒ`ƒFƒ“ƒW]
[state p2]
Type = ChangeAnim
TriggerAll = SelfAnimExist(5030)
Trigger1 = Time = 552
Value = 5030

[state p2]
type = ChangeAnim
TriggerAll = !SelfAnimExist(5300)
Trigger1 = 1
value = 0

[state p2]
type = ChangeAnim
Trigger1 = Time = 330
value = 0

[state p2]
type = ChangeAnim
TriggerAll = SelfAnimExist(10)
Trigger1 = time = 338
Trigger1 = anim = 0
value = 10

[state p2]
type = ChangeAnim
TriggerAll = !SelfAnimExist(10)
Trigger1 = time = 338
Trigger1 = anim = 0
value = 11

[state p2]
type = ChangeAnim
TriggerAll = !SelfAnimExist(7651)
Trigger1 = animtime = 0
Trigger1 = anim = 10
value = 11

[state p2]
type = ChangeAnim
Trigger1 = animtime = 0
Trigger1 = anim = 10
trigger1 = SelfAnimExist(7651) ;airƒtƒ@ƒCƒ‹‚É[Begin Action 7651]‚ÌƒAƒjƒ‚ª‘¶İ‚µ‚Ä‚¢‚é‚©‚ğŠm”F
value = 7651

;---------------------[ƒXƒe[ƒgƒ`ƒFƒ“ƒW]
[state p2]
type = changestate
trigger1 = time = 660
value = 3101
ctrl = 0

;‘±‚«¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤
[Statedef 3101]
Type    = A
MoveType= H
Physics = N
SprPriority = 0
VelSet = 0,-6.5

;---------------------[]
[state p2]
type = PalFX
trigger1 = time = 0
Time = 90
Mul =  255,255,255
Add = -30,-130,-130
SinAdd = 10,10,70,6

[state p2]
Type = HitFallSet
Trigger1 = 1
Value = 1
IgnoreHitPause = 1
Persistent = 0
SuperMoveTime = 9999
PauseMoveTime = 9999

;---------------------[‘¬“x]
[state p2]
Type = VelAdd
Trigger1 = Time >= 2
Y = .35

;---------------------[ƒ_ƒ[ƒW]
[state p2]
type = LifeAdd
trigger1 = time = 0
value = -555
Kill  = 1
absolute = 1

;---------------------[ƒqƒbƒg”‰ÁZ]
[state p2]
type =  hitadd
trigger1 = time = 0
value = 1

;---------------------[ƒAƒjƒƒ`ƒFƒ“ƒW]
[state p2]
Type = ChangeAnim
TriggerAll = SelfAnimExist(5061)
Trigger1 = Time = 1
Value = 5061

[state p2]
Type = ChangeAnim
TriggerAll =! SelfAnimExist(5061)
TriggerAll = SelfAnimExist(5030)
Trigger1 = Time = 1
Value = 5030

[state p2]
Type = ChangeAnim
TriggerAll = SelfAnimExist(5035)
Trigger1 =! SelfAnimExist(5030)
Trigger1 = Time = 1
Trigger2 = Anim = 5030
Trigger2 = AnimTime = 0
Value = 5035

[state p2]
Type = ChangeAnim
TriggerAll = SelfAnimExist(5050)
Trigger1 =! SelfAnimExist(5030)
Trigger1 =! SelfAnimExist(5035)
Trigger1 = Time = 1
Trigger2 = Anim = 5030
Trigger2 = AnimTime = 0
Trigger3 = Anim = 5035
Trigger3 = AnimTime = 0
Value = 5050

;---------------------[ƒXƒe[ƒg•Ô‹p]
[state p2]
Type = SelfState
Trigger1 = ((Pos Y >= 0 && Vel Y > 0))
Value = 5100


;===========================================================================
;ƒGƒCƒWƒƒ‚ÌÔÎ
[statedef 3100]
type=s
movetype=a
physics=s
velset=0,0
anim=3100
ctrl=0

[state 3100,–³“G]
type=nothitby
trigger1=time=[0,1]
value=sca

[state 3100,ƒJƒbƒgƒCƒ“]
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

[state 3100,ˆÃ“]]
type=superpause
trigger1=time=1
pos=-20,-75
anim=s6000
sound=s4999,0
poweradd=-1000
time=45
darken=0
p2defmul=1

[state 3010,‚Ş‚º‚¥[”g–ä‚Ìƒr[ƒg!]
type=playsnd
trigger1=animelemtime(2)=0
value=3100,random%2
channel=0

[state 3010,Œø‰Ê‰¹1]
type=playsnd
trigger1=animelemtime(2)=0
value=3101,1

[state 3010,ÔÎ]
type=explod
trigger1=animelemtime(2)=0
anim=8200;8100
pos=-107,-12
postype=p1
bindtime=-1
sprpriority=1
ownpal=1
removeongethit=1

[state 3010,Œø‰Ê‰¹2]
type=playsnd
trigger1=animelemtime(33)=0
value=3110,2

[state 3100,ƒK[ƒh”F¯‹——£]
type=attackdist
trigger1=1
value=0

[state 3100,ƒr[ƒ€]
type=projectile
trigger1=animelemtime(33)=-4
attr=s,hp
damage=413,413
getpower=0,0
animtype=back
pausetime=0,30
guard.dist=0
offset=0,-95
projid=3100
projanim=8102
projhits=ifelse(var(0)&16,1000,1)
projremove=0
projremovetime=21
guardflag=
sparkxy=0,0
hitsound=-1
p2stateno=5600
ground.velocity=-10,0
air.velocity=-10,0
yaccel=0
id=3100


[state 3100,ƒJƒƒ‰ŒÅ’è]
type=screenbound
trigger1=animelemtime(33)>=0
value=0

[state 3100,I—¹]
type=changestate
triggerall=animelemtime(41)>=0
trigger1=numtarget(3100)
trigger1=target,stateno=5602
trigger2=numtarget(3100)
trigger2=target,stateno=5100
trigger3=!numtarget(3100)
value=60

;===========================================================================
;---------------------------------------------------------------------------
;“÷•Ğ
[Statedef 4000]
type    = S
movetype= A
physics = S
juggle  = 0;0
;velset = 0,0
ctrl = 0
anim = 3020
poweradd = -1000
sprpriority = 2

[state 4000,ƒJƒbƒgƒCƒ“]
type=helper
triggerall=!numhelper(4999)
trigger1=animelemtime(1)=0
helpertype=normal
name="cutin"
id=4999
pos=0,0
postype=back
facing=1
stateno=4999
ownpal=0
supermovetime=2147483647

[state 4000,ˆÃ“]]
type=superpause
trigger1=animelemtime(1)=0
pos=15,-75
anim=s6000
sound=s4999,0
poweradd=-1000
time=45
darken=0
p2defmul=1

[state 4000,–³“G]
type=nothitby
trigger1=animelemtime(5)>=0
trigger1=animelemtime(9)<0
trigger2=movehit
trigger2=numtarget(3000)
value=sca

[State 4000, 1]
type = PlaySnd
trigger1 = time = 6
value = 4100, 0

[State 4000, 1]
type = PlaySnd
trigger1 = time = 30
value = 4110, random%5

[state 4000]
type = nothitby
trigger1 = time = 0
value = SCA
time = 66

[State 4000, 2]
type = explod
trigger1 = animelem = 5
trigger2 = animelem = 7
trigger3 = animelem = 9
trigger4 = animelem = 11
trigger5 = animelem = 13
trigger6 = animelem = 15
trigger7 = animelem = 17
trigger8 = animelem = 19
trigger9 = animelem = 21
trigger10 = animelem = 23
trigger11 = animelem = 25
trigger12 = animelem = 27
trigger13 = animelem = 29
trigger14 = animelem = 31
trigger15 = animelem = 33
trigger16 = animelem = 35
trigger17 = animelem = 37
trigger18 = animelem = 39
trigger19 = animelem = 41
trigger20 = animelem = 43
anim = 3021
sprpriority = 3
pos = -15,-70
postype = p1
removeongethit = 1
ownpal = 1
removetime = 35
vel = -3,-6
accel = 0,0.5

[State 4000, 2]
type = explod
trigger1 = animelem = 5
trigger2 = animelem = 7
trigger3 = animelem = 9
trigger4 = animelem = 11
trigger5 = animelem = 13
trigger6 = animelem = 15
trigger7 = animelem = 17
trigger8 = animelem = 19
trigger9 = animelem = 21
trigger10 = animelem = 23
trigger11 = animelem = 25
trigger12 = animelem = 27
trigger13 = animelem = 29
trigger14 = animelem = 31
trigger15 = animelem = 33
trigger16 = animelem = 35
trigger17 = animelem = 37
trigger18 = animelem = 39
trigger19 = animelem = 41
trigger20 = animelem = 43
anim = 3023
sprpriority = 3
pos = 23,-71
postype = p1
removeongethit = 1
ownpal = 1

[State 4000, 2]
type = explod
trigger1 = animelem = 6
trigger2 = animelem = 8
trigger3 = animelem = 10
trigger4 = animelem = 12
trigger5 = animelem = 14
trigger6 = animelem = 16
trigger7 = animelem = 18
trigger8 = animelem = 20
trigger9 = animelem = 22
trigger10 = animelem = 24
trigger11 = animelem = 26
trigger12 = animelem = 28
trigger13 = animelem = 30
trigger14 = animelem = 32
trigger15 = animelem = 34
trigger16 = animelem = 36
trigger17 = animelem = 38
trigger18 = animelem = 40
trigger19 = animelem = 42
anim = 3023
sprpriority = 3
pos = 24,-70
postype = p1
removeongethit = 1
ownpal = 1

[State 4100, 1]
type = PlaySnd
trigger1 = animelem = 5
trigger2 = animelem = 7
trigger3 = animelem = 9
trigger4 = animelem = 11
trigger5 = animelem = 13
trigger6 = animelem = 15
trigger7 = animelem = 17
trigger8 = animelem = 19
trigger9 = animelem = 21
trigger10 = animelem = 23
trigger11 = animelem = 25
trigger12 = animelem = 27
trigger13 = animelem = 29
trigger14 = animelem = 31
trigger15 = animelem = 33
trigger16 = animelem = 35
trigger17 = animelem = 37
trigger18 = animelem = 39
trigger19 = animelem = 41
trigger20 = animelem = 43
value = 3020, 1

[State 4000, 1]
type = null;PlaySnd
trigger1 = animelem = 6
trigger2 = animelem = 8
trigger3 = animelem = 10
trigger4 = animelem = 12
trigger5 = animelem = 14
trigger6 = animelem = 16
trigger7 = animelem = 18
trigger8 = animelem = 20
trigger9 = animelem = 22
trigger10 = animelem = 24
trigger11 = animelem = 26
trigger12 = animelem = 28
trigger13 = animelem = 30
trigger14 = animelem = 32
trigger15 = animelem = 34
trigger16 = animelem = 36
trigger17 = animelem = 38
trigger18 = animelem = 40
trigger19 = animelem = 42
value = 3020, 1

[State 4100, 2]
type = Projectile
trigger1 = animelem = 5
trigger2 = animelem = 7
trigger3 = animelem = 9
trigger4 = animelem = 11
trigger5 = animelem = 13
trigger6 = animelem = 15
trigger7 = animelem = 17
trigger8 = animelem = 19
trigger9 = animelem = 21
trigger10 = animelem = 23
trigger11 = animelem = 25
trigger12 = animelem = 27
trigger13 = animelem = 29
trigger14 = animelem = 31
trigger15 = animelem = 33
trigger16 = animelem = 35
trigger17 = animelem = 37
trigger18 = animelem = 39
trigger19 = animelem = 41
trigger20 = animelem = 43
projanim = 3022
projhitanim = -1
offset = 23,-71
velocity = 30,0
attr = S, HP
animtype  = Medium
damage    = 7, 2
priority  = 6
guardflag = MA
hitflag = MAFD
pausetime = 0,10
sparkno = s6101
guard.sparkno = s6125
sparkxy = 0,-15 + var(13)
hitsound   = s3,8
guardsound = s3,6
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -4
air.velocity = -4,-3
air.fall = 1
down.velocity = -7,-2
down.hittime = 5
getpower = 0,0

[State 4200, 2]
type = varrandom
trigger1 = 1
v = 13
range = 0,30

[State 4100, 2]
type = Projectile
trigger1 = animelem = 6
trigger2 = animelem = 8
trigger3 = animelem = 10
trigger4 = animelem = 12
trigger5 = animelem = 14
trigger6 = animelem = 16
trigger7 = animelem = 18
trigger8 = animelem = 20
trigger9 = animelem = 22
trigger10 = animelem = 24
trigger11 = animelem = 26
trigger12 = animelem = 28
trigger13 = animelem = 30
trigger14 = animelem = 32
trigger15 = animelem = 34
trigger16 = animelem = 36
trigger17 = animelem = 38
trigger18 = animelem = 40
trigger19 = animelem = 42
trigger20 = animelem = 44
projanim = 3022
projhitanim = -1
offset = 24,-70
velocity = 30,0
attr = S, HP
animtype  = Medium
damage    = 7, 2
priority  = 6
guardflag = MA
hitflag = MAFD
pausetime = 0,10
sparkno = s6104
guard.sparkno = s6125
sparkxy = 0,-15 + var(13)
hitsound = s1, 5
guardsound = s1, 8
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -4
air.velocity = -4,-3
air.fall = 1
down.velocity = -7,-2
down.hittime = 5
getpower = 0,0

[State 4000, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; —ó•—ŒEã
; 
[Statedef 4100]
type    = S
movetype= A
physics = N
juggle  = 0;4
poweradd= 40
anim = 1000
ctrl = 0
sprpriority = 2

[State 108, 0]
type = VelAdd
triggerall = PrevStateNo != 20;•à‚«‚Ì‚Í–³Œø
trigger1   = time >= 0
trigger1   = Vel X > 0
x = -0.32

[State 108, 0]
type = Velset
trigger1   = time >= 0
trigger1   = Vel X < 0
trigger2   = PrevStateNo = 20;•à‚«‚Ì‚Í–³Œø
x = 0

[State 3000, Super A]
type = explod
trigger1 = AnimElem = 1
anim = 1001
pos = 0,0
postype = p1
bindtime = -1
sprpriority = 3
removeongethit = 1
ownpal = 1

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1000, 0
channel = 0

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1000, 1

[State 4100, 2]
type = Projectile
trigger1 = AnimElem = 4
projanim = 1002
projid = 1000
projhitanim = 1003
offset = 50,0
velocity = 4.5,0
attr = S, SP
animtype  = Medium
damage    = 80, 4
priority  = 4
guardflag = MA
hitflag = MAFD
pausetime = 0,10
sparkno = s825
guard.sparkno = s835
sparkxy = 0,0
hitsound = s1, 1
guardsound = s1, 6
ground.type = Low
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -4
air.velocity = -4,-3
air.fall = 1
down.velocity = -7,-2
down.hittime = 5

[State 1000, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;‹ó’†ƒn[ƒhƒGƒbƒWE‹­
[Statedef 4200]
type    = A
movetype= A
physics = N
juggle  = 0;6
poweradd= 35
ctrl = 0
anim = 1065
sprpriority = 2

[State 3000, Super A]
type = null;posadd
trigger1 = time = 0
y = -30

[State 3000, Super A]
type = velset
trigger1 = time = 0
y = 0

[State 3000, Super A]
type = veladd
trigger1 = time >= 13
y = 0.4

[State 3000, Super A]
type = explod
trigger1 = AnimElem = 5
anim = 1024
pos = -35,-30
postype = p1
bindtime = -1
sprpriority = 3
removeongethit = 1
ownpal = 1

[State 10,combo]
type = Varadd
trigger1 = movehit
persistent = 0
ignorehitpause = 1
v = 5
value = 1

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1020, 0

;ˆê‰ñ–Ú‚ÌUŒ‚ƒXƒe[ƒg
[State 410, 2]
type = HitDef
trigger1 = AnimElem = 5
attr = A, SA
damage    = 87
animtype  = hard
hitflag = MAFD
guardflag = HA
pausetime = 10,10
sparkno = s820
guard.sparkno = s835
sparkxy = -10,-75
hitsound = s1, 1
guardsound = s1, 6
ground.type = high
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -4,-4
air.velocity = -4,-4
fall = 1
fall.recovertime = 45
down.velocity = -7,-2
down.hittime = 5

[State 410, 4]
type = velset
trigger1 = Animelem = 4
x = 10

[State 410, 4]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 30
value = 1061

;---------------------------------------------------------------------------
; ƒSƒbƒhƒtƒ@[ƒU[
[Statedef 4500]
type = S
movetype = I
physics = S
ctrl = 0
anim = 4500
velset = 0,0
sprpriority = 0

[State 1001,1]
type = NotHitBy
trigger1 = time = 0
value = SCA,AA,AP,AT
time = 46
 
[State 1000,1]
type = HitOverride
trigger1 = time = 7
trigger1 = P2BodyDist X = [-20,100]
attr = SC,NA,SA,HA
slot = 1
stateno = 4550
time = 1
 
[State 1000,1]
type = HitOverride
trigger1 = time = 8
trigger1 = P2BodyDist X = [-20,100]
attr = SC,NA,SA,HA
slot = 1
stateno = 4550
time = 1

State 1000,1]
type = HitOverride
trigger1 = time = 9
trigger1 = P2BodyDist X = [-20,100]
attr = SC,NA,SA,HA
slot = 1
stateno = 4550
time = 1
 
[State 1000,1]
type = HitOverride
trigger1 = time = 10
trigger1 = P2BodyDist X = [-20,100]
attr = SC,NA,SA,HA
slot = 1
stateno = 4550
time = 1

[State 1000,1]
type = HitOverride
trigger1 = time = 11
trigger1 = P2BodyDist X = [-20,100]
attr = SC,NA,SA,HA
slot = 1
stateno = 4550
time = 1
 
[State 1000,1]
type = HitOverride
trigger1 = time = 12
trigger1 = P2BodyDist X = [-20,100]
attr = SC,NA,SA,HA
slot = 1
stateno = 4550
time = 2

[State 1000,1]
type = HitOverride
trigger1 = time = 13
trigger1 = P2BodyDist X = [-20,100]
attr = SC,NA,SA,HA
slot = 1
stateno = 4550
time = 1

[State 1000,1]
type = HitOverride
trigger1 = time = 14
trigger1 = P2BodyDist X = [-20,100]
attr = SC,NA,SA,HA
slot = 1
stateno = 4550
time = 2
 
[State 1000,1]
type = HitOverride
trigger1 = time = 16
trigger1 = P2BodyDist X = [-20,100]
attr = SC,NA,SA,HA
slot = 1
stateno = 4550
time = 2
 
[State 1000,1]
type = HitOverride
trigger1 = time = 18
trigger1 = P2BodyDist X = [-20,100]
attr = SC,NA,SA,HA
slot = 1
stateno = 4550
time = 2
 
[State 1000,1]
type = HitOverride
trigger1 = time = 20
trigger1 = P2BodyDist X = [-20,100]
attr = SC,NA,SA,HA
slot = 1
stateno = 4550
time = 2
 
[State 1000,1]
type = HitOverride
trigger1 = time = 22
trigger1 = P2BodyDist X = [-20,100]
attr = SC,NA,SA,HA
slot = 1
stateno = 4550
time = 2

[State 1000,1]
type = HitOverride
trigger1 = time = 24
trigger1 = P2BodyDist X = [-20,100]
attr = SC,NA,SA,HA
slot = 1
stateno = 4550
time = 2
 
[State 1000,1]
type = HitOverride
trigger1 = time = 26
trigger1 = P2BodyDist X = [-20,100]
attr = SC,NA,SA,HA
slot = 1
stateno = 4550
time = 2
 
[State 1000,1]
type = HitOverride
trigger1 = time = 28
trigger1 = P2BodyDist X = [-20,100]
attr = SC,NA,SA,HA
slot = 1
stateno = 4550
time = 2
 
[State 1000,1]
type = HitOverride
trigger1 = time = 30
trigger1 = P2BodyDist X = [-20,100]
attr = SC,NA,SA,HA
slot = 1
stateno = 4550
time = 2
 
[State 1000,1]
type = HitOverride
trigger1 = time = 32
trigger1 = P2BodyDist X = [-20,100]
attr = SC,NA,SA,HA
slot = 1
stateno = 4550
time = 2

[State 1000,1]
type = HitOverride
trigger1 = time = 34
trigger1 = P2BodyDist X = [-20,100]
attr = SC,NA,SA,HA
slot = 1
stateno = 4550
time = 2
 
[State 1000,1]
type = HitOverride
trigger1 = time = 36
trigger1 = P2BodyDist X = [-20,100]
attr = SC,NA,SA,HA
slot = 1
stateno = 4550
time = 2
 
[State 1000,1]
type = HitOverride
trigger1 = time = 38
trigger1 = P2BodyDist X = [-20,100]
attr = SC,NA,SA,HA
slot = 1
stateno = 4550
time = 2

[State 1000,1]
type = HitOverride
trigger1 = time = 40
trigger1 = P2BodyDist X = [-20,100]
attr = SC,NA,SA,HA
slot = 1
stateno = 4550
time = 2

[State 1000,1]
type = HitOverride
trigger1 = time = 42
trigger1 = P2BodyDist X = [-20,100]
attr = SC,NA,SA,HA
slot = 1
stateno = 4550
time = 2

[State 1000,1]
type = HitOverride
trigger1 = time = 44
trigger1 = P2BodyDist X = [-20,100]
attr = SC,NA,SA,HA
slot = 1
stateno = 4550
time = 2

[State 1000,1]
type = HitOverride
trigger1 = time = 46
trigger1 = P2BodyDist X = [-20,100]
attr = SC,NA,SA,HA
slot = 1
stateno = 4550
time = 2

[State 1000,1]
type = HitOverride
trigger1 = time = 48
trigger1 = P2BodyDist X = [-20,100]
attr = SC,NA,SA,HA
slot = 1
stateno = 4550
time = 2

[State 1000,1]
type = HitOverride
trigger1 = time = 50
trigger1 = P2BodyDist X = [-20,100]
attr = SC,NA,SA,HA
slot = 1
stateno = 4550
time = 2

[State 1000,1]
type = HitOverride
trigger1 = time = 52
trigger1 = P2BodyDist X = [-20,100]
attr = SC,NA,SA,HA
slot = 1
stateno = 4550
time = 2

[State 1000,1]
type = HitOverride
trigger1 = time = 54
trigger1 = P2BodyDist X = [-20,100]
attr = SC,NA,SA,HA
slot = 1
stateno = 4550
time = 2

[State 1000,1]
type = HitOverride
trigger1 = time = 56
trigger1 = P2BodyDist X = [-20,100]
attr = SC,NA,SA,HA
slot = 1
stateno = 4550
time = 2

[State 1000,1]
type = HitOverride
trigger1 = time = 58
trigger1 = P2BodyDist X = [-20,100]
attr = SC,NA,SA,HA
slot = 1
stateno = 4550
time = 2

[State 1000,1]
type = HitOverride
trigger1 = time = 60
trigger1 = P2BodyDist X = [-20,100]
attr = SC,NA,SA,HA
slot = 1
stateno = 4550
time = 2

[State 1000,1]
type = HitOverride
trigger1 = time = 62
trigger1 = P2BodyDist X = [-20,100]
attr = SC,NA,SA,HA
slot = 1
stateno = 4550
time = 2

[State 1000,1]
type = HitOverride
trigger1 = time = 64
trigger1 = P2BodyDist X = [-20,100]
attr = SC,NA,SA,HA
slot = 1
stateno = 4550
time = 2

[State 1000,1]
type = HitOverride
trigger1 = time = 66
trigger1 = P2BodyDist X = [-20,100]
attr = SC,NA,SA,HA
slot = 1
stateno = 4550
time = 2

[State 1000,1]
type = HitOverride
trigger1 = time = 68
trigger1 = P2BodyDist X = [-20,100]
attr = SC,NA,SA,HA
slot = 1
stateno = 4550
time = 2

[State 1000,1]
type = HitOverride
trigger1 = time = 70
trigger1 = P2BodyDist X = [-20,100]
attr = SC,NA,SA,HA
slot = 1
stateno = 4550
time = 2

[State 230, 3]
type = poweradd
trigger1 = Time = 6
value = -1000

[state 6000]
type = pause
trigger1 = time = 6
time = 40
movetime = 40

[state 6000]
type = playsnd
trigger1 = time = 6
value = 4,0

[state 6003]
type = helper
trigger1 = time = 6
name = "cutin"
helpertype = normal
stateno = 6100
id = 3100
pos = 0,0
postype = back
ownpal = 1
keyctrl = 0
sprpriority = -3
supermovetime = 9999999
pausemovetime = 9999999

[state 6003]
type = helper
trigger1 = time = 6
name = "haikei"
helpertype = normal
stateno = 6101
id = 3101
pos = 0,0
postype = left
ownpal = 1
keyctrl = 0
sprpriority = -5
supermovetime = 9999999
pausemovetime = 9999999

[State 1000, 5]
type = explod
trigger1 = time = 6
anim = 3103
pos = 0,239
postype = left
sprpriority = -4
bindtime = -1
supermovetime = 9999999
pausemovetime = 9999999
removeongethit = 1
ownpal = 1

[State 1000, 5]
type = explod
trigger1 = time = 6
anim = 3102
pos = ceil(0*const(size.xscale)),ceil(-83*const(size.yscale))
postype = p1
sprpriority = 4
bindtime = -1
pausemovetime = -1
removeongethit = 1
ownpal = 1

[State 1000,2]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;-------------------------------------------------------
[statedef 4550]
 type    = S
 movetype= A 
 physics = S
 juggle  = 1
 ctrl = 0
 anim = 4550
 
[State 702, ‚·‚è”²‚¯]
type = PlayerPush
trigger1 = 1
value = 0

[State 1001,1]
type = NotHitBy
trigger1 = time = 0
 value = SCA,AA,AP,AT
 time = 100
 
[State 200, 1]
Type = HitDef
Trigger1 = Time = 0
trigger1 = NumEnemy = 1
hitflag = M
Attr = S, HT
Damage = 0, 0
GetPower = 0, 0
AnimType = Hard
Priority = 7, Dodge
PauseTime = 0, 0
HitSound = -1, -1
SparkNo = -1
GuardDist = 0
P2StateNo = 17003500

[State 200, 1]
Type = HitDef
Trigger1 = Time = 0
trigger1 = NumEnemy != 1
hitflag = M
Attr = S, HA
Damage = 0, 0
GetPower = 0, 0
AnimType = Hard
Priority = 7, Dodge
PauseTime = 0, 0
HitSound = -1, -1
SparkNo = -1
GuardDist = 0
P2StateNo = 17003500

[State 1001,4]
type = AssertSpecial
trigger1 = 1
flag = unguardable

[State 1000,2]
type = changestate
trigger1 = time > 100
trigger1 = Enemynear(var(34)),anim != 195
trigger1 = P2StateNo = 17003500
value = 4560

[state 6000]
type = playsnd
trigger1 = time = 20
trigger1 = NumEnemy = 1
trigger1 = p2name = "1st DIO"
value = 600,0

[State 1000,2]
type = changestate
trigger1 = time = 110
trigger1 = P2StateNo != 17003500
value = 0
ctrl = 1

;-------------------------------------------------------------------------
;‚»‚¤‚¾‚Èc
[Statedef 4560]
type    = S
movetype= A 
physics = S
juggle  = 1
ctrl = 0
anim = 4560

[State 702, ‚·‚è”²‚¯]
type = PlayerPush
trigger1 = 1
value = 0

[State 5201, 1]
type = turn
trigger1 = time = 0
trigger1 = P2Dist X <= -12
 
[State 1001,1];–³“G‚Å‚¢‚¢‚Å‚·‚æ‚Ë
type = NotHitBy;–³“G‚ğw’è‚·‚é–½—ß‚Å‚·
trigger1 = time = 0
 value = SCA,AA,AP,AT
 time = 60

[state 6000]
type = pause
trigger1 = time = 6
time = 40
movetime = 40

[state 6000]
type = playsnd
trigger1 = time = 6
value = 4,0

[State 230, 3]
type = poweradd
trigger1 = Time = 6
value = -2000

[state 4500,ƒJƒbƒgƒCƒ“]
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

[state 4500,ˆÃ“]]
type=superpause
trigger1=animelemtime(5)=0
pos=15,-75
anim=s6000
sound=s4999,0
poweradd=-1000
time=45
darken=0
p2defmul=1

[state 4500,–³“G]
type=nothitby
trigger1=animelemtime(5)>=0
trigger1=animelemtime(9)<0
trigger2=movehit
trigger2=numtarget(3000)
value = SCA,AA,AP,AT

[State 1000, 5]
type = explod
trigger1 = time = 10
anim = 3103
pos = 0,239
postype = left
sprpriority = -4
bindtime = -1
supermovetime = 9999999
pausemovetime = 9999999
removeongethit = 1
ownpal = 1

[State 1000, 5]
type = explod
trigger1 = time = 7
anim = 3102
pos = ceil(-15*const(size.xscale)),ceil(-103*const(size.yscale))
postype = p1
sprpriority = 5
bindtime = -1
pausemovetime = -1
removeongethit = 1
ownpal = 1

[State 1000,2]
type = changestate
trigger1 = time = 45
value = 4570
ctrl = 0

;-------------------------------------------------------
;“–‚Ä‚é
[statedef 4570]
type    = S
movetype= A 
physics = S
juggle  = 1
ctrl = 0
anim = 4570

[State 702, ‚·‚è”²‚¯]
type = PlayerPush
trigger1 = 1
value = 0

[State 1000, 5]
type = explod
trigger1 = time = 0
anim = 100092
pos = -18,0
postype = p1
sprpriority = -4

[State 191, 3]
type = PlaySnd
trigger1 = time = 0
value = 0,2

[State 1001,1]
type = NotHitBy
trigger1 = time = 0
 value = SCA,AA,AP,AT
 time = 60
 
[state 6000]
type = playsnd
trigger1 = time = 5
value = 1,5

[State 1000, 5]
type = explod
trigger1 = time = 5
anim = 850
pos = 0,-60
postype = p2
sprpriority = 5

[State 1000,2]
type = changestate
trigger1 = time = 10
value = 405100004
ctrl = 0

;----------------------------------------------------------
;‚ ‚½‚Á‚½
[statedef 405100004]
type    = S
movetype= A 
physics = S
juggle  = 1
ctrl = 0
anim = 4573

[State 702, ‚·‚è”²‚¯]
type = PlayerPush
trigger1 = 1
value = 0

[State 1001,1]
type = NotHitBy
trigger1 = time = 0
value = SCA,AA,AP,AT
time = 140

[state 6000]
type = playsnd
trigger1 = time = 6
value = 500,10
volume = 180

[State 1000,2]
type = changestate
trigger1 = time = 140
value = 405100002
ctrl = 0

;-------------------------------------------------------
[statedef 405100002]
type    = S
movetype= A 
physics = S
juggle  = 1
ctrl = 0
anim = 4570

[State 702, ‚·‚è”²‚¯]
type = PlayerPush
trigger1 = 1
value = 0
 
[State 1000, 5]
type = explod
trigger1 = time = 0
anim = 4574
pos = 20,0
postype = p1
sprpriority = 4
bindtime = -1
scale = 0.93,1

[State 1001,1]
type = NotHitBy
trigger1 = time = 0
 value = SCA,AA,AP,AT
 time = 200

[State 1027, Sound]
type = PlaySnd
trigger1 = time = 15
value = 500,11
volume = 180

[State 1027, Sound]
type = PlaySnd
trigger1 = time = 25
trigger2 = time = 35
trigger3 = time = 45
trigger4 = time = 55
trigger5 = time = 65
trigger6 = time = 75
trigger7 = time = 85
trigger8 = time = 95
trigger9 = time = 105
trigger10 = time = 115
trigger11 = time = 125
trigger12 = time = 135
trigger13 = time = 145
trigger14 = time = 155
trigger15 = time = 165
value = 1,5

[State 1027, Sound]
type = PlaySnd
trigger1 = time = 32
trigger2 = time = 63
trigger3 = time = 90
trigger4 = time = 117
trigger5 = time = 144
value = 1,2

[State 1027, Sound]
type = PlaySnd
trigger1 = time = 45
trigger2 = time = 72
trigger3 = time = 99
trigger4 = time = 126
trigger5 = time = 153
value = 1,5

[State 1060, 2]
type = PlaySnd
trigger1 = time = 183
value = 7,4

[State 1060, 2]
type = EnvShake
trigger1 = time = 183
freq = 180
Time = 30

[State 1000, 5]
type = explod
trigger1 = time = 183
anim = 850
pos = 0,-80
postype = p2
sprpriority = 5

[State 1000, 5]
type = hitadd
trigger1 = time = 20
trigger2 = time = 22
trigger3 = time = 24
trigger4 = time = 26
trigger5 = time = 28
trigger6 = time = 30
trigger7 = time = 32
trigger8 = time = 34
trigger9 = time = 36
trigger10 = time = 38
trigger11 = time = 40
trigger12 = time = 42
trigger13 = time = 44
trigger14 = time = 46
trigger15 = time = 48
trigger16 = time = 50
trigger17 = time = 52
trigger18 = time = 54
trigger19 = time = 56
trigger20 = time = 58
trigger21 = time = 60
trigger22 = time = 62
trigger23 = time = 64
trigger24 = time = 66
trigger25 = time = 68
trigger26 = time = 70
trigger27 = time = 72
trigger28 = time = 74
trigger29 = time = 76
trigger30 = time = 78
trigger31 = time = 80
trigger32 = time = 82
trigger33 = time = 84
trigger34 = time = 86
trigger35 = time = 88
trigger36 = time = 90
trigger37 = time = 92
trigger38 = time = 94
trigger39 = time = 96
trigger40 = time = 98
trigger41 = time = 100
trigger42 = time = 102
trigger43 = time = 104
trigger44 = time = 106
trigger45 = time = 108
trigger46 = time = 110
trigger47 = time = 112
trigger48 = time = 114
trigger49 = time = 116
trigger50 = time = 118
trigger51 = time = 120
trigger52 = time = 122
trigger53 = time = 124
trigger54 = time = 126
trigger55 = time = 128
trigger56 = time = 130
trigger57 = time = 132
trigger58 = time = 134
trigger59 = time = 136
trigger60 = time = 138
trigger61 = time = 140
trigger62 = time = 142
trigger63 = time = 144
trigger64 = time = 146
trigger65 = time = 148
trigger66 = time = 150
trigger67 = time = 152
trigger68 = time = 154
trigger69 = time = 156
trigger70 = time = 158
trigger71 = time = 160
trigger72 = time = 162
trigger73 = time = 164
trigger74 = time = 166
trigger75 = time = 168
trigger76 = time = 170
trigger77 = time = 172
trigger78 = time = 174
trigger79 = time = 176
trigger80 = time = 178
trigger81 = time = 180
trigger82 = time = 183
value = 2

[State 1000, 5]
type = explod
trigger1 = time = 25
trigger2 = time = 35
trigger3 = time = 45
trigger4 = time = 55
trigger5 = time = 65
trigger6 = time = 75
trigger7 = time = 85
trigger8 = time = 95
trigger9 = time = 105
trigger10 = time = 115
trigger11 = time = 125
trigger12 = time = 135
trigger13 = time = 145
trigger14 = time = 155
trigger15 = time = 165
anim = 850
pos = 10,-80
postype = p2
sprpriority = 5

[State 1000, 5]
type = explod
trigger1 = time = 18
trigger2 = time = 27
trigger3 = time = 35
trigger4 = time = 45
trigger5 = time = 57
trigger6 = time = 69
trigger7 = time = 85
trigger8 = time = 90
trigger9 = time = 117
trigger10 = time = 144
anim = 850
pos = 20,-30
postype = p2
sprpriority = 5

[State 1000, 5]
type = explod
trigger1 = time = 13
trigger2 = time = 53
trigger3 = time = 63
trigger4 = time = 73
trigger5 = time = 83
trigger6 = time = 93
trigger7 = time = 103
trigger8 = time = 113
trigger9 = time = 123
trigger10 = time = 133
trigger11 = time = 143
trigger12 = time = 153
anim = 850
pos = -10,-50
postype = p2
sprpriority = 5

[State 1000,2];“G‚ªˆêlA¶‚«‚Ä‚é
type = changestate
trigger1 = time = 200
trigger1 = NumEnemy = 1
trigger1 = Enemynear(var(34)),alive = 1
value = 405100013
ctrl = 1

[State 1000,2];“G‚ªˆêlA“|‚µ‚½
type = changestate
trigger1 = time = 200
trigger1 = NumEnemy = 1
trigger1 = Enemynear(var(34)),alive = 0
value = 405101013
ctrl = 1

[State 1000,2];“G‚ª“ñlA—¼•û¶‚«‚Ä‚é
type = changestate
trigger1 = time = 200
trigger1 = NumEnemy = 2
trigger1 = enemynear(0),alive = 1
trigger1 = enemynear(1),alive = 1
value = 405100013
ctrl = 1

[State 1000,2];“G‚ª“ñlA•Ğ•û“|‚µ‚½
type = changestate
trigger1 = time = 200
trigger1 = NumEnemy = 2
trigger1 = enemynear(0),alive = 1
trigger1 = enemynear(1),alive = 0
value = 405100013
ctrl = 1

[State 1000,2];“G‚ª“ñlA•Ğ•û“|‚µ‚½
type = changestate
trigger1 = time = 200
trigger1 = NumEnemy = 2
trigger1 = enemynear(0),alive = 0
trigger1 = enemynear(1),alive = 1
value = 405100013
ctrl = 1

[State 1000,2];“G‚ª“ñlA—¼•û“|‚µ‚½
type = changestate
trigger1 = time = 200
trigger1 = NumEnemy = 2
trigger1 = enemynear(0),alive = 0
trigger1 = enemynear(1),alive = 0
value = 405101013
ctrl = 1

[State 1000,2];“G‚ª“ñl‚Ç‚±‚ë‚¶‚á‚È‚¢
type = changestate
trigger1 = time = 200
trigger1 = NumEnemy != 1
trigger1 = NumEnemy != 2
value = 405100013
ctrl = 1

[State 180, 1];“G‚ªˆêlA“ÁêŸ—˜ƒtƒ‰ƒO
type = varset
trigger1 = NumEnemy = 1
trigger1 = Enemynear(var(34)),alive = 0
v = 35
value = 2

[State 180, 1];“G‚ª“ñlˆÈãA“ÁêŸ—˜ƒtƒ‰ƒO
type = varset
trigger1 = NumEnemy = 2
trigger1 = enemynear(0),alive = 0
trigger1 = enemynear(1),alive = 0
v = 35
value = 2

;------------------------------------------------
;I—¹
[statedef 405100013]
type    = S
movetype= A 
physics = S
juggle  = 1
ctrl = 0
anim = 19011

[State 702, ‚·‚è”²‚¯]
type = PlayerPush
trigger1 = 1
value = 0

[State 1001,1];–³“G‚Å‚¢‚¢‚Å‚·‚æ‚Ë
type = NotHitBy;–³“G‚ğw’è‚·‚é–½—ß‚Å‚·
trigger1 = time = 0
 value = SCA,AA,AP,AT
 time = 10

[State 193,1]
type = Helper
trigger1 = time = 20
trigger1 = NumHelper(10000) = 0
name = "star platinum"
sprpriority = 4
pos = 20,0
postype = p1
stateno = 1610600010
id = 10000
helpertype = normal
keyctrl = 0 
ownpal = 1
pausemovetime = var(14) * 9999999999999

[State 200, 1]
Type = HitDef
triggerall = AnimElem = 8
trigger1 = p2name = "Jotaro Kujo" || p4name = "Jotaro Kujo"
trigger2 = p2name = "dio" || p4name = "dio"
trigger3 = p2name = "final dio" || p4name = "final dio"
hitflag = D
Attr = S, HA
Damage = 0, 0
GetPower = 0, 0
Priority = 7, Dodge
PauseTime = 0, 0
NumHits = 0
HitSound = -1, -1
SparkNo = -1
GuardDist = 0

[State 1000,2]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;------------------------------------------------
;I—¹(KO)
[statedef 405101013]
type    = S
movetype= A 
physics = S
juggle  = 1
ctrl = 0
anim = 19025

[State 702, ‚·‚è”²‚¯]
type = PlayerPush
trigger1 = 1
value = 0

[State 1001,1];–³“G‚Å‚¢‚¢‚Å‚·‚æ‚Ë
type = NotHitBy;–³“G‚ğw’è‚·‚é–½—ß‚Å‚·
trigger1 = time = 0
 value = SCA,AA,AP,AT
 time = 10

[State 1000,2]
type = changestate
trigger1 = animtime = 0
value = 5150
ctrl = 0

;--------------------------------------------------------------
;--------------------------------------------------------------
;‘Šè
[Statedef 161060]
type    = A
movetype= H
physics = N
velset = 0,0

[state 3000]
type = nothitby
trigger1 = time = 0
 value = SCA,AA,AP,AT
 time = 220

[State 702, ‚·‚è”²‚¯]
type = PlayerPush
trigger1 = 1
value = 0

[State 702, ƒ‰ƒCƒt‘Œ¸]
type = LifeAdd
trigger1 = time = 20
trigger2 = time = 22
trigger3 = time = 24
trigger4 = time = 26
trigger5 = time = 28
trigger6 = time = 30
trigger7 = time = 32
trigger8 = time = 34
trigger9 = time = 36
trigger10 = time = 38
trigger11 = time = 40
trigger12 = time = 42
trigger13 = time = 44
trigger14 = time = 46
trigger15 = time = 48
trigger16 = time = 50
trigger17 = time = 52
trigger18 = time = 54
trigger19 = time = 56
trigger20 = time = 58
trigger21 = time = 60
trigger22 = time = 62
trigger23 = time = 64
trigger24 = time = 66
trigger25 = time = 68
trigger26 = time = 70
trigger27 = time = 72
trigger28 = time = 74
trigger29 = time = 76
trigger30 = time = 78
trigger31 = time = 80
trigger32 = time = 82
trigger33 = time = 84
trigger34 = time = 86
trigger35 = time = 88
trigger36 = time = 90
trigger37 = time = 92
trigger38 = time = 94
trigger39 = time = 96
trigger40 = time = 98
trigger41 = time = 100
trigger42 = time = 102
trigger43 = time = 104
trigger44 = time = 106
trigger45 = time = 108
trigger46 = time = 110
trigger47 = time = 112
trigger48 = time = 114
trigger49 = time = 116
trigger50 = time = 118
trigger51 = time = 120
trigger52 = time = 122
trigger53 = time = 124
trigger54 = time = 126
trigger55 = time = 128
trigger56 = time = 130
trigger57 = time = 132
trigger58 = time = 134
trigger59 = time = 136
trigger60 = time = 138
trigger61 = time = 140
trigger62 = time = 142
trigger63 = time = 144
trigger64 = time = 146
trigger65 = time = 148
trigger66 = time = 150
trigger67 = time = 152
trigger68 = time = 154
trigger69 = time = 156
trigger70 = time = 158
trigger71 = time = 160
trigger72 = time = 162
trigger73 = time = 164
trigger74 = time = 166
trigger75 = time = 168
trigger76 = time = 170
trigger77 = time = 172
trigger78 = time = 174
trigger79 = time = 176
trigger80 = time = 178
trigger81 = time = 180
trigger82 = time = 182
trigger83 = time = 18
trigger84 = time = 16
trigger85 = time = 14
trigger86 = time = 12
trigger87 = time = 10
trigger88 = time = 8
trigger89 = time = 6
trigger90 = time = 4
value = -3 
kill = 0

[State 111 ,PosSet]
type = PosFreeze
trigger1 = time = 27
trigger2 = time = 54
trigger3 = time = 81
trigger4 = time = 108
trigger5 = time = 135
trigger6 = time = 162
value = 1

[State 111 ,PosSet]
type = PosFreeze
trigger1 = time = 45
trigger2 = time = 72
trigger3 = time = 99
trigger4 = time = 126
trigger5 = time = 153
value = 1

[State 111 ,PosSet]
type = PosFreeze
trigger1 = time = 36
trigger2 = time = 63
trigger3 = time = 90
trigger4 = time = 117
trigger5 = time = 144
value = 1

[State 702, ƒ‰ƒCƒt‘Œ¸]
type = LifeAdd
trigger1 = time = 175
value = -180 
kill = 1

[State 1027, ˆÊ’u]
type = PosSet
trigger1 = time = 0
trigger1 = Pos Y <= 0 
y = 0

[State 1060, 2]
type = changeanim2
trigger1 = time = 0
value = 5010

[State 1060, 2]
type = changeanim2
trigger1 = time = 27
trigger2 = time = 54
trigger3 = time = 81
trigger4 = time = 108
trigger5 = time = 135
trigger6 = time = 162
value = 5002

[State 1060, 2]
type = changeanim2
trigger1 = time = 36
trigger2 = time = 63
trigger3 = time = 90
trigger4 = time = 117
trigger5 = time = 144
value = 5012

[State 1060, 2]
type = changeanim2
trigger1 = time = 45
trigger2 = time = 72
trigger3 = time = 99
trigger4 = time = 126
trigger5 = time = 153
value = 5002

[State 2601, ChangeAnim]
type = ChangeAnim
trigger1 = time = 173
trigger1 = SelfAnimExist(5051)
value = 5051

[State 2601, ChangeAnim]
type = ChangeAnim
trigger1 = time = 173
trigger1 = (Anim != [5051, 5059]) && (Anim != [5061, 5069])
trigger1 = Anim != 5090 ;Not if hit off ground anim
value = 5050
persistent = 0

[State 5050, 2]
type = ChangeAnim
trigger1 = anim = [5050,5059]
trigger1 = Vel Y >= ifelse(anim = 5050, 1, -2)
trigger1 = SelfAnimExist(anim+10)
value = anim+10
persistent = 0

[State 1026, Velocity]
Type = ScreenBound
Trigger1 = 1
Value = 1
MoveCamera = 1,0

[State 1026, Velocity]
type = VelSet
trigger1 = Time = 173
x = 0
y = 0

[State 1026, Velocity]
type = VelSet
trigger1 = Time = 178
x = -4
y = -25

[State 1026, Velocity]
type = VelSet
trigger1 = Time = 193
x = -10
y = 0

[State 1026, Velocity]
type = VelSet
trigger1 = Time = 203
x = -10
y = 10

[State 1026, Velocity]
type = VelSet
trigger1 = Time = 218
x = -5
y = 20

[State 1061, 2]
type = selfState
trigger1 = Time = 228
value = 5110

;--------------------------------------------------------------
;--------------------------------------------------------------
;‘Šè
[Statedef 17003500]
type    = A
movetype= H
physics = N
velset = 0,0

;’§”­ƒ{ƒCƒX--------------------------------------------------------------------------------------
;”Ä—p
[State 190, 2] ;”Ä—p
type = PlaySnd
trigger1 = Time = 5
value = 9999,999
volume = 180

;ƒWƒ‡ƒWƒ‡ƒVƒŠ[ƒY

[State 190, 2] ;ASB˜½•
type = PlaySnd
triggerall = Time = 0
trigger1 = p1name = "ASB_JOSUKE" 
value = 500,13
volume = 180

[State 190, 2] ;³‘¾˜Y
type = PlaySnd
triggerall = Time = 5
trigger1 = p1name = "Jotaro Kujo" 
value = 180,0

[State 190, 2] ;³‘¾˜Y
type = PlaySnd
triggerall = Time = 5
trigger1 = p1name = "Jotaro"
value = 3,10

[State 190, 2] ;dio
type = PlaySnd
triggerall = Time = 5
trigger1 = p1name = "dio" 
value = 181,0

[State 190, 2] ;fdio
type = PlaySnd
triggerall = Time = 5
trigger1 = p1name = "final dio" 
value = 182,0

[State 190, 2] ;ƒWƒ‡ƒiƒTƒ“
type = PlaySnd
triggerall = Time = 5
trigger1 = p1name = "jonathan"
value = 4,3

[State 190, 2] ;ƒcƒFƒyƒŠ
type = PlaySnd
triggerall = Time = 5
trigger1 = p1name = "zeppeli" 
value = 3,30

[State 190, 2] ;ƒWƒ‡ƒZƒt
type = PlaySnd
triggerall = Time = 5
trigger1 = p1name = "Young Joseph +"
value = 160,1

[State 190, 2] ;‰Ô‹‰@
type = PlaySnd
triggerall = Time = 5
trigger1 = p1name = "Kakyoin"
value = 3,8

[State 190, 2] ;˜VƒWƒ‡ƒZƒt
type = PlaySnd
triggerall = Time = 5
trigger1 = p1name = "Joseph"
value = 3,7

[State 190, 2] ;ƒ|ƒ‹ƒ|ƒ‹
type = PlaySnd
triggerall = Time = 5
trigger1 = p1name = "polnareff"
value = 4,1

[State 190, 2] ;ƒAƒ”
type = PlaySnd
triggerall = Time = 5
trigger1 = p1name = "avdul"
value = 3,12

[State 190, 2] ;ƒCƒM[
type = PlaySnd
triggerall = Time = 5
trigger1 = p1name = "iggy"
value = 10,3

[State 190, 2] ;H_DIO
type = PlaySnd
triggerall = Time = 5
trigger1 = p1name = "DIO BRANDO"
value = 3,5

[State 190, 2] ;S_DIO
type = PlaySnd
triggerall = Time = 5
trigger1 = p1name = "Shadow Dio"
trigger1 = !(AuthorName="Warusaki3")
value = 20,2

[State 190, 2] ;S_DIO
type = PlaySnd
triggerall = Time = 5
trigger1 = p1name = "shadow dio"
value = 180,0

[State 190, 2] ;ƒ”ƒ@ƒjƒ‰
type = PlaySnd
triggerall = Time = 5
trigger1 = p1name = "vanillaice"
value = 3200,0

[State 190, 2] ;ƒzƒ‹ƒz[ƒX
type = PlaySnd
triggerall = Time = 5
trigger1 = p1name = "Hol horse" 
value = 9999,999;3,11

[State 190, 2] ;ƒ`ƒƒƒJ
type = PlaySnd
triggerall = Time = 5
trigger1 = p1name = "chaka" 
value = 5,19

[State 190, 2] ;4•”³
type = PlaySnd
triggerall = Time = 5
trigger1 = p1name = "Kujo Jotaro (Part4)"
value = 3,10

[State 190, 2] ;Nˆê
type = PlaySnd
triggerall = Time = 5
trigger1 = p1name = "hirose koiti"
value = 100,25

[State 190, 2] ;˜I”º
type = PlaySnd
triggerall = Time = 5
trigger1 = p1name = "rohan"
value = 190,12

[State 190, 2] ;‹g—Ç
type = PlaySnd
triggerall = Time = 5
trigger1 = p1name = "killa yoshikage"
value = 100,23

[State 190, 2] ;ƒWƒ‡ƒ‹ƒm
type = PlaySnd
triggerall = Time = 5
trigger1 = p1name = "Giorno" 
value = 100,0

[State 190, 2] ;ƒWƒ‡ƒ‹ƒm
type = PlaySnd
triggerall = Time = 5
trigger1 = p1name = "requiem Giorno" 
value = 100,25

[State 190, 2] ;ƒuƒ`ƒƒ
type = PlaySnd
triggerall = Time = 5
trigger1 = p1name = "Bruno" 
value = 16,2

[State 190, 2] ;ƒAƒoƒbƒLƒI
type = PlaySnd
triggerall = Time = 5
trigger1 = p1name = "leone abbacchio"
value = 21,0

[State 190, 2] ;ƒ~ƒXƒ^iƒƒLƒKj
type = PlaySnd
triggerall = Time = 5
trigger1 = p1name = "mista" 
value = 3,10

[State 190, 2] ;ƒt[ƒS
type = PlaySnd
triggerall = Time = 5
trigger1 = p1name = "fugo" 
value = 3,0

[State 190, 2] ;ƒgƒŠƒbƒVƒ…
type = PlaySnd
triggerall = Time = 5
trigger1 = p1name = "trish una" 
value = 100,21

[State 190, 2] ;ƒfƒBƒAƒ{ƒ
type = PlaySnd
triggerall = Time = 5
trigger1 = p1name = "diavolo" 
value = 3,6

[State 190, 2] ;ƒMƒAƒbƒ`ƒ‡
type = PlaySnd
triggerall = Time = 5
trigger1 = p1name = "Ghiaccio" 
value = 3,17

[State 190, 2] ;ƒvƒƒVƒ…[ƒgŒZ‹M
type = PlaySnd
triggerall = Time = 5
trigger1 = p1name = "prosciutto_aniki" 
value = 3,11

;’§”­ƒ{ƒCƒXEND----------------------------------------------------------------------------------

[State 702, ‚·‚è”²‚¯]
type = PlayerPush
trigger1 = 1
value = 0

[State 1027, ˆÊ’u]
Type = DestroySelf
Trigger1 = IsHelper

[state 3000]
type = nothitby
trigger1 = 1
 value = SCA,AA,AP,AT
 time = -1
 
[State 2601, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0
trigger1 = p1name = "Steely Dan"
value = 190
 
[State 2601, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0
trigger1 = p1name = "josuke"
value = 196
 
[State 2601, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0
trigger1 = p1name = "killa yoshikage"
value = 181
 
[State 2601, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0
trigger1 = p1name = "DIO BRANDO"
value = 180

[State 2601, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0
trigger1 = p1name != "killa yoshikage" 
trigger1 = p1name != "zeppeli"  
trigger1 = p1name != "DIO BRANDO"
trigger1 = p1name != "josuke"
trigger1 = p1name != "Steely Dan"
trigger1 = SelfAnimExist(195)
value = 195

[State 2601, ChangeAnim] 
type = ChangeAnim
trigger1 = time = 0
trigger1 = Anim != 195
trigger1 = p1name != "DIO BRANDO"
trigger1 = p1name != "killa yoshikage" 
trigger1 = p1name != "josuke"
trigger1 = p1name != "Steely Dan"
value = 5010
persistent = 0

[State 2601, ChangeAnim]
type = ChangeAnim
trigger1 = Animtime = 0
value = 0



[State 1060, 2]
type = ChangeState
trigger1 = Enemy,anim = 19009
value = 0000000000009






;--------------------------------------------------------------
;--------------------------------------------------------------
;‘Šè
[Statedef 0000000000009]
type    = A
anim = 0

[State 1026, Velocity]
type = VelSet
trigger1 = Time = 12
trigger1 = NumEnemy = 1
trigger1 = P2BodyDist X = [-20,20]
x = -8
y = 0

[State 1026, Velocity]
type = VelSet
trigger1 = Time = 17
x = 0
y = 0

[state 3000]
type = envshake 
trigger1 = Time = 12
freq = 170
Time = 15

[State 1060, 2]
type = changeanim2
trigger1 = Time = 12
value = 5010


[State 1060, 2]
type = changeanim
trigger1 = time = 55
value = 5300

[State 702, ƒ‰ƒCƒt‘Œ¸]
type = LifeAdd
trigger1 = Time = 12
value = -100 
kill = 0

[State 230, 3]
type = ChangeState
trigger1 = Time = 167
value = 161060
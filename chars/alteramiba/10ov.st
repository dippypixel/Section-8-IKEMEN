; Win pose 8 - i feel like a pussy when i make an amiba winpose
[Statedef 188]
type = S
ctrl = 0
anim = 188
velset = 0,0

[State 181, 0]
type = AssertSpecial
trigger1 = Time < 120
flag = RoundNotOver

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 5120]
type = PlaySnd
trigger1 = Time = 0
value = 701, 43
channel = 0

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fvar(0) = 0
[State 0, VarSet]
type = VarAdd
trigger1 = time
fvar(0) = 0.05
[State 0, Explod]
type = Explod
trigger1 = 1
anim = 1880
ID = 1880
pos = 160,floor(gameheight/2)
postype = left
facing = 1
vfacing = 1
bindtime = 1
removetime = 1
scale = fvar(0),fvar(0)
sprpriority = -333
ownpal = 1
ignorehitpause = 1
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
var(0) = 0
[State 0, VarSet]
type = VarAdd
trigger1 = time
trigger1 = var(0) > -255
var(0) = -5
[State 0, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 1
add = var(0),var(0),var(0)


; -----SPECIAL INTRO YOU FUCKING IDIOT---------
[Statedef 19666]
type = S
ctrl = 0
anim = 196
velset = 0,0

[State 181]
type = AssertSpecial
trigger1 = 1
flag = NoMusic

[State 191, 1] ;Freeze animation until PreIntro is over
type = ChangeAnim
trigger1 = RoundState = 0
value = 194

[State 191, 2]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = nofg

[State 2000, 1]
type = explod
trigger1 = time = 0
anim = 1960
pos = 160, floor(gameheight/2)
postype = left
sprpriority = 6666666666
bindtime = -1
supermove = 1

[State 191, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 191, Snd 1]
type = PlaySnd
trigger1 = Time = 0
value = 701,40
volume = 255

[State 191, 3] ;Change to stand state when done
type = ChangeState
trigger1 = AnimTime = 0
value = 0



;---------------------------------------------------------------------------
;Thrown by Kung Fu Throw
; (a custom gethit state)
; Description: This is the state that the opponent changes to after being
;     hit by KFM's throw HitDef. The important thing here is to use a
;     ChangeAnim2 controller. The difference between ChangeAnim2 and
;     ChangeAnim is that ChangeAnim2 changes the player's animation to
;     an action in the AIR file of the attacker (in this case, kfm.air),
;     whereas ChangeAnim always changes the player to an action in his
;     own AIR file. Look at Action 820 in kfm.air for some extra
;     comments.
[Statedef 820]
type    = A
movetype= H
physics = S
ctrl = 0
sprpriority = 1
velset =0,0

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
sysvar(0) = 0

[state 0,0]
type = screenbound
trigger1 = time <= 36
value = 0

[state 0,0]
type = posadd
trigger1 = time <= 18
x = 2

[state 0,0]
type = changeanim
trigger1 = time = 36
value = 5070

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = time = 36
physics = N
ignorehitpause = 1
[state 0,0]
type = velset
trigger1 = time = 36
x = 11
y = -7.6
[state 0,0]
type = veladd
trigger1 = time > 36
y = 0.45

[state 0,0]
type = turn
trigger1 = time = 0
trigger1 = facing = enemy,facing

[state 0,0]
type = changeanim2
trigger1 = time = 0
value = 820

[state 0,0]
type = playerpush
trigger1 = 1
value = 0

[state 0,0]
type = envshake
trigger1 = time = 35
time = 10

[state 0,0]
type = selfstate
trigger1 = time >= 36
trigger1 = vel y > 0
trigger1 = vel y + pos y >= const(movement.air.gethit.groundlevel)
value = 5100


; UGH
[Statedef 1006]
type    = A
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = (animelemtime(4) >= 0)
movecamera = 0,1
ignorehitpause = 1

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 4
y = 0 - const(size.mid.pos.y)
ignorehitpause = 1
[State 0, VelSet]
type = VelSet
trigger1 = animelem = 4
x = 2.2
y = -9.3
[State 0, VelSet]
type = VelAdd
trigger1 = animelemtime(4) >= 0
y = 0.66
[State 0, VelSet]
type = VelMul
trigger1 = animelemtime(4) >= 0
x = 0.97
[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 1006
[State 0, SelfState]
type = SelfState
trigger1 = time
trigger1 = vel y > 0
trigger1 = vel y + pos y >= const(movement.air.gethit.groundlevel)
value = 5100

;---------------------------------------------------------------------------
; Hit by power move (shaking)
[Statedef 1215]
type    = A
movetype= H ;Get hit
physics = N

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
sysvar(0) = 0

[State 940, 0]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0
z = 0

;[State 940, 1]
;type = NotHitBy
;trigger1 = 1
;value = SCA
;Time = 1

[State 940, 2]
type = PosAdd
trigger1 = Time = 0
y = -20

[State 940, 3]
type = ChangeAnim
Trigger1 = Time >= 0
value = 5030

[State 940, 4]
type = ChangeState
trigger1 = HitShakeOver = 1
value = 1216

; Hit by power move (flying)
[Statedef 1216]
type    = A
movetype= H ;Get hit
physics = N

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

;[State 941, 0]
;type = NotHitBy
;trigger1 = 1
;value = SCA
;Time = 1

[State 941, 1]
type = ChangeAnim
Trigger1 = Time = 0
value = ifelse(SelfAnimExist(5052),5052,5050)

[State 5071, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 5071, 2]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 941, 5]
type = ChangeState
trigger1 = backedgedist <= 5
value = 1217

[State 943, 5]
type = SelfState
trigger1 = Pos Y > const(movement.air.gethit.groundlevel)
trigger1 = Vel Y > 0
value = 5100
ctrl = 0

; Hit by power move (hitting the wall)
[Statedef 1217]
type    = A
movetype= H ;Get hit
physics = N

[State 942, 0]
type = PlaySnd
Trigger1 = Time = 0
value = F5, 4

[State 942, 1]
type = PosAdd
trigger1 = Time = 0
y = -20

[State 942, 2]
type = ChangeAnim
Trigger1 = Time = 0
value = 5070

[State 942, 3]
type = VelSet
trigger1 = Time = 0
x = 2
y = -3.5

[State 942, 4]
type = EnvShake
Trigger1 = Time = 0
time = 20
ampl = -4
freq = 90
phase = 90

[State 942,19]
type = GameMakeAnim
trigger1 = Time = 0
value = 72
pos = -10, -50

[State 942, 6]
type = ChangeState
trigger1 = Time = 10
value = 1218

; Hit by power move (falling to the ground)
[Statedef 1218]
type    = A
movetype= H ;Get hit
physics = N

[State 943, 0]
type = ChangeAnim
Trigger1 = Time = 0
value = 5090

[State 943, 1]
type = VelAdd
trigger1 = Time >= 0
y = .55

[State 943, 5]
type = SelfState
trigger1 = Pos Y > const(movement.air.gethit.groundlevel)
trigger1 = Vel Y > 0
value = 5100
ctrl = 0


;---------------------------------------------------------------------------
; HIT_BOUNCE (bounce into air)
[Statedef 3056]
type    = A
movetype= H
physics = N

[State 5101, 1] ;Coming hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim != [5101,5109]
trigger2 = !SelfAnimExist(5160 + (anim % 10))
value = 5160
[State 5101, 2] ;Coming hit ground anim (for hit up)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim = [5101,5109]
trigger1 = SelfAnimExist(5160 + (anim % 10))
value = 5160 + (anim % 10)

[State 5101, 3]
type = VelSet
trigger1 = Time = 0
x = -1
y = ifelse(alive,-19.693741,-64)
[State 5101, 5] ;Acceleration
type = VelAdd
trigger1 = 1
y = .99

[State 5101, 6] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >= const(movement.down.bounce.groundlevel)
type = SelfState
value = 5110

; Duke Nukem Forever as it should have been
[Statedef 3310]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 9741

[State 0, TargetState]
type = TargetState
trigger1 = time = 0
value = 3320

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noBG
flag3 = noFG
ignorehitpause = 1
[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
;flag = nokosnd
flag = nokoslow
flag2 = nomusic
flag3 = globalnoshadow
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S701,14
abspan = 0

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 3349
ID = 3349
pos = 160,floor(gameheight/2)
postype = left
bindtime = -1
removetime = 636
supermovetime = 65535
pausemovetime = 65535
scale = 1,1
sprpriority = 950
ontop = 1
ownpal = 1
ignorehitpause = 1
[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 3301
ID = 7004770340
pos = 239,floor(gameheight/2) - 36 - (const(size.head.pos.y)*2)
postype = left
facing = -1
vfacing = 1
vel = 2,0
accel = -0.0357142857142857,0
bindtime = 1
removetime = 56
supermovetime = 65535
pausemovetime = 65535
scale = 2*const(size.xscale),2*const(size.yscale)
sprpriority = 943
ignorehitpause = 1
[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = F3
pos = 160,floor(gameheight/2)
postype = left
facing = 1
vfacing = 1
vel = 0,0
bindtime = 1
removetime = -2
supermovetime = 65535
pausemovetime = 65535
scale = 2,2
sprpriority = 999
ignorehitpause = 1
[State 0, Explod]
type = Explod
triggerall = (gametime%9)=0
trigger1 = time = [90,130]
trigger2 = time = [200,304]
anim = F2
pos = 160,floor(gameheight/2)
postype = left
facing = 1
vfacing = 1
vel = 0,0
random = 64,64
bindtime = 1
removetime = -2
supermovetime = 65535
pausemovetime = 65535
scale = 1,1
sprpriority = 999
ignorehitpause = 1
[State 0, HitAdd]
type = HitAdd
triggerall = (gametime%9)=0
trigger1 = time = [78,284]
value = 1
ignorehitpause = 1
[State 0, LifeAdd]
type = TargetLifeAdd
triggerall = (gametime%9)=0
trigger1 = time = [78,304]
value = ceil(-11 * fvar(13))
kill = 0
[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 3340
ID = 3340
pos = 160,floor(gameheight/2)
postype = left
bindtime = -1
removetime = 636
supermovetime = 65535
pausemovetime = 65535
scale = 1,1
sprpriority = 940
ontop = 0
ownpal = 1
ignorehitpause = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = time >= 636
value = 3311
ctrl = 0


[Statedef 3320]
type    = A
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 0, WHU]
type = DisplayToClipboard
trigger1 = 1
text="%f FUCKING KIWI."
params = const480p(1)
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 5007
ID = 7004770340
pos = 139,floor(gameheight/2) -50 - (const(size.head.pos.y)*2)
postype = left
facing = 1
vfacing = 1
vel = -2,1
accel = 0.0357142857142857,-0.0178571428571429
bindtime = 1
removetime = 56
supermovetime = 65535
pausemovetime = 65535
scale = (2*const(size.xscale))/const240p(1),(2*const(size.xscale))/const240p(1)
sprpriority = 942
ignorehitpause = 1
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 30
ID = 7004770340
vel = 0,0
accel = 0,0
[State 0, Explod]
type = Explod
trigger1 = time = 90
anim = 5002
ID = 7004770340
pos = 120,floor(gameheight/2) -60 - (const(size.head.pos.y)*2)
postype = left
facing = 1
vfacing = 1
vel = 2,0
accel = -0.05,0
bindtime = 1
removetime = 40
supermovetime = 65535
pausemovetime = 65535
scale = (2*const(size.xscale))/const240p(1),(2*const(size.xscale))/const240p(1)
sprpriority = 942
ignorehitpause = 1
[State 0, Explod]
type = Explod
trigger1 = time = 200
anim = 5001
ID = 7004770340
pos = 160,floor(gameheight/2) -20 - (const(size.head.pos.y)*6)
postype = left
facing = 1
vfacing = 1
vel = -0.2,0.2
accel = 0,0
bindtime = 1
removetime = 40
supermovetime = 65535
pausemovetime = 65535
scale = (6*const(size.xscale))/const240p(1),(6*const(size.xscale))/const240p(1)
sprpriority = 942
ignorehitpause = 1
[State 0, Explod]
type = Explod
trigger1 = time = 240
anim = 5002
ID = 7004770340
pos = 160,floor(gameheight/2) -40 - (const(size.head.pos.y)*2)
postype = left
facing = 1
vfacing = 1
vel = 0,0
accel = 0,0
bindtime = 1
removetime = 60
supermovetime = 65535
pausemovetime = 65535
scale = (2*const(size.xscale))/const240p(1),(2*const(size.xscale))/const240p(1)
sprpriority = 942
ignorehitpause = 1
[State 0, Explod]
type = Explod
trigger1 = time = 300
anim = 5007
ID = 7004770340
pos = 160,floor(gameheight/2) -40 - (const(size.head.pos.y)*2)
postype = left
facing = 1
vfacing = 1
vel = 0,0
accel = 0,0
bindtime = 1
removetime = 24
supermovetime = 65535
pausemovetime = 65535
scale = (2*const(size.xscale))/const240p(1),(2*const(size.xscale))/const240p(1)
sprpriority = 942
ignorehitpause = 1
[State 0, Explod]
type = Explod
trigger1 = time = 420
anim = 5300
ID = 7004770340
pos = 120,floor(gameheight/2) -50 - (const(size.head.pos.y)*2)
postype = left
facing = 1
vfacing = 1
vel = 0,0
accel = 0,0
bindtime = 1
removetime = 172
supermovetime = 65535
pausemovetime = 65535
scale = (2*const(size.xscale))/const240p(1),(2*const(size.xscale))/const240p(1)
sprpriority = 942
ignorehitpause = 1

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 9741

[State 0, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 0, SelfState]
type = SelfState
trigger1 = time > 636
value = 5110

[Statedef 3640]
type    = S
movetype= I
physics = N
juggle  = 0
velset = 0,0
anim = 9741
ctrl = 0

[State 0, SuperPause]
type = SuperPause
trigger1 = time = 0
time = 240
movetime = 240
anim = -1
sound = -1
pos = 0,0
darken = 0
p2defmul = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noBG
flag3 = noFG
[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nokoslow
flag2 = nokosnd
flag3 = nomusic

[State 0, StopSnd]
type = StopSnd
trigger1 = time = 0
channel = -1
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S701,52
volume = 255
abspan = 0

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 1
freq = 0
ampl = 0
[State 0, EnvColor]
type = EnvColor
trigger1 = time = 0
value = 255,255,255
time = 2
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = time = 2
anim = 3640
ID = 3640
pos = 160,0
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = 280
pausemovetime = 65535
supermovetime = 65535
scale = gameheight/240,gameheight/240
sprpriority = 65535
ontop = 1
ownpal = 1
[State 0, DestroySelf]
type = DestroySelf
trigger1 = time > 282


;---------------------------------------------------------------------------
; Super BG
[Statedef 3900]
type    = S
movetype= I
physics = N
velset = 0,0
anim = 9741
ctrl = 0

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
trigger1 = parent,stateno=[3100,3199]
var(1) = 1
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
trigger1 = parent,stateno=[3200,3299]
var(1) = 2
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
trigger1 = parent,stateno=[3300,3399]
var(1) = 3
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
trigger1 = parent,stateno=[3600,3699]
var(1) = 4

[State 0, VarAdd]
type = VarAdd
trigger1 = fvar(0) < 1
fvar(0) = 0.05
[State 0, VarAdd]
type = VarSet
trigger1 = fvar(0) > 1
fvar(0) = 1
[State 0, VarAdd]
type = VarAdd
trigger1 = time
trigger1 = var(0) > -255
var(0) = -5
[State 0, VarAdd]
type = VarSet
trigger1 = time = 30
var(0) = 255

[State 2000, 1]
type = explod
trigger1 = time = 0
id = 3900
anim = 3900+var(1)
pos = 160, floor(gameheight/2)
postype = left
facing = 1
sprpriority = -10
bindtime = -1
removetime = 30
supermovetime = 65535
scale = 1,fvar(0)
[State 2000, 1]
type = modifyexplod
trigger1 = time
trigger1 = numexplod(3900)
id = 3900
scale = 1,fvar(0)
[State 0, BGPalFX]
type = BGPalFX
trigger1 = 1
time = 1
add = var(0),var(0),var(0)

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time > 30
trigger1 = var(0) <= 0

[StateDef -2]

[State 1.0 USER HERE]
type = VarSet
trigger1 = var(49) != 1
var(49) = 1
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 5 || anim = 6
trigger1 = animelemtime(1) = 1
value = S701,62
channel = 0
lowpriority = 1

[State 0, VarSet]
type = VarSet
trigger1 = var(22)
trigger1 = statetype != A
var(22) = 0
[State 0, VarSet]
type = VarSet
trigger1 = stateno = 45
trigger1 = prevstateno = 640
var(22) = var(22) | floor(exp(0*ln(2)) + 0.5)

[State IntroSkip]
type = VarAdd
trigger1 = var(29) < 5
trigger1 = roundstate = 2
var(29) = 1
[State IntroSkip]
type = StopSnd
trigger1 = var(29) = 1
channel = 1
ignorehitpause = 1


[State -3]
type = PlaySnd
triggerall = alive
trigger1 = (stateno = 5000) || (stateno = 5010) || (stateno = 5020) || (stateno = 5070)
trigger1 = time = 0
trigger2 = (stateno != 5000) && (stateno != 5010) && (stateno != 5020) && (stateno != 5070)
trigger2 = stateno != [120,160]
trigger2 = gethitvar(damage)
value = 702, random%16
volume = 255
channel = 0

; Within StateDef -2, none of your own AI-related code should be placed
; above these next two controllers.

[State P2Soundcode nope]
type = VarSet
trigger1 = 1
v = 33
value = 0
ignorehitpause = 1
[State P2Soundcode WHAM]
type = VarSet
trigger1 = (numtarget)
trigger1 = (target,stateno = 1027)
trigger1 = (target,time = 1)
trigger1 = (target,movetype = H)
v = 33
value = 1
ignorehitpause = 1

[State Limiter]
type = VarSet
trigger1 = stateno = 40
trigger2 = statetype = A
trigger2 = movecontact
trigger3 = p2stateno = [120,169]
var(8) = 12

[State Limiter]
type = VarAdd
trigger1 = var(8) > 0
var(8) = -1

[State 0, Helper]
type = Helper
trigger1 = !numhelper(179)
helpertype = normal
name = "Misc Stuff"
ID = 179
stateno = 179
pos = 0,0
postype = p1
ownpal = 1
supermovetime = 65535
pausemovetime = 65535
ignorehitpause = 1


[State ANTI-MINDGAME-GUARD]
type = VarAdd
triggerall = var(50) < 120
trigger1 = p2movetype = A
trigger1 = stateno = [120,169]
var(50) = 1
ignorehitpause = 1
[State ANTI-MINDGAME-GUARD]
type = VarSet
triggerall = var(50) > 0
trigger1 = stateno = [150,155]
trigger1 = time = 1
var(50) = ceil(var(50)*0.8)
ignorehitpause = 1
[State ANTI-MINDGAME-GUARD]
type = VarAdd
triggerall = var(50) > 0
triggerall = (gametime%3)=0
trigger1 = p2movetype != A
trigger2 = stateno != [120,169]
var(50) = -1
ignorehitpause = 1
[State ANTI-MINDGAME-TH]
type = VarSet
trigger1 = numenemy
trigger1 = var(55)
trigger1 = !numhelper(3209)
var(51) = (enemynear,HitDefAttr = SCA,AT) || (var(50) > 20) || ((abs(enemynear,animtime) <= enemynear,moveguarded ))
ignorehitpause = 1
[State ANTI-MINDGAME-TH]
type = VarSet
trigger1 = numenemy
trigger1 = var(55)
trigger1 = numhelper(3209)
var(51) = (enemynear,HitDefAttr = SCA,AT) || (var(50) > 20) || ((abs(enemynear,animtime) <= enemynear,moveguarded )) || (helper(3209),stateno=3208)
ignorehitpause = 1

[State -2, P2 Facing]
type= targetfacing
trigger1= movecontact=1 && numtarget=1
trigger1= !(target,hitshakeover) && !(target,hitfall) && (target,time<=1)
value= ifelse(p2dist x>=0, -1, 1)
ignorehitpause= 1

[State -2, Neo-Juggle-System-Reset]
type = VarSet
triggerall = var(40)
trigger1 = !numtarget
trigger2 = numtarget
trigger2 = (target,statetype != A) && (target,statetype != L)
var(40) = 0
ignorehitpause = 1
[State -2, Neo-Juggle-System-Reset]
type = VarSet
triggerall = var(41)
trigger1 = !numtarget
trigger2 = numtarget
trigger2 = (target,statetype != A) && (target,statetype != L)
var(41) = 0
ignorehitpause = 1
[State -2, Neo-Juggle-System-Reset]
type = VarSet
triggerall = var(42)
trigger1 = !numtarget
trigger2 = numtarget
trigger2 = (target,statetype != A) && (target,statetype != L)
var(42) = 0
ignorehitpause = 1
[State -2, Neo-Juggle-System copy]
type = VarSet
;triggerall = var(42)
trigger1 = time = 1
trigger2 = !numtarget
trigger3 = numtarget
trigger3 = (target,statetype != A) && (target,statetype != L)
var(47) = var(42)
ignorehitpause = 1
[State 0, Neo-Juggle-System-Debug]
type = DisplayToClipboard
trigger1 = var(36)
text = "NJS Flags = %d | %d"
params = var(40),var(41)
ignorehitpause = 1

[State Prevent the prorator from going too low]
type = VarSet
trigger1 = fvar(13) < 0.15
fvar(13) = 0.15
ignorehitpause = 1
[State Prorator Reset]
type = VarSet
trigger1 = !numenemy
trigger2 = p2movetype != H || (!enemynear,gethitvar(hitcount))
trigger2 = !movehit || movereversed
trigger3 = p2stateno = 5120
fvar(13) = 1
ignorehitpause = 1
[State 0, AttackMulSet]
type = AttackMulSet
trigger1 = 1
time = 2
;value = ifelse(p2movetype!=H,ifelse(var(20)=1,1.25,1),1 - ifelse(fvar(15)>.75,.75,fvar(15)))
value = ( ifelse((stateno=[3000,3900]), 0.25+(fvar(13)*0.75) ,fvar(13))  )
ignorehitpause = 1



[State -2, StopAI]
type = VarSet
triggerall = var(58) > 0 && !IsHelper
trigger1 = RoundState != 2
trigger2 = !Alive
var(58) = -2
IgnoreHitPause = 1

; This controller is optional.  It allows you treat the AI flag as a boolean
; value rather than an integer value, letting you trigger your AI directives
; with "var(0)" instead of "var(58)>0", and letting you make moves usable only
; by humans by using "!var(0)" instead of "var(58)<1", thus slightly improving
; the size and efficiency of your code.
; Another benefit is that it makes it much easier for users to disable your AI,
; if they so choose.
[State -2, Simplifier]
type = VarSet
triggerall = !IsHelper
;trigger1 = var(58) = 1
;trigger2 = var(55):=0
trigger1 = 1
var(55) = ifelse(roundstate<=2,ailevel,0)	; Another option is to replace 1 with something like MatchNo, if
		; you want to design your AI to have varying levels of difficulty.
IgnoreHitPause = 1


[State -2, Movehitoner]
type = VarSet
trigger1 = 1
var(21) = ifelse(movehit=1,var(21)+1,0)
ignorehitpause = 1

[State 0, VarSet]
type = VarSet
trigger1 = time = 1
trigger1 = movetype = A
var(38) = floor(p2bodydist x)
ignorehitpause = 1
[State 0, VarSet]
type = VarSet
trigger1 = time = 1
trigger1 = movetype = A
var(39) = floor(p2bodydist y)
ignorehitpause = 1


[State -2, DTC]
type = DisplayToClipboard
trigger1 = 1
text = "var(58) = %d, var(0) = %d, RoundState = %d, IsHomeTeam = %d, var(57) = %d"
params = var(58), var(0), RoundState, IsHomeTeam, var(57)
IgnoreHitPause = 1

[State -2, ATC]
type = AppendToClipboard
trigger1 = 1
text = "\nx = %d, y = %d, pro = %f, %f"
params = floor(p2bodydist x), floor(p2bodydist y),fvar(13),const240p(1)
IgnoreHitPause = 1



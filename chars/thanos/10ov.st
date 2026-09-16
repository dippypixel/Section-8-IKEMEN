; 1.0 states

;---------------------------------------------------------------------------
; Stand to Crouch
[Statedef 10]
type    = C
physics = C
anim = 10

[State 10, 1]
type = VelMul
trigger1 = Time = 0
x = .75

[State 10, 2] ;Stop moving if low velocity
type = VelSet
trigger1 = abs(vel x) < Const(movement.crouch.friction.threshold)
x = 0

[State 10, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11

;---------------------------------------------------------------------------
; Crouching
[Statedef 11]
type    = C
physics = C
anim = 11
sprpriority = 0

[State 11, 1] ;Change from turning animation
type = ChangeAnim
trigger1 = Anim = 6 && AnimTime = 0
value = 11

[State 11, 2] ;Stop moving if low velocity
type = VelSet
trigger1 = abs(vel x) < Const(movement.crouch.friction.threshold)
x = 0

;---------------------------------------------------------------------------
; Tripped get-hit (knocked away)
[Statedef 5071]
type    = A
movetype= H
physics = N

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
sysvar(0) = 0

[State 5071, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 5071, 2] ;Acceleration
type = VelAdd
trigger1 = time > 0
y = GetHitVar(yaccel)

[State 5071, 3] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >= Const(movement.air.gethit.trip.groundlevel)
type = ChangeState
value = 5110

;---------------------------------------------------------------------------
;Thrown by Kung Fu Throw - thrown into the air
[Statedef 821]
type    = A
movetype= H
physics = N
velset = 0,0;-4,-11.11

[State 0, PosAdd]
type = PosAdd
trigger1 = time = 0
x = 0-const(size.head.pos.x)
y = 0-const(size.head.pos.y)

[State 0, VelAdd]
type = VelSet
trigger1 = time = 0
x = -5.10245
y = -14.21957 * (4.0/3.0) * 1.07

[State 0, VelAdd]
type = VelAdd
trigger1 = time
y = 0.5625 * (16.0/9.0)

[State 5100, 2]
type = ChangeAnim
trigger1 = time = 0
value = ifelse(selfanimexist(5052),5052,5030)
;[State 5100, 2]
;type = ChangeAnim
;trigger1 = time < 12
;value = anim
[State 5100, 2]
type = ChangeAnim
;triggerall = time >= 12
trigger1 = anim = [5030,5039]
trigger1 = animtime = 0
value = ifelse(anim=5030&&selfanimexist(5035),5035,5050)

[State 821, 2] ; Recover near ground (use ChangeState)
type = ChangeState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 821, 3] ; Recover in mid air (use SelfState)
type = SelfState
triggerall = Vel Y > 0
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210 ;HITFALL_AIRRECOVER


[State 5100, 7]
type = SelfState
;triggerall = time >= 12
trigger1 = vel y > 0
trigger1 = vel y + pos y >= Const(movement.air.gethit.groundlevel)
value = 5100 ;HIT_LIEDOWN


;---------------------------------------------------------------------------
; Downed get-hit (bounce off ground)
[Statedef 852]
type    = L
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
type = HitFallVel
trigger1 = Time = 0

[State 5101, 4]
type = PosSet
trigger1 = Time = 0
y = Const(movement.down.bounce.offset.y)

[State 5101, 5]
type = PosAdd
trigger1 = Time = 0
x = Const(movement.down.bounce.offset.x)

[State 5101, 6] ;Acceleration
type = VelAdd
trigger1 = time > 0
y = 0.5625 * (16.0/9.0) * 1.07;Const(movement.down.bounce.yaccel)

[State 5101, 7] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >= Const(movement.down.bounce.groundlevel)
type = SelfState
value = 5110

;------------------
; Hit by Fast Kung Fu Palm - flying through the air
; (a custom gethit state)
[Statedef 226]
type    = A
movetype= H
physics = N

[State 1026, Velocity]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 1026, Gravity]
type = VelAdd
trigger1 = 1
y = gethitvar(yaccel);.88

[State 1026, No scroll]
type = ScreenBound
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist < 65
trigger2 = FrontEdgeBodyDist < 65
value = 1
movecamera = 0,1

[State 1026, Hit wall]
type = ChangeState
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist <= 20
trigger2 = FrontEdgeBodyDist <= 20
value = 227

[State 1026, Hit ground]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= Const(movement.air.gethit.groundlevel))
value = 5100

;------------------
; Hit by Fast Kung Fu Palm - hit wall
; (a custom gethit state)
[Statedef 227]
type    = A
movetype= H
physics = N
velset = 0,0

;[State 1027, Sound]
;type = PlaySnd
;trigger1 = Time = 0
;value = F7,0

[State 1027, Anim]
type = ChangeAnim2
trigger1 = Time = 0
value = 227

[State 1027, Turn]
type = Turn
trigger1 = (Time = 0) && (FrontEdgeBodyDist <= 30)

[State 1027, Pos]
type = PosAdd
trigger1 = Time = 0
x = 0 - BackEdgeBodyDist

[State 1027, Stop moving]
type = PosFreeze
trigger1 = animelemtime(7) < 0
x = 1
y = 1

[State 1027, No scroll]
type = ScreenBound
trigger1 = animelemtime(7) < 0
value = 1
movecamera = 0,1

;[State 1027, Spark]
;type = Explod
;trigger1 = Time = 0
;anim = F72
;pos = 0, floor (screenpos y) - 50
;postype = back
;sprpriority = 3

[State 1028, Gravity]
type = VelSet
trigger1 = animelemtime(7) = 0
x = 0.123;1.37
y = 0;-9

;[State 1028, Gravity]
;type = VelSet
;trigger1 = animelemtime(7) = 0
;trigger1 = animelemtime(8) < 0
;x = vel x + 0.29

[State 1028, Gravity]
type = VelSet
trigger1 = animelemtime(7) > 0
;x = vel x; + 0.09
y = vel y+gethitvar(yaccel)

[State 1028, Hit ground]
type = SelfState
trigger1 = animelemtime(7) >= 0
trigger1 = (Vel y > 0) && (Pos y >= Const(movement.air.gethit.groundlevel))
value = 5100

;---------------------------------------------------------------------------
; Air get-hit (knocked away)
[Statedef 501]
type    = A
movetype= H
physics = N
ctrl = 0

[State 5020, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
trigger1 = hitfall
trigger1 = GetHitVar(animtype) = [3,5]
value = 5030

[State 5020, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype) ;5051 - 4 + type

[State 5030, 1]
type = ChangeAnim
trigger1 = vel x = 0
trigger1 = SelfAnimExist(5051)
trigger1 = anim != 5051
value = 5051

;[State 5030, 1]
;type = ChangeAnim
;trigger1 = Anim != [5000, 5199]
;trigger1 = SelfAnimExist(ifelse(vel x=0,5051,5030))
;value = SelfAnimExist(ifelse(vel x=0,5051,5030))

[State 5030, 2]
type = VelAdd
trigger1 = time > 0
y = GetHitVar(yaccel)

[State 5030, 3]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 5030, 4]
type = SelfState
triggerall = !HitFall
trigger1 = HitOver && (time>gethitvar(hittime)) 
trigger2 = Vel Y > 0    ;Hit ground
trigger2 = Pos Y >= 10;Const(movement.air.gethit.groundlevel)
value = 5040 ;HITA_RECOV

[State 5030, 5]
type = SelfState
triggerall = HitFall
trigger1 = Vel Y > 0    ;Hit ground
trigger1 = Pos Y >= Const(movement.air.gethit.groundlevel)
value = 5100 ;HITA_FALL

[State 5030, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 502 ;Air get-hit (transition)

;---------------------------------------------------------------------------
; Air get-hit (transition)
[Statedef 502]
type    = A
movetype= H
physics = N

[State 5035, 1]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = Anim != 5090 ;Not if hit off ground anim
value = ifelse(selfanimexist(5061),5061,ifelse(selfanimexist(5030),5030,5050))
[State 5035, 1]
type = ChangeAnim
trigger1 = animTime = 0
trigger1 = Anim = 5030 ;Not if hit off ground anim
value = ifelse(selfanimexist(5035),5035,5050)
[State 5035, 1]
type = ChangeAnim
trigger1 = animTime = 0
trigger1 = Anim = 5035 ;Not if hit off ground anim
value = 5050

[State 5035, 2]
type = VelAdd
trigger1 = time > 0
y = GetHitVar(yaccel)

[State 5035, 3]
type = SelfState
triggerall = !HitFall
trigger1 = HitOver && (time>gethitvar(hittime)) 
trigger2 = Vel Y > 0    ;Hit ground
trigger2 = Pos Y >= 10;Const(movement.air.gethit.groundlevel)
value = 5040 ;Air get-hit (recovering in air, not falling)

[State 5035, 4]
type = SelfState
triggerall = HitFall
trigger1 = Vel Y > 0    ;Hit ground
trigger1 = Pos Y >= Const(movement.air.gethit.groundlevel)
;trigger2 = Time = 0     ;No transition anim
;trigger2 = Anim != 5061
value = 5100 ;Air get-hit (falling)


; Launched
[Statedef 511]
type    = A
movetype= H
physics = N
juggle  = 0
ctrl = 0

[State 0, PosAdd]
type = PosAdd
trigger1 = time = 0
x = 0
y = -11

[State 0, HitVelSet]
type = HitVelSet
trigger1 = time = 0
x = 1
y = 1
[State 0, VelSet]
type = VelSet
trigger1 = time > 0
y = vel y + gethitvar(yaccel)

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim != 5160
trigger1 = anim != ifelse(selfanimexist(5051),5051,5050)
value = ifelse(selfanimexist(5051),5051,5050)

[State 0, SelfState]
type = SelfState
trigger1 = time >= 17; hitover && time >= gethitvar(hittime)
trigger2 = time
trigger2 = vel y > 0
trigger2 = vel y + pos y >= -64;-80;-68;Const(movement.air.gethit.groundlevel)
value = ifelse(alive,5040,5050)
;ctrl = ifelse(alive,1,0)

;---------------------------------------------------------------------------
; Tripped get-hit (shaking)
[Statedef 570]
type    = A
movetype= H
physics = N
velset = 0,0

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
trigger1 = pos y > 0
y = 0
ignorehitpause = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time = 0
trigger1 = name != "Dhalsim"
trigger1 = name != "Dhalsims"
trigger1 = name != "cvsDhalsim"
trigger1 = name != "RaajaDhalsim"
value = ,AA,AP,AT
time = 14
ignorehitpause = 1


[State 5070, 1]
type = ChangeAnim
trigger1 = time = 0
value = 5010
[State 5020, 4]
type = ChangeAnim
trigger1 = Time = 0
value = anim
elem = animelemno(2)
[State 5020, 4]
type = ChangeAnim
trigger1 = Time
value = anim
elem = animelemtime(0)

[State 5070, 2]
type = ChangeState
trigger1 = HitShakeOver
value = 571

[State 5070, 3]
type = ForceFeedback
trigger1 = time = 0
time = 12
waveform = sinesquare
ampl = 140

;---------------------------------------------------------------------------
; Hyper BG
[Statedef 2991]
type    = A
movetype= I
physics = N
ctrl = 0
anim = 9741
sprpriority = 5
velset = 0,0

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0
ignorehitpause = 1

[State 0, VarSet]
type = VarSet
trigger1 = 1
fvar(0) = ifelse((screenpos y)-212<0,0,(screenpos y)-212)
[State 0, VarSet]
type = VarSet
trigger1 = 1
fvar(1) = 1+(fvar(0)/212)

[State 0, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = 1
text = "y = %f pos = %f, ska = %f"
params = screenpos y,fvar(0),fvar(1)
ignorehitpause = 1


[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 2995
ID = 2995
pos = 0,0
postype = left
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = .5,.5*fvar(1)
sprpriority = -999
ontop = 0
shadow = 0,0,0
ownpal = 0
supermovetime = 65535
pausemovetime = 65535
ignorehitpause = 1

[State 0, Explod]
type = ModifyExplod
trigger1 = numexplod(2995)
ID = 2995
scale = .5,.5*fvar(1)
ignorehitpause = 1

[State 0, ChangeState]
type = ChangeState
triggerall = time
;triggerall = numexplod(2995)
triggerall = winko
trigger1 = numhelper(3101)
trigger1 = helper(3101),stateno = 3109
trigger2 = numhelper(3003)
trigger2 = helper(3003),movehit
trigger3 = numhelper(3210)
trigger3 = helper(3210),movehit
trigger4 = numhelper(3211)
trigger4 = helper(3211),movehit
trigger5 = numhelper(3301)
trigger5 = helper(3301),stateno = 3302
trigger5 = helper(3301),prevstateno = 3303
trigger6 = numhelper(3401)
trigger6 = helper(3401),stateno = 3402
trigger7 = root,stateno = 3510
trigger7 = root,movehit
trigger8 = numhelper(3201)
trigger8 = helper(3201), var(3) > 0
trigger9 = numhelper(3202)
trigger9 = helper(3202), var(3) > 0
value = 2992
ctrl = 0
ignorehitpause = 1

[State 0, RemoveExplod]
type = RemoveExplod
triggerall = time
triggerall = numexplod(2995)
triggerall = !winko
trigger1 = root,stateno != 3000
trigger1 = root,stateno != 3100
trigger1 = root,stateno != 3200
trigger1 = root,stateno != 3300
trigger1 = root,stateno != 3400
trigger1 = root,stateno != 3500
trigger1 = root,stateno != 3501
trigger1 = root,stateno != 3510
trigger1 = !numhelper(3003)
trigger2 = root,stateno = 3100
trigger2 = numhelper(3101)
trigger2 = helper(3101),stateno = 3109
trigger2 = helper(3101),time >= 12
trigger3 = root,stateno = 3000
trigger3 = numhelper(3003)
trigger3 = helper(3003),stateno = 3005
trigger4 = root,stateno = 3300
trigger4 = numhelper(3301)
trigger4 = helper(3301),stateno = 3309
trigger5 = numhelper(3401)
trigger5 = helper(3401),stateno = 3402
id = 2995
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = numexplod(2995)
ignorehitpause = 1
flag = noBG
flag2 = noFG
;flag3 = globalnoshadow

[State 0, DestroySelf]
type = DestroySelf
triggerall = !winko
trigger1 = time
trigger1 = !numexplod(2995)

[State 0, VarSet]
type = VarSet
triggerall = fvar(14) < 1
trigger1 = fvar(14) > 0
trigger2 = root,stateno = 3000 || root,stateno = 3100 || root,stateno = 3200 || root,stateno = 3300 || root,stateno = 3400 || root,stateno = 3500
trigger2 = root,time = 1
fvar(14) = ifelse(fvar(14)+0.07>=1,1,fvar(14)+0.07)

[State 0, PalFXWiz]
type = PalFX
trigger1 = fvar(14) > 0
time = 2
mul = 256-ceil(256*fvar(14)),256,256-ceil(256*fvar(14))
sinadd = 0,0,0,1
invertall = 0
color = 256-ceil(224*fvar(14))

;---------------------------------------------------------------------------
; Hyper KO BG
[Statedef 2992]
type    = A
movetype= I
physics = N
ctrl = 0
anim = 9741
sprpriority = 5
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,36
abspan = 0

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = numexplod(2995)
id = 2995
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 2996
ID = 2996
pos = 0,0-(240-gameheight)
postype = left
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
scale = 1,1
sprpriority = -999
ontop = 0
shadow = 0,0,0
ownpal = 1
supermovetime = 65535
pausemovetime = 65535
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time < 127
ignorehitpause = 1
flag = noBG
flag2 = noFG
flag3 = globalnoshadow

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fvar(2) = 1
[State 0, VarSet]
type = VarSet
trigger1 = time >= 128
fvar(2) = ifelse(fvar(2)*0.9<0.05,0,fvar(2)*0.9)
[State 0, BGPalFX]
type = BGPalFX
trigger1 = fvar(2) > 0
time = 2
add = ceil(256*fvar(2)),ceil(256*fvar(2)),ceil(256*fvar(2))
mul = 256+ceil(256*fvar(2)),256+ceil(256*fvar(2)),256+ceil(256*fvar(2))
ignorehitpause = 1

;-----------
; MIND
[Statedef 3501]
type    = S
movetype= I
physics = S
ctrl = 0
anim = 3500
velset = 0,0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
ignorehitpause = 1
flag = nomusic
flag2 = timerfreeze

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,26

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,54
loop = 1
channel = 0
abspan = 0

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
var(0) = random%360

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
var(1) = 0

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
var(3) = 0

;[State 0, PosSet]
;type = PosSet
;trigger1 = animtime = 0
;x = 0
;y = 0

[State 0, Helper]
type = Helper
trigger1 = !numhelper(3502)
helpertype = player;normal
name = "Wrong"
ID = 3502
stateno = 3502
pos = 0,0
postype = p1
facing = 1
ownpal = 1
pausemovetime = var(19)
supermovetime = 9
keyctrl = 1

[State 0, Helper]
type = Helper
trigger1 = !numhelper(3503)
helpertype = player;normal
name = "Wrong"
ID = 3503
stateno = 3503
pos = 0,0
postype = p1
facing = 1
ownpal = 1
pausemovetime = var(19)
supermovetime = 9
keyctrl = 1

[State 0, Helper]
type = Helper
trigger1 = !numhelper(3504)
helpertype = player;normal
name = "Wrong"
ID = 3504
stateno = 3504
pos = 0,0
postype = p1
facing = 1
ownpal = 1
pausemovetime = var(19)
supermovetime = 9
keyctrl = 1

[State 0, Helper]
type = Helper
trigger1 = !numhelper(3505)
helpertype = player;normal
name = "Correct"
ID = 3505
stateno = 3505
pos = 0,0
postype = p1
facing = 1
ownpal = 1
pausemovetime = var(19)
supermovetime = 9
keyctrl = 1


[State 0, MISTER LIZARD]
type = Explod
trigger1 = time = 330
trigger2 = time = 462
anim = ifelse(time>=400,3568,3569)
ID = 3569
pos = 160,0
postype = left
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 65535
supermovetime = 65535
scale = 0.8889*(gameheight/240),0.8889*(gameheight/240)
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 0, ChangeState]
type = ChangeState
triggerall = time
trigger1 = var(1) = -1
trigger2 = time >= 528
trigger3 = winko
value = 3510
ctrl = 0

[State 0, ChangeState]
type = ChangeState
triggerall = time
trigger1 = var(1) = 1
value = 3511
ctrl = 0

[State 0, EASY]
type = ChangeState
;triggerall = !ishelper
trigger1 = numhelper(3502)
trigger1 = helper(3502),stateno = stateno
trigger2 = numhelper(3503)
trigger2 = helper(3503),stateno = stateno
trigger3 = numhelper(3504)
trigger3 = helper(3504),stateno = stateno
trigger4 = numhelper(3505)
trigger4 = helper(3505),stateno = stateno
value = 3513
ctrl = 0

;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------

[Statedef -2]

; if you're making a 10ov.st and copied the statedef -2 in it's entirety, uncomment this strcl so e.g. the hitpauses in both mugen versions would be the same
[State ME AM USING 1.0]
type = VarSet
trigger1 = var(49) != 1
var(49) = 1
ignorehitpause = 1

[State -2, Normal Winquotes]
type = VictoryQuote
trigger1 = roundstate = [2,3]
value = random%12
ignorehitpause = 1
[State -2, Perfect Winquotes]
type = VictoryQuote
trigger1 = roundstate = [2,3]
trigger1 = life = lifemax
value = 12+random%4
ignorehitpause = 1
[State -2, Low Life Winquotes]
type = VictoryQuote
trigger1 = roundstate = [2,3]
trigger1 = life <= ceil(lifemax*0.35)
value = 16+random%3
ignorehitpause = 1
[State -2, Mirror Match Winquotes]
type = VictoryQuote
triggerall = roundstate = [2,3]
trigger1 = p2name = "Thanos"
trigger2 = p4name = "Thanos"
value = 19
ignorehitpause = 1
[State -2, EASY Man Winquotes]
type = VictoryQuote
triggerall = roundstate = [2,3]
trigger1 = p2name = "Silver Surfer"
trigger2 = p4name = "Silver Surfer"
trigger3 = p2name = "SilverSurfer"
trigger4 = p4name = "SilverSurfer"
trigger5 = p2name = "Silver_Surfer"
trigger6 = p4name = "Silver_Surfer"
value = 20+random%2
ignorehitpause = 1

;[State 0, Get out of the modo card]
;type = VarSet
;trigger1 = var(19) = 1
;trigger1 = anim = [200,9999]
;trigger1 = stateno != [3070,3079]
;trigger1 = anim != 9741
;var(19) = 0
;ignorehitpause = 1

[State 0, Bullet Time Start]
type = Helper
triggerall = roundstate = 2
trigger1 = numhelper(3401)
trigger1 = helper(3401),movehit
trigger1 = !numhelper(3408)
helpertype = normal
name = "Bullet Time Helper"
ID = 3408
stateno = 3408
pos = 0,0
postype = p1
facing = 1
ownpal = 1
persistent = 0
supermovetime = 65535
pausemovetime = 65535

[State 0, Bullet Time Countdown]
type = VarSet
trigger1 = var(19) != 0
trigger1 = !numhelper(3408)
var(19) = 0
ignorehitpause = 1

[State 0, Bullet Time Pause]
type = Pause
trigger1 = var(19) > 0
trigger1 = numhelper(3408)
trigger1 = helper(3408),stateno = 3408
trigger1 = (var(19)%3)=0
trigger1 = stateno != 810 || enemynear, stateno != 820
trigger1 = stateno != 840 || enemynear, stateno != 850
time = ifelse(movetype!=H,2,1)
movetime = ifelse(movetype!=H,2,1)
endcmdbuftime = 1
pausebg = 1
;ignorehitpause = 1
;persistent =

[State 0, RemoveExplod]
type = RemoveExplod
triggerall = numexplod(3300)
trigger1 = !numhelper(3301)
trigger1 = stateno = 3300 && time >= 55
trigger2 = stateno != 3300
trigger3 = numhelper(3301)
trigger3 = helper(3301),stateno = 3309
id = 3300

[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 5120
trigger1 = animelem = 3
value = S0,15

[State 0, Explod]
type = Explod
trigger1 = anim = 5120
trigger1 = animelem = 3
anim = 5124
ID = 5124
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 1
ownpal = 1

[State -2, Footsteps]
type = PlaySnd
trigger1 = anim = 100
trigger1 = animelem = 3 || animelem = 7
value = S40,1+random%3

[State 0, Soundskipper]
type = VarAdd
trigger1 = roundstate >= 2
trigger1 = var(41) < 7
var(41) = 1
ignorehitpause = 1
[State 0, StopSnd]
type = StopSnd
trigger1 = roundstate >= 2
trigger1 = var(41) = 2
channel = 6

[State 0, ProjLim]
type = VarSet
trigger1 = var(40)
var(40) = 0
ignorehitpause = 1
[State 0, ProjLim]
type = VarSet
trigger1 = !var(40)
trigger1 = numhelper(1003)
trigger1 = helper(1003),stateno = 1003
var(40) = 1
ignorehitpause = 1

[State 0, Prepare Ofscreen Mode]
type = VarSet
triggerall = var(45)=1
trigger1 = backedgebodydist <= 50*const(size.xscale)
;trigger2 = frontedgedist <= -64*const(size.xscale)
;trigger3 = screenpos y < 0
;trigger4 = screenpos y >= 440
var(45) = 2
ignorehitpause = 1
[State 0, Go Offscreeen]
type = ScreenBound
trigger1 = var(45)>=2
value = 0
movecamera = 0,0
ignorehitpause = 1
[State 0, Turn On Actually Ofscreen Mode]
type = VarSet
triggerall = var(45)>=2
trigger1 = backedgedist <= -64*const(size.xscale)
;trigger2 = frontedgedist <= -64*const(size.xscale)
;trigger3 = screenpos y < 0
;trigger4 = screenpos y >= 440
var(45) = 3
ignorehitpause = 1
[State 0, Turn Justin Case]
type = VarSet
triggerall = var(45)>=2
trigger1 = backedgebodydist > 8*const(size.xscale)
trigger1 = frontedgebodydist > 8*const(size.xscale)
;trigger3 = screenpos y < 0
;trigger4 = screenpos y >= 440
var(45) = ifelse(stateno=100,0,1)
ignorehitpause = 1
[State 0, Turn Off Ofscreen Mode]
type = VarSet
triggerall = var(45)>0
trigger1 = ctrl
trigger1 = var(45)!=1
trigger2 = stateno = 52
trigger3 = movetype = H
var(45) = 0
ignorehitpause = 1

[State 0, VarSet]
type = VarSet
triggerall = var(30) = 0
triggerall = numenemy
trigger1 = (gethitvar(hitcount)>=1) ;(enemy,movecontact >= 1 || enemy,projcontact >= 1) && (!enemy,moveguarded)
var(30) = -1
ignorehitpause = 1
;[State 0, PowerAdd]
;type = PowerAdd
;triggerall = var(30) = 0
;triggerall = stateno != [3000,3999]
;trigger1 = (movecontact >= 1 || projcontact >= 1) && (!moveguarded)
;trigger2 = projhittime = 0
;trigger2 = p2movetype = H
;trigger2 = movetype = A
;trigger2 = p2stateno != [120,169]
;trigger2 = projhittime = 1
;value = 150
;ignorehitpause = 1
[State -2 Send the message]
type = Varset
triggerall = var(30) = 0
triggerall = numenemy
trigger1 = (enemynear,gethitvar(hitcount)>=1);(movecontact >= 1 || projcontact >= 1) && (!moveguarded)
;trigger2 = p2movetype = H
;trigger2 = movetype = A
;trigger2 = p2stateno != [120,169]
;trigger2 = projhittime = 1
var(37) = var(37) | floor(exp(2*ln(2)) + 0.5)
ignorehitpause = 1
[State 0, VarSet]
type = VarSet
triggerall = var(30) = 0
triggerall = numenemy
trigger1 = (enemynear,gethitvar(hitcount)>=1);(movecontact >= 1 || projcontact >= 1) && (!moveguarded)
;trigger2 = p2movetype = H
;trigger2 = movetype = A
;trigger2 = p2stateno != [120,169]
;trigger2 = projhittime = 1
var(30) = 1
ignorehitpause = 1

[State -2, Movehitoner]
type = VarSet
trigger1 = numenemy
var(21) = ifelse(movehit=1&&(enemynear,movereversed!=[1,2]),var(21)+1,0)
ignorehitpause = 1
[State -2, Movehitoner]
type = VarSet
trigger1 = !numenemy
var(21) = ifelse(movehit=1,var(21)+1,0)
ignorehitpause = 1
[State -2, Moveguardoner]
type = VarSet
trigger1 = 1
var(22) = ifelse(moveguarded=1,var(22)+1,0)
ignorehitpause = 1
[State -2, FirstHit]
type = VarSet
trigger1 = 1
var(29) = 0
ignorehitpause = 1
[State -2, FirstHit]
type = VarSet
trigger1 = var(21)=1
trigger1 = numtarget
trigger1 = p2stateno != [120,169]
var(29) = (target,gethitvar(hitcount) <= 1)
ignorehitpause = 1

[State -2, Counter?]
type = VarSet
trigger1 = var(21) != 1
var(31) = (p2movetype=A)
ignorehitpause = 1
[State -2 Send the message]
type = Varset
trigger1 = !enemynear,movereversed
trigger1 = var(31) = 1
trigger1 = var(21) = 1
var(37) = var(37) | floor(exp(0*ln(2)) + 0.5)
ignorehitpause = 1
;[State 0, PlaySnd]
;type = PlaySnd
;trigger1 = !enemynear,movereversed
;trigger1 = var(31) = 1
;trigger1 = var(21) = 1
;value = S209,random%10
;channel = 0
;lowpriority = 1
;ignorehitpause = 1

;[State P2Soundcode nope]
;type = VarSet
;trigger1 = 1
;var(33) = 0
;ignorehitpause = 1
;[State P2Soundcode WHAM]
;type = VarSet
;trigger1 = (numtarget)
;trigger1 = (target,stateno = 227)
;trigger1 = (target,time = 1)
;trigger1 = (target,movetype = H)
;var(33) = 1
;ignorehitpause = 1


[State Throw Limiter]
type = VarSet
trigger1 = stateno = 40
trigger2 = statetype = A
trigger2 = movecontact
trigger3 = p2stateno = [120,169]
var(8) = 12
[State Throw Limiter count]
type = VarAdd
trigger1 = var(8) > 0
var(8) = -1
[State 0, Helper]
type = Helper
trigger1 = roundstate < 2
trigger1 = !numhelper(444)
helpertype = normal
name = "CONFIG"
ID = 444
stateno = 444
pos = 444,444
postype = p1
facing = 1
ownpal = 1
supermovetime = 65535
pausemovetime = 65535
ignorehitpause = 1

[State 0, ]
type = PlaySnd
triggerall = alive
;triggerall = random < 500
;triggerall = anim != 70851
trigger1 = (stateno = 5001) || (stateno = 5011) || (stateno = 5021) || (stateno = 5070)
trigger1 = time = 1
trigger2 = (stateno != [5000,5001]) && (stateno != [5010,5011]) && (stateno != [5020,5021]) && (stateno != 5070)
trigger2 = stateno != [120,160]
trigger2 = gethitvar(damage)
value = 5000,random%5
;volume = 255
channel = 0
ignorehitpause = 1

[State 0, ]
type = PlaySnd
trigger1 = anim = 5300
trigger1 = time = 1
value = 5300,0
channel = 0
;volume = 255

[State 0, Helper]
type = Helper
triggerall = !ishelper
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


[State Prevent the prorator from going too low. You can change the minimal proration rate if you want, just make sure the value in the trigger and actual varset match]
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
fvar(13) = 1; + ifelse(numhelper(3050),0.25,0)
ignorehitpause = 1
[State 0, AttackMulSet]
type = AttackMulSet
trigger1 = 1
time = 2
;value = ifelse(p2movetype!=H,ifelse(var(20)=1,1.25,1),1 - ifelse(fvar(15)>.75,.75,fvar(15)))
;value = ( ifelse((stateno=[3000,3900]), 0.25+(fvar(13)*0.75) ,fvar(13))  ) * ifelse((p2statetype=A&&p2movetype!=H)||var(31),1.25,1)
value = ( ifelse((stateno=[3000,3900]), 0.25+(fvar(13)*0.75) ,fvar(13))  ); * ifelse(var(31),1.25,1)
ignorehitpause = 1



;
; Within StateDef -2, none of your own AI-related code should be placed
; above these next two controllers.

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
[State -2, Scaler]
type = VarSet
trigger1 = time = 0
fvar(36) = roundno + matchno*3
IgnoreHitPause = 1
[State -2, TOO MUCH]
type = VarSet
trigger1 = fvar(36) >= 80
fvar(36) = 80
IgnoreHitPause = 1
[State -2, Simplifier]
type = VarSet
;triggerall = !IsHelper
;trigger1 = var(58) = 1
;trigger2 = fvar(35):=0
trigger1 = !ishelper
fvar(35) = ifelse((roundstate=2&&ailevel>=1),ailevel+fvar(36),0)
IgnoreHitPause = 1

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
trigger1 = fvar(35)
var(51) = (enemynear,HitDefAttr = SCA,AT) || (var(50) > 20) || ((abs(enemynear,animtime) <= enemynear,moveguarded )) || (numhelper(3050))
ignorehitpause = 1


;================================================================================
; ------- KOF Cornerpush System by Vans --------
;===============================================================================
[State -2, Superpause Check]
type = VarAdd
trigger1 = Var(6)
var(6) = -1

[State -2, Reset Time counter]
type = VarSet
trigger1 = movecontact = 1
var(12) = 0

[State -2, Accel]
type = VarSet
triggerall = roundstate = 2
triggerall = Var(6) <= 0
triggerall = numtarget >= 1
trigger1 = target, hitshakeover
fvar(6) = (target, gethitvar(xvel)*exp((-0.1886)*((var(12)))))
[State -2, Push]
type = PosAdd
triggerall = roundstate = 2
triggerall = !var(6)
triggerall = numtarget >= 1
triggerall = (target, BackEdgeBodyDist <= 0) || (target, FrontEdgeBodyDist <= 0)
triggerall = ProjContact = 0, < 50
triggerall = stateno != [800,899]
;triggerall = stateno != [10800,10899]
;triggerall = stateno != 2400
;triggerall = enemynear,statetype != A
;triggerall = enemynear,statetype != L
trigger1 = Statetype != A
x = ifelse(facing = -1,fvar(6),-fvar(6))

[State -2, Increase]
type = VarSet
triggerall = Var(6) <= 0
triggerall = var(12)
trigger1 = numtarget >= 1
trigger1 = target, hitshakeover
var(12) = var(12)+1

[State -2, Time counter]
type = VarSet
trigger1 = !var(12)
trigger1 = fvar(6)
var(12) = 1

[State -2, Freeze Pos During Superpause]
type = PosFreeze
trigger1 = Var(6)
value = 1

[State -2, Drop]
type = VarSet
triggerall = fvar(6)
trigger1 = !numtarget
trigger2 = projcontact = 1
trigger3 = movecontact = 1
fvar(6) = 0
ignorehitpause = 1

[State -2, Drop]
type = VarSet
triggerall = fvar(8)
trigger1 = !numtarget
trigger2 = projcontact = 1
trigger3 = numtarget >= 1 && target, gethitvar(xvel) = 0
var(17) = 0

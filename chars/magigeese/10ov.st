; 1.1 states

;---------------------------------------------------------------------------
; Stand to Crouch
[Statedef 10]
type    = C
physics = C
anim = (10+(10000*var(19)))

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
anim = (11+(10000*var(19)))
sprpriority = 0

[State 0, 1]
type = ChangeAnim
trigger1 = anim = 6
trigger1 = var(19)
value = 10006
[State 11, 1] ;Change from turning animation
type = ChangeAnim
trigger1 = Anim = (6+(10000*var(19))) && AnimTime = 0
value = (11+(10000*var(19)))

[State 11, 2] ;Stop moving if low velocity
type = VelSet
trigger1 = abs(vel x) < Const(movement.crouch.friction.threshold)
x = 0

;---------------------------------------------------------------------------
; Air get-hit (knocked away)
[Statedef 5030]
type    = A
movetype= H
physics = N
ctrl = 0

[State 5030, 1]
type = ChangeAnim
trigger1 = Anim != [5000+(10000*var(19)), 5199+(10000*var(19))]
trigger1 = SelfAnimExist(5030+(10000*var(19)))
value = 5030+(10000*var(19))
persistent = 0

[State 5030, 2]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5030, 3]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 5030, 4]
type = ChangeState
triggerall = !HitFall
triggerall = !var(19)
trigger1 = HitOver
trigger2 = Vel Y > 0    ;Hit ground
trigger2 = Pos Y >= Const(movement.air.gethit.groundlevel)
value = 5040 ;HITA_RECOV

[State 5030, 5]
type = ChangeState
triggerall = HitFall || var(19)
trigger1 = HitOver
trigger2 = Vel Y > 0    ;Hit ground
trigger2 = Pos Y >= Const(movement.air.gethit.groundlevel)
value = 5050 ;HITA_FALL

[State 5030, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 5035 ;Air get-hit (transition)

;---------------------------------------------------------------------------
; Air get-hit (transition)
[Statedef 5035]
type    = A
movetype= H
physics = N

[State 5035, 1]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5035+(10000*var(19)))
trigger1 = Anim != [5051+(10000*var(19)),5059+(10000*var(19))] ;Not if in hit up anim
trigger1 = Anim != 5090+(10000*var(19)) ;Not if hit off ground anim
value = 5035+(10000*var(19))

[State 5035, 2]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5035, 3]
type = ChangeState
triggerall = !HitFall
triggerall = !var(19)
trigger1 = HitOver  ;Hit is over
trigger2 = AnimTime = 0 ;Animation over
trigger3 = Vel Y > 0    ;Hit ground
trigger3 = Pos Y >= Const(movement.air.gethit.groundlevel)
trigger4 = Time = 0     ;No transition anim
trigger4 = Anim != 5035+(10000*var(19)) ;.
value = 5040 ;Air get-hit (recovering in air, not falling)

[State 5035, 4]
type = ChangeState
triggerall = HitFall || var(19)
trigger1 = HitOver  ;Hit is over
trigger2 = AnimTime = 0 ;Anim is over
trigger3 = Vel Y > 0    ;Hit ground
trigger3 = Pos Y >= Const(movement.air.gethit.groundlevel)
trigger4 = Time = 0     ;No transition anim
trigger4 = Anim != 5035+(10000*var(19)) ;.
value = 5050 ;Air get-hit (falling)

;---------------------------------------------------------------------------
; Air get-hit (falling)
[Statedef 5050]
type    = A
movetype= H
physics = N

[State 5050, 1] ;Change anim when done with transition
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim = 5035+(10000*var(19))
trigger2 = Time = 0     ;If no transition anim
trigger2 = Anim != 5035+(10000*var(19))
trigger2 = (Anim != [5051+(10000*var(19)), 5059+(10000*var(19))]) && (Anim != [5061+(10000*var(19)), 5069+(10000*var(19))])
trigger2 = Anim != 5090+(10000*var(19)) ;Not if hit off ground anim
value = 5050+(10000*var(19))


[State 5050, 2] ;Coming down anim
type = ChangeAnim
trigger1 = anim = [5050+(10000*var(19)),5059+(10000*var(19))]
trigger1 = Vel Y >= ifelse(anim = 5050+(10000*var(19)), 1, -2)
;trigger1 = Vel Y >= ifelse(anim = 5050, Const720p(4), Const720p(-8))
trigger1 = SelfAnimExist(anim+10)
value = anim+10
persistent = 0

[State 5050, 3] ;Gravity
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5050, 4] ;Recover near ground
type = ChangeState
triggerall = Vel Y > 0
triggerall = Pos Y >= Const(movement.air.gethit.groundrecover.ground.threshold)
triggerall = alive
triggerall = CanRecover
triggerall = !var(19)
trigger1 = Command = "recovery"
value = 5200 ;Air get-hit (fall recovery on ground)

[State 5050, 5]; Recover in mid air
type = ChangeState
triggerall = Vel Y > Const(movement.air.gethit.airrecover.threshold)
triggerall = alive
triggerall = CanRecover
triggerall = !var(19)
trigger1 = Command = "recovery"
value = 5210 ;Air get-hit (fall recovery in air)

[State 5050, 6]
type = ChangeState
triggerall = Vel Y > 0
trigger1 = Pos Y >= ifelse((anim = [5051,5059]) || (anim = [5061,5069]), 0, Const(movement.air.gethit.groundlevel))
value = 5100 ;Downed get-hit (hit ground from fall)


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
trigger1 = 1
y = GetHitVar(yaccel)

[State 5071, 3] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >= Const(movement.air.gethit.trip.groundlevel)
type = ChangeState
value = 5110

;---------------------------------------------------------------------------
; Downed get-hit (bounce off ground)
[Statedef 5101]
type    = L
movetype= H
physics = N

[State 5101, 1] ;Coming hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim != [5101,5109]
trigger2 = !SelfAnimExist(5160 + (anim % 10))
value = 5160+(10000*var(19))

[State 5101, 2] ;Coming hit ground anim (for hit up)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim = [5101,5109]
trigger1 = SelfAnimExist(5160 + (anim % 10))
value = 5160+(10000*var(19)) + (anim % 10)

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
trigger1 = 1
y = Const(movement.down.bounce.yaccel)

[State 5101, 7] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >= Const(movement.down.bounce.groundlevel)
type = ChangeState
value = 5110

[Statedef 3225]
type = S
ctrl = 0
anim = 3225
velset = 0,0

[State 0, StopSnd]
type = StopSnd
trigger1 = time = 0
trigger2 = time = 210
channel = -1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time
trigger1 = numexplod(3215)
id = 3215

[State 0, Lines]
type = Explod
trigger1 = time = 0
anim = 3216
ID = 3216
pos = 160,0
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
scale = 666,.5
sprpriority = 310
ownpal = 1
supermovetime = 65535
pausemovetime = 65535

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = 0
scale = .5,.5
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nomusic
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time = [0,240]
flag = roundnotover
ignorehitpause = 1

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time >= 210
flag = noFG
flag2 = noBG
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = time = 210
anim = 3226
ID = 3226
pos = 160,0
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = .5*(gameheight/240),.5*(gameheight/240)
sprpriority = 777
ontop = 1
ownpal = 1


[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 210
value = 0,25
abspan = 0
channel = 0

[Statedef 821]
type    = A
movetype= H
physics = N
velset = -4,-6

[State 0, PalFXWiz]
type = PalFX
trigger1 = time = 0
time = 40
add = 100,100,180
mul = 256,256,256
sinadd = -80,-80,-80,4
invertall = 1
color = 0

[State 0, PosAdd]
type = PosAdd
trigger1 = time = 0
x = 0-const(size.mid.pos.x)
y = 0-const(size.mid.pos.y)

[State 0, VelAdd]
type = VelAdd
trigger1 = time
y = 0.48

[State 5100, 2]
type = ChangeAnim
trigger1 = time = 0
value = ifelse(selfanimexist(5052),5052,5030)
[State 5100, 2]
type = ChangeAnim
trigger1 = anim = [5030,5039]
trigger1 = animtime = 0
value = ifelse(anim=5030&&selfanimexist(5035),5035,5050)

[State 5100, 7]
type = SelfState
trigger1 = vel y > 0
trigger1 = vel y + pos y >= Const(movement.air.gethit.groundlevel)
value = 5100 ;HIT_LIEDOWN

[Statedef 852]
type    = A
movetype= H
physics = N
velset = 6,-13.3

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
sysvar(0) = 0

[State 820, 1]
type = ChangeAnim
Trigger1 = Time = 0
value = ifelse(selfanimexist(5091),5091,5090)

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 2
ignorehitpause = 1

[State 0, VelSet]
type = VelSet
trigger1 = 1
x = vel x * 0.99
y = vel y + 0.88

[State 820, 2]
type = SelfState
trigger1 = vel y > 0
trigger1 = vel y + pos y >= const(movement.down.bounce.groundlevel)
value = 5110

;---------------------------------------------------------------------------
; O_O
[Statedef 1103]
type    = A
movetype= H
physics = N
ctrl = 0

[State 0, PosAdd]
type = PosSet
trigger1 = time = 0
y = -320

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0
ignorehitpause = 1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0
value = 5070
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0
value = anim
elem = animelemno(99)

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
y = 1.123

[State 0, ChangeState]
type = Selfstate
trigger1 = vel y > 0
trigger1 = vel y + pos y >= Const(movement.air.gethit.groundlevel)
value = 5100
ctrl = 0

;------------------
; hit wall
[Statedef 1114]
type    = A
movetype= H
physics = N
velset = 0,0

[State 0, AngleDraw]
type = AngleDraw
trigger1 = time = 0
value = 0
scale = 1,1
ignorehitpause = 1

[State 1027, Anim]
type = ChangeAnim2
trigger1 = Time = 0
value = 1114

[State 0, PosAdd]
type = PosAdd
trigger1 = time = 0
x = 0-const(size.mid.pos.x)
y = 0-const(size.mid.pos.y)

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

[State 1027, Spark]
type = Explod
trigger1 = Time = 0
anim = F72
pos = 0, floor (screenpos y) - 50
postype = back
sprpriority = 3

[State 1028, Gravity]
type = VelSet
trigger1 = animelemtime(7) = 0
;x = 1.13
y = -4

[State 1028, Gravity]
type = VelSet
trigger1 = animelemtime(7) > 0
trigger1 = animelemtime(8) < 0
x = vel x + 0.09

[State 1028, Gravity]
type = VelSet
trigger1 = animelemtime(7) > 0
;x = vel x; + 0.09
y = vel y+.44

[State 1028, Hit ground]
type = SelfState
trigger1 = animelemtime(7) >= 0
trigger1 = (Vel y > 0) && (Pos y >= Const(movement.air.gethit.groundlevel))
value = 5100

;---------------------------------------------------------------------------
;Thrown by Kung Fu Throw - thrown into the air
[Statedef 1124]
type    = A
movetype= H
physics = N
velset = 1,-5

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time = [0,30]
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 2
ignorehitpause = 1

[State 0, ChangeAnim2]
type = ChangeAnim
trigger1 = time = 0
value = 5090

;[State 0, PosAdd]
;type = PosAdd
;trigger1 = time = 0
;x = 0+const(size.mid.pos.x)
;y = 0+const(size.mid.pos.y)

[State 0, VelAdd]
type = VelSet
trigger1 = 1
x = vel x * 0.99
y = vel y + 0.88

[State 0, SelfState]
type = SelfState
trigger1 = vel y > 0
trigger1 = vel y + pos y >= const(movement.down.bounce.groundlevel)
value = 5100

;------------------
; Hit by Fast Kung Fu Palm - hit wall
; (a custom gethit state)
[Statedef 1307]
type    = A
movetype= H
physics = N
velset = 0,0

[State 1027, Sound]
type = PlaySnd
trigger1 = Time = 0
value = F7,0

[State 1027, Anim]
type = ChangeAnim2
trigger1 = Time = 0
value = 1307

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

[State 1027, Spark]
type = Explod
trigger1 = Time = 0
anim = F72
pos = 0, floor (screenpos y) - 50
postype = back
sprpriority = 3

[State 1028, Gravity]
type = VelSet
trigger1 = animelemtime(7) = 0
;x = 1.13
y = -4

[State 1028, Gravity]
type = VelSet
trigger1 = animelemtime(7) > 0
trigger1 = animelemtime(8) < 0
x = vel x + 0.09

[State 1028, Gravity]
type = VelSet
trigger1 = animelemtime(7) > 0
;x = vel x; + 0.09
y = vel y+.44

[State 1028, Hit ground]
type = SelfState
trigger1 = animelemtime(7) >= 0
trigger1 = (Vel y > 0) && (Pos y >= Const(movement.air.gethit.groundlevel))
value = 5100

[Statedef 1353]
type    = A
movetype= H
physics = N
velset = 6.6,-9.9

[State 0, PosAdd]
type = PosAdd
trigger1 = time = 0
x = 0-const(size.mid.pos.x)
y = 0-const(size.mid.pos.y)

[State 0, VelAdd]
type = VelSet
trigger1 = time
x = vel x * 0.99
y = vel y + 0.88

[State 0, Turn]
type = Turn
trigger1 = time = 0
[State 5100, 2]
type = ChangeAnim
trigger1 = time = 0
value = ifelse(selfanimexist(5052),5052,5030)
[State 5100, 2]
type = ChangeAnim
trigger1 = anim = [5030,5039]
trigger1 = animtime = 0
value = ifelse(anim=5030&&selfanimexist(5035),5035,5050)

[State 5100, 2]
type = ChangeAnim
trigger1 = time = 0
trigger1 = selfanimexist(7697)
value = 7697

[State 0, PalFXWiz]
type = PalFX
trigger1 = time = 0
trigger1 = anim != 7697
time = 40
add = 40,-70,-200
mul = 256,256,256
sinadd = 40,30,0,10
invertall = 1
color = 0
;ignorehitpause = 0

[State 5100, 7]
type = SelfState
trigger1 = vel y > 0
trigger1 = vel y + pos y >= const(movement.down.bounce.groundlevel)
value = 5100 ;HIT_LIEDOWN

;---------------------------------------------------------------------------
; SUPER BG
[Statedef 2990]
type    = A
movetype= I
physics = N
velset = 0,0
anim = 9741
ctrl = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,33
abspan = 0
[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nomusic
ignorehitpause = 1

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fvar(0) = 1
[State 0, VarSet]
type = VarSet
trigger1 = time
fvar(0) = fvar(0) * 0.6

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fvar(2) = 0.25*(gameheight/240)
[State 0, VarSet]
type = VarSet
trigger1 = time = 10
fvar(2) = 0.5*(gameheight/240)
[State 0, VarSet]
type = VarSet
trigger1 = time = 20
fvar(2) = 1*(gameheight/240)
[State 0, VarSet]
type = VarSet
trigger1 = time = 30
fvar(2) = 2*(gameheight/240)

[State 0, VarSet]
type = VarSet
trigger1 = (time%10) = 0
fvar(12) = 0.1
[State 0, VarSet]
type = VarSet
trigger1 = time
fvar(12) = fvar(12) * 0.4

[State 0, VarSet]
type = VarSet
trigger1 = 1
fvar(10) = -640+random%1280
[State 0, VarSet]
type = VarSet
trigger1 = 1
fvar(11) = -640+random%1280

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 2990+random%3
ID = 2990
pos = ceil(160+(fvar(10)*fvar(12))+(-320*fvar(0)*facing ) ),ceil((gameheight/2)+(fvar(11)*fvar(12)) )
postype = left
facing = 1
vfacing = 1
bindtime = 1
removetime = 38
pausemovetime = 65535
supermovetime = 65535
scale = fvar(2),fvar(2)
sprpriority = -64
ownpal = 1
ignorehitpause = 1
[State 0, Explod]
type = ModifyExplod
trigger1 = numexplod(2990)
ID = 2990
pos = ceil(160+(fvar(10)/10)+(-320*fvar(0) ) ),ceil((gameheight/2)+(fvar(11)/10) )
postype = left
facing = 1
vfacing = 1
bindtime = 1
scale = fvar(2),fvar(2)
sprpriority = -64
ownpal = 1
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = time = 34
anim = 2995
ID = 2995
pos = 160,ceil(gameheight/2)
postype = left
facing = 1
vfacing = 1
bindtime = 1
removetime = 4
pausemovetime = 65535
supermovetime = 65535
scale = .5,.5
sprpriority = -60
ownpal = 1
ignorehitpause = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = !numexplod(2990)

;---------------------------------------------------------------------------
; WHOAH
[Statedef 3072]
type    = S
movetype= I
physics = N
velset = 0,0
anim = 9741
ctrl = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,32
abspan = 0

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fvar(0) = 1
[State 0, VarSet]
type = VarSet
trigger1 = time
fvar(0) = fvar(0) * 0.9
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fvar(1) = 1
[State 0, VarSet]
type = VarSet
trigger1 = time
fvar(1) = fvar(1) * 0.95
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fvar(2) = 1
[State 0, VarSet]
type = VarSet
trigger1 = time >= 100
fvar(2) = fvar(2) * 0.94

[State 0, PalFX]
type = BGPalFX
trigger1 = time < 100
time = 2
add = floor(512*(1-fvar(0))),floor(512*(1-fvar(0))),floor(512*(1-fvar(0)))
mul = 256,256,256
color = 256
ignorehitpause = 1
[State 0, PalFX]
type = BGPalFX
trigger1 = time >= 100
time = 2
add = floor(512*(fvar(2))),floor(512*(fvar(2))),floor(512*(fvar(2)))
mul = 256,256,256
color = 256
ignorehitpause = 1
[State 0, PalFX]
type = PalFX
trigger1 = time >= 100
time = 2
mul = floor(256*(fvar(2))),floor(256*(fvar(2))),floor(256*(fvar(2)))
color = 256
ignorehitpause = 1

[State 0, EnvColor]
type = EnvColor
trigger1 = time <= 100
value = 255,255,255
time = 2
under = 1
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 3680
ID = 3680
pos = 160,floor(gameheight/2)
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = 65535
supermovetime = 65535
scale = 1,1
sprpriority = -64
;ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 3681
ID = 3681
pos = 160-floor(3800*fvar(1)),floor(gameheight/2)
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = 65535
supermovetime = 65535
scale = 1,1
sprpriority = -70
ownpal = 1
removeongethit = 1
;trans = addalpha
;alpha = 256,0
ignorehitpause = 1

[State 0, Explod]
type = ModifyExplod
trigger1 = numexplod(3681)
ID = 3681
pos = 160-floor(3800*fvar(1)),floor(gameheight/2)
postype = left
facing = 1
vfacing = 1
scale = 1,fvar(2)
bindtime = -1
ignorehitpause = 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = fvar(2) <= 0.1
trigger1 = numexplod(3680)
id = 3680
ignorehitpause = 1
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = fvar(2) <= 0.1
trigger1 = numexplod(3681)
id = 3681
ignorehitpause = 1
[State 0, DestroySelf]
type = DestroySelf
trigger1 = fvar(2) <= 0.1
trigger1 = !numexplod(3680)
trigger1 = !numexplod(3681)

;---------------------------------------------------------------------------
; HIT_BOUNCE (bounce into air)
[Statedef 3127]
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

[State 5101, 3]
type = VelSet
trigger1 = Time = 0
;x = -1
y = -9
[State 5101, 5] ;Acceleration
type = VelAdd
trigger1 = 1
y = gethitvar(yaccel)

[State 5101, 6] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >= const(movement.down.bounce.groundlevel)
type = SelfState
value = 5110

;---------------------------------------------------------------------------
; SKREEEEEEEE
[Statedef 3210]
type    = S
movetype= A
physics = N
velset = 0,0
juggle  = 0
ctrl = 0
sprpriority = 2
poweradd = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noBG
flag3 = noFG
ignorehitpause =1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = globalnoshadow
flag2 = nomusic
ignorehitpause = 1

[State 0, Bonnie]
type = Explod
trigger1 = time = 0
anim = 3210
ID = 3210
pos = 160,0
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = .5*(gameheight/240),.5*(gameheight/240)
sprpriority = 300
ownpal = 1
supermovetime = 65535
pausemovetime = 65535

[State 0, Camera Puting Down]
type = Explod
trigger1 = time = 0
trigger2 = time
trigger2 = !numexplod(3211)
trigger2 = numexplod(3212)
trigger2 = numtarget
trigger2 = target,alive
trigger2 = target,command = "a" || target,command = "b" || target,command = "c"
trigger2 = var(2) >= 20
anim = 3211
ID = 3211
pos = 160,0
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
scale = .5,.5;.5*(gameheight/240),.5*(gameheight/240)
sprpriority = 310
ownpal = 1
supermovetime = 65535
pausemovetime = 65535
[State 0, PUT DAT COOKIE DOWN]
type = RemoveExplod
trigger1 = numexplod(3211)
trigger1 = numexplod(3212)
id = 3212
ignorehitpause = 1
[State 0, PUT DAT COOKIE DOWN]
type = RemoveExplod
trigger1 = numexplod(3211)
trigger1 = numexplod(3213)
id = 3213
ignorehitpause = 1
[State 0, PUT DAT COOKIE DOWN]
type = RemoveExplod
trigger1 = numexplod(3211)
trigger1 = numexplod(3214)
id = 3214
ignorehitpause = 1
[State 0, Camera Puting Up]
type = Explod
triggerall = time
triggerall = !numexplod(3211)
triggerall = !numexplod(3212)
trigger1 = numtarget
trigger1 = target,alive
trigger1 = target,command = "x" || target,command = "y" || target,command = "z"
anim = 3212
ID = 3212
pos = 160,0
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = .5,.5;.5*(gameheight/240),.5*(gameheight/240)
sprpriority = 310
ownpal = 1
supermovetime = 65535
pausemovetime = 65535
[State Defailt]
type = Explod
triggerall = !numexplod(3213)
trigger1 = var(2) = 19
anim = 3213
ID = 3213
pos = 160,0
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = .5*(gameheight/240),.5*(gameheight/240)
sprpriority = 312
ownpal = 1
supermovetime = 65535
pausemovetime = 65535
[State Defailt]
type = Explod
trigger1 = var(2) = 19
anim = 3216
ID = 3214
pos = 160,0
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
scale = 666,.5*(gameheight/240)
sprpriority = 312
ownpal = 1
supermovetime = 65535
pausemovetime = 65535

[State 0, VarSet]
type = VarSet
trigger1 = 1
var(1) = ifelse(numexplod(3211),var(1)+1,0)
ignorehitpause = 1
[State 0, VarSet]
type = VarSet
trigger1 = 1
var(2) = ifelse(numexplod(3212),var(2)+1,0)
ignorehitpause = 1

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
trigger2 = var(1) = 2
var(0) = 0
ignorehitpause = 1
[State 0, VarSet]
type = VarAdd
trigger1 = time
trigger1 = var(1) != 1
var(0) = 1
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
trigger2 = var(1) = 1
trigger3 = var(2) = 1
value = 0,24
channel = 1
abspan = 0

[State 0, PlaySnd]
type = PlaySnd
;trigger1 = time = 0
trigger1 = var(0) = 6
value = 0,22
channel = 0
abspan = 0

[State 0, TargetState]
type = TargetState
trigger1 = time = 0
trigger2 = var(0) = 1
value = 3229

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0
value = 9741

[State 0, ChangeState]
type = ChangeState
trigger1 = lose
;trigger2 = draw
value = 3230
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = var(0) >= 50
value = 3211
ctrl = 0

;---------------------------------------------------------------------------
; RIP
[Statedef 3211]
type    = S
movetype= A
physics = N
velset = 0,0
juggle  = 0
ctrl = 0
sprpriority = 2
poweradd = 0

[State 0, StopSnd]
type = StopSnd
trigger1 = time = 0
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 0,23
channel = 1
abspan = 0

[State 0, TargetState]
type = TargetState
trigger1 = time = 0
value = 3229

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noBG
flag3 = noFG
ignorehitpause =1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = globalnoshadow
flag2 = nomusic
flag3 = timerfreeze
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nokoslow
flag2 = nokosnd
ignorehitpause = 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = numexplod(3210)
id = 3210
ignorehitpause = 1
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = numexplod(3211)
id = 3211
ignorehitpause = 1
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = numexplod(3212)
id = 3212
ignorehitpause = 1
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = numexplod(3213)
id = 3213
ignorehitpause = 1
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = numexplod(3214)
id = 3214
ignorehitpause = 1

[State 0, Static]
type = Explod
trigger1 = time = 0
anim = 3215
ID = 3215
pos = 160,0
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = .5*(gameheight/240),.5*(gameheight/240)
sprpriority = 300
ownpal = 1
supermovetime = 65535
pausemovetime = 65535

[State 0, Lines]
type = Explod
trigger1 = time = 0
anim = 3216
ID = 3216
pos = 160,0
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
scale = 666,.5*(gameheight/240)
sprpriority = 310
ownpal = 1
supermovetime = 65535
pausemovetime = 65535

[State 0, HitAdd]
type = HitAdd
trigger1 = time%9=0
trigger1 = time <= 100
value = 1

[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = time = 100
value = -444
kill = 1
absolute = 1
ignorehitpause = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = time >= 101
;trigger1 = !winko
value = ifelse(winko,3223,3222)
ctrl = 0

;---------------------------------------------------------------------------
; JAM
[Statedef 3222]
type    = S
movetype= A
physics = N
anim = 3205
velset = 0,0
juggle  = 0
ctrl = 0
sprpriority = 2
poweradd = 0

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = numexplod(3215)
id = 3215
ignorehitpause = 1

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
x = 0
y = -32


[State 0, Static]
type = Explod
trigger1 = time = 0
anim = 3209
ID = 3209
pos = 160,0
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
scale = .5*(gameheight/240),.5*(gameheight/240)
sprpriority = -32
ownpal = 1
supermovetime = 65535
pausemovetime = 65535
[State 0, Lines]
type = Explod
trigger1 = time = 0
anim = 3216
ID = 3216
pos = 160,0
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
scale = 666,.5*(gameheight/240)
sprpriority = 310
ownpal = 1
supermovetime = 65535
pausemovetime = 65535

[State 0, YIKES]
type = Explod
trigger1 = time = 0
anim = 3206
ID = 3206
pos = 0,-60
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = .5,.5
sprpriority = -24
ownpal = 1
supermovetime = 65535
pausemovetime = 65535

[State 0, PosSet]
type = TargetBind
trigger1 = time = 0
pos = 80,-32

[State 0, TargetState]
type = TargetState
trigger1 = time = 0
value = 821

[State 0, PosSet]
type = VelSet
trigger1 = time = 0
x = 4
y = -2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S5,12
channel = 1

[State 0, PosSet]
type = VelSet
trigger1 = time
x = vel x * 0.99
y = vel y + 0.22

[State 0, ChangeState]
type = ChangeState
trigger1 = vel y > 0
trigger1 = vel y + pos y >= 0
value = 52
ctrl = 0
;anim =
;ignorehitpause =
;persistent =

;---------------------------------------------------------------------------
; LUCKY SUNAVABITCH
[Statedef 3230]
type    = S
movetype= A
physics = N
velset = 0,0
juggle  = 0
ctrl = 0
sprpriority = 2
poweradd = 0

[State 0, TargetState]
type = TargetState
trigger1 = time = 0
value = 3229

[State 0, StopSnd]
type = StopSnd
trigger1 = time = 0
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 0,27
channel = 1
abspan = 0
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 360
value = 0,29
abspan = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noBG
flag3 = noFG
ignorehitpause =1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = globalnoshadow
flag2 = nomusic
flag3 = timerfreeze
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nokoslow
flag2 = nokosnd
ignorehitpause = 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = numexplod(3210)
id = 3210
ignorehitpause = 1
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = numexplod(3211)
id = 3211
ignorehitpause = 1
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = numexplod(3212)
id = 3212
ignorehitpause = 1
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = numexplod(3213)
id = 3213
ignorehitpause = 1
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = numexplod(3214)
id = 3214
ignorehitpause = 1

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fvar(0) = 1
[State 0, VarSet]
type = VarSet
trigger1 = time
fvar(0) = ifelse(fvar(0) * 0.99<0.05,0,fvar(0)* 0.99)

[State 0, PalFX]
type = AllPalFX
trigger1 = 1
time = 2
add = 0,0,0
mul = ceil(256*(1-fvar(0)) ),ceil(256*(1-fvar(0)) ),ceil(256*(1-fvar(0)) )
color = 256
ignorehitpause = 1

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fvar(1) = 1
[State 0, VarSet]
type = VarSet
trigger1 = time >= 200
fvar(1) = ifelse(fvar(1) * 0.98<0.05,0,fvar(1)* 0.98)


[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(3231)
trigger1 = time >= 200
ID = 3231
pos = 160,floor(gameheight/2)+floor(36*(1-fvar(1)) )
postype = left
bindtime = -1

[State 0, Static]
type = Explod
trigger1 = time = 0
anim = 3231
ID = 3231
pos = 160,floor(gameheight/2)
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = .5,.5
sprpriority = 290
ownpal = 1
supermovetime = 65535
pausemovetime = 65535
[State 0, Static]
type = Explod
trigger1 = time = 0
anim = 3230
ID = 3230
pos = 160,floor(gameheight/2)
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = .5,.5
sprpriority = 300
ownpal = 1
supermovetime = 65535
pausemovetime = 65535



[State 0, Lines]
type = Explod
trigger1 = time = 0
trigger2 = time = 660
anim = 3216
ID = 3216
pos = 160,0
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
scale = 666,.5
sprpriority = 310
ownpal = 1
supermovetime = 65535
pausemovetime = 65535

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time >= 660
trigger1 = numexplod(3230)
id = 3230
ignorehitpause = 1
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time >= 660
trigger1 = numexplod(3231)
id = 3231
ignorehitpause = 1

[State 0, TargetState]
type = TargetState
trigger1 = time = 660
value = 3227

[State 0, ChangeState]
type = ChangeState
trigger1 = time >= 660
value = 3227
ctrl = 0

[Statedef 3410]
type    = S
movetype= A
physics = N
anim = 3410

[State 0, StopSnd]
type = StopSnd
trigger1 = time = 0
channel = 0

[State 810, TargetState] ; This is the sctrl you'd use to put victims into custom states
type = TargetState
trigger1 = time = 0
value = 3420

[State 810, Grab Sound]
type = PlaySnd
trigger1 = time = 0
value = 1, 1

[State 0, SprPriority]
type = SprPriority
trigger1 = time = 0
value = -2

[State 0, Explod]
type = Explod
trigger1 = animelem = 3
anim = 3440+random%5
ID = 3440
pos = 160,0
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
scale = .5*(gameheight/240),.5*(gameheight/240)
sprpriority = 500
ontop = 1
shadow = 0,0,0
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 = animelemtime(3) >= 0
trigger1 = animelemtime(4) < 0
trigger1 = animelemtime(3)%9 = 1
anim = 3411
ID = 3411
pos = random%320,random%240
postype = left
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
bindtime = 1
removetime = -2
scale = .25,.25
sprpriority = 600
ontop = 1
shadow = 0,0,0
ownpal = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(3) >= 0
trigger1 = animelemtime(4) < 0
trigger1 = animelemtime(3)%9 = 1
value = S5,7
channel = 1

[State 0, HitAdd]
type = HitAdd
trigger1 = animelemtime(3) >= 0
trigger1 = animelemtime(4) < 0
trigger1 = animelemtime(3)%9 = 1
trigger2 = animelem = 2
value = 1

[State 0, EnvShake]
type = EnvShake
trigger1 = animelemtime(3) >= 0
trigger1 = animelemtime(4) < 0
trigger1 = animelemtime(3)%9 = 1
time = 12
freq = 255
ampl = -4

[State 0, Explod]
type = Explod
trigger1 = animelem = 4
anim = 3415
ID = 3415
pos = 100,160
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
scale = 2.5,2.5
sprpriority = 999
ontop = 1
shadow = 0,0,0
ownpal = 1


[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = numexplod(3440)
ignorehitpause = 1
flag = nomusic
flag2 = globalnoshadow

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = numexplod(3440)
ignorehitpause = 1
flag = nobardisplay
flag2 = noBG
flag3 = noFG

[State 0, EnvColor]
type = EnvColor
trigger1 = animelemtime(5) = [0,1]
trigger2 = animelemtime(5) = [4,5]
trigger3 = animelemtime(5) = [8,9]
value = 255,0,0
time = 2
under = (animelemtime(5)>=6)

[State 0, EnvColor]
type = EnvColor
trigger1 = animelemtime(5) = [2,3]
trigger2 = animelemtime(5) = [6,7]
trigger3 = animelemtime(5) = [10,11]
value = 255,255,255
time = 2
under = (animelemtime(5)>=6)

[State 810, Bind 4]
type = TargetBind
trigger1 = animelemtime(2) < 0
pos = floor(73*const(size.xscale)), 0

[State 810, Bind 4]
type = TargetBind
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(5) < 0
pos = floor(80*const(size.xscale)), floor(-249*const(size.yscale))

[State 810, Bind 5]
type = TargetBind
trigger1 = animelemtime(5) = 0
pos = 0, floor(-249*const(size.yscale))

[State 810, Throw 11]
type = TargetState
trigger1 = animelemtime(5) = 0
value = 3421

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = S0,26

[State 0, Explod]
type = Explod
trigger1 = animelem = 5
anim = 1011
ID = 1011
pos = 0,-50
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale)*2,const(size.yscale)*2
sprpriority = 6
ontop = 0
shadow = 0,0,0
ownpal = 1

[State 0, EnvShake]
type = EnvShake
trigger1 = animelem = 5
time = 20
freq = 255
ampl = -14
ignorehitpause = 1
persistent = 0

[State 810, Hurt 11]
type = TargetLifeAdd
trigger1 = AnimElem = 5
value = ceil( -666 * ( .25 + (fvar(13)*.75)) )
persistent = 0

[State 0, Turn]
type = Turn
trigger1 = animtime = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

; FATALITY
[Statedef 10185]
type    = S
movetype= A
physics = N
anim = 9741;10000
velset = 0,0
ctrl = 0

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
var(4) = 256
[State 0, VarSet]
type = VarSet
trigger1 = var(4) > 0
var(4) = ifelse(var(4)-10<=0,0,var(4)-10)

[State 0, AllPalFX]
type = AllPalFX
trigger1 = var(4)
time = 2
add = var(4),var(4),var(4)
;mul = 256,256,256
;sinadd = 0,0,0,10
;invertall = 0
color = 256-var(4)

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
x = 0
y = 0
ignorehitpause = 1

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
var(39) = 10
ignorehitpause = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 2
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 2
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noFG
flag2 = noBG
flag3 = nobardisplay
[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nokoslow
flag2 = nokosnd
flag3 = nomusic
[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = globalnoshadow

[State 0, Explod]
type = Explod
trigger1 = time = [0,120]
trigger1 = !numexplod(10185)
anim = 10185
ID = 10185
pos = 160,floor(gameheight/2)
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = 65535
scale = 1.11111,1.07142857142857
sprpriority = -64
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 = time = [0,120]
trigger1 = !numexplod(10186)
anim = 10186
ID = 10186
pos = 160,floor(gameheight/2)
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = 65535
scale = 1.11111,1.07142857142857
sprpriority = 64
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 = time = [0,120]
trigger1 = !numexplod(10188)
trigger1 = var(2) = 1
anim = 10188
ID = 10188
pos = 160,floor(gameheight/2)
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = 65535
scale = 1,1
sprpriority = 80
ownpal = 1

[State 0, TargetState]
type = TargetState
trigger1 = time = 0
value = 10186
ignorehitpause = 1

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fvar(0) = 1
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
fvar(1) = 2
[State 0, VarSet]
type = VarSet
trigger1 = time
fvar(0) = fvar(0) * 0.99
;[State 0, VarSet]
;type = VarSet
;trigger1 = time
;fvar(1) = fvar(1) * fvar(0)
[State 0, VarSet]
type = VarSet
trigger1 = time
fvar(1) = fvar(1) - 0.0123

[State 0, TargetState]
type = TargetState
trigger1 = time
trigger1 = fvar(1) <= 0.1
value = 3228
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time
trigger1 = fvar(1) <= 0.1
value = S35,ifelse(random<500,5,6)
[State 0, TargetDrop]
type = TargetDrop
trigger1 = time
trigger1 = fvar(1) <= 0.1
[State 0, EnvShake]
type = EnvShake
trigger1 = time
trigger1 = fvar(1) <= 0.1
time = 12
freq = 255
ampl = -3
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time
trigger1 = fvar(1) <= 0.1
trigger1 = numexplod(10185)
id = 10185
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time
trigger1 = fvar(1) <= 0.1
trigger1 = numexplod(10186)
id = 10186
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time
trigger1 = fvar(1) <= 0.1
trigger1 = numexplod(10188)
id = 10188
[State 0, AllPalFX]
type = AllPalFX
trigger1 = time
trigger1 = fvar(1) <= 0.1
time = 16
add = 0,0,0
;mul = 256,256,256
sinadd = 200,200,200,32
;invertall = 0
;color = 256
ignorehitpause = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = time
trigger1 = fvar(1) <= 0.1
value = 0
ctrl = 1



[StateDef 10186]
type = A
movetype = H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 2

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S11,0
channel = 0
abspan = 0

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 10187

[State 0, PosSet]
type = PosSet
trigger1 = 1
x = 0
y = 0 - floor(gameheight/2)
ignorehitpause = 1

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = 0
scale = (enemynear,fvar(1)),(enemynear,fvar(1))


;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------

[Statedef -2]

[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 5950 || anim = 5955
trigger1 = animelemtime(3) = 0
trigger2 = anim = 5131
trigger2 = animelemtime(1) = 1
value = F7,0
[State 0, Explod]
type = Explod
trigger1 = anim = 5950 || anim = 5955
trigger1 = animelemtime(11) = 0
trigger2 = anim = 5131
trigger2 = animelemtime(9) = 0
anim = F61
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
;pausemovetime = 65535
scale = 1,1
sprpriority = 7
ownpal = 1
[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 5950 || anim = 5955
trigger1 = animelemtime(11) = 0
trigger2 = anim = 5131
trigger2 = animelemtime(9) = 0
value = F7,1


[State -2, Footsteps]
type = PlaySnd
trigger1 = anim = 100
trigger1 = animelem = 3 || animelem = 6 || animtime = 0
value = S40,1+random%3

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = var(19)
flag = noairguard
flag2 = nokosnd
ignorehitpause = 1

; if you're making a 10ov.st and copied the statedef -2 in it's entirety, uncomment this strcl so e.g. the hitpauses in both mugen versions would be the same
[State ME AM USING 1.0]
type = VarSet
trigger1 = var(49) != 1
var(49) = 1
ignorehitpause = 1

[State 0, Get out of the modo card]
type = VarSet
trigger1 = var(19) = 1
trigger1 = anim = [200,9999]
trigger1 = stateno != [3070,3079]
trigger1 = anim != 9741
var(19) = 0
ignorehitpause = 1

[State 0, VarSet]
type = VarSet
triggerall = var(30) = 0
triggerall = numenemy
trigger1 = (enemy,movecontact >= 1 || enemy,projcontact >= 1) && (!enemy,moveguarded)
var(30) = -1
ignorehitpause = 1
[State 0, PowerAdd]
type = PowerAdd
triggerall = var(30) = 0
triggerall = stateno != [3000,3999]
trigger1 = (movecontact >= 1 || projcontact >= 1) && (!moveguarded)
;trigger2 = projhittime = 0
;trigger2 = p2movetype = H
;trigger2 = movetype = A
;trigger2 = p2stateno != [120,169]
;trigger2 = projhittime = 1
value = 150
ignorehitpause = 1
[State -2 Send the message]
type = Varset
triggerall = var(30) = 0
trigger1 = (movecontact >= 1 || projcontact >= 1) && (!moveguarded)
;trigger2 = p2movetype = H
;trigger2 = movetype = A
;trigger2 = p2stateno != [120,169]
;trigger2 = projhittime = 1
var(37) = var(37) | floor(exp(2*ln(2)) + 0.5)
ignorehitpause = 1
[State 0, VarSet]
type = VarSet
triggerall = var(30) = 0
trigger1 = (movecontact >= 1 || projcontact >= 1) && (!moveguarded)
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

[State P2Soundcode nope]
type = VarSet
trigger1 = 1
var(33) = 0
ignorehitpause = 1
[State P2Soundcode WHAM]
type = VarSet
trigger1 = (numtarget)
trigger1 = (target,stateno = 1307)
trigger1 = (target,time = 1)
trigger1 = (target,movetype = H)
var(33) = 1
ignorehitpause = 1


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
triggerall = anim != 70851
triggerall = !var(19)
trigger1 = (stateno = 5000) || (stateno = 5010) || (stateno = 5020) || (stateno = 5070)
trigger1 = time = 0
trigger2 = (stateno != 5000) && (stateno != 5010) && (stateno != 5020) && (stateno != 5070)
trigger2 = stateno != [120,160]
trigger2 = gethitvar(damage)
value = 5000,random%9
;volume = 255
channel = 0
ignorehitpause = 1

[State 0, ]
type = PlaySnd
triggerall = alive
triggerall = var(19)
trigger1 = (stateno = 5000) || (stateno = 5010) || (stateno = 5020) || (stateno = 5070)
trigger1 = time = 0
trigger2 = (stateno != 5000) && (stateno != 5010) && (stateno != 5020) && (stateno != 5070)
trigger2 = stateno != [120,160]
trigger2 = gethitvar(damage)
value = 30,10
;volume = 255
channel = 0
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
triggerall = time = 1
triggerall = random < 500
triggerall = !var(19)
trigger1 = stateno = 150
trigger2 = stateno = 152
value = S120,random%6
channel = 0
lowpriority = 1


[State 0, ]
type = PlaySnd
triggerall = !numhelper(3100)
triggerall = !var(19)
trigger1 = stateno = 5120
trigger1 = time = 1
trigger1 = random < 500
trigger1 = roundstate < 3
value = 5120,random%14
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

[State -2, Neo-Juggle-System-Reset]
type = VarSet
triggerall = var(40)
trigger1 = !numtarget
;trigger2 = numtarget
;trigger2 = (target,statetype != A) && (target,statetype != L)
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
fvar(13) = 1 + ifelse(numhelper(3050),0.25,0)
ignorehitpause = 1
[State 0, AttackMulSet]
type = AttackMulSet
trigger1 = 1
time = 2
;value = ifelse(p2movetype!=H,ifelse(var(20)=1,1.25,1),1 - ifelse(fvar(15)>.75,.75,fvar(15)))
;value = ( ifelse((stateno=[3000,3900]), 0.25+(fvar(13)*0.75) ,fvar(13))  ) * ifelse((p2statetype=A&&p2movetype!=H)||var(31),1.25,1)
value = ( ifelse((stateno=[3000,3900]), 0.25+(fvar(13)*0.75) ,fvar(13))  ) * ifelse(var(31),1.25,1)
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
fvar(35) = ifelse((roundstate<=2&&ailevel>=1),ailevel+fvar(36),0)
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
triggerall = stateno != [10800,10899]
triggerall = stateno != 2400
triggerall = enemynear,statetype != A
triggerall = enemynear,statetype != L
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



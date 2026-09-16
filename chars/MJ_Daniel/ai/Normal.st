;---------------------------------------------------------------------------
; Stand Light Punch
; CNS difficulty: easy
[Statedef 200]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
;Commonly-used controllers:
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 200+(var(24)&&var(28)=1)                       ;Change animation (Def: no change)
poweradd = 10                    ;Power to add (Def: 0)
sprpriority = 2                  ;Set p1's sprite layering priority to 2 (in front)
facep2=1

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
damage = 20, 0
animtype = Light
hitflag = MA
guardflag = MA
hitflag = MA
priority = 3, Hit
pausetime = 8, 10
sparkno = s7900+random%8
guard.sparkno = s8060
sparkxy = -10, -59
hitsound = s5, 0
guardsound = s6, 0
ground.type = Low
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = Low
air.velocity = -1.4,-3
air.hittime = 12
kill = var(46)
ID=400

[State 200, Helper]
type = Null;Helper
triggerall = NumHelper <= 6
trigger1 = NumHelper(200) <= 2 || NumHelper(201) <= 2 || NumHelper(202) <= 2 || NumHelper(203) <= 2
trigger1 = MoveHit
helpertype = normal
name = "HitFX"
ID = 200 + (NumHelper(200) >= 3) + (NumHelper(201) >= 6) + (NumHelper(202) >= 9)
stateno = 201
pos = -10, -59
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1
persistent = 3

[State 200, Voice]
type = PlaySnd
triggerall = !var(38)
Triggerall = anim=200
trigger1 = time = 0
trigger1 = random <=300 ;3/10 Chance of Saying
value = S0,1+random%3
channel = 0

[State 200, 1]
type = PlaySnd
trigger1 = Time = 2
value = s1,0

[State 200, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 201]
type    = A
movetype= I
physics = N
ctrl = 0
velset = 4-random%9,-2.5+(random%10/2)
anim = 2351
sprpriority = 5

[State 201, rotate]
type = AngleDraw
trigger1 = 1
value = (atan(Vel Y*(Vel X**-1))*57.2957795)
ignorehitpause = 1

;To see if the rotation is accurate using a hit spark
[State 201, Debug]
type= NotHitBy
value = SCA
trigger1 = 1

[State 201, Fall]
type = VelAdd
trigger1 = 1
y = .5

[State 201, Bounces]
type = VarSet
trigger1 = Time = 0
v = 10
value = 4

[State 201, Vel Y]
type = VarAdd
trigger1 = Vel Y > 0 && Pos Y >= 0
v = 10
value = -1

[State 201, Vel Y]
type = VelSet
trigger1 = Vel Y > 0 && Pos Y >= 0
y = -(Vel Y*0.75)

[State 201, DestroySelf]
type = DestroySelf
trigger1 = var(10) < 0
trigger2 = ScreenPos X > 320 || ScreenPos X < 0
ignorehitpause = 1

;---------------------------------------------------------------------------
; Standing medium punch
; CNS difficulty: easy
; Note the width controller. It makes KFM's push box larger, so he doesn't
; stand so close to the opponent. Hit Ctrl-C and look at the red bar at his
; feet.
; The sprpriority for this state is at -1, instead of the usual 2 for
; attacks. This makes KFM appear behind the opponent initially.
; The SprPriority controller in [State 210, 4] brings KFM to the front when
; his arm has swung over.
; To stop KFM from pausing in his swing frame, there is a ChangeAnim in
; [State 210, 3] that detects if the hit has come in contact with the
; opponent during that frame, and switches to the next animation element
; (notice the elem=6 parameter). If you don't see what I mean, try commenting
; out that controller, then hit someone with this attack.
[Statedef 210]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 48
ctrl = 0
velset = 0,0
anim = 210+(var(24)&&var(28)=1)
sprpriority = -1

[State 210, Width]
type = Width
trigger1 = (AnimElemTime(6) >= 0) && (AnimElemTime (7) < 0)
value = 20,0
[State 210, Width]
type = Width
trigger1 = (AnimElemTime(7) >= 0) && (AnimElemTime (8) < 0)
value = 36,0

[State 210, 1]
type = PlaySnd
triggerall = !var(38)
trigger1 = time = 0
trigger1 = random <=300 ;3/10 Chance of Saying
value = S0,1+random%3
channel = 0

[State 210, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S1,1

[State 210, 2]
type = HitDef
trigger1 = Anim=210
trigger1 = AnimElem = 6
attr = S, NA
animtype  = Medium
damage    = 10;25
hitflag = MA
guardflag = MA
pausetime = 12,16
guard.pausetime = 12,12
sparkno = s7900+random%8
guard.sparkno = s8060
sparkxy = -10,-60
hitsound   = s5,1
guardsound = s6,0
ground.type = High
ground.slidetime = 7
ground.hittime  = 20
ground.velocity = -2.2
air.velocity = -2.5,-4
envshake.time=5
envshake.freq=160
envshake.ampl=3
kill = var(46)
ID=400

[State 0, PosAdd]
type = PosAdd
trigger1 = AnimElem = 7
x = 5+ifelse(movecontact,15,0)

[State 210, 2]
type = HitDef
trigger1 = Anim=211
trigger1 = AnimElem = 5
attr = S, NA
animtype  = Medium
damage    = 25
hitflag = MA
guardflag = MA
pausetime = 16,16
guard.pausetime = 6,6
sparkno = s7900+random%8
guard.sparkno = s8060
sparkxy = -10,-60
hitsound   = s5,1
guardsound = s6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 13
ground.velocity = -3.6
air.velocity = -2.5,-4
envshake.time=8
envshake.freq=134
envshake.ampl=-4
kill = var(46)
ID=400

[State 210, 2]
type = HitDef
trigger1 = Anim=210
trigger1 = AnimElem = 7
attr = S, NA
animtype  = Medium
damage    = ifelse(movecontact,15,25)
hitflag = MA
guardflag = MA
pausetime = 12,12
guard.pausetime = 12,12
sparkno = s7900+random%8
guard.sparkno = s8060
sparkxy = -10,-60
hitsound   = s5,1
guardsound = s6,0
ground.type = High
ground.slidetime = 7
ground.hittime  = 13
ground.velocity = -2.3
air.velocity = -2.5,-4
envshake.time=8
envshake.freq=134
envshake.ampl=-4
kill = var(46)
ID=400

[State 210, Helper]
type = Null;Helper
triggerall = NumHelper <= 11
trigger1 = NumHelper(210) <= 2 || NumHelper(211) <= 2 || NumHelper(212) <= 2 || NumHelper(213) <= 2
trigger1 = MoveHit
helpertype = normal
name = "HitFX"
ID = 210 + (NumHelper(210) >= 3) + (NumHelper(211) >= 6) + (NumHelper(212) >= 9)
stateno = 201
pos = -10, -70
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1
persistent = 3

[State 210, 4]
type = SprPriority
trigger1 = AnimElem = 5
value = 2

[State 210, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
; Standing strong punch
; CNS difficulty: easy
; Note the width controller. It makes KFM's push box larger, so he doesn't
; stand so close to the opponent. Hit Ctrl-C and look at the red bar at his
; feet.
; The sprpriority for this state is at -1, instead of the usual 2 for
; attacks. This makes KFM appear behind the opponent initially.
; The SprPriority controller in [State 210, 4] brings KFM to the front when
; his arm has swung over.
; To stop KFM from pausing in his swing frame, there is a ChangeAnim in
; [State 210, 3] that detects if the hit has come in contact with the
; opponent during that frame, and switches to the next animation element
; (notice the elem=6 parameter). If you don't see what I mean, try commenting
; out that controller, then hit someone with this attack.
[Statedef 220]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd = 77
ctrl = 0
velset = 0,0
anim = 220+(var(24)&&var(28)=1)
sprpriority = -1

[State 220, Width]
type = Width
trigger1 = (AnimElemTime (2) >= 0) && (AnimElemTime (7) < 0)
value = 15,0

[State 220, 1]
type = PlaySnd
triggerall = !var(38)
trigger1 = time = 0
trigger1 = random <=300 ;3/10 Chance of Saying
value = S0,1+random%3
channel = 0

[State 220, PosAdd]
type = PosAdd
trigger1 = AnimElem = 5
x = 8

[State 220, PlaySnd]
type = PlaySnd
trigger1 = AnimElem=3
value = S1,5

[State 4920, Explod]
type = Explod
triggerall = Anim=221
trigger1 = AnimElem = 3
anim = 222
ID = 221
pos = 0,0
postype = p1
removetime = -1
bindtime=-1
scale = 1,1
sprpriority = 3
shadow = 0,0,0
ownpal = 1
removeongethit=0;1
ignorehitpause=1

[State 4920, Helper]
type = Helper
triggerall = Anim=221
trigger1 = AnimElemTime(8) = 0
helpertype = normal
name = "Koakuma Bat"
ID = 4920
pos = 18,-41
stateno = 4922
postype = p1
ownpal = 1
size.xscale=1
size.yscale=1

[State 4920, RemoveExplod]
type = RemoveExplod
triggerall = Anim =221
triggerall = NumExplod(221)
trigger1 = AnimElemTime(8) = 0
id = 221

[State 220, 2]
type = HitDef
trigger1 = AnimElem = 5
attr = S, NA
animtype  = Hard
hitflag = MA
damage    = 42
guardflag = MA
pausetime = 8+(Anim=221)*8,8+(Anim=221)*8
guard.pausetime=8,8
sparkno = s7900+random%8
guard.sparkno = s8060
sparkxy = -13,-55
hitsound   = s5,2
guardsound = s6,0
ground.type = High
ground.slidetime = 16
ground.hittime  = 22
ground.velocity = -4.251
air.velocity = -3,-4
envshake.time=18
envshake.freq=160
envshake.ampl=-6
kill = var(46)
ID=400

[State 0, VelSet]
type = VelSet
trigger1 =Animelem=4 && Anim = 220
x = 4.5

[State 0, PosAdd]
type = PosAdd
trigger1 = Animelem=10
x = 8

[State 220, Helper]
type = Null;Helper
triggerall = NumHelper <= 11
trigger1 = NumHelper(220) <= 2 || NumHelper(221) <= 2 || NumHelper(222) <= 2 || NumHelper(223) <= 2
trigger1 = MoveHit
helpertype = normal
name = "HitFX"
ID = 220 + (NumHelper(220) >= 3) + (NumHelper(221) >= 6) + (NumHelper(222) >= 9)
stateno = 201
pos = -10, -49
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1
persistent = 3

[State 220, 4]
type = SprPriority
trigger1 = AnimElem = 5
value = 2

[State 220, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing light kick
; CNS difficulty: easy
[Statedef 230]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 30
ctrl = 0
velset = 0,0
anim = 230+(var(24)&&var(28)=1)
sprpriority = 2
facep2=1

[State 230, 1]
type = PlaySnd
triggerall = !var(38)
trigger1 = Time = 2
trigger1 = random <=200 ;1/5 Chance of Saying
value = S0,1+random%3
channel = 0

[State 230, PlaySnd]
type = PlaySnd
trigger1 = time = 2
value = S1,3

[State 230, 2]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = Medium
damage    = 20
hitflag = MA
guardflag = MA
pausetime = 6,6
sparkno = s7900+random%8
guard.sparkno = s8060
sparkxy = -10,-37
hitsound   = s5,3
guardsound = s6,0
ground.type = Low
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -2.1
air.velocity = -1.3,-3.5
kill = var(46)
ID=400

[State 230, 2]
type = HitDef
Triggerall = Anim=231
trigger1 = Time = 0
attr = S, NA
animtype  = Medium
damage    = 20
hitflag = MA
guardflag = MA
pausetime = 10,10
sparkno = s7900+random%8
guard.sparkno = s8060
sparkxy = -10,-37
hitsound   = s5,3
guardsound = s6,0
ground.type = Low
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -2.8
air.velocity = -1.675,-3
ground.cornerpush.veloff = -5.5
air.cornerpush.veloff = -5.5
down.cornerpush.veloff = -5.5
guard.cornerpush.veloff = -5.5
airguard.cornerpush.veloff =-5.5
kill = var(46)
ID=400

[State 230, Helper]
type = Null;Helper
triggerall = NumHelper <= 11
trigger1 = NumHelper(230) <= 2 || NumHelper(231) <= 2 || NumHelper(232) <= 2 || NumHelper(233) <= 2
trigger1 = MoveHit
helpertype = normal
name = "HitFX"
ID = 230 + (NumHelper(230) >= 3) + (NumHelper(231) >= 6) + (NumHelper(232) >= 9)
stateno = 201
pos = -10, -37
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1
persistent = 3

[State 230, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing med kick
; CNS difficulty: easy
[Statedef 240]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 47
ctrl = 0
velset = 0,0
anim = 240
sprpriority = 2

[State 240, 1]
type = PlaySnd
triggerall = !var(38)
trigger1 = Time = 2
trigger1 = random <=400 ;2/5 Chance of Saying
value = S0,1+random%3
channel = 0

[State 240, PlaySnd]
type = PlaySnd
trigger1 = time = 6
value = S1,4

[State 240, 2]
type = HitDef
trigger1 = Time = 0
attr = S, NA
hitflag = MA
animtype  = Medium
damage    = 26
guardflag = MA
pausetime = 8,8
sparkno = s7900+random%8
guard.sparkno = s8060
sparkxy = -10,-59
hitsound   = s5,4
guardsound = s6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 16
ground.velocity = -3.67
air.velocity = -2.6,-3.2
kill = var(46)
ID=400

[State 240, Helper]
type = Null;Helper
triggerall = NumHelper <= 11
trigger1 = NumHelper(240) <= 2 || NumHelper(241) <= 2 || NumHelper(242) <= 2 || NumHelper(243) <= 2
trigger1 = MoveHit
helpertype = normal
name = "HitFX"
ID = 240 + (NumHelper(240) >= 3) + (NumHelper(241) >= 6) + (NumHelper(242) >= 9)
stateno = 201
pos = -10, -34
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1
persistent = 3

[State 240, 3]
type = PosAdd
trigger1 = AnimElem = 2 || AnimElem = 3
x = 9

[State 240, 3]
type = PosAdd
trigger1 = AnimElem = 4
x = 12

[State 240, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing med kick
; CNS difficulty: easy
[Statedef 245]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= -1000
ctrl = 0
velset = 0,0
anim = 243
sprpriority = 2

[State 241, 1]
type = PlaySnd
trigger1 = Time = 0
value = S16000,0
channel = 0

[State 241, Pause]
type = SuperPause
trigger1 = Time = 0
time = 30
anim = -1
sound = -1
darken = 1
p2defmul = 1.00

[State 240, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S1,4

[State 241, 2]
type = HitDef
trigger1 = Time = 0
attr = S, HA
hitflag = MA
animtype  = Medium
damage    = 45,5
guardflag = MA
pausetime = 8,8
sparkno = s7930+random%8
guard.sparkno = s8060
sparkxy = -10,-34
hitsound   = s5,9
guardsound = s6,0
ground.type = Low
p2stateno = 4850
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -22
air.velocity = -22,0
getpower = 0,0
kill = var(46)
ID=400

[State 241, Helper]
type = Null;Helper
triggerall = NumHelper <= 11
trigger1 = NumHelper(240) <= 2 || NumHelper(241) <= 2 || NumHelper(242) <= 2 || NumHelper(243) <= 2
trigger1 = MoveHit
helpertype = normal
name = "HitFX"
ID = 240 + (NumHelper(240) >= 3) + (NumHelper(241) >= 6) + (NumHelper(242) >= 9)
stateno = 201
pos = -10, -34
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1
persistent = 3

[State 245, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 241, 3]
type = PosAdd
trigger1 = AnimElem = 7
x = 12

[State 241, 4]
type = ChangeAnim
trigger1 = Anim = 243 && AnimTime = 0
value = 240
elem = 4

[State 241, 4]
type = ChangeState
trigger1 = Anim = 240 && AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Strong kick
; CNS difficulty: easy
[Statedef 260]
type    = S
movetype= A
physics = S
juggle  = 11
poweradd= 47
ctrl = 0
velset = 0,0
anim = 241
sprpriority = 2

[State 260, 1]
type = PlaySnd
triggerall = !var(38)
trigger1 = Time = 2
trigger1 = random < 200 ;EXACTLY 1/5 Chance of Saying
value = S0,1+random%3
channel = 0

[State 260, PlaySnd]
type = PlaySnd
trigger1 = time = 6
value = S1,5

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA
animtype  = Medium
damage    = 10;25
hitflag = MA
guardflag = MA
pausetime = 4,7
guard.pausetime = 12,12
sparkno = s7900+random%8
guard.sparkno = s8060
sparkxy = -10,-32
hitsound   = s5,1
guardsound = s6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 13
ground.velocity = -3.8
air.velocity = -2.5,-4
kill = var(46)
ID=400

[State 0, PosAdd]
type = PosAdd
trigger1 = Animelem=5 || AnimElem = 6
x = 5+ifelse(movecontact,12,0)

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 5
attr = S, NA
animtype  = Hard
damage    = ifelse(movecontact,15,25)
hitflag = MA
guardflag = MA
pausetime = 7,12
guard.pausetime = 12,12
sparkno = s7900+random%8
guard.sparkno = s8060
sparkxy = -10,-60
hitsound   = s5,1
guardsound = s6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 13
ground.velocity = -4
air.velocity = -2.5,-4
kill = var(46)
ID=400

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 6
attr = S, NA
animtype  = Hard
damage    = ifelse(movecontact,20,32)
hitflag = MA
guardflag = MA
pausetime = 12,12
guard.pausetime = 12,12
sparkno = s7900+random%8
guard.sparkno = s8060
sparkxy = -10,-60
hitsound   = s5,1
guardsound = s6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 13
ground.velocity = -3.3
air.velocity = -2.5,-4
kill = var(46)
ID=400

[State 240, 3]
type = PosAdd
trigger1 = AnimElem = 3
x = 8

[State 240, 3]
type = PosAdd
trigger1 = AnimElem = 5
x = 5

[State 250, Helper]
type = Null;Helper
triggerall = NumHelper <= 11
trigger1 = NumHelper(250) <= 2 || NumHelper(251) <= 2 || NumHelper(252) <= 2 || NumHelper(253) <= 2
trigger1 = MoveHit
helpertype = normal
name = "HitFX"
ID = 250 + (NumHelper(250) >= 3) + (NumHelper(251) >= 6) + (NumHelper(252) >= 9)
stateno = 201
pos = -10, -34
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1
persistent = 3

[State 260, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Strong kick
; CNS difficulty: easy
[Statedef 241]
type    = S
movetype= A
physics = S
juggle  = 11
poweradd= 47
ctrl = 0
velset = 0,0
anim = 260+100*(var(24)>0&&var(28)=1)
sprpriority = 2

[State 261, 1]
type = PlaySnd
triggerall = !var(38)
trigger1 = Time = 2
trigger1 = random < 200 ;EXACTLY 1/5 Chance of Saying
value = S0,1+random%3
channel = 0

[State 261, PlaySnd]
type = PlaySnd
trigger1 = time = 6
value = S1,5

[State 261, 2]
type = HitDef
triggerall = Anim=260
trigger1 = Time = 0
attr = S, NA
animtype  = Hard
damage    = 15
hitflag = MA
guardflag = MA
pausetime = 3,16
guard.pausetime = 6,6
sparkno = s7900+random%8
guard.sparkno = s8060
sparkxy = -10,-34
hitsound   = s5,10
guardsound = s6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 16
ground.velocity = -2
fall.recovertime = 10
air.velocity = -3,-5.9
kill = var(46)
ID=400

[State 261, 2]
type = HitDef
triggerall = Anim!=260
trigger1 = Time = 0
attr = S, NA
animtype  = Hard
damage    = 40,5
hitflag = MA
guardflag = MA
pausetime = 5,5
guard.pausetime = 10,6
sparkno = s7900+random%8
guard.sparkno = s8060
sparkxy = -10,-54
hitsound   = s853,13
guardsound = s6,0
ground.type = High
ground.slidetime = 19
ground.hittime  = 19
forcestand=1
p2facing=1
kill = var(46)
ground.velocity = -27;40;-2.6
guard.velocity = -6
air.velocity = -22,-2.6
fall.animtype = Hard
guard.sparkno = s7911
envshake.time = 15
envshake.freq = 185
envshake.ampl = -3
air.fall=1
fall.recover=0
;nochainid=501,601
ID=360

[State p2stateno]
type = TargetState
triggerall = Anim!=260
triggerall = movehit && !movereversed && !moveguarded
triggerall = NumTarget(360)
triggerall = !target(360),IsHelper
trigger1 = target(360),Time=0
value = 365
ID = 360
ignorehitpause=1

[State 261, 1]
type = PlaySnd
triggerall = Anim=260
trigger1 = AnimElem = 4
value = S41,0

[State 240, 3]
type = PosAdd
trigger1 = AnimElem = 3
trigger2= AnimElem = 4
x = 8

[State 240, 3]
type = PosAdd
trigger1 = AnimElem = 5
x = 3

[State 250, Helper]
type = Null;Helper
triggerall = NumHelper <= 11
trigger1 = NumHelper(250) <= 2 || NumHelper(251) <= 2 || NumHelper(252) <= 2 || NumHelper(253) <= 2
trigger1 = MoveHit
helpertype = normal
name = "HitFX"
ID = 250 + (NumHelper(250) >= 3) + (NumHelper(251) >= 6) + (NumHelper(252) >= 9)
stateno = 201
pos = -10, -34
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1
persistent = 3

[State 260, 4]
type = ChangeState
triggerall = Anim=260
trigger1 = AnimTime = 0
value = 242
ctrl = 0

[State 260, 4]
type = ChangeState
triggerall = Anim!=260
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 365]
type = U
movetype = H
physics=N
ctrl = 0
anim = ifelse(statetype=S||statetype=C,5012,5030)
velset = 0,0

[State Not Air]
type = StateTypeSet
triggerall = Time=0
trigger1 = statetype=S||statetype=C
statetype = S
[State Air]
type = StateTypeSet
triggerall = Time=0
trigger1 = statetype!=S&&statetype!=C
statetype = A

[State freeze anim]
type = ChangeAnim
trigger1 = 1
value = anim

[State not oppinion, news]
type = ChangeState
trigger1 = HitShakeOver=1
trigger2 = Time>5
value = ifelse(statetype=S,366,4923)

[Statedef 366]
type = S
movetype = H
physics=S
ctrl = 0
anim = 5012
velset = 0,0

[State Nya]
type = PlayerPush
trigger1 = 1
value = 0

[State OUCH]
type = HitVelSet
trigger1 = Time=0
x = 1

[State WHAAAA]
type = VelSet
trigger1 = Vel X > -20
x = -20

[State eeehhh]
type = ChangeAnim
trigger1 = AnimTime=0 && Anim=5012
value = anim + 5

[State DED]
type = ChangeState
trigger1 = backedgebodydist <= 10
value = 367
ctrl = 0

[Statedef 367]
type = S
movetype = H
physics=S
ctrl = 0
anim = 5012
velset = 0,0

[State EEK]
type = PosAdd
trigger1 = Time=0
x = 10-backedgebodydist

[State DOH]
type = PlaySnd
trigger1 = Time=0
value = F5,4

[State FREEZE]
type = PosFreeze
trigger1 = Time<4
x=1
y=1

[State WALL BOUNCE]
type = Explod
trigger1 = Time=0
anim = F72
pos = -backedgebodydist,-35
postype = p1
bindtime = 1
removetime = -2
scale = 1,1
ontop = 1
removeongethit = 0

[State FREEZE LOOP]
type = ChangeAnim
trigger1 = Time<=4
value = 5012

[State OUCH]
type = HitVelSet
trigger1 = Time=4
x = 1

[State REVERSE]
type = VelSet
trigger1 = Time=4
x = -Vel X

[State DED]
type = SelfState
trigger1 = !Alive && Time>=4
value = 5050
ctrl = 0

[State eeehhh]
type = ChangeAnim
trigger1 = AnimTime=0 && Anim=5012
value = anim + 5

[State DED]
type = SelfState
trigger1 = Time >= 25
value = 0
ctrl = 1 ;oops

;---------------------------------------------------------------------------
; Standing Strong kick
; CNS difficulty: easy
[Statedef 242]
type    = A
movetype= A
physics = N
ctrl = 0
anim = 261
sprpriority = 2

[State 241, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.5

[State 261, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = S237,0

[State 241, VelSet]
type = VelSet
trigger1 = Time=0
y = -7.8

[State 261, 2]
type = HitDef
trigger1 = Time = 0
attr = A, NA
animtype  = Hard
damage    = 33
hitflag = MA
guardflag = MA
pausetime = 3,9
guard.pausetime = 6,6
sparkno = s7900+random%8
guard.sparkno = s8060
sparkxy = -10,-34
hitsound   = s5,10
guardsound = s6,0
ground.type = High
ground.slidetime = 48
ground.hittime  = 48
ground.velocity = -3
fall.recovertime = 10
air.velocity = -3,-5.9
kill = var(46)
ID=400

[State 260, 4]
type = ChangeState
trigger1 = Pos Y >= 15 && Vel Y > 0
value = 243
ctrl = 0

[Statedef 243]
type    = S
movetype= I
physics = N
ctrl = 0
anim = 262
sprpriority = 2
movehitpersist=1

[State 243, PlaySnd]
type = PlaySnd
trigger1 = Time=0
value = S40,0

[State 243, VelSet]
type = VelSet
trigger1 = Time=0
y = 0

[State 0, PosSet]
type = PosSet
trigger1 = Time=0
y = 0

[State 260, 4]
type = ChangeState
trigger1 = AnimTime=0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Crouching light punch
; CNS difficulty: easy
; Description: Simple crouching attack. The HitDef's guardflag parameter
;     is set to "L", meaning that the move can only be guarded low
;     (crouching), and not by standing or jumping opponents.
;     Like for all light attacks, it's a good idea to keep the slidetime
;     and hittime parameters at a smaller number, so the opponent isn't
;     stunned for too long. For all crouching attacks you have to
;     remember to set the attr parameter to indicate that it is crouching
;     attack. In this case, "C, NA" stands for "crouching, normal attack".
;     The HitDef's priority is set at 3, instead of the default of 4,
;     so this attack has a lower priority than most others, meaning
;     KFM will get hit instead of trading hits with his opponent if
;     their attack collision boxes (Clsn1) intersect each other's Clsn2
;     boxes at the same time.
[Statedef 400]
type    = C
movetype= A
physics = C
juggle  = 8
poweradd= 10
ctrl = 0
anim = 400+(var(24)&&var(28)=1)
sprpriority = 2

[State 400, 1]
type = PlaySnd
trigger1 = Time = 1
value = 1, 0

[State 400, 2]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 20
priority  = 3
animtype  = Light
hitflag = MA
guardflag = L
pausetime = 7,8
sparkno = s7900+random%8
guard.sparkno = s8060
sparkxy = -10,-42
hitsound   = s5,0
guardsound = s6,0
ground.type = Low
ground.slidetime = 4
ground.hittime  = 9
ground.velocity = -3.1-(0.9*Anim=401)
air.velocity = -1.5,-3
kill = var(46)
ID=400

[State 400, Helper]
type = Null;Helper
triggerall = NumHelper <= 11
trigger1 = NumHelper(400) <= 2 || NumHelper(401) <= 2 || NumHelper(402) <= 2 || NumHelper(403) <= 2
trigger1 = MoveHit
helpertype = normal
name = "HitFX"
ID = 400 + (NumHelper(400) >= 3) + (NumHelper(401) >= 6) + (NumHelper(402) >= 9)
stateno = 201
pos = -10, -42
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1
persistent = 3

[State 400, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl=1

;---------------------------------------------------------------------------
;Crouching strong punch
; CNS difficulty: easy
; Description: This is a 2-hit move. It is done by having two HitDefs
;     triggered, one for each frame of animation that hits.
;     Notice how the first hit cannot be guarded by an opponent in the
;     air, because of the "M" in the guardflag, meaning it can only
;     be guarded "middle". The second hit has an "MA" guardflag, so
;     it can be guarded both on the ground and in the air.
; CNS ÉåÉxÉã: à’
; è⁄ç◊: Ç±ÇÍÇÕâ£ë≈Ç™ìÒî≠Ç ÇÈçUåÇÇ≈Ç∑ÅB
; â£ë≈Ç≈Ç´ÇÈÉAÉjÉÅÅ[ÉVÉáÉìÇÃñáÇÕàÍÅXHitDefÇìoò^ÇµÇƒÇ¢Ç‹Ç∑ÅB
; àÍî≠ñ⁄ÇÃçUåÇÇÃHitDefÇ…ÇÕguardflagÇ™ÅuMÅvÅimiddleÅÅíÜíiÉKÅ[ÉhÅj
; Ç…ÉZÉbÉgÇ≥ÇÍÇƒÇ¢ÇÈÇÃÇ≈ÅAëäéËÇÕãÛíÜÇ≈ÉKÅ[ÉhÇ≈Ç´Ç‹ÇπÇÒÅBìÒî≠ñ⁄
; ÇÃçUåÇÇÃguardflagÇÕÅuMAÅvÅimiddle+airÅÅíÜíiÅ{ãÛíÜÉKÅ[ÉhÅjÇ≈ÅA
; ínè„ÅAãÛíÜÇ≈Ç‡ÉKÅ[ÉhÇ∑ÇÈÇ±Ç∆Ç™Ç≈Ç´Ç‹Ç∑ÅB
[Statedef 410]
type    = C
movetype= A
physics = C
juggle  = 6
poweradd= 45
ctrl = 0
anim = 410+(var(24)&&var(28)=1)
sprpriority = 2

[State 410, 1]
type = PlaySnd
triggerall = anim=410
trigger1 = Time = 1
value = 1, 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim=411
trigger1 = animElem=3
value = S440,random%3
channel=0

[State 410, 1]
type = PlaySnd
triggerall = anim=411
trigger1 = Time = 4
value = 1, 3

[State 450, PosAdd]
type = PosAdd
trigger1 = AnimElem=3
trigger2 = AnimElem=4
x = 4

[State 410, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = C, NA
damage = 30
animtype = Medium
hitflag = MA
guardflag = L
pausetime = 9,9
sparkno = s7900+random%8
guard.sparkno = s8060
sparkxy = -10,-42
hitsound = s5,1+13*(Anim=411)
guardsound = s6,0
ground.type = Low
ground.slidetime = 6
ground.hittime  = 14
ground.velocity = -4.23
air.velocity = -6.9,-3.75
kill = var(46)
ID=400

[State 400, Helper]
type = Null;Helper
triggerall = NumHelper <= 11
trigger1 = NumHelper(410) <= 2 || NumHelper(411) <= 2 || NumHelper(412) <= 2 || NumHelper(413) <= 2
trigger1 = MoveHit
helpertype = normal
name = "HitFX"
ID = 410 + (NumHelper(410) >= 3) + (NumHelper(411) >= 6) + (NumHelper(412) >= 9)
stateno = 201
pos = -10, -42
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1
persistent = 3

[State 410, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Crouching Medium Beta Punch

[Statedef 411]
type    = C
movetype= A
physics = C
juggle  = 3
poweradd= 0
velset = 8,0
ctrl = 0
anim = 411
sprpriority = 2

[State 411, 1]
type = PlaySnd
trigger1 = Time = 1
value = S1, 5

[State 411, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = C, SA
damage = 9
animtype = Hard
hitflag = MA
guardflag = M
pausetime = 2,6
sparkno = s7920+random%8
guard.sparkno = s7911
sparkxy = -10,-58
hitsound = s5,6
guardsound = s6,0
ground.type = Low
ground.slidetime = 9
ground.hittime  = 18
ground.velocity = -10
air.velocity = -7,-4
kill = var(46)
ID=400

[State 411, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Crouching Medium Omega Punch

[Statedef 412]
type    = C
movetype= A
physics = C
juggle  = 4
poweradd= 0
velset = 16,0
ctrl = 0
anim = 412
sprpriority = 2

[State 412, 1]
type = PlaySnd
trigger1 = Time = 1
value = S1, 5

[State 412, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = C, SA
damage = 10
animtype = Hard
hitflag = MA
guardflag = MA
pausetime = 2,6
sparkno = s7920+random%8
guard.sparkno = s7911
sparkxy = -10,-58
hitsound = s5,6
guardsound = s6,0
ground.type = Low
ground.slidetime = 9
ground.hittime  = 18
ground.velocity = -12
air.velocity = -8,-4
kill = var(46)
ID=400

[State 412, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Crouch Strong Punch
[Statedef 420]
type    = C
movetype= A
physics = N
juggle  = 7
ctrl = 0
anim = 450;420
sprpriority = 2

[State 0, VelSet]
type = VelSet
trigger1 = Time=0 && prevstateno!=100
x = 3
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = Time=0 && prevstateno=100
y = 0

[State 0, VelSet]
type = VelMul
trigger1 = Time=0 && prevstateno=100
x = 0.92

[State 420, Whoosh!]
type = playsnd
trigger1 = Time = 6
value = S1, 5

[State 5110, 7]
type = GameMakeAnim
trigger1 = AnimElem=8
value = 62
pos = 0, 0
under = 0

[State 420, Whoosh!]
type = playsnd
trigger1 = AnimElem=8
value = S22000, 0

[State 420, VelSet]
type = VelSet
trigger1 = AnimElem=8
x = 0

[State 420, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
pausetime = 11,11
animtype = Back
hitflag = MAD
guardflag = L
priority = 3, Hit
sparkno = S7900+random%8
guard.sparkno = s8060
sparkxy = -15,-18
damage = 40
ground.type = Trip
hitsound = S5, 6
guardsound = S6, 0
ground.velocity = -8, -4
air.velocity = -7, -1
ground.hittime = 15
ground.slidetime = 12
fall=1
kill = var(46)
ID=400

[State 400, Helper]
type = Null;Helper
triggerall = NumHelper <= 11
trigger1 = NumHelper(420) <= 2 || NumHelper(421) <= 2 || NumHelper(422) <= 2 || NumHelper(423) <= 2
trigger1 = MoveHit
helpertype = normal
name = "HitFX"
ID = 420 + (NumHelper(420) >= 3) + (NumHelper(421) >= 6) + (NumHelper(422) >= 9)
stateno = 201
pos = -15, -18
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1
persistent = 3

[State 420, ChangeState]
type = ChangeState
value = 11
ctrl = 1
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------
;Crouching light kick
; CNS difficulty: easy
[Statedef 430]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 10
ctrl = 0
anim = 430+(var(24)&&var(28)=1)
sprpriority = 2

[State 0, Width]
type = Width
trigger1 = Anim=431
player = 30,18

[State 430, 1]
type = PlaySnd
trigger1 = Time = 1
value = 1, 3

[State 430, 2]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 20
animtype  = Light
hitflag = MA
guardflag = L
pausetime = 7,7
sparkno = s7900+random%8
guard.sparkno = s8060
sparkxy = -10,-8
hitsound   = s5,3
guardsound = s6,0
ground.type = Low
ground.slidetime = 6
ground.hittime  = 10
ground.velocity = -3.5
air.velocity = -2,-3
down.velocity = -5,0
down.hittime = 20
kill = var(46)
ID=400

[State 400, Helper]
type = Null;Helper
triggerall = NumHelper <= 11
trigger1 = NumHelper(430) <= 2 || NumHelper(431) <= 2 || NumHelper(432) <= 2 || NumHelper(433) <= 2
trigger1 = MoveHit
helpertype = normal
name = "HitFX"
ID = 430 + (NumHelper(430) >= 3) + (NumHelper(431) >= 6) + (NumHelper(432) >= 9)
stateno = 201
pos = -10, -8
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1
persistent = 3

[State 430, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Crouch Strong Kick
; CNS difficulty: easy
; Description: This move uses "Trip" for the "ground.type" parameter in
;     its HitDef. It's a special type that puts the opponent in a tripped
;     animation as he falls. Also, the hitflag parameter in the HitDef
;     is set to "MAFD". The "D" indicates that a downed opponent can be
;     hit by the attack.
; CNS ÉåÉxÉã: à’
; è⁄ç◊:
[Statedef 440]
type    = C
movetype= A
physics = C
juggle  = 7
poweradd= 50
ctrl = 0
anim = 440
sprpriority = 2

[State 440, VelSet]
type = VelSet
trigger1 = Time = 0
x = 2.1*((prevstateno=410)||(prevstateno=430))

[State 440, 2]
type = PlaySnd
trigger1 = Time = 2
value = 1, 4

[State 440, 3]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 30
hitflag = MAD
guardflag = L
pausetime = 10,10
sparkno = s7900+random%8
guard.sparkno = s8060
sparkxy = -5,-10
hitsound   = s5,4
guardsound = s6,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -3
air.velocity = -1.2,-3
guard.velocity = -2
kill = var(46)
ID=400

[State 440, PosAdd]
type = PosAdd
trigger1 = AnimElem = 4
x = 3.4

[State 400, Helper]
type = Null;Helper
triggerall = NumHelper <= 11
trigger1 = NumHelper(440) <= 2 || NumHelper(441) <= 2 || NumHelper(442) <= 2 || NumHelper(443) <= 2
trigger1 = MoveHit
helpertype = normal
name = "HitFX"
ID = 440 + (NumHelper(440) >= 3) + (NumHelper(441) >= 6) + (NumHelper(442) >= 9)
stateno = 201
pos = -5, -10
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1
persistent = 3

[State 440, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Aereal Rave Launcher
; CNS difficulty: easy-medium
[Statedef 450]
type    = C
movetype= A
physics = C
juggle  = 4
poweradd= 78
ctrl = 0
anim = 420+(var(24)&&var(28)=1);450
sprpriority = 2

[State 450, 1]
type = PlaySnd
trigger1 = Time = 2
value = 1, 5
ignorehitpause = 1

[State 450, PosAdd]
type = PosAdd
trigger1 = AnimElem=2
x = 6

[State 450, PosAdd]
type = PosAdd
trigger1 = AnimElem=3
trigger2 = AnimElem=4
x = 3

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Anim=421
trigger1 = AnimElem=7
value = S5,11

[State 0, Explod]
type = Explod
trigger1 = Anim=421
trigger1 = AnimElem=7
anim = 422
ID = 422
pos = 0,0
postype = p1
facing = 1
removetime = -2
scale = 0.5,0.5
ontop = 1
shadow = 255,0,0
ownpal = 1
removeongethit = 0

[State 450, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = C, NA
damage = 40
hitflag = MA;F
animtype = Diagup;Hard
guardflag = MA
priority = 3,Hit
pausetime = 13,13
sparkno = s7900+random%8
guard.sparkno = s8060
fall = 1
fall.recover=35
yaccel = .4
sparkxy = -5,-74
hitsound   = s5,5+(Anim=421)*10
guardsound = s6,0
ground.type = Low
ground.hittime  = 26
ground.slidetime = 18
ground.velocity = -2.5,-13
air.velocity = -2.5,-13
kill = var(46)
ID=400

[State 400, Helper]
type = Null;Helper
triggerall = NumHelper <= 11
trigger1 = NumHelper(450) <= 2 || NumHelper(451) <= 2 || NumHelper(452) <= 2 || NumHelper(453) <= 2
trigger1 = MoveHit
helpertype = normal
name = "HitFX"
ID = 450 + (NumHelper(450) >= 3) + (NumHelper(451) >= 6) + (NumHelper(452) >= 9)
stateno = 201
pos = -5, -35
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1
persistent = 3

[State 450, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

[State 420, 3] 
type = ChangeState
trigger1 = MoveHit
trigger1 = command = "holdup"  || ailevel
value = 701 
ctrl = 1


;---------------------------------------------------------------------------
;Jump Light Punch
; CNS difficulty: easy
[Statedef 600]
type    = A
movetype= A
physics = A
juggle  = 2
poweradd= 41
ctrl = 0
anim = 600
sprpriority = 2

[State 600, 1]
type = PlaySnd
triggerall = !var(38)
trigger1 = Time = 1
value = 0, 1

[State 600, PlaySnd]
type = PlaySnd
trigger1 = time = 2
value = S1,0

[State 600, PlaySnd]
type = PlaySnd
trigger1 = time = 2
value = S22000,1
freqmul=1.3
freq=1.3

[State 600, 2]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 20
guardflag = HA
priority = 3
pausetime = 5,6
sparkno = s7900+random%8
guard.sparkno = s8060
sparkxy = -10,-58
hitsound   = s5,0
guardsound = s6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -4
air.velocity = -1.3,-3.15
fall.recovertime=12
kill = var(46)
ID=400

[State 600, Helper]
type = Null;Helper
triggerall = NumHelper <= 11
trigger1 = NumHelper(600) <= 2 || NumHelper(601) <= 2 || NumHelper(602) <= 2 || NumHelper(603) <= 2
trigger1 = MoveHit
helpertype = normal
name = "HitFX"
ID = 600 + (NumHelper(600) >= 3) + (NumHelper(601) >= 6) + (NumHelper(602) >= 9)
stateno = 201
pos = -10, -58
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1
persistent = 3

;---------------------------------------------------------------------------
;Jump Light Punch
; CNS difficulty: easy
[Statedef 601]
type    = C
movetype= A
physics = N
;juggle  = 3
poweradd= 41
velset=0,0
ctrl = 0
sprpriority = 2
hitdefpersist=1
movehitpersist=1

[State 0, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 0, EnvShake]
type = EnvShake
trigger1 = Time=0
time = 15
freq = 130
ampl = -4

[State 5110, 7]
type = GameMakeAnim
trigger1 = Time=0
value = 62
pos = 0, 0
under = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0
value = 450
elem=8

[State 600, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S2435,2

[State p2stateno]
type = TargetState
triggerall = movehit && !movereversed && !moveguarded
triggerall = NumTarget(602)
triggerall = !target(602),IsHelper
trigger1 = target(602),Time=0
value = 604
ID = 602
ignorehitpause=1

[State 600, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S22000,0

[State 601, ChangeState]
type = ChangeState
trigger1 = AnimTime=0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Jump Light Punch
; CNS difficulty: easy
[Statedef 602]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
sprpriority = 2
anim=602

[State 0, VelSet]
type = VelSet
trigger1 = Time=0
x=0

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.5

[State 600, 2]
type = HitDef
triggerall = Time > 6
trigger1 = !movecontact
attr = A, NA
hitflag=MAFD
damage    = 43,2
guardflag = HA
priority = 1
pausetime = 2,5
sparkno = s7900+random%8
guard.sparkno = s8060
sparkxy = 0,0
hitsound   = s5,6
guardsound = s6,0
ground.type = High
fall=1
fall.recover=0
guard.velocity=-5
ground.velocity=-.5,20
air.velocity = -.5,20
ground.hittime=20
ground.slidetime=20
fall.xvelocity=-6
fall.yvelocity=-ifelse(Pos Y <= -55,((2*abs(Pos Y-40))**0.5),280**0.5)
down.velocity = -6,0
down.hittime = 20
ID = 602
yaccel=1
kill = var(46)
nochainid= 602

[State p2stateno]
type = TargetState
triggerall = movehit && !movereversed && !moveguarded
triggerall = NumTarget(602)
triggerall = !target(602),IsHelper
trigger1 = target(602),Time=0
value = 604
ID = 602
ignorehitpause=1

[State 601, ChangeState]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 10
value = 601
ctrl = 0

;---------------------------------------------------------------------------
; HITA_FALL (knocked up, falling)
[Statedef 604]
type    = A
movetype= H
physics = N
anim =5050

[State 5050, 2] ;Coming down anim
type = ChangeAnim
trigger1 = anim = [5050,5059]
trigger1 = Vel Y >= ifelse(anim = 5050, 1, -2)
trigger1 = SelfAnimExist(anim+10)
value = anim+10
persistent = 0

[State 5050, 3] ;Gravity
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5030, 2]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 5050, 4] ;Recover near ground
type = SelfState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 5050, 5]; Recover in mid air
type = SelfState
triggerall = Vel Y > -1
triggerall = Pos Y >= -30
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210 ;HITFALL_AIRRECOVER

[State 5050, 6]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= ifelse((anim = [5051,5059]) || (anim = [5061,5069]), 0, 25)
value = 605 ;HIT_BOUNCE

;---------------------------------------------------------------------------
; HIT_BOUNCE (hit ground)
[Statedef 605]
type    = L
movetype= H
physics = N

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
triggerall = time = 0
trigger1 = (anim != [5051,5059]) && (anim != [5061,5069])
trigger2 = !SelfAnimExist(5100 + (anim % 10))
value = 5100

[State 5100, 3] ;Hit ground anim (for hit up)
type = ChangeAnim
trigger1 = time = 0
trigger1 = (anim = [5051,5059]) || (anim = [5061,5069])
trigger1 = SelfAnimExist(5100 + (anim % 10))
value = 5100 + (anim % 10)

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

[State 5100, 7]
type = SelfState
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
value = 5110 ;HIT_LIEDOWN

[State 5100, 8]
type = GameMakeAnim
trigger1 = Time = 1
value = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos = 0, 0
under = sysvar(1) <= 14

[State 5100, 9]
type = HitFallDamage
trigger1 = Time = 3

[State 5100, 10]
type = PlaySnd
trigger1 = Time = 1
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)

[State 5100, 11]
type = PosFreeze
trigger1 = 1

[State 5100, 12]
type = ChangeState
trigger1 = Time>5
value = 606

[State 5100, 13]
type = ForceFeedback
trigger1 = Time = 0
waveform = sinesquare
ampl = 128,-3,-.2,.005
time = 20

;---------------------------------------------------------------------------
; HIT_BOUNCE (bounce into air)
[Statedef 606]
type    = A
movetype= H
physics = N

[State Blah]
type = NotHitBy
trigger1 = 1
value = ,NA,AP,NT

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
y = 20

[State OW]
type = VelMul
trigger1 = 1
x = 0.88

[State 5101, 5] ;Acceleration
type = VelAdd
trigger1 = 1
y = gethitvar(yaccel)

[State 5050, 4] ;Recover near ground
type = SelfState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 5101, 6] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 12
type = SelfState
value = 5110

;---------------------------------------------------------------------------
;Jump Strong Punch
; CNS difficulty: easy
[Statedef 610]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 60
ctrl = 0
anim = 610
sprpriority = 2

[State 610, 2]
type = PlaySnd
triggerall = !var(38)
trigger1 = Time = 2
value = 0, 1

[State 610, PlaySnd]
type = PlaySnd
trigger1 = time = 5
value = S1,1

[State 610, 3]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 30
guardflag = HA
priority = 4
pausetime = 8,11
sparkno = s7900+random%8
guard.sparkno = s8060
sparkxy = -10,-55
hitsound   = s5,1
guardsound = s6,0
animtype = Med
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -5
air.velocity = -3,-3.9
fall.recovertime=40
air.fall=1
kill = var(46)
ID=400

[State 610, Helper]
type = Null;Helper
triggerall = NumHelper <= 11
trigger1 = NumHelper(610) <= 2 || NumHelper(611) <= 2 || NumHelper(612) <= 2 || NumHelper(613) <= 2
trigger1 = MoveHit
helpertype = normal
name = "HitFX"
ID = 610 + (NumHelper(610) >= 3) + (NumHelper(611) >= 6) + (NumHelper(612) >= 9)
stateno = 201
pos = -10, -55
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1
persistent = 3

;---------------------------------------------------------------------------
;Jump Light Kick
; CNS difficulty: easy
[Statedef 630]
type    = A
movetype= A
physics = A
juggle  = 3
poweradd= 40
ctrl = 0
anim = 630
sprpriority = 2

[State 630, 1]
type = PlaySnd
triggerall = !var(38)
trigger1 = Time = 1
value = 0, 2

[State 630, PlaySnd]
type = PlaySnd
trigger1 = time = 2
value = S1,3

[State 630, 2]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 20,0
guardflag = HA
priority = 3
pausetime = 9,9
sparkno = s7900+random%8
guard.sparkno = s8060
sparkxy = -5,0
hitsound   = s5,3
guardsound = s6,0
ground.type = High
ground.slidetime = 6
ground.hittime  = 6
ground.velocity = -4
air.velocity = -2,-5
fall.recovertime=40
air.fall=1
kill = var(46)
ID=400

[State 630, Helper]
type = Null;Helper
triggerall = NumHelper <= 11
trigger1 = NumHelper(630) <= 2 || NumHelper(631) <= 2 || NumHelper(632) <= 2 || NumHelper(633) <= 2
trigger1 = MoveHit
helpertype = normal
name = "HitFX"
ID = 630 + (NumHelper(630) >= 3) + (NumHelper(631) >= 6) + (NumHelper(632) >= 9)
stateno = 201
pos = -5, -35
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1
persistent = 3

;---------------------------------------------------------------------------
;Jump Strong Kick
; CNS difficulty: easy
[Statedef 640]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 69
ctrl = 0
anim = 640
sprpriority = 2

[State 640, VelSet]
type = VelSet
trigger1 = Time=0
trigger1 = prevstateno=610 || prevstateno=600 || prevstateno=630
y = -((2*const(movement.yaccel)*30)**0.5)

[State 640, 2]
type = PlaySnd
triggerall = !var(38)
trigger1 = Time = 2
value = 0, 2

[State 640, PlaySnd]
type = PlaySnd
trigger1 = time = 6
value = S1,4

[State 640, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = S237,0

[State 640, 3]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 30
guardflag = HA
priority = 4
pausetime = 9,12
sparkno = s7900+random%8
guard.sparkno = s8060
sparkxy = -10,-40
hitsound   = s5,7
guardsound = s6,0
animtype = Med
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -5
air.velocity = -3,-3.8
fall.recovertime=40
air.fall = 1
kill = var(46)
ID=400

[State 640, Helper]
type = Null;Helper
triggerall = NumHelper <= 11
trigger1 = NumHelper(640) <= 2 || NumHelper(641) <= 2 || NumHelper(642) <= 2 || NumHelper(643) <= 2
trigger1 = MoveHit
helpertype = normal
name = "HitFX"
ID = 640 + (NumHelper(640) >= 3) + (NumHelper(641) >= 6) + (NumHelper(642) >= 9)
stateno = 201
pos = -10, -40
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1
persistent = 3

;---------------------------------------------------------------------------
;DANIEL RAJAS
; CNS difficulty: easy
[Statedef 650]
type    = A
movetype= A
physics = N
juggle  = 4
poweradd= 65
ctrl = 0
anim = 650+(var(24)>0&&var(28)=1)
sprpriority = 2

[State WHOA]
type = Gravity
trigger1 = 1

[State 650, 1]
type = PlaySnd
triggerall = !var(38)
trigger1 = Time = 1
value = 0, 3

[State 650, PlaySnd]
type = PlaySnd
trigger1 = time = 13
value = S1,2

[State 660, 2]
type = HitDef
trigger1 = AnimElem = 4
attr = A, NA
damage = 40
animtype = Hard
guardflag = HA
priority = 3
pausetime = 12,12
sparkno = s7900+random%8
guard.sparkno = s8060
air.fall = 1
yaccel = .6
sparkxy = -5,-35
hitsound   = s5,5;S20,37
guardsound = s6,0
ground.type = High
air.slidetime = 14
ground.hittime  = 14
ground.velocity = -5.35-(Anim=651)*3.5
air.velocity = -2-(Anim=651)*4.6,8
fall.recovertime=40
kill = var(46)
ID=400

[State 650, Helper]
type = Null;Helper
triggerall = NumHelper <= 11
trigger1 = NumHelper(650) <= 2 || NumHelper(651) <= 2 || NumHelper(652) <= 2 || NumHelper(653) <= 2
trigger1 = MoveHit
helpertype = normal
name = "HitFX"
ID = 650 + UniqHitCount
stateno = 201
pos = -5, -35
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1
persistent = 3

[State FALL]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = ifelse(Anim=650||(Anim=651&&AnimElemTime(6)<0),52,651)
ctrl = 0

[Statedef 651, Hammer Land]
type    = S
movetype= I
physics = N
ctrl = 0
anim = 652
sprpriority = 2
velset = 0,0

[State Reset]
type = PosSet
trigger1 = Time=0
y = 0

[State WHAM]
type = PlaySnd
trigger1 = Time=0
value = S853,13

[State EXPLOD EFFECT]
type = Explod
trigger1 = Time=0
anim = F62
pos = 45,0
postype = p1
removetime = -2
scale = 1.5,1
sprpriority = 1
ownpal = 1
removeongethit = 0

[State Weee]
type = Gravity
trigger1 = statetype = A

[State HERP]
type = StateTypeSet
trigger1 = AnimElem=2
statetype = A
physics = N

[State UP]
type = VelSet
trigger1 = AnimElem=2
y = -4

[State UP]
type = ChangeState
triggerall = statetype=A
trigger1 = Pos Y >= 10 && Vel Y >0
value = 52
ctrl = 0

;---------------------------------------------------------------------------
;Jump Strong Kick
; CNS difficulty: easy-medium
[Statedef 660]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 78
ctrl = 0
anim = 660+(var(24)>0&&var(28)=1)
sprpriority = 2

[State 660, 1]
type = PlaySnd
triggerall = !var(38)
trigger1 = Time = 1  && anim=660
value = 0, 4

[State 660, PlaySnd]
type = PlaySnd
trigger1 = time = 2
value = S1,5

[State 660, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = A, NA
damage = 40
animtype = Hard
guardflag = HA
priority = 3
pausetime = 8+10*(anim=661),8+10*(anim=661)
sparkno = s7900+random%8
guard.sparkno = s8060
air.fall = 1
yaccel = .6
sparkxy = -5,-35
hitsound   = s5,5+2*(anim=661);S20,37
guardsound = s6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 12
ground.velocity = -4
air.velocity = -6,8
fall.recovertime=40
down.bounce = 1
fall=1
fall.yvelocity=-8.9
fall.envshake.time = 21
fall.envshake.freq = 180
fall.envshake.ampl = 5
ID=660
NoChainId=660
kill = var(46)

[State p2stateno]
type = TargetState
triggerall = movehit && !movereversed && !moveguarded
triggerall = NumTarget(660)
triggerall = !target(660),IsHelper
trigger1 = target(660),Time=0
value = 661
ID = 660
ignorehitpause=1

[State Air Time!]
type = Helper
trigger1 = Anim=661 && Time=0
helpertype = normal
name = "Clarice In the Air"
ID = 668
stateno = 668
pos = 0, 0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5

[Statedef 668, Clarice]
type    = A
movetype= I
physics = N
velset = 0,0
ctrl = 0
anim = 668
sprpriority = 3

[State AnimElem]
type = ChangeAnim
triggerall = root,anim=661 && root,stateno=660 && root,movetype=A
trigger1 = root,animelemtime(3)>=0&&root,AnimelemTime(4)<0
value = 668
elem=2

[State Scale up]
type = AngleDraw
trigger1 = Time<8
scale = Time/8.0,Time/8.0

[State JUMP]
type = Explod
trigger1 = AnimElem=2
anim = 3173
pos = 0,-16
postype = p1
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 4
ownpal = 1
removeongethit = 0
persistent=0

[State WELL GO AHEAD]
type = BindToRoot
trigger1 = 1
pos = 0,0
ignorehitpause

[State Change]
type = ChangeState
trigger1 = AnimElemTime(6)>=0
value = 669
ctrl = 0

[Statedef 669, Clarice]
type    = A
movetype= I
physics = N
velset = 4,-5.5
ctrl = 0
anim = 669
sprpriority = 3

[State Grav]
type = VelAdd
trigger1 = 1
y = 0.55

[State Lol]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 256*(1-Time/40.0),256*(Time/40.0)

[State JUMP]
type = DestroySelf
trigger1 = Time>=40

[Statedef 661]
type    = A
movetype= H
physics = N
velset = 0,0

[State 5020, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = ifelse((GetHitVar(airtype) = 1),5000,5010) + GetHitVar(animtype)

[State 5020, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = 5030

[State 5020, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype) ;5051 - 4 + type

[State 5020, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 5020, 5]
type = ChangeState
trigger1 = HitShakeOver
value = 662

[State 5020, FFB Light]
type = ForceFeedback
trigger1 = anim = 5000
trigger2 = anim = 5010
persistent = 0
time = 6
waveform = square

[State 5020, FFB Medium]
type = ForceFeedback
trigger1 = anim = 5001
trigger2 = anim = 5011
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 5020, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5012
trigger2 = anim = 5002
trigger3 = anim = 5030
trigger4 = anim = [5051,5059]
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

;---------------------------------------------------------------------------
; HITA_UP (initial going up)
[Statedef 662]
type    = A
movetype= H
physics = N
ctrl = 0

[State 5030, 1]
type = VelAdd;Gravity
trigger1 = 1
y = GetHitVar(yaccel)

[State 5030, 2]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 5030, 3]
type = SelfState
triggerall = !HitFall
trigger1 = HitOver
trigger2 = Vel Y > 0    ;Hit ground
trigger2 = Pos Y >= 10  ;.
value = 5040 ;HITA_RECOV

[State 5030, 4]
type = ChangeState
triggerall = HitFall
trigger1 = HitOver
trigger2 = Vel Y > 0    ;Hit ground
trigger2 = Pos Y >= 10  ;.
value = 664 ;HITA_FALL

[State 5030, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 663 ;HITA_UP (transition)

;---------------------------------------------------------------------------
; HITA_UP_T (transition)
[Statedef 663]
type    = A
movetype= H
physics = N

[State 5035, 1]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5035)
trigger1 = Anim != [5051,5059] ;Not if in hit up anim
trigger1 = Anim != 5090 ;Not if hit off ground anim
value = 5035

[State 5035, 2]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5035, 3]
type = SelfState
triggerall = !HitFall
trigger1 = HitOver  ;Hit is over
trigger2 = AnimTime = 0 ;Animation over
trigger3 = Vel Y > 0    ;Hit ground
trigger3 = Pos Y >= 10  ;.
trigger4 = Time = 0     ;No transition anim
trigger4 = Anim != 5035 ;.
value = 5040 ;HITA_RECOV

[State 5035, 4]
type = ChangeState
triggerall = HitFall
trigger1 = HitOver  ;Hit is over
trigger2 = AnimTime = 0 ;Anim is over
trigger3 = Vel Y > 0    ;Hit ground
trigger3 = Pos Y >= 10  ;.
trigger4 = Time = 0     ;No transition anim
trigger4 = Anim != 5035 ;.
value = 664 ;HITA_FALL

;---------------------------------------------------------------------------
; HITA_FALL (knocked up, falling)
[Statedef 664]
type    = A
movetype= H
physics = N

[State 5050, 1] ;Change anim when done with transition
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim = 5035
trigger2 = Time = 0     ;If no transition anim
trigger2 = Anim != 5035
trigger2 = (Anim != [5051, 5059]) && (Anim != [5061, 5069])
trigger2 = Anim != 5090 ;Not if hit off ground anim
value = 5050

[State 5050, 2] ;Coming down anim
type = ChangeAnim
trigger1 = anim = [5050,5059]
trigger1 = Vel Y >= ifelse(anim = 5050, 1, -2)
trigger1 = SelfAnimExist(anim+10)
value = anim+10
persistent = 0

[State 5050, 3] ;Gravity
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5050, 6]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= ifelse((anim = [5051,5059]) || (anim = [5061,5069]), 0, 25)
value = 665 ;HIT_BOUNCE

;---------------------------------------------------------------------------
; HIT_BOUNCE (hit ground)
[Statedef 665]
type    = L
movetype= H
physics = N

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
triggerall = time = 0
trigger1 = (anim != [5051,5059]) && (anim != [5061,5069])
trigger2 = !SelfAnimExist(5100 + (anim % 10))
value = 5100

[State 5100, 3] ;Hit ground anim (for hit up)
type = ChangeAnim
trigger1 = time = 0
trigger1 = (anim = [5051,5059]) || (anim = [5061,5069])
trigger1 = SelfAnimExist(5100 + (anim % 10))
value = 5100 + (anim % 10)

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

[State 5100, 7]
type = SelfState
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
value = 5110 ;HIT_LIEDOWN

[State 5100, 8]
type = GameMakeAnim
trigger1 = Time = 1
value = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos = 0, 0
under = sysvar(1) <= 14

[State 5100, 9]
type = HitFallDamage
trigger1 = Time = 3

[State 5100, 10]
type = PlaySnd
trigger1 = Time = 1
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)

[State 5100, 11]
type = PosFreeze
trigger1 = 1

[State 5100, 12]
type = ChangeState
trigger1 = AnimTime = 0
value = 666

[State 5100, 13]
type = ForceFeedback
trigger1 = Time = 0
waveform = sinesquare
ampl = 128,-3,-.2,.005
time = 20

;---------------------------------------------------------------------------
; HIT_BOUNCE (bounce into air)
[Statedef 666]
type    = A
movetype= H
physics = N


[State 5050, 4] ;Recover near ground
type = SelfState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 5050, 5]; Recover in mid air
type = SelfState
triggerall = Vel Y > -1
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210 ;HITFALL_AIRRECOVER

[State Blah]
type = NotHitBy
trigger1 = GetHitVar(ChainID)=660
value = ,NA,AP,NT

; [State DOUBLE BLAH]
; type = NotHitBy
; trigger1 = GetHitVar(fall.yvel)<=-10
; value = ,NA,SA,AP,NT,ST

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
y = 20

[State 5101, 5] ;Acceleration
type = VelAdd
trigger1 = 1
y = .4

[State 5101, 6] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 12
type = SelfState
value = 5110

;BAKA BAKA
[StateDef 670]
type = A
movetype= A
physics = N
juggle  = 4
velset = 6.7,0
ctrl = 0
anim = 670
poweradd = 60
sprpriority = 2

[State 0, Width]
type = Width
trigger1 = AnimElemTime(3)>=0&&AnimElemTime(6)<0
player = 30,16
ignorehitpause=1

[State 670, PalFXWiz]
type = PalFX
trigger1 = Time=0
trigger2 = AnimElem=7
time = 2
add = 256,256,256
mul = 256,256,256
invertall = 0
color = 256

[State Nii]
type = PlaySnd
trigger1 = AnimElem=7
value = S777,0

[State 670, PlaySnd]
type = PlaySnd
trigger1 = Time=0
value = S1,6

[State 670, PlaySnd]
type = PlaySnd
trigger1 = AnimElem=2
value = S1,3

[State 670, 1]
type = HitDef
trigger1 = AnimElem = 3 || AnimElem = 4 || AnimElem = 5
attr = A, NA
damage = 20,1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 5, 5
sparkno = s7920+random%8
guard.sparkno = s7911
sparkxy = -13, -65
hitsound = s5, 0
guardsound = s6, 0
ground.type = High
ground.slidetime = 10
air.fall=1
fall.recover=26
ground.hittime  = 20
ground.velocity = -4
airguard.velocity = -3,-.8
air.type = High
air.velocity = -4,0
air.hittime = 20
kill = var(46)
ID=400

[State 0, VelSet]
type = VelSet
trigger1 = AnimElemTime(6)=0
trigger1 = command="holdback"
x = -Vel X
persistent

[State 0, VelMul]
type = VelMul
trigger1 = AnimElemTime(6)>=0
x = 0.93

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem=6
statetype = A
movetype = A
physics = A

;---------------------------------------------------------------------------
[Statedef 701]
type = A
physics = N

[State 3050, PlaySnd]
type = PlaySnd
trigger1 = Time=0
value = S5004,11
volume=100

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

[State 9000, AfterImageTime]
type = AfterImageTime
trigger1 = vel y >= 5
time = 0

[State 9000, Animation For Super Jump]
type = ChangeAnim
trigger1 = Time = 0
value = 9001

[State 9000, Peak and Fall!]
type = ChangeAnim
trigger1 = Anim = 9001 && Vel Y > -2
value = 9000

[State 701, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S9000,0

[State 701, 6]
type = VelSet
trigger1 = Time = 0
x = 0
y = -14.1

[State Damn]
type = VelAdd
triggerall = command = "holdfwd"
trigger1 = Vel X < 2.5
x = .2
[State Damn]
type = VelAdd
triggerall = !ailevel && command = "holdback"
trigger1 = Vel X > -2.5
x = -.2
[State Damn]
type = VelSet
trigger1 = Vel X <= -2.5
x = -2.5
[State Damn]
type = VelSet
trigger1 = Vel X >= 2.5 || ailevel
x = 2.5
[State Damn]
type = VelAdd
triggerall = ailevel
trigger1 = Vel X < 2.5
x = .2

[State 701, You're falling]
type = VelAdd
trigger1 = 1
y = .4

[State 701, ChangeState]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 52
ctrl = 0

;---------------------------------------------------------------------------
;Throw Attempt

[Statedef 800]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 800
sprpriority = 2

[State 800, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, NT
hitflag = M-
priority = 1, Miss
sparkno = -1
p1sprpriority = 1
p1facing = 1
p2facing = 1
p1stateno = 810
p2stateno = 820
hitsound = S800,0
guard.dist = 0
numhits = 0
fall = 1
kill = var(46)

[State 800, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Throw - Throwing

[Statedef 810]
type    = S
movetype= A
physics = N
ctrl = 0
anim = 810
poweradd = 35
sprpriority=0

[State 0, SprPriority]
type = SprPriority
trigger1 = AnimElemTime(4) = 0
value = 2

[State 810, Grab Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = S1, 1

[State 810, Grab Sound]
type = PlaySnd
trigger1 = AnimElemTime(15) = 2
value = S5, 6

[State 810, Throw Sound]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = S22000, 1

[State 810, Throw Sound]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = S237, 0

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElemTime(2) < 0
pos = 50, -78

[State 810, Bind 2]
type = TargetBind
trigger1 = AnimElemTime(2) = 0
pos = 50, -81

[State 867, Explod]
type = Explod
trigger1 = AnimElemTime(15) = 2
anim = 7900+random%8
ID = 865
pos = 84,-47
postype = p1
facing = 1
random = 35,55
removetime = -2
scale = 1,1
ontop = 1
ownpal = 1
removeongethit = 0

[State 810, Bind 2]
type = TargetBind
trigger1 = AnimElemTime(2) = 1
pos = 50, -20

[State 810, Change Target's State]
type = TargetState
trigger1 = AnimElemTime(2) = 2
value = 821

[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElemTime(15) = 2
value = -80
kill = var(46)
absolute = 0

[State LOL]
type = VarAdd
trigger1 =AnimElemTime(15) = 2
var(48)=1

[State Record Total Damage (Add Up)]
type = VarAdd
trigger1 = AnimElemTime(15) = 2
var(14) = 80
ignorehitpause=1

[State 810, Change Target's State]
type = TargetState
trigger1 = AnimElemTime(15) = 2
value = 822

[State 810, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 820]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority=1

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 820

[State 820, 2]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5050

[Statedef 821]
type    = A
movetype= H
physics = N
velset = 0,-(408/38)
poweradd = 40
sprpriority=1
Anim=5050

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA


[State 821, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0 && selfanimexist(5051)
value = 5051
[State 821, ChangeAnim]
type = ChangeAnim
trigger1 = vel Y > -2 && anim=5051
value = 5061

[State 821, 1] ;Gravity
type = VelAdd
Trigger1 = 1
y = .5

[State 821, 4] ;Hit ground
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 822

[Statedef 822]
type = A
movetype = H
physics = N
velset = -9.5,-3.9
Anim=5050

[State 0, VelMul]
type = VelMul
trigger1 = 1
x = .975

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 822, 1] ;Gravity
type = VelAdd
Trigger1 = 1
y = .5

[State 822, Recover A] ; Recover near ground (use ChangeState)
type = ChangeState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 822, Recover B] ; Recover in mid air (use SelfState)
type = SelfState
triggerall = Vel Y > 0
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210 ;HITFALL_AIRRECOVER

[State 821, 4] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100


;---------------------------------------------------------------------------
;Throw Attempt (Combo Breaker)

[Statedef 850]
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0
ctrl = 0
anim = 800
sprpriority = 2

[State 850, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, NT
hitflag = AF
priority = 1, Miss
sparkno = -1
p1sprpriority = 1
p1facing = 1
p2facing = 1
hitsound = S800,0
p1stateno = 851
p2stateno = 860
guard.dist = 0
fall = 1

[State 850, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Throw - Throwing

[Statedef 851]
type    = S
movetype= A
physics = N
ctrl=0
anim = 810
poweradd = 10

[State 851, Grab Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = S1, 1

[State 851, Throw Sound]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = S1, 2

[State 851, Bind 1]
type = TargetBind
trigger1 = AnimElemTime(2) < 0
pos = 32, -84

[State 851, Bind 2]
type = TargetBind
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
pos = 34, -47

[State 851, Change Target's State]
type = TargetState
trigger1 = AnimElemTime(3) = 1
value = 861

[State 851, Bind 3]
type = TargetBind
trigger1 = AnimElemTime(3) = [0,1]
pos = 25, -21

[State 851, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 860]
type    = A
movetype= H
physics = N
velset = 0,0

[State 860, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 820

[State 860, 2]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5050

[Statedef 861]
type    = A
movetype= H
physics = N
velset = -3.5,3.5
poweradd = 60
Anim=5050

[State 0, VelMul]
type = VelMul
trigger1 = 1
x = 0.95

[State 861, 1] ;Gravity
type = VelAdd
Trigger1 = 1
y = .4

[State 861, 4] ;Hit ground
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100

[Statedef 862]
type = A
movetype = H
physics = N
velset = -3.5, -9

[State 862, Hurt]
type = LifeAdd
trigger1 = Time = 0
value = -26
kill = 1

[State 862, fight.snd]
type = PlaySnd
trigger1 = Time = 0
value = F7,2
volume = 255

[State 862, staticfx] ;That was the former name!!!
type = Explod
trigger1 = Time = 0
anim = F62
pos = 0,0
facing = 1
removetime = -2
scale = 1,1
sprpriority = -1
ontop = 0
ownpal = 1

[State 862, 1] ;Gravity
type = VelAdd
Trigger1 = 1
y = .5

[State 862, Recover A] ; Recover near ground (use ChangeState)
type = ChangeState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 862, Recover B] ; Recover in mid air (use SelfState)
type = SelfState
triggerall = Vel Y > 0
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210 ;HITFALL_AIRRECOVER

[State 861, 4] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5110

;---------------------------------------------------------------------------
;Kick Throw Attempt

[Statedef 865]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 800
sprpriority = 2

[State 865, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, NT
hitflag = M-
priority = 1, Miss
sparkno = -1
p1sprpriority = 1
p1facing = 1
p2facing = 1
ID = 865
p1stateno = 867
p2stateno = 870
hitsound = S800,0
guard.dist = 0
numhits = 0
fall = 1

[State 865, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Throw - Throwing

[Statedef 867]
type    = S
movetype= A
physics = N
anim = 867
velset = 0,0
sprpriority = 2
poweradd = 10

[State 867, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = AnimElemTime(2) = 0
trigger2 = AnimElemTime(4) = 0
value = 2
ID = 865
[State Record Total Damage (Add Up)]
type = VarAdd
trigger1 = AnimElemTime(2) = 0
trigger2 = AnimElemTime(4) = 0
var(14) = 4
ignorehitpause=1
[State LOL]
type = VarAdd
trigger1 = AnimElemTime(2) = 0
trigger2 = AnimElemTime(4) = 0
var(48)=1

[State 867, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
trigger2 = AnimElemTime(4) = 0
value = S5,7

[State 867, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,1

[State 867, TargetBind]
type = TargetBind
trigger1 = 1
time = 1
id = 865
pos = 0,0

[State 867, Turn]
type = Turn
trigger1 = statetype = A && (Pos Y >= 13 && Vel Y > 0)

[State 867, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElemTime(2) = 0
trigger2 = AnimElemTime(4) = 0
value = -4
ID = 865
kill = 0
absolute = 0

[State 867, PlaySnd]
type = PlaySnd
trigger1 = Time%4=0
value = S237,0
volume = 255
channel = 6
freqmul = 1.0+(time/80.0)*1.5
freq = 1.0+(time/80.0)*1.5

[State 867, HitAdd]
type = HitAdd
trigger1 = AnimElemTime(2) = 0
trigger2 = AnimElemTime(4) = 0
value = 1

[State 867, Explod]
type = Explod
trigger1 = AnimElemTime(2) = 0
trigger2 = AnimElemTime(4) = 0
anim = 7900+random%8
ID = 865
pos = 0,-60
postype = p1
facing = 1
random = 35,55
removetime = -2
scale = 1,1
ontop = 1
ownpal = 1
removeongethit = 0

[State 867, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = Time>80
value = -1
ID = 865
kill = var(46)
absolute = 0

[State Record Total Damage (Add Up)]
type = VarAdd
trigger1 = Time>80
var(14) = 1
ignorehitpause=1

[State 867, State End]
type = ChangeState
trigger1 = Time>80
value = 866
ctrl = 0

[Statedef 866]
type    = S
movetype= I
physics = N
anim = 866
velset = 0,0
sprpriority = 2

[State 867, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(16)=0
value = S22000,0

[State 867, PlaySnd]
type = PlaySnd
trigger1 = Time%3=0 && AnimElemTime(16)<=0
value = S237,0
volume = 255
channel = 6
freqmul = 1.0-(time/40.0)*0.7
freq = 1.0-(time/40.0)*0.7

[State 867, StopSnd]
type = StopSnd
trigger1 = AnimTime=0
channel = 6

[State 866, Change Target's State]
type = TargetState
trigger1 = Time=0
value = 871
ID = 865

[State 866, ChangeState]
type = ChangeState
trigger1 = AnimTime=0
value = 0
ctrl = 1

[Statedef 870]
type    = S
movetype= H
physics = N
velset = 0,0
sprpriority = 2

[State 870, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 870

[State 870, 2]
type = SelfState
trigger1 = !GetHitVar(isbound)
value = 5050
ctrl = 0

[Statedef 871]
type    = A
movetype= H
physics = N
ctrl = 0
sprpriority = 2
velset = 1.76,-((2*0.4*150)**0.5)
sprpriority = 2
anim=5050

[State 821, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0 && selfanimexist(5051)
value = 5051
[State 821, ChangeAnim]
type = ChangeAnim
trigger1 = vel Y > -2 && anim=5051
value = 5061

[State 871, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.4

[State 871, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 871, ChangeState]
type = SelfState
trigger1 = Pos Y > 10 && Vel Y > 0
value = 5100
ctrl = 0

;---------------------------------------------------------------------------
;Air Throw Attempt

[Statedef 680]
type    = A
movetype= A
physics = N
juggle  = 8
ctrl = 0
anim = 680
sprpriority = 2

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.5

[State 680, 1]
type = HitDef
Trigger1 = Time = 0
attr = A, NT
hitflag = AF
guardflag = MA
priority = 1, Miss
sparkno = -1
guard.sparkno = -1
p1sprpriority = 1
p1facing = 1
p2facing = 1
ID = 680
p1stateno = 681
p2stateno = 691
hitsound = S800,0
guardsound= -1
numhits = 0
fall = 1

[State 680, 2]
type = ChangeState
Trigger1 = Pos Y > 15 && Vel Y > 0
value = 52
ctrl = 0

;---------------------------------------------------------------------------
;Air Throw - To the Ground

[Statedef 681]
type    = A
movetype= A
physics = N
anim = 681
velset=0,-((2*0.45*65)**0.5)
sprpriority = 2
poweradd = 10

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.45

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time=1 && random < 333
value = S188,7
channel=0

[State 681, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(2) < 0
time = 1
id = 680
pos = 32,-45

[State 681, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
time = 1
id = 680
pos = 28,-56

[State 681, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
time = 1
id = 680
pos = 28,-56

[State 681, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(3) >= 0
time = 1
id = 680
pos = 44,10

[State 867, HitAdd]
type = HitAdd
trigger1 = Pos Y > 15 && Vel Y > 0
value = 1

[State LOL]
type = VarAdd
trigger1 = Pos Y > 15 && Vel Y > 0
var(48)=1

[State 856, PlaySnd]
type = PlaySnd
trigger1 = Pos Y > 15 && Vel Y > 0
value = S2435,3

[State 867, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = Pos Y > 15 && Vel Y > 0
value = -ceil(5*fvar(10))
ID = 680
kill = 0
absolute = 0

[State 0, EnvShake]
type = EnvShake
trigger1 = Pos Y > 15 && Vel Y > 0
time = 15
freq = 220
ampl = -6

[State 0, TargetState]
type = TargetState
trigger1 = Pos Y > 15 && Vel Y > 0
value = 692
ID = 680

[State 867, State End]
type = ChangeState
trigger1 = Pos Y > 15 && Vel Y > 0
value = 682
ctrl = 0

[Statedef 682]
type    = C
movetype= A
physics = C
anim = 682
velset=0,0
sprpriority = 2
poweradd = 10

[State 682, PlaySnd]
type = PlaySnd
trigger1 = Time=0
value = S22000,0

[State 5110, 7]
type = GameMakeAnim
trigger1 = Time=1
value = 62
pos = 0, 0
under = 0

[State 867, HitAdd]
type = HitAdd
trigger1 = AnimElem=7||AnimElem=9
trigger2 = AnimElem=12||AnimElem=14
trigger3 = AnimElem=17||AnimElem=19
trigger4 = AnimElem=22||AnimElem=24
trigger5 = AnimElem=27||AnimElem=29
trigger6 = AnimElem=34||AnimElem=32
trigger7 = AnimElem=37||AnimElem=39
trigger8 = AnimElem=44
value = 1

[State LOL]
type = VarAdd
trigger1 = AnimElem=7||AnimElem=9
trigger2 = AnimElem=12||AnimElem=14
trigger3 = AnimElem=17||AnimElem=19
trigger4 = AnimElem=22||AnimElem=24
trigger5 = AnimElem=27||AnimElem=29
trigger6 = AnimElem=34||AnimElem=32
trigger7 = AnimElem=37||AnimElem=39
trigger8 = AnimElem=44
var(48)=1

[State 867, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem=7||AnimElem=9
trigger2 = AnimElem=12||AnimElem=14
trigger3 = AnimElem=17||AnimElem=19
trigger4 = AnimElem=22||AnimElem=24
trigger5 = AnimElem=27||AnimElem=29
trigger6 = AnimElem=34||AnimElem=32
trigger7 = AnimElem=37||AnimElem=39
value = -ceil(2*fvar(10))
ID = 680
kill = 0
absolute = 0

[State 867, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem=44
value = -ceil(5*fvar(10))
ID = 680
kill = var(46)
absolute = 0

[State 0, Explod]
type = Explod
trigger1 = AnimElem=7||AnimElem=9
trigger2 = AnimElem=12||AnimElem=14
trigger3 = AnimElem=17||AnimElem=19
trigger4 = AnimElem=22||AnimElem=24
trigger5 = AnimElem=27||AnimElem=29
trigger6 = AnimElem=34||AnimElem=32
trigger7 = AnimElem=37||AnimElem=39
trigger8 = AnimElem=44
anim = 7900+random%8
ID = 7900
pos = 57,0
postype = p1
facing = 1
removetime = -2
scale = 1,1
ontop = 1
ownpal = 1
removeongethit = 0

[State 856, Hit Sounds]
type = PlaySnd
trigger1 = AnimElem=7||AnimElem=9
trigger2 = AnimElem=12||AnimElem=14
trigger3 = AnimElem=17||AnimElem=19
trigger4 = AnimElem=22||AnimElem=24
trigger5 = AnimElem=27||AnimElem=29
trigger6 = AnimElem=34||AnimElem=32
trigger7 = AnimElem=37||AnimElem=39
value = S5,6

[State 856, TargetState]
type = TargetState
trigger1 = AnimElem=7||AnimElem=9
trigger2 = AnimElem=12||AnimElem=14
trigger3 = AnimElem=17||AnimElem=19
trigger4 = AnimElem=22||AnimElem=24
trigger5 = AnimElem=27||AnimElem=29
trigger6 = AnimElem=34||AnimElem=32
trigger7 = AnimElem=37||AnimElem=39
value = 692
ID = 680

[State 856, Hit Sounds]
type = PlaySnd
trigger1 = AnimElem=44
value = S5,9

[State 682, PosSet]
type = PosSet
trigger1 = Time=0
y = 0

[State 681, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(44) < 0
time = 1
id = 680
pos = 50,0

[State 856, TargetState]
type = TargetState
trigger1 = AnimElem=44
value = 693
ID = 680

[State 0, ChangeState]
type = ChangeState
trigger1 = AnimTime=0
value = 0
ctrl = 1

[Statedef 691]
type    = A
movetype= H
physics = N
sprpriority = 0
poweradd=20

[State 691, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time=0
value = 691

[State 0, SelfState]
type = SelfState
trigger1 = !GetHitVar(isbound)
value = 5050

[Statedef 692]
type    = L
movetype= H
physics = N
sprpriority = 0
poweradd=20

[State 691, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time=0
value = 692

[State 0, ChangeState]
type = ChangeState
trigger1 = Time > 50
value = 5120
ctrl = 0

[Statedef 693]
type    = A
movetype= H
physics = N
sprpriority = 0
vel = -0.4, 12
poweradd=20

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.5

[State 691, ChangeAnim2]
type = ChangeAnim
trigger1 = Time=0
value = 5050

[State 0, SelfState]
type = SelfState
trigger1 = Pos Y > 15 && Vel Y > 0
value = 5100

[Statedef 530]
type    = S
movetype= A
physics = S
juggle  = 8
poweradd= 70
ctrl = 0
velset = 0,0
anim = 530
sprpriority = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem=2
value = S237,0

[State 210, 5]
type = ChangeState
trigger1 = Time>=6
value = 531
ctrl = 0

[Statedef 531]
type    = S
movetype= A
physics = S
ctrl = 0
velset=9,0
juggle=10
anim = 531
sprpriority = 1

[State 0, Width]
type = Width
trigger1 = AnimElemTime(6)>=0&&AnimElemTime(9)<0
player = 33,28

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem=4
value = S1,6

[State 531, U FAIL]
type = PlaySnd
trigger1 = animelemtime(6) = 0
trigger2 = animelemtime(7) = 0
trigger3 = animelemtime(8) = 0
trigger4= animelemtime(9) = 0
value = S1,2
channel=1

[State 531, LOL I SHOULD GO TO HELL]
type = PlaySnd
trigger1 = animelemtime(4) = 0
value = S14,0

[State 531, FOR TAKING THE SOUNDS]
type = PlaySnd
trigger1 = animelemtime(4) = 0
value = S14,1

[State 531, HitDef]
type = HitDef
trigger1 = AnimElem=6
attr = S,SA
hitflag = MAF
guardflag = MA
animtype = Hard
fall.animtype = Back
priority = 5,Hit
damage = 50,2
pausetime = 2 ,4
guard.pausetime=0,4
sparkno = S7920+random%8
guard.sparkno = S7911
sparkxy = -12,-45
hitsound = S5,7
guardsound = S6,0
ground.type = High
ground.slidetime = 20
ground.hittime = 22
guard.hittime = 17
ground.velocity = -3.8
air.velocity = -6.5,-0.3
air.fall = 1
fall.recover=15
getpower = 25,10
kill = var(46)

[State 210, 5]
type = ChangeState
trigger1 = Animtime=0
value = 0
ctrl = 1

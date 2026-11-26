;êÌì¨ë‘ê®Éb(èâåÇ)
[statedef 3000]
type=s
movetype=a
physics=s
velset=0,0
anim=3000
ctrl=0

[state 3000,ÉJÉbÉgÉCÉì]
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

[state 3000,à√ì]]
type=superpause
trigger1=animelemtime(5)=0
pos=15,-75
anim=s6000
sound=s4999,0
poweradd=-1000
time=45
darken=0
p2defmul=1

[State 3000, 0]
type = PlaySnd
trigger1 = time = 0
value = 3000, 0
channel = 0

[State 1027, helper]
type = Helper
trigger1 = numhelper(1101) < 10;57
trigger1 = time = 12
helpertype = normal
name = "gb"
stateno = 1101
id = 1101
size.xscale=0.5
size.yscale=0.5
pos = -10, 0
postype = p1
ownpal = 1
facing = 1
supermovetime = 0
pausemovetime = 0

[State 1027, helper]
type = Helper
trigger1 = numhelper(1101) < 10;57
trigger1 = time = 16
helpertype = normal
name = "gb"
stateno = 1101
id = 1101
size.xscale=0.5
size.yscale=0.5
pos = -22, 0
postype = p1
ownpal = 1
facing = 1
supermovetime = 0
pausemovetime = 0

[State 1027, helper]
type = Helper
trigger1 = numhelper(1101) < 10;57
trigger1 = time = 18
helpertype = normal
name = "gb"
stateno = 1101
id = 1101
size.xscale=0.5
size.yscale=0.5
pos = -28, 0
postype = p1
ownpal = 1
facing = 1
supermovetime = 0
pausemovetime = 0

[State 1027, helper]
type = Helper
trigger1 = numhelper(1101) < 10;57
trigger1 = time = 22
helpertype = normal
name = "gb"
stateno = 1101
id = 1101
size.xscale=0.5
size.yscale=0.5
pos = -16, 0
postype = p1
ownpal = 1
facing = 1
supermovetime = 0
pausemovetime = 0

[State 1027, helper]
type = Helper
trigger1 = numhelper(1101) < 10;57
trigger1 = time = 24
helpertype = normal
name = "gb"
stateno = 1101
id = 1101
size.xscale=0.5
size.yscale=0.5
pos = -34, 0
postype = p1
ownpal = 1
facing = 1
supermovetime = 0
pausemovetime = 0

[State 1027, helper]
type = Helper
trigger1 = numhelper(1201) < 4;7
trigger1 = time = 30
helpertype = normal
name = "tank"
stateno = 1201
id = 1201
pos = -50, 0
postype = p1
ownpal = 1
facing = 1
supermovetime = 0
pausemovetime = 0

[State 1027, helper]
type = Helper
trigger1 = numhelper(1201) < 4;7
trigger1 = time = 52
helpertype = normal
name = "tank"
stateno = 1201
id = 1201
pos = -50, 0
postype = p1
ownpal = 1
facing = 1
supermovetime = 0
pausemovetime = 0

[State 1027, helper]
type = Helper
trigger1 = numhelper(1301) < 3;4
trigger1 = time = 38
helpertype = normal
name = "apatch"
stateno = 1301
id = 1301
pos = -10, 0
postype = p1
ownpal = 1
facing = 1
supermovetime = 0
pausemovetime = 0

[State 1027, helper]
type = Helper
trigger1 = numhelper(1301) < 3;4
trigger1 = time = 60
helpertype = normal
name = "apatch"
stateno = 1301
id = 1301
pos = -10, 0
postype = p1
ownpal = 1
facing = 1
supermovetime = 0
pausemovetime = 0

[State 230, 3]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


;===========================================================================
;ã|Ç∆ñÓ
[statedef 3100]
type=s
movetype=a
physics=s
velset=0,0
anim=3100
ctrl=0

[state 3100,ñ≥ìG]
type=nothitby
trigger1=time=[0,1]
value=sca

[state 3100,ÉJÉbÉgÉCÉì]
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

[state 3100,à√ì]]
type=superpause
trigger1=time=1
pos=-20,-75
anim=s6000
sound=s4999,0
poweradd=-1000
time=45
darken=0
p2defmul=1

[State ,EnvColor]
type = EnvColor
trigger1 = 1
value = 0, 0, 0
time  = 1
under = 1
persistent = 1
ignorehitpause = 0

[state 3010,îwåiââèoópÉwÉãÉpÅ[]
type=null;helper
trigger1=animelemtime(5)=0
helpertype=normal
name="BG"
ID=3101
pos=0,0
postype=back
stateno=3101
ownpal=1

[state 3010,çèÇﬁÇ∫Ç•Å[îgñ‰ÇÃÉrÅ[Ég!]
type=null;playsnd
trigger1=animelemtime(2)=0
value=3100,0
channel=0

[state 3010,å¯â âπ1]
type=playsnd
trigger1=animelemtime(2)=0
value=3100,1

[state 3010,ÉIÅ[Éâ]
type=explod
trigger1=animelemtime(2)=0
anim=8100
pos=0,0
scale = 0.95,0.95
postype=p1
bindtime=-1
sprpriority=1
ownpal=1
removeongethit=1

[state 3010,å¯â âπ2]
type=playsnd
trigger1=animelemtime(33)=0
value=3100,2

[state 3100,ÉKÅ[ÉhîFéØãóó£]
type=attackdist
trigger1=1
value=0

[state 3100,ÉrÅ[ÉÄ]
type=projectile
trigger1=animelemtime(33)=-4
attr=s,hp
damage=413,413
getpower=0,0
animtype=back
pausetime=0,30
guard.dist=0
offset=63,-95
projid=3100
projanim=8101
projscale=0.95,0.95
projhitanim=8101
projremanim=-1
velocity = 12,0
projhits=ifelse(var(0)&16,1000,1)
projremove=1
guardflag=
sparkxy=0,0
hitsound=-1
p2stateno=5600
ground.velocity=-10,0
air.velocity=-10,0
yaccel=0
id=3100

[State ñÓëOïîï™]
type = Explod
trigger1 = ProjHitTime(3100) = 1
anim = 8102
id = 8102
pos = 5,-90
postype = p2
angle = -9
sprpriority = 6
bindtime = -1
ownpal = 1
removeongethit = 1
facing = -1
removetime = 30

[State ëÑå„ÇÎïîï™]
type = Explod
trigger1 = ProjHitTime(3100) = 1
anim = 8103
id = 8103
pos = -5,-90
postype = p2
angle = -9
sprpriority = -5
bindtime = -1
ownpal = 1
removeongethit = 1
facing = -1
removetime = 30

[state 3100,ÉJÉÅÉâå≈íË]
type=screenbound
trigger1=animelemtime(33)>=0
value=0

[state 3100,èIóπ]
type=changestate
triggerall=animelemtime(41)>=0
trigger1=numtarget(3100)
trigger1=target,stateno=5602
trigger2=numtarget(3100)
trigger2=target,stateno=5100
trigger3=!numtarget(3100)
value=60

;---------------------------------------------------------------------------
;ã|Ç∆ñÓ:îwåi
[statedef 3101]
anim=99999
type=u
movetype=i
phtsics=n
ctrl=0

[state 3101,ÉXÉeÅ[ÉWîwåiÇâBÇ∑]
type=assertspecial
trigger1=1
flag=nobg
flag2=nofg

[state 3101,îwåi1-1]
type=explod
trigger1=time=0
anim=6010
id=6010
postype=back
pos=0,0
scale=1,240.0/287
removetime=-1
bindtime=-1
sprpriority=-10
pausemovetime=2147483647
supermovetime=2147483647

[state 3101,îwåi1-2]
type=explod
trigger1=time=0
anim=6010
id=6010
postype=back
pos=512,0
scale=1,240.0/287
removetime=-1
bindtime=-1
sprpriority=-10
pausemovetime=2147483647
supermovetime=2147483647

[state 3101,îwåi2-1]
type=explod
trigger1=time=0
anim=6011
id=6011
postype=back
pos=0,0
scale=1,240.0/287
removetime=-1
bindtime=-1
sprpriority=-10
pausemovetime=2147483647
supermovetime=2147483647

[state 3101,îwåi2-2]
type=explod
trigger1=time=0
anim=6011
id=6011
postype=back
pos=512,0
scale=1,240.0/287
removetime=-1
bindtime=-1
sprpriority=-10
pausemovetime=2147483647
supermovetime=2147483647

[state 3101,îwåi3-1]
type=explod
trigger1=time=0
anim=6012
id=6012
postype=back
pos=0,0
scale=1,240.0/287
removetime=-1
bindtime=-1
sprpriority=-10
pausemovetime=2147483647
supermovetime=2147483647

[state 3101,îwåi3-2]
type=explod
trigger1=time=0
anim=6012
id=6012
postype=back
pos=512,0
scale=1,240.0/287
removetime=-1
bindtime=-1
sprpriority=-10
pausemovetime=2147483647
supermovetime=2147483647

[state 3101,îwåi4-1]
type=explod
trigger1=time=0
anim=6013
id=6013
postype=back
pos=0,0
scale=1,240.0/287
removetime=-1
bindtime=-1
sprpriority=-10
pausemovetime=2147483647
supermovetime=2147483647

[state 3101,îwåi4-2]
type=explod
trigger1=time=0
anim=6013
id=6013
postype=back
pos=512,0
scale=1,240.0/287
removetime=-1
bindtime=-1
sprpriority=-10
pausemovetime=2147483647
supermovetime=2147483647

[state 3101,èIóπ]
type=changestate
trigger1=root,stateno!=[3100,3150]
value=3102

;---------------------------------------------------------------------------
;è¡ãé
[statedef 3102]
anim=99999
type=u
movetype=i
phtsics=n
ctrl=0

[state 3102,è¡ãé]
type=removeexplod
trigger1=time=0

[state 3102,èIóπ]
type=destroyself
triggerall=ishelper
trigger1=time=0
;===========================================================================
;ÉuÉbâÛÇ∑ÇŸÇ«ÉVÉÖÅ[Ég(èâåÇ)
;---------------------------------------------------------------------------
;ÉCÉâÇ¬Ç≠Ç∫
[Statedef 4000]
type    = S
movetype = A
physics = N
juggle = 8
velset = 0,0
ctrl = 0
sprpriority = 2

[State 220, Position]
type = PosSet
trigger1 = Time = 0
y = 0


[State 902, 1]
type = ChangeAnim
Trigger1 = Time = 0
value = 100


[State 1000, Spark]
type = Explod
trigger1 = Time = 1
Anim = 8040
pos = 0, 0
postype = p1
ownpal = 1
sprpriority = 3
;pausemovetime = -1
supermovetime = -1
scale = .5,.5

[State 100, 1]
type = VelSet
trigger1 = AnimElemTime(2) = 0
x = const(velocity.run.fwd.x)

[State 100, Effect]
type = PlaySnd
trigger1 = AnimElemTime(1) = 1
value = 100,0

[State 100, Effect]
type = PlaySnd
trigger1 = AnimElemTime(2) = 1
value = 100,1

[State 100, Effect]
type = PlaySnd
trigger1 = AnimElemTime(5) = 1
value = 100,2

[State 1200, 2]
type = ChangeState
Trigger1 = P2BodyDist X <= 10
Trigger1 = Time >= 5
value = 4001
ctrl = 0
removeongethit = 1

[State 1200, 2]
type = ChangeState
triggerall = var(36) != [1,2]
triggerall = AnimElemTime(2) > 0
trigger1 = Frontedgebodydist <= 0
Trigger2 = Time = ifelse(!var(5), 35, ifelse(var(5) = 1, 45, 55))
trigger3 = enemy,statetype = L
trigger3 = P2BodyDist X <= 0
value = 4005
ctrl = 0

;------------------------------------------------------------------------------------------
;ÉCÉâÇ¬Ç≠Ç∫ÅiçUåÇÅj
[Statedef 4001]
type    = S
movetype = A
physics = S
juggle = 8
sprpriority = 2
ctrl = 0
velset = 0,0

[State 220, Position]
type = PosSet
trigger1 = AnimElem = 1
y = 0

[State 902, 1]
type = ChangeAnim
Trigger1 = Time = 0
value = 4000

[State 170, 1]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = ifelse(!var(5), 53, ifelse(var(5) = 1, 59, 64))


[State 105, 1]
type = statetypeset
trigger1 = AnimElem = 5
movetype = I

[State 1100, Effect]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1200,1
channel = 2

[State 1200, 1]
type = HitDef
trigger1 = AnimElem = 4
attr = S, HA
animtype  = hard
hitflag = MAF
guardflag = 
priority = 3, Miss    
pausetime = 0,13
sparkno=s6101
guard.sparkno=s6125
sparkxy = -10, -69
hitsound=s5,1
guardsound=s6,0
damage    = 10,5
p2facing = 1
ground.type = low
ground.slidetime = 17
ground.hittime  = 17
guard.ctrltime = 17
ground.velocity = 0
air.velocity = 0
guard.velocity = -8
airguard.velocity = -6.67,-1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = -20
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall = 1
fall.recover = 0
air.fall = 1
kill = 0
getpower = 0,0
givepower = 35, 35
forcestand = 1
envshake.time = 12
envshake.ampl = 3
nochainID = var(40)


[State 901, Throw]
type = TargetState
trigger1 = time > 1 && numtarget
value = 3610
ignorehitpause = 1
persistent = 0

[State 1100, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = numtarget
value = 4010

[State 1100, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;ÉCÉâÇ¬Ç≠Ç∫Åié∏îsÅj
[Statedef 4005]
type    = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
anim = 4005
sprpriority = 2

[State 450, Effect]
type = PlaySnd
trigger1 = AnimElem = 1
value = 800, 0
channel = 0

[State 1201, ChangeState]
type = ChangeState
Trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;ÉCÉâÇ¬Ç≠Ç∫Åië“ã@Åj
[Statedef 4010]
type    = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
anim = 4006
sprpriority = 2

[state 4000,ÉJÉbÉgÉCÉì]
type=helper
triggerall=!numhelper(4999)
trigger1=time = 0
helpertype=normal
name="cutin"
id=4999
pos=0,0
postype=back
facing=1
stateno=4999
ownpal=0
supermovetime=2147483647

[state 4000,à√ì]]
type=superpause
trigger1=time=0
pos=15,-75
anim=s6000
sound=s4999,0
poweradd=-1000
time=45
darken=0
p2defmul=1

[State 1000, Spark]
type = PlaySnd
triggerall = anim = 4006
trigger1 = time = 20
value = 4000,0
channel = 0

[State 1200, 2]
type = ChangeState
Trigger1 = Time = 80
value = 4011

;---------------------------------------------------------------------------
;ÉCÉâÇ¬Ç≠Ç∫Lv.1
[Statedef 4011]
type    = S
movetype = A
physics = S
velset = 0,0
sprpriority = 2
anim = 4011
juggle = 0

[State 901,1]
type = targetBind
trigger1 = AnimElem = 1
pos = 40, 0
time = 1


[State 1100, Voice]
type = PlaySnd
trigger1 = AnimElem = 3 || AnimElem = 9 || AnimElem = 15 || AnimElem = 21 || AnimElem = 27 || AnimElem = 32
value = 3,5
channel = 1

[State 1100, HitDef]
type = HitDef
trigger1 = AnimElem = 4
trigger2 = AnimElem = 10
trigger3 = AnimElem = 16
trigger4 = AnimElem = 22
trigger5 = AnimElem = 28
attr = S, HA
animtype  = Heavy
air.animtype  = Back
damage=22,12
priority  = 7, Hit
hitflag = MAFD
guardflag = M
pausetime = 4,4
sparkno=s6101
guard.sparkno=s6125
sparkxy = -10, -11
hitsound=s5,1
guardsound=s6,0
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
guard.ctrltime = 17
ground.velocity = 0,0
guard.velocity = -8
air.velocity = 0,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
envshake.time = 12
envshake.ampl = 3
fall = 1
fall.recover = 0
air.fall = 1
yaccel = .45
persistent = 1
getpower = 0,0
givepower = 35, 35
forcestand = 1
kill = 0
P2stateno = 3880

[State 1100, HitDef]
type = HitDef
trigger1 = AnimElem = 33
attr = S, HA
animtype  = Heavy
air.animtype  = Back
damage=30,15
priority  = 7, Hit
hitflag = MAFD
guardflag = M
pausetime = 9,9
sparkno=s6102
guard.sparkno=s6125
sparkxy = -10, -29
hitsound=s5,1
guardsound=s6,0
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
guard.ctrltime = 17
ground.velocity = -4.5,-8.5
guard.velocity = -8
air.velocity = -4.5,-8.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
envshake.time = 12
envshake.ampl = 3
fall = 1
fall.recover = 0
air.fall = 1
yaccel = .49
persistent = 0
getpower = 0,0
givepower = 35, 35
forcestand = 1

[State 1205, ChangeState]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; HITC_SHAKE
[Statedef 3610]
type    = C
movetype = H
physics = N
velset = 0,0

[State 5010, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = 5030

[State 5010, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype) ;5051 - 4 + type

[State 5010, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 5010, 5] ;State type gets set to aerial if getting hit up
type = StateTypeSet
triggerall = Time = 0
trigger1 = GetHitVar(yvel) != 0 || GetHitVar(fall)
trigger2 = Pos Y != 0
statetype = a

[State 5010, 7]
type = ChangeState
trigger1 = HitShakeOver
value = 3630

;---------------------------------------------------------------------------
; HITA_SHAKE
[Statedef 3620]
type    = A
movetype = H
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
value = 3630

;---------------------------------------------------------------------------
; HITA_UP (initial going up)
[Statedef 3630]
type    = A
movetype = H
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

[State 5030, 4]
type = ChangeState
trigger1 = HitOver
trigger2 = Vel Y > 0 ;Hit ground
trigger2 = Pos Y >= 10  ;.
value = 3650 ;HITA_FALL

[State 5030, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 3635 ;HITA_UP (transition)

;---------------------------------------------------------------------------
; HITA_UP_T (transition)
[Statedef 3635]
type    = A
movetype = H
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

[State 5035, 4]
type = ChangeState
trigger1 = HitOver  ;Hit is over
trigger2 = AnimTime = 0 ;Anim is over
trigger3 = Vel Y > 0 ;Hit ground
trigger3 = Pos Y >= 10  ;.
trigger4 = Time = 0  ;No transition anim
trigger4 = Anim != 5035 ;.
value = 3650 ;HITA_FALL

;---------------------------------------------------------------------------
; HITA_FALL (knocked up, falling)
[Statedef 3650]
type    = A
movetype = H
physics = N

[State 5050, 1] ;Change anim when done with transition
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim = 5035
trigger2 = Time = 0  ;If no transition anim
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

[State 5050, 2]
type = VelSet
trigger1 = Vel Y > 0
trigger1 = Pos Y >= ifelse((anim = [5051,5059]) || (anim = [5061,5069]), 0, 25)
x = -1.5

[State 5050, 6]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= ifelse((anim = [5051,5059]) || (anim = [5061,5069]), 0, 25)
value = 3700 ;HIT_BOUNCE

;---------------------------------------------------------------------------
; HITL_SHAKE
[Statedef 3680]
type    = L
movetype = H
physics = N
velset = 0,0

[State 5080, 1] ;Set default anim
type = VarSet
trigger1 = time = 0
sysvar(2) = ifelse(GetHitVar(yvel) = 0, 5080, 5090)

[State 5080, 2]
type = VarAdd
trigger1 = time = 0
trigger1 = (anim = [5081,5089]) || (anim = [5111,5119])
trigger1 = SelfAnimExist(sysvar(2) + (anim % 10))
sysvar(2) = anim % 10

[State 5080, 3] ;If 5090 doesn't exist, default to 5030
type = VarSet
trigger1 = time = 0
trigger1 = sysvar(2) = 5090
trigger1 = !SelfAnimExist(5090)
sysvar(2) = 5030

[State 5080, 3] ;Freeze
type = ChangeAnim
trigger1 = 1
value = sysvar(2)

[State 5080, 4]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yvel) = 0
value = 3681 ;HITL_SLIDE

[State 5080, 5]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yvel) != 0
value = 3630 ;HITA_UP

;---------------------------------------------------------------------------
; HITL_SLIDE
[Statedef 3681]
type    = L
movetype = H
physics = C

[State 5081, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 5081, 2]
type = VelSet
trigger1 = HitOver
x = 0

[State 5081, 3] ;Don't show hit ground frame
type = VarSet
trigger1 = Time = 0
sysvar(0) = 1

[State 5081, 4]
type = ChangeState
trigger1 = HitOver
value = 3710 ;HIT_LIEDOWN

;---------------------------------------------------------------------------
; HIT_BOUNCE (hit ground)
[Statedef 3700]
type    = L
movetype = H
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
type = ChangeState
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
value = 3710 ;HIT_LIEDOWN

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
value = 3701

;---------------------------------------------------------------------------
; HIT_BOUNCE (bounce into air)
[Statedef 3701]
type    = L
movetype = H
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
y = 20

[State 5101, 5] ;Acceleration
type = VelAdd
trigger1 = 1
y = .4

[State 5101, 6] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 12
type = ChangeState
value = 3710

;---------------------------------------------------------------------------
; HIT_LIEDOWN
[Statedef 3710]
type    = L
movetype = H
physics = N

[State 5110, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 5110, 1] ;For hit up/up-diag type (from state 5081)
type = ChangeAnim
persistent = 0
trigger1 = SelfAnimExist(5110 + (anim % 10))
trigger1 = anim = [5081,5089]
value = 5110 + (anim % 10)

[State 5110, 2] ;Hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
triggerall = anim != [5110,5119] ;Not already changed anim
trigger1 = anim != [5161,5169]
trigger2 = !SelfAnimExist(5170 + (anim % 10))
value = 5170

[State 5110, 3] ;Hit ground anim (for hit up)
type = ChangeAnim
triggerall = time = 0
triggerall = anim != [5110,5119] ;Not already changed anim
trigger1 = anim = [5161,5169]
trigger1 = SelfAnimExist(5170 + (anim % 10))
value = 5170 + (anim % 10)

[State 5110, 4]
type = HitFallDamage
trigger1 = Time = 0

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

[State 5110, 9] ;For hit up type
type = ChangeAnim
persistent = 0
triggerall = anim = [5171,5179]
triggerall = SelfAnimExist(5110 + (anim % 10))
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground anim
value = 5110 + (anim % 10)

[State 5110, 10] ;For normal
type = ChangeAnim
persistent = 0
triggerall = Anim != [5111,5119]
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground frame
value = 5110

[State 5110, 11] ;If just died
type = SelfState
triggerall = !alive
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground frame
trigger3 = Anim = [5110,5119]
value = 5150

[State 5110, 11] ;If just died
type = SelfState
trigger1 = time = 180
value = 5120

[State 5110, 12]
type = VarSet
trigger1 = SysVar(0)
trigger1 = Time = 0
sysvar(0) = 0

[State 5110, 13] ;Friction
type = VelMul
trigger1 = 1
x = 0.85
;---------------------------------------------------------------------------
; ÉhÉäÉãópêHÇÁÇ¢2
;---------------------------------------------------------------------------
; HITG_SHAKE_High
[Statedef 3800]
type    = S
movetype = H
physics = N
velset = 0,0

[State 1000, 0]
type = HitFallSet
trigger1 = time = 0
value = 0

[State 5000, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = Time = 0
value = 5002

[State 5000, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 5000, 6]
type = ChangeState
trigger1 = HitShakeOver
value = 3801 ;HITG_SLIDE

;---------------------------------------------------------------------------
; HITG_SHAKE_Low
[Statedef 3805]
type    = S
movetype = H
physics = N
velset = 0,0

[State 1000, 0]
type = HitFallSet
trigger1 = time = 0
value = 0

[State 5000, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = Time = 0
value = 5012

[State 5000, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 5000, 6]
type = ChangeState
trigger1 = HitShakeOver
value = 3806 ;HITG_SLIDE

;---------------------------------------------------------------------------
; HITG_SLIDE_High
[Statedef 3801]
type    = S
movetype = H
physics = S

[State 5001, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 5001, 2]
type = ChangeAnim
trigger1 = AnimTime = 0
value = 5007

[State 5001, 3] ;Stop sliding back
type = VelMul
trigger1 = Time >= GetHitVar(slidetime)
x = .6

[State 5001, 4]
type = VelSet
trigger1 = HitOver
x = 0

[State 5001, 5]
type = DefenceMulSet
trigger1 = HitOver
value = 1

[State 5001, 6]
type = ChangeState
trigger1 = HitOver
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; HITG_SLIDE_Low
[Statedef 3806]
type    = S
movetype = H
physics = S

[State 5001, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 5001, 2]
type = ChangeAnim
trigger1 = AnimTime = 0
value = 5017

[State 5001, 3] ;Stop sliding back
type = VelMul
trigger1 = Time >= GetHitVar(slidetime)
x = .6

[State 5001, 4]
type = VelSet
trigger1 = HitOver
x = 0

[State 5001, 5]
type = DefenceMulSet
trigger1 = HitOver
value = 1

[State 5001, 6]
type = ChangeState
trigger1 = HitOver
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; HITC_SHAKE
[Statedef 3810]
type    = C
movetype = H
physics = N
velset = 0,0

[State 5010, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = 5030

[State 5010, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype) ;5051 - 4 + type

[State 5010, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 5010, 5] ;State type gets set to aerial if getting hit up
type = StateTypeSet
triggerall = Time = 0
trigger1 = GetHitVar(yvel) != 0 || GetHitVar(fall)
trigger2 = Pos Y != 0
statetype = a

[State 5010, 7]
type = ChangeState
trigger1 = HitShakeOver
value = 3830

;---------------------------------------------------------------------------
; HITA_SHAKE
[Statedef 3820]
type    = A
movetype = H
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
value = 3830

;---------------------------------------------------------------------------
; HITA_UP (initial going up)
[Statedef 3830]
type    = A
movetype = H
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

[State 5030, 4]
type = ChangeState
trigger1 = HitOver
trigger2 = Vel Y > 0 ;Hit ground
trigger2 = Pos Y >= 10  ;.
value = 3850 ;HITA_FALL

[State 5030, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 3835 ;HITA_UP (transition)

;---------------------------------------------------------------------------
; HITA_UP_T (transition)
[Statedef 3835]
type    = A
movetype = H
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

[State 5035, 4]
type = ChangeState
trigger1 = HitOver  ;Hit is over
trigger2 = AnimTime = 0 ;Anim is over
trigger3 = Vel Y > 0 ;Hit ground
trigger3 = Pos Y >= 10  ;.
trigger4 = Time = 0  ;No transition anim
trigger4 = Anim != 5035 ;.
value = 3850 ;HITA_FALL

;---------------------------------------------------------------------------
; HITA_FALL (knocked up, falling)
[Statedef 3850]
type    = A
movetype = H
physics = N

[State 5050, 1] ;Change anim when done with transition
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim = 5035
trigger2 = Time = 0  ;If no transition anim
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
value = 3900 ;HIT_BOUNCE

;---------------------------------------------------------------------------
; HITL_SHAKE
[Statedef 3880]
type    = L
movetype = H
physics = N
velset = 0,0

[State 5080, 1] ;Set default anim
type = VarSet
trigger1 = time = 0
sysvar(2) = ifelse(GetHitVar(yvel) = 0, 5080, 5090)

[State 5080, 2]
type = VarAdd
trigger1 = time = 0
trigger1 = (anim = [5081,5089]) || (anim = [5111,5119])
trigger1 = SelfAnimExist(sysvar(2) + (anim % 10))
sysvar(2) = anim % 10

[State 5080, 3] ;If 5090 doesn't exist, default to 5030
type = VarSet
trigger1 = time = 0
trigger1 = sysvar(2) = 5090
trigger1 = !SelfAnimExist(5090)
sysvar(2) = 5030

[State 5080, 3] ;Freeze
type = ChangeAnim
trigger1 = 1
value = sysvar(2)

[State 5080, 4]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yvel) = 0
value = 3881 ;HITL_SLIDE

[State 5080, 5]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yvel) != 0
value = 3830 ;HITA_UP

;---------------------------------------------------------------------------
; HITL_SLIDE
[Statedef 3881]
type    = L
movetype = H
physics = C

[State 5081, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 5081, 2]
type = VelSet
trigger1 = HitOver
x = 0

[State 5081, 3] ;Don't show hit ground frame
type = VarSet
trigger1 = Time = 0
sysvar(0) = 1

[State 5081, 4]
type = ChangeState
trigger1 = HitOver
value = 3910 ;HIT_LIEDOWN

;---------------------------------------------------------------------------
; HIT_BOUNCE (hit ground)
[Statedef 3900]
type    = L
movetype = H
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
type = ChangeState
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
value = 3910 ;HIT_LIEDOWN

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
value = 3901

;---------------------------------------------------------------------------
; HIT_BOUNCE (bounce into air)
[Statedef 3901]
type    = L
movetype = H
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
y = 20

[State 5101, 5] ;Acceleration
type = VelAdd
trigger1 = 1
y = .4

[State 5101, 6] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 12
type = ChangeState
value = 3910

;---------------------------------------------------------------------------
; HIT_LIEDOWN
[Statedef 3910]
type    = L
movetype = H
physics = N

[State 5110, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 5110, 1] ;For hit up/up-diag type (from state 5081)
type = ChangeAnim
persistent = 0
trigger1 = SelfAnimExist(5110 + (anim % 10))
trigger1 = anim = [5081,5089]
value = 5110 + (anim % 10)

[State 5110, 2] ;Hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
triggerall = anim != [5110,5119] ;Not already changed anim
trigger1 = anim != [5161,5169]
trigger2 = !SelfAnimExist(5170 + (anim % 10))
value = 5170

[State 5110, 3] ;Hit ground anim (for hit up)
type = ChangeAnim
triggerall = time = 0
triggerall = anim != [5110,5119] ;Not already changed anim
trigger1 = anim = [5161,5169]
trigger1 = SelfAnimExist(5170 + (anim % 10))
value = 5170 + (anim % 10)

[State 5110, 4]
type = HitFallDamage
trigger1 = Time = 0

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

[State 5110, 9] ;For hit up type
type = ChangeAnim
persistent = 0
triggerall = anim = [5171,5179]
triggerall = SelfAnimExist(5110 + (anim % 10))
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground anim
value = 5110 + (anim % 10)

[State 5110, 10] ;For normal
type = ChangeAnim
persistent = 0
triggerall = Anim != [5111,5119]
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground frame
value = 5110

[State 5110, 11] ;If just died
type = SelfState
triggerall = !alive
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground frame
trigger3 = Anim = [5110,5119]
value = 5150

[State 5110, 11] ;If just died
type = SelfState
trigger1 = time = 70
value = 5120

[State 5110, 12]
type = VarSet
trigger1 = SysVar(0)
trigger1 = Time = 0
sysvar(0) = 0

[State 5110, 13] ;Friction
type = VelMul
trigger1 = 1
x = 0.85

;---------------------------------------------------------------------------

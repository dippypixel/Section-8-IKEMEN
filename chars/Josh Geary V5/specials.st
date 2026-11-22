;---------------------------------------------------------------------------
;-------------SPECIALS------------------------------------------------------
;---------------------------------------------------------------------------
;Eagle Dive
;---------------------------------------------------------------------------
[Statedef 1020]
type    = A
movetype= A
physics = A
juggle  = 3
ctrl = 0
anim = 1020
poweradd = ifelse(!var(11),20,0)
velset=0,0
[State 0, VelSet]
type = VelSet
trigger1 =animelem =3
x = 9

[State 1122,Valadd]
type = Veladd
trigger1 = 1
x = ifelse(command = "holdback",-.5,-.1)

[State 1045, 7]
type = Explod
triggerall = !NumExplod(591)
trigger1 = time = 0
anim = F591
id= 591
pos = 15, -55
postype = p1
bindtime = 1
removetime = -2
ontop = 1
ownpal = 1
removeongethit = 1

[State 700, 1]
type = HitDef
trigger1 = time = 0
attr = A, SA
damage = 50, 5
animtype = Medium
guardflag = HA
hitflag = MAF
priority = 6, Hit
pausetime = 11, 11
sparkno = 3
sparkxy = -10,-30
hitsound = S2, 2
guardsound = S3,0
ground.type = Low
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -6,-2
airguard.velocity = -1,0
air.type = High
air.velocity = -3.8,-3
air.hittime = 12

[State 0, Damage Dampener]
type = VarSet
trigger1 = movehit
trigger1 = numtarget
fv = 10
value = fvar(10)*.925
persistent = 0
ignorehitpause = 1


[State 700, snd]
type = PlaySnd
trigger1 = Time = 1
value = 21, 1

[State 230, 1]
type = PlaySnd
trigger1 = Time = 2
value = 8, 3

[State 200, 7]
type = ChangeState
trigger1 = Animelemtime(4) > 0
value = 50
ctrl = 1




;-----------------------------------------------------------------------
;BASIC Attacks
;-----------------------------------------------------------------------
;---------------------------------------------------------------------------
; Rolling Attack
[Statedef 1030]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1030

[State 0, VelSet]
type = VelSet
trigger1 = animelemtime(5)<0
x = 6
y = 0
ignorehitpause = 1
;persistent = 


[State 200, 1]
type = PlaySnd
trigger1 = animelem = 2 
value = 0, 0
freqmul = ifelse(var(11),1.5,1)
[State 200, 1]
type = PlaySnd
trigger1 = animelem = 2 
value = 21, 0
freqmul = ifelse(var(11),1.5,1)

[State 200, 1]
type = PlaySnd
trigger1 = animelem = 2 ||animelem = 3 ||animelem = 4||animelem = 5
value = S40, 1
freqmul = ifelse(var(11),1.5,1)
[State 200, 1]
type = HitDef
trigger1 = animelem = 3 ||animelem = 4||animelem = 5
attr = S, SA
damage = 10, 0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 9,9
sparkno = 2
sparkxy = -10, -16
hitsound = S2,2
guardsound = S3,0
ground.type = High
ground.slidetime = 1
ground.hittime  = 12
ground.velocity = -3
air.velocity = -3
airguard.velocity = -6
ground.cornerpush.veloff = -3
air.fall = 1
fall.recovertime = 16
air.type = High
air.hittime = 12

[State 0, Damage Dampener]
type = VarSet
trigger1 = movehit
trigger1 = numtarget
fv = 10
value = fvar(10)*.925
persistent = 0
ignorehitpause = 1

[State 200, 7]
type = ChangeState
trigger1 = command = "holdback" && animelem = 6
value = 105
ctrl = 1


[State 200, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
;-------------SPECIALS------------------------------------------------------
;---------------------------------------------------------------------------
;Divebomb
;---------------------------------------------------------------------------
[Statedef 1010]
type    = S
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 1010
poweradd = 20 

[State 0, Width]
type = Width
trigger1 = 1
player = 10,30
ignorehitpause = 1


[State 0, VelSet]
type = VelSet
trigger1 = animelemtime(2)=1
x = 8
y = -4
;ignorehitpause = 
;persistent = 



[State 0, StateTranstionStuff]
type = StateTypeSet
trigger1 = pos y != 0
statetype = A
[State 0, StateTranstionStuff]
type = StateTypeSet
trigger1 = pos y >= -1
statetype = S

[State 0, StateTranstionStuff]
type = PosSet
trigger1= vel y > 0
trigger1= pos y > -vel y
y = 0
[State 0, StateTranstionStuff]
type = VelSet
trigger1= vel y > 0
trigger1= pos y > -vel y
y = 0
[State 0, Gravity]
type = Veladd
trigger1 = statetype = A 
y = const(movement.yaccel)


[State 700, snd]
type = PlaySnd
trigger1 = animelem = 4
value = 21, 1
[State 210, 1]
type = PlaySnd
trigger1 = animelem = 3
value = 0, 2

[State 230, 1]
type = PlaySnd
trigger1 = Time = 2
value = 8, 3

[State 240, 2]
type = HitDef
trigger1 = Time = 0
attr = S, SA
animtype  = Medium
damage    = 50
guardflag = MA
pausetime = 12,12
sparkno = 3
sparkxy = -10,-25
hitsound = S2,2
guardsound = S3,0
ground.type = High
ground.slidetime = 6
ground.hittime  = 30
ground.velocity = -5
airguard.velocity = -1.8,-.8
air.type = High
air.velocity = -2,-5
air.hittime = 30
fall = 0

[State 700, Change to Fall]
type = ChangeState
trigger1 =time > 30 && pos y = 0
value = 52


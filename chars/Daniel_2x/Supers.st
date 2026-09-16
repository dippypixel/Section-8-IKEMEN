;---------------------------------------------------------------------------
; Daniel's Punch Pain
; CNS difficulty: medium
; Uses a variant of the Azufight Portrait
[Statedef 3000]
type    = S
movetype= A
physics = N
juggle  = 15
velset = 0,0
anim = 3000
ctrl = 0
sprpriority = 2

[State 3000, Level 3]
type = VarSet
trigger1 = time = 0
var(10) = 7

[State 3000, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Super"
ID = 7500
pos = 0,-55
stateno = 7500
postype = p1
ownpal = 1
supermovetime = 9999
persistent = 0

[State 65002, Substract Power]
type = PowerAdd
trigger1 = !(var(24)>=0 && var(28)=1) && Time=0
value = -3000

[State 0, Substract Seconds]
type = VarAdd
trigger1 = (var(24)>=0 && var(28)=1) && Time=0
var(24) = -360

[State 3000, Super Pause]
type = SuperPause
trigger1 = Time = 0
time = 45
anim = -1
sound = s7,0
unhittable=1
darken = 0
p2defmul = 1

[State 3000, After Images]
type = AfterImage
trigger1 = AnimElem = 2, 1
paladd = 255,0,0
palmul = 128, 0, 0
trans = add
time = 2

[State 3000, After Images Time]
type = AfterImageTime
trigger1 = AnimElemTime(2) >= 1 && AnimElemTime(31) < 0
time = 2

[State 3000, Super D]
type = NotHitBy
trigger1 = AnimElem = 2
value = , NA, SA, AT
time = 11

[State 3000, Super E]
type = NotHitBy
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(14) < 0
value2 = C, NA
time = 1

[State 3000, 2]
type = PosAdd
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(7) < 0
x = 4

[State 3000, Another Pos Add]
type = PosAdd
trigger1 = AnimElem = 9 || AnimElem = 13 || AnimElem=19
trigger2 = AnimElem = 33
x = 7

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S1,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 8 || AnimElem=33
value = S1,2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 13 || AnimElem=19
value = S1,5

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4 || AnimElem = 9 || AnimElem = 13 || AnimElem = 19
value = S3000,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 25
value = S237,0

[State 3000, HitDef One]
type = HitDef
trigger1 = AnimElem = 4 || AnimElem = 9 || AnimElem = 13 || AnimElem = 19
attr = S, HA
animtype  = Hard
damage    = 22,6
getpower  = 0,0
priority  = 7,Hit
guardflag = MA
pausetime = 10,10
sparkno = s7930+random%8
guard.sparkno = s7911
sparkxy = -10,-60
hitsound   = s5,6
guardsound = s6,0
ground.type = High
ground.slidetime = 60
ground.hittime  = 60
guard.hittime=30
guard.slidetime=30
ground.velocity = -1
air.velocity = -1,0
air.fall = 1
fall.animtype = Hard
fall.recover = 0
guard.sparkno = s7911
envshake.time = 15
envshake.freq = 185
envshake.ampl = -3
forcestand=1

[State 0, VelSet]
type = VelSet
trigger1 = AnimElemTime(25)>=0 && AnimElemTime(33)<0
x = 4.5

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(33)=0
physics = S

[State 0, Turn]
type = Turn
trigger1 = AnimElemTime(33)=0 && p2dist x < 0

[State 3000, HitDef Two]
type = HitDef
trigger1 = AnimElem = 26 || AnimElem = 28 || AnimElem = 30 || AnimElem = 32
attr = S, HA
animtype  = Hard
damage    = 60
getpower  = 0,0
priority  = 7, Hit
guardflag = MA
pausetime = 2,2
sparkno = s7930+random%8
guard.sparkno = s7911
sparkxy = -10,-25
hitsound   = s5,2
guardsound = s6,0
ground.type = Low
ground.slidetime = 30
ground.hittime  = 30
ground.velocity = -2
air.velocity = -1,0
air.fall = 1
fall.animtype = Hard
fall.recover = 0
guard.sparkno = s7911
envshake.time = 20
envshake.freq = 200
envshake.ampl = -5
forcestand=1

[State 0, DestroySelf]
type = Movehitreset
trigger1 = AnimElem= 33

[State 0, HitDef]
type = HitDef
trigger1 = AnimElem= 33
attr = S,HA
hitflag = MA
guardflag = MA
animtype = hard
priority = 7,Hit
damage = 55,15
pausetime = 4 ,4
sparkno = S7930+random%8
guard.sparkno = S7911
sparkxy = -10,-45
hitsound = S5,9
guardsound = S6,0
ground.type = High
ground.slidetime = 67
ground.hittime = 67
yaccel = 0.5
ground.velocity = -20,0
air.velocity = -20,0
fall = 1
fall.yvelocity = -4.5
fall.recover = 0
down.bounce = 1
id = 3000
hitonce = 1
kill = 1
guard.kill = 1
fall.kill = 1
getpower = 0,0
envshake.time = 20
envshake.freq = 145
envshake.ampl = -7
envshake.phase = 90

[State 0, TargetState]
type = TargetState
triggerall = NumTarget(3000)
trigger1 = movehit && !movereversed && AnimElemTime(33) >= 0 && AnimElemTime(34) < 0
value = 1026
ID = 3000
ignorehitpause=1
persistent=0

[State 3000, Jump away then]
type = ChangeState
trigger1 = AnimTime = 0
value = 4895
ctrl = 0

;---------------------------------------------------------------------------
; Master Finger Spark

[Statedef 3015]
type    = S
movetype= A
physics = S
juggle  = 9
velset = 0,0
anim = 3015
ctrl = 0
sprpriority = 2

[State 3000, Super Cancel]
type = Helper
triggerall = Time = 0
trigger1 = prevstateno=500 || prevstateno=502 || prevstateno=503 ;Scythe
trigger2 = prevstateno=1788 || prevstateno=1790 || prevstateno= 1792 || prevstateno= 1794 ;Fan-Whirlwind
trigger3 = prevstateno=1436 || prevstateno=1440 || prevstateno= 1441 || prevstateno=1444 ;Pounce
trigger4 = (prevstateno=[1433,1435]) ;Headbutt
persistent = 0
id = 30005
name = "Super Cancel Helper"
pos = 0,-48
postype = P1
stateno = 2310
helpertype = normal
supermove = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 3000, Dream Cancel]
type = Helper
triggerall = Time = 0
trigger1 = (prevstateno=3050||prevstateno=4222||prevstateno=4804)
persistent = 0
id = 30005
name = "Dream Cancel Helper"
pos = 0,-48
postype = P1
stateno = 2320
helpertype = normal
supermove = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 0, TargetState]
type = TargetState
trigger1 = prevstateno=3050 && Time=0
value = 35301
ID = 3050

[State 65002, Substract Power]
type = PowerAdd
trigger1 = !(var(24)>=0 && var(28)=1) && Time=0
value = -2000+((prevstateno=3050||prevstateno=4222||prevstateno=4804)*-1000)

[State 0, Substract Seconds]
type = VarAdd
trigger1 = (var(24)>=0 && var(28)=1) && Time=0
var(24) = -240

[State 3015, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Super"
ID = 7500
pos = 0,-55
stateno = 7500
postype = p1
ownpal = 1
supermovetime = 9999
persistent = 0

[State 3015, Level 2]
type = VarSet
trigger1 = time = 0
var(10) = 6

[State 3015, PlaySnd]
type = PlaySnd
trigger1 = Time = 23
value = S6789,0
volume = 188

[State 3015, Super Pause]
type = SuperPause
trigger1 = Time = 0
time = 45
anim = -1
sound = s7,0
movetime = 45
darken = 0
p2defmul = 1+((prevstateno=3050||prevstateno=4222||prevstateno=4804)*1.2)

[State 3015, After Images]
type = AfterImage
trigger1 = AnimElem = 2, 1
paladd = 255,0,0
palmul = 128, 0, 0
trans = add
time = 50
timegap=2
framegap=3

[State 3015, Super D]
type = NotHitBy
trigger1 = Time <= 45
value = SCA

[State 3015, Super D]
type = NotHitBy
trigger1 = AnimElem = 2
value = , NA, SA, AT
time = 11

[State 3015, Super E]
type = NotHitBy
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(14) < 0
value2 = C, NA
time = 1

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 3015, Helper]
type = Helper
trigger1 = AnimElem = 4
helpertype = normal
name = "Ammo"
ID = 23018
pos = 11,-72
stateno = 23018
postype = p1
ownpal = 1
supermovetime = 9999
size.xscale=1
size.yscale=1

[State 3015, Helper]
type = Helper
trigger1 = time = 80
helpertype = normal
name = "Master Spark"
ID = 3016
pos = 25,-70
stateno = 3016
postype = p1
ownpal = 1
persistent = 0
size.xscale=1
size.yscale=1

[State 3015, OUTTA AMMO!]
type = ChangeState
trigger1 = Time >= 298
value = 3021
ctrl = 0

[Statedef 3021]
type    = S
movetype= I
physics = S
velset = -23,0
anim = 3020
ctrl = 0
sprpriority = 2

[State 3021, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Daniel's Kick Smash (New!)
; CNS difficulty: medium
; Uses a variant of the Azufight Portrait
[Statedef 3052]
type    = S
movetype= A
physics = S
juggle  = 10
velset = 0,0
anim = 3052
ctrl = 0
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time=0
trigger1 = random<750
value = S5008,random%4
volume = 255
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem=11
value = S5008,4
volume = 255
channel = 0

[State 65002, Substract Power]
type = PowerAdd
trigger1 = !(var(24)>=0 && var(28)=1) && Time=0
value = -1000

[State 0, Substract Seconds]
type = VarAdd
trigger1 = (var(24)>=0 && var(28)=1) && Time=0
var(24) = -120

;Super Cancel If Cancelled from: Any of the Two Hits of the 2-Hit Combo.
;                                From (Ground) Scythe.

[State 3000, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Super"
ID = 7500
pos = 0,-55
stateno = 7500
postype = p1
ownpal = 1
supermovetime = 9999
persistent = 0

[State 3052, Level 1]
type = VarSet
trigger1 = time = 0
var(10) = 5

[State 3000, Super Cancel]
type = Helper
triggerall = Time = 0
trigger1 = prevstateno=500 || prevstateno=502 || prevstateno=503 ;Scythe
trigger2 = prevstateno=1788 || prevstateno=1790 || prevstateno= 1792 || prevstateno= 1794 ;Fan-Whirlwind
trigger3 = prevstateno=1436 || prevstateno=1440 || prevstateno= 1441 || prevstateno=1444 ;Pounce
trigger4 = (prevstateno=[1433,1435]) ;Headbutt
persistent = 0
id = 30005
name = "Super Cancel Helper"
pos = 0,-48
postype = P1
stateno = 2310
helpertype = normal
supermove = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 3052, Super Pause]
type = SuperPause
trigger1 = Time = 0
time = 45
anim = -1
sound = s7,0
darken = 0
p2defmul = 1

[State 3000, After Images]
type = AfterImage
trigger1 = AnimElem = 2, 1
trans = add
time = 55

[State 3000, After Images Time]
type = AfterImageTime
trigger1 = AnimElemTime(3) >= 1 && AnimElemTime(10) < 0
time = 2

[State 3000, Super D]
type = NotHitBy
trigger1 = AnimElem = 1
value = , NA, SA, AT
time = 15

[State 3000, Super E]
type = NotHitBy
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(6) < 0
value2 = C, NA
time = 1

[State 3000, 2]
type = PosAdd
trigger1 = AnimElem = 3
x = 8

[State 3000, Another Pos Add]
type = VelSet
trigger1 = AnimElemTime(3) >= 1 && AnimElemTime(8) < 0
x = 9.2

[State 3052, HitDef One]
type = HitDef
trigger1 = AnimElem = 5
attr = S, HA
hitflag=MAF
animtype  = Hard
damage    = 50,12
getpower  = 0,0
priority  = 5,Miss
guardflag = MA
pausetime = 0,0
sparkno = s7930+random%8
guard.sparkno = s7911
sparkxy = -10,-26
hitsound   = s5,6
guardsound = s6,0
ground.type = High
p1facing = 1
p2facing = 1
fall = 1
ground.velocity=-7,0
ground.slidetime=7
ground.hittime=8
fall.animtype = Hard
fall.recover = 0
guard.sparkno = s7911
envshake.time = 15
envshake.freq = 185
envshake.ampl = -3
p1stateno = 3050
p2stateno = 6930
hitonce=1
ID=3050
kill = 0

[State 3052, HitDef One]
type = HitDef
trigger1 = !MoveContact && AnimElem=11
attr = S, HA
animtype  = Hard
damage    = 42,12
getpower  = 0,0
priority  = 6,Hit
guardflag = MA
pausetime = 0,0
sparkno = s7930+random%8
guard.sparkno = s7911
sparkxy = -10,-26
hitsound   = s2435,3
guardsound = s6,0
ground.type = High
p1facing = 1
p2facing = 1
fall=1
fall.recover=0
down.bounce = 1
fall.yvelocity=-5.4
yaccel=0.5
ground.velocity=-16,0
ground.slidetime=14
ground.hittime=14
fall.animtype = Hard
guard.sparkno = s7911
envshake.time = 15
envshake.freq = 185
envshake.ampl = -3
kill = 0

[State 3052, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = S237,0

[State 3052, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(11) = -6
value = S237,2

[State 3052, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Daniel's Lv. 2 Kick Smash (New!)
; CNS difficulty: medium
; Uses a variant of the Azufight Portrait
[Statedef 3055]
type    = S
movetype= A
physics = S
juggle  = 10
velset = 0,0
anim = 3052
ctrl = 0
sprpriority = 2

;Super Cancel If Cancelled from: Any of the Two Hits of the 2-Hit Combo.
;                                From (Ground) Scythe.
[State 3000, Super]
type = Helper
trigger1 = Time = 0
trigger1 = PrevStateNo = 1600 || PrevStateNo = 1601 || PrevStateNo = 500
persistent = 0
id = 30005
name = "Super Cancel Helper"
pos = 0,-48
postype = P1
stateno = 2310
helpertype = normal
supermove = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 3000, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Super"
ID = 7500
pos = 0,-55
stateno = 7500
postype = p1
ownpal = 1
supermovetime = 9999
persistent = 0


[State 3052, Level 2]
type = VarSet
trigger1 = time = 0
var(10) = 6

[State 3052, Super Pause]
type = SuperPause
trigger1 = Time = 0
time = 45
anim = -1
sound = s7,0
poweradd = -2000
darken = 0
p2defmul = 1

[State 3000, After Images]
type = AfterImage
trigger1 = AnimElem = 2, 1
paladd = 255,0,0
palmul = 128, 0, 0
trans = add
time = 2

[State 3000, After Images Time]
type = AfterImageTime
trigger1 = AnimElemTime(2) >= 1 && AnimElemTime(31) < 0
time = 2

[State 3000, Super D]
type = NotHitBy
trigger1 = AnimElem = 2
value = , NA, SA, AT
time = 11

[State 3000, Super E]
type = NotHitBy
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(6) < 0
value2 = C, NA
time = 1

[State 3000, 2]
type = PosAdd
trigger1 = AnimElem = 3
x = 8

[State 3000, Another Pos Add]
type = VelSet
trigger1 = animelemtime(4) > 0 && animelemtime(6) < 0
x = 6

[State 3052, HitDef One]
type = HitDef
trigger1 = AnimElem = 5
attr = S, HA
animtype  = Hard
damage    = 20,12
getpower  = 0,0
priority  = 4,Miss
guardflag = MA
pausetime = 0,0
sparkno = s7930+random%8
guard.sparkno = s7911
sparkxy = -10,-26
hitsound   = s5,6
guardsound = s6,0
ground.type = High
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
ground.velocity = -10,0
air.velocity = -10,0
p1facing = 1
p2facing = 1
fall = 1
fall.animtype = Hard
fall.recover = 0
guard.sparkno = s7911
envshake.time = 15
envshake.freq = 185
envshake.ampl = -3
p1stateno = 31050
p2stateno = 6930
ID=3050
kill = 0

[State 3052, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Daniel's Lv. 2 Kick Smash (New!)
; CNS difficulty: medium
; Uses a variant of the Azufight Portrait
[Statedef 3358]
type    = S
movetype= A
physics = S
juggle  = 10
velset = 0,0
anim = 3052
ctrl = 0
sprpriority = 2

;Super Cancel If Cancelled from: Any of the Two Hits of the 2-Hit Combo.
;                                From (Ground) Scythe.
[State 3000, Super]
type = Helper
trigger1 = Time = 0
trigger1 = PrevStateNo = 1600 || PrevStateNo = 1601 || PrevStateNo = 500
persistent = 0
id = 30005
name = "Super Cancel Helper"
pos = 0,-48
postype = P1
stateno = 2310
helpertype = normal
supermove = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 3000, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Super"
ID = 7500
pos = 0,-55
stateno = 7500
postype = p1
ownpal = 1
supermovetime = 9999
persistent = 0


[State 3052, Level 3]
type = VarSet
trigger1 = time = 0
var(10) = 7

[State 3052, Super Pause]
type = SuperPause
trigger1 = Time = 0
time = 45
anim = -1
sound = s7,0
poweradd = -3000
darken = 0
p2defmul = 1

[State 3000, After Images]
type = AfterImage
trigger1 = AnimElem = 2, 1
paladd = 255,0,0
palmul = 255, 0, 0
trans = add
time = 2

[State 3000, After Images Time]
type = AfterImageTime
trigger1 = AnimElemTime(2) >= 1 && AnimElemTime(6) < 0
time = 2

[State 3000, Super D]
type = NotHitBy
trigger1 = AnimElem = 2
value = , NA, SA, AT
time = 11

[State 3000, Super E]
type = NotHitBy
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(6) < 0
value2 = C, NA
time = 1

[State 3000, 2]
type = PosAdd
trigger1 = AnimElem = 3
x = 8

[State 3000, Another Pos Add]
type = VelSet
trigger1 = animelemtime(4) > 0 && animelemtime(6) < 0
x = 6

[State 3052, HitDef One]
type = HitDef
trigger1 = AnimElem = 5
attr = S, HA
animtype  = Hard
damage    = 20,12
getpower  = 0,0
priority  = 4,Miss
guardflag = MA
pausetime = 0,0
sparkno = s7930+random%8
guard.sparkno = s7911
sparkxy = -10,-26
hitsound   = s5,6
guardsound = s6,0
ground.type = High
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
ground.velocity = -10,0
air.velocity = -10,0
p1facing = 1
p2facing = 1
fall = 1
fall.animtype = Hard
fall.recover = 0
guard.sparkno = s7911
envshake.time = 15
envshake.freq = 185
envshake.ampl = -3
p1stateno = 32050
p2stateno = 6930
ID=3050
kill = 0

[State 3052, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Daniel's Kick Smash
; CNS difficulty: medium
; This move looks very funny, it also contains two HitDefs, one for the Kicks
; and one for the finish Punch!!! This move is not as strong as Hyper Combos,
; so it doesn't use MvC hyper portrait, I will use an Azufight Portrait

[Statedef 3050]
type    = S
movetype= A
physics = S
juggle  = 8
velset = 0,0
anim = 3050
ctrl = 0
sprpriority = 2

[State 3050, Super B]
type = AfterImage
trigger1 = AnimElem = 1
time = 180
framegap=2
timegap=2
trans = add

[State 3050, Super D]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3052, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
trigger2 = AnimElemTime(5) = 0
trigger3 = AnimElemTime(7) = 0
trigger4 = AnimElemTime(11) = 0
trigger5 = AnimElemTime(15) = 0
trigger6 = AnimElemTime(17) = 0
value = S1,5

[State 3052, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(8) = 0
trigger2 = AnimElemTime(12) = 0
value = S237,0
freqmul = 1.6

[State 3052, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(11) = 0
value = S22000,1

[State 3050, PositionAdd]
type = PosAdd
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
trigger4 = AnimElem = 4
trigger5 = AnimElem = 5
trigger6 = AnimElem = 6
trigger7 = AnimElem = 7
trigger8 = AnimElem = 8
trigger9 = AnimElem = 9
trigger10 = AnimElem = 10
trigger11 = AnimElem = 11
trigger12 = AnimElem = 12
trigger13 = AnimElem = 13
trigger14 = AnimElem = 14
trigger15 = AnimElem = 15
trigger16 = AnimElem = 16
x = 8

[State 3050, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
trigger3 = AnimElem = 7
trigger4 = AnimElem = 9
trigger5 = AnimElem = 11
trigger6 = AnimElem = 13
trigger7 = AnimElem = 15
trigger8 = AnimElem = 17
value = S5,5
volume = 0

[State 3050, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
trigger3 = AnimElem = 7
trigger4 = AnimElem = 9
trigger5 = AnimElem = 11
trigger6 = AnimElem = 13
trigger7 = AnimElem = 15
trigger8 = AnimElem = 17
value = -15
ID = 3050
kill = 0

[State 3660, Hit Sparks]
type = Explod
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
trigger3 = AnimElem = 7
trigger4 = AnimElem = 9
trigger5 = AnimElem = 11
trigger6 = AnimElem = 13
trigger7 = AnimElem = 15
trigger8 = AnimElem = 17
anim = 7930+random%8
ID = 4122
pos = 2,-31
postype = p2
facing = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = 1,1
ontop = 1
ownpal = 1
removeongethit = 1

[State -2, Score] ;HAS MY OWN TWEAKS
type = Varadd
triggerall=NumHelper(80000)
triggerall = helper(80000),stateno=80000 && (helper(80000),var(0)!=[1,119])
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
trigger3 = AnimElem = 7
trigger4 = AnimElem = 9
trigger5 = AnimElem = 11
trigger6 = AnimElem = 13
trigger7 = AnimElem = 15
trigger8 = AnimElem = 17
trigger9 = Time=0
var(34) = 1
ignorehitpause = 1

[State -2, Score] ;LOLAZO
type = Varadd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
trigger3 = AnimElem = 7
trigger4 = AnimElem = 9
trigger5 = AnimElem = 11
trigger6 = AnimElem = 13
trigger7 = AnimElem = 15
trigger8 = AnimElem = 17
trigger9 = Time=0
var(48) = 1
ignorehitpause = 1

[State 3660, Add to the Combo]
type = HitAdd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
trigger3 = AnimElem = 7
trigger4 = AnimElem = 9
trigger5 = AnimElem = 11
trigger6 = AnimElem = 13
trigger7 = AnimElem = 15
trigger8 = AnimElem = 17
value = 1

[State 3050, TargetState]
type = TargetState
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
trigger3 = AnimElem = 7
trigger4 = AnimElem = 9
trigger5 = AnimElem = 11
trigger6 = AnimElem = 13
trigger7 = AnimElem = 15
value = 6930+random%2
ID = 3050

[State 0, EnvShake]
type = EnvShake
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
trigger3 = AnimElem = 7
trigger4 = AnimElem = 9
trigger5 = AnimElem = 11
trigger6 = AnimElem = 13
trigger7 = AnimElem = 15
trigger8 = AnimElem = 17
time = 5+((AnimElem=17)*9)
freq = 136+((AnimElem=17)*65)
ampl = -4
phase = 56

[State 3050, TargetState]
type = TargetState
trigger1 = AnimElem = 17
value = 6931
ID = 3050

[State 3050, Target Bind]
type = TargetBind
triggerall = numtarget
trigger1 = animelemtime(17) < 0
pos = 30, 0
ignorehitpause = 1

[State 3050, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 3050, 5] ;Now you've done it!
type = ChangeState
trigger1 = AnimTime = 0
value = 3053
ctrl = 0

[Statedef 31050]
type    = S
movetype= A
physics = S
juggle  = 8
velset = 0,0
anim = 3050
ctrl = 0
sprpriority = 2

[State 3050, Super B]
type = AfterImage
trigger1 = AnimElem = 2
time = 2
paladd = 10,10,66

[State 3050, Super C]
type = AfterImageTime
trigger1 = AnimElemTime(2) >= 0
time = 2

[State 3050, Super D]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3050, PositionAdd]
type = PosAdd
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
trigger4 = AnimElem = 4
trigger5 = AnimElem = 5
trigger6 = AnimElem = 6
trigger7 = AnimElem = 7
trigger8 = AnimElem = 8
trigger9 = AnimElem = 9
trigger10 = AnimElem = 10
trigger11 = AnimElem = 11
trigger12 = AnimElem = 12
trigger13 = AnimElem = 13
trigger14 = AnimElem = 14
trigger15 = AnimElem = 15
trigger16 = AnimElem = 16
x = 8

[State 3050, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
trigger3 = AnimElem = 7
trigger4 = AnimElem = 9
trigger5 = AnimElem = 11
trigger6 = AnimElem = 13
trigger7 = AnimElem = 15
trigger8 = AnimElem = 17
value = S5,5
volume = 0

[State 3050, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
trigger3 = AnimElem = 7
trigger4 = AnimElem = 9
trigger5 = AnimElem = 11
trigger6 = AnimElem = 13
trigger7 = AnimElem = 15
trigger8 = AnimElem = 17
value = -15
ID = 3050
kill = 0

[State 3660, Hit Sparks]
type = Explod
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
trigger3 = AnimElem = 7
trigger4 = AnimElem = 9
trigger5 = AnimElem = 11
trigger6 = AnimElem = 13
trigger7 = AnimElem = 15
trigger8 = AnimElem = 17
anim = 7930+random%8
ID = 4122
pos = 2,-31
postype = p2
facing = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = 1,1
ontop = 1
ownpal = 1
removeongethit = 1

[State 3660, Add to the Combo]
type = HitAdd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
trigger3 = AnimElem = 7
trigger4 = AnimElem = 9
trigger5 = AnimElem = 11
trigger6 = AnimElem = 13
trigger7 = AnimElem = 15
trigger8 = AnimElem = 17
value = 1

[State 3050, TargetState]
type = TargetState
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
trigger3 = AnimElem = 7
trigger4 = AnimElem = 9
trigger5 = AnimElem = 11
trigger6 = AnimElem = 13
trigger7 = AnimElem = 15
value = 6930
ID = 3050

[State 0, EnvShake]
type = EnvShake
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
trigger3 = AnimElem = 7
trigger4 = AnimElem = 9
trigger5 = AnimElem = 11
trigger6 = AnimElem = 13
trigger7 = AnimElem = 15
trigger8 = AnimElem = 17
time = 5+((AnimElem=17)*9)
freq = 136+((AnimElem=17)*65)
ampl = -4
phase = 56

[State 3050, TargetState]
type = TargetState
trigger1 = AnimElem = 17
value = 6931
ID = 3050

[State 0, TargetVelSet]
type = TargetVelSet
trigger1 = animelemtime(17) = 0
x = -14
ID = 3050

[State 3050, Target Bind]
type = TargetBind
triggerall = numtarget
trigger1 = animelemtime(17) < 0
pos = 30, 0
ignorehitpause = 1

[State 3050, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1

[State 3050, 5] ;Now you've done it!
type = ChangeState
trigger1 = AnimTime = 0
value = 31052
ctrl = 0

[Statedef 32050]
type    = S
movetype= A
physics = S
juggle  = 8
velset = 0,0
anim = 3050
ctrl = 0
sprpriority = 2

[State 3050, Super D]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3050, PositionAdd]
type = PosAdd
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
trigger4 = AnimElem = 4
trigger5 = AnimElem = 5
trigger6 = AnimElem = 6
trigger7 = AnimElem = 7
trigger8 = AnimElem = 8
trigger9 = AnimElem = 9
trigger10 = AnimElem = 10
trigger11 = AnimElem = 11
trigger12 = AnimElem = 12
trigger13 = AnimElem = 13
trigger14 = AnimElem = 14
trigger15 = AnimElem = 15
trigger16 = AnimElem = 16
x = 8

[State 3050, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
trigger3 = AnimElem = 7
trigger4 = AnimElem = 9
trigger5 = AnimElem = 11
trigger6 = AnimElem = 13
trigger7 = AnimElem = 15
value = S5,5
volume = 0

[State 3050, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 17
value = S2435,3
volume = 0

[State 3050, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
trigger3 = AnimElem = 7
trigger4 = AnimElem = 9
trigger5 = AnimElem = 11
trigger6 = AnimElem = 13
trigger7 = AnimElem = 15
trigger8 = AnimElem = 17
value = -15
ID = 3050
kill = 0

[State 3660, Hit Sparks]
type = Explod
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
trigger3 = AnimElem = 7
trigger4 = AnimElem = 9
trigger5 = AnimElem = 11
trigger6 = AnimElem = 13
trigger7 = AnimElem = 15
trigger8 = AnimElem = 17
anim = 7930+random%8
ID = 4122
pos = 2,-31
postype = p2
facing = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = 1,1
ontop = 1
ownpal = 1
removeongethit = 1

[State 3660, Add to the Combo]
type = HitAdd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
trigger3 = AnimElem = 7
trigger4 = AnimElem = 9
trigger5 = AnimElem = 11
trigger6 = AnimElem = 13
trigger7 = AnimElem = 15
trigger8 = AnimElem = 17
value = 1

[State 3050, TargetState]
type = TargetState
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
trigger3 = AnimElem = 7
trigger4 = AnimElem = 9
trigger5 = AnimElem = 11
trigger6 = AnimElem = 13
trigger7 = AnimElem = 15
value = 6930
ID = 3050

[State 0, EnvShake]
type = EnvShake
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
trigger3 = AnimElem = 7
trigger4 = AnimElem = 9
trigger5 = AnimElem = 11
trigger6 = AnimElem = 13
trigger7 = AnimElem = 15
trigger8 = AnimElem = 17
time = 5+((AnimElem=17)*9)
freq = 136+((AnimElem=17)*65)
ampl = -4
phase = 56

[State 3050, TargetState]
type = TargetState
trigger1 = AnimElem = 17
value = 6931
ID = 3050

[State 0, TargetVelSet]
type = TargetVelSet
trigger1 = animelemtime(17) = 0
x = -17
ID = 3050

[State 3050, Target Bind]
type = TargetBind
triggerall = numtarget
trigger1 = animelemtime(17) < 0
pos = 30, 0
ignorehitpause = 1

[State 3050, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1

[State 3050, 5] ;Now you've REALLY done it!
type = ChangeState
trigger1 = AnimTime = 0
value = 32052
ctrl = 0

;Kick Smash - Super Newspaper Finish
[Statedef 32052]
type    = S
movetype= A
physics = S
anim = 32052
ctrl = 0
sprpriority = 2

[State 0, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 17

[State 3050, Super B]
type = AfterImage
trigger1 = Time = 0
time = 2
paladd = 10,10,66

[State 3050, Super C]
type = AfterImageTime
trigger1 = 1
time = 2

[State 3051, HitAdd]
type = HitAdd
trigger1 = AnimElem = 6
value = 1

[State 3050, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 6
value = S5,9

[State 3050, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 6
value = -235
ID = 3050
kill = 1

[State 3050, TargetState]
type = TargetState
trigger1 = AnimElem = 6
value = 4850
ID = 3050

[State 3660, Hit Sparks]
type = Explod
trigger1 = AnimElem = 6
anim = 2005
ID = 4122
pos = 2,-31
postype = p2
facing = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = 1,1
ontop = 1
ownpal = 1
removeongethit = 1

[State 3050, EnvShake]
type = EnvShake
trigger1 = AnimElem = 6
time = 45
freq = 267
ampl = -5
phase = 56

[State 3051, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3052, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 52
ctrl = 0

;Kick Smash - Power Slash
[Statedef 31052]
type    = S
movetype= A
physics = N
anim = 1600
ctrl = 0
velset = 11,0
sprpriority = 2

[State 3050, Super B]
type = AfterImage
trigger1 = AnimElem = 2
time = 2
paladd = 10,10,66

[State 3050, Super C]
type = AfterImageTime
trigger1 = AnimElemTime(2) >= 0
time = 2

[State 0, VelMul]
type = VelMul
trigger1 = 1
x = 0.89

[State 3051, HitAdd]
type = HitAdd
trigger1 = AnimElem = 5
value = 1

[State 0, TargetVelSet]
type = TargetVelSet
trigger1 = animelemtime(5) = 0
x = 0
ID = 3050

[State 3050, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = S5,0

[State 3050, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 5
value = -49
ID = 3050
kill = 0

[State 3050, TargetState]
type = TargetState
trigger1 = AnimElem = 5
value = 6935
ID = 3050

[State 3050, TargetState]
type = TargetState
trigger1 = AnimTime = 0
value = 6931
ID = 3050

[State 3660, Hit Sparks]
type = Explod
trigger1 = AnimElem = 5
anim = 7930+random%8
ID = 4122
pos = 2,-50
postype = p2
facing = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = 1,1
ontop = 1
ownpal = 1
removeongethit = 1

[State 3050, EnvShake]
type = EnvShake
trigger1 = AnimElem = 5
time = 23
freq = 200
ampl = -5
phase = 56

[State 3051, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3053, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3052, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 31051
ctrl = 0

;Kick Smash - Scythe Finish
[Statedef 31051]
type    = S
movetype= A
physics = S
anim = 502
ctrl = 0
sprpriority = 2

[State 3050, Super B]
type = AfterImage
trigger1 = AnimElem = 2
time = 2
paladd = 10,10,66

[State 3050, Super C]
type = AfterImageTime
trigger1 = AnimElemTime(2) >= 0
time = 2

[State 3051, HitAdd]
type = HitAdd
trigger1 = AnimElem = 5
value = 1

[State 3050, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = S5,7

[State 3050, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 5
value = -95
ID = 3050
kill = 1

[State 3050, TargetState]
type = TargetState
trigger1 = AnimElem = 5
value = 4850
ID = 3050

[State 3660, Hit Sparks]
type = Explod
trigger1 = AnimElem = 5
anim = 7930+random%8
ID = 4122
pos = 2,-31
postype = p2
facing = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = 1,1
ontop = 1
ownpal = 1
removeongethit = 1

[State 3050, EnvShake]
type = EnvShake
trigger1 = AnimElem = 5
time = 23
freq = 200
ampl = -5
phase = 56

[State 3051, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3052, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 52
ctrl = 0

;Kick Smash - Power Slash
[Statedef 3053]
type    = S
movetype= A
physics = S
anim = 3053
ctrl = 0
sprpriority = 2

[State 3051, HitAdd]
type = HitAdd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 11
value = 1

[State -2, Score] ;HAS MY OWN TWEAKS
type = Varadd
triggerall=NumHelper(80000)
triggerall = helper(80000),stateno=80000 && (helper(80000),var(0)!=[1,119])
trigger1 = AnimElem = 4
trigger2 = AnimElem = 11
var(34) = 1
ignorehitpause = 1

[State -2, Score] ;HAS MY OWN TWEAKS
type = Varadd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 11
var(48) = 1
ignorehitpause = 1

[State 3050, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = S5,0

[State 3050, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 11
value = S5,6

[State 3050, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 4
value = -18
ID = 3050
kill = 0

[State 3050, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 11
value = -22
ID = 3050
kill = 0

[State 3050, TargetState]
type = TargetState
trigger1 = AnimElem = 4
trigger2 = AnimElem = 11
value = 6930+(AnimElem=11)
ID = 3050

[State 3050, TargetState]
type = TargetState
trigger1 = AnimTime = 0
value = 6931
ID = 3050

[State 3660, Hit Sparks]
type = Explod
trigger1 = AnimElem = 4
anim = 7930+random%8
ID = 4122
pos = 2,-50
postype = p2
facing = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = 1,1
ontop = 1
ownpal = 1
removeongethit = 1

[State 3660, Hit Sparks]
type = Explod
trigger1 = AnimElem = 11
anim = 7930+random%8
ID = 4122
pos = 2,-45
postype = p2
facing = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = 1,1
ontop = 1
ownpal = 1
removeongethit = 1

[State 3050, EnvShake]
type = EnvShake
trigger1 = AnimElem = 4
trigger2 = AnimElem = 11
time = 23
freq = 200
ampl = -5
phase = 56

[State 3051, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3050, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 3052, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 3051
ctrl = 0

;Kick Smash - Final Kick
[Statedef 3051]
type    = S
movetype= A
physics = S
anim = 3051
ctrl = 0
sprpriority = 2

[State 3051, HitAdd]
type = HitAdd
trigger1 = AnimElem = 1
value = 1

[State -2, Score] ;HAS MY OWN TWEAKS
type = Varadd
triggerall=NumHelper(80000)
trigger1 = helper(80000),stateno=80000 && (helper(80000),var(0)!=[1,119])
trigger1 = AnimElem = 1
var(34) = 1
ignorehitpause = 1

[State -2, Score] ;HAS MY OWN TWEAKS
type = Varadd
trigger1 = AnimElem = 1
var(48) = 1
ignorehitpause = 1

[State 3050, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S5,9

[State 3050, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 1
value = -25
ID = 3050
kill = 1

[State 3050, TargetState]
type = TargetState
trigger1 = AnimElem = 1
value = 3054
ID = 3050

[State 3660, Hit Sparks]
type = Explod
trigger1 = AnimElem = 1
anim = 7930+random%8
ID = 4122
pos = 2,-31
postype = p2
facing = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = 1,1
ontop = 1
ownpal = 1
removeongethit = 1

[State 3050, EnvShake]
type = EnvShake
trigger1 = AnimElem = 1
time = 23
freq = 200
ampl = -5
phase = 56

[State 3051, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3050, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 3052, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 3054]
type    = A
movetype= H
physics = N
ctrl = 0
velset = -1,-13
sprpriority = 2

[State 3054, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.4

[State 3054, ChangeAnim]
type = ChangeAnim2
trigger1 = Time = 0
value = 3054

[State 3054, ChangeAnim]
type = ChangeAnim2
trigger1 = (Vel Y > -2) && Anim = 3054
value = 821

[State 3054, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3054, ChangeState]
type = SelfState
trigger1 = Pos Y > 10 && Vel Y > 0
value = 5100
ctrl = 0


;---------------------------------------------------------------------------
;Super arranged from Iori Yagami
;Attempt
[Statedef 3060]
type    = S
movetype= A
physics = N
juggle  = 8
velset = 0,0
anim = 2501
ctrl = 0
sprpriority = 2

;Super Cancel If Cancelled from: Any of the Two Hits of the 2-Hit Combo.
;                                From (Ground) Scythe.
[State 3060, Super]
type = Helper
trigger1 = Time = 0
trigger1 = PrevStateNo = 1600 || PrevStateNo = 1601 || PrevStateNo = 500
persistent = 0
id = 30005
name = "Super Cancel Helper"
pos = 0,-48
postype = P1
stateno = 2310
helpertype = normal
supermove = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 3060, Level 1]
type = VarSet
trigger1 = time = 0
var(10) = 5

[State 3060, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Super"
ID = 7500
stateno = 7500
pos = 0,-55
postype = p1
ownpal = 1
supermovetime = 9999
persistent = 0

[State 3060, Super A]
type = SuperPause
trigger1 = Time = 0
time = 45
anim = -1
sound = s7,0
poweradd = -1000
darken = 0
p2defmul = 1

[State 3060, Super B]
type = AfterImage
trigger1 = AnimElem = 2
time = 2

[State 3060, Super C]
type = AfterImageTime
trigger1 = AnimElemTime(2) >= 0
time = 2

[State 3060, Super D]
type = NotHitBy
trigger1 = AnimElem = 2
value = , NA, SA, AT
time = 6

[State 3060, Hit]
type = Hitdef
trigger1 = Time = 0
attr = S, HA
hitflag = MAF
guardflag = HA
damage = 25,2
pausetime = 45, 15
guard.pausetime = 8,8
animtype = Up
priority = 6, Hit
sparkno = S7930+random%8
guard.sparkno = S7911
hitsound = S5, 2
guardsound = S6, 0
sparkxy = -5, -30
ground.hittime = 25
ground.slidetime = 0
ground.velocity = 0, -5
air.velocity = 0, -5
p2facing = -1
yaccel = .2
fall = 1
fall.recover = 0
snap = 40, -14
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 0,0

[State 3060, Success]
type = ChangeState
trigger1 = AnimTime = 0 && MoveHit
value = 3061
ctrl = 0

[State 3060, Otherwise]
type = ChangeState
trigger1 = AnimTime = 0 && !MoveHit
value = 52
ctrl = 0

;---------------------------------------------------------------------------
;Super arranged from Iori Yagami
;Move
[Statedef 3061]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
anim = 3060
ctrl = 0
sprpriority = 2

[State 3061, Still Level 1]
type = VarSet
trigger1 = time = 0
var(10) = 5

[State 3061, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Super"
ID = 7500
stateno = 7500
pos = 0,-55
postype = p1
ownpal = 1
supermovetime = 9999
persistent = 0

[State 3061, Super A]
type = SuperPause
trigger1 = Time = 0
time = 45
anim = -1
sound = s7,0
poweradd = -1000
darken = 0
unhittable = 1
p2defmul = 1

[State 3061, Super B]
type = AfterImage
trigger1 = AnimElem = 2
time = 2

[State 3061, Super C]
type = AfterImageTime
trigger1 = AnimElemTime(2) >= 0
time = 2

[State 3061, Hit 1]
type = Hitdef
trigger1 = AnimElem = 3
attr = S, HA
hitflag = MAF+
guardflag = HA
damage = 25
pausetime = 8, 16
guard.pausetime = 8,8
priority = 6, Hit
sparkno = S7930+random%8
guard.sparkno = S7911
hitsound = S5, 7
guardsound = S6, 0
sparkxy = -5, -50
ground.hittime = 25
ground.slidetime = 0
ground.velocity = 0, -5.1
air.velocity = 0, -5.1
p2facing = -1
yaccel = .1
fall = 1
fall.recover = 0
snap = 40, 8
animtype = Up
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
kill = 0
getpower = 0,0

[State 3061, Hit 2]
type = Hitdef
trigger1 = AnimElem = 4
attr = S, HA
hitflag = MAF+
guardflag = HA
damage = 100
pausetime = 25, 16
guard.pausetime = 8,8
priority = 6, Hit
sparkno = S7930+random%8
guard.sparkno = S7911
hitsound = S5, 7
guardsound = S6, 0
sparkxy = -5, -50
ground.hittime = 25
ground.slidetime = 0
ground.velocity = 0, -7
air.velocity = 0, -7
p2facing = -1
yaccel = .25
animtype = Up
fall = 1
snap = 40, 8
fall.recover = 0
kill = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 0,0

[State 3061, Hit 3]
type = Hitdef
trigger1 = AnimElem = 10
attr = S, HA
hitflag = MAF+
guardflag = HA
damage = 25
pausetime = 8, 16
guard.pausetime = 8,8
priority = 6, Hit
animtype = Up
sparkno = S7930+random%8
guard.sparkno = S7911
hitsound = S5, 7
guardsound = S6, 0
sparkxy = -5, -50
ground.hittime = 25
ground.slidetime = 0
ground.velocity = 0, -5
air.velocity = 0, -5
p2facing = -1
yaccel = .1
fall = 1
kill = 0
fall.recover = 0
snap = 40, 12
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 0,0

[State 3061, Hit 4]
type = Hitdef
trigger1 = AnimElem = 11
attr = S, HA
hitflag = MAF+
guardflag = HA
damage = 40
pausetime = 25, 16
guard.pausetime = 8,8
priority = 6, Hit
sparkno = S7930+random%8
guard.sparkno = S7911
hitsound = S5, 7
guardsound = S6, 0
sparkxy = -5, -50
ground.hittime = 25
ground.slidetime = 0
ground.velocity = 0, -25
air.velocity = 0, -25
animtype = Up
p2facing = -1
yaccel = .4
fall = 1
fall.damage = 10
fall.recover = 0
fall.envshake.time = 25
fall.envshake.freq = 200
fall.envshake.ampl = 5
fall.envshake.phase = 142
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 0,0

[State 3061, Thunder]
type = PlaySnd
trigger1 = AnimElem = 19
value = S500,5

[State 3061, LOL]
type = PlaySnd
trigger1 = AnimElem = 20
value = S9021,0

[State 3061, LOL]
type = Nothitby
trigger1 = AnimElemTime(21) >= 0
value = SCA

[State 3061, LOL]
type = AssertSpecial
trigger1 = AnimElemTime(21) >= 0
flag = NoWalk
flag2 = nostandguard
flag3 = timerfreeze

[State 3061, FX]
type = Helper
trigger1 = AnimElem = 40 || AnimElem = 43
helpertype = normal
name = "M.Bison: Turn To Dust!"
ID = 3062
stateno = 3062
pos = 0,0
facing = 1
keyctrl = 0
ownpal = 0
size.xscale = .5
size.yscale = .5

[State 3061, FX]
type = Helper
trigger1 = AnimElem = 41 || AnimElem = 45 || AnimElem = 51
helpertype = normal
name = "M.Bison: Turn To Dust!"
ID = 3062
stateno = 3062
pos = 6,0
facing = 1
keyctrl = 0
ownpal = 0
size.xscale = .5
size.yscale = .5

[State 3061, FX]
type = Helper
trigger1 = AnimElem = 42 || AnimElem = 46
helpertype = normal
name = "M.Bison: Turn To Dust!"
ID = 3062
stateno = 3062
pos = -15,0
facing = 1
keyctrl = 0
ownpal = 0
size.xscale = .5
size.yscale = .5

[State 3061, FX]
type = Helper
trigger1 = AnimElem = 44 || AnimElem = 48
helpertype = normal
name = "M.Bison: Turn To Dust!"
ID = 3062
stateno = 3062
pos = 16,0
facing = 1
keyctrl = 0
ownpal = 0
size.xscale = .5
size.yscale = .5

[State 3061, FX]
type = Helper
trigger1 = AnimElem = 47 || AnimElem = 50
helpertype = normal
name = "M.Bison: Turn To Dust!"
ID = 3062
stateno = 3062
pos = 3,0
facing = 1
keyctrl = 0
ownpal = 0
size.xscale = .5
size.yscale = .5

[State 3061, FX]
type = Helper
trigger1 = AnimElem = 49
helpertype = normal
name = "M.Bison: Turn To Dust!"
ID = 3062
stateno = 3062
pos = -7,0
facing = 1
keyctrl = 0
ownpal = 0
size.xscale = .5
size.yscale = .5

[State 3061, Ray]
type = Explod
trigger1 = AnimElem = 19
anim = 3061
ID = 3061
pos = 0,-240
facing = 1
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 3061, Spark]
type = Explod
trigger1 = AnimElem = 20
anim = 7930+random%8
ID = 7930
pos = 0,-30
facing = 1
bindtime = -1
removetime = -2
scale = 1,1
ontop = 1
ownpal = 1
removeongethit = 0

[State 3061, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 52
ctrl = 0

;---------------------------------------------------------------------------
; Hyper Kick Run!!!
; CNS difficulty: medium
; This is really an Hyper Move, requires 3000 power out of the 4000 units
; that daniel can have!!! He rushes for 2 seconds!!!!

[Statedef 4322]
type    = S
movetype = A
physics = N
juggle  = 8
velset = 0,0
anim = 4322
ctrl = 0
sprpriority = 2

;Super Cancel If Cancelled from: Any of the Two Hits of the 2-Hit Combo.
;                                From (Ground) Scythe.
[State 4322, Super]
type = Helper
trigger1 = Time = 0
trigger1 = PrevStateNo = 1600 || PrevStateNo = 1601 || PrevStateNo = 500
persistent = 0
id = 30005
name = "Super Cancel Helper"
pos = 0,-48
postype = P1
stateno = 2310
helpertype = normal
supermove = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 3050, Level 3]
type = VarSet
trigger1 = time = 0
var(10) = 7

[State 4322, Width]
type = Width
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(16) < 0
value = 5,0

[State 3050, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Super"
ID = 7500
stateno = 7500
pos = 0,-55
postype = p1
ownpal = 1
supermovetime = 9999
persistent = 0

[State 4322, Super A]
type = SuperPause
trigger1 = Time = 0
time = 45
darken = 0
anim = -1
sound = s7, 0
poweradd = -3000
p2defmul = 1

[State 4322, Super B]
type = AfterImage
trigger1 = AnimElem = 2
time = 2

[State 4322, Super C]
type = AfterImageTime
trigger1 = AnimElemTime(2) >= 0
time = 2

;[State 4322, Super D]
;type = NotHitBy
;trigger1 = 1
;value = , NA, SA, AT
;time = 6

[State 4322, VelSet]
type = VelSet;PosAdd
trigger1 = 1
x = 4

[State 4322, TargetBind]
type = TargetBind
trigger1 = numtarget(4322)
trigger1 = !MoveGuarded
id = 4322
pos = 34,0
ignorehitpause = 1

[State 4322, Hit]
type = HitDef
trigger1 = AnimElem = 2 || AnimElem = 4
attr = S, HA
animtype  = Hard
damage    = 9,ifelse(UniqHitCount >= 19,1,0)
getpower  = 0,0
ID = 4322
priority  = 4
guardflag = MA
pausetime = 0,5
guard.pausetime = 0,0
sparkno = s7930+random%8
guard.sparkno = s7911
sparkxy = 0,-50
hitsound = s5,2;s1337, 8
guardsound = s6, 0
ground.type = Low
ground.slidetime = 30
ground.hittime  = 30
ground.velocity = -6, -2
guard.velocity = -12
air.velocity = -6,-2
airguard.velocity = -3,-2
fall.animtype = Hard
fall = 1
fall.recover = 0

[State 4322, Jump away then]
type = ChangeState
trigger1 = Time = 120
value = 4895
ctrl = 0

;---------------------------------------------------------------------------
; Hyper Finger Slap!!!
; CNS difficulty: medium
; THIS SICK MOVE makes EVERYONE (including your teammate) to surrender 300
; blockable (2 dmg then!!!) Health Points, JUST BY SLAPPING DANIEL's Finger!!!
; This uses 4000 power!!!! Everyone Standing Get hit!

[Statedef 3058]
type    = S
movetype = A
physics = S
juggle  = 8
velset = 0,0
anim = 3058
ctrl = 0
sprpriority = 2

[State 3058, Width]
type = Width
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(16) < 0
value = 5,0

;THIS MOVE MUST HIT ITS PROGRAMMED VALUE ONLY!!!!
;[State 3058, ApplySameDmg]
;type = AttackMulSet
;trigger1 = 1
;value = 1

;Generated by Fighter Factory PalFX Editor
[State 3050, PalFXWiz]
type = BGPalFX
trigger1 = Time = 0
time = 225
add = 7,-200,-200
mul = 256,256,256
sinadd = 30,30,0,18
invertall = 1
color = 0

;Generated by Fighter Factory PalFX Editor
[State 3050, PalFXWiz]
type = AllPalFX
trigger1 = Time = 154
time = 60
add = 7,-200,-200
mul = 256,256,256
sinadd = 30,30,0,10
invertall = 1
color = 0

[State 3050, Level 4]
type = VarSet
trigger1 = time = 0
var(10) = 7

[State 3050, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Super"
ID = 7500
stateno = 7500
pos = 0,-55
postype = p1
ownpal = 1
supermovetime = 9999
persistent = 0

[State 3058, Super A]
type = SuperPause
trigger1 = Time = 0
time = 45
anim = -1
darken = 0
sound = s7, 0
poweradd = -4000
p2defmul = 1

[State 3058, Super B]
type = AfterImage
trigger1 = AnimElem = 2
time = 2

[State 3058, Super C]
type = AfterImageTime
trigger1 = AnimElemTime(2) >= 0
time = 2

;[State 3058, Super D]
;type = NotHitBy
;trigger1 = 1
;value = , NA, SA, AT
;time = 6

;PLAY THE SOUND AT THREE DIFF PITCHES!!!
[State 3058, SuperSlap]
type = PlaySnd
trigger1 = Time = 154
value = 2000, 1

[State 3058, SuperSlap]
type = PlaySnd
trigger1 = Time = 154
value = 2000, 2

[State 3058, SuperSlap]
type = PlaySnd
trigger1 = Time = 154
value = 2000, 3

[State 3058, Hit]
type = HitDef
trigger1 = AnimElemTime(16) = 10 ; The Move was Unguardable if = 0
attr = S, HA
affectteam = B
animtype  = Up
damage    = 300,2 ;YOU OBVIOUSLY DON'T WANT TO MISS THIS MOVE!!
getpower  = 0,0
priority  = 5
guardflag = MA
pausetime = 32,32
guard.pausetime = 32,2
sparkno = s7900+random%8
guard.sparkno = s7911
sparkxy = 0,-50
hitsound = s5, 9
guardsound = s6, 0
ground.type = Trip
ground.slidetime = 30
guard.dist = 999
ground.hittime  = 30
ground.velocity = -25, -25
guard.velocity = 12
air.velocity = -25,-25
airguard.velocity = -10,-2
fall.animtype = Hard
fall = 1
fall.recover = 0

[State 3058, 5] ;Now you've done it!
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;New Angry Daniel

[Statedef 4000]
type    = S
movetype = A
physics = N
juggle  = 8
velset = 0, 0
anim = 4000
ctrl = 0
sprpriority = 2

;Super Cancel If Cancelled from: Any of the Two Hits of the 2-Hit Combo.
;                                From (Ground) Scythe.
[State 4000, Super]
type = Helper
trigger1 = Time = 0
trigger1 = PrevStateNo = 1600 || PrevStateNo = 1601 || PrevStateNo = 500
persistent = 0
id = 30005
name = "Super Cancel Helper"
pos = 0,-48
postype = P1
stateno = 2310
helpertype = normal
supermove = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 4000, NotHitBy]
type = NotHitBy
trigger1 = Time = 0
value = ,NA,SA,NP,SP,NT,ST
time = 10


;Dream Cancel If Cancelled from: Kick Smash.
;                                Punch Smash.
[State 3000, Super]
type = Helper
trigger1 = Time = 0
trigger1 = PrevStateNo = 3000 || PrevStateNo = 3050
persistent = 0
id = 30005
name = "DREAM Cancel Helper"
pos = 0,-48
postype = P1
stateno = 2320
helpertype = normal
supermove = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 3000, Damn Yer Dhreahm Canzer Herpez]
type = TargetState
triggerall = Numtarget
trigger1 = Time = 0
trigger1 = Target,stateno != [120,160]
trigger1 = PrevStateNo = 3000 || PrevStateNo = 3050
value = 35300

[State 4000, 20 pixels/sec]
type = VelSet
trigger1 = Time = 1
x = 20*(1+0.35*var(27));Double if in Explosion Moment
y = 0

[State 4000, VelMul]
type = VelMul
trigger1 = 1
x = 0.9105

[State 4000, Gruñe!!!]
type = PlaySnd
triggerall = !var(38)
trigger1 = Time = 0
value = S36500, 3
channel = 1

[State 4000, Level 3/4]
type = VarSet
trigger1 = time = 0
var(10) = 6

[State 4000, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Super"
ID = 7500
stateno = 7500
pos = 0,-55
postype = p1
ownpal = 1
supermovetime = 9999
persistent = 0

[State 4000, Super Pause]
type = SuperPause
trigger1 = Time = 0
time = 45
anim = -1
sound = s7,0
poweradd = -2000
darken = 0
p2defmul = 1

[State 4000, Funky After Images]
type = AfterImage
trigger1 = Time = 0
time = 2
length = 7
paladd = 200,0,0
timegap = 2
framegap = 3
trans = add

[State 4000, AfterImages]
type = AfterImageTime
trigger1 = Time
time = 2

[State 4000, Hit]
type = HitDef
trigger1 = Time = 1
attr = S,HA
hitflag = MAF
guardflag = H
getpower = 0,0
ID = 4000
animtype = DiagUp
priority = 6,Hit
damage = ifelse(var(27),60,285),2+(20*var(27))
pausetime = ifelse(var(27),0,30),10
guard.pausetime = 3, 20
sparkno = s2005+random%4
guard.sparkno = s7911
sparkxy = 10,-48
hitsound = s5,9
guardsound = s5,12
ground.type = High
ground.slidetime = 25
ground.hittime = 99
ground.velocity = -0.5,-10.2
air.hittime = 20
yaccel = ifelse(var(27),.3,.42)
air.velocity = -0.5,-10.01
p2facing = 1
fall = 1
fall.yvelocity = -5
fall.recover = 0
fall.recovertime = 4
fall.damage = 0;20
down.bounce = 1
kill = ifelse(var(27),0,1)
guard.kill = ifelse(var(27),0,1)
fall.kill = 1
numhits = 1
envshake.time = 25
envshake.freq = 100
envshake.ampl = 4
fall.envshake.time = 25
fall.envshake.freq = 100
fall.envshake.ampl = 4
mindist = 0, -60
maxdist = 72, 0

[State 4000, Guard Stagger]
type = TargetState
triggerall = NumTarget
trigger1 = MoveGuarded = 1
trigger1 = (target, statetype = S) || (target, statetype = C)
trigger1 = target, stateno = [120,160]
value = 5301
ignorehitpause = 1
persistent = 0

[State 4000, That's Opinion, Not News!!]
type = PlaySnd
triggerall = !var(38)
trigger1 = MoveHit && Time = 10
value = S36500, 2
channel = 2

[State 4000, Not Hit]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;--- Part 2 ---

[Statedef 4001]
type    = A
movetype = A
physics = N
juggle  = 8
velset = 0, -15
anim = 4001
ctrl = 0
sprpriority = 2

[State 4001, Stop]
type = VelSet
trigger1 = AnimElem = 2
x = 0
y = 0

[State 4001, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(2) < 0 || Time > 53
y = .45

[State 4001, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 4001, Funky After Images]
type = AfterImage
trigger1 = Time = 0
time = 2
length = 7
paladd = 200,0,0
timegap = 2
framegap = 3
trans = add

[State 4001, AfterImages]
type = AfterImageTime
trigger1 = Time
time = 2

[State 4001, HitA]
type = HitDef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 7
attr = A,HA
hitflag = MAF
guardflag = HA
getpower = 0,0
animtype = Up
priority = 5,Hit
damage = 45,1
pausetime = 25,10
guard.pausetime = 3, 20
sparkno = s7930+random%8
guard.sparkno = s7911
sparkxy = 10,-48
hitsound = s5,9
guardsound = s6,0
ground.type = High
ground.slidetime = 25
ground.hittime = 99
ground.velocity = -0.5,-5
air.hittime = 20
yaccel = .25
air.velocity = -0.5,-5
p2facing = 1
fall = 1
fall.yvelocity = -5
fall.recover = 0
fall.recovertime = 4
fall.damage = 20
down.bounce = 1
kill = 0
guard.kill = 0
fall.kill = 1
numhits = 1
envshake.time = 26
envshake.freq = 132
envshake.ampl = -6
fall.envshake.time = 25
fall.envshake.freq = 100
fall.envshake.ampl = 4
mindist = 0, -60
maxdist = 72, 0

[State 4001, HitB]
type = HitDef
trigger1 = AnimElem = 11
attr = A,HA
hitflag = MAF
guardflag = HA
getpower = 0,0
animtype = DiagUp
priority = 7,Hit
damage = 135,5
pausetime = 30,30
guard.pausetime = 30, 30
sparkno = s2000+random%4
guard.sparkno = s7911
sparkxy = 10,-48
hitsound = s5,9
guardsound = s6,0
ground.type = High
ground.slidetime = 25
ground.hittime = 99
ground.velocity = -0.5,10.2
air.hittime = 20
yaccel = 2
air.velocity = -0.5,10.2
p2facing = 1
fall = 1
fall.yvelocity = -5
fall.recover = 0
fall.recovertime = 4
fall.damage = 20
down.bounce = 1
kill = 1
guard.kill = 1
fall.kill = 1
numhits = 1
envshake.time = 25
envshake.freq = 100
envshake.ampl = 4
fall.envshake.time = 25
fall.envshake.freq = 100
fall.envshake.ampl = 4
mindist = 0, -60
maxdist = 72, 0

[State 4001, Fall]
type = ChangeState
trigger1 = Pos Y >= 12 && Vel Y > 0
value = 5050
ctrl = 0

;--- Part 2 EXPLOSION MOMENT! ---

[Statedef 4002]
type    = A
movetype = A
physics = N
juggle  = 8
velset = 0, -15
anim = 4002
ctrl = 0
sprpriority = 2

[State 4002, Stop]
type = VelSet
trigger1 = AnimElem = 2 && Time < 20
x = 0
y = 0

[State 4002, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(2) < 0
y = .45

[State 4002, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 4002, HitA]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
trigger3 = AnimElem = 4
attr = A,HA ;A, OA (Aereal, OWN3R ATTACK! XD)
hitflag = MAF
guardflag = HA
getpower = 0,0
animtype = Up
priority = 1,Hit ;has infinite priority afterall...
chainid = 4000
damage = 5-(time>=130)
pausetime = 0,5
guard.pausetime = 0, 0
sparkno = s7930+random%8
guard.sparkno = s7911
sparkxy = -10,-48
hitsound = s5,6
guardsound = s6,0
ground.type = High
ground.slidetime = 25
ground.hittime = 16
ground.velocity = 0,0
air.hittime = 20
yaccel = .25
air.velocity = 0,0
p2facing = 1
fall = 1
fall.yvelocity = -5
fall.recover = 0
fall.recovertime = 4
fall.damage = 20
down.bounce = 1
kill = 1
guard.kill = 1
fall.kill = 1
numhits = 1
ID = 4000
envshake.time = 26
envshake.freq = 132
envshake.ampl = -6
fall.envshake.time = 25
fall.envshake.freq = 100
fall.envshake.ampl = 4
mindist = 0, -60
maxdist = 72, 0

[State 4002, F*ck P2]
type = TargetState
trigger1 = time >= 193
trigger2 = WinKO
value = 4057
ID = 4000

[State 4002, Fall]
type = ChangeState
trigger1 = Time >= 193
trigger2 = WinKO
value = 4895
ctrl = 0

;---------------------------------------------------------------------------
; Counter Attack High Level
; CNS difficulty: medium
; THIS SUPER HYPER makes you to regain HP for a maximum of 420 or so

[Statedef 3076]
type    = S
movetype = I
physics = S
velset = 0,0
anim = 3076
ctrl = 0
sprpriority = 2

[State 3076, Width]
type = Width
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(16) < 0
value = 5,0

[State 3076, Hyper Portrait]
type = explod
trigger1 = time = 1
anim = 6000
postype = back
ontop = 1
supermovetime = -1
removetime = 60
pos = 0,0
bindtime = -1
removeongethit = 1

;THIS MOVE MUST HIT ITS PROGRAMMED VALUE ONLY!!!!
[State 3076, ApplySameDmg]
type = AttackMulSet
trigger1 = 1
value = 1

[State 3076, Super A]
type = SuperPause
trigger1 = Time = 1
time = 60
pos = 0, -55
anim = s8000
sound = s2000, 0
poweradd = -3000
p2defmul = 1

[State 3076, Super B]
type = AfterImage
trigger1 = AnimElem = 2
time = 2

[State 3076, Super C]
type = AfterImageTime
trigger1 = AnimElemTime(2) >= 0
time = 2

[State 3076, Super D]
type = NotHitBy
trigger1 = 1
value = , NA, SA, AT
time = 2

[State 3076, 5] ;We set our variable to a number of 420 to make it last for
type = VarSet
trigger1 = 1
v = 4
value = 420

[State 3076, 6] ;Done showing!!!!
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;THE MEGA SHOWTING ATTACK
[Statedef 4205]
type    = S
movetype = A
physics = S
poweradd = -3000
anim = 4100
ctrl = 0

[State 4205, Level 3]
type = VarSet
trigger1 = time = 0
var(10) = 7

[State 3050, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Super"
ID = 7500
stateno = 7500
pos = 0,-55
postype = p1
ownpal = 1
supermovetime = 9999
persistent = 0

[State 4205, NOMOREMUSIC]
type = AssertSpecial
trigger1 = 1
flag = nomusic

;THIS MOVE MUST HIT ITS PROGRAMMED VALUE ONLY!!!!
[State 3058, ApplySameDmg]
type = AttackMulSet
trigger1 = 1
value = 1

;Generated by Fighter Factory PalFX Editor
[State 3050, PalFXWiz]
type = BGPalFX
trigger1 = Time = 1
time = 225
add = 7,-200,-200
mul = 256,256,256
sinadd = 30,30,0,18
invertall = 1
color = 0

[State 3058, Super B]
type = AfterImage
trigger1 = AnimElem = 2
time = 2

[State 3058, Super C]
type = AfterImageTime
trigger1 = AnimElemTime(2) >= 0
time = 2

[State 3058, Super D]
type = NotHitBy
trigger1 = 1
value = , NA, SA, AT
time = 6

[State 4205, CreateTheProj] ;Crea el maldito projectil de Daniel
type = Projectile
trigger1 = Time = 25
trigger2 = Time = 50
trigger3 = Time = 75
trigger4 = Time = 100
trigger5 = Time = 125
trigger6 = Time = 150
trigger7 = Time = 175
trigger8 = Time = 200
trigger9 = Time = 225
trigger10 = Time = 250
ProjID = 66655
projanim = 25555
projremove = 1
velocity = 12, 0
projsprpriority = 4
offset = 0, -75
attr = S, HP
velocity = 5, 0
animtype  = Hard
affectteam = B
damage    = 40, 2
guardflag = MA
pausetime = 12,12
sparkno = s7930+random%8
guard.sparkno = s7911
sparkxy = 40,0
envshake.time = 15
envshake.freq = 110
envshake.ampl = -10
hitsound = S20, 33
guardsound = S20, 33
ground.type = high
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -6
air.velocity = -2.2,-3.2 ;fucking projectile gravity!!!
getpower = 0,0

[State 4205, PlaySnd] ;TRÁGATELO!!!
type = PlaySnd
trigger1 = Time = 25
trigger2 = Time = 50
trigger3 = Time = 75
trigger4 = Time = 100
trigger5 = Time = 125
trigger6 = Time = 150
trigger7 = Time = 175
trigger8 = Time = 200
trigger9 = Time = 225
value = 36500, 3
channel = 1

[State 4205, PlaySnd] ;TRÁGATELO!!!
type = PlaySnd
trigger1 = Time = 250
value = 36500, 3
channel = 1
freqmul = 1.8

[State 4205, PlaySnd] ;TRÁGATELO!!!
type = PlaySnd
trigger1 = Time = 25
trigger2 = Time = 50
trigger3 = Time = 75
trigger4 = Time = 100
trigger5 = Time = 125
trigger6 = Time = 150
trigger7 = Time = 175
trigger8 = Time = 200
trigger9 = Time = 225
trigger10 = Time = 250
value = 2000, 1

[State 4205, 5]           ;Ya esta!!!
type = ChangeState
trigger1 = Time = 300
value = 0
ctrl = 1

;SINGLE SHOUT

[Statedef 1365]
type    = S
movetype = A
physics = S
poweradd = 42
anim = 4100
ctrl = 0

[State 1365, CreateTheFuckingProj] ;Crea el maldito projectil de Daniel
type = Projectile
trigger1 = Time = 15
ProjID = 66655
projanim = 25555
projremove = 1
velocity = 12, 0
projsprpriority = 4
offset = 0, -75
attr = S, SP
velocity = 4, 0
animtype  = Hard
;affectteam = B
damage    = 88, 1
guardflag = MA
pausetime = 15,12
sparkno = s7920+random%8
guard.sparkno = s7911
sparkxy = -5,-30
hitsound = S5, 9
guardsound = S20, 33
ground.type = high
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -7
getpower  = 0,0
air.velocity = -4,-5
envshake.time = 15
envshake.ampl = -8
envshake.freq = 100

[State 1365, PlaySnd]
type = PlaySnd
trigger1 = Time = 15
value = 36500, 3
channel = 1

[State 1365, PlaySnd]
type = PlaySnd
trigger1 = Time = 15
value = 2000, 1

[State 1352, 5]           ;Already done here
type = ChangeState
trigger1 = Time = 30
value = 5110
ctrl = 0

;---------------------------------------------------------------------------
;THE SHOWTING ATTACK LOW SQUARIBLAH
[Statedef 4206]
type    = S
movetype = A
physics = S
poweradd = -2000
anim = 4255
ctrl = 0

[State 4206, NOMOREMUSIC]
type = AssertSpecial
trigger1 = 1
flag = nomusic

;THIS MOVE MUST HIT ITS PROGRAMMED VALUE ONLY!!!!
[State 3058, ApplySameDmg]
type = AttackMulSet
trigger1 = 1
value = 1

;Generated by Fighter Factory PalFX Editor
[State 3050, PalFXWiz]
type = BGPalFX
trigger1 = Time = 0
time = 225
add = 7,-200,-200
mul = 256,256,256
sinadd = 30,30,0,18
invertall = 1
color = 0

[State 4206, PlaySnd] ;SQUARIBLAH MUSIC
type = PlaySnd
trigger1 = Time = 1
value = 96000, 0

[State 3050, AzuFightPortrait]
type = Explod
trigger1 = Time = 1
ID = 9901
anim = 9901
pos = 20, 0
postype = back
supermovetime = 255555555555
ontop = 1
bindtime = -1
removetime = -2
ignorehitpause = 1

[State 3058, Super B]
type = AfterImage
trigger1 = AnimElem = 2
time = 2

[State 3058, Super C]
type = AfterImageTime
trigger1 = AnimElemTime(2) >= 0
time = 2

[State 3058, Super D]
type = NotHitBy
trigger1 = 1
value = , ST, HT

[State 4206, CreateTheFuckingProj] ;Crea el maldito projectil de Daniel
type = Projectile
trigger1 = Time = 50
trigger2 = Time = 100
trigger3 = Time = 150
trigger4 = Time = 200
trigger5 = Time = 250
trigger6 = Time = 300
trigger7 = Time = 350
trigger8 = Time = 450
ProjID = 66655
projanim = 25555
projremove = 1
velocity = 6, 0
projsprpriority = 4
offset = 0, -75
attr = S, HP
velocity = 5, 0
animtype  = Light
affectteam = B
damage    = 38, 11
guardflag = MA
pausetime = 12,12
sparkno = s7930+random%8
guard.sparkno = s7911
sparkxy = 40,0
envshake.time = 10
getpower  = 0,0
envshake.freq = 110
envshake.ampl = -8
hitsound = S20, 33
guardsound = S20, 33
ground.type = high
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -6
air.velocity = -2.2,-3.2 ;fucking projectile gravity!!!

[State 4206, 5]           ;Ya esta!!!
type = ChangeState
trigger1 = Time = 495
value = 0
ctrl = 1

;----------------------------------------------------------------------
; ROAD ROLLER DA
; CNS Difficulty FOR ME: UFFF!!!
; This move is split into lots of states, first we switch off normal phisics
[Statedef 10250]
type    = A
movetype = I
physics = N
velset = 0,-19
anim = 10250
poweradd = -4000
ctrl = 0
sprpriority = 2

[State 3050, Helper]
type = Helper
trigger1 = time = 40
helpertype = normal
name = "Super"
ID = 7500
stateno = 7500
pos = 0,500
postype = p1
ownpal = 1
supermovetime = 9999
persistent = 0

[State 3050, VarSet]
type = VarSet
trigger1 = time = 0
var(10) = 7

[State 10250, SuperPause]
type = SuperPause
trigger1 = Time = 40
time = 80
anim = -1
sound = S7,0
darken = 0
unhittable = 1
p2defmul = 1

[State 10252, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 10250, EndThisstate]
type = ChangeState
trigger1 = Time = 60
value = 10251
ctrl = 0

;----------------------------------------------------------------------
; ROAD ROLLER DA
; CNS Difficulty FOR ME: UFFF!!!
; NOW YOU'RE FALLING WITH A TRUCK!!!
[Statedef 10251]
type    = A
movetype = A
physics = N
velset = 0, 20
anim = 10251
poweradd = -4000
ctrl = 0
sprpriority = 2

[State 10250, Explod]
type = Explod
trigger1 = Time = 1
anim = 13020
ID = 13020
pos = -30,380
postype = Back  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = 59
supermove = 9999999999
pausemove = 9999999999
scale = 1,1
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 10250, SuperPause]
type = SuperPause
trigger1 = Time = 0
anim = -1
pos = 0,-55
darken = 0
unhittable = 1
p2defmul = 1

[State 10250, Explod]
type = Explod
trigger1 = Time = 0
anim = 6001
ID = 5252
pos = 0,0
postype = Back  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
supermove = 9999999999
pausemove = 9999999999
scale = 1,1
ontop = 0
sprpriority = -8
shadow = 0,0,0
ownpal = 1
removeongethit = 1

;From the original RRDA, modified to work with my version
[State 10251, ModifyExplod]
type = ModifyExplod
trigger1 = Numexplod(13020)
Id = 13020
postype = back
pos = ceil(-20+((random%16)*ifelse((time%6=[1,3]),-1,1))),ceil(170+((random%16)*ifelse((time%6=[1,3]),-1,1)))
scale = ifelse(time>=60+3,2,.35+((time)*.05))*.833,ifelse(time>=60+33,2,.35+((time)*.05))*1.07
ignorehitpause = 1

[State 10251, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S11,0
volume = 255
channel = 6

[State 10252, Helper]
type = Helper
trigger1 = Time = 0
helpertype = normal
name = "DANTE IN A TRUCK"
ID = 12345
stateno = 19997
pos = 0,135
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999999
pausemovetime = 9999999
ignorehitpause = 1
persistent = 1

[State 1110, 2]
type = HitDef
trigger1 = !movecontact
attr = S, HT
hitflag = MAFD
guardflag = MA
animtype  = Med
damage    = 0, 0
getpower  = 0,0 ; I WANTED TO BE VERY SURE
priority  = 7, Hit
pausetime = 1,8
p2stateno = 30000
hitsound = S20, 33
sparkno = -1
sparkxy = 0,-48
guard.sparkno = s7911
guardsound = s6,0
recover = 0
fall.recover = 0
numhits = 0
ground.type = Low
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0
guard.velocity = 0
air.velocity = 0,0
airguard.velocity = 0,0

[State 10252, EnvShake]
type = EnvShake
trigger1 = Vel Y > 0 && Pos Y >= -130
time = 60
freq = 60
ampl = 8
phase = 90
ignorehitpause = 1

[State 10252, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 10252, EndThisStateIfWeTouchGround]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= -130
trigger1 = MoveHit
value = 10253

[State 19998, RemoveExplod]
type = RemoveExplod
trigger1 = Vel Y > 0 && Pos Y >= -130
trigger1 = !MoveHit
id = 13020

[State 19998, RemoveExplod]
type = RemoveExplod
trigger1 = Vel Y > 0 && Pos Y >= -130
trigger1 = !MoveHit
id = 5252

[State 19998, ChangeStateFail]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= -130
trigger1 = !MoveHit
value = 9000
ctrl = 1

;---------------------------------------------------------------------------
;THIS IS THE STATE IN WHICH WE KILL AND ALL FUCKED UP STUFF!!
[Statedef 10253]
type    = S
movetype = I
physics = S
velset = 0, 0
anim = 10252
ctrl = 0
sprpriority = 2

[State 10251, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S2000,5
volume = 255
channel = 6

[State 23652, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(5) = 0
trigger2 = AnimElemTime(8) = 0
trigger3 = AnimElemTime(11) = 0
trigger4 = AnimElemTime(14) = 0
trigger5 = AnimElemTime(17) = 0
trigger6 = AnimElemTime(20) = 0
trigger7 = AnimElemTime(23) = 0
trigger8 = AnimElemTime(26) = 0
trigger9 = AnimElemTime(29) = 0
trigger10 = AnimElemTime(38) = 0
value = S20,33+random%5

[State 10251, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElemTime(5) = 0
trigger2 = AnimElemTime(8) = 0
trigger3 = AnimElemTime(11) = 0
trigger4 = AnimElemTime(14) = 0
trigger5 = AnimElemTime(17) = 0
trigger6 = AnimElemTime(20) = 0
trigger7 = AnimElemTime(23) = 0
trigger8 = AnimElemTime(26) = 0
trigger9 = AnimElemTime(29) = 0
value = -39
absolute = 1
kill = 0

[State 10251, TargetState]
type = TargetState
trigger1 = AnimElemTime(5) = 0
trigger2 = AnimElemTime(8) = 0
trigger3 = AnimElemTime(11) = 0
trigger4 = AnimElemTime(14) = 0
trigger5 = AnimElemTime(17) = 0
trigger6 = AnimElemTime(20) = 0
trigger7 = AnimElemTime(23) = 0
trigger8 = AnimElemTime(26) = 0
trigger9 = AnimElemTime(29) = 0
value = 30000

[State 10251, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElemTime(38) = 0
value = -149
absolute = 1
kill = 1

[State 10251, TargetState]
type = TargetState
trigger1 = AnimElemTime(38) = 0
value = 30001

[State 10253, HitAdd]
type = HitAdd
trigger1 = AnimElemTime(5) = 0
trigger2 = AnimElemTime(8) = 0
trigger3 = AnimElemTime(11) = 0
trigger4 = AnimElemTime(14) = 0
trigger5 = AnimElemTime(17) = 0
trigger6 = AnimElemTime(20) = 0
trigger7 = AnimElemTime(23) = 0
trigger8 = AnimElemTime(26) = 0
trigger9 = AnimElemTime(29) = 0
trigger10 = AnimElemTime(38) = 0
value = 1

[State 10253, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(5) = 0
trigger2 = AnimElemTime(8) = 0
trigger3 = AnimElemTime(11) = 0
trigger4 = AnimElemTime(14) = 0
trigger5 = AnimElemTime(17) = 0
trigger6 = AnimElemTime(20) = 0
trigger7 = AnimElemTime(23) = 0
trigger8 = AnimElemTime(26) = 0
trigger9 = AnimElemTime(29) = 0
trigger10 = AnimElemTime(38) = 0
value = S5,5

[State 15002, Explod]
type = Explod
trigger1 = AnimElemTime(5) = 0
trigger2 = AnimElemTime(8) = 0
trigger3 = AnimElemTime(11) = 0
trigger4 = AnimElemTime(14) = 0
trigger5 = AnimElemTime(17) = 0
trigger6 = AnimElemTime(20) = 0
trigger7 = AnimElemTime(23) = 0
trigger8 = AnimElemTime(26) = 0
trigger9 = AnimElemTime(29) = 0
trigger10 = AnimElemTime(38) = 0
anim = 7930+random%8
ID = 7930
pos = 2,0
facing = 1
bindtime = 1
random = 15,2
removetime = -2
ontop = 1
ownpal = 1

;Generated by Fighter Factory PalFX Editor
[State 10253, PalFXWiz]
type = AllPalFX
trigger1 = AnimElem = 39
trigger1 = Win
time = 90
add = 10,10,10
mul = -200,-200,200
sinadd = -256,-256,-256,50
invertall = 0
color = 256

[State 10253, RemoveExplod]
type = RemoveExplod
trigger1 = AnimTime = 0
id = 5252

[State 10253, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 10253, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 10253, RRDANoSuccess]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = enemyNear, Alive
value = 9000
ctrl = 1

[State 10253, winBYRRDA]
type=changestate
trigger1=P2Life = 0
trigger1=AnimTime = 0
trigger1=!enemyNear, Alive
value=184

[State 10253, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

;---------------------------------------------------------------------------
; Dizzyfier

[Statedef 6280]
type    = S
movetype= A
physics = S
juggle  = 6
poweradd = -500
velset = 0,0
anim = 801
ctrl = 0
sprpriority = 2

[State 6280, 1]
type = PlaySnd
trigger1 = Time = 2
value = 1, 2

[State 6280, 6]
type = HitDef
trigger1 = !MoveContact
attr = S, ST
hitflag = M-
priority  = 2, Dodge
sparkno = -1
sparkxy = -10,-60
hitsound   = S800,0
guardsound = 6,0
fall = 0
p1stateno = 6281
p2stateno = 6290    ;State 1025 is NOT versatile enough
p2facing = -1        ;Force to face away from p1
hitonce = 1

[State 6280, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Hold and then Kick
[Statedef 6281]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 6280
ctrl = 0
sprpriority = 2

[State 6281, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S7,1

[State 6281, PalFXWiz]
type = PalFX
trigger1 = time = 0
time = 22
add = 29,29,0
mul = 256,256,256
sinadd = 58,58,0,3

[State 6281, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 22
length = 10
paladd = 50,50,0
framegap = 2
trans = add

[State 6281, Bind To Daniel's Hand]
type = TargetBind
trigger1 = AnimElemTime(4) < 0
pos = 37,0

[State 6281, HitSpark]
type = Explod
trigger1 = AnimElemTime(4) = 0
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

[State 6281, Big Boom Effect]
type = Explod
trigger1 = AnimElemTime(4) = 0
anim = 2005+random%4
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

[State 6281, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = S5,9

[State 6281, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElemTime(4) = 0
value = -45
kill = 1
absolute = 0

[State 6281, Change To DIZZY State]
type = TargetState
trigger1 = AnimElemTime(4) = 0
value = 5300

[State 6281, 7]
type = TargetDrop
trigger1 = AnimTime = 0
keepone = 0

[State 6281, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Grabbed.

[Statedef 6290]
type    = S
movetype= H
physics = N
velset = 0,0
sprpriority = 1

[State 6290, Anim] ;Custom animation
type = ChangeAnim2
trigger1 = Time = 0
value = 6290

[State 6290, Un-Bind if Daniel gets hit]
type = SelfState
trigger1 = !GetHitVar(isbound)
value = 5050

;Weak
[Statedef 6930]
type    = S
movetype= H
physics = N

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = Time=0
value = 5000+random%2

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = Time>0 && anim=[5000,5002]
value = anim

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = (anim=[5000,5002]) && AnimTime=0
value = Anim+5

[State 6930, Yvel]
type = VelSet
trigger1 = 1
x=0
y = 0

[State 6930, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 6930, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 6930, reset Y to 0]
type = PosSet
trigger1 = 1
y = 0

[State 1028, State 5050] ;Self falling animation
type = SelfState ;Old Bug
trigger1 = Time >= 100
value = 5050

;Med
[Statedef 6931]
type    = S
movetype= H
physics = N

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 6931, VelMul]
type = VelMul
trigger1 = 1
x = .89

[State 0, VelSet]
type = VelSet
trigger1 = abs(vel x) <= .89
x = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = Time=0
value = 5010+random%2

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = Time>0 && anim=[5010,5012]
value = anim

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = (anim=[5010,5012]) && AnimTime=0
value = Anim+5

[State 6930, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 6931, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 6931, reset Y to 0]
type = PosSet
trigger1 = 1
y = 0

[State 1028, State 5050] ;Self falling animation
type = SelfState ;Old Bug
trigger1 = Time >= 100
value = 5050

;Hit by a High Attack
[Statedef 6935]
type    = S
movetype= H
physics = N

[State 6935, VelMul]
type = VelMul
trigger1 = 1
x = .89

[State 0, VelSet]
type = VelSet
trigger1 = abs(vel x) <= .89
x = 0

[State 6935, Anim]
type = ChangeAnim2
trigger1 = Time = 0
value = 4851

[State 6930, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 6931, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 6931, reset Y to 0]
type = PosSet
trigger1 = 1
y = 0

[State 1028, State 5050] ;Self falling animation
type = SelfState ;Old Bug
trigger1 = Time >= 156
value = 5050

; Aereal Dash DanMan!
[Statedef 99000]
type = A
movetype = A
physics = N
velset = 0,0
anim = 8007
ctrl = 0

[State 3050, PlaySnd]
type = PlaySnd
trigger1 = random<100
trigger1 = Time=0
value = S5004,9

[State 99000, PlaySnd]
type = PlaySnd
trigger1 = Time=0
value = S1,6

[State 1362, PlaySnd]
type = PlaySnd
trigger1 = Time=0
value = S100,1+random%3

[State 99000, VelSet]
type = VelSet
trigger1 = Time=0
x = 6

[State 99000, StateTypeSet]
type = StateTypeSet
trigger1 = Time=10
physics = A

[State 0, CtrlSet]
type = CtrlSet
trigger1 = Time=10
value = 1

[Statedef 99001]
type = A
movetype = A
physics = A
anim = 8003
ctrl = 0

[State 3050, PlaySnd]
type = PlaySnd
trigger1 = random<100
trigger1 = Time=0
value = S5004,9

[State 1362, PlaySnd]
type = PlaySnd
trigger1 = Time=0
value = S100,1+random%3

[State 99001, VelSet]
type = VelSet
trigger1 = Time = 1
x = -8
y = 0
ignorehitpause = 1

[State 99001, 7] ;Change state when KFM is close to ground
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 52
ctrl = 0

; raping devilangel!!111

[Statedef 23650]
type = S
movetype = I
physics =S
velset = 0,0
ctrl = 0
anim = 23650

[State 3050, Level 4]
type = VarSet
trigger1 = time = 0
var(10) = 7

[State 23650, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Super"
ID = 7500
stateno = 7500
pos = 0,-55
postype = p1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
persistent = 0

[State 23650, Nautica]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Nautica"
ID = 23650
stateno = 23651
pos = -330,0
postype = p1
ownpal = 1
persistent = 0
size.xscale=0.45
size.yscale=0.45

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time=0
value = S5005,2
channel=0
volume=999

[State 65002, Substract Power]
type = PowerAdd
trigger1 = !(var(24)>=0 && var(28)=1) && Time=0
value = -3000

[State 0, Substract Seconds]
type = VarAdd
trigger1 = (var(24)>=0 && var(28)=1) && Time=0
var(24) = -360

[State 23650, Super A]
type = SuperPause
trigger1 = Time = 0
time = 45
anim = -1
sound = s7, 0
darken = 0
p2defmul = 1

[State 23650, NotHitBy]
type = NotHitBy
trigger1 = numhelper(23650)
value = SCA

[State 23650, IWillKillThem]
type = ChangeState
triggerall = Time > 0
trigger1 = !numhelper(23650)
trigger2 = helper(23650), stateno = 23653
value = 33650
ctrl=0

[Statedef 33650]
type = S
movetype = A
physics =S
velset = 0,0
ctrl = 0
anim = 23651

[State 33650, FAIL]
type = ChangeState
trigger1 = animtime=0
value = 0
ctrl=1

; I WANT TO RUSH!!!!
[Statedef 23651]
type = S
movetype = A
physics = N
ctrl = 0
anim = 123651

[State 23651, PlaySnd]
type = PlaySnd
trigger1 = Time=0
value = S22000,1

[State 23651, VelSet]
type = VelSet
trigger1 = Time=0
x = ((12.25+abs(((root, Pos X+(-40*facing))-(Pos X))))**0.5)

[State 23651, VelSet]
type = VelAdd
trigger1 = Vel X > 3.5
x=-0.5

[State 23651, VelSet]
type = VelSet
trigger1 = Vel X <= 3.5
x = 3.5

[State 23651, PlaySnd]
type = PlaySnd
trigger1 = Time=10
value = S237,2

[State 0, NotHitBy]
type = NotHitBy
trigger1 = Vel X > 3.5
value = SCA

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 23653
time = 1
ignorehitpause=1

[State 23651, Explosion Moment AfterImages]
type = AfterImage
trigger1 = Time = 0
palcontrast = 255, 15, 15
paladd = 255,0,0
palmul = .5, 0, 0
trans = add
time = -1
timegap = 2
framegap = 1
length = 20

[State 23651, Super C]
type = AfterImageTime
trigger1 = Time = 74 || MoveContact
time = 0

[State 23651, SPECIAL HITDEF]
type = HitDef
trigger1 = Time=37
attr = S, HT
hitflag = M-
getpower  = 0
priority  = 1, Miss
hitsound = s23650,4
p1stateno = 23652
p2stateno = 23659
guardflag =
sparkno = -1
hitonce = 1
numhits = 0
fall = 1

[State 23651, TargetBind]
type = TargetBind
trigger1 = MoveContact
time = 3
pos = 30,0

[State 23651, IF YOU LOSE THIS CHANCE]
type = ChangeState
trigger1 = Time >= 75
value = 23653
ctrl = 0

;---------------------------------------------------------------------------
; Let's use "THAT'S OPINION, NOT NEWS!!" as Yagoshi!
[Statedef 23652]
type = S
movetype = A
physics = S
anim = 23652
velset = 0, 0
ctrl = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3)=10
value = S23652,0
channel=1
volume=500
abspan=0

[State 23652, Pause]
type = Pause
trigger1 = Time=0
time = 335
movetime = 335

[State 23651, Super C]
type = AfterImageTime
trigger1 = Time = 0
time = 0

[State 23652, TargetBind]
type = TargetBind
trigger1 = 1
pos = 40,0

[State 23652, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 23652, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 2502, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = nokoslow
flag3 = nomusic
ignorehitpause = 1

[State 23659, AllPalFX]
type = AllPalFX
trigger1 = AnimElemTime(3) = 0
time = 80
sinadd = -255,-255,-255,240

[State 2502, EnvColor]
type = EnvColor
trigger1 = AnimElemTime(5)=0||AnimElemTime(6)=0||AnimElemTime(7)=0
trigger2 = AnimElemTime(8)=0||AnimElemTime(9)=0||AnimElemTime(10)=0||AnimElemTime(11)=0
trigger3 = AnimElemTime(12)=0||AnimElemTime(13)=0||AnimElemTime(14)=0||AnimElemTime(15)=0
trigger4 = AnimElemTime(16)=0||AnimElemTime(17)=0||AnimElemTime(18)=0||AnimElemTime(19)=0
trigger5 = AnimElemTime(20)=0||AnimElemTime(21)=0||AnimElemTime(22)=0||AnimElemTime(23)=0
trigger6 = AnimElemTime(24)=0||AnimElemTime(25)=0||AnimElemTime(26)=0||AnimElemTime(27)=0
value = 0,0,0
time = 15
under = 0

[State 2502, EnvColor]
type = EnvColor
trigger1 = AnimElemTime(28)=0
value = 0,0,0
time = 45
under = 0

[State 2502, SGS HITADD]
type = HitAdd
trigger1 = AnimElemTime(5)=0||AnimElemTime(6)=0||AnimElemTime(7)=0
trigger2 = AnimElemTime(8)=0||AnimElemTime(9)=0||AnimElemTime(10)=0||AnimElemTime(11)=0
trigger3 = AnimElemTime(12)=0||AnimElemTime(13)=0||AnimElemTime(14)=0||AnimElemTime(15)=0
trigger4 = AnimElemTime(16)=0||AnimElemTime(17)=0||AnimElemTime(18)=0||AnimElemTime(19)=0
trigger5 = AnimElemTime(20)=0||AnimElemTime(21)=0||AnimElemTime(22)=0||AnimElemTime(23)=0
trigger6 = AnimElemTime(24)=0||AnimElemTime(25)=0||AnimElemTime(26)=0||AnimElemTime(27)=0
trigger7 = AnimElemTime(28)=0
value = 1

[State 1063, Bright Spark]
type = Helper
trigger1 = AnimElemTime(5)=0||AnimElemTime(6)=0||AnimElemTime(7)=0
trigger2 = AnimElemTime(8)=0||AnimElemTime(9)=0||AnimElemTime(10)=0||AnimElemTime(11)=0
trigger3 = AnimElemTime(12)=0||AnimElemTime(13)=0||AnimElemTime(14)=0||AnimElemTime(15)=0
trigger4 = AnimElemTime(16)=0||AnimElemTime(17)=0||AnimElemTime(18)=0||AnimElemTime(19)=0
trigger5 = AnimElemTime(20)=0||AnimElemTime(21)=0||AnimElemTime(22)=0||AnimElemTime(23)=0
trigger6 = AnimElemTime(24)=0||AnimElemTime(25)=0||AnimElemTime(26)=0||AnimElemTime(27)=0
trigger7 = AnimElemTime(28)=0
helpertype = normal
name = "Super Cool Sparks"
ID = 8696
stateno = 8696
postype = p1
pos = 0+random%48,-70+random%50
ownpal = 1
supermovetime = 9999
pausemovetime = 9999

[State 23652, recoverset (Any1)]
type = varset
trigger1 = time = 0
var(59) = 1

[State 23652, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(5)=0||AnimElemTime(6)=0||AnimElemTime(7)=0
trigger2 = AnimElemTime(8)=0||AnimElemTime(9)=0||AnimElemTime(10)=0||AnimElemTime(11)=0
trigger3 = AnimElemTime(12)=0||AnimElemTime(13)=0||AnimElemTime(14)=0||AnimElemTime(15)=0
trigger4 = AnimElemTime(16)=0||AnimElemTime(17)=0||AnimElemTime(18)=0||AnimElemTime(19)=0
trigger5 = AnimElemTime(20)=0||AnimElemTime(21)=0||AnimElemTime(22)=0||AnimElemTime(23)=0
trigger6 = AnimElemTime(24)=0||AnimElemTime(25)=0||AnimElemTime(26)=0||AnimElemTime(27)=0
trigger7 = AnimElemTime(28)=0
value = S23652,2;+random%2
channel = 2+random%6
freqmul = 0.8+((random%5)/4.0)

[State 23652, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElemTime(5)=0||AnimElemTime(6)=0||AnimElemTime(7)=0
trigger2 = AnimElemTime(8)=0||AnimElemTime(9)=0||AnimElemTime(10)=0||AnimElemTime(11)=0
trigger3 = AnimElemTime(12)=0||AnimElemTime(13)=0||AnimElemTime(14)=0||AnimElemTime(15)=0
trigger4 = AnimElemTime(16)=0||AnimElemTime(17)=0||AnimElemTime(18)=0||AnimElemTime(19)=0
trigger5 = AnimElemTime(20)=0||AnimElemTime(21)=0||AnimElemTime(22)=0||AnimElemTime(23)=0
trigger6 = AnimElemTime(24)=0||AnimElemTime(25)=0||AnimElemTime(26)=0||AnimElemTime(27)=0
value = -18
kill = 0

[State 23652, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElemTime(28)=0
value = -5
kill = 0

[State 23652, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(28)=44
value = S23650,5

[State 23652, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElemTime(28)=44
value = -1
kill = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimTime=0
value = S23652,1
channel=1
volume=500
abspan=0

[State 23652, SGS Success]
type = TargetState
trigger1 = AnimTime = 0 && var(59)
value = 2511

[State 23652, OrNot?]
type = TargetState
trigger1 = !var(59)
value = 1112511
ctrl = 0

[State 23652, LifeAdd]
type = LifeAdd
trigger1 = !var(59)
value = -175
kill = 1

[State 23652, TargetDrop]
type = TargetDrop
trigger1 = !var(59)
keepone = 0

[State 23652, VelSet]
type = VelSet
trigger1 = !var(59)
x = -25

[State 23652, OrNotToo]
type = ChangeState
trigger1 = !var(59)
value = 5682
ctrl = 0

[State 23652, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 23653 ;SGS No KO...
ctrl = 0

[Statedef 23653]
type = S
movetype = I
physics = N
velset = 0,0
sprpriority=5
anim = 23653
ctrl = 0

[State 23652, PlaySnd]
type = PlaySnd
trigger1 = Win
value = S23650,2
channel = 2
persistent=0

[State 7500, SuperBG]
type = Helper
trigger1 = Win
id = 117898
name = "OH YEAH"
pos = 0,0
postype = P1
stateno = 117898
helpertype = normal
keyctrl = 0
ownpal = 1
supermovetime = 99999999
pausemovetime = 99999999
persistent=0

[State 7500, SuperBG]
type = Null;Helper
trigger1 = Win
id = 17898
name = "KO"
pos = 0,0
postype = P1
stateno = 17898
helpertype = normal
keyctrl = 0
ownpal = 1
supermovetime = 99999999
pausemovetime = 99999999
persistent=0

[State 23653, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 23653, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 0, AfterImageTime]
type = AfterImageTime
trigger1 = Time=0
time = 0

[State 0, AngleDraw]
type = AngleDraw
trigger1 = AnimElemTime(1) >= 1 && AnimElemTime(2)<0
value = -90*(time/6.0)
ignorehitpause = 1

[State 23653, Saying]
type = PlaySnd
trigger1 = AnimElemTime(2)=0
value = S22000, 0

[State 5110, 7]
type = GameMakeAnim
trigger1 = AnimElemTime(2)=0
value = 62
pos = 50, 0
under = 0

[State 23653, Saying]
type = PlaySnd
trigger1 = AnimElemTime(1)=0
value = S2435, 0

[State 23653, Saying]
type = PlaySnd
trigger1 = AnimElemTime(2)=0
value = S2435, 2


[State 0, EnvShake]
type = EnvShake
trigger1 = AnimElemTime(2)=0
time = 6
freq = 200
ampl = -4
phase = 90

[State 23653, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nomusic

[State 23650, Nautica]
type = Helper
trigger1 = time = 110
helpertype = normal
name = "Nautica"
ID = 123650
stateno = 123653
pos = 0,0
postype = p1
ownpal = 1
supermovetime = 9999
persistent = 0
size.xscale=0.45
size.yscale=0.45

[State 0, DestroySelf]
type = DestroySelf
trigger1 = Time > 110

[State 23653, End]
type = Null;ChangeState
trigger1 = AnimTime = 0
value = 4895
ctrl = 0

[Statedef 123653]
type = S
movetype = I
physics = N
velset = -4,0
anim = 23653
ctrl = 0
sprpriority=5

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time%55=0
value = S123652,0

[State 123653, DestroySelf]
type = DestroySelf
trigger1 = ScreenPos X < -400
trigger2 = ScreenPos X > 720

[State 123653, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = 23653
elem = 2

[Statedef 1112511]
type = S
movetype = H
physics = S
anim = 5120
poweradd = 500
ctrl = 0

[State 1112511, Value]
type = LifeAdd
trigger1 = !Time
value = 100
kill = 0 ;You never know!

[State 1112511, Recover]
type = SelfState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Keep yourself there if SGS against you

[Statedef 23659]
type = S
movetype = H
physics = N
velset = 0, 0
ctrl = 0

[State 23652, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 23652, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 23659, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 23659

;---------------------------------------------------------------------------
; LieDown State FROM PACMAN DELTA
[Statedef 2511]
type = L
movetype = H
physics = N
ctrl = 0
sprpriority = 2

[State 2511, ChangePosToFloorImediatly]
type = PosSet
trigger1 = !Time
y = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 2511, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 2511

[State 2511, SelfState]
type = SelfState
trigger1 = !Alive
trigger1 = Time >= 25
value = 5150

[State 2511, GetUp_after_yourCNSTime]
type = SelfState
trigger1 = Alive
trigger1 = Time >= 205
value = 5120
ctrl = 0

;ANGRY SHUN DANIEL SATSU

[Statedef 123650]
type = S
movetype = I
physics =S
velset = 0,0
ctrl = 0
anim = 123650

[State 3050, Level 4]
type = VarSet
trigger1 = time = 0
var(10) = 7

[State 123650, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Super"
ID = 7500
stateno = 7500
pos = 0,-55
postype = p1
ownpal = 1
supermovetime = 9999
persistent = 0

[State 123650, Super A]
type = SuperPause
trigger1 = Time = 0
time = 45
anim = -1
sound = s7, 0
poweradd = -4000
darken = 0
p2defmul = 1

[State 123650, IWillKillThem]
type = ChangeState
trigger1 = AnimTime = 0
value = 123651

; I WANT TO RUSH!!!!
[Statedef 123651]
type = S
movetype = A
physics = S
velset = 0, 0
ctrl = 0
anim = 123651

[State 123651, NOMUSIC]
type = AssertSpecial
trigger1 = 1
flag = nomusic
ignorehitpause = 1

[State 123651, X_ADD]
type = PosAdd
trigger1 = 1
x = 4.6

[State 123651, Super B]
type = AfterImage
trigger1 = Time = 0
paladd = 0, 250, 0
palmul = 0, 19, 0
time = 2

[State 123651, Super C]
type = AfterImageTime
trigger1 = 1
time = 2

[State 123651, SPECIAL HITDEF]
type = HitDef
trigger1 = Time = 0
attr = S, HT
hitflag = M-
getpower  = 0
priority  = 1, Miss
p1stateno = 123652
p2stateno = 123659
guardflag =
sparkno = -1
hitonce = 1
numhits = 0
fall = 1

[State 123651, TargetBind]
type = TargetBind
trigger1 = MoveContact
time = 3
pos = 30,0

[State 123651, IF YOU LOSE THIS CHANCE]
type = ChangeState
trigger1 = Time = 40
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Let's use "THAT'S OPINION, NOT NEWS!!" as Yagoshi!
[Statedef 123652]
type = S
movetype = A
physics = S
anim = 123652
velset = 0, 0
ctrl = 0

[State 123652, TargetBind]
type = TargetBind
trigger1 = 1
pos = 40,0

[State 123652, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 123652, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 123652, Music Scratch]
type = PlaySnd
trigger1 = Time = 0
value = 20025, 4

[State 123652, THAT'S OPINION]
type = PlaySnd
trigger1 = Time = 0
value = 20025, 2

[State 12502, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = nokoslow
flag3 = nomusic
ignorehitpause = 1

[State 12502, SGS HITADD]
type = HitAdd
trigger1 = AnimElemTime(5)=0||AnimElemTime(6)=0||AnimElemTime(7)=0
trigger2 = AnimElemTime(8)=0||AnimElemTime(9)=0||AnimElemTime(10)=0||AnimElemTime(11)=0
trigger3 = AnimElemTime(12)=0||AnimElemTime(13)=0||AnimElemTime(14)=0||AnimElemTime(15)=0
trigger4 = AnimElemTime(16)=0||AnimElemTime(17)=0||AnimElemTime(18)=0||AnimElemTime(19)=0
trigger5 = AnimElemTime(20)=0||AnimElemTime(21)=0||AnimElemTime(22)=0||AnimElemTime(23)=0
trigger6 = AnimElemTime(24)=0||AnimElemTime(25)=0||AnimElemTime(26)=0||AnimElemTime(27)=0
trigger7 = AnimElemTime(28)=0||AnimElemTime(29)=0||AnimElemTime(30)=0||AnimElemTime(31)=0
trigger8 = AnimElemTime(32)=0||AnimElemTime(33)=0||AnimElemTime(34)=0||AnimElemTime(35)=0
trigger9 = AnimElemTime(36)=0||AnimElemTime(37)=0||AnimElemTime(38)=0||AnimElemTime(39)=0
trigger10 = AnimElemTime(40)=0||AnimElemTime(41)=0||AnimElemTime(42)=0||AnimElemTime(43)=0
trigger11 = AnimElemTime(44)=0||AnimElemTime(45)=0||AnimElemTime(46)=0||AnimElemTime(47)=0
trigger12 = AnimElemTime(48)=0||AnimElemTime(49)=0||AnimElemTime(50)=0||AnimElemTime(51)=0
trigger13 = AnimElemTime(52)=0||AnimElemTime(53)=0||AnimElemTime(54)=0||AnimElemTime(55)=0
trigger14 = AnimElemTime(56)=0||AnimElemTime(57)=0||AnimElemTime(58)=0||AnimElemTime(59)=0
trigger15 = AnimElemTime(60)=0||AnimElemTime(61)=0||AnimElemTime(62)=0||AnimElemTime(63)=0
trigger16 = AnimElemTime(64)=0||AnimElemTime(65)=0||AnimElemTime(66)=0||AnimElemTime(67)=0
trigger17 = AnimElemTime(68)=0||AnimElemTime(69)=0||AnimElemTime(70)=0||AnimElemTime(71)=0
trigger18 = AnimElemTime(72)=0||AnimElemTime(73)=0||AnimElemTime(74)=0||AnimElemTime(75)=0
trigger19 = AnimElemTime(76)=0||AnimElemTime(77)=0||AnimElemTime(78)=0||AnimElemTime(79)=0
trigger20 = AnimElemTime(80)=0||AnimElemTime(81)=0||AnimElemTime(82)=0||AnimElemTime(83)=0
trigger21 = AnimElemTime(84)=0||AnimElemTime(85)=0||AnimElemTime(86)=0||AnimElemTime(87)=0
trigger22 = AnimElemTime(88)=0||AnimElemTime(89)=0||AnimElemTime(90)=0||AnimElemTime(91)=0
trigger23 = AnimElemTime(92)=0||AnimElemTime(93)=0||AnimElemTime(94)=0||AnimElemTime(95)=0
trigger24 = AnimElemTime(96)=0||AnimElemTime(97)=0||AnimElemTime(98)=0||AnimElemTime(99)=0
trigger25 = AnimElemTime(100)=0||AnimElemTime(101)=0||AnimElemTime(102)=0||AnimElemTime(103)=0
value = 1

[State 12502, Helper]
type = Helper
trigger1 = AnimElemTime(5)=0||AnimElemTime(6)=0||AnimElemTime(7)=0
trigger2 = AnimElemTime(8)=0||AnimElemTime(9)=0||AnimElemTime(10)=0||AnimElemTime(11)=0
trigger3 = AnimElemTime(12)=0||AnimElemTime(13)=0||AnimElemTime(14)=0||AnimElemTime(15)=0
trigger4 = AnimElemTime(16)=0||AnimElemTime(17)=0||AnimElemTime(18)=0||AnimElemTime(19)=0
trigger5 = AnimElemTime(20)=0||AnimElemTime(21)=0||AnimElemTime(22)=0||AnimElemTime(23)=0
trigger6 = AnimElemTime(24)=0||AnimElemTime(25)=0||AnimElemTime(26)=0||AnimElemTime(27)=0
trigger7 = AnimElemTime(28)=0||AnimElemTime(29)=0||AnimElemTime(30)=0||AnimElemTime(31)=0
trigger8 = AnimElemTime(32)=0||AnimElemTime(33)=0||AnimElemTime(34)=0||AnimElemTime(35)=0
trigger9 = AnimElemTime(36)=0||AnimElemTime(37)=0||AnimElemTime(38)=0||AnimElemTime(39)=0
trigger10 = AnimElemTime(40)=0||AnimElemTime(41)=0||AnimElemTime(42)=0||AnimElemTime(43)=0
trigger11 = AnimElemTime(44)=0||AnimElemTime(45)=0||AnimElemTime(46)=0||AnimElemTime(47)=0
trigger12 = AnimElemTime(48)=0||AnimElemTime(49)=0||AnimElemTime(50)=0||AnimElemTime(51)=0
trigger13 = AnimElemTime(52)=0||AnimElemTime(53)=0||AnimElemTime(54)=0||AnimElemTime(55)=0
trigger14 = AnimElemTime(56)=0||AnimElemTime(57)=0||AnimElemTime(58)=0||AnimElemTime(59)=0
trigger15 = AnimElemTime(60)=0||AnimElemTime(61)=0||AnimElemTime(62)=0||AnimElemTime(63)=0
trigger16 = AnimElemTime(64)=0||AnimElemTime(65)=0||AnimElemTime(66)=0||AnimElemTime(67)=0
trigger17 = AnimElemTime(68)=0||AnimElemTime(69)=0||AnimElemTime(70)=0||AnimElemTime(71)=0
trigger18 = AnimElemTime(72)=0||AnimElemTime(73)=0||AnimElemTime(74)=0||AnimElemTime(75)=0
trigger19 = AnimElemTime(76)=0||AnimElemTime(77)=0||AnimElemTime(78)=0||AnimElemTime(79)=0
trigger20 = AnimElemTime(80)=0||AnimElemTime(81)=0||AnimElemTime(82)=0||AnimElemTime(83)=0
trigger21 = AnimElemTime(84)=0||AnimElemTime(85)=0||AnimElemTime(86)=0||AnimElemTime(87)=0
trigger22 = AnimElemTime(88)=0||AnimElemTime(89)=0||AnimElemTime(90)=0||AnimElemTime(91)=0
trigger23 = AnimElemTime(92)=0||AnimElemTime(93)=0||AnimElemTime(94)=0||AnimElemTime(95)=0
trigger24 = AnimElemTime(96)=0||AnimElemTime(97)=0||AnimElemTime(98)=0||AnimElemTime(99)=0
trigger25 = AnimElemTime(100)=0||AnimElemTime(101)=0||AnimElemTime(102)=0||AnimElemTime(103)=0
helpertype = normal
name = "Super Hit Spark"
ID = 7930
stateno = 7930
postype = p1
pos = -50+random%75,-55+random%100
ownpal = 1
supermovetime = 9999

[State 12502, SGS BRUTAL LOOKING]
type = Null;Explod
trigger1 = AnimElemTime(5)=0||AnimElemTime(6)=0||AnimElemTime(7)=0
trigger2 = AnimElemTime(8)=0||AnimElemTime(9)=0||AnimElemTime(10)=0||AnimElemTime(11)=0
trigger3 = AnimElemTime(12)=0||AnimElemTime(13)=0||AnimElemTime(14)=0||AnimElemTime(15)=0
trigger4 = AnimElemTime(16)=0||AnimElemTime(17)=0||AnimElemTime(18)=0||AnimElemTime(19)=0
trigger5 = AnimElemTime(20)=0||AnimElemTime(21)=0||AnimElemTime(22)=0||AnimElemTime(23)=0
trigger6 = AnimElemTime(24)=0||AnimElemTime(25)=0||AnimElemTime(26)=0||AnimElemTime(27)=0
trigger7 = AnimElemTime(28)=0||AnimElemTime(29)=0||AnimElemTime(30)=0||AnimElemTime(31)=0
trigger8 = AnimElemTime(32)=0||AnimElemTime(33)=0||AnimElemTime(34)=0||AnimElemTime(35)=0
trigger9 = AnimElemTime(36)=0||AnimElemTime(37)=0||AnimElemTime(38)=0||AnimElemTime(39)=0
trigger10 = AnimElemTime(40)=0||AnimElemTime(41)=0||AnimElemTime(42)=0||AnimElemTime(43)=0
trigger11 = AnimElemTime(44)=0||AnimElemTime(45)=0||AnimElemTime(46)=0||AnimElemTime(47)=0
trigger12 = AnimElemTime(48)=0||AnimElemTime(49)=0||AnimElemTime(50)=0||AnimElemTime(51)=0
trigger13 = AnimElemTime(52)=0||AnimElemTime(53)=0||AnimElemTime(54)=0||AnimElemTime(55)=0
trigger14 = AnimElemTime(56)=0||AnimElemTime(57)=0||AnimElemTime(58)=0||AnimElemTime(59)=0
trigger15 = AnimElemTime(60)=0||AnimElemTime(61)=0||AnimElemTime(62)=0||AnimElemTime(63)=0
trigger16 = AnimElemTime(64)=0||AnimElemTime(65)=0||AnimElemTime(66)=0||AnimElemTime(67)=0
trigger17 = AnimElemTime(68)=0||AnimElemTime(69)=0||AnimElemTime(70)=0||AnimElemTime(71)=0
trigger18 = AnimElemTime(72)=0||AnimElemTime(73)=0||AnimElemTime(74)=0||AnimElemTime(75)=0
trigger19 = AnimElemTime(76)=0||AnimElemTime(77)=0||AnimElemTime(78)=0||AnimElemTime(79)=0
trigger20 = AnimElemTime(80)=0||AnimElemTime(81)=0||AnimElemTime(82)=0||AnimElemTime(83)=0
trigger21 = AnimElemTime(84)=0||AnimElemTime(85)=0||AnimElemTime(86)=0||AnimElemTime(87)=0
trigger22 = AnimElemTime(88)=0||AnimElemTime(89)=0||AnimElemTime(90)=0||AnimElemTime(91)=0
trigger23 = AnimElemTime(92)=0||AnimElemTime(93)=0||AnimElemTime(94)=0||AnimElemTime(95)=0
trigger24 = AnimElemTime(96)=0||AnimElemTime(97)=0||AnimElemTime(98)=0||AnimElemTime(99)=0
trigger25 = AnimElemTime(100)=0||AnimElemTime(101)=0||AnimElemTime(102)=0||AnimElemTime(103)=0
anim = 7930+random%8
pos = -50,-55
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 75,100
removetime = -2
supermove = 2
pausemove = 2
scale = 1,1
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 123652, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(5)=0||AnimElemTime(6)=0||AnimElemTime(7)=0
trigger2 = AnimElemTime(8)=0||AnimElemTime(9)=0||AnimElemTime(10)=0||AnimElemTime(11)=0
trigger3 = AnimElemTime(12)=0||AnimElemTime(13)=0||AnimElemTime(14)=0||AnimElemTime(15)=0
trigger4 = AnimElemTime(16)=0||AnimElemTime(17)=0||AnimElemTime(18)=0||AnimElemTime(19)=0
trigger5 = AnimElemTime(20)=0||AnimElemTime(21)=0||AnimElemTime(22)=0||AnimElemTime(23)=0
trigger6 = AnimElemTime(24)=0||AnimElemTime(25)=0||AnimElemTime(26)=0||AnimElemTime(27)=0
trigger7 = AnimElemTime(28)=0||AnimElemTime(29)=0||AnimElemTime(30)=0||AnimElemTime(31)=0
trigger8 = AnimElemTime(32)=0||AnimElemTime(33)=0||AnimElemTime(34)=0||AnimElemTime(35)=0
trigger9 = AnimElemTime(36)=0||AnimElemTime(37)=0||AnimElemTime(38)=0||AnimElemTime(39)=0
trigger10 = AnimElemTime(40)=0||AnimElemTime(41)=0||AnimElemTime(42)=0||AnimElemTime(43)=0
trigger11 = AnimElemTime(44)=0||AnimElemTime(45)=0||AnimElemTime(46)=0||AnimElemTime(47)=0
trigger12 = AnimElemTime(48)=0||AnimElemTime(49)=0||AnimElemTime(50)=0||AnimElemTime(51)=0
trigger13 = AnimElemTime(52)=0||AnimElemTime(53)=0||AnimElemTime(54)=0||AnimElemTime(55)=0
trigger14 = AnimElemTime(56)=0||AnimElemTime(57)=0||AnimElemTime(58)=0||AnimElemTime(59)=0
trigger15 = AnimElemTime(60)=0||AnimElemTime(61)=0||AnimElemTime(62)=0||AnimElemTime(63)=0
trigger16 = AnimElemTime(64)=0||AnimElemTime(65)=0||AnimElemTime(66)=0||AnimElemTime(67)=0
trigger17 = AnimElemTime(68)=0||AnimElemTime(69)=0||AnimElemTime(70)=0||AnimElemTime(71)=0
trigger18 = AnimElemTime(72)=0||AnimElemTime(73)=0||AnimElemTime(74)=0||AnimElemTime(75)=0
trigger19 = AnimElemTime(76)=0||AnimElemTime(77)=0||AnimElemTime(78)=0||AnimElemTime(79)=0
trigger20 = AnimElemTime(80)=0||AnimElemTime(81)=0||AnimElemTime(82)=0||AnimElemTime(83)=0
trigger21 = AnimElemTime(84)=0||AnimElemTime(85)=0||AnimElemTime(86)=0||AnimElemTime(87)=0
trigger22 = AnimElemTime(88)=0||AnimElemTime(89)=0||AnimElemTime(90)=0||AnimElemTime(91)=0
trigger23 = AnimElemTime(92)=0||AnimElemTime(93)=0||AnimElemTime(94)=0||AnimElemTime(95)=0
trigger24 = AnimElemTime(96)=0||AnimElemTime(97)=0||AnimElemTime(98)=0||AnimElemTime(99)=0
trigger25 = AnimElemTime(100)=0||AnimElemTime(101)=0||AnimElemTime(102)=0||AnimElemTime(103)=0
value = S5,0+random%10

[State 123652, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElemTime(5)=0||AnimElemTime(6)=0||AnimElemTime(7)=0
trigger2 = AnimElemTime(8)=0||AnimElemTime(9)=0||AnimElemTime(10)=0||AnimElemTime(11)=0
trigger3 = AnimElemTime(12)=0||AnimElemTime(13)=0||AnimElemTime(14)=0||AnimElemTime(15)=0
trigger4 = AnimElemTime(16)=0||AnimElemTime(17)=0||AnimElemTime(18)=0||AnimElemTime(19)=0
trigger5 = AnimElemTime(20)=0||AnimElemTime(21)=0||AnimElemTime(22)=0||AnimElemTime(23)=0
trigger6 = AnimElemTime(24)=0||AnimElemTime(25)=0||AnimElemTime(26)=0||AnimElemTime(27)=0
trigger7 = AnimElemTime(28)=0||AnimElemTime(29)=0||AnimElemTime(30)=0||AnimElemTime(31)=0
trigger8 = AnimElemTime(32)=0||AnimElemTime(33)=0||AnimElemTime(34)=0||AnimElemTime(35)=0
trigger9 = AnimElemTime(36)=0||AnimElemTime(37)=0||AnimElemTime(38)=0||AnimElemTime(39)=0
trigger10 = AnimElemTime(40)=0||AnimElemTime(41)=0||AnimElemTime(42)=0||AnimElemTime(43)=0
trigger11 = AnimElemTime(44)=0||AnimElemTime(45)=0||AnimElemTime(46)=0||AnimElemTime(47)=0
trigger12 = AnimElemTime(48)=0||AnimElemTime(49)=0||AnimElemTime(50)=0||AnimElemTime(51)=0
trigger13 = AnimElemTime(52)=0||AnimElemTime(53)=0||AnimElemTime(54)=0||AnimElemTime(55)=0
trigger14 = AnimElemTime(56)=0||AnimElemTime(57)=0||AnimElemTime(58)=0||AnimElemTime(59)=0
trigger15 = AnimElemTime(60)=0||AnimElemTime(61)=0||AnimElemTime(62)=0||AnimElemTime(63)=0
trigger16 = AnimElemTime(64)=0||AnimElemTime(65)=0||AnimElemTime(66)=0||AnimElemTime(67)=0
trigger17 = AnimElemTime(68)=0||AnimElemTime(69)=0||AnimElemTime(70)=0||AnimElemTime(71)=0
trigger18 = AnimElemTime(72)=0||AnimElemTime(73)=0||AnimElemTime(74)=0||AnimElemTime(75)=0
trigger19 = AnimElemTime(76)=0||AnimElemTime(77)=0||AnimElemTime(78)=0||AnimElemTime(79)=0
trigger20 = AnimElemTime(80)=0||AnimElemTime(81)=0||AnimElemTime(82)=0||AnimElemTime(83)=0
trigger21 = AnimElemTime(84)=0||AnimElemTime(85)=0||AnimElemTime(86)=0||AnimElemTime(87)=0
trigger22 = AnimElemTime(88)=0||AnimElemTime(89)=0||AnimElemTime(90)=0||AnimElemTime(91)=0
trigger23 = AnimElemTime(92)=0||AnimElemTime(93)=0||AnimElemTime(94)=0||AnimElemTime(95)=0
trigger24 = AnimElemTime(96)=0||AnimElemTime(97)=0||AnimElemTime(98)=0||AnimElemTime(99)=0
trigger25 = AnimElemTime(100)=0||AnimElemTime(101)=0||AnimElemTime(102)=0
value = -4
kill = 0

[State 123652, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElemTime(103)=0
value = -135
kill = 1

[State 123652, SGS Success]
type = TargetState
trigger1 = AnimTime = 0
value = 2511

[State 123652, ChangeState]; GO STRAIGHT TO WINPOSE
type = ChangeState
trigger1 = AnimTime = 0 && WinKO
value = 183
ctrl = 0

[State 123652, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0 && !WinKO
value = 23653
ctrl = 0

[Statedef 1112511]
type = S
movetype = H
physics = S
anim = 5120
poweradd = 500
ctrl = 0

[State 1112511, Value]
type = LifeAdd
trigger1 = !Time
value = 100
kill = 0 ;You never know!

[State 1112511, Recover]
type = SelfState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Keep yourself there if SGS against you

[Statedef 123659]
type = S
movetype = H
physics = N
velset = 0, 0
ctrl = 0

[State 123652, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 123652, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 123659, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 123659

;---------------------------------------------------------------------------
; LieDown State FROM PACMAN DELTA
[Statedef 12511]
type = L
movetype = H
physics = N
ctrl = 0
sprpriority = 2

[State 12511, ChangePosToFloorImediatly]
type = PosSet
trigger1 = !Time
y = 0

[State 12511, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 2511

[State 12511, SelfState]
type = SelfState
trigger1 = !Alive
trigger1 = Time >= Const(data.liedown.time)
value = 5150

[State 12511, GetUp_after_my_saying]
type = SelfState
trigger1 = Alive
trigger1 = Time >= 180
value = 5120
ctrl = 1

;---------------------------------------------------------------------------
; Hit By Road Roller
[Statedef 30000]
type = L
movetype = H
physics = N
velset = 0, 0
ctrl = 0

[State 30000, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 30000
elem = 1

[State 30000, PosSet]
type = PosSet
trigger1 = 1
y = 0

;---------------------------------------------------------------------------
; Hit By Road Roller 2
[Statedef 30001]
type = L
movetype = H
physics = N
velset = 0, 0
ctrl = 0

[State 30001, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 30000
elem = 1

[State 30001, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 30000, NOTDIEafter_yourCNSTime]
type = SelfState
trigger1 = Time >= (Const(data.liedown.time)) && Alive
value = 5050
ctrl = 0

[State 30000, DIEafter_yourCNSTime]
type = SelfState
trigger1 = Time >= (Const(data.liedown.time)) && !Alive
value = 5150
ctrl = 0

;---------------------------------------------------------------------------
[Statedef 15001] ;I Put this as revenge
type = S
movetype = A
physics = N
velset = 7.5, 0
anim = 23651
ctrl = 0

;Super Cancel If Cancelled from: Any of the Two Hits of the 2-Hit Combo.
;                                From (Ground) Scythe.
[State 15001, Super]
type = Helper
trigger1 = Time = 0
trigger1 = PrevStateNo = 1600 || PrevStateNo = 1601 || PrevStateNo = 500
persistent = 0
id = 30005
name = "Super Cancel Helper"
pos = 0,-48
postype = P1
stateno = 2310
helpertype = normal
supermove = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

;Dream Cancel If Cancelled from: Kick Smash.
;                                Punch Smash.
[State 3000, Super]
type = Helper
trigger1 = Time = 0
trigger1 = PrevStateNo = 3000 || PrevStateNo = 3050
persistent = 0
id = 30005
name = "DREAM Cancel Helper"
pos = 0,-48
postype = P1
stateno = 2320
helpertype = normal
supermove = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 3000, Damn Yer Dhreahm Canzer Herpez]
type = TargetState
triggerall = Numtarget
trigger1 = Time = 0
trigger1 = Target,stateno != [120,160]
trigger1 = PrevStateNo = 3000 || PrevStateNo = 3050
value = 35300

[State 15001, Level 4]
type = VarSet
trigger1 = time = 0
var(10) = 7

[State 3050, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Super"
ID = 7500
stateno = 7500
pos = 0,-55
postype = p1
ownpal = 1
supermovetime = 9999
persistent = 0

[State 15001, Super A]
type = SuperPause
trigger1 = Time = 0
time = 45
anim = -1
sound = s7, 0
poweradd = -3000
darken = 0
p2defmul = 1

[State 15001, 1]
type = HitDef
Trigger1 = Time = 1
attr = S, HT
hitflag = MAF
guardflag = M
damage = 0,5
priority = 1, Miss
sparkno = -1
guardflag = MA
p1sprpriority = 2
p1facing = 1
sparkno = -1
guard.sparkno = S7911
guardsound = S6, 0
sparkxy = -5, -30
p2facing = -1
p1stateno = 15002
p2stateno = 15003
guard.dist = 999
fall = 1
numhits = 0
guard.sparkno = -1

[State 15001, ChangeStateFail]
type = ChangeState
trigger1 = Time >= 30
value = 0
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 15002] ;I STILL Put this as revenge
type = S
movetype = A
physics = N
velset = 0, 0
anim = 15002
ctrl = 0

[State 15003, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 15003, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 15002, StopTehMusic]
type = PlaySnd
trigger1 = Time = 0
value = S15001,0
volume = 255
channel = 6
freqmul = 1.0
loop = 1
abspan = 0

[State 15002, StopSnd]
type = StopSnd
trigger1 = Time >= (ifelse(Var(17) = 0, 480, 5400))
channel = 6
ignorehitpause = 1

[State 15002, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0 || AnimElemTime(8) = 0
value = S5,2

[State 15002, HitAdd]
type = HitAdd
trigger1 = AnimElemTime(3) = 0 || AnimElemTime(8) = 0
value = 1

[State 15002, Helper]
type = Helper
trigger1 = AnimElemTime(3) = 0 || AnimElemTime(8) = 0
helpertype = normal
name = "Super Hit Spark"
ID = 7930
stateno = 7930
postype = p1
pos = 0,-10
ownpal = 1
supermovetime = 9999

[State 15002, Explod]
type = Explod
trigger1 = AnimElemTime(3) = 0 || AnimElemTime(8) = 0
anim = 7930+random%8
ID = 7930
pos = 0,-10
postype = p2
facing = 1
bindtime = 1
random = 15,0
removetime = -2
ontop = 1
ownpal = 1

[State 15002, EnvShake]
type = EnvShake
trigger1 = AnimElemTime(3) = 0 || AnimElemTime(8) = 0
time = 12
freq = 130
ampl = -8

[State 15002, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElemTime(3) = 0 || AnimElemTime(8) = 0
value = -10
kill = 0

[State 15002, TargetState]
type = TargetState
trigger1 = AnimElemTime(3) = 0 || AnimElemTime(8) = 0
value = 15003

[State 15002, TargetBind]
type = TargetBind
trigger1 = 1
pos = 0, 0

[State 15002, NOMOREMUSIC]
type = AssertSpecial
trigger1 = 1
flag = nomusic
;flag2 = nokosnd
flag2 = nokoslow
ignorehitpause = 1

[State 15002, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = Time > (ifelse(Var(17) = 0, 480, 5400))
value = -30
kill = 1

[State 15002, Target State]
type = TargetState
trigger1 = Time > (ifelse(Var(17) = 0, 480, 5400)) && !target,Alive
value = 15004

[State 15002, Target State]
type = TargetState
trigger1 = Time > (ifelse(Var(17) = 0, 480, 5400)) && target,Alive
value = 15005

[State 15002, AfterSadicness]
type = ChangeState
trigger1 = Time > (ifelse(Var(17) = 0, 480, 5400))
value = 4895
ctrl = 0

;---------------------------------------------------------------------------
[Statedef 15003] ;Get Hit by thizzz foker
type = L
movetype = H
physics = N
sprpriority = -1
velset = 0, 0
ctrl = 0

[State 15003, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 15003, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 15003, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 15003

[State 15003, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 15003, SelfState]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5050

;---------------------------------------------------------------------------
[Statedef 15004] ;Super Dead
type = L
movetype = H
physics = N
sprpriority = -1
velset = 0, 0
ctrl = 0

[State 15004, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 15004, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 15004, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 15003

[State 15004, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 15004, SelfState]
type = SelfState
trigger1 = Time = 15
value = 5150
ctrl = 0

;---------------------------------------------------------------------------
[Statedef 15005] ;Super End
type = A
movetype = H
physics = N
sprpriority = -1
velset = 2, -25
ctrl = 0

[State 15005, Gravity]
type = Veladd
trigger1 = 1
y = .7

[State 15005, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 15005, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 15005, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 15003

[State 15005, SelfState]
type = EnvShake
trigger1 = Pos Y >= 20 && Vel Y > 0
time = 25
freq = 175
ampl = -5
phase = 30

[State 15005, SelfState]
type = SelfState
trigger1 = Pos Y >= 20 && Vel Y > 0
value = 5100
ctrl = 0

;------------------------------------------------------------------------
;Super Instead of SGS
; This Attack makes Daniel to jump, land, throw the enemy slowy into the air, however, makes the opponent to to fully recharge their super bar
; and gives Daniel the chance to bash, must be used close to the opponent

[Statedef 7777]
type    = A
movetype = A
physics = N
juggle  = 0
velset = 0.5,-8
anim = 9250
ctrl = 0
sprpriority = 2

[State 7777, VarSet]
type = VarSet
trigger1 = time = 0
var(10) = 7

[State 7777, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Super"
ID = 7500
stateno = 7500
pos = 0,-55
postype = p1
ownpal = 1
supermovetime = 9999
persistent = 0

[State 7777, Super A]
type = SuperPause
trigger1 = Time = 0
time = 60
darken = 0
movetime = 30
anim = -1
sound = s7, 0
poweradd = -4000
p2defmul = 1

[State 7777, VelAdd]
type = VelAdd
trigger1 = Pos Y < 0
x = 0
y = 0.15

[State 7777, HitDef]
type = HitDef
trigger1 = Vel Y > 0 && Pos Y >= -10
attr = S,HA
hitflag = HAFLD
guardflag = L
affectteam = B
animtype = DiAgUp
priority = 7,Hit
damage = 100
pausetime = 40, 30
sparkno = S7930+random%8
guard.sparkno = S7911
sparkxy = 0+random&4,-5
hitsound = S5,9
guardsound = S6,0
ground.type = Low
ground.slide = 0
ground.hit = 200
fall = 1
air.hittime = 20
yaccel = 0.1
ground.velocity = -9, -8
air.velocity = -9, -8
sprpriority = 1
fall.recovertime = 0
fall.damage = 50
down.bounce = 1
kill = 0
fall.kill = 0
recover = 0
fall.recover = 0
numhits = 1
getpower = 0,0
givepower = 0,0
envshake.time = 15
envshake.freq = 160
envshake.ampl = 8
envshake.phase = 0
fall.envshake.time = 15
fall.envshake.freq = 160
fall.envshake.ampl = 10
fall.envshake.phase = 0

[State 7777, VelSet]
type = VelSet
trigger1 = Vel Y > 0 && Pos Y >= 0
x = 0
y = 0

[State 7777, ChangeState]
type = ChangeState
trigger1 = MoVeHIT
value = 7778
ctrl = 0

[State 7777, Hit By Supers only]
type = NotHitBy
trigger1 = 1
value = SCA, NA, SA, NP, SP, NT, ST

[State 7777, ChangeState]
type = ChangeState
trigger1 = Vel Y >= 0 && Pos Y >= 0 ;Safety
value = 0
ctrl = 1

[StateDef 7778]
type = A
movetype= A
physics = N
juggle  = 1
velset = 0,0
ctrl = 0
anim = 7778
sprpriority = 2

[State 7778, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nojugglecheck ;You may never know

[State 7778, AngleDraw]
type = AngleDraw
trigger1 = 1
value = -25

[State 7778, VelSet]
type = VelSet
trigger1 = Time = 0
x = (P2Dist X)/4.5
y = ((P2Dist Y)/4.5)

[State 7778, VelocitySet]
type = VelSet
trigger1 = UniqHitCount = 3
x = (P2Dist X)/2
y = ((P2Dist Y)/2)

[State 7778, HitDef]
type = HitDef
trigger1 = UniqHitCount <= 2
attr = A, HA
damage = 102
animtype = DiagUP
guardflag =
hitflag = MAFLD+
priority = 7, Hit
pausetime = 90, 60
sparkno = S7930+random%8
guard.sparkno = S7911
sparkxy = 0+random%4,-5
hitsound = S5, 9
guardsound = S6, 0
ground.type = High
ground.slidetime = 8
ground.hittime  = 999
getpower = 0, 0
givepower = 1000, 1000
fall = 1
kill = 0
ground.velocity = -2*(UniqHitCount*2), -5*(UniqHitCount*2)
air.velocity = -2*(UniqHitCount*2), -5*(UniqHitCount*2)
airguard.velocity = -1.9*UniqHitCount,-.4*UniqHitCount
yaccel = .05
recover = 0
fall.recover = 0
air.type = High
air.hittime = 999
air.recovertime = 0
fall.recovertime = 0

[State 7778, HitDef]
type = HitDef
trigger1 = UniqHitCount = 3
attr = A, HA
damage = 52
animtype = Up
guardflag =
hitflag = MAFLD+
priority = 7, Hit
pausetime = 75, 60
sparkno = S7930+random%8
guard.sparkno = S7911
sparkxy = 0+random&4,-5
hitsound = S5, 9
kill = 1
getpower = 0, 0
givepower = 1000, 1000
guardsound = S6, 0
ground.type = High
ground.slidetime = 8
ground.hittime  = 30
fall = 1
recover = 0
fall.recover = 0
ground.velocity = -20, 20
air.velocity = -20, 50
airguard.velocity = -1.9,-.4
yaccel = .9
down.bounce = 1
air.type = High
air.hittime = 12
fall.recovertime = 0

[State 7778, VelSetHits]
type = VelSet
trigger1 = MoveHit && UniqHitCount <= 2
x = 2*(UniqHitCount*2)
y = -5*(UniqHitCount*2)

[State 7778, Change]
type = ChangeState
trigger1 = UniqHitCount >= 4
trigger2 = Pos Y <= -3222 ;Safety
value = 9000 ;Dunno why I always change to super jump State

[State 7778, ScreenBound]
type = ScreenBound
trigger1 = 1
movecamera = 0, 0

[State 99000, 7] ;Safety
type = PosSet
trigger1 = Vel Y > 0 && Pos Y >= 0
y = 0

[State 99000, 7] ;Safety
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 0
ctrl = 1

;Hyper Cherry Summon, Cherry's Kick Smash?
[Statedef 3269]
type    = S
movetype= I
physics = S
velset = 0,0
anim = 7888 ;Summon Anim
ctrl = 0
sprpriority = 2

[State 3269, Hyper Summon]
type = Helper
trigger1 = AnimElem = 4
helpertype = normal
name = "Cherry"
ID = 14002
stateno = 14000
postype = back
pos = -40,0
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 50

[State 3269, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 4012]
type    = S
movetype= I
physics = S
velset = 0,0
anim = 4012
ctrl = 0
sprpriority = 2
poweradd = -2000

[State 4012, Spawn Minamo]
type = Helper
trigger1 = !Time
helpertype = normal
name = "Minamo"
ID = 4013
stateno = 4013
pos = -32,0
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 69

[State 4012, Change into an attack] ;For the player to guard
type = StateTypeSet
trigger1 = AnimElemTime(10) = 0
movetype = A

[State 4012, Change into an aereal state]
type = StateTypeSet
trigger1 = AnimElemTime(12) = 0
statetype = A
physics = N

[State 4012, Run]
type = VelSet
trigger1 = AnimElemTime(12) >= 0
x = 4

[State 4012, Run]
type = VelSet
trigger1 = AnimElemTime(12) = 0
y = -8.5

[State 4012, VelAdd]
type = VelAdd
trigger1 = statetype = A
y = 0.5

[State 4012, Funky After Images]
type = AfterImage
trigger1 = Time = 0
time = 2
length = 8
paladd = 0,255,0
timegap = 1
framegap = 2
trans = add

[State 4012, AfterImages]
type = AfterImageTime
trigger1 = Time
time = 2

[State 4012, Pause]
type = Pause
trigger1 = Time = 0
time = 60
movetime = 60
pausebg = 1
endcmdbuftime = 20

[State 4012, Helper]
type = Helper
trigger1 = AnimElem = 5
helpertype = normal
name = "Super"
ID = 7500
stateno = 7500
pos = 0,-80
postype = p1
ownpal = 1
supermovetime = 9999
persistent = 0

[State 3050, Level 2]
type = VarSet
trigger1 = time = 0
var(10) = 6

[State 4012, Super Pause]
type = SuperPause
trigger1 = AnimElem = 5
time = 45
anim = -1
sound = s7,0
darken = 0
p2defmul = 1

[State 4012, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 4012, Bound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 4012, Fail/Success]
type = ChangeState
trigger1 = Statetype = A && (Pos Y >= 0 && Vel Y > 0) ;Time >= 102
trigger2 = Helper(4013), stateno = 4016
trigger3 = !NumHelper(4013)
value = 4015
ctrl = 0
ignorehitpause = 1

[Statedef 4015]
type = A
movetype = H
physics = N
ctrl = 0
velset = -10,-5
anim = 5070

[State 4015, Hit]
type = PlaySnd
trigger1 = Time = 0
value = S666,0

[State 4015, Gravity]
type = VelAdd
trigger1 = 1
y = .45

[State 4015, Bounce]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 16
value = 5100 ;HIT_BOUNCE

;Steamroller Jump
[Statedef 4500]
type = A
movetype = A
physics = N
ctrl = 0
anim = 10250
sprpriority = 2

[State 3000, Super Cancel]
type = Helper
triggerall = Time = 0
trigger1 = prevstateno=500 || prevstateno=502 || prevstateno=503 ;Scythe
trigger2 = prevstateno=1788 || prevstateno=1790 || prevstateno= 1792 || prevstateno= 1794 ;Fan-Whirlwind
trigger3 = prevstateno=1436 || prevstateno=1440 || prevstateno= 1441 || prevstateno=1444 ;Pounce
trigger4 = (prevstateno=[1433,1435]) ;Headbutt
persistent = 0
id = 30005
name = "Super Cancel Helper"
pos = 0,-48
postype = P1
stateno = 2310
helpertype = normal
supermove = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999


[State 3000, Dream Cancel]
type = Helper
triggerall = Time = 0
trigger1 = (prevstateno=3050||prevstateno=4222||prevstateno=4804)
persistent = 0
id = 30005
name = "Dream Cancel Helper"
pos = 0,-48
postype = P1
stateno = 2320
helpertype = normal
supermove = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 0, TargetState]
type = TargetState
trigger1 = prevstateno=3050 && Time=0
value = 35301
ID = 3050

[State 65002, Substract Power]
type = PowerAdd
trigger1 = !(var(24)>=0 && var(28)=1) && Time=0
value = -2000+((prevstateno=3050||prevstateno=4222||prevstateno=4804)*-1000)

[State 4500, Up!]
type = VelSet
trigger1 = AnimElemTime(2) = 0
x = 0
y = -20

[State 4500, NotHitBy]
type = NotHitBy
trigger1 = 1
value = ,NA,SA,HA,NP,SP,HP

[State 4500, Helper]
type = Helper
trigger1 = Time = 0
helpertype = normal
name = "Super"
ID = 7500
stateno = 7500
pos = 0,-20
postype = p1
ownpal = 1
supermovetime = 9999
persistent = 0

[State 4500, Level 4]
type = VarSet
trigger1 = time = 0
var(10) = 6

;Super Cancel If Cancelled from: Any of the Two Hits of the 2-Hit Combo.
;                                From (Ground) Scythe.
[State 4500, Super]
type = Helper
trigger1 = Time = 0
trigger1 = PrevStateNo = 1600 || PrevStateNo = 1601 || PrevStateNo = 500
persistent = 0
id = 30005
name = "Super Cancel Helper"
pos = 0,-48
postype = P1
stateno = 2310
helpertype = normal
supermove = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

;Dream Cancel If Cancelled from: Kick Smash.
;                                Punch Smash.
[State 3000, Super]
type = Helper
trigger1 = Time = 0
trigger1 = PrevStateNo = 3000 || PrevStateNo = 3050
persistent = 0
id = 30005
name = "DREAM Cancel Helper"
pos = 0,-48
postype = P1
stateno = 2320
helpertype = normal
supermove = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 0, Substract Seconds]
type = VarAdd
trigger1 = (var(24)>=0 && var(28)=1) && Time=0
var(24) = -240

[State 4500, Super Pause]
type = SuperPause
trigger1 = Time = 0
time = 45
movetime = 0
anim = -1
sound = s7,0
darken = 0
p2defmul = 1+ifelse(prevstateno=3050,0.6,ifelse((prevstateno=4222||prevstateno=4804),0.7,0))

[State 4500, Stop Following];Think of Tall stages
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 4500, Truck Land!]
type = HitDef
trigger1 = Time = 0
attr = S, HT
damage = 10,2
pausetime = 1,4
guardflag = MA
hitflag = MAF
priority = 2,Dodge
sparkno = -1
guard.sparkno = S7911
sparkxy = -5,-40
hitsound = S500,4
guardsound = S6,0
guard.dist = 320
numhits = 1
p2stateno = 99056
fall.velocity = -4,-9
down.bounce = 1
hitonce = 1
p2facing = 1
fall = 1
kill = 0
ID = 15000

[State 4500, Done]
type = ChangeState
trigger1 = ScreenPos Y <= -400
value = 4501
ctrl = 0

;Truck Is Falling along with you
[Statedef 4501]
type = A
movetype = A
physics = N
ctrl = 0
anim = 10251
velset = 0,0
sprpriority = 2
facep2 = 1
hitdefpersist = 1

[State 4501, PosSet]
type = PosAdd
trigger1 = Time = 45
x = p2dist X-30

;Generated by Fighter Factory PalFX Editor
[State 4501, Kick ass Background]
type = BGPalFX
trigger1 = Time = 0
time = 45
add = 255,100,255
mul = 99,37,99
sinadd = 255,-85,33,22
invertall = 0
color = 210

[State 4501, Don't Follow]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 4501, Pause]
type = Pause
trigger1 = time = 0
time = 45
movetime = 45
pausebg = 0

[State 4501, Kabewm]
type = PlaySnd
triggerall = !var(38)
trigger1 = time = 0
value = S4500,0
volume = 255

[State 4501, Portrait]
type = Explod
trigger1 = Time = 0
Anim = 8666
id = 8666
pos = -30, 380
postype = back
ownpal = 1
bindtime = -1
pausemovetime = 99999999
supermove = 1
sprpriority = -1
removeongethit = 1
removetime = 45
scale=0.5,0.5

[State 4501, Portrait Modification]
type = ModifyExplod
trigger1 = Numexplod(8666)
Id = 8666
postype = back
pos = ceil(-20+((random%16)*ifelse((time%6=[1,3]),-1,1))),ceil(170+((random%16)*ifelse((time%6=[1,3]),-1,1)))
scale = ifelse(time>=33,2,.35+((time)*.05))*(1.07/2),ifelse(time>=33,2,.35+((time)*.05))*(1.07/2)

[State 4501, EnvShake]
type = EnvShake
trigger1 = Vel Y > 0 && Pos Y >= -143
time = 90
freq = 150
ampl = -6

[State 4501, Create That Truck]
type = Helper
trigger1 = Time = 0
helpertype = normal
name = "Truck"
ID = 15001
stateno = 19997
pos = 35,-10
facing = 1
keyctrl = 0
ownpal = 1
size.xscale=1
size.yscale=1

[State 4501, Kabewm]
type = PlaySnd
trigger1 = Vel Y > 0 && Pos Y >= -143
value = S500,3
volume = 888

[State 4501, Fall With That Truck]
type = VelSet
trigger1 = Time = 45
x = 0
y = 22

[State 4501, If Not Switched]
type = ChangeAnim
trigger1 = Anim != 10252 && (Vel Y >= 0 && Pos Y >= -130)
value = 10252

[State 4501, Stop]
type = VelSet
trigger1 = Vel Y >= 0 && Pos Y >= -130
x = 0
y = 0

[State 4501, Successful Hit]
type = ChangeState
trigger1 = Anim = 10252 && Animtime = 0 && MoveHit
value = 4502
ctrl = 0

[State 4501, TargetBind]
type = TargetBind
trigger1 = MoveHit
pos = 0,120
ignorehitpause = 1

[State 4501, Failed]
type = ChangeState
trigger1 = Anim = 10252 && Animtime = 0 && !MoveHit
value = 4503
ctrl = 0

;Using The Truck To F*** You Up!
[Statedef 4502]
type = S
movetype = I
physics = N
ctrl = 0
anim = 10253
sprpriority = 2

[State 4502, Laugh]
type = PlaySnd
triggerall = !var(38)
trigger1 = AnimElemTime(2) = 0
value = S10250,0
volume = 255
channel = 2

[State 4502, "Duehh..."]
type = PlaySnd
triggerall = !var(38)
trigger1 = AnimElemTime(42) = 0
value = S204,0
volume = 255
channel = 2

[State 4502, "Grrr....."]
type = PlaySnd
triggerall = !var(38)
trigger1 = AnimElemTime(52) = 20
value = S96000,5
volume = 255
channel = 2

[State 4502, "Grrr....."]
type = PlaySnd
triggerall = !var(38)
trigger1 = AnimElemTime(60) = 2
value = S10250,2
volume = 255
channel = 2

[State 4502, FX]
type = PlaySnd
trigger1 = AnimElemTime(42) = 0
value = S2435,0
volume = 255
channel = 3

[State 4502, Hurt Sounds]
type = PlaySnd
trigger1 = AnimElemTime(52) = 0
trigger2 = AnimElemTime(59) = 0 || AnimElemTime(61) = 0
trigger3 = AnimElemTime(64) = 0 || AnimElemTime(66) = 0
trigger4 = AnimElemTime(69) = 0 || AnimElemTime(71) = 0
trigger5 = AnimElemTime(74) = 0 || AnimElemTime(76) = 0
trigger6 = AnimElemTime(79) = 0 || AnimElemTime(81) = 0
trigger7 = AnimElemTime(84) = 0 || AnimElemTime(86) = 0
trigger8 = AnimElemTime(89) = 0 || AnimElemTime(91) = 0
trigger9 = AnimElemTime(94) = 0 || AnimElemTime(96) = 0
trigger10 = AnimElemTime(99) = 0 || AnimElemTime(101) = 0
trigger11 = AnimElemTime(104) = 0 || AnimElemTime(106) = 0
trigger12 = AnimElemTime(109) = 0 || AnimElemTime(111) = 0
trigger13 = AnimElemTime(114) = 0 || AnimElemTime(116) = 0
trigger14 = AnimElemTime(119) = 0 || AnimElemTime(121) = 0
trigger15 = AnimElemTime(124) = 0 || AnimElemTime(126) = 0
trigger16 = AnimElemTime(129) = 0 || AnimElemTime(131) = 0
value = S5,6
channel = 6

[State 4502, Hurt Sounds]
type = PlaySnd
trigger1 = AnimElemTime(141) = 0
value = S5,9
channel = 6

[State 4502, EnvShake]
type = EnvShake
trigger1 = AnimElemTime(52) = 0
trigger2 = AnimElemTime(59) = 0 || AnimElemTime(61) = 0
trigger3 = AnimElemTime(64) = 0 || AnimElemTime(66) = 0
trigger4 = AnimElemTime(69) = 0 || AnimElemTime(71) = 0
trigger5 = AnimElemTime(74) = 0 || AnimElemTime(76) = 0
trigger6 = AnimElemTime(79) = 0 || AnimElemTime(81) = 0
trigger7 = AnimElemTime(84) = 0 || AnimElemTime(86) = 0
trigger8 = AnimElemTime(89) = 0 || AnimElemTime(91) = 0
trigger9 = AnimElemTime(94) = 0 || AnimElemTime(96) = 0
trigger10 = AnimElemTime(99) = 0 || AnimElemTime(101) = 0
trigger11 = AnimElemTime(104) = 0 || AnimElemTime(106) = 0
trigger12 = AnimElemTime(109) = 0 || AnimElemTime(111) = 0
trigger13 = AnimElemTime(114) = 0 || AnimElemTime(116) = 0
trigger14 = AnimElemTime(119) = 0 || AnimElemTime(121) = 0
trigger15 = AnimElemTime(124) = 0 || AnimElemTime(126) = 0
trigger16 = AnimElemTime(129) = 0 || AnimElemTime(131) = 0
trigger17 = animelemtime(141) = 0
time = 15
freq = 200
ampl = -5

[State 4502, Explods]
type = Explod
trigger1 = AnimElemTime(52) = 0
trigger2 = AnimElemTime(59) = 0 || AnimElemTime(61) = 0
trigger3 = AnimElemTime(64) = 0 || AnimElemTime(66) = 0
trigger4 = AnimElemTime(69) = 0 || AnimElemTime(71) = 0
trigger5 = AnimElemTime(74) = 0 || AnimElemTime(76) = 0
trigger6 = AnimElemTime(79) = 0 || AnimElemTime(81) = 0
trigger7 = AnimElemTime(84) = 0 || AnimElemTime(86) = 0
trigger8 = AnimElemTime(89) = 0 || AnimElemTime(91) = 0
trigger9 = AnimElemTime(94) = 0 || AnimElemTime(96) = 0
trigger10 = AnimElemTime(99) = 0 || AnimElemTime(101) = 0
trigger11 = AnimElemTime(104) = 0 || AnimElemTime(106) = 0
trigger12 = AnimElemTime(109) = 0 || AnimElemTime(111) = 0
trigger13 = AnimElemTime(114) = 0 || AnimElemTime(116) = 0
trigger14 = AnimElemTime(119) = 0 || AnimElemTime(121) = 0
trigger15 = AnimElemTime(124) = 0 || AnimElemTime(126) = 0
trigger16 = AnimElemTime(129) = 0 || AnimElemTime(131) = 0
trigger17 = animelemtime(141) = 0
anim = 7930+random%8
pos = 0,100
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 4502, "Combo"]
type = HitAdd
trigger1 = AnimElemTime(52) = 0
trigger2 = AnimElemTime(59) = 0 || AnimElemTime(61) = 0
trigger3 = AnimElemTime(64) = 0 || AnimElemTime(66) = 0
trigger4 = AnimElemTime(69) = 0 || AnimElemTime(71) = 0
trigger5 = AnimElemTime(74) = 0 || AnimElemTime(76) = 0
trigger6 = AnimElemTime(79) = 0 || AnimElemTime(81) = 0
trigger7 = AnimElemTime(84) = 0 || AnimElemTime(86) = 0
trigger8 = AnimElemTime(89) = 0 || AnimElemTime(91) = 0
trigger9 = AnimElemTime(94) = 0 || AnimElemTime(96) = 0
trigger10 = AnimElemTime(99) = 0 || AnimElemTime(101) = 0
trigger11 = AnimElemTime(104) = 0 || AnimElemTime(106) = 0
trigger12 = AnimElemTime(109) = 0 || AnimElemTime(111) = 0
trigger13 = AnimElemTime(114) = 0 || AnimElemTime(116) = 0
trigger14 = AnimElemTime(119) = 0 || AnimElemTime(121) = 0
trigger15 = AnimElemTime(124) = 0 || AnimElemTime(126) = 0
trigger16 = AnimElemTime(129) = 0 || AnimElemTime(131) = 0
trigger17 = animelemtime(141) = 0
value = 1

[State -2, Score] ;HAS MY OWN TWEAKS
type = Varadd
triggerall=NumHelper(80000)
triggerall = helper(80000),stateno=80000 && (helper(80000),var(0)!=[1,119])
trigger1 = AnimElemTime(52) = 0
trigger2 = AnimElemTime(59) = 0 || AnimElemTime(61) = 0
trigger3 = AnimElemTime(64) = 0 || AnimElemTime(66) = 0
trigger4 = AnimElemTime(69) = 0 || AnimElemTime(71) = 0
trigger5 = AnimElemTime(74) = 0 || AnimElemTime(76) = 0
trigger6 = AnimElemTime(79) = 0 || AnimElemTime(81) = 0
trigger7 = AnimElemTime(84) = 0 || AnimElemTime(86) = 0
trigger8 = AnimElemTime(89) = 0 || AnimElemTime(91) = 0
trigger9 = AnimElemTime(94) = 0 || AnimElemTime(96) = 0
trigger10 = AnimElemTime(99) = 0 || AnimElemTime(101) = 0
trigger11 = AnimElemTime(104) = 0 || AnimElemTime(106) = 0
trigger12 = AnimElemTime(109) = 0 || AnimElemTime(111) = 0
trigger13 = AnimElemTime(114) = 0 || AnimElemTime(116) = 0
trigger14 = AnimElemTime(119) = 0 || AnimElemTime(121) = 0
trigger15 = AnimElemTime(124) = 0 || AnimElemTime(126) = 0
trigger16 = AnimElemTime(129) = 0 || AnimElemTime(131) = 0
trigger17 = animelemtime(141) = 0
var(34) = 1
ignorehitpause = 1

[State -2, Score] ;LOLAZO
type = Varadd
trigger1 = AnimElemTime(52) = 0
trigger2 = AnimElemTime(59) = 0 || AnimElemTime(61) = 0
trigger3 = AnimElemTime(64) = 0 || AnimElemTime(66) = 0
trigger4 = AnimElemTime(69) = 0 || AnimElemTime(71) = 0
trigger5 = AnimElemTime(74) = 0 || AnimElemTime(76) = 0
trigger6 = AnimElemTime(79) = 0 || AnimElemTime(81) = 0
trigger7 = AnimElemTime(84) = 0 || AnimElemTime(86) = 0
trigger8 = AnimElemTime(89) = 0 || AnimElemTime(91) = 0
trigger9 = AnimElemTime(94) = 0 || AnimElemTime(96) = 0
trigger10 = AnimElemTime(99) = 0 || AnimElemTime(101) = 0
trigger11 = AnimElemTime(104) = 0 || AnimElemTime(106) = 0
trigger12 = AnimElemTime(109) = 0 || AnimElemTime(111) = 0
trigger13 = AnimElemTime(114) = 0 || AnimElemTime(116) = 0
trigger14 = AnimElemTime(119) = 0 || AnimElemTime(121) = 0
trigger15 = AnimElemTime(124) = 0 || AnimElemTime(126) = 0
trigger16 = AnimElemTime(129) = 0 || AnimElemTime(131) = 0
trigger17 = animelemtime(141) = 0
var(48) = 1

[State 4502, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(141) < 0
pos = 0,120

[State 1100, Helper]
type = Helper
trigger1 = AnimElemTime (141) = -2
triggerall = NumHelper(6160) < 1
helpertype = normal
name = "P2 Flames"
ID = 6160
stateno = 6160
pos = 0,-57
postype = p2
facing = 1
keyctrl = 0
ownpal = 1

[State 4502, Damage]
type = TargetLifeAdd
trigger1 = AnimElemTime(52) = 0
trigger2 = AnimElemTime(59) = 0 || AnimElemTime(61) = 0
trigger3 = AnimElemTime(64) = 0 || AnimElemTime(66) = 0
trigger4 = AnimElemTime(69) = 0 || AnimElemTime(71) = 0
trigger5 = AnimElemTime(74) = 0 || AnimElemTime(76) = 0
trigger6 = AnimElemTime(79) = 0 || AnimElemTime(81) = 0
trigger7 = AnimElemTime(84) = 0 || AnimElemTime(86) = 0
trigger8 = AnimElemTime(89) = 0 || AnimElemTime(91) = 0
trigger9 = AnimElemTime(94) = 0 || AnimElemTime(96) = 0
trigger10 = AnimElemTime(99) = 0 || AnimElemTime(101) = 0
trigger11 = AnimElemTime(104) = 0 || AnimElemTime(106) = 0
trigger12 = AnimElemTime(109) = 0 || AnimElemTime(111) = 0
trigger13 = AnimElemTime(114) = 0 || AnimElemTime(116) = 0
trigger14 = AnimElemTime(119) = 0 || AnimElemTime(121) = 0
trigger15 = AnimElemTime(124) = 0 || AnimElemTime(126) = 0
trigger16 = AnimElemTime(129) = 0 || AnimElemTime(131) = 0
value = -4
kill = 0
absolute = 0

[State 4502, Killer Damage]
type = TargetLifeAdd
trigger1 = AnimElemTime(141) = 0
value = -178
kill = 1
absolute = 0

[State 4502, Prevent From Timing Out]
type = AssertSpecial
trigger1 = 1
flag = timerfreeze
ignorehitpause = 1

[State 4502, Dead Switch (Target)]
type = TargetState
triggerall = NumTarget(15000)
trigger1 = AnimElemTime(142) = 0 && Win
value = 3059 ;Lying Dead

[State 4502, Dead Switch (Self)]
type = ChangeState
trigger1 = AnimTime = 0
value = 184 ;Wry
ctrl=0

[State 4502, WHOA]
type = PlaySnd
triggerall = !var(38)
trigger1 = AnimElemTime(142) = 0 && !Win
value = S666,0
volume = 255
channel = 2

[State 4502, Not Dead Switch (Target)]
type = TargetState
triggerall = NumTarget(15000)
trigger1 = AnimElemTime(142) = 0 && !Win
value = 4056 ;Towards Wall (Fire)

[State 4502, Not Dead Switch (Self)]
type = ChangeState
triggerall = NumTarget(15000)
trigger1 = AnimElemTime(142) = 0 && !Win
value = 4503 ;Jump

[Statedef 4503]
type = A
movetype = I
physics = N
ctrl = 0
anim = 43
sprpriority = 2
velset = -16,-8

[State 4503, Gravity]
type = Gravity
trigger1 = 1

[State 4503, Don't Follow]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 4503, Dash At End]
type = ChangeState
trigger1 = Screenpos X <= 20 || Screenpos X >= 300
trigger1 = Vel Y >= 0 && Pos Y >= 0
value = 4505
ctrl = 0

[State 4503, End]
type = ChangeState
trigger1 = Screenpos X > 20 && Screenpos X < 300
trigger1 = Vel Y >= 0 && Pos Y >= 0
value = 52
ctrl = 0

[Statedef 4505]
type = S
movetype = I
physics = N
ctrl = 0
anim = 101
velset = 8,0

[State 3055, PosSet]
type = PosSet
trigger1 = Vel Y >= 0 && Pos Y >= 0
y = 0

[State 3055, Run]
type = VelSet
trigger1 = Time = 0
x = 8

[State 3055, No, Sigas...]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 3055, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,AA,AP,AT

[State 3055, Stop]
type = ChangeState
trigger1 = ScreenPos X >= 100 && ScreenPos X <= 220
value = 52
ctrl = 0

[Statedef 99056]
type = L
movetype = H
physics = N
ctrl = 0
velset = 0,0 ;Yoink!

[State 99056, On The Floor]
type = ChangeAnim2
trigger1 = Time = 0
value = 5110

[State 99056, Can't Touch This]
type = NotHitBy
trigger1 = 1
value = SCA

[State 99056, Can't Push This]
type = PlayerPush
trigger1 = 1
value = 0

[Statedef 4056] ;Through The Air
type = A
movetype = H
physics = N
ctrl = 0

[State 4056, PalFXWiz]
type = PalFX
trigger1 = Time = 0
time = 120
add = 194,-100,-100
mul = 250,224,120
sinadd = 0,0,0,10
invertall = 0
color = 190

[State 4056, Let's Fly Away]
type = ChangeAnim2
trigger1 = Time = 0
value = 4057

[State 4056, Fly]
type = VelSet
trigger1 = Time = 0
x = -7
y = 0 ;<--- Added This Line

[State 4056, Follow The First Few Ticks]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = (Time < 25),0

[State 4056, Hit Wall]
type = ChangeState
trigger1 = Vel X > 0 && FrontEdgeBodyDist <= 3
trigger2 = Vel X < 0 && BackEdgeBodyDist <= 3
value = 4058 ;Turn And Fall
ctrl = 0

[Statedef 4057] ;Through The Air
type = A
movetype = H
physics = N
ctrl = 0

[State 4057, Let's Fly Away]
type = ChangeAnim2
trigger1 = Time = 0
value = 4057

[State 4057, Fly]
type = VelSet
trigger1 = Time = 0
x = -7
y = 0 ;<--- Added This Line

[State 4057, Follow The First Few Ticks]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = (Time < 25),0

[State 4057, Hit Wall]
type = ChangeState
trigger1 = Vel X > 0 && FrontEdgeBodyDist <= 3
trigger2 = Vel X < 0 && BackEdgeBodyDist <= 3
value = 4058 ;Turn And Fall
ctrl = 0

[Statedef 4058]
type = A
movetype = H
physics = N
ctrl = 0

[State 4058, Wheeee!!]
type = ChangeAnim2
trigger1 = Time = 0
value = 4058

[State 4058, Turn immediatly]
type = Turn
trigger1 = Time = 0

[State 4058, VelSet]
type = VelSet
trigger1 = Time = 0
x = -3.5
y = -7

[State 4058, VelAdd]
type = VelAdd
trigger1 = 1
y = .45

[State 4058, Finnally You Can Go To Own States!]
type = SelfState
trigger1 = Vel Y >= 0 && Pos Y >= 10
value = 5100

[Statedef 3059]
type = L
movetype = H
physics = N
ctrl = 0
velset = 0,0 ;Yoink!

[State 3059, DIE]
type = SelfState
trigger1 = Time >= 45
value = 5150
ctrl = 0

;Super Attack End
;This is not a move, but it makes Daniel to retire from a close distance super attack
;So he won't be too cheap (I've managed to get 350 HP of Damage with Punch Smash
;and then an aereal rave kick, so)
[Statedef 4895]
type = A
movetype = I
physics = N
ctrl = 0
anim = 43
sprpriority = 2
velset = -7.1,-4

[State 4895, Gravity]
type = Gravity
trigger1 = 1

[State 4895, Land]
type = ChangeState
trigger1 = Vel Y >= 0 && Pos Y >= 0
value = 52
ctrl = 0

;Newspaper Home-Run Beatdown
[Statedef 4111]
type = S
movetype = A
physics = N
anim = 4111
ctrl = 0
velset = 6,0

[State 4111, Friction]
type = VelMul
trigger1 = 1
x = .8895303

;Super Cancel If Cancelled from: Any of the Two Hits of the 2-Hit Combo.
;                                From (Ground) Scythe.
[State 4110, Super]
type = Helper
trigger1 = Time = 0
trigger1 = PrevStateNo = 1600 || PrevStateNo = 1601 || PrevStateNo = 500
persistent = 0
id = 30005
name = "Super Cancel Helper"
pos = 0,-48
postype = P1
stateno = 2310
helpertype = normal
supermove = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

;Dream Cancel If Cancelled from: Kick Smash.
;                                Punch Smash.
[State 3000, Super]
type = Helper
trigger1 = Time = 0
trigger1 = PrevStateNo = 3000 || PrevStateNo = 3050
persistent = 0
id = 30005
name = "DREAM Cancel Helper"
pos = 0,-48
postype = P1
stateno = 2320
helpertype = normal
supermove = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 3000, Damn Yer Dhreahm Canzer Herpez]
type = TargetState
triggerall = numtarget
trigger1 = Time = 0
trigger1 = Target,stateno != [120,160]
trigger1 = PrevStateNo = 3000 || PrevStateNo = 3050
value = 35300

[State 4111, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Super"
ID = 7500
stateno = 7500
pos = 0,-55
postype = p1
ownpal = 1
supermovetime = 9999
persistent = 0

[State 4111, Level 2]
type = VarSet
trigger1 = time = 0
var(10) = 6

[State 4111, Super Pause]
type = SuperPause
trigger1 = Time = 0
time = 45
anim = -1
sound = s7,0
poweradd = -2000
darken = 0
p2defmul = 1

[State 4111, After Images]
type = AfterImage
trigger1 = AnimElem = 2, 1
paladd = 0,128,0
palmul = 0, 128, 0
trans = add
time = 2

[State 4111, After Images Time]
type = AfterImageTime
trigger1 = AnimElemTime(2) >= 1 && AnimElemTime(31) < 0
time = 2

[State 4111, Fail Whoosh]
type = PlaySnd
trigger1 = AnimElem = 6
value = S1,5
channel = -1

[State 4111, Grab]
type = HitDef
trigger1 = Time = 0
attr = S, HT
guardflag = M
hitflag = MA
priority = 2,Miss
sparkno = -1
sparkxy = -5,-30
guard.sparkno = S7911
hitsound = S800,0
guardsound = s6,0
numhits = 0
pausetime = 0,0
guard.pausetime = 10,10
p1stateno = 4112
p2stateno = 4113
down.bounce = 1
guard.dist = 999
hitonce = 1
p2facing = 1
fall = 1
kill = 0
ID = 4111

[State 4111, Fail]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;If We have a target
[Statedef 4112]
type = S
movetype = I
physics = N
anim = 4112
ctrl = 0
velset = 0,0
sprpriority = 2

[State 4112, Final Damage Sound]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = F7,2

[State 4112, Damage Sounds]
type = PlaySnd
trigger1 = AnimElemTime(15) = 0 || AnimElemTime(21) = 0 || AnimElemTime(27) = 0
trigger2 = AnimElemTime(33) = 0 || AnimElemTime(39) = 0 || AnimElemTime(45) = 0
trigger3 = AnimElemTime(51) = 0 || AnimElemTime(57) = 0 || AnimElemTime(63) = 0
trigger4 = AnimElemTime(69) = 0 || AnimElemTime(75) = 0 || AnimElemTime(81) = 0
trigger5 = AnimElemTime(87) = 0 || AnimElemTime(93) = 0 || AnimElemTime(99) = 0
trigger6 = AnimElemTime(105) = 0 || AnimElemTime(111) = 0 || AnimElemTime(117) = 0
trigger7 = AnimElemTime(123) = 0 || AnimElemTime(129) = 0 || AnimElemTime(135) = 0
trigger8 = AnimElemTime(141) = 0
value = S5,2

[State 4112, Final Damage Sound]
type = PlaySnd
trigger1 = AnimElemTime(151) = 0
value = S5,9

[State 4112, Combo]
type = HitAdd
trigger1 = AnimElemTime(15) = 0 || AnimElemTime(21) = 0 || AnimElemTime(27) = 0
trigger2 = AnimElemTime(33) = 0 || AnimElemTime(39) = 0 || AnimElemTime(45) = 0
trigger3 = AnimElemTime(51) = 0 || AnimElemTime(57) = 0 || AnimElemTime(63) = 0
trigger4 = AnimElemTime(69) = 0 || AnimElemTime(75) = 0 || AnimElemTime(81) = 0
trigger5 = AnimElemTime(87) = 0 || AnimElemTime(93) = 0 || AnimElemTime(99) = 0
trigger6 = AnimElemTime(105) = 0 || AnimElemTime(111) = 0 || AnimElemTime(117) = 0
trigger7 = AnimElemTime(123) = 0 || AnimElemTime(129) = 0 || AnimElemTime(135) = 0
trigger8 = AnimElemTime(141) = 0 || AnimElemTime(151) = 0
value = 1

[State 4112, Player Push Is Off]
type = PlayerPush
trigger1 = 1
value = 0

[State 2502, Helper]
type = Helper
trigger1 = AnimElemTime(15) = 0 || AnimElemTime(21) = 0 || AnimElemTime(27) = 0
trigger2 = AnimElemTime(33) = 0 || AnimElemTime(39) = 0 || AnimElemTime(45) = 0
trigger3 = AnimElemTime(51) = 0 || AnimElemTime(57) = 0 || AnimElemTime(63) = 0
trigger4 = AnimElemTime(69) = 0 || AnimElemTime(75) = 0 || AnimElemTime(81) = 0
trigger5 = AnimElemTime(87) = 0 || AnimElemTime(93) = 0 || AnimElemTime(99) = 0
trigger6 = AnimElemTime(105) = 0 || AnimElemTime(111) = 0 || AnimElemTime(117) = 0
trigger7 = AnimElemTime(123) = 0 || AnimElemTime(129) = 0 || AnimElemTime(135) = 0
trigger8 = AnimElemTime(141) = 0
helpertype = normal
name = "Super Hit Spark"
ID = 7930
stateno = ifelse((AnimElemTime(141) = 0),7930,8696)
postype = p1
pos = 11,0
ownpal = 1
supermovetime = 9999

[State 4112, HitSparks A]
type = Null;Explod
trigger1 = AnimElemTime(15) = 0 || AnimElemTime(21) = 0 || AnimElemTime(27) = 0
trigger2 = AnimElemTime(33) = 0 || AnimElemTime(39) = 0 || AnimElemTime(45) = 0
trigger3 = AnimElemTime(51) = 0 || AnimElemTime(57) = 0 || AnimElemTime(63) = 0
trigger4 = AnimElemTime(69) = 0 || AnimElemTime(75) = 0 || AnimElemTime(81) = 0
trigger5 = AnimElemTime(87) = 0 || AnimElemTime(93) = 0 || AnimElemTime(99) = 0
trigger6 = AnimElemTime(105) = 0 || AnimElemTime(111) = 0 || AnimElemTime(117) = 0
trigger7 = AnimElemTime(123) = 0 || AnimElemTime(129) = 0 || AnimElemTime(135) = 0
trigger8 = AnimElemTime(141) = 0
anim = 7930+random%8
ID = 4112
pos = 11,0
facing = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = 1,1
ontop = 1
ownpal = 1
removeongethit = 0

[State 4112, How Much or How less...]
type = TargetLifeAdd
trigger1 = AnimElemTime(15) = 0 || AnimElemTime(21) = 0 || AnimElemTime(27) = 0
trigger2 = AnimElemTime(33) = 0 || AnimElemTime(39) = 0 || AnimElemTime(45) = 0
trigger3 = AnimElemTime(51) = 0 || AnimElemTime(57) = 0 || AnimElemTime(63) = 0
trigger4 = AnimElemTime(69) = 0 || AnimElemTime(75) = 0 || AnimElemTime(81) = 0
trigger5 = AnimElemTime(87) = 0 || AnimElemTime(93) = 0 || AnimElemTime(99) = 0
trigger6 = AnimElemTime(105) = 0 || AnimElemTime(111) = 0 || AnimElemTime(117) = 0
trigger7 = AnimElemTime(123) = 0 || AnimElemTime(129) = 0 || AnimElemTime(135) = 0
trigger8 = AnimElemTime(141) = 0
value = -5 ;105 HP of Damage to X!
ID = 4111
kill = 0
absolute = 0

[State 4112, Helper]
type = Helper
trigger1 = AnimElemTime(151) = 0
helpertype = normal
name = "Super Hit Spark"
ID = 7930
stateno = 7930
postype = p1
pos = 32,-56
ownpal = 1
supermovetime = 9999

[State 4112, HitSparks B]
type = Null;Explod
trigger1 = AnimElemTime(151) = 0
anim = 7930+random%8
ID = 4112
pos = 32,-56
facing = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = 1,1
ontop = 1
ownpal = 1
removeongethit = 0

[State 4112, EnvShake]
type = EnvShake
trigger1 = AnimElemTime(15) = 0 || AnimElemTime(21) = 0 || AnimElemTime(27) = 0
trigger2 = AnimElemTime(33) = 0 || AnimElemTime(39) = 0 || AnimElemTime(45) = 0
trigger3 = AnimElemTime(51) = 0 || AnimElemTime(57) = 0 || AnimElemTime(63) = 0
trigger4 = AnimElemTime(69) = 0 || AnimElemTime(75) = 0 || AnimElemTime(81) = 0
trigger5 = AnimElemTime(87) = 0 || AnimElemTime(93) = 0 || AnimElemTime(99) = 0
trigger6 = AnimElemTime(105) = 0 || AnimElemTime(111) = 0 || AnimElemTime(117) = 0
trigger7 = AnimElemTime(123) = 0 || AnimElemTime(129) = 0 || AnimElemTime(135) = 0
trigger8 = AnimElemTime(141) = 0 || AnimElemTime(151) = 0
time = 27
freq = 196
ampl = -5

[State 4112, ...depends on the enemy's DEF]
type = TargetLifeAdd
trigger1 = AnimElemTime(151) = 0
value = -175 ;280 HP of Damage to X!
ID = 4111
kill = 1
absolute = 0

[State 4112, Bound 1]
type = TargetBind
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(2) < 0
trigger2 = AnimElemTime(144) = 0
ID = 4111
pos = 33,-84

[State 4112, Bound 2]
type = TargetBind
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
trigger2 = AnimElemTime(143) >= 0 && AnimElemTime(144) < 0
ID = 4111
pos = 35,-46

[State 4112, Bound 3]
type = TargetBind
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(142) < 0
ID = 4111
pos = 16,0

[State 4112, Throw]
type = TargetState
trigger1 = AnimElemTime(144) = 0
ID = 4111
value = 4114

[State 4112, and SMAAASHHH!!!]
type = TargetState
trigger1 = AnimElemTime(151) = 0
ID = 4111
value = 4115

[State 4112, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 4895 ;Big Jump
ctrl = 0

;Get Hit - Lie
[Statedef 4113]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0,0

[State 4113, Custom Anim]
type = ChangeAnim2
trigger1 = Time = 0
value = 4113

[State 4113, Player Push Is Off]
type = PlayerPush
trigger1 = 1
value = 0

;Get Hit - Thrown
[Statedef 4114]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0,0

[State 4114, Thrown Upwards]
type = Velset
trigger1 = Time = 0
x = 0
y = -3 ;Must Take 24 Ticks to fall adequately

[State 4114, Gravity]
type = VelAdd
trigger1 = 1
y = .5

[State 4114, Don't Screw the Attack!]
type = PlayerPush
trigger1 = 1
value = 0

;Get Hit - Home-Run!!!
[Statedef 4115]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0,0
anim = 5050

[State 4115, 5061 Exists]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = selfanimexist(5061)
value = 5061

[State 4115, Thrown Upwards]
type = Velset
trigger1 = Time = 0
x = -4
y = -10

[State 4115, Gravity]
type = VelAdd
trigger1 = 1
y = .5

[State 4115, Don't Screw the Attack!]
type = PlayerPush
trigger1 = 1
value = 0

[State 4115, Security]
type = SelfState
trigger1 = Vel Y > 0 && Pos Y >= -15
value = 5050
ctrl = 0

;No Music Helper
[Statedef 4119]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0,0
anim = 11111

[State 4119, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nomusic

[State 4119, DestroySelf]
type = DestroySelf
trigger1 = stateno != [4120,4123]
trigger1 = !Win
ignorehitpause = 1

;Hokuto "Hyakuretsu" Dan
[Statedef 4120]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0,0
anim = 4120

[State 4120, Level 4]
type = VarSet
trigger1 = time = 0
var(10) = 7

[State 4120, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Super"
ID = 7500
stateno = 7500
pos = 0,-55
postype = p1
ownpal = 1
supermovetime = 9999999
pausemovetime = 9999999
persistent = 0

[State 4120, Not Hit]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 1

[State 4120, Super Pause]
type = SuperPause
trigger1 = Time = 0
time = 45
anim = -1
sound = s7,0
poweradd = -4000
darken = 0
p2defmul = 1

[State 4120, Don't guard this]
type = AttackDist
trigger1 = 1
value = 0

[State 4120, NotHitBy]
type = NotHitBy
trigger1 = 1
value = ,NP ,SP, NT, ST, HT

[State 4120, Set Reverse]
type = ReversalDef
trigger1 = Time = 1
reversal.attr = SCA,NA,SA,HA
sparkno = S7930+random%8
hitsound = S96000,2
pausetime = 0, 0
p1stateno = 4121

[State 4120, Fail]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 4121]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0,0
anim = 4121

[State 4121, Pause]
type = Pause
trigger1 = Time = 0
movetime = 65
time = 65

[State 4121, Background]
type = BGPalFX
trigger1 = Time = 0
time = 90
add = 0,255,0
mul = 0,50,0
sinadd = 0,0,0,1
invertall = 1
color = 256

[State 4121, Push is off]
type = PlayerPush
trigger1 = 1
value = 1

[State 4121, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 4121, Fail Whoosh]
type = PlaySnd
trigger1 = AnimElem = 6
value = S1,5
channel = -1

[State 4123, WHOOACHA!!!]
type = PlaySnd
triggerall = !var(38)
trigger1 = AnimElemTime(4) = 0
value = S96000,8
channel = 0

[State 4121, Grab]
type = HitDef
trigger1 = Time = 0
attr = S, HT
guardflag =
pausetime = 30,30
hitflag = MAFD
priority = 7,Miss
sparkno = S7930+random%8
sparkxy = -8,-40
hitsound = S5,9
numhits = 0
p1stateno = 4122
p2stateno = 4126
down.bounce = 1
guard.dist = 0
hitonce = 1
p2facing = 1
fall = 1
kill = 0
ID = 4121

[State 4121, Fail]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 4122]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0,0
anim = 4122

[state 4122, ATATATATATATATATA...!!]
type = PlaySnd
triggerall = !var(38)
trigger1 = Time = 0
trigger2 = var(20) = 50 && Anim = 4122
value = S96000, 6
volume = 160
channel = 0

[State 4122, HUGE Portrait]
type = Explod
trigger1 = Time = 0
anim = 13020
ID = 4124
pos = -40,240
postype = back
removetime = -1
facing = 1
bindtime = -1
scale = 1.32,1.32
supermovetime = 9999999
pausemovetime = 9999999
sprpriority = 1
ownpal = 1
removeongethit = 1

[State 4122, Hokuto No Fist]
type = Explod
trigger1 = Time % 4 = 0
anim = 4124+(random%2)
ID = 4124
pos = -60,20
postype = back
facing = 1
vfacing = ifelse(random<500,1,-1)
bindtime = 1
vel = 17,0
accel = 0,ifelse(random<500,0.125,-0.125)
random = 0,280
removetime = 20
supermovetime = 9999999
pausemovetime = 9999999
scale = 3,3
sprpriority = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 4122, No Music]
type = Helper
trigger1 = Time = 0
helpertype = normal
name = "No Music"
ID = 4122
stateno = 4119
pos = -59,-59
postype = back
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 9999999
pausemovetime = 9999999

[State 4122, No Scape]
type = TargetBind
trigger1 = 1
id = 4121
pos = 36,0

[State 4122, Push is off]
type = PlayerPush
trigger1 = 1
value = 0

[State 4122, Punch Counter Reset!]
type = VarSet
trigger1 = Time = 0
var(20) = 0

[State 4122, Super B]
type = AfterImage
trigger1 = Time = 0 && !Var(27)
time = -1
framegap = 1
timegap = 2
length = 20
trans = add

[State 4122, Destroy AfterImages]
type = AfterImageTime
trigger1 = var(20) >= 98
time = 0

[State 4122, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nomusic
flag2 = timerfreeze
flag3 = noBG

[State 4122, No ForeGround]
type = AssertSpecial
trigger1 = 1
flag = noFG

[State 4122, Earthquake]
type = EnvShake
trigger1 = Time = 0
time = 433
freq = 200
ampl = 3

[State 4122, Earthquake2]
type = EnvShake
trigger1 = var(20) = 50 && Anim = 4122
time = 200
freq = 200
ampl = 5

[State 4122, YOU WA SHOCK!!!]
type = PlaySnd
trigger1 = time = 0
value = S96000,1
channel = 2
volume = 365
abspan = 0

[State 4122, Hits]
type = TargetLifeAdd
trigger1 = AnimElemTime(2) = 0 || AnimElemTime(6) = 0
value = -2 ;Total from this far (300 HP)
ID = 4121
kill = 0
absolute = 0

[State 4122, One Point per every punch!]
type = VarAdd
trigger1 = AnimElemTime(2) = 0 || AnimElemTime(6) = 0
var(20) = 1

[State 4122, Damage Sounds]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0 || AnimElemTime(6) = 0
value = S5,4
channel = 3+random%12

[State 4122, Switch to Kick]
type = ChangeAnim
trigger1 = var(20) >= 50 && (Anim = 4122 && AnimTime = 0)
value = 4124

[State 4122, Hyper Combo]
type = HitAdd
trigger1 = AnimElemTime(2) = 0 || AnimElemTime(6) = 0
value = 1

[State 4122, HitSparks A]
type = Explod
trigger1 = AnimElemTime(2) = 0 || AnimElemTime(6) = 0
anim = 7930+random%8
ID = 4122
pos = 36,-47
facing = 1
random = 0,15
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = 1,1
ontop = 1
ownpal = 1
removeongethit = 1

[State 4122, 99 Hits]
type = TargetState
trigger1 = var(20) >= 99
value = 4127
ID = 4121

[State 4122, RemoveEVERYPunch]
type = RemoveExplod
trigger1 = var(20) >= 99
id = 4124

[State 4122, The Final ASS Whooping!]
type = ChangeState
trigger1 = var(20) >= 99
value = 4123
ctrl = 0

[Statedef 4123]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0
anim = 4123

[State 4123, WinPose Required]
type = VarSet
trigger1 = Win
var(21) = 1

[State 4123, WinPose Required]
type = VarSet
trigger1 = !Win
var(21) = 0

[State 4122, AssertSpecial]
type = AssertSpecial
trigger1 = Time < 155
flag = timerfreeze
flag2 = noBG
flag3 = noFG

[State 4122, AssertSpecial]
type = AssertSpecial
trigger1 = Time < 156
flag = nomusic

[State 4123, WHOOACHA!!!]
type = PlaySnd
triggerall = !var(38)
trigger1 = Time = 0
value = S96000,7
channel = 0

[State 4123, Announcer]
type = PlaySnd
triggerall = !var(38)
trigger1 = Time = 0
value = S96000,3
channel = -1

[State 4123, Pause]
type = Pause
trigger1 = time = 0
time = 155
movetime = 155

[State 4123, Ass Whooping]
type = HitDef
trigger1 = Time = 0
attr = S, HA
damage = 254,254
hitflag = MAFD+
animtype = Up
guardflag =
getpower = 0,0
priority = 7,Hit
pausetime = 0,40
sparkno = s2005+random%4
guard.sparkno = s7911
guard.dist = 0
fall = 1
fall.recover = 0
fall.recovertime = 986451
yaccel = .46
sparkxy = -5,-54
hitsound   = s5,9
guardsound = s6,0
ground.type = High
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
air.slidetime = 6
ground.hittime  = 26
ground.velocity = -6.23,-9
air.velocity = -6.23,-9
chainID = 4121

[State 4123, Music Off]
type = StopSnd
trigger1 = AnimTime = 0 && !Win
channel = 2

[State 4123, Fin/End]
type = ChangeState
trigger1 = AnimTime = 0
value = 4895
ctrl = 0

[Statedef 4126]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0, 0

[State 4126, Push is off]
type = PlayerPush
trigger1 = 1
value = 0

[State 4126, Anim]
type = ChangeAnim2
trigger1 = Time = 0
value = 4126

[Statedef 4127]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0, 0

[State 4127, Anim]
type = ChangeAnim2
trigger1 = Time = 0
value = 4127

[State 4127, Push is off]
type = PlayerPush
trigger1 = 1
value = 0

[State 4127, NotHitBy]
type = NotHitBy
trigger1 = 1
value = ,NA, SA, AP, AT

[Statedef 2500]
type = S
movetype = A
physics = N
ctrl = 0
velset = 7, 0
anim = 2500
poweradd = -1000

[State 2500, Friction]
type = VelMul
trigger1 = 1
x = .8895303

[State 2500, Show Time Counter]
type = VarSet
trigger1 = Time = 0
var(25) = 0

[State 2500, Funky After Images]
type = AfterImage
trigger1 = Time = 0
time = 2
length = 7
paladd = 0,255,0
timegap = 2
framegap = 3
trans = add

[State 2500, AfterImages]
type = AfterImageTime
trigger1 = Time
time = 2

[State 2500, Hit]
type = HitDef
trigger1 = Time = 0
attr = S, HA
damage = 30, 1
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 10, 15
sparkno = s7920+random%8
guard.sparkno = s7911
sparkxy = -8, -27
hitsound = s5, 6
guardsound = s6, 0
ground.type = High
ground.slidetime = 3
ground.hittime  = 15
ground.velocity = -1.5
airguard.velocity = -1,0
air.type = Low
air.velocity = -1.4,0
air.hittime = 12

[State 2500, Correct Combo];I could have used the CMD file, but that's unintutive for me
type = ChangeState
trigger1 = MoveHit
trigger1 = command = "a"
trigger1 = AniMElemTime(3) >= 4
value = 2501
ctrl = 0

[State 2500, Fail]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 2501]
type = S
movetype = A
physics = N
ctrl = 0
velset = 7, 0
anim = 2501

[State 2501, Friction]
type = VelMul
trigger1 = 1
x = .8895303

[State 2501, Show Time Counter]
type = VarAdd
trigger1 = Time = 0
var(25) = 1

[State 2501, Funky After Images]
type = AfterImage
trigger1 = Time = 0
time = 2
length = 7
paladd = 0,255,0
timegap = 2
framegap = 3
trans = add

[State 2501, AfterImages]
type = AfterImageTime
trigger1 = Time
time = 2

[State 2501, Hit]
type = HitDef
trigger1 = Time = 0
attr = S, HA
damage = 20
getpower = 0, 0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 10, 15
sparkno = s7920+random%8
guard.sparkno = s7911
sparkxy = -8, -57
hitsound = s5, 6
guardsound = s6, 0
ground.type = Low
ground.slidetime = 3
ground.hittime  = 15
ground.velocity = -1.5
airguard.velocity = -1,0
air.type = Low
air.velocity = -1.4,0
air.hittime = 12

[State 2501, Correct Combo];I could have used the CMD file, but that's unintutive for me
type = ChangeState
trigger1 = MoveHit
trigger1 = command = "b"
trigger1 = var(25) = 1 || var(25) = 4
trigger1 = AniMElemTime(3) >= 4
value = 2502
ctrl = 0

[State 2501, Correct Combo];I could have used the CMD file, but that's unintutive for me
type = ChangeState
trigger1 = MoveHit
trigger1 = command = "a"
trigger1 = var(25) = 3
trigger1 = AniMElemTime(3) >= 4
value = 2501
ctrl = 0

[State 2501, Fail]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 2502]
type = S
movetype = A
physics = N
ctrl = 0
velset = 7, 0
anim = 2502

[State 2502, Friction]
type = VelMul
trigger1 = 1
x = .8895303

[State 2502, Show Time Counter]
type = VarAdd
trigger1 = Time = 0
var(25) = 1

[State 2502, Funky After Images]
type = AfterImage
trigger1 = Time = 0
time = 2
length = 7
paladd = 0,255,0
timegap = 2
framegap = 3
trans = add

[State 2502, AfterImages]
type = AfterImageTime
trigger1 = Time
time = 2

[State 2502, Hit]
type = HitDef
trigger1 = Time = 0
attr = S, HA
damage = 30
animtype = Light
getpower = 0, 0
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 10, 15
sparkno = s7920+random%8
guard.sparkno = s7911
sparkxy = -5, -85
hitsound = s5, 9
guardsound = s6, 0
ground.type = Low
ground.slidetime = 3
ground.hittime  = 15
ground.velocity = -1.5
airguard.velocity = -1,0
air.type = Low
air.velocity = -1.4,0
air.hittime = 12

[State 2502, Correct Combo];I could have used the CMD file, but that's unintutive for me
type = ChangeState
trigger1 = MoveHit
trigger1 = command = "a"
trigger1 = AniMElemTime(5) >= 4 && AnimElemTime(7) < 0
trigger1 = var(25) = 2
value = 2501
ctrl = 0

[State 2502, Correct Combo];I could have used the CMD file, but that's unintutive for me
type = ChangeState
trigger1 = MoveHit
trigger1 = command = "c"
trigger1 = var(25) = 5
trigger1 = AniMElemTime(5) >= 4 && AnimElemTime(7) < 0
value = 2503
ctrl = 0

[State 2502, Fail]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 2503]
type = S
movetype = A
physics = N
ctrl = 0
velset = 7.85, 0
anim = 2503

[State 2503, Friction]
type = VelMul
trigger1 = 1
x = .85

[State 2503, Show Time Counter]
type = VarAdd
trigger1 = Time = 0
var(25) = 1

[State 2503, Funky After Images]
type = AfterImage
trigger1 = Time = 0
time = 2
length = 7
paladd = 0,255,0
timegap = 2
framegap = 3
trans = add

[State 2503, AfterImages]
type = AfterImageTime
trigger1 = Time
time = 2

[State 2503, Hit]
type = HitDef
trigger1 = Time = 0
attr = S, HA
damage = 75
getpower = 0, 0
animtype = Heavy
fall = 1
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 15, 15
sparkno = s7930+random%8
guard.sparkno = s7911
p2stateno = 2504
p2facing = 1
sparkxy = -5, -45
hitsound = s5, 9
guardsound = s6, 0
ground.type = Low
ground.slidetime = 3
ground.hittime  = 15
ground.velocity = -8, 0
airguard.velocity = -2,0
air.type = Low
air.velocity = -8,0
air.hittime = 12

[State 2503, Fail]
type = ChangeState
trigger1 = AnimTime = 0
value = 52
ctrl = 0

[Statedef 2504]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0,0

[State 2504, Shaking Anim]
type = ChangeAnim2
trigger1 = Time = 0
value = 2504

[State 2504, Player Push Off]
type = PlayerPush
trigger1 = 1
value = 0

[State 2504, ChangeState]
type = ChangeState
trigger1 = HitShakeOver
value = 2505

[Statedef 2505]
type = A
movetype = H
physics = N
ctrl = 0

[State 2505, Shaking Anim]
type = ChangeAnim2
trigger1 = Time = 0
value = 2504

[State 2505, HitVelSet]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 0

[State 2505, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 2505, Hit Wall]
type = ChangeState
trigger1 = FrontEdgeDist < 15
trigger2 = BackEdgeDist < 15
value = 2506
ctrl = 0

[State 2505, Player Push Off]
type = PlayerPush
trigger1 = 1
value = 0

[Statedef 2506]
type = A
movetype = H
physics = N
ctrl = 0

[State 2506, Player Push Off]
type = PlayerPush
trigger1 = 1
value = 0

[State 2506, Hit Wall Spark]
type = Explod
trigger1 = Time = 0
anim = F72
pos = 0,0
removetime = -2
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 2506, Turn]
type = Turn
trigger1 = Time = 0

[State 2506, Shaking Anim]
type = ChangeAnim2
trigger1 = Time = 0
value = 2506

[State 2506, Velocity]
type = VelSet
trigger1 = Time = 0
x = -2
y = -6

[State 2506, Add Velocity]
type = VelAdd
trigger1 = 1
y = .45

[State 2506, Hit Wall]
type = SelfState
trigger1 = Vel Y > 0 && Pos Y >= 20
value = 5050
ctrl = 0

; U. N. Gajardo Was Him? - Startup

[Statedef 3690]
type = S
movetype = I
physics =S
velset = 0,0
ctrl = 0
anim = 3690

[State 3690, Turn Scarlet In G-Major! LOL!]
type = PlaySnd
trigger1 = animElemTime(2) = 0
value = S3690,0
channel = 0

[State 3690, VarSet]
type = VarSet
trigger1 = time = 0
var(10) = 45

[State 3690, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Super"
ID = 7500
stateno = 7500
pos = 0,-55
postype = p1
ownpal = 1
supermovetime = 9999
persistent = 0

[State 3690, Super A]
type = SuperPause
trigger1 = Time = 0
time = 199
movetime = 199
anim = -1
sound = s7, 0
poweradd = -1000
darken = 0
p2defmul = 1

[State 3690, IWillKillThem]
type = ChangeState
trigger1 = AnimTime = 0
value = 3691

[Statedef 3691]
type = S
movetype = A
physics =N
velset = 0,0
ctrl = 0
anim = 3691

[State 3691, Move It Fast]
type = VelSet
trigger1 = AnimElem = 5
x = 15

[State 3691, VelMul]
type = VelMul
trigger1 = Time > 34
x = .90

[State 3691, Get It?]
type = HitDef
trigger1 = Time = 0
attr = S, HT
hitflag = M-
getpower  = 0
priority  = 1, Miss
p1stateno = 3692
p2stateno = 3695
fall.envshake.time = 35
fall.envshake.freq = 350
fall.envshake.ampl = 8
fall.envshake.phase = 140
id = 3691
guardflag = MA
sparkno = -1
guard.sparkno = S7911
sparkxy = -5,-45
hitsound = S800,0
guard.hitsound = S6,0
hitonce = 1
numhits = 0
fall = 1

[State 3691, Fail]
type = ChangeState
trigger1 = Time >= 35
value = 5070
ctrl = 0

[Statedef 3692]
type = S
movetype = A
physics =N
velset = 0,0
ctrl = 0
anim = 3692

[State 3692, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(5) = 0
statetype = A

[State 3692, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(4) < 0
id = 3691
pos = 50,0

[State 3692, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElemTime(3) = 0
value = -4
ID = 3691
kill = 0

[State 3692, HitAdd]
type = HitAdd
trigger1 = AnimElemTime(3) = 0
value = 1

[State 3692, PlaySnd]
type = PlaySnd
trigger1 = animelemTime(3) = 0
value = S5,9
abspan = 0
channel = -1

[State 3692, HitSpark]
type = Explod
trigger1 = AnimElemTime(3) = 0
anim = 7930+random%8
ID = 4112
random = 20, 0
pos = -10,-59
postype = p2
facing = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = 1,1
ontop = 1
ownpal = 1
removeongethit = 0

[State 3692, Vel Set]
type = VelSet
trigger1 = AnimElemTime(5) = 0
y = -10

[State 3692, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 3692, ChangeState]
type = ChangeState
trigger1 = ScreenPos Y <= -100
value = 3693
ctrl = 0

[Statedef 3693]
type = A
movetype = A
physics =N
velset = 0,10
ctrl = 0

[State 3693, Offset]
type = PosAdd
trigger1 = Time = 0
x = -160

[State 3693, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0
ignorehitpause = 1

[State 3693, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0
value = 3694
ctrl = 0

[Statedef 3694]
type = S
movetype = A
physics =N
velset = 0,0
ctrl = 0
anim = 3693

[State 3694, TargetState]
type = TargetState
trigger1 = AnimElemTime(2) = 0
value = 3696
ID = 3691

[State 3694, On The Right Place]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3694, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0
ignorehitpause = 1

[State 3694, VarSet]
type = VarSet
trigger1 = time = 0
var(10) = 45

[State 3694, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Super"
ID = 7500
stateno = 7500
pos = 0,-55
postype = p1
ownpal = 1
supermovetime = 9999
persistent = 0

[State 3694, Super A]
type = SuperPause
trigger1 = Time = 0
time = 45
movetime = 35
anim = -1
sound = s7, 0
poweradd = -1000 ;The Final Thousand
darken = 0

[State 3694, G-Major]
type = PlaySnd
trigger1 = time = 40
value = S3690,1
channel = 0

[State 3694, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElemTime(3) = 0 || AnimElemTime(5) = 0 || AnimElemTime(7) = 0 || AnimElemTime(9) = 0
trigger2 = AnimElemTime(11) = 0 || AnimElemTime(13) = 0 || AnimElemTime(15) = 0 || AnimElemTime(17) = 0
trigger3 = AnimElemTime(19) = 0 || AnimElemTime(21) = 0 || AnimElemTime(23) = 0 || AnimElemTime(25) = 0
trigger4 = AnimElemTime(27) = 0 || AnimElemTime(29) = 0 || AnimElemTime(31) = 0 || AnimElemTime(33) = 0
trigger5 = AnimElemTime(35) = 0 || AnimElemTime(37) = 0 || AnimElemTime(39) = 0 || AnimElemTime(41) = 0
trigger6 = AnimElemTime(43) = 0 || AnimElemTime(45) = 0 || AnimElemTime(47) = 0 || AnimElemTime(49) = 0
trigger7 = AnimElemTime(51) = 0 || AnimElemTime(53) = 0 || AnimElemTime(55) = 0 || AnimElemTime(57) = 0
trigger8 = AnimElemTime(59) = 0 || AnimElemTime(61) = 0 || AnimElemTime(63) = 0 || AnimElemTime(65) = 0
trigger9 = AnimElemTime(67) = 0 || AnimElemTime(69) = 0 || AnimElemTime(71) = 0 || AnimElemTime(73) = 0
trigger10 = AnimElemTime(75) = 0 || AnimElemTime(77) = 0 || AnimElemTime(79) = 0 || AnimElemTime(81) = 0
trigger11 = AnimElemTime(83) = 0 || AnimElemTime(85) = 0 || AnimElemTime(87) = 0 || AnimElemTime(89) = 0
trigger12 = AnimElemTime(91) = 0 || AnimElemTime(93) = 0 || AnimElemTime(95) = 0 || AnimElemTime(97) = 0
trigger13 = AnimElemTime(99) = 0 || AnimElemTime(101) = 0 || AnimElemTime(103) = 0 || AnimElemTime(105) = 0
trigger14 = AnimElemTime(107) = 0 || AnimElemTime(109) = 0 || AnimElemTime(111) = 0 || AnimElemTime(113) = 0
trigger15 = AnimElemTime(115) = 0 || AnimElemTime(117) = 0 || AnimElemTime(119) = 0 || AnimElemTime(121) = 0
trigger16 = AnimElemTime(123) = 0 || AnimElemTime(125) = 0
value = -2 ;124 HP
ID = 3691
kill = 0

[State 3694, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElemTime(126) = 0
value = -125
ID = 3691
kill = 1

[State 3694, TargetState]
type = TargetState
trigger1 = AnimElemTime(126) = 1
value = 3697
ID = 3691

[State 3694, HitAdd]
type = HitAdd
trigger1 = AnimElemTime(3) = 0 || AnimElemTime(5) = 0 || AnimElemTime(7) = 0 || AnimElemTime(9) = 0
trigger2 = AnimElemTime(11) = 0 || AnimElemTime(13) = 0 || AnimElemTime(15) = 0 || AnimElemTime(17) = 0
trigger3 = AnimElemTime(19) = 0 || AnimElemTime(21) = 0 || AnimElemTime(23) = 0 || AnimElemTime(25) = 0
trigger4 = AnimElemTime(27) = 0 || AnimElemTime(29) = 0 || AnimElemTime(31) = 0 || AnimElemTime(33) = 0
trigger5 = AnimElemTime(35) = 0 || AnimElemTime(37) = 0 || AnimElemTime(39) = 0 || AnimElemTime(41) = 0
trigger6 = AnimElemTime(43) = 0 || AnimElemTime(45) = 0 || AnimElemTime(47) = 0 || AnimElemTime(49) = 0
trigger7 = AnimElemTime(51) = 0 || AnimElemTime(53) = 0 || AnimElemTime(55) = 0 || AnimElemTime(57) = 0
trigger8 = AnimElemTime(59) = 0 || AnimElemTime(61) = 0 || AnimElemTime(63) = 0 || AnimElemTime(65) = 0
trigger9 = AnimElemTime(67) = 0 || AnimElemTime(69) = 0 || AnimElemTime(71) = 0 || AnimElemTime(73) = 0
trigger10 = AnimElemTime(75) = 0 || AnimElemTime(77) = 0 || AnimElemTime(79) = 0 || AnimElemTime(81) = 0
trigger11 = AnimElemTime(83) = 0 || AnimElemTime(85) = 0 || AnimElemTime(87) = 0 || AnimElemTime(89) = 0
trigger12 = AnimElemTime(91) = 0 || AnimElemTime(93) = 0 || AnimElemTime(95) = 0 || AnimElemTime(97) = 0
trigger13 = AnimElemTime(99) = 0 || AnimElemTime(101) = 0 || AnimElemTime(103) = 0 || AnimElemTime(105) = 0
trigger14 = AnimElemTime(107) = 0 || AnimElemTime(109) = 0 || AnimElemTime(111) = 0 || AnimElemTime(113) = 0
trigger15 = AnimElemTime(115) = 0 || AnimElemTime(117) = 0 || AnimElemTime(119) = 0 || AnimElemTime(121) = 0
trigger16 = AnimElemTime(123) = 0 || AnimElemTime(125) = 0 || AnimElemTime(126) = 0
value = 16

[State 3694, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0 || AnimElemTime(5) = 0 || AnimElemTime(7) = 0 || AnimElemTime(9) = 0
trigger2 = AnimElemTime(11) = 0 || AnimElemTime(13) = 0 || AnimElemTime(15) = 0 || AnimElemTime(17) = 0
trigger3 = AnimElemTime(19) = 0 || AnimElemTime(21) = 0 || AnimElemTime(23) = 0 || AnimElemTime(25) = 0
trigger4 = AnimElemTime(27) = 0 || AnimElemTime(29) = 0 || AnimElemTime(31) = 0 || AnimElemTime(33) = 0
trigger5 = AnimElemTime(35) = 0 || AnimElemTime(37) = 0 || AnimElemTime(39) = 0 || AnimElemTime(41) = 0
trigger6 = AnimElemTime(43) = 0 || AnimElemTime(45) = 0 || AnimElemTime(47) = 0 || AnimElemTime(49) = 0
trigger7 = AnimElemTime(51) = 0 || AnimElemTime(53) = 0 || AnimElemTime(55) = 0 || AnimElemTime(57) = 0
trigger8 = AnimElemTime(59) = 0 || AnimElemTime(61) = 0 || AnimElemTime(63) = 0 || AnimElemTime(65) = 0
trigger9 = AnimElemTime(67) = 0 || AnimElemTime(69) = 0 || AnimElemTime(71) = 0 || AnimElemTime(73) = 0
trigger10 = AnimElemTime(75) = 0 || AnimElemTime(77) = 0 || AnimElemTime(79) = 0 || AnimElemTime(81) = 0
trigger11 = AnimElemTime(83) = 0 || AnimElemTime(85) = 0 || AnimElemTime(87) = 0 || AnimElemTime(89) = 0
trigger12 = AnimElemTime(91) = 0 || AnimElemTime(93) = 0 || AnimElemTime(95) = 0 || AnimElemTime(97) = 0
trigger13 = AnimElemTime(99) = 0 || AnimElemTime(101) = 0 || AnimElemTime(103) = 0 || AnimElemTime(105) = 0
trigger14 = AnimElemTime(107) = 0 || AnimElemTime(109) = 0 || AnimElemTime(111) = 0 || AnimElemTime(113) = 0
trigger15 = AnimElemTime(115) = 0 || AnimElemTime(117) = 0 || AnimElemTime(119) = 0 || AnimElemTime(121) = 0
trigger16 = AnimElemTime(123) = 0 || AnimElemTime(125) = 0
value = S5,2
abspan = 0
channel = -1

[State 3694, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(126) = 0
value = S5,9
abspan = 0
channel = -1

[State 3694, HitSparks]
type = Explod
trigger1 = AnimElemTime(3) = 0 || AnimElemTime(5) = 0 || AnimElemTime(7) = 0 || AnimElemTime(9) = 0
trigger2 = AnimElemTime(11) = 0 || AnimElemTime(13) = 0 || AnimElemTime(15) = 0 || AnimElemTime(17) = 0
trigger3 = AnimElemTime(19) = 0 || AnimElemTime(21) = 0 || AnimElemTime(23) = 0 || AnimElemTime(25) = 0
trigger4 = AnimElemTime(27) = 0 || AnimElemTime(29) = 0 || AnimElemTime(31) = 0 || AnimElemTime(33) = 0
trigger5 = AnimElemTime(35) = 0 || AnimElemTime(37) = 0 || AnimElemTime(39) = 0 || AnimElemTime(41) = 0
trigger6 = AnimElemTime(43) = 0 || AnimElemTime(45) = 0 || AnimElemTime(47) = 0 || AnimElemTime(49) = 0
trigger7 = AnimElemTime(51) = 0 || AnimElemTime(53) = 0 || AnimElemTime(55) = 0 || AnimElemTime(57) = 0
trigger8 = AnimElemTime(59) = 0 || AnimElemTime(61) = 0 || AnimElemTime(63) = 0 || AnimElemTime(65) = 0
trigger9 = AnimElemTime(67) = 0 || AnimElemTime(69) = 0 || AnimElemTime(71) = 0 || AnimElemTime(73) = 0
trigger10 = AnimElemTime(75) = 0 || AnimElemTime(77) = 0 || AnimElemTime(79) = 0 || AnimElemTime(81) = 0
trigger11 = AnimElemTime(83) = 0 || AnimElemTime(85) = 0 || AnimElemTime(87) = 0 || AnimElemTime(89) = 0
trigger12 = AnimElemTime(91) = 0 || AnimElemTime(93) = 0 || AnimElemTime(95) = 0 || AnimElemTime(97) = 0
trigger13 = AnimElemTime(99) = 0 || AnimElemTime(101) = 0 || AnimElemTime(103) = 0 || AnimElemTime(105) = 0
trigger14 = AnimElemTime(107) = 0 || AnimElemTime(109) = 0 || AnimElemTime(111) = 0 || AnimElemTime(113) = 0
trigger15 = AnimElemTime(115) = 0 || AnimElemTime(117) = 0 || AnimElemTime(119) = 0 || AnimElemTime(121) = 0
trigger16 = AnimElemTime(123) = 0 || AnimElemTime(125) = 0 || AnimElemTime(126) = 0
anim = 7930+random%8
ID = 3694
random = 20, 70
pos = -10,-70
postype = p2
facing = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = 1,1
ontop = 1
ownpal = 1
removeongethit = 0

[State 3694, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 5070
ctrl = 0

[Statedef 3695]
type = S
movetype = H
physics =N
velset = 0,0
ctrl = 0

[State 3695, Bug Fix/Aesthetic Fix]
type = NotHitBy
value = SCA
trigger1 = 1
ignorehitpause = 1

[State 3695, ChangeAnim2]
type = ChangeAnim
trigger1 = Time = 0
value = 5300

[Statedef 3696]
type = S
movetype = H
physics =N
velset = 0,0
ctrl = 0

[State 3696, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S11,0
volume = 255
channel = -1

[State 3696, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 3696

[Statedef 3697]
type = A
movetype = H
physics =N
velset = 1,-40
ctrl = 0

[State 3697, VelAdd]
type = VelAdd
trigger1 = 1
y = .6

[State 3697, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S11,0
volume = 255
channel = -1

[State 3697, ChangeAnim2]
type = ChangeAnim
trigger1 = Time = 0
value = 5050

[State 3697, SelfState]
type = SelfState
trigger1 = Pos Y >= 20 && Vel Y >= 0
value = 5100
ctrl = 0

[Statedef 3500]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
anim = 4003
ctrl = 0
sprpriority = 2

[State 3500, Gruñe!!!]
type = PlaySnd
trigger1 = Time = 0
value = S36500, 3
channel = 1

[State 3500, Bounce]
type = VarSet
trigger1 = time = 0
var(19) = 0

[State 3050, Level 2]
type = VarSet
trigger1 = time = 0
var(10) = 6

[State 3500, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Super"
ID = 7500
stateno = 7500
pos = 0,-55
postype = p1
ownpal = 1
supermovetime = 9999
persistent = 0

[State 3500, Super Pause]
type = SuperPause
trigger1 = Time = 0
time = 45
anim = -1
sound = s7,0
poweradd = -2000
darken = 0
p2defmul = 1

[State 3500, Funky After Images]
type = AfterImage
trigger1 = Time = 0
time = 2
length = 7
paladd = 200,0,0
timegap = 2
framegap = 3
trans = add

[State 3500, AfterImages]
type = AfterImageTime
trigger1 = Time
time = 2

[State 3500, Hit]
type = HitDef
trigger1 = Time = 1
attr = S,HT
hitflag = MA
guardflag = HA
getpower = 0,0
ID = 3500
animtype = DiagUp
priority = 2,Miss
damage = 0,2
pausetime = 15,0
guard.pausetime = 3, 20
sparkno = s7930+random%8
guard.sparkno = s7911
sparkxy = 10,-48
hitsound = s5,9
guardsound = s6,0
ground.type = High
ground.slidetime = 25
ground.hittime = 99
ground.velocity = -0.5,-10.2
air.hittime = 20
yaccel = .3
air.velocity = -0.5,-10.01
p2facing = 1
fall = 1
fall.yvelocity = -5
fall.recover = 0
fall.recovertime = 4
fall.damage = 20
down.bounce = 1
kill = 0
guard.kill = 0
fall.kill = 1
numhits = 1
envshake.time = 25
envshake.freq = 100
envshake.ampl = 4
fall.envshake.time = 25
fall.envshake.freq = 100
fall.envshake.ampl = 4
p2stateno = 3501

[State 3500, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) >= 0
value = SCA
ignorehitpause = 1

[State 3500, TargetState]
type = TargetState
triggerall = numtarget(3500)
triggerall = (target(3500),time = 1) && (target(3500),stateno = 3501)
trigger1 = var(19) >= 4
value = 5682
ID = 3500

[State 3500, Bounce Counter Goes Up!]
type = VarAdd
triggerall = numtarget(3500)
trigger1 = (target(3500),time = 1) && (target(3500),stateno = 3501)
var(19) = 1

[State 3500, Mega Shot]
type = PlaySnd
triggerall = numtarget(3500)
trigger1 = (target(3500),time = 1) && (target(3500),stateno = 3501)
value = S11111,0

[State 3500, Phail]
type = ChangeState
trigger1 = AnimElemTime(5) >= 34 && !MoveHit
trigger2 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 3501]
type = A
movetype = H
physics =N
velset = 9-(random%18),-20
ctrl = 0

[State 3501, LifeAdd]
type = LifeAdd
trigger1 = Time = 0
value = -54
kill = 1
absolute = 0

[State 3501, VelAdd]
type = VelAdd
trigger1 = 1
y = .75

[State 3501, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 3501

[State 3501, Repeat]
type = ChangeState
trigger1 = Pos Y >= 40 && Vel Y >= 0
value = 3501
ctrl = 0

[State 3501, rotate]
type = AngleDraw
trigger1 = 1
value = -(atan(Vel Y*(Vel X**-1))*57.2957795)
ignorehitpause = 1

[Statedef 3800]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0,0
Anim = 3800
sprpriority = 2

;Super Cancel If Cancelled from: Any of the Two Hits of the 2-Hit Combo.
;                                From (Ground) Scythe.
[State 3800, Super]
type = Helper
trigger1 = Time = 0
trigger1 = PrevStateNo = 1600 || PrevStateNo = 1601 || PrevStateNo = 500
persistent = 0
id = 30005
name = "Super Cancel Helper"
pos = 0,-48
postype = P1
stateno = 2310
helpertype = normal
supermove = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

;Dream Cancel If Cancelled from: Kick Smash.
;                                Punch Smash.
[State 3000, Super]
type = Helper
trigger1 = Time = 0
trigger1 = PrevStateNo = 3000 || PrevStateNo = 3050
persistent = 0
id = 30005
name = "DREAM Cancel Helper"
pos = 0,-48
postype = P1
stateno = 2320
helpertype = normal
supermove = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 3000, Damn Yer Dhreahm Canzer Herpez]
type = TargetState
triggerall = numtarget
trigger1 = Time = 0
trigger1 = Target,stateno != [120,160]
trigger1 = PrevStateNo = 3000 || PrevStateNo = 3050
value = 35300

[State 3800, Level 2]
type = VarSet
trigger1 = time = 0
var(10) = 6

[State 3800, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Super"
ID = 7500
stateno = 7500
pos = 0,-55
postype = p1
ownpal = 1
supermovetime = 9999
persistent = 0

[State 3800, Super A]
type = SuperPause
trigger1 = Time = 0
time = 45
anim = -1
sound = s7,0
poweradd = -2000
darken = 0
p2defmul = 1

[State 3800, VelSet]
type = VelSet
trigger1 = Time = 1
x = 8
y = 0

[State 3800, Grab]
type = HitDef
trigger1 = Time = 0
attr = S, HT
guardflag = MA
hitflag = MA
priority = 1,Miss
sparkno = -1
guard.sparkno = S7911
sparkxy = -8,-40
hitsound = S800,0
guardsound = S6, 0
numhits = 0
p1stateno = 3801
p2stateno = 3810
down.bounce = 1
guard.dist = 45
hitonce = 1
p2facing = 1
fall = 1
kill = 0
ID = 3800

[State 3800, Jump away then]
type = ChangeState
trigger1 = Time >= 25
value = 4895
ctrl = 0

[Statedef 3801]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0,0
Anim = 3801
sprpriority = 2

[State 3801, Bind P2]
type = TargetBind
trigger1 = 1
id = 3800
pos = 49,0

[State 3801, Change Everyone!]
type = TargetState
trigger1 = AnimTime = 0
value = 3811
id = 3800

[State 3801, Progress]
type = ChangeState
trigger1 = AnimTime = 0
value = 3802
ctrl = 0

[Statedef 3802]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0,0
Anim = 3802
sprpriority = 2

[State 3802, Suck Counter]
type = VarSet
trigger1 = Time = 0
var(20) = 0

[State 3802, Bind P2 1]
type = TargetBind
trigger1 = AnimElemTime(2) < 0
id = 3800
pos = 49,0

[State 3802, Bind P2 2]
type = TargetBind
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
id = 3800
pos = 31,-43

[State 3802, Bind P2 3]
type = TargetBind
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
id = 3800
pos = 41,-62

[State 3802, Bind P2 4]
type = TargetBind
trigger1 = AnimElemTime(4) >= 0
id = 3800
pos = 41,-76

;[State 3802, Too Much For You? P2]
;type = TargetState
;triggerall = AnimElemTime(6) >= 0
;trigger1 = life >= (lifemax/2)
;value = 3814
;ctrl = 0

;[State 3802, Too Much For You? Self]
;type = ChangeState
;triggerall = AnimElemTime(6) >= 0
;trigger1 = life >= (lifemax/2)
;value = 3804
;ctrl = 0

[State 3802, Suck]
type = TargetLifeAdd
trigger1 = AnimElemTime(5) = 0 || AnimElemTime(9) = 0 ||AnimElemTime(13) = 0
trigger2 = AnimElemTime(17) = 0 || AnimElemTime(21) = 0 ||AnimElemTime(25) = 0
trigger3 = AnimElemTime(29) = 0 || AnimElemTime(33) = 0 ||AnimElemTime(37) = 0
trigger4 = AnimElemTime(41) = 0
value = -14
ID = 3800
kill = 0
absolute = 0

[State 3802, Sucking Sound]
type = PlaySnd
trigger1 = AnimElemTime(5) = 0 || AnimElemTime(9) = 0 ||AnimElemTime(13) = 0
trigger2 = AnimElemTime(17) = 0 || AnimElemTime(21) = 0 ||AnimElemTime(25) = 0
trigger3 = AnimElemTime(29) = 0 || AnimElemTime(33) = 0 ||AnimElemTime(37) = 0
trigger4 = AnimElemTime(41) = 0
value = S3800,0

[State 3802, Recieve]
type = LifeAdd
trigger1 = AnimElemTime(8) = 0 || AnimElemTime(12) = 0 ||AnimElemTime(16) = 0
trigger2 = AnimElemTime(20) = 0 || AnimElemTime(24) = 0 ||AnimElemTime(28) = 0
trigger3 = AnimElemTime(32) = 0 || AnimElemTime(36) = 0 ||AnimElemTime(40) = 0
trigger4 = AnimElemTime(44) = 0
value = 14
kill = 0
absolute = 1

[State 3802, Suck Counter goes up!]
type = VarAdd
trigger1 = AnimElemTime(8) = 0 || AnimElemTime(12) = 0 ||AnimElemTime(16) = 0
trigger2 = AnimElemTime(20) = 0 || AnimElemTime(24) = 0 ||AnimElemTime(28) = 0
trigger3 = AnimElemTime(32) = 0 || AnimElemTime(36) = 0 ||AnimElemTime(40) = 0
trigger4 = AnimElemTime(44) = 0
var(20) = 14

[State 3802, Blood!!]
type = Explod
trigger1 = AnimElemTime(5) = 0 || AnimElemTime(9) = 0 ||AnimElemTime(13) = 0
trigger2 = AnimElemTime(17) = 0 || AnimElemTime(21) = 0 ||AnimElemTime(25) = 0
trigger3 = AnimElemTime(29) = 0 || AnimElemTime(33) = 0 ||AnimElemTime(37) = 0
trigger4 = AnimElemTime(41) = 0
anim = F10
ID = 3802
pos = 41,-73
facing = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = 1,1
ontop = 1
ownpal = 1
removeongethit = 1

[State 3802, TargetState]
type = TargetState
trigger1 = AnimTime = 0
value = 3812
ID = 3800

[State 3802, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 3803
ctrl = 0

[Statedef 3803]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0,0
Anim = 3803
sprpriority = 2

[State 3803, Bind P2 4]
type = TargetBind
trigger1 = AnimElemTime(6) < 1
id = 3800
pos = 41,-76

[State 3803, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(6) = 0
value = S3800,1

[State 3803, Give]
type = LifeAdd
trigger1 = AnimElemTime(3) = 0
value = -140
kill = 1
absolute = 1

[State 3803, Recieve Impact]
type = TargetLifeAdd
trigger1 = AnimElemTime(6) = 0
value = -140
ID = 3800
kill = 1
absolute = 0

[State 3803, Blood!!]
type = Explod
trigger1 = AnimElemTime(6) = 0
anim = F12
ID = 4122
pos = 41,-73
facing = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = 1,1
ontop = 1
ownpal = 1
removeongethit = 1

[State 3803, HitSpark]
type = Explod
trigger1 = AnimElemTime(6) = 0
anim = 7930+random%8
ID = 4122
pos = 41,-73
facing = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = 1,1
ontop = 1
ownpal = 1
removeongethit = 1

[State 3803, Done]
type = TargetState
trigger1 = AnimElemTime(6) = 1
value = 3813
ID = 3800

[State 3803, Jump away then]
type = ChangeState
trigger1 = AnimTime = 0
value = 4895
ctrl = 0

[Statedef 3804]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0,0
Anim = 3804
sprpriority = 2

[State 3804, WHOA!!]
type = PlaySnd
trigger1 = Time = 0
value = S666,0

[State 3804, Pause]
type = Pause
trigger1 = Time = 0
time = 60
pausebg = 1

[State 3804, Bind P2 4]
type = TargetBind
trigger1 = AnimElemTime(6) < 2
id = 3800
pos = 41,-76

[State 3804, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(6) = 0
value = S3800,0

[State 3804, Give]
type = LifeAdd
trigger1 = AnimElemTime(3) = 0
value = -299-var(20)
kill = 0
absolute = 1

[State 3804, Recieve!! :D]
type = TargetLifeAdd
trigger1 = AnimElemTime(6) = 0
value = 300+var(20)
ID = 3800
kill = 0
absolute = 0

[State 3804, Give]
type = LifeAdd
trigger1 = AnimElemTime(6) = 0
value = -1
kill = 1
absolute = 1

[State 3804, D'oh! >_<]
type = ChangeState
trigger1 = AnimTime = 0
value = 4057
ctrl = 0

[Statedef 3810]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0,0
sprpriority = 0

[State 3810, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
trigger1 = !SelfAnimExist(66660)
value = 3810

[State 3810, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(66660)
value = 66660

[Statedef 3811]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0,0
sprpriority = 0

[State 3811, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
trigger1 = !SelfAnimExist(66661)
value = 3811

[State 3811, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(66661)
value = 66661

[Statedef 3812]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0,0
sprpriority = 1

[State 3812, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
trigger1 = !SelfAnimExist(66662)
value = 3812

[State 3812, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(66662)
value = 66662

[Statedef 3813]
type = A
movetype = H
physics = N
ctrl = 0
velset = -8,-10
sprpriority = 0

[State 3813, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.5

[State 3813, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 3813

[State 3813, AngleDraw]
type = AngleDraw
trigger1 = 1
value = Time*9
ignorehitpause = 1

[State 3813, SelfState]
type = SelfState
trigger1 = Pos Y >= 20 && Vel Y > 0
value = 5100 ;HIT_BOUNCE

[Statedef 3814]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0,0
sprpriority = 0

[State 3814, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 3813

[State 3814, SelfState]
type = SelfState
trigger1 = !GetHitVar(isbound)
value = 5210 ;HIT_FALL_RECOVER


;-----------------------------------------------------------
;                   Crazy S Madness Bash
;-----------------------------------------------------------

[Statedef 3625]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0,0
sprpriority = 3
anim = 3625

[State 3625, After Images]
type = AfterImage
triggerall = !var(27)
trigger1 = Time = 0
trans = add
time = 32
timegap = 2
framegap = 1
length = 20

;Super Cancel If Cancelled from: Any of the Two Hits of the 2-Hit Combo.
;                                From (Ground) Scythe.
[State 4000, Super]
type = Helper
trigger1 = Time = 0
trigger1 = PrevStateNo = 1600 || PrevStateNo = 1601 || PrevStateNo = 500
persistent = 0
id = 30005
name = "Super Cancel Helper"
pos = 0,-48
postype = P1
stateno = 2310
helpertype = normal
supermove = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

;Dream Cancel If Cancelled from: Kick Smash.
;                                Punch Smash.
[State 3000, Super]
type = Helper
trigger1 = Time = 0
trigger1 = PrevStateNo = 3000 || PrevStateNo = 3050
persistent = 0
id = 30005
name = "DREAM Cancel Helper"
pos = 0,-48
postype = P1
stateno = 2320
helpertype = normal
supermove = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 3625, Damn Yer Dhreahm Canzer Herpez]
type = TargetState
triggerall = numtarget
trigger1 = Time = 0
trigger1 = Target,stateno != [120,160]
trigger1 = PrevStateNo = 3000 || PrevStateNo = 3050
value = 35300

[State 3625, Crazy Voice!!]
type = PlaySnd
triggerall = !var(38)
trigger1 = Time = 0
value = S188,4

[State 3625, Dash]
type = PlaySnd
trigger1 = AnimElem = 3
value = S9000,0

[State 3625, Level 2]
type = VarSet
trigger1 = time = 0
var(10) = 6

[State 3625, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 6

[State 3625, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Super"
ID = 7500
stateno = 7500
pos = 0,-55
postype = p1
ownpal = 1
supermovetime = 9999
persistent = 0

[State 3625, Super A]
type = SuperPause
trigger1 = Time = 0
time = 45
anim = -1
sound = s7, 0
poweradd = -2000
darken = 0
p2defmul = 1

[State 3625, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(1) = 0
value = SCA
time = 36

[State 3625, Oh Crap]
type = HitDef
Trigger1 = Time = 0
attr = S, HT
hitflag = MA
guardflag = M
priority = 3, Miss
sparkno = -1
p1sprpriority = 1
p1facing = 1
p2facing = 1
p1stateno = 3630
p2stateno = 3626
guard.sparkno = S7911
sparkxy = -8,-27
hitsound = S800,0
guardsound = S6, 0
numhits = 0
ID = 3625

[State 3625, Change Back]
type = ChangeState
trigger1 = AnimTime = 0
value = 101
ctrl = 0

[Statedef 3626]
type = S
movetype = H
physics = N
ctrl = 0
sprpriority = 1

[State 3626, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 3626

[State 3630, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
ignorehitpause = 1

[Statedef 3627]
type = A
movetype = H
physics = N
ctrl = 0
sprpriority = 1

[State 3627, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 3627

[Statedef 3627]
type = A
movetype = H
physics = N
ctrl = 0
sprpriority = 1

[State 3627, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 3627

;---------------------------------------------------------------------------
; HITG_SHAKE
[Statedef 3628]
type    = S
movetype= H
physics = N
velset = 0,0

[State 3628, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = ifelse((GetHitVar(groundtype) = 1),5000,5010) + GetHitVar(animtype)

[State 3628, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = 5030

[State 3628, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype) ;5051 - 4 + type

[State 3628, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 3628, 5] ;State type gets set to aerial if getting hit up
type = StateTypeSet
trigger1 = Time = 0
trigger1 = GetHitVar(yvel) != 0 || GetHitVar(fall)
trigger2 = Pos Y != 0
statetype = a

[State 3628, 6]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yvel) = 0 && !GetHitVar(fall)
value = 3629 ;HITG_SLIDE

[State 3628, 7]
type = SelfState
trigger1 = HitShakeOver
value = 5030

[State 3628, FFB Light]
type = ForceFeedback
trigger1 = anim = 5000
trigger2 = anim = 5010
persistent = 0
time = 6
waveform = square

[State 3628, FFB Medium]
type = ForceFeedback
trigger1 = anim = 5001
trigger2 = anim = 5011
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 3628, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5012
trigger2 = anim = 5002
trigger3 = anim = 5030
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

;---------------------------------------------------------------------------
; HITG_SLIDE
[Statedef 3629]
type    = S
movetype= H
physics = S

[State 3629, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 3629, 2]
type = ChangeAnim
trigger1 = AnimTime = 0
value = 5005 + GetHitVar(animtype) + (GetHitVar(groundtype)=2)*10

[State 3629, 3] ;Stop sliding back
type = VelMul
trigger1 = Time >= GetHitVar(slidetime)
x = .6

[State 3629, 4]
type = VelSet
trigger1 = Time >= 53
x = 0

[State 5001, 5]
type = DefenceMulSet
trigger1 = Time >= 53
value = 1

[State 5001, 6]
type = SelfState
trigger1 = Time >= 53
value = 5050
ctrl = 0

[Statedef 3630]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0,0
sprpriority = 2
anim = 3630

[State 3630, After Images]
type = AfterImage
triggerall = !var(27)
trigger1 = Time = 0
trans = add
time = 390
timegap = 2
framegap = 1
length = 20

[State 3630, TargetBind]
type = TargetBind
trigger1 = 1
id = 3625
pos = 18,0

[State 3630, Hit Sparks]
type = Explod
triggerall = AnimElemTime(2) >= 0
trigger1 = (Time % 6) = 5
anim = 7930+random%8
ID = 4122
pos = 41,-40
facing = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = 1,1
ontop = 1
ownpal = 1
removeongethit = 1

[State 3630, Crazy Voices]
type = PlaySnd
triggerall = !var(38)
trigger1 = (Time % 20) = 1
value = S188,1+random%4
channel = 0

[State 3630, Hit Sounds]
type = PlaySnd
triggerall = AnimElemTime(2) >= 0
trigger1 = (Time % 6) = 5
value = S5,1
channel = -1

[State 3630, Add to the Combo]
type = HitAdd
triggerall = AnimElemTime(2) >= 0
trigger1 = (Time % 6) = 5
value = 1

[State 3630, Big Ass Pain]
type = TargetLifeAdd
triggerall = AnimElemTime(2) >= 0
trigger1 = (Time % 6) = 5
value = -4 ;-228 of Total Damage
ID = 3625
kill = 0
absolute = 0

[State 3630, Leave Open]
type = TargetState
trigger1 = AnimTime = -2
value = 3627
ID = 3625

[State 3630, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 3631
ctrl = 0

[Statedef 3631]
type = A
movetype = A
physics = N
ctrl = 0
velset = 4.5,-3
sprpriority = 2
anim = 3631

[State 3631, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nojugglecheck

[State 3631, Crazy Voices]
type = PlaySnd
triggerall = !Var(38)
trigger1 = Time = 0
value = S188,1
channel = 0

[State 3631, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3631, Gravity]
type = Gravity
trigger1 = AnimElemTime(5) >= 0

[State 3631, Wow!!]
type = HitDef
trigger1 = Time = 0
attr = A, HA
hitflag = MAFD
guardflag = MA
affectteam = B ;To Prevent Intruders
getpower = 0,0
animtype = Hard
priority = 7,Hit   ;Hit,Miss,Dodge
damage = 25,4
pausetime = 8,8
sparkno = s7930+random%8
guard.sparkno = s7911
sparkxy = -7,-40
ground.type = Low
hitsound = s5,7
guardsound = s6,0
ground.slidetime = 8
ground.hittime = 25
air.hittime = 25
fall = 0
kill = 0
P2StateNo = 3628
ground.velocity = -3.5
air.velocity = -3.5
airguard.velocity = -5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0

[State 3631, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 10 && Vel Y > 0
value = 3632
ctrl = 0

[Statedef 3632]
type = A
movetype = A
physics = N
ctrl = 0
velset = 6,-3
sprpriority = 2
anim = 3632

[State 3631, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3631, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nojugglecheck

[State 3631, Crazy Voices]
type = PlaySnd
triggerall = !Var(38)
trigger1 = Time = 0
value = S188,2
channel = 0

[State 3631, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3631, Gravity]
type = Gravity
trigger1 = AnimElemTime(10) >= 0

[State 3631, Wow!!]
type = HitDef
trigger1 = AnimElem = 3
attr = A, HA
hitflag = MAFD
guardflag = MA
affectteam = B ;To Prevent Intruders
getpower = 0,0
animtype = DiagUp
priority = 7,Hit   ;Hit,Miss,Dodge
damage = 15,4
pausetime = 8,8
sparkno = s7930+random%8
guard.sparkno = s7911
sparkxy = -7,-40
hitsound = s5,7
guardsound = s6,0
ground.slidetime = 8
ground.hittime = 25
air.hittime = 56
yaccel = .5
kill = 0
fall = 1
fall.recover = 0
ground.velocity = -6, -9
air.velocity = -6, -9
airguard.velocity = -5,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0

[State 3631, Wow!!]
type = HitDef
trigger1 = AnimElem = 7
attr = A, HA
hitflag = MAFD
guardflag = MA
affectteam = B ;To Prevent Intruders
getpower = 0,0
animtype = DiagUp
priority = 7,Hit   ;Hit,Miss,Dodge
damage = 32,4
pausetime = 8,8
sparkno = s7930+random%8
guard.sparkno = s7911
sparkxy = -7,-40
hitsound = s23650,2
guardsound = s6,0
ground.slidetime = 8
ground.hittime = 25
air.hittime = 56
yaccel = 1.2
fall = 1
fall.recover = 0
ground.velocity = -15, -15
air.velocity = -15, -15
airguard.velocity = -5,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0

[State 3631, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 10 && Vel Y > 0
value = 52
ctrl = 0

;-----------------------------------------------------------
;                   Angry Mega Breaker Bash
;-----------------------------------------------------------

[Statedef 3650]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0,0
sprpriority = 3
anim = 3650

[State 3650, Crazy Voice!!]
type = PlaySnd
triggerall = !var(38)
trigger1 = Time = 0
value = S188,10

[State 3650, Play Snd]
type = PlaySnd
triggerall = !var(38)
trigger1 = AnimElem = 3
value = S188,7
channel = 0

[State 3650, Dash]
type = PlaySnd
trigger1 = AnimElem = 3
value = S9000,0

[State 3650, Level 4]
type = VarSet
trigger1 = time = 0
var(10) = 7

[State 3650, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 8

[State 3650, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Super"
ID = 7500
stateno = 7500
pos = 0,-55
postype = p1
ownpal = 1
supermovetime = 9999
persistent = 0

[State 3650, Super A]
type = SuperPause
triggerall = !var(38)
trigger1 = Time = 0
time = 150
anim = -1
sound = s7, 0
poweradd = -4000
darken = 0
p2defmul = 1

[State 3650, Super A]
type = SuperPause
triggerall = var(38)
trigger1 = Time = 0
time = 45
anim = -1
sound = s7, 0
poweradd = -4000
darken = 0
p2defmul = 1

[State 3650, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(1) = 0
value = SCA
time = 36

[State 3650, Sh*t]
type = HitDef
Trigger1 = Time = 0
attr = S, HT
hitflag = MA-
guardflag = M
priority = 3, Miss
sparkno = -1
p1sprpriority = 1
p1facing = 1
p2facing = 1
p1stateno = 3660
p2stateno = 3626
guard.sparkno = S7911
sparkxy = -8,-27
hitsound = S800,0
guardsound = S6, 0
numhits = 0
fall = 1
fall.recover = 0
ID = 3650

[State 3650, Change Back]
type = ChangeState
trigger1 = AnimTime = 0
value = 101
ctrl = 0

[Statedef 3660]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0,0
sprpriority = 2
anim = 3660

[State 3660, TargetBind]
type = TargetBind
trigger1 = 1
id = 3650
pos = 18,0

[State 3660, Hit Sparks]
type = Explod
trigger1 = AnimElemTime(2) = 0 || AnimElemTime(4) = 0 || AnimElemTime(6) = 0 || AnimElemTime(8) = 0 || AnimElemTime(10) = 0
trigger2 = AnimElemTime(12) = 0 || AnimElemTime(14) = 0 || AnimElemTime(16) = 0 || AnimElemTime(18) = 0 || AnimElemTime(20) = 0
trigger3 = AnimElemTime(22) = 0 || AnimElemTime(24) = 0 || AnimElemTime(26) = 0 || AnimElemTime(28) = 0 || AnimElemTime(30) = 0
trigger4 = AnimElemTime(32) = 0 || AnimElemTime(34) = 0 || AnimElemTime(36) = 0 || AnimElemTime(38) = 0 || AnimElemTime(40) = 0
trigger5 = AnimElemTime(42) = 0 || AnimElemTime(44) = 0 || AnimElemTime(46) = 0 || AnimElemTime(48) = 0 || AnimElemTime(50) = 0
trigger6 = AnimElemTime(52) = 0 || AnimElemTime(54) = 0 || AnimElemTime(56) = 0 || AnimElemTime(58) = 0 || AnimElemTime(60) = 0
trigger7 = AnimElemTime(62) = 0 || AnimElemTime(64) = 0 || AnimElemTime(66) = 0 || AnimElemTime(68) = 0 || AnimElemTime(70) = 0
trigger8 = AnimElemTime(72) = 0 || AnimElemTime(74) = 0 || AnimElemTime(76) = 0 || AnimElemTime(78) = 0 || AnimElemTime(80) = 0
trigger9 = AnimElemTime(82) = 0 || AnimElemTime(84) = 0 || AnimElemTime(86) = 0 || AnimElemTime(88) = 0 || AnimElemTime(90) = 0
trigger10 = AnimElemTime(92) = 0 || AnimElemTime(94) = 0 || AnimElemTime(96) = 0 || AnimElemTime(98) = 0 || AnimElemTime(100) = 0
trigger11 = AnimElemTime(102) = 0 || AnimElemTime(104) = 0 || AnimElemTime(106) = 0 || AnimElemTime(108) = 0 || AnimElemTime(110) = 0
trigger12 = AnimElemTime(112) = 0
anim = 7930+random%8
ID = 4122
pos = 41,-40
facing = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = 1,1
ontop = 1
ownpal = 1
removeongethit = 1

[State 3660, Hit Sounds]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0 || AnimElemTime(4) = 0 || AnimElemTime(6) = 0 || AnimElemTime(8) = 0 || AnimElemTime(10) = 0
trigger2 = AnimElemTime(12) = 0 || AnimElemTime(14) = 0 || AnimElemTime(16) = 0 || AnimElemTime(18) = 0 || AnimElemTime(20) = 0
trigger3 = AnimElemTime(22) = 0 || AnimElemTime(24) = 0 || AnimElemTime(26) = 0 || AnimElemTime(28) = 0 || AnimElemTime(30) = 0
trigger4 = AnimElemTime(32) = 0 || AnimElemTime(34) = 0 || AnimElemTime(36) = 0 || AnimElemTime(38) = 0 || AnimElemTime(40) = 0
trigger5 = AnimElemTime(42) = 0 || AnimElemTime(44) = 0 || AnimElemTime(46) = 0 || AnimElemTime(48) = 0 || AnimElemTime(50) = 0
trigger6 = AnimElemTime(52) = 0 || AnimElemTime(54) = 0 || AnimElemTime(56) = 0 || AnimElemTime(58) = 0 || AnimElemTime(60) = 0
trigger7 = AnimElemTime(62) = 0 || AnimElemTime(64) = 0 || AnimElemTime(66) = 0 || AnimElemTime(68) = 0 || AnimElemTime(70) = 0
trigger8 = AnimElemTime(72) = 0 || AnimElemTime(74) = 0 || AnimElemTime(76) = 0 || AnimElemTime(78) = 0 || AnimElemTime(80) = 0
trigger9 = AnimElemTime(82) = 0 || AnimElemTime(84) = 0 || AnimElemTime(86) = 0 || AnimElemTime(88) = 0 || AnimElemTime(90) = 0
trigger10 = AnimElemTime(92) = 0 || AnimElemTime(94) = 0 || AnimElemTime(96) = 0 || AnimElemTime(98) = 0 || AnimElemTime(100) = 0
trigger11 = AnimElemTime(102) = 0 || AnimElemTime(104) = 0 || AnimElemTime(106) = 0 || AnimElemTime(108) = 0 || AnimElemTime(110) = 0
trigger12 = AnimElemTime(112) = 0
value = S5,6
channel = -1

[State 3660, Add to the Combo]
type = HitAdd
trigger1 = AnimElemTime(2) = 0 || AnimElemTime(4) = 0 || AnimElemTime(6) = 0 || AnimElemTime(8) = 0 || AnimElemTime(10) = 0
trigger2 = AnimElemTime(12) = 0 || AnimElemTime(14) = 0 || AnimElemTime(16) = 0 || AnimElemTime(18) = 0 || AnimElemTime(20) = 0
trigger3 = AnimElemTime(22) = 0 || AnimElemTime(24) = 0 || AnimElemTime(26) = 0 || AnimElemTime(28) = 0 || AnimElemTime(30) = 0
trigger4 = AnimElemTime(32) = 0 || AnimElemTime(34) = 0 || AnimElemTime(36) = 0 || AnimElemTime(38) = 0 || AnimElemTime(40) = 0
trigger5 = AnimElemTime(42) = 0 || AnimElemTime(44) = 0 || AnimElemTime(46) = 0 || AnimElemTime(48) = 0 || AnimElemTime(50) = 0
trigger6 = AnimElemTime(52) = 0 || AnimElemTime(54) = 0 || AnimElemTime(56) = 0 || AnimElemTime(58) = 0 || AnimElemTime(60) = 0
trigger7 = AnimElemTime(62) = 0 || AnimElemTime(64) = 0 || AnimElemTime(66) = 0 || AnimElemTime(68) = 0 || AnimElemTime(70) = 0
trigger8 = AnimElemTime(72) = 0 || AnimElemTime(74) = 0 || AnimElemTime(76) = 0 || AnimElemTime(78) = 0 || AnimElemTime(80) = 0
trigger9 = AnimElemTime(82) = 0 || AnimElemTime(84) = 0 || AnimElemTime(86) = 0 || AnimElemTime(88) = 0 || AnimElemTime(90) = 0
trigger10 = AnimElemTime(92) = 0 || AnimElemTime(94) = 0 || AnimElemTime(96) = 0 || AnimElemTime(98) = 0 || AnimElemTime(100) = 0
trigger11 = AnimElemTime(102) = 0 || AnimElemTime(104) = 0 || AnimElemTime(106) = 0 || AnimElemTime(108) = 0 || AnimElemTime(110) = 0
trigger12 = AnimElemTime(112) = 0
value = 1

[State 3660, Big Ass Pain]
type = TargetLifeAdd
trigger1 = AnimElemTime(2) = 0 || AnimElemTime(4) = 0 || AnimElemTime(6) = 0 || AnimElemTime(8) = 0 || AnimElemTime(10) = 0
trigger2 = AnimElemTime(12) = 0 || AnimElemTime(14) = 0 || AnimElemTime(16) = 0 || AnimElemTime(18) = 0 || AnimElemTime(20) = 0
trigger3 = AnimElemTime(22) = 0 || AnimElemTime(24) = 0 || AnimElemTime(26) = 0 || AnimElemTime(28) = 0 || AnimElemTime(30) = 0
trigger4 = AnimElemTime(32) = 0 || AnimElemTime(34) = 0 || AnimElemTime(36) = 0 || AnimElemTime(38) = 0 || AnimElemTime(40) = 0
trigger5 = AnimElemTime(42) = 0 || AnimElemTime(44) = 0 || AnimElemTime(46) = 0 || AnimElemTime(48) = 0 || AnimElemTime(50) = 0
trigger6 = AnimElemTime(52) = 0 || AnimElemTime(54) = 0 || AnimElemTime(56) = 0 || AnimElemTime(58) = 0 || AnimElemTime(60) = 0
trigger7 = AnimElemTime(62) = 0 || AnimElemTime(64) = 0 || AnimElemTime(66) = 0 || AnimElemTime(68) = 0 || AnimElemTime(70) = 0
trigger8 = AnimElemTime(72) = 0 || AnimElemTime(74) = 0 || AnimElemTime(76) = 0 || AnimElemTime(78) = 0 || AnimElemTime(80) = 0
trigger9 = AnimElemTime(82) = 0 || AnimElemTime(84) = 0 || AnimElemTime(86) = 0 || AnimElemTime(88) = 0 || AnimElemTime(90) = 0
trigger10 = AnimElemTime(92) = 0 || AnimElemTime(94) = 0 || AnimElemTime(96) = 0 || AnimElemTime(98) = 0 || AnimElemTime(100) = 0
trigger11 = AnimElemTime(102) = 0 || AnimElemTime(104) = 0 || AnimElemTime(106) = 0 || AnimElemTime(108) = 0 || AnimElemTime(110) = 0
trigger12 = AnimElemTime(112) = 0
value = -4 ;-224 of Total Damage
ID = 3650
kill = 0
absolute = 0

[State 36600, Change To Blood Scratch P2]
type = TargetState
trigger1 = AnimTime = 0
value = 3652
ID = 3650

[State 3660, Change To Blood Scratch P1]
type = ChangeState
trigger1 = AnimTime = 0
value = 3661
ctrl = 0

[Statedef 3652]
type = A
movetype = H
physics = N
ctrl = 0
sprpriority = 1

[State 3652, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 3652

[Statedef 3653]
type = A
movetype = H
physics = N
ctrl = 0
sprpriority = 1

[State 3653, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 3653

[Statedef 3661]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0,0
sprpriority = 2
anim = 3661

[State 3661, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(2) < 0
id = 3650
pos = 28,-34

[State 3661, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
id = 3650
pos = 33,-44

[State 3661, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
id = 3650
pos = 15,-45

[State 3661, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(61) < 1
id = 3650
pos = 0,-8

[State 3661, Blood Sparks Left]
type = Explod
trigger1 = AnimElemTime(6) = 0 || AnimElemTime(14) = 0
trigger2 = AnimElemTime(22) = 0
anim = F11
ID = 4122
pos = -35,-35
facing = -1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = 1,1
ontop = 1
ownpal = 1
removeongethit = 1

[State 3661, Blood Sparks Right]
type = Explod
trigger1 = AnimElemTime(10) = 0 || AnimElemTime(18) = 0
anim = F11
ID = 4122
pos = 35,-35
facing = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = 1,1
ontop = 1
ownpal = 1
removeongethit = 1

[State 3660, Blood Sounds]
type = PlaySnd
trigger1 = AnimElemTime(6) = 0 || AnimElemTime(10) = 0 || AnimElemTime(14) = 0
trigger2 = AnimElemTime(18) = 0 || AnimElemTime(22) = 0
value = S188,11
channel = -1

[State 3660, Hit Sounds]
type = PlaySnd
trigger1 = AnimElemTime(36) = 0 || AnimElemTime(43) = 0 || AnimElemTime(50) = 0
trigger2 = AnimElemTime(57) = 0 || AnimElemTime(61) = 0
value = S5,11
channel = -1

[State 3660, Evil Laughter]
type = PlaySnd
trigger1 = AnimElemTime(27) = 0
value = S188,9
channel = 0

[State 3660, AssertSpecial]
type = AssertSpecial
trigger1 = AnimElemTime(27) >= 0 && AnimElemTime(28) < 0
flag = nomusic

[State 3660, Add to the Combo]
type = HitAdd
trigger1 = AnimElemTime(6) = 0 || AnimElemTime(10) = 0 || AnimElemTime(14) = 0
trigger2 = AnimElemTime(18) = 0 || AnimElemTime(22) = 0
trigger3 = AnimElemTime(36) = 0 || AnimElemTime(43) = 0 || AnimElemTime(50) = 0
trigger4 = AnimElemTime(57) = 0 || AnimElemTime(61) = 0
value = 1

[State 3660, Big Ass Pain]
type = TargetLifeAdd
trigger1 = AnimElemTime(6) = 0 || AnimElemTime(10) = 0 || AnimElemTime(14) = 0
trigger2 = AnimElemTime(18) = 0 || AnimElemTime(22) = 0
value = -10 ;-274 of Total Damage
ID = 3650
kill = 0
absolute = 0

[State 3660, Target State]
type = TargetState
trigger1 = AnimElemTime(36) = 0 || AnimElemTime(43) = 0 || AnimElemTime(50) = 0
trigger2 = AnimElemTime(57) = 0
value = 3653
ID = 3650

[State 3660, Big Ass Pain]
type = TargetLifeAdd
trigger1 = AnimElemTime(36) = 0 || AnimElemTime(43) = 0 || AnimElemTime(50) = 0
trigger2 = AnimElemTime(57) = 0
value = -25 ;-374 of Total Damage
ID = 3650
kill = 0
absolute = 0

[State 3660, Killer Damage]
type = TargetLifeAdd
trigger1 = AnimElemTime(61) = 0
value = -74 ;-450 of Total Damage
ID = 3650
kill = 1
absolute = 0

[State 3660, EnvColor]
type = EnvColor
trigger1 = AnimElemTime(61) = 1
value = 255,0,0
time = 4

[State 3660, EnvColor]
type = EnvColor
trigger1 = AnimElemTime(61) = 6
value = 255,0,0
time = 4

[State 3660, EnvColor]
type = EnvColor
trigger1 = AnimElemTime(61) = 12
value = 255,0,0
time = 4

[State 3660, EnvColor]
type = EnvColor
trigger1 = AnimElemTime(61) = 18
value = 255,0,0
time = 6

[State 3660, Target State]
type = TargetState
trigger1 = AnimElemTime(61) = 1 && !target,Alive
value = 15004
ID = 3650

[State 3660, TargetFacing]
type = TargetFacing
trigger1 = AnimElemTime(61) = 0
value = 1
ID = 3650

[State 3660, Target State]
type = TargetState
trigger1 = AnimElemTime(61) = 1 && target,Alive
value = 15005
ID = 3650

[State 3660, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 4895
ctrl = 0

;----------------------------------------------------------------
; CUMULONIMBUS STROKE (Attack Version)
;----------------------------------------------------------------

[Statedef 3100]
type = S
movetype = A
physics = S
velset = 0,0
anim = 3100
ctrl = 0
juggle = 8

;Super Cancel If Cancelled from: Any of the Two Hits of the 2-Hit Combo.
;                                From (Ground) Scythe.
[State 3100, Super]
type = Helper
trigger1 = Time = 0
trigger1 = PrevStateNo = 1600 || PrevStateNo = 1601 || PrevStateNo = 500
persistent = 0
id = 30005
name = "Super Cancel Helper"
pos = 0,-48
postype = P1
stateno = 2310
helpertype = normal
supermove = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 3100, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Super"
ID = 7500
pos = 0,-55
stateno = 7500
postype = p1
ownpal = 1
supermovetime = 9999
persistent = 0

[State 3100, Voice]
type = PlaySnd
trigger1 = Time = 0
value = S96000,5
channel = 0

[State 3100, Voice]
type = PlaySnd
trigger1 = AnimElemTime(2) = 1
value = S188,4
channel = 0

[State 3100, Do Not Attack]
type = ChangeAnim
triggerall = (AnimElemTime(2) < 0) && !var(45)
trigger1 = (Time < 20) || (command = "holda")
value = 3100
elem = 1

[State 3100, Switch To Attack]
type = ChangeAnim
triggerall = (AnimElemTime(2) < 0) && !var(45)
trigger1 = (Time > 70) || (Time >= 20 && command != "holda")
value = 3100
elem = 2

[State 3100, Level 1]
type = VarSet
trigger1 = time = 0
var(10) = 6

[State 3100, Super Pause]
type = SuperPause
trigger1 = Time = 0
time = 45
anim = -1
sound = s7,0
poweradd = -2000
darken = 0
p2defmul = 1

[State 3100, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,1
ignorehitpause = 1

[State 3100, Static]
type = Explod
trigger1 = Time = 1
anim = 3101
ID = 3101
pos = 0,0
facing = 1
removetime = 80
supermovetime = 0
pausemovetime = 0
scale = 1,1
ontop = 1
ownpal = 1
removeongethit = 1

[State 197, Recharge]
type = PalFX
trigger1 = (Time > 0) && (Time % 4 = 0) && Time < 45
time = 4
add = 0,0,256
mul = 256,256,256
sinadd = 0,0,256,3

[State 3100, Lightning One]
type = Explod
trigger1 = AnimElemTime(2) = 0
anim = 3061
ID = 3102
pos = -92,-330
facing = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
bindtime = -1
scale = 1,1.25
ontop = 1
ownpal = 1
removeongethit = 1

[State 3100, Lightning Two]
type = Explod
trigger1 = AnimElemTime(2) = 0
anim = 3061
ID = 3102
pos = -52,-340
facing = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = 1.25,1.5
bindtime = -1
ontop = 1
ownpal = 1
removeongethit = 1

[State 3100, Lightning Three]
type = Explod
trigger1 = AnimElemTime(2) = 0
anim = 3061
ID = 3102
pos = -15,-340
facing = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = 1.6,1.8
bindtime = -1
ontop = 1
ownpal = 1
removeongethit = 1

[State 3100, Lightning Four]
type = Explod
trigger1 = AnimElemTime(2) = 0
anim = 3061
ID = 3102
pos = 15,-340
facing = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = 1.6,1.8
bindtime = -1
ontop = 1
ownpal = 1
removeongethit = 1

[State 3100, Lightning Five]
type = Explod
trigger1 = AnimElemTime(2) = 0
anim = 3061
ID = 3102
pos = 52,-340
facing = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = 1.25,1.5
bindtime = -1
ontop = 1
ownpal = 1
removeongethit = 1

[State 3100, Lightning Six]
type = Explod
trigger1 = AnimElemTime(2) = 0
anim = 3061
ID = 3102
pos = 92,-330
facing = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
bindtime = -1
scale = 1,1.25
ontop = 1
ownpal = 1
removeongethit = 1

[State 11356, Thundah HitDef]
type = HitDef
trigger1 = AnimElemTime(2) = 0
attr = S,HP
hitflag = MAF
guardflag = MA
getpower = 0,0
affectteam = E
animtype = Up
priority = 6,Hit
damage = 265,12
pausetime = 0,15
guard.pausetime = 0, 0
sparkno = s7930+random%8
guard.sparkno = s7911
sparkxy = 0,-50
hitsound = s5,9
guardsound = s6,0
ground.type = High
fall = 1
fall.recover = 0
guard.kill = 0
yaccel = 0.9
ground.velocity = -.5,-30
air.velocity = -.5,-30
down.bounce = 1
kill = 1
guard.dist = 100
envshake.time = 25
envshake.freq = 180
envshake.ampl = 7

[State 3100, Thundah!!]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = S500,5

[State 3100, Jump away then]
type = ChangeState
trigger1 = AnimTime = 0
value = 4895
ctrl = 0

;----------------------------------------------------------------
; In Your Face (Yet Another Hit-Miss Super)
;----------------------------------------------------------------

[Statedef 3108]
type = S
movetype = A
physics = S
velset = 0,0
anim = 3108+var(27)
ctrl = 0
juggle = 13

[State 0, NotHitBy]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 8

;Super Cancel If Cancelled from: Any of the Two Hits of the 2-Hit Combo.
;                                From (Ground) Scythe.
[State 3108, Super]
type = Helper
trigger1 = Time = 0
trigger1 = PrevStateNo = 1600 || PrevStateNo = 1601 || PrevStateNo = 500
persistent = 0
id = 30005
name = "Super Cancel Helper"
pos = 0,-48
postype = P1
stateno = 2310
helpertype = normal
supermove = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 3108, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Super"
ID = 7500
pos = 0,-55
stateno = 7500
postype = p1
ownpal = 1
supermovetime = 9999
persistent = 0

[State 3108, Whoosh]
type = PlaySnd
trigger1 = AnimElemTime(3) = 3
value = S1,5
channel = 0

[State 3108, Whoosh 2]
type = PlaySnd
triggerall = var(27)
trigger1 = AnimElemTime(9) = 3
value = S1,5
channel = 0

[State 3108, Level 1]
type = VarSet
trigger1 = time = 0
var(10) = 5

[State 3108, Super Pause]
type = SuperPause
trigger1 = Time = 0
time = 45
anim = -1
sound = s7,0
poweradd = -1000
darken = 0
p2defmul = 1

[State 3108, The Only Hit]
type = HitDef
triggerall = !var(27)
trigger1 = AnimElemTime(4) = 0
attr = S,HA
hitflag = MAF
guardflag = MA
getpower = 0,0
animtype = Up
priority = 5,Hit
damage = 230,20
pausetime = 10,10
sparkno = s7930+random%8
guard.sparkno = s7911
sparkxy = 0,-50
hitsound = s5,9
guardsound = s6,0
ground.type = High
fall = 1
fall.recover = 0
yaccel = 0.45
ground.velocity = -2,-8
air.velocity = -2,-8
down.bounce = 1
kill = 1
guard.dist = 100
envshake.time = 25
envshake.freq = 200
envshake.ampl = 8

[State 3108, Hit One E. M.]
type = HitDef
triggerall = var(27)
trigger1 = AnimElemTime(4) = 0
attr = S,HA
hitflag = MAF
guardflag = MA
getpower = 0,0
animtype = Hard
priority = 6,Hit
damage = 110,10
pausetime = 0,10
sparkno = s7930+random%8
guard.sparkno = s7911
sparkxy = 0,-50
hitsound = s5,9
guardsound = s6,0
ground.type = High
ground.slidetime = 25
ground.hittime = 25
yaccel = 0.45
ground.velocity = -2
down.bounce = 1
kill = 0
guard.dist = 100
envshake.time = 25
envshake.freq = 200
envshake.ampl = 8

[State 3108, Hit Two (E.M.)]
type = HitDef
triggerall = var(27)
trigger1 = AnimElemTime(10) = 0
attr = S,HA
hitflag = MAF
guardflag = MA
getpower = 0,0
animtype = Up
priority = 5,Hit
damage = 135,12
pausetime = 10,20
sparkno = s7930+random%8
guard.sparkno = s7911
sparkxy = 0,-50
hitsound = s5,9
guardsound = s6,0
ground.type = High
fall = 1
fall.recover = 0
p2stateno = 4057
ground.velocity = -10,-5
air.velocity = -10,-5
down.bounce = 1
kill = 1
guard.dist = 100
envshake.time = 25
envshake.freq = 200
envshake.ampl = 8

[State 3100, Attack End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------------
; Flandre Plushie of Doom Level One!
;--------------------------------------------------------------------

[Statedef 4444]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0,0
sprpriority = 3
anim = 4444

[State 4444, Dash]
type = PlaySnd
trigger1 = AnimElemTime(11) = 1
value = S1,5

[State 4444, Level 4]
type = VarSet
trigger1 = time = 0
var(10) = 5

[State 4444, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Super"
ID = 7500
stateno = 7500
pos = 0,-45
postype = p1
ownpal = 1
supermovetime = 9999
persistent = 0

[State 4444, Helper]
type = Helper
trigger1 = AnimElemTime(12) = 0
helpertype = normal
name = "Flandre Plushie"
ID = 4445
stateno = 4445
pos = 51,-114
postype = p1
ownpal = 1
persistent = 0

[State 4444, Super A]
type = SuperPause
trigger1 = Time = 0
time = 45
movetime = 45
anim = -1
sound = s7, 0
poweradd = -1000
darken = 0
p2defmul = 1.2

[State 4444, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Flandre Plushie's States
;--------------------------------------------------------------------

[Statedef 4445]
type = S
movetype = A
physics = N
ctrl = 0
velset = 3,-7.2
sprpriority = 4
juggle = 28
anim = 4445

[State 4445, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.25

[State 4445, AngleAdd]
type = AngleAdd
trigger1 = 1
value = 1+4*abs(vel y)

[State 4445, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 0.25,0.25
ignorehitpause = 1

[State 4445, VarSet]
type = VarSet
trigger1 = Time = 0
fv = 1
value = 1

[State 4901, 1]
type = HitDef
trigger1 = Time = 0
hitonce = 1
attr = A, HP
damage = 170, 10
animtype = Hard
guardflag = MA
hitflag = MAFD
priority = 7, Hit
pausetime = 0, 8
sparkno = s2000+random%4
guard.sparkno = s7911
sparkxy = 0, 0
hitsound = s20, 33
getpower  = 0,0
guardsound = s6, 0
ground.type = Low
ground.slidetime = 5
ground.hittime  = 10
fall = 1
fall.recovertime = 0
ground.velocity = -7, 4
airguard.velocity = -4,-4
air.type = Low
air.velocity = -7,4
air.hittime = 12

[State 4445, ChangeState]
type = ChangeState
trigger1 = Vel Y > 0 && pos Y >=8
trigger2 = movecontact
value = 4446
ctrl = 0

[Statedef 4446]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0,0
anim = 8055047
sprpriority = 4

[State 4446, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S500,3

[State 4446, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S500,4

[State 4446, Explod]
type = Explod
trigger1 = Time = 0
anim = 4446
pos = 0,0
postype = p1
facing = 1
removetime = -2
scale = 1,1
ontop = 1
ownpal = 1

[State 4446, Explod]
type = Explod
trigger1 = Time = 0
anim = 4447
pos = 0,0
postype = p1
facing = 1
removetime = -2
scale = 1.25,1.25
ontop = 1
ownpal = 1

[State 4446, Explod]
type = Explod
trigger1 = Time = 8
trigger2 = Time = 18
trigger3 = Time = 34
trigger4 = Time = 45
anim = 4447
pos = -40,-40
random = 80,80
postype = p1
facing = 1
removetime = -2
scale = 0.75,0.75
ontop = 1
ownpal = 1

[State 4446, PlaySnd]
type = PlaySnd
trigger1 = Time = 8
trigger2 = Time = 18
trigger3 = Time = 34
trigger4 = Time = 45
value = S5,11

[State 4446, DestroySelf]
type = DestroySelf
trigger1 = Time = 46

;--------------------------------------------------------------------
; Flandre Plushie of Doom Level Two!
;--------------------------------------------------------------------

[Statedef 4447]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0,0
sprpriority = 3
anim = 4444

[State 4447, Dash]
type = PlaySnd
trigger1 = AnimElemTime(11) = 1
value = S1,5

[State 4447, Level 4]
type = VarSet
trigger1 = time = 0
var(10) = 6

[State 4447, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Super"
ID = 7500
stateno = 7500
pos = 0,-45
postype = p1
ownpal = 1
supermovetime = 9999
persistent = 0

[State 4447, Helper]
type = Helper
trigger1 = AnimElemTime(12) = 0
helpertype = normal
name = "Flandre Plushie II"
ID = 4445
stateno = 4448
pos = 51,-114
postype = p1
ownpal = 1
persistent = 0

[State 4447, Super A]
type = SuperPause
trigger1 = Time = 0
time = 45
movetime = 45
anim = -1
sound = s7, 0
poweradd = -2000
darken = 0
p2defmul = 1.2

[State 4447, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Flandre Plushie's States
;---------------------lEVEL 2----------------------------------------------

[Statedef 4448]
type = S
movetype = A
physics = N
ctrl = 0
velset = 2.2,-7.2
sprpriority = 4
juggle = 28
anim = 4445

[State 4445, VarSet]
type = VarSet
trigger1 = Time = 0
fv = 1
value = 1.15

[State 4445, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.25

[State 4445, AngleAdd]
type = AngleAdd
trigger1 = 1
value = 1+4*abs(vel y)

[State 4445, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 0.4,0.4
ignorehitpause = 1

[State 4901, 1]
type = HitDef
trigger1 = Time = 0
hitonce = 1
attr = A, HP
damage = 240, 20
animtype = Hard
guardflag = MA
hitflag = MAFD
priority = 7, Hit
pausetime = 0, 8
sparkno = s2000+random%4
guard.sparkno = s7911
sparkxy = 0, 0
hitsound = s20, 33
getpower  = 0,0
guardsound = s6, 0
ground.type = Low
ground.slidetime = 5
ground.hittime  = 10
fall = 1
fall.recovertime = 0
ground.velocity = -7, 4
airguard.velocity = -4,-4
air.type = Low
air.velocity = -7,4
air.hittime = 12

[State 4445, ChangeState]
type = ChangeState
trigger1 = Vel Y > 0 && pos Y >=8
trigger2 = movecontact
value = 4446
ctrl = 0

;--------------------------------------------------------------------
; Flandre Plushie of Doom Level Three!
;--------------------------------------------------------------------

[Statedef 4450]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0,0
sprpriority = 3
anim = 4450

[State 4447, Dash]
type = PlaySnd
trigger1 = AnimElemTime(11) = 1
trigger2 = AnimElemTime(12) = 24
trigger2 = AnimElemTime(12) = 36
value = S1,5

[State 4447, Level 4]
type = VarSet
trigger1 = time = 0
var(10) = 7

[State 4447, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Super"
ID = 7500
stateno = 7500
pos = 0,-45
postype = p1
ownpal = 1
supermovetime = 9999
persistent = 0

[State 4447, Helper]
type = Helper
trigger1 = AnimElemTime(12) = 0
helpertype = normal
name = "Flandre Plushie III"
ID = 4445
stateno = 4451
pos = 51,-114
postype = p1
ownpal = 1
persistent = 0

[State 4447, Helper]
type = Helper
trigger1 = AnimElemTime(12) = 24
helpertype = normal
name = "Flandre Plushie III"
ID = 4445
stateno = 4451
pos = 51,-114
postype = p1
ownpal = 1
persistent = 0

[State 4447, Helper]
type = Helper
trigger1 = AnimElemTime(12) = 36
helpertype = normal
name = "Flandre Plushie IV"
ID = 4445
stateno = 4452
pos = 51,-114
postype = p1
ownpal = 1
persistent = 0

[State 4447, Super A]
type = SuperPause
trigger1 = Time = 0
time = 45
movetime = 45
anim = -1
sound = s7, 0
poweradd = -3000
darken = 0
p2defmul = 1.2

[State 4447, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Flandre Plushie's States
;---------------------lEVEL 3----------------------------------------------

[Statedef 4451]
type = S
movetype = A
physics = N
ctrl = 0
velset = 1.4,-7.2
sprpriority = 4
juggle = 0
anim = 4445

[State 4445, VarSet]
type = VarSet
trigger1 = Time = 0
fv = 1
value = 0.75

[State 4445, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.25

[State 4445, AngleAdd]
type = AngleAdd
trigger1 = 1
value = 1+4*abs(vel y)

[State 4445, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 0.25,0.25
ignorehitpause = 1

[State 4901, 1]
type = HitDef
trigger1 = Time = 0
hitonce = 1
attr = A, HP
damage = 120, 10
animtype = Hard
guardflag = MA
hitflag = MAFD
priority = 7, Hit
pausetime = 0, 8
sparkno = s2000+random%4
guard.sparkno = s7911
sparkxy = 0, 0
hitsound = s20, 33
getpower  = 0,0
guardsound = s6, 0
ground.type = Low
ground.slidetime = 23
ground.hittime  = 23
fall.recovertime = 0
ground.velocity = 0, 0
airguard.velocity = -4,-2
air.type = Low
air.velocity = 0,0
air.hittime = 23

[State 4445, ChangeState]
type = ChangeState
trigger1 = Vel Y > 0 && pos Y >=8
trigger2 = movecontact
value = 4446
ctrl = 0

; Flandre Plushie's States
;--------------------------------------------------------------------

[Statedef 4452]
type = S
movetype = A
physics = N
ctrl = 0
velset = 1.4,-7.2
sprpriority = 4
juggle = 0
anim = 4445

[State 4445, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.25

[State 4445, AngleAdd]
type = AngleAdd
trigger1 = 1
value = 1+4*abs(vel y)

[State 4445, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 0.25,0.25
ignorehitpause = 1

[State 4445, VarSet]
type = VarSet
trigger1 = Time = 0
fv = 1
value = 1

[State 4901, 1]
type = HitDef
trigger1 = Time = 0
hitonce = 1
attr = A, HP
damage = 140, 0
animtype = Hard
guardflag = MA
hitflag = MAFD
priority = 7, Hit
pausetime = 0, 8
sparkno = s2000+random%4
guard.sparkno = s7911
sparkxy = 0, 0
hitsound = s20, 33
getpower  = 0,0
guardsound = s6, 0
ground.type = Low
ground.slidetime = 5
ground.hittime  = 10
fall = 1
fall.recovertime = 0
ground.velocity = -7, 4
airguard.velocity = -4,-4
air.type = Low
air.velocity = -7,4
air.hittime = 12

[State 4445, ChangeState]
type = ChangeState
trigger1 = Vel Y > 0 && pos Y >=8
trigger2 = movecontact
value = 4446
ctrl = 0

;;-----------------------------------------------------------------
;;Green Rage Takeover
[Statedef 4222]
type    = S
movetype= A
physics = S
juggle  = 12
velset = 0,0
anim = 4222
ctrl = 0
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time=0
trigger1 = random<750
value = S5008,random%4
volume = 255
channel = 0

[State 3000, Super Cancel]
type = Helper
triggerall = Time = 0
trigger1 = prevstateno=500 || prevstateno=502 || prevstateno=503 ;Scythe
trigger2 = prevstateno=1788 || prevstateno=1790 || prevstateno= 1792 || prevstateno= 1794 ;Fan-Whirlwind
trigger3 = prevstateno=1436 || prevstateno=1440 || prevstateno= 1441 || prevstateno=1444 ;Pounce
trigger4 = (prevstateno=[1433,1435]) ;Headbutt
persistent = 0
id = 30005
name = "Super Cancel Helper"
pos = 0,-48
postype = P1
stateno = 2310
helpertype = normal
supermove = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 65002, Substract Power]
type = PowerAdd
trigger1 = !(var(24)>=0 && var(28)=1) && Time=0
value = -1000

[State 0, Substract Seconds]
type = VarAdd
trigger1 = (var(24)>=0 && var(28)=1) && Time=0
var(24) = -120

[State 4222, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Super"
ID = 7500
pos = 0,-55
stateno = 7500
postype = p1
ownpal = 1
supermovetime = 9999
persistent = 0


[State 4222, Level 1]
type = VarSet
trigger1 = time = 0
var(10) = 5

[State 4222, Super Pause]
type = SuperPause
trigger1 = AnimElem = 2
time = 45
movetime = 45
anim = -1
sound = s7,0
darken = 0
p2defmul = 1
unhittable = 1

[State 4222, After Images]
type = AfterImage
trigger1 = AnimElem = 2, 1
paladd = 0,0,255
palmul = 0, 0, 134
trans = add
time = 2

[State 4222, After Images Time]
type = AfterImageTime
trigger1 = AnimElemTime(2) >= 1 && AnimElemTime(37) < 0
time = 2

[State 4222, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5 || AnimElem = 15 || AnimElem = 25
value = S1,5

[State 4222, Super E]
type = NotHitBy
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(37) < 0
value2 = C, NA
time = 1

[State 4222, 2]
type = VelSet
trigger1 = AnimElem = 5 || AnimElem = 16
x = 11.3

[State 4222, 2]
type = VelSet
trigger1 = AnimElem = 27
x = 8.6

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem=11 || Animelem= 22 || animelem= 33
value = S22000,2
volume=999
freqmul=1.25

[State 0, PlaySnd]
type = Null;PlaySnd
trigger1 = AnimElem=6 || Animelem= 17 || animelem= 28
value = S4222,0
volume=999
freqmul=1.25

[State 0, EnvShake]
type = EnvShake
trigger1 = AnimElem=13 || Animelem= 24
time = 8
freq = 190
ampl = -4
phase = 90

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 27
value = S237,0

[State 0, PlayerPush]
type = PlayerPush
triggerall = FrontEdgeBodyDist > 15
trigger1 = AnimElemTime(27) >= 0
value = 0

[State 4222, HitDef One]
type = HitDef
trigger1 = AnimElem = 5 || AnimElem = 16 || AnimElem = 27
attr = S, HA
animtype  = Hard
damage    = 50,4
getpower  = 0,0
priority  = 6
guardflag = MA
pausetime = 5,44
sparkno = s7930+random%8
guard.sparkno = s7911
sparkxy = -10,-74
hitsound   = s5,(2+5*(AnimElem = 27))
guardsound = s6,0
ground.type = High
ground.slidetime = 45
ground.hittime  = 45
ground.velocity = -4
air.velocity = -4,0
fall.animtype = Hard
guard.sparkno = s7911
envshake.time = 15
envshake.freq = 185
envshake.ampl = -3
forcestand=1

[State 4222, ChangeState]
type = ChangeState
trigger1 = MoveContact && AnimTime = 0
value = 4223
ctrl = 0

[State 4222, ChangeState]
type = ChangeState
trigger1 = !MoveContact && AnimTime = 0
value = 52
ctrl = 0

;;Green Rage Takeover Finisher (Level 1)
[Statedef 4223]
type    = S
movetype= A
physics = S
anim = 4223
ctrl = 0
sprpriority = 2
facep2 = 1

[State 4222, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4, =1
value = S1,5

[State 4222, Super D]
type = NotHitBy
trigger1 = AnimElemTime(6) < 0
value = SCA

[State 4222, HitDef One]
type = HitDef
trigger1 = AnimElem = 6
attr = S, HA
animtype  = Hard
damage    = 30,4
getpower  = 0,0
priority  = 6
guardflag = MA
pausetime = 15,15
sparkno = s7930+random%8
guard.sparkno = s7911
sparkxy = -10,-40
hitsound   = s5,9
guardsound = s6,0
ground.type = High
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -13,-0.6
air.velocity = -12,-0.6
fall.animtype = Hard
guard.sparkno = s7911
envshake.time = 15
envshake.freq = 185
envshake.ampl = -3
fall=1
fall.recover=0

[State 4222, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;;-----------------------------------------------------------------
;;Green Rage Takeover (Level 2)
[Statedef 4224]
type    = S
movetype= A
physics = S
juggle  = 12
velset = 0,0
anim = 4222
ctrl = 0
sprpriority = 2

;Super Cancel If Cancelled from: Any of the Two Hits of the 2-Hit Combo.
;                                From (Ground) Scythe.
[State 4224, Super]
type = Helper
trigger1 = Time = 0
trigger1 = PrevStateNo = 1600 || PrevStateNo = 1601 || PrevStateNo = 500
persistent = 0
id = 30005
name = "Super Cancel Helper"
pos = 0,-48
postype = P1
stateno = 2310
helpertype = normal
supermove = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 4224, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Super"
ID = 7500
pos = 0,-55
stateno = 7500
postype = p1
ownpal = 1
supermovetime = 9999
persistent = 0

[State 4224, Level 1]
type = VarSet
trigger1 = time = 0
var(10) = 6

[State 4224, Super Pause]
type = SuperPause
trigger1 = AnimElem = 2
time = 45
movetime = 45
anim = -1
sound = s7,0
poweradd = -2000
darken = 0
p2defmul = 1
unhittable = 1

[State 4224, After Images]
type = AfterImage
trigger1 = AnimElem = 2, 1
trans = add
time = 2

[State 4224, After Images Time]
type = AfterImageTime
trigger1 = AnimElemTime(2) >= 1 && AnimElemTime(31) < 0
time = 2

[State 4222, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5 || AnimElem = 15 || AnimElem = 25
value = S1,5

[State 4222, Super E]
type = NotHitBy
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(37) < 0
value2 = C, NA
time = 1

[State 4222, 2]
type = VelSet
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(37) < 0
x = 5.4

[State 4224, HitDef One]
type = HitDef
trigger1 = AnimElem = 5 || AnimElem = 16 || AnimElem = 27
attr = S, HA
animtype  = Hard
damage    = 50,4
getpower  = 0,0
priority  = 6
guardflag = MA
pausetime = 2,2
sparkno = s7930+random%8
guard.sparkno = s7911
sparkxy = -10,-74
hitsound   = s5,2
guardsound = s6,0
ground.type = High
ground.slidetime = 45
ground.hittime  = 45
ground.velocity = -4
air.velocity = -4,0
fall.animtype = Hard
guard.sparkno = s7911
envshake.time = 15
envshake.freq = 185
envshake.ampl = -3

[State 4224, ChangeState]
type = ChangeState
trigger1 = MoveContact && AnimTime = 0
value = 4225
ctrl = 0

[State 4224, ChangeState]
type = ChangeState
trigger1 = !MoveContact && AnimTime = 0
value = 52
ctrl = 0

;;Green Rage Takeover Finisher (Level 2)
[Statedef 4225]
type    = S
movetype= A
physics = S
anim = 3109
ctrl = 0
sprpriority = 2
facep2 = 1

[State 4225, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3)=1
trigger2 = AnimElemTime(9)=2
value = S1,5

[State 4225, Super D]
type = NotHitBy
trigger1 = AnimElemTime(10) < 0
value = SCA

[State 4224, HitDef One]
type = HitDef
trigger1 = AnimElem = 4
attr = S, HA
animtype  = Hard
damage    = 59,2
getpower  = 0,0
priority  = 6
guardflag = MA
pausetime = 5,5
sparkno = s7930+random%8
guard.sparkno = s7911
sparkxy = -10,-43
hitsound   = s5,6
guardsound = s6,0
ground.type = High
ground.slidetime = 40
ground.hittime  = 40
ground.velocity = 0
air.velocity = 0,0
fall.animtype = Hard
guard.sparkno = s7911
envshake.time = 15
envshake.freq = 185
envshake.ampl = -3
p1facing = 1
p2facing = -1

[State 4225, HitDef One]
type = HitDef
trigger1 = AnimElem = 10
attr = S, HA
animtype  = Hard
damage    = 80,4
getpower  = 0,0
priority  = 6
guardflag = MA
pausetime = 15,15
sparkno = s7930+random%8
guard.sparkno = s7911
sparkxy = -10,-40
hitsound   = s5,9
guardsound = s6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 12
ground.velocity = -16,-0.6
air.velocity = -15.2,-0.6
fall.animtype = Hard
guard.sparkno = s7911
envshake.time = 15
envshake.freq = 185
envshake.ampl = -3
fall=1

[State 4225, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;;-----------------------------------------------------------------
;;Green Rage Takeover (Level 3)
[Statedef 4226]
type    = S
movetype= A
physics = S
juggle  = 12
velset = 0,0
anim = 4222
ctrl = 0
sprpriority = 2

;Super Cancel If Cancelled from: Any of the Two Hits of the 2-Hit Combo.
;                                From (Ground) Scythe.
[State 4226, Super]
type = Helper
trigger1 = Time = 0
trigger1 = PrevStateNo = 1600 || PrevStateNo = 1601 || PrevStateNo = 500
persistent = 0
id = 30005
name = "Super Cancel Helper"
pos = 0,-48
postype = P1
stateno = 2310
helpertype = normal
supermove = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 4226, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Super"
ID = 7500
pos = 0,-55
stateno = 7500
postype = p1
ownpal = 1
supermovetime = 9999
persistent = 0

[State 4226, Level 1]
type = VarSet
trigger1 = time = 0
var(10) = 7

[State 4226, Super Pause]
type = SuperPause
trigger1 = AnimElem = 2
time = 45
movetime = 45
anim = -1
sound = s7,0
poweradd = -3000
darken = 0
p2defmul = 1
unhittable = 1

[State 4226, After Images]
type = AfterImage
trigger1 = AnimElem = 2, =1
palmul = 255,0,0
paladd = 129,0,0
trans = add
time = 2

[State 4226, After Images Time]
type = AfterImageTime
trigger1 = AnimElemTime(2) >= 1 && AnimElemTime(31) < 0
time = 2

[State 4226, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5 || AnimElem = 14 || AnimElem = 23
value = S1,5

[State 4226, Super E]
type = NotHitBy
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(33) < 0
value2 = C, NA
time = 1

[State 4226, 2]
type = VelSet
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(33) < 0
x = 7

[State 4226, HitDef One]
type = HitDef
trigger1 = AnimElem = 6 || AnimElem = 15 || AnimElem = 24
attr = S, HA
animtype  = Hard
damage    = 50,2
getpower  = 0,0
priority  = 6
guardflag = MA
pausetime = 0,0
sparkno = s7930+random%8
guard.sparkno = s7911
sparkxy = -10,-74
hitsound   = s5,2
guardsound = s6,0
ground.type = High
ground.slidetime = 30
ground.hittime  = 30
ground.velocity = -4
air.velocity = -4,0
fall.animtype = Hard
guard.sparkno = s7911
envshake.time = 15
envshake.freq = 185
envshake.ampl = -3

[State 4226, ChangeState]
type = ChangeState
trigger1 = MoveContact && AnimTime = 0
value = 4227
ctrl = 0

[State 4226, ChangeState]
type = ChangeState
trigger1 = !MoveContact && AnimTime = 0
value = 52
ctrl = 0

;;Green Rage Takeover Side-Switch Attempt (Level 3)
[Statedef 4227]
type    = S
movetype= A
physics = S
anim = 4227
ctrl = 0
sprpriority = 2
facep2 = 1

[State 4227, Super D]
type = NotHitBy
trigger1 = 1
value = SCA

[State 4227, After Images]
type = AfterImage
trigger1 = AnimElem = 1
palmul = 255,0,0
paladd = 129,0,0
trans = add
time = 2

[State 4227, After Images Time]
type = AfterImageTime
trigger1 = 1
time = 2

[State 4227, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, HA
getpower = 0,0
hitflag = M+
priority = 1, Miss
sparkno = -1
p1sprpriority = 2
p1facing = 1
p2facing = 1
hitsound = S800,0
p1stateno = 4228
p2stateno = 4232
guard.dist = 0
numhits = 0
ID = 4227

[State 4227, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Green Rage Takeover Side-Switch (Level 3)

[Statedef 4228]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 4228
sprpriority = 0

[State 4288, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
ignorehitpause = 1

[State 4228, After Images]
type = AfterImage
trigger1 = AnimElem = 1
palmul = 255,0,0
paladd = 129,0,0
trans = add
time = 2

[State 4228, After Images Time]
type = AfterImageTime
trigger1 = 1
time = 2

[State 4228, Grab Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = S1, 5

[State 4228, Bind 1]
type = TargetBind
trigger1 = AnimElemTime(2) < 0
pos = 49, 0
ID = 4227

[State 4228, SprPriority]
type = SprPriority
trigger1 = AnimElemTime(6) = 0
value = 2

[State 4228, Bind 2]
type = TargetBind
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
pos = 32, 0
ID = 4227

[State 4228, Bind 3]
type = TargetBind
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
pos = 5, 0
ID = 4227

[State 4228, Bind 4]
type = TargetBind
trigger1 = AnimElemTime(4) = 0
pos = -15, 0
ID = 4227

[State 4228, TargetVelSet]
type = TargetVelSet
trigger1 = AnimElemTime(4) = 1
x = 7
ID = 4227

[State 4228, TargetFacing]
type = TargetFacing
trigger1 = AnimElemTime(3) = 1
value = -1
ID = 4227

[State 4228, Turn]
type = Turn
trigger1 = AnimTime = 0

[State 4228, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 4229
ctrl = 0

[Statedef 4232]
type    = S
movetype= H
physics = S
ctrl = 0
poweradd = 52
sprpriority =1

[State 4232, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 4232

[State 4232, SelfState]
type = SelfState
trigger1 = Time >= 78
value = 52

;;-----------------------------------------------------------------
;;Green Rage Takeover Follow-on (Level 3)
[Statedef 4229]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 4229
ctrl = 0
sprpriority = 2

[State 4229, After Images]
type = AfterImage
trigger1 = AnimElem = 2, =1
palmul = 255,0,0
paladd = 129,0,0
trans = add
time = 2

[State 4229, After Images Time]
type = AfterImageTime
trigger1 = AnimElemTime(2) >= 1 && AnimElemTime(31) < 0
time = 2

[State 4229, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4 || AnimElem = 13 || AnimElem = 22
value = S1,5

[State 4229, Super E]
type = NotHitBy
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(32) < 0
value2 = C, NA
time = 1

[State 4229, 2]
type = VelSet
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(32) < 0
x = 7

[State 4229, HitDef One]
type = HitDef
trigger1 = AnimElem = 5 || AnimElem = 14 || AnimElem = 23
attr = S, HA
animtype  = Hard
damage    = 50,2
getpower  = 0,0
priority  = 6
guardflag = MA
pausetime = 0,0
sparkno = s7930+random%8
guard.sparkno = s7911
sparkxy = -10,-74
hitsound   = s5,2
guardsound = s6,0
ground.type = High
ground.slidetime = 30
ground.hittime  = 30
ground.velocity = -4
air.velocity = -4,0
fall.animtype = Hard
guard.sparkno = s7911
envshake.time = 15
envshake.freq = 185
p2facing = 1
envshake.ampl = -3

[State 4229, ChangeState]
type = ChangeState
trigger1 = MoveContact && AnimTime = 0
value = 4230
ctrl = 0

[State 4229, ChangeState]
type = ChangeState
trigger1 = !MoveContact && AnimTime = 0
value = 52
ctrl = 0

;;Green Rage Takeover Finisher (Level 1)
[Statedef 4230]
type    = S
movetype= A
physics = S
anim = 4230
ctrl = 0
sprpriority = 2
facep2 = 1

[State 4230, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S1,5

[State 4230, Super D]
type = NotHitBy
trigger1 = AnimElemTime(3) < 3
value = SCA

[State 4230, HitDef One]
type = HitDef
trigger1 = AnimElem = 3
attr = S, HA
animtype  = Hard
damage    = 56,4
getpower  = 0,0
priority  = 6
guardflag = MA
pausetime = 14,4
sparkno = s7930+random%8
guard.sparkno = s7911
sparkxy = -10,-40
hitsound   = s5,9
guardsound = s6,0
ground.type = High
ground.slidetime = 30
ground.hittime  = 30
ground.velocity = -22,-0.6
air.velocity = -21,-0.6
fall.animtype = Hard
guard.sparkno = s7911
envshake.time = 15
envshake.freq = 185
envshake.ampl = -3
fall=1


[State 4230, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Sneeze and Go! - Attempt

[Statedef 3930]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 3930
sprpriority = 0

[State 3930, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Super"
ID = 7500
pos = 0,-55
stateno = 7500
postype = p1
ownpal = 1
supermovetime = 9999
persistent = 0

[State 3930, Level 4]
type = VarSet
trigger1 = time = 0
var(10) = 7

[State 3930, Super Pause]
type = SuperPause
trigger1 = Time = 0
time = 45
anim = -1
sound = s7,0
poweradd = -4000
darken = 0
p2defmul = 1

[State 3930, 1]
type = HitDef
Trigger1 = AnimElem = 2
attr = S, HT
hitflag = M-
priority = 1, Miss
sparkno = -1
p1sprpriority = 1
p1facing = 1
p2facing = 1
p1stateno = 3932
p2stateno = 3931
ground.velocity = -19
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
hitsound = S800,0
guard.dist = 0
numhits = 0
fall = 1
ID = 3930

[State 3930, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 3931]
type    = S
movetype= H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 3

[State 0, VelSet]
type = VelSet
trigger1 = 1
x = 0
y = 0

[State 3931, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 3931

[Statedef 3932]
type    = S
movetype= A
physics = N
velset = 0,0
ctrl = 0
anim = 3932

[State 3932, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = S10250,1
channel = 0

[State 3932, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(28) = 0
value = S666,0
channel = 0

[State 3932, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElemTime(85) = 0
value = -455
ID = 3930
kill = 1

[State 3932, TargetState]
type = TargetState
trigger1 = AnimElemTime(85) = 0
value = 4850
ID = 3930

[State 3932, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(85) = 0
value = S5,9

[State 3932, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(47) = 0
value = S3930,0
channel = 0

[State 3932, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(75) = 0
value = S3930,1
channel = 0

[State 3932, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(77) = 0
value = S3930,3
channel = 0

[State 3932, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(85) = 0
value = S3930,2
channel = 0

[State 3932, EnvShake]
type = EnvShake
trigger1 = AnimElemTime(85) = 0
time = 25
freq = 190
ampl = -4

[State 3932, TargetVelSet]
type = TargetVelSet
trigger1 = AnimElemTime(85) = 0
x = -19
ID = 3930

[State 3932, VelSet]
type = VelSet
trigger1 = AnimElemTime(84) = 0
y = -8.9

[State 3932, Gravity]
type = Gravity
trigger1 = statetype = A

[State 3932, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(84) = 0
statetype = A

[State 3932, ChangeState]
type = ChangeState
trigger1 = statetype = A && (Pos Y>=28 && Vel Y > 0)
value = 3933
ctrl = 0

[Statedef 3933]
type    = S
movetype= A
physics = N
velset = 0,0
ctrl = 0
anim = 3933

[State 0, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3932, ChangeState]
type = ChangeState
trigger1 = Time = 80
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;New Angry Daniel

[Statedef 3848]
type    = S
movetype = A
physics = N
juggle  = 17
velset = 0, 0
anim = 3848
ctrl = 0
sprpriority = 2

;Super Cancel If Cancelled from: Any of the Two Hits of the 2-Hit Combo.
;                                From (Ground) Scythe.
[State 3848, Super]
type = Helper
trigger1 = Time = 0
trigger1 = PrevStateNo = 1600 || PrevStateNo = 1601 || PrevStateNo = 500
persistent = 0
id = 30005
name = "Super Cancel Helper"
pos = 0,-48
postype = P1
stateno = 2310
helpertype = normal
supermove = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 3848, NotHitBy]
type = NotHitBy
trigger1 = Time < 5
value = SCA

[State 3848, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) >= 0
value = ,AA,AP,AT

;Dream Cancel If Cancelled from: Kick Smash.
;                                Punch Smash.
[State 3848, Super]
type = Helper
trigger1 = Time = 0
trigger1 = PrevStateNo = 3000 || PrevStateNo = 3050
persistent = 0
id = 30005
name = "DREAM Cancel Helper"
pos = 0,-48
postype = P1
stateno = 2320
helpertype = normal
supermove = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 3848, Damn Yer Dhreahm Canzer Herpez]
type = TargetState
triggerall = Numtarget
trigger1 = Time = 0
trigger1 = Target,stateno != [120,160]
trigger1 = PrevStateNo = 3000 || PrevStateNo = 3050
value = 35300

[State 3848, Level 3/4]
type = VarSet
trigger1 = time = 0
var(10) = 7

[State 3848, Helper]
type = Helper
trigger1 = AnimElemtime(2) = 0
helpertype = normal
name = "Super"
ID = 7500
stateno = 7500
pos = 0,-55
postype = p1
ownpal = 1
supermovetime = 9999
persistent = 0

[State 3848, Super Pause]
type = SuperPause
trigger1 = AnimElemtime(2) = 0
time = 45
anim = -1
sound = s7,0
poweradd = -4000
darken = 0
p2defmul = 1

[State 3848, Funky After Images]
type = AfterImage
trigger1 = Time = 0
time = 2
length = 2
paladd = 200,0,0
timegap = 2
framegap = 3
trans = add

[State 3848, AfterImages]
type = AfterImageTime
trigger1 = Time
time = 2

[State 3848, ReversalDef]
type = ReversalDef
trigger1 = AnimElemTime(3) >= 0
reversal.attr = SCA,NA,SA,HA,NP,SP,HP
pausetime = 16,16
sparkno = S7911
hitsound = S6,0

[State 3848, Not Hit]
type = ChangeState
trigger1 = Time >= 85
value = 3849
ctrl = 0

;---------------------------------------------------------------------------
;SUPER NEWSPAPER

[Statedef 3849]
type    = S
movetype = A
physics = S
juggle  = 17
velset = 0, 0
anim = 3849
ctrl = 0
sprpriority = 2

[State 3849, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 30

[State 3849, Hit]
type = HitDef
trigger1 = Time = 1
attr = S,HA
hitflag = MAF
guardflag = H
getpower = 0,0
ID = 3849
priority = 7,Hit
damage = 456,20
pausetime = 0,10
guard.pausetime = 3, 20
sparkno = s2005+random%4
guard.sparkno = s7911
sparkxy = 10,-48
hitsound = s5,9
guardsound = s5,12
ground.type = High
ground.slidetime = 25
ground.hittime = 99
ground.velocity = -20,0
air.hittime = 20
air.velocity = -20,0
p1facing = 1
p2facing = 1
fall = 1
fall.yvelocity = -5
fall.recover = 0
fall.recovertime = 4
fall.damage = 0;20
p2stateno = 4850
down.bounce = 1
numhits = 1
envshake.time = 25
envshake.freq = 100
envshake.ampl = 4
fall.envshake.time = 25
fall.envshake.freq = 100
fall.envshake.ampl = 4
mindist = 0, -60
maxdist = 72, 0

[State 3849, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 1
value = S1,5

[State 4000, Guard Stagger]
type = TargetState
triggerall = NumTarget
trigger1 = MoveGuarded = 1
trigger1 = (target, statetype = S) || (target, statetype = C)
trigger1 = target, stateno = [120,160]
ID = 3849
value = 5301
ignorehitpause = 1
persistent = 0

[State 3848, Not Hit]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Kasdeya

[Statedef 2700]
type    = A
movetype= I
physics = N
velset = 0,0
anim=9741
ctrl = 0

[State ]
type = Explod
triggerall = Time<76
trigger1 = Time%3 = 0
id = 11100
anim = 11100
pos = 0,-25
random = 120,90
facing = 1 - 2*(random%2)
vfacing = 1 - 2*(random%2)
ownpal = 1
removetime=25
vel = 0.01*(random%20)*(1 - 2*(random%2)),-1.6 - 0.01*(random%40)
sprpriority = 0 + 4*(random < 500)
scale = 0.01*(40 + random%20),0.01*(40 + random%20)
pausemovetime = 2000000000
supermovetime = 2000000000

[State 2700, Explod]
type = Explod
trigger1 = Time=0
anim = 2700
ID = 2700
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -1
trans = addalpha
alpha = 256,0
scale = 4,4
ontop = 1
ownpal = 1
removeongethit = 0
pausemovetime = 2000000000
supermovetime = 2000000000

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = Time > 0 && Time <=76
ID = 2700
scale = 4-3*(time/76.000),4-3*(time/76.000)
trans = addalpha
alpha = 256-256*(time/76.000),256*(time/76.000)

[State 2700, RemoveExplod]
type = RemoveExplod
trigger1 = Time>=76
id = 2700

[State 2700, DestroySelf]
type = DestroySelf
trigger1 = Time>=76

;---------------------------------------------------------------------------
; FULL TENNIS COURTYARD

[Statedef 10350]
type    = S
movetype= A
physics = S
juggle  = 10
velset = 0,0
anim = 10350
ctrl = 0
sprpriority = 2

[State 10350, Level 1]
type = VarSet
trigger1 = time = 0
var(10) = 6

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time=0
value = S911,0
volume = 555
abspan = 0

[State 10350, Cute Kasdeya]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Super Kasdeya Helper"
ID = 10350
pos = 0,0
stateno = 2700
postype = p1
ownpal = 1
supermovetime = 9999
persistent = 0

[State 10350, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Super"
ID = 7500
pos = 0,-55
stateno = 7500
postype = p1
ownpal = 1
supermovetime = 9999
persistent = 0

[State 10350, Helper]
type = Helper
trigger1 = AnimElemTime(5)=0
helpertype = normal
name = "Super Racket"
ID = 10351
pos = 72,-60
stateno = 10351
postype = p1
ownpal = 1
persistent = 0

[State 10350, Burst Over]
type = VarSet
trigger1 = Time=0
var(24) = -1

[State 10350, Burst Over]
type = VarSet
trigger1 = Time=0
var(28) = -1

[State 10350, Explod]
type = Explod
trigger1 = Time=0
anim = 1211
ID = 1211
pos = 0,0
postype = back  ;p2,front,back,left,right
facing = 1
bindtime = -1
removetime = 76
supermovetime=999999
pausemovetime=999999
scale = 1,1
sprpriority = -7
ownpal = 1

[State 10350, Explod]
type = Explod
trigger1 = Time=0
anim = 28007
ID = 28007
pos = 0,75
postype = back  ;p2,front,back,left,right
facing = 1
bindtime = -1
removetime = -2
supermovetime=999999
pausemovetime=999999
scale = 1,1
sprpriority = -6
ownpal = 1

[State 10350, Super Pause]
type = SuperPause
trigger1 = Time = 0
time = 76
anim = -1
sound = s7,3
unhittable = 1
darken = 0

[State 10350, PlaySnd]
type = PlaySnd
trigger1 = AnimElem=6
value = S1,5

[State 10350, Super D]
type = NotHitBy
trigger1 = AnimElem = 2
value = SCA
time = 10

[State 10350, End]
type = ChangeState
triggerall=NumHelper(10351)
trigger1 = Helper(10351), movehit
value = 10360
ctrl = 0

[State 10350, End]
type = ChangeState
triggerall=AnimElemTime(5)>=0
trigger1 = !NumHelper(10351)
value = 10390
ctrl = 0

[Statedef 10351]
type    = A
movetype= A
physics = N
juggle  = 20
velset = 7.55,-0.11
anim = 10351
ctrl = 0
sprpriority = 2

[State ]
type = Explod
trigger1 = Time%5 = 0
id = 11100
anim = 11100
pos = 0,0
random = 20,20
facing = 1 - 2*(random%2)
vfacing = 1 - 2*(random%2)
ownpal = 1
removetime=20
vel = 0.01*(random%20)*(1 - 2*(random%2)),-1.6 - 0.01*(random%40)
sprpriority = 0 + 4*(random < 500)
scale = 0.003*(40 + random%20),0.003*(40 + random%20)
pausemovetime = 2000000000
supermovetime = 2000000000

;Generated by Fighter Factory PalFX Editor
[State 0, PalFXWiz]
type = PalFX
trigger1 = 1
time = 1
add = 100,200,150
mul = 20,120,24
sinadd = 85,110,55,10
invertall = 0
color = 0
ignorehitpause=1

[State 10351, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.16

[State 10351, AngleDraw]
type = AngleDraw
trigger1 = 1
value = time*2
ignorehitpause=1

[State -2, Explosion Moment AfterImages]
type = AfterImage
trigger1 = Time=0
palcontrast = 255, 15, 15
paladd = 255,0,0
palmul = .5, 0, 0
trans = add
time = -1
timegap = 2
framegap = 1
length = 20

[State 10351, CreateTheProj]
type = HitDef
trigger1 = Time=0
attr = S, HP
animtype  = Hard
damage    = 30,20
guardflag = MA
hitflag = MAP
pausetime = 12,12
sparkno = s2000+random%4
guard.sparkno = s7911
sparkxy = -5,-70
envshake.time = 12
envshake.freq = 90
envshake.ampl = -6
hitsound = s5,6;s237,1
guardsound = s6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 12
ground.velocity = -17
air.velocity = -14,-3.2
priority=6,Hit
guard.dist=900
kill=0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = 10352
ctrl = 0

[State 10351, DestroySelf]
type = DestroySelf
trigger1 = Pos Y > 270

[Statedef 10352]
type    = A
movetype= A
physics = N
juggle  = 20
velset = -4,-7
anim = 10351
ctrl = 0
sprpriority = 99

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time=0
value = S237,1

[State 10352, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.5

[State 10352, AngleDraw]
type = AngleDraw
trigger1 = 1
value = time*-2
scale = 1+time*0.1,1+time*0.1
ignorehitpause=1

[State 10352, DestroySelf]
type = DestroySelf
trigger1 = Pos Y > 270

[Statedef 10360]
type    = S
movetype= A
physics = S
juggle  = 20
anim = 10360
ctrl = 0
sprpriority = 2
facep2=1

[State 10360, VelSet]
type = VelSet
trigger1 = AnimElemTime(2)<0
x = 20
y = 0

[State 10360, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
ignorehitpause=1

[State 10360, HitDef One]
type = HitDef
trigger1 = Time=0
attr = S, HT
animtype  = Hard
damage    = 25,15
getpower  = 0,0
priority  = 7,Hit
guardflag = MA
hitflag=MA
pausetime = 2,0
sparkno = s7930+random%8
guard.sparkno = s7911
sparkxy = -10,-74
hitsound   = s5,2
guardsound = s6,0
ground.type = High
ground.slidetime = 45
ground.hittime  = 45
ground.velocity = -4
air.velocity = -4,0
fall.animtype = Hard
guard.sparkno = s7911
envshake.time = 15
envshake.freq = 185
envshake.ampl = -3
p1stateno=10370
p2stateno=10400
ID=10370
p1facing=1
p2facing=1
kill=0

[State 10360, ChangeState]
type = ChangeState
trigger1 = abs(Vel X) < 0.25
value = 0
ctrl = 1

[Statedef 10370]
type    = S
movetype= A
physics = N
anim = 10370
ctrl = 0
velset=0,0
sprpriority = 2
;6190

[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem=2
trigger2 = AnimElem=6
trigger3 = AnimElem=11
trigger4 = AnimElem=20||AnimElem=36||AnimElem=40||AnimElem=44
trigger5 = AnimElem=27||AnimElem=48||AnimElem=53||AnimElem=61||AnimElem=71
value = -12
ID = 10370
kill = 0
absolute = 0

[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem=81
value = -105
ID = 10370
kill = 0
absolute = 0

[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem=97
value = -280
ID = 10370
kill = 1
absolute = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noBG
flag2 = noFG
flag3 = timerfreeze
ignorehitpause=1

[State 10370, Explod]
type = Explod
trigger1 = AnimElem=2
trigger2 = AnimElem=6
trigger3 = AnimElem=11
trigger4 = AnimElem=20||AnimElem=36||AnimElem=40||AnimElem=44
trigger5 = AnimElem=27||AnimElem=48||AnimElem=53||AnimElem=61||AnimElem=71
trigger6 = AnimElem=81||AnimElem=97
anim = 10390+random%4
ID = 10390
pos = 30,-51
postype = p1
removetime = -2
supermovetime=0
pausemovetime=0
scale = 0.5,0.5
ontop = 1
ownpal = 1
removeongethit = 0

[State 10370, EnvShake]
type = EnvShake
trigger1 = AnimElem=2
trigger2 = AnimElem=6
trigger3 = AnimElem=11
trigger4 = AnimElem=20||AnimElem=36||AnimElem=40||AnimElem=44
trigger5 = AnimElem=27||AnimElem=48||AnimElem=53||AnimElem=61||AnimElem=71
time = 8
freq = 150
ampl = -4

[State 10370, EnvShake]
type = EnvShake
trigger1 = AnimElem=81||AnimElem=97
time = 35
freq = 300
ampl = -7

[State 10370, HitAdd]
type = HitAdd
trigger1 = AnimElem=2
trigger2 = AnimElem=6
trigger3 = AnimElem=11
trigger4 = AnimElem=20||AnimElem=36||AnimElem=40||AnimElem=44
trigger5 = AnimElem=27||AnimElem=48||AnimElem=53||AnimElem=61||AnimElem=71
trigger6 = AnimElem=81||AnimElem=97
value = 1

[State 0, TargetState]
type = TargetState
trigger1 = AnimElem=2
trigger2 = AnimElem=6
trigger3 = AnimElem=11
trigger4 = AnimElem=20||AnimElem=36||AnimElem=40||AnimElem=44
trigger5 = AnimElem=27||AnimElem=48||AnimElem=53||AnimElem=61||AnimElem=71
trigger6 = AnimElem=81
value = 10400
ID = 10370

[State 0, TargetState]
type = TargetState
trigger1 = AnimElem=97
value = 10410 ;Towards Wall (Fire)
ID = 10370

[State 10370, Weak Punch Sound]
type = PlaySnd
trigger1 = AnimElem=2
value = S5,0

[State 10370, Weak Kick Sound]
type = PlaySnd
trigger1 = AnimElem=6
value = S5,3

[State 10370, Med Punch Sound]
type = PlaySnd
trigger1 = AnimElem=11
value = S5,1

[State 10370, SONIC]
type = PlaySnd
trigger1 = AnimElem=36||AnimElem=88
value = S237,0

[State 10370, Cut Sound]
type = PlaySnd
trigger1 = AnimElem=20||AnimElem=36||AnimElem=40||AnimElem=44
value = S5,7

[State 7500, SuperBG]
type = Helper
trigger1 = Win
id = 17898
name = "KO"
pos = 0,0
postype = P1
stateno = 17898
helpertype = normal
keyctrl = 0
ownpal = 1
supermovetime = 99999999
pausemovetime = 99999999
persistent=0

[State 10370, Strong Punch Sound]
type = PlaySnd
trigger1 = AnimElem=27||AnimElem=48||AnimElem=53||AnimElem=61||AnimElem=71
value = S5,6

[State 10370, SUPER STRONG Sound]
type = PlaySnd
trigger1 = AnimElem=81||AnimElem=97
value = S5,9

[State 10370, TALDO Sound]
type = PlaySnd
trigger1 = AnimElem=97
value = S16000,0
volume=999

[State 10370, TALDO Sound]
type = PlaySnd
trigger1 = AnimElem=97
value = S5004,2
volume=999
freqmul=0.8

[State 10370, TALDO Sound]
type = PlaySnd
trigger1 = AnimElem=126
value = S4850,3

[State 10350, Explod]
type = Explod
trigger1 = Time=0
anim = 1211
ID = 1211
pos = 0,0
postype = back  ;p2,front,back,left,right
facing = 1
bindtime = -1
removetime = 471
supermovetime=999999
pausemovetime=999999
scale = 1,1
trans=addalpha
alpha=128,128
sprpriority = -7
ownpal = 1

[State 1100, Helper]
type = Helper
trigger1 = AnimElem=97
triggerall = NumHelper(6160) < 1
helpertype = normal
name = "P2 Flames"
ID = 6160
stateno = 6160
pos = 0,-57
postype = p2
facing = 1
keyctrl = 0
ownpal = 1

[State 10370, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(97)<0
id = 10370
pos = 24,0

[State 10370, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 10380, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
ignorehitpause=1

[State 10370, ChangeState]
type = ChangeState
trigger1 = AnimTime=0
value = 0
ctrl = 1

[Statedef 10400]
type    = S
movetype= H
physics = N
ctrl = 0
anim=5007
velset=0,0
sprpriority = 0

[State 10380, SelfState]
type = SelfState
trigger1 = !GetHitVar(isbound)
value = 5050

[State 10380, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
ignorehitpause=1

[State 5001, 2]
type = ChangeAnim
trigger1 = AnimTime = 0
value = 5017

[State 10370, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[Statedef 10410] ;Through The Air
type = A
movetype = H
physics = N
ctrl = 0

[State 4056, PalFXWiz]
type = PalFX
trigger1 = Time = 0
time = 120
add = 194,-100,-100
mul = 250,224,120
sinadd = 0,0,0,10
invertall = 0
color = 190

[State 4056, Let's Fly Away]
type = ChangeAnim2
trigger1 = Time = 0
value = 4057

[State 4056, Fly]
type = VelSet
trigger1 = Time = 0
x = -21
y = 0 ;<--- Added This Line

[State 4056, Follow The First Few Ticks]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = (Time < 25),0

[State 4056, Hit Wall]
type = ChangeState
trigger1 = Vel X > 0 && FrontEdgeBodyDist <= 3
trigger2 = Vel X < 0 && BackEdgeBodyDist <= 3
value = 4058 ;Turn And Fall
ctrl = 0

[Statedef 10390]
type = S
ctrl = 0
anim = 54191
velset = 0,0

[State 54190, Disk Scratch]
type = PlaySnd
trigger1 = !Time
value = S54191,0
abspan = 0
channel = 2

[State 54190, Disk Scratch]
type = PlaySnd
trigger1 = !Time
value = S54191,1
abspan = 0
channel = 0

[State 54190, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = nomusic

[State 54190, 3] ;Change to stand state when done
type = ChangeState
trigger1 = AnimTime=0
value = 0
ctrl=1

;---------------------------------------------------------------------------
; Photon Cutter
[Statedef 3750]
type    = S
movetype= A
physics = S
juggle  = 16
velset = 0,0
ctrl = 0
anim = 3750
sprpriority = 2

[State 3750, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Super"
ID = 7500
pos = 0,-55
stateno = 7500
postype = p1
ownpal = 1
supermovetime = 9999
persistent = 0

[State 3750, Level 1]
type = VarSet
trigger1 = time = 0
var(10) = 5

[State 3750, Substract Power]
type = PowerAdd
trigger1 = !(var(24)>=0 && var(28)=1) && Time=0
value = -1000

[State 3750, Substract Seconds]
type = VarAdd
trigger1 = (var(24)>=0 && var(28)=1) && Time=0
var(24) = -120

[State 3750, Super Pause]
type = SuperPause
trigger1 = Time = 0
time = 45
anim = -1
sound = s7,0
darken = 0
p2defmul = 1

[State 3750, After Images]
type = AfterImage
trigger1 = AnimElem = 2, 1
trans = add
time = 55

[State 3750, After Images Time]
type = AfterImageTime
trigger1 = AnimElemTime(3) >= 1 && AnimElemTime(10) < 0
time = 2

[State 3750, Super D]
type = NotHitBy
trigger1 = AnimElem = 2
value = , NA, SA, AT
time = 11

[State 3750, Super E]
type = NotHitBy
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(4) < -32
value2 = C, NA
time = 1

[State 3750, VelSet]
type = VelSet
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 2
x = 6.8

[State 3750, PlaySnd]
type = PlaySnd
trigger1 = AnimElem=3
value = S100,1+random%3

[State 3750, Screech]
type = playsnd
trigger1 = AnimElem = 4, =2
value = S101, 0

[State 3750, Whoosh!]
type = playsnd
trigger1 = AnimElem = 3
value = S1, 5

[State 3750, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, SA
animtype = Hard
pausetime = 8,8
hitflag = MAF
guardflag = MA
priority = 5, Hit
sparkno = S7930+random%8
guard.sparkno = s7911
sparkxy = -7,-36
damage = 30, 10
hitsound = S5, 6
guardsound = S6, 0
fall = 1
fall.recover = 0
ground.velocity = 10.3
ground.hittime = 14
ground.slidetime = 5
fall.recovertime = 12
ground.type = Low
p1stateno= 3760
p2stateno= 3779
kill=0
guard.kill=0
hitonce=1
ID=3750
getpower=0,0
mindist=12,0
maxdist=17,0

[State 3750, NotHitBy]
type = NotHitBy
trigger1 = movehit
value = SCA
ignorehitpause=1

[State 0, TargetBind]
type = Null;TargetBind
trigger1 = movehit
time = 1
id = 3750
pos = 30,0
ignorehitpause=0

[State 3750, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 3760]
type    = S
movetype= A
physics = S
anim=3760
ctrl = 0
sprpriority = 2

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 3780, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3750, VelSet]
type = VelSet
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(2) < -5
x = 7.8

[State 0, Turn]
type = Turn
trigger1 = AnimElemTime(4)=2

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,1

[State 3760, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 3761
ctrl = 0

[Statedef 3761]
type    = S
movetype= A
physics = N
anim=3761
ctrl = 0
sprpriority = 2

[State 3761, ChangeAnim]
type = ChangeAnim
trigger1 = Time < 15
value = 3761
elem = 1

[State 3761, TargetState]
type = TargetState
trigger1 = Time=28
value = 3780
ID = 3750

[State 0, HitAdd]
type = HitAdd
trigger1 = Time=28
value = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time=28
value = S5,6

[State 0, Explod]
type = Explod
trigger1 = Time=28
anim = 7930+random%8
ID = 7900
pos = 27,-90
postype = p1
facing = 1
removetime = -2
scale = 1,1
ontop = 1
ownpal = 1
removeongethit = 0

[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = Time=28
value = -50
ID = 3750
kill = 0

[State 0, EnvShake]
type = EnvShake
trigger1 = Time=28
time = 18
freq = 230
ampl = -6
phase = 90

[State 3761, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,1

[State 3780, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3761, ChangeState]
type = ChangeState
trigger1 = AnimTime=-10
value = 3762
ctrl = 0

[Statedef 3762]
type    = S
movetype= A
physics = N
anim=3762
ctrl = 0
sprpriority = 2


[State 3761, TargetState]
type = TargetState
trigger1 = Time=18
value = 3781
ID = 3750

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time=18
value = S5,9

[State 0, HitAdd]
type = HitAdd
trigger1 = Time=18
value = 1

[State 0, Explod]
type = Explod
trigger1 = Time=18
anim = 7930+random%8
ID = 7900
pos = 27,-70
postype = p1
facing = 1
removetime = -2
scale = 1,1
ontop = 1
ownpal = 1
removeongethit = 0

[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = Time=18
value = -98
ID = 3750
kill = 1

[State 0, EnvShake]
type = EnvShake
trigger1 = Time=18
time = 18
freq = 230
ampl = -6
phase = 90

[State 3761, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,1

[State 3780, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3761, CHANGE THEM!]
type = ChangeState
trigger1 = AnimTime=0
value = ifelse((ScreenPos X <20 || ScreenPos Y >300),4505,0)
ctrl = ifelse((ScreenPos X <20 || ScreenPos Y >300),0,1)

[Statedef 3779]
type    = A
movetype= H
physics = N
ctrl = 0
anim=5050
velset=0,0
sprpriority = 1

[State 3780, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause=1

[State 3780, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
ignorehitpause=1

[State 3780, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = 5050
elem = 1
ignorehitpause=1

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause=1

[State 0, ChangeState]
type = ChangeState
trigger1 = HitShakeover
value = 3780
ctrl = 0
ignorehitpause = 1

[Statedef 3780]
type    = A
movetype= H
physics = N
ctrl = 0
anim=5050
velset=0,-((2*0.5*190)**0.5)
sprpriority = 1

[State 3780, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.5

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 3780, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 3780, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3780, SelfState]
type = SelfState
trigger1 = Vel Y > 0 && Pos Y > 16
value = 5100

[Statedef 3781]
type    = A
movetype= H
physics = N
ctrl = 0
anim=5050
sprpriority = 1

[State 0, VelSet]
type = VelSet
trigger1 = Time=0
y = 0

[State 0, HitVelSet]
type = HitVelSet
trigger1 = Time=[0,1]
x = 1
y = 0

[State 3780, VelAdd]
type = VelAdd
trigger1 = ScreenPos X<=320 && Screenpos X >= 0
y = 0.5

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 3780, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 3780, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3780, SelfState]
type = SelfState
trigger1 = Vel Y > 0 && Pos Y > 16
value = 5100

;"Enter The Matrix" - Pose
[Statedef 4800]
type = S
movetype = A
physics = N
ctrl = 0
anim = 4800
velset=0,0
sprpriority = 2

[State 3000, Super Cancel]
type = Helper
triggerall = Time = 0
trigger1 = prevstateno=500 || prevstateno=502 || prevstateno=503 ;Scythe
trigger2 = prevstateno=1788 || prevstateno=1790 || prevstateno= 1792 || prevstateno= 1794 ;Fan-Whirlwind
trigger3 = prevstateno=1436 || prevstateno=1440 || prevstateno= 1441 || prevstateno=1444 ;Pounce
trigger4 = (prevstateno=[1433,1435]) ;Headbutt
persistent = 0
id = 30005
name = "Super Cancel Helper"
pos = 0,-48
postype = P1
stateno = 2310
helpertype = normal
supermove = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 4800, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
ignorehitpause=1

[State 3750, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "THE MATRIX"
ID = 4820
pos = 0,-55
stateno = 4820
postype = p1
ownpal = 1
supermovetime = 999999999
pausemovetime = 999999999
persistent = 0

[State 3750, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Super"
ID = 7500
pos = 0,-55
stateno = 7500
postype = p1
ownpal = 1
supermovetime = 9999
persistent = 0

[State 3750, Level 1]
type = VarSet
trigger1 = time = 0
var(10) = 5

[State 3750, Substract Power]
type = PowerAdd
trigger1 = !(var(24)>=0 && var(28)=1) && Time=0
value = -1000

[State 3750, Substract Seconds]
type = VarAdd
trigger1 = (var(24)>=0 && var(28)=1) && Time=0
var(24) = -120

[State 3750, Super Pause]
type = SuperPause
trigger1 = Time = 0
time = 45
anim = -1
sound = s7,0
darken = 0
p2defmul = 1
movetime=45

[State 4800, ChangeState]
type = ChangeState
trigger1 = AnimTime=0
value = 4801
ctrl = 0

;"Enter The Matrix" - Jump Startup
[Statedef 4801]
type = S
movetype = A
physics = N
ctrl = 0
anim = 100
sprpriority = 2

[State 1362, AfterImage]
type = AfterImage
trigger1 = Time = 0
time = 22
length = 20
timegap = 1
framegap = 2
trans = add

[State 4801, MATRIX PAUSA]
type = Pause
trigger1 = gametime%2=0
time = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time=0
value = S1362,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time=0
value = S100,1+random%3

[State 4801, PosAdd]
type = PosAdd
trigger1 = anim=100
x = 2.2

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 4801, ChangeAnim]
type = ChangeAnim
trigger1 = Time>24 && Anim=100
value = 40

[State 4801, VelSet]
type = VelSet
trigger1 = AnimTime=0 && Anim=40
x = 8.5
y = -5

[State 4801, ChangeState]
type = ChangeState
trigger1 = AnimTime=0 && Anim=40
value = 4802
ctrl = 0

;"Enter The Matrix" - PUNCH!
[Statedef 4802]
type = A
movetype = A
physics = N
ctrl = 0
anim = 610
sprpriority = 2

[State 0, NotHitBy]
type = NotHitBy
trigger1 = Time<5
value = SCA

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time=0
value = S22000,1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time=0
value = S41,0

[State 4802, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.5

[State 1362, AfterImage]
type = AfterImage
trigger1 = Time = 0
time = 60
length = 20
timegap = 1
framegap = 2
trans = add

[State 610, 3]
type = HitDef
trigger1 = Time = 0
attr = A, HA
damage = 30,10
guardflag = HA
priority = 6,Dodge
pausetime = 8,11
sparkno = s7930+random%8
guard.sparkno = s8060
sparkxy = -10,-55
hitsound   = s5,1
guardsound = s6,0
animtype = Med
ground.type = High
ground.slidetime = 90
ground.hittime  = 90
ground.velocity = -2.7
air.velocity = -3,-3.9
ID = 4800
hitonce=1
getpower=0,0

[State 0, TargetState]
type = TargetState
triggerall = numtarget
trigger1 = numtarget(4800)
trigger1 = !movereversed
trigger1 = movehit
value = 4810
ID = 4800
ignorehitpause=1
persistent=0

[State 4802, MATRIX PAUSA]
type = Pause
trigger1 = gametime%2=0
time = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 15 && Vel Y > 0
value = 4803;52
ctrl = 0

;"Enter The Matrix" - Land
[Statedef 4803]
type = S
movetype = A
physics = N
ctrl = 0
anim = 47
sprpriority = 2
velset=0,0
movehitpersist=1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time=0
value = S40,0

[State 4803, VelAdd]
type = PosSet
trigger1 = Time=0
y = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = AnimTime=0
value = ifelse(movecontact,4804,0)
ctrl = ifelse(movecontact,0,1)

[State 4802, MATRIX PAUSA]
type = Pause
trigger1 = gametime%2=0
time = 1

;"Enter The Matrix" - TORNADO SPINx3
[Statedef 4804]
type = S
movetype = A
physics = S
ctrl = 0
anim = 4804
sprpriority = 2
velset=0,0

[State 1362, AfterImage]
type = AfterImage
trigger1 = Time = 0
time = 80
length = 20
timegap = 1
framegap = 2
trans = add

[State 4804, VelSet]
type = VelSet
trigger1 = AnimElemTime(7)=0
x = 13

[State 4804, PlaySnd]
type = PlaySnd
triggerall = AnimElemTime(6)>=0
trigger1 = Time%4=0
value = S237,0
volume = 255
channel = 6
freqmul = 1.0+((time)/150.0)*1.5

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3)=4
value = S1,5

[State 500, HitDef]
type = HitDef
trigger1 = AnimElemTime(7)=0
trigger2 = AnimElemTime(11)=0
trigger3 = AnimElemTime(14)=0
attr = S, HA
pausetime = 8,8
hitflag = MAF
guardflag = MA
priority = 6, Hit
sparkno = S7930+random%8
guard.sparkno = s7911
sparkxy = -15,-45
damage = 35, 3
hitsound = S5, 7
guardsound = S6, 0
ground.velocity = -0.2
air.velocity = -2, -0.2
ground.hittime = 22
ground.slidetime = 22
ground.type = low
forcestand=1
ID=4800
hitonce=1
getpower=0,0

[State 4805, TargetBind]
type = TargetBind
triggerall = numtarget(4800)
triggerall = movehit
trigger1 =  AnimElemTime(7)>=0
id = 4800
pos = 24,0
ignorehitpause=1

[State 0, TargetState]
type = TargetState
triggerall = numtarget
trigger1 = numtarget(4800)
trigger1 = !movereversed
trigger1 = movehit
trigger1 =  AnimElemTime(14)>=0
value = 4810
ID = 4800
ignorehitpause=1

[State 4805, VelAdd]
type = PosSet
trigger1 = Time=0
y = 0

[State 4805, ChangeState]
type = ChangeState
trigger1 = AnimTime=0
value = ifelse(movecontact,4805,0)
ctrl = ifelse(movecontact,0,1)

[State 4805, MATRIX PAUSA]
type = Pause
trigger1 = gametime%2=0
time = 1

[Statedef 4805]
type = S
movetype = A
physics = S
ctrl = 0
anim = 4805
sprpriority = 2
velset=0,0

[State 4805, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(5)=1
statetype = A
movetype = A
physics = N

[State 4805, VelSet]
type = VelSet
trigger1 = AnimElemTime(5)=1
y = -5.6

[State 4805, VelAdd]
type = VelAdd
triggerall = statetype = A
trigger1 = Vel Y < 0
y = 0.5

[State 4805, VelAdd]
type = VelSet
trigger1 = Vel Y >= 0
y = 0

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause=1

[State 4805, ChangeState]
type = ChangeState
trigger1 = AnimTime=0
value = 4806
ctrl = 0

[State 4805, MATRIX PAUSA]
type = Pause
trigger1 = gametime%2=0
time = 1

[Statedef 4806]
type = A
movetype = A
physics = N
ctrl = 0
anim = 4806
sprpriority = 2
velset=0,0

[State 420, Whoosh!]
type = playsnd
trigger1 = AnimElem=8
value = S2435, 0

[State 4805, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.37

[State 4805, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, HA
pausetime = 11,30
animtype = Back
hitflag = MAD
guardflag = L
priority = 7, Hit
sparkno = S7930+random%8
guard.sparkno = s8060
sparkxy = -15,-18
damage = 45
ground.type = Trip
hitsound = S5, 9
guardsound = S6, 0
ground.velocity = -8, -4
air.velocity = -7, -1
ground.hittime = 45
ground.slidetime = 45
fall=1
fall.recover=0
getpower=0,0
yaccel=1

[State 4806, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 15 && Vel Y > 0
value = 4807;52
ctrl = 0

[State 4805, MATRIX PAUSA]
type = Pause
trigger1 = gametime%2=0
time = 1

;---------------------------------------------------------------------------
;Crouch Strong Punch
[Statedef 4807]
type    = L
movetype= I
physics = N
juggle  = 7
velset = 0,0
ctrl = 0
anim = 450
sprpriority = 2

[State 4805, VelAdd]
type = PosSet
trigger1 = Time=0
y = 0

[State 4805, MATRIX PAUSA]
type = Pause
trigger1 = gametime%2=0
time = 1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = Time=0
value = 450
elem=8

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

[State 420, Whoosh!]
type = playsnd
trigger1 = AnimElem=8, 1
value = S54191, 0
channel=1

[State 4806, ChangeState]
type = ChangeState
trigger1 = AnimTime=0
value = 0;52
ctrl = 1

;RECUERDA PONERLE EL PISTOLAZO!!!111111

[Statedef 4810]
type    = A
movetype= H
physics = N
ctrl = 0
anim=5002
sprpriority = 1

[State 0, HitVelSet]
type = HitVelSet
trigger1 = Time=[0,1]
x = 1
y = 0

[State 3780, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.5

[State 3780, SelfState]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 16
value = 4811

[Statedef 4811]
type    = S
movetype= H
physics = N
ctrl = 0
anim=5007
sprpriority = 1
velset=0,0

[State 0, PosSet]
type = PosSet
trigger1 = Time=0
y = 0

[State 3780, SelfState]
type = SelfState
trigger1 = Time>=360
value = 0
ctrl=1

;====================MATRIX HELPER===============================
[Statedef 4820]
type    = S
movetype= I
physics = N
ctrl = 0
anim=9741
sprpriority = 1
velset=0,0

[State 4820, PlaySnd]
type = PlaySnd
trigger1 = Time=0
value = S4800,0
abspan=0
channel=1
volume=999

[State 4820, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noFG
flag2 = timerfreeze
flag3 = nomusic
ignorehitpause=1

[State 4820, StopSnd]
type = StopSnd
trigger1 = (root,stateno!=[4800,4806]) && root,movetype!=A
channel = 1

[State 4820, DestroySelf]
type = DestroySelf
trigger1 = (root,stateno!=[4800,4809]) && root,movetype!=A
ignorehitpause=1


;================WTF============

[Statedef 4881]
type    = S
movetype= A
physics = S
juggle  = 15
ctrl = 0
velset = 0,0
anim = 4881
sprpriority = -1
facep2=1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time=0
value = S5004,7

[State 3000, Super Cancel]
type = Helper
triggerall = Time = 0
trigger1 = prevstateno=500 || prevstateno=502 || prevstateno=503 ;Scythe
trigger2 = prevstateno=1788 || prevstateno=1790 || prevstateno= 1792 || prevstateno= 1794 ;Fan-Whirlwind
trigger3 = prevstateno=1436 || prevstateno=1440 || prevstateno= 1441 || prevstateno=1444 ;Pounce
trigger4 = (prevstateno=[1433,1435]) ;Headbutt
persistent = 0
id = 30005
name = "Super Cancel Helper"
pos = 0,-48
postype = P1
stateno = 2310
helpertype = normal
supermove = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 3000, Dream Cancel]
type = Helper
triggerall = Time = 0
trigger1 = (prevstateno=3050||prevstateno=4222||prevstateno=4804)
persistent = 0
id = 30005
name = "Dream Cancel Helper"
pos = 0,-48
postype = P1
stateno = 2320
helpertype = normal
supermove = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 0, TargetState]
type = TargetState
trigger1 = prevstateno=3050
trigger1 = Time=0
value = 35301
ID = 3050

[State 0, VelSet]
type = VelSet
trigger1 = AnimElem=5
x = 12.2

[State 0, NotHitBy]
type = NotHitBy
trigger1 = Time < 13
value = ,NA,NT,NP

[State 65002, Substract Power]
type = PowerAdd
trigger1 = !(var(24)>=0 && var(28)=1) && Time=0
value = -2000+((prevstateno=3050||prevstateno=4222||prevstateno=4804)*-1000)

[State 3750, Substract Seconds]
type = VarAdd
trigger1 = (var(24)>=0 && var(28)=1) && Time=0
var(24) = -240

[State 3000, Super Pause]
type = SuperPause
trigger1 = Time = 0
time = 45
anim = -1
sound = s7,0
darken = 0
p2defmul = 1+ifelse(prevstateno=3050,0.6,ifelse((prevstateno=4222||prevstateno=4804),0.7,0))
movetime=7

[State 3750, Level 1]
type = VarSet
trigger1 = time = 0
var(10) = 6

[State 0, VarRandom]
type = VarRandom
trigger1 = Time=0
v = 2
range = 0,4

[State 0, VarRandom]
type = VarRandom
trigger1 = Time=0 && VAR(13)
v = 2
range = 1,4

[State 3750, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Super"
ID = 7500
pos = 0,-55
stateno = 7500
postype = p1
ownpal = 1
supermovetime = 9999999
pausemovetime = 9999999
persistent = 0

[State 4852, NotHitBy]
type = NotHitBy
trigger1 = movehit
value = SCA
ignorehitpause=1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem=3
value = S237,0

[State 4852, Width]
type = Width
trigger1 = (AnimElemTime (2) >= 0) && (AnimElemTime (7) < 0)
value = 15,0

[State 220, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 12
value = S16000,0

[State 220, PlaySnd]
type = PlaySnd
trigger1 = time = 19
value = S1,5

[State 220, 2]
type = HitDef
triggerall=(var(2)!=4)
trigger1 = AnimElem = 12
attr = S, HA
animtype  = Hard
hitflag = MAF
damage    = 35,15
priority=6,Miss
guardflag = MA
pausetime = 30,30
sparkno = s7930+random%8
guard.sparkno = s8060
sparkxy = -13,-55
hitsound   = s5,2
guardsound = s6,0
ground.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -15
air.velocity = -15,0
kill = 0
ID=4850
p2stateno=4890
getpower=0,0
hitonce=1

[State 220, 2]
type = HitDef
triggerall=(var(2)=4)
trigger1 = AnimElem = 12
attr = S, HA
animtype  = Hard
hitflag = MAF
damage    = 35,15
priority=6,Miss
guardflag = MA
pausetime = 30,30
sparkno = s7930+random%8
guard.sparkno = s8060
sparkxy = -13,-55
hitsound   = s5,2
guardsound = s6,0
ground.type = High
ground.slidetime = 90
ground.hittime  = 90
ground.velocity = -15
air.velocity = -15,0
kill = 0
ID=4850
getpower=0,0

[State 220, 5]
type = ChangeState
triggerall = (var(2)=4)
triggerall = movehit
trigger1 = AnimTime>=-22
value = 4900
ctrl = 0

[State 220, 5]
type = ChangeState
triggerall = movereversed || !movehit || (!numtarget(4850))
trigger1 = Animtime>=0
value = 0
ctrl = 1

[State 220, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 220, 5]
type = ChangeState
triggerall = numtarget(4850) && (var(2)!=4)
trigger1 = target(4850),ScreenPos X > 420
trigger2 = target(4850),ScreenPos X < -100
value = ifelse(var(2)<=2,(4882+var(2)*2),4896)
ctrl = 0

[Statedef 4900]
type    = S
movetype= A
physics = S
ctrl = 0
velset = 0,0

[State 4900, Helper]
type = Helper
trigger1 = Time= 0
helpertype = normal
name = "Train Yukarin"
ID = 4900
stateno = 4901
pos = 25,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime=0
pausemovetime=0
size.xscale = 1
size.yscale = 1

[State 4900, ChangeState]
type = ChangeState
trigger1 = Time>250
value = 0
ctrl = 1

[Statedef 4901];Yukarin Appearing
type    = S
movetype= A
physics = S
ctrl = 0
velset = 0,0
anim= 333892

[State 4901, Explod]
type = Explod
trigger1 = Time=0
anim = 333894
ID = 333894
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -1
scale = 1,1

[State 4901, ModifyExplod]
type = ModifyExplod
trigger1 = Time < 16
ID = 333894
trans=addalpha
alpha = ((Time)/16.000)*256,256-((Time)/16.000)*256
scale = 1,((Time)/16.000)

[State 4901, ModifyExplod]
type = ModifyExplod
trigger1 = Time >= 16
ID = 333894
trans=addalpha
alpha = 256,0
scale = 1,1

[State 4901, Trans]
type = Trans
trigger1 = Time < 16
trans = addalpha
alpha = ((Time)/16.000)*256,256-((Time)/16.000)*256

[State 4901, AngleDraw]
type = AngleDraw
trigger1 = Time < 16
scale = ((Time)/16.000),1

[State 4901, PlaySnd]
type = PlaySnd
trigger1 = Time=2
value = S4850,3

[State 4901, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(5)=0
value = S2435,0

[State 4901, Helper]
type = Helper
trigger1 = AnimElemTime(6)=0
helpertype = normal
name = "TRAIIINNN!!!11"
ID = 4901
stateno = 4903
pos = 450,0
postype = p1
facing = -1
keyctrl = 0
ownpal = 1
supermovetime=0
pausemovetime=0
size.xscale = 1
size.yscale = 1

[State 4900, ChangeState]
type = ChangeState
trigger1 = AnimElemTime(6)>0 && !NumHelper(4901)
value = 4902
ctrl = 0

[Statedef 4902];Dissapearing
type    = S
movetype= A
physics = S
ctrl = 0
velset = 0,0
anim= 333893

[State 4901, ModifyExplod]
type = ModifyExplod
trigger1 = Time > 5
ID = 333894
trans=addalpha
alpha = 256-((Time-5)/5.000)*256,((Time-5)/5.000)*256
scale = 1,1-((Time-5)/5.000)

[State 4902, Trans]
type = Trans
trigger1 = Time > 5
trans = addalpha
alpha = 256-((Time-5)/30.000)*256,((Time-5)/30.000)*256

[State 4902, AngleDraw]
type = AngleDraw
trigger1 = Time > 5
scale = 1-((Time-5)/30.000),1

[State 4902, PlaySnd]
type = PlaySnd
trigger1 = Time=2
value = S4850,3

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = Time>=10
id =  333894

[State 4902, DestroySelf]
type = DestroySelf
trigger1 = Time>=35

[Statedef 4903];Train
type    = S
movetype= A
physics = N
ctrl = 0
anim= 4903

[State 4901, Helper]
type = Helper
trigger1 = Time=0
helpertype = normal
name = "Little Gift"
ID = 4904
stateno = 4904
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime=0
pausemovetime=0
size.xscale = 1
size.yscale = 1

[State 4903, VelSet]
type = VelSet
trigger1 = Time=0
x = 19

[State 1220, 2]
type = HitDef
trigger1 = Time = 0
attr = S, HA
animtype  = Hard
damage    = 150, 9
getpower  = 0,0
priority  = 5
sparkno=S7930+random%8
guardflag = MA
hitflag=MAFD
affectteam=E
pausetime = 0,20
guard.pausetime =0,45
sparkxy = 0,-20
hitsound   = s2000,1
guardsound = s6,0
ground.type = Low
ground.slidetime = 20
ground.hittime  = 30
ground.velocity = -10,-18
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
guard.velocity = -4
air.velocity = -5,-16
airguard.velocity = -5,-5
fall = 1
fall.recovertime=9999
fall.recover=0
fall.animtype = Hard
yaccel = .5

[State 4903, DestroySelf]
type = DestroySelf
triggerall = Time>120
trigger1 = (screenpos X > 700) || (screenpos X < -580)

[Statedef 4904];Train 2
type    = S
movetype= A
physics = N
ctrl = 0
anim= 4903

[State 4903, VelSet]
type = VelSet
trigger1 = Time=0
x = 19

[State 4904, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = invisible
ignorehitpause=1

[State 4904, 2]
type = HitDef
trigger1 = Time = 0
attr = S, HA
animtype  = Hard
damage    = 20, 20
getpower  = 0,0
priority  = 5
sparkno=S7930+random%8
hitflag=MAFD
affectteam=F
pausetime = 0,20
guard.pausetime =0,45
sparkxy = 0,-20
hitsound   = s2000,1
guardsound = s6,0
ground.type = Low
ground.slidetime = 20
ground.hittime  = 30
ground.velocity = -10,-18
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
guard.velocity = -4
air.velocity = -5,-16
airguard.velocity = -5,-5
fall = 1
fall.recovertime=9999
fall.recover=0
fall.animtype = Hard
yaccel = .5
kill=0
guard.kill=0

[State 4903, DestroySelf]
type = DestroySelf
triggerall = Time>120
trigger1 = (screenpos X > 700) || (screenpos X < -580)

[Statedef 4882]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
velset = 0,0
anim = 0
sprpriority = -1

[State 0, StopSnd]
type = StopSnd
trigger1 = Time=0
channel = -1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 4882, Whoosh!]
type = playsnd
trigger1 = Time=0
value = S4850, 0

[State 4882, MOFO]
type = Explod
trigger1 = Time=0
anim = 4880
ID = 4850
pos = 320,0
postype = back  ;p2,front,back,left,right
facing = -1
bindtime = -1
removetime = 684
supermovetime=999999
pausemovetime=999999
scale = 0.5,0.5
ontop=1
ownpal = 1

[State 4882, TargetBind]
type = TargetBind
trigger1 = 1
id = 4850
pos = 80,-1200

[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = Time=0
value = -254
ID = 4850
kill = 0
absolute = 0

[State 0, HitAdd]
type = HitAdd
trigger1 = Time=0
trigger2 = Time=30
trigger3 = Time=60
trigger4 = Time=76
trigger5 = Time=92
trigger6 = Time=106
trigger7 = Time=122
trigger8 = Time = 132
trigger9 = Time=140
trigger10 = Time=150
trigger11 = Time>=180 && Time%15=0
value = 69+(Time > 50)*50

[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = Time=683
value = -1
ID = 4850
kill = 1
absolute = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nomusic
flag2 = timerfreeze
ignorehitpause=1

[State 4882, PAUSE]
type = Pause
trigger1 = Time=0
time = 684
movetime = 684

[State 4882, EnvColor]
type = EnvColor
trigger1 = 1
value = 0,0,0
time = 1
under = 0
ignorehitpause=1

[State 0, TargetState]
type = TargetState
trigger1 = Time>=684
value = 4892
ID = 4850

[State 0, TargetDrop]
type = TargetDrop
trigger1 = Time>=684

[State 0, ChangeState]
type = ChangeState
trigger1 = Time>=685
value = 4883
ctrl = 0

;=====YUYUKOCAST
[Statedef 4884]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
velset = 0,0
anim = 0
sprpriority = -1

[State 0, StopSnd]
type = StopSnd
trigger1 = Time=0
channel = -1

[State 4884, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 4884, DC STARTUP]
type = playsnd
trigger1 = Time=0
value = S4850, 1

[State 4884, DC 1]
type = Explod
trigger1 = Time=111
trigger2 = Time=134
trigger3 = Time=156
trigger4 = Time=176
TRIGGER5 =  Time = 197
TRIGGER6 =  Time = 217
anim = 4882
ID = 4850
pos = 160,120
random=320,240
postype = left
facing = 1
bindtime = -1
removetime = 2
supermovetime=999999
pausemovetime=999999
scale = 1,1
ontop=1
ownpal = 1

[State 4884, DC 2]
type = Explod
trigger1 = Time=235
anim = 4882
ID = 4850
pos = 160,120
postype = left
facing = 1
bindtime = -1
removetime = 1
supermovetime=999999
pausemovetime=999999
scale = 0.5,0.5
ontop=1
ownpal = 1

[State 4884, DC 2]
type = Explod
trigger1 = Time=238
anim = 4882
ID = 4850
pos = 160,120
postype = left
facing = 1
bindtime = -1
removetime = 5
supermovetime=999999
pausemovetime=999999
scale = 0.5,0.5
ontop=1
ownpal = 1

[State 4884, TargetBind]
type = TargetBind
trigger1 = 1
id = 4850
pos = 80,-1200

[State 4884, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = Time=0
value = -254
ID = 4850
kill = 0
absolute = 0

[State 4884, HitAdd]
type = HitAdd
trigger1 = Time=111
trigger2 = Time=134
trigger3 = Time=156
trigger4 = Time=176
TRIGGER5 =  Time = 197
TRIGGER6 =  Time = 217
trigger7 = Time=235
value = 69+(Time=235)*514

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time=111
value = S5,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time=134
value = S5,1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time=156
value = S5,2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time=176
trigger2 =  Time = 197
trigger3 =  Time = 217
value = S5,6

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time=235
value = S5,9

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time=235
value = S5,11

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time=235
value = S5,12

[State 1100, Helper]
type = Helper
trigger1 = Time=235
triggerall = NumHelper(6160) < 1
helpertype = normal
name = "P2 Flames"
ID = 6160
stateno = 6160
pos = 0,-57
postype = p2
facing = 1
keyctrl = 0
ownpal = 1

[State 4884, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = Time=246
value = -1
ID = 4850
kill = 1
absolute = 0

[State 4884, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nomusic
flag2 = timerfreeze
ignorehitpause=1

[State 4884, PAUSE]
type = Pause
trigger1 = Time=0
time = 246
movetime = 246

[State 4884, EnvColor]
type = EnvColor
trigger1 = Time<111
value = 0+((time/111.0)*255),0+((time/111.0)*255),0+((time/111.0)*255)
time = 1
under = 0
ignorehitpause=1

[State 4884, EnvColor]
type = EnvColor
triggerall = Time!=[235,238]
trigger1 = Time>=111
value = 255,255,255
time = 1
under = 0
ignorehitpause=1

[State 4884, EnvColor]
type = EnvColor
trigger1 =Time=[235,238]
value = 255,0,0
time = 1
under = 0
ignorehitpause=1

[State 4884, TargetState]
type = TargetState
trigger1 = Time>=246
value = 4892
ID = 4850

[State 4884, TargetDrop]
type = TargetDrop
trigger1 = Time>=246

[State 4884, ChangeState]
type = ChangeState
trigger1 = Time>=246
value = 4883
ctrl = 0

[Statedef 4883]
type = S
movetype = A
physics =S
velset = 0,0
ctrl = 0
anim = 23651

[State 0, FREEZE Anim]
type = ChangeAnim
trigger1 = tIME=0
value = 23651
elem=4

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 33650, FAIL]
type = ChangeState
trigger1 = animtime=-20
value = 0
ctrl=1

[Statedef 4885]
type = S
movetype = A
physics =S
velset = 0,0
ctrl = 0
anim = 4885

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 0, DestroySelf]
type = DestroySelf
trigger1 = root,stateno!=4886

;=====Awww Yukarin!
[Statedef 4886]
type    = A
movetype= A
physics = N
juggle  = 4
ctrl = 0
velset = 0,0
anim = 333890
sprpriority = 2

[State 0, AngleSet]
type = AngleSet
trigger1 =  Time=0
value = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time=0
value = S2435,1

[State 4886, Helper]
type = Helper
trigger1 = Time=0
helpertype = normal
name = "Daniel"
ID = 4885
stateno = 4885
pos = 0, 0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
persistent = 0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0
ignorehitpause=1

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 2,2
ignorehitpause=1

[State 4886, PosSet]
type = PosSet
trigger1 = Time=0
y = -1200

[State 4886, PosAdd]
type = PosAdd
trigger1 = Time=0
x = 40

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.4

[State 4886, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 4886, TargetBind]
type = TargetBind
trigger1 = 1
id = 4850
pos = 0,0

[State 4886, TargetState]
type = TargetState
trigger1 = Time=0
value = 4893
ID = 4850

[State 4886, EnvShake]
type = EnvShake
trigger1 = Vel Y > 0 && Pos Y >=16
time = 20
freq = 80
ampl = -6

[State 4886, EnvColor]
type = EnvColor
trigger1 = Vel Y > 0 && Pos Y >=16
value = 255,0,0
time = 3
persistent=0

[State 4886, PlaySnd]
type = PlaySnd
trigger1 = Vel Y > 0 && Pos Y >=16
value = S5,9

[State 4884, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = Vel Y > 0 && Pos Y >=16
value = -255
ID = 4850
kill = 1
absolute = 0
persistent=0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Vel Y > 0 && Pos Y >=16
value = S2435,2

[State 4886, TargetState]
type = TargetState
trigger1 = Vel Y > 0 && Pos Y >=16
value = 4892
ID = 4850

[State 4884, TargetDrop]
type = TargetDrop
trigger1 = Vel Y > 0 && Pos Y >=16

[State 4886, Helper]
type = Helper
trigger1 = Vel Y > 0 && Pos Y >=16
helpertype = normal
name = "Yukari"
ID = 4888
stateno = 4888
pos = 0, 0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
persistent = 0
size.xscale=1
size.yscale=1

[State 4884, ChangeState]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >=16
value = 4887
ctrl = 0

[Statedef 4887]
type = S
movetype = A
physics =S
velset = 0,0
ctrl = 0
anim = 23651

[State 4886, PosSet]
type = PosSet
trigger1 = Time=0
y = 0

[State 4886, PosAdd]
type = PosAdd
trigger1 = Time=0
x = -40

[State 0, FREEZE Anim]
type = ChangeAnim
trigger1 = tIME=0
value = 23651
elem=4

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 33650, FAIL]
type = ChangeState
trigger1 = animtime=0
value = 0
ctrl=1

[Statedef 4888]
type    = A
movetype= H
physics = N
ctrl = 0
velset=-3.5,-11
anim=333891
sprpriority = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Vel Y > 0 && Pos Y >=16
value = S2435,0

[State 0, VelSet]
type = VelSet
trigger1 = Vel Y > 0 && Pos Y >=16
y = -11

[State 0, PosSet]
type = PosSet
trigger1 = Vel Y > 0 && Pos Y >=16
y = 0

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.5

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = ,AT

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP
slot = 0
stateno = 4924

[State 0, VelSet]
type = VelSet
triggerall=!var(10)
trigger1 = BackEdgeBodyDist < 8
trigger2 = FrontEdgeBodyDist < 8
x = -Vel X

[State 0, VarSet]
type = VarSet
trigger1 = BackEdgeBodyDist < 8
trigger2 = FrontEdgeBodyDist < 8
v = 10
value = 1

[State 4888, Turn]
type = Turn
trigger1 =  Time=0

[State 4888, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause=1

[State 4861, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause=1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = ScreenPos X < -300
trigger2 = ScreenPos X >= 620

[Statedef 4890]
type    = A
movetype= H
physics = N
ctrl = 0
velset=0,0
anim=5002
sprpriority = 1

[State 0, FREEZE Anim]
type = ChangeAnim
trigger1 = 1
value = 5002
elem=1

[State 3780, SelfState]
type = ChangeState
trigger1 = HitShakeOver
value = 4891
ctrl=0
ignorehitpause=1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
ignorehitpause=1

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause=1

[State 4861, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause=1

[Statedef 4891]
type    = A
movetype= H
physics = N
ctrl = 0
anim=5002
sprpriority = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
ignorehitpause=1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = Anim=5002 && Animtime=0
value = 5007

[State 4892, VelAdd]
type = VelMul
trigger1 = 1
x = 1.25

[State 4861, HitVelSet]
type = HitVelSet
trigger1 = Time=0
x = 1
y = 0

[State 0, VelAdd]
type = VelAdd
trigger1 = Time > 250
y = 0.5

[State 4892, SelfState]
type = SelfState
trigger1 = Vel Y > 0 && Pos Y >=16
value = 5100

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause=1

[State 4861, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause=1

[Statedef 4892]
type    = A
movetype= H
physics = N
ctrl = 0
velset=0,10
anim=5050
sprpriority = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
ignorehitpause=1

[State 4892, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.5

[State 4892, SelfState]
type = SelfState
trigger1 = Vel Y > 0 && Pos Y >=16
value = 5100

[Statedef 4893]
type    = A
movetype= H
physics = N
ctrl = 0
velset=0,0
sprpriority = 1

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time=0
value = 333982

[State 4893, VelAdd]
type = VelAdd
trigger1 = Time>120
y = 0.8

[State 4892, SelfState]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >=16
value = 4892

[Statedef 4896]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
velset = 0,0
anim = 0
sprpriority = -1

[State 0, StopSnd]
type = StopSnd
trigger1 = Time=0
channel = -1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 4882, Whoosh!]
type = playsnd
trigger1 = Time=0
value = S4850, 2

[State 4882, MOFO]
type = Explod
trigger1 = Time=0
anim = 4883
ID = 4850
pos = 0,0
postype = back  ;p2,front,back,left,right
facing = 1
bindtime = -1
removetime = -2
supermovetime=999999
pausemovetime=999999
scale = 1,1
ontop=1
ownpal = 1

[State 4882, TargetBind]
type = TargetBind
trigger1 = 1
id = 4850
pos = 80,-1200

[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = Time=48
value = -255
ID = 4850
kill = 1
absolute = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time=48
value = S5,9

[State 0, HitAdd]
type = HitAdd
trigger1 = Time=48
value = 968

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nomusic
flag2 = timerfreeze
ignorehitpause=1

[State 4882, PAUSE]
type = Pause
trigger1 = Time=0
time = 74
movetime = 74

[State 4882, EnvColor]
type = EnvColor
trigger1 = 1
value = 0,0,0
time = 1
under = 0
ignorehitpause=1

[State 0, TargetState]
type = TargetState
trigger1 = Time>=88
value = 4892
ID = 4850

[State 0, TargetDrop]
type = TargetDrop
trigger1 = Time>=88

[State 0, ChangeState]
type = ChangeState
trigger1 = Time>=88
value = 4883
ctrl = 0

[Statedef 3200]
type    = S
movetype= A
physics = N
juggle  = 12
ctrl = 0
velset = 0,0
anim = 3200
sprpriority = -1

[State 3000, Super Cancel]
type = Helper
triggerall = Time = 0
trigger1 = prevstateno=500 || prevstateno=502 || prevstateno=503 ;Scythe
trigger2 = prevstateno=1788 || prevstateno=1790 || prevstateno= 1792 || prevstateno= 1794 ;Fan-Whirlwind
trigger3 = prevstateno=1436 || prevstateno=1440 || prevstateno= 1441 || prevstateno=1444 ;Pounce
trigger4 = (prevstateno=[1433,1435]) ;Headbutt
persistent = 0
id = 30005
name = "Super Cancel Helper"
pos = 0,-48
postype = P1
stateno = 2310
helpertype = normal
supermove = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = Time<50
flag = nomusic

[State 3200, PlaySnd]
type = PlaySnd
trigger1 = Time=0
value = S3200,0

[State 3200, SCA]
type=Nothitby
trigger1 = Time<50
value=SCA

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time=0
trigger1 = random<500
value = S5005,3+random%2
channel=0
volume=255

[State 3200, Substract Power]
type = PowerAdd
trigger1 = !(var(24)>=0 && var(28)=1) && Time=0
value = -1000

[State 3750, Substract Seconds]
type = VarAdd
trigger1 = (var(24)>=0 && var(28)=1) && Time=0
var(24) = -240

[State 0, VarSet]
type = VarSet
trigger1 = Time=0
v = 10
value = 5

[State 3750, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Super"
ID = 7500
pos = 0,-55
stateno = 7500
postype = p1
ownpal = 1
supermovetime = 9999999
pausemovetime = 9999999
persistent = 0

[State 3000, Super Pause]
type = SuperPause
trigger1 = Time = 0
time = 45
anim = -1
sound = s7,0
darken = 0
p2defmul = 1
movetime=45

[State 0, VelSet]
type = VelSet
trigger1 = Time=46
x = 20

[State 0, VelMul]
type = VelMul
trigger1 = 1
x = 0.82

[State 1788, HitDef]
type = HitDef
trigger1 = Anim=3205&& Time=57
attr = S, HA
animtype = Hard
pausetime = 9,13
guard.pausetime = 7,7
hitflag = MAF
guardflag = M
priority = 6, Hit
sparkno = S7920+random%8
guard.sparkno = s7911
sparkxy = -7,-65
damage = 12, 4
hitsound = S5, 2
guardsound = S6, 0
ground.velocity = -2,-((2*0.5*400)**0.5)
air.velocity = -2,-((2*0.5*400)**0.5)
fall = 1
yaccel=0.5
ground.hittime = 14
ground.slidetime = 7
fall.recovertime = 0
fall.recover=0
ground.type = High
getpower=0,0

[State 6160, Explod]
type = Explod
trigger1 = 1
anim = 6160
ID = 6160
sprpriority = 0
postype = p1
vel = -.2,.75
pos = 0,-13
random = 5,5
removetime = -2
scale = .5,.5
ownpal = 1
supermovetime=9999999
pausemovetime=9999999

[State 6160, Explod]
type = Explod
trigger1 = Time%34=0
anim = 6190
ID = 6190
sprpriority = 0
postype = p1
vel = -.2,.75
pos = 0,-13
random = 5,5
removetime = -2
scale = ((120-time)/120)*0.5,((120-time)/120)*0.5
ownpal = 1
supermovetime=9999999
pausemovetime=9999999

[State 0, VarSet]
type = VarSet
trigger1 = Time=0
v = 2
value = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = Time>=56&&Anim!=3205
value = 3205

[State 0, ChangeState]
type = ChangeState
trigger1 = AnimTime=0&&Anim=3205
value = 3210
ctrl = 0

[Statedef 3210]
type = A
movetype = A
physics = N
anim = 3210
ctrl = 0

[State 0, AngleDraw]
type = AngleDraw
trigger1 = AnimElemTime(8) < 3
value = -12
ignorehitpause =1

[State 6160, Explod]
type = Explod
trigger1 = AnimElemTime(11)<0
anim = 6160
ID = 6160
sprpriority = 0
postype = p1
vel = -.2,.75
pos = 0,-13
random = 5,5
removetime = -2
scale = .5,.5
ownpal = 1
supermovetime=9999999
pausemovetime=9999999

[State 6160, Explod]
type = Explod
triggerall = AnimElemTime(11)<0
trigger1 = Time%34=0
anim = 6190
ID = 6190
sprpriority = 0
postype = p1
vel = -.2,.75
pos = 0,-13
random = 5,5
removetime = -2
scale = ((120-time)/120)*0.5,((120-time)/120)*0.5
ownpal = 1
supermovetime=9999999
pausemovetime=9999999

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
x = 2.5
y = -((2*0.5*400)**0.5) ;sqr(0^2 + 2*0.52*(-150-0))

[State 1789, Gravity]
type = Gravity
trigger1 = 1

[State 0, VarSet]
type = VarSet
trigger1 = AnimElemTime(1) = 0
var(2) = 30 ;30

[State 0, VarSet]
type = VarSet
trigger1 = AnimElemTime(2) = 0
trigger2 = AnimElemTime(3) = 0
var(2) = 25 ; 80

[State 0, VarSet]
type = VarSet
trigger1 = AnimElemTime(4) = 0
trigger2 = AnimElemTime(5) = 0
var(2) = 20 ; 120

[State 0, VarSet]
type = VarSet
trigger1 = AnimElemTime(6) = 0
trigger2 = AnimElemTime(7) = 0
trigger3 = AnimElemTime(8) = 0
var(2) = 10 ; 150

[State 1789, Hit Def]
type = HitDef
trigger1 = AnimElemTime(1) = 0
trigger2 = AnimElemTime(2) = 0
trigger3 = AnimElemTime(3) = 0
trigger4 = AnimElemTime(4) = 0
trigger5 = AnimElemTime(5) = 0
trigger6 = AnimElemTime(6) = 0
trigger7 = AnimElemTime(7) = 0
trigger8 = AnimElemTime(8) = 0
attr = A,HA
hitflag = MAF
guardflag = MA
getpower = 0,0
animtype = Up
priority = 6,Hit
damage = var(2),5
pausetime = 1,1
sparkno = s7920+random%8
guard.sparkno = s7911
sparkxy = -5,-63
hitsound = s5,6
guardsound = s6,0
ground.type = High
fall = 1
ground.velocity = -2,(Vel Y)
air.velocity = -2,(Vel Y)
down.bounce = 1
kill = 1
getpower=0,0
mindist=-5,10
maxdist=10,-40
yaccel=0.5
fall.recovertime=0
fall.recover=0

[State 65000, LASER SOUND]
type = PlaySnd
trigger1 = AnimElemTime(10) = 0
value = S250, 0
freqmul=0.8

[State 65000, LASER SOUND]
type = PlaySnd
trigger1 = AnimElemTime(10) = 0
value = S250, 1

[State 65000, Mockery]
type = Explod
trigger1 = AnimElemTime(10) = 0
anim = 251
ID = 65000
pos = 30,-53
postype = p1
facing = 1
bindtime = -1
removetime = 4
scale = 0.6,0.5
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0
ignorehitpause=0

[State 0, VelSet]
type = VelSet
trigger1 = AnimElemTime(10) = 0
x = 0
y = 0

[State 65000, CreateTheProj]
type = HitDef
trigger1 = AnimElemTime(10) = 0
attr = A, HP
animtype  = Hard
damage    = 20,3
guardflag = MA
hitflag=MAF
pausetime = 46,46
sparkno = s2000+random%4
guard.sparkno = s7911
sparkxy = -5,-70
envshake.time = 12
envshake.freq = 90
envshake.ampl = -6
hitsound = s250,2
guardsound = s6,0
ground.type = Low
ground.slidetime = 6
ground.hittime  = 6
ground.velocity = -17
air.velocity = -14,-3.2
priority=4,Hit
getpower=0,0
guard.dist=900

[State 0, Helper]
type = Helper
trigger1 = AnimElem=11
helpertype = normal
name = "Rocket Launcher"
ID = 3215
stateno = 3215
pos = 10,-38
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 0, VelSet]
type = VelSet
trigger1 =  AnimElem=11
x = -1.1
y = -12

[State 1789, ChangeState]
type = ChangeState
trigger1 = (Vel Y >= 0) && (Pos Y >= 10) && (statetype = A)
value = 1800
ctrl = 0

[Statedef 3215]
physics = N
velset = 1.1,-12
anim = 3215
sprpriority = 4

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.5

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, DestroySelf]
type = DestroySelf
trigger1 = ScreenPos Y > 350

[State 3215, AngleDraw]
type = AngleDraw
trigger1 = 1
value = time*12
ignorehitpause=1

[Statedef 4920]
type    = S
movetype= A
physics = S
juggle  = 10
velset = 0,0
anim = 4920
ctrl = 0
sprpriority = 2

[State 3000, Dream Cancel]
type = Helper
triggerall = Time = 0
trigger1 = (prevstateno=3050||prevstateno=4222||prevstateno=4804)
persistent = 0
id = 30005
name = "Dream Cancel Helper"
pos = 0,-48
postype = P1
stateno = 2320
helpertype = normal
supermove = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 0, TargetState]
type = TargetState
trigger1 = prevstateno=3050 && Time=0
value = 35301
ID = 3050

[State 65002, Substract Power]
type = PowerAdd
trigger1 = !(var(24)>=0 && var(28)=1) && Time=0
value = -2000+((prevstateno=3050||prevstateno=4222||prevstateno=4804)*-1000)

[State 4920, Substract Seconds]
type = VarAdd
trigger1 = (var(24)>=0 && var(28)=1) && Time=0
var(24) = -240

;Super Cancel If Cancelled from: Any of the Two Hits of the 2-Hit Combo.
;                                From (Ground) Scythe.

[State 4920, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Super"
ID = 7500
pos = 0,-55
stateno = 7500
postype = p1
ownpal = 1
supermovetime = 9999
persistent = 0

[State 4920, Level 2]
type = VarSet
trigger1 = time = 0
var(10) = 6

[State 4920, Super Cancel]
type = Helper
triggerall = Time = 0
trigger1 = prevstateno=500 || prevstateno=502 || prevstateno=503 ;Scythe
trigger2 = prevstateno=1788 || prevstateno=1790 || prevstateno= 1792 || prevstateno= 1794 ;Fan-Whirlwind
trigger3 = prevstateno=1436 || prevstateno=1440 || prevstateno= 1441 || prevstateno=1444 ;Pounce
trigger4 = (prevstateno=[1433,1435]) ;Headbutt
persistent = 0
id = 30005
name = "Super Cancel Helper"
pos = 0,-48
postype = P1
stateno = 2310
helpertype = normal
supermove = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 4920, Super Pause]
type = SuperPause
trigger1 = Time = 0
time = 45
anim = -1
sound = s7,0
darken = 0
p2defmul = 1+ifelse(prevstateno=3050,0.6,ifelse((prevstateno=4222||prevstateno=4804),0.7,0))
unhittable=1
movetime=45

[State 4920, After Images]
type = AfterImage
trigger1 = AnimElem = 2, 1
trans = add
time = 55

[State 4920, Explod]
type = Explod
trigger1 = AnimElem = 3
anim = 4921
ID = 4920
pos = 0,0
postype = p1
removetime = -1
bindtime=-1
scale = 1,1
sprpriority = 3
shadow = 0,0,0
ownpal = 1
removeongethit=1
ignorehitpause=1

[State 4920, Helper]
type = Helper
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

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(8) = 0
trigger1 = random<750
value = S5005,random%2
channel=0
volume=255

[State 4920, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(4920)
trigger1 = AnimElemTime(8) = 0
id = 4920

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem=4,3
value = S1,5

[State 4920, 6]
type = HitDef
trigger1 = Time=0
attr = S, HA
hitflag = MAF
guardflag = MA
priority  = 7, Hit
sparkno = S7930+random%8
guard.sparkno = S7911
sparkxy = -20,-50
damage=270,18
hitsound   = S5,9
guardsound = S6,0
pausetime=30,30
fall = 1
air.fall=1
ground.slidetime=55
ground.hittime=55
ground.velocity = -12,-7.3
air.velocity = -11,-6.3
fall.recover=0
hitonce = 0
numhits = 1

[State 4920, ChangeState]
type = ChangeState
trigger1 = AnimTime=0
value = 0
ctrl = 1

[Statedef 4923]
type    = A
movetype= H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 2

[State 4923, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
ignorehitpause=1

[State 4923, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause=1

[State 4923, Freeze Anim]
type = ChangeAnim
trigger1 = 1
value = 5030
elem = 1
ignorehitpause=1

[State 4923, ChangeState]
type = ChangeState
trigger1 = HitShakeOver
value = 1026
ignorehitpause=1

[Statedef 4922]
type    = A
movetype= I
physics = N
velset = 8,-7.3
ctrl = 0
sprpriority = 2

[State 4922, ChangeAnim]
type = ChangeAnim
trigger1 = Time=0
value = 4922
elem = 5

[State 4922, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.5

[State 4922, NotHitBy]
type = NotHitBy
trigger1 = 1
value = ,AT

[State 4922, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP
slot = 0
stateno = 4924

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Vel Y > 0 && Pos Y >=16
value = S2435,0

[State 0, VelSet]
type = VelSet
trigger1 = Vel Y > 0 && Pos Y >=16
y = -11

[State 0, PosSet]
type = PosSet
trigger1 = Vel Y > 0 && Pos Y >=16
y = 0

[State 0, VelSet]
type = VelSet
triggerall=!var(10)
trigger1 = BackEdgeBodyDist < 8
trigger2 = FrontEdgeBodyDist < 8
x = -Vel X

[State 0, VarSet]
type = VarSet
trigger1 = BackEdgeBodyDist < 8
trigger2 = FrontEdgeBodyDist < 8
v = 10
value = 1

[State 4888, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause=1

[State 4861, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause=1

[State 4922, DestroySelf]
type = DestroySelf
trigger1 = ScreenPos X >= 500
trigger2 = ScreenPos X <= -180

[Statedef 4924]
type    = A
movetype= I
physics = N
ctrl = 0
sprpriority = 2

[State 0, VarSet]
type = VarSet
trigger1 = Time=0
v = 10
value = 0

[State 4922, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.5

[State 4922, NotHitBy]
type = NotHitBy
trigger1 = 1
value = ,AT

[State 4922, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP
slot = 0
stateno = 4924

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Vel Y > 0 && Pos Y >=16
value = S2435,0

[State 0, VelSet]
type = VelSet
trigger1 = Vel Y > 0 && Pos Y >=16
y = -11

[State 0, PosSet]
type = PosSet
trigger1 = Vel Y > 0 && Pos Y >=16
y = 0

[State 0, HitVelSet]
type = HitVelSet
trigger1 = Time=0
x = 1
y = 1

[State 0, VelSet]
type = VelSet
triggerall=!var(10)
trigger1 = BackEdgeBodyDist < 8
trigger2 = FrontEdgeBodyDist < 8
x = -Vel X

[State 0, VarSet]
type = VarSet
trigger1 = BackEdgeBodyDist < 8
trigger2 = FrontEdgeBodyDist < 8
v = 10
value = 1

[State 4888, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause=1

[State 4861, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause=1

[State 4922, DestroySelf]
type = DestroySelf
trigger1 = ScreenPos X >= 500
trigger2 = ScreenPos X <= -180

;THE FUCK IS THIS?
[Statedef 3150]
type = U
movetype = A
physics = N
ctrl = 0
anim = 3150
velset=0,0
juggle=10
sprpriority = 2

[State 3150, StateTypeSet]
type = StateTypeSet
trigger1 = Statetype=C||Statetype=S
trigger2 = Vel Y > 0 && Pos Y > 10
statetype = S
physics = S

[State 3150, PosSet]
type = PosSet
trigger1 = Statetype=S
y = 0

[State 0, VelAdd]
type = VelAdd
triggerall = AnimElemTime(3)>=0
trigger1 = Statetype=A
y = 0.5

[State 3150, StateTypeSet]
type = StateTypeSet
trigger1 = statetype=A
statetype = A
physics = N

[State 3150, Super Cancel]
type = Helper
triggerall = Time = 0
trigger1 = prevstateno=500 || prevstateno=502 || prevstateno=503 ;Scythe
trigger2 = prevstateno=1788 || prevstateno=1790 || prevstateno= 1792 || prevstateno= 1794 ;Fan-Whirlwind
trigger3 = prevstateno=1436 || prevstateno=1440 || prevstateno= 1441 || prevstateno=1444 ;Pounce
trigger4 = (prevstateno=[1433,1435]) ;Headbutt
persistent = 0
id = 30005
name = "Super Cancel Helper"
pos = 0,-48
postype = P1
stateno = 2310
helpertype = normal
supermove = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 3150, NotHitBy]
type = NotHitBy
trigger1 = Time = 0
value = ,NA, SA, AT
time=20

[State 3150, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Super"
ID = 7500
pos = 0,-55
stateno = 7500
postype = p1
ownpal = 1
supermovetime = 9999
persistent = 0

[State 3150, Level 1]
type = VarSet
trigger1 = time = 0
var(10) = 5+(p2statetype=L)

[State 3150, Substract Power]
type = PowerAdd
trigger1 = !(var(24)>=0 && var(28)=1) && Time=0
value = -1000*(1+(p2statetype=L))

[State 3150, Substract Seconds]
type = VarAdd
trigger1 = (var(24)>=0 && var(28)=1) && Time=0
var(24) = -120*(1+(p2statetype=L))

[State 1050, AfterImage]
type = AfterImage
trigger1 = AnimElem=3
time = 35
TimeGap  = 1
FrameGap = 2
length = 30
palbright = 40,40,40
palcontrast = 220,220,220
palpostbright = 0,0,0
trans = add
paladd = 10,10,10
palmul = .65,.65,.65

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time=0
trigger1 = random<450
value = S5007,random%3
volume = 255
channel = 0

[State 3052, HitDef One]
type = HitDef
triggerall = !MoveContact && !MoveReversed
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4)<0
attr = A, HT
animtype  = Hard
damage    = 40*fvar(34),15
getpower  = 0,0
priority  = 6,Miss
guardflag = MA
hitflag=MAFD ;HOLY SHIT, CAN CHAIN FROM THAT AEREAL DROP
pausetime = 0,0
sparkno = s7930+random%8
guard.sparkno = s7911
sparkxy = -10,-45
hitsound   = s5,6
guardsound = s6,0
ground.type = High
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
ground.velocity = -10,0
ground.hittime=14
ground.slidetime=14
air.velocity = -5.6,0
p1facing = 1
p2facing = 1
fall = 1
fall.animtype = Hard
fall.recover = 0
guard.sparkno = s7911
envshake.time = 15
envshake.freq = 185
envshake.ampl = -3
fall.envshake.time=20
fall.envshake.freq=190
fall.envshake.ampl=-6
fall.xvelocity=-1.2
fall.yvelocity=-7.2
down.bounce=1
nochainid=3150,4222
p1stateno = 3151
p2stateno = 3160
ID=3150
kill = 0

[State 3150, ARE YOU BOUNCING OR DOWN?!]
type = VarSet
trigger1 = 1
fvar(34)=ifelse((p2statetype!=L),1,0.525)

[State 3150, Super Pause]
type = SuperPause
trigger1 = Time = 0
time = 45
anim = -1
sound = s7,0
darken = 0
p2defmul = 1
unhittable=1

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
trigger1 = MoveGuarded
value = 3150
elem = 4

[State 3150, VelSet]
type = VelSet
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 2
x = 5.75

[State 3150, Screech]
type = playsnd
triggerall = statetype = S
trigger1 = AnimElem = 4, =2
value = S101, 0

[State 3150, Whoosh!]
type = playsnd
trigger1 = AnimElem = 3
value = S1, 5

[State 3150, ChangeState]
type = ChangeState
trigger1 = AnimTime=0
value = ifelse(statetype=S,0,50)
ctrl = 1

;THE FUCK IS THIS? - Follow Up 1
[Statedef 3151]
type = A
movetype = A
physics = N
ctrl = 0
anim = 3151
velset=3.6,-8.76
sprpriority = 2

[State 3151, PlaySnd]
type = PlaySnd
trigger1 = Time=0
value = S5004,10

[State 3151, PlaySnd]
type = PlaySnd
trigger1 = Time=0
value = S22000,1

[State 3151, AfterImage]
type = AfterImage
trigger1 = Time=0
time = 999
TimeGap  = 1
FrameGap = 2
length = 30
palbright = 40,40,40
palcontrast = 220,220,220
palpostbright = 0,0,0
trans = add
paladd = 10,10,10
palmul = .65,.65,.65

[State 3151, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(2) < 0
pos = 25,-45
id = 3150

[State 3151, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(2) >= 0
pos = 21,-44
id = 3150

[State 3151, HURR]
type = NotHitBy
trigger1 = 1
value = SCA
ignorehitpause=1

[State 3151, DURR]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause=1

[State 3151, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.5

[State 3151, EnvShake]
type = EnvShake
trigger1 = Vel Y > 0 && Pos Y > 10
time = 15
freq = 60
ampl = -6
phase = 90

[State 3151, PlaySnd]
type = PlaySnd
trigger1 = Vel Y > 0 && Pos Y > 10
value = S20,36

[State 3151, TargetState]
type = TargetState
trigger1 = Vel Y > 0 && Pos Y > 10
value = 6930
ID = 3150

[State 3151, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = Vel Y > 0 && Pos Y > 10
value = -ceil(20*fvar(34))
ID = 3150
kill = 0

[State 3151, HitAdd]
type = HitAdd
trigger1 = Vel Y > 0 && Pos Y > 10
value = 1

[State 0, VarAdd]
type = VarAdd
triggerall=NumHelper(80000)
trigger1 = helper(80000),stateno=80000 && (helper(80000),var(0)!=[1,119])
trigger1 = Vel Y > 0 && Pos Y > 10
var(34) = 1

[State 0, VarAdd]
type = VarAdd
trigger1 = Vel Y > 0 && Pos Y > 10
var(48) = 1

[State 3151, ChangeState]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y > 10
value = 3152
ctrl = 0

[Statedef 3152]
type = S
movetype = A
physics = N
ctrl = 0
anim = 47
velset=0,0
sprpriority = 2

[State 1021, Bright Spark]
type = Helper
trigger1 = Time=0
helpertype = normal
name = "Super Cool Sparks"
ID = 8696
stateno = 8696
postype = p1
pos = 22,-40
ownpal = 1
supermovetime = 9999

[State 3152, ChangeAnim]
type = ChangeAnim
trigger1 = Anim=47 && AnimTime=0
value = 3152

[State 3152, HitAdd]
type = HitAdd
triggerall = Anim = 3152
trigger1 = AnimElem=3||AnimElem=7||AnimElem=17
value = 1

[State 0, VarAdd]
type = VarAdd
triggerall=NumHelper(80000)
triggerall = helper(80000),stateno=80000 && (helper(80000),var(0)!=[1,119])
triggerall = Anim = 3152
trigger1 = AnimElem=3||AnimElem=7||AnimElem=17
var(34) = 1

[State 0, VarAdd]
type = VarAdd
triggerall = Anim = 3152
trigger1 = AnimElem=3||AnimElem=7||AnimElem=17
var(48) = 1

[State 1021, Bright Spark]
type = Helper
triggerall = Anim = 3152
trigger1 = AnimElem=3
helpertype = normal
name = "Super Cool Sparks"
ID = 8696
stateno = 8696
postype = p1
pos = 42,-59
ownpal = 1
supermovetime = 9999

[State 1021, Bright Spark]
type = Helper
triggerall = Anim = 3152
trigger1 = AnimElem=7
helpertype = normal
name = "Super Cool Sparks"
ID = 8696
stateno = 8696
postype = p1
pos = 36,-64
ownpal = 1
supermovetime = 9999

[State 3152, PlaySnd]
type = PlaySnd
triggerall = Anim = 3152
trigger1 = AnimElem=3
value = S5,6

[State 3152, EnvShake]
type = EnvShake
triggerall = Anim = 3152
trigger1 = AnimElem=3||AnimElem=7||AnimElem=17
time = 13
freq = 100
ampl = -4

[State 3152, PlaySnd]
type = PlaySnd
triggerall = Anim = 3152
trigger1 = AnimElem=7
value = S5,2

[State 3152, TargetLifeAdd]
type = TargetLifeAdd
triggerall = Anim = 3152
trigger1 = AnimElem=3||AnimElem=7
value = -ceil(25*fvar(34))
ID = 3150
kill = 0

[State 3152, TargetLifeAdd]
type = TargetLifeAdd
triggerall = Anim = 3152
trigger1 = AnimElem=17
value = -ceil(80*fvar(34))
ID = 3150
kill = 1

[State 3152, PlaySnd]
type = PlaySnd
triggerall = Anim = 3152
trigger1 = AnimElem=17
value = S5,9

[State 3152, PlaySnd]
type = PlaySnd
triggerall = Anim = 3152
trigger1 = AnimElem=2
trigger2 = AnimElem=6
trigger3 = AnimElem=17
value = S1,5

[State 3761, TargetState]
type = TargetState
triggerall = Anim = 3152
trigger1 = AnimElem=7
value = 3780
ID = 3150

[State 3761, TargetState]
type = TargetState
triggerall = Anim = 3152
trigger1 = AnimElem=17
value = 3161
ID = 3150

[State 3152, PosSet]
type = PosSet
trigger1 = Time=0
y = 0

[State 3152, TargetBind]
type = TargetBind
triggerall = Anim = 3152
trigger1 = AnimElemTime(7)<0
pos = 34,0
id = 3150

[State 3152, AfterImageTime]
type = AfterImageTime
trigger1 = AnimTime=0
time = 0

[State 3152, ChangeState]
type = ChangeState
triggerall = Anim = 3152
trigger1 = AnimTime=0
value = 4895
ctrl = 0

[Statedef 3160]
type = A
movetype = H
physics = N
ctrl = 0
facep2=1
velset=0,0
sprpriority = 1

[State 3160, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause=1

[State 3160, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time=0
value = 3160

[State 3160, SelfState]
type = SelfState
trigger1 = !GetHitVar(isbound)
value = 5050

;BOOM
[Statedef 3161]
type = A
movetype = H
physics = N
ctrl = 0
anim=5030
velset=.2,15
sprpriority = 1

[State 3161, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause=1

[State 3161, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.5

[State 3151, EnvShake]
type = EnvShake
trigger1 = Vel Y > 0 && Pos Y > 15
time = 25
freq = 155
ampl = -18
phase = 90

[State 3161, SelfState]
type = SelfState
trigger1 = Vel Y > 0 && Pos Y > 15
value = 5100

;---------------------------------------------------------------------------
; RANDOM EFFECT!

[Statedef 2999]
type    = S
movetype= I
physics = S
velset = 0,0
anim = 1363
ctrl = 0
sprpriority = 2

[State 3000, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Super"
ID = 7500
pos = 0,-55
stateno = 7500
postype = p1
ownpal = 1
supermovetime = 9999
persistent = 0

[State 3000, Level 1]
type = VarSet
trigger1 = time = 0
var(10) = 5

[State 3000, reset combo]
type = VarSet
trigger1 = Time=0
v = 34
value = 0

[State 0, VarRandom]
type = VarRandom
trigger1 = Time=0
v = 3
range = 0,17 ;0-9: Supers, 10: Full Power, 11: ZERO POWER, 12: Extra Bar, 13: MINUS TWO Extra Bars, 14: +1/10 life, 15: -1/10 life.
;16: Combo Counter resets at 30, 17: NOTHING.

;====LEVEL 1 SUPERS====
[State 0, ChangeState]
type = ChangeState
triggerall = AnimTime=0
trigger1=var(3)=0
value = 3052
ctrl = 0

[State 0, ChangeState]
type = ChangeState
triggerall = AnimTime=0
trigger1=var(3)=1
value = 4222
ctrl = 0

[State 0, ChangeState]
type = ChangeState
triggerall = AnimTime=0
trigger1=var(3)=2
value = 3150
ctrl = 0

[State 0, ChangeState]
type = ChangeState
triggerall = AnimTime=0
trigger1=var(3)=3
value = 3200
ctrl = 0

;====LEVEL 2 SUPERS====
[State 0, ChangeState]
type = ChangeState
triggerall = AnimTime=0
trigger1=var(3)=4
value = 4500
ctrl = 0

[State 0, ChangeState]
type = ChangeState
triggerall = AnimTime=0
trigger1=var(3)=5
value = 4920
ctrl = 0

[State 0, ChangeState]
type = ChangeState
triggerall = AnimTime=0
trigger1=var(3)=6
value = 3015
ctrl = 0

[State 0, ChangeState]
type = ChangeState
triggerall = AnimTime=0
trigger1=var(3)=7
value = 4881
ctrl = 0

;===NAUTICA TWICE===
[State 0, ChangeState]
type = ChangeState
triggerall = AnimTime=0
trigger1=var(3)=[8,9]
value = 23650
ctrl = 0

[State 0, PowerSet]
type = PowerSet
triggerall = var(3)=[10,11]
trigger1 = AnimTime=0
value = ifelse((var(3)=10),powermax,0);LOL

[State 0, Power UP/DOWN]
type = PowerAdd
triggerall = var(3)=[12,13]
trigger1 = AnimTime=0
value = ifelse((var(3)=12),1000,-2000)

[State 0, Life Up Down]
type = Lifeadd
triggerall = var(3)=[14,15]
trigger1 = AnimTime=0
value = ceil(ifelse((var(3)=14),(lifemax/10.0),(-(lifemax/5.0))));LOL
kill=0
absolute=(var(3)=15)

[State 0, VarSet]
type = VarSet
triggerall = var(3)=16
trigger1 = AnimTime=0
v = 34
value = 30

[State 0, Sent Back]
type = ChangeState
triggerall = AnimTime=0
trigger1=var(3)>9
value = 0
ctrl = 1

[State 3000, Super Pause]
type = SuperPause
trigger1 = Time = 0
time = 45
movetime=38
anim = -1
sound = s7,0
unhittable=1
darken = 0
p2defmul = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3000, After Images]
type = AfterImage
trigger1 = AnimElem = 2, 1
paladd = 255,0,0
palmul = 128, 0, 0
trans = add
time = 39

[StateDef 22650]
type = S
movetype= A
physics = N
velset = 0,0
ctrl = 0
anim = 22650
sprpriority = 2
facep2=1

[State 65002, Substract Power]
type = PowerAdd
trigger1 = !(var(24)>=0 && var(28)=1) && Time=0
value = -4000

[State 0, Substract Seconds]
type = VarAdd
trigger1 = (var(24)>=0 && var(28)=1) && Time=0
var(24) = -480

[State 0, VarSet]
type = VarSet
trigger1 = Time=0
v = 10
value = 6

[State 10350, Explod]
type = Explod
trigger1 = Time=0
anim = 1211
ID = 1211
pos = 0,0
postype = back  ;p2,front,back,left,right
facing = 1
bindtime = -1
removetime = 76
supermovetime=999999
pausemovetime=999999
scale = 1,1
sprpriority = -7
ownpal = 1

[State 10350, Explod]
type = Explod
trigger1 = Time=0
anim = 28007
ID = 28007
pos = 0,75
postype = back  ;p2,front,back,left,right
facing = 1
bindtime = -1
removetime = -2
supermovetime=999999
pausemovetime=999999
scale = 1,1
sprpriority = -6
ownpal = 1

[State 3000, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Super"
ID = 7500
pos = 0,-55
stateno = 7500
postype = p1
ownpal = 1
supermovetime = 9999
persistent = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time=0
value = S23652,5+random%2

[State 3000, Super Pause]
type = SuperPause
trigger1 = Time = 0
time = 76
anim = -1
sound = s7,0
unhittable=1
darken = 0
p2defmul = 1

[State 22560, AfterImage]
type = AfterImage
trigger1 = AnimElem=2
time = 45
length = 45
palcontrast = 169,0,0
paladd = 128,0,0
timegap=1
framegap = 2
trans = add

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem=2
value = S23652,7

[State 0, HitDef]
type = HitDef
trigger1 = AnimElem=2
attr = S,HT
hitflag = M-
guardflag =
priority = 1,Miss
sparkno = -1
hitsound = S800,0
guard.dist = 0
sprpriority = 0
p1facing = 1
p2facing = 1
p1stateno = 22651
p2stateno = 23659
fall = 1
id = 22650
hitonce = 1
numhits = 0
getpower = 0,0
givepower = 250,0

[State 0, VelSet]
type = VelSet
trigger1 = AnimElemTime(2)>=0 && AnimElemTime(3)<0
x = 4.5

[State 0, NotHitBy]
type = NotHitBy
trigger1 = Time < 5
value = SCA

[State 22650, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 22651]
type = S
movetype=A
physics=N
ctrl = 0
spriority=3
anim = 22651
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time=0
value = S23650,6

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time=0
value = S23650,7

[State 22651, TargetBind]
type = TargetBind
trigger1 = 1
id = 22650
pos = 40,0

[State 0, UTSUHO]
type = Explod
trigger1 = Time=0
anim = 22625
ID = 22625
pos = 110,0
postype = p1
facing = -1
removetime = -1
supermovetime = 999999
pausemovetime = 999999
scale = 1,1
sprpriority = 2
ontop = 0
shadow = 255,255,255
ownpal = 0
removeongethit = 0

[State 0, Koa]
type = Explod
trigger1 = Time=0
anim = 22626
ID = 22626
pos = -10,0
postype = p2
facing = 1
removetime = -1
supermovetime = 999999
pausemovetime = 999999
scale = 1,1
sprpriority = 3
ontop = 0
shadow = 255,255,255
ownpal = 0
removeongethit = 0

[State 0, AfterImageTime]
type = AfterImageTime
trigger1 = Time=0
time = 0

[State 0, BGPalFX]
type = AllPalFX
trigger1 = Time=20
time = 20
sinadd = -255,-255,-255,80
color = 256

[State 0, Pause]
type = Pause
trigger1 = Time=0
time = 266
movetime = 266

[State 0, PlaySnd]
type = PlaySnd
triggerall = Time>=40 && Time<208
trigger1 = Time%2=0
value = S5,random%13
channel = 1+random%6

[State 0, PlaySnd]
type = PlaySnd
triggerall = Time>=40 && Time<208
trigger1 = Time%41=0
value = S22200,random%5
channel = 7
volume=255

[State 0, PlaySnd]
type = PlaySnd
triggerall = Time>=40 && Time<208
trigger1 = Time%11=0
value = S23652,2
channel = 0

[State 0, EnvShake]
type = EnvShake
trigger1 = Time>=40 && Time<=208
trigger1 = Time%2=0
time = 5
freq = 160
ampl = -6
phase = 90

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time=208
value = S5,13

[State 0, HitAdd]
type = HitAdd
triggerall = Time>=40 && Time<208
trigger1 = Time%2=0
value = 10

[State 0, HitAdd]
type = HitAdd
trigger1 = Time=208
value = 159

[State 0, LifeAdd]
type = TargetLifeAdd
triggerall = Time>=40 && Time<208
trigger1 = Time%2=0
value = -2 ;198
kill = 0
absolute = 0
ID=22650

[State 0, LifeAdd]
type = TargetLifeAdd
trigger1 = Time=208
value = -301
kill = 0
absolute = 0
ID=22650

[State 0, Explod]
type = Explod
triggerall = Time>=40 && Time<208
trigger1 = Time%2=1
anim = 3061
ID = 22650
pos = 160,0
random = 320,0
postype = back
facing = 1
bindtime = -1
removetime = -2
ontop = 1
shadow = 0,0,0
scale=0.5+((random%25)/10.0),0.5+((random%25)/10.0)
ownpal = 1
removeongethit = 0
supermovetime = 999999
pausemovetime = 999999

[State 0, Explod]
type = Explod
triggerall = Time>=40 && Time<208
trigger1 = Time%2=0
anim = 7930+random%8
ID = 22650
pos = 0,-40
random = 40,100
postype = p1
facing = 1
bindtime = -1
removetime = -2
ontop = 1
shadow = 0,0,0
scale=0.5+((random%25)/10.0),0.5+((random%25)/10.0)
ownpal = 1
removeongethit = 0
supermovetime = 999999
pausemovetime = 999999

[State 0, Explod]
type = Explod
trigger1 = Time=208
anim = 4447
ID = 22650
pos = 0,-40
random = 40,100
postype = p1
facing = 1
bindtime = -1
removetime = -2
ontop = 1
shadow = 0,0,0
scale=6,6
ownpal = 1
removeongethit = 0
supermovetime = 999999
pausemovetime = 999999

[State 0, Explod]
type = Explod
trigger1 = Time=208
anim = 4446
ID = 22650
pos = 0,-40
random = 40,100
postype = p1
facing = 1
bindtime = -1
removetime = -2
ontop = 1
shadow = 0,0,0
scale=6,6
ownpal = 1
removeongethit = 0
supermovetime = 999999
pausemovetime = 999999

[State 0, EnvColor]
type = EnvColor
trigger1 = Time>=40
value = 0,0,0
time = 1
under = 0
ignorehitpause=1

[State 0, TargetState]
type = TargetState
trigger1 = Time=267
value = 2511
ID = 22650

[State 0, LifeAdd]
type = TargetLifeAdd
trigger1 = Time=267
value = -1
kill = 1
absolute = 0
ID=22650

[State 0, RemoveUtsu]
type = RemoveExplod
trigger1 = Time>=268
id = 22625

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nokosnd
flag2 = nokoslow

[State 0, RemoveKoa]
type = RemoveExplod
trigger1 = Time>=268
id = 22626

[State 22651, WIN]
type = ChangeState
triggerall = Win
trigger1 = Time>=268
value = 22653
ctrl=0

[State 22651, NO WIN]
type = ChangeState
trigger1 = Time>=268
value = 22652
ctrl=0

[Statedef 22653]
type = S
physics=N
movetype=I
ctrl = 0
anim = 22653
velset = 0,0

[State 7500, SuperBG]
type = Helper
trigger1 = Time=0
id = 117898
name = "OH YEAH"
pos = 0,0
postype = P1
stateno = 117898
helpertype = normal
keyctrl = 0
ownpal = 1
supermovetime = 99999999
pausemovetime = 99999999
persistent=0

[State 22653, UTSUHO]
type = Explod
trigger1 = Time=0
anim = 22627
ID = 22627
pos = 110,0
postype = p1
facing = -1
removetime = -2
supermovetime = 999999
pausemovetime = 999999
scale = 1,1
sprpriority = 2
ontop = 0
shadow = 255,255,255
ownpal = 0
removeongethit = 0

[State 22653, Koa]
type = Explod
trigger1 = Time=0
anim = 22628
ID = 22628
pos = 0,-8
postype = p2
facing = -1
removetime = -1
supermovetime = 999999
pausemovetime = 999999
scale = 1,1
sprpriority = 3
ontop = 0
shadow = 255,255,255
ownpal = 0
removeongethit = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time=0
value = S23650,2
abspan=0
volume=255

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nokosnd
flag2 = nokoslow

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time=30
value = S23650,8

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 0, BGPalFX]
type = ALLPalFX
trigger1 = Time<=240
time = 1
add = (-255+ceil((Time/240.0)*255)),(-255+ceil((Time/240.0)*255)),(-255+ceil((Time/240.0)*255))
ignorehitpause=1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = Time=240
value = 220
elem = 9

[State 22652, Time?]
type = ChangeState
trigger1 = AnimTime=0 && Anim=220
value = 0
ctrl=1

[Statedef 22652]
type = S
physics=N
movetype=I
ctrl = 0
anim = 22652
velset = 0,0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 0, BGPalFX]
type = ALLPalFX
trigger1 = Time<=60
time = 1
add = (-255+ceil((Time/60.0)*255)),(-255+ceil((Time/60.0)*255)),(-255+ceil((Time/60.0)*255))
ignorehitpause=1

[State 22652, Time?]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl=1

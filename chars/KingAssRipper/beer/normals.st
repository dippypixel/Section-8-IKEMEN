; Urien By RajaaBoy

;=========================================================================
; S. Light Punch
;=========================================================================
[Statedef 200]
type = S
movetype = A	
physics = S
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 1

[state 200, Level]
type = null
triggerall = !time
trigger1 = var(17) := 1

[state 200, Set Position]
type = posset
trigger1 = !time
y = 0

[state 200, Change Animation]
type = changeanim
trigger1 = !time
value = 200

[state 200, Pause Frame 1]
type = changeanim
trigger1 = animelemtime(2) > 0 && animelemtime(3) <= 0
trigger1 = hitpausetime
value = 200
elem = 3
ignorehitpause = 1
persistent = 0

[state 200, Pause Frame 2]
type = changeanim
trigger1 = movecontact && !hitpausetime
trigger1 = animelemtime(3) = 0 
value = 200
elem = 4
persistent = 0

[state 200, Add Power]
type = poweradd
trigger1 = !animelemtime(2)
value = 0

[state 200, Voice]
type = playsnd
trigger1 = 0
value = 2, 0
volumescale = 100
channel = 0

[state 200, Sound]
type = playsnd
trigger1 = !animelemtime(2)
value = 1, 0
volumescale = 100
channel = 1

[state 200, Juggle Points 1]
type = null
trigger1 = animelemtime(2) >= 0 && animelemtime(4) < 0
trigger1 = var(10) := 1 || var(17) := 1 || var(49) := 200
[state 200, Hit 1]
type = hitdef
triggerall = var(49) != var(50) && !var(9) && !var(13)
trigger1 = animelemtime(2) >= 0 && animelemtime(4) < 0
ID = 0 + 0 * (var(49) := 200)
attr = S, NA
damage = ceil(cond(13 * fvar(0) < 7, 7, 13 * fvar(0)))
fall.envshake.phase = 3 ; stun damage
fall.envshake.freq = var(17) ; hit/attack level
fall.envshake.ampl = 0 ; hit y position
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 7, 7
hitsound = -1 + 0 * (var(3) := 200)
guardsound = -1 + 0 * (var(4) := cond(p2name = "Urien", 20, 0))
sparkno = -1 + 0 * (var(5) := 10)
guard.sparkno = -1 + 0 * (var(6) := 0)
sparkxy = 0 * (var(7) := 80), 0 * (var(8) := -80)
animtype = light
ground.type = high
air.animtype = back
air.type = low
ground.slidetime = 7
ground.hittime = 9
guard.slidetime = 7
guard.hittime = 9
air.hittime = cond((var(54) = [1, 2]), 3, 128)
ground.velocity = -8.0 * fvar(18)
guard.velocity = -8.0 * fvar(18)
air.velocity = -3.1875 * fvar(14), -3.9375 * fvar(15)
airguard.velocity = -4.0 * fvar(14), -4.0 * fvar(15)
ground.cornerpush.veloff = 0.0 * (fvar(3) := 7.0)
guard.cornerpush.veloff = 0.0
yaccel = 0.375 * fvar(20)
getpower = cond(20 - 10 * var(51) < 10, 10, 20 - 10 * var(51)), 10
givepower = 0, 0
envshake.time = 4
envshake.ampl = 1
envshake.freq = 128
fall = 0
air.fall = 0
fall.recover = 0
fall.recovertime = 1
fall.animtype = back
forcenofall = 1

[state 200, Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
persistent = 0

[state 200, Control]
type = ctrlset
trigger1 = animelemtime(7) >= 0
value = 1
persistent = 0

[state 200, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; S. Mid Punch
;=========================================================================
[Statedef 210]
type = S
movetype = A
physics = S
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 1

[state 210, Level]
type = null
triggerall = !time
trigger1 = var(17) := 1

[state 210, Set Position]
type = posset
trigger1 = !time
y = 0

[state 210, Change Animation]
type = changeanim
trigger1 = !time
value = 210

[state 210, Pause Frame 1]
type = changeanim
trigger1 = animelemtime(3) > 0 && animelemtime(4) <= 0
trigger1 = hitpausetime
value = 210
elem = 4
ignorehitpause = 1
persistent = 0

[state 210, Pause Frame 2]
type = changeanim
trigger1 = movecontact && !hitpausetime
trigger1 = animelemtime(4) = 2 
value = 210
elem = 5
persistent = 0

[state 210, Add Power]
type = poweradd
trigger1 = !animelemtime(3)
value = ceil(20 * fvar(33) + var(25))

[state 210, Voice]
type = playsnd
trigger1 = 0
value = 2, 0
volumescale = 100
channel = 0

[state 210, Sound]
type = playsnd
trigger1 = !animelemtime(3)
value = 1, 1
volumescale = 100
channel = 1

[state 210, Increment Position]
type = posadd
trigger1 = !animelemtime(2) || !animelemtime(3)
x = 2.0
[state 210, Increment Position]
type = posadd
trigger1 = !animelemtime(6) || !animelemtime(10)
x = -2.0

[state 210, Juggle Points 1]
type = null
trigger1 = animelemtime(3) >= 0 && animelemtime(5) < 0
trigger1 = var(10) := 1 || var(17) := 1 || var(49) := 210
[state 210, Hit 1]
type = hitdef 
triggerall = var(49) != var(50) && !var(9) && !var(13)
trigger1 = animelemtime(3) >= 0 && animelemtime(5) < 0
ID = 0 + 0 * (var(49) := 210)
attr = S, NA
damage = ceil(cond(69 * fvar(0) < 7, 7, 69 * fvar(0)))
fall.envshake.phase = 9 ; stun damage
fall.envshake.freq = var(17) ; hit/attack level
fall.envshake.ampl = 0 ; hit y position
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 9, 9
hitsound = -1 + 0 * (var(3) := 210)
guardsound = -1 + 0 * (var(4) := cond(p2name = "Urien", 20, 0))
sparkno = -1 + 0 * (var(5) := 15)
guard.sparkno = -1 + 0 * (var(6) := 0)
sparkxy = 0 * (var(7) := 88), 0 * (var(8) := -80)
animtype = medium
ground.type = high
air.animtype = back
air.type = low
ground.slidetime = 9
ground.hittime = 13
guard.slidetime = 9
guard.hittime = 12
air.hittime = cond((var(54) = [1, 2]), 5, 128)
ground.velocity = -12.0 * fvar(18)
guard.velocity = -12.0 * fvar(18)
air.velocity = -4.25 * fvar(14), -4.6875 * fvar(15)
airguard.velocity = -4.0 * fvar(14), -4.0 * fvar(15)
ground.cornerpush.veloff = 0.0 * (fvar(3) := 9.0)
guard.cornerpush.veloff = 0.0
yaccel = 0.375 * fvar(20)
getpower = cond(90 - 10 * var(51) < 10, 10, 90 - 10 * var(51)), 40
givepower = 20, 0
envshake.time = 4
envshake.ampl = 1
envshake.freq = 128
fall = 0
air.fall = 0
fall.recover = 0
fall.recovertime = 1
fall.animtype = back
forcenofall = 1

[state 210, Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I
persistent = 0

[state 210, Control]
type = ctrlset
trigger1 = animelemtime(10) >= 0
value = 1
persistent = 0

[state 210, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; S. Hard Punch
;=========================================================================
[Statedef 220]
type = S
movetype = A
physics = S
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 1

[state 220, Level]
type = null
triggerall = !time
trigger1 = var(17) := 1

[state 220, Set Position]
type = posset
trigger1 = !time
y = 0

[state 220, Change Animation]
type = changeanim
trigger1 = !time
value = 220

[state 220, Add Power]
type = poweradd
trigger1 = !animelemtime(6)
value = ceil(90 * fvar(33) + var(25))

[state 220, Voice]
type = playsnd
trigger1 = !animelemtime(5)
value = 2, 1
volumescale = 100
channel = 0

[state 220, Sound]
type = playsnd
trigger1 = !animelemtime(5)
value = 1, 2
volumescale = 100
channel = 1

[state 220, Increment Position]
type = posadd
trigger1 = !animelemtime(1)
x = -6.0
[state 220, Increment Position]
type = posadd
trigger1 = !animelemtime(2)
x = 2.0
[state 220, Increment Position]
type = posadd
trigger1 = !animelemtime(3) || !animelemtime(4)
x = 1.0
[state 220, Increment Position]
type = posadd
trigger1 = !animelemtime(5)
x = 12.0
[state 220, Increment Position]
type = posadd
trigger1 = !animelemtime(6)
x = 4.0
[state 220, Increment Position]
type = posadd
trigger1 = !animelemtime(7)
x = 6.0
[state 220, Increment Position]
type = posadd
trigger1 = !animelemtime(9)
x = -3.0
[state 220, Increment Position]
type = posadd
trigger1 = !animelemtime(10)
x = -1.0
[state 220, Increment Position]
type = posadd
trigger1 = !animelemtime(11)
x = -4.0
[state 220, Increment Position]
type = posadd
trigger1 = !animelemtime(12)
x = -9.0
[state 220, Increment Position]
type = posadd
trigger1 = !animelemtime(13)
x = -2.0

[state 220, Juggle Points 1]
type = null
trigger1 = animelemtime(7) >= 0 && animelemtime(9) < 0
trigger1 = var(10) := 1 || var(17) := 1 || var(49) := 220
[state 220, Hit 1]
type = hitdef
triggerall = var(49) != var(50) && !var(9) && !var(13)
trigger1 = animelemtime(7) >= 0 && animelemtime(9) < 0
ID = cond(p2statetype = A, 5653, 5632) + 0 * (var(49) := 220)
attr = S, NA
damage = ceil(cond(119 * fvar(0) < 7, 7, 119 * fvar(0)))
fall.envshake.phase = 15 ; stun damage
fall.envshake.freq = var(17) ; hit/attack level
fall.envshake.ampl = 0 ; hit y position
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 11, 11
hitsound = -1 + 0 * (var(3) := 220)
guardsound = -1 + 0 * (var(4) := cond(p2name = "Urien", 20, 0))
sparkno = -1 + 0 * (var(5) := 16)
guard.sparkno = -1 + 0 * (var(6) := 0)
sparkxy = 0 * (var(7) := 80), 0 * (var(8) := -56)
animtype = hard
ground.type = low
air.animtype = back
air.type = low
ground.slidetime = 12
ground.hittime = 17
guard.slidetime = 12
guard.hittime = 15
air.hittime = cond((var(54) = [1, 2]), 7, 128)
ground.velocity = -14.0 * fvar(18)
guard.velocity = -14.0 * fvar(18)
air.velocity = -6.375 * fvar(14), 4.25 * fvar(15)
airguard.velocity = -4.0 * fvar(14), -4.0 * fvar(15)
ground.cornerpush.veloff = 0.0 * (fvar(3) := 12.0)
guard.cornerpush.veloff = 0.0
yaccel = 0.5 * fvar(20)
getpower = cond(160 - 10 * var(51) < 10, 10, 160 - 10 * var(51)), 70
givepower = 40, 0
envshake.time = 4
envshake.ampl = 1
envshake.freq = 128
fall = 0
air.fall = 1
fall.recover = 0
fall.recovertime = 1
fall.animtype = back
forcenofall = 0

[state 220, Idle]
type = statetypeset
trigger1 = animelemtime(9) >= 0
movetype = I
persistent = 0

[state 220, Control]
type = ctrlset
trigger1 = animelemtime(13) >= 0
value = 1
persistent = 0

[state 220, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; S. Light Kick
;=========================================================================
[Statedef 230]
type = S
movetype = A
physics = S
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 1

[state 230, Level]
type = null
triggerall = !time
trigger1 = var(17) := 1

[state 230, Set Position]
type = posset
trigger1 = !time
y = 0

[state 230, Change Animation]
type = changeanim
trigger1 = !time
value = 230

[state 230, Add Power]
type = poweradd
trigger1 = !animelemtime(2)
value = 0

[state 230, Voice]
type = playsnd
trigger1 = 0
value = 2, 0
volumescale = 100
channel = 0

[state 230, Sound]
type = playsnd
trigger1 = !animelemtime(2)
value = 1, 0
volumescale = 100
channel = 1

[state 230, Juggle Points 1]
type = null
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
trigger1 = var(10) := 1 || var(17) := 1 || var(49) := 230
[state 230, Hit 1]
type = hitdef
triggerall = var(49) != var(50) && !var(9) && !var(13)
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
ID = 0 + 0 * (var(49) := 230)
attr = S, NA
damage = ceil(cond(25 * fvar(0) < 7, 7, 25 * fvar(0)))
fall.envshake.phase = 3 ; stun damage
fall.envshake.freq = var(17) ; hit/attack level
fall.envshake.ampl = 0 ; hit y position
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 7, 7
hitsound = -1 + 0 * (var(3) := 300)
guardsound = -1 + 0 * (var(4) := cond(p2name = "Urien", 20, 0))
sparkno = -1 + 0 * (var(5) := 10)
guard.sparkno = -1 + 0 * (var(6) := 0)
sparkxy = 0 * (var(7) := 72), 0 * (var(8) := -16)
animtype = light
ground.type = low
air.animtype = back
air.type = low
ground.slidetime = 7
ground.hittime = 9
guard.slidetime = 7
guard.hittime = 9
air.hittime = cond((var(54) = [1, 2]), 3, 128)
ground.velocity = -8.0 * fvar(18)
guard.velocity = -8.0 * fvar(18)
air.velocity = -3.1875 * fvar(14), -3.9375 * fvar(15)
airguard.velocity = -4.0 * fvar(14), -4.0 * fvar(15)
ground.cornerpush.veloff = 0.0 * (fvar(3) := 7.0)
guard.cornerpush.veloff = 0.0
yaccel = 0.375 * fvar(20)
getpower = cond(20 - 10 * var(51) < 10, 10, 20 - 10 * var(51)), 10
givepower = 0, 0
envshake.time = 4
envshake.ampl = 1
envshake.freq = 128
fall = 0
air.fall = 0
fall.recover = 0
fall.recovertime = 1
fall.animtype = back
forcenofall = 1

[state 230, Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
persistent = 0

[state 230, Control]
type = ctrlset
trigger1 = animelemtime(7) >= 0
value = 1
persistent = 0

[state 230, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; S. Mid Kick
;=========================================================================
[Statedef 240]
type = S
movetype = A
physics = S
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 1

[state 240, Level]
type = null
triggerall = !time
trigger1 = var(17) := 1

[state 240, Set Position]
type = posset
trigger1 = !time
y = 0

[state 240, Change Animation]
type = changeanim
trigger1 = !time
value = 240

[state 240, Add Power]
type = poweradd
trigger1 = !animelemtime(3)
value = ceil(20 * fvar(33) + var(25))

[state 240, Voice]
type = playsnd
trigger1 = 0
value = 2, 0
volumescale = 100
channel = 0

[state 240, Sound]
type = playsnd
trigger1 = !animelemtime(3)
value = 1, 1
volumescale = 100
channel = 1

[state 240, Increment Position]
type = posadd
trigger1 = !animelemtime(2)
x = 22.0
[state 240, Increment Position]
type = posadd
trigger1 = !animelemtime(8) || !animelemtime(9)
x = -11.0

[state 240, Juggle Points 1]
type = null
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
trigger1 = var(10) := 1 || var(17) := 1 || var(49) := 240
[state 240, Hit 1]
type = hitdef
triggerall = var(49) != var(50) && !var(9) && !var(13)
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
ID = 0 + 0 * (var(49) := 240)
attr = S, NA
damage = ceil(cond(69 * fvar(0) < 7, 7, 69 * fvar(0)))
fall.envshake.phase = 9 ; stun damage
fall.envshake.freq = var(17) ; hit/attack level
fall.envshake.ampl = 0 ; hit y position
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 9, 9
hitsound = -1 + 0 * (var(3) := 310)
guardsound = -1 + 0 * (var(4) := cond(p2name = "Urien", 20, 0))
sparkno = -1 + 0 * (var(5) := 15)
guard.sparkno = -1 + 0 * (var(6) := 0)
sparkxy = 0 * (var(7) := 112), 0 * (var(8) := -72)
animtype = medium
ground.type = high
air.animtype = back
air.type = low
ground.slidetime = 9
ground.hittime = 13
guard.slidetime = 9
guard.hittime = 12
air.hittime = cond((var(54) = [1, 2]), 5, 128)
ground.velocity = -12.0 * fvar(18)
guard.velocity = -12.0 * fvar(18)
air.velocity = -4.25 * fvar(14), -4.6875 * fvar(15)
airguard.velocity = -4.0 * fvar(14), -4.0 * fvar(15)
ground.cornerpush.veloff = 0.0 * (fvar(3) := 9.0)
guard.cornerpush.veloff = 0.0
yaccel = 0.375 * fvar(20)
getpower = cond(90 - 10 * var(51) < 10, 10, 90 - 10 * var(51)), 40
givepower = 20, 0
envshake.time = 4
envshake.ampl = 1
envshake.freq = 128
fall = 0
air.fall = 0
fall.recover = 0
fall.recovertime = 1
fall.animtype = back
forcenofall = 1

[state 240, Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I
persistent = 0

[state 240, Control]
type = ctrlset
trigger1 = animelemtime(10) >= 0
value = 1
persistent = 0

[state 240, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; S. Hard Kick
;=========================================================================
[Statedef 250]
type = S
movetype = A
physics = S
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 1

[state 250, Level]
type = null
triggerall = !time
trigger1 = var(17) := 1

[state 250, Set Position]
type = posset
trigger1 = !time
y = 0

[state 250, Change Animation]
type = changeanim
trigger1 = !time
value = 250

[state 250, Add Power]
type = poweradd
trigger1 = !animelemtime(8)
value = ceil(30 * fvar(33) + var(25))

[state 250, Voice]
type = playsnd
trigger1 = !animelemtime(6)
value = 2, 3
volumescale = 100
channel = 0

[state 250, Sound]
type = playsnd
trigger1 = !animelemtime(8)
value = 1, 2
volumescale = 100
channel = 1

[state 250, Increment Position]
type = posadd
trigger1 = !animelemtime(1)
x = -10.0
[state 250, Increment Position]
type = posadd
trigger1 = !animelemtime(2)
x = -9.0
[state 250, Increment Position]
type = posadd
trigger1 = !animelemtime(3)
x = -8.0
[state 250, Increment Position]
type = posadd
trigger1 = !animelemtime(4)
x = -3.0
[state 250, Increment Position]
type = posadd
trigger1 = !animelemtime(5)
x = -2.0
[state 250, Increment Position]
type = posadd
trigger1 = !animelemtime(6) || !animelemtime(7)
x = -1.0
[state 250, Increment Position]
type = posadd
trigger1 = !animelemtime(14)
x = 11.0
[state 250, Increment Position]
type = posadd
trigger1 = !animelemtime(15)
x = 9.0 ; 20.0
[state 250, Increment Position]
type = posadd
trigger1 = !animelemtime(16) || !animelemtime(17)
x = 7.0

[state 250, Juggle Points 1]
type = null
trigger1 = animelemtime(8) >= 0 && animelemtime(9) < 0
trigger1 = var(10) := 1 || var(17) := 1 || var(49) := 250
[state 250, Hit 1]
type = hitdef
triggerall = var(49) != var(50) && !var(9) && !var(13)
trigger1 = animelemtime(8) >= 0 && animelemtime(9) < 0
ID = cond(p2statetype = A, 5653, 0) + 0 * (var(49) := 250)
attr = S, NA
damage = ceil(cond(44 * fvar(0) < 7, 7, 44 * fvar(0)))
fall.envshake.phase = 3 ; stun damage
fall.envshake.freq = var(17) ; hit/attack level
fall.envshake.ampl = 0 ; hit y position
guardflag = H
hitflag = MAF
priority = 4, Hit
pausetime = 11, 11
hitsound = -1 + 0 * (var(3) := 320)
guardsound = -1 + 0 * (var(4) := cond(p2name = "Urien", 20, 0))
sparkno = -1 + 0 * (var(5) := 16)
guard.sparkno = -1 + 0 * (var(6) := 0)
sparkxy = 0 * (var(7) := 48), 0 * (var(8) := -120)
animtype = hard
ground.type = high
air.animtype = back
air.type = low
ground.slidetime = 12
ground.hittime = 17
guard.slidetime = 12
guard.hittime = 15
air.hittime = cond((var(54) = [1, 2]), 0, 128)
ground.velocity = -14.0 * fvar(18)
guard.velocity = -14.0 * fvar(18)
air.velocity = -6.375 * fvar(14), 4.25 * fvar(15)
airguard.velocity = -4.0 * fvar(14), -4.0 * fvar(15)
ground.cornerpush.veloff = 0.0 * (fvar(3) := 12.0)
guard.cornerpush.veloff = 0.0
yaccel = 0.5 * fvar(20)
getpower = cond(20 - 10 * var(51) < 10, 10, 20 - 10 * var(51)), 10
givepower = 0, 0
envshake.time = 4
envshake.ampl = 1
envshake.freq = 128
fall = 0
air.fall = 1
fall.recover = 0
fall.recovertime = 1
fall.animtype = back
forcenofall = 0

[state 250, Juggle Points 2]
type = null
trigger1 = animelemtime(9) >= 0 && animelemtime(11) < 0
trigger1 = var(10) := 1 || var(17) := 1 || var(49) := 251
[state 250, Hit 2]
type = hitdef
triggerall = var(49) != var(50) && !var(9) && !var(13)
trigger1 = animelemtime(9) >= 0 && animelemtime(11) < 0
ID = cond(p2statetype = A, 5653, 5632) + 0 * (var(49) := 251)
attr = S, NA
damage = ceil(cond(82 * fvar(0) < 7, 7, 82 * fvar(0)))
fall.envshake.phase = 9 ; stun damage
fall.envshake.freq = var(17) ; hit/attack level
fall.envshake.ampl = 0 ; hit y position
guardflag = H
hitflag = MAF
priority = 4, Hit
pausetime = 11, 11
hitsound = -1 + 0 * (var(3) := 320)
guardsound = -1 + 0 * (var(4) := cond(p2name = "Urien", 20, 0))
sparkno = -1 + 0 * (var(5) := 16)
guard.sparkno = -1 + 0 * (var(6) := 0)
sparkxy = 0 * (var(7) := cond(animelemtime(10) >= 0, 72, 112)), 0 * (var(8) := cond(animelemtime(10) >= 0, -32, -72))
animtype = hard
ground.type = low
air.animtype = back
air.type = low
ground.slidetime = 12
ground.hittime = 17
guard.slidetime = 12
guard.hittime = 15
air.hittime = cond((var(54) = [1, 2]), 0, 128)
ground.velocity = -14.0 * fvar(18)
guard.velocity = -14.0 * fvar(18)
air.velocity = -6.375 * fvar(14), 4.25 * fvar(15)
airguard.velocity = -4.0 * fvar(14), -4.0 * fvar(15)
ground.cornerpush.veloff = 0.0 * (fvar(3) := 12.0)
guard.cornerpush.veloff = 0.0
yaccel = 0.5 * fvar(20)
getpower = cond(140 - 10 * var(51) < 10, 10, 140 - 10 * var(51)), 40
givepower = 40, 0
envshake.time = 4
envshake.ampl = 1
envshake.freq = 128
fall = 0
air.fall = 1
fall.recover = 0
fall.recovertime = 1
fall.animtype = back
forcenofall = 0

[state 250, Idle]
type = statetypeset
trigger1 = animelemtime(11) >= 0
movetype = I
persistent = 0

[state 250, Control]
type = ctrlset
trigger1 = animelemtime(17) >= 0
value = 1
persistent = 0

[state 250, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; C. Light Punch
;=========================================================================
[Statedef 400]
type = C
movetype = A
physics = C
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 1

[state 400, Level]
type = null
triggerall = !time
trigger1 = var(17) := 1

[state 400, Set Position]
type = posset
trigger1 = !time
y = 0

[state 400, Change Animation]
type = changeanim
trigger1 = !time
value = 400

[state 400, Add Power]
type = poweradd
trigger1 = !animelemtime(3)
value = 0

[state 400, Voice]
type = playsnd
trigger1 = 0
value = 2, 0
volumescale = 100
channel = 0

[state 400, Sound]
type = playsnd
trigger1 = !animelemtime(3)
value = 1, 0
volumescale = 100
channel = 1

[state 400, Juggle Points 1]
type = null
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
trigger1 = var(10) := 1 || var(17) := 1 || var(49) := 400
[state 400, Hit 1]
type = hitdef
triggerall = var(49) != var(50) && !var(9) && !var(13)
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
ID = 0 + 0 * (var(49) := 400)
attr = C, NA
damage = ceil(cond(13 * fvar(0) < 7, 7, 13 * fvar(0)))
fall.envshake.phase = 3 ; stun damage
fall.envshake.freq = var(17) ; hit/attack level
fall.envshake.ampl = 0 ; hit y position
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 7, 7
hitsound = -1 + 0 * (var(3) := 200)
guardsound = -1 + 0 * (var(4) := cond(p2name = "Urien", 20, 0))
sparkno = -1 + 0 * (var(5) := 10)
guard.sparkno = -1 + 0 * (var(6) := 0)
sparkxy = 0 * (var(7) := 80), 0 * (var(8) := -64)
animtype = light
ground.type = low
air.animtype = back
air.type = low
ground.slidetime = 7
ground.hittime = 9
guard.slidetime = 7
guard.hittime = 9
air.hittime = cond((var(54) = [1, 2]), 3, 128)
ground.velocity = -8.0 * fvar(18)
guard.velocity = -8.0 * fvar(18)
air.velocity = -3.1875 * fvar(14), -3.9375 * fvar(15)
airguard.velocity = -4.0 * fvar(14), -4.0 * fvar(15)
ground.cornerpush.veloff = 0.0 * (fvar(3) := 7.0)
guard.cornerpush.veloff = 0.0
yaccel = 0.375 * fvar(20)
getpower = cond(20 - 10 * var(51) < 10, 10, 20 - 10 * var(51)), 10
givepower = 0, 0
envshake.time = 4
envshake.ampl = 1
envshake.freq = 128
fall = 0
air.fall = 0
fall.recover = 0
fall.recovertime = 1
fall.animtype = back
forcenofall = 1

[state 400, Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
persistent = 0

[state 400, Control]
type = ctrlset
trigger1 = animelemtime(7) >= 0
value = 1
persistent = 0

[state 400, End State]
type = changestate
trigger1 = !animtime
trigger2 = ctrl && command != "holddown"
value = 11 + (command != "holddown")
ctrl = 1

;=========================================================================
; C. Mid Punch
;=========================================================================
[Statedef 410]
type = C
movetype = A
physics = C
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 1

[state 410, Level]
type = null
triggerall = !time
trigger1 = var(17) := 1

[state 410, Set Position]
type = posset
trigger1 = !time
y = 0

[state 410, Change Animation]
type = changeanim
trigger1 = !time
value = 410

[state 410, Pause Frame 1]
type = changeanim
trigger1 = animelemtime(4) > 0 && animelemtime(6) <= 0
trigger1 = hitpausetime
value = 410
elem = 6
ignorehitpause = 1
persistent = 0

[state 410, Pause Frame 2]
type = changeanim
trigger1 = movecontact && !hitpausetime
trigger1 = animelemtime(6) = 2 
value = 410
elem = 7
persistent = 0

[state 410, Add Power]
type = poweradd
trigger1 = !animelemtime(4)
value = ceil(20 * fvar(33) + var(25))

[state 410, Voice]
type = playsnd
trigger1 = 0
value = 2, 0
volumescale = 100
channel = 0

[state 410, Sound]
type = playsnd
trigger1 = !animelemtime(4)
value = 1, 1
volumescale = 100
channel = 1

[state 410, Increment Position]
type = posadd
trigger1 = !animelemtime(2)
x = 24.0
[state 410, Increment Position]
type = posadd
trigger1 = !animelemtime(3)
x = 38.0
[state 410, Increment Position]
type = posadd
trigger1 = !animelemtime(4)
x = 12.0

[state 410, Juggle Points 1]
type = null
trigger1 = animelemtime(4) >= 0 && animelemtime(6) < 0
trigger1 = var(10) := 7 || var(17) := 1 || var(49) := 410
[state 410, Hit 1]
type = hitdef
triggerall = var(49) != var(50) && !var(9) && !var(13)
trigger1 = animelemtime(4) >= 0 && animelemtime(6) < 0
ID = 0 + 0 * (var(49) := 410)
attr = C, NA
damage = ceil(cond(50 * fvar(0) < 7, 7, 50 * fvar(0)))
fall.envshake.phase = 3 ; stun damage
fall.envshake.freq = var(17) ; hit/attack level
fall.envshake.ampl = 0 ; hit y position
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 9, 9
hitsound = -1 + 0 * (var(3) := 210)
guardsound = -1 + 0 * (var(4) := cond(p2name = "Urien", 20, 0))
sparkno = -1 + 0 * (var(5) := 15)
guard.sparkno = -1 + 0 * (var(6) := 0)
sparkxy = 0 * (var(7) := 56), 0 * (var(8) := -56)
animtype = medium
ground.type = low
air.animtype = back
air.type = low
ground.slidetime = 9
ground.hittime = 13
guard.slidetime = 9
guard.hittime = 12
air.hittime = cond((var(54) = [1, 2]), 5, 128)
ground.velocity = -12.0 * fvar(18)
guard.velocity = -12.0 * fvar(18)
air.velocity = -3.1875 * fvar(14), -4.6875 * fvar(15)
airguard.velocity = -4.0 * fvar(14), -4.0 * fvar(15)
ground.cornerpush.veloff = 0.0 * (fvar(3) := 9.0)
guard.cornerpush.veloff = 0.0
yaccel = 0.375 * fvar(20)
getpower = cond(90 - 10 * var(51) < 10, 10, 90 - 10 * var(51)), 40
givepower = 20, 0
envshake.time = 4
envshake.ampl = 1
envshake.freq = 128
fall = 0
air.fall = 0
fall.recover = 0
fall.recovertime = 1
fall.animtype = back
forcenofall = 1

[state 410, Idle]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I
persistent = 0

[state 410, Control]
type = ctrlset
trigger1 = animelemtime(10) >= 0
value = 1
persistent = 0

[state 410, End State]
type = changestate
trigger1 = !animtime
trigger2 = ctrl && command != "holddown"
value = 11 + (command != "holddown")
ctrl = 1

;=========================================================================
; C. Hard Punch
;=========================================================================
[Statedef 420]
type = C
movetype = A
physics = C
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 1

[state 420, Level]
type = null
triggerall = !time
trigger1 = var(17) := 1

[state 420, Set Position]
type = posset
trigger1 = !time
y = 0

[state 420, Change Animation]
type = changeanim
trigger1 = !time
value = 420

[state 420, Attack Animation]
type = changeanim
triggerall = anim = 420 && movehit
trigger1 = !animelemtime(6)
value = 421
elem = 6

[state 420, Add Power]
type = poweradd
trigger1 = !animelemtime(3)
value = ceil(30 * fvar(33) + var(25))

[state 420, Voice]
type = playsnd
trigger1 = !animelemtime(3)
value = 2, 3
volumescale = 100
channel = 0

[state 420, Sound]
type = playsnd
trigger1 = !animelemtime(3)
value = 1, 2
volumescale = 100
channel = 1

[state 420, Increment Position]
type = posadd
trigger1 = !animelemtime(1) || !animelemtime(5)
x = 2.0
[state 420, Increment Position]
type = posadd
trigger1 = !animelemtime(2)
x = 10.0
[state 420, Increment Position]
type = posadd
trigger1 = !animelemtime(3)
x = 11.0
[state 420, Increment Position]
type = posadd
trigger1 = !animelemtime(4)
x = 5.0
[state 420, Increment Position]
type = posadd
trigger1 = !animelemtime(6)
x = -4.0
[state 420, Increment Position]
type = posadd
trigger1 = !animelemtime(7)
x = -8.0
[state 420, Increment Position]
type = posadd
trigger1 = !animelemtime(8)
x = -18.0

[state 420, Juggle Points 1]
type = null
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
trigger1 = var(10) := 1 || var(17) := 1 || var(49) := 420
[state 420, Hit 1]
type = hitdef
triggerall = var(49) != var(50) && !var(9) && !var(13)
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
ID = 0 + 0 * (var(49) := 420)
attr = C, NA
damage = ceil(cond(63 * fvar(0) < 7, 7, 63 * fvar(0)))
fall.envshake.phase = 5 ; stun damage
fall.envshake.freq = var(17) ; hit/attack level
fall.envshake.ampl = 0 ; hit y position
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 11, 11
hitsound = -1 + 0 * (var(3) := 220)
guardsound = -1 + 0 * (var(4) := cond(p2name = "Urien", 20, 0))
sparkno = -1 + 0 * (var(5) := 13)
guard.sparkno = -1 + 0 * (var(6) := 0)
sparkxy = 0 * (var(7) := 48), 0 * (var(8) := -80)
animtype = hard
ground.type = low
air.animtype = back
air.type = low
ground.slidetime = 7
ground.hittime = 17
guard.slidetime = 7
guard.hittime = 15
air.hittime = cond((var(54) = [1, 2]), 7, 128)
ground.velocity = -8.0 * fvar(18)
guard.velocity = -8.0 * fvar(18)
air.velocity = -2.125 * fvar(14), -7.25 * fvar(15)
airguard.velocity = -4.0 * fvar(14), -4.0 * fvar(15)
ground.cornerpush.veloff = 0.0 * (fvar(3) := 7.0)
guard.cornerpush.veloff = 0.0
yaccel = 0.5 * fvar(20)
getpower = cond(140 - 10 * var(51) < 10, 10, 140 - 10 * var(51)), 40
givepower = 40, 0
envshake.time = 4
envshake.ampl = 1
envshake.freq = 128
fall = 0
air.fall = 0
fall.recover = 0
fall.recovertime = 1
fall.animtype = back
forcenofall = 1

[state 420, Juggle Points 2]
type = null
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
trigger1 = var(10) := 2 || var(17) := 1 || var(49) := 421
[state 420, Hit 2]
type = hitdef
triggerall = var(49) != var(50) && !var(9) && !var(13)
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
ID = 5654 + 0 * (var(49) := 421)
attr = C, NA
damage = ceil(cond(32 * fvar(0) < 7, 7, 32 * fvar(0)))
fall.envshake.phase = 5 ; stun damage
fall.envshake.freq = var(17) ; hit/attack level
fall.envshake.ampl = 4 ; hit y position
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 11, 11
hitsound = -1 + 0 * (var(3) := 220)
guardsound = -1 + 0 * (var(4) := cond(p2name = "Urien", 20, 0))
sparkno = -1 + 0 * (var(5) := 12)
guard.sparkno = -1 + 0 * (var(6) := 0)
sparkxy = 0 * (var(7) := 32), 0 * (var(8) := -96)
animtype = up
ground.type = high
air.animtype = up
air.type = low
ground.slidetime = 9
ground.hittime = 17
guard.slidetime = 9
guard.hittime = 15
air.hittime = cond((var(54) = [1, 2]), 0, 128)
ground.velocity = -1.0625 * fvar(14), -9.84375 * fvar(15)
guard.velocity = -10.0 * fvar(18)
air.velocity = -1.0625 * fvar(14), -9.84375 * fvar(15)
airguard.velocity = -4.0 * fvar(14), -4.0 * fvar(15)
ground.cornerpush.veloff = 0.0 * (fvar(3) := 9.0)
guard.cornerpush.veloff = 0.0
yaccel = 0.5625 * fvar(20)
getpower = cond(20 - 10 * var(51) < 10, 10, 20 - 10 * var(51)), 10
givepower = 0, 0
envshake.time = 4
envshake.ampl = 1
envshake.freq = 128
fall = 1
air.fall = 1
fall.recover = 0
fall.recovertime = 1
fall.animtype = up
forcenofall = 0

[state 420, Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I
persistent = 0

[state 420, Control]
type = ctrlset
trigger1 = animelemtime(9) >= 0
value = 1
persistent = 0

[state 420, End State]
type = changestate
trigger1 = !animtime
trigger2 = ctrl && command != "holddown"
value = 11 + (command != "holddown")
ctrl = 1

;=========================================================================
; C. Light Kick
;=========================================================================
[Statedef 430]
type = C
movetype = A
physics = C
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 1

[state 430, Level]
type = null
triggerall = !time
trigger1 = var(17) := 1

[state 430, Set Position]
type = posset
trigger1 = !time
y = 0

[state 430, Change Animation]
type = changeanim
trigger1 = !time
value = 430

[state 430, Pause Frame 1]
type = changeanim
trigger1 = animelemtime(3) > 0 && animelemtime(4) <= 0
trigger1 = hitpausetime
value = 430
elem = 4
ignorehitpause = 1
persistent = 0

[state 430, Pause Frame 2]
type = changeanim
trigger1 = movecontact && !hitpausetime
trigger1 = animelemtime(4) = 1 
value = 430
elem = 5
persistent = 0

[state 430, Add Power]
type = poweradd
trigger1 = !animelemtime(3)
value = 0

[state 430, Voice]
type = playsnd
trigger1 = 0
value = 2, 0
volumescale = 100
channel = 0

[state 430, Sound]
type = playsnd
trigger1 = !animelemtime(3)
value = 1, 0
volumescale = 100
channel = 1

[state 430, Juggle Points 1]
type = null
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
trigger1 = var(10) := 1 || var(17) := 1 || var(49) := 430
[state 430, Hit 1]
type = hitdef
triggerall = var(49) != var(50) && !var(9) && !var(13)
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
ID = 0 + 0 * (var(49) := 430)
attr = C, NA
damage = ceil(cond(13 * fvar(0) < 7, 7, 13 * fvar(0)))
fall.envshake.phase = 3 ; stun damage
fall.envshake.freq = var(17) ; hit/attack level
fall.envshake.ampl = 0 ; hit y position
guardflag = L
hitflag = MAF
priority = 4, Hit
pausetime = 7, 7
hitsound = -1 + 0 * (var(3) := 300)
guardsound = -1 + 0 * (var(4) := cond(p2name = "Urien", 20, 0))
sparkno = -1 + 0 * (var(5) := 10)
guard.sparkno = -1 + 0 * (var(6) := 0)
sparkxy = 0 * (var(7) := 96), 0 * (var(8) := -8)
animtype = light
ground.type = low
air.animtype = back
air.type = low
ground.slidetime = 9
ground.hittime = 9
guard.slidetime = 9
guard.hittime = 11
air.hittime = cond((var(54) = [1, 2]), 3, 128)
ground.velocity = -10.0 * fvar(18)
guard.velocity = -10.0 * fvar(18)
air.velocity = -3.1875 * fvar(14), -3.9375 * fvar(15)
airguard.velocity = -4.0 * fvar(14), -4.0 * fvar(15)
ground.cornerpush.veloff = 0.0 * (fvar(3) := 7.0)
guard.cornerpush.veloff = 0.0
yaccel = 0.375 * fvar(20)
getpower = cond(20 - 10 * var(51) < 10, 10, 20 - 10 * var(51)), 10
givepower = 0, 0
envshake.time = 4
envshake.ampl = 1
envshake.freq = 128
fall = 0
air.fall = 0
fall.recover = 0
fall.recovertime = 1
fall.animtype = back
forcenofall = 1

[state 430, Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
persistent = 0

[state 430, Control]
type = ctrlset
trigger1 = animelemtime(8) >= 0
value = 1
persistent = 0

[state 430, End State]
type = changestate
trigger1 = !animtime
trigger2 = ctrl && command != "holddown"
value = 11 + (command != "holddown")
ctrl = 1

;=========================================================================
; C. Mid Kick
;=========================================================================
[Statedef 440]
type = C
movetype = A
physics = C
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 1

[state 440, Level]
type = null
triggerall = !time
trigger1 = var(17) := 1

[state 440, Set Position]
type = posset
trigger1 = !time
y = 0

[state 440, Change Animation]
type = changeanim
trigger1 = !time
value = 440

[state 440, Pause Frame 1]
type = changeanim
trigger1 = animelemtime(4) > 0 && animelemtime(5) <= 0
trigger1 = hitpausetime
value = 440
elem = 5
ignorehitpause = 1
persistent = 0

[state 440, Pause Frame 2]
type = changeanim
trigger1 = movecontact && !hitpausetime
trigger1 = animelemtime(5) = 1 
value = 440
elem = 6
persistent = 0

[state 440, Add Power]
type = poweradd
trigger1 = !animelemtime(3)
value = ceil(20 * fvar(33) + var(25))

[state 440, Voice]
type = playsnd
trigger1 = 0
value = 2, 0
volumescale = 100
channel = 0

[state 440, Sound]
type = playsnd
trigger1 = !animelemtime(3)
value = 1, 1
volumescale = 100
channel = 1

[state 440, Juggle Points 1]
type = null
trigger1 = animelemtime(4) >= 0 && animelemtime(6) < 0
trigger1 = var(10) := 1 || var(17) := 1 || var(49) := 440
[state 440, Hit 1]
type = hitdef
triggerall = var(49) != var(50) && !var(9) && !var(13)
trigger1 = animelemtime(4) >= 0 && animelemtime(6) < 0
ID = 0 + 0 * (var(49) := 440)
attr = C, NA
damage = ceil(cond(63 * fvar(0) < 7, 7, 63 * fvar(0)))
fall.envshake.phase = 3 ; stun damage
fall.envshake.freq = var(17) ; hit/attack level
fall.envshake.ampl = 0 ; hit y position
guardflag = L
hitflag = MAF
priority = 4, Hit
pausetime = 9, 9
hitsound = -1 + 0 * (var(3) := 310)
guardsound = -1 + 0 * (var(4) := cond(p2name = "Urien", 20, 0))
sparkno = -1 + 0 * (var(5) := 15)
guard.sparkno = -1 + 0 * (var(6) := 0)
sparkxy = 0 * (var(7) := 104), 0 * (var(8) := -8)
animtype = medium
ground.type = low
air.animtype = back
air.type = low
ground.slidetime = 9
ground.hittime = 13
guard.slidetime = 9
guard.hittime = 14
air.hittime = cond((var(54) = [1, 2]), 5, 128)
ground.velocity = -12.0 * fvar(18)
guard.velocity = -12.0 * fvar(18)
air.velocity = -4.25 * fvar(14), -4.6875 * fvar(15)
airguard.velocity = -4.0 * fvar(14), -4.0 * fvar(15)
ground.cornerpush.veloff = 0.0 * (fvar(3) := 9.0)
guard.cornerpush.veloff = 0.0
yaccel = 0.375 * fvar(20)
getpower = cond(90 - 10 * var(51) < 10, 10, 90 - 10 * var(51)), 40
givepower = 20, 0
envshake.time = 4
envshake.ampl = 1
envshake.freq = 128
fall = 0
air.fall = 0
fall.recover = 0
fall.recovertime = 1
fall.animtype = back
forcenofall = 1

[state 440, Idle]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I
persistent = 0

[state 440, Control]
type = ctrlset
trigger1 = animelemtime(10) >= 0
value = 1
persistent = 0

[state 440, End State]
type = changestate
trigger1 = !animtime
trigger2 = ctrl && command != "holddown"
value = 11 + (command != "holddown")
ctrl = 1

;=========================================================================
; C. Hard Kick
;=========================================================================
[Statedef 450]
type = C
movetype = A
physics = C
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 1

[state 450, Level]
type = null
triggerall = !time
trigger1 = var(17) := 1

[state 450, Set Position]
type = posset
trigger1 = !time
y = 0

[state 450, Change Animation]
type = changeanim
trigger1 = !time
value = 450

[state 450, Pause Frame 1]
type = changeanim
triggerall = hitpausetime
trigger1 = animelemtime(4) > 0 && animelemtime(5) <= 0
trigger2 = animelemtime(5) > 0 && animelemtime(6) <= 0
value = 450
elem = cond(animelemtime(5) > 0, 6, 5)
ignorehitpause = 1
persistent = 0

[state 450, Pause Frame 2]
type = changeanim
trigger1 = movecontact && !hitpausetime
trigger1 = animelemtime(5) = 1 || animelemtime(6) = 0
value = 450
elem = cond(animelemtime(6) = 0, 7, 6)
persistent = 0

[state 450, Add Power]
type = poweradd
trigger1 = !animelemtime(3)
value = ceil(30 * fvar(33) + var(25))

[state 450, Voice]
type = playsnd
trigger1 = !animelemtime(3)
value = 2, 3
volumescale = 100
channel = 0

[state 450, Sound]
type = playsnd
trigger1 = !animelemtime(3)
value = 1, 2
volumescale = 100
channel = 1

[state 450, Juggle Points 1]
type = null
trigger1 = animelemtime(4) >= 0 && animelemtime(6) < 0
trigger1 = var(10) := 1 || var(17) := 1 || var(49) := 450
[state 450, Hit 1]
type = hitdef
triggerall = var(49) != var(50) && !var(9) && !var(13)
trigger1 = animelemtime(4) >= 0 && animelemtime(6) < 0
ID = 0 + 0 * (var(49) := 450)
attr = C, NA
damage = ceil(cond(88 * fvar(0) < 7, 7, 88 * fvar(0)))
fall.envshake.phase = 3 ; stun damage
fall.envshake.freq = var(17) ; hit/attack level
fall.envshake.ampl = 4 ; hit y position
guardflag = L
hitflag = MAF
priority = 4, Hit
pausetime = 11, 11
hitsound = -1 + 0 * (var(3) := 320)
guardsound = -1 + 0 * (var(4) := cond(p2name = "Urien", 20, 0))
sparkno = -1 + 0 * (var(5) := 15)
guard.sparkno = -1 + 0 * (var(6) := 0)
sparkxy = 0 * (var(7) := 120), 0 * (var(8) := -8)
animtype = hard
ground.type = trip
air.animtype = back
air.type = trip
ground.slidetime = 9
ground.hittime = 11
guard.slidetime = 9
guard.hittime = 11
air.hittime = cond((var(54) = [1, 2]), 0, 128)
ground.velocity = -6.375 * fvar(14), -1.25 * fvar(15)
guard.velocity = -14.0 * fvar(18)
air.velocity = -6.375 * fvar(14), -1.25 * fvar(15)
airguard.velocity = -4.0 * fvar(14), -4.0 * fvar(15)
ground.cornerpush.veloff = 0.0 * (fvar(3) := 9.0)
guard.cornerpush.veloff = 0.0
yaccel = 0.5 * fvar(20)
getpower = cond(160 - 10 * var(51) < 10, 10, 160 - 10 * var(51)), 70
givepower = 40, 0
envshake.time = 4
envshake.ampl = 1
envshake.freq = 128
fall = 1
air.fall = 1
fall.recover = 0
fall.recovertime = 1
fall.animtype = back
forcestand = 1

[state 450, Idle]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I
persistent = 0

[state 450, Control]
type = ctrlset
trigger1 = animelemtime(12) >= 0
value = 1
persistent = 0

[state 450, End State]
type = changestate
trigger1 = !animtime
trigger2 = ctrl && command != "holddown"
value = 11 + (command != "holddown")
ctrl = 1

;=========================================================================
; A. Light Punch
;=========================================================================
[Statedef 600]
type = A
movetype = A
physics = N
ctrl = 0
facep2 = 0
velset = vel x, vel y
sprpriority = 1

[state 600, Level]
type = null
triggerall = !time
trigger1 = var(17) := 1

[state 600, Reset Velocities]
type = null
trigger1 = !var(48)
trigger1 = fvar(12) := 0.0 * fvar(16) || fvar(13) := const(movement.yaccel) * fvar(17)

[state 600, Change Animation]
type = changeanim
trigger1 = !time
value = 600

[state 600, Pause Frame 1]
type = changeanim
trigger1 = animelemtime(4) > 0 && animelemtime(5) <= 0
trigger1 = hitpausetime
value = 600
elem = 5
ignorehitpause = 1
persistent = 0

[state 600, Pause Frame 2]
type = changeanim
trigger1 = movecontact && !hitpausetime
trigger1 = animelemtime(5) = 2 
value = 600
elem = 6
persistent = 0

[state 600, Add Power]
type = poweradd
trigger1 = !animelemtime(4)
value = 0

[state 600, Voice]
type = playsnd
trigger1 = 0
value = 2, 0
volumescale = 100
channel = 0

[state 600, Sound]
type = playsnd
trigger1 = !animelemtime(4)
value = 1, 0
volumescale = 100
channel = 1

[state 600, Increment Velocity]
type = veladd
trigger1 = 1
x = fvar(12)
y = fvar(13)

[state 600, Set Velocity]
type = velset
trigger1 = abs(vel x) < 0
x = 0.0

[state 600, Juggle Points 1]
type = null
trigger1 = animelemtime(4) >= 0
trigger1 = var(10) := 3 || var(17) := 1 || var(49) := 600
[state 600, Hit 1]
type = hitdef
triggerall = var(49) != var(50) && !var(9) && !var(13)
trigger1 = animelemtime(4) >= 0
ID = 5630 + 0 * (var(49) := 600)
attr = A, NA
damage = ceil(cond(44 * fvar(0) < 7, 7, 44 * fvar(0)))
fall.envshake.phase = 7 ; stun damage
fall.envshake.freq = var(17) ; hit/attack level
fall.envshake.ampl = 0 ; hit y position
guardflag = H
hitflag = MAF
priority = 4, Hit
pausetime = 7, 7
hitsound = -1 + 0 * (var(3) := 200)
guardsound = -1 + 0 * (var(4) := cond(p2name = "Urien", 20, 0))
sparkno = -1 + 0 * (var(5) := 10)
guard.sparkno = -1 + 0 * (var(6) := 0)
sparkxy = 0 * (var(7) := 48), 0 * (var(8) := -64)
animtype = light
ground.type = low
air.animtype = back
air.type = low
ground.slidetime = 7
ground.hittime = 9
guard.slidetime = 7
guard.hittime = 9
air.hittime = cond((var(54) = [1, 2]), 3, 128)
ground.velocity = -6.0 * fvar(18)
guard.velocity = -6.0 * fvar(18)
air.velocity = -3.1875 * fvar(14), -3.9375 * fvar(15) 
airguard.velocity = -4.0 * fvar(14), -4.0 * fvar(15) 
ground.cornerpush.veloff = 0.0 * (fvar(3) := 7.0)
guard.cornerpush.veloff = 0.0
yaccel = 0.375 * fvar(20)
getpower = cond(20 - 10 * var(51) < 10, 10, 20 - 10 * var(51)), 10
givepower = 0, 0
envshake.time = 4
envshake.ampl = 1
envshake.freq = 128
fall = 0
air.fall = 0
fall.recover = 0
fall.recovertime = 1
fall.animtype = back
forcenofall = 1

[state 600, Idle]
type = statetypeset
trigger1 = 0 ; animelemtime(-1) >= 0
movetype = I
persistent = 0

[state 600, Control]
type = ctrlset
trigger1 = time >= 1200
value = 1

[state 600, End State]
type = changestate
trigger1 = pos y + vel y > 0
value = 52

;=========================================================================
; A. Mid Punch
;=========================================================================
[Statedef 610]
type = A
movetype = A
physics = N
ctrl = 0
facep2 = 0
velset = vel x, vel y
sprpriority = 1

[state 610, Level]
type = null
triggerall = !time
trigger1 = var(17) := 1

[state 610, Reset Velocities]
type = null
trigger1 = !var(48)
trigger1 = fvar(12) := 0.0 * fvar(16) || fvar(13) := const(movement.yaccel) * fvar(17)

[state 610, Change Animation]
type = changeanim
trigger1 = !time
value = 610

[state 610, Pause Frame 1]
type = changeanim
trigger1 = animelemtime(5) > 0 && animelemtime(6) <= 0
trigger1 = hitpausetime
value = 610
elem = 6
ignorehitpause = 1
persistent = 0

[state 610, Pause Frame 2]
type = changeanim
trigger1 = movecontact && !hitpausetime
trigger1 = animelemtime(6) = 2 
value = 610
elem = 7
persistent = 0

[state 610, Add Power]
type = poweradd
trigger1 = !animelemtime(4)
value = ceil(20 * fvar(33) + var(25))

[state 610, Voice]
type = playsnd
trigger1 = 0
value = 2, 0
volumescale = 100
channel = 0

[state 610, Sound]
type = playsnd
trigger1 = !animelemtime(4)
value = 1, 1
volumescale = 100
channel = 1

[state 610, Increment Velocity]
type = veladd
trigger1 = 1
x = fvar(12)
y = fvar(13)

[state 610, Set Velocity]
type = velset
trigger1 = abs(vel x) < 0
x = 0.0

[state 610, Juggle Points 1]
type = null
trigger1 = animelemtime(5) >= 0 && animelemtime(7) < 0
trigger1 = var(10) := 3 || var(17) := 1 || var(49) := 610
[state 610, Hit 1]
type = hitdef
triggerall = var(49) != var(50) && !var(9) && !var(13)
trigger1 = animelemtime(5) >= 0 && animelemtime(7) < 0
ID = 0 + 0 * (var(49) := 610)
attr = A, NA
damage = ceil(cond(82 * fvar(0) < 7, 7, 82 * fvar(0)))
fall.envshake.phase = 9 ; stun damage
fall.envshake.freq = var(17) ; hit/attack level
fall.envshake.ampl = 0 ; hit y position
guardflag = H
hitflag = MAF
priority = 4, Hit
pausetime = 8, 8
hitsound = -1 + 0 * (var(3) := 210)
guardsound = -1 + 0 * (var(4) := cond(p2name = "Urien", 20, 0))
sparkno = -1 + 0 * (var(5) := 15)
guard.sparkno = -1 + 0 * (var(6) := 0)
sparkxy = 0 * (var(7) := 88), 0 * (var(8) := -88)
animtype = medium
ground.type = high
air.animtype = back
air.type = low
ground.slidetime = 7
ground.hittime = 12
guard.slidetime = 7
guard.hittime = 12
air.hittime = cond((var(54) = [1, 2]), 5, 128)
ground.velocity = -6.0 * fvar(18)
guard.velocity = -6.0 * fvar(18)
air.velocity = -4.25 * fvar(14), -4.6875 * fvar(15)
airguard.velocity = -4.0 * fvar(14), -4.0 * fvar(15)
ground.cornerpush.veloff = 0.0 * (fvar(3) := 7.0)
guard.cornerpush.veloff = 0.0
yaccel = 0.375 * fvar(20)
getpower = cond(90 - 10 * var(51) < 10, 10, 90 - 10 * var(51)), 40
givepower = 20, 0
envshake.time = 4
envshake.ampl = 1
envshake.freq = 128
fall = 0
air.fall = 0
fall.recover = 0
fall.recovertime = 1
fall.animtype = back
forcenofall = 1

[state 610, Idle]
type = statetypeset
trigger1 = animelemtime(7) >= 0
movetype = I
persistent = 0

[state 610, Control]
type = ctrlset
trigger1 = time >= 1200
value = 1

[state 610, End State]
type = changestate
trigger1 = pos y + vel y > 0
value = 52

;=========================================================================
; A. Hard Punch
;=========================================================================
[Statedef 620]
type = A
movetype = A
physics = N
ctrl = 0
facep2 = 0
velset = vel x, vel y
sprpriority = 1

[state 620, Level]
type = null
triggerall = !time
trigger1 = var(17) := 1

[state 620, Reset Velocities]
type = null
trigger1 = !var(48)
trigger1 = fvar(12) := 0.0 * fvar(16) || fvar(13) := const(movement.yaccel) * fvar(17)

[state 620, Change Animation]
type = changeanim
trigger1 = !time
value = 620

[state 620, Add Power]
type = poweradd
trigger1 = !animelemtime(5)
value = ceil(30 * fvar(33) + var(25))

[state 620, Voice]
type = playsnd
trigger1 = 0
value = 2, 0
volumescale = 100
channel = 0

[state 620, Sound]
type = playsnd
trigger1 = !animelemtime(5)
value = 1, 2
volumescale = 100
channel = 1

[state 620, Increment Velocity]
type = veladd
trigger1 = 1
x = fvar(12)
y = fvar(13)

[state 620, Set Velocity]
type = velset
trigger1 = abs(vel x) < 0
x = 0.0

[state 620, Juggle Points 1]
type = null
trigger1 = animelemtime(5) >= 0 && animelemtime(7) < 0
trigger1 = var(10) := 3 || var(17) := 1 || var(49) := 620
[state 620, Hit 1]
type = hitdef
triggerall = var(49) != var(50) && !var(9) && !var(13)
trigger1 = animelemtime(5) >= 0 && animelemtime(7) < 0
ID = 5632 + 0 * (var(49) := 620)
attr = A, NA
damage = ceil(cond(119 * fvar(0) < 7, 7, 119 * fvar(0)))
fall.envshake.phase = 11 ; stun damage
fall.envshake.freq = var(17) ; hit/attack level
fall.envshake.ampl = 0 ; hit y position
guardflag = H
hitflag = MAF
priority = 4, Hit
pausetime = 9, 9
hitsound = -1 + 0 * (var(3) := 220)
guardsound = -1 + 0 * (var(4) := cond(p2name = "Urien", 20, 0))
sparkno = -1 + 0 * (var(5) := 16)
guard.sparkno = -1 + 0 * (var(6) := 0)
sparkxy = 0 * (var(7) := 112), 0 * (var(8) := -72)
animtype = hard
ground.type = high
air.animtype = back
air.type = low
ground.slidetime = 7
ground.hittime = 15
guard.slidetime = 7
guard.hittime = 15
air.hittime = cond((var(54) = [1, 2]), 7, 128)
ground.velocity = -6.0 * fvar(18)
guard.velocity = -6.0 * fvar(18)
air.velocity = -5.3125 * fvar(14), -5.4375 * fvar(15)
airguard.velocity = -4.0 * fvar(14), -4.0 * fvar(15)
ground.cornerpush.veloff = 0.0 * (fvar(3) := 7.0)
guard.cornerpush.veloff = 0.0
yaccel = 0.375 * fvar(20)
getpower = cond(160 - 10 * var(51) < 10, 10, 160 - 10 * var(51)), 70
givepower = 40, 0
envshake.time = 4
envshake.ampl = 1
envshake.freq = 128
fall = 0
air.fall = 0
fall.recover = 0
fall.recovertime = 1
fall.animtype = back
forcenofall = 1

[state 620, Idle]
type = statetypeset
trigger1 = animelemtime(7) >= 0 
movetype = I
persistent = 0

[state 620, Control]
type = ctrlset
trigger1 = time >= 1200
value = 1

[state 620, End State]
type = changestate
trigger1 = pos y + vel y > 0
value = 52

;=========================================================================
; A. Light Kick
;=========================================================================
[Statedef 630]
type = A
movetype = A
physics = N
ctrl = 0
facep2 = 0
velset = vel x, vel y
sprpriority = 1

[state 630, Level]
type = null
triggerall = !time
trigger1 = var(17) := 1

[state 630, Reset Velocities]
type = null
trigger1 = !var(48)
trigger1 = fvar(12) := 0.0 * fvar(16) || fvar(13) := const(movement.yaccel) * fvar(17)

[state 630, Change Animation]
type = changeanim
trigger1 = !time
value = 630

[state 630, Pause Frame 1]
type = changeanim
trigger1 = animelemtime(3) > 0 && animelemtime(4) <= 0
trigger1 = hitpausetime
value = 630
elem = 4
ignorehitpause = 1
persistent = 0

[state 630, Pause Frame 2]
type = changeanim
trigger1 = movecontact && !hitpausetime
trigger1 = animelemtime(4) = 7
value = 630
elem = 5
persistent = 0

[state 630, Add Power]
type = poweradd
trigger1 = !animelemtime(3)
value = 0

[state 630, Voice]
type = playsnd
trigger1 = 0
value = 2, 0
volumescale = 100
channel = 0

[state 630, Sound]
type = playsnd
trigger1 = !animelemtime(3)
value = 1, 0
volumescale = 100
channel = 1

[state 630, Increment Velocity]
type = veladd
trigger1 = 1
x = fvar(12)
y = fvar(13)

[state 630, Set Velocity]
type = velset
trigger1 = abs(vel x) < 0
x = 0.0

[state 630, Juggle Points 1]
type = null
trigger1 = animelemtime(3) >= 0 && animelemtime(5) < 0
trigger1 = var(10) := 3 || var(17) := 1 || var(49) := 630
[state 630, Hit 1]
type = hitdef
triggerall = var(49) != var(50) && !var(9) && !var(13)
trigger1 = animelemtime(3) >= 0 && animelemtime(5) < 0
ID = 0 + 0 * (var(49) := 630)
attr = A, NA
damage = ceil(cond(44 * fvar(0) < 7, 7, 44 * fvar(0)))
fall.envshake.phase = 7 ; stun damage
fall.envshake.freq = var(17) ; hit/attack level
fall.envshake.ampl = 0 ; hit y position
guardflag = H
hitflag = MAF
priority = 4, Hit
pausetime = 7, 7
hitsound = -1 + 0 * (var(3) := 300)
guardsound = -1 + 0 * (var(4) := cond(p2name = "Urien", 20, 0))
sparkno = -1 + 0 * (var(5) := 10)
guard.sparkno = -1 + 0 * (var(6) := 0)
sparkxy = 0 * (var(7) := 48), 0 * (var(8) := -64)
animtype = light
ground.type = high
air.animtype = back
air.type = low
ground.slidetime = 7
ground.hittime = 9
guard.slidetime = 7
guard.hittime = 9
air.hittime = cond((var(54) = [1, 2]), 3, 128)
ground.velocity = -6.0 * fvar(18)
guard.velocity = -6.0 * fvar(18)
air.velocity = -3.1875 * fvar(14), -3.9375 * fvar(15)
airguard.velocity = -4.0 * fvar(14), -4.0 * fvar(15)
ground.cornerpush.veloff = 0.0 * (fvar(3) := 7.0)
guard.cornerpush.veloff = 0.0
yaccel = 0.375 * fvar(20)
getpower = cond(20 - 10 * var(51) < 10, 10, 20 - 10 * var(51)), 10
givepower = 0, 0
envshake.time = 4
envshake.ampl = 1
envshake.freq = 128
fall = 0
air.fall = 0
fall.recover = 0
fall.recovertime = 1
fall.animtype = back
forcenofall = 1

[state 630, Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I
persistent = 0

[state 630, Control]
type = ctrlset
trigger1 = time >= 1200
value = 1

[state 630, End State]
type = changestate
trigger1 = pos y + vel y > 0
value = 52

;=========================================================================
; A. Mid Kick
;=========================================================================
[Statedef 640]
type = A
movetype = A
physics = N
ctrl = 0
facep2 = 0
velset = vel x, vel y
sprpriority = 1

[state 640, Level]
type = null
triggerall = !time
trigger1 = var(17) := 1

[state 640, Reset Velocities]
type = null
trigger1 = !var(48)
trigger1 = fvar(12) := 0.0 * fvar(16) || fvar(13) := const(movement.yaccel) * fvar(17)

[state 640, Change Animation]
type = changeanim
trigger1 = !time
value = 640

[state 640, Pause Frame 1]
type = changeanim
trigger1 = animelemtime(4) > 0 && animelemtime(5) <= 0
trigger1 = hitpausetime
value = 640
elem = 5
ignorehitpause = 1
persistent = 0

[state 630, Pause Frame 2]
type = changeanim
trigger1 = movecontact && !hitpausetime
trigger1 = animelemtime(5) = 2
value = 640
elem = 6
persistent = 0

[state 640, Add Power]
type = poweradd
trigger1 = !animelemtime(3)
value = ceil(20 * fvar(33) + var(25))

[state 640, Voice]
type = playsnd
trigger1 = 0
value = 2, 0
volumescale = 100
channel = 0

[state 640, Sound]
type = playsnd
trigger1 = !animelemtime(3)
value = 1, 1
volumescale = 100
channel = 1

[state 640, Increment Velocity]
type = veladd
trigger1 = 1
x = fvar(12)
y = fvar(13)

[state 640, Set Velocity]
type = velset
trigger1 = abs(vel x) < 0
x = 0.0

[state 640, Juggle Points 1]
type = null
trigger1 = animelemtime(4) >= 0 && animelemtime(6) < 0
trigger1 = var(10) := 3 || var(17) := 1 || var(49) := 640
[state 640, Hit 1]
type = hitdef
triggerall = var(49) != var(50) && !var(9) && !var(13)
trigger1 = animelemtime(4) >= 0 && animelemtime(6) < 0
ID = 0 + 0 * (var(49) := 640)
attr = A, NA
damage = ceil(cond(82 * fvar(0) < 7, 7, 82 * fvar(0)))
fall.envshake.phase = 9 ; stun damage
fall.envshake.freq = var(17) ; hit/attack level
fall.envshake.ampl = 0 ; hit y position
guardflag = H
hitflag = MAF
priority = 4, Hit
pausetime = 8, 8
hitsound = -1 + 0 * (var(3) := 310)
guardsound = -1 + 0 * (var(4) := cond(p2name = "Urien", 20, 0))
sparkno = -1 + 0 * (var(5) := 15)
guard.sparkno = -1 + 0 * (var(6) := 0)
sparkxy = 0 * (var(7) := 96), 0 * (var(8) := -88)
animtype = medium
ground.type = high
air.animtype = back
air.type = low
ground.slidetime = 7
ground.hittime = 12
guard.slidetime = 7
guard.hittime = 12
air.hittime = cond((var(54) = [1, 2]), 5, 128)
ground.velocity = -6.0 * fvar(18)
guard.velocity = -6.0 * fvar(18)
air.velocity = -4.25 * fvar(14), -4.6875 * fvar(15)
airguard.velocity = -4.0 * fvar(14), -4.0 * fvar(15)
ground.cornerpush.veloff = 0.0 * (fvar(3) := 7.0)
guard.cornerpush.veloff = 0.0
yaccel = 0.375 * fvar(20)
getpower = cond(90 - 10 * var(51) < 10, 10, 90 - 10 * var(51)), 40
givepower = 20, 0
envshake.time = 4
envshake.ampl = 1
envshake.freq = 128
fall = 0
air.fall = 0
fall.recover = 0
fall.recovertime = 1
fall.animtype = back
forcenofall = 1

[state 640, Idle]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I
persistent = 0

[state 640, Control]
type = ctrlset
trigger1 = time >= 1200
value = 1

[state 640, End State]
type = changestate
trigger1 = pos y + vel y > 0
value = 52

;=========================================================================
; A. Hard Kick
;=========================================================================
[Statedef 650]
type = A
movetype = A
physics = N
ctrl = 0
facep2 = 0
velset = vel x, vel y
sprpriority = 1

[state 650, Level]
type = null
triggerall = !time
trigger1 = var(17) := 1

[state 650, Reset Velocities]
type = null
trigger1 = !var(48)
trigger1 = fvar(12) := 0.0 * fvar(16) || fvar(13) := const(movement.yaccel) * fvar(17)

[state 650, Change Animation]
type = changeanim
trigger1 = !time
value = 650

[state 650, Pause Frame 1]
type = changeanim
trigger1 = animelemtime(6) > 0 && animelemtime(7) <= 0
trigger1 = hitpausetime
value = 650
elem = 7
ignorehitpause = 1
persistent = 0

[state 650, Pause Frame 2]
type = changeanim
trigger1 = movecontact && !hitpausetime
trigger1 = animelemtime(7) = 1
value = 650
elem = 8
persistent = 0

[state 650, Add Power]
type = poweradd
trigger1 = !animelemtime(5)
value = ceil(30 * fvar(33) + var(25))

[state 650, Voice]
type = playsnd
trigger1 = 0
value = 2, 1
volumescale = 100
channel = 0

[state 650, Sound]
type = playsnd
trigger1 = !animelemtime(5)
value = 1, 2
volumescale = 100
channel = 1

[state 650, Increment Velocity]
type = veladd
trigger1 = 1
x = fvar(12)
y = fvar(13)

[state 650, Set Velocity]
type = velset
trigger1 = abs(vel x) < 0
x = 0.0

[state 650, Juggle Points 1]
type = null
trigger1 = animelemtime(6) >= 0 && animelemtime(8) < 0
trigger1 = var(10) := 3 || var(17) := 1 || var(49) := 650
[state 650, Hit 1]
type = hitdef
triggerall = var(49) != var(50) && !var(9) && !var(13)
trigger1 = animelemtime(6) >= 0 && animelemtime(8) < 0
ID = 0 + 0 * (var(49) := 650)
attr = A, NA
damage = ceil(cond(119 * fvar(0) < 7, 7, 119 * fvar(0)))
fall.envshake.phase = 11 ; stun damage
fall.envshake.freq = var(17) ; hit/attack level
fall.envshake.ampl = 0 ; hit y position
guardflag = H
hitflag = MAF
priority = 4, Hit
pausetime = 9, 9
hitsound = -1 + 0 * (var(3) := 320)
guardsound = -1 + 0 * (var(4) := cond(p2name = "Urien", 20, 0))
sparkno = -1 + 0 * (var(5) := 15)
guard.sparkno = -1 + 0 * (var(6) := 0)
sparkxy = 0 * (var(7) := 104), 0 * (var(8) := -64)
animtype = hard
ground.type = high
air.animtype = back
air.type = low
ground.slidetime = 7
ground.hittime = 15
guard.slidetime = 7
guard.hittime = 15
air.hittime = cond((var(54) = [1, 2]), 7, 128)
ground.velocity = -6.0 * fvar(18)
guard.velocity = -6.0 * fvar(18)
air.velocity = -5.3125 * fvar(14), -5.4375 * fvar(15)
airguard.velocity = -4.0 * fvar(14), -4.0 * fvar(15)
ground.cornerpush.veloff = 0.0 * (fvar(3) := 7.0)
guard.cornerpush.veloff = 0.0
yaccel = 0.375 * fvar(20)
getpower = cond(160 - 10 * var(51) < 10, 10, 160 - 10 * var(51)), 70
givepower = 40, 0
envshake.time = 4
envshake.ampl = 1
envshake.freq = 128
fall = 0
air.fall = 0
fall.recover = 0
fall.recovertime = 1
fall.animtype = back
forcenofall = 1

[state 650, Idle]
type = statetypeset
trigger1 = animelemtime(8) >= 0
movetype = I
persistent = 0

[state 650, Control]
type = ctrlset
trigger1 = time >= 1200
value = 1

[state 650, End State]
type = changestate
trigger1 = pos y + vel y > 0
value = 52

;=========================================================================
; Forward + Mid Punch
;=========================================================================
[Statedef 700]
type = S
movetype = A
physics = S
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 1

[state 700, Level]
type = null
triggerall = !time
trigger1 = var(17) := 1

[state 700, Set Position]
type = posset
trigger1 = !time
y = 0

[state 700, Change Animation]
type = changeanim
trigger1 = !time
value = 700

[state 700, Add Power]
type = poweradd
trigger1 = !animelemtime(4)
value = ceil(20 * fvar(33) + var(25))

[state 700, Voice]
type = playsnd
trigger1 = !animelemtime(4)
value = 2, 1
volumescale = 100
channel = 0

[state 700, Sound]
type = playsnd
trigger1 = !animelemtime(4)
value = 1, 1
volumescale = 100
channel = 1

[state 700, Increment Position]
type = posadd
trigger1 = !animelemtime(1)
x = 4.0
[state 700, Increment Position]
type = posadd
trigger1 = !animelemtime(2)
x = 12.0
[state 700, Increment Position]
type = posadd
trigger1 = !animelemtime(3) || !animelemtime(10)
x = 5.0
[state 700, Increment Position]
type = posadd
trigger1 = !animelemtime(4)
x = 15.0
[state 700, Increment Position]
type = posadd
trigger1 = !animelemtime(5) || !animelemtime(7)
x = 3.0
[state 700, Increment Position]
type = posadd
trigger1 = !animelemtime(6) || !animelemtime(8)
x = 1.0
[state 700, Increment Position]
type = posadd
trigger1 = !animelemtime(9)
x = 7.0

[state 700, Juggle Points 1]
type = null
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
trigger1 = var(10) := 1 || var(17) := 1 || var(49) := 700
[state 700, Hit 1]
type = hitdef 
triggerall = var(49) != var(50) && !var(9) && !var(13)
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
ID = 0 + 0 * (var(49) := 700)
attr = S, NA
damage = ceil(cond(69 * fvar(0) < 7, 7, 69 * fvar(0)))
fall.envshake.phase = 9 ; stun damage
fall.envshake.freq = var(17) ; hit/attack level
fall.envshake.ampl = 0 ; hit y position
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 9, 9
hitsound = -1 + 0 * (var(3) := 210)
guardsound = -1 + 0 * (var(4) := cond(p2name = "Urien", 20, 0))
sparkno = -1 + 0 * (var(5) := 14)
guard.sparkno = -1 + 0 * (var(6) := 0)
sparkxy = 0 * (var(7) := 88), 0 * (var(8) := cond(numenemy, cond(enemynear,const(size.head.pos.y) > -112, enemynear,const(size.head.pos.y), -112), -112))
animtype = medium
ground.type = high
air.animtype = back
air.type = low
ground.slidetime = 9
ground.hittime = 13
guard.slidetime = 9
guard.hittime = 12
air.hittime = cond((var(54) = [1, 2]), 5, 128)
ground.velocity = -12.0 * fvar(18)
guard.velocity = -12.0 * fvar(18)
air.velocity = -4.25 * fvar(14), -4.6875 * fvar(15)
airguard.velocity = -4.0 * fvar(14), -4.0 * fvar(15)
ground.cornerpush.veloff = 0.0 * (fvar(3) := 9.0)
guard.cornerpush.veloff = 0.0
yaccel = 0.375 * fvar(20)
getpower = cond(90 - 10 * var(51) < 10, 10, 90 - 10 * var(51)), 40
givepower = 20, 0
envshake.time = 4
envshake.ampl = 1
envshake.freq = 128
fall = 0
air.fall = 0
fall.recover = 0
fall.recovertime = 1
fall.animtype = back
forcenofall = 1

[state 700, Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I
persistent = 0

[state 700, Control]
type = ctrlset
trigger1 = animelemtime(10) >= 0
value = 1
persistent = 0

[state 700, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; Forward + Hard Punch
;=========================================================================
[Statedef 705]
type = S
movetype = A
physics = S
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 1

[state 705, Level]
type = null
triggerall = !time
trigger1 = var(17) := 1

[state 705, Set Position]
type = posset
trigger1 = !time
y = 0

[state 705, Change Animation]
type = changeanim
trigger1 = !time
value = 705 + (prevstateno = 700)

[state 705, Add Power]
type = poweradd
trigger1 = !animelemtime(5)
value = ceil(30 * fvar(33) + var(25))

[state 705, Voice]
type = playsnd
trigger1 = !animelemtime(5)
value = 2, 1
volumescale = 100
channel = 0

[state 705, Sound]
type = playsnd
trigger1 = !animelemtime(5)
value = 1, 2
volumescale = 100
channel = 1

[state 705, Increment Position]
type = posadd
trigger1 = !animelemtime(1)
trigger1 = prevstateno = 700
x = 12.0
[state 705, Increment Position]
type = posadd
trigger1 = !animelemtime(2)
x = 8.0
[state 705, Increment Position]
type = posadd
trigger1 = !animelemtime(3)
x = 5.0
[state 705, Increment Position]
type = posadd
trigger1 = !animelemtime(4) || !animelemtime(9)
x = 3.0
[state 705, Increment Position]
type = posadd
trigger1 = !animelemtime(10) || !animelemtime(11)
x = -2.0

[state 705, Juggle Points 1]
type = null
trigger1 = animelemtime(5) >= 0 && animelemtime(6) < 0
trigger1 = var(10) := 1 || var(17) := 1 || var(49) := 705
[state 705, Hit 1]
type = hitdef 
triggerall = var(49) != var(50) && !var(9) && !var(13)
trigger1 = animelemtime(5) >= 0 && animelemtime(6) < 0
ID = 5632 + 0 * (var(49) := 705)
attr = S, NA
damage = ceil(cond(107 * fvar(0) < 7, 7, 107 * fvar(0)))
fall.envshake.phase = 3 ; stun damage
fall.envshake.freq = var(17) ; hit/attack level
fall.envshake.ampl = 0 ; hit y position
guardflag = H
hitflag = MAF
priority = 4, Hit
pausetime = 11, 11
hitsound = -1 + 0 * (var(3) := 220)
guardsound = -1 + 0 * (var(4) := cond(p2name = "Urien", 20, 0))
sparkno = -1 + 0 * (var(5) := 16)
guard.sparkno = -1 + 0 * (var(6) := 0)
sparkxy = 0 * (var(7) := 80), 0 * (var(8) := -40)
animtype = hard
ground.type = low
air.animtype = back
air.type = low
ground.slidetime = 12
ground.hittime = 17
guard.slidetime = 12
guard.hittime = 15
air.hittime = cond((var(54) = [1, 2]), 7, 128)
ground.velocity = -14.0 * fvar(18)
guard.velocity = -14.0 * fvar(18)
air.velocity = -6.375 * fvar(14), 4.25 * fvar(15)
airguard.velocity = -4.0 * fvar(14), -4.0 * fvar(15)
ground.cornerpush.veloff = 0.0 * (fvar(3) := 12.0)
guard.cornerpush.veloff = 0.0
yaccel = 0.5 * fvar(20)
getpower = cond(160 - 10 * var(51) < 10, 10, 160 - 10 * var(51)), 70
givepower = 40, 0
envshake.time = 4
envshake.ampl = 1
envshake.freq = 128
fall = 0
air.fall = 1
fall.recover = 0
fall.recovertime = 1
fall.animtype = back
forcenofall = 0

[state 705, Idle]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I
persistent = 0

[state 705, Control]
type = ctrlset
trigger1 = animelemtime(11) >= 0
value = 1
persistent = 0

[state 705, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; Forward + Mid Kick
;=========================================================================
[Statedef 710]
type = S
movetype = A
physics = S
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 1

[state 710, Level]
type = null
triggerall = !time
trigger1 = var(17) := 1

[state 710, Set Position]
type = posset
trigger1 = !time
y = 0

[state 710, Change Animation]
type = changeanim
trigger1 = !time
value = 710

[state 710, Add Power]
type = poweradd
trigger1 = !animelemtime(6)
value = ceil(20 * fvar(33) + var(25))

[state 710, Voice]
type = playsnd
trigger1 = 0
value = 2, 0
volumescale = 100
channel = 0

[state 710, Sound]
type = playsnd
trigger1 = !animelemtime(6)
value = 1, 1
volumescale = 100
channel = 1

[state 710, Set State Type]
type = statetypeset
trigger1 = !animelemtime(1)
physics = N

[state 710, Set Velocity]
type = velset
trigger1 = !animelemtime(1)
x = 8.0 * fvar(14)
[state 710, Increment Velocity]
type = veladd
trigger1 = animelemtime(1) > 0 && animelemtime(5) < 0
x = -0.5 * fvar(16)
[state 710, Set Velocity]
type = velset
trigger1 = !animelemtime(5)
x = 0.0 * fvar(14)

[state 710, Increment Position]
type = posadd
trigger1 = !animelemtime(10) || !animelemtime(11)
x = 7.0
[state 710, Increment Position]
type = posadd
trigger1 = !animelemtime(12)
x = 17.0
[state 710, Increment Position]
type = posadd
trigger1 = !animelemtime(13)
x = 5.0
[state 710, Increment Position]
type = posadd
trigger1 = !animelemtime(14)
x = 6.0

[state 710, Dust]
type = helper
trigger1 = !animelemtime(1)
name = "Dust"
ID = 6000
stateno = 6000
postype = P1
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0

[state 710, Juggle Points 1]
type = null
trigger1 = animelemtime(7) >= 0 && animelemtime(9) < 0
trigger1 = var(10) := 1 || var(17) := 1 || var(49) := 710
[state 710, Hit 1]
type = hitdef
triggerall = var(49) != var(50) && !var(9) && !var(13)
trigger1 = animelemtime(7) >= 0 && animelemtime(9) < 0
ID = 0 + 0 * (var(49) := 710)
attr = S, NA
damage = ceil(cond(82 * fvar(0) < 7, 7, 82 * fvar(0)))
fall.envshake.phase = 9 ; stun damage
fall.envshake.freq = var(17) ; hit/attack level
fall.envshake.ampl = 0 ; hit y position
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 9, 9
hitsound = -1 + 0 * (var(3) := 310)
guardsound = -1 + 0 * (var(4) := cond(p2name = "Urien", 20, 0))
sparkno = -1 + 0 * (var(5) := 15)
guard.sparkno = -1 + 0 * (var(6) := 0)
sparkxy = 0 * (var(7) := 120), 0 * (var(8) := -72)
animtype = medium
ground.type = low
air.animtype = back
air.type = low
ground.slidetime = 9
ground.hittime = 13
guard.slidetime = 9
guard.hittime = 12
air.hittime = cond((var(54) = [1, 2]), 5, 128)
ground.velocity = -12.0 * fvar(18)
guard.velocity = -12.0 * fvar(18)
air.velocity = -4.25 * fvar(14), -4.6875 * fvar(15)
airguard.velocity = -4.0 * fvar(14), -4.0 * fvar(15)
ground.cornerpush.veloff = 0.0 * (fvar(3) := 9.0)
guard.cornerpush.veloff = 0.0
yaccel = 0.375 * fvar(20)
getpower = cond(90 - 10 * var(51) < 10, 10, 90 - 10 * var(51)), 40
givepower = 20, 0
envshake.time = 4
envshake.ampl = 1
envshake.freq = 128
fall = 0
air.fall = 0
fall.recover = 0
fall.recovertime = 1
fall.animtype = back
forcenofall = 1

[state 710, Idle]
type = statetypeset
trigger1 = animelemtime(9) >= 0
movetype = I
persistent = 0

[state 710, Control]
type = ctrlset
trigger1 = animelemtime(13) >= 0
value = 1
persistent = 0

[state 710, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; Throw Attempt
;=========================================================================
[Statedef 800]
type = U
movetype = A
physics = U
ctrl = 0
facep2 = 1
; velset = 0, 0
sprpriority = 0

[state 800, Set State Type]
type = statetypeset
trigger1 = statetype != A
statetype = S
physics = S
[state 800, Set State Type]
type = statetypeset
trigger1 = statetype = A
statetype = A
physics = N

[state 800, Set Velocity]
type = velset
trigger1 = statetype != A
x = 0.0
y = 0.0
persistent = 0

;========================< Standing Throw >========================

[state 800, Level]
type = null
triggerall = !time
triggerall = statetype != A
trigger1 = var(0) := 0 || var(1) := 0 || var(17) := 4
trigger1 = fvar(30) := 0 || fvar(31) := 0

[state 800, Direction]
type = null
triggerall = !time
triggerall = statetype != A
trigger1 = cond(ailevel, 0 * (var(18) := var(18) + 820 * !var(18)), 1)
trigger1 = cond(command = "holdfwd", 0 * (var(18) := 830), 1)
trigger1 = cond(command = "holdback", 0 * (var(18) := 840), 1)
trigger1 = var(18) := 820

[state 800, Set Position]
type = posset
trigger1 = !time
trigger1 = statetype != A
y = 0

[state 800, Change Animation]
type = changeanim
trigger1 = !time
trigger1 = statetype != A
value = 800

[state 800, Sound]
type = playsnd
trigger1 = anim = 800 || statetype != A
trigger1 = !animelemtime(5)
value = 1, 0
volumescale = 100
channel = 1

[state 800, Increment Position]
type = posadd
trigger1 = anim = 800 || statetype != A
trigger1 = !animelemtime(5)
x = 14.0
[state 800, Increment Position]
type = posadd
trigger1 = anim = 800 || statetype != A
trigger1 = !animelemtime(9)
x = -8.0
[state 800, Increment Position]
type = posadd
trigger1 = anim = 800 || statetype != A
trigger1 = !animelemtime(10)
x = -6.0

[state 800, Juggle Points 1]
type = null
trigger1 = anim = 800 || statetype != A
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
trigger1 = var(10) := 0 || var(17) := 4 || var(49) := 800
[state 800, Throw 1]
type = hitdef
triggerall = var(49) != var(50) ; && !var(9) && !var(13)
triggerall = anim = 800 || statetype != A
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
trigger1 = cond(numenemy, var(0) := 1 + (!enemynear,ctrl || enemynear,movetype = A), 1)
ID = var(18) + 0 * (var(49) := 800)
attr = S, NT
damage = 0
; fall.damage = ceil(cond(7 * fvar(0) < 7, 7, 7 * fvar(0))) * (var(18) = -1)
fall.envshake.phase = cond(var(18) = 820, 4, 8) ; stun damage
fall.envshake.freq = var(17) ; hit/attack level
fall.envshake.ampl = 0 ; hit y position
guardflag =
hitflag = M
priority = 1, miss
pausetime = 0, 0
guard.pausetime = 0, 0
hitsound = -1 + (0 * (var(3) := 800))
guardsound = -1 + (0 * (var(4) := -1))
sparkno = -1 + (0 * (var(5) := -1))
guard.sparkno = -1 + 0 * (var(6) := -1)
sparkxy = 0 * (var(7) := 120), 0 * (var(8) := -8)
animtype = hard
ground.type = high
air.animtype = hard
air.type = low
ground.slidetime = 0
ground.hittime = 0
guard.slidetime = 0
guard.hittime = 0
air.hittime = cond((var(54) = [1, 2]), 0, 0)
ground.velocity = 0.0 * fvar(14), 0.0 * fvar(15)
guard.velocity = 0.0 * fvar(18)
air.velocity = 0.0 * fvar(14), 0.0 * fvar(15)
airguard.velocity = 0.0 * fvar(14), 0.0 * fvar(15)
ground.cornerpush.veloff = 0.0 * (fvar(3) := 0.0)
guard.cornerpush.veloff = 0.0
yaccel = cond(var(18) = 820, 0.625, cond(var(18) = 830, 0.375, 0.375)) * fvar(20)
getpower = 0, 0
givepower = 0, 0
fall = 1
air.fall = 1
fall.recover = 0
fall.recovertime = 1
p1facing = 1
p2facing = cond(var(18) = 850, -1, 1)
p1stateno = 801
numhits = 0

[state 800, Idle]
type = statetypeset
trigger1 = anim = 800 || statetype != A
trigger1 = animelemtime(3) >= 0
movetype = I
persistent = 0

[state 800, Control]
type = ctrlset
trigger1 = anim = 800 || statetype != A
trigger1 = animelemtime(10) >= 0
value = 1
persistent = 0

[state 800, End State]
type = changestate
trigger1 = anim = 800 || statetype != A
trigger1 = !animtime
value = 0
ctrl = 1

;========================< Aerial Throw >========================

[state 800, Reset Velocities]
type = null
trigger1 = !var(48)
trigger1 = fvar(12) := 0.0 * fvar(16) || fvar(13) := const(movement.yaccel) * fvar(17)

[state 800, Level]
type = null
triggerall = !time
triggerall = statetype = A
trigger1 = var(17) := 4
trigger1 = fvar(30) := 0 || fvar(31) := 0

[state 800, Direction]
type = null
triggerall = !time
triggerall = statetype = A
trigger1 = cond(ailevel, 0 * (var(18) := var(18) + 820 * !var(18)), 1)
trigger1 = cond(command = "holdfwd", 0 * (var(18) := 830), 1)
trigger1 = cond(command = "holdback", 0 * (var(18) := 840), 1)
trigger1 = var(18) := 820

[state 800, Set Position]
type = posset
trigger1 = !time
trigger1 = statetype = A
y = 0

[state 800, Change Animation]
type = changeanim
trigger1 = !time
trigger1 = statetype = A
value = 801

[state 800, Sound]
type = playsnd
trigger1 = anim = 801 || statetype = A
trigger1 = !animelemtime(5)
value = 1, 0
volumescale = 100
channel = 1

[state 800, Increment Velocity]
type = veladd
trigger1 = anim = 801 || statetype = A
x = fvar(12)
y = fvar(13)

[state 800, Set Velocity]
type = velset
trigger1 = anim = 801 || statetype = A
trigger1 = abs(vel x) < 0
x = 0.0

[state 800, Juggle Points 1]
type = null
trigger1 = anim = 801 || statetype = A
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
trigger1 = var(10) := 0 || var(17) := 4 || var(49) := 800
[state 800, Throw 1]
type = hitdef
triggerall = var(49) != var(50) ; && !var(9) && !var(13)
triggerall = anim = 801 || statetype = A
trigger1 = p2statetype = A && p2movetype != H
trigger1 = p2dist x > 0 && p2stateno != [150, 155]
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
trigger1 = cond(numenemy, var(0) := 1 + (!enemynear,ctrl || enemynear,movetype = A), 1)
ID = var(18) + 0 * (var(49) := 800)
attr = A, NT
damage = 0
; fall.damage = ceil(cond(7 * fvar(0) < 7, 7, 7 * fvar(0))) * (var(18) = 840)
fall.envshake.phase = 18 ; stun damage
fall.envshake.freq = var(17) ; hit/attack level
fall.envshake.ampl = 0 ; hit y position
guardflag =
hitflag = A
priority = 1, miss
pausetime = 0, 0
guard.pausetime = 0, 0
hitsound = -1 + (0 * (var(3) := 800))
guardsound = -1 + (0 * (var(4) := -1))
sparkno = -1 + (0 * (var(5) := -1))
guard.sparkno = -1 + 0 * (var(6) := -1)
sparkxy = 0 * (var(7) := 120), 0 * (var(8) := -8)
animtype = hard
ground.type = high
air.animtype = hard
air.type = low
ground.slidetime = 0
ground.hittime = 0
guard.slidetime = 0
guard.hittime = 0
air.hittime = cond((var(54) = [1, 2]), 0, 0)
ground.velocity = 0.0 * fvar(14), 0.0 * fvar(15)
guard.velocity = 0.0 * fvar(18)
air.velocity = 0.0 * fvar(14), 0.0 * fvar(15)
airguard.velocity = 0.0 * fvar(14), 0.0 * fvar(15)
ground.cornerpush.veloff = 0.0 * (fvar(3) := 0.0)
guard.cornerpush.veloff = 0.0
yaccel = 0.65625 * fvar(20)
getpower = 0, 0
givepower = 0, 0
fall = 1
air.fall = 1
fall.recover = 0
fall.recovertime = 1
p1facing = 1
p2facing = 1
p1stateno = 803
numhits = 0

[state 800, Idle]
type = statetypeset
trigger1 = anim = 801 || statetype = A
trigger1 = animelemtime(5) >= 0
movetype = I
persistent = 0

[state 800, Control]
type = ctrlset
trigger1 = anim = 801 || statetype = A
trigger1 = time >= 1200
value = 1

[state 800, End State]
type = changestate
trigger1 = anim = 801 || statetype = A
trigger1 = pos y + vel y > 0
value = 52

;=========================================================================
; Reversal Window
;=========================================================================
[Statedef 801]
type = S
movetype = A
physics = S
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 1

[state 801, Change Animation]
type = changeanim
trigger1 = !time
value = var(18)

[state 801, Width]
type = width
trigger1 = !time
edge = 107, 0

[state 801, Layer]
type = helper
trigger1 = !time
name = "Layer"
ID = cond(var(18) = 820, 821, 831)
stateno = 8000
postype = p1
ownpal = 0
keyctrl = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 801, Attack Distance]
type = attackdist
trigger1 = !time
value = 0

[state 801, Target State]
type = targetstate
trigger1 = cond(numtarget, !time, 0)
value = 805

[state 801, Target Facing]
type = targetfacing
trigger1 = cond(numtarget, !time, 0)
trigger1 = var(18) = 820
value = -1
[state 801, Target Bind]
type = targetbind
trigger1 = numtarget
trigger1 = var(18) = 820
pos = 107 * const(size.xscale), 0 * const(size.yscale)

[state 801, Target Facing]
type = targetfacing
trigger1 = cond(numtarget, !time, 0)
trigger1 = var(18) = 830
value = -1
[state 801, Target Bind]
type = targetbind
trigger1 = numtarget
trigger1 = var(18) = 830
pos = 100 * const(size.xscale), 0 * const(size.yscale)

[state 801, Target Facing]
type = targetfacing
trigger1 = cond(numtarget, !time, 0)
trigger1 = var(18) = 840
value = -1
[state 801, Target Bind]
type = targetbind
trigger1 = numtarget
trigger1 = var(18) = 840
pos = 100 * const(size.xscale), 0 * const(size.yscale)

[state 801, End State]
type = changestate
triggerall = numtarget && var(0) = 1
trigger1 = target,command = "a" && target,command = "x"
trigger2 = target,command = "holdfwd" || target,command = "holdback"
trigger2 = target,command = "b" || target,command = "c" || target,command = "y" || target,command = "z"
value = 802

[state 801, End State]
type = changestate
trigger1 = !animelemtime(2) || time >= 4
value = var(18)

;=========================================================================
; Reversed
;=========================================================================
[Statedef 802]
type = S
movetype = H
physics = N
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 0

[state 802, Change Animation]
type = changeanim
trigger1 = !time
value = 802

[state 802, Vulnerability]
type = nothitby
trigger1 = time <= 1
value = SCA
time = 1

[state 802, Sound]
type = playsnd
trigger1 = !time
value = 910, 0
volumescale = 100
channel = 3

[state 802, Shake]
type = envshake
trigger1 = !time
time = 0
ampl = 0

[state 802, Set Velocity]
type = velset
trigger1 = time = 18
x = -4.5 * fvar(14)

[state 802, Increment Velocity]
type = veladd
trigger1 = time >= 18
trigger1 = vel x < 0
x = 0.25 * fvar(16)

[state 802, Set Velocity]
type = velset
trigger1 = time >= 18 && vel x > 0
trigger2 = time >= 35
x = 0.0 * fvar(14)

[state 802, Add Hit]
type = hitadd
trigger1 = time = 18
trigger1 = var(2) := -5 || fvar(3) := 34
value = 0

[state 802, Effect]
type = explod
trigger1 = !time
ID = 6060
anim = 6060
postype = p1
pos = ceil(56 * const(size.xscale)), ceil(-64 * const(size.yscale))
bindtime = 1
facing = -1
ownpal = 1
scale = 1.0, 1.0
sprpriority = 5
supermovetime = -1
pausemovetime = -1

[state 802, Target Facing]
type = targetfacing
trigger1 = !time
value = -1

[state 802, Target Bind]
type = targetbind
trigger1 = !time
pos = 80 * const(size.xscale), 0 * const(size.yscale)

[state 802, Target Power]
type = targetpoweradd
trigger1 = !time
value = cond(70 - 10 * var(51) < 10, 10, 70 - 10 * var(51))

[state 802, Target State]
type = targetstate
trigger1 = !time
value = 810

[state 802, Idle]
type = statetypeset
trigger1 = time >= 35
movetype = I

[state 802, Control]
type = ctrlset
trigger1 = time >= 35
value = 1

[state 802, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; Aerial Reversal Window
;=========================================================================
[Statedef 803]
type = A
movetype = A
physics = N
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 1

[state 803, Change Animation]
type = changeanim
trigger1 = !time
value = var(18)

[state 803, Attack Distance]
type = attackdist
trigger1 = !time
value = 0

[state 803, Target State]
type = targetstate
trigger1 = cond(numtarget, !time, 0)
value = 806

[state 803, Target Facing]
type = targetfacing
trigger1 = cond(numtarget, !time, 0)
trigger1 = var(18) = -1
value = -1
[state 803, Target Bind]
type = bindtotarget
trigger1 = cond(numtarget, !time, 0)
trigger1 = var(18) = -1
pos = 80 * const(size.xscale), 0 * const(size.yscale), foot
[state 803, Target Bind]
type = targetbind
trigger1 = numtarget
trigger1 = var(18) = -1
pos = 80 * const(size.xscale), 0 * const(size.yscale)

[state 803, End State]
type = changestate
triggerall = numtarget && var(0) = 1
trigger1 = target,command = "a" && target,command = "x"
trigger2 = target,command = "holdfwd" || target,command = "holdback"
trigger2 = target,command = "b" || target,command = "c" || target,command = "y" || target,command = "z"
value = 804

[state 803, End State]
type = changestate
trigger1 = !animelemtime(2) || time >= 5
value = var(18)

;=========================================================================
; Aerial Reversed
;=========================================================================
[Statedef 804]
type = A
movetype = H
physics = N
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 0

[state 804, Change Animation]
type = changeanim
trigger1 = !time
value = 804

[state 804, Vulnerability]
type = nothitby
trigger1 = time <= 1
value = SCA
time = 1

[state 804, Sound]
type = playsnd
trigger1 = !time
value = 910, 0
volumescale = 100
channel = 3

[state 804, Shake]
type = envshake
trigger1 = !time
time = 0
ampl = 0

[state 804, Set Velocity]
type = velset
trigger1 = !animelemtime(4)
x = -2.0 * fvar(14)
y = -3.0 * fvar(15)

[state 804, Increment Velocity]
type = veladd
trigger1 = animelemtime(4) > 0
x = 0.0 * fvar(16)
y = 0.4375 * fvar(17)

[state 804, Add Hit]
type = hitadd
trigger1 = !animelemtime(4)
trigger1 = var(2) := -5 || fvar(3) := 17
value = 0

[state 804, Effect]
type = explod
trigger1 = !time
ID = 6060
anim = 6060
postype = p1
pos = ceil(56 * const(size.xscale)), ceil(-64 * const(size.yscale))
bindtime = 1
facing = -1
ownpal = 1
scale = 1.0, 1.0
sprpriority = 5
supermovetime = -1
pausemovetime = -1

[state 804, Target Facing]
type = targetfacing
trigger1 = !time
value = -1

[state 804, Target Bind]
type = targetbind
trigger1 = !time
pos = 80 * const(size.xscale), 0 * const(size.yscale)

[state 804, Target Power]
type = targetpoweradd
trigger1 = !time
value = cond(70 - 10 * var(51) < 10, 10, 70 - 10 * var(51))

[state 804, Target State]
type = targetstate
trigger1 = !time
value = 813

[state 804, Idle]
type = statetypeset
trigger1 = animelemtime(4) > 0
trigger1 = pos y + vel y > 0
movetype = I

[state 804, Control]
type = ctrlset
trigger1 = animelemtime(4) > 0
trigger1 = pos y + vel y > 0
value = 1

[state 804, End State]
type = changestate
trigger1 = animelemtime(4) > 0
trigger1 = pos y + vel y > 0
value = 52

;=========================================================================
; Target Reversal Window
;=========================================================================
[Statedef 805]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 2

[state 805, Set Position]
type = posset
trigger1 = !time
y = 0

[state 805, Change Animation]
type = changeanim2
trigger1 = !time
value = gethitvar(chainid) + 5

[state 805, Change Animation]
type = changeanim
triggerall = !time
triggerall = selfanimexist(-2147483647) && selfanimexist(2147483647)
triggerall = selfanimexist(cond(gethitvar(chainid) = 820, 10650, 10651))
trigger1 = authorname = "Rajaaboy"
; trigger2 = authorname = "YourName"
value = cond(gethitvar(chainid) = 820, 10650, 10651)

[state 805, Bound]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1, 1

[state 805, Own State]
type = selfstate
trigger1 = time > 128
trigger1 = !gethitvar(isbound)
value = 5050

;=========================================================================
; Aerial Target Reversal Window
;=========================================================================
[Statedef 806]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0, 0
sprpriority = -1

[state 806, Set Position]
type = posset
trigger1 = !time
y = 0

[state 806, Change Animation]
type = changeanim2
trigger1 = !time
value = gethitvar(chainid) + 5

[state 806, Change Animation]
type = changeanim
triggerall = !time
triggerall = selfanimexist(-2147483647) && selfanimexist(2147483647)
triggerall = selfanimexist(-1)
trigger1 = authorname = "Rajaaboy"
; trigger2 = authorname = "YourName"
value = -1

[state 806, Bound]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1, 1

[state 806, Own State]
type = selfstate
trigger1 = time > 128
trigger1 = !gethitvar(isbound)
value = 5050

;=========================================================================
; Target Reversed
;=========================================================================
[Statedef 810]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0, 0
sprpriority = -1

[state 810, Own State: RajaaBoy]
type = selfstate
triggerall = !time
triggerall = selfanimexist(2147483647) && selfanimexist(-2147483647)
trigger1 = authorname = "RajaaBoy"
; trigger2 = authorname = "YourName"
value = 811

[state 810, Own State: GM]
type = selfstate
triggerall = !time && authorname = "GM"
trigger1 = name = "Ryu" || name = "Ken" || name = "Gouki" || name = "Hugo"
trigger2 = name = "Sean" || name = "Alex" || name = "Gill" || name = "Elena"
trigger3 = name = "Ibuki" || name = "Makoto" || name = "Remy" || name = "Chun-Li"
trigger4 = name = "Twelve" || name = "Q" || name = "Urien" || name = "Necro"
trigger5 = name = "Yun" || name = "Yang" || name = "Dudley" || name = "Oro"
value = 850

[state 810, Change Animation]
type = changeanim
triggerall = time >= 20 && selfanimexist(5940)
trigger1 = authorname = "HÅh" || authorname = "Warusaki3" || authorname = "M.M.R."
trigger2 = authorname = "Mouser" || authorname = "Nyankoro" || authorname = "ryokucha"
trigger3 = authorname = "Bad Darkness" || authorname = "Third" || authorname = "adamskie"
trigger4 = authorname = "Phantom.of.the.Server" || authorname = "Jmorphman" || authorname = "Jesuszilla"
value = 5940
persistent = 0

[state 810, Change Animation]
type = changeanim
trigger1 = anim != 5940
value = 130

[state 810, Vulnerability]
type = nothitby
trigger1 = time < 19
time = 1
value = SCA

[state 810, Set Velocity]
type = velset
trigger1 = time = 19
x = -9.0

[state 810, Increment Velocity]
type = veladd
trigger1 = time >= 19 && vel x < 0
x = 0.5

[state 810, Own State]
type = selfstate
trigger1 = time >= 37
value = 0
ctrl = 1

;=========================================================================
; Target Reversed (SF3)
;=========================================================================
[Statedef 811]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 1

[state 811, Set Position]
type = posset
trigger1 = !time
y = 0

[state 811, Change Animation]
type = changeanim
trigger1 = !time
value = 811

[state 811, Vulnerability]
type = null ; nothitby
trigger1 = time <= 20
value = SCA

[state 811, Set State Type]
type = statetypeset
trigger1 = animelemtime(4) >= 0
statetype = A
persistent = 0

[state 811, Increment Position]
type = posadd
trigger1 = !animelemtime(3)
x = -16.0

[state 811, Set Velocity]
type = velset
Trigger1 = !animelemtime(4)
x = -4.0 * fvar(14)
y = -2.0 * fvar(15)

[state 811, Increment Velocity]
type = veladd
trigger1 = animelemtime(4) > 0
y = 0.3125 * fvar(17)

[state 811, Dust]
type = helper
trigger1 = animelemtime(4) >= 0
name = "Dust"
ID = 6000
stateno = 6000
postype = P1
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0
persistent = 0

[state 811, End State]
type = changestate
trigger1 = animelemtime(4) > 0
trigger1 = pos y + vel y > 0
value = 812

;=========================================================================
; Target Reversed Land
;=========================================================================
[Statedef 812]
type = S
movetype = I
physics = S
ctrl = 0
velset = 0, 0
sprpriority = 0

[state 812, Set Position]
type = posset
trigger1 = !time
y = 0

[state 812, Change Animation]
type = changeanim
trigger1 = !time
value = 812

[state 812, Sound]
type = playsnd
trigger1 = !time 
value = 40, 0
volumescale = 100

[state 812, Increment Position]
type = posadd
trigger1 = !animelemtime(1)
x = -4.0

[state 812, Control]
type = ctrlset
trigger1 = !time
value = 1

[state 812, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; Aerial Target Reversed
;=========================================================================
[Statedef 813]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0, 0
sprpriority = -1

[state 813, Own State: RajaaBoy]
type = selfstate
triggerall = !time
triggerall = selfanimexist(2147483647) && selfanimexist(-2147483647)
trigger1 = authorname = "RajaaBoy"
; trigger2 = authorname = "YourName"
value = 814

[state 813, Change Animation]
type = changeanim
triggerall = time >= 20 && selfanimexist(5930)
trigger1 = authorname = "HÅh" || authorname = "Warusaki3" || authorname = "M.M.R."
trigger2 = authorname = "Mouser" || authorname = "Nyankoro" || authorname = "ryokucha"
trigger3 = authorname = "Bad Darkness" || authorname = "Third" || authorname = "adamskie"
trigger4 = authorname = "Phantom.of.the.Server" || authorname = "Jmorphman" || authorname = "Jesuszilla"
value = 5930
persistent = 0

[state 813, Change Animation]
type = changeanim
trigger1 = anim != 5930
value = 132

[state 813, Vulnerability]
type = null ; nothitby
trigger1 = time < 18
time = 1
value = SCA

[state 813, Set Velocity]
type = velset
trigger1 = !animelemtime(3)
x = -4.0 * fvar(14)
y = -2.0 * fvar(15)

[state 813, Increment Velocity]
type = veladd
trigger1 = animelemtime(3) > 0
y = 0.4375 * fvar(17)

[state 813, Own State]
type = selfstate
trigger1 = animelemtime(3) > 0
trigger1 = pos y + vel y > 0
value = 52

;=========================================================================
; Aerial Target Reversed (SF3)
;=========================================================================
[Statedef 814]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 1

[state 814, Set Position]
type = posset
trigger1 = !time
y = 0

[state 814, Change Animation]
type = changeanim
trigger1 = !time
value = 814

[state 814, Set Velocity]
type = velset
trigger1 = time = 19
x = -4.0 * fvar(14)
y = -2.0 * fvar(15)

[state 814, Increment Velocity]
type = veladd
trigger1 = time > 19
x = 0.0 * fvar(16)
y = 0.4375 * fvar(17)

[state 814, End State]
type = changestate
trigger1 = time > 19
trigger1 = pos y + vel y > 0
value = 52

;=========================================================================
; Neutral Throw
;=========================================================================
[Statedef 820]
type = S
movetype = A
physics = S
ctrl = 0
velset = 0, 0
sprpriority = 1

[state 820, Loop Time]
type = varset
trigger1 = !time
var(0) = 144
[state 820, Decrease Time]
type = varadd
trigger1 = animelemtime(8) >= 0 && animelemtime(14) < 0
trigger1 = var(0) > 0
var(0) = cond(var(0) = 144 && !animelemtime(8), 0, -1)
[state 820, Decrease Time]
type = varadd
triggerall = animelemtime(8) >= 0 && animelemtime(14) < 0
triggerall = var(0) > 0
triggerall = numtarget(var(18))
trigger1 = target(var(18)),command = "a" || target(var(18)),command = "b" || target(var(18)),command = "c"
trigger2 = target(var(18)),command = "x" || target(var(18)),command = "y" || target(var(18)),command = "z"
trigger3 = target(var(18)),command = "up" || target(var(18)),command = "down" || target(var(18)),command = "fwd" || target(var(18)),command = "back"
var(0) = -1

[state 820, Loop Animation]
type = changeanim
trigger1 = numtarget(var(18))
trigger1 = target(var(18)),alive
trigger1 = var(0) && var(1) < 5 && !animelemtime(14)
trigger1 = var(1) := var(1) + 1
value = var(18)
elem = 8

[state 820, Voice]
type = playsnd
trigger1 = animelemtime(3)=0
value = s820,0+random%3
volumescale = 100
channel = 0

[state 820, Attack Distance]
type = attackdist
trigger1 = !time	
value = 0

[state 820, Target State]
type = targetstate
trigger1 = cond(numtarget, !time, 0)
value = 825

[state 820, Target State]
type = targetstate
trigger1 = !animelemtime(8)
value = 826

[state 820, Target Facing]
type = targetfacing
trigger1 = cond(numtarget, !time, 0)
value = -1

[state 820, Target Facing]
type = targetfacing
trigger1 = !animelemtime(6)
value = 1

[state 820, Target Bind]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
pos = 88 * const(size.xscale), 0 * const(size.yscale)

[state 820, Target Bind]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
pos = 41 * const(size.xscale), 0 * const(size.yscale)

[state 820, Target Bind]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
pos = 34 * const(size.xscale), -62 * const(size.yscale)

[state 820, Target Bind]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(5) >= 0 && animelemtime(6) < 0
pos = 30 * const(size.xscale), -82 * const(size.yscale)

[state 820, Target Bind]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(6) >= 0 && animelemtime(7) < 0
pos = 50 * const(size.xscale), -95 * const(size.yscale)

[state 820, Target Bind]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(7) >= 0 && animelemtime(8) < 0
pos = 54 * const(size.xscale), -128 * const(size.yscale)

[state 820, Target Bind]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(8) >= 0 && animelemtime(9) < 0
pos = 48 * const(size.xscale), -136 * const(size.yscale)

[state 820, Target Bind]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(9) >= 0 && animelemtime(10) < 0
pos = 49 * const(size.xscale), -135 * const(size.yscale)
; pos = 75 * const(size.xscale), -151 * const(size.yscale)

[state 820, Target Bind]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(10) >= 0 && animelemtime(11) < 0
pos = 52 * const(size.xscale), -132 * const(size.yscale)
; pos = 78 * const(size.xscale), -148 * const(size.yscale)

[state 820, Target Bind]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(11) >= 0 && animelemtime(12) < 0
pos = 56 * const(size.xscale), -136 * const(size.yscale)

[state 820, Target Bind]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(12) >= 0 && animelemtime(13) < 0
pos = 56 * const(size.xscale), -136 * const(size.yscale)

[state 820, Target Bind]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(13) >= 0 && animelemtime(14) < 0
pos = 56 * const(size.xscale), -136 * const(size.yscale)

[state 820, Target Bind]
type = targetbind
trigger1 = numtarget
trigger1 = !animelemtime(14)
pos = 69 * const(size.xscale), -136 * const(size.yscale)

[state 820, Target Damage]
type = targetlifeadd
trigger1 = !animelemtime(10)
value = ceil(cond(19 * fvar(0) < 7, -18, -32 * fvar(0)))

[state 820, Accelerate Target Animation 1]
type = targetstate
trigger1 = animelemtime(8) > 0 && animelemtime(9) < 0
trigger1 = fvar(27) >= 43 && fvar(29) > 0
value = 827

[state 820, Accelerate Animation 1]
type = changeanim
trigger1 = animelemtime(8) > 0 && animelemtime(9) < 0
trigger1 = fvar(27) >= 43 && fvar(29) > 0
value = var(18)
elem = 9

[state 820, Accelerate Target Animation 2]
type = targetstate
trigger1 = !animelemtime(11)
trigger1 = fvar(27) >= 43 && fvar(29) > 0
value = 828

[state 820, Accelerate Animation 2]
type = changeanim
trigger1 = !animelemtime(11)
trigger1 = fvar(27) >= 43 && fvar(29) > 0
value = var(18)
elem = 12

[state 820, Target State]
type = targetstate
trigger1 = !animelemtime(14)
value = 829

[state 820, Add Power]
type = poweradd
trigger1 = !animelemtime(10)
value = cond(20 - 10 * var(51) < 10, 10, 20 - 10 * var(51))

[state 820, Add Hit]
type = hitadd
trigger1 = !animelemtime(10)
trigger1 = var(2) := -2 || fvar(3) := 0 || 1
trigger1 = var(3) := 350 || var(4) := 0 || 1
trigger1 = var(5) := 11 || var(6) := 0 || 1
trigger1 = var(7) := 48 || var(8) := -136 || 1
value = 1

[state 820, Shake]
type = envshake
trigger1 = !animelemtime(10)
time = 4
ampl = 1
freq = 128

[state 820, Idle]
type = statetypeset
trigger1 = animelemtime(16) >= 0
movetype = I
persistent = 0

[state 820, Control]
type = ctrlset
trigger1 = !animtime
value = 1
persistent = 0

[state 820, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; Target (820) - 1
;=========================================================================
[Statedef 825]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0, 0

[state 825, Set Hit Fall]
type = hitfallset
trigger1 = !time
value = 1

[state 825, Bound]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1, 0

[state 825, Own State]
type = selfstate
trigger1 = time > 128
trigger1 = !gethitvar(isbound)
value = 5050

;=========================================================================
; Target (820) - 2
;=========================================================================
[Statedef 826]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 2

[state 826, Set Hit Fall]
type = hitfallset
trigger1 = !time
value = 1

[state 826, Change Animation]
type = changeanim2
trigger1 = !time
value = 825
elem = 8

[state 826, Change Animation]
type = changeanim
triggerall = !time
triggerall = selfanimexist(-2147483647) && selfanimexist(2147483647)
triggerall = selfanimexist(10650)
trigger1 = authorname = "Rajaaboy"
; trigger2 = authorname = "YourName"
value = 10650
elem = 8

[state 826, Bound]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1, 0

[state 826, Own State]
type = selfstate
trigger1 = time > 128
trigger1 = !gethitvar(isbound)
value = 5050

;=========================================================================
; Target (820) - 3
;=========================================================================
[Statedef 827]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 2

[state 827, Set Hit Fall]
type = hitfallset
trigger1 = !time
value = 1

[state 827, Change Animation]
type = changeanim2
trigger1 = !time
value = 825
elem = 9

[state 827, Change Animation]
type = changeanim
triggerall = !time
triggerall = selfanimexist(-2147483647) && selfanimexist(2147483647)
triggerall = selfanimexist(10650)
trigger1 = authorname = "Rajaaboy"
; trigger2 = authorname = "YourName"
value = 10650
elem = 9

[state 827, Bound]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1, 0

[state 827, Own State]
type = selfstate
trigger1 = time > 128
trigger1 = !gethitvar(isbound)
value = 5050

;=========================================================================
; Target (820) - 4
;=========================================================================
[Statedef 828]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 2

[state 828, Set Hit Fall]
type = hitfallset
trigger1 = !time
value = 1

[state 828, Change Animation]
type = changeanim2
trigger1 = !time
value = 825
elem = 12

[state 828, Change Animation]
type = changeanim
triggerall = !time
triggerall = selfanimexist(-2147483647) && selfanimexist(2147483647)
triggerall = selfanimexist(10650)
trigger1 = authorname = "Rajaaboy"
; trigger2 = authorname = "YourName"
value = 10650
elem = 12

[state 828, Bound]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1, 0

[state 828, Own State]
type = selfstate
trigger1 = time > 128
trigger1 = !gethitvar(isbound)
value = 5050

;=========================================================================
; Target (820) - 5
;=========================================================================
[Statedef 829]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0, 0
sprpriority = -1

[state 829, Set Hit Fall]
type = hitfallset
trigger1 = !time
value = 1

[state 829, Bound]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1, 0

[state 829, Set Velocity]
type = velset
trigger1 = !time
y = 1.0

[state 829, Set Velocity]
type = velset
triggerall = !time
triggerall = selfanimexist(2147483647) && selfanimexist(-2147483647)
trigger1 = authorname = "RajaaBoy"
; trigger2 = authorname = "YourName"
y = 1.0 * fvar(15)

[state 829, Increment Velocity]
type = veladd
trigger1 = time > 0
y = gethitvar(yaccel)

[state 829, Increment Position]
type = posadd
trigger1 = !animelemtime(14)
y = -const(size.mid.pos.y)

[state 829, Set Position]
type = posset
triggerall = !animelemtime(14)
triggerall = selfanimexist(2147483647) && selfanimexist(-2147483647)
triggerall = name = "Necro"
trigger1 = authorname = "RajaaBoy"
; trigger2 = authorname = "YourName" 
y = -70.0
[state 829, Set Position]
type = posset
triggerall = !animelemtime(14)
triggerall = selfanimexist(2147483647) && selfanimexist(-2147483647)
triggerall = name = "Urien"
trigger1 = authorname = "RajaaBoy"
; trigger2 = authorname = "YourName" 
y = -34.0

[state 829, Own State]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y + vel y > const(movement.air.gethit.groundlevel)
value = 5100

[state 829, Own State]
type = selfstate
trigger1 = time > 128
trigger1 = !gethitvar(isbound)
value = 5050

;=========================================================================
; Forward Throw
;=========================================================================
[Statedef 830]
type = S
movetype = A
physics = S
ctrl = 0
velset = 0, 0
sprpriority = 1

[state 830, Voice]
type = playsnd
trigger1 = !animelemtime(5)
value= 1100,1
volumescale = 100
channel = 0 

[state 830, Voice]
type = playsnd
trigger1 = !animelemtime(16)
value = 181,4
volumescale = 100

[state 830, Sound]
type = playsnd
trigger1 = !animelemtime(16)
value = 5100, 2
volumescale = 100
channel = 1

[state 830, Increment Position]
type = posadd
trigger1 = !animelemtime(19)
y = -3.0
[state 830, Increment Position]
type = posadd
trigger1 = animelemtime(19) = 1 || animelemtime(19) = 2
y = -1.0

[state 830, Hard Slam Effect]
type = helper
trigger1 = !animelemtime(16)
name = "Hard Slam Effect"
ID = 6066
stateno = 6065
postype = P1
pos = 36, 0
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0

[state 830, Pressure Wave]
type = helper
trigger1 = !animelemtime(16)
name = "Pressure Wave"
ID = 6025
stateno = 6025
postype = P1
pos = 36, 0
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0

[state 830, Gravel]
type = helper
trigger1 = !animelemtime(16)
name = "Gravel"
ID = 6035
stateno = 6035
postype = P1
pos = 36, 0
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0

[state 830, Attack Distance]
type = attackdist
trigger1 = !time
value = 0

[state 830, Target State]
type = targetstate
trigger1 = cond(numtarget, !time, 0)
value = 835

[state 830, Target Facing]
type = targetfacing
trigger1 = cond(numtarget, !time, 0)
value = -1

[state 830, Target Bind]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
pos = 76 * const(size.xscale), 0 * const(size.yscale)

[state 830, Target Bind]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
pos = 61 * const(size.xscale), 0 * const(size.yscale)
; pos = 44 * const(size.xscale), -54 * const(size.yscale)

[state 830, Target Bind]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
pos = 34 * const(size.xscale), -62 * const(size.yscale)

[state 830, Target Bind]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(5) >= 0 && animelemtime(6) < 0
pos = 30 * const(size.xscale), -82 * const(size.yscale)

[state 830, Target Bind]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(6) >= 0 && animelemtime(7) < 0
pos = 16 * const(size.xscale), -120 * const(size.yscale)

[state 830, Target Bind]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(7) >= 0 && animelemtime(8) < 0
pos = 0 * const(size.xscale), -136 * const(size.yscale)

[state 830, Target Bind]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(8) >= 0 && animelemtime(9) < 0
pos = 0 * const(size.xscale), -132 * const(size.yscale)

[state 830, Target Bind]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(9) >= 0 && animelemtime(10) < 0
pos = 0 * const(size.xscale), -128 * const(size.yscale)

[state 830, Target Bind]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(10) >= 0 && animelemtime(11) < 0
pos = 0 * const(size.xscale), -130 * const(size.yscale)

[state 830, Target Bind]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(11) >= 0 && animelemtime(12) < 0
pos = 0 * const(size.xscale), -136 * const(size.yscale)

[state 830, Target Bind]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(12) >= 0 && animelemtime(13) < 0
pos = 0 * const(size.xscale), -136 * const(size.yscale)

[state 830, Target Bind]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(13) >= 0 && animelemtime(14) < 0
pos = 0 * const(size.xscale), -148 * const(size.yscale)

[state 830, Target Bind]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(14) >= 0 && animelemtime(15) < 0
pos = 0 * const(size.xscale), -148 * const(size.yscale)

[state 830, Target Bind]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(15) >= 0 && animelemtime(16) < 0
pos = 0 * const(size.xscale), -130 * const(size.yscale)

[state 830, Target Bind]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(16) >= 0 && animelemtime(17) < 0
pos = 36 * const(size.xscale), -30 * const(size.yscale)

[state 830, Target Bind]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(17) >= 0 && animelemtime(18) < 0
pos = 34 * const(size.xscale), -38 * const(size.yscale)

[state 830, Target Bind]
type = targetbind
trigger1 = numtarget
trigger1 = !animelemtime(18)
pos = 30 * const(size.xscale), -40 * const(size.yscale)

[state 830, Target Damage]
type = targetlifeadd
trigger1 = !animelemtime(16)
value = ceil(cond(119 * fvar(0) < 7, -65, -89 * fvar(0)))

[state 830, Target Power]
type = targetpoweradd
trigger1 = !animelemtime(16)
value = 20

[state 830, Target State]
type = targetstate
trigger1 = !animelemtime(18)
value = 836

[state 830, Add Power]
type = poweradd
trigger1 = !animelemtime(16)
value = cond(80 - 10 * var(51) < 10, 10, 80 - 10 * var(51))

[state 830, Add Hit]
type = hitadd
trigger1 = !animelemtime(16)
trigger1 = var(2) := -4 || fvar(3) := 0 || 1
trigger1 = var(3) := -1 || var(4) := -1 || 1
trigger1 = var(5) := -1 || var(6) := -1 || 1
trigger1 = var(7) := 0 || var(8) := 0 || 1
value = 1

[state 830, Shake]
type = envshake
trigger1 = !animelemtime(16)
time = 16
ampl = 4
freq = 128

[state 830, Idle]
type = statetypeset
trigger1 = animelemtime(19) >= 0
movetype = I
persistent = 0

[state 830, Control]
type = ctrlset
trigger1 = animelemtime(26) >= 1
value = 1
persistent = 0

[state 830, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; Target (830) - 1
;=========================================================================
[Statedef 835]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0, 0

[state 835, Set Hit Fall]
type = hitfallset
trigger1 = !time
value = 1

[state 835, Bound]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1, 0

[state 835, Own State]
type = selfstate
trigger1 = time > 128
trigger1 = !gethitvar(isbound)
value = 5050

;=========================================================================
; Target (830) - 2
;=========================================================================
[Statedef 836]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0, 0
sprpriority = -1

[state 836, Set Hit Fall]
type = hitfallset
trigger1 = !time
value = 1

[state 836, Set Velocity]
type = velset
trigger1 = !time
x = -1.0
y = -1.5

[state 836, Set Velocity]
type = velset
triggerall = !time
triggerall = selfanimexist(2147483647) && selfanimexist(-2147483647)
trigger1 = authorname = "RajaaBoy"
; trigger2 = authorname = "YourName" 
x = -1.0 * fvar(14)
y = -1.5 * fvar(15)

[state 836, Increment Velocity]
type = veladd
trigger1 = time > 0
y = gethitvar(yaccel)

[state 836, Increment Position]
type = posadd
trigger1 = !time
y = -const(size.mid.pos.y)

[state 836, Set Position]
type = posset
triggerall = !time
triggerall = selfanimexist(2147483647) && selfanimexist(-2147483647)
triggerall = name = "Necro"
trigger1 = authorname = "RajaaBoy"
; trigger2 = authorname = "YourName" 
y = -19.0
[state 836, Set Position]
type = posset
triggerall = !time
triggerall = selfanimexist(2147483647) && selfanimexist(-2147483647)
triggerall = name = "Urien"
trigger1 = authorname = "RajaaBoy"
; trigger2 = authorname = "YourName" 
y = -3.0

[state 836, Set Velocity]
type = velset
triggerall = vel y > 0
triggerall = pos y + vel y > const(movement.air.gethit.groundlevel)
trigger1 = !selfanimexist(2147483647) || !selfanimexist(-2147483647)
x = -1.25

[state 836, Set Velocity]
type = velset
triggerall = vel y > 0
triggerall = pos y + vel y > const(movement.air.gethit.groundlevel)
triggerall = selfanimexist(2147483647) && selfanimexist(-2147483647)
trigger1 = authorname != "RajaaBoy"
; trigger1 = authorname != "YourName"
x = -1.25

[state 836, Own State]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y + vel y > const(movement.air.gethit.groundlevel)
value = 5100

[state 836, Own State]
type = selfstate
trigger1 = time > 128
trigger1 = !gethitvar(isbound)
value = 5050

;=========================================================================
; Backward Throw
;=========================================================================
[Statedef 840]
type = S
movetype = A
physics = S
ctrl = 0
velset = 0, 0
sprpriority = 1

[state 840, Turn]
type = turn
trigger1 = !animelemtime(4)

[state 840, Width]
type = width
trigger1 = !animelemtime(4)
edge = 64, 0
[state 830, Voice]
type = playsnd
trigger1 = !animelemtime(16)
value = 181,4
volumescale = 100



[state 830, Voice]
type = playsnd
trigger1 = !animelemtime(5)
value= 1100,1
volumescale = 100
channel = 0 

[state 840, Sound]
type = playsnd
trigger1 = !animelemtime(16)
value = 5100, 2
volumescale = 100
channel = 1

[state 840, Increment Position]
type = posadd
trigger1 = !animelemtime(19)
y = -3.0
[state 840, Increment Position]
type = posadd
trigger1 = animelemtime(19) = 1 || animelemtime(19) = 2
y = -1.0

[state 840, Hard Slam Effect]
type = helper
trigger1 = !animelemtime(16)
name = "Hard Slam Effect"
ID = 6066
stateno = 6065
postype = P1
pos = 36, 0
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0

[state 840, Pressure Wave]
type = helper
trigger1 = !animelemtime(16)
name = "Pressure Wave"
ID = 6025
stateno = 6025
postype = P1
pos = 36, 0
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0

[state 840, Gravel]
type = helper
trigger1 = !animelemtime(16)
name = "Gravel"
ID = 6035
stateno = 6035
postype = P1
pos = 36, 0
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0

[state 840, Attack Distance]
type = attackdist
trigger1 = !time
value = 0

[state 840, Target State]
type = targetstate
trigger1 = cond(numtarget, !time, 0)
value = 845

[state 840, Target Facing]
type = targetfacing
trigger1 = cond(numtarget, !time, 0)
trigger2 = !animelemtime(4)
value = -1

[state 840, Target Bind]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
pos = 76 * const(size.xscale), 0 * const(size.yscale)

[state 840, Target Bind]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
pos = 61 * const(size.xscale), 0 * const(size.yscale)
; pos = 44 * const(size.xscale), -54 * const(size.yscale)

[state 840, Target Bind]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
pos = 34 * const(size.xscale), -62 * const(size.yscale)

[state 840, Target Bind]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(5) >= 0 && animelemtime(6) < 0
pos = 30 * const(size.xscale), -82 * const(size.yscale)

[state 840, Target Bind]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(6) >= 0 && animelemtime(7) < 0
pos = 16 * const(size.xscale), -120 * const(size.yscale)

[state 840, Target Bind]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(7) >= 0 && animelemtime(8) < 0
pos = 0 * const(size.xscale), -136 * const(size.yscale)

[state 840, Target Bind]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(8) >= 0 && animelemtime(9) < 0
pos = 0 * const(size.xscale), -132 * const(size.yscale)

[state 840, Target Bind]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(9) >= 0 && animelemtime(10) < 0
pos = 0 * const(size.xscale), -128 * const(size.yscale)

[state 840, Target Bind]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(10) >= 0 && animelemtime(11) < 0
pos = 0 * const(size.xscale), -130 * const(size.yscale)

[state 840, Target Bind]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(11) >= 0 && animelemtime(12) < 0
pos = 0 * const(size.xscale), -136 * const(size.yscale)

[state 840, Target Bind]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(12) >= 0 && animelemtime(13) < 0
pos = 0 * const(size.xscale), -136 * const(size.yscale)

[state 840, Target Bind]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(13) >= 0 && animelemtime(14) < 0
pos = 0 * const(size.xscale), -148 * const(size.yscale)

[state 840, Target Bind]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(14) >= 0 && animelemtime(15) < 0
pos = 0 * const(size.xscale), -148 * const(size.yscale)

[state 840, Target Bind]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(15) >= 0 && animelemtime(16) < 0
pos = 0 * const(size.xscale), -130 * const(size.yscale)

[state 840, Target Bind]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(16) >= 0 && animelemtime(17) < 0
pos = 36 * const(size.xscale), -30 * const(size.yscale)

[state 840, Target Bind]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(17) >= 0 && animelemtime(18) < 0
pos = 34 * const(size.xscale), -38 * const(size.yscale)

[state 840, Target Bind]
type = targetbind
trigger1 = numtarget
trigger1 = !animelemtime(18)
pos = 30 * const(size.xscale), -40 * const(size.yscale)

[state 840, Target Damage]
type = targetlifeadd
trigger1 = !animelemtime(16)
value = ceil(cond(119 * fvar(0) < 7, -7, -119 * fvar(0)))

[state 840, Target Power]
type = targetpoweradd
trigger1 = !animelemtime(16)
value = 20

[state 840, Target State]
type = targetstate
trigger1 = !animelemtime(18)
value = 846

[state 840, Add Power]
type = poweradd
trigger1 = !animelemtime(16)
value = cond(80 - 10 * var(51) < 10, 10, 80 - 10 * var(51))

[state 840, Add Hit]
type = hitadd
trigger1 = !animelemtime(16)
trigger1 = var(2) := -4 || fvar(3) := 0 || 1
trigger1 = var(3) := -1 || var(4) := -1 || 1
trigger1 = var(5) := -1 || var(6) := -1 || 1
trigger1 = var(7) := 0 || var(8) := 0 || 1
value = 1

[state 840, Shake]
type = envshake
trigger1 = !animelemtime(16)
time = 16
ampl = 4
freq = 128

[state 840, Idle]
type = statetypeset
trigger1 = animelemtime(19) >= 0
movetype = I
persistent = 0

[state 840, Control]
type = ctrlset
trigger1 = animelemtime(26) >= 1
value = 1
persistent = 0

[state 840, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; Target (840) - 1
;=========================================================================
[Statedef 845]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0, 0

[state 845, Set Hit Fall]
type = hitfallset
trigger1 = !time
value = 1

[state 845, Bound]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1, 0

[state 845, Own State]
type = selfstate
trigger1 = time > 128
trigger1 = !gethitvar(isbound)
value = 5050

;=========================================================================
; Target (840) - 2
;=========================================================================
[Statedef 846]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0, 0
sprpriority = -1

[state 846, Set Hit Fall]
type = hitfallset
trigger1 = !time
value = 1

[state 846, Set Velocity]
type = velset
trigger1 = !time
x = -1.0
y = -1.5

[state 846, Set Velocity]
type = velset
triggerall = !time
triggerall = selfanimexist(2147483647) && selfanimexist(-2147483647)
trigger1 = authorname = "RajaaBoy"
; trigger2 = authorname = "YourName"
x = -1.0 * fvar(14)
y = -1.5 * fvar(15)

[state 846, Increment Velocity]
type = veladd
trigger1 = time > 0
y = gethitvar(yaccel)

[state 846, Increment Position]
type = posadd
trigger1 = !time
y = -const(size.mid.pos.y)

[state 846, Set Position]
type = posset
triggerall = !time
triggerall = selfanimexist(2147483647) && selfanimexist(-2147483647)
triggerall = name = "Necro"
trigger1 = authorname = "RajaaBoy"
; trigger2 = authorname = "YourName"
y = -19.0
[state 846, Set Position]
type = posset
triggerall = !time
triggerall = selfanimexist(2147483647) && selfanimexist(-2147483647)
triggerall = name = "Urien"
trigger1 = authorname = "RajaaBoy"
; trigger2 = authorname = "YourName"
y = -3.0

[state 846, Set Velocity]
type = velset
triggerall = vel y > 0
triggerall = pos y + vel y > const(movement.air.gethit.groundlevel)
trigger1 = !selfanimexist(2147483647) || !selfanimexist(-2147483647)
x = -1.25

[state 846, Set Velocity]
type = velset
triggerall = vel y > 0
triggerall = pos y + vel y > const(movement.air.gethit.groundlevel)
triggerall = selfanimexist(2147483647) && selfanimexist(-2147483647)
trigger1 = authorname != "RajaaBoy"
; trigger1 = authorname != "YourName"
x = -1.25

[state 846, Own State]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y + vel y > const(movement.air.gethit.groundlevel)
value = 5100

[state 846, Own State]
type = selfstate
trigger1 = time > 128
trigger1 = !gethitvar(isbound)
value = 5050
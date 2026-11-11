; Urien By RajaaBoy

;=========================================================================
; Tyrant Slaughter
;=========================================================================
[StateDef 3000]
type = S
movetype = A
physics = N
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 1

[State 3000]
type = Helper
trigger1 = time = 0
Persistent = 0
name = "cutin"
stateno = 6969
ID = 6969
pos = -30,-230
postype = back
keyctrl = 0
ownpal = 0
size.xscale = 0.8
size.yscale = 0.8
supermovetime = 99999999
pausemovetime = 99999999
sprpriority = -105
helpertype = normal

;========================< Super Art Indication >========================

[state 3000, Level, Timer]
type = null
trigger1 = !time
trigger1 = var(0) := 0 || var(1) := 0 || 1
trigger1 = var(17) := 3 || var(18) := 5 || var(29) := 0 || 1
trigger1 = fvar(30) := 0 || fvar(31) := 0

[state 3000, Cornerpush]
type = varset
trigger1 = !time
sysfvar(2) = fvar(2)
[state 3000, Cornerpush]
type = null
trigger1 = !time
trigger1 = fvar(2) := -1.0
trigger2 = time = 51
trigger2 = fvar(2) := sysfvar(2)

[state 3000, Overdraft Juggle]
type = varset
triggerall = !time
trigger1 = var(15) % 50 = 1 || var(15) % 50 = 2 || var(15) % 50 = 4|| var(15) % 50 = 6
trigger2 = var(15) % 60 = 1 || var(15) % 60 = 4
trigger3 = var(16) = 1 || var(16) = 2
trigger4 = var(16) = 102 || var(16) = 103
trigger4 = prevstateno != [3000, 3099]
var(13) = 0

[state 3000, Set Position]
type = posset
trigger1 = !time
y = 0

[state 3000, Change Animation]
type = changeanim
trigger1 = !time
value = 3000

[state 3000, Add Power]
type = poweradd
trigger1 = !time
value = -var(27) - var(28) * (var(29) != 0)

[state 3000, Super Effect]
type = helper
trigger1 = !time
name = "Super Effect"
ID = 6205
stateno = 6205
postype = p1
ownpal = 1
keyctrl = 0
size.xscale = 0.5
size.yscale = 0.5
supermovetime = 2147483647
pausemovetime = 2147483647

[state 3000, Super Pause]
type = superpause
trigger1 = !time
time = 51
movetime = (var(46) := 51)
unhittable = 1
anim = -1
sound = -1
p2defmul = 1
poweradd = 0
darken = 0

[state 3000, Vulnerability]
type = nothitby
trigger1 = anim = 3000
trigger1 = animelemtime(6) <= 0
value = SCA
time = 1

;========================< Move Functions >========================

[state 3000, Pause Frame 1a]
type = changeanim
trigger1 = anim = 3000
trigger1 = animelemtime(11) > 0 && animelemtime(12) <= 0
trigger1 = hitpausetime
trigger1 = var(0) := 1
value = 3000
elem = 12
ignorehitpause = 1
persistent = 0
[state 3000, Pause Frame 1b]
type = changeanim
trigger1 = anim = 3000
trigger1 = var(0) = 1 && !hitpausetime
trigger1 = animelemtime(12) = 3 
value = 3000
elem = 13
ignorehitpause = 1
persistent = 0

[state 3000, Pause Frame 2a]
type = changeanim
trigger1 = anim = 3000
trigger1 = animelemtime(22) > 0 && animelemtime(23) <= 0
trigger1 = hitpausetime
trigger1 = var(0) := 2
value = 3000
elem = 23
ignorehitpause = 1
persistent = 0
[state 3000, Pause Frame 2b]
type = changeanim
trigger1 = anim = 3000
trigger1 = var(0) = 2 && !hitpausetime
trigger1 = animelemtime(23) = 3 
value = 3000
elem = 24
ignorehitpause = 1
persistent = 0

[state 3000, Pause Frame 3]
type = varset
trigger1 = anim = 3000
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(27) >= 0 && animelemtime(28) <= 0 
var(1) = animelemtime(27) + 1
ignorehitpause = 1
persistent = 0
[state 3000, Pause Frame 3]
type = changeanim
trigger1 = anim = 3000
trigger1 = var(1) > 0 && !hitpausetime
trigger1 = animelemtime(27) >= 0 && animelemtime(28) <= 0
trigger1 = animelemtime(27) = var(1)
value = 3005
ignorehitpause = 1
persistent = 0

[state 3000, Pause Frame 4a]
type = varset
trigger1 = anim = 3000
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(29) >= 0 && animelemtime(30) < 0 
var(1) = -1
ignorehitpause = 1
persistent = 0
[state 3000, Pause Frame 4a]
type = changeanim
trigger1 = anim = 3000
trigger1 = var(1) = -1 && hitpausetime
trigger1 = animelemtime(29) >= 0 && animelemtime(30) <= 0
value = 3005
elem = 3
ignorehitpause = 1
persistent = 0

[state 3000, Pause Frame 4b]
type = changeanim
trigger1 = anim = 3005 && !hitpausetime
trigger1 = var(1) = -1 && animelemtime(3) = 0
value = 3005
elem = 4
ignorehitpause = 1
persistent = 0

[state 3000, Voice]
type = playsnd
trigger1 = anim = 3000
trigger1 = !animelemtime(1)
value = 3000, 0
volumescale = 100
channel = 0

[state 3000, Voice]
type = playsnd
triggerall = anim = 3000
trigger1 = !animelemtime(11)
trigger2 = !animelemtime(17) || !animelemtime(22)
value = 2, 0
volumescale = 100
channel = 0

[state 3000, Voice]
type = playsnd
trigger1 = anim = 3000
trigger1 = !animelemtime(27)
value = 1100, 0
volumescale = 100
channel = 0

[state 3000, Sound]
type = playsnd
triggerall = anim = 3000
trigger1 = !animelemtime(6) || !animelemtime(11)
trigger2 = !animelemtime(17) || !animelemtime(22)
trigger3 = !animelemtime(27)
value = 1, 2
volumescale = 100
channel = 1

[state 3000, Solidity]
type = playerpush
trigger1 = anim = 3000
trigger1 = animelemtime(27) >= 0 && animelemtime(28) < 0
value = 0
ignorehitpause = 1

[state 3000, Bound]
type = screenbound
trigger1 = anim = 3000
trigger1 = animelemtime(27) >= 0 && animelemtime(28) < 0
value = 0
ignorehitpause = 1

[state 3000, Increment Position]
type = posadd
trigger1 = anim = 3000
trigger1 = !animelemtime(3)
x = -1.0
[state 3000, Increment Position]
type = posadd
trigger1 = anim = 3000
trigger1 = !animelemtime(4)
x = 16.0
[state 3000, Increment Position]
type = posadd
trigger1 = anim = 3000
trigger1 = !animelemtime(5)
x = 10.0
[state 3000, Increment Position]
type = posadd
trigger1 = anim = 3000
trigger1 = !animelemtime(11) || !animelemtime(22)
x = 28.0
[state 3000, Increment Position]
type = posadd
trigger1 = anim = 3000
trigger1 = !animelemtime(27)
x = -5.0

[state 3000, Set Velocity]
type = velset
triggerall = anim = 3000
trigger1 = !animelemtime(6)
trigger2 = !animelemtime(17)
x = 20.0 * fvar(14)
[state 3000, Increment Velocity]
type = veladd
triggerall = anim = 3000
trigger1 = animelemtime(6) > 0 && animelemtime(9) < 0
trigger2 = animelemtime(17) > 0 && animelemtime(20) < 0
x = -0.875 * fvar(16)

[state 3000, Set Velocity]
type = velset
triggerall = anim = 3000
trigger1 = !animelemtime(9)
trigger2 = !animelemtime(20)
x = 0.0 * fvar(14)

[state 3000, Set Velocity]
type = velset
triggerall = anim = 3000
trigger1 = !animelemtime(12)
trigger2 = !animelemtime(23)
x = 14.0 * fvar(14)
[state 3000, Increment Velocity]
type = veladd
triggerall = anim = 3000
trigger1 = animelemtime(12) > 0 && animelemtime(16) < 0
trigger2 = animelemtime(23) > 0 && animelemtime(27) < 0
x = -1.0 * fvar(16)

[state 3000, Set Velocity]
type = velset
trigger1 = anim = 3000
trigger1 = !animelemtime(27)
x = 12.0 * fvar(14)
[state 3000, Increment Velocity]
type = veladd
triggerall = vel x
trigger1 = anim = 3000
trigger1 = animelemtime(27) > 0
trigger2 = anim = 3005
x = -0.625 * fvar(16)

[state 3000, Set Velocity]
type = velset
trigger1 = vel x < 0
x = 0.0 * fvar(14)

[state 3000, Dust]
type = helper
triggerall = anim = 3000
trigger1 = !animelemtime(6) || !animelemtime(17)
trigger2 = !animelemtime(12) || !animelemtime(23)
trigger3 = !animelemtime(27)
name = "Dust"
ID = cond(numhelper(4000), cond(helper(4000),var(36), 7015, 6001), 6001)
stateno = cond(numhelper(4000), cond(helper(4000),var(36), 7015, 6001), 6001)
postype = P1
pos = -24, 0
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0

[state 3000, Juggle Points 1]
type = null
trigger1 = anim = 3000
trigger1 = animelemtime(6) >= 0 && animelemtime(8) < 0
trigger1 = var(10) := 1 || var(17) := 3 || var(49) := 3000
[state 3000, Hit 1]
type = hitdef
triggerall = var(49) != var(50) && !var(13) ; && !var(9)
trigger1 = anim = 3000
trigger1 = animelemtime(6) >= 0 && animelemtime(8) < 0
ID = 5612 + 0 * (var(49) := 3000)
attr = S, HA
damage = ceil(cond(44 * fvar(0) < 7, 7, 44 * fvar(0))), 7
fall.envshake.phase = 0 ; stun damage
fall.envshake.freq = var(17) ; hit/attack level
fall.envshake.ampl = 0 ; hit y position
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 4, cond(p2statetype = A, 4, 12)
hitsound = -1 + 0 * (var(3) := 230)
guardsound = -1 + 0 * (var(4) := cond(p2name = "Urien", 20, 10))
sparkno = -1 + 0 * (var(5) := 33)
guard.sparkno = -1 + 0 * (var(6) := 2)
sparkxy = 0 * (var(7) := 40), 0 * (var(8) := -80)
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
air.velocity = -6.375 * fvar(14), -8.71875 * fvar(15)
airguard.velocity = -4.0 * fvar(14), -4.0 * fvar(15)
ground.cornerpush.veloff = 0.0 * (fvar(3) := 12.0)
guard.cornerpush.veloff = 0.0
yaccel = 0.5625 * fvar(20)
getpower = 0, 0
givepower = 0, 0
envshake.time = 4
envshake.ampl = 1
envshake.freq = 128
fall = 0
air.fall = 1
fall.recover = 0
fall.recovertime = 0
fall.animtype = back
forcestand = 0
forcenofall = 0

[state 3000, Juggle Points 2]
type = null
trigger1 = anim = 3000
trigger1 = animelemtime(11) >= 0 && animelemtime(14) < 0
trigger1 = var(10) := 1 || var(17) := 3 || var(49) := 3001
[state 3000, Hit 2]
type = hitdef
triggerall = var(49) != var(50) && !var(13) ; && !var(9)
trigger1 = anim = 3000
trigger1 = animelemtime(11) >= 0 && animelemtime(14) < 0
ID = cond(numtarget(5612), 0, 5622) + 0 * (var(49) := 3001)
attr = S, HA
damage = ceil(cond(69 * fvar(0) < 7, 7, 69 * fvar(0))), 7
fall.envshake.phase = 0 ; stun damage
fall.envshake.freq = var(17) ; hit/attack level
fall.envshake.ampl = 0 ; hit y position
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 5, cond(p2statetype = A, 4, 12)
hitsound = -1 + 0 * (var(3) := 230)
guardsound = -1 + 0 * (var(4) := cond(p2name = "Urien", 20, 10))
sparkno = -1 + 0 * (var(5) := 35)
guard.sparkno = -1 + 0 * (var(6) := 2)
sparkxy = 0 * (var(7) := 40), 0 * (var(8) := -80)
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
air.velocity = -6.375 * fvar(14), -8.71875 * fvar(15)
airguard.velocity = -4.0 * fvar(14), -4.0 * fvar(15)
ground.cornerpush.veloff = 0.0 * (fvar(3) := 12.0)
guard.cornerpush.veloff = 0.0
yaccel = 0.5625 * fvar(20)
getpower = 0, 0
givepower = 0, 0
envshake.time = 4
envshake.ampl = 1
envshake.freq = 128
fall = 0
air.fall = 1
fall.recover = 0
fall.recovertime = 0
fall.animtype = back
forcestand = 0
forcenofall = 0

[state 3000, Juggle Points 3]
type = null
trigger1 = anim = 3000
trigger1 = animelemtime(17) >= 0 && animelemtime(19) < 0
trigger1 = var(10) := 1 || var(17) := 3 || var(49) := 3002
[state 3000, Hit 3]
type = hitdef
triggerall = var(49) != var(50) && !var(13) ; && !var(9)
trigger1 = anim = 3000
trigger1 = animelemtime(17) >= 0 && animelemtime(19) < 0
ID = cond(numtarget(5622), 0, 5612) + 0 * (var(49) := 3002)
attr = S, HA
damage = ceil(cond(44 * fvar(0) < 7, 7, 44 * fvar(0))), 7
fall.envshake.phase = 0 ; stun damage
fall.envshake.freq = var(17) ; hit/attack level
fall.envshake.ampl = 0 ; hit y position
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 4, cond(p2statetype = A, 4, 12)
hitsound = -1 + 0 * (var(3) := 230)
guardsound = -1 + 0 * (var(4) := cond(p2name = "Urien", 20, 10))
sparkno = -1 + 0 * (var(5) := 33)
guard.sparkno = -1 + 0 * (var(6) := 2)
sparkxy = 0 * (var(7) := 40), 0 * (var(8) := -80)
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
air.velocity = -6.375 * fvar(14), -8.71875 * fvar(15)
airguard.velocity = -4.0 * fvar(14), -4.0 * fvar(15)
ground.cornerpush.veloff = 0.0 * (fvar(3) := 12.0)
guard.cornerpush.veloff = 0.0
yaccel = 0.5625 * fvar(20)
getpower = 0, 0
givepower = 0, 0
envshake.time = 4
envshake.ampl = 1
envshake.freq = 128
fall = 0
air.fall = 1
fall.recover = 0
fall.recovertime = 0
fall.animtype = back
forcestand = 0
forcenofall = 0

[state 3000, Juggle Points 4]
type = null
trigger1 = anim = 3000
trigger1 = animelemtime(22) >= 0 && animelemtime(25) < 0
trigger1 = var(10) := 1 || var(17) := 3 || var(49) := 3003
[state 3000, Hit 4]
type = hitdef
triggerall = var(49) != var(50) && !var(13) ; && !var(9)
trigger1 = anim = 3000
trigger1 = animelemtime(22) >= 0 && animelemtime(25) < 0
ID = cond(numtarget(5612), 0, 5622) + 0 * (var(49) := 3003)
attr = S, HA
damage = ceil(cond(69 * fvar(0) < 7, 7, 69 * fvar(0))), 7
fall.envshake.phase = 0 ; stun damage
fall.envshake.freq = var(17) ; hit/attack level
fall.envshake.ampl = 0 ; hit y position
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 5, cond(p2statetype = A, 4, 12)
hitsound = -1 + 0 * (var(3) := 230)
guardsound = -1 + 0 * (var(4) := cond(p2name = "Urien", 20, 10))
sparkno = -1 + 0 * (var(5) := 35)
guard.sparkno = -1 + 0 * (var(6) := 2)
sparkxy = 0 * (var(7) := 40), 0 * (var(8) := -80)
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
air.velocity = -6.375 * fvar(14), -8.71875 * fvar(15)
airguard.velocity = -4.0 * fvar(14), -4.0 * fvar(15)
ground.cornerpush.veloff = 0.0 * (fvar(3) := 12.0)
guard.cornerpush.veloff = 0.0
yaccel = 0.5625 * fvar(20)
getpower = 0, 0
givepower = 0, 0
envshake.time = 4
envshake.ampl = 1
envshake.freq = 128
fall = 0
air.fall = 1
fall.recover = 0
fall.recovertime = 0
fall.animtype = back
forcestand = 0
forcenofall = 0

[state 3000, Juggle Points 5a]
type = null
trigger1 = anim = 3000
trigger1 = animelemtime(27) >= 0 && animelemtime(28) < 0
trigger1 = var(10) := 7 || var(17) := 3 || var(49) := 3004
[state 3000, Hit 5a]
type = hitdef
triggerall = var(49) != var(50) && !var(13) ; && !var(9)
trigger1 = anim = 3000
trigger1 = animelemtime(27) >= 0 && animelemtime(28) < 0
ID = cond(p2dist y <= -22, 0, 5656) + 0 * (var(49) := 3004)
attr = S, HA
damage = ceil(cond(207 * fvar(0) < 7, 7, 207 * fvar(0))), 25
fall.envshake.phase = 0 ; stun damage
fall.envshake.freq = var(17) ; hit/attack level
fall.envshake.ampl = 0 ; hit y position
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 16, 16
hitsound = -1 + 0 * (var(3) := 230)
guardsound = -1 + 0 * (var(4) := cond(p2name = "Urien", 20, 10))
sparkno = -1 + 0 * (var(5) := 132)
guard.sparkno = -1 + 0 * (var(6) := 2)
sparkxy = 0 * (var(7) := 40), 0 * (var(8) := -80)
animtype = hard
ground.type = high
air.animtype = hard
air.type = high
ground.slidetime = 7
ground.hittime = 12
guard.slidetime = 7
guard.hittime = 12
air.hittime = cond((var(54) = [1, 2]), 0, 128)
ground.velocity = -10.625 * fvar(14), cond(p2dist y <= -22, 2.125, 2.625) * fvar(15)
guard.velocity = -6.0 * fvar(18)
air.velocity = -10.625 * fvar(14), cond(p2dist y <= -22, 2.125, 2.625) * fvar(15)
airguard.velocity = -4.0 * fvar(14), -4.0 * fvar(15)
ground.cornerpush.veloff = 0.0 * (fvar(3) := 7.0)
guard.cornerpush.veloff = 0.0
yaccel = 0.5 * fvar(20)
getpower = 0, 0
givepower = 0, 0
envshake.time = 4
envshake.ampl = 1
envshake.freq = 128
fall = 1
air.fall = 1
fall.recover = 0
fall.recovertime = 0
fall.animtype = hard
forcestand = 0
forcenofall = 0

[state 3000, Juggle Points 5b]
type = null
trigger1 = anim = 3000
trigger1 = animelemtime(29) >= 0 && animelemtime(30) < 0
trigger1 = var(10) := 7 || var(17) := 3 || var(49) := 3004
[state 3000, Hit 5b]
type = hitdef
triggerall = var(49) != var(50) && !var(13) ; && !var(9)
trigger1 = anim = 3000
trigger1 = animelemtime(29) >= 0 && animelemtime(30) < 0
ID = 0 + 0 * (var(49) := 3004)
attr = S, HA
damage = ceil(cond(88 * fvar(0) < 7, 7, 88 * fvar(0))), 7
fall.envshake.phase = 12 ; stun damage
fall.envshake.freq = var(17) ; hit/attack level
fall.envshake.ampl = 4 ; hit y position
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
hitsound = -1 + 0 * (var(3) := 230)
guardsound = -1 + 0 * (var(4) := cond(p2name = "Urien", 20, 10))
sparkno = -1 + 0 * (var(5) := 132)
guard.sparkno = -1 + 0 * (var(6) := 2)
sparkxy = 0 * (var(7) := 40), 0 * (var(8) := -80)
animtype = hard
ground.type = high
air.animtype = hard
air.type = high
ground.slidetime = 7
ground.hittime = 15
guard.slidetime = 7
guard.hittime = 15
air.hittime = cond((var(54) = [1, 2]), 0, 128)
ground.velocity = -8.5 * fvar(14), -7.75 * fvar(15)
guard.velocity = -6.0 * fvar(18)
air.velocity = -8.5 * fvar(14), -7.75 * fvar(15)
airguard.velocity = -4.0 * fvar(14), -4.0 * fvar(15)
ground.cornerpush.veloff = 0.0 * (fvar(3) := 7.0)
guard.cornerpush.veloff = 0.0
yaccel = 0.5 * fvar(20)
getpower = 0, 0
givepower = 0, 0
envshake.time = 4
envshake.ampl = 1
envshake.freq = 128
fall = 1
air.fall = 1
fall.recover = 0
fall.recovertime = 0
fall.animtype = hard
forcestand = 0
forcenofall = 0

[state 3000, Target Bind]
type = targetbind
trigger1 = anim = 3000 && movehit = 1
trigger1 = animelemtime(27) >= 0 && animelemtime(28) < 0
trigger1 = numtarget(5656)
pos = 16, -16
ignorehitpause = 1
persistent = 0
[state 3000, Target Bind]
type = targetbind
triggerall = anim = 3000 && movehit = 1
triggerall = animelemtime(27) >= 0 && animelemtime(28) < 0
triggerall = numtarget(5656)
trigger1 = target(5656),authorname = "RajaaBoy" && target(5656),name = "Gill"
; trigger2 = target(5656),authorname = "YourName" && target(5656),name = "Gill"
pos = -15, -1
ignorehitpause = 1
persistent = 0
[state 3000, Target Bind]
type = targetbind
triggerall = anim = 3000 && movehit = 1
triggerall = animelemtime(27) >= 0 && animelemtime(28) < 0
triggerall = numtarget(5656)
trigger1 = target(5656),authorname = "RajaaBoy" && target(5656),name = "Alex"
; trigger2 = target(5656),authorname = "YourName" && target(5656),name = "Alex"
pos = 1, -13
ignorehitpause = 1
persistent = 0
[state 3000, Target Bind]
type = targetbind
triggerall = anim = 3000 && movehit = 1
triggerall = animelemtime(27) >= 0 && animelemtime(28) < 0
triggerall = numtarget(5656)
trigger1 = target(5656),authorname = "RajaaBoy" && target(5656),name = "Ryu"
; trigger2 = target(5656),authorname = "YourName" && target(5656),name = "Ryu"
pos = -2, -14
ignorehitpause = 1
persistent = 0
[state 3000, Target Bind]
type = targetbind
triggerall = anim = 3000 && movehit = 1
triggerall = animelemtime(27) >= 0 && animelemtime(28) < 0
triggerall = numtarget(5656)
trigger1 = target(5656),authorname = "RajaaBoy" && target(5656),name = "Yun"
; trigger2 = target(5656),authorname = "YourName" && target(5656),name = "Yun"
pos = -4, -3
ignorehitpause = 1
persistent = 0
[state 3000, Target Bind]
type = targetbind
triggerall = anim = 3000 && movehit = 1
triggerall = animelemtime(27) >= 0 && animelemtime(28) < 0
triggerall = numtarget(5656)
trigger1 = target(5656),authorname = "RajaaBoy" && target(5656),name = "Dudley"
; trigger2 = target(5656),authorname = "YourName" && target(5656),name = "Dudley"
pos = 3, -4
ignorehitpause = 1
persistent = 0
[state 3000, Target Bind]
type = targetbind
triggerall = anim = 3000 && movehit = 1
triggerall = animelemtime(27) >= 0 && animelemtime(28) < 0
triggerall = numtarget(5656)
trigger1 = target(5656),authorname = "RajaaBoy" && target(5656),name = "Necro"
; trigger2 = target(5656),authorname = "YourName" && target(5656),name = "Necro"
pos = 15, -10
ignorehitpause = 1
persistent = 0
[state 3000, Target Bind]
type = targetbind
triggerall = anim = 3000 && movehit = 1
triggerall = animelemtime(27) >= 0 && animelemtime(28) < 0
triggerall = numtarget(5656)
trigger1 = target(5656),authorname = "RajaaBoy" && target(5656),name = "Hugo"
; trigger2 = target(5656),authorname = "YourName" && target(5656),name = "Hugo"
pos = -13, 0
ignorehitpause = 1
persistent = 0
[state 3000, Target Bind]
type = targetbind
triggerall = anim = 3000 && movehit = 1
triggerall = animelemtime(27) >= 0 && animelemtime(28) < 0
triggerall = numtarget(5656)
trigger1 = target(5656),authorname = "RajaaBoy" && target(5656),name = "Ibuki"
; trigger2 = target(5656),authorname = "YourName" && target(5656),name = "Ibuki"
pos = 21, -22
ignorehitpause = 1
persistent = 0
[state 3000, Target Bind]
type = targetbind
triggerall = anim = 3000 && movehit = 1
triggerall = animelemtime(27) >= 0 && animelemtime(28) < 0
triggerall = numtarget(5656)
trigger1 = target(5656),authorname = "RajaaBoy" && target(5656),name = "Elena"
; trigger2 = target(5656),authorname = "YourName" && target(5656),name = "Elena"
pos = -30, -22
ignorehitpause = 1
persistent = 0
[state 3000, Target Bind]
type = targetbind
triggerall = anim = 3000 && movehit = 1
triggerall = animelemtime(27) >= 0 && animelemtime(28) < 0
triggerall = numtarget(5656)
trigger1 = target(5656),authorname = "RajaaBoy" && target(5656),name = "Oro"
; trigger2 = target(5656),authorname = "YourName" && target(5656),name = "Oro"
pos = -3, -24
ignorehitpause = 1
persistent = 0
[state 3000, Target Bind]
type = targetbind
triggerall = anim = 3000 && movehit = 1
triggerall = animelemtime(27) >= 0 && animelemtime(28) < 0
triggerall = numtarget(5656)
trigger1 = target(5656),authorname = "RajaaBoy" && target(5656),name = "Yang"
; trigger2 = target(5656),authorname = "YourName" && target(5656),name = "Yang"
pos = -4, -3
ignorehitpause = 1
persistent = 0
[state 3000, Target Bind]
type = targetbind
triggerall = anim = 3000 && movehit = 1
triggerall = animelemtime(27) >= 0 && animelemtime(28) < 0
triggerall = numtarget(5656)
trigger1 = target(5656),authorname = "RajaaBoy" && target(5656),name = "Ken"
; trigger2 = target(5656),authorname = "YourName" && target(5656),name = "Ken"
pos = -2, -14
ignorehitpause = 1
persistent = 0
[state 3000, Target Bind]
type = targetbind
triggerall = anim = 3000 && movehit = 1
triggerall = animelemtime(27) >= 0 && animelemtime(28) < 0
triggerall = numtarget(5656)
trigger1 = target(5656),authorname = "RajaaBoy" && target(5656),name = "Sean"
; trigger2 = target(5656),authorname = "YourName" && target(5656),name = "Sean"
pos = -2, -14
ignorehitpause = 1
persistent = 0
[state 3000, Target Bind]
type = targetbind
triggerall = anim = 3000 && movehit = 1
triggerall = animelemtime(27) >= 0 && animelemtime(28) < 0
triggerall = numtarget(5656)
trigger1 = target(5656),authorname = "RajaaBoy" && target(5656),name = "Urien"
; trigger2 = target(5656),authorname = "YourName" && target(5656),name = "Urien"
pos = -15, -1
ignorehitpause = 1
persistent = 0
[state 3000, Target Bind]
type = targetbind
triggerall = anim = 3000 && movehit = 1
triggerall = animelemtime(27) >= 0 && animelemtime(28) < 0
triggerall = numtarget(5656)
trigger1 = target(5656),authorname = "RajaaBoy" && target(5656),name = "Akuma"
; trigger2 = target(5656),authorname = "YourName" && target(5656),name = "Akuma"
pos = -2, -14
ignorehitpause = 1
persistent = 0
[state 3000, Target Bind]
type = targetbind
triggerall = anim = 3000 && movehit = 1
triggerall = animelemtime(27) >= 0 && animelemtime(28) < 0
triggerall = numtarget(5656)
trigger1 = target(5656),authorname = "RajaaBoy" && target(5656),name = "Chun-li"
; trigger2 = target(5656),authorname = "YourName" && target(5656),name = "Chun-li"
pos = 26, -10
ignorehitpause = 1
persistent = 0
[state 3000, Target Bind]
type = targetbind
triggerall = anim = 3000 && movehit = 1
triggerall = animelemtime(27) >= 0 && animelemtime(28) < 0
triggerall = numtarget(5656)
trigger1 = target(5656),authorname = "RajaaBoy" && target(5656),name = "Makoto"
; trigger2 = target(5656),authorname = "YourName" && target(5656),name = "Makoto"
pos = 25, -14
ignorehitpause = 1
persistent = 0
[state 3000, Target Bind]
type = targetbind
triggerall = anim = 3000 && movehit = 1
triggerall = animelemtime(27) >= 0 && animelemtime(28) < 0
triggerall = numtarget(5656)
trigger1 = target(5656),authorname = "RajaaBoy" && target(5656),name = "Q"
; trigger2 = target(5656),authorname = "YourName" && target(5656),name = "Q"
pos = -19, -1
ignorehitpause = 1
persistent = 0
[state 3000, Target Bind]
type = targetbind
triggerall = anim = 3000 && movehit = 1
triggerall = animelemtime(27) >= 0 && animelemtime(28) < 0
triggerall = numtarget(5656)
trigger1 = target(5656),authorname = "RajaaBoy" && target(5656),name = "Twelve"
; trigger2 = target(5656),authorname = "YourName" && target(5656),name = "Twelve"
pos = -4, -1
ignorehitpause = 1
persistent = 0
[state 3000, Target Bind]
type = targetbind
triggerall = anim = 3000 && movehit = 1
triggerall = animelemtime(27) >= 0 && animelemtime(28) < 0
triggerall = numtarget(5656)
trigger1 = target(5656),authorname = "RajaaBoy" && target(5656),name = "Remy"
; trigger2 = target(5656),authorname = "YourName" && target(5656),name = "Remy"
pos = -6, -6
ignorehitpause = 1
persistent = 0

[state 3000, Idle]
type = statetypeset
trigger1 = anim = 3000
trigger1 = animelemtime(30) >= 0
trigger2 = anim = 3005
trigger2 = animelemtime(3) >= 0
movetype = I
persistent = 0

[state 3000, Control]
type = ctrlset
trigger1 = anim = 3000
trigger1 = animelemtime(34) >= 0
trigger2 = anim = 3005
trigger2 = animelemtime(8) >= 0
value = 1
persistent = 0

[state 3000, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; Temporal Thunder
;=========================================================================
[StateDef 3100]
type = S
movetype = A
physics = N
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 0

[State 3000]
type = Helper
trigger1 = time = 0
Persistent = 0
name = "cutin"
stateno = 6969
ID = 6969
pos = -30,-230
postype = back
keyctrl = 0
ownpal = 0
size.xscale = 0.8
size.yscale = 0.8
supermovetime = 99999999
pausemovetime = 99999999
sprpriority = -105
helpertype = normal

;========================< Super Art Indication >========================

[state 3100, Level, Timer]
type = null
trigger1 = !time
trigger1 = var(0) := 0 || var(1) := 0 || 1
trigger1 = var(17) := 3 || var(18) := 5 || var(29) := 0 || 1
trigger1 = fvar(30) := 0 || fvar(31) := 0

[state 3100, Cornerpush]
type = varset
trigger1 = !time
sysfvar(2) = fvar(2)
[state 3100, Cornerpush]
type = null
trigger1 = !time
trigger1 = fvar(2) := -1.0
trigger2 = time = 53
trigger2 = fvar(2) := sysfvar(2)

[state 3100, Overdraft Juggle]
type = varset
triggerall = !time
trigger1 = var(15) % 50 = 1 || var(15) % 50 = 2 || var(15) % 50 = 4|| var(15) % 50 = 6
trigger2 = var(15) % 60 = 1 || var(15) % 60 = 4
trigger3 = var(16) = 1 || var(16) = 2
trigger4 = var(16) = 101 || var(16) = 103
trigger4 = prevstateno != [3100, 3199]
var(13) = 0

[state 3100, Set Position]
type = posset
trigger1 = !time
y = 0

[state 3100, Change Animation]
type = changeanim
trigger1 = !time
value = 3100

[state 3100, Add Power]
type = poweradd
trigger1 = !time
value = -var(27) - var(28) * (var(29) != 0)

[state 3100, Super Effect]
type = helper
trigger1 = !time
name = "Super Effect"
ID = 6205
stateno = 6205
postype = p1
pos = 0,0
ownpal = 1
keyctrl = 0
size.xscale = 0.5
size.yscale = 0.5
supermovetime = 2147483647
pausemovetime = 2147483647

[state 3100, Super Pause]
type = superpause
trigger1 = !time
time = 53
movetime = (var(46) := 53)
unhittable = 1
anim = -1
sound = -1
p2defmul = 1
poweradd = 0
darken = 0

[state 3100, Vulnerability]
type = nothitby
trigger1 = animelemtime(7) < 0
value = SCA
time = 1

;========================< Move Functions >========================

[state 3100, Voice]
type = playsnd
trigger1 = !animelemtime(1)
value = 3100, 0
volumescale = 100
channel = 0

[state 3100, Sound]
type = playsnd
trigger1 = !animelemtime(8)
value = 3, 0
volumescale = 100

[state 3100, Sound]
type = playsnd
trigger1 = !animelemtime(8)
value = 3, 4
volumescale = 100

[state 1350, Voice]
type = playsnd
trigger1 = !animelemtime(9)
value = 181,1
volumescale = 100
[state 3100, Set Velocity]
type = velset
trigger1 = !animelemtime(9)
x = -9.0 * fvar(14)
[state 3100, Increment Velocity]
type = veladd
trigger1 = vel x < 0
trigger1 = animelemtime(9) > 0
x = 0.8125 * fvar(16)
[state 3100, Set Velocity]
type = velset
trigger1 = vel x > 0
trigger1 = animelemtime(9) > 0
x = 0.0 * fvar(14)

[state 3100, Temporal Thunder]
type = helper
trigger1 = !animelemtime(8)
name = "Temporal Thunder"
ID = 3105
stateno = 3105
postype = p1
ownpal = 1
keyctrl = 0
size.xscale = cond(numhelper(4000), cond(helper(4000),var(36) != 0, 0.5, const(size.xscale)), const(size.xscale))
size.yscale = cond(numhelper(4000), cond(helper(4000),var(36) != 0, 0.5, const(size.yscale)), const(size.yscale))

;[state 3100, Dust]
;type = helper
;trigger1 = !animelemtime(9)
;name = "Dust"
;ID = cond(numhelper(4000), cond(helper(4000),var(36), 7015, 6001), 6001)
;stateno = cond(numhelper(4000), cond(helper(4000),var(36), 7015, 6001), 6001)
;postype = P1
;pos = 0, 0
;facing = -1
;ownpal = 1
;keyctrl = 0
;size.xscale = 1.0
;size.yscale = 1.0

[state 3100, Idle]
type = statetypeset
trigger1 = animelemtime(8) >= 0
movetype = I
persistent = 0

[state 3100, Control]
type = ctrlset
trigger1 = animelemtime(18) >= 0
value = 1
persistent = 0

[state 3100, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; Thunder Start 1
;=========================================================================
[Statedef 3105]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 0

; var(0) = trigger limiter
; var(1) = hit count
; var(2) = hit on animelem 22
; sysvar(0 - 4) = after hit velocity variable

;========================< Projectile Configuration >========================

[state 3105, Trigger Limiter]
type = varadd
trigger1 = movecontact = 1 || movereversed = 1
var(0) = 1
ignorehitpause = 1

[state 3105, Hit Counter]
type = varadd
triggerall = var(0) = 1
trigger1 = movecontact = 1 || movereversed = 1
var(1) = 1
ignorehitpause = 1

[state 3105, Projectile Configuration]
type = null
; Air Reset, Accumulated Juggle Points, Juggle Overdraft
trigger1 = var(9) := root,var(9) ||var(11) := root,var(11) || var(12) := root,var(12) || var(13) := root,var(13) || 1
; Counter Hit, Hit Counter, Damage Scale Hit Counter, Damage Scale
trigger1 = var(45) := root,var(45) || var(51) := root,var(51) || var(52) := root,var(52) || fvar(0) := cond(root,fvar(0) < 0.92, 0.92, root,fvar(0)) || 1
; Attack Level, Power Adder, Power Multiplier
trigger1 = !prevstateno && !time
trigger1 = var(17) := 3 || var(18) := root,var(18) || var(25) := root,var(25) || fvar(33) := root,fvar(33)

[state 3105, Change Animation]
type = changeanim
trigger1 = !prevstateno && !time
value = 3105 + cond(numhelper(4000), helper(4000),var(36) != 0, 0)

[state 3105, Pause Frame 1]
type = changeanim
trigger1 = animelemtime(21) <= 0
trigger1 = hitpausetime
trigger1 = var(2) := 1
value = 3105 + cond(numhelper(4000), helper(4000),var(36) != 0, 0)
elem = 21
ignorehitpause = 1
persistent = 0

[state 3105, Pause Frame 2]
type = changeanim
trigger1 = animelemtime(22) >= 0 && animelemtime(23) <= 0
trigger1 = hitpausetime
trigger1 = var(2) := 2
value = 3105 + cond(numhelper(4000), helper(4000),var(36) != 0, 0)
elem = 23
ignorehitpause = 1
persistent = 0

[state 3105, Pause Frame 3]
type = changeanim
trigger1 = movecontact = 1
trigger1 = cond(var(2) = 2, animelemtime(23) >= 1, 1)
value = 3105 + cond(numhelper(4000), helper(4000),var(36) != 0, 0)
elem = animelemno(0) + 1

[state 3105, Special Effect]
type = assertspecial
trigger1 = cond(numhelper(4000), helper(4000),var(36) != 0, 0)
flag = noshadow
ignorehitpause = 1

[state 3105, Priority]
type = sprpriority
trigger1 = 1
value = -5
ignorehitpause = 1

[state 3105, Vulnerability]
type = hitby
trigger1 = var(1) < 5
value = SCA,AP
time = -1
ignorehitpause = 1

[state 3105, Hit Override]
type = hitoverride
trigger1 = var(1) < 5
attr = SCA,AP
stateno = 3106
slot = 0
time = -1
forceair = 0
ignorehitpause = 1

[state 3105, Vulnerability]
type = nothitby
trigger1 = var(1) >= 5
value = SCA
time = -1
ignorehitpause = 1

[state 3105, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)
ignorehitpause = 1

;========================< Projectile Functionality >========================

[state 3105, Bind to Parent]
type = bindtoparent
trigger1 = !prevstateno && !time
pos = 14, -76

[state 3105, Set Velocity]
type = velset
trigger1 = animelemtime(1) >= 0
x = 0.5 * root,fvar(14)

[state 3105, Set Velocity]
type = velset
trigger1 = animelemtime(23) >= 1
x = 1.5 * root,fvar(14)
[state 3105, Set Velocity]
type = velset
trigger1 = animelemtime(29) >= 0
x = 3.5 * root,fvar(14)
[state 3105, Set Velocity]
type = velset
trigger1 = animelemtime(35) >= 0
x = 6.5 * root,fvar(14)
[state 3105, Set Velocity]
type = velset
trigger1 = animelemtime(44) >= 0
x = 9.5 * root,fvar(14)

[state 3105, Velocity After Hit]
type = varadd
trigger1 = var(0) = 1
trigger1 = animelemtime(23) >= 1
sysvar(0) = 1
ignorehitpause = 1
[state 3105, Set Velocity]
type = velset
trigger1 = sysvar(0) >= 2
trigger1 = animelemtime(23) >= 1
x = 4.875 * root,fvar(14)
[state 3105, Set Velocity]
type = velset
trigger1 = sysvar(0) >= 2
trigger1 = animelemtime(29) >= 0
x = 6.875 * root,fvar(14)
[state 3105, Set Velocity]
type = velset
trigger1 = sysvar(0) >= 2
trigger1 = animelemtime(35) >= 0
x = 9.875 * root,fvar(14)
[state 3105, Set Velocity]
type = velset
trigger1 = sysvar(0) >= 2
trigger1 = animelemtime(44) >= 0
x = 12.875 * root,fvar(14)

[state 3105, Velocity After Hit]
type = varadd
trigger1 = var(0) = 1
trigger1 = animelemtime(29) >= 0
sysvar(1) = 1
ignorehitpause = 1
[state 3105, Set Velocity]
type = velset
trigger1 = sysvar(1) >= 2
trigger1 = animelemtime(29) >= 0
x = 4.875 * root,fvar(14)
[state 3105, Set Velocity]
type = velset
trigger1 = sysvar(1) >= 2
trigger1 = animelemtime(35) >= 0
x = 7.875 * root,fvar(14)
[state 3105, Set Velocity]
type = velset
trigger1 = sysvar(1) >= 2
trigger1 = animelemtime(44) >= 0
x = 10.875 * root,fvar(14)

[state 3105, Velocity After Hit]
type = varadd
trigger1 = var(0) = 1
trigger1 = animelemtime(35) >= 0
sysvar(2) = 1
ignorehitpause = 1
[state 3105, Set Velocity]
type = velset
trigger1 = sysvar(2) >= 2
trigger1 = animelemtime(35) >= 0
x = 4.875 * root,fvar(14)
[state 3105, Set Velocity]
type = velset
trigger1 = sysvar(2) >= 2
trigger1 = animelemtime(44) >= 0
x = 7.875 * root,fvar(14)

[state 3105, Velocity After Hit]
type = varadd
trigger1 = var(0) = 1
trigger1 = animelemtime(44) >= 0
sysvar(3) = 1
ignorehitpause = 1
[state 3105, Set Velocity]
type = velset
trigger1 = sysvar(3) >= 1
trigger1 = animelemtime(44) >= 0
x = 4.875 * root,fvar(14)

[state 3105, Miss]
type = hitdef
trigger1 = !hitpausetime
trigger1 = !animelemtime(animelemno(0))
attr = S, HP
hitflag = 

[state 3105, Juggle Points 1]
type = null
trigger1 = animelemno(0) % 2 = 1 || var(2) = 1 && !animelemtime(22)
trigger1 = var(10) := 1 || var(17) := 3 || var(49) := 3105
[state 3105, Hit 1]
type = hitdef
triggerall = !var(13) ; && !var(9) var(49) != var(50)
trigger1 = animelemno(0) % 2 = 1 || var(2) = 1 && !animelemtime(22)
ID = 5800 + 0 * (var(49) := 3105)
attr = S, HP
damage = ceil(cond(63 * fvar(0) < 7, 7, 63 * fvar(0))), 7
fall.envshake.phase = 9 ; stun damage
fall.envshake.freq = var(17) ; hit/attack level
fall.envshake.ampl = 2 ; hit y position
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = cond(var(1) < 4, 6, 0), 9
hitsound = -1 + 0 * (var(3) := 260)
guardsound = -1 + 0 * (var(4) := 10)
sparkno = -1 + 0 * (var(5) := 33)
guard.sparkno = -1 + 0 * (var(6) := 2)
sparkxy = 0 * (var(7) := 16), 0 * (var(8) := cond(random < 500, random % 40, -random % 40))
animtype = hard
ground.type = low
air.animtype = back
air.type = low
ground.slidetime = 12
ground.hittime = 14
guard.slidetime = 12
guard.hittime = 13
air.hittime = cond((root,var(54) = [1, 2]), 0, 128)
ground.velocity = -8.5 * root,fvar(14), -5.0625 * root,fvar(15)
guard.velocity = -16.0 * root,fvar(18)
air.velocity = -8.5 * root,fvar(14), -5.0625 * root,fvar(15)
airguard.velocity = -4.0 * root,fvar(14), -4.0 * root,fvar(15)
ground.cornerpush.veloff = 0.0 * (fvar(3) := -1.0)
guard.cornerpush.veloff = 0.0
yaccel = 0.375 * root,fvar(20)
getpower = 0, 0
givepower = 0, 0
envshake.time = 4
envshake.ampl = 1
envshake.freq = 128
fall = 1
air.fall = 1
fall.recover = 0
fall.recovertime = 0
fall.animtype = back
forcestand = 1
forcenofall = 0
p2facing = p2statetype != A

;========================< Projectile Contact >========================

[state 3105, Accumulated Juggle Points]
type = parentvaradd
triggerall = var(0) = 1
trigger1 = movehit = 1 && numtarget
var(11) = var(10)
ignorehitpause = 1
[state 3105, Set Juggle Window]
type = parentvarset
triggerall = var(0) = 1
trigger1 = movehit = 1 && numtarget
trigger1 = var(11) := root,var(11) || 1
var(12) = cond((var(11) = [1, 6]), 120 - 20 * (var(11) - 1), cond(var(11) = 7, 10, cond(var(11) = 8, 4, cond(var(11) = 9, 2, cond(var(11) >= 10, 1, var(12))))))
ignorehitpause = 1
[state 3105, Score]
type = parentvaradd
triggerall = var(0) = 1
trigger1 = movehit = 1 && numtarget
var(20) = cond(animelemtime(23) <= 0, 200, 100)
ignorehitpause = 1
[state 3105, Hit Counter]
type = parentvaradd
triggerall = var(0) = 1
trigger1 = movehit = 1 && numtarget
var(51) = 1
ignorehitpause = 1
[state 3105, Hit Counter]
type = parentvaradd
triggerall = var(0) = 1
trigger1 = movehit = 1 && numtarget
var(52) = 1
ignorehitpause = 1
[state 3105, Reprisal]
type = parentvarset
triggerall = var(0) = 1
trigger1 = var(45) = 1
trigger1 = movehit = 1 && numtarget
var(45) = 4
ignorehitpause = 1
[state 3105, Cornerpush Target ID]
type = parentvarset
triggerall = var(0) = 1
trigger1 = movecontact = 1 && numtarget
var(57) = (var(57) := target,ID)
ignorehitpause = 1
[state 3105, Target ID]
type = parentvarset
triggerall = var(0) = 1
trigger1 = movecontact = 1 && numtarget
var(58) = (var(58) := target,ID)
ignorehitpause = 1
[state 3105, Cornerpush Force]
type = parentvarset
triggerall = var(0) = 1
trigger1 = movecontact = 1 && numtarget
fvar(1) = target,gethitvar(xvel) ; * (1.0 + cond(var(51) * 0.05 < 0.5, var(51) * 0.05, 0.5))
ignorehitpause = 1
[state 3105, Cornerpush Duration]
type = parentvarset
triggerall = var(0) = 1
trigger1 = movecontact = 1 && numtarget
fvar(2) = fvar(3)
ignorehitpause = 1

[state 3105, Hit Sound]
type = playsnd
triggerall = var(0) = 1
trigger1 = movecontact = 1 || movereversed = 1
trigger2 = prevstateno && !time
value = cond(movehit, 200, 120), cond(movehit, var(3), var(4)) + 40 * cond(numhelper(4000), movehit && helper(4000),var(38) && (var(3) = [200, 330]), 0)
channel = 2
ignorehitpause = 1

[state 3105, Hitspark]
type = helper
triggerall = var(0) = 1
trigger1 = movecontact = 1 || movereversed = 1
trigger2 = prevstateno && !time
name = "Hitspark"
ID = 6100
stateno = cond(movehit, 6100, 6105)
postype = p1
pos = ceil(cond(p2dist x < var(7), p2dist x, var(7)) * const(size.xscale)), ceil(var(8) * const(size.yscale))
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1

[state 3105, Electricspark]
type = helper
triggerall = var(0) = 1
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = playeridexist(var(58)) && movehit = 1
name = "Electricspark"
ID = 6175
stateno = 6175
postype = left
pos = ceil(playerid(var(58)),screenpos x), ceil(playerid(var(58)),pos y)
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0
supermovetime = 2147483647
pausemovetime = 2147483647
ignorehitpause = 1

[state 3105, Miss]
type = hitdef
trigger1 = hitpausetime || var(1) >= 5
attr = S, HP
hitflag = 
ignorehitpause = 1

[state 3105, Shock]
type = targetstate
triggerall = var(0) = 1
triggerall = movehit = 1 && numtarget(5800)
trigger1 = target(5800),selfanimexist(2147483647) && target(5800),selfanimexist(-2147483647)
trigger1 = target(5800),authorname != "RajaaBoy"
; trigger1 = target(5800),authorname != "YourName"
trigger2 = !target(5800),selfanimexist(2147483647) || !target(5800),selfanimexist(-2147483647)
value = 5800
ID = 5800
ignorehitpause = 1

;========================< Projectile Destroy >========================

[state 3105, End State]
type = changestate
trigger1 = var(1) >= 5
value = 3107
ignorehitpause = 1

[state 3105, Destroy Helper]
type = destroyself
trigger1 = !animtime
ignorehitpause = 1

[state 3105, Trigger Limiter]
type = varset
trigger1 = !hitpausetime
var(0) = 0
ignorehitpause = 1

;=========================================================================
; Thunder Canceled 1
;=========================================================================
[Statedef 3106]
type = S
movetype = A
physics = N
ctrl = 0
movehitpersist = 1

[state 3106, Hit Counter]
type = varadd
trigger1 = !time
var(1) = 1

[state 3106, Change Animation]
type = changeanim
trigger1 = 1
value = 3105 + cond(numhelper(4000), helper(4000),var(36) != 0, 0)
elem = animelemno(0)

[state 3106, Special Effect]
type = assertspecial
trigger1 = cond(numhelper(4000), helper(4000),var(36) != 0, 0)
flag = noshadow

[state 3106, Priority]
type = sprpriority
trigger1 = 1
value = 4

[state 3106, Freeze Position]
type = posfreeze
trigger1 = 1
value = 1

[state 3106, Vulnerability]
type = hitby
trigger1 = 0
value = SCA,AP
time = -1

[state 3106, Hit Override]
type = hitoverride
trigger1 = 0
attr = SCA,AP
stateno = 3106
slot = 0
time = -1
forceair = 0

[state 3106, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 3106, Hit Sound]
type = playsnd
trigger1 = !time
value = 120, 10
channel = 2

[state 3106, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 3106, Miss]
type = hitdef
trigger1 = 1
attr = S, HP
hitflag = 

[state 3106, End State]
type = changestate
trigger1 = time >= cond(var(1) < 5, 6, 0)
value = cond(var(1) < 2, 3105, 3107)

;=========================================================================
; Thunder End 1
;=========================================================================
[Statedef 3107]
type = S
movetype = I
physics = N
ctrl = 0
velset = 0, 0
movehitpersist = 1

[state 3107, Change Animation]
type = changeanim
trigger1 = !time
value = 9999

[state 3107, Special Effect]
type = assertspecial
trigger1 = cond(numhelper(4000), helper(4000),var(36) != 0, 0)
flag = noshadow

[state 3107, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 3107, Destroy]
type = destroyself
trigger1 = time > 8

;=========================================================================
; Thunder Reflected 1
;=========================================================================
[Statedef 3110]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 4

; var(0) = trigger limiter
; var(1) = hit count
; var(2) = hit on animelem 22
; sysvar(0 - 4) = after hit velocity variable

;========================< Projectile Configuration >========================

[state 3110, Trigger Limiter]
type = varadd
trigger1 = movecontact = 1 || movereversed = 1
var(0) = 1
ignorehitpause = 1

[state 3110, Hit Counter]
type = varadd
triggerall = var(0) = 1
trigger1 = movecontact = 1 || movereversed = 1
var(1) = 1
ignorehitpause = 1

[state 3110, Reset Projectile]
type = varset
trigger1 = prevstateno = 9992 && !time
var(0) = 0
[state 3110, Reset Projectile]
type = varset
trigger1 = prevstateno = 9992 && !time
var(1) = 0
[state 3110, Reset Projectile]
type = null ; varset
trigger1 = prevstateno = 9992 && !time
var(2) = 0

[state 3110, Projectile Configuration]
type = null
; Air Reset, Accumulated Juggle Points, Juggle Overdraft
trigger1 = var(9) := root,var(9) ||var(11) := root,var(11) || var(12) := root,var(12) || var(13) := root,var(13) || 1
; Counter Hit, Hit Counter, Damage Scale Hit Counter, Damage Scale
trigger1 = var(45) := root,var(45) || var(51) := root,var(51) || var(52) := root,var(52) || fvar(0) := cond(root,fvar(0) < 0.92, 0.92, root,fvar(0)) || 1
; Attack Level, Power Adder, Power Multiplier
trigger1 = !prevstateno && !time
trigger1 = var(17) := 3 || var(18) := root,var(18) || var(25) := root,var(25) || fvar(33) := root,fvar(33)

[state 3110, Pause Frame 1]
type = changeanim
trigger1 = animelemtime(21) <= 0
trigger1 = hitpausetime
trigger1 = var(2) := 1
value = 3105 + cond(numhelper(4000), helper(4000),var(36) != 0, 0)
elem = 21
ignorehitpause = 1
persistent = 0

[state 3110, Pause Frame 2]
type = changeanim
trigger1 = animelemtime(22) >= 0 && animelemtime(23) <= 0
trigger1 = hitpausetime
trigger1 = var(2) := 2
value = 3105 + cond(numhelper(4000), helper(4000),var(36) != 0, 0)
elem = 23
ignorehitpause = 1
persistent = 0

[state 3110, Pause Frame 3]
type = changeanim
trigger1 = movecontact = 1
trigger1 = cond(var(2) = 2, animelemtime(23) >= 1, 1)
value = 3105 + cond(numhelper(4000), helper(4000),var(36) != 0, 0)
elem = animelemno(0) + 1

[state 3110, Special Effect]
type = assertspecial
trigger1 = cond(numhelper(4000), helper(4000),var(36) != 0, 0)
flag = noshadow
ignorehitpause = 1

[state 3110, Priority]
type = sprpriority
trigger1 = 1
value = 4
ignorehitpause = 1

[state 3110, Vulnerability]
type = hitby
trigger1 = var(1) < 5
value = SCA,AP
time = -1
ignorehitpause = 1

[state 3110, Hit Override]
type = hitoverride
trigger1 = var(1) < 5
attr = SCA,AP
stateno = 3111
slot = 0
time = -1
forceair = 0
ignorehitpause = 1

[state 3110, Vulnerability]
type = nothitby
trigger1 = var(1) >= 5
value = SCA
time = -1
ignorehitpause = 1

[state 3110, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)
ignorehitpause = 1

;========================< Projectile Functionality >========================

[state 3110, Set Velocity]
type = velset
trigger1 = animelemtime(1) >= 0
x = 0.5 * root,fvar(14)

[state 3110, Set Velocity]
type = velset
trigger1 = animelemtime(23) >= 1
x = 1.5 * root,fvar(14)
[state 3110, Set Velocity]
type = velset
trigger1 = animelemtime(29) >= 0
x = 3.5 * root,fvar(14)
[state 3110, Set Velocity]
type = velset
trigger1 = animelemtime(35) >= 0
x = 6.5 * root,fvar(14)
[state 3110, Set Velocity]
type = velset
trigger1 = animelemtime(44) >= 0
x = 9.5 * root,fvar(14)

[state 3110, Velocity After Hit]
type = varadd
trigger1 = var(0) = 1
trigger1 = animelemtime(23) >= 1
sysvar(0) = 1
ignorehitpause = 1
[state 3110, Set Velocity]
type = velset
trigger1 = sysvar(0) >= 2
trigger1 = animelemtime(23) >= 1
x = 4.875 * root,fvar(14)
[state 3110, Set Velocity]
type = velset
trigger1 = sysvar(0) >= 2
trigger1 = animelemtime(29) >= 0
x = 6.875 * root,fvar(14)
[state 3110, Set Velocity]
type = velset
trigger1 = sysvar(0) >= 2
trigger1 = animelemtime(35) >= 0
x = 9.875 * root,fvar(14)
[state 3110, Set Velocity]
type = velset
trigger1 = sysvar(0) >= 2
trigger1 = animelemtime(44) >= 0
x = 12.875 * root,fvar(14)

[state 3110, Velocity After Hit]
type = varadd
trigger1 = var(0) = 1
trigger1 = animelemtime(29) >= 0
sysvar(1) = 1
ignorehitpause = 1
[state 3110, Set Velocity]
type = velset
trigger1 = sysvar(1) >= 2
trigger1 = animelemtime(29) >= 0
x = 4.875 * root,fvar(14)
[state 3110, Set Velocity]
type = velset
trigger1 = sysvar(1) >= 2
trigger1 = animelemtime(35) >= 0
x = 7.875 * root,fvar(14)
[state 3110, Set Velocity]
type = velset
trigger1 = sysvar(1) >= 2
trigger1 = animelemtime(44) >= 0
x = 10.875 * root,fvar(14)

[state 3110, Velocity After Hit]
type = varadd
trigger1 = var(0) = 1
trigger1 = animelemtime(35) >= 0
sysvar(2) = 1
ignorehitpause = 1
[state 3110, Set Velocity]
type = velset
trigger1 = sysvar(2) >= 2
trigger1 = animelemtime(35) >= 0
x = 4.875 * root,fvar(14)
[state 3110, Set Velocity]
type = velset
trigger1 = sysvar(2) >= 2
trigger1 = animelemtime(44) >= 0
x = 7.875 * root,fvar(14)

[state 3110, Velocity After Hit]
type = varadd
trigger1 = var(0) = 1
trigger1 = animelemtime(44) >= 0
sysvar(3) = 1
ignorehitpause = 1
[state 3110, Set Velocity]
type = velset
trigger1 = sysvar(3) >= 1
trigger1 = animelemtime(44) >= 0
x = 4.875 * root,fvar(14)

[state 3110, Miss]
type = hitdef
trigger1 = !hitpausetime
trigger1 = !animelemtime(animelemno(0))
attr = , HP
hitflag = 

[state 3110, Juggle Points 1]
type = null
trigger1 = animelemno(0) % 2 = 1 || var(2) = 1 && !animelemtime(22)
trigger1 = var(10) := 1 || var(17) := 3 || var(49) := 3110
[state 3110, Hit 1]
type = hitdef
triggerall = numenemy
triggerall = !enemy,var(13) ; && !var(9) var(49) != var(50)
trigger1 = animelemno(0) % 2 = 1 || var(2) = 1 && !animelemtime(22)
ID = 5800 + 0 * (var(49) := 3110)
attr = , HP
damage = ceil(cond(63 * fvar(0) < 7, 7, 63 * fvar(0))), 7
fall.envshake.phase = 9 ; stun damage
fall.envshake.freq = var(17) ; hit/attack level
fall.envshake.ampl = 2 ; hit y position
guardflag = M
hitflag = MAF
affectteam = F
priority = 4, Hit
pausetime = cond(var(1) < 4, 6, 0), 9
hitsound = -1 + 0 * (var(3) := 260)
guardsound = -1 + 0 * (var(4) := 10)
sparkno = -1 + 0 * (var(5) := 33)
guard.sparkno = -1 + 0 * (var(6) := 2)
sparkxy = 0 * (var(7) := 16), 0 * (var(8) := cond(random < 500, random % 40, -random % 40))
animtype = hard
ground.type = low
air.animtype = back
air.type = low
ground.slidetime = 12
ground.hittime = 14
guard.slidetime = 12
guard.hittime = 13
air.hittime = cond((root,var(54) = [1, 2]), 0, 128)
ground.velocity = -8.5 * root,fvar(14), -5.0625 * root,fvar(15)
guard.velocity = -16.0 * root,fvar(18)
air.velocity = -8.5 * root,fvar(14), -5.0625 * root,fvar(15)
airguard.velocity = -4.0 * root,fvar(14), -4.0 * root,fvar(15)
ground.cornerpush.veloff = 0.0 * (fvar(3) := -1.0)
guard.cornerpush.veloff = 0.0
yaccel = 0.375 * root,fvar(20)
getpower = 0, 0
givepower = 0, 0
envshake.time = 4
envshake.ampl = 1
envshake.freq = 128
fall = 1
air.fall = 1
fall.recover = 0
fall.recovertime = 0
fall.animtype = back
forcestand = 1
forcenofall = 0
p2facing = p2statetype != A

;========================< Projectile Contact >========================

[state 3110, Reflective Juggle Points 1]
type = parentvarset
trigger1 = var(0) = 1
trigger1 = movecontact = 1 || movereversed = 1
fvar(35) = cond(var(49) = 3110, 1, 0)
ignorehitpause = 1

[state 3110, Reflective Juggle Points]
type = parentvarset
trigger1 = var(0) = 1
trigger1 = movecontact = 1 || movereversed = 1
fvar(36) = 1
ignorehitpause = 1

[state 3110, Hit Sound]
type = playsnd
triggerall = var(0) = 1
trigger1 = movecontact = 1 || movereversed = 1
trigger2 = prevstateno && !time
value = cond(movehit, 200, 120), cond(movehit, var(3), var(4)) + 40 * cond(numhelper(4000), movehit && helper(4000),var(38) && (var(3) = [200, 330]), 0)
channel = 2
ignorehitpause = 1

[state 3110, Hitspark]
type = helper
triggerall = var(0) = 1
trigger1 = movecontact = 1 || movereversed = 1
trigger2 = prevstateno && !time
name = "Hitspark"
ID = 6100
stateno = cond(movehit, 6100, 6105)
postype = p1
pos = ceil(cond(rootdist x < var(7), rootdist x, var(7)) * const(size.xscale)), ceil(var(8) * const(size.yscale))
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1

[state 3110, Electricspark]
type = helper
triggerall = var(0) = 1
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = playeridexist(var(58)) && movehit = 1
name = "Electricspark"
ID = 6175
stateno = 6175
postype = left
pos = ceil(playerid(var(58)),screenpos x), ceil(playerid(var(58)),pos y)
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0
supermovetime = 2147483647
pausemovetime = 2147483647
ignorehitpause = 1

[state 3110, Miss]
type = hitdef
trigger1 = hitpausetime || var(1) >= 5
attr = , HP
hitflag = 
ignorehitpause = 1

[state 3110, Shock]
type = targetstate
triggerall = var(0) = 1
triggerall = movehit = 1 && numtarget(5800)
trigger1 = target(5800),selfanimexist(2147483647) && target(5800),selfanimexist(-2147483647)
trigger1 = target(5800),authorname != "RajaaBoy"
; trigger1 = target(5800),authorname != "YourName"
trigger2 = !target(5800),selfanimexist(2147483647) || !target(5800),selfanimexist(-2147483647)
value = 5800
ID = 5800
ignorehitpause = 1

;========================< Projectile Destroy >========================

[state 3110, End State]
type = changestate
trigger1 = var(1) >= 5
value = 3107
ignorehitpause = 1

[state 3110, Destroy Helper]
type = destroyself
trigger1 = !animtime
ignorehitpause = 1

[state 3110, Trigger Limiter]
type = varset
trigger1 = !hitpausetime
var(0) = 0
ignorehitpause = 1

;=========================================================================
; Thunder Canceled 2
;=========================================================================
[Statedef 3111]
type = S
movetype = A
physics = N
ctrl = 0
movehitpersist = 1

[state 3111, Hit Counter]
type = varadd
trigger1 = !time
var(1) = 1

[state 3111, Change Animation]
type = changeanim
trigger1 = 1
value = 3110 + cond(numhelper(4000), helper(4000),var(36) != 0, 0)
elem = animelemno(0)

[state 3111, Special Effect]
type = assertspecial
trigger1 = cond(numhelper(4000), helper(4000),var(36) != 0, 0)
flag = noshadow

[state 3111, Priority]
type = sprpriority
trigger1 = 1
value = 4

[state 3111, Freeze Position]
type = posfreeze
trigger1 = 1
value = 1

[state 3111, Vulnerability]
type = hitby
trigger1 = 0
value = SCA,AP
time = -1

[state 3111, Hit Override]
type = hitoverride
trigger1 = 0
attr = SCA,AP
stateno = 3111
slot = 0
time = -1
forceair = 0

[state 3111, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 3111, Hit Sound]
type = playsnd
trigger1 = !time
value = 120, 10
channel = 2

[state 3111, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 3111, Miss]
type = hitdef
trigger1 = 1
attr = S, NP
hitflag = 

[state 3111, End State]
type = changestate
trigger1 = time >= cond(var(1) < 5, 6, 0)
value = cond(var(1) < 2, 3110, 3107)

;=========================================================================
; Aegis Reflector
;=========================================================================
[StateDef 3200]
type = S
movetype = A
physics = N
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 1

[State 3000]
type = Helper
trigger1 = time = 0
Persistent = 0
name = "cutin"
stateno = 6969
ID = 6969
pos = -30,-230
postype = back
keyctrl = 0
ownpal = 0
size.xscale = 0.8
size.yscale = 0.8
supermovetime = 99999999
pausemovetime = 99999999
sprpriority = -105
helpertype = normal

;========================< Super Art Indication >========================

[state 3200, Level, Timer]
type = null
triggerall = !time
triggerall = var(0) := 0 || var(1) := 0 || var(17) := 2 || 1
triggerall = var(29) := 0 || fvar(30) := 0 || fvar(31) := 0 || 1
trigger1 = cond(ailevel, 1 * (var(18) := var(18) + !var(18)), 0)
trigger2 = cond(!fvar(32) && (command = "x" && command ="y" || command = "x" && command = "z" || command = "y" && command = "z"), 1 * (var(18) := 8), 0)
trigger3 = cond(!fvar(32) && (command = "z" || command = "NE_z"), 1 * (var(18) := 7), 0)
trigger4 = cond(!fvar(32) && (command = "y" || command = "NE_y"), 1 * (var(18) := 6), 0)
trigger5 = var(18) := cond(fvar(32), floor(fvar(32)), 5) || fvar(32) := 0

[state 3200, Cornerpush]
type = varset
trigger1 = !time
sysfvar(2) = fvar(2)
[state 3200, Cornerpush]
type = null
trigger1 = !time
trigger1 = fvar(2) := -1.0
trigger2 = time = 55
trigger2 = fvar(2) := sysfvar(2)

[state 3200, Overdraft Juggle]
type = varset
triggerall = !time
trigger1 = var(15) % 50 = 1 || var(15) % 50 = 2 || var(15) % 50 = 4|| var(15) % 50 = 6
trigger2 = var(15) % 60 = 1 || var(15) % 60 = 4
trigger3 = var(16) = 1 || var(16) = 2
trigger4 = var(16) = 101 || var(16) = 102
trigger4 = prevstateno != [3200, 3299]
var(13) = 0

[state 3200, Set Position]
type = posset
trigger1 = !time
y = 0

[state 3200, Change Animation]
type = changeanim
trigger1 = !time
value = 3200

[state 3200, Add Power]
type = poweradd
trigger1 = !time
value = -var(27) - var(28) * (var(29) != 0)

[state 3200, Super Effect]
type = helper
trigger1 = !time
name = "Super Effect"
ID = 6205
stateno = 6205
postype = p1
ownpal = 1
keyctrl = 0
size.xscale = 0.5
size.yscale = 0.5
supermovetime = 2147483647
pausemovetime = 2147483647

[state 3200, Super Pause]
type = superpause
trigger1 = !time
time = 55
movetime = (var(46) := 55)
unhittable = 1
anim = -1
sound = -1
p2defmul = 1
poweradd = 0
darken = 0

[state 3200, Vulnerability]
type = nothitby
trigger1 = animelemtime(11) < 0
value = SCA
time = 1

;========================< Move Functions >========================

[state 3200, Voice]
type = playsnd
trigger1 = !animelemtime(1)
value = 3200, 0
volumescale = 100
channel = 0

[state 3200, Sound]
type = playsnd
trigger1 = !animelemtime(12)
value = 3, 1
volumescale = 100

[state 3200, Reflector]
type = helper
trigger1 = !animelemtime(12)
name = "Reflector"
ID = 3205
stateno = 3205
postype = p1
ownpal = 1
keyctrl = 0
size.xscale = const(size.xscale) ; cond(numhelper(4000), cond(helper(4000),var(36) != 0, 0.5, const(size.xscale)), const(size.xscale))
size.yscale = const(size.yscale) ; cond(numhelper(4000), cond(helper(4000),var(36) != 0, 0.5, const(size.yscale)), const(size.yscale))

;[state 1350, Voice]
;type = playsnd
;trigger1 = !animelemtime(12)
;value = 181,3
;volumescale = 100

[state 3200, Idle]
type = statetypeset
trigger1 = numhelper(3205)
movetype = I
persistent = 0

[state 3200, Control]
type = ctrlset
trigger1 = !animtime
value = 1
persistent = 0

[state 3200, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; Reflector Start 1
;=========================================================================
[Statedef 3205]
type = S
movetype = A
physics = N
ctrl = 0
velset = vel x, vel y
sprpriority = 4

; var(0) = trigger limiter
; var(1) = hit count
; var(2) = backward or forward
; var(14) = loops
; var(15) = hit loop
; var(16) = cool down

;========================< Projectile Configuration >========================

[state 3205, Trigger Limiter]
type = varadd
trigger1 = movecontact = 1 || movereversed = 1
var(0) = 1
ignorehitpause = 1

[state 3205, Hit Counter]
type = varadd
triggerall = var(0) = 1
trigger1 = movecontact = 1 || movereversed = 1
var(1) = 1
ignorehitpause = 1

[state 3205, Pause Animation]
type = varadd
trigger1 = var(16)
var(16) = -1

[state 3205, Projectile Configuration]
type = null
; Air Reset, Accumulated Juggle Points, Juggle Overdraft
trigger1 = var(9) := root,var(9) ||var(11) := root,var(11) || var(12) := root,var(12) || var(13) := root,var(13) || 1
; Counter Hit, Hit Counter, Damage Scale Hit Counter, Damage Scale
trigger1 = var(45) := root,var(45) || var(51) := root,var(51) || var(52) := root,var(52) || fvar(0) := cond(root,fvar(0) < 0.92, 0.92, root,fvar(0)) || 1
; Attack Level, Power Adder, Power Multiplier
trigger1 = !prevstateno && !time
trigger1 = var(17) := 2 || var(18) := root,var(18) || var(25) := root,var(25) || fvar(33) := root,fvar(33)

[state 3205, Change Animation]
type = changeanim
trigger1 = !prevstateno && !time
value = 3205 + (cond((var(18) = [5, 8]), var(18) - 5, 0)) ; + cond(numhelper(4000), helper(4000),var(36) != 0, 0)

[state 3205, Loop Animation]
type = changeanim
trigger1 = !animtime
trigger2 = var(18) != 8 && !hitpausetime
trigger2 = !animelemtime(15) && !var(15)
trigger3 = var(18) = 8 && !hitpausetime
trigger3 = !animelemtime(13) && !var(15)
value = anim
elem = cond(var(18) = 8, 3 + 3 * !animtime, 5 + 4 * !animtime)

[state 3205, Pause Animation]
type = varset
trigger1 = !hitpausetime
var(15) = 0

[state 3205, Pause Animation]
type = changeanim
triggerall = hitpausetime
trigger1 = var(18) != 8
trigger1 = var(15) := 1
trigger1 = animelemtime(15) < 0
trigger2 = var(18) = 8
trigger2 = var(15) := 1
trigger2 = animelemtime(13) < 0
value = anim
elem = cond(var(18) = 8, 13, 15)
ignorehitpause = 1

[state 3205, Backward or Forward]
type = varset
trigger1 = var(18) != 8
trigger1 = !var(2) && !animelemtime(5)
var(2) = cond(p2dist x < 0, -1, 1)
ignorehitpause = 1

[state 3205, Loop Detection]
type = varadd
trigger1 = var(18) != 8
trigger1 = !animelemtime(5)
trigger2 = var(18) = 8
trigger2 = !animelemtime(3)
var(14) = 1
ignorehitpause = 1

[state 3205, Change Animation]
type = changeanim
trigger1 = numhelper(3215)
trigger1 = helper(3215),hitpausetime
value = anim
elem = animelemno(0)

[state 3205, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 3205, Priority]
type = sprpriority
trigger1 = 1
value = 4
ignorehitpause = 1

[state 3205, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[state 3205, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)
ignorehitpause = 1

;========================< Projectile Functionality >========================

[state 3205, Bind to Parent]
type = bindtoparent
trigger1 = !prevstateno && !time
pos = 36, -1

[state 3205, Set Velocity]
type = velset
trigger1 = !prevstateno && !time
trigger1 = var(18) != 8
x = cond(var(18) = 5, 4.375, cond(var(18) = 6, 7.28125, 9.75)) * root,fvar(14)
[state 3205, Increment Velocity]
type = veladd
trigger1 = cond(numhelper(3215), !helper(3215),hitpausetime, 1)
trigger1 = !var(14) && time
trigger1 = var(18) != 8
trigger1 = vel x
x = -0.25 * root,fvar(16)
[state 3205, Increment Velocity]
type = veladd
trigger1 = cond(numhelper(3215), !helper(3215),hitpausetime, 1)
trigger1 = var(14)
trigger1 = var(18) != 8
trigger1 = vel x
x = 0.00390625 * -var(2) * root,fvar(16)
[state 3205, Set Velocity]
type = velset
trigger1 = var(14) = 1 &&  var(18) != 8
trigger1 = !animelemtime(5)
x = 0.5 * var(2) * root,fvar(14)
[state 3205, Set Velocity]
type = velset
trigger1 = var(18) != 8
trigger1 = var(2) = 1 && vel x < 0
trigger2 = var(2) = -1 && vel x > 0
x = 0.0 * root,fvar(14)

[state 3205, Set Velocity]
type = velset
trigger1 = !prevstateno && !time
trigger1 = var(18) = 8
x = 4.0 * root,fvar(14)
y = -4.5 * root,fvar(15)
[state 3205, Increment Velocity]
type = veladd
trigger1 = cond(numhelper(3215), !helper(3215),hitpausetime, 1)
trigger1 = time
trigger1 = var(18) = 8
trigger1 = vel x || vel y
x = -0.1640625 * root,fvar(16)
y = 0.1875 * root,fvar(17)
[state 3205, Set Velocity]
type = velset
trigger1 = var(18) = 8
trigger1 = vel x < 0
x = 0.0 * root,fvar(14)
[state 3205, Set Velocity]
type = velset
trigger1 = var(18) = 8
trigger1 = vel y > 0
y = 0.0 * root,fvar(14)

[state 3205, Freeze Position]
type = posfreeze
trigger1 = numhelper(3215)
trigger1 = helper(3215),hitpausetime
value = 1

[state 3205, Reverser]
type = helper
; trigger1 = !numhelper(3215)
trigger1 = cond(var(18) = 8, !animelemtime(3), !animelemtime(5))
name = "Reverser"
ID = 3215
stateno = 3215
postype = p1
ownpal = 0
keyctrl = 0
size.xscale = cond(numhelper(4000), cond(helper(4000),var(36) != 0, 0.5, const(size.xscale)), const(size.xscale))
size.yscale = cond(numhelper(4000), cond(helper(4000),var(36) != 0, 0.5, const(size.yscale)), const(size.yscale))
persistent = 0

[state 3205, Reverser]
type = helper
; trigger1 = !numhelper(3215)
trigger1 = cond(var(18) = 8, !animelemtime(3), !animelemtime(5))
name = "Reverser"
ID = 3216
stateno = 3215
postype = p1
ownpal = 0
keyctrl = 0
size.xscale = cond(numhelper(4000), cond(helper(4000),var(36) != 0, 0.5, const(size.xscale)), const(size.xscale))
size.yscale = cond(numhelper(4000), cond(helper(4000),var(36) != 0, 0.5, const(size.yscale)), const(size.yscale))
persistent = 0

[state 3205, Cushion]
type = helper
; trigger1 = !numhelper(3215)
trigger1 = cond(var(18) = 8, !animelemtime(3), !animelemtime(5))
name = "Cushion"
ID = 3220
stateno = 3220
postype = p1
ownpal = 0
keyctrl = 0
size.xscale = cond(numhelper(4000), cond(helper(4000),var(36) != 0, 0.5, const(size.xscale)), const(size.xscale))
size.yscale = cond(numhelper(4000), cond(helper(4000),var(36) != 0, 0.5, const(size.yscale)), const(size.yscale))
persistent = 0

[state 3205, Miss]
type = hitdef
; trigger1 = root,var(54) = [1, 2]
trigger1 = !hitpausetime
attr = , HA
hitflag = 

[state 3205, Juggle Points 1]
type = null
trigger1 = cond(var(18) = 8, animelemtime(3) >= 0 && animelemtime(13) < 0, animelemtime(5) >= 0 && animelemtime(15) < 0)
trigger1 = p2bodydist x <= 8 || var(16) <= 0 && cond(numenemy, cond(enemynear,movetype = A, !enemynear,var(49), p2movetype != A), p2movetype != A)
trigger1 = var(10) := 1 || var(17) := 3 || var(49) := 3205
[state 3205, Hit 1]
type = hitdef
triggerall = !var(13) ; && !var(9) var(49) != var(50)
triggerall = cond(var(18) = 8, animelemtime(3) >= 0 && animelemtime(13) < 0, animelemtime(5) >= 0 && animelemtime(15) < 0)
trigger1 = p2bodydist x <= 8
trigger2 = numenemy && root,var(54) = [1, 2]
trigger2 = var(16) <= 0 && cond(enemynear,movetype = A, enemynear,var(49) <= -1, p2movetype != A)
trigger3 = root,var(54) != [1, 2]
trigger3 = var(16) <= 0 && p2movetype != A
ID = 5800 + 0 * (var(49) := 3205)
attr = , HA
damage = ceil(cond(25 * fvar(0) < 7, 7, 25 * fvar(0))), 7
fall.envshake.phase = 0 ; stun damage
fall.envshake.freq = var(17) ; hit/attack level
fall.envshake.ampl = 0 ; hit y position
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 5, 4
hitsound = -1 + 0 * (var(3) := 260)
guardsound = -1 + 0 * (var(4) := cond(p2name = "Urien", 20, 10))
sparkno = -1 + 0 * (var(5) := 33)
guard.sparkno = -1 + 0 * (var(6) := 2)
sparkxy = 0 * (var(7) := 16), 0 * (var(8) := -16 - random % 96)
animtype = medium
ground.type = high
air.animtype = back
air.type = low
ground.slidetime = 9
ground.hittime = 13
guard.slidetime = 9
guard.hittime = 13
air.hittime = cond((root,var(54) = [1, 2]), 0, 128)
ground.velocity = -10.0 * root,fvar(14)
guard.velocity = -10.0 * root,fvar(18)
air.velocity = cond(p2dist x < 0, 4.25, -4.25) * root,fvar(14), -6.75 * root,fvar(15)
airguard.velocity = cond(p2dist x < 0, 4.0, -4.0) * fvar(14), -4.0 * root,fvar(15)
ground.cornerpush.veloff = 0.0 * (fvar(3) := -1.0)
guard.cornerpush.veloff = 0.0
yaccel = 0.5 * root,fvar(20)
getpower = 0, 0
givepower = 0, 0
envshake.time = 4
envshake.ampl = 1
envshake.freq = 128
fall = 0
air.fall = 1
fall.recover = 0
fall.recovertime = 0
fall.animtype = back
forcestand = 1
forcenofall = 0
p2facing = p2statetype != A

;========================< Projectile Contact >========================

[state 3205, Accumulated Juggle Points]
type = parentvaradd
triggerall = var(0) = 1
trigger1 = movehit = 1 && numtarget
var(11) = var(10)
ignorehitpause = 1
[state 3205, Set Juggle Window]
type = parentvarset
triggerall = var(0) = 1
trigger1 = movehit = 1 && numtarget
trigger1 = var(11) := root,var(11) || 1
var(12) = cond((var(11) = [1, 6]), 120 - 20 * (var(11) - 1), cond(var(11) = 7, 10, cond(var(11) = 8, 4, cond(var(11) = 9, 2, cond(var(11) >= 10, 1, var(12))))))
ignorehitpause = 1
[state 3205, Score]
type = parentvaradd
triggerall = var(0) = 1
trigger1 = movehit = 1 && numtarget
var(20) = 100
ignorehitpause = 1
[state 3205, Hit Counter]
type = parentvaradd
triggerall = var(0) = 1
trigger1 = movehit = 1 && numtarget
var(51) = 1
ignorehitpause = 1
[state 3205, Hit Counter]
type = parentvaradd
triggerall = var(0) = 1
trigger1 = movehit = 1 && numtarget
var(52) = 1
ignorehitpause = 1
[state 3205, Reprisal]
type = parentvarset
triggerall = var(0) = 1
trigger1 = var(45) = 1
trigger1 = movehit = 1 && numtarget
var(45) = 4
ignorehitpause = 1
[state 3205, Cornerpush Target ID]
type = parentvarset
triggerall = var(0) = 1
trigger1 = movecontact = 1 && numtarget
var(57) = (var(57) := target,ID)
ignorehitpause = 1
[state 3205, Target ID]
type = parentvarset
triggerall = var(0) = 1
trigger1 = movecontact = 1 && numtarget
var(58) = (var(58) := target,ID)
ignorehitpause = 1
[state 3205, Cornerpush Force]
type = parentvarset
triggerall = var(0) = 1
trigger1 = movecontact = 1 && numtarget
fvar(1) = target,gethitvar(xvel) ; * (1.0 + cond(var(51) * 0.05 < 0.5, var(51) * 0.05, 0.5))
ignorehitpause = 1
[state 3205, Cornerpush Duration]
type = parentvarset
triggerall = var(0) = 1
trigger1 = movecontact = 1 && numtarget
fvar(2) = fvar(3)
ignorehitpause = 1

[state 3205, Hit Sound]
type = playsnd
triggerall = var(0) = 1
trigger1 = movecontact = 1 || movereversed = 1
trigger2 = prevstateno && !time
value = 120, 20
channel = 6
ignorehitpause = 1

[state 3205, Hit Sound]
type = playsnd
triggerall = var(0) = 1
trigger1 = movecontact = 1 || movereversed = 1
trigger2 = prevstateno && !time
value = cond(movehit, 200, 120), cond(movehit, var(3), var(4)) + 40 * cond(numhelper(4000), movehit && helper(4000),var(38) && (var(3) = [200, 330]), 0)
channel = 2
ignorehitpause = 1

[state 3205, Hitspark]
type = helper
triggerall = var(0) = 1
trigger1 = movecontact = 1 || movereversed = 1
trigger2 = prevstateno && !time
name = "Hitspark"
ID = 6100
stateno = cond(movehit, 6100, 6105)
postype = p1
pos = ceil(cond(p2dist x < var(7), p2dist x, var(7)) * const(size.xscale)), ceil(var(8) * const(size.yscale))
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1

[state 3205, Electricspark]
type = helper
triggerall = var(0) = 1
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = playeridexist(var(58)) && movehit = 1
name = "Electricspark"
ID = 6175
stateno = 6175
postype = left
pos = ceil(playerid(var(58)),screenpos x), ceil(playerid(var(58)),pos y)
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0
supermovetime = 2147483647
pausemovetime = 2147483647
ignorehitpause = 1

[state 3205, Reflector Spark]
type = helper
triggerall = var(0) = 1 && var(1) < 6
trigger1 = movecontact = 1 || movereversed = 1
trigger2 = prevstateno && !time
name = "Reflector Spark"
ID = 3210
stateno = 3210
postype = p1
ownpal = 0
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0
ignorehitpause = 1

[state 3205, Miss]
type = hitdef
; trigger1 = root,var(54) = [1, 2]
trigger1 = hitpausetime || var(1) >= 6
attr = , HA
hitflag = 
ignorehitpause = 1

[state 3205, Target Facing]
type = targetfacing
trigger1 = movecontact = 1 && numtarget(5800)
trigger1 = target(5800),statetype = A
value = cond((target(5800),pos x - pos x) * facing < 0, 1, -1)

[state 3205, Shock]
type = targetstate
triggerall = var(0) = 1
triggerall = movehit = 1 && numtarget(5800)
trigger1 = target(5800),selfanimexist(2147483647) && target(5800),selfanimexist(-2147483647)
trigger1 = target(5800),authorname != "RajaaBoy"
; trigger1 = target(5800),authorname != "YourName"
trigger2 = !target(5800),selfanimexist(2147483647) || !target(5800),selfanimexist(-2147483647)
value = 5800
ID = 5800
ignorehitpause = 1

;========================< Projectile Destroy >========================

[state 3205, End State]
type = changestate
trigger1 = var(1) >= 6
trigger2 = var(18) = 5 && var(14) >= 12
trigger2 = animelemtime(7) = 1
trigger3 = var(18) = 6 && var(14) >= 11
trigger3 = animelemtime(11) = 1
trigger4 = var(18) = 7 && var(14) >= 11
trigger4 = animelemtime(7) = 1
trigger5 = var(18) = 8 && var(14) >= 12
trigger5 = animelemtime(12) = 1
value = 3210
ignorehitpause = 1

[state 3205, Trigger Limiter]
type = varset
trigger1 = !hitpausetime
var(0) = 0
ignorehitpause = 1

;=========================================================================
; Reflector End 1
;=========================================================================
[Statedef 3210]
type = S
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 4 - ishelper(3210)
movehitpersist = 1

[state 3210, Change Animation]
type = changeanim
trigger1 = !time
value = 3210 + (var(1) >= 6 || ishelper(3210))

[state 3210, Size]
type = angledraw
trigger1 = !time
trigger1 = ishelper(3210)
scale = 1.1, 1.1

[state 3210, Parent Bind]
type = bindtoparent
trigger1 = !time && numhelper(3205)
trigger1 = ishelper(3210)
pos = 0, 0

[state 3210, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 3210, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 3210, Hit Sound]
type = playsnd
trigger1 =  !time
trigger1 = ishelper(3205)
value = 3, 2

[state 3210, Destroy]
type = destroyself
trigger1 = !animtime

;=========================================================================
; Reverse Start 1
;=========================================================================
[Statedef 3215]
type = S
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 5
; movehitpersist = 1
; hitcountpersist = 1

[state 3215, Destroy]
type = destroyself
trigger1 = !numhelper(3205)

[state 3215, Activate Generic Projectile]
type = varadd
trigger1 = var(0)
var(0) = -1
ignorehitpause = 1

[state 3215, Change Animation]
type = changeanim
trigger1 = !time
value = 3215
ignorehitpause = 1

[state 3215, Root Bind]
type = bindtoparent
trigger1 = numhelper(3205)
pos = 0, 0
ignorehitpause = 1

[state 3215, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[state 3215, Reversal]
type = reversaldef
triggerall = ishelper(3215) && numhelper(3205)
triggerall = parent,anim = [3205, 3208]
trigger1 = parent,anim = [3205, 3207]
trigger1 = parent,animelemtime(5) >= 0
trigger2 = parent,anim = 3208
trigger2 = parent,animelemtime(3) >= 0
reversal.attr = SCA,AP
pausetime = 7, 0
sparkno = -1
sparkxy = 0, 0
p1stateno = 3216
p2stateno = cond((root,var(54) = [1, 2]), 3217, 3218)
numhits = 0
ignorehitpause = 1

[state 3215, Reversal]
type = reversaldef
triggerall = ishelper(3216) && numhelper(3205)
triggerall = parent,anim = [3205, 3208]
trigger1 = parent,anim = [3205, 3207]
trigger1 = parent,animelemtime(5) >= 0
trigger2 = parent,anim = 3208
trigger2 = parent,animelemtime(3) >= 0
reversal.attr = SCA,AA
pausetime = 0, 7
sparkno = -1
sparkxy = 0, 0
p1stateno = 3219
numhits = 0
ignorehitpause = 1

[state 3215, Miss]
type = reversaldef
triggerall = numhelper(3205)
trigger1 = parent,stateno != 3205
trigger2 = parent,anim != [3205, 3208]
reversal.attr =
ignorehitpause = 1

[state 3215, Destroy]
type = destroyself
trigger1 = numhelper(3205)
trigger1 = parent,stateno != 3205 || parent,anim != [3205, 3208]
ignorehitpause = 1

;=========================================================================
; Reverse Reflected 1
;=========================================================================
[Statedef 3216]
type = S
movetype = I
physics = N
ctrl = 0
velset = 0, 0

[state 3216, Activate Generic Projectile]
type = varadd
trigger1 = var(0)
var(0) = -1
ignorehitpause = 1

[state 3216, Activate Generic Projectile]
type = varset
trigger1 = root,var(54) != [1, 2]
var(0) = 1
ignorehitpause = 1
persistent = 0

[state 3216, Root Bind]
type = bindtoparent
trigger1 = numhelper(3205)
pos = 0, 0
ignorehitpause = 1

[state 3216, Hit Sound]
type = playsnd
trigger1 =  !time
value = 120, 0
channel = 2
ignorehitpause = 1

[state 3216, Hitspark]
type = helper
trigger1 =  !time
name = "Hitspark"
ID = 6100
stateno = 6105
postype = p1
pos = 0, -72
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1

[state 3216, Destroy]
type = destroyself
trigger1 = !numhelper(3205)
ignorehitpause = 1

[state 3216, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[state 3216, Destroy]
type = destroyself
trigger1 = numhelper(3205)
trigger1 = parent,stateno != 3205 || parent,anim != [3205, 3208]
ignorehitpause = 1

[state 3216, End State]
type = changestate
trigger1 = !time
value = 3215
ignorehitpause = 1

;=========================================================================
; Reverse Destroy 1
;=========================================================================
[Statedef 3217]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 0

[state 3217, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[state 3217, Miss]
type = hitdef
trigger1 = 1
attr = 
hitflag = 

[state 3217, Turn]
type = turn
trigger1 = !time

[state 3217, Destroy]
type = removeexplod
trigger1 = numexplod

[state 3217, Own State]
type = selfstate
trigger1 = !ishelper
value = 5000

[state 3217, Own State]
type = selfstate
triggerall = ishelper
triggerall = selfanimexist(-2147483647) && selfanimexist(2147483647)
trigger1 = authorname = "RajaaBoy"
; trigger2 = authorname = "YourName"
value = 9992

[state 3217, Destroy]
type = destroyself
trigger1 = ishelper

;=========================================================================
; Reverse Destroy 2
;=========================================================================
[Statedef 3218]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 0

[state 3218, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[state 3218, Miss]
type = hitdef
trigger1 = 1
attr = 
hitflag = 

[state 3218, Turn]
type = turn
trigger1 = !time

[state 3218, Destroy]
type = removeexplod
trigger1 = numexplod

[state 3218, Own State]
type = selfstate
trigger1 = !ishelper
value = 5000

[state 3218, Destroy]
type = destroyself
trigger1 = ishelper

;=========================================================================
; Reverse Blocked 1
;=========================================================================
[Statedef 3219]
type = S
movetype = I
physics = N
ctrl = 0
velset = 0, 0

[state 3219, Hit Counter]
type = parentvaradd
trigger1 = !time
var(16) = 16
ignorehitpause = 1

[state 3219, Root Bind]
type = bindtoparent
trigger1 = numhelper(3205)
pos = 0, 0
ignorehitpause = 1

[state 3219, Hit Sound]
type = playsnd
trigger1 =  !time
value = 120, 20
channel = 2
ignorehitpause = 1

[state 3219, Hitspark]
type = helper
trigger1 =  !time
name = "Hitspark"
ID = 6100
stateno = 6105
postype = p1
pos = 0, -72
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1

[state 3219, Reflector Spark]
type = helper
trigger1 =  !time
name = "Reflector Spark"
ID = 3219
stateno = 3210
postype = p1
ownpal = 0
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0
ignorehitpause = 1

[state 3219, Destroy]
type = destroyself
trigger1 = !numhelper(3205)
ignorehitpause = 1

[state 3219, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[state 3219, Destroy]
type = destroyself
trigger1 = numhelper(3205)
trigger1 = parent,stateno != 3205 || parent,anim != [3205, 3208]
ignorehitpause = 1

[state 3219, End State]
type = changestate
trigger1 = !time
value = 3215
ignorehitpause = 1

;=========================================================================
; Cushion Start 1
;=========================================================================
[Statedef 3220]
type = S
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 5
movehitpersist = 1
hitcountpersist = 1

[state 3220, Destroy]
type = destroyself
trigger1 = !numhelper(3205)

[state 3220, Change Animation]
type = changeanim
trigger1 = !time
value = 3220

[state 3220, Root Bind]
type = bindtoparent
trigger1 = numhelper(3205)
pos = 0, 0

[state 3220, Vulnerability]
type = hitby
trigger1 = 1
value = SCA,AP
time = -1
ignorehitpause = 1

[state 3220, Hit Override]
type = hitoverride
trigger1 = 1
attr = SCA,AP
stateno = 3221
slot = 0
time = -1
forceair = 0
ignorehitpause = 1

[state 3220, Destroy]
type = destroyself
trigger1 = numhelper(3205)
trigger1 = parent,stateno != 3205 || parent,anim != [3205, 3208]

;=========================================================================
; Cushion Impacted 1
;=========================================================================
[Statedef 3221]
type = S
movetype = I
physics = N
ctrl = 0
velset = 0, 0

[state 3221, Hit Counter]
type = parentvaradd
trigger1 = !time
var(1) = 1

[state 3221, Root Bind]
type = bindtoparent
trigger1 = numhelper(3205)
pos = 0, 0

[state 3221, Vulnerability]
type = hitby
trigger1 = 1
value = SCA,AP
time = -1

[state 3221, Hit Override]
type = hitoverride
trigger1 = 1
attr = SCA,AP
stateno = 3221
slot = 0
time = -1
forceair = 0

[state 3221, Destroy]
type = destroyself
trigger1 = numhelper(3205)
trigger1 = parent,stateno != 3205 || parent,anim != [3205, 3208]

[state 3221, End State]
type = changestate
trigger1 = !time
value = 3220

;=========================================================================
; Generic Proj 1
;=========================================================================
[Statedef 3225]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 5

; var(0) = trigger limiter
; var(1) = hit count
; var(2) = hit cool down

;========================< Projectile Configuration >========================

[state 3225, Trigger Limiter]
type = varadd
trigger1 = movecontact = 1 || movereversed = 1
trigger2 = prevstateno && !time
var(0) = 1
ignorehitpause = 1

[state 3225, Hit Counter]
type = varadd
triggerall = var(0) = 1
trigger1 = movecontact = 1 || movereversed = 1
trigger2 = prevstateno && !time
var(1) = 1 + 0 * (var(2) := 0)
ignorehitpause = 1

[state 3225, Hit Cooldown]
type = varset
trigger1 = !time
var(2) = -1
ignorehitpause = 1
[state 3225, Hit Cooldown]
type = varadd
trigger1 = !hitpausetime
var(2) = -1
ignorehitpause = 1

[state 3225, Projectile Configuration]
type = null
; Air Reset, Accumulated Juggle Points, Juggle Overdraft
trigger1 = var(9) := root,var(9) ||var(11) := root,var(11) || var(12) := root,var(12) || var(13) := root,var(13) || 1
; Counter Hit, Hit Counter, Damage Scale Hit Counter, Damage Scale
trigger1 = var(45) := root,var(45) || var(51) := root,var(51) || var(52) := root,var(52) || fvar(0) := cond(root,fvar(0) < 0.92, 0.92, root,fvar(0)) || 1
; Attack Level, Power Adder, Power Multiplier
trigger1 = !prevstateno && !time
trigger1 = var(17) := 2 || var(25) := root,var(25) || fvar(33) := root,fvar(33)

[state 3225, Change Animation]
type = changeanim
trigger1 = !prevstateno && !time
value = 3225 ; + cond(numhelper(4000), helper(4000),var(36) != 0, 0)

[state 3225, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 3225, Priority]
type = sprpriority
trigger1 = 1
value = 5
ignorehitpause = 1

[state 3225, Vulnerability]
type = hitby
trigger1 = !var(1)
value = SCA,AP
time = -1
ignorehitpause = 1

[state 3225, Hit Override]
type = hitoverride
trigger1 = !var(1)
attr = SCA,AP
stateno = 3226
slot = 0
time = -1
forceair = 0
ignorehitpause = 1

[state 3225, Vulnerability]
type = nothitby
trigger1 = var(1)
value = SCA
time = -1
ignorehitpause = 1

[state 3225, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)
ignorehitpause = 1

;========================< Projectile Functionality >========================

[state 3225, Set Velocity]
type = velset
trigger1 = !time && !root,var(1)
x = 6.0 * root,fvar(14)
y = 0.0 * root,fvar(15)

[state 3225, Miss]
type = hitdef
trigger1 = !hitpausetime
attr = , HP
hitflag = 

[state 3225, Juggle Points 1]
type = null
trigger1 = var(2) <= 0
trigger1 = var(10) := 1 || var(17) := 2 || var(49) := 3225
[state 3225, Hit 1]
type =  hitdef
triggerall = !var(9) && !var(13) ; var(49) != var(50) && 
trigger1 = var(2) <= 0
ID = 5800 + 0 * (var(49) := 3225)
attr = , HP
damage = ceil(cond(63 * fvar(0) < 7, 7, 63 * fvar(0))), 7
fall.envshake.phase = 3 ; stun damage
fall.envshake.freq = var(17) ; hit/attack level
fall.envshake.ampl = 0 ; hit y position
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 0, 18
hitsound = -1 + 0 * (var(3) := 260)
guardsound = -1 + 0 * (var(4) := 10)
sparkno = -1 + 0 * (var(5) := 20 + random % 9)
guard.sparkno = -1 + 0 * (var(6) := 1)
sparkxy = 0 * (var(7) := 16), 0 * (var(8) := 0)
animtype = medium
ground.type = high
air.animtype = back
air.type = low
ground.slidetime = 12
ground.hittime = 14
guard.slidetime = 12
guard.hittime = 13
air.hittime = cond((root,var(54) = [1, 2]), 0, 128)
ground.velocity = -16.0 * root,fvar(18)
guard.velocity = -16.0 * root,fvar(18)
air.velocity = -2.125 * root,fvar(14), -6.75 * root,fvar(15)
airguard.velocity = -4.0 * root,fvar(14), -4.0 * root,fvar(15)
ground.cornerpush.veloff = 0.0 * (fvar(3) := -1.0)
guard.cornerpush.veloff = 0.0
yaccel = 0.5 * root,fvar(20)
getpower = 0, 0
givepower = 0, 0
envshake.time = 4
envshake.ampl = 1
envshake.freq = 128
fall = 0
air.fall = 1
fall.recover = 0
fall.recovertime = 1
fall.animtype = back
forcestand = 1
forcenofall = 0
p2facing = p2statetype != A

;========================< Projectile Contact >========================

[state 3225, Accumulated Juggle Points]
type = parentvaradd
triggerall = var(0) = 1
trigger1 = movehit = 1 && numtarget
var(11) = var(10)
ignorehitpause = 1
[state 3225, Set Juggle Window]
type = parentvarset
triggerall = var(0) = 1
trigger1 = movehit = 1 && numtarget
trigger1 = var(11) := root,var(11) || 1
var(12) = cond((var(11) = [1, 6]), 120 - 20 * (var(11) - 1), cond(var(11) = 7, 10, cond(var(11) = 8, 4, cond(var(11) = 9, 2, cond(var(11) >= 10, 1, var(12))))))
ignorehitpause = 1
[state 3225, Score]
type = parentvaradd
triggerall = var(0) = 1
trigger1 = movehit = 1 && numtarget
var(20) = 200
ignorehitpause = 1
[state 3225, Hit Counter]
type = parentvaradd
triggerall = var(0) = 1
trigger1 = movehit = 1 && numtarget
var(51) = 1
ignorehitpause = 1
[state 3225, Hit Counter]
type = parentvaradd
triggerall = var(0) = 1
trigger1 = movehit = 1 && numtarget
var(52) = 1
ignorehitpause = 1
[state 3225, Reprisal]
type = parentvarset
triggerall = var(0) = 1
trigger1 = var(45) = 1
trigger1 = movehit = 1 && numtarget
var(45) = 4
ignorehitpause = 1
[state 3225, Cornerpush Target ID]
type = parentvarset
triggerall = var(0) = 1
trigger1 = movecontact = 1 && numtarget
var(57) = (var(57) := target,ID)
ignorehitpause = 1
[state 3225, Target ID]
type = parentvarset
triggerall = var(0) = 1
trigger1 = movecontact = 1 && numtarget
var(58) = (var(58) := target,ID)
ignorehitpause = 1
[state 3225, Cornerpush Force]
type = parentvarset
triggerall = var(0) = 1
trigger1 = movecontact = 1 && numtarget
fvar(1) = target,gethitvar(xvel) ; * (1.0 + cond(var(51) * 0.05 < 0.5, var(51) * 0.05, 0.5))
ignorehitpause = 1
[state 3225, Cornerpush Duration]
type = parentvarset
triggerall = var(0) = 1
trigger1 = movecontact = 1 && numtarget
fvar(2) = fvar(3)
ignorehitpause = 1

[state 3225, Hit Sound]
type = playsnd
triggerall = var(0) = 1
trigger1 = movecontact = 1 || movereversed = 1
trigger2 = prevstateno && !time
value = cond(movehit, 200, 120), cond(movehit, var(3), var(4)) + 40 * cond(numhelper(4000), movehit && helper(4000),var(38) && (var(3) = [200, 330]), 0)
channel = 2
ignorehitpause = 1

[state 3225, Hitspark]
type = helper
triggerall = var(0) = 1
trigger1 = movecontact = 1 || movereversed = 1
trigger2 = prevstateno && !time
name = "Hitspark"
ID = 6100
stateno = cond(movehit, 6100, 6105)
postype = p1
pos = ceil(cond(p2dist x < var(7), p2dist x, var(7)) * const(size.xscale)), ceil(var(8) * const(size.yscale))
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1

[state 3225, Electricspark]
type = helper
triggerall = var(0) = 1
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = playeridexist(var(58)) && movehit = 1
name = "Electricspark"
ID = 6175
stateno = 6175
postype = left
pos = ceil(playerid(var(58)),screenpos x), ceil(playerid(var(58)),pos y)
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0
supermovetime = 2147483647
pausemovetime = 2147483647
ignorehitpause = 1

[state 3225, Miss]
type = hitdef
trigger1 = hitpausetime || var(1)
attr = , HP
hitflag = 
ignorehitpause = 1

[state 3225, Shock]
type = targetstate
triggerall = var(0) = 1
triggerall = movehit = 1 && numtarget(5800)
trigger1 = target(5800),selfanimexist(2147483647) && target(5800),selfanimexist(-2147483647)
trigger1 = target(5800),authorname != "RajaaBoy"
; trigger1 = target(5800),authorname != "YourName"
trigger2 = !target(5800),selfanimexist(2147483647) || !target(5800),selfanimexist(-2147483647)
value = 5800
ID = 5800
ignorehitpause = 1

;========================< Projectile Destroy >========================

[state 3225, End State]
type = changestate
trigger1 = var(1) && !hitpausetime
value = 1017
ignorehitpause = 1

[state 3225, Destroy Helper]
type = destroyself
trigger1 = screenpos x != [-64, gamewidth + 64]
trigger2 = screenpos y < -64

[state 3225, Trigger Limiter]
type = varset
trigger1 = !hitpausetime
var(0) = 0
ignorehitpause = 1

;=========================================================================
; Generic Proj Canceled 2
;=========================================================================
[Statedef 3226]
type = S
movetype = A
physics = N
ctrl = 0
movehitpersist = 1

[state 3226, Hit Counter]
type = varadd
trigger1 = !time
var(1) = 1

[state 3226, Change Animation]
type = changeanim
trigger1 = 1
value = 3225 ; + cond(numhelper(4000), helper(4000),var(36) != 0, 0)
elem = animelemno(0)

[state 3226, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 3226, Priority]
type = sprpriority
trigger1 = 1
value = 4

[state 3226, Freeze Position]
type = posfreeze
trigger1 = 1
value = 1

[state 3226, Vulnerability]
type = hitby
trigger1 = 0
value = SCA,AP
time = -1

[state 3226, Hit Override]
type = hitoverride
trigger1 = 0
attr = SCA,AP
stateno = 3226
slot = 0
time = -1
forceair = 0

[state 3226, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 3226, Hit Sound]
type = playsnd
trigger1 = !time
value = 120, 10
channel = 2

[state 3226, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 3226, Miss]
type = hitdef
trigger1 = 1
attr = S, NP
hitflag = 

[state 3226, End State]
type = changestate
trigger1 = !time
value = 1017
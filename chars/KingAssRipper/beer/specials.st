; Urien By RajaaBoy

;=========================================================================
; Metallic Sphere
;=========================================================================
[Statedef 1000]
type = S
movetype = A
physics = N
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 0

[state 1000, Level]
type = null
triggerall = !time
triggerall = var(0) := 0 || var(1) := 0 || var(17) := 2 || 1
triggerall = fvar(30) := 0 || fvar(31) := 0 || 1
trigger1 = cond(ailevel, 1 * (var(18) := var(18) + !var(18)), 0)
trigger2 = cond(!fvar(32) && (command = "z" || command = "NE_z"), 1 * (var(18) := 3), 0)
trigger3 = cond(!fvar(32) && (command = "y" || command = "NE_y"), 1 * (var(18) := 2), 0)
trigger4 = var(18) := cond(fvar(32), floor(fvar(32)), 1) || fvar(32) := 0

[state 1000, Set Position]
type = posset
trigger1 = !time
y = 0

[state 1000, Change Animation]
type = changeanim
trigger1 = !time
value = 1000 + var(18) - 1

[state 1000, Detect Charge]
type = varset
triggerall = !ailevel
trigger1 = anim = 1000 && command = "hold_x"
trigger1 = animelemtime(6) >= 0 && animelemtime(7) < 0
trigger2 = anim = 1005 && command = "hold_x"
trigger3 = anim = 1001 && command = "hold_y"
trigger3 = animelemtime(6) >= 0 && animelemtime(7) < 0
trigger4 = anim = 1006 && command = "hold_y"
trigger5 = anim = 1002 && command = "hold_z"
trigger5 = animelemtime(6) >= 0 && animelemtime(7) < 0
trigger6 = anim = 1007 && command = "hold_z"
var(0) = 1

[state 1000, End Charge]
type = varset
triggerall = var(0)
trigger1 = var(18) = 1 && command != "hold_x"
trigger2 = var(18) = 2 && command != "hold_y"
trigger3 = var(18) = 3 && command != "hold_z"
var(0) = 0

[state 1000, Charge Animation]
type = changeanim
triggerall = var(0)
trigger1 = !animelemtime(7)
value = anim + 5
persistent = 0

[state 1000, Firing Animation]
type = changeanim
triggerall = anim = [1005, 1007]
trigger1 = !animtime
trigger2 = !var(0) && !animelemtime(animelemno(0))
value = anim - 5
elem = 7

[state 1000, Full Charge]
type = varset
trigger1 = anim = [1005, 1007]
trigger1 = animelemtime(4) >= 0
var(1) = 1
persistent = 0

[state 1000, Add Power]
type = poweradd
trigger1 = 0
value = ceil(30 * fvar(33) + var(25))

[state 1000, Voice]
type = playsnd
trigger1 = anim = [1000, 1002]
trigger1 = !animelemtime(8)
value = 1000, 0+random%2
volumescale = 100
channel = 0

[state 1000, Sound]
type = playsnd
trigger1 = anim = [1000, 1002]
trigger1 = !animelemtime(8)
value = 3, 0
volumescale = 100

;[state 1000, Sound]
;type = playsnd
;trigger1 = anim = [1005, 1007]
;trigger1 = !animelemtime(5)
;value = 3, 3
;volumescale = 100
;
;[state 1000, Electricity]
;type = helper
;trigger1 = anim = [1005, 1007]
;trigger1 = !animelemtime(5)
;name = "Electricity"
;ID = 1010
;stateno = 8000
;postype = p1
;ownpal = 1
;keyctrl = 0
;size.xscale = const(size.xscale)*0.60
;size.yscale = const(size.yscale)*0.60

[state 1000, Metallic Sphere]
type = helper
trigger1 = anim = [1000, 1002]
trigger1 = !animelemtime(8)
name = "Metallic Sphere"
ID = 1015
stateno = 1015
postype = p1
ownpal = 1
keyctrl = 0
size.xscale = const(size.xscale)*0.60
size.yscale = const(size.yscale)*0.60
; size.xscale = 1.0 - 0.5 * cond(numhelper(4000), helper(4000),var(36) != 0, 0)
; size.yscale = 1.0 - 0.5 * cond(numhelper(4000), helper(4000),var(36) != 0, 0)

[state 1000, Idle]
type = statetypeset
trigger1 = anim = [1000, 1002]
trigger1 = animelemtime(8) >= 0
movetype = I
persistent = 0

[state 1000, Control]
type = ctrlset
trigger1 = anim = [1000, 1002]
trigger1 = animelemtime(16) >= 0
value = 1
persistent = 0

[state 1000, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; Metal Start 1
;=========================================================================
[Statedef 1015]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 4

; var(0) = trigger limiter
; var(1) = hit count
; var(2) = hit cool down

;========================< Projectile Configuration >========================

[state 1015, Trigger Limiter]
type = varadd
trigger1 = movecontact = 1 || movereversed = 1
trigger2 = prevstateno && !time
var(0) = 1
ignorehitpause = 1

[state 1015, Hit Counter]
type = varadd
triggerall = var(0) = 1
trigger1 = movecontact = 1 || movereversed = 1
trigger2 = prevstateno && !time
var(1) = 1 + 0 * (var(2) := 0)
ignorehitpause = 1

[state 1055, Hit Cooldown]
type = varset
trigger1 = !time
var(2) = -1
ignorehitpause = 1
[state 1055, Hit Cooldown]
type = varadd
trigger1 = !hitpausetime
var(2) = -1
ignorehitpause = 1

[state 1015, Projectile Configuration]
type = null
; Air Reset, Accumulated Juggle Points, Juggle Overdraft
trigger1 = var(9) := root,var(9) ||var(11) := root,var(11) || var(12) := root,var(12) || var(13) := root,var(13) || 1
; Counter Hit, Hit Counter, Damage Scale Hit Counter, Damage Scale
trigger1 = var(45) := root,var(45) || var(51) := root,var(51) || var(52) := root,var(52) || fvar(0) := cond(root,fvar(0) < 0.92, 0.92, root,fvar(0)) || 1
; Attack Level, Power Adder, Power Multiplier
trigger1 = !prevstateno && !time
trigger1 = var(17) := 2 || var(18) := root,var(18) || var(25) := root,var(25) || fvar(33) := root,fvar(33)

[state 1015, Change Animation]
type = changeanim
trigger1 = !prevstateno && !time
value = 1015 + (var(18) >= 2) + cond(numhelper(4000), 2 * (helper(4000),var(36) != 0), 0)

[state 1015, Special Effect]
type = assertspecial
trigger1 = cond(numhelper(4000), helper(4000),var(36) != 0, 0)
flag = noshadow
ignorehitpause = 1

[state 1015, Priority]
type = sprpriority
trigger1 = 1
value = 4
ignorehitpause = 1

[state 1015, Vulnerability]
type = hitby
trigger1 = !var(1)
value = SCA,AP
time = -1
ignorehitpause = 1

[state 1015, Hit Override]
type = hitoverride
trigger1 = !var(1)
attr = SCA,AP
stateno = 1016
slot = 0
time = -1
forceair = 0
ignorehitpause = 1

[state 1015, Vulnerability]
type = nothitby
trigger1 = var(1)
value = SCA
time = -1
ignorehitpause = 1

[state 1015, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)
ignorehitpause = 1

;========================< Projectile Functionality >========================

[state 1015, Bind to Parent]
type = bindtoparent
trigger1 = !prevstateno && !time && var(18) = 1
pos = 42, -76
[state 1015, Bind to Parent]
type = bindtoparent
trigger1 = !prevstateno && !time && var(18) = 2
pos = 36, -92
[state 1015, Bind to Parent]
type = bindtoparent
trigger1 = !prevstateno && !time && var(18) = 3
pos = 22, -102

[state 1015, Set Velocity]
type = velset
trigger1 = !time && !root,var(1)
x = cond(var(18) = 1, 6.0, cond(var(18) = 2, 5.5, 5.25)) * root,fvar(14)
y = cond(var(18) = 1, 0.0, cond(var(18) = 2, -2.0, -4.3125)) * root,fvar(15)

[state 1015, Set Velocity]
type = velset
trigger1 = !time && root,var(1)
x = cond(var(18) = 1, 6.75, cond(var(18) = 2, 6.1875, 5.90625)) * root,fvar(14)
y = cond(var(18) = 1, 0.0, cond(var(18) = 2, -2.25, -4.8515625)) * root,fvar(15)

[state 1015, Miss]
type = hitdef
trigger1 = !hitpausetime
attr = S, SP
hitflag = 

[state 1015, Juggle Points 1]
type = null
trigger1 = var(2) <= 0
trigger1 = var(10) := 1 || var(17) := 2 || var(49) := 1015
[state 1015, Hit 1]
type =  hitdef
triggerall = !var(9) && !var(13) ; var(49) != var(50) && 
trigger1 = var(2) <= 0
ID = 5800 + 0 * (var(49) := 1015)
attr = S, SP
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
forcestand = 1
forcenofall = 0
p2facing = p2statetype != A

;========================< Projectile Contact >========================

[state 1015, Accumulated Juggle Points]
type = parentvaradd
triggerall = var(0) = 1
trigger1 = movehit = 1 && numtarget
var(11) = var(10)
ignorehitpause = 1
[state 1015, Set Juggle Window]
type = parentvarset
triggerall = var(0) = 1
trigger1 = movehit = 1 && numtarget
trigger1 = var(11) := root,var(11) || 1
var(12) = cond((var(11) = [1, 6]), 120 - 20 * (var(11) - 1), cond(var(11) = 7, 10, cond(var(11) = 8, 4, cond(var(11) = 9, 2, cond(var(11) >= 10, 1, var(12))))))
ignorehitpause = 1
[state 1015, Score]
type = parentvaradd
triggerall = var(0) = 1
trigger1 = movehit = 1 && numtarget
var(20) = 200
ignorehitpause = 1
[state 1015, Hit Counter]
type = parentvaradd
triggerall = var(0) = 1
trigger1 = movehit = 1 && numtarget
var(51) = 1
ignorehitpause = 1
[state 1015, Hit Counter]
type = parentvaradd
triggerall = var(0) = 1
trigger1 = movehit = 1 && numtarget
var(52) = 1
ignorehitpause = 1
[state 1015, Reprisal]
type = parentvarset
triggerall = var(0) = 1
trigger1 = var(45) = 1
trigger1 = movehit = 1 && numtarget
var(45) = 4
ignorehitpause = 1
[state 1015, Cornerpush Target ID]
type = parentvarset
triggerall = var(0) = 1
trigger1 = movecontact = 1 && numtarget
var(57) = (var(57) := target,ID)
ignorehitpause = 1
[state 1015, Target ID]
type = parentvarset
triggerall = var(0) = 1
trigger1 = movecontact = 1 && numtarget
var(58) = (var(58) := target,ID)
ignorehitpause = 1
[state 1015, Cornerpush Force]
type = parentvarset
triggerall = var(0) = 1
trigger1 = movecontact = 1 && numtarget
fvar(1) = target,gethitvar(xvel) ; * (1.0 + cond(var(51) * 0.05 < 0.5, var(51) * 0.05, 0.5))
ignorehitpause = 1
[state 1015, Cornerpush Duration]
type = parentvarset
triggerall = var(0) = 1
trigger1 = movecontact = 1 && numtarget
fvar(2) = fvar(3)
ignorehitpause = 1

[state 1015, Hit Sound]
type = playsnd
triggerall = var(0) = 1
trigger1 = movecontact = 1 || movereversed = 1
trigger2 = prevstateno && !time
value = cond(movehit, 200, 120), cond(movehit, var(3), var(4)) + 40 * cond(numhelper(4000), movehit && helper(4000),var(38) && (var(3) = [200, 330]), 0)
channel = 2
ignorehitpause = 1

[state 1015, Hitspark]
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

[state 1015, Miss]
type = hitdef
trigger1 = hitpausetime || var(1)
attr = S, SP
hitflag = 
ignorehitpause = 1

;========================< Projectile Destroy >========================

[state 1015, End State]
type = changestate
trigger1 = var(1) && !hitpausetime
value = 1017
ignorehitpause = 1

[state 1015, Destroy Helper]
type = destroyself
trigger1 = screenpos x != [-64, gamewidth + 64]
trigger2 = screenpos y < -64

[state 1015, Trigger Limiter]
type = varset
trigger1 = !hitpausetime
var(0) = 0
ignorehitpause = 1

;=========================================================================
; Metal Canceled 1
;=========================================================================
[Statedef 1016]
type = S
movetype = A
physics = N
ctrl = 0
movehitpersist = 1

[state 1016, Hit Counter]
type = varadd
trigger1 = !time
var(1) = 1

[state 1016, Change Animation]
type = changeanim
trigger1 = 1
value = 1015 + (var(18) >= 2) + cond(numhelper(4000), 2 * (helper(4000),var(36) != 0), 0)
elem = animelemno(0)

[state 1016, Special Effect]
type = assertspecial
trigger1 = cond(numhelper(4000), helper(4000),var(36) != 0, 0)
flag = noshadow

[state 1016, Priority]
type = sprpriority
trigger1 = 1
value = 4

[state 1016, Freeze Position]
type = posfreeze
trigger1 = 1
value = 1

[state 1016, Vulnerability]
type = hitby
trigger1 = 0
value = SCA,AP
time = -1

[state 1016, Hit Override]
type = hitoverride
trigger1 = 0
attr = SCA,AP
stateno = 1016
slot = 0
time = -1
forceair = 0

[state 1016, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 1016, Hit Sound]
type = playsnd
trigger1 = !time
value = 120, 10
channel = 2

[state 1016, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 1016, Miss]
type = hitdef
trigger1 = 1
attr = S, SP
hitflag = 

[state 1016, End State]
type = changestate
trigger1 = !time
value = 1017

;=========================================================================
; Metal End 1
;=========================================================================
[Statedef 1017]
type = S
movetype = I
physics = N
ctrl = 0
velset = 0, 0
movehitpersist = 1

[state 1017, Change Animation]
type = changeanim
trigger1 = !time
value = 2147483647

[state 1017, Scale]
type = angledraw
trigger1 = ishelper(3225)
scale = 2.0, 4.0

[state 1017, Special Effect]
type = assertspecial
trigger1 = cond(numhelper(4000), helper(4000),var(36) != 0, 0)
flag = noshadow

[state 1017, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 1017, Destroy]
type = destroyself
trigger1 = time = 20

;=========================================================================
; Metal Reflected 1
;=========================================================================
[Statedef 1020]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 4

; var(0) = trigger limiter
; var(1) = hit count
; var(2) = hit cool down

;========================< Projectile Configuration >========================

[state 1020, Trigger Limiter]
type = varadd
trigger1 = movecontact = 1 || movereversed = 1
trigger2 = prevstateno && !time
var(0) = 1
ignorehitpause = 1

[state 1020, Hit Counter]
type = varadd
triggerall = var(0) = 1
trigger1 = movecontact = 1 || movereversed = 1
trigger2 = prevstateno && !time
var(1) = 1 + 0 * (var(2) := 0)
ignorehitpause = 1

[state 1020, Hit Cooldown]
type = varset
trigger1 = !time
var(2) = -1
ignorehitpause = 1
[state 1020, Hit Cooldown]
type = varadd
trigger1 = !hitpausetime
var(2) = -1
ignorehitpause = 1

[state 1020, Reset Projectile]
type = varset
trigger1 = prevstateno = 9992 && !time
var(0) = 0
[state 1020, Reset Projectile]
type = varset
trigger1 = prevstateno = 9992 && !time
var(1) = 0
[state 1020, Reset Projectile]
type = varset
trigger1 = prevstateno = 9992 && !time
var(2) = 0

[state 1020, Projectile Configuration]
type = null
; Air Reset, Accumulated Juggle Points, Juggle Overdraft
trigger1 = var(9) := root,var(9) ||var(11) := root,var(11) || var(12) := root,var(12) || var(13) := root,var(13) || 1
; Counter Hit, Hit Counter, Damage Scale Hit Counter, Damage Scale
trigger1 = var(45) := root,var(45) || var(51) := root,var(51) || var(52) := root,var(52) || fvar(0) := cond(root,fvar(0) < 0.92, 0.92, root,fvar(0)) || 1
; Attack Level, Power Adder, Power Multiplier
trigger1 = !prevstateno && !time
trigger1 = var(17) := 2 || var(18) := root,var(18) || var(25) := root,var(25) || fvar(33) := root,fvar(33)

[state 1020, Special Effect]
type = assertspecial
trigger1 = cond(numhelper(4000), helper(4000),var(36) != 0, 0)
flag = noshadow
ignorehitpause = 1

[state 1020, Priority]
type = sprpriority
trigger1 = 1
value = 4
ignorehitpause = 1

[state 1020, Vulnerability]
type = hitby
trigger1 = !var(1)
value = SCA,AP
time = -1
ignorehitpause = 1

[state 1020, Hit Override]
type = hitoverride
trigger1 = !var(1)
attr = SCA,AP
stateno = 1021
slot = 0
time = -1
forceair = 0
ignorehitpause = 1

[state 1020, Vulnerability]
type = nothitby
trigger1 = var(1)
value = SCA
time = -1
ignorehitpause = 1

[state 1020, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)
ignorehitpause = 1

;========================< Projectile Functionality >========================

[state 1020, Set Velocity]
type = velset
trigger1 = !time && !root,var(1)
x = cond(var(18) = 1, 6.0, cond(var(18) = 2, 5.5, 5.25)) * root,fvar(14)
y = cond(var(18) = 1, 0.0, cond(var(18) = 2, -2.0, -4.3125)) * root,fvar(15)

[state 1020, Set Velocity]
type = velset
trigger1 = !time && root,var(1)
x = cond(var(18) = 1, 6.75, cond(var(18) = 2, 6.1875, 5.90625)) * root,fvar(14)
y = cond(var(18) = 1, 0.0, cond(var(18) = 2, -2.25, -4.8515625)) * root,fvar(15)

[state 1020, Miss]
type = hitdef
trigger1 = !hitpausetime
attr = , SP
hitflag = 

[state 1020, Juggle Points 1]
type = null
trigger1 = var(2) <= 0
trigger1 = var(10) := 1 || var(17) := 2 || var(49) := 1020
[state 1020, Hit 1]
type =  hitdef
triggerall = numenemy
triggerall = !enemy,var(9) && !enemy,var(13) ; var(49) != var(50) && 
trigger1 = var(2) <= 0
ID = 5800 + 0 * (var(49) := 1020)
attr = , SP
damage = ceil(cond(63 * fvar(0) < 7, 7, 63 * fvar(0))), 7
fall.envshake.phase = 3 ; stun damage
fall.envshake.freq = var(17) ; hit/attack level
fall.envshake.ampl = 0 ; hit y position
guardflag = M
hitflag = MAF
affectteam = F
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
forcestand = 1
forcenofall = 0
p2facing = p2statetype != A

;========================< Projectile Contact >========================

[state 1020, Reflective Juggle Points 1]
type = parentvarset
trigger1 = var(0) = 1
trigger1 = movecontact = 1 || movereversed = 1
fvar(35) = cond(var(49) = 1020, 1, 0)
ignorehitpause = 1

[state 1020, Reflective Juggle Points]
type = parentvarset
trigger1 = var(0) = 1
trigger1 = movecontact = 1 || movereversed = 1
fvar(36) = 1
ignorehitpause = 1

[state 1020, Hit Sound]
type = playsnd
triggerall = var(0) = 1
trigger1 = movecontact = 1 || movereversed = 1
trigger2 = prevstateno && !time
value = cond(movehit, 200, 120), cond(movehit, var(3), var(4)) + 40 * cond(numhelper(4000), movehit && helper(4000),var(38) && (var(3) = [200, 330]), 0)
channel = 2
ignorehitpause = 1

[state 1020, Hitspark]
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

[state 1020, Electricspark]
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

[state 1020, Miss]
type = hitdef
trigger1 = hitpausetime || var(1)
attr = , SP
hitflag = 
ignorehitpause = 1

[state 1020, Shock]
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

[state 1020, End State]
type = changestate
trigger1 = var(1) && !hitpausetime
value = 1017
ignorehitpause = 1

[state 1020, Destroy Helper]
type = destroyself
trigger1 = screenpos x != [-64, gamewidth + 64]
trigger2 = screenpos y < -64

[state 1020, Trigger Limiter]
type = varset
trigger1 = !hitpausetime
var(0) = 0
ignorehitpause = 1

;=========================================================================
; Metal Canceled 2
;=========================================================================
[Statedef 1021]
type = S
movetype = A
physics = N
ctrl = 0
movehitpersist = 1

[state 1021, Hit Counter]
type = varadd
trigger1 = !time
var(1) = 1

[state 1021, Change Animation]
type = changeanim
trigger1 = 1
value = 1015 + (var(18) >= 2) + cond(numhelper(4000), 2 * (helper(4000),var(36) != 0), 0)
elem = animelemno(0)

[state 1021, Special Effect]
type = assertspecial
trigger1 = cond(numhelper(4000), helper(4000),var(36) != 0, 0)
flag = noshadow

[state 1021, Priority]
type = sprpriority
trigger1 = 1
value = 4

[state 1021, Freeze Position]
type = posfreeze
trigger1 = 1
value = 1

[state 1021, Vulnerability]
type = hitby
trigger1 = 0
value = SCA,AP
time = -1

[state 1021, Hit Override]
type = hitoverride
trigger1 = 0
attr = SCA,AP
stateno = 1021
slot = 0
time = -1
forceair = 0

[state 1021, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 1021, Hit Sound]
type = playsnd
trigger1 = !time
value = 120, 10
channel = 2

[state 1021, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 1021, Miss]
type = hitdef
trigger1 = 1
attr = S, NP
hitflag = 

[state 1021, End State]
type = changestate
trigger1 = !time
value = 1017

;=========================================================================
; Chariot Tackle
;=========================================================================
[Statedef 1100]
type = S
movetype = A
physics = N
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 1

[state 1100, Level]
type = null
triggerall = !time
triggerall = var(0) := 0 || var(1) := 0 || var(17) := 2 || 1
triggerall = fvar(30) := 0 || fvar(31) := 0 || 1
trigger1 = cond(ailevel, 1 * (var(18) := var(18) + !var(18)), 0)
trigger2 = cond(!fvar(32) && (command = "c" || command = "NE_c"), 1 * (var(18) := 3), 0)
trigger3 = cond(!fvar(32) && (command = "b" || command = "NE_b"), 1 * (var(18) := 2), 0)
trigger4 = var(18) := cond(fvar(32), floor(fvar(32)), 1) || fvar(32) := 0

[state 1100, Set Position]
type = posset
trigger1 = !time
y = 0

[state 1100, Change Animation]
type = changeanim
trigger1 = !time
value = 1100 + var(18) - 1

[state 1100, Add Power]
type = poweradd
trigger1 = anim = 1100 && !animelemtime(3)
trigger2 = anim = 1101 && !animelemtime(4)
trigger3 = anim = 1102 && !animelemtime(5)
value = ceil(30 * fvar(33) + var(25))

[state 1100, Voice]
type = playsnd
trigger1 = anim = 1100 && !animelemtime(3)
trigger2 = anim = 1101 && !animelemtime(4)
trigger3 = anim = 1102 && !animelemtime(5)
value = 1100, ifelse(random<550,2+random%2,0)
volumescale = 100
channel = 0

[state 1100, Sound]
type = playsnd
trigger1 = anim = 1100 && !animelemtime(3)
trigger2 = anim = 1101 && !animelemtime(4)
trigger3 = anim = 1102 && !animelemtime(5)
value = 1, 2
volumescale = 100
channel = 1

[state 1100, Dust]
type = helper
trigger1 = anim = 1100 && !animelemtime(2)
trigger2 = anim = 1101 && !animelemtime(3)
trigger3 = anim = 1102 && !animelemtime(5)
name = "Dust"
ID = cond(numhelper(4000), cond(helper(4000),var(36), 7015, 6001), 6001)
stateno = cond(numhelper(4000), cond(helper(4000),var(36), 7015, 6001), 6001)
postype = P1
pos = -24, 0
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0

;========================< C. Tackle 1 >========================

[state 1100, Pause Frame 1]
type = changeanim
trigger1 = anim = 1100
trigger1 = animelemtime(3) > 0 && animelemtime(5) <= 0
trigger1 = hitpausetime
value = 1100
elem = 5
ignorehitpause = 1
persistent = 0

[state 1100, Pause Frame 2]
type = changeanim
trigger1 = anim = 1100
trigger1 = movecontact && !hitpausetime
trigger1 = animelemtime(5) = 0 
value = cond(movehit, 1105, 1110)
ignorehitpause = 1
persistent = 0

[state 1100, Increment Position]
type = posadd
trigger1 = anim = 1100
trigger1 = !animelemtime(1)
x = 16.0
[state 1100, Increment Position]
type = posadd
trigger1 = anim = 1100
trigger1 = !animelemtime(2)
x = -4.0

[state 1100, Set Velocity]
type = velset
trigger1 = anim = 1100
trigger1 = !animelemtime(2)
x = 14.8125 * fvar(14)
[state 1100, Set Velocity]
type = velset
trigger1 = anim = 1100
trigger1 = !animelemtime(5)
x = 3.125 * fvar(14)

[state 1100, Increment Velocity]
type = veladd
triggerall = vel x > 0
trigger1 = anim = 1100
trigger1 = animelemtime(2) > 0 && animelemtime(5) < 0
trigger2 = anim = 1105 || anim = 1110
x = -1.0 * fvar(16)
[state 1100, Increment Velocity]
type = veladd
triggerall = vel x > 0
trigger1 = anim = 1100
trigger1 = animelemtime(5) > 0
x = -0.09375 * fvar(16)

[state 1100, Increment Position]
type = posadd
trigger1 = anim = 1100 && !animelemtime(8)
trigger2 = anim = 1105 && !animelemtime(2)
trigger3 = anim = 1110 && !animelemtime(1)
x = vel x * fvar(14)

[state 1100, Set Velocity]
type = velset
triggerall = anim = 1100 || anim = 1105 || anim = 1110
trigger1 = vel x < 0
trigger2 = anim = 1100 && !animelemtime(8)
trigger3 = anim = 1105 && !animelemtime(2)
trigger4 = anim = 1110 && !animelemtime(1)
x = 0.0 * fvar(14)

[state 1100, Juggle Points 1]
type = null
trigger1 = anim = 1100
trigger1 = animelemtime(3) >= 0 && animelemtime(5) < 0
trigger1 = var(10) := 1 || var(17) := 2 || var(49) := 1100
[state 1100, Hit 1]
type = hitdef
triggerall = var(49) != var(50) && !var(9) && !var(13)
trigger1 = anim = 1100
trigger1 = animelemtime(3) >= 0 && animelemtime(5) < 0
ID = 0 + 0 * (var(49) := 1100)
attr = S, SA
damage = ceil(cond(107 * fvar(0) < 7, 7, 107 * fvar(0))), 7
fall.envshake.phase = 7 ; stun damage
fall.envshake.freq = var(17) ; hit/attack level
fall.envshake.ampl = 0 ; hit y position
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
hitsound = -1 + 0 * (var(3) := 220)
guardsound = -1 + 0 * (var(4) := cond(p2name = "Urien", 20, 10))
sparkno = -1 + 0 * (var(5) := 24)
guard.sparkno = -1 + 0 * (var(6) := 1)
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
ground.velocity = -18.0 * fvar(18)
guard.velocity = -18.0 * fvar(18)
air.velocity = -6.375 * fvar(14), -8.71875 * fvar(15)
airguard.velocity = -4.0 * fvar(14), -4.0 * fvar(15)
ground.cornerpush.veloff = 0.0 * (fvar(3) := 12.0)
guard.cornerpush.veloff = 0.0
yaccel = 0.5625 * fvar(20)
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

[state 1100, Idle]
type = statetypeset
trigger1 = anim = 1100 && animelemtime(5) >= 0
trigger2 = anim = 1105 || anim = 1110
movetype = I
persistent = 0

[state 1100, Control]
type = ctrlset
trigger1 = anim = 1100 && animelemtime(12) >= 0
trigger2 = anim = 1105 && animelemtime(7) >= 0
trigger3 = anim = 1110 && animelemtime(7) >= 0
value = 1
persistent = 0

;========================< C. Tackle 2 >========================

[state 1100, Pause Frame 1]
type = changeanim
trigger1 = anim = 1101
trigger1 = animelemtime(4) > 0 && animelemtime(6) <= 0
trigger1 = hitpausetime
value = 1101
elem = 6
ignorehitpause = 1
persistent = 0

[state 1100, Pause Frame 2]
type = changeanim
trigger1 = anim = 1101
trigger1 = movecontact && !hitpausetime
trigger1 = animelemtime(6) = 0 
value = cond(movehit, 1106, 1111)
ignorehitpause = 1
persistent = 0

[state 1100, Increment Position]
type = posadd
trigger1 = anim = 1101
trigger1 = !animelemtime(2)
x = 16.0
[state 1100, Increment Position]
type = posadd
trigger1 = anim = 1101
trigger1 = !animelemtime(3)
x = -6.0

[state 1100, Set Velocity]
type = velset
trigger1 = anim = 1101
trigger1 = !animelemtime(3)
x = 16.0 * fvar(14)
[state 1100, Set Velocity]
type = velset
trigger1 = anim = 1101
trigger1 = !animelemtime(6)
x = 3.125 * fvar(14)

[state 1100, Increment Velocity]
type = veladd
triggerall = vel x > 0
trigger1 = anim = 1101
trigger1 = animelemtime(3) > 0 && animelemtime(6) < 0
trigger2 = anim = 1106 || anim = 1111
x = -0.5 * fvar(16)
[state 1100, Increment Velocity]
type = veladd
triggerall = vel x > 0
trigger1 = anim = 1101
trigger1 = animelemtime(6) > 0
x = -0.09375 * fvar(16)

[state 1100, Increment Position]
type = posadd
trigger1 = anim = 1101 && !animelemtime(9)
trigger2 = anim = 1106 && !animelemtime(2)
trigger3 = anim = 1111 && !animelemtime(1)
x = vel x * fvar(14)

[state 1100, Set Velocity]
type = velset
triggerall = anim = 1101 || anim = 1106 || anim = 1111
trigger1 = vel x < 0
trigger2 = anim = 1101 && !animelemtime(9)
trigger3 = anim = 1106 && !animelemtime(2)
trigger4 = anim = 1111 && !animelemtime(1)
x = 0.0 * fvar(14)

[state 1100, Juggle Points 1]
type = null
trigger1 = anim = 1101
trigger1 = animelemtime(4) >= 0 && animelemtime(6) < 0
trigger1 = var(10) := 1 || var(17) := 2 || var(49) := 1101
[state 1100, Hit 1]
type = hitdef
triggerall = var(49) != var(50) && !var(9) && !var(13)
trigger1 = anim = 1101
trigger1 = animelemtime(4) >= 0 && animelemtime(6) < 0
ID = 0 + 0 * (var(49) := 1101)
attr = S, SA
damage = ceil(cond(119 * fvar(0) < 7, 7, 119 * fvar(0))), 7
fall.envshake.phase = 9 ; stun damage
fall.envshake.freq = var(17) ; hit/attack level
fall.envshake.ampl = 0 ; hit y position
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
hitsound = -1 + 0 * (var(3) := 220)
guardsound = -1 + 0 * (var(4) := cond(p2name = "Urien", 20, 10))
sparkno = -1 + 0 * (var(5) := 24)
guard.sparkno = -1 + 0 * (var(6) := 1)
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
ground.velocity = -18.0 * fvar(18)
guard.velocity = -18.0 * fvar(18)
air.velocity = -6.375 * fvar(14), -8.71875 * fvar(15)
airguard.velocity = -4.0 * fvar(14), -4.0 * fvar(15)
ground.cornerpush.veloff = 0.0 * (fvar(3) := 12.0)
guard.cornerpush.veloff = 0.0
yaccel = 0.5625 * fvar(20)
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

[state 1100, Idle]
type = statetypeset
trigger1 = anim = 1101 && animelemtime(6) >= 0
trigger2 = anim = 1106 || anim = 1111
movetype = I
persistent = 0

[state 1100, Control]
type = ctrlset
trigger1 = anim = 1101 && animelemtime(13) >= 0
trigger2 = anim = 1106 && animelemtime(7) >= 0
trigger3 = anim = 1111 && animelemtime(7) >= 0
value = 1
persistent = 0

;========================< C. Tackle 3 >========================

[state 1100, Pause Frame 1]
type = changeanim
trigger1 = anim = 1102
trigger1 = animelemtime(5) > 0 && animelemtime(9) <= 0
trigger1 = hitpausetime
value = 1102
elem = 9
ignorehitpause = 1
persistent = 0

[state 1100, Pause Frame 2]
type = changeanim
trigger1 = anim = 1102
trigger1 = movecontact && !hitpausetime
trigger1 = animelemtime(9) = 0 
value = cond(movehit, 1107, 1112)
ignorehitpause = 1
persistent = 0

[state 1100, Increment Position]
type = posadd
trigger1 = anim = 1102
trigger1 = !animelemtime(2)
x = 28.0
[state 1100, Increment Position]
type = posadd
trigger1 = anim = 1102
trigger1 = !animelemtime(3)
x = 5.0
[state 1100, Increment Position]
type = posadd
trigger1 = anim = 1102
trigger1 = !animelemtime(4)
x = -18.0

[state 1100, Set Velocity]
type = velset
trigger1 = anim = 1102
trigger1 = !animelemtime(4)
x = 18.0 * fvar(14)
[state 1100, Set Velocity]
type = velset
trigger1 = anim = 1102
trigger1 = !animelemtime(9)
x = 3.125 * fvar(14)

[state 1100, Increment Velocity]
type = veladd
triggerall = vel x > 0
trigger1 = anim = 1102
trigger1 = animelemtime(4) > 0 && animelemtime(9) < 0
trigger2 = anim = 1107 || anim = 1112
x = -0.484375 * fvar(16)
[state 1100, Increment Velocity]
type = veladd
triggerall = vel x > 0
trigger1 = anim = 1102
trigger1 = animelemtime(9) > 0
x = -0.09375 * fvar(16)

[state 1100, Increment Position]
type = posadd
trigger1 = anim = 1102 && !animelemtime(12)
trigger2 = anim = 1107 && !animelemtime(2)
trigger3 = anim = 1112 && !animelemtime(1)
x = vel x * fvar(14)

[state 1100, Set Velocity]
type = velset
triggerall = anim = 1102 || anim = 1107 || anim = 1112
trigger1 = vel x < 0
trigger2 = anim = 1102 && !animelemtime(12)
trigger3 = anim = 1107 && !animelemtime(2)
trigger4 = anim = 1112 && !animelemtime(1)
x = 0.0 * fvar(14)

[state 1100, Juggle Points 1]
type = null
trigger1 = anim = 1102
trigger1 = animelemtime(5) >= 0 && animelemtime(9) < 0
trigger1 = var(10) := 1 || var(17) := 2 || var(49) := 1102
[state 1100, Hit 1]
type = hitdef
triggerall = var(49) != var(50) && !var(9) && !var(13)
trigger1 = anim = 1102
trigger1 = animelemtime(5) >= 0 && animelemtime(9) < 0
ID = 0 + 0 * (var(49) := 1102)
attr = S, SA
damage = ceil(cond(138 * fvar(0) < 7, 7, 138 * fvar(0))), 7
fall.envshake.phase = 11 ; stun damage
fall.envshake.freq = var(17) ; hit/attack level
fall.envshake.ampl = 0 ; hit y position
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
hitsound = -1 + 0 * (var(3) := 220)
guardsound = -1 + 0 * (var(4) := cond(p2name = "Urien", 20, 10))
sparkno = -1 + 0 * (var(5) := 24)
guard.sparkno = -1 + 0 * (var(6) := 1)
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
ground.velocity = -18.0 * fvar(18)
guard.velocity = -18.0 * fvar(18)
air.velocity = -6.375 * fvar(14), -8.71875 * fvar(15)
airguard.velocity = -4.0 * fvar(14), -4.0 * fvar(15)
ground.cornerpush.veloff = 0.0 * (fvar(3) := 12.0)
guard.cornerpush.veloff = 0.0
yaccel = 0.5625 * fvar(20)
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

[state 1100, Idle]
type = statetypeset
trigger1 = anim = 1102 && animelemtime(9) >= 0
trigger2 = anim = 1107 || anim = 1112
movetype = I
persistent = 0

[state 1100, Control]
type = ctrlset
trigger1 = anim = 1102 && animelemtime(16) >= 0
trigger2 = anim = 1107 && animelemtime(7) >= 0
trigger3 = anim = 1112 && animelemtime(7) >= 0
value = 1
persistent = 0

[state 1100, End State]
type = changestate
trigger1 = !animtime
value = 0 
ctrl = 1

;=========================================================================
; Dangerous Headbutt
;=========================================================================
[Statedef 1200]
type = S
movetype = A
physics = N
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 1

[state 1200, Level]
type = null
triggerall = !time
triggerall = var(0) := 0 || var(1) := 0 || var(17) := 2 || 1
triggerall = fvar(30) := 0 || fvar(31) := 0 || 1
trigger1 = cond(ailevel, 1 * (var(18) := var(18) + !var(18)), 0)
trigger2 = cond(!fvar(32) && (command = "z" || command = "NE_z"), 1 * (var(18) := 3), 0)
trigger3 = cond(!fvar(32) && (command = "y" || command = "NE_y"), 1 * (var(18) := 2), 0)
trigger4 = var(18) := cond(fvar(32), floor(fvar(32)), 1) || fvar(32) := 0

[state 1200, Set Position]
type = posset
trigger1 = !time
y = 0

[state 1200, Change Animation]
type = changeanim
trigger1 = !time
value = 1200 + var(18) - 1

[state 1200, Add Power]
type = poweradd
trigger1 = !animelemtime(3)
value = ceil(30 * fvar(33) + var(25))

[state 1200, Voice]
type = playsnd
trigger1 = !animelemtime(3)
value = 2, 1
volumescale = 100
channel = 0

[state 1200, Sound]
type = playsnd
trigger1 = !animelemtime(2) 
value = 40, 0
volumescale = 100

[state 1200, Sound]
type = playsnd
trigger1 = !animelemtime(3)
value = 1, 1
volumescale = 100
channel = 1

[state 1200, Set State Type]
type = statetypeset
trigger1 = !animelemtime(2)
statetype = A

[state 1200, Set Velocity]
type = velset
trigger1 = !animelemtime(2)
x = cond(anim = 1200, 3.0, cond(anim = 1201, 4.25, 4.5)) * fvar(14)
y = cond(anim = 1200, -4.0, cond(anim = 1201, -4.5, -5.25)) * fvar(15)

[state 1200, Increment Velocity]
type = veladd
trigger1 = animelemtime(2) > 0
y = 0.4375 * fvar(17)

[state 1200, Jump Dust]
type = helper
trigger1 = !animelemtime(2)
trigger1 = cond(numhelper(4000), helper(4000),var(36), 0)
name = "Jump Dust"
ID = 7000
stateno = 7000
postype = P1
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0

[state 1200, Juggle Points 1]
type = null
trigger1 = anim = 1200
trigger1 = animelemtime(3) >= 0 && animelemtime(5) < 0
trigger1 = var(10) := 3 || var(17) := 2 || var(49) := 1200
[state 1200, Hit 1]
type = hitdef
triggerall = var(49) != var(50) && !var(9) && !var(13)
trigger1 = anim = 1200
trigger1 = animelemtime(3) >= 0 && animelemtime(5) < 0
ID = 5650 + 0 * (var(49) := 1200)
attr = A, SA
damage = ceil(cond(107 * fvar(0) < 7, 7, 107 * fvar(0))), 13
fall.envshake.phase = 13 ; stun damage
fall.envshake.freq = var(17) ; hit/attack level
fall.envshake.ampl = 2 ; hit y position
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
hitsound = -1 + 0 * (var(3) := 220)
guardsound = -1 + 0 * (var(4) := cond(p2name = "Urien", 20, 10))
sparkno = -1 + 0 * (var(5) := 25)
guard.sparkno = -1 + 0 * (var(6) := 1)
sparkxy = 0 * (var(7) := 64), 0 * (var(8) := -80)
animtype = hard
ground.type = low
air.animtype = back
air.type = low
ground.slidetime = 12
ground.hittime = 17
guard.slidetime = 12
guard.hittime = 15
air.hittime = cond((var(54) = [1, 2]), 0, 128)
ground.velocity = -2.65625 * fvar(14), (-5.8359375 + cond(p2dist y < -2, 0.05078125 * abs(pos y + p2dist y + 2), 0)) * fvar(15)
guard.velocity = -16.0 * fvar(18)
air.velocity = -2.65625 * fvar(14), (-5.8359375 + cond(p2dist y < -2, 0.05078125 * abs(pos y + p2dist y + 2), 0)) * fvar(15)
airguard.velocity = -4.0 * fvar(14), -4.0 * fvar(15)
ground.cornerpush.veloff = 0.0 * (fvar(3) := 12.0)
guard.cornerpush.veloff = 0.0
yaccel = 0.625 * fvar(20)
getpower = cond(100 - 10 * var(51) < 10, 10, 100 - 10 * var(51)), 20
givepower = 30, 0
envshake.time = 4
envshake.ampl = 1
envshake.freq = 128
fall = 1
air.fall = 1
fall.recover = 0
fall.recovertime = 1
fall.animtype = hard
forcenofall = 0

[state 1200, Juggle Points 2]
type = null
trigger1 = anim = 1201
trigger1 = animelemtime(3) >= 0 && animelemtime(5) < 0
trigger1 = var(10) := 3 || var(17) := 2 || var(49) := 1201
[state 1200, Hit 2]
type = hitdef
triggerall = var(49) != var(50) && !var(9) && !var(13)
trigger1 = anim = 1201
trigger1 = animelemtime(3) >= 0 && animelemtime(5) < 0
ID = 5650 + 0 * (var(49) := 1201)
attr = A, SA
damage = ceil(cond(119 * fvar(0) < 7, 7, 119 * fvar(0))), 13
fall.envshake.phase = 15 ; stun damage
fall.envshake.freq = var(17) ; hit/attack level
fall.envshake.ampl = 2 ; hit y position
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
hitsound = -1 + 0 * (var(3) := 220)
guardsound = -1 + 0 * (var(4) := cond(p2name = "Urien", 20, 10))
sparkno = -1 + 0 * (var(5) := 25)
guard.sparkno = -1 + 0 * (var(6) := 1)
sparkxy = 0 * (var(7) := 64), 0 * (var(8) := -80)
animtype = hard
ground.type = low
air.animtype = back
air.type = low
ground.slidetime = 12
ground.hittime = 17
guard.slidetime = 12
guard.hittime = 15
air.hittime = cond((var(54) = [1, 2]), 0, 128)
ground.velocity = -2.65625 * fvar(14), (-5.8359375 + cond(p2dist y < -2, 0.05078125 * abs(pos y + p2dist y + 2), 0)) * fvar(15)
guard.velocity = -16.0 * fvar(18)
air.velocity = -2.65625 * fvar(14), (-5.8359375 + cond(p2dist y < -2, 0.05078125 * abs(pos y + p2dist y + 2), 0)) * fvar(15)
airguard.velocity = -4.0 * fvar(14), -4.0 * fvar(15)
ground.cornerpush.veloff = 0.0 * (fvar(3) := 12.0)
guard.cornerpush.veloff = 0.0
yaccel = 0.625 * fvar(20)
getpower = cond(100 - 10 * var(51) < 10, 10, 100 - 10 * var(51)), 20
givepower = 30, 0
envshake.time = 4
envshake.ampl = 1
envshake.freq = 128
fall = 1
air.fall = 1
fall.recover = 0
fall.recovertime = 1
fall.animtype = hard
forcenofall = 0

[state 1200, Juggle Points 3]
type = null
trigger1 = anim = 1202
trigger1 = animelemtime(3) >= 0 && animelemtime(5) < 0
trigger1 = var(10) := 3 || var(17) := 2 || var(49) := 1202
[state 1200, Hit 3]
type = hitdef
triggerall = var(49) != var(50) && !var(9) && !var(13)
trigger1 = anim = 1202
trigger1 = animelemtime(3) >= 0 && animelemtime(5) < 0
ID = 5650 + 0 * (var(49) := 1202)
attr = A, SA
damage = ceil(cond(125 * fvar(0) < 7, 7, 125 * fvar(0))), 13
fall.envshake.phase = 17 ; stun damage
fall.envshake.freq = var(17) ; hit/attack level
fall.envshake.ampl = 2 ; hit y position
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
hitsound = -1 + 0 * (var(3) := 220)
guardsound = -1 + 0 * (var(4) := cond(p2name = "Urien", 20, 10))
sparkno = -1 + 0 * (var(5) := 25)
guard.sparkno = -1 + 0 * (var(6) := 1)
sparkxy = 0 * (var(7) := 64), 0 * (var(8) := -80)
animtype = hard
ground.type = low
air.animtype = back
air.type = low
ground.slidetime = 12
ground.hittime = 17
guard.slidetime = 12
guard.hittime = 15
air.hittime = cond((var(54) = [1, 2]), 0, 128)
ground.velocity = -2.65625 * fvar(14), (-5.8359375 + cond(p2dist y < -2, 0.05078125 * abs(pos y + p2dist y + 2), 0)) * fvar(15)
guard.velocity = -16.0 * fvar(18)
air.velocity = -2.65625 * fvar(14), (-5.8359375 + cond(p2dist y < -2, 0.05078125 * abs(pos y + p2dist y + 2), 0)) * fvar(15)
airguard.velocity = -4.0 * fvar(14), -4.0 * fvar(15)
ground.cornerpush.veloff = 0.0 * (fvar(3) := 12.0)
guard.cornerpush.veloff = 0.0
yaccel = 0.625 * fvar(20)
getpower = cond(100 - 10 * var(51) < 10, 10, 100 - 10 * var(51)), 20
givepower = 30, 0
envshake.time = 4
envshake.ampl = 1
envshake.freq = 128
fall = 1
air.fall = 1
fall.recover = 0
fall.recovertime = 1
fall.animtype = hard
forcenofall = 0

[state 1200, Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I
persistent = 0

[state 1200, End State]
type = changestate
trigger1 = pos y + vel y > 0
value = 1205

;=========================================================================
; Headbutt Land
;=========================================================================
[Statedef 1205]
type = S
movetype = I
physics = S
ctrl = 0
velset = 0, 0
sprpriority = 0

[state 1205, Set Position]
type = posset
trigger1 = !time
y = 0

[state 1205, Change Animation]
type = changeanim
trigger1 = !time
value = 1205 - 1195 * (command = "holddown")

[state 1205, Set State Type]
type = statetypeset
trigger1 = anim = 10
statetype = C
physics = C
persistent = 0

[state 1205, Control]
type = ctrlset
trigger1 = time = 1
value = 1
persistent = 0

[state 1205, Special Effect]
type = assertspecial
trigger1 = !ctrl
trigger2 = time < 2
flag = nowalk

[state 1205, Sound]
type = playsnd
trigger1 = !time 
value = 52, 0
volumescale = 100

[state 1205, Land Smoke]
type = helper
trigger1 = !time
trigger1 = cond(numhelper(4000), helper(4000),var(36), 0)
name = "Land Smoke"
ID = 7010
stateno = 7010
postype = P1
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0

[state 1205, End State]
type = changestate
triggerall = ctrl
trigger1 = command = "holdup"
trigger2 = command = "holdback" && inguarddist
value = cond(command = "holdup", 40, 120)

[state 1205, End State]
type = changestate
trigger1 = !animtime
value = 0 + 11 * (statetype = C)
ctrl = 1

;=========================================================================
; Violence Kneedrop
;=========================================================================
[Statedef 1300]
type = S
movetype = A
physics = N
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 1

[state 1300, Level]
type = null
triggerall = !time
triggerall = var(0) := 0 || var(1) := 0 || var(17) := 2 || 1
triggerall = fvar(30) := 0 || fvar(31) := 0 || 1
trigger1 = cond(ailevel, 1 * (var(18) := var(18) + !var(18)), 0)
trigger2 = cond(!fvar(32) && (command = "c" || command = "NE_c"), 1 * (var(18) := 3), 0)
trigger3 = cond(!fvar(32) && (command = "b" || command = "NE_b"), 1 * (var(18) := 2), 0)
trigger4 = var(18) := cond(fvar(32), floor(fvar(32)), 1) || fvar(32) := 0

[state 1300, Set Position]
type = posset
trigger1 = !time
y = 0

[state 1300, Change Animation]
type = changeanim
trigger1 = !time
value = 1300 ; + var(18) - 1

[state 1300, Contact Animation]
type = changeanim
trigger1 = movecontact || movereversed
trigger1 = animelemtime(16) < 0
value = 1300
elem = 16

[state 1300, Add Power]
type = poweradd
trigger1 = !animelemtime(15)
value = ceil(30 * fvar(33) + var(25))

[state 1300, Voice]
type = playsnd
trigger1 = !animelemtime(15)
value = 1300, 0
volumescale = 100

[state 1300, Sound]
type = playsnd
trigger1 = !animelemtime(2) 
value = 40, 0
volumescale = 100

[state 1300, Sound]
type = playsnd
trigger1 = !animelemtime(15)
value = 1, 1
volumescale = 100
channel = 1

[state 1300, Set State Type]
type = statetypeset
trigger1 = !animelemtime(2)
statetype = A

[state 1300, Set Velocity]
type = velset
trigger1 = !animelemtime(2)
y = cond(var(18) = 1, -9.0, cond(var(18) = 2, -9.0, -8.9375)) * fvar(15)
[state 1300, Increment Velocity]
type = veladd
trigger1 = animelemtime(2) > 0 && animelemtime(15) < 0
y = 0.5 * fvar(17)

[state 1300, Set Velocity]
type = velset
trigger1 = !animelemtime(15)
x = cond(var(18) = 1, 6.0, cond(var(18) = 2, 12.0, 15.0)) * fvar(14)
y = cond(var(18) = 1, 8.0, cond(var(18) = 2, 6.125, 3.0)) * fvar(15)
[state 1300, Increment Velocity]
type = veladd
trigger1 = animelemtime(15) > 0 && animelemtime(16) < 0
y = cond(var(18) = 1, 0.5, cond(var(18) = 2, 0.5625, 0.625)) * fvar(17)

[state 1300, Set Velocity]
type = velset
trigger1 = movecontact || movereversed
trigger1 = !animelemtime(16)
x = -1.5 * fvar(14)
y = -7.0 * fvar(15)
[state 1300, Increment Velocity]
type = veladd
trigger1 = movecontact || movereversed
trigger1 = animelemtime(16) > 0
y = 0.75 * fvar(17)

[state 1300, Jump Dust]
type = helper
trigger1 = !animelemtime(2)
trigger1 = cond(numhelper(4000), helper(4000),var(36), 0)
name = "Jump Dust"
ID = 7000
stateno = 7000
postype = P1
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0

[state 1300, Juggle Points 1]
type = null
trigger1 = animelemtime(15) >= 0 && animelemtime(16) < 0
trigger1 = var(10) := 1 || var(17) := 2 || var(49) := 1300
[state 1300, Hit 1]
type = hitdef
triggerall = var(49) != var(50) && !var(9) && !var(13)
trigger1 = animelemtime(15) >= 0 && animelemtime(16) < 0
ID = cond(p2statetype = A, 0, 5655) + 0 * (var(49) := 1300)
attr = A, SA
damage = ceil(cond(100 * fvar(0) < 7, 7, 100 * fvar(0))), 13
fall.envshake.phase = 11 ; stun damage
fall.envshake.freq = var(17) ; hit/attack level
fall.envshake.ampl = 0 ; hit y position
guardflag = H
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
hitsound = -1 + 0 * (var(3) := 320)
guardsound = -1 + 0 * (var(4) := cond(p2name = "Urien", 20, 10))
sparkno = -1 + 0 * (var(5) := 26)
guard.sparkno = -1 + 0 * (var(6) := 1)
sparkxy = 0 * (var(7) := 16), 0 * (var(8) := -56)
animtype = hard
ground.type = low
air.animtype = back
air.type = low
ground.slidetime = 7
ground.hittime = 17
guard.slidetime = 7
guard.hittime = 15
air.hittime = cond((var(54) = [1, 2]), 0, 128)
ground.velocity = -3.1875 * fvar(14), 0.0 * fvar(15)
guard.velocity = -8.0 * fvar(18)
air.velocity = -3.1875 * fvar(14), 4.25 * fvar(15)
airguard.velocity = -4.0 * fvar(14), -4.0 * fvar(15)
ground.cornerpush.veloff = 0.0 * (fvar(3) := 7.0)
guard.cornerpush.veloff = 0.0
yaccel = 0.5 * fvar(20)
getpower = cond(150 - 10 * var(51) < 10, 10, 150 - 10 * var(51)), 90
givepower = 40, 0
envshake.time = 4
envshake.ampl = 1
envshake.freq = 128
fall = 1
air.fall = 1
fall.recover = 0
fall.recovertime = 1
fall.animtype = back
forcenofall = 0

[state 1300, Idle]
type = statetypeset
trigger1 = animelemtime(16) >= 0
movetype = I
persistent = 0

[state 1300, End State]
type = changestate
trigger1 = cond(movecontact, animelemtime(16) > 0, 1)
trigger1 = pos y + vel y > cond(animelemtime(16) >= 0, 0, 23)
value = 1305

;=========================================================================
; Kneedrop Land
;=========================================================================
[Statedef 1305]
type = S
movetype = I
physics = S
ctrl = 0
velset = 0, 0
sprpriority = 0

[state 1305, Set Position]
type = posset
trigger1 = !time
y = 0

[state 1305, Change Animation]
type = changeanim
trigger1 = !time
value = 1305 - 1295 * (command = "holddown")

[state 1305, Set State Type]
type = statetypeset
trigger1 = anim = 10
statetype = C
physics = C
persistent = 0

[state 1305, Control]
type = ctrlset
trigger1 = time >= 6
value = 1
persistent = 0

[state 1305, Sound]
type = playsnd
trigger1 = !time 
value = 52, 0
volumescale = 100

[state 1305, Land Smoke]
type = helper
trigger1 = !time
trigger1 = cond(numhelper(4000), helper(4000),var(36), 0)
name = "Land Smoke"
ID = 7010
stateno = 7010
postype = P1
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0

[state 1305, End State]
type = changestate
triggerall = ctrl
trigger1 = command = "holdup"
trigger2 = command = "holdback" && inguarddist
value = cond(command = "holdup", 40, 120)

[state 1305, End State]
type = changestate
trigger1 = !animtime
value = 0 + 11 * (statetype = C)
ctrl = 1
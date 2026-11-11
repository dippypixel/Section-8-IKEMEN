; Urien By RajaaBoy

;=========================================================================
; EX Metallic Sphere
;=========================================================================
[Statedef 1050]
type = S
movetype = A
physics = N
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 0

;========================< EX Indication >========================

[state 1050, Level]
type = null
trigger1 = !time
trigger1 = var(0) := 0 || var(1) := 0 || 1
trigger1 = var(17) := 2 || var(18) := 4 || 1
trigger1 = fvar(30) := 0 || fvar(31) := 0

[state 1050, Set Position]
type = posset
trigger1 = !time
y = 0

[state 1050, Change Animation]
type = changeanim
trigger1 = !time
value = 1050

[state 1050, Add Power]
type = poweradd
trigger1 = !time
value = -var(26)

[state 1050, EX Special Effect]
type = helper
trigger1 = !time
name = "EX Special Effect"
ID = 6200
stateno = 6200
postype = p1
pos = ceil(16 * const(size.xscale)), ceil(-112 * const(size.yscale))
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0
supermovetime = 2147483647
pausemovetime = 2147483647

;========================< Move Functions >========================

[state 1050, Voice]
type = playsnd
trigger1 = !animelemtime(8)
value = 1000, 0+random%2
volumescale = 100
channel = 0

[state 1050, Sound]
type = playsnd
trigger1 = !animelemtime(8)
value = 3, 0
volumescale = 100

[state 1050, Metallic Sphere]
type = helper
trigger1 = !animelemtime(8)
name = "Metallic Sphere"
ID = 1015
stateno = 1055
postype = p1
ownpal = 1
keyctrl = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)
; size.xscale = 1.0 - 0.5 * cond(numhelper(4000), helper(4000),var(36) != 0, 0)
; size.yscale = 1.0 - 0.5 * cond(numhelper(4000), helper(4000),var(36) != 0, 0)

[state 1050, Idle]
type = statetypeset
trigger1 = animelemtime(8) >= 0
movetype = I
persistent = 0

[state 1050, Control]
type = ctrlset
trigger1 = animelemtime(17) >= 0
value = 1
persistent = 0

[state 1050, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; EX Metal Start 1
;=========================================================================
[Statedef 1055]
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

[state 1055, Trigger Limiter]
type = varadd
trigger1 = movecontact = 1 || movereversed = 1
var(0) = 1
ignorehitpause = 1

[state 1055, Hit Counter]
type = varadd
triggerall = var(0) = 1
trigger1 = movecontact = 1 || movereversed = 1
var(1) = 1 + 0 * (var(2) := 2)
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

[state 1055, Projectile Configuration]
type = null
; Air Reset, Accumulated Juggle Points, Juggle Overdraft
trigger1 = var(9) := root,var(9) ||var(11) := root,var(11) || var(12) := root,var(12) || var(13) := root,var(13) || 1
; Counter Hit, Hit Counter, Damage Scale Hit Counter, Damage Scale
trigger1 = var(45) := root,var(45) || var(51) := root,var(51) || var(52) := root,var(52) || fvar(0) := cond(root,fvar(0) < 0.92, 0.92, root,fvar(0)) || 1
; Attack Level, Power Adder, Power Multiplier
trigger1 = !prevstateno && !time
trigger1 = var(17) := 2 || var(18) := root,var(18) || var(25) := root,var(25) || fvar(33) := root,fvar(33)

[state 1055, Change Animation]
type = changeanim
trigger1 = !prevstateno && !time
value = 1055 + cond(numhelper(4000), helper(4000),var(36) != 0, 0)

[state 1055, Special Effect]
type = assertspecial
trigger1 = cond(numhelper(4000), helper(4000),var(36) != 0, 0)
flag = noshadow
ignorehitpause = 1

[state 1055, Priority]
type = sprpriority
trigger1 = 1
value = 4
ignorehitpause = 1

[state 1055, Vulnerability]
type = hitby
trigger1 = var(1) < 8
value = SCA,AP
time = -1
ignorehitpause = 1

[state 1055, Hit Override]
type = hitoverride
trigger1 = var(1) < 8
attr = SCA,AP
stateno = 1056
slot = 0
time = -1
forceair = 0
ignorehitpause = 1

[state 1055, Vulnerability]
type = nothitby
trigger1 = var(1) >= 8
value = SCA
time = -1
ignorehitpause = 1

[state 1055, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)
ignorehitpause = 1

;========================< Projectile Functionality >========================

[state 1055, Bind to Parent]
type = bindtoparent
trigger1 = !prevstateno && !time
pos = 44, -76

[state 1055, Set Velocity]
type = velset
trigger1 = 1
x = 5.5 * root,fvar(14)
y = 0.0 * root,fvar(15)

[state 1055, Miss]
type = hitdef
trigger1 = !hitpausetime
attr = S, SP
hitflag = 

[state 1055, Juggle Points 1]
type = null
trigger1 = var(2) <= 0
trigger1 = var(10) := 1 || var(17) := 2 || var(49) := 1055
[state 1055, Hit 1]
type = hitdef
triggerall = !var(9) && !var(13) ; var(49) != var(50) &&
trigger1 = var(2) <= 0
ID = 5800 + 0 * (var(49) := 1055)
attr = S, SP
damage = ceil(cond(69 * fvar(0) < 7, 7, 15 * fvar(0))), 7
fall.envshake.phase = 3 ; stun damage
fall.envshake.freq = var(17) ; hit/attack level
fall.envshake.ampl = 0 ; hit y position
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 15, 18
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

[state 1055, Accumulated Juggle Points]
type = parentvaradd
triggerall = var(0) = 1
trigger1 = movehit = 1 && numtarget
var(11) = var(10)
ignorehitpause = 1
[state 1055, Set Juggle Window]
type = parentvarset
triggerall = var(0) = 1
trigger1 = movehit = 1 && numtarget
trigger1 = var(11) := root,var(11) || 1
var(12) = cond((var(11) = [1, 6]), 120 - 20 * (var(11) - 1), cond(var(11) = 7, 10, cond(var(11) = 8, 4, cond(var(11) = 9, 2, cond(var(11) >= 10, 1, var(12))))))
ignorehitpause = 1
[state 1055, Score]
type = parentvaradd
triggerall = var(0) = 1
trigger1 = movehit = 1 && numtarget
var(20) = 200
ignorehitpause = 1
[state 1055, Hit Counter]
type = parentvaradd
triggerall = var(0) = 1
trigger1 = movehit = 1 && numtarget
var(51) = 1
ignorehitpause = 1
[state 1055, Hit Counter]
type = parentvaradd
triggerall = var(0) = 1
trigger1 = movehit = 1 && numtarget
var(52) = 1
ignorehitpause = 1
[state 1055, Reprisal]
type = parentvarset
triggerall = var(0) = 1
trigger1 = var(45) = 1
trigger1 = movehit = 1 && numtarget
var(45) = 4
ignorehitpause = 1
[state 1055, Cornerpush Target ID]
type = parentvarset
triggerall = var(0) = 1
trigger1 = movecontact = 1 && numtarget
var(57) = (var(57) := target,ID)
ignorehitpause = 1
[state 1055, Target ID]
type = parentvarset
triggerall = var(0) = 1
trigger1 = movecontact = 1 && numtarget
var(58) = (var(58) := target,ID)
ignorehitpause = 1
[state 1055, Cornerpush Force]
type = parentvarset
triggerall = var(0) = 1
trigger1 = movecontact = 1 && numtarget
fvar(1) = target,gethitvar(xvel) ; * (1.0 + cond(var(51) * 0.05 < 0.5, var(51) * 0.05, 0.5))
ignorehitpause = 1
[state 1055, Cornerpush Duration]
type = parentvarset
triggerall = var(0) = 1
trigger1 = movecontact = 1 && numtarget
fvar(2) = fvar(3)
ignorehitpause = 1

[state 1055, Hit Sound]
type = playsnd
triggerall = var(0) = 1
trigger1 = movecontact = 1 || movereversed = 1
trigger2 = prevstateno && !time
value = cond(movehit, 200, 120), cond(movehit, var(3), var(4)) + 40 * cond(numhelper(4000), movehit && helper(4000),var(38) && (var(3) = [200, 330]), 0)
channel = 2
ignorehitpause = 1

[state 1055, Hitspark]
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

[state 1055, Miss]
type = hitdef
trigger1 = hitpausetime || var(1) >= 8
attr = S, SP
hitflag = 
ignorehitpause = 1
;========================< Projectile Destroy >========================

[state 1055, End State]
type = changestate
trigger1 = var(1) >= 8 && !hitpausetime
value = 1057
ignorehitpause = 1

[state 1055, Destroy Helper]
type = destroyself
trigger1 = screenpos x != [-64, gamewidth + 64]
trigger2 = screenpos y < -64

[state 1055, Trigger Limiter]
type = varset
trigger1 = !hitpausetime
var(0) = 0
ignorehitpause = 1

;=========================================================================
; EX Metal Canceled 1
;=========================================================================
[Statedef 1056]
type = S
movetype = A
physics = N
ctrl = 0
movehitpersist = 1

[state 1056, Hit Counter]
type = varadd
trigger1 = !time
var(1) = 1

[state 1056, Change Animation]
type = changeanim
trigger1 = 1
value = 1055 + cond(numhelper(4000), helper(4000),var(36) != 0, 0)
elem = animelemno(0)

[state 1056, Special Effect]
type = assertspecial
trigger1 = cond(numhelper(4000), helper(4000),var(36) != 0, 0)
flag = noshadow

[state 1056, Priority]
type = sprpriority
trigger1 = 1
value = 4

[state 1056, Freeze Position]
type = posfreeze
trigger1 = 1
value = 1

[state 1056, Vulnerability]
type = hitby
trigger1 = var(1) < 8
value = SCA,AP
time = -1

[state 1056, Hit Override]
type = hitoverride
trigger1 = var(1) < 8
attr = SCA,AP
stateno = 1056
slot = 0
time = -1
forceair = 0

[state 1056, Vulnerability]
type = nothitby
trigger1 = var(1) >= 8
value = SCA
time = -1

[state 1056, Hit Sound]
type = playsnd
trigger1 = !time
value = 120, 10
channel = 2

[state 1056, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 1056, Miss]
type = hitdef
trigger1 = 1
attr = S, SP
hitflag = 

[state 1056, End State]
type = changestate
trigger1 = time >= cond(var(1) < 2, 8, 0)
value = cond(var(1) < 2, 1055, 1057)

;=========================================================================
; EX Metal End 1
;=========================================================================
[Statedef 1057]
type = S
movetype = I
physics = N
ctrl = 0
velset = 0, 0
movehitpersist = 1

[state 1057, Change Animation]
type = changeanim
trigger1 = !time
value = 2147483647

[state 1057, Special Effect]
type = assertspecial
trigger1 = cond(numhelper(4000), helper(4000),var(36) != 0, 0)
flag = noshadow

[state 1057, Priority]
type = sprpriority
trigger1 = ishelper(1057)
value = 5

[state 1057, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 1057, Destroy]
type = destroyself
trigger1 = time = 20

;=========================================================================
; EX Metal Reflected 1
;=========================================================================
[Statedef 1060]
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

[state 1060, Trigger Limiter]
type = varadd
trigger1 = movecontact = 1 || movereversed = 1
var(0) = 1
ignorehitpause = 1

[state 1060, Hit Counter]
type = varadd
triggerall = var(0) = 1
trigger1 = movecontact = 1 || movereversed = 1
var(1) = 1 + 0 * (var(2) := 2)
ignorehitpause = 1

[state 1060, Hit Cooldown]
type = varset
trigger1 = !time
var(2) = -1
ignorehitpause = 1
[state 1060, Hit Cooldown]
type = varadd
trigger1 = !hitpausetime
var(2) = -1
ignorehitpause = 1

[state 1060, Reset Projectile]
type = varset
trigger1 = prevstateno = 9992 && !time
var(0) = 0
[state 1060, Reset Projectile]
type = varset
trigger1 = prevstateno = 9992 && !time
var(1) = 0

[state 1060, Projectile Configuration]
type = null
; Air Reset, Accumulated Juggle Points, Juggle Overdraft
trigger1 = var(9) := root,var(9) ||var(11) := root,var(11) || var(12) := root,var(12) || var(13) := root,var(13) || 1
; Counter Hit, Hit Counter, Damage Scale Hit Counter, Damage Scale
trigger1 = var(45) := root,var(45) || var(51) := root,var(51) || var(52) := root,var(52) || fvar(0) := cond(root,fvar(0) < 0.92, 0.92, root,fvar(0)) || 1
; Attack Level, Power Adder, Power Multiplier
trigger1 = !prevstateno && !time
trigger1 = var(17) := 2 || var(18) := root,var(18) || var(25) := root,var(25) || fvar(33) := root,fvar(33)

[state 1060, Special Effect]
type = assertspecial
trigger1 = cond(numhelper(4000), helper(4000),var(36) != 0, 0)
flag = noshadow
ignorehitpause = 1

[state 1060, Priority]
type = sprpriority
trigger1 = 1
value = 4
ignorehitpause = 1

[state 1060, Vulnerability]
type = hitby
trigger1 = var(1) < 2
value = SCA,AP
time = -1
ignorehitpause = 1

[state 1060, Hit Override]
type = hitoverride
trigger1 = var(1) < 2
attr = SCA,AP
stateno = 1061
slot = 0
time = -1
forceair = 0
ignorehitpause = 1

[state 1060, Vulnerability]
type = nothitby
trigger1 = var(1) >= 2
value = SCA
time = -1
ignorehitpause = 1

[state 1060, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)
ignorehitpause = 1

;========================< Projectile Functionality >========================

[state 1060, Set Velocity]
type = velset
trigger1 = 1
x = 4.0 * root,fvar(14)
y = 0.0 * root,fvar(15)

[state 1060, Miss]
type = hitdef
trigger1 = !hitpausetime
attr = , SP
hitflag = 

[state 1060, Juggle Points 1]
type = null
trigger1 = var(2) <= 0
trigger1 = var(10) := 1 || var(17) := 2 || var(49) := 1060
[state 1060, Hit 1]
type = hitdef
triggerall = numenemy
triggerall = !enemy,var(9) && !enemy,var(13) ; var(49) != var(50) &&
trigger1 = var(2) <= 0
ID = 5800 + 0 * (var(49) := 1060)
attr = , SP
damage = ceil(cond(69 * fvar(0) < 7, 7, 69 * fvar(0))), 7
fall.envshake.phase = 3 ; stun damage
fall.envshake.freq = var(17) ; hit/attack level
fall.envshake.ampl = 0 ; hit y position
guardflag = M
hitflag = MAF
affectteam = F
priority = 4, Hit
pausetime = cond(!var(1), 6, 0), 18
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

[state 1060, Juggle Points 1]
type = parentvarset
trigger1 = var(0) = 1
trigger1 = movecontact = 1 || movereversed = 1
fvar(35) = cond(var(49) = 1060, 1, 0)
ignorehitpause = 1

[state 1060, Reflective Juggle Points]
type = parentvarset
trigger1 = var(0) = 1
trigger1 = movecontact = 1 || movereversed = 1
fvar(36) = 1
ignorehitpause = 1

[state 1060, Hit Sound]
type = playsnd
triggerall = var(0) = 1
trigger1 = movecontact = 1 || movereversed = 1
trigger2 = prevstateno && !time
value = cond(movehit, 200, 120), cond(movehit, var(3), var(4)) + 40 * cond(numhelper(4000), movehit && helper(4000),var(38) && (var(3) = [200, 330]), 0)
channel = 2
ignorehitpause = 1

[state 1060, Hitspark]
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

[state 1060, Electricspark]
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

[state 1060, EX Metal Spark]
type = helper
triggerall = var(0) = 1
triggerall = var(1) = 1
trigger1 = movecontact = 1 || movereversed = 1
trigger2 = prevstateno && !time
name = "EX Metal Spark"
ID = 1057
stateno = 1057
postype = p1
ownpal = 0
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0
ignorehitpause = 1

[state 1060, Miss]
type = hitdef
trigger1 = hitpausetime || var(1) >= 2
attr = , SP
hitflag = 
ignorehitpause = 1

[state 1060, Shock]
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

[state 1060, End State]
type = changestate
trigger1 = var(1) >= 2 && !hitpausetime
value = 1057
ignorehitpause = 1

[state 1060, Destroy Helper]
type = destroyself
trigger1 = screenpos x != [-64, gamewidth + 64]
trigger2 = screenpos y < -64

[state 1060, Trigger Limiter]
type = varset
trigger1 = !hitpausetime
var(0) = 0
ignorehitpause = 1

;=========================================================================
; EX Metal Canceled 2
;=========================================================================
[Statedef 1061]
type = S
movetype = A
physics = N
ctrl = 0
movehitpersist = 1

[state 1061, Hit Counter]
type = varadd
trigger1 = !time
var(1) = 1

[state 1061, Change Animation]
type = changeanim
trigger1 = 1
value = 1055 + cond(numhelper(4000), helper(4000),var(36) != 0, 0)
elem = animelemno(0)

[state 1061, Special Effect]
type = assertspecial
trigger1 = cond(numhelper(4000), helper(4000),var(36) != 0, 0)
flag = noshadow

[state 1061, Priority]
type = sprpriority
trigger1 = 1
value = 4

[state 1061, Freeze Position]
type = posfreeze
trigger1 = 1
value = 1

[state 1061, Vulnerability]
type = hitby
trigger1 = var(1) < 2
value = SCA,AP
time = -1

[state 1061, Hit Override]
type = hitoverride
trigger1 = var(1) < 2
attr = SCA,AP
stateno = 1061
slot = 0
time = -1
forceair = 0

[state 1061, Vulnerability]
type = nothitby
trigger1 = var(1) >= 2
value = SCA
time = -1

[state 1061, Hit Sound]
type = playsnd
trigger1 = !time
value = 120, 10
channel = 2

[state 1061, Attack Distance]
type = attackdist
trigger1 = !time
value = const(size.proj.attack.dist)

[state 1061, Miss]
type = hitdef
trigger1 = 1
attr = S, NP
hitflag = 

[state 1061, End State]
type = changestate
trigger1 = time >= cond(var(1) < 2, 6, 0)
value = cond(var(1) < 2, 1060, 1057)

;=========================================================================
; EX Chariot Tackle
;=========================================================================
[Statedef 1150]
type = S
movetype = A
physics = N
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 1

;========================< EX Indication >========================

[state 1150, Level]
type = null
trigger1 = !time
trigger1 = var(0) := 0 || var(1) := 0 || 1
trigger1 = var(17) := 2 || var(18) := 4 || 1
trigger1 = fvar(30) := 0 || fvar(31) := 0

[state 1150, Set Position]
type = posset
trigger1 = !time
y = 0

[state 1150, Change Animation]
type = changeanim
trigger1 = !time
value = 1150

[state 1150, Add Power]
type = poweradd
trigger1 = !time
value = -var(26)

[state 1150, EX Special Effect]
type = helper
trigger1 = !time
name = "EX Special Effect"
ID = 6200
stateno = 6200
postype = p1
pos = ceil(8 * const(size.xscale)), ceil(-96 * const(size.yscale))
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0
supermovetime = 2147483647
pausemovetime = 2147483647

;========================< Move Functions >========================

[state 1150, Pause Frame 1]
type = changeanim
trigger1 = anim = 1150
trigger1 = animelemtime(4) > 0 && animelemtime(5) <= 0
trigger1 = hitpausetime
value = 1150
elem = 5
ignorehitpause = 1
persistent = 0

[state 1150, Pause Frame 2]
type = changeanim
trigger1 = anim = 1150
trigger1 = movecontact && !hitpausetime
trigger1 = animelemtime(5) = 3
value = 1150
elem = 6
ignorehitpause = 1
persistent = 0

[state 1150, Pause Frame 3]
type = changeanim
trigger1 = anim = 1150
trigger1 = animelemtime(9) > 0 && animelemtime(13) <= 0
trigger1 = hitpausetime
value = 1150
elem = 13
ignorehitpause = 1
persistent = 0

[state 1150, Pause Frame 4]
type = changeanim
trigger1 = anim = 1150
trigger1 = movecontact && !hitpausetime
trigger1 = animelemtime(13) = 0 
value = cond(movehit, 1155, 1160)
ignorehitpause = 1
persistent = 0

[state 1150, Vulnerability]
type = hitby
trigger1 = anim = 1150
trigger1 = animelemtime(2) < 0
value = SCA,AT
time = 1

[state 1150, Voice]
type = playsnd
trigger1 = anim = 1150 && !animelemtime(4)
value = 2, 0
volumescale = 100
channel = 0

[state 1150, Voice]
type = playsnd
trigger1 = anim = 1150 && !animelemtime(4)
value = 1300,1
volumescale = 100
channel = 0
[state 1150, Dust]
type = helper
trigger1 = anim = 1150 && !animelemtime(3)
trigger2 = anim = 1150 && !animelemtime(9)
name = "Dust"
ID = cond(numhelper(4000), cond(helper(4000),var(36), 7015, 6001), 6001)
stateno = cond(numhelper(4000), cond(helper(4000),var(36), 7015, 6001), 6001)
postype = P1
pos = -24, 0
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0

[state 1150, Increment Position]
type = posadd
trigger1 = anim = 1150
trigger1 = !animelemtime(2)
x = 16.0
[state 1150, Increment Position]
type = posadd
trigger1 = anim = 1150
trigger1 = !animelemtime(3)
x = -9.0

[state 1150, Set Velocity]
type = velset
trigger1 = anim = 1150
trigger1 = !animelemtime(3)
x = 19.0 * fvar(14)
[state 1150, Set Velocity]
type = velset
trigger1 = anim = 1150
trigger1 = !animelemtime(9)
x = 16.0 * fvar(14)
[state 1150, Set Velocity]
type = velset
trigger1 = anim = 1150
trigger1 = !animelemtime(13)
x = 3.125 * fvar(14)

[state 1150, Increment Velocity]
type = veladd
triggerall = vel x > 0
trigger1 = anim = 1150
trigger1 = animelemtime(3) > 0 && animelemtime(13) < 0
trigger2 = anim = 1155 || anim = 1160
x = -0.25 * fvar(16)
[state 1150, Increment Velocity]
type = veladd
triggerall = vel x > 0
trigger1 = anim = 1150
trigger1 = animelemtime(13) > 0
x = -0.09375 * fvar(16)

[state 1150, Increment Position]
type = posadd
trigger1 = anim = 1150 && !animelemtime(16)
trigger2 = anim = 1155 && !animelemtime(2)
trigger3 = anim = 1160 && !animelemtime(1)
x = vel x * fvar(14)

[state 1150, Set Velocity]
type = velset
triggerall = anim = 1150 || anim = 1155 || anim = 1160
trigger1 = vel x < 0
trigger2 = anim = 1150 && !animelemtime(16)
trigger3 = anim = 1155 && !animelemtime(2)
trigger4 = anim = 1160 && !animelemtime(1)
x = 0.0 * fvar(14)

[state 1150, Juggle Points 1]
type = null
trigger1 = anim = 1150
trigger1 = animelemtime(4) >= 0 && animelemtime(9) < 0
trigger1 = var(10) := 1 || var(17) := 2 || var(49) := 1150
[state 1150, Hit 1]
type = hitdef
triggerall = var(49) != var(50) && !var(9) && !var(13)
trigger1 = anim = 1150
trigger1 = animelemtime(4) >= 0 && animelemtime(9) < 0
ID = 0 + 0 * (var(49) := 1150)
attr = S, SA
damage = ceil(cond(82 * fvar(0) < 7, 7, 82 * fvar(0))), 7
fall.envshake.phase = 9 ; stun damage
fall.envshake.freq = var(17) ; hit/attack level
fall.envshake.ampl = 0 ; hit y position
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 4, cond(p2statetype = A, 4, 12)
hitsound = -1 + 0 * (var(3) := 220)
guardsound = -1 + 0 * (var(4) := cond(p2name = "Urien", 20, 10))
sparkno = -1 + 0 * (var(5) := 24)
guard.sparkno = -1 + 0 * (var(6) := 1)
sparkxy = 0 * (var(7) := 40), 0 * (var(8) := -80)
animtype = hard
ground.type = high
air.animtype = back
air.type = low
ground.slidetime = 9
ground.hittime = 17
guard.slidetime = 9
guard.hittime = 15
air.hittime = cond((var(54) = [1, 2]), 0, 128)
ground.velocity = -12.0 * fvar(18)
guard.velocity = -12.0 * fvar(18)
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
fall.recovertime = 1
fall.animtype = back
forcenofall = 0

[state 1150, Juggle Points 2]
type = null
trigger1 = anim = 1150
trigger1 = animelemtime(9) >= 0 && animelemtime(13) < 0
trigger1 = var(10) := 1 || var(17) := 2 || var(49) := 1151
[state 1150, Hit 2]
type = hitdef
triggerall = var(49) != var(50) && !var(9) && !var(13)
trigger1 = anim = 1150
trigger1 = animelemtime(9) >= 0 && animelemtime(13) < 0
ID = 0 + 0 * (var(49) := 1151)
attr = S, SA
damage = ceil(cond(69 * fvar(0) < 7, 7, 69 * fvar(0))), 7
fall.envshake.phase = 9 ; stun damage
fall.envshake.freq = var(17) ; hit/attack level
fall.envshake.ampl = 0 ; hit y position
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = cond(p2statetype = A, 4, 9), cond(p2statetype = A, 9, 12)
hitsound = -1 + 0 * (var(3) := 220)
guardsound = -1 + 0 * (var(4) := cond(p2name = "Urien", 20, 10))
sparkno = -1 + 0 * (var(5) := 24)
guard.sparkno = -1 + 0 * (var(6) := 1)
sparkxy = 0 * (var(7) := 40), 0 * (var(8) := -80)
animtype = hard
ground.type = high
air.animtype = back
air.type = low
ground.slidetime = 7
ground.hittime = 17
guard.slidetime = 7
guard.hittime = 15
air.hittime = cond((var(54) = [1, 2]), 0, 128)
ground.velocity = -8.0 * fvar(18)
guard.velocity = -8.0 * fvar(18)
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
fall.recovertime = 1
fall.animtype = back
forcenofall = 0

[state 1150, Idle]
type = statetypeset
trigger1 = anim = 1150 && animelemtime(13) >= 0
trigger2 = anim = 1155 || anim = 1160
movetype = I
persistent = 0

[state 1150, Control]
type = ctrlset
trigger1 = anim = 1150 && animelemtime(20) >= 0
trigger2 = anim = 1155 && animelemtime(7) >= 0
trigger3 = anim = 1160 && animelemtime(7) >= 0
value = 1
persistent = 0

[state 1150, End State]
type = changestate
trigger1 = !animtime
value = 0 
ctrl = 1

;=========================================================================
; EX Dangerous Headbutt
;=========================================================================
[Statedef 1250]
type = S
movetype = A
physics = N
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 1

;========================< EX Indication >========================

[state 1250, Level]
type = null
trigger1 = !time
trigger1 = var(0) := 0 || var(1) := 0 || 1
trigger1 = var(17) := 2 || var(18) := 4 || 1
trigger1 = fvar(30) := 0 || fvar(31) := 0

[state 1250, Set Position]
type = posset
trigger1 = !time
y = 0

[state 1250, Change Animation]
type = changeanim
trigger1 = !time
value = 1250

[state 1250, Add Power]
type = poweradd
trigger1 = !time
value = -var(26)

[state 1250, EX Special Effect]
type = helper
trigger1 = !time
name = "EX Special Effect"
ID = 6200
stateno = 6200
postype = p1
pos = ceil(4 * const(size.xscale)), ceil(-120 * const(size.yscale))
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0
supermovetime = 2147483647
pausemovetime = 2147483647

;========================< Move Functions >========================

[state 1250, Voice]
type = playsnd
trigger1 = !animelemtime(3)
value = 2, 1
volumescale = 100
channel = 0

[state 1250, Sound]
type = playsnd
trigger1 = !animelemtime(2) 
value = 40, 0
volumescale = 100

[state 1250, Sound]
type = playsnd
trigger1 = !animelemtime(3)
value = 1, 1
volumescale = 100
channel = 1

[state 1250, Set State Type]
type = statetypeset
trigger1 = !animelemtime(2)
statetype = A

[state 1250, Set Velocity]
type = velset
trigger1 = !animelemtime(2)
x = 6.75 * fvar(14)
y = -4.125 * fvar(15)

[state 1250, Increment Velocity]
type = veladd
trigger1 = animelemtime(2) > 0
y = 0.4375 * fvar(17)

[state 1250, Jump Dust]
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

[state 1250, Juggle Points 1]
type = null
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
trigger1 = var(10) := 1 || var(17) := 2 || var(49) := 1250
[state 1250, Hit 1]
type = hitdef
triggerall = var(49) != var(50) && !var(9) && !var(13)
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
ID = 5800 + 0 * (var(49) := 1250)
attr = A, SA
damage = ceil(cond(69 * fvar(0) < 7, 7, 69 * fvar(0))), 7
fall.envshake.phase = 11 ; stun damage
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
ground.velocity = -2.65625 * fvar(14), -7.75 * fvar(15)
guard.velocity = -16.0 * fvar(18)
air.velocity = -2.65625 * fvar(14), -7.75 * fvar(15)
airguard.velocity = -4.0 * fvar(14), -4.0 * fvar(15)
ground.cornerpush.veloff = 0.0 * (fvar(3) := 12.0)
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
fall.recovertime = 1
fall.animtype = hard
forcenofall = 0

[state 1250, Juggle Points 2]
type = null
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
trigger1 = var(10) := 2 || var(17) := 2 || var(49) := 1251
[state 1250, Hit 2]
type = hitdef
triggerall = var(49) != var(50) && !var(9) && !var(13)
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
ID = 5800 + 0 * (var(49) := 1251)
attr = A, SA
damage = ceil(cond(69 * fvar(0) < 7, 7, 69 * fvar(0))), 7
fall.envshake.phase = 11 ; stun damage
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
ground.velocity = -2.65625 * fvar(14), -7.75 * fvar(15)
guard.velocity = -16.0 * fvar(18)
air.velocity = -2.65625 * fvar(14), -7.75 * fvar(15)
airguard.velocity = -4.0 * fvar(14), -4.0 * fvar(15)
ground.cornerpush.veloff = 0.0 * (fvar(3) := 12.0)
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
fall.recovertime = 1
fall.animtype = hard
forcenofall = 0

[state 1250, Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I
persistent = 0

[state 1250, End State]
type = changestate
trigger1 = pos y + vel y > 0
value = 1255

;=========================================================================
; EX Headbutt Land
;=========================================================================
[Statedef 1255]
type = S
movetype = I
physics = S
ctrl = 0
velset = 0, 0
sprpriority = 0

[state 1255, Set Position]
type = posset
trigger1 = !time
y = 0

[state 1255, Change Animation]
type = changeanim
trigger1 = !time
value = 1205 - 1195 * (command = "holddown")

[state 1255, Set State Type]
type = statetypeset
trigger1 = anim = 10
statetype = C
physics = C
persistent = 0

[state 1255, Control]
type = ctrlset
trigger1 = time = 1
value = 1
persistent = 0

[state 1255, Special Effect]
type = assertspecial
trigger1 = !ctrl
trigger2 = time < 2
flag = nowalk

[state 1255, Sound]
type = playsnd
trigger1 = !time 
value = 52, 0
volumescale = 100

[state 1255, Land Smoke]
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

[state 1255, End State]
type = changestate
triggerall = ctrl
trigger1 = command = "holdup"
trigger2 = command = "holdback" && inguarddist
value = cond(command = "holdup", 40, 120)

[state 1255, End State]
type = changestate
trigger1 = !animtime
value = 0 + 11 * (statetype = C)
ctrl = 1

;=========================================================================
; EX Violence Kneedrop
;=========================================================================
[Statedef 1350]
type = S
movetype = A
physics = N
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 1

;========================< EX Indication >========================

[state 1350, Level]
type = null
trigger1 = !time
trigger1 = var(0) := 0 || var(1) := 0 || 1
trigger1 = var(17) := 2 || var(18) := 4 || 1
trigger1 = fvar(30) := 0 || fvar(31) := 0

[state 1350, Set Position]
type = posset
trigger1 = !time
y = 0

[state 1350, Change Animation]
type = changeanim
trigger1 = !time
value = 1350

[state 1350, Add Power]
type = poweradd
trigger1 = !time
value = -var(26)

[state 1350, EX Special Effect]
type = helper
trigger1 = !time
name = "EX Special Effect"
ID = 6200
stateno = 6200
postype = p1
pos = ceil(8 * const(size.xscale)), ceil(-72 * const(size.yscale))
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0
supermovetime = 2147483647
pausemovetime = 2147483647

;========================< Move Functions >========================

[state 1350, First Hit Contact]
type = varset
trigger1 = animelemtime(15) >= 0 && animelemtime(16) < 0
trigger1 = movecontact = 1 || movereversed = 1
var(0) = 1
ignorehitpause = 1
persistent = 0
[state 1350, First Hit Animation]
type = changeanim
trigger1 = var(0)
value = 1350
elem = 16
persistent = 0

[state 1350, Second Hit Contact]
type = varset
trigger1 = animelemtime(17) >= 0 && animelemtime(18) < 0
trigger1 = movecontact = 1 || movereversed = 1
var(1) = 1
ignorehitpause = 1
persistent = 0
[state 1350, Second Hit Animation]
type = changeanim
trigger1 = var(1)
value = 1350
elem = 18
elem = 16
persistent = 0

[state 1350, Voice]
type = playsnd
trigger1 = !animelemtime(15)
value = 1300, 0
volumescale = 100

[state 1350, Sound]
type = playsnd
trigger1 = !animelemtime(2) 
value = 40, 0
volumescale = 100

[state 1350, Sound]
type = playsnd
trigger1 = !animelemtime(15)
value = 1, 1
volumescale = 100
channel = 1

[state 1350, Set State Type]
type = statetypeset
trigger1 = !animelemtime(2)
statetype = A

[state 1350, Y velocity]
type = null
triggerall = !animelemtime(2)
trigger1 = fvar(4) := 13.0 || 1
trigger1 = cond(p2name = "Gill", fvar(4) := 13.06640625, 1)
trigger1 = cond(p2name = "Alex", fvar(4) := 13.0234375, 1)
trigger1 = cond(p2name = "Ryu", fvar(4) := 13.01171875, 1)
trigger1 = cond(p2name = "Yun", fvar(4) := 12.984375, 1)
trigger1 = cond(p2name = "Dudley", fvar(4) := 13.0390625, 1)
trigger1 = cond(p2name = "Necro", fvar(4) := 13.01171875, 1)
trigger1 = cond(p2name = "Hugo", fvar(4) := 13.078125, 1)
trigger1 = cond(p2name = "Ibuki", fvar(4) := 13.0234375, 1)
trigger1 = cond(p2name = "Elena", fvar(4) := 12.984375, 1)
trigger1 = cond(p2name = "Oro", fvar(4) := 12.95703125, 1)
trigger1 = cond(p2name = "Yang", fvar(4) := 12.984375, 1)
trigger1 = cond(p2name = "Ken", fvar(4) := 13.01171875, 1)
trigger1 = cond(p2name = "Sean", fvar(4) := 13.01171875, 1)
trigger1 = cond(p2name = "Urien", fvar(4) := 13.06640625, 1)
trigger1 = cond(p2name = "Akuma", fvar(4) := 13.01171875, 1)
trigger1 = cond(p2name = "Chun-Li", fvar(4) := 13.01171875, 1)
trigger1 = cond(p2name = "Makoto", fvar(4) := 13.01171875, 1)
trigger1 = cond(p2name = "Q", fvar(4) := 13.01171875, 1)
trigger1 = cond(p2name = "Twelve", fvar(4) := 13.01171875, 1)
trigger1 = cond(p2name = "Remy", fvar(4) := 13.01171875, 0)
[state 1350, Set Velocity]
type = velset
trigger1 = !animelemtime(2)
y = -fvar(4) * fvar(15)
[state 1350, Set Velocity]
type = velset
trigger1 = !animelemtime(2)
x = fvar(4) := (p2dist x / 13.5) * fvar(14)

[state 1350, Increment Velocity]
type = veladd
trigger1 = animelemtime(2) > 0 && animelemtime(16) < 0
x = cond(animelemtime(15) >= 0, 0.0, -fvar(4) / 24.0 * fvar(16))
y = 0.98828125 * fvar(17)
[state 1350, Set Velocity]
type = velset
trigger1 = !animelemtime(15)
x = 0.0 * fvar(14)

[state 1350, Set Velocity]
type = velset
trigger1 = !animelemtime(16) 
y = cond(var(0), 1.78125, 22.171875) * fvar(15)
[state 1360, Increment Velocity]
type = veladd
trigger1 = animelemtime(16) > 0 && animelemtime(18) < 0
y = 0.98828125 * fvar(17)

[state 1360, Set Velocity]
type = velset
trigger1 = !animelemtime(18)
x = cond(var(1), -1.5, vel x) * fvar(14)
y = cond(var(1), -7.0, cond(var(0) && !var(1), 45.796875, 208.92578125)) * fvar(15)
[state 1360, Increment Velocity]
type = veladd
trigger1 = cond(var(1), animelemtime(18) > 0, animelemtime(18) > 0)
y = cond(var(1), 0.75, 0.98828125) * fvar(17)

[state 1350, Jump Dust]
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

[state 1350, Juggle Points 1]
type = null
trigger1 = animelemtime(15) >= 0 && animelemtime(16) < 0
trigger1 = var(10) := 1 || var(17) := 2 || var(49) := 1350
[state 1350, Hit 1]
type = hitdef
triggerall = var(49) != var(50) && !var(9) && !var(13)
trigger1 = animelemtime(15) >= 0 && animelemtime(16) < 0
ID = 5632 + 0 * (var(49) := 1350)
attr = A, SA
damage = ceil(cond(25 * fvar(0) < 7, 7, 25 * fvar(0))), 7
fall.envshake.phase = 5 ; stun damage
fall.envshake.freq = var(17) ; hit/attack level
fall.envshake.ampl = 0 ; hit y position
guardflag = H
hitflag = MAF
priority = 4, Hit
pausetime = 8, 8
hitsound = -1 + 0 * (var(3) := 320)
guardsound = -1 + 0 * (var(4) := cond(p2name = "Urien", 20, 10))
sparkno = -1 + 0 * (var(5) := 26)
guard.sparkno = -1 + 0 * (var(6) := 1)
sparkxy = 0 * (var(7) := 16), 0 * (var(8) := -56)
animtype = hard
ground.type = low
air.animtype = back
air.type = low
ground.slidetime = 9
ground.hittime = 15
guard.slidetime = 9
guard.hittime = 15
air.hittime = cond((var(54) = [1, 2]), 0, 128)
ground.velocity = -12.0 * fvar(18)
guard.velocity = -12.0 * fvar(18)
air.velocity = -3.1875 * fvar(14), -7.75 * fvar(15)
airguard.velocity = -4.0 * fvar(14), -4.0 * fvar(15)
ground.cornerpush.veloff = 0.0 * (fvar(3) := 9.0)
guard.cornerpush.veloff = 0.0
yaccel = 0.5 * fvar(20)
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
forcenofall = 0

[state 1350, Juggle Points 2]
type = null
trigger1 = animelemtime(17) >= 0 && animelemtime(18) < 0
trigger1 = var(10) := 1 || var(17) := 2 || var(49) := 1351
[state 1350, Hit 2]
type = hitdef
triggerall = var(49) != var(50) && !var(9) && !var(13)
trigger1 = animelemtime(17) >= 0 && animelemtime(18) < 0
ID = 0 + 0 * (var(49) := 1351)
attr = A, SA
damage = ceil(cond(100 * fvar(0) < 7, 7, 100 * fvar(0))), 13
fall.envshake.phase = 13 ; stun damage
fall.envshake.freq = var(17) ; hit/attack level
fall.envshake.ampl = 0 ; hit y position
guardflag = H
hitflag = MAF
priority = 4, Hit
pausetime = 16, 16
hitsound = -1 + 0 * (var(3) := 320)
guardsound = -1 + 0 * (var(4) := cond(p2name = "Urien", 20, 10))
sparkno = -1 + 0 * (var(5) := 27)
guard.sparkno = -1 + 0 * (var(6) := 1)
sparkxy = 0 * (var(7) := 16), 0 * (var(8) := -56)
animtype = hard
ground.type = high
air.animtype = back
air.type = low
ground.slidetime = 12
ground.hittime = 15
guard.slidetime = 12
guard.hittime = 15
air.hittime = cond((var(54) = [1, 2]), 0, 128)
ground.velocity = -16.0 * fvar(18)
guard.velocity = -16.0 * fvar(18)
air.velocity = -3.1875 * fvar(14), -8.75 * fvar(15)
airguard.velocity = -4.0 * fvar(14), -4.0 * fvar(15)
ground.cornerpush.veloff = 0.0 * (fvar(3) := 12.0)
guard.cornerpush.veloff = 0.0
yaccel = 0.5 * fvar(20)
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
forcenofall = 0

[state 1350, Idle]
type = statetypeset
trigger1 = animelemtime(18) >= 0
movetype = I
persistent = 0

[state 1350, End State]
type = changestate
trigger1 = cond(var(1), animelemtime(18) > 0, 1)
trigger1 = pos y + vel y > cond(animelemtime(16) >= 0, 0, 23)
value = 1255

;=========================================================================
; EX Kneedrop Land
;=========================================================================
[Statedef 1355]
type = S
movetype = I
physics = S
ctrl = 0
velset = 0, 0
sprpriority = 0

[state 1355, Set Position]
type = posset
trigger1 = !time
y = 0

[state 1355, Change Animation]
type = changeanim
trigger1 = !time
value = 1205 - 1195 * (command = "holddown")

[state 1355, Set State Type]
type = statetypeset
trigger1 = anim = 10
statetype = C
physics = C
persistent = 0

[state 1355, Control]
type = ctrlset
trigger1 = time >= 6
value = 1
persistent = 0

[state 1355, Sound]
type = playsnd
trigger1 = !time 
value = 52, 0
volumescale = 100

[state 1355, Land Smoke]
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

[state 1355, End State]
type = changestate
triggerall = ctrl
trigger1 = command = "holdup"
trigger2 = command = "holdback" && inguarddist
value = cond(command = "holdup", 40, 120)

[state 1355, End State]
type = changestate
trigger1 = !animtime
value = 0 + 11 * (statetype = C)
ctrl = 1